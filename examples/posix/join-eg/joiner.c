/**
 * MIT License
 *
 * Copyright (c) 2025 R. D. Poor & Assoc <rdpoor @ gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/**
 * timer_task_status_name(timer_task_t *task) => timer_task_status_name(timer_task_status_t status)
 */

// *****************************************************************************
// Includes

#include "joiner.h"

#include "mock_task.h"
#include "mu_sched.h"
#include "mu_thunk.h"
#include "mu_time.h"
#include "rand_lcg.h"
#include "timer_task.h"
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

#define MIN_DURATION_MS 250
#define MAX_DURATION_MS 3000
#define TIMEOUT_DURATION_MS 2000

typedef struct {
    mu_thunk_t thunk;         /**< the joiner deferrable function to invoke. */
    mu_time_abs_t started_at; /**< time as which the session started */
    mock_task_t mock_task_a;  /**< the three mock_tasks. */
    mock_task_t mock_task_b;
    mock_task_t mock_task_c;
    timer_task_t timeout_task; /**< the timeout task */
} joiner_t;

// *****************************************************************************
// Private (static) storage

static joiner_t s_joiner;  /**< a singleton instance **/

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Called by the scheduler when the joiner's thunk runs.
 */
static void joiner_fn(mu_thunk_t *thunk, void *args);

/**
 * @brief Start a session.
 * 
 * This starts three mock_tasks running, each with a random timeout.  It also
 * starts a timeout_task with a fixed timeout.  If all three mock_tasks complete
 * before the timeout_task, it prints a "completed" message.  If any of the
 * mock_tasks are still running when the timeout_task fires, it prints a "timed
 * out" message.  In either case, any tasks still in the deferred scheduler 
 * queue are cancelled and the process resetarts.
 */
static void start_session(void);

/**
 * @brief Print the current (relative) time, the task name and its status
 * Assumes that thunk is an instance of timer_task.
 */
static void announce_timer_task(timer_task_t *task);

/**
 * @brief Generate a duration between MIN_DURATION_MS and MAX_DURATION_MS
 * (albeit converted to units of mu_time_rel_t);
 */
static mu_time_rel_t get_random_duration(void);

/**
 * @brief Generate a duration of TIMEOUT_DURATION_MS
 * (albeit converted to units of mu_time_rel_t);
 */
static mu_time_rel_t get_timeout_duration(void);

/**
 * @brief Return true if the timeout_task has completed.
 */
static bool timeout_task_completed(void);

/**
 * @brief Return true if all three mock_tasks have completed.
 */
static bool all_mock_tasks_completed(void);

// *****************************************************************************
// Public code

void joiner_init(void) {
    mu_thunk_init(&s_joiner.thunk, joiner_fn); // bind joiner_fn to thunk
    // Install s_joiner's thunk as a listener for status changes in all three
    // mock tasks and for the timeout_task.
    mock_task_init(&s_joiner.mock_task_a, &s_joiner.thunk, "task A");
    mock_task_init(&s_joiner.mock_task_b, &s_joiner.thunk, "task B");
    mock_task_init(&s_joiner.mock_task_c, &s_joiner.thunk, "task C");
    timer_task_init(&s_joiner.timeout_task, &s_joiner.thunk, "timeout");

    // Start a session: 
    start_session();
}

// *****************************************************************************
// Private (static) code

static void joiner_fn(mu_thunk_t *thunk, void *args) {
    (void)thunk;
    // NOTE: if called directly from timer_task (or mock_task), *args will be
    // set to the task in question.  If called from the scheduler, *args will be
    // NULL.
    if (args != NULL) {
        announce_timer_task((timer_task_t *)args);
    }

    if (timeout_task_completed()) {
        // The timeout expired before all three mock_tasks competed.
        printf("Timed out!\n\n");
        start_session();
    } else if (all_mock_tasks_completed()) {
        // The three mock tasks completed before the timtout_task expired.
        printf("Completed!\n\n");
        start_session();
    } else {
        // continue to wait...
    }
}

static void start_session(void) {
    // Make a note of the current time
    s_joiner.started_at = mu_sched_current_time();

    // remove any scheduled events
    mock_task_stop(&s_joiner.mock_task_a);
    mock_task_stop(&s_joiner.mock_task_b);
    mock_task_stop(&s_joiner.mock_task_c);
    timer_task_stop(&s_joiner.timeout_task);

    // schedule three mock_tasks with randomized completion times
    mock_task_start(&s_joiner.mock_task_a, get_random_duration());
    mock_task_start(&s_joiner.mock_task_b, get_random_duration());
    mock_task_start(&s_joiner.mock_task_c, get_random_duration());

    // schedule fixed timout task 
    timer_task_start(&s_joiner.timeout_task, get_timeout_duration());
}

static void announce_timer_task(timer_task_t *task) {
    // NOTE: mock_task is an alias for timer_task.  We exploit that here...
    const char *task_name = timer_task_name(task);
    const char *status_name = timer_task_status_name(timer_task_status(task));
    mu_time_rel_t dt =
        mu_time_difference(s_joiner.started_at, mu_sched_current_time());

    printf("at %10lld tics: %s %s\n", dt, task_name, status_name);
}

static mu_time_rel_t get_random_duration(void) {
    uint32_t dur_ms =
        MIN_DURATION_MS + rand_lcg() % (MAX_DURATION_MS - MIN_DURATION_MS);
    return mu_time_rel_from_millis(dur_ms);
}

static mu_time_rel_t get_timeout_duration(void) {
    return mu_time_rel_from_millis(TIMEOUT_DURATION_MS);
}

static bool timeout_task_completed(void) {
    return TIMER_TASK_COMPLETED == timer_task_status(&s_joiner.timeout_task);
}

static bool all_mock_tasks_completed(void) {
    return (MOCK_TASK_COMPLETED == mock_task_status(&s_joiner.mock_task_a)) &&
           (MOCK_TASK_COMPLETED == mock_task_status(&s_joiner.mock_task_b)) &&
           (MOCK_TASK_COMPLETED == mock_task_status(&s_joiner.mock_task_c));
}

// *****************************************************************************
// End of file
