	.file	"libud.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.bss
	.align	2
	.type	a, @object
	.size	a, 1600
a:
	.zero	1600
	.globl	b
	.align	2
	.type	b, @object
	.size	b, 80
b:
	.zero	80
	.globl	x
	.align	2
	.type	x, @object
	.size	x, 80
x:
	.zero	80
	.globl	chkerr
	.section	.sbss,"aw",@nobits
	.align	2
	.type	chkerr, @object
	.size	chkerr, 4
chkerr:
	.zero	4
	.section	.rodata
	.align	2
.LC0:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.text
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	addi	s0,sp,112
	sw	a0,-100(s0)
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-96
	mv	a3,a4
	li	a4,80
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	addi	a5,s0,-96
	li	a2,80
	mv	a1,a5
	lui	a5,%hi(x)
	addi	a0,a5,%lo(x)
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L2
	lw	a5,-100(s0)
	bne	a5,zero,.L2
	li	a5,1
	j	.L4
.L2:
	li	a5,0
.L4:
	mv	a0,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	addi	sp,sp,112
	jr	ra
	.size	verify_benchmark, .-verify_benchmark
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
	li	a0,1478
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
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	zero,-20(s0)
	j	.L11
.L17:
	li	a5,20
	sw	a5,-36(s0)
	li	a5,5
	sw	a5,-40(s0)
	sw	zero,-24(s0)
	j	.L12
.L16:
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L13
.L15:
	lw	a5,-24(s0)
	addi	a4,a5,1
	lw	a5,-28(s0)
	addi	a5,a5,1
	add	a3,a4,a5
	lui	a5,%hi(a)
	addi	a2,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L14
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	__fixdfsi
	mv	a2,a0
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a2,0(a5)
.L14:
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L13:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	ble	a4,a5,.L15
	lui	a5,%hi(b)
	addi	a4,a5,%lo(b)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L12:
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	ble	a4,a5,.L16
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	ludcmp
	mv	a4,a0
	lui	a5,%hi(chkerr)
	sw	a4,%lo(chkerr)(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	blt	a4,a5,.L17
	lui	a5,%hi(chkerr)
	lw	a5,%lo(chkerr)(a5)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	benchmark_body, .-benchmark_body
	.align	2
	.globl	ludcmp
	.type	ludcmp, @function
ludcmp:
	addi	sp,sp,-448
	sw	ra,444(sp)
	sw	s0,440(sp)
	addi	s0,sp,448
	sw	a0,-436(s0)
	sw	a1,-440(s0)
	sw	zero,-20(s0)
	j	.L20
.L30:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L21
.L25:
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	sw	zero,-28(s0)
	j	.L23
.L24:
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	lui	a5,%hi(a)
	addi	a2,a5,%lo(a)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,0(a5)
	mul	a5,a3,a5
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L23:
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L24
.L22:
	lui	a5,%hi(a)
	addi	a4,a5,%lo(a)
	lw	a3,-20(s0)
	li	a5,84
	mul	a5,a3,a5
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	div	a3,a4,a5
	lui	a5,%hi(a)
	addi	a2,a5,%lo(a)
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L21:
	lw	a4,-24(s0)
	lw	a5,-440(s0)
	ble	a4,a5,.L25
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L26
.L29:
	lw	a5,-20(s0)
	addi	a4,a5,1
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	j	.L27
.L28:
	lw	a5,-20(s0)
	addi	a4,a5,1
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-28(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	lui	a5,%hi(a)
	addi	a2,a5,%lo(a)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,0(a5)
	mul	a5,a3,a5
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L27:
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	ble	a4,a5,.L28
	lw	a5,-20(s0)
	addi	a4,a5,1
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L26:
	lw	a4,-24(s0)
	lw	a5,-440(s0)
	ble	a4,a5,.L29
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a4,-20(s0)
	lw	a5,-440(s0)
	blt	a4,a5,.L30
	lui	a5,%hi(b)
	addi	a5,a5,%lo(b)
	lw	a5,0(a5)
	sw	a5,-432(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L31
.L34:
	lui	a5,%hi(b)
	addi	a4,a5,%lo(b)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	sw	zero,-24(s0)
	j	.L32
.L33:
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a5)
	lw	a3,-24(s0)
	addi	a5,s0,-432
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mul	a5,a4,a5
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L32:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L33
	lw	a4,-20(s0)
	addi	a5,s0,-432
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L31:
	lw	a4,-20(s0)
	lw	a5,-440(s0)
	ble	a4,a5,.L34
	lw	a4,-440(s0)
	addi	a5,s0,-432
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a2,-440(s0)
	li	a5,84
	mul	a5,a2,a5
	add	a5,a3,a5
	lw	a5,0(a5)
	div	a4,a4,a5
	lui	a5,%hi(x)
	addi	a3,a5,%lo(x)
	lw	a5,-440(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-440(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L35
.L38:
	lw	a4,-20(s0)
	addi	a5,s0,-432
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L36
.L37:
	lui	a5,%hi(a)
	addi	a3,a5,%lo(a)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	lw	a4,-24(s0)
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a5)
	lui	a5,%hi(x)
	addi	a3,a5,%lo(x)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mul	a5,a4,a5
	lw	a4,-32(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L36:
	lw	a4,-24(s0)
	lw	a5,-440(s0)
	ble	a4,a5,.L37
	lui	a5,%hi(a)
	addi	a4,a5,%lo(a)
	lw	a3,-20(s0)
	li	a5,84
	mul	a5,a3,a5
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	div	a4,a4,a5
	lui	a5,%hi(x)
	addi	a3,a5,%lo(x)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L35:
	lw	a5,-20(s0)
	bge	a5,zero,.L38
	li	a5,0
	mv	a0,a5
	lw	ra,444(sp)
	lw	s0,440(sp)
	addi	sp,sp,448
	jr	ra
	.size	ludcmp, .-ludcmp
	.globl	__fixdfsi
	.globl	__adddf3
	.globl	__floatsidf
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
