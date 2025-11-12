	.file	"tarfind.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	heap
	.comm	heap,8996,4
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
	.globl	warm_caches
	.type	warm_caches, @function
warm_caches:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	benchmark_body
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
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
	li	a0,47
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
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	sw	zero,-24(s0)
	j	.L7
.L21:
	li	a5,8192
	addi	a1,a5,804
	lui	a5,%hi(heap)
	addi	a0,a5,%lo(heap)
	call	init_heap_beebs
	li	a5,35
	sw	a5,-44(s0)
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,8
	add	a5,a5,a4
	mv	a0,a5
	call	malloc_beebs
	sw	a0,-48(s0)
	sw	zero,-20(s0)
	j	.L8
.L11:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,8
	add	a5,a5,a4
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-60(s0)
	li	a2,257
	li	a1,0
	lw	a0,-60(s0)
	call	memset
	lw	a5,-20(s0)
	li	a4,-1370734592
	addi	a4,a4,349
	mulh	a4,a5,a4
	add	a4,a4,a5
	srai	a3,a4,6
	srai	a4,a5,31
	sub	a4,a3,a4
	li	a3,94
	mul	a4,a4,a3
	sub	a4,a5,a4
	addi	a5,a4,5
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	li	a4,48
	sb	a4,156(a5)
	sw	zero,-28(s0)
	j	.L9
.L10:
	call	rand_beebs
	mv	a5,a0
	li	a4,1321529344
	addi	a4,a4,-945
	mulh	a4,a5,a4
	srai	a3,a4,3
	srai	a4,a5,31
	sub	a4,a3,a4
	li	a3,26
	mul	a4,a4,a3
	sub	a4,a5,a4
	andi	a5,a4,0xff
	addi	a5,a5,65
	andi	a4,a5,0xff
	lw	a3,-60(s0)
	lw	a5,-28(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L9:
	lw	a4,-28(s0)
	lw	a5,-64(s0)
	blt	a4,a5,.L10
	lw	a5,-60(s0)
	li	a4,48
	sb	a4,124(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L11
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L12
.L20:
	lw	a5,-28(s0)
	addi	a4,a5,17
	li	a5,-368140288
	addi	a5,a5,235
	mulh	a5,a4,a5
	add	a5,a5,a4
	srai	a3,a5,5
	srai	a5,a4,31
	sub	a3,a3,a5
	mv	a5,a3
	slli	a5,a5,3
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a5,a3
	sub	a3,a4,a5
	mv	a4,a3
	mv	a5,a4
	slli	a5,a5,8
	add	a5,a5,a4
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L13
.L19:
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,8
	add	a5,a5,a4
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-56(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,8
	add	a5,a5,a4
	lw	a4,-48(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	sw	a5,-40(s0)
	j	.L14
.L16:
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L14:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L15
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L15
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L16
.L15:
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L17
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L17
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
	j	.L18
.L17:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L13:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L19
.L18:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L12:
	lw	a4,-28(s0)
	li	a5,4
	ble	a4,a5,.L20
	lw	a0,-48(s0)
	call	free_beebs
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L7:
	lw	a4,-24(s0)
	lw	a5,-68(s0)
	blt	a4,a5,.L21
	lw	a5,-32(s0)
	addi	a5,a5,-5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	benchmark_body, .-benchmark_body
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-1
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
