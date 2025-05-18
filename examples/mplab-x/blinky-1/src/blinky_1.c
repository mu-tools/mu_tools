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

#include "blinky_1.h"
#include "definitions.h"  // include Microchip Harmony definitions
#include "mu_sched.h"
#include "mu_thunk.h"
#include "mu_time.h"

// *****************************************************************************
// Private types and definitions

#define BLINK_INTERVAL_MS 500

typedef struct {
    mu_thunk_t thunk;      /**< the blinky_1 deferrable function to invoke. */
    bool led_state;               /**< current LED state */
    mu_time_rel_t blink_interval; /**< how often the LED toggles */
} blinky_1_t;

// *****************************************************************************
// Private (static) storage

static blinky_1_t s_blinky_1;  /**< a singleton instance **/

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Called by the scheduler when blinky_1's thunk runs.
 */
static void blinky_1_fn(mu_thunk_t *thunk, void *args);

// *****************************************************************************
// Public code

void blinky_1_init(void) {
    mu_thunk_init(&s_blinky_1.thunk, blinky_1_fn); // bind blinky_1_fn to thunk
    s_blinky_1.led_state = false;
    s_blinky_1.blink_interval = mu_time_rel_from_millis(BLINK_INTERVAL_MS);

    mu_sched_now(&s_blinky_1.thunk);               // schedule initial call
}

// *****************************************************************************
// Private (static) code

static void blinky_1_fn(mu_thunk_t *thunk, void *args) {
    blinky_1_t *blinky_1 = (blinky_1_t *)thunk;

    // Toggle LED state
    blinky_1->led_state = !blinky_1->led_state;
    if (blinky_1->led_state) {
        LED_On();
    } else {
        LED_Off();
    }

    // Schedule next call
    mu_sched_in(&blinky_1->thunk, blinky_1->blink_interval);
}


// *****************************************************************************
// End of file
