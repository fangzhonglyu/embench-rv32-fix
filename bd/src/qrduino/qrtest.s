	.file	"qrtest.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	heap
	.comm	heap,8192,4
	.local	encode
	.comm	encode,4,4
	.local	size
	.comm	size,4,4
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
	li	a0,5
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
	sw	zero,-20(s0)
	j	.L6
.L7:
	lui	a5,%hi(in_encode.0)
	lw	a4,%lo(in_encode.0)(a5)
	lui	a5,%hi(encode)
	sw	a4,%lo(encode)(a5)
	lui	a5,%hi(size)
	li	a4,22
	sw	a4,%lo(size)(a5)
	li	a1,8192
	lui	a5,%hi(heap)
	addi	a0,a5,%lo(heap)
	call	init_heap_beebs
	lui	a5,%hi(size)
	lw	a5,%lo(size)(a5)
	mv	a1,a5
	li	a0,1
	call	initeccsize
	lui	a5,%hi(strinbuf)
	lw	a4,%lo(strinbuf)(a5)
	lui	a5,%hi(encode)
	lw	a3,%lo(encode)(a5)
	lui	a5,%hi(size)
	lw	a5,%lo(size)(a5)
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	call	initframe
	call	qrencode
	call	freeframe
	call	freeecc
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	blt	a4,a5,.L7
	li	a5,0
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
	.section	.rodata
	.align	2
.LC0:
	.base64	"/mU/gIJuoIC6QS6AuiYugLoJroCCFA=="
	.text
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	sw	a1,-40(s0)
	sw	a2,-36(s0)
	sw	a3,-32(s0)
	sw	a4,-28(s0)
	lw	a4,16(a5)
	sw	a4,-24(s0)
	lhu	a5,20(a5)
	sh	a5,-20(s0)
	lui	a5,%hi(strinbuf)
	lw	a5,%lo(strinbuf)(a5)
	addi	a4,s0,-40
	li	a2,22
	mv	a1,a4
	mv	a0,a5
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L11
	lui	a5,%hi(heap)
	addi	a0,a5,%lo(heap)
	call	check_heap_beebs
	mv	a5,a0
	beq	a5,zero,.L11
	li	a5,1
	j	.L13
.L11:
	li	a5,0
.L13:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	verify_benchmark, .-verify_benchmark
	.section	.rodata
	.align	2
.LC1:
	.string	"http://www.mageec.com"
	.section	.sdata,"aw"
	.align	2
	.type	in_encode.0, @object
	.size	in_encode.0, 4
in_encode.0:
	.word	.LC1
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
