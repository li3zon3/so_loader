#if !STDLIB
	.text
	.align	4
	.global	z_start
	.type	z_start, %function
z_start:
	mov	r1,	r0         @ Move argument from r0 to r1
	mov	r0,	sp         @ Move stack pointer to r0
	bl	z_entry       @ Branch and link to z_entry function
	wfi              @ Wait for interrupt (same in ARM)
#endif