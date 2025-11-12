	.file	"libst.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	Seed
	.section	.sbss,"aw",@nobits
	.align	2
	.type	Seed, @object
	.size	Seed, 4
Seed:
	.zero	4
	.globl	ArrayA
	.bss
	.align	3
	.type	ArrayA, @object
	.size	ArrayA, 800
ArrayA:
	.zero	800
	.globl	ArrayB
	.align	3
	.type	ArrayB, @object
	.size	ArrayB, 800
ArrayB:
	.zero	800
	.globl	SumA
	.section	.sbss
	.align	3
	.type	SumA, @object
	.size	SumA, 8
SumA:
	.zero	8
	.globl	SumB
	.align	3
	.type	SumB, @object
	.size	SumB, 8
SumB:
	.zero	8
	.globl	Coef
	.align	3
	.type	Coef, @object
	.size	Coef, 8
Coef:
	.zero	8
	.text
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
	li	a0,13
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
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	sw	a0,-84(s0)
	sw	zero,-20(s0)
	j	.L7
.L8:
	call	InitSeed
	lui	a5,%hi(ArrayA)
	addi	a0,a5,%lo(ArrayA)
	call	Initialize
	addi	a5,s0,-32
	mv	a2,a5
	lui	a5,%hi(SumA)
	addi	a1,a5,%lo(SumA)
	lui	a5,%hi(ArrayA)
	addi	a0,a5,%lo(ArrayA)
	call	Calc_Sum_Mean
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	addi	a4,s0,-64
	addi	a5,s0,-48
	mv	a3,a5
	mv	a2,a1
	mv	a1,a0
	lui	a5,%hi(ArrayA)
	addi	a0,a5,%lo(ArrayA)
	call	Calc_Var_Stddev
	lui	a5,%hi(ArrayB)
	addi	a0,a5,%lo(ArrayB)
	call	Initialize
	addi	a5,s0,-40
	mv	a2,a5
	lui	a5,%hi(SumB)
	addi	a1,a5,%lo(SumB)
	lui	a5,%hi(ArrayB)
	addi	a0,a5,%lo(ArrayB)
	call	Calc_Sum_Mean
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	addi	a4,s0,-72
	addi	a5,s0,-56
	mv	a3,a5
	mv	a2,a1
	mv	a1,a0
	lui	a5,%hi(ArrayB)
	addi	a0,a5,%lo(ArrayB)
	call	Calc_Var_Stddev
	lw	a2,-32(s0)
	lw	a3,-28(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	lui	a1,%hi(ArrayB)
	addi	a1,a1,%lo(ArrayB)
	lui	a0,%hi(ArrayA)
	addi	a0,a0,%lo(ArrayA)
	call	Calc_LinCorrCoef
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a4,-20(s0)
	lw	a5,-84(s0)
	blt	a4,a5,.L8
	li	a5,0
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jr	ra
	.size	benchmark_body, .-benchmark_body
	.align	2
	.globl	InitSeed
	.type	InitSeed, @function
InitSeed:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	lui	a5,%hi(Seed)
	sw	zero,%lo(Seed)(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	InitSeed, .-InitSeed
	.align	2
	.globl	Calc_Sum_Mean
	.type	Calc_Sum_Mean, @function
Calc_Sum_Mean:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	sw	zero,0(a5)
	sw	zero,4(a5)
	sw	zero,-20(s0)
	j	.L12
.L13:
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-20(s0)
	slli	a3,a3,3
	lw	a2,-36(s0)
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-40(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L13
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	lui	a3,%hi(.LC0)
	lw	a2,%lo(.LC0)(a3)
	lw	a3,%lo(.LC0+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-44(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	Calc_Sum_Mean, .-Calc_Sum_Mean
	.align	2
	.globl	Square
	.type	Square, @function
Square:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	Square, .-Square
	.align	2
	.globl	Calc_Var_Stddev
	.type	Calc_Var_Stddev, @function
Calc_Var_Stddev:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-48(s0)
	sw	a2,-44(s0)
	sw	a3,-40(s0)
	sw	a4,-52(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-20(s0)
	j	.L17
.L18:
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	Square
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L17:
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L18
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-40(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,4(a5)
	mv	a0,a4
	mv	a1,a5
	call	sqrt
	mv	a4,a0
	mv	a5,a1
	lw	a3,-52(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	Calc_Var_Stddev, .-Calc_Var_Stddev
	.align	2
	.globl	Calc_LinCorrCoef
	.type	Calc_LinCorrCoef, @function
Calc_LinCorrCoef:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	addi	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-20(s0)
	j	.L20
.L21:
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-64(s0)
	lw	a3,-60(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	mv	s3,a5
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-72(s0)
	lw	a3,-68(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-64(s0)
	lw	a3,-60(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	Square
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,3
	lw	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-72(s0)
	lw	a3,-68(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	Square
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L21
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	sqrt
	mv	s2,a0
	mv	s3,a1
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	sqrt
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-32(s0)
	lw	a1,-28(s0)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(Coef)
	sw	a4,%lo(Coef)(a3)
	sw	a5,%lo(Coef+4)(a3)
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	Calc_LinCorrCoef, .-Calc_LinCorrCoef
	.align	2
	.globl	Initialize
	.type	Initialize, @function
Initialize:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	li	s1,0
	j	.L23
.L24:
	mv	a0,s1
	call	__floatsidf
	mv	s2,a0
	mv	s3,a1
	call	RandomInteger
	mv	a5,a0
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC1)
	lw	a2,%lo(.LC1)(a3)
	lw	a3,%lo(.LC1+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a5,s1
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	s4,a4,a5
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s4)
	sw	a5,4(s4)
	addi	s1,s1,1
.L23:
	li	a5,99
	ble	s1,a5,.L24
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	Initialize, .-Initialize
	.align	2
	.globl	RandomInteger
	.type	RandomInteger, @function
RandomInteger:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	lui	a5,%hi(Seed)
	lw	a4,%lo(Seed)(a5)
	mv	a5,a4
	slli	a5,a5,5
	add	a5,a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	addi	a4,a5,81
	li	a5,271650816
	addi	a5,a5,1223
	mulh	a5,a4,a5
	srai	a3,a5,9
	srai	a5,a4,31
	sub	a5,a3,a5
	li	a3,8192
	addi	a3,a3,-97
	mul	a5,a5,a3
	sub	a5,a4,a5
	lui	a4,%hi(Seed)
	sw	a5,%lo(Seed)(a4)
	lui	a5,%hi(Seed)
	lw	a5,%lo(Seed)(a5)
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	RandomInteger, .-RandomInteger
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	sw	s4,60(sp)
	sw	s5,56(sp)
	sw	s6,52(sp)
	sw	s7,48(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	lui	a5,%hi(.LC2)
	lw	a4,%lo(.LC2)(a5)
	lw	a5,%lo(.LC2+4)(a5)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lui	a5,%hi(.LC3)
	lw	a4,%lo(.LC3)(a5)
	lw	a5,%lo(.LC3+4)(a5)
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lui	a5,%hi(.LC4)
	lw	a4,%lo(.LC4)(a5)
	lw	a5,%lo(.LC4+4)(a5)
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lui	a5,%hi(SumA)
	lw	a4,%lo(SumA)(a5)
	lw	a5,%lo(SumA+4)(a5)
	mv	a2,a4
	mv	a3,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	s6,a4
	li	a3,-2147483648
	addi	a3,a3,-1
	and	s7,a5,a3
	lui	a5,%hi(.LC5)
	lw	a2,%lo(.LC5)(a5)
	lw	a3,%lo(.LC5+4)(a5)
	mv	a0,s6
	mv	a1,s7
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L28
	lui	a5,%hi(SumB)
	lw	a4,%lo(SumB)(a5)
	lw	a5,%lo(SumB+4)(a5)
	mv	a2,a4
	mv	a3,a5
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	s4,a4
	li	a3,-2147483648
	addi	a3,a3,-1
	and	s5,a5,a3
	lui	a5,%hi(.LC5)
	lw	a2,%lo(.LC5)(a5)
	lw	a3,%lo(.LC5+4)(a5)
	mv	a0,s4
	mv	a1,s5
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L28
	lui	a5,%hi(Coef)
	lw	a4,%lo(Coef)(a5)
	lw	a5,%lo(Coef+4)(a5)
	mv	a2,a4
	mv	a3,a5
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	s2,a4
	li	a3,-2147483648
	addi	a3,a3,-1
	and	s3,a5,a3
	lui	a5,%hi(.LC5)
	lw	a2,%lo(.LC5)(a5)
	lw	a3,%lo(.LC5+4)(a5)
	mv	a0,s2
	mv	a1,s3
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L28
	li	a5,1
	j	.L33
.L28:
	li	a5,0
.L33:
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s2,68(sp)
	lw	s3,64(sp)
	lw	s4,60(sp)
	lw	s5,56(sp)
	lw	s6,52(sp)
	lw	s7,48(sp)
	addi	sp,sp,80
	jr	ra
	.size	verify_benchmark, .-verify_benchmark
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1079574528
	.align	3
.LC1:
	.word	0
	.word	1086299904
	.align	3
.LC2:
	.word	-1578446906
	.word	1085507328
	.align	3
.LC3:
	.word	-700352914
	.word	1085506775
	.align	3
.LC4:
	.word	1717284165
	.word	1072693038
	.align	3
.LC5:
	.word	1749644930
	.word	1027352002
	.globl	__ltdf2
	.globl	__floatsidf
	.globl	__subdf3
	.globl	__muldf3
	.globl	__divdf3
	.globl	__adddf3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
