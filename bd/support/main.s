	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	call	initialise_board
	call	initialise_benchmark
	li	a0,1
	call	warm_caches
	call	start_trigger
	call	benchmark
	mv	a5,a0
	sw	a5,-24(s0)
	call	stop_trigger
	lw	a5,-24(s0)
	mv	a0,a5
	call	verify_benchmark
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
