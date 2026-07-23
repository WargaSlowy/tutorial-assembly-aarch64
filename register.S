; cara assembling dan cek di gdb
; aarch64-linux-gnu-as register.S -o register.o
; aarch64-linux-gnu-ld register.o -o register

; intel x86_64 jalan dengan qemu
; qemu-aarch64 ./register

; baca masukan nilai dengan gdb
; qemu-aarch64 -g 1234 ./register

; di terminal baru buka gdb dengan cara
; (gdb) set architecture aarch64
; (gdb) target remote :1234

; baca semua register `info registers`
; jalan satu printah step `stepi`
; baca satu register `info register x0`

.section .text

.global _start

_start:
  mov x0, #10
  mov x1, #20
  mov x2, #30
  mov x3, #40
  
  mov x0, #0
  mov x8, #93
  svc #0
