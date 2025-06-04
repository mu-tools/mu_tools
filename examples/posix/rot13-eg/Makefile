# Compiler settings
CC       := gcc
CFLAGS   := -Wall -Wextra -O2
INCLUDES := -I../../../mu_stream/inc

# Where to look for .c files by basename
VPATH    := . \
			../../../mu_stream/src

# Where to put .o files and the final binary
BUILD_DIR := build
BIN_DIR   := bin
TARGET    := $(BIN_DIR)/rot13_eg

# Source files for the project
SRCS := \
	rot13_eg.c      \
	mu_stream.c     \
	mu_bufstream.c

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
