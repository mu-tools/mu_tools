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

#include "joiner.h"

#include "mu_pool.h"
#include "mu_store.h"
#include "mu_pvec.h"
#include "mu_pqueue.h"
#include "mu_spsc.h"
#include "mu_sched.h"
#include <stdio.h>
#include <stdlib.h>

// *****************************************************************************
// Private types and definitions

#define MAX_TASKS 10
#define ISR_QUEUE_SIZE 2

// *****************************************************************************
// Private (static) storage

static mu_event_t event_pool_store[MAX_TASKS]; // backing store for events
static void *event_queue_store[MAX_TASKS];     // backing store for deferred thunks
static void *asap_queue_store[MAX_TASKS];      // backing store for "now" thunks
static mu_spsc_item_t isr_queue_store[ISR_QUEUE_SIZE]; // not used in this example

static mu_pool_t s_event_pool;    // resource pool for events
static mu_pvec_t s_event_queue;   // the event queue
static mu_pqueue_t s_asap_queue;  // the "run now" queue
static mu_spsc_t s_isr_queue;     // the interrupt queue

// *****************************************************************************
// Private (forward) declarations

static void error_quit(const char *msg); // fatal error: print and quit
static void setup(void);  // one time setup
static void loop();       // run the scheduler

// *****************************************************************************
// Public code

int main(void) {
    setup();
    while (true) {
        loop();
    }
    return 0;
}

// *****************************************************************************
// Private (static) code

static void error_quit(const char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
    exit(EXIT_FAILURE);
}

static void setup(void) {
    // Initialize all the components required by the scheduler.
    if (!mu_pool_init(&s_event_pool, event_pool_store, MAX_TASKS, sizeof(mu_event_t))) {
        error_quit("Failed to initialize event pool");
    }
    if (!mu_pvec_init(&s_event_queue, event_queue_store, MAX_TASKS)) {
        error_quit("Failed to initialize event queue");
    }
    if (!mu_pqueue_init(&s_asap_queue, asap_queue_store, MAX_TASKS)) {
        error_quit("Failed to initialize asap queue");
    }
    if (MU_SPSC_ERR_NONE != mu_spsc_init(&s_isr_queue, isr_queue_store, ISR_QUEUE_SIZE)) {
        error_quit("Failed to initialize isr queue");
    }
    if (!mu_sched_init(&s_isr_queue, &s_asap_queue, &s_event_queue, &s_event_pool)) {
        error_quit("Failed to initialize scheduler");
    }

    // application specific initialization: queues the initial thunk(s)
    joiner_init();
}

static void loop(void) {
    mu_sched_step();
}

// *****************************************************************************
// End of file
