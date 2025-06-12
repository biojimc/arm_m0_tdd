# Makefile for compiling hello.c with arm-linux-gnueabi-gcc

CC = arm-linux-gnueabi-gcc
CFLAGS = -Wall -O2 -static
TARGET = hello
SRC = hello.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: all
	qemu-arm-static $(TARGET)

clean:
	rm -f $(TARGET)

