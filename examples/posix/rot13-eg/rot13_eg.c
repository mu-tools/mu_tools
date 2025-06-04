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
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

#include "mu_bufstream.h"
#include <stdio.h>

/* Define ROT13 stream */
typedef struct {
    mu_stream_t stream;
    mu_stream_t *src;  // Source stream providing input
} rot13_stream_t;

/* ROT13 transformation */
static unsigned char rot13_transform(unsigned char c) {
    if ((c >= 'A' && c <= 'Z')) {
        return 'A' + (c - 'A' + 13) % 26;
    } else if ((c >= 'a' && c <= 'z')) {
        return 'a' + (c - 'a' + 13) % 26;
    }
    return c;
}

/* Read function for ROT13 stream */
static mu_stream_err_t rot13_stream_get(mu_stream_t *stream, unsigned char *b) {
    rot13_stream_t *s = (rot13_stream_t *)stream;

    if (!s || !b || !s->src) {
        return MU_STREAM_ERR_PARAM;
    }

    /* Pull a byte from the source stream */
    mu_stream_err_t err = s->src->get(s->src, b);
    if (err == MU_STREAM_ERR_NONE) {
        *b = rot13_transform(*b);
    }

    return err;
}

/* Initialize ROT13 stream */
mu_stream_t *rot13_stream_init(rot13_stream_t *s, mu_stream_t *src) {
    if (!s || !src) {
        return NULL;
    }

    s->src = src;
    return _mu_stream_init(&s->stream, rot13_stream_get, NULL);
}

/* Example input string */
static const unsigned char plaintext[] = "Hello, world! ROT13 example.";
#define BUFFER_SIZE (sizeof(plaintext))

int main() {
    /* Create input buffer stream */
    mu_bufstream_read_t input_stream;
    mu_stream_t *input = mu_bufstream_read_init(&input_stream, plaintext, BUFFER_SIZE);

    /* Create ROT13 encoding stream */
    rot13_stream_t rot13_encoder;
    mu_stream_t *encoded_stream = rot13_stream_init(&rot13_encoder, input);

    /* Create ROT13 decoding stream */
    rot13_stream_t rot13_decoder;
    mu_stream_t *decoded_stream = rot13_stream_init(&rot13_decoder, encoded_stream);

    /* Create output buffer stream */
    unsigned char output_buffer[BUFFER_SIZE] = {0};
    mu_bufstream_write_t output_stream;
    mu_stream_t *output = mu_bufstream_write_init(&output_stream, output_buffer, BUFFER_SIZE);

    /* Process bytes through chained streams */
    unsigned char byte;
    printf("Encoded Output:\n");
    while (mu_stream_get(encoded_stream, &byte) == MU_STREAM_ERR_NONE) {
        printf("%c", byte);
    }
    printf("\n");

    printf("Decoded Output:\n");
    while (mu_stream_get(decoded_stream, &byte) == MU_STREAM_ERR_NONE) {
        mu_stream_put(output, byte);
        printf("%c", byte);
    }
    printf("\n");

    printf("Final Output Buffer:\n%s\n", output_buffer);

    return 0;
}
