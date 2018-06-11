.section .rodata

msg: .ascii "Hello World!\n"

.equ msg_len, .-msg
.equ sys_exit, 60

.section .text

.global _start

_start:
  mov $1, %rax
  mov %rax, %rdi
  mov $msg, %rsi
  mov $msg_len, %rdx
  syscall

  mov $sys_exit, %rax
  xor %rdi, %rdi
  syscall
