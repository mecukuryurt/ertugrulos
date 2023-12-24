nasm -f elf32 src/boot.asm -o boot/boot.o
gcc -m32 -c src/kernel.c -o boot/kernel.o
ld -m elf_i386 -T link.ld -o out/kernel.bin boot/boot.o boot/kernel.o
qemu-system-x86_64 -kernel out/kernel.bin
grub-mkrescue -o ertugrulos.iso out/

