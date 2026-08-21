; cara assembling dan jalankan
; aarch64-linux-gnu-as syscall.S -o syscall.o
; aarch64-linux-gnu-ld syscall.o -o syscall

; intel x86_64 jalan dengan qemu
; qemu-aarch64 ./syscall

.global _start

.section .data

pesan:
  .ascii "wello"

pesan_panjang = . - pesan

.section .text

_start:
  mov x0, #1 ; stdout

  adr x1, pesan
  mov x2, pesan_panjang
  
  mov x8, #64

  svc #0

  mov x0, #0
  mov x8, #93

  svc #0
