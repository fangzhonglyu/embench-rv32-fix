	.file	"nbody.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.type	bodies_energy.constprop.0, @function
bodies_energy.constprop.0:
	addi	sp,sp,-80
	sw	s1,68(sp)
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	lw	a2,40(s1)
	lw	a3,44(s1)
	sw	s6,48(sp)
	sw	s7,44(sp)
	lw	s6,32(s1)
	lw	s7,36(s1)
	mv	a0,a2
	mv	a1,a3
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	call	__muldf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	lw	s4,48(s1)
	lw	s5,52(s1)
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	lw	a2,56(s1)
	lw	a3,60(s1)
	lui	s0,%hi(.LC0)
	lui	s8,%hi(.LANCHOR0+320)
	call	__muldf3
	lw	a2,%lo(.LC0)(s0)
	lw	a3,%lo(.LC0+4)(s0)
	addi	s1,s1,64
	addi	s8,s8,%lo(.LANCHOR0+320)
	call	__muldf3
	li	a2,0
	li	a3,0
	call	__adddf3
	lw	a5,%lo(.LC0)(s0)
	lw	a6,%lo(.LC0+4)(s0)
	mv	s10,a0
	sw	a5,8(sp)
	sw	a6,12(sp)
	mv	s11,a1
	li	s9,1
.L4:
	mv	s0,s1
.L2:
	lw	a2,0(s0)
	lw	a3,4(s0)
	lw	a0,-64(s1)
	lw	a1,-60(s1)
	addi	s0,s0,64
	call	__subdf3
	mv	s4,a0
	mv	s5,a1
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	lw	a0,-56(s1)
	lw	a1,-52(s1)
	call	__subdf3
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	mv	s6,a0
	mv	s7,a1
	lw	a0,-48(s1)
	lw	a1,-44(s1)
	call	__subdf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	s4,a0
	mv	s5,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	mv	a2,s2
	mv	a3,s3
	mv	s4,a0
	mv	s5,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	call	sqrt
	lw	a2,-8(s0)
	lw	a3,-4(s0)
	mv	s2,a0
	mv	s3,a1
	lw	a0,-8(s1)
	lw	a1,-4(s1)
	call	__muldf3
	mv	a2,s2
	mv	a3,s3
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s11
	call	__subdf3
	mv	s10,a0
	mv	s11,a1
	bne	s8,s0,.L2
	lw	a2,32(s1)
	lw	a3,36(s1)
	lw	s4,40(s1)
	lw	s5,44(s1)
	mv	a0,a2
	mv	a1,a3
	call	__muldf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	lw	s6,48(s1)
	lw	s7,52(s1)
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	lw	a2,56(s1)
	lw	a3,60(s1)
	addi	s9,s9,1
	addi	s1,s1,64
	call	__muldf3
	lw	a2,8(sp)
	lw	a3,12(sp)
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s11
	call	__adddf3
	li	a5,5
	mv	s10,a0
	mv	s11,a1
	bne	s9,a5,.L4
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	lw	s9,36(sp)
	lw	s10,32(sp)
	lw	s11,28(sp)
	addi	sp,sp,80
	jr	ra
	.size	bodies_energy.constprop.0, .-bodies_energy.constprop.0
	.align	2
	.type	benchmark_body.isra.0, @function
benchmark_body.isra.0:
	addi	sp,sp,-96
	sw	ra,92(sp)
	ble	a0,zero,.L18
	lui	a5,%hi(.LC2)
	sw	s0,88(sp)
	sw	s1,84(sp)
	lw	s0,%lo(.LC2)(a5)
	lw	s1,%lo(.LC2+4)(a5)
	lui	a5,%hi(.LANCHOR0)
	sw	s10,48(sp)
	sw	s11,44(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	mv	s11,a0
	addi	s10,a5,%lo(.LANCHOR0)
	sw	zero,4(sp)
.L11:
	lw	a5,44(s10)
	lw	a3,36(s10)
	lw	a4,40(s10)
	lw	s8,56(s10)
	lw	s9,60(s10)
	lw	a2,32(s10)
	lw	a6,52(s10)
	sw	a3,12(sp)
	sw	a5,28(sp)
	mv	a3,a5
	lw	a5,48(s10)
	sw	a2,8(sp)
	mv	a0,s8
	mv	a2,a4
	mv	a1,s9
	sw	a6,20(sp)
	sw	a4,24(sp)
	sw	a5,16(sp)
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	lw	a4,24(sp)
	lw	a5,28(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	lw	s6,120(s10)
	lw	s7,124(s10)
	lw	a2,104(s10)
	lw	a3,108(s10)
	sw	a0,24(sp)
	sw	a1,28(sp)
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,24(sp)
	lw	a1,28(sp)
	lw	s4,184(s10)
	lw	s5,188(s10)
	call	__subdf3
	lw	a2,168(s10)
	lw	a3,172(s10)
	sw	a0,24(sp)
	sw	a1,28(sp)
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,24(sp)
	lw	a1,28(sp)
	lw	s2,248(s10)
	lw	s3,252(s10)
	call	__subdf3
	lw	a2,232(s10)
	lw	a3,236(s10)
	sw	a0,24(sp)
	sw	a1,28(sp)
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__subdf3
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	mv	a0,s8
	mv	a1,s9
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,16(sp)
	lw	a1,20(sp)
	call	__subdf3
	lw	a2,112(s10)
	lw	a3,116(s10)
	sw	a0,16(sp)
	sw	a1,20(sp)
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,16(sp)
	lw	a1,20(sp)
	call	__subdf3
	lw	a2,176(s10)
	lw	a3,180(s10)
	sw	a0,16(sp)
	sw	a1,20(sp)
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,16(sp)
	lw	a1,20(sp)
	call	__subdf3
	lw	a2,240(s10)
	sw	a0,16(sp)
	sw	a1,20(sp)
	lw	a3,244(s10)
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,16(sp)
	lw	a1,20(sp)
	call	__subdf3
	sw	a0,16(sp)
	sw	a1,20(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	mv	a2,s8
	mv	a3,s9
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s8,312(s10)
	lw	s9,316(s10)
	call	__subdf3
	lw	a2,96(s10)
	lw	a3,100(s10)
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
	lw	a2,160(s10)
	lw	a3,164(s10)
	mv	s6,a0
	mv	s7,a1
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s7
	call	__subdf3
	lw	a2,224(s10)
	lw	a3,228(s10)
	mv	s4,a0
	mv	s5,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__subdf3
	lw	a2,288(s10)
	lw	a3,292(s10)
	mv	s2,a0
	mv	s3,a1
	mv	a0,s8
	mv	a1,s9
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__subdf3
	lw	a2,296(s10)
	lw	a3,300(s10)
	mv	a4,a0
	mv	a5,a1
	sw	a4,32(s10)
	sw	a5,36(s10)
	mv	a0,s8
	mv	a1,s9
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	s4,100
	li	s3,0
	call	__subdf3
	lw	a2,304(s10)
	lw	a3,308(s10)
	mv	a4,a0
	mv	a5,a1
	sw	a4,40(s10)
	sw	a5,44(s10)
	mv	a0,s8
	mv	a1,s9
	call	__muldf3
	mv	a2,s0
	mv	a3,s1
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,16(sp)
	lw	a1,20(sp)
	li	s2,0
	call	__subdf3
	sw	a0,48(s10)
	sw	a1,52(s10)
.L13:
	call	bodies_energy.constprop.0
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	call	__adddf3
	addi	s4,s4,-1
	mv	s3,a0
	mv	s2,a1
	bne	s4,zero,.L13
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
	bne	a5,s11,.L11
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	s0,88(sp)
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
	call	fabs
	lw	ra,92(sp)
	addi	sp,sp,96
	jr	ra
.L18:
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	mv	a0,a4
	mv	a1,a5
	call	fabs
	lw	ra,92(sp)
	addi	sp,sp,96
	jr	ra
	.size	benchmark_body.isra.0, .-benchmark_body.isra.0
	.align	2
	.type	benchmark_body.constprop.0, @function
benchmark_body.constprop.0:
	addi	sp,sp,-80
	sw	s8,40(sp)
	lui	s8,%hi(.LANCHOR0)
	addi	s8,s8,%lo(.LANCHOR0)
	lw	a5,44(s8)
	lw	a4,40(s8)
	sw	s0,72(sp)
	sw	s1,68(sp)
	lw	s0,56(s8)
	lw	s1,60(s8)
	lw	a6,52(s8)
	mv	a3,a5
	sw	a5,12(sp)
	lw	a5,48(s8)
	mv	a2,a4
	mv	a0,s0
	mv	a1,s1
	sw	ra,76(sp)
	sw	a6,4(sp)
	sw	a4,8(sp)
	sw	a5,0(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	lw	s2,248(s8)
	lw	s3,252(s8)
	sw	s4,56(sp)
	sw	s5,52(sp)
	lw	s4,184(s8)
	lw	s5,188(s8)
	sw	s6,48(sp)
	sw	s7,44(sp)
	lw	s6,120(s8)
	lw	s7,124(s8)
	sw	s9,36(sp)
	sw	s10,32(sp)
	lui	s9,%hi(.LC2)
	lw	s10,32(s8)
	sw	s11,28(sp)
	lw	s11,36(s8)
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	lw	a4,8(sp)
	lw	a5,12(sp)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	lw	a2,104(s8)
	lw	a3,108(s8)
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
	lw	a2,168(s8)
	lw	a3,172(s8)
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
	lw	a2,232(s8)
	lw	a3,236(s8)
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	a0,s0
	mv	a1,s1
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__subdf3
	lw	a2,112(s8)
	lw	a3,116(s8)
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__subdf3
	lw	a2,176(s8)
	lw	a3,180(s8)
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__subdf3
	lw	a2,240(s8)
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a3,244(s8)
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__subdf3
	mv	a2,s0
	mv	a3,s1
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a0,s10
	mv	a1,s11
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	lw	s0,312(s8)
	lw	s1,316(s8)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s11
	call	__subdf3
	lw	a2,96(s8)
	lw	a3,100(s8)
	mv	s10,a0
	mv	s11,a1
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s11
	call	__subdf3
	lw	a2,160(s8)
	lw	a3,164(s8)
	mv	s6,a0
	mv	s7,a1
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s6
	mv	a1,s7
	call	__subdf3
	lw	a3,228(s8)
	lw	a2,224(s8)
	mv	s4,a0
	mv	s5,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__subdf3
	lw	a2,288(s8)
	lw	a3,292(s8)
	mv	s2,a0
	mv	s3,a1
	mv	a0,s0
	mv	a1,s1
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__subdf3
	lw	a2,296(s8)
	lw	a3,300(s8)
	mv	a4,a0
	mv	a5,a1
	sw	a4,32(s8)
	sw	a5,36(s8)
	mv	a0,s0
	mv	a1,s1
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	li	s2,100
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
	lw	a2,304(s8)
	lw	a3,308(s8)
	mv	a4,a0
	mv	a5,a1
	sw	a4,40(s8)
	sw	a5,44(s8)
	mv	a0,s0
	mv	a1,s1
	call	__muldf3
	lw	a2,%lo(.LC2)(s9)
	lw	a3,%lo(.LC2+4)(s9)
	li	s1,0
	li	s0,0
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__subdf3
	sw	a0,48(s8)
	sw	a1,52(s8)
.L20:
	call	bodies_energy.constprop.0
	mv	a2,a0
	mv	a3,a1
	mv	a0,s1
	mv	a1,s0
	call	__adddf3
	addi	s2,s2,-1
	mv	s1,a0
	mv	s0,a1
	bne	s2,zero,.L20
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	call	__adddf3
	call	fabs
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__ltdf2
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	lw	s9,36(sp)
	lw	s10,32(sp)
	lw	s11,28(sp)
	slti	a0,a0,0
	addi	sp,sp,80
	jr	ra
	.size	benchmark_body.constprop.0, .-benchmark_body.constprop.0
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	beq	a2,zero,.L37
	addi	a5,a2,-1
	li	a4,5
	andi	a1,a1,0xff
	bleu	a5,a4,.L33
	neg	a4,a0
	andi	a5,a4,3
	li	a6,0
	beq	a5,zero,.L27
	sb	a1,0(a0)
	andi	a4,a4,2
	li	a6,1
	beq	a4,zero,.L27
	sb	a1,1(a0)
	li	a4,3
	li	a6,2
	bne	a5,a4,.L27
	sb	a1,2(a0)
	mv	a6,a5
.L27:
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
.L29:
	sw	a4,0(a5)
	addi	a5,a5,4
	bne	a5,a3,.L29
	add	a5,a6,a7
	beq	t1,a7,.L37
.L26:
	add	a4,a0,a5
	sb	a1,0(a4)
	addi	a4,a5,1
	bleu	a2,a4,.L37
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,2
	bleu	a2,a4,.L37
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,3
	bleu	a2,a4,.L37
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,4
	bleu	a2,a4,.L37
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a5,a5,5
	bleu	a2,a5,.L37
	add	a5,a0,a5
	sb	a1,0(a5)
.L37:
	ret
.L33:
	li	a5,0
	j	.L26
	.size	memset, .-memset
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	beq	a2,zero,.L42
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L43
	or	a3,a0,a1
	andi	a3,a3,3
	mv	a4,a0
	mv	a5,a1
	bne	a3,zero,.L43
	sub	a3,a0,a1
	addi	a3,a3,-1
	sltiu	a3,a3,3
	bne	a3,zero,.L43
	andi	a7,a2,-4
	add	a6,a1,a7
.L44:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L44
	beq	a2,a7,.L42
	lbu	a3,0(a6)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a2,a5,.L42
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a2,a7,.L42
	add	a1,a1,a7
	lbu	a5,0(a1)
	add	a7,a0,a7
	sb	a5,0(a7)
	ret
.L43:
	add	a2,a1,a2
	mv	a5,a0
.L46:
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a1,a2,.L46
.L42:
	ret
	.size	memcpy, .-memcpy
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	beq	a2,zero,.L63
	add	a2,a0,a2
	j	.L62
.L61:
	beq	a0,a2,.L63
.L62:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a5,a4,.L61
	sub	a0,a5,a4
	ret
.L63:
	li	a0,0
	ret
	.size	memcmp, .-memcmp
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	bgeu	a0,a1,.L66
	beq	a2,zero,.L67
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L68
	or	a3,a1,a0
	andi	a3,a3,3
	mv	a4,a0
	mv	a5,a1
	bne	a3,zero,.L68
	sub	a3,a0,a1
	addi	a3,a3,-1
	sltiu	a3,a3,3
	bne	a3,zero,.L68
	andi	a7,a2,-4
	add	a6,a1,a7
.L69:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L69
	beq	a2,a7,.L67
	lbu	a3,0(a6)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a2,a5,.L67
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a2,a7,.L67
	add	a1,a1,a7
	lbu	a5,0(a1)
	add	a7,a0,a7
	sb	a5,0(a7)
	ret
.L66:
	bgtu	a0,a1,.L89
.L67:
	ret
.L89:
	beq	a2,zero,.L67
	addi	a2,a2,-1
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
	j	.L89
.L68:
	add	a2,a1,a2
	mv	a5,a0
.L71:
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a1,a2,.L71
	ret
	.size	memmove, .-memmove
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	lbu	a5,0(a0)
	beq	a5,zero,.L90
	li	a5,0
.L92:
	addi	a5,a5,1
	add	a4,a0,a5
	lbu	a4,0(a4)
	bne	a4,zero,.L92
.L90:
	mv	a0,a5
	ret
	.size	strlen, .-strlen
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	lbu	a5,0(a0)
	beq	a5,zero,.L96
	andi	a4,a1,0xff
.L98:
	beq	a4,a5,.L95
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L98
.L96:
	seqz	a1,a1
	neg	a1,a1
	and	a0,a0,a1
.L95:
	ret
	.size	strchr, .-strchr
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
	beq	a0,zero,.L111
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a1,%lo(heap_requested)(a3)
	add	a4,a0,a5
	andi	a6,a4,3
	add	a5,a5,a1
	bne	a6,zero,.L115
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a1,a4,.L111
.L116:
	sw	a4,%lo(heap_ptr)(a2)
	ret
.L115:
	li	a1,4
	sub	a1,a1,a6
	add	a5,a5,a1
	add	a4,a4,a1
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a1,a4,.L116
.L111:
	li	a0,0
	ret
	.size	malloc_beebs, .-malloc_beebs
	.align	2
	.globl	calloc_beebs
	.type	calloc_beebs, @function
calloc_beebs:
	mul	a1,a0,a1
	beq	a1,zero,.L118
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a0,a1
	andi	a6,a4,3
	add	a5,a1,a5
	bne	a6,zero,.L143
.L119:
	lui	a6,%hi(heap_end)
	lw	a6,%lo(heap_end)(a6)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a6,a4,.L118
	sw	a4,%lo(heap_ptr)(a2)
	beq	a0,zero,.L118
	addi	a5,a1,-1
	li	a4,5
	bleu	a5,a4,.L127
	neg	a4,a0
	andi	a5,a4,3
	li	a3,0
	beq	a5,zero,.L121
	sb	zero,0(a0)
	andi	a4,a4,2
	li	a3,1
	beq	a4,zero,.L121
	sb	zero,1(a0)
	li	a4,3
	li	a3,2
	bne	a5,a4,.L121
	sb	zero,2(a0)
	mv	a3,a5
.L121:
	sub	a6,a1,a5
	andi	a2,a6,-4
	add	a5,a0,a5
	add	a4,a5,a2
.L123:
	sw	zero,0(a5)
	addi	a5,a5,4
	bne	a5,a4,.L123
	add	a5,a3,a2
	beq	a6,a2,.L117
.L120:
	add	a4,a0,a5
	sb	zero,0(a4)
	addi	a4,a5,1
	bleu	a1,a4,.L117
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,2
	bleu	a1,a4,.L117
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,3
	bleu	a1,a4,.L117
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,4
	bleu	a1,a4,.L117
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a5,a5,5
	bleu	a1,a5,.L117
	add	a5,a0,a5
	sb	zero,0(a5)
	ret
.L118:
	li	a0,0
.L117:
	ret
.L143:
	li	a7,4
	sub	a6,a7,a6
	add	a4,a4,a6
	add	a5,a5,a6
	j	.L119
.L127:
	li	a5,0
	j	.L120
	.size	calloc_beebs, .-calloc_beebs
	.align	2
	.globl	realloc_beebs
	.type	realloc_beebs, @function
realloc_beebs:
	beq	a0,zero,.L145
	beq	a1,zero,.L145
	lui	a6,%hi(heap_ptr)
	lw	a2,%lo(heap_ptr)(a6)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a2,a1
	andi	a7,a4,3
	add	a5,a1,a5
	bne	a7,zero,.L170
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a7,a4,.L145
.L171:
	sw	a4,%lo(heap_ptr)(a6)
	beq	a2,zero,.L145
	addi	a5,a1,-1
	li	a4,6
	bleu	a5,a4,.L155
	or	a3,a0,a2
	andi	a3,a3,3
	mv	a4,a2
	mv	a5,a0
	bne	a3,zero,.L155
	addi	a3,a2,-1
	sub	a3,a3,a0
	sltiu	a3,a3,3
	bne	a3,zero,.L155
	andi	a7,a1,-4
	add	a6,a0,a7
.L148:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L148
	beq	a1,a7,.L144
	lbu	a3,0(a6)
	add	a4,a2,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a1,a5,.L144
	add	a4,a0,a5
	lbu	a4,0(a4)
	add	a5,a2,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a1,a7,.L144
	add	a0,a0,a7
	lbu	a5,0(a0)
	add	a7,a2,a7
	sb	a5,0(a7)
.L144:
	mv	a0,a2
	ret
.L170:
	li	t1,4
	sub	a7,t1,a7
	add	a5,a5,a7
	add	a4,a4,a7
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a7,a4,.L171
.L145:
	li	a2,0
	mv	a0,a2
	ret
.L155:
	li	a5,0
.L152:
	add	a4,a0,a5
	lbu	a3,0(a4)
	add	a4,a2,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	bgtu	a1,a5,.L152
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
	.globl	offset_momentum
	.type	offset_momentum, @function
offset_momentum:
	beq	a1,zero,.L184
	addi	sp,sp,-80
	lui	a5,%hi(.LC2)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	lw	s6,%lo(.LC2)(a5)
	lw	s7,%lo(.LC2+4)(a5)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s11,28(sp)
	slli	a5,a1,6
	lw	s9,32(a0)
	lw	s8,36(a0)
	lw	s3,40(a0)
	lw	s2,44(a0)
	lw	s11,48(a0)
	lw	s1,52(a0)
	add	a5,a0,a5
	sw	s0,72(sp)
	sw	s10,32(sp)
	sw	ra,76(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	mv	s10,a0
	sw	a5,12(sp)
	mv	s0,a0
.L178:
	lw	s4,56(s0)
	lw	s5,60(s0)
	lw	a2,32(s0)
	lw	a3,36(s0)
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s9
	mv	a1,s8
	call	__subdf3
	sw	a0,32(s10)
	sw	a1,36(s10)
	lw	a2,40(s0)
	lw	a3,44(s0)
	mv	s9,a0
	mv	s8,a1
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s3
	mv	a1,s2
	call	__subdf3
	sw	a0,40(s10)
	sw	a1,44(s10)
	lw	a2,48(s0)
	lw	a3,52(s0)
	mv	s3,a0
	mv	s2,a1
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s11
	mv	a1,s1
	call	__subdf3
	lw	a5,12(sp)
	addi	s0,s0,64
	sw	a0,48(s10)
	sw	a1,52(s10)
	mv	s11,a0
	mv	s1,a1
	bne	a5,s0,.L178
	lw	ra,76(sp)
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	lw	s9,36(sp)
	lw	s10,32(sp)
	lw	s11,28(sp)
	addi	sp,sp,80
	jr	ra
.L184:
	ret
	.size	offset_momentum, .-offset_momentum
	.align	2
	.globl	bodies_energy
	.type	bodies_energy, @function
bodies_energy:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	beq	a1,zero,.L192
	lw	a3,44(a0)
	lw	a2,40(a0)
	sw	s6,48(sp)
	sw	s7,44(sp)
	lw	s6,32(a0)
	lw	s7,36(a0)
	sw	s1,68(sp)
	sw	s4,56(sp)
	mv	s1,a0
	lw	s4,48(a0)
	sw	s5,52(sp)
	sw	s8,40(sp)
	lw	s5,52(a0)
	mv	s8,a1
	mv	a0,a2
	mv	a1,a3
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	call	__muldf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	lw	a2,56(s1)
	lw	a3,60(s1)
	lui	s0,%hi(.LC0)
	call	__muldf3
	lw	a2,%lo(.LC0)(s0)
	lw	a3,%lo(.LC0+4)(s0)
	call	__muldf3
	li	a3,0
	li	a2,0
	call	__adddf3
	li	a3,1
	mv	s11,a0
	mv	s10,a1
	beq	s8,a3,.L196
	lw	a5,%lo(.LC0)(s0)
	lw	a6,%lo(.LC0+4)(s0)
	sw	s9,36(sp)
	sw	a5,8(sp)
	sw	a6,12(sp)
	addi	s1,s1,64
	sw	a3,4(sp)
.L190:
	lw	s9,4(sp)
	mv	s0,s1
.L191:
	lw	a2,0(s0)
	lw	a3,4(s0)
	lw	a0,-64(s1)
	lw	a1,-60(s1)
	addi	s9,s9,1
	addi	s0,s0,64
	call	__subdf3
	mv	s4,a0
	mv	s5,a1
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	lw	a0,-56(s1)
	lw	a1,-52(s1)
	call	__subdf3
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	mv	s6,a0
	mv	s7,a1
	lw	a0,-48(s1)
	lw	a1,-44(s1)
	call	__subdf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	mv	s4,a0
	mv	s5,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	mv	a2,s2
	mv	a3,s3
	mv	s4,a0
	mv	s5,a1
	mv	a0,s2
	mv	a1,s3
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s5
	call	__adddf3
	call	sqrt
	lw	a2,-8(s0)
	lw	a3,-4(s0)
	mv	s2,a0
	mv	s3,a1
	lw	a0,-8(s1)
	lw	a1,-4(s1)
	call	__muldf3
	mv	a2,s2
	mv	a3,s3
	call	__divdf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s11
	mv	a1,s10
	call	__subdf3
	mv	s11,a0
	mv	s10,a1
	bgtu	s8,s9,.L191
	lw	a2,32(s1)
	lw	a3,36(s1)
	lw	s4,40(s1)
	lw	s5,44(s1)
	mv	a0,a2
	mv	a1,a3
	call	__muldf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s4
	mv	a3,s5
	mv	a0,s4
	mv	a1,s5
	call	__muldf3
	lw	s6,48(s1)
	lw	s7,52(s1)
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	mv	s2,a0
	mv	s3,a1
	mv	a2,s6
	mv	a3,s7
	mv	a0,s6
	mv	a1,s7
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s2
	mv	a1,s3
	call	__adddf3
	lw	a2,56(s1)
	lw	a3,60(s1)
	addi	s1,s1,64
	call	__muldf3
	lw	a2,8(sp)
	lw	a3,12(sp)
	call	__muldf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s11
	mv	a1,s10
	call	__adddf3
	lw	a5,4(sp)
	mv	s11,a0
	mv	s10,a1
	addi	a5,a5,1
	sw	a5,4(sp)
	bne	s8,a5,.L190
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	lw	s9,36(sp)
.L187:
	lw	ra,76(sp)
	mv	a0,s11
	mv	a1,s10
	lw	s11,28(sp)
	lw	s10,32(sp)
	addi	sp,sp,80
	jr	ra
.L192:
	lw	ra,76(sp)
	li	s11,0
	li	s10,0
	mv	a0,s11
	mv	a1,s10
	lw	s11,28(sp)
	lw	s10,32(sp)
	addi	sp,sp,80
	jr	ra
.L196:
	lw	s0,72(sp)
	lw	s1,68(sp)
	lw	s2,64(sp)
	lw	s3,60(sp)
	lw	s4,56(sp)
	lw	s5,52(sp)
	lw	s6,48(sp)
	lw	s7,44(sp)
	lw	s8,40(sp)
	j	.L187
	.size	bodies_energy, .-bodies_energy
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
	call	benchmark_body.constprop.0
	lw	ra,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	benchmark, .-benchmark
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	beq	a0,zero,.L219
	addi	sp,sp,-32
	lui	a5,%hi(.LC3)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s6,0(sp)
	lw	s2,%lo(.LC3)(a5)
	lui	s6,%hi(.LANCHOR0)
	lw	s3,%lo(.LC3+4)(a5)
	addi	s6,s6,%lo(.LANCHOR0)
	sw	s5,4(sp)
	lui	s5,%hi(.LANCHOR1)
	sw	s4,8(sp)
	sw	ra,28(sp)
	addi	s4,s6,24
	sw	s0,24(sp)
	sw	s1,20(sp)
	addi	s6,s6,344
	addi	s5,s5,%lo(.LANCHOR1)
.L204:
	addi	s0,s4,-24
	mv	s1,s5
.L207:
	lw	a2,0(s1)
	lw	a3,4(s1)
	lw	a0,0(s0)
	lw	a1,4(s0)
	call	__subdf3
	call	fabs
	mv	a2,s2
	mv	a3,s3
	call	__ltdf2
	bge	a0,zero,.L203
	lw	a2,32(s1)
	lw	a3,36(s1)
	lw	a0,32(s0)
	lw	a1,36(s0)
	addi	s0,s0,8
	call	__subdf3
	call	fabs
	mv	a2,s2
	mv	a3,s3
	call	__ltdf2
	bge	a0,zero,.L203
	addi	s1,s1,8
	bne	s0,s4,.L207
	lw	a2,56(s5)
	lw	a3,60(s5)
	lw	a0,32(s0)
	lw	a1,36(s0)
	call	__subdf3
	call	fabs
	mv	a2,s2
	mv	a3,s3
	call	__ltdf2
	bge	a0,zero,.L203
	addi	s4,s0,64
	addi	s5,s5,64
	bne	s4,s6,.L204
	li	a0,1
.L202:
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s1,20(sp)
	lw	s2,16(sp)
	lw	s3,12(sp)
	lw	s4,8(sp)
	lw	s5,4(sp)
	lw	s6,0(sp)
	addi	sp,sp,32
	jr	ra
.L203:
	li	a0,0
	j	.L202
.L219:
	li	a0,0
	ret
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
	call	benchmark_body.constprop.0
	call	start_trigger
	call	benchmark
	sw	a0,12(sp)
	call	stop_trigger
	lw	a0,12(sp)
	call	verify_benchmark
	lw	ra,28(sp)
	xori	a0,a0,1
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1071644672
	.align	3
.LC1:
	.word	-27201660
	.word	1076947026
	.align	3
.LC2:
	.word	-910277154
	.word	1078181180
	.align	3
.LC3:
	.word	1749644930
	.word	1027352002
	.section	.rodata
	.align	3
	.set	.LANCHOR1,. + 0
	.type	expected.0, @object
	.size	expected.0, 320
expected.0:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.zero	8
	.word	-1478437133
	.word	-1086756887
	.word	-28276229
	.word	-1083517716
	.word	520850034
	.word	1056512307
	.word	-910277154
	.word	1078181180
	.word	876402988
	.word	1075010976
	.word	-1071654020
	.word	-1074622293
	.word	1814424560
	.word	-1078294791
	.zero	8
	.word	-1684812612
	.word	1071867654
	.word	-176319333
	.word	1074167538
	.word	-1705375979
	.word	-1080438057
	.word	-643091496
	.word	1067666581
	.word	-1020081561
	.word	1075883981
	.word	836633008
	.word	1074823115
	.word	-504674692
	.word	-1076243629
	.zero	8
	.word	-1199074238
	.word	-1074779103
	.word	-1088450797
	.word	1073559017
	.word	1594958772
	.word	1065434184
	.word	218613303
	.word	1065819465
	.word	-827860529
	.word	1076480490
	.word	-702126466
	.word	-1070712600
	.word	-1104839264
	.word	-1077111465
	.zero	8
	.word	-1450107921
	.word	1072780060
	.word	1045740485
	.word	1072417919
	.word	-84787588
	.word	-1081725077
	.word	-1661722957
	.word	1063009746
	.word	-1459267798
	.word	1076806247
	.word	868786720
	.word	-1069946024
	.word	-1817451200
	.word	1070002675
	.zero	8
	.word	374979658
	.word	1072649398
	.word	834993059
	.word	1071843270
	.word	1484154358
	.word	-1079915640
	.word	1394055596
	.word	1063299315
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	solar_bodies, @object
	.size	solar_bodies, 320
solar_bodies:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.zero	8
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-910277154
	.word	1078181180
	.word	876402988
	.word	1075010976
	.word	-1071654020
	.word	-1074622293
	.word	1814424560
	.word	-1078294791
	.zero	8
	.word	-1684812612
	.word	1071867654
	.word	-176319333
	.word	1074167538
	.word	-1705375979
	.word	-1080438057
	.word	-643091496
	.word	1067666581
	.word	-1020081561
	.word	1075883981
	.word	836633008
	.word	1074823115
	.word	-504674692
	.word	-1076243629
	.zero	8
	.word	-1199074238
	.word	-1074779103
	.word	-1088450797
	.word	1073559017
	.word	1594958772
	.word	1065434184
	.word	218613303
	.word	1065819465
	.word	-827860529
	.word	1076480490
	.word	-702126466
	.word	-1070712600
	.word	-1104839264
	.word	-1077111465
	.zero	8
	.word	-1450107921
	.word	1072780060
	.word	1045740485
	.word	1072417919
	.word	-84787588
	.word	-1081725077
	.word	-1661722957
	.word	1063009746
	.word	-1459267798
	.word	1076806247
	.word	868786720
	.word	-1069946024
	.word	-1817451200
	.word	1070002675
	.zero	8
	.word	374979658
	.word	1072649398
	.word	834993059
	.word	1071843270
	.word	1484154358
	.word	-1079915640
	.word	1394055596
	.word	1063299315
	.section	.sbss,"aw",@nobits
	.align	2
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
	.globl	__divdf3
	.globl	__subdf3
	.globl	__adddf3
	.globl	__muldf3
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
