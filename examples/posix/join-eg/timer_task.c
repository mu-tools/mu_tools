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

// *****************************************************************************
// Includes

#include "timer_task.h"
#include "mu_sched.h"
#include "mu_thunk.h"

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Called by the scheduler when the timer_task's thunk runs.
 */
static void timer_task_fn(mu_thunk_t *thunk, void *args);

/**
 * @brief Update the timer_task's status and -- if notify is true -- notify the
 * listener.
 */
static void set_status(timer_task_t *task, timer_task_status_t status,
                       bool notify);

// *****************************************************************************
// Public code

timer_task_t *timer_task_init(timer_task_t *task, mu_thunk_t *listener,
                              const char *name) {
    if (!task) {
        return NULL;
    }
    mu_thunk_init(&task->thunk, timer_task_fn); // bind timer_task_fn to thunk
    task->listener = listener;
    task->task_name = name;
    task->status = TIMER_TASK_READY;
    return task;
}

timer_task_status_t timer_task_status(timer_task_t *task) {
    return task->status;
}

const char *timer_task_name(timer_task_t *task) { return task->task_name; }

const char *timer_task_status_name(timer_task_status_t status) {
    static const char *names[] = {"TASK_READY", "TASK_RUNNING",
                                  "TASK_COMPLETED"};
    if (status > TIMER_TASK_COMPLETED) {
        return "unknown";
    } else {
        return names[status];
    }
}

void timer_task_start(timer_task_t *task, mu_time_rel_t time_to_complete) {
    if (task->status == TIMER_TASK_RUNNING) {
        return;
    }
    mu_sched_in((mu_thunk_t *)task, time_to_complete);
    set_status(task, TIMER_TASK_RUNNING, true);
}

void timer_task_stop(timer_task_t *task) {
    mu_sched_delete_thunk_events((mu_thunk_t *)task); // remove from event queue
    set_status(task, TIMER_TASK_READY, false);
}

// *****************************************************************************
// Private (static) code

static void timer_task_fn(mu_thunk_t *thunk, void *args) {
    (void)args;

    timer_task_t *task = (timer_task_t *)thunk;
    if (task->status != TIMER_TASK_RUNNING) {
        // should not happen
    }
    set_status(task, TIMER_TASK_COMPLETED, true);
}

static void set_status(timer_task_t *task, timer_task_status_t status,
                       bool notify) {
    task->status = status;
    if (notify) {
        // notify listener, pass task as arg
        mu_thunk_call(task->listener, task);
    }
}

// *****************************************************************************
// End of file
