all: build run


build:
	nasm -f bin boot.asm -o floppy.bin

run:
	qemu-system-i386 -fda floppy.bin

nographic:
	qemu-system-i386 -fda floppy.bin -nographic
