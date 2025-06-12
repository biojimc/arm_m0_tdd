# Makefile for compiling with arm-none-eabi-gcc

MCPU = cortex-m4
AS = arm-none-eabi-as
AFLAGS = -mcpu=$(MCPU)
CC = arm-none-eabi-gcc
CFLAGS = -c -mcpu=$(MCPU) -mthumb
LD = arm-none-eabi-ld
LFLAGS = -T linker.ld
TARGET = main.elf
STARTUP = startup.s
SRC = main.c
OBJ = startup.o main.o

all: $(TARGET)

$(TARGET): $(STARTUP) $(SRC)
	$(AS) $(AFLAGS) -o startup.o startup.s
	$(CC) $(CFLAGS) -o main.o $(SRC)
	$(LD) $(LFLAGS) -o $(TARGET) $(OBJ)

run: all
	qemu-system-arm -M netduino2 -nographic -kernel $(TARGET)

clean:
	rm -f *.o $(TARGET)

