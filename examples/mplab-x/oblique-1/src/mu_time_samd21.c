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

#include "mu_time.h"
#include <stdbool.h>
#include <stdint.h>
#include "definitions.h"  // include Microchip Harmony definitions

// *****************************************************************************
// Public code

void mu_time_init(void) {
    // mu_sched runs on the RTC hardware timer.
    RTC_Timer32Start();
}

mu_time_abs_t mu_time_now(void) {
    return RTC_Timer32CounterGet();
}

mu_time_rel_t mu_time_rel_max(void) {
    return (mu_time_rel_t)INT32_MAX;
}

mu_time_abs_t mu_time_offset(mu_time_abs_t base, mu_time_rel_t delta) {
    return (mu_time_abs_t)(base + (uint32_t)delta);
}

mu_time_rel_t mu_time_difference(mu_time_abs_t a, mu_time_abs_t b) {
    return (mu_time_rel_t)(b - a);
}

bool mu_time_is_before(mu_time_abs_t a, mu_time_abs_t b) {
    return mu_time_difference(a, b) > 0;
}

bool mu_time_is_after(mu_time_abs_t a, mu_time_abs_t b) {
    return mu_time_difference(a, b) < 0;
}

mu_time_rel_t mu_time_rel_from_seconds(float delta_t) {
    return (mu_time_rel_t)(delta_t * (float)RTC_COUNTER_CLOCK_FREQUENCY);
}

float mu_time_rel_to_seconds(mu_time_rel_t delta_t) {
    return (float)delta_t / (float)RTC_COUNTER_CLOCK_FREQUENCY;
}

mu_time_rel_t mu_time_rel_from_millis(uint32_t milliseconds) {
    // 1 ms = RTC_FREQ / 1000 ticks
    return (mu_time_rel_t)(milliseconds * RTC_COUNTER_CLOCK_FREQUENCY / 1000U);
}

uint32_t mu_time_rel_to_millis(mu_time_rel_t delta_t) {
    // multiply first to preserve fractions, then divide
    return (uint32_t)(delta_t * 1000 / RTC_COUNTER_CLOCK_FREQUENCY);
}

// *****************************************************************************
// End of file
