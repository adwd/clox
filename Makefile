CC = gcc
#CFLAGS = -Wall -g
CFLAGS = -Wall -Werror -g
TARGET = clox

SRCS = $(wildcard *.c)
OBJS_DIR = obj
OBJS = $(patsubst %.c,$(OBJS_DIR)/%.o,$(SRCS))

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJS_DIR)/%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) $(OBJS)
