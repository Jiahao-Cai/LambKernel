# LambKernel
Course work for Computer System Engineering II

## How to run and debug
```plaintext
James:~/LambKernel ► make
James:~/LambKernel ► qemu-system-arm -machine virt-2.9 -nographic -monitor null -serial null -semihosting -kernel main.elf -gdb tcp::51234 -S  
```

**Using gdb to attach process in another terminal:**  

```plaintext
James:~/LambKernel ► arm-none-eabi-gdb main.elf  
(gdb) target remote localhost:51234
Remote debugging using localhost:51234
0x0000809c in _start ()
(gdb) load
Loading section .init, size 0xc lma 0x8000
Loading section .text, size 0x51c lma 0x800c
Loading section .fini, size 0xc lma 0x8528
Loading section .rodata, size 0x8 lma 0x8534
Loading section .ARM.exidx, size 0x8 lma 0x853c
Loading section .eh_frame, size 0x4 lma 0x8544
Loading section .init_array, size 0x8 lma 0x10548
Loading section .fini_array, size 0x4 lma 0x10550
Loading section .jcr, size 0x4 lma 0x10554
Loading section .data, size 0x434 lma 0x10558
Start address 0x809c, load size 2444
Transfer rate: 2386 KB/sec, 244 bytes/write.
(gdb) break main
Breakpoint 1 at 0x81f0: file context-demo.c, line 14.
(gdb) c
Continuing.
```

