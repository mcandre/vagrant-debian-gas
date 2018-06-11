.data

.equ sys_write, 1
.equ sys_exit, 60
.equ stdout, 1

msg: .ascii "Hello World!\n"
.equ msg_len, .-msg

.text

.global _start

_start:
  mov $sys_write, %rax
  mov $stdout, %rdi
  mov $msg, %rsi
  mov $msg_len, %rdx
  syscall

  mov $sys_exit, %rax
  mov $0, %rdi
  syscall
