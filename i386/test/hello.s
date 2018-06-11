.section .rodata

msg: .ascii "Hello World!\n"

.equ msg_len, .-msg
.equ sys_write, 4
.equ sys_exit, 1
.equ stdout, 1
.equ kernel, 0x80

.section .text

.global _start

_start:
  mov $sys_write, %eax
  mov $stdout, %ebx
  mov $msg, %ecx
  mov $msg_len, %edx
  int $kernel

  mov $sys_exit, %eax
  xor %ebx, %ebx
  int $kernel
