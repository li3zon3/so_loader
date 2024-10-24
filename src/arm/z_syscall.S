#if !STDLIB
	.text
	.align	4
	.global	z_syscall
	.type	z_syscall, %function
z_syscall:
	uxth	r8, r0        @ Extend r0 to r8 (zero-extend 16-bit value into r8)
	mov	r0, r1         @ Move r1 to r0
	mov	r1, r2         @ Move r2 to r1
	mov	r2, r3         @ Move r3 to r2
	mov	r3, r4         @ Move r4 to r3
	mov	r4, r5         @ Move r5 to r4
	mov	r5, r6         @ Move r6 to r5
	mov	r6, r7         @ Move r7 to r6
	svc	0x0            @ Supervisor call (system call)
	bx	lr             @ Return (same as ret in AArch64)
#endif