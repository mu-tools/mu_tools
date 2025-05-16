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
 * @file timer_task.h
 *
 * @brief Invoke a listener task after a fixed amount of time elapses.
 */

#ifndef _TIMER_TASK_H_
#define _TIMER_TASK_H_

// *****************************************************************************
// Includes

#include "mu_thunk.h"

#include "mu_time.h"

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
    TIMER_TASK_READY,    /**< The timer_task has been initialized but not run */
    TIMER_TASK_RUNNING,  /**< The timer_task is currently running */
    TIMER_TASK_COMPLETED /**< The timer_task has completed */
} timer_task_status_t;

typedef struct {
    mu_thunk_t thunk;           // must occupy the first slot
    mu_thunk_t *listener;       // thunk to call on any change of status
    timer_task_status_t status; // the current status
    const char *task_name;      // for printing...
} timer_task_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize the mock task.
 * 
 * @param task     pointer to the timer_task instance.
 * @param listener Thunk to call whenever the status changes
 * @return task on success or NULL on error.
 */
timer_task_t *timer_task_init(timer_task_t *task, mu_thunk_t *listener, const char *name);

/**
 * @brief Return the current status
 * 
 * @param task pointer to the timer_task instance.
 * @return Current status of the task.
 */
timer_task_status_t timer_task_status(timer_task_t *task);

/**
 * @brief Return the current status as a string.
 * 
 * @param status a status value
 * @return task status as a string.
 */
const char *timer_task_status_name(timer_task_status_t status);

/**
 * @brief Get the name of the timer task.
 * @param task pointer to the timer_task instance.
 * @return the timer task's name as a string.
 */
const char *timer_task_name(timer_task_t *task);

/**
 * @brief Start the timer_task running
 * 
 * This has no effect if the timer_task is already running.  Otherwise the
 * status is set to TIMER_TASK_RUNNING and the task is set to expire at the
 * given time_to_complete.
 * 
 * @param task             pointer to the timer_task instance.
 * @param time_to_complete relative time after which the task expires.
 */
void timer_task_start(timer_task_t *task, mu_time_rel_t time_to_complete);

/**
 * @brief Stop the timer_task
 * 
 * Stop the timer without notifying the listener.  If the timer is queued to
 * run, it is removed from the event queue.  
 * 
 * @param task pointer to the timer_task instance.
 */
void timer_task_stop(timer_task_t *task);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _TIMER_TASK_H_ */
