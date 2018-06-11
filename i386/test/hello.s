.data

.equ sys_write, 4
.equ sys_exit, 1
.equ stdout, 1
.equ kernel, 0x80

msg: .ascii "Hello World!\n"
.equ msg_len, .-msg

.text

.global _start

_start:
  mov $sys_write, %eax
  mov $stdout, %ebx
  mov $msg, %ecx
  mov $msg_len, %edx
  int $kernel

  mov $sys_exit, %eax
  mov $0, %ebx
  int $kernel
