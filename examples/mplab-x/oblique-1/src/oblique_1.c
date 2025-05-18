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

#include "oblique_1.h"
#include "definitions.h"  // include Microchip Harmony definitions
#include "mu_sched.h"
#include "mu_thunk.h"
#include "mu_time.h"
#include "rand_lcg.h"
#include "strategies.h"
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

// Length of random delay time between printouts
#define DELAY_MIN_MS (30 * 1000)          // 30 seconds
#define DELAY_MAX_MS (2 * 60 * 60 * 1000) // 2 hours

typedef struct {
    mu_thunk_t thunk;      /**< the oblique_1 deferrable function to invoke. */
} oblique_1_t;

// *****************************************************************************
// Private (static) storage

static oblique_1_t s_oblique_1;  /**< a singleton instance **/

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Called by the scheduler when oblique_1's thunk runs.
 */
static void oblique_1_fn(mu_thunk_t *thunk, void *args);

/**
 * @brief Called from interrupt level when the user presses a button.
 */
static void button_cb(uintptr_t context);

// *****************************************************************************
// Public code

void oblique_1_init(void) {
    printf("####################\n"
           "# Oblique Strategies\n"
           "####################\n"
           "Press user button or just be patient...\n\n");

    mu_thunk_init(&s_oblique_1.thunk, oblique_1_fn); // bind oblique_1_fn to thunk
    rand_lcg_seed(mu_time_now());                    // seed random # generator

    EIC_InterruptEnable(EIC_PIN_15);
    EIC_CallbackRegister(EIC_PIN_15, button_cb, 0);
    mu_sched_now(&s_oblique_1.thunk);               // schedule initial call
}

// *****************************************************************************
// Private (static) code

static void oblique_1_fn(mu_thunk_t *thunk, void *args) {
    oblique_1_t *oblique_1 = (oblique_1_t *)thunk;

    // Arrive here either when a delayed thunk's time arrived or because an
    // impatient user pressed the button.
    LED_On();

    // (1) Remove any previously scheduled events to avoid build-up
    mu_sched_delete_thunk_events(&oblique_1->thunk);

    // (2) Choose and print an Oblique Strategy
    strategies_choose_and_print();

    // (3) Schedule a random time to print the next Oblique Strategy
    uint32_t delay_ms = rand_lcg_range(DELAY_MIN_MS, DELAY_MAX_MS);
    mu_sched_in(&oblique_1->thunk, mu_time_rel_from_millis(delay_ms));

    LED_Off();
}

void button_cb(uintptr_t context) {
    // Arrive here at interrupt level when the user button is pressed.  Schedule
    // Use mu_sched_from_isr to safely run oblique_1_fn from foreground level.
    (void)context;
    mu_sched_from_isr(&s_oblique_1.thunk);
}

// *****************************************************************************
// End of file
