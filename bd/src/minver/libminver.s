	.file	"libminver.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.type	minver.part.0, @function
minver.part.0:
	addi	sp,sp,-2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	s2,2016(sp)
	sw	s3,2012(sp)
	sw	s4,2008(sp)
	sw	s5,2004(sp)
	sw	s6,2000(sp)
	sw	s7,1996(sp)
	sw	s8,1992(sp)
	sw	s9,1988(sp)
	sw	s10,1984(sp)
	addi	sp,sp,-64
	ble	a0,zero,.L63
	sw	s11,2044(sp)
	addi	s11,sp,32
	sw	s11,12(sp)
	mv	a4,s11
	li	a5,0
.L3:
	sw	a5,0(a4)
	addi	a5,a5,1
	addi	a4,a4,4
	bne	a5,a0,.L3
	lui	a5,%hi(.LC0)
	lw	a5,%lo(.LC0)(a5)
	lui	s4,%hi(.LANCHOR0)
	addi	s4,s4,%lo(.LANCHOR0)
	sw	a1,28(sp)
	mv	s5,a0
	sw	a5,20(sp)
	mv	s7,s4
	mv	s2,s4
	mv	s8,s4
	mv	s10,s11
	mv	s0,zero
	li	s6,0
	li	s1,0
.L4:
	ble	s5,s1,.L53
	lw	s0,0(s7)
	mv	a1,zero
	mv	a0,s0
	call	__gesf2
	bge	a0,zero,.L5
	li	a5,-2147483648
	xor	s0,a5,s0
.L5:
	mv	a1,zero
	mv	a0,s0
	call	__gtsf2
	mv	s9,zero
	ble	a0,zero,.L6
	mv	s9,s0
	mv	s6,s1
.L6:
	addi	s3,s1,1
	ble	s5,s3,.L53
	lw	s0,12(s7)
	mv	a1,zero
	mv	a0,s0
	call	__gesf2
	bge	a0,zero,.L8
	li	a5,-2147483648
	xor	s0,a5,s0
.L8:
	mv	a1,s0
	mv	a0,s9
	call	__ltsf2
	blt	a0,zero,.L65
	mv	s3,s6
.L9:
	addi	s6,s1,2
	ble	s5,s6,.L66
	lw	s0,24(s7)
	mv	a1,zero
	mv	a0,s0
	call	__gesf2
	bge	a0,zero,.L10
	li	a5,-2147483648
	xor	s0,a5,s0
.L10:
	mv	a1,s9
	mv	a0,s0
	call	__gtsf2
	ble	a0,zero,.L66
.L53:
	slli	a5,s6,1
	sw	a5,24(sp)
	add	a5,a5,s6
	sw	a5,16(sp)
.L58:
	lw	a5,16(sp)
	mv	a1,zero
	add	a5,a5,s1
	slli	a5,a5,2
	add	a5,s4,a5
	lw	s3,0(a5)
	mv	a0,s3
	call	__gesf2
	mv	a1,s3
	bge	a0,zero,.L12
	li	a5,-2147483648
	xor	a1,s3,a5
.L12:
	lw	a0,28(sp)
	call	__gesf2
	bge	a0,zero,.L68
	bne	s6,s1,.L92
	lw	a0,20(sp)
	mv	a1,s3
	call	__mulsf3
	mv	s9,a0
	lw	a0,0(s2)
	mv	a1,s3
	sw	s9,20(sp)
	call	__divsf3
	sw	a0,0(s2)
	li	a5,1
	mv	s9,a0
	beq	s5,a5,.L16
	lw	a0,4(s2)
	mv	a1,s3
	call	__divsf3
	sw	a0,4(s2)
	li	a5,2
	beq	s5,a5,.L93
	lw	a0,8(s2)
	mv	a1,s3
	call	__divsf3
	sw	a0,8(s2)
	beq	s1,zero,.L30
.L96:
	lw	s0,0(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L26
	li	a5,1
	beq	s1,a5,.L31
.L27:
	lw	s0,12(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L35
.L81:
	li	a5,2
	ble	s5,a5,.L94
.L36:
	li	a5,2
	beq	s1,a5,.L28
	lw	s0,24(s8)
	mv	a1,zero
	li	s1,3
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L47
.L28:
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	addi	s1,s1,1
	call	__divsf3
	sw	a0,0(s7)
	beq	s5,s1,.L51
	addi	s7,s7,16
	addi	s8,s8,4
	addi	s2,s2,12
	addi	s10,s10,4
	j	.L4
.L66:
	mv	s6,s3
	j	.L53
.L92:
	lw	a5,24(sp)
	lw	a3,0(s2)
	slli	a4,s6,2
	add	a5,a5,s6
	slli	a5,a5,2
	add	a5,s4,a5
	lw	a2,0(a5)
	add	a4,s11,a4
	li	a1,-2147483648
	sw	a2,0(s2)
	lw	a2,0(a4)
	sw	a3,0(a5)
	lw	a3,0(s10)
	xor	a1,s0,a1
	sw	a2,0(s10)
	sw	a3,0(a4)
	sw	a1,20(sp)
	li	a4,1
	beq	s5,a4,.L95
	lw	a3,4(a5)
	lw	a4,4(s2)
	sw	a3,4(s2)
	sw	a4,4(a5)
	li	a4,2
	beq	s5,a4,.L17
	lw	a3,8(a5)
	lw	a4,8(s2)
	mv	a1,s3
	sw	a3,8(s2)
	sw	a4,8(a5)
	lw	a0,0(s2)
	call	__divsf3
	mv	s9,a0
	lw	a0,4(s2)
	mv	a1,s3
	sw	s9,0(s2)
	call	__divsf3
	sw	a0,4(s2)
	lw	a0,8(s2)
	mv	a1,s3
	call	__divsf3
	sw	a0,8(s2)
	bne	s1,zero,.L96
.L30:
	lw	s0,12(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L29
.L32:
	lw	s0,24(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	beq	a0,zero,.L28
	bne	s1,zero,.L47
.L50:
	lw	a1,4(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,28(s4)
	call	__subsf3
	sw	a0,28(s4)
.L40:
	lw	a1,8(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,32(s4)
	call	__subsf3
	sw	a0,32(s4)
	li	a0,-2147483648
	mv	a1,s3
	xor	a0,a0,s0
	call	__divsf3
	sw	a0,24(s8)
	j	.L28
.L95:
	lw	a0,0(s2)
	mv	a1,s3
	call	__divsf3
	mv	s9,a0
	sw	a0,0(s2)
.L16:
	beq	s1,zero,.L22
	lw	s0,0(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L97
.L24:
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	addi	s1,s1,1
	call	__divsf3
	sw	a0,0(s7)
	addi	s8,s8,4
	addi	s2,s2,12
	addi	s10,s10,4
	addi	s7,s7,16
	j	.L58
.L65:
	mv	s9,s0
	j	.L9
.L17:
	lw	a0,0(s2)
	mv	a1,s3
	call	__divsf3
	mv	s9,a0
	lw	a0,4(s2)
	mv	a1,s3
	sw	s9,0(s2)
	call	__divsf3
	sw	a0,4(s2)
	beq	s1,zero,.L79
	lw	s0,0(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	beq	a0,zero,.L33
.L26:
	mv	a1,s0
	mv	a0,s9
	call	__mulsf3
	mv	a1,a0
	lw	a0,0(s4)
	call	__subsf3
	sw	a0,0(s4)
	li	a5,1
	beq	s1,a5,.L98
	lw	a1,4(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,4(s4)
	call	__subsf3
	sw	a0,4(s4)
	li	a5,2
	ble	s5,a5,.L99
	li	a5,2
	beq	s1,a5,.L100
.L34:
	lw	a1,8(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,8(s4)
	call	__subsf3
	sw	a0,8(s4)
	li	a0,-2147483648
	mv	a1,s3
	xor	a0,a0,s0
	call	__divsf3
	sw	a0,0(s8)
.L33:
	li	a5,1
	bne	s1,a5,.L27
	li	a5,2
	ble	s5,a5,.L28
.L31:
	lw	s0,24(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L101
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	addi	s8,s8,4
	call	__divsf3
	sw	a0,0(s7)
	addi	s2,s2,12
	addi	s10,s10,4
	li	s1,2
	addi	s7,s7,16
	j	.L4
.L93:
	beq	s6,zero,.L79
	lw	s0,0(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	bne	a0,zero,.L26
	li	a5,1
	beq	s6,a5,.L28
	lw	s0,12(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	beq	a0,zero,.L81
.L35:
	lw	a1,0(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,12(s4)
	call	__subsf3
	sw	a0,12(s4)
	lw	a1,4(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,16(s4)
	call	__subsf3
	sw	a0,16(s4)
	li	a5,2
	ble	s5,a5,.L44
	li	a5,2
	beq	s1,a5,.L44
	li	s1,3
.L43:
	lw	a1,8(s2)
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,20(s4)
	call	__subsf3
	sw	a0,20(s4)
	li	a0,-2147483648
	mv	a1,s3
	xor	a0,a0,s0
	call	__divsf3
	sw	a0,12(s8)
	li	a5,2
	ble	s5,a5,.L28
	j	.L32
.L79:
	lw	s0,12(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	beq	a0,zero,.L28
.L29:
	lw	a1,4(s2)
	mv	a0,s0
	li	s1,0
	call	__mulsf3
	mv	a1,a0
	lw	a0,16(s4)
	call	__subsf3
	sw	a0,16(s4)
	li	a5,2
	bgt	s5,a5,.L43
.L44:
	li	a0,-2147483648
	xor	a0,a0,s0
	mv	a1,s3
	call	__divsf3
	sw	a0,12(s8)
	j	.L28
.L94:
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	addi	s1,s1,1
	call	__divsf3
	sw	a0,0(s7)
	addi	s8,s8,4
	addi	s2,s2,12
	addi	s10,s10,4
	addi	s7,s7,16
	j	.L4
.L22:
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	li	s1,1
	call	__divsf3
	sw	a0,0(s7)
.L51:
	li	a6,0
	li	t1,1
	li	t3,2
.L55:
	lw	a5,12(sp)
	lw	a1,0(a5)
.L89:
	beq	a1,a6,.L102
.L54:
	slli	a5,a1,1
	add	a5,a5,a1
	slli	a4,a1,4
	add	a5,a5,a6
	slli	a2,a1,2
	add	a4,s4,a4
	slli	a5,a5,2
	mv	a3,a1
	lw	a7,0(a4)
	add	a2,s11,a2
	add	a5,s4,a5
	lw	a0,0(a5)
	lw	a1,0(a2)
	sw	a3,0(a2)
	lw	a3,12(sp)
	sw	a7,0(a5)
	sw	a0,0(a4)
	sw	a1,0(a3)
	beq	s1,t1,.L89
	lw	a3,0(a5)
	sw	a0,0(a5)
	sw	a3,0(a4)
	beq	s1,t3,.L89
	lw	a2,0(a5)
	sw	a3,0(a5)
	sw	a2,0(a4)
	bne	a1,a6,.L54
.L102:
	lw	a5,12(sp)
	addi	a6,a6,1
	addi	a5,a5,4
	sw	a5,12(sp)
	bne	a6,s1,.L55
	lw	s11,2044(sp)
.L2:
	li	a0,0
.L13:
	lw	a4,20(sp)
	lui	a5,%hi(det)
	sw	a4,%lo(det)(a5)
	addi	sp,sp,64
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	lw	s2,2016(sp)
	lw	s3,2012(sp)
	lw	s4,2008(sp)
	lw	s5,2004(sp)
	lw	s6,2000(sp)
	lw	s7,1996(sp)
	lw	s8,1992(sp)
	lw	s9,1988(sp)
	lw	s10,1984(sp)
	addi	sp,sp,2032
	jr	ra
.L97:
	mv	a1,s9
	mv	a0,s0
	call	__mulsf3
	mv	a1,a0
	lw	a0,0(s4)
	call	__subsf3
	sw	a0,0(s4)
	li	a0,-2147483648
	mv	a1,s3
	xor	a0,a0,s0
	call	__divsf3
	sw	a0,0(s8)
	j	.L24
.L47:
	lw	a1,0(s2)
	mv	a0,s0
	li	s1,3
	call	__mulsf3
	mv	a1,a0
	lw	a0,24(s4)
	call	__subsf3
	sw	a0,24(s4)
	j	.L50
.L68:
	lw	s11,2044(sp)
	li	a0,1
	j	.L13
.L99:
	li	a0,-2147483648
	xor	a0,a0,s0
	mv	a1,s3
	call	__divsf3
	sw	a0,0(s8)
	j	.L27
.L98:
	li	a5,2
	bgt	s5,a5,.L34
	li	a0,-2147483648
	xor	a0,a0,s0
	mv	a1,s3
	call	__divsf3
	sw	a0,0(s8)
	j	.L28
.L101:
	lw	a1,0(s2)
	mv	a0,s0
	li	s1,1
	call	__mulsf3
	mv	a1,a0
	lw	a0,24(s4)
	call	__subsf3
	sw	a0,24(s4)
	j	.L40
.L100:
	li	a0,-2147483648
	xor	a0,a0,s0
	mv	a1,s3
	call	__divsf3
	lw	s0,12(s8)
	sw	a0,0(s8)
	mv	a1,zero
	mv	a0,s0
	call	__nesf2
	beq	a0,zero,.L36
	j	.L35
.L63:
	lui	a5,%hi(.LC0)
	lw	a5,%lo(.LC0)(a5)
	sw	a5,20(sp)
	j	.L2
	.size	minver.part.0, .-minver.part.0
	.align	2
	.type	minver.part.0.constprop.0.isra.0, @function
minver.part.0.constprop.0.isra.0:
	lui	a5,%hi(.LC0)
	lw	a5,%lo(.LC0)(a5)
	addi	sp,sp,-2032
	sw	s0,2024(sp)
	sw	s1,2020(sp)
	sw	s3,2012(sp)
	sw	s5,2004(sp)
	sw	s6,2000(sp)
	sw	s7,1996(sp)
	sw	s9,1988(sp)
	sw	s10,1984(sp)
	sw	s11,1980(sp)
	sw	ra,2028(sp)
	sw	s2,2016(sp)
	sw	s4,2008(sp)
	sw	s8,1992(sp)
	addi	sp,sp,-64
	sw	a5,20(sp)
	lui	a5,%hi(.LC1)
	li	a4,1
	lw	a5,%lo(.LC1)(a5)
	lui	s1,%hi(.LANCHOR0)
	sw	a4,36(sp)
	li	a4,2
	addi	s1,s1,%lo(.LANCHOR0)
	sw	a4,40(sp)
	addi	a4,sp,32
	sw	zero,32(sp)
	mv	s6,s1
	mv	s9,s1
	mv	s0,s1
	sw	a4,12(sp)
	mv	s11,a4
	sw	a5,28(sp)
	li	s7,0
	li	s5,0
	li	s3,0
	li	s10,-2147483648
.L104:
	lw	s2,0(s6)
	mv	a1,zero
	mv	a0,s2
	call	__gesf2
	bge	a0,zero,.L125
	xor	s2,s10,s2
.L125:
	mv	a1,zero
	mv	a0,s2
	call	__gtsf2
	mv	s4,zero
	ble	a0,zero,.L126
	mv	s4,s2
	mv	s5,s3
.L126:
	addi	s8,s3,1
	li	a5,3
	beq	s8,a5,.L127
	lw	s2,12(s6)
	mv	a1,zero
	mv	a0,s2
	call	__gesf2
	bge	a0,zero,.L128
	xor	s2,s10,s2
.L128:
	mv	a1,s2
	mv	a0,s4
	call	__ltsf2
	bge	a0,zero,.L129
	mv	s4,s2
	mv	s5,s8
.L129:
	li	a5,1
	beq	s3,a5,.L127
	lw	s2,24(s6)
	mv	a1,zero
	mv	a0,s2
	call	__gesf2
	bge	a0,zero,.L105
	xor	s2,s10,s2
.L105:
	mv	a0,s4
	mv	a1,s2
	call	__ltsf2
	bge	a0,zero,.L127
	li	s5,2
.L127:
	slli	s4,s5,1
	add	a5,s4,s5
	add	a5,a5,s3
	slli	a5,a5,2
	add	a5,s1,a5
	lw	s3,0(a5)
	mv	a1,zero
	mv	a0,s3
	call	__gesf2
	mv	a5,s3
	bge	a0,zero,.L107
	xor	a5,s3,s10
.L107:
	lw	a1,28(sp)
	mv	a0,a5
	call	__lesf2
	ble	a0,zero,.L108
	bne	s7,s5,.L109
	lw	a0,20(sp)
	mv	a1,s3
	call	__mulsf3
	sw	a0,20(sp)
.L110:
	lw	a0,0(s0)
	mv	a1,s3
	call	__divsf3
	mv	s2,a0
	lw	a0,4(s0)
	mv	a1,s3
	sw	s2,0(s0)
	call	__divsf3
	mv	s4,a0
	lw	a0,8(s0)
	mv	a1,s3
	sw	s4,4(s0)
	call	__divsf3
	sw	a0,8(s0)
	mv	a5,a0
	beq	s7,zero,.L111
	lw	a4,0(s9)
	mv	a1,zero
	sw	a5,24(sp)
	mv	a0,a4
	sw	a4,16(sp)
	call	__nesf2
	bne	a0,zero,.L112
	li	a5,1
	beq	s7,a5,.L113
	lw	s2,20(s1)
	mv	a1,zero
	mv	a0,s2
	call	__nesf2
	bne	a0,zero,.L144
.L115:
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	call	__divsf3
	sw	a0,32(s1)
.L121:
	li	a6,0
	li	t1,3
.L131:
	lw	a5,12(sp)
	lw	a1,0(a5)
	beq	a1,a6,.L133
.L132:
	slli	a5,a1,1
	add	a5,a5,a1
	slli	a4,a1,4
	add	a5,a5,a6
	add	a4,s1,a4
	slli	a5,a5,2
	lw	a0,0(a4)
	add	a5,s1,a5
	mv	a3,a1
	lw	a1,0(a5)
	sw	a0,0(a5)
	slli	a2,a3,2
	sw	a1,0(a4)
	lw	a0,0(a5)
	sw	a1,0(a5)
	add	a2,a2,sp
	sw	a0,0(a4)
	lw	a7,0(a5)
	lw	a1,32(a2)
	sw	a0,0(a5)
	lw	a5,12(sp)
	sw	a3,32(a2)
	sw	a7,0(a4)
	sw	a1,0(a5)
	bne	a1,a6,.L132
.L133:
	lw	a5,12(sp)
	addi	a6,a6,1
	addi	a5,a5,4
	sw	a5,12(sp)
	bne	a6,t1,.L131
.L108:
	lw	a4,20(sp)
	lui	a5,%hi(det)
	sw	a4,%lo(det)(a5)
	addi	sp,sp,64
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	lw	s1,2020(sp)
	lw	s2,2016(sp)
	lw	s3,2012(sp)
	lw	s4,2008(sp)
	lw	s5,2004(sp)
	lw	s6,2000(sp)
	lw	s7,1996(sp)
	lw	s8,1992(sp)
	lw	s9,1988(sp)
	lw	s10,1984(sp)
	lw	s11,1980(sp)
	addi	sp,sp,2032
	jr	ra
.L109:
	add	s4,s4,s5
	slli	s4,s4,2
	add	s4,s1,s4
	lw	a4,0(s4)
	lw	a5,0(s0)
	lw	a3,4(s0)
	sw	a4,0(s0)
	lw	a2,4(s4)
	lw	a4,8(s0)
	sw	a5,0(s4)
	sw	a2,4(s0)
	xor	a5,s2,s10
	lw	a2,8(s4)
	sw	a5,20(sp)
	slli	a5,s5,2
	addi	a5,a5,32
	add	a5,a5,sp
	sw	a3,4(s4)
	sw	a2,8(s0)
	lw	a3,0(a5)
	sw	a4,8(s4)
	lw	a4,0(s11)
	sw	a3,0(s11)
	sw	a4,0(a5)
	j	.L110
.L146:
	lw	a0,24(sp)
	call	__mulsf3
	mv	a1,a0
	lw	a0,8(s1)
	call	__subsf3
	sw	a0,8(s1)
	sw	s2,4(s1)
.L113:
	lw	s2,24(s9)
	mv	a1,zero
	mv	a0,s2
	call	__nesf2
	bne	a0,zero,.L145
.L119:
	lui	a5,%hi(.LC0)
	lw	a0,%lo(.LC0)(a5)
	mv	a1,s3
	addi	s7,s7,1
	call	__divsf3
	sw	a0,0(s6)
	li	a5,3
	addi	s0,s0,12
	addi	s9,s9,4
	addi	s11,s11,4
	addi	s6,s6,16
	beq	s8,a5,.L121
	mv	s3,s8
	j	.L104
.L111:
	lw	s2,12(s1)
	mv	a1,zero
	mv	a0,s2
	call	__nesf2
	bne	a0,zero,.L117
	lw	s2,24(s1)
	mv	a1,zero
	mv	a0,s2
	call	__nesf2
	beq	a0,zero,.L119
.L118:
	lw	a1,4(s0)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,28(s1)
	call	__subsf3
	sw	a0,28(s1)
.L124:
	lw	a1,8(s0)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,32(s1)
	call	__subsf3
	sw	a0,32(s1)
	mv	a1,s3
	xor	a0,s10,s2
	call	__divsf3
	sw	a0,24(s9)
	j	.L119
.L112:
	mv	a0,s2
	lw	s2,16(sp)
	mv	a1,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,0(s1)
	call	__subsf3
	sw	a0,0(s1)
	mv	a1,s3
	xor	a0,s10,s2
	call	__divsf3
	li	a4,1
	lw	a1,16(sp)
	mv	s2,a0
	beq	s7,a4,.L146
	mv	a0,s4
	call	__mulsf3
	mv	a1,a0
	lw	a0,4(s1)
	call	__subsf3
	sw	s2,8(s1)
	lw	s2,20(s1)
	sw	a0,4(s1)
	mv	a1,zero
	mv	a0,s2
	call	__nesf2
	beq	a0,zero,.L115
.L144:
	lw	a1,0(s0)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,12(s1)
	call	__subsf3
	sw	a0,12(s1)
	lw	a1,4(s0)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,16(s1)
	call	__subsf3
	sw	a0,16(s1)
	mv	a1,s3
	xor	a0,s10,s2
	call	__divsf3
	sw	a0,12(s9)
	li	a5,2
	beq	s7,a5,.L115
	j	.L120
.L145:
	lw	a1,0(s0)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,24(s1)
	call	__subsf3
	sw	a0,24(s1)
	j	.L124
.L117:
	lw	a1,4(s1)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,16(s1)
	call	__subsf3
	lw	a1,8(s1)
	sw	a0,16(s1)
	mv	a0,s2
	call	__mulsf3
	mv	a1,a0
	lw	a0,20(s1)
	call	__subsf3
	sw	a0,20(s1)
	mv	a1,s3
	xor	a0,s10,s2
	call	__divsf3
	sw	a0,12(s9)
.L120:
	lw	s2,24(s9)
	mv	a1,zero
	mv	a0,s2
	call	__nesf2
	beq	a0,zero,.L119
	j	.L118
	.size	minver.part.0.constprop.0.isra.0, .-minver.part.0.constprop.0.isra.0
	.align	2
	.type	benchmark_body.isra.0, @function
benchmark_body.isra.0:
	ble	a0,zero,.L152
	addi	sp,sp,-80
	lui	a5,%hi(.LANCHOR0)
	lui	a4,%hi(.LANCHOR1)
	sw	s5,52(sp)
	sw	s10,32(sp)
	addi	s5,a5,%lo(.LANCHOR0)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s11,28(sp)
	sw	a0,12(sp)
	addi	s10,a4,%lo(.LANCHOR1)
	li	a5,0
.L149:
	lw	a0,0(s10)
	lw	a1,4(s10)
	lw	a3,8(s10)
	sw	a0,0(s5)
	sw	a1,4(s5)
	lw	a0,12(s10)
	lw	a1,16(s10)
	sw	a3,8(s5)
	lw	a3,20(s10)
	sw	a0,12(s5)
	sw	a1,16(s5)
	lw	a0,24(s10)
	lw	a1,28(s10)
	sw	a3,20(s5)
	lw	a3,32(s10)
	sw	a5,8(sp)
	sw	a0,24(s5)
	sw	a1,28(s5)
	sw	a3,32(s5)
	call	minver.part.0.constprop.0.isra.0
	lw	a0,0(s5)
	lw	a1,4(s5)
	lw	a3,8(s5)
	sw	a0,36(s5)
	sw	a1,40(s5)
	lw	a0,12(s5)
	lw	a1,16(s5)
	sw	a3,44(s5)
	lw	a3,20(s5)
	lw	s9,0(s10)
	lw	s4,8(s10)
	lw	s3,12(s10)
	lw	s2,20(s10)
	lw	s1,24(s10)
	lw	s8,4(s10)
	lw	s7,16(s10)
	sw	a0,48(s5)
	sw	a1,52(s5)
	lw	a0,24(s5)
	lw	a1,28(s5)
	sw	a3,56(s5)
	lw	a3,32(s5)
	lui	a5,%hi(.LC2)
	sw	a0,60(s5)
	sw	a3,68(s5)
	sw	a1,64(s5)
	sw	s9,0(s5)
	sw	s8,4(s5)
	sw	s4,8(s5)
	sw	s3,12(s5)
	sw	s2,20(s5)
	sw	s1,24(s5)
	sw	s7,16(s5)
	lw	s6,28(s10)
	lw	s0,32(s10)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s9
	sw	s6,28(s5)
	sw	s0,32(s5)
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a4,%hi(.LC3)
	lw	a1,%lo(.LC3)(a4)
	mv	s11,a0
	mv	a0,s8
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	mv	s11,a0
	mv	a1,zero
	mv	a0,s4
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	sw	a0,72(s5)
	mv	a1,zero
	mv	a0,s9
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a3,%hi(.LC4)
	lw	a1,%lo(.LC4)(a3)
	mv	s11,a0
	mv	a0,s8
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	mv	s11,a0
	mv	a1,s4
	mv	a0,s4
	call	__addsf3
	mv	a1,s11
	call	__addsf3
	mv	a1,s9
	sw	a0,76(s5)
	mv	a0,s9
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s11,a0
	mv	a1,zero
	mv	a0,s8
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	lui	s9,%hi(.LC2)
	lw	a1,%lo(.LC2)(s9)
	mv	s8,a0
	mv	a0,s4
	call	__mulsf3
	mv	a1,s8
	call	__addsf3
	lw	a1,%lo(.LC2)(s9)
	sw	a0,80(s5)
	mv	a0,s3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	mv	s8,s9
	lui	s9,%hi(.LC3)
	lw	a1,%lo(.LC3)(s9)
	mv	s4,a0
	mv	a0,s7
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	mv	s4,a0
	mv	a1,zero
	mv	a0,s2
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	sw	a0,84(s5)
	mv	a1,zero
	mv	a0,s3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	s11,%hi(.LC4)
	lw	a1,%lo(.LC4)(s11)
	mv	s4,a0
	mv	a0,s7
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	mv	a1,s2
	mv	s4,a0
	mv	a0,s2
	call	__addsf3
	mv	a1,s4
	call	__addsf3
	mv	a1,s3
	sw	a0,88(s5)
	mv	a0,s3
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s3,a0
	mv	a1,zero
	mv	a0,s7
	call	__mulsf3
	mv	a1,s3
	call	__addsf3
	lw	a1,%lo(.LC2)(s8)
	mv	s3,a0
	mv	a0,s2
	call	__mulsf3
	mv	a1,s3
	call	__addsf3
	lw	a1,%lo(.LC2)(s8)
	sw	a0,92(s5)
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lw	a1,%lo(.LC3)(s9)
	mv	s2,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	mv	s2,a0
	mv	a1,zero
	mv	a0,s0
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	sw	a0,96(s5)
	mv	a1,zero
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lw	a1,%lo(.LC4)(s11)
	mv	s2,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	mv	s2,a0
	mv	a1,s0
	mv	a0,s0
	call	__addsf3
	mv	a1,s2
	call	__addsf3
	mv	a1,s1
	sw	a0,100(s5)
	mv	a0,s1
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s1,a0
	mv	a1,zero
	mv	a0,s6
	call	__mulsf3
	mv	a1,s1
	call	__addsf3
	lw	a1,%lo(.LC2)(s8)
	mv	s1,a0
	mv	a0,s0
	call	__mulsf3
	mv	a1,s1
	call	__addsf3
	lw	a5,8(sp)
	lw	a4,12(sp)
	sw	a0,104(s5)
	addi	a5,a5,1
	bne	a5,a4,.L149
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
.L152:
	ret
	.size	benchmark_body.isra.0, .-benchmark_body.isra.0
	.align	2
	.type	benchmark_body.constprop.0.isra.0, @function
benchmark_body.constprop.0.isra.0:
	addi	sp,sp,-80
	lui	a5,%hi(.LANCHOR0)
	lui	a4,%hi(.LANCHOR1)
	sw	s5,52(sp)
	sw	s10,32(sp)
	addi	s5,a5,%lo(.LANCHOR0)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s11,28(sp)
	addi	s10,a4,%lo(.LANCHOR1)
	li	a5,555
.L156:
	lw	a0,0(s10)
	lw	a1,4(s10)
	lw	a3,8(s10)
	sw	a0,0(s5)
	sw	a1,4(s5)
	lw	a0,12(s10)
	lw	a1,16(s10)
	sw	a3,8(s5)
	lw	a3,20(s10)
	sw	a0,12(s5)
	sw	a1,16(s5)
	lw	a0,24(s10)
	lw	a1,28(s10)
	sw	a3,20(s5)
	lw	a3,32(s10)
	sw	a5,12(sp)
	sw	a0,24(s5)
	sw	a1,28(s5)
	sw	a3,32(s5)
	call	minver.part.0.constprop.0.isra.0
	lw	a0,0(s5)
	lw	a1,4(s5)
	lw	a3,8(s5)
	sw	a0,36(s5)
	sw	a1,40(s5)
	lw	a0,12(s5)
	lw	a1,16(s5)
	sw	a3,44(s5)
	lw	a3,20(s5)
	lw	s9,0(s10)
	lw	s4,8(s10)
	lw	s3,12(s10)
	lw	s2,20(s10)
	lw	s1,24(s10)
	lw	s8,4(s10)
	lw	s7,16(s10)
	sw	a0,48(s5)
	sw	a1,52(s5)
	lw	a0,24(s5)
	lw	a1,28(s5)
	sw	a3,56(s5)
	lw	a3,32(s5)
	lui	a5,%hi(.LC2)
	sw	a0,60(s5)
	sw	a3,68(s5)
	sw	a1,64(s5)
	sw	s9,0(s5)
	sw	s8,4(s5)
	sw	s4,8(s5)
	sw	s3,12(s5)
	sw	s2,20(s5)
	sw	s1,24(s5)
	sw	s7,16(s5)
	lw	s6,28(s10)
	lw	s0,32(s10)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s9
	sw	s6,28(s5)
	sw	s0,32(s5)
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a4,%hi(.LC3)
	lw	a1,%lo(.LC3)(a4)
	mv	s11,a0
	mv	a0,s8
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	mv	s11,a0
	mv	a1,zero
	mv	a0,s4
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	sw	a0,72(s5)
	mv	a1,zero
	mv	a0,s9
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a3,%hi(.LC4)
	lw	a1,%lo(.LC4)(a3)
	mv	s11,a0
	mv	a0,s8
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	mv	s11,a0
	mv	a1,s4
	mv	a0,s4
	call	__addsf3
	mv	a1,s11
	call	__addsf3
	mv	a1,s9
	sw	a0,76(s5)
	mv	a0,s9
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s11,a0
	mv	a1,zero
	mv	a0,s8
	call	__mulsf3
	mv	a1,s11
	call	__addsf3
	lui	s9,%hi(.LC2)
	lw	a1,%lo(.LC2)(s9)
	mv	s8,a0
	mv	a0,s4
	call	__mulsf3
	mv	a1,s8
	call	__addsf3
	lw	a1,%lo(.LC2)(s9)
	sw	a0,80(s5)
	mv	a0,s3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	mv	s8,s9
	lui	s9,%hi(.LC3)
	lw	a1,%lo(.LC3)(s9)
	mv	s4,a0
	mv	a0,s7
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	mv	s4,a0
	mv	a1,zero
	mv	a0,s2
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	sw	a0,84(s5)
	mv	a1,zero
	mv	a0,s3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	s11,%hi(.LC4)
	lw	a1,%lo(.LC4)(s11)
	mv	s4,a0
	mv	a0,s7
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	mv	a1,s2
	mv	s4,a0
	mv	a0,s2
	call	__addsf3
	mv	a1,s4
	call	__addsf3
	mv	a1,s3
	sw	a0,88(s5)
	mv	a0,s3
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s3,a0
	mv	a1,zero
	mv	a0,s7
	call	__mulsf3
	mv	a1,s3
	call	__addsf3
	lw	a1,%lo(.LC2)(s8)
	mv	s3,a0
	mv	a0,s2
	call	__mulsf3
	mv	a1,s3
	call	__addsf3
	lw	a1,%lo(.LC2)(s8)
	sw	a0,92(s5)
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lw	a1,%lo(.LC3)(s9)
	mv	s2,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	mv	s2,a0
	mv	a1,zero
	mv	a0,s0
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	sw	a0,96(s5)
	mv	a1,zero
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lw	a1,%lo(.LC4)(s11)
	mv	s2,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	mv	s2,a0
	mv	a1,s0
	mv	a0,s0
	call	__addsf3
	mv	a1,s2
	call	__addsf3
	mv	a1,s1
	sw	a0,100(s5)
	mv	a0,s1
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s1,a0
	mv	a1,zero
	mv	a0,s6
	call	__mulsf3
	mv	a1,s1
	call	__addsf3
	lw	a1,%lo(.LC2)(s8)
	mv	s1,a0
	mv	a0,s0
	call	__mulsf3
	mv	a1,s1
	call	__addsf3
	lw	a5,12(sp)
	sw	a0,104(s5)
	addi	a5,a5,-1
	bne	a5,zero,.L156
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
	.size	benchmark_body.constprop.0.isra.0, .-benchmark_body.constprop.0.isra.0
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	beq	a2,zero,.L172
	addi	a5,a2,-1
	li	a4,5
	andi	a1,a1,0xff
	bleu	a5,a4,.L168
	neg	a4,a0
	andi	a5,a4,3
	li	a6,0
	beq	a5,zero,.L162
	sb	a1,0(a0)
	andi	a4,a4,2
	li	a6,1
	beq	a4,zero,.L162
	sb	a1,1(a0)
	li	a4,3
	li	a6,2
	bne	a5,a4,.L162
	sb	a1,2(a0)
	mv	a6,a5
.L162:
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
.L164:
	sw	a4,0(a5)
	addi	a5,a5,4
	bne	a5,a3,.L164
	add	a5,a6,a7
	beq	t1,a7,.L172
.L161:
	add	a4,a0,a5
	sb	a1,0(a4)
	addi	a4,a5,1
	bleu	a2,a4,.L172
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,2
	bleu	a2,a4,.L172
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,3
	bleu	a2,a4,.L172
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a4,a5,4
	bleu	a2,a4,.L172
	add	a4,a0,a4
	sb	a1,0(a4)
	addi	a5,a5,5
	bleu	a2,a5,.L172
	add	a5,a0,a5
	sb	a1,0(a5)
.L172:
	ret
.L168:
	li	a5,0
	j	.L161
	.size	memset, .-memset
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	beq	a2,zero,.L177
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L178
	or	a3,a0,a1
	andi	a3,a3,3
	mv	a4,a0
	mv	a5,a1
	bne	a3,zero,.L178
	sub	a3,a0,a1
	addi	a3,a3,-1
	sltiu	a3,a3,3
	bne	a3,zero,.L178
	andi	a7,a2,-4
	add	a6,a1,a7
.L179:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L179
	beq	a2,a7,.L177
	lbu	a3,0(a6)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a2,a5,.L177
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a2,a7,.L177
	add	a1,a1,a7
	lbu	a5,0(a1)
	add	a7,a0,a7
	sb	a5,0(a7)
	ret
.L178:
	add	a2,a1,a2
	mv	a5,a0
.L181:
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a1,a2,.L181
.L177:
	ret
	.size	memcpy, .-memcpy
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	beq	a2,zero,.L198
	add	a2,a0,a2
	j	.L197
.L196:
	beq	a0,a2,.L198
.L197:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a5,a4,.L196
	sub	a0,a5,a4
	ret
.L198:
	li	a0,0
	ret
	.size	memcmp, .-memcmp
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
	bgeu	a0,a1,.L201
	beq	a2,zero,.L202
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L203
	or	a3,a1,a0
	andi	a3,a3,3
	mv	a4,a0
	mv	a5,a1
	bne	a3,zero,.L203
	sub	a3,a0,a1
	addi	a3,a3,-1
	sltiu	a3,a3,3
	bne	a3,zero,.L203
	andi	a7,a2,-4
	add	a6,a1,a7
.L204:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L204
	beq	a2,a7,.L202
	lbu	a3,0(a6)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a2,a5,.L202
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a2,a7,.L202
	add	a1,a1,a7
	lbu	a5,0(a1)
	add	a7,a0,a7
	sb	a5,0(a7)
	ret
.L201:
	bgtu	a0,a1,.L224
.L202:
	ret
.L224:
	beq	a2,zero,.L202
	addi	a2,a2,-1
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
	j	.L224
.L203:
	add	a2,a1,a2
	mv	a5,a0
.L206:
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	sb	a4,-1(a5)
	bne	a1,a2,.L206
	ret
	.size	memmove, .-memmove
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
	lbu	a5,0(a0)
	beq	a5,zero,.L225
	li	a5,0
.L227:
	addi	a5,a5,1
	add	a4,a0,a5
	lbu	a4,0(a4)
	bne	a4,zero,.L227
.L225:
	mv	a0,a5
	ret
	.size	strlen, .-strlen
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
	lbu	a5,0(a0)
	beq	a5,zero,.L231
	andi	a4,a1,0xff
.L233:
	beq	a4,a5,.L230
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L233
.L231:
	seqz	a1,a1
	neg	a1,a1
	and	a0,a0,a1
.L230:
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
	beq	a0,zero,.L246
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a1,%lo(heap_requested)(a3)
	add	a4,a0,a5
	andi	a6,a4,3
	add	a5,a5,a1
	bne	a6,zero,.L250
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a1,a4,.L246
.L251:
	sw	a4,%lo(heap_ptr)(a2)
	ret
.L250:
	li	a1,4
	sub	a1,a1,a6
	add	a5,a5,a1
	add	a4,a4,a1
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a1,a4,.L251
.L246:
	li	a0,0
	ret
	.size	malloc_beebs, .-malloc_beebs
	.align	2
	.globl	calloc_beebs
	.type	calloc_beebs, @function
calloc_beebs:
	mul	a1,a0,a1
	beq	a1,zero,.L253
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a0,a1
	andi	a6,a4,3
	add	a5,a1,a5
	bne	a6,zero,.L278
.L254:
	lui	a6,%hi(heap_end)
	lw	a6,%lo(heap_end)(a6)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a6,a4,.L253
	sw	a4,%lo(heap_ptr)(a2)
	beq	a0,zero,.L253
	addi	a5,a1,-1
	li	a4,5
	bleu	a5,a4,.L262
	neg	a4,a0
	andi	a5,a4,3
	li	a3,0
	beq	a5,zero,.L256
	sb	zero,0(a0)
	andi	a4,a4,2
	li	a3,1
	beq	a4,zero,.L256
	sb	zero,1(a0)
	li	a4,3
	li	a3,2
	bne	a5,a4,.L256
	sb	zero,2(a0)
	mv	a3,a5
.L256:
	sub	a6,a1,a5
	andi	a2,a6,-4
	add	a5,a0,a5
	add	a4,a5,a2
.L258:
	sw	zero,0(a5)
	addi	a5,a5,4
	bne	a5,a4,.L258
	add	a5,a3,a2
	beq	a6,a2,.L252
.L255:
	add	a4,a0,a5
	sb	zero,0(a4)
	addi	a4,a5,1
	bleu	a1,a4,.L252
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,2
	bleu	a1,a4,.L252
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,3
	bleu	a1,a4,.L252
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a4,a5,4
	bleu	a1,a4,.L252
	add	a4,a0,a4
	sb	zero,0(a4)
	addi	a5,a5,5
	bleu	a1,a5,.L252
	add	a5,a0,a5
	sb	zero,0(a5)
	ret
.L253:
	li	a0,0
.L252:
	ret
.L278:
	li	a7,4
	sub	a6,a7,a6
	add	a4,a4,a6
	add	a5,a5,a6
	j	.L254
.L262:
	li	a5,0
	j	.L255
	.size	calloc_beebs, .-calloc_beebs
	.align	2
	.globl	realloc_beebs
	.type	realloc_beebs, @function
realloc_beebs:
	beq	a0,zero,.L280
	beq	a1,zero,.L280
	lui	a6,%hi(heap_ptr)
	lw	a2,%lo(heap_ptr)(a6)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a2,a1
	andi	a7,a4,3
	add	a5,a1,a5
	bne	a7,zero,.L305
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a7,a4,.L280
.L306:
	sw	a4,%lo(heap_ptr)(a6)
	beq	a2,zero,.L280
	addi	a5,a1,-1
	li	a4,6
	bleu	a5,a4,.L290
	or	a3,a0,a2
	andi	a3,a3,3
	mv	a4,a2
	mv	a5,a0
	bne	a3,zero,.L290
	addi	a3,a2,-1
	sub	a3,a3,a0
	sltiu	a3,a3,3
	bne	a3,zero,.L290
	andi	a7,a1,-4
	add	a6,a0,a7
.L283:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L283
	beq	a1,a7,.L279
	lbu	a3,0(a6)
	add	a4,a2,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a1,a5,.L279
	add	a4,a0,a5
	lbu	a4,0(a4)
	add	a5,a2,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a1,a7,.L279
	add	a0,a0,a7
	lbu	a5,0(a0)
	add	a7,a2,a7
	sb	a5,0(a7)
.L279:
	mv	a0,a2
	ret
.L305:
	li	t1,4
	sub	a7,t1,a7
	add	a5,a5,a7
	add	a4,a4,a7
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a7,a4,.L306
.L280:
	li	a2,0
	mv	a0,a2
	ret
.L290:
	li	a5,0
.L287:
	add	a4,a0,a5
	lbu	a3,0(a4)
	add	a4,a2,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	bgtu	a1,a5,.L287
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
	.globl	mmul
	.type	mmul, @function
mmul:
	ble	a0,zero,.L346
	ble	a2,zero,.L346
	ble	a3,zero,.L346
	bne	a2,a1,.L346
	addi	sp,sp,-64
	sw	s0,56(sp)
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	sw	s3,44(sp)
	sw	s6,32(sp)
	lui	s3,%hi(.LC2)
	lw	s6,0(s0)
	lw	a1,%lo(.LC2)(s3)
	sw	s7,28(sp)
	mv	s7,a0
	mv	a0,s6
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	mv	s1,a2
	mv	s2,a3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	li	a5,1
	beq	s1,a5,.L359
	lui	a5,%hi(.LC3)
	sw	s5,36(sp)
	lw	s5,4(s0)
	lw	a1,%lo(.LC3)(a5)
	sw	a0,12(sp)
	mv	a0,s5
	sw	s4,40(sp)
	call	__mulsf3
	lw	a1,12(sp)
	mv	s4,s5
	call	__addsf3
	li	a3,2
	li	a5,1
	beq	s1,a3,.L317
	sw	a0,12(sp)
	lw	a0,8(s0)
	mv	a1,zero
	call	__mulsf3
	lw	a1,12(sp)
	call	__addsf3
	sw	a0,72(s0)
	li	a5,1
	beq	s2,a5,.L349
	mv	a1,zero
	mv	a0,s6
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC4)
	lw	a1,%lo(.LC4)(a5)
	mv	s5,a0
	mv	a0,s4
	call	__mulsf3
	mv	a1,s5
	call	__addsf3
	lw	a1,8(s0)
	mv	s4,a0
	mv	a0,a1
	call	__addsf3
	mv	a1,s4
	call	__addsf3
.L319:
	sw	a0,76(s0)
	li	a4,2
	ble	s2,a4,.L349
	mv	a1,s6
	mv	a0,s6
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s4,a0
	lw	a0,4(s0)
	mv	a1,zero
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	li	a4,2
	mv	a5,a0
	beq	s1,a4,.L342
	lw	a1,%lo(.LC2)(s3)
	lw	a0,8(s0)
	sw	a5,12(sp)
	call	__mulsf3
	mv	a1,a0
	lw	a0,12(sp)
	call	__addsf3
	mv	a5,a0
.L342:
	sw	a5,80(s0)
.L349:
	li	a5,1
	beq	s7,a5,.L356
	lw	s6,12(s0)
	lw	a1,%lo(.LC2)(s3)
	mv	a0,s6
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC3)
	lw	s5,16(s0)
	lw	a1,%lo(.LC3)(a5)
	mv	s4,a0
	mv	a0,s5
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	li	a5,2
	beq	s1,a5,.L360
	sw	a0,12(sp)
	lw	a0,20(s0)
	mv	a1,zero
	call	__mulsf3
	lw	a1,12(sp)
	call	__addsf3
	sw	a0,84(s0)
	li	a4,1
	beq	s2,a4,.L324
	mv	a1,zero
	mv	a0,s6
	sw	s8,24(sp)
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a4,%hi(.LC4)
	lw	a1,%lo(.LC4)(a4)
	mv	s4,a0
	mv	a0,s5
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	lw	a5,20(s0)
	mv	s4,a0
	mv	a1,a5
	mv	a0,a5
	mv	s8,a5
	call	__addsf3
	mv	a1,s4
	call	__addsf3
	sw	a0,88(s0)
	li	a5,2
	beq	s2,a5,.L361
	mv	a1,s6
	mv	a0,s6
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s4,a0
	mv	a1,zero
	mv	a0,s5
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	lw	a1,%lo(.LC2)(s3)
	mv	s4,a0
	mv	a0,s8
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	lw	s8,24(sp)
.L327:
	sw	a0,92(s0)
.L324:
	li	a5,2
	ble	s7,a5,.L356
	lw	s5,24(s0)
	lw	a1,%lo(.LC2)(s3)
	mv	a0,s5
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC3)
	lw	s6,28(s0)
	lw	a1,%lo(.LC3)(a5)
	mv	s4,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	li	a5,2
	mv	s4,a0
	beq	s1,a5,.L362
	lw	a0,32(s0)
	mv	a1,zero
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	sw	a0,96(s0)
	li	a5,1
	beq	s2,a5,.L356
	mv	a1,zero
	mv	a0,s5
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC4)
	lw	a1,%lo(.LC4)(a5)
	mv	s4,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	lw	a1,32(s0)
	mv	s4,a0
	mv	a0,a1
	call	__addsf3
	mv	a1,s4
	call	__addsf3
.L331:
	sw	a0,100(s0)
	li	a5,2
	ble	s2,a5,.L356
	mv	a1,s5
	mv	a0,s5
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s2,a0
	lw	a0,28(s0)
	mv	a1,zero
	call	__mulsf3
	mv	a1,s2
	call	__addsf3
	li	a5,2
	mv	s2,a0
	ble	s1,a5,.L358
	lw	a1,%lo(.LC2)(s3)
	lw	a0,32(s0)
	call	__mulsf3
	mv	a1,a0
	mv	a0,s2
	call	__addsf3
	mv	s2,a0
.L358:
	lw	s4,40(sp)
	lw	s5,36(sp)
	sw	s2,104(s0)
	j	.L321
.L359:
	sw	a0,72(s0)
	beq	s2,s1,.L314
	mv	a1,zero
	mv	a0,s6
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,76(s0)
	li	a5,2
	beq	s2,a5,.L363
	mv	a1,s6
	mv	a0,s6
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,80(s0)
	beq	s7,s1,.L321
	lw	s1,12(s0)
	lw	a1,%lo(.LC2)(s3)
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,84(s0)
	mv	a1,zero
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	mv	a1,s1
	sw	a0,88(s0)
	mv	a0,s1
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,92(s0)
	li	a5,2
	beq	s7,a5,.L321
	lw	s1,24(s0)
	lw	a1,%lo(.LC2)(s3)
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,96(s0)
	mv	a1,zero
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	mv	a1,s1
	sw	a0,100(s0)
	mv	a0,s1
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s2,a0
	sw	s2,104(s0)
	j	.L321
.L346:
	li	a0,999
	ret
.L362:
	sw	s4,96(s0)
	li	a5,1
	bne	s2,a5,.L364
.L356:
	lw	s4,40(sp)
	lw	s5,36(sp)
.L321:
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	lw	s6,32(sp)
	lw	s7,28(sp)
	li	a0,0
	addi	sp,sp,64
	jr	ra
.L360:
	sw	a0,84(s0)
	li	a5,1
	beq	s2,a5,.L324
	mv	a1,zero
	mv	a0,s6
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC4)
	lw	a1,%lo(.LC4)(a5)
	mv	s4,a0
	mv	a0,s5
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	sw	a0,88(s0)
	beq	s2,s1,.L324
	mv	a1,s6
	mv	a0,s6
	call	__addsf3
	mv	a1,zero
	call	__addsf3
	mv	s4,a0
	mv	a1,zero
	mv	a0,s5
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	j	.L327
.L314:
	beq	s7,s2,.L321
	lw	a1,%lo(.LC2)(s3)
	lw	a0,12(s0)
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,84(s0)
.L322:
	li	s1,2
	ble	s7,s1,.L321
	lw	a1,%lo(.LC2)(s3)
	lw	s3,24(s0)
	mv	a0,s3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,96(s0)
	bne	s2,s1,.L321
	mv	a1,zero
	mv	a0,s3
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,100(s0)
	j	.L321
.L317:
	sw	a0,72(s0)
	beq	s2,a5,.L349
	mv	a1,zero
	mv	a0,s6
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC4)
	lw	a1,%lo(.LC4)(a5)
	mv	s4,a0
	mv	a0,s5
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	j	.L319
.L364:
	mv	a1,zero
	mv	a0,s5
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	lui	a5,%hi(.LC4)
	lw	a1,%lo(.LC4)(a5)
	mv	s4,a0
	mv	a0,s6
	call	__mulsf3
	mv	a1,s4
	call	__addsf3
	j	.L331
.L363:
	beq	s7,s1,.L321
	lw	s1,12(s0)
	lw	a1,%lo(.LC2)(s3)
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	mv	a1,zero
	sw	a0,84(s0)
	mv	a0,s1
	call	__mulsf3
	mv	a1,zero
	call	__addsf3
	sw	a0,88(s0)
	j	.L322
.L361:
	lw	s8,24(sp)
	j	.L324
	.size	mmul, .-mmul
	.align	2
	.globl	minver
	.type	minver, @function
minver:
	addi	a4,a0,-2
	li	a5,498
	bgtu	a4,a5,.L367
	addi	sp,sp,-32
	sw	s0,24(sp)
	mv	a1,zero
	mv	s0,a0
	mv	a0,a2
	sw	ra,28(sp)
	sw	a2,12(sp)
	call	__lesf2
	ble	a0,zero,.L368
	lw	a1,12(sp)
	mv	a0,s0
	call	minver.part.0
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
.L367:
	li	a0,999
	ret
.L368:
	lw	ra,28(sp)
	lw	s0,24(sp)
	li	a0,999
	addi	sp,sp,32
	jr	ra
	.size	minver, .-minver
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-48
	lui	a5,%hi(.LC5)
	sw	s1,36(sp)
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	lw	s2,%lo(.LC5)(a5)
	lui	s4,%hi(.LANCHOR2)
	lw	s3,%lo(.LC5+4)(a5)
	sw	s5,20(sp)
	addi	s4,s4,%lo(.LANCHOR2)
	addi	s5,s1,72
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s1,s1,36
	mv	s8,s5
	addi	s6,s4,36
	li	s7,12
.L374:
	li	s0,0
.L379:
	add	a4,s5,s0
	add	a5,s6,s0
	lw	a0,0(a4)
	lw	a1,0(a5)
	call	__subsf3
	call	fabsf
	call	__extendsfdf2
	mv	a2,s2
	mv	a3,s3
	call	__ltdf2
	add	a5,s1,s0
	add	a4,s4,s0
	bge	a0,zero,.L377
	lw	a1,0(a4)
	lw	a0,0(a5)
	addi	s0,s0,4
	call	__subsf3
	call	fabsf
	call	__extendsfdf2
	mv	a2,s2
	mv	a3,s3
	call	__ltdf2
	bge	a0,zero,.L377
	bne	s0,s7,.L379
	addi	s1,s1,12
	addi	s4,s4,12
	addi	s5,s5,12
	addi	s6,s6,12
	bne	s1,s8,.L374
	lui	a5,%hi(det)
	lw	a0,%lo(det)(a5)
	call	__extendsfdf2
	lui	a5,%hi(.LC6)
	lw	a2,%lo(.LC6)(a5)
	lw	a3,%lo(.LC6+4)(a5)
	call	__adddf3
	call	__truncdfsf2
	call	fabsf
	call	__extendsfdf2
	mv	a2,s2
	mv	a3,s3
	call	__ltdf2
	slti	a0,a0,0
.L373:
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
	addi	sp,sp,48
	jr	ra
.L377:
	li	a0,0
	j	.L373
	.size	verify_benchmark, .-verify_benchmark
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
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1065353216
	.align	2
.LC1:
	.word	897988541
	.align	2
.LC2:
	.word	-1069547520
	.align	2
.LC3:
	.word	1077936128
	.align	2
.LC4:
	.word	-1073741824
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC5:
	.word	-1998362383
	.word	1055193269
	.align	3
.LC6:
	.word	13249115
	.word	1076931243
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	d_exp.0, @object
	.size	d_exp.0, 36
d_exp.0:
	.word	1040746632
	.word	-1102263094
	.word	1049135238
	.word	-1090183498
	.word	1038621518
	.word	1057411998
	.word	1056293514
	.word	-1095216664
	.word	1025758984
	.type	c_exp.1, @object
	.size	c_exp.1, 36
c_exp.1:
	.word	-1042808832
	.word	1104150528
	.word	-1049624576
	.word	-1042808832
	.word	-1054867456
	.word	1107558400
	.word	-1038352384
	.word	1105199104
	.word	-1056964608
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	a_ref, @object
	.size	a_ref, 36
a_ref:
	.word	1077936128
	.word	-1061158912
	.word	1088421888
	.word	1091567616
	.word	0
	.word	-1063256064
	.word	1084227584
	.word	-1056964608
	.word	1086324736
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	a, @object
	.size	a, 36
a:
	.zero	36
	.type	d, @object
	.size	d, 36
d:
	.zero	36
	.type	c, @object
	.size	c, 36
c:
	.zero	36
	.section	.sbss,"aw",@nobits
	.align	2
	.type	det, @object
	.size	det, 4
det:
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
	.globl	__truncdfsf2
	.globl	__adddf3
	.globl	__ltdf2
	.globl	__extendsfdf2
	.globl	__addsf3
	.globl	__lesf2
	.globl	__subsf3
	.globl	__nesf2
	.globl	__mulsf3
	.globl	__divsf3
	.globl	__ltsf2
	.globl	__gtsf2
	.globl	__gesf2
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
