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

#include "rand_lcg.h"
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// LCG parameters chosen for a full period (m = 2^32)
#define LCG_MULTIPLIER 1664525UL
#define LCG_INCREMENT  1013904223UL

// *****************************************************************************
// Private (static) storage

static uint32_t lcg_state;

// *****************************************************************************
// Private (forward) declarations

// *****************************************************************************
// Public code

void rand_lcg_seed(uint32_t seed) {
    lcg_state = seed;
}

uint32_t rand_lcg(void) {
    lcg_state = LCG_MULTIPLIER * lcg_state + LCG_INCREMENT;
    return lcg_state;
}

// *****************************************************************************
// Private (static) code

// *****************************************************************************
// End of file
