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
 * @file mock_task.h
 *
 * @brief Sample asynchronous task with variable time to completion.  In fact,
 * mock_task is an alias for timer_task.
 */

#ifndef _MOCK_TASK_H_
#define _MOCK_TASK_H_

// *****************************************************************************
// Includes

#include "timer_task.h"

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

#define MOCK_TASK_READY TIMER_TASK_READY
#define MOCK_TASK_RUNNING TIMER_TASK_RUNNING
#define MOCK_TASK_COMPLETED TIMER_TASK_COMPLETED
typedef timer_task_t mock_task_t;
typedef timer_task_status_t mock_task_status_t;

#define mock_task_init(task, listener, name) timer_task_init(task, listener, name)
#define mock_task_status(task) timer_task_status(task)
#define mock_task_status_name(status) timer_task_status_name(status)
#define mock_task_name(task) timer_task_name(task)
#define mock_task_start(task, duration) timer_task_start(task, duration)
#define mock_task_stop(task) timer_task_stop(task)

// *****************************************************************************
// Public declarations

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MOCK_TASK_H_ */
