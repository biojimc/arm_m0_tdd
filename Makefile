# Makefile for compiling with arm-linux-gnueabi-gcc

CC = arm-linux-gnueabi-gcc
#CC = arm-linux-gnueabihf-gcc
CFLAGS = -Isrc -Wall -O2 -static
TARGET = test_adder
SRC = src/adder.c src/unity.c test/test_adder.c 

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: all
	#qemu-arm -L ./armel-rootfs $(TARGET)
	qemu-arm-static $(TARGET)

clean:
	rm -f $(TARGET)

