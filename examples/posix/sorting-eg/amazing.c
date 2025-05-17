/**
 * @file  amazing.c
 *
 * @brief Tokenize a C string into words, sort them case-insensitively, and
 * print.
 *
 *   This example demonstrates:
 *     - mu_string for zero-copy string slicing and tokenizing
 *     - mu_pool for fixed-size object allocation
 *     - mu_pvec for dynamic pointer vectors
 *     - A custom case-insensitive comparison
 */

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mu_pool.h"
#include "mu_pvec.h"
#include "mu_string.h"

#define MAX_TOKENS 32 /**< Max number of words we can handle */

static const char kInput[] =
    "gracefully, joyful weightless, xenial effortlessly zealous. "
    "constantly iridescent kaleidoscopes, flying quietly near very silent, "
    "ornate yet landing temporarily heavenly dance, petals, Amazing "
    "magnificently unmoving, butterflies resting";

// Backing stores for our pool/vector
static mu_string_t s_token_store[MAX_TOKENS];
static void *s_word_store[MAX_TOKENS];

/**
 * @brief Print a mu_string slice as a null-terminated segment.
 */
static void print_slice(mu_string_t slice) {
    printf("%.*s", (int)mu_string_len(slice), mu_string_buf(slice));
}

/**
 * @brief Fatal error: print message and exit.
 */
static void error_quit(const char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
    exit(EXIT_FAILURE);
}

/**
 * @brief Predicate: treat standard whitespace as splitter.
 */
static bool is_whitespace(char ch, void *arg) {
    (void)arg;
    return isspace((unsigned char)ch) != 0;
}

/**
 * Case-insensitive compare for mu_string_t pointers.
 *
 * @param pa Pointer to a stored mu_string_t*.
 * @param pb Pointer to a stored mu_string_t*.
 * @return <0 if *sa < *sb, 0 if equal, >0 if *sa > *sb.
 */
static int case_insensitive_compare(const void *pa, const void *pb) {
    // pa, pb are pointers to mu_string_t*
    const mu_string_t *sa = *(const mu_string_t *const *)pa;
    const mu_string_t *sb = *(const mu_string_t *const *)pb;

    size_t len_a = mu_string_len(*sa);
    size_t len_b = mu_string_len(*sb);
    size_t n = (len_a < len_b) ? len_a : len_b;

    int diff = strncasecmp(mu_string_buf(*sa), mu_string_buf(*sb), n);
    if (diff != 0) {
        return diff;
    }
    // If prefixes are equal, shorter string comes first
    return (len_a < len_b) ? -1 : (len_a > len_b) ? 1 : 0;
}

int main(void) {
    mu_pool_t token_pool;  // a resource pool of mu_string_t items
    mu_pvec_t words;       // a vector of pointers to mu_string_t items

    // 1) Initialize pool and pointer vector
    printf("Initializing...\n");
    if (!mu_pool_init(&token_pool, s_token_store, MAX_TOKENS,
                      sizeof(s_token_store[0]))) {
        error_quit("token pool init failed");
    }
    if (!mu_pvec_init(&words, s_word_store, MAX_TOKENS)) {
        error_quit("word vector init failed");
    }

    // 2) Read entire source string into one long mu_string_t as input
    printf("Reading input: '");
    mu_string_t remaining = mu_string_from_cstr(kInput);
    print_slice(remaining);
    printf("'\n");

    // 3) Break input into whitespace-delimited words
    printf("Parsing slices...\n");
    while (true) {
        // Trim any leading whitespace from the input string
        remaining = mu_string_ltrim(remaining, is_whitespace, NULL);
        if (mu_string_is_empty(remaining)) {
            break;
        }

        // Slice off one word, leaving the rest in `remaining`
        mu_string_t temp_slice =
            mu_string_split_by_pred(remaining, &remaining, is_whitespace, NULL);
        // now `temp_slice` is either up to the next delimiter, or the entire
        // input if no delimiter was found; and `remaining` is the rest,
        // or empty if we just consumed the last token.

        // Allocate a slice from our pool and store the slice
        mu_string_t *word_slice = mu_pool_alloc(&token_pool);
        if (!word_slice) {
            error_quit("out of token slices");
        }
        *word_slice = temp_slice;

        // Append to our vector of word‐slices
        if (mu_pvec_push(&words, word_slice) != MU_STORE_ERR_NONE) {
            error_quit("word vector push failed");
        }
    }

    // 3) Sort slices using case_insensitive_compare
    printf("Sorting slices...\n");
    if (mu_pvec_sort(&words, case_insensitive_compare) != MU_STORE_ERR_NONE) {
        error_quit("sort failed");
    }

    // 4) Print sorted slices, separated by a space
    printf("Printing output: '");
    for (size_t i = 0, n = mu_pvec_count(&words); i < n; ++i) {
        mu_string_t *word_slice;
        if (mu_pvec_ref(&words, i, (void **)&word_slice) !=
            MU_STORE_ERR_NONE) {
            error_quit("ref failed");
        }
        if (i != 0) {
            putchar(' ');
        }
        print_slice(*word_slice);
    }
    printf("'\n");
    return EXIT_SUCCESS;
}
