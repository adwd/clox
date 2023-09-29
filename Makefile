CC = gcc
CFLAGS = -Wall -Werror -g

SRCS = main.c chunk.c memory.c debug.c value.c vm.c
OBJS = $(SRCS:.c=.o)

all: clox

clox: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

run: clox
	./clox

clean:
	rm -f clox $(OBJS)
