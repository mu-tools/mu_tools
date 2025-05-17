# Compiler settings
CC       := gcc
CFLAGS   := -Wall -Wextra -O2
INCLUDES := -I../../../mu_store/inc \
			-I../../../mu_string/inc

# Where to look for .c files by basename
VPATH    := . \
			../../../mu_store/src \
			../../../mu_string/src

# Where to put .o and the final binary
BUILD_DIR := build
BIN_DIR   := bin
TARGET    := $(BIN_DIR)/amazing

# List all the basenames of your .c files
SRCS := \
	amazing.c      \
	mu_pool.c      \
	mu_pvec.c      \
	mu_store.c     \
	mu_string.c

# Turn foo.c → build/foo.o
OBJS := $(SRCS:%.c=$(BUILD_DIR)/%.o)

.PHONY: all clean

all: $(TARGET)

$(BUILD_DIR):
	mkdir -p $@

$(BIN_DIR):
	mkdir -p $@

# Link everything into the final executable
$(TARGET): $(OBJS) | $(BIN_DIR)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $^

# Compile any src foo.c found via VPATH into build/foo.o
$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)
