	.file	"libslre.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.type	is_metacharacter, @function
is_metacharacter:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(metacharacters.0)
	lw	a4,%lo(metacharacters.0)(a5)
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	strchr
	mv	a5,a0
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	is_metacharacter, .-is_metacharacter
	.align	2
	.type	op_len, @function
op_len:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,92
	bne	a4,a5,.L4
	lw	a5,-20(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	li	a5,120
	beq	a4,a5,.L5
.L4:
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,92
	bne	a4,a5,.L6
	li	a5,2
	j	.L9
.L6:
	li	a5,1
	j	.L9
.L5:
	li	a5,4
.L9:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	op_len, .-op_len
	.align	2
	.type	set_len, @function
set_len:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-20(s0)
	j	.L11
.L13:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	op_len
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L11:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bge	a4,a5,.L12
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,93
	bne	a4,a5,.L13
.L12:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bgt	a4,a5,.L14
	lw	a5,-20(s0)
	addi	a5,a5,1
	j	.L16
.L14:
	li	a5,-1
.L16:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	set_len, .-set_len
	.align	2
	.type	get_op_len, @function
get_op_len:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,91
	bne	a4,a5,.L18
	lw	a5,-20(s0)
	addi	a4,a5,1
	lw	a5,-24(s0)
	addi	a5,a5,-1
	mv	a1,a5
	mv	a0,a4
	call	set_len
	mv	a5,a0
	addi	a5,a5,1
	j	.L20
.L18:
	lw	a0,-20(s0)
	call	op_len
	mv	a5,a0
.L20:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	get_op_len, .-get_op_len
	.align	2
	.type	is_quantifier, @function
is_quantifier:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,42
	beq	a4,a5,.L22
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,43
	beq	a4,a5,.L22
	lw	a5,-20(s0)
	lbu	a4,0(a5)
	li	a5,63
	bne	a4,a5,.L23
.L22:
	li	a5,1
	j	.L25
.L23:
	li	a5,0
.L25:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	is_quantifier, .-is_quantifier
	.align	2
	.type	toi, @function
toi:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,4
	beq	a5,zero,.L27
	lw	a5,-20(s0)
	addi	a5,a5,-48
	j	.L29
.L27:
	lw	a5,-20(s0)
	addi	a5,a5,-87
.L29:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	toi, .-toi
	.align	2
	.type	hextoi, @function
hextoi:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a4,a5,3
	li	a5,1
	bne	a4,a5,.L31
	lbu	a5,-17(s0)
	addi	a5,a5,32
	j	.L32
.L31:
	lbu	a5,-17(s0)
.L32:
	mv	a0,a5
	call	toi
	mv	a5,a0
	slli	s1,a5,4
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	lbu	a5,-18(s0)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a4,a5,3
	li	a5,1
	bne	a4,a5,.L33
	lbu	a5,-18(s0)
	addi	a5,a5,32
	j	.L34
.L33:
	lbu	a5,-18(s0)
.L34:
	mv	a0,a5
	call	toi
	mv	a5,a0
	or	a5,s1,a5
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	addi	sp,sp,48
	jr	ra
	.size	hextoi, .-hextoi
	.align	2
	.type	match_op, @function
match_op:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	li	a4,124
	beq	a5,a4,.L61
	li	a4,124
	bgt	a5,a4,.L38
	li	a4,92
	beq	a5,a4,.L39
	li	a4,92
	bgt	a5,a4,.L38
	li	a4,36
	beq	a5,a4,.L62
	li	a4,46
	beq	a5,a4,.L41
	j	.L38
.L39:
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	li	a4,120
	beq	a5,a4,.L42
	li	a4,120
	bgt	a5,a4,.L43
	li	a4,115
	beq	a5,a4,.L44
	li	a4,115
	bgt	a5,a4,.L43
	li	a4,83
	beq	a5,a4,.L45
	li	a4,100
	beq	a5,a4,.L46
	j	.L43
.L45:
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,8
	beq	a5,zero,.L47
	li	a5,-1
	j	.L48
.L47:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L49
.L44:
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,8
	bne	a5,zero,.L50
	li	a5,-1
	j	.L48
.L50:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L49
.L46:
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,4
	bne	a5,zero,.L51
	li	a5,-1
	j	.L48
.L51:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L49
.L42:
	lw	a5,-36(s0)
	addi	a5,a5,2
	mv	a0,a5
	call	hextoi
	mv	a4,a0
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L52
	li	a5,-1
	j	.L48
.L52:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L49
.L43:
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a4,0(a5)
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L53
	li	a5,-1
	j	.L48
.L53:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	nop
.L49:
	j	.L54
.L61:
	li	a5,-4
	j	.L48
.L62:
	li	a5,-1
	j	.L48
.L41:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L54
.L38:
	lw	a4,-44(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1680(a5)
	andi	a5,a5,1
	beq	a5,zero,.L55
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	lbu	a5,-21(s0)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a4,a5,3
	li	a5,1
	bne	a4,a5,.L56
	lbu	a5,-21(s0)
	addi	a4,a5,32
	j	.L57
.L56:
	lbu	a4,-21(s0)
.L57:
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	lbu	a5,-22(s0)
	addi	a3,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a3,a5
	lbu	a5,0(a5)
	andi	a3,a5,3
	li	a5,1
	bne	a3,a5,.L58
	lbu	a5,-22(s0)
	addi	a5,a5,32
	j	.L59
.L58:
	lbu	a5,-22(s0)
.L59:
	beq	a4,a5,.L60
	li	a5,-1
	j	.L48
.L55:
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a4,a5,.L60
	li	a5,-1
	j	.L48
.L60:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	nop
.L54:
	lw	a5,-20(s0)
.L48:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	match_op, .-match_op
	.align	2
	.type	match_set, @function
match_set:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	zero,-20(s0)
	li	a5,-1
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	addi	a5,a5,-94
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	beq	a5,zero,.L65
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a5,-56(s0)
	addi	a5,a5,-1
	sw	a5,-56(s0)
	j	.L65
.L82:
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,45
	beq	a4,a5,.L66
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,45
	bne	a4,a5,.L66
	lw	a5,-20(s0)
	addi	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,93
	beq	a4,a5,.L66
	lw	a5,-20(s0)
	addi	a5,a5,2
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L66
	lw	a4,-64(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1680(a5)
	beq	a5,zero,.L67
	lw	a5,-60(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	lw	a3,-52(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	bltu	a4,a5,.L68
	lw	a5,-60(s0)
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,2
	lw	a3,-52(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	bgtu	a4,a5,.L68
	li	a5,1
	j	.L69
.L68:
	li	a5,0
.L69:
	sw	a5,-24(s0)
	j	.L70
.L67:
	lw	a5,-60(s0)
	lbu	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a4,a5,3
	li	a5,1
	bne	a4,a5,.L71
	lw	a5,-32(s0)
	addi	a4,a5,32
	j	.L72
.L71:
	lw	a4,-32(s0)
.L72:
	lw	a5,-20(s0)
	lw	a3,-52(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	addi	a3,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a3,a5
	lbu	a5,0(a5)
	andi	a3,a5,3
	li	a5,1
	bne	a3,a5,.L73
	lw	a5,-36(s0)
	addi	a5,a5,32
	j	.L74
.L73:
	lw	a5,-36(s0)
.L74:
	blt	a4,a5,.L75
	lw	a5,-60(s0)
	lbu	a5,0(a5)
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a4,a5,3
	li	a5,1
	bne	a4,a5,.L76
	lw	a5,-40(s0)
	addi	a4,a5,32
	j	.L77
.L76:
	lw	a4,-40(s0)
.L77:
	lw	a5,-20(s0)
	addi	a5,a5,2
	lw	a3,-52(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	addi	a3,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a3,a5
	lbu	a5,0(a5)
	andi	a3,a5,3
	li	a5,1
	bne	a3,a5,.L78
	lw	a5,-44(s0)
	addi	a5,a5,32
	j	.L79
.L78:
	lw	a5,-44(s0)
.L79:
	bgt	a4,a5,.L75
	li	a5,1
	j	.L80
.L75:
	li	a5,0
.L80:
	sw	a5,-24(s0)
.L70:
	lw	a5,-20(s0)
	addi	a5,a5,3
	sw	a5,-20(s0)
	j	.L65
.L66:
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	lw	a2,-64(s0)
	lw	a1,-60(s0)
	mv	a0,a5
	call	match_op
	sw	a0,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	op_len
	mv	a4,a0
	lw	a5,-20(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
.L65:
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bgt	a4,a5,.L81
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,93
	beq	a4,a5,.L81
	lw	a5,-24(s0)
	ble	a5,zero,.L82
.L81:
	lw	a5,-28(s0)
	bne	a5,zero,.L83
	lw	a5,-24(s0)
	bgt	a5,zero,.L84
.L83:
	lw	a5,-28(s0)
	beq	a5,zero,.L85
	lw	a5,-24(s0)
	bgt	a5,zero,.L85
.L84:
	li	a5,1
	j	.L87
.L85:
	li	a5,-1
.L87:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	match_set, .-match_set
	.align	2
	.type	bar, @function
bar:
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	a4,-84(s0)
	sw	a5,-88(s0)
	sw	zero,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L89
.L128:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,40
	bne	a4,a5,.L90
	lw	a5,-88(s0)
	addi	a5,a5,1
	lw	a4,-84(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,4(a5)
	addi	a5,a5,2
	sw	a5,-32(s0)
	j	.L91
.L90:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a3,a4,a5
	lw	a4,-72(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	get_op_len
	sw	a0,-32(s0)
.L91:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	is_quantifier
	mv	a5,a0
	beq	a5,zero,.L92
	li	a5,-2
	j	.L93
.L92:
	lw	a5,-32(s0)
	bgt	a5,zero,.L94
	li	a5,-5
	j	.L93
.L94:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-72(s0)
	ble	a4,a5,.L95
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-68(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	is_quantifier
	mv	a5,a0
	beq	a5,zero,.L95
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	li	a5,63
	bne	a4,a5,.L96
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a0,a4,a5
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	add	a2,a4,a5
	lw	a4,-80(s0)
	lw	a5,-24(s0)
	sub	a3,a4,a5
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	lw	a1,-32(s0)
	call	bar
	sw	a0,-64(s0)
	lw	a5,-64(s0)
	bge	a5,zero,.L97
	li	a5,0
.L97:
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	j	.L129
.L96:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	li	a5,43
	beq	a4,a5,.L99
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	li	a5,42
	bne	a4,a5,.L129
.L99:
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	sw	a5,-40(s0)
	li	a5,-1
	sw	a5,-44(s0)
	sw	zero,-52(s0)
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	addi	a5,a5,1
	sw	a5,-48(s0)
	lw	a4,-48(s0)
	lw	a5,-72(s0)
	bge	a4,a5,.L107
	lw	a5,-48(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,63
	bne	a4,a5,.L107
	li	a5,1
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L107:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a0,a4,a5
	lw	a5,-36(s0)
	lw	a4,-76(s0)
	add	a2,a4,a5
	lw	a4,-80(s0)
	lw	a5,-36(s0)
	sub	a3,a4,a5
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	lw	a1,-32(s0)
	call	bar
	sw	a0,-60(s0)
	lw	a5,-60(s0)
	ble	a5,zero,.L101
	lw	a4,-36(s0)
	lw	a5,-60(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
.L101:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	li	a5,43
	bne	a4,a5,.L102
	lw	a5,-60(s0)
	blt	a5,zero,.L130
.L102:
	lw	a4,-48(s0)
	lw	a5,-72(s0)
	blt	a4,a5,.L104
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	j	.L105
.L104:
	lw	a5,-48(s0)
	lw	a4,-68(s0)
	add	a0,a4,a5
	lw	a4,-72(s0)
	lw	a5,-48(s0)
	sub	a1,a4,a5
	lw	a5,-36(s0)
	lw	a4,-76(s0)
	add	a2,a4,a5
	lw	a4,-80(s0)
	lw	a5,-36(s0)
	sub	a3,a4,a5
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	call	bar
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	blt	a5,zero,.L105
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
.L105:
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	ble	a4,a5,.L106
	lw	a5,-52(s0)
	bne	a5,zero,.L131
.L106:
	lw	a5,-60(s0)
	bgt	a5,zero,.L107
	j	.L103
.L130:
	nop
	j	.L103
.L131:
	nop
.L103:
	lw	a5,-60(s0)
	bge	a5,zero,.L108
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	li	a5,42
	bne	a4,a5,.L108
	lw	a5,-48(s0)
	lw	a4,-68(s0)
	add	a0,a4,a5
	lw	a4,-72(s0)
	lw	a5,-48(s0)
	sub	a1,a4,a5
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	add	a2,a4,a5
	lw	a4,-80(s0)
	lw	a5,-24(s0)
	sub	a3,a4,a5
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	call	bar
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	ble	a5,zero,.L108
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
.L108:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	mv	a4,a5
	lw	a5,-68(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	li	a5,43
	bne	a4,a5,.L109
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L109
	li	a5,-1
	j	.L93
.L109:
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	bne	a4,a5,.L110
	lw	a4,-48(s0)
	lw	a5,-72(s0)
	bge	a4,a5,.L110
	lw	a5,-44(s0)
	bge	a5,zero,.L110
	li	a5,-1
	j	.L93
.L110:
	lw	a5,-40(s0)
	j	.L93
.L95:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,91
	bne	a4,a5,.L112
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-68(s0)
	add	a0,a4,a5
	lw	a5,-20(s0)
	addi	a5,a5,2
	lw	a4,-72(s0)
	sub	a1,a4,a5
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	add	a5,a4,a5
	lw	a3,-84(s0)
	mv	a2,a5
	call	match_set
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	bgt	a5,zero,.L113
	li	a5,-1
	j	.L93
.L113:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	j	.L111
.L112:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,40
	bne	a4,a5,.L114
	li	a5,-1
	sw	a5,-28(s0)
	lw	a5,-88(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
	lw	a5,-84(s0)
	lw	a5,1600(a5)
	lw	a4,-88(s0)
	blt	a4,a5,.L115
	li	a5,-4
	j	.L93
.L115:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-72(s0)
	sub	a5,a4,a5
	bgt	a5,zero,.L116
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	add	a0,a4,a5
	lw	a4,-80(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	lw	a3,-88(s0)
	lw	a2,-84(s0)
	mv	a1,a5
	call	doh
	sw	a0,-28(s0)
	j	.L117
.L116:
	sw	zero,-56(s0)
	j	.L118
.L120:
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	add	a0,a4,a5
	lw	a4,-24(s0)
	lw	a5,-56(s0)
	add	a5,a4,a5
	lw	a4,-80(s0)
	sub	a5,a4,a5
	lw	a3,-88(s0)
	lw	a2,-84(s0)
	mv	a1,a5
	call	doh
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	blt	a5,zero,.L119
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-68(s0)
	add	a0,a4,a5
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-72(s0)
	sub	a1,a4,a5
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lw	a4,-76(s0)
	add	a2,a4,a5
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lw	a4,-80(s0)
	sub	a3,a4,a5
	lw	a5,-88(s0)
	lw	a4,-84(s0)
	call	bar
	mv	a5,a0
	bge	a5,zero,.L132
.L119:
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L118:
	lw	a4,-80(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	lw	a4,-56(s0)
	ble	a4,a5,.L120
	j	.L117
.L132:
	nop
.L117:
	lw	a5,-28(s0)
	bge	a5,zero,.L121
	lw	a5,-28(s0)
	j	.L93
.L121:
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1688(a5)
	beq	a5,zero,.L122
	lw	a4,-24(s0)
	lw	a3,-84(s0)
	li	a5,4096
	add	a5,a3,a5
	lw	a3,-1688(a5)
	lw	a2,-88(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a2,a5
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a3,-76(s0)
	add	a4,a3,a4
	sw	a4,0(a5)
	lw	a4,-84(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,-1688(a5)
	lw	a3,-88(s0)
	li	a5,536870912
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,4(a5)
.L122:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	j	.L111
.L114:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,94
	bne	a4,a5,.L123
	lw	a5,-24(s0)
	beq	a5,zero,.L111
	li	a5,-1
	j	.L93
.L123:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,36
	bne	a4,a5,.L124
	lw	a4,-24(s0)
	lw	a5,-80(s0)
	beq	a4,a5,.L111
	li	a5,-1
	j	.L93
.L124:
	lw	a4,-24(s0)
	lw	a5,-80(s0)
	blt	a4,a5,.L125
	li	a5,-1
	j	.L93
.L125:
	lw	a5,-20(s0)
	lw	a4,-68(s0)
	add	a3,a4,a5
	lw	a5,-24(s0)
	lw	a4,-76(s0)
	add	a5,a4,a5
	lw	a2,-84(s0)
	mv	a1,a5
	mv	a0,a3
	call	match_op
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	bgt	a5,zero,.L126
	lw	a5,-28(s0)
	j	.L93
.L126:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	j	.L111
.L129:
	nop
.L111:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L89:
	lw	a4,-20(s0)
	lw	a5,-72(s0)
	bge	a4,a5,.L127
	lw	a4,-24(s0)
	lw	a5,-80(s0)
	ble	a4,a5,.L128
.L127:
	lw	a5,-24(s0)
.L93:
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jr	ra
	.size	bar, .-bar
	.align	2
	.type	doh, @function
doh:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	lw	a5,-64(s0)
	slli	a5,a5,4
	lw	a4,-60(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	sw	zero,-20(s0)
.L140:
	lw	a5,-20(s0)
	bne	a5,zero,.L134
	lw	a5,-32(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	j	.L135
.L134:
	lw	a5,-32(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	add	a5,a4,a5
	addi	a5,a5,-1
	lw	a4,-60(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,8(a5)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L135:
	lw	a5,-32(s0)
	lw	a5,12(a5)
	bne	a5,zero,.L136
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	j	.L137
.L136:
	lw	a5,-32(s0)
	lw	a5,12(a5)
	lw	a4,-20(s0)
	bne	a4,a5,.L138
	lw	a5,-32(s0)
	lw	a5,0(a5)
	lw	a4,-32(s0)
	lw	a4,4(a4)
	add	a4,a5,a4
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	j	.L137
.L138:
	lw	a5,-32(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lw	a4,-60(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,8(a5)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-24(s0)
.L137:
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	lw	a3,-56(s0)
	lw	a2,-52(s0)
	lw	a1,-24(s0)
	lw	a0,-28(s0)
	call	bar
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bgt	a5,zero,.L139
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lw	a4,-32(s0)
	lw	a4,12(a4)
	blt	a5,a4,.L140
.L139:
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	doh, .-doh
	.align	2
	.type	baz, @function
baz:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	li	a5,-1
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	lw	a5,0(a5)
	lbu	a5,0(a5)
	addi	a5,a5,-94
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	sw	zero,-20(s0)
	j	.L143
.L147:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a0,a4,a5
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	li	a3,0
	lw	a2,-44(s0)
	mv	a1,a5
	call	doh
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	blt	a5,zero,.L144
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	j	.L145
.L144:
	lw	a5,-28(s0)
	bne	a5,zero,.L149
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L143:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	ble	a4,a5,.L147
	j	.L145
.L149:
	nop
.L145:
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	baz, .-baz
	.align	2
	.type	setup_branch_points, @function
setup_branch_points:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L151
.L155:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L152
.L154:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	lw	a3,-36(s0)
	lw	a5,-24(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a5,4(a5)
	ble	a4,a5,.L153
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,4(a5)
	sw	a4,-32(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a3,-36(s0)
	lw	a4,-24(s0)
	addi	a4,a4,200
	slli	a4,a4,3
	add	a4,a3,a4
	lw	a3,4(a4)
	sw	a3,4(a5)
	lw	a4,8(a4)
	sw	a4,8(a5)
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a4,-28(s0)
	sw	a4,8(a5)
.L153:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L152:
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1692(a5)
	lw	a4,-24(s0)
	blt	a4,a5,.L154
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L151:
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1692(a5)
	lw	a4,-20(s0)
	blt	a4,a5,.L155
	sw	zero,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L156
.L160:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	sw	zero,12(a5)
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,8(a5)
	j	.L157
.L159:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a5,12(a5)
	addi	a4,a5,1
	lw	a3,-36(s0)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	sw	a4,12(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L157:
	lw	a4,-36(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1692(a5)
	lw	a4,-24(s0)
	bge	a4,a5,.L158
	lw	a4,-36(s0)
	lw	a5,-24(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	lw	a4,-20(s0)
	beq	a4,a5,.L159
.L158:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L156:
	lw	a5,-36(s0)
	lw	a5,1600(a5)
	lw	a4,-20(s0)
	blt	a4,a5,.L160
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	setup_branch_points, .-setup_branch_points
	.align	2
	.type	foo, @function
foo:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-52(s0)
	sw	zero,-24(s0)
	lw	a5,-52(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lw	a5,-52(s0)
	li	a4,1
	sw	a4,1600(a5)
	sw	zero,-20(s0)
	j	.L162
.L179:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a3,a4,a5
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	get_op_len
	sw	a0,-32(s0)
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,124
	bne	a4,a5,.L163
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a4,-1692(a5)
	li	a5,99
	ble	a4,a5,.L164
	li	a5,-8
	j	.L165
.L164:
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	addi	a5,a5,-1
	lw	a4,-52(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,4(a5)
	li	a5,-1
	bne	a4,a5,.L166
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	addi	a4,a5,-1
	j	.L167
.L166:
	lw	a4,-24(s0)
.L167:
	lw	a3,-52(s0)
	li	a5,4096
	add	a5,a3,a5
	lw	a5,-1692(a5)
	lw	a3,-52(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a3,a5
	sw	a4,4(a5)
	lw	a4,-20(s0)
	lw	a3,-52(s0)
	li	a5,4096
	add	a5,a3,a5
	lw	a5,-1692(a5)
	lw	a3,-36(s0)
	add	a4,a3,a4
	lw	a3,-52(s0)
	addi	a5,a5,200
	slli	a5,a5,3
	add	a5,a3,a5
	sw	a4,8(a5)
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1692(a5)
	addi	a4,a5,1
	lw	a3,-52(s0)
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-1692(a5)
	j	.L168
.L163:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,92
	bne	a4,a5,.L169
	lw	a5,-40(s0)
	addi	a5,a5,-1
	lw	a4,-20(s0)
	blt	a4,a5,.L170
	li	a5,-6
	j	.L165
.L170:
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,120
	bne	a4,a5,.L171
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,120
	bne	a4,a5,.L172
	lw	a5,-40(s0)
	addi	a5,a5,-3
	lw	a4,-20(s0)
	blt	a4,a5,.L172
	li	a5,-6
	j	.L165
.L172:
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,120
	bne	a4,a5,.L168
	lw	a5,-20(s0)
	addi	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,68
	beq	a5,zero,.L173
	lw	a5,-20(s0)
	addi	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(_ctype_)
	addi	a5,a5,%lo(_ctype_)
	add	a5,a4,a5
	lbu	a5,0(a5)
	andi	a5,a5,68
	bne	a5,zero,.L168
.L173:
	li	a5,-6
	j	.L165
.L171:
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	is_metacharacter
	mv	a5,a0
	bne	a5,zero,.L168
	li	a5,-6
	j	.L165
.L169:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,40
	bne	a4,a5,.L174
	lw	a5,-52(s0)
	lw	a4,1600(a5)
	li	a5,99
	ble	a4,a5,.L175
	li	a5,-9
	j	.L165
.L175:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addi	a4,a5,1
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	lw	a3,-36(s0)
	add	a4,a3,a4
	lw	a3,-52(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	lw	a4,-52(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,-1
	sw	a4,4(a5)
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	addi	a4,a5,1
	lw	a5,-52(s0)
	sw	a4,1600(a5)
	lw	a4,-52(s0)
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1684(a5)
	ble	a5,zero,.L168
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	addi	a4,a5,-1
	lw	a3,-52(s0)
	li	a5,4096
	add	a5,a3,a5
	lw	a5,-1684(a5)
	ble	a4,a5,.L168
	li	a5,-7
	j	.L165
.L174:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,41
	bne	a4,a5,.L168
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	addi	a5,a5,-1
	lw	a4,-52(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lw	a4,4(a5)
	li	a5,-1
	bne	a4,a5,.L176
	lw	a5,-52(s0)
	lw	a5,1600(a5)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	j	.L177
.L176:
	lw	a5,-24(s0)
	sw	a5,-28(s0)
.L177:
	lw	a5,-20(s0)
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a3,-52(s0)
	lw	a5,-28(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	lw	a5,0(a5)
	sub	a4,a4,a5
	lw	a3,-52(s0)
	lw	a5,-28(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	sw	a4,4(a5)
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bge	a5,zero,.L178
	li	a5,-3
	j	.L165
.L178:
	lw	a5,-20(s0)
	ble	a5,zero,.L168
	lw	a5,-20(s0)
	addi	a5,a5,-1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	li	a5,40
	bne	a4,a5,.L168
	li	a5,-1
	j	.L165
.L168:
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L162:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L179
	lw	a5,-24(s0)
	beq	a5,zero,.L180
	li	a5,-3
	j	.L165
.L180:
	lw	a0,-52(s0)
	call	setup_branch_points
	lw	a2,-52(s0)
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	baz
	mv	a5,a0
.L165:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	foo, .-foo
	.section	.rodata
	.align	2
.LC0:
	.string	"(?i)"
	.text
	.align	2
	.globl	slre_match
	.type	slre_match, @function
slre_match:
	addi	sp,sp,-2032
	sw	ra,2028(sp)
	sw	s0,2024(sp)
	addi	s0,sp,2032
	addi	sp,sp,-448
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a0,1660(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a1,1656(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,1652(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,1648(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,1644(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	add	a5,a4,a5
	sw	zero,-16(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	add	a5,a4,a5
	lw	a4,-16(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-820(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	add	a5,a4,a5
	lw	a4,-820(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-4(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	add	a5,a4,a5
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,1644(a4)
	sw	a4,-8(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	add	a5,a4,a5
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,1648(a4)
	sw	a4,-12(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a2,4
	lui	a4,%hi(.LC0)
	addi	a1,a4,%lo(.LC0)
	lw	a0,1660(a5)
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L182
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-4(a5)
	ori	a4,a5,1
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-4(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,1660(a4)
	addi	a4,a4,4
	sw	a4,1660(a5)
.L182:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a0,1660(a5)
	call	strlen
	mv	a5,a0
	mv	a1,a5
	li	a5,-4096
	addi	a5,a5,1676
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a2,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,1652(a3)
	lw	a2,1656(a2)
	lw	a0,1660(a5)
	call	foo
	mv	a5,a0
	mv	a0,a5
	addi	sp,sp,448
	lw	ra,2028(sp)
	lw	s0,2024(sp)
	addi	sp,sp,2032
	jr	ra
	.size	slre_match, .-slre_match
	.globl	text
	.data
	.align	2
	.type	text, @object
	.size	text, 46
text:
	.string	"abbbababaabccababcacbcbcbabbabcbabcabcbbcbbac"
	.globl	regexes
	.section	.rodata
	.align	2
.LC1:
	.string	"(ab)+"
	.align	2
.LC2:
	.string	"(b.+)+"
	.align	2
.LC3:
	.string	"a[ab]*"
	.align	2
.LC4:
	.string	"([ab^c][ab^c])+"
	.data
	.align	2
	.type	regexes, @object
	.size	regexes, 16
regexes:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
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
	li	a0,110
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
	j	.L190
.L193:
	lui	a5,%hi(text)
	addi	a0,a5,%lo(text)
	call	strlen
	mv	a5,a0
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	sw	zero,-24(s0)
	j	.L191
.L192:
	lui	a5,%hi(regexes)
	addi	a4,a5,%lo(regexes)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a0,0(a5)
	addi	a5,s0,-40
	li	a4,1
	mv	a3,a5
	lw	a2,-28(s0)
	lui	a5,%hi(text)
	addi	a1,a5,%lo(text)
	call	slre_match
	mv	a4,a0
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L191:
	lw	a4,-24(s0)
	li	a5,3
	ble	a4,a5,.L192
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L190:
	lw	a4,-20(s0)
	lw	a5,-52(s0)
	blt	a4,a5,.L193
	lw	a5,-32(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
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
	addi	a5,a5,-102
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	verify_benchmark, .-verify_benchmark
	.section	.rodata
	.align	2
.LC5:
	.string	"^$().[]*+?|\\Ssd"
	.section	.sdata,"aw"
	.align	2
	.type	metacharacters.0, @object
	.size	metacharacters.0, 4
metacharacters.0:
	.word	.LC5
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
