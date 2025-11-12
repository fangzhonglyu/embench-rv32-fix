	.file	"primecount.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	countPrimes
	.type	countPrimes, @function
countPrimes:
	addi	sp,sp,-384
	sw	ra,380(sp)
	sw	s0,376(sp)
	addi	s0,sp,384
	sw	zero,-20(s0)
	li	a5,2
	sw	a5,-204(s0)
	li	a5,4
	sw	a5,-372(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	li	a5,3
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-32(s0)
	j	.L2
.L3:
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mul	a5,a5,a5
	lw	a4,-28(s0)
	bge	a4,a5,.L3
	lw	a5,-32(s0)
	addi	a5,a5,-1
	sw	a5,-32(s0)
	sw	zero,-36(s0)
	j	.L4
.L11:
	lw	a4,-36(s0)
	addi	a5,s0,-204
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	blt	a4,a5,.L18
	j	.L7
.L8:
	lw	a4,-36(s0)
	addi	a5,s0,-372
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-36(s0)
	addi	a5,s0,-204
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	add	a4,a4,a5
	lw	a3,-36(s0)
	addi	a5,s0,-372
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L7:
	lw	a4,-36(s0)
	addi	a5,s0,-372
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-28(s0)
	bgt	a4,a5,.L8
	lw	a4,-36(s0)
	addi	a5,s0,-372
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-28(s0)
	beq	a4,a5,.L19
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L4:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L11
	j	.L17
.L18:
	nop
.L6:
	lw	a4,-20(s0)
	li	a5,41
	bgt	a4,a5,.L13
	lw	a4,-20(s0)
	addi	a5,s0,-204
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	mul	a4,a5,a5
	lw	a3,-20(s0)
	addi	a5,s0,-372
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L13:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L10
.L19:
	nop
.L10:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	j	.L2
.L17:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,380(sp)
	lw	s0,376(sp)
	addi	sp,sp,384
	jr	ra
	.size	countPrimes, .-countPrimes
	.align	2
	.globl	warm_caches
	.type	warm_caches, @function
warm_caches:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a0,-36(s0)
	call	benchmark_body
	sw	a0,-20(s0)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	warm_caches, .-warm_caches
	.align	2
	.globl	benchmark
	.type	benchmark, @function
benchmark:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a0,1
	call	benchmark_body
	mv	a5,a0
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	benchmark, .-benchmark
	.align	2
	.type	benchmark_body, @function
benchmark_body:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L25
.L26:
	call	countPrimes
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L25:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	blt	a4,a5,.L26
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	benchmark_body, .-benchmark_body
	.align	2
	.globl	initialise_benchmark
	.type	initialise_benchmark, @function
initialise_benchmark:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	initialise_benchmark, .-initialise_benchmark
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,-4096
	addi	a5,a5,584
	add	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	verify_benchmark, .-verify_benchmark
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
