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
 * @file rand_lgc.h
 *
 * @brief Garden variety random number generator using linear congruential
 * algorithm.
 */

#ifndef _RAND_LGC_H_
#define _RAND_LGC_H_

// *****************************************************************************
// Includes

#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

// *****************************************************************************
// Public declarations

/**
 * @brief Seeds the LCG.
 *
 * Initializes the internal state of the random number generator.
 * Should be called once before generating numbers.
 *
 * @param seed The seed value (any uint32_t value).
 */
void rand_lcg_seed(uint32_t seed);

/**
 * @brief Generates the next pseudorandom number using LCG.
 *
 * Applies the LCG formula: X(n+1) = (a * X(n) + c) mod m.
 * With m = 2^32 and uint32_t, the modulo is implicit wrapping.
 *
 * @return The next 32-bit pseudorandom number.
 */
uint32_t rand_lcg(void);

/**
 * @brief generate a pseudorandom number between min (inclusive) and max (exclusive)
 */
uint32_t rand_lcg_range(uint32_t min, uint32_t max);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _RAND_LGC_H_ */
