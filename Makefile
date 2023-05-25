CC=gcc
CFLAGS=-g -Wall -Wextra -std=c99

SRCS=$(wildcard ./src/*.c)
SRCS+=main.c
OBJS=$(SRCS:%.c=%.o)
TARGETS=$(OBJS:%.o=%)

run_vma: build
	./bin/vma

build: $(OBJS)
	$(CC) $(CFLAGS) -o ./bin/vma $(OBJS)

pack:
	zip -FSr 312CA_Baldovin_Covei_PCLP3.zip README.md Makefile *.c bin include src

clean:
	rm -f $(TARGETS) $(OBJS) ./bin/vma

.PHONY: pack clean
