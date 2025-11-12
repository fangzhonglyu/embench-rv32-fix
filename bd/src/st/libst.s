	.file	"libst.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.type	benchmark_body.isra.0, @function
benchmark_body.isra.0:
	ble	a0,zero,.L21
	lui	a5,%hi(.LC1)
	lw	a6,%lo(.LC1+4)(a5)
	lw	a5,%lo(.LC1)(a5)
	lui	a4,%hi(.LC0)
	addi	sp,sp,-128
	lw	a3,%lo(.LC0)(a4)
	lw	a4,%lo(.LC0+4)(a4)
	sw	a5,48(sp)
	lui	a5,%hi(.LANCHOR0+1600)
	sw	s10,80(sp)
	addi	a5,a5,%lo(.LANCHOR0+1600)
	lui	s10,%hi(.LANCHOR0+800)
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	s5,100(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	sw	s8,88(sp)
	sw	s9,84(sp)
	sw	s11,76(sp)
	sw	a0,60(sp)
	sw	a3,24(sp)
	sw	a4,28(sp)
	sw	a6,52(sp)
	addi	s10,s10,%lo(.LANCHOR0+800)
	sw	a5,20(sp)
	sw	zero,56(sp)
.L2:
	lui	a5,%hi(.LANCHOR0)
	li	s6,271650816
	li	s3,8192
	addi	s2,a5,%lo(.LANCHOR0)
	addi	s6,s6,1223
	addi	s3,s3,-97
	mv	s8,s2
	li	s0,0
	li	s1,0
	li	s7,100
.L3:
	slli	a5,s0,5
	add	a5,a5,s0
	slli	a5,a5,2
	add	a5,a5,s0
	addi	a5,a5,81
	mulh	s0,a5,s6
	srai	a4,a5,31
	addi	s8,s8,8
	srai	s0,s0,9
	sub	s0,s0,a4
	mul	s0,s0,s3
	sub	s0,a5,s0
	mv	a0,s0
	call	__floatsidf
	lw	a2,24(sp)
	lw	a3,28(sp)
	call	__divdf3
	mv	s4,a0
	mv	a0,s1
	mv	s5,a1
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	sw	a0,-8(s8)
	sw	a1,-4(s8)
	addi	s1,s1,1
	bne	s1,s7,.L3
	lui	a5,%hi(Seed)
	sw	s0,%lo(Seed)(a5)
	lui	a5,%hi(.LANCHOR0)
	addi	s0,a5,%lo(.LANCHOR0)
	li	a4,0
	li	a5,0
.L4:
	lw	a2,0(s0)
	lw	a3,4(s0)
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	s10,s0,.L4
	lw	a2,48(sp)
	lw	a3,52(sp)
	lui	a5,%hi(SumA)
	sw	a0,%lo(SumA)(a5)
	sw	a1,%lo(SumA+4)(a5)
	call	__divdf3
	lui	a5,%hi(.LANCHOR0)
	sw	a0,32(sp)
	sw	a1,36(sp)
	addi	s3,a5,%lo(.LANCHOR0)
	li	s1,0
	li	s0,0
	mv	s4,a0
	mv	s5,a1
.L5:
	lw	a0,0(s3)
	lw	a1,4(s3)
	mv	a2,s4
	mv	a3,s5
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__adddf3
	addi	s3,s3,8
	mv	s1,a0
	mv	s0,a1
	bne	s10,s3,.L5
	lw	a2,48(sp)
	lw	a3,52(sp)
	li	s7,271650816
	li	s6,8192
	call	__divdf3
	call	sqrt
	lui	a5,%hi(Seed)
	lw	s9,%lo(Seed)(a5)
	mv	s11,s10
	mv	s4,s10
	addi	s7,s7,1223
	addi	s6,s6,-97
	li	s3,0
	li	s8,100
.L6:
	slli	a5,s9,5
	add	a5,a5,s9
	slli	a5,a5,2
	add	a5,a5,s9
	addi	a5,a5,81
	mulh	s9,a5,s7
	srai	a4,a5,31
	addi	s4,s4,8
	srai	s9,s9,9
	sub	s9,s9,a4
	mul	s9,s9,s6
	sub	s9,a5,s9
	mv	a0,s9
	call	__floatsidf
	lw	a2,24(sp)
	lw	a3,28(sp)
	call	__divdf3
	mv	s0,a0
	mv	a0,s3
	mv	s1,a1
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s0
	mv	a1,s1
	call	__adddf3
	sw	a0,-8(s4)
	sw	a1,-4(s4)
	addi	s3,s3,1
	bne	s3,s8,.L6
	lui	a5,%hi(Seed)
	sw	s9,%lo(Seed)(a5)
	mv	s0,s10
	li	a4,0
	li	a5,0
.L7:
	lw	a3,4(s0)
	lw	a2,0(s0)
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	lw	a3,20(sp)
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	a3,s0,.L7
	lw	a2,48(sp)
	lw	a3,52(sp)
	lui	a5,%hi(SumB)
	sw	a0,%lo(SumB)(a5)
	sw	a1,%lo(SumB+4)(a5)
	call	__divdf3
	sw	a0,40(sp)
	sw	a1,44(sp)
	mv	s3,s10
	li	s1,0
	li	s0,0
	mv	s4,a0
	mv	s5,a1
.L8:
	lw	a0,0(s3)
	lw	a1,4(s3)
	mv	a2,s4
	mv	a3,s5
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__adddf3
	lw	a5,20(sp)
	addi	s3,s3,8
	mv	s1,a0
	mv	s0,a1
	bne	a5,s3,.L8
	lw	a2,48(sp)
	lw	a3,52(sp)
	li	s5,0
	mv	s7,s5
	call	__divdf3
	call	sqrt
	mv	s9,s5
	li	s6,0
	li	s8,0
	li	s0,0
	mv	s4,s2
.L9:
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a0,0(s4)
	lw	a1,4(s4)
	addi	s4,s4,8
	addi	s11,s11,8
	call	__subdf3
	mv	s2,a0
	mv	s3,a1
	lw	a2,40(sp)
	lw	a3,44(sp)
	lw	a0,-8(s11)
	lw	a1,-4(s11)
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	call	__adddf3
	mv	a2,s2
	mv	a3,s3
	mv	s9,a0
	mv	s8,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s6
	call	__adddf3
	lw	a2,8(sp)
	lw	a3,12(sp)
	mv	s7,a0
	mv	s6,a1
	mv	a0,a2
	mv	a1,a3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s5
	mv	a1,s0
	call	__adddf3
	mv	s5,a0
	mv	s0,a1
	bne	s10,s4,.L9
	mv	s4,a1
	mv	a0,s7
	mv	a1,s6
	call	sqrt
	mv	s0,a0
	mv	s1,a1
	mv	a0,s5
	mv	a1,s4
	call	sqrt
	mv	a2,a0
	mv	a3,a1
	mv	a0,s0
	mv	a1,s1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	call	__divdf3
	lw	a5,56(sp)
	lw	a4,60(sp)
	addi	a5,a5,1
	sw	a5,56(sp)
	lui	a5,%hi(Coef)
	sw	a0,%lo(Coef)(a5)
	sw	a1,%lo(Coef+4)(a5)
	lw	a5,56(sp)
	bne	a5,a4,.L2
	lw	ra,124(sp)
	lw	s0,120(sp)
	lw	s1,116(sp)
	lw	s2,112(sp)
	lw	s3,108(sp)
	lw	s4,104(sp)
	lw	s5,100(sp)
	lw	s6,96(sp)
	lw	s7,92(sp)
	lw	s8,88(sp)
	lw	s9,84(sp)
	lw	s10,80(sp)
	lw	s11,76(sp)
	addi	sp,sp,128
	jr	ra
.L21:
	ret
	.size	benchmark_body.isra.0, .-benchmark_body.isra.0
	.align	2
	.type	benchmark_body.constprop.0.isra.0, @function
benchmark_body.constprop.0.isra.0:
	lui	a5,%hi(.LC1)
	lw	a6,%lo(.LC1+4)(a5)
	lw	a5,%lo(.LC1)(a5)
	addi	sp,sp,-112
	lui	a4,%hi(.LC0)
	lw	a3,%lo(.LC0)(a4)
	sw	a5,32(sp)
	lw	a4,%lo(.LC0+4)(a4)
	lui	a5,%hi(.LANCHOR0+1600)
	addi	a5,a5,%lo(.LANCHOR0+1600)
	sw	s10,64(sp)
	sw	a5,40(sp)
	lui	s10,%hi(.LANCHOR0+800)
	li	a5,13
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s11,60(sp)
	sw	a3,8(sp)
	sw	a4,12(sp)
	sw	a6,36(sp)
	addi	s10,s10,%lo(.LANCHOR0+800)
	sw	a5,44(sp)
.L33:
	lui	a5,%hi(.LANCHOR0)
	li	s6,271650816
	li	s3,8192
	addi	s2,a5,%lo(.LANCHOR0)
	addi	s6,s6,1223
	addi	s3,s3,-97
	mv	s8,s2
	li	s0,0
	li	s1,0
	li	s7,100
.L26:
	slli	a5,s0,5
	add	a5,a5,s0
	slli	a5,a5,2
	add	a5,a5,s0
	addi	a5,a5,81
	mulh	s0,a5,s6
	srai	a4,a5,31
	addi	s8,s8,8
	srai	s0,s0,9
	sub	s0,s0,a4
	mul	s0,s0,s3
	sub	s0,a5,s0
	mv	a0,s0
	call	__floatsidf
	lw	a2,8(sp)
	lw	a3,12(sp)
	call	__divdf3
	mv	s4,a0
	mv	a0,s1
	mv	s5,a1
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	sw	a0,-8(s8)
	sw	a1,-4(s8)
	addi	s1,s1,1
	bne	s1,s7,.L26
	lui	a5,%hi(Seed)
	sw	s0,%lo(Seed)(a5)
	lui	a5,%hi(.LANCHOR0)
	addi	s0,a5,%lo(.LANCHOR0)
	li	a4,0
	li	a5,0
.L27:
	lw	a2,0(s0)
	lw	a3,4(s0)
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	s10,s0,.L27
	lw	a2,32(sp)
	lw	a3,36(sp)
	lui	a5,%hi(SumA)
	sw	a0,%lo(SumA)(a5)
	sw	a1,%lo(SumA+4)(a5)
	call	__divdf3
	lui	a5,%hi(.LANCHOR0)
	sw	a0,16(sp)
	sw	a1,20(sp)
	addi	s3,a5,%lo(.LANCHOR0)
	li	s1,0
	li	s0,0
	mv	s4,a0
	mv	s5,a1
.L28:
	lw	a0,0(s3)
	lw	a1,4(s3)
	mv	a2,s4
	mv	a3,s5
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__adddf3
	addi	s3,s3,8
	mv	s1,a0
	mv	s0,a1
	bne	s10,s3,.L28
	lw	a2,32(sp)
	lw	a3,36(sp)
	li	s7,271650816
	li	s6,8192
	call	__divdf3
	call	sqrt
	lui	a5,%hi(Seed)
	lw	s9,%lo(Seed)(a5)
	mv	s11,s10
	mv	s4,s10
	addi	s7,s7,1223
	addi	s6,s6,-97
	li	s3,0
	li	s8,100
.L29:
	slli	a5,s9,5
	add	a5,a5,s9
	slli	a5,a5,2
	add	a5,a5,s9
	addi	a5,a5,81
	mulh	s9,a5,s7
	srai	a4,a5,31
	addi	s4,s4,8
	srai	s9,s9,9
	sub	s9,s9,a4
	mul	s9,s9,s6
	sub	s9,a5,s9
	mv	a0,s9
	call	__floatsidf
	lw	a2,8(sp)
	lw	a3,12(sp)
	call	__divdf3
	mv	s0,a0
	mv	a0,s3
	mv	s1,a1
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s0
	mv	a1,s1
	call	__adddf3
	sw	a0,-8(s4)
	sw	a1,-4(s4)
	addi	s3,s3,1
	bne	s3,s8,.L29
	lui	a5,%hi(Seed)
	sw	s9,%lo(Seed)(a5)
	mv	s0,s10
	li	a4,0
	li	a5,0
.L30:
	lw	a3,4(s0)
	lw	a2,0(s0)
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	lw	a3,40(sp)
	addi	s0,s0,8
	mv	a4,a0
	mv	a5,a1
	bne	a3,s0,.L30
	lw	a2,32(sp)
	lw	a3,36(sp)
	lui	a5,%hi(SumB)
	sw	a0,%lo(SumB)(a5)
	sw	a1,%lo(SumB+4)(a5)
	call	__divdf3
	sw	a0,24(sp)
	sw	a1,28(sp)
	mv	s3,s10
	li	s1,0
	li	s0,0
	mv	s4,a0
	mv	s5,a1
.L31:
	lw	a0,0(s3)
	lw	a1,4(s3)
	mv	a2,s4
	mv	a3,s5
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__adddf3
	lw	a5,40(sp)
	addi	s3,s3,8
	mv	s1,a0
	mv	s0,a1
	bne	a5,s3,.L31
	lw	a2,32(sp)
	lw	a3,36(sp)
	li	s5,0
	mv	s7,s5
	call	__divdf3
	call	sqrt
	mv	s9,s5
	li	s6,0
	li	s8,0
	li	s0,0
	mv	s4,s2
.L32:
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,0(s4)
	lw	a1,4(s4)
	addi	s4,s4,8
	addi	s11,s11,8
	call	__subdf3
	mv	s2,a0
	mv	s3,a1
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a0,-8(s11)
	lw	a1,-4(s11)
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	call	__adddf3
	mv	a2,s2
	mv	a3,s3
	mv	s9,a0
	mv	s8,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s6
	call	__adddf3
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	s7,a0
	mv	s6,a1
	mv	a0,a2
	mv	a1,a3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s5
	mv	a1,s0
	call	__adddf3
	mv	s5,a0
	mv	s0,a1
	bne	s4,s10,.L32
	mv	s4,a1
	mv	a0,s7
	mv	a1,s6
	call	sqrt
	mv	s0,a0
	mv	s1,a1
	mv	a0,s5
	mv	a1,s4
	call	sqrt
	mv	a2,a0
	mv	a3,a1
	mv	a0,s0
	mv	a1,s1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	call	__divdf3
	lw	a5,44(sp)
	addi	a5,a5,-1
	sw	a5,44(sp)
	lui	a5,%hi(Coef)
	sw	a0,%lo(Coef)(a5)
	sw	a1,%lo(Coef+4)(a5)
	lw	a5,44(sp)
	bne	a5,zero,.L33
	lw	ra,108(sp)
	lw	s0,104(sp)
	lw	s1,100(sp)
	lw	s2,96(sp)
	lw	s3,92(sp)
	lw	s4,88(sp)
	lw	s5,84(sp)
	lw	s6,80(sp)
	lw	s7,76(sp)
	lw	s8,72(sp)
	lw	s9,68(sp)
	lw	s10,64(sp)
	lw	s11,60(sp)
	addi	sp,sp,112
	jr	ra
	.size	benchmark_body.constprop.0.isra.0, .-benchmark_body.constprop.0.isra.0
	.align	2
	.globl	rand_beebs
	.type	rand_beebs, @function
rand_beebs:
	lui	a4,%hi(seed)
	lw	a0,%lo(seed)(a4)
	li	a5,1103515648
	addi	a5,a5,-403
	mul	a0,a0,a5
	li	a5,12288
	addi	a5,a5,57
	add	a0,a0,a5
	slli	a0,a0,1
	srli	a0,a0,1
	sw	a0,%lo(seed)(a4)
	srli	a0,a0,16
	ret
	.size	rand_beebs, .-rand_beebs
	.align	2
	.globl	srand_beebs
	.type	srand_beebs, @function
srand_beebs:
	lui	a5,%hi(seed)
	sw	a0,%lo(seed)(a5)
	ret
	.size	srand_beebs, .-srand_beebs
	.align	2
	.globl	init_heap_beebs
	.type	init_heap_beebs, @function
init_heap_beebs:
	add	a1,a0,a1
	lui	a3,%hi(heap_end)
	lui	a4,%hi(heap_ptr)
	lui	a5,%hi(heap_requested)
	sw	a1,%lo(heap_end)(a3)
	sw	a0,%lo(heap_ptr)(a4)
	sw	zero,%lo(heap_requested)(a5)
	ret
	.size	init_heap_beebs, .-init_heap_beebs
	.align	2
	.globl	check_heap_beebs
	.type	check_heap_beebs, @function
check_heap_beebs:
	lui	a5,%hi(heap_requested)
	lw	a4,%lo(heap_requested)(a5)
	lui	a5,%hi(heap_end)
	lw	a5,%lo(heap_end)(a5)
	add	a0,a0,a4
	sltu	a0,a5,a0
	xori	a0,a0,1
	ret
	.size	check_heap_beebs, .-check_heap_beebs
	.align	2
	.globl	malloc_beebs
	.type	malloc_beebs, @function
malloc_beebs:
	mv	a5,a0
	beq	a0,zero,.L51
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a1,%lo(heap_requested)(a3)
	add	a4,a0,a5
	andi	a6,a4,3
	add	a5,a5,a1
	bne	a6,zero,.L55
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a1,a4,.L51
.L56:
	sw	a4,%lo(heap_ptr)(a2)
	ret
.L55:
	li	a1,4
	sub	a1,a1,a6
	add	a5,a5,a1
	add	a4,a4,a1
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a1,a4,.L56
.L51:
	li	a0,0
	ret
	.size	malloc_beebs, .-malloc_beebs
	.align	2
	.globl	calloc_beebs
	.type	calloc_beebs, @function
calloc_beebs:
	mul	a1,a0,a1
	beq	a1,zero,.L58
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a0,a1
	andi	a6,a4,3
	add	a5,a1,a5
	bne	a6,zero,.L83
.L59:
	lui	a6,%hi(heap_end)
	lw	a6,%lo(heap_end)(a6)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a6,a4,.L58
	sw	a4,%lo(heap_ptr)(a2)
	beq	a0,zero,.L58
	addi	a5,a1,-1
	li	a4,5
	bleu	a5,a4,.L67
	neg	a4,a0
	andi	a5,a4,3
	li	a3,0
	beq	a5,zero,.L61
	sb	zero,0(a0)
	andi	a4,a4,2
	li	a3,1
	beq	a4,zero,.L61
	sb	zero,1(a0)
	li	a4,3
	li	a3,2
	bne	a5,a4,.L61
	sb	zero,2(a0)
	mv	a3,a5
.L61:
	sub	a6,a1,a5
	andi	a2,a6,-4
	add	a5,a0,a5
	add	a4,a5,a2
.L63:
	sw	zero,0(a5)
	addi	a5,a5,4
	bne	a5,a4,.L63
	add	a5,a3,a2
	beq	a6,a2,.L57
.L60:
	add	a4,a0,a5
	sb	zero,0(a4)
	addi	a4,a5,1
	bleu	a1,a4,.L57
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,2
	bleu	a1,a4,.L57
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,3
	bleu	a1,a4,.L57
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,4
	bleu	a1,a4,.L57
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a5,a5,5
	bleu	a1,a5,.L57
	add	a5,a0,a5
	sb	zero,0(a5)
	ret
.L58:
	li	a0,0
.L57:
	ret
.L83:
	li	a7,4
	sub	a6,a7,a6
	add	a4,a4,a6
	add	a5,a5,a6
	j	.L59
.L67:
	li	a5,0
	j	.L60
	.size	calloc_beebs, .-calloc_beebs
	.align	2
	.globl	realloc_beebs
	.type	realloc_beebs, @function
realloc_beebs:
	beq	a0,zero,.L85
	beq	a1,zero,.L85
	lui	a6,%hi(heap_ptr)
	lw	a2,%lo(heap_ptr)(a6)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a2,a1
	andi	a7,a4,3
	add	a5,a1,a5
	bne	a7,zero,.L110
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a7,a4,.L85
.L111:
	sw	a4,%lo(heap_ptr)(a6)
	beq	a2,zero,.L85
	addi	a5,a1,-1
	li	a4,6
	bleu	a5,a4,.L95
	or	a3,a0,a2
	andi	a3,a3,3
	mv	a4,a2
	mv	a5,a0
	bne	a3,zero,.L95
	addi	a3,a2,-1
	sub	a3,a3,a0
	sltiu	a3,a3,3
	bne	a3,zero,.L95
	andi	a7,a1,-4
	add	a6,a0,a7
.L88:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L88
	beq	a1,a7,.L84
	lbu	a3,0(a6)
	add	a4,a2,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a1,a5,.L84
	add	a4,a0,a5
	lbu	a4,0(a4)
	add	a5,a2,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a1,a7,.L84
	add	a0,a0,a7
	lbu	a5,0(a0)
	add	a7,a2,a7
	sb	a5,0(a7)
.L84:
	mv	a0,a2
	ret
.L110:
	li	t1,4
	sub	a7,t1,a7
	add	a5,a5,a7
	add	a4,a4,a7
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a7,a4,.L111
.L85:
	li	a2,0
	mv	a0,a2
	ret
.L95:
	li	a5,0
.L92:
	add	a4,a0,a5
	lbu	a3,0(a4)
	add	a4,a2,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	bgtu	a1,a5,.L92
	mv	a0,a2
	ret
	.size	realloc_beebs, .-realloc_beebs
	.align	2
	.globl	free_beebs
	.type	free_beebs, @function
free_beebs:
	ret
	.size	free_beebs, .-free_beebs
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	beq	a2,zero,.L126
	addi	a5,a2,-1
	li	a4,5
	andi	a1,a1,0xff
	bleu	a5,a4,.L122
	neg	a4,a0
	andi	a5,a4,3
	li	a6,0
	beq	a5,zero,.L116
	sb	a1,0(a0)
	andi	a4,a4,2
	li	a6,1
	beq	a4,zero,.L116
	sb	a1,1(a0)
	li	a4,3
	li	a6,2
	bne	a5,a4,.L116
	sb	a1,2(a0)
	mv	a6,a5
.L116:
	slli	a4,a1,8
	slli	a3,a1,16
	sub	t1,a2,a5
	or	a4,a1,a4
	or	a4,a4,a3
	add	a5,a0,a5
	slli	a3,a1,24
	andi	a7,t1,-4
	or	a4,a4,a3
	add	a3,a5,a7
.L118:
	sw	a4,0(a5)
	addi	a5,a5,4
	bne	a5,a3,.L118
	add	a5,a6,a7
	beq	t1,a7,.L126
.L115:
	add	a4,a0,a5
	sb	a1,0(a4)
	addi	a4,a5,1
	bleu	a2,a4,.L126
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,2
	bleu	a2,a4,.L126
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,3
	bleu	a2,a4,.L126
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,4
	bleu	a2,a4,.L126
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a5,a5,5
	bleu	a2,a5,.L126
	add	a5,a0,a5
	sb	a1,0(a5)
.L126:
	ret
.L122:
	li	a5,0
	j	.L115
	.size	memset, .-memset
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	beq	a2,zero,.L131
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L132
	or	a3,a0,a1
	andi	a3,a3,3
	mv	a4,a0
	mv	a5,a1
	bne	a3,zero,.L132
	sub	a3,a0,a1
	addi	a3,a3,-1
	sltiu	a3,a3,3
	bne	a3,zero,.L132
	andi	a7,a2,-4
	add	a6,a1,a7
.L133:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L133
	beq	a2,a7,.L131
	lbu	a3,0(a6)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a2,a5,.L131
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a2,a7,.L131
	add	a1,a1,a7
	lbu	a5,0(a1)
	add	a7,a0,a7
	sb	a5,0(a7)
	ret
.L132:
	add	a2,a1,a2
	mv	a5,a0
.L135:
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a1,a2,.L135
.L131:
	ret
	.size	memcpy, .-memcpy
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	beq	a2,zero,.L152
	add	a2,a0,a2
	j	.L151
.L150:
	beq	a0,a2,.L152
.L151:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a5,a4,.L150
	sub	a0,a5,a4
	ret
.L152:
	li	a0,0
	ret
	.size	memcmp, .-memcmp
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	bgeu	a0,a1,.L155
	beq	a2,zero,.L156
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L157
	or	a3,a1,a0
	andi	a3,a3,3
	mv	a4,a0
	mv	a5,a1
	bne	a3,zero,.L157
	sub	a3,a0,a1
	addi	a3,a3,-1
	sltiu	a3,a3,3
	bne	a3,zero,.L157
	andi	a7,a2,-4
	add	a6,a1,a7
.L158:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L158
	beq	a2,a7,.L156
	lbu	a3,0(a6)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a2,a5,.L156
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a2,a7,.L156
	add	a1,a1,a7
	lbu	a5,0(a1)
	add	a7,a0,a7
	sb	a5,0(a7)
	ret
.L155:
	bgtu	a0,a1,.L178
.L156:
	ret
.L178:
	beq	a2,zero,.L156
	addi	a2,a2,-1
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
	j	.L178
.L157:
	add	a2,a1,a2
	mv	a5,a0
.L160:
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a1,a2,.L160
	ret
	.size	memmove, .-memmove
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	lbu	a5,0(a0)
	beq	a5,zero,.L179
	li	a5,0
.L181:
	addi	a5,a5,1
	add	a4,a0,a5
	lbu	a4,0(a4)
	bne	a4,zero,.L181
.L179:
	mv	a0,a5
	ret
	.size	strlen, .-strlen
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	lbu	a5,0(a0)
	beq	a5,zero,.L185
	andi	a4,a1,0xff
.L187:
	beq	a4,a5,.L184
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L187
.L185:
	seqz	a1,a1
	neg	a1,a1
	and	a0,a0,a1
.L184:
	ret
	.size	strchr, .-strchr
	.align	2
	.globl	initialise_board
	.type	initialise_board, @function
initialise_board:
 #APP
# 15 "/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/config/riscv32/boards/ri5cyverilator/boardsupport.c" 1
	li a0, 0
# 0 "" 2
 #NO_APP
	ret
	.size	initialise_board, .-initialise_board
	.align	2
	.globl	start_trigger
	.type	start_trigger, @function
start_trigger:
 #APP
# 21 "/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/config/riscv32/boards/ri5cyverilator/boardsupport.c" 1
	li a0, 0
# 0 "" 2
 #NO_APP
	ret
	.size	start_trigger, .-start_trigger
	.align	2
	.globl	stop_trigger
	.type	stop_trigger, @function
stop_trigger:
 #APP
# 27 "/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/config/riscv32/boards/ri5cyverilator/boardsupport.c" 1
	li a0, 0
# 0 "" 2
 #NO_APP
	ret
	.size	stop_trigger, .-stop_trigger
	.align	2
	.globl	initialise_benchmark
	.type	initialise_benchmark, @function
initialise_benchmark:
	ret
	.size	initialise_benchmark, .-initialise_benchmark
	.align	2
	.globl	warm_caches
	.type	warm_caches, @function
warm_caches:
	addi	sp,sp,-16
	sw	ra,12(sp)
	call	benchmark_body.isra.0
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	warm_caches, .-warm_caches
	.align	2
	.globl	benchmark
	.type	benchmark, @function
benchmark:
	addi	sp,sp,-16
	sw	ra,12(sp)
	call	benchmark_body.constprop.0.isra.0
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	benchmark, .-benchmark
	.align	2
	.globl	InitSeed
	.type	InitSeed, @function
InitSeed:
	lui	a5,%hi(Seed)
	sw	zero,%lo(Seed)(a5)
	ret
	.size	InitSeed, .-InitSeed
	.align	2
	.globl	Calc_Sum_Mean
	.type	Calc_Sum_Mean, @function
Calc_Sum_Mean:
	addi	sp,sp,-32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	mv	s0,a0
	mv	s1,a1
	sw	zero,0(a1)
	sw	zero,4(a1)
	mv	s3,a2
	addi	s2,a0,800
	li	a4,0
	li	a5,0
.L202:
	lw	a2,0(s0)
	lw	a3,4(s0)
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	addi	s0,s0,8
	sw	a0,0(s1)
	sw	a1,4(s1)
	mv	a4,a0
	mv	a5,a1
	bne	s2,s0,.L202
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	call	__divdf3
	lw	ra,28(sp)
	lw	s0,24(sp)
	sw	a0,0(s3)
	sw	a1,4(s3)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	addi	sp,sp,32
	jr	ra
	.size	Calc_Sum_Mean, .-Calc_Sum_Mean
	.align	2
	.globl	Square
	.type	Square, @function
Square:
	addi	sp,sp,-16
	mv	a2,a0
	mv	a3,a1
	sw	ra,12(sp)
	call	__muldf3
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	Square, .-Square
	.align	2
	.globl	Calc_Var_Stddev
	.type	Calc_Var_Stddev, @function
Calc_Var_Stddev:
	addi	sp,sp,-48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	mv	s4,a1
	mv	s5,a2
	mv	s0,a0
	mv	s6,a3
	mv	s7,a4
	addi	s3,a0,800
	li	s2,0
	li	s1,0
.L208:
	lw	a0,0(s0)
	lw	a1,4(s0)
	mv	a2,s4
	mv	a3,s5
	call	__subdf3
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s1
	call	__adddf3
	addi	s0,s0,8
	mv	s2,a0
	mv	s1,a1
	bne	s3,s0,.L208
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	call	__divdf3
	sw	a0,0(s6)
	sw	a1,4(s6)
	call	sqrt
	lw	ra,44(sp)
	lw	s0,40(sp)
	sw	a0,0(s7)
	sw	a1,4(s7)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	addi	sp,sp,48
	jr	ra
	.size	Calc_Var_Stddev, .-Calc_Var_Stddev
	.align	2
	.globl	Calc_LinCorrCoef
	.type	Calc_LinCorrCoef, @function
Calc_LinCorrCoef:
	addi	sp,sp,-96
	sw	s6,64(sp)
	sw	s7,60(sp)
	li	s6,0
	li	s7,0
	sw	a5,28(sp)
	addi	a5,a0,800
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	sw	ra,92(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	mv	s11,a0
	mv	s10,a1
	sw	a5,12(sp)
	mv	s9,s7
	mv	s1,s7
	mv	s8,s6
	mv	s0,s6
.L212:
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,0(s11)
	lw	a1,4(s11)
	addi	s11,s11,8
	addi	s10,s10,8
	call	__subdf3
	mv	s4,a0
	mv	s5,a1
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a0,-8(s10)
	lw	a1,-4(s10)
	call	__subdf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__adddf3
	mv	a2,s4
	mv	a3,s5
	mv	s1,a0
	mv	s0,a1
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	call	__adddf3
	mv	a2,s2
	mv	a3,s3
	mv	s9,a0
	mv	s8,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s7
	mv	a1,s6
	call	__adddf3
	lw	a5,12(sp)
	mv	s7,a0
	mv	s6,a1
	bne	a5,s11,.L212
	mv	a0,s9
	mv	a1,s8
	call	sqrt
	mv	s2,a0
	mv	s3,a1
	mv	a0,s7
	mv	a1,s6
	call	sqrt
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__divdf3
	lw	ra,92(sp)
	lw	s0,88(sp)
	lui	s2,%hi(Coef)
	sw	a0,%lo(Coef)(s2)
	sw	a1,%lo(Coef+4)(s2)
	lw	s1,84(sp)
	lw	s2,80(sp)
	lw	s3,76(sp)
	lw	s4,72(sp)
	lw	s5,68(sp)
	lw	s6,64(sp)
	lw	s7,60(sp)
	lw	s8,56(sp)
	lw	s9,52(sp)
	lw	s10,48(sp)
	lw	s11,44(sp)
	addi	sp,sp,96
	jr	ra
	.size	Calc_LinCorrCoef, .-Calc_LinCorrCoef
	.align	2
	.globl	Initialize
	.type	Initialize, @function
Initialize:
	addi	sp,sp,-48
	lui	a5,%hi(.LC0)
	sw	s9,4(sp)
	lui	s9,%hi(Seed)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	lw	s0,%lo(Seed)(s9)
	lw	s2,%lo(.LC0)(a5)
	lw	s3,%lo(.LC0+4)(a5)
	sw	s6,16(sp)
	sw	s7,12(sp)
	li	s6,8192
	li	s7,271650816
	sw	s1,36(sp)
	sw	s8,8(sp)
	sw	s10,0(sp)
	sw	ra,44(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	mv	s10,a0
	addi	s7,s7,1223
	addi	s6,s6,-97
	li	s1,0
	li	s8,100
.L216:
	slli	a5,s0,5
	add	a5,a5,s0
	slli	a5,a5,2
	add	a5,a5,s0
	addi	a5,a5,81
	mulh	s0,a5,s7
	srai	a4,a5,31
	addi	s10,s10,8
	srai	s0,s0,9
	sub	s0,s0,a4
	mul	s0,s0,s6
	sub	s0,a5,s0
	mv	a0,s0
	call	__floatsidf
	mv	a2,s2
	mv	a3,s3
	call	__divdf3
	mv	s4,a0
	mv	a0,s1
	mv	s5,a1
	call	__floatsidf
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	sw	a0,-8(s10)
	sw	a1,-4(s10)
	addi	s1,s1,1
	bne	s1,s8,.L216
	sw	s0,%lo(Seed)(s9)
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	lw	s6,16(sp)
	lw	s7,12(sp)
	lw	s8,8(sp)
	lw	s9,4(sp)
	lw	s10,0(sp)
	addi	sp,sp,48
	jr	ra
	.size	Initialize, .-Initialize
	.align	2
	.globl	RandomInteger
	.type	RandomInteger, @function
RandomInteger:
	lui	a3,%hi(Seed)
	lw	a4,%lo(Seed)(a3)
	li	a0,271650816
	addi	a0,a0,1223
	slli	a5,a4,5
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	addi	a5,a5,81
	mulh	a0,a5,a0
	srai	a2,a5,31
	li	a4,8192
	addi	a4,a4,-97
	srai	a0,a0,9
	sub	a0,a0,a2
	mul	a0,a0,a4
	sub	a0,a5,a0
	sw	a0,%lo(Seed)(a3)
	ret
	.size	RandomInteger, .-RandomInteger
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	lui	a5,%hi(.LC2)
	lui	a4,%hi(SumA)
	lw	a2,%lo(SumA)(a4)
	lw	a3,%lo(SumA+4)(a4)
	lw	a0,%lo(.LC2)(a5)
	lw	a1,%lo(.LC2+4)(a5)
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	call	__subdf3
	call	fabs
	lui	a5,%hi(.LC3)
	lw	s0,%lo(.LC3)(a5)
	lw	s1,%lo(.LC3+4)(a5)
	mv	a2,s0
	mv	a3,s1
	call	__ltdf2
	blt	a0,zero,.L221
.L223:
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.L221:
	lui	a4,%hi(SumB)
	lui	a5,%hi(.LC4)
	lw	a2,%lo(SumB)(a4)
	lw	a3,%lo(SumB+4)(a4)
	lw	a0,%lo(.LC4)(a5)
	lw	a1,%lo(.LC4+4)(a5)
	call	__subdf3
	call	fabs
	mv	a2,s0
	mv	a3,s1
	call	__ltdf2
	bge	a0,zero,.L223
	lui	a4,%hi(Coef)
	lui	a5,%hi(.LC5)
	lw	a2,%lo(Coef)(a4)
	lw	a3,%lo(Coef+4)(a4)
	lw	a0,%lo(.LC5)(a5)
	lw	a1,%lo(.LC5+4)(a5)
	call	__subdf3
	call	fabs
	mv	a2,s0
	mv	a3,s1
	call	__ltdf2
	lw	ra,12(sp)
	lw	s0,8(sp)
	lw	s1,4(sp)
	slti	a0,a0,0
	addi	sp,sp,16
	jr	ra
	.size	verify_benchmark, .-verify_benchmark
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
 #APP
# 15 "/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/config/riscv32/boards/ri5cyverilator/boardsupport.c" 1
	li a0, 0
# 0 "" 2
 #NO_APP
	li	a0,1
	call	benchmark_body.isra.0
	call	start_trigger
	call	benchmark
	sw	zero,12(sp)
	call	stop_trigger
	lw	a0,12(sp)
	call	verify_benchmark
	lw	ra,28(sp)
	xori	a0,a0,1
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.globl	Coef
	.globl	SumB
	.globl	SumA
	.globl	ArrayB
	.globl	ArrayA
	.globl	Seed
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1086299904
	.align	3
.LC1:
	.word	0
	.word	1079574528
	.align	3
.LC2:
	.word	-1578446906
	.word	1085507328
	.align	3
.LC3:
	.word	1749644930
	.word	1027352002
	.align	3
.LC4:
	.word	-700352914
	.word	1085506775
	.align	3
.LC5:
	.word	1717284165
	.word	1072693038
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	ArrayA, @object
	.size	ArrayA, 800
ArrayA:
	.zero	800
	.type	ArrayB, @object
	.size	ArrayB, 800
ArrayB:
	.zero	800
	.section	.sbss,"aw",@nobits
	.align	3
	.type	Coef, @object
	.size	Coef, 8
Coef:
	.zero	8
	.type	SumB, @object
	.size	SumB, 8
SumB:
	.zero	8
	.type	SumA, @object
	.size	SumA, 8
SumA:
	.zero	8
	.type	Seed, @object
	.size	Seed, 4
Seed:
	.zero	4
	.type	heap_requested, @object
	.size	heap_requested, 4
heap_requested:
	.zero	4
	.type	heap_end, @object
	.size	heap_end, 4
heap_end:
	.zero	4
	.type	heap_ptr, @object
	.size	heap_ptr, 4
heap_ptr:
	.zero	4
	.type	seed, @object
	.size	seed, 4
seed:
	.zero	4
	.globl	__ltdf2
	.globl	__muldf3
	.globl	__subdf3
	.globl	__adddf3
	.globl	__divdf3
	.globl	__floatsidf
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
