	.file	"combined.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	heap
	.comm	heap,8192,16
	.section	.rodata
	.align	2
	.type	array, @object
	.size	array, 400
array:
	.word	14
	.word	66
	.word	12
	.word	41
	.word	86
	.word	69
	.word	19
	.word	77
	.word	68
	.word	38
	.word	26
	.word	42
	.word	37
	.word	23
	.word	17
	.word	29
	.word	55
	.word	13
	.word	90
	.word	92
	.word	76
	.word	99
	.word	10
	.word	54
	.word	57
	.word	83
	.word	40
	.word	44
	.word	75
	.word	33
	.word	24
	.word	28
	.word	80
	.word	18
	.word	78
	.word	32
	.word	93
	.word	89
	.word	52
	.word	11
	.word	21
	.word	96
	.word	50
	.word	15
	.word	48
	.word	63
	.word	87
	.word	20
	.word	8
	.word	85
	.word	43
	.word	16
	.word	94
	.word	88
	.word	53
	.word	84
	.word	74
	.word	91
	.word	67
	.word	36
	.word	95
	.word	61
	.word	64
	.word	5
	.word	30
	.word	82
	.word	72
	.word	46
	.word	59
	.word	9
	.word	7
	.word	3
	.word	39
	.word	31
	.word	4
	.word	73
	.word	70
	.word	60
	.word	58
	.word	81
	.word	56
	.word	51
	.word	45
	.word	1
	.word	6
	.word	49
	.word	27
	.word	47
	.word	34
	.word	35
	.word	62
	.word	97
	.word	2
	.word	79
	.word	98
	.word	25
	.word	22
	.word	65
	.word	71
	.word	0
	.globl	array2
	.bss
	.align	2
	.type	array2, @object
	.size	array2, 400
array2:
	.zero	400
	.text
	.align	2
	.globl	sglib_dllist_add
	.type	sglib_dllist_add, @function
sglib_dllist_add:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L2
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	zero,8(a5)
	lw	a4,-20(s0)
	lw	a4,0(a4)
	lw	a5,8(a5)
	sw	a5,4(a4)
	j	.L1
.L2:
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L1
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
.L1:
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_dllist_add, .-sglib_dllist_add
	.align	2
	.globl	sglib_dllist_add_after
	.type	sglib_dllist_add_after, @function
sglib_dllist_add_after:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	zero,8(a5)
	lw	a4,-20(s0)
	lw	a4,0(a4)
	lw	a5,8(a5)
	sw	a5,4(a4)
	j	.L4
.L5:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,4(a5)
	lw	a5,-24(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L4
	lw	a5,-24(s0)
	lw	a5,4(a5)
	lw	a4,-24(s0)
	sw	a4,8(a5)
.L4:
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_dllist_add_after, .-sglib_dllist_add_after
	.align	2
	.globl	sglib_dllist_add_before
	.type	sglib_dllist_add_before, @function
sglib_dllist_add_before:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L8
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sw	zero,8(a5)
	lw	a4,-20(s0)
	lw	a4,0(a4)
	lw	a5,8(a5)
	sw	a5,4(a4)
	j	.L7
.L8:
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,8(a5)
	lw	a5,-24(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L7
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
.L7:
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_dllist_add_before, .-sglib_dllist_add_before
	.align	2
	.globl	sglib_dllist_add_if_not_member
	.type	sglib_dllist_add_if_not_member, @function
sglib_dllist_add_if_not_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L11
.L13:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	beq	a5,zero,.L12
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L13
.L12:
	lw	a5,-20(s0)
	bne	a5,zero,.L14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L14
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L15
.L16:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L15:
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L16
.L14:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	bne	a5,zero,.L17
	lw	a5,-36(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L18
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	zero,8(a5)
	lw	a4,-36(s0)
	lw	a4,0(a4)
	lw	a5,8(a5)
	sw	a5,4(a4)
	j	.L17
.L18:
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,8(a5)
	lw	a5,-40(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a5,-40(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L17
	lw	a5,-40(s0)
	lw	a5,8(a5)
	lw	a4,-40(s0)
	sw	a4,4(a5)
.L17:
	lw	a5,-44(s0)
	lw	a5,0(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_add_if_not_member, .-sglib_dllist_add_if_not_member
	.align	2
	.globl	sglib_dllist_add_after_if_not_member
	.type	sglib_dllist_add_after_if_not_member, @function
sglib_dllist_add_after_if_not_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L21
.L23:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L21:
	lw	a5,-20(s0)
	beq	a5,zero,.L22
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L23
.L22:
	lw	a5,-20(s0)
	bne	a5,zero,.L24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L25
.L26:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L25:
	lw	a5,-20(s0)
	beq	a5,zero,.L24
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L26
.L24:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	bne	a5,zero,.L27
	lw	a5,-36(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L28
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	zero,8(a5)
	lw	a4,-36(s0)
	lw	a4,0(a4)
	lw	a5,8(a5)
	sw	a5,4(a4)
	j	.L27
.L28:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,4(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L27
	lw	a5,-40(s0)
	lw	a5,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
.L27:
	lw	a5,-44(s0)
	lw	a5,0(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_add_after_if_not_member, .-sglib_dllist_add_after_if_not_member
	.align	2
	.globl	sglib_dllist_add_before_if_not_member
	.type	sglib_dllist_add_before_if_not_member, @function
sglib_dllist_add_before_if_not_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L31
.L33:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L31:
	lw	a5,-20(s0)
	beq	a5,zero,.L32
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L33
.L32:
	lw	a5,-20(s0)
	bne	a5,zero,.L34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L34
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L35
.L36:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L35:
	lw	a5,-20(s0)
	beq	a5,zero,.L34
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L36
.L34:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	bne	a5,zero,.L37
	lw	a5,-36(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L38
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	zero,8(a5)
	lw	a4,-36(s0)
	lw	a4,0(a4)
	lw	a5,8(a5)
	sw	a5,4(a4)
	j	.L37
.L38:
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,8(a5)
	lw	a5,-40(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a5,-40(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L37
	lw	a5,-40(s0)
	lw	a5,8(a5)
	lw	a4,-40(s0)
	sw	a4,4(a5)
.L37:
	lw	a5,-44(s0)
	lw	a5,0(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_add_before_if_not_member, .-sglib_dllist_add_before_if_not_member
	.align	2
	.globl	sglib_dllist_concat
	.type	sglib_dllist_concat, @function
sglib_dllist_concat:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L41
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	j	.L46
.L41:
	lw	a5,-40(s0)
	beq	a5,zero,.L46
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L43
.L44:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L43:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	bne	a5,zero,.L44
	lw	a5,-20(s0)
	bne	a5,zero,.L45
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sw	zero,8(a5)
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	j	.L46
.L45:
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lw	a5,-40(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L46
	lw	a5,-40(s0)
	lw	a5,4(a5)
	lw	a4,-40(s0)
	sw	a4,8(a5)
.L46:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_concat, .-sglib_dllist_concat
	.align	2
	.globl	sglib_dllist_delete
	.type	sglib_dllist_delete, @function
sglib_dllist_delete:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L48
	lw	a5,-40(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L49
	lw	a5,-40(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	j	.L48
.L49:
	lw	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L48:
	lw	a5,-40(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L50
	lw	a5,-40(s0)
	lw	a5,4(a5)
	lw	a4,-40(s0)
	lw	a4,8(a4)
	sw	a4,8(a5)
.L50:
	lw	a5,-40(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L51
	lw	a5,-40(s0)
	lw	a5,8(a5)
	lw	a4,-40(s0)
	lw	a4,4(a4)
	sw	a4,4(a5)
.L51:
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_delete, .-sglib_dllist_delete
	.align	2
	.globl	sglib_dllist_delete_if_member
	.type	sglib_dllist_delete_if_member, @function
sglib_dllist_delete_if_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L53
.L55:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L53:
	lw	a5,-20(s0)
	beq	a5,zero,.L54
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L55
.L54:
	lw	a5,-20(s0)
	bne	a5,zero,.L56
	lw	a5,-36(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L56
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L57
.L58:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L57:
	lw	a5,-20(s0)
	beq	a5,zero,.L56
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L58
.L56:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	beq	a5,zero,.L59
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L60
	lw	a5,-20(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L61
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	j	.L60
.L61:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
.L60:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L62
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a4,-20(s0)
	lw	a4,8(a4)
	sw	a4,8(a5)
.L62:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L63
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a4,-20(s0)
	lw	a4,4(a4)
	sw	a4,4(a5)
.L63:
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
.L59:
	lw	a5,-44(s0)
	lw	a5,0(a5)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_delete_if_member, .-sglib_dllist_delete_if_member
	.align	2
	.globl	sglib_dllist_is_member
	.type	sglib_dllist_is_member, @function
sglib_dllist_is_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	j	.L66
.L68:
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
.L66:
	lw	a5,-24(s0)
	beq	a5,zero,.L67
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L68
.L67:
	lw	a5,-24(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L69
	lw	a5,-36(s0)
	beq	a5,zero,.L69
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	j	.L70
.L72:
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
.L70:
	lw	a5,-28(s0)
	beq	a5,zero,.L71
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L72
.L71:
	lw	a5,-28(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
.L69:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_is_member, .-sglib_dllist_is_member
	.align	2
	.globl	sglib_dllist_find_member
	.type	sglib_dllist_find_member, @function
sglib_dllist_find_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	j	.L75
.L77:
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
.L75:
	lw	a5,-24(s0)
	beq	a5,zero,.L76
	lw	a5,-24(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L77
.L76:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L78
	lw	a5,-36(s0)
	beq	a5,zero,.L78
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	j	.L79
.L81:
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
.L79:
	lw	a5,-28(s0)
	beq	a5,zero,.L80
	lw	a5,-28(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L81
.L80:
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L78:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_find_member, .-sglib_dllist_find_member
	.align	2
	.globl	sglib_dllist_get_first
	.type	sglib_dllist_get_first, @function
sglib_dllist_get_first:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L84
	j	.L85
.L86:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L85:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	bne	a5,zero,.L86
.L84:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_get_first, .-sglib_dllist_get_first
	.align	2
	.globl	sglib_dllist_get_last
	.type	sglib_dllist_get_last, @function
sglib_dllist_get_last:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L89
	j	.L90
.L91:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L90:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	bne	a5,zero,.L91
.L89:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_get_last, .-sglib_dllist_get_last
	.align	2
	.globl	sglib_dllist_sort
	.type	sglib_dllist_sort, @function
sglib_dllist_sort:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	lw	a5,-68(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L121
	j	.L95
.L96:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L95:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	bne	a5,zero,.L96
	lw	a5,-20(s0)
	sw	a5,-64(s0)
	li	a5,1
	sw	a5,-52(s0)
	li	a5,1
	sw	a5,-48(s0)
	j	.L97
.L118:
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	sw	zero,-64(s0)
	addi	a5,s0,-64
	sw	a5,-40(s0)
	sw	zero,-52(s0)
	j	.L98
.L117:
	lw	a5,-32(s0)
	sw	a5,-24(s0)
	li	a5,1
	sw	a5,-44(s0)
	lw	a5,-24(s0)
	sw	a5,-36(s0)
	j	.L99
.L101:
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
.L99:
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bge	a4,a5,.L100
	lw	a5,-36(s0)
	bne	a5,zero,.L101
.L100:
	lw	a5,-36(s0)
	bne	a5,zero,.L102
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L103
.L102:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	sw	zero,4(a5)
	li	a5,1
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	sw	a5,-36(s0)
	j	.L104
.L106:
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-36(s0)
.L104:
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	bge	a4,a5,.L105
	lw	a5,-36(s0)
	bne	a5,zero,.L106
.L105:
	lw	a5,-36(s0)
	bne	a5,zero,.L107
	sw	zero,-32(s0)
	j	.L109
.L107:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	sw	zero,4(a5)
	j	.L109
.L112:
	lw	a5,-24(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	bge	a5,zero,.L110
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	j	.L109
.L110:
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,4
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
.L109:
	lw	a5,-24(s0)
	beq	a5,zero,.L111
	lw	a5,-28(s0)
	bne	a5,zero,.L112
.L111:
	lw	a5,-24(s0)
	beq	a5,zero,.L113
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L115
.L113:
	lw	a5,-40(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	j	.L115
.L116:
	lw	a5,-40(s0)
	lw	a5,0(a5)
	addi	a5,a5,4
	sw	a5,-40(s0)
.L115:
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L116
	li	a5,1
	sw	a5,-52(s0)
.L98:
	lw	a5,-32(s0)
	bne	a5,zero,.L117
.L103:
	lw	a5,-48(s0)
	slli	a5,a5,1
	sw	a5,-48(s0)
.L97:
	lw	a5,-52(s0)
	bne	a5,zero,.L118
	lw	a5,-64(s0)
	sw	a5,-20(s0)
	sw	zero,-56(s0)
	lw	a5,-20(s0)
	sw	a5,-60(s0)
	j	.L119
.L120:
	lw	a5,-60(s0)
	lw	a4,-56(s0)
	sw	a4,8(a5)
	lw	a5,-60(s0)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	lw	a5,4(a5)
	sw	a5,-60(s0)
.L119:
	lw	a5,-60(s0)
	bne	a5,zero,.L120
	lw	a5,-68(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L121:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	sglib_dllist_sort, .-sglib_dllist_sort
	.align	2
	.globl	sglib_dllist_len
	.type	sglib_dllist_len, @function
sglib_dllist_len:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	lw	a5,-52(s0)
	bne	a5,zero,.L123
	sw	zero,-20(s0)
	j	.L124
.L123:
	sw	zero,-24(s0)
	lw	a5,-52(s0)
	sw	a5,-32(s0)
	j	.L125
.L126:
	lw	a5,-32(s0)
	lw	a5,8(a5)
	sw	a5,-48(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-48(s0)
	sw	a5,-32(s0)
.L125:
	lw	a5,-32(s0)
	bne	a5,zero,.L126
	lw	a5,-52(s0)
	lw	a5,4(a5)
	sw	a5,-40(s0)
	sw	zero,-28(s0)
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	j	.L127
.L128:
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-44(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	sw	a5,-36(s0)
.L127:
	lw	a5,-36(s0)
	bne	a5,zero,.L128
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
.L124:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	sglib_dllist_len, .-sglib_dllist_len
	.align	2
	.globl	sglib_dllist_reverse
	.type	sglib_dllist_reverse, @function
sglib_dllist_reverse:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L136
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	j	.L132
.L133:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	sw	a5,-20(s0)
.L132:
	lw	a5,-20(s0)
	bne	a5,zero,.L133
	j	.L134
.L135:
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	sw	a4,4(a5)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	sw	a5,-24(s0)
.L134:
	lw	a5,-24(s0)
	bne	a5,zero,.L135
.L136:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_reverse, .-sglib_dllist_reverse
	.align	2
	.globl	sglib_dllist_it_init_on_equal
	.type	sglib_dllist_it_init_on_equal, @function
sglib_dllist_it_init_on_equal:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,16(a5)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	beq	a5,zero,.L138
	lw	a5,-24(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	sw	a4,8(a5)
.L138:
	lw	a0,-20(s0)
	call	sglib_dllist_it_next
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_dllist_it_init_on_equal, .-sglib_dllist_it_init_on_equal
	.align	2
	.globl	sglib_dllist_it_init
	.type	sglib_dllist_it_init, @function
sglib_dllist_it_init:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a3,0
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib_dllist_it_init_on_equal
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_dllist_it_init, .-sglib_dllist_it_init
	.align	2
	.globl	sglib_dllist_it_current
	.type	sglib_dllist_it_current, @function
sglib_dllist_it_current:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_dllist_it_current, .-sglib_dllist_it_current
	.align	2
	.globl	sglib_dllist_it_next
	.type	sglib_dllist_it_next, @function
sglib_dllist_it_next:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	sw	zero,4(a5)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L145
	lw	a5,-36(s0)
	lw	a5,16(a5)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
	j	.L146
.L147:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
.L146:
	lw	a5,-20(s0)
	beq	a5,zero,.L145
	lw	a5,-28(s0)
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L147
.L145:
	lw	a5,-20(s0)
	beq	a5,zero,.L148
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
	j	.L149
.L148:
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	sw	zero,8(a5)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L150
	lw	a5,-36(s0)
	lw	a5,16(a5)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
	j	.L151
.L152:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L151:
	lw	a5,-20(s0)
	beq	a5,zero,.L150
	lw	a5,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L152
.L150:
	lw	a5,-20(s0)
	beq	a5,zero,.L149
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-36(s0)
	sw	a4,8(a5)
.L149:
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_dllist_it_next, .-sglib_dllist_it_next
	.globl	the_list
	.section	.sbss,"aw",@nobits
	.align	2
	.type	the_list, @object
	.size	the_list, 4
the_list:
	.zero	4
	.globl	htab
	.bss
	.align	2
	.type	htab, @object
	.size	htab, 80
htab:
	.zero	80
	.text
	.align	2
	.globl	ilist_hash_function
	.type	ilist_hash_function, @function
ilist_hash_function:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	ilist_hash_function, .-ilist_hash_function
	.align	2
	.globl	sglib_ilist_is_member
	.type	sglib_ilist_is_member, @function
sglib_ilist_is_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L157
.L159:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L157:
	lw	a5,-20(s0)
	beq	a5,zero,.L158
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L159
.L158:
	lw	a5,-20(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_is_member, .-sglib_ilist_is_member
	.align	2
	.globl	sglib_ilist_find_member
	.type	sglib_ilist_find_member, @function
sglib_ilist_find_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L162
.L164:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L162:
	lw	a5,-20(s0)
	beq	a5,zero,.L163
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L164
.L163:
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_find_member, .-sglib_ilist_find_member
	.align	2
	.globl	sglib_ilist_add_if_not_member
	.type	sglib_ilist_add_if_not_member, @function
sglib_ilist_add_if_not_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L167
.L169:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L167:
	lw	a5,-20(s0)
	beq	a5,zero,.L168
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L169
.L168:
	lw	a5,-44(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	bne	a5,zero,.L170
	lw	a5,-36(s0)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	sw	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L170:
	lw	a5,-44(s0)
	lw	a5,0(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_add_if_not_member, .-sglib_ilist_add_if_not_member
	.align	2
	.globl	sglib_ilist_add
	.type	sglib_ilist_add, @function
sglib_ilist_add:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_ilist_add, .-sglib_ilist_add
	.align	2
	.globl	sglib_ilist_concat
	.type	sglib_ilist_concat, @function
sglib_ilist_concat:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L174
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	j	.L178
.L174:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L176
.L177:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L176:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	bne	a5,zero,.L177
	lw	a5,-20(s0)
	lw	a4,-40(s0)
	sw	a4,4(a5)
.L178:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_concat, .-sglib_ilist_concat
	.align	2
	.globl	sglib_ilist_delete
	.type	sglib_ilist_delete, @function
sglib_ilist_delete:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L180
.L182:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L180:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L181
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,-40(s0)
	bne	a4,a5,.L182
.L181:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_delete, .-sglib_ilist_delete
	.align	2
	.globl	sglib_ilist_delete_if_member
	.type	sglib_ilist_delete_if_member, @function
sglib_ilist_delete_if_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L184
.L186:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L184:
	lw	a5,-20(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L185
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,0(a5)
	lw	a5,-40(s0)
	lw	a5,0(a5)
	bne	a4,a5,.L186
.L185:
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-44(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L187
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	sw	a4,0(a5)
.L187:
	lw	a5,-44(s0)
	lw	a5,0(a5)
	snez	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_delete_if_member, .-sglib_ilist_delete_if_member
	.align	2
	.globl	sglib_ilist_sort
	.type	sglib_ilist_sort, @function
sglib_ilist_sort:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	lw	a5,-68(s0)
	lw	a5,0(a5)
	sw	a5,-52(s0)
	li	a5,1
	sw	a5,-48(s0)
	li	a5,1
	sw	a5,-44(s0)
	j	.L190
.L211:
	lw	a5,-52(s0)
	sw	a5,-28(s0)
	sw	zero,-52(s0)
	addi	a5,s0,-52
	sw	a5,-36(s0)
	sw	zero,-48(s0)
	j	.L191
.L210:
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-40(s0)
	lw	a5,-20(s0)
	sw	a5,-32(s0)
	j	.L192
.L194:
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
.L192:
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	bge	a4,a5,.L193
	lw	a5,-32(s0)
	bne	a5,zero,.L194
.L193:
	lw	a5,-32(s0)
	bne	a5,zero,.L195
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L196
.L195:
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	lw	a5,-32(s0)
	sw	zero,4(a5)
	li	a5,1
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	j	.L197
.L199:
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-32(s0)
.L197:
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	bge	a4,a5,.L198
	lw	a5,-32(s0)
	bne	a5,zero,.L199
.L198:
	lw	a5,-32(s0)
	bne	a5,zero,.L200
	sw	zero,-28(s0)
	j	.L202
.L200:
	lw	a5,-32(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sw	zero,4(a5)
	j	.L202
.L205:
	lw	a5,-20(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	bge	a5,zero,.L203
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	j	.L202
.L203:
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
.L202:
	lw	a5,-20(s0)
	beq	a5,zero,.L204
	lw	a5,-24(s0)
	bne	a5,zero,.L205
.L204:
	lw	a5,-20(s0)
	beq	a5,zero,.L206
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L208
.L206:
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	j	.L208
.L209:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	addi	a5,a5,4
	sw	a5,-36(s0)
.L208:
	lw	a5,-36(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L209
	li	a5,1
	sw	a5,-48(s0)
.L191:
	lw	a5,-28(s0)
	bne	a5,zero,.L210
.L196:
	lw	a5,-44(s0)
	slli	a5,a5,1
	sw	a5,-44(s0)
.L190:
	lw	a5,-48(s0)
	bne	a5,zero,.L211
	lw	a4,-52(s0)
	lw	a5,-68(s0)
	sw	a4,0(a5)
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	sglib_ilist_sort, .-sglib_ilist_sort
	.align	2
	.globl	sglib_ilist_len
	.type	sglib_ilist_len, @function
sglib_ilist_len:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	j	.L213
.L214:
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	sw	a5,-24(s0)
.L213:
	lw	a5,-24(s0)
	bne	a5,zero,.L214
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_len, .-sglib_ilist_len
	.align	2
	.globl	sglib_ilist_reverse
	.type	sglib_ilist_reverse, @function
sglib_ilist_reverse:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L217
.L218:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L217:
	lw	a5,-20(s0)
	bne	a5,zero,.L218
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_reverse, .-sglib_ilist_reverse
	.align	2
	.globl	sglib_ilist_it_init_on_equal
	.type	sglib_ilist_it_init_on_equal, @function
sglib_ilist_it_init_on_equal:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	sw	a4,12(a5)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a0,-20(s0)
	call	sglib_ilist_it_next
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_ilist_it_init_on_equal, .-sglib_ilist_it_init_on_equal
	.align	2
	.globl	sglib_ilist_it_init
	.type	sglib_ilist_it_init, @function
sglib_ilist_it_init:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a3,0
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib_ilist_it_init_on_equal
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_ilist_it_init, .-sglib_ilist_it_init
	.align	2
	.globl	sglib_ilist_it_current
	.type	sglib_ilist_it_current, @function
sglib_ilist_it_current:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_ilist_it_current, .-sglib_ilist_it_current
	.align	2
	.globl	sglib_ilist_it_next
	.type	sglib_ilist_it_next, @function
sglib_ilist_it_next:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	sw	zero,4(a5)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L226
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	j	.L227
.L228:
	lw	a5,-20(s0)
	lw	a5,4(a5)
	sw	a5,-20(s0)
.L227:
	lw	a5,-20(s0)
	beq	a5,zero,.L226
	lw	a5,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L228
.L226:
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	beq	a5,zero,.L229
	lw	a5,-20(s0)
	lw	a4,4(a5)
	lw	a5,-36(s0)
	sw	a4,4(a5)
.L229:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_ilist_it_next, .-sglib_ilist_it_next
	.align	2
	.globl	sglib_hashed_ilist_init
	.type	sglib_hashed_ilist_init, @function
sglib_hashed_ilist_init:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	zero,-20(s0)
	j	.L232
.L233:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L232:
	lw	a4,-20(s0)
	li	a5,19
	bleu	a4,a5,.L233
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_init, .-sglib_hashed_ilist_init
	.align	2
	.globl	sglib_hashed_ilist_add
	.type	sglib_hashed_ilist_add, @function
sglib_hashed_ilist_add:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	ilist_hash_function
	mv	a4,a0
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,4
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib_ilist_add
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_add, .-sglib_hashed_ilist_add
	.align	2
	.globl	sglib_hashed_ilist_add_if_not_member
	.type	sglib_hashed_ilist_add_if_not_member, @function
sglib_hashed_ilist_add_if_not_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a0,-40(s0)
	call	ilist_hash_function
	mv	a4,a0
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,4
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib_ilist_add_if_not_member
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_add_if_not_member, .-sglib_hashed_ilist_add_if_not_member
	.align	2
	.globl	sglib_hashed_ilist_delete
	.type	sglib_hashed_ilist_delete, @function
sglib_hashed_ilist_delete:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	ilist_hash_function
	mv	a4,a0
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,4
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib_ilist_delete
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_delete, .-sglib_hashed_ilist_delete
	.align	2
	.globl	sglib_hashed_ilist_delete_if_member
	.type	sglib_hashed_ilist_delete_if_member, @function
sglib_hashed_ilist_delete_if_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a0,-40(s0)
	call	ilist_hash_function
	mv	a4,a0
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,4
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a2,-44(s0)
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib_ilist_delete_if_member
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_delete_if_member, .-sglib_hashed_ilist_delete_if_member
	.align	2
	.globl	sglib_hashed_ilist_is_member
	.type	sglib_hashed_ilist_is_member, @function
sglib_hashed_ilist_is_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	ilist_hash_function
	mv	a4,a0
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,4
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib_ilist_is_member
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_is_member, .-sglib_hashed_ilist_is_member
	.align	2
	.globl	sglib_hashed_ilist_find_member
	.type	sglib_hashed_ilist_find_member, @function
sglib_hashed_ilist_find_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a0,-40(s0)
	call	ilist_hash_function
	mv	a4,a0
	li	a5,-858992640
	addi	a5,a5,-819
	mulhu	a5,a4,a5
	srli	a3,a5,4
	mv	a5,a3
	slli	a5,a5,2
	add	a5,a5,a3
	slli	a5,a5,2
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib_ilist_find_member
	mv	a5,a0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_find_member, .-sglib_hashed_ilist_find_member
	.align	2
	.globl	sglib_hashed_ilist_it_init_on_equal
	.type	sglib_hashed_ilist_it_init_on_equal, @function
sglib_hashed_ilist_it_init_on_equal:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,16(a5)
	lw	a5,-36(s0)
	sw	zero,20(a5)
	lw	a5,-36(s0)
	lw	a4,-44(s0)
	sw	a4,24(a5)
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,28(a5)
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a5,20(a5)
	slli	a5,a5,2
	lw	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a2,24(a5)
	lw	a5,-36(s0)
	lw	a5,28(a5)
	mv	a3,a5
	mv	a1,a4
	call	sglib_ilist_it_init_on_equal
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L245
	lw	a0,-36(s0)
	call	sglib_hashed_ilist_it_next
	sw	a0,-20(s0)
.L245:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_it_init_on_equal, .-sglib_hashed_ilist_it_init_on_equal
	.align	2
	.globl	sglib_hashed_ilist_it_init
	.type	sglib_hashed_ilist_it_init, @function
sglib_hashed_ilist_it_init:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a3,0
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib_hashed_ilist_it_init_on_equal
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_hashed_ilist_it_init, .-sglib_hashed_ilist_it_init
	.align	2
	.globl	sglib_hashed_ilist_it_current
	.type	sglib_hashed_ilist_it_current, @function
sglib_hashed_ilist_it_current:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	call	sglib_ilist_it_current
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_hashed_ilist_it_current, .-sglib_hashed_ilist_it_current
	.align	2
	.globl	sglib_hashed_ilist_it_next
	.type	sglib_hashed_ilist_it_next, @function
sglib_hashed_ilist_it_next:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	mv	a0,a5
	call	sglib_ilist_it_next
	sw	a0,-20(s0)
	j	.L252
.L254:
	lw	a0,-36(s0)
	lw	a5,-36(s0)
	lw	a4,16(a5)
	lw	a5,-36(s0)
	lw	a5,20(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a2,24(a5)
	lw	a5,-36(s0)
	lw	a5,28(a5)
	mv	a3,a5
	mv	a1,a4
	call	sglib_ilist_it_init_on_equal
	sw	a0,-20(s0)
.L252:
	lw	a5,-20(s0)
	bne	a5,zero,.L253
	lw	a5,-36(s0)
	lw	a5,20(a5)
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,20(a5)
	lw	a5,-36(s0)
	lw	a4,20(a5)
	li	a5,19
	ble	a4,a5,.L254
.L253:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_hashed_ilist_it_next, .-sglib_hashed_ilist_it_next
	.align	2
	.globl	sglib_iq_init
	.type	sglib_iq_init, @function
sglib_iq_init:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	sw	zero,408(a5)
	lw	a5,-20(s0)
	lw	a4,408(a5)
	lw	a5,-20(s0)
	sw	a4,404(a5)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_init, .-sglib_iq_init
	.align	2
	.globl	sglib_iq_is_empty
	.type	sglib_iq_is_empty, @function
sglib_iq_is_empty:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a4,404(a5)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_is_empty, .-sglib_iq_is_empty
	.align	2
	.globl	sglib_iq_is_full
	.type	sglib_iq_is_full, @function
sglib_iq_is_full:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a3,404(a5)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	addi	a4,a5,1
	li	a5,680390656
	addi	a5,a5,203
	mulh	a5,a4,a5
	srai	a2,a5,4
	srai	a5,a4,31
	sub	a5,a2,a5
	li	a2,101
	mul	a5,a5,a2
	sub	a5,a4,a5
	sub	a5,a3,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_is_full, .-sglib_iq_is_full
	.align	2
	.globl	sglib_iq_first_element
	.type	sglib_iq_first_element, @function
sglib_iq_first_element:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,404(a5)
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_first_element, .-sglib_iq_first_element
	.align	2
	.globl	sglib_iq_first_element_ptr
	.type	sglib_iq_first_element_ptr, @function
sglib_iq_first_element_ptr:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,404(a5)
	slli	a5,a5,2
	lw	a4,-20(s0)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_first_element_ptr, .-sglib_iq_first_element_ptr
	.align	2
	.globl	sglib_iq_add_next
	.type	sglib_iq_add_next, @function
sglib_iq_add_next:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	addi	a4,a5,1
	li	a5,680390656
	addi	a5,a5,203
	mulh	a5,a4,a5
	srai	a3,a5,4
	srai	a5,a4,31
	sub	a5,a3,a5
	li	a3,101
	mul	a5,a5,a3
	sub	a5,a4,a5
	lw	a4,-20(s0)
	sw	a5,408(a4)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_add_next, .-sglib_iq_add_next
	.align	2
	.globl	sglib_iq_add
	.type	sglib_iq_add, @function
sglib_iq_add:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	lw	a4,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	lw	a5,-20(s0)
	lw	a5,408(a5)
	addi	a4,a5,1
	li	a5,680390656
	addi	a5,a5,203
	mulh	a5,a4,a5
	srai	a3,a5,4
	srai	a5,a4,31
	sub	a5,a3,a5
	li	a3,101
	mul	a5,a5,a3
	sub	a5,a4,a5
	lw	a4,-20(s0)
	sw	a5,408(a4)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_add, .-sglib_iq_add
	.align	2
	.globl	sglib_iq_delete_first
	.type	sglib_iq_delete_first, @function
sglib_iq_delete_first:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,404(a5)
	addi	a4,a5,1
	li	a5,680390656
	addi	a5,a5,203
	mulh	a5,a4,a5
	srai	a3,a5,4
	srai	a5,a4,31
	sub	a5,a3,a5
	li	a3,101
	mul	a5,a5,a3
	sub	a5,a4,a5
	lw	a4,-20(s0)
	sw	a5,404(a4)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_delete_first, .-sglib_iq_delete_first
	.align	2
	.globl	sglib_iq_delete
	.type	sglib_iq_delete, @function
sglib_iq_delete:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,404(a5)
	addi	a4,a5,1
	li	a5,680390656
	addi	a5,a5,203
	mulh	a5,a4,a5
	srai	a3,a5,4
	srai	a5,a4,31
	sub	a5,a3,a5
	li	a3,101
	mul	a5,a5,a3
	sub	a5,a4,a5
	lw	a4,-20(s0)
	sw	a5,404(a4)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_iq_delete, .-sglib_iq_delete
	.align	2
	.type	sglib___rbtree_fix_left_insertion_discrepancy, @function
sglib___rbtree_fix_left_insertion_discrepancy:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	lw	a5,-68(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L270
	lw	a5,-20(s0)
	lw	a5,12(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L270
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L274
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L272
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lbu	a4,4(a5)
	li	a5,1
	beq	a4,a5,.L273
.L272:
	lw	a5,-24(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L274
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L274
.L273:
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sb	zero,4(a5)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sb	zero,4(a5)
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,4(a5)
	j	.L274
.L270:
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L276
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L275
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L275
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,4(a5)
	lw	a5,-32(s0)
	sb	zero,4(a5)
	lw	a5,-68(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	j	.L274
.L275:
	lw	a5,-24(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L276
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L276
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-44(s0)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	sw	a5,-48(s0)
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-52(s0)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-56(s0)
	lw	a5,-32(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	lw	a5,-28(s0)
	lw	a4,-56(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	sb	zero,4(a5)
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,4(a5)
	lw	a5,-68(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	j	.L276
.L274:
.L276:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	sglib___rbtree_fix_left_insertion_discrepancy, .-sglib___rbtree_fix_left_insertion_discrepancy
	.align	2
	.type	sglib___rbtree_fix_right_insertion_discrepancy, @function
sglib___rbtree_fix_right_insertion_discrepancy:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	lw	a5,-68(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L278
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L278
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L282
	lw	a5,-24(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L280
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lbu	a4,4(a5)
	li	a5,1
	beq	a4,a5,.L281
.L280:
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L282
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L282
.L281:
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sb	zero,4(a5)
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sb	zero,4(a5)
	lw	a5,-20(s0)
	li	a4,1
	sb	a4,4(a5)
	j	.L282
.L278:
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L284
	lw	a5,-24(s0)
	lw	a5,12(a5)
	beq	a5,zero,.L283
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L283
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
	lw	a5,-32(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	lw	a5,-32(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,4(a5)
	lw	a5,-32(s0)
	sb	zero,4(a5)
	lw	a5,-68(s0)
	lw	a4,-32(s0)
	sw	a4,0(a5)
	j	.L282
.L283:
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L284
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L284
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	lw	a5,8(a5)
	sw	a5,-44(s0)
	lw	a5,-32(s0)
	lw	a5,12(a5)
	sw	a5,-48(s0)
	lw	a5,-32(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-52(s0)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-56(s0)
	lw	a5,-32(s0)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	lw	a5,-28(s0)
	lw	a4,-56(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-32(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	sb	zero,4(a5)
	lw	a5,-28(s0)
	li	a4,1
	sb	a4,4(a5)
	lw	a5,-68(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	j	.L284
.L282:
.L284:
	nop
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	sglib___rbtree_fix_right_insertion_discrepancy, .-sglib___rbtree_fix_right_insertion_discrepancy
	.align	2
	.type	sglib___rbtree_fix_left_deletion_discrepancy, @function
sglib___rbtree_fix_left_deletion_discrepancy:
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	sw	a0,-84(s0)
	lw	a5,-84(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L286
	lw	a5,-28(s0)
	sb	zero,4(a5)
	sw	zero,-20(s0)
	j	.L287
.L286:
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-44(s0)
	lw	a5,-36(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L288
	lw	a5,-44(s0)
	bne	a5,zero,.L289
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	sb	zero,4(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	sw	zero,-20(s0)
	j	.L287
.L289:
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a5,12(a5)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	beq	a5,zero,.L291
	lw	a5,-52(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L292
.L291:
	lw	a5,-56(s0)
	beq	a5,zero,.L293
	lw	a5,-56(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L292
.L293:
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	sb	zero,4(a5)
	lw	a5,-24(s0)
	lw	a4,-48(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	li	a4,1
	sb	a4,4(a5)
	sw	zero,-20(s0)
	j	.L287
.L292:
	lw	a5,-52(s0)
	beq	a5,zero,.L294
	lw	a5,-52(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L294
	lw	a5,-56(s0)
	beq	a5,zero,.L295
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L295
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	lw	a5,12(a5)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	lw	a5,8(a5)
	sw	a5,-68(s0)
	lw	a5,-84(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	sb	zero,4(a5)
	lw	a5,-60(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	lw	a4,-64(s0)
	sw	a4,8(a5)
	lw	a5,-60(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	sw	a4,12(a5)
	sw	zero,-20(s0)
	j	.L287
.L295:
	lw	a5,-84(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,12(a5)
	lw	a5,-52(s0)
	sb	zero,4(a5)
	sw	zero,-20(s0)
	j	.L287
.L294:
	lw	a5,-56(s0)
	beq	a5,zero,.L297
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L297
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	lw	a5,12(a5)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	lw	a5,8(a5)
	sw	a5,-68(s0)
	lw	a5,-84(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	sb	zero,4(a5)
	lw	a5,-60(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	lw	a4,-64(s0)
	sw	a4,8(a5)
	lw	a5,-60(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	sw	a4,12(a5)
	sw	zero,-20(s0)
	j	.L287
.L297:
	sw	zero,-20(s0)
	j	.L287
.L288:
	lw	a5,-40(s0)
	beq	a5,zero,.L298
	lw	a5,-40(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L299
.L298:
	lw	a5,-44(s0)
	beq	a5,zero,.L300
	lw	a5,-44(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L299
.L300:
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,4(a5)
	j	.L287
.L299:
	lw	a5,-40(s0)
	beq	a5,zero,.L301
	lw	a5,-40(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L301
	lw	a5,-44(s0)
	beq	a5,zero,.L302
	lw	a5,-44(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L303
.L302:
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lw	a5,-36(s0)
	sb	a4,4(a5)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,12(a5)
	lw	a5,-40(s0)
	sb	zero,4(a5)
	sw	zero,-20(s0)
	j	.L287
.L303:
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a5,12(a5)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	sw	a5,-56(s0)
	lw	a5,-84(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lw	a5,-48(s0)
	sb	a4,4(a5)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,12(a5)
	sw	zero,-20(s0)
	j	.L287
.L301:
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a5,12(a5)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	sw	a5,-56(s0)
	lw	a5,-84(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lw	a5,-48(s0)
	sb	a4,4(a5)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sw	a4,12(a5)
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,8(a5)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,12(a5)
	sw	zero,-20(s0)
.L287:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jr	ra
	.size	sglib___rbtree_fix_left_deletion_discrepancy, .-sglib___rbtree_fix_left_deletion_discrepancy
	.align	2
	.type	sglib___rbtree_fix_right_deletion_discrepancy, @function
sglib___rbtree_fix_right_deletion_discrepancy:
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	sw	a0,-84(s0)
	lw	a5,-84(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L307
	lw	a5,-28(s0)
	sb	zero,4(a5)
	sw	zero,-20(s0)
	j	.L308
.L307:
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-44(s0)
	lw	a5,-36(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L309
	lw	a5,-44(s0)
	bne	a5,zero,.L310
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	sb	zero,4(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	sw	zero,-20(s0)
	j	.L308
.L310:
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	lw	a5,12(a5)
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	beq	a5,zero,.L312
	lw	a5,-52(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L313
.L312:
	lw	a5,-56(s0)
	beq	a5,zero,.L314
	lw	a5,-56(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L313
.L314:
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	sb	zero,4(a5)
	lw	a5,-24(s0)
	lw	a4,-48(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	li	a4,1
	sb	a4,4(a5)
	sw	zero,-20(s0)
	j	.L308
.L313:
	lw	a5,-52(s0)
	beq	a5,zero,.L315
	lw	a5,-52(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L315
	lw	a5,-56(s0)
	beq	a5,zero,.L316
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L316
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	lw	a5,8(a5)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	lw	a5,12(a5)
	sw	a5,-68(s0)
	lw	a5,-84(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	sb	zero,4(a5)
	lw	a5,-60(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	lw	a4,-64(s0)
	sw	a4,12(a5)
	lw	a5,-60(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	sw	a4,8(a5)
	sw	zero,-20(s0)
	j	.L308
.L316:
	lw	a5,-84(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,8(a5)
	lw	a5,-52(s0)
	sb	zero,4(a5)
	sw	zero,-20(s0)
	j	.L308
.L315:
	lw	a5,-56(s0)
	beq	a5,zero,.L318
	lw	a5,-56(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L318
	lw	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	lw	a5,8(a5)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	lw	a5,12(a5)
	sw	a5,-68(s0)
	lw	a5,-84(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	sb	zero,4(a5)
	lw	a5,-60(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	lw	a4,-64(s0)
	sw	a4,12(a5)
	lw	a5,-60(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-68(s0)
	sw	a4,8(a5)
	sw	zero,-20(s0)
	j	.L308
.L318:
	sw	zero,-20(s0)
	j	.L308
.L309:
	lw	a5,-40(s0)
	beq	a5,zero,.L319
	lw	a5,-40(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L320
.L319:
	lw	a5,-44(s0)
	beq	a5,zero,.L321
	lw	a5,-44(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L320
.L321:
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-36(s0)
	li	a4,1
	sb	a4,4(a5)
	j	.L308
.L320:
	lw	a5,-40(s0)
	beq	a5,zero,.L322
	lw	a5,-40(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L322
	lw	a5,-44(s0)
	beq	a5,zero,.L323
	lw	a5,-44(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L324
.L323:
	lw	a5,-84(s0)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lw	a5,-36(s0)
	sb	a4,4(a5)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-44(s0)
	sw	a4,8(a5)
	lw	a5,-40(s0)
	sb	zero,4(a5)
	sw	zero,-20(s0)
	j	.L308
.L324:
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	lw	a5,12(a5)
	sw	a5,-56(s0)
	lw	a5,-84(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lw	a5,-48(s0)
	sb	a4,4(a5)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,8(a5)
	sw	zero,-20(s0)
	j	.L308
.L322:
	lw	a5,-44(s0)
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	lw	a5,8(a5)
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	lw	a5,12(a5)
	sw	a5,-56(s0)
	lw	a5,-84(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lbu	a4,4(a5)
	lw	a5,-48(s0)
	sb	a4,4(a5)
	lw	a5,-24(s0)
	sb	zero,4(a5)
	lw	a5,-48(s0)
	lw	a4,-36(s0)
	sw	a4,8(a5)
	lw	a5,-48(s0)
	lw	a4,-24(s0)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-52(s0)
	sw	a4,12(a5)
	lw	a5,-24(s0)
	lw	a4,-56(s0)
	sw	a4,8(a5)
	sw	zero,-20(s0)
.L308:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jr	ra
	.size	sglib___rbtree_fix_right_deletion_discrepancy, .-sglib___rbtree_fix_right_deletion_discrepancy
	.align	2
	.type	sglib___rbtree_add_recursive, @function
sglib___rbtree_add_recursive:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L328
	lw	a5,-40(s0)
	li	a4,1
	sb	a4,4(a5)
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	j	.L333
.L328:
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	blt	a5,zero,.L330
	lw	a5,-24(s0)
	bne	a5,zero,.L331
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	bgeu	a4,a5,.L331
.L330:
	lw	a5,-20(s0)
	addi	a5,a5,8
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib___rbtree_add_recursive
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L329
	lw	a0,-36(s0)
	call	sglib___rbtree_fix_left_insertion_discrepancy
	j	.L329
.L331:
	lw	a5,-20(s0)
	addi	a5,a5,12
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib___rbtree_add_recursive
	lw	a5,-20(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L333
	lw	a0,-36(s0)
	call	sglib___rbtree_fix_right_insertion_discrepancy
	j	.L333
.L329:
.L333:
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib___rbtree_add_recursive, .-sglib___rbtree_add_recursive
	.align	2
	.type	sglib___rbtree_delete_rightmost_leaf, @function
sglib___rbtree_delete_rightmost_leaf:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	lw	a5,-24(s0)
	lw	a5,12(a5)
	bne	a5,zero,.L335
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L336
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L337
	lw	a5,-24(s0)
	lw	a5,8(a5)
	lbu	a5,4(a5)
	bne	a5,zero,.L337
	li	a5,1
	sw	a5,-20(s0)
.L337:
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sb	zero,4(a5)
	lw	a5,-24(s0)
	lw	a4,8(a5)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	j	.L338
.L336:
	lw	a5,-36(s0)
	sw	zero,0(a5)
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	j	.L338
.L335:
	lw	a5,-24(s0)
	addi	a5,a5,12
	lw	a1,-40(s0)
	mv	a0,a5
	call	sglib___rbtree_delete_rightmost_leaf
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beq	a5,zero,.L338
	lw	a0,-36(s0)
	call	sglib___rbtree_fix_right_deletion_discrepancy
	sw	a0,-20(s0)
.L338:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib___rbtree_delete_rightmost_leaf, .-sglib___rbtree_delete_rightmost_leaf
	.align	2
	.globl	sglib___rbtree_delete_recursive
	.type	sglib___rbtree_delete_recursive, @function
sglib___rbtree_delete_recursive:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L341
	lw	a5,-56(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	blt	a5,zero,.L342
	lw	a5,-28(s0)
	bne	a5,zero,.L343
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	bgeu	a4,a5,.L343
.L342:
	lw	a5,-24(s0)
	addi	a5,a5,8
	lw	a1,-56(s0)
	mv	a0,a5
	call	sglib___rbtree_delete_recursive
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	beq	a5,zero,.L341
	lw	a0,-52(s0)
	call	sglib___rbtree_fix_left_deletion_discrepancy
	sw	a0,-20(s0)
	j	.L341
.L343:
	lw	a5,-28(s0)
	bgt	a5,zero,.L345
	lw	a5,-28(s0)
	bne	a5,zero,.L346
	lw	a4,-56(s0)
	lw	a5,-24(s0)
	bleu	a4,a5,.L346
.L345:
	lw	a5,-24(s0)
	addi	a5,a5,12
	lw	a1,-56(s0)
	mv	a0,a5
	call	sglib___rbtree_delete_recursive
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	beq	a5,zero,.L341
	lw	a0,-52(s0)
	call	sglib___rbtree_fix_right_deletion_discrepancy
	sw	a0,-20(s0)
	j	.L341
.L346:
	lw	a5,-24(s0)
	lw	a5,8(a5)
	bne	a5,zero,.L348
	lw	a5,-24(s0)
	lw	a5,12(a5)
	bne	a5,zero,.L349
	lw	a5,-52(s0)
	sw	zero,0(a5)
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	j	.L341
.L349:
	lw	a5,-24(s0)
	lbu	a5,4(a5)
	bne	a5,zero,.L350
	lw	a5,-24(s0)
	lw	a5,12(a5)
	lbu	a5,4(a5)
	bne	a5,zero,.L350
	li	a5,1
	sw	a5,-20(s0)
.L350:
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sb	zero,4(a5)
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a5,-52(s0)
	sw	a4,0(a5)
	j	.L341
.L348:
	lw	a5,-24(s0)
	addi	a5,a5,8
	addi	a4,s0,-36
	mv	a1,a4
	mv	a0,a5
	call	sglib___rbtree_delete_rightmost_leaf
	sw	a0,-32(s0)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	lw	a4,8(a4)
	sw	a4,8(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	lw	a4,12(a4)
	sw	a4,12(a5)
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	lbu	a4,4(a4)
	sb	a4,4(a5)
	lw	a4,-36(s0)
	lw	a5,-52(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	beq	a5,zero,.L341
	lw	a0,-52(s0)
	call	sglib___rbtree_fix_left_deletion_discrepancy
	sw	a0,-20(s0)
.L341:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	sglib___rbtree_delete_recursive, .-sglib___rbtree_delete_recursive
	.align	2
	.globl	sglib_rbtree_add
	.type	sglib_rbtree_add, @function
sglib_rbtree_add:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	sw	zero,12(a5)
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a5,-24(s0)
	sw	a4,8(a5)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib___rbtree_add_recursive
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sb	zero,4(a5)
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_add, .-sglib_rbtree_add
	.align	2
	.globl	sglib_rbtree_delete
	.type	sglib_rbtree_delete, @function
sglib_rbtree_delete:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib___rbtree_delete_recursive
	lw	a5,-20(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L353
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sb	zero,4(a5)
.L353:
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_delete, .-sglib_rbtree_delete
	.align	2
	.globl	sglib_rbtree_find_member
	.type	sglib_rbtree_find_member, @function
sglib_rbtree_find_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L356
.L360:
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bge	a5,zero,.L357
	lw	a5,-20(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	j	.L356
.L357:
	lw	a5,-24(s0)
	ble	a5,zero,.L359
	lw	a5,-20(s0)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L356:
	lw	a5,-20(s0)
	bne	a5,zero,.L360
.L359:
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_rbtree_find_member, .-sglib_rbtree_find_member
	.align	2
	.globl	sglib_rbtree_is_member
	.type	sglib_rbtree_is_member, @function
sglib_rbtree_is_member:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	j	.L363
.L369:
	lw	a5,-40(s0)
	lw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	blt	a5,zero,.L364
	lw	a5,-20(s0)
	bne	a5,zero,.L365
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bgeu	a4,a5,.L365
.L364:
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-36(s0)
	j	.L363
.L365:
	lw	a5,-20(s0)
	bgt	a5,zero,.L366
	lw	a5,-20(s0)
	bne	a5,zero,.L367
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	bleu	a4,a5,.L367
.L366:
	lw	a5,-36(s0)
	lw	a5,12(a5)
	sw	a5,-36(s0)
	j	.L363
.L367:
	li	a5,1
	j	.L368
.L363:
	lw	a5,-36(s0)
	bne	a5,zero,.L369
	li	a5,0
.L368:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib_rbtree_is_member, .-sglib_rbtree_is_member
	.align	2
	.globl	sglib_rbtree_delete_if_member
	.type	sglib_rbtree_delete_if_member, @function
sglib_rbtree_delete_if_member:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	sglib_rbtree_find_member
	mv	a4,a0
	lw	a5,-28(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L371
	lw	a5,-28(s0)
	lw	a5,0(a5)
	mv	a1,a5
	lw	a0,-20(s0)
	call	sglib_rbtree_delete
	li	a5,1
	j	.L372
.L371:
	li	a5,0
.L372:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_delete_if_member, .-sglib_rbtree_delete_if_member
	.align	2
	.globl	sglib_rbtree_add_if_not_member
	.type	sglib_rbtree_add_if_not_member, @function
sglib_rbtree_add_if_not_member:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	sglib_rbtree_find_member
	mv	a4,a0
	lw	a5,-28(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	lw	a5,0(a5)
	bne	a5,zero,.L374
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib_rbtree_add
	li	a5,1
	j	.L375
.L374:
	li	a5,0
.L375:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_add_if_not_member, .-sglib_rbtree_add_if_not_member
	.align	2
	.globl	sglib_rbtree_len
	.type	sglib_rbtree_len, @function
sglib_rbtree_len:
	addi	sp,sp,-1200
	sw	ra,1196(sp)
	sw	s0,1192(sp)
	addi	s0,sp,1200
	sw	a0,-1188(s0)
	sw	zero,-20(s0)
	lw	a5,-1188(s0)
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L377
.L379:
	lw	a4,-28(s0)
	addi	a5,s0,-1056
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a3,-28(s0)
	addi	a5,s0,-544
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-1168(a5)
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L378:
	lw	a5,-24(s0)
	bne	a5,zero,.L379
.L382:
	lw	a5,-28(s0)
	addi	a5,a5,-1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-1168(a5)
	bne	a5,zero,.L380
	lw	a4,-28(s0)
	addi	a5,s0,-1056
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L380:
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-1168(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-1168(a5)
	lw	a5,-28(s0)
	ble	a5,zero,.L381
	lw	a4,-28(s0)
	addi	a5,s0,-544
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L382
.L381:
	lw	a4,-28(s0)
	addi	a5,s0,-544
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a4,-28(s0)
	addi	a5,s0,-544
	slli	a4,a4,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L377:
	lw	a5,-24(s0)
	bne	a5,zero,.L378
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,1196(sp)
	lw	s0,1192(sp)
	addi	sp,sp,1200
	jr	ra
	.size	sglib_rbtree_len, .-sglib_rbtree_len
	.align	2
	.globl	sglib__rbtree_it_compute_current_elem
	.type	sglib__rbtree_it_compute_current_elem, @function
sglib__rbtree_it_compute_current_elem:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-68(s0)
	lw	a5,-68(s0)
	lw	a5,648(a5)
	sw	a5,-32(s0)
	lw	a5,-68(s0)
	lw	a5,652(a5)
	sw	a5,-36(s0)
	lw	a5,-68(s0)
	sw	zero,0(a5)
	j	.L386
.L405:
	lw	a5,-68(s0)
	lh	a5,644(a5)
	addi	a5,a5,-1
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	blt	a5,zero,.L387
	lw	a4,-68(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a4,4(a5)
	li	a5,1
	bleu	a4,a5,.L388
	lw	a5,-68(s0)
	lh	a5,644(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,-1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-68(s0)
	sh	a4,644(a5)
	j	.L387
.L388:
	lw	a4,-68(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,4(a5)
	bne	a5,zero,.L389
	lw	a4,-68(s0)
	lw	a5,-40(s0)
	addi	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	j	.L390
.L389:
	lw	a4,-68(s0)
	lw	a5,-40(s0)
	addi	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,4(a5)
	lw	a5,12(a5)
	sw	a5,-20(s0)
.L390:
	lw	a5,-32(s0)
	beq	a5,zero,.L391
	lw	a5,-36(s0)
	bne	a5,zero,.L392
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L393
.L397:
	lw	a5,-32(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	bge	a5,zero,.L394
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	j	.L393
.L394:
	lw	a5,-48(s0)
	ble	a5,zero,.L396
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
.L393:
	lw	a5,-24(s0)
	bne	a5,zero,.L397
.L396:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L391
.L392:
	lw	a5,-20(s0)
	sw	a5,-28(s0)
	j	.L398
.L402:
	lw	a5,-36(s0)
	lw	a1,-28(s0)
	lw	a0,-32(s0)
	jalr	a5
	sw	a0,-44(s0)
	lw	a5,-44(s0)
	bge	a5,zero,.L399
	lw	a5,-28(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	j	.L398
.L399:
	lw	a5,-44(s0)
	ble	a5,zero,.L401
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L398:
	lw	a5,-28(s0)
	bne	a5,zero,.L402
.L401:
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L391:
	lw	a5,-20(s0)
	beq	a5,zero,.L403
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
	lw	a4,-68(s0)
	lw	a5,-52(s0)
	addi	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,4(a5)
	lw	a4,-68(s0)
	lw	a5,-52(s0)
	add	a5,a4,a5
	sb	zero,4(a5)
	lw	a5,-68(s0)
	lh	a5,644(a5)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-68(s0)
	sh	a4,644(a5)
.L403:
	lw	a4,-68(s0)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,4(a5)
	addi	a5,a5,1
	andi	a4,a5,0xff
	lw	a3,-68(s0)
	lw	a5,-40(s0)
	add	a5,a3,a5
	sb	a4,4(a5)
.L387:
	lw	a5,-68(s0)
	lh	a5,644(a5)
	ble	a5,zero,.L386
	lw	a5,-68(s0)
	lh	a5,646(a5)
	mv	a3,a5
	lw	a5,-68(s0)
	lh	a5,644(a5)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	add	a5,a4,a5
	lbu	a5,4(a5)
	bne	a3,a5,.L386
	lw	a5,-68(s0)
	lh	a5,644(a5)
	addi	a5,a5,-1
	lw	a4,-68(s0)
	addi	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,4(a5)
	lw	a5,-68(s0)
	sw	a4,0(a5)
.L386:
	lw	a5,-68(s0)
	lh	a5,644(a5)
	ble	a5,zero,.L385
	lw	a5,-68(s0)
	lw	a5,0(a5)
	beq	a5,zero,.L405
.L385:
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	sglib__rbtree_it_compute_current_elem, .-sglib__rbtree_it_compute_current_elem
	.align	2
	.globl	sglib__rbtree_it_init
	.type	sglib__rbtree_it_init, @function
sglib__rbtree_it_init:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	lw	a5,-60(s0)
	slli	a4,a5,16
	srai	a4,a4,16
	lw	a5,-52(s0)
	sh	a4,646(a5)
	lw	a5,-52(s0)
	lw	a4,-68(s0)
	sw	a4,648(a5)
	lw	a5,-52(s0)
	lw	a4,-64(s0)
	sw	a4,652(a5)
	lw	a5,-68(s0)
	bne	a5,zero,.L407
	lw	a5,-56(s0)
	sw	a5,-20(s0)
	j	.L408
.L407:
	lw	a5,-64(s0)
	bne	a5,zero,.L409
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	j	.L410
.L414:
	lw	a5,-68(s0)
	lw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a5,0(a5)
	sub	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bge	a5,zero,.L411
	lw	a5,-24(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	j	.L410
.L411:
	lw	a5,-36(s0)
	ble	a5,zero,.L413
	lw	a5,-24(s0)
	lw	a5,12(a5)
	sw	a5,-24(s0)
.L410:
	lw	a5,-24(s0)
	bne	a5,zero,.L414
.L413:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L408
.L409:
	lw	a5,-56(s0)
	sw	a5,-28(s0)
	j	.L415
.L419:
	lw	a5,-64(s0)
	lw	a1,-28(s0)
	lw	a0,-68(s0)
	jalr	a5
	sw	a0,-32(s0)
	lw	a5,-32(s0)
	bge	a5,zero,.L416
	lw	a5,-28(s0)
	lw	a5,8(a5)
	sw	a5,-28(s0)
	j	.L415
.L416:
	lw	a5,-32(s0)
	ble	a5,zero,.L418
	lw	a5,-28(s0)
	lw	a5,12(a5)
	sw	a5,-28(s0)
.L415:
	lw	a5,-28(s0)
	bne	a5,zero,.L419
.L418:
	lw	a5,-28(s0)
	sw	a5,-20(s0)
.L408:
	lw	a5,-20(s0)
	bne	a5,zero,.L420
	lw	a5,-52(s0)
	sh	zero,644(a5)
	lw	a5,-52(s0)
	sw	zero,0(a5)
	j	.L421
.L420:
	lw	a5,-52(s0)
	li	a4,1
	sh	a4,644(a5)
	lw	a5,-52(s0)
	sb	zero,4(a5)
	lw	a5,-52(s0)
	lw	a4,-20(s0)
	sw	a4,132(a5)
	lw	a5,-60(s0)
	bne	a5,zero,.L422
	lw	a5,-52(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	j	.L421
.L422:
	lw	a0,-52(s0)
	call	sglib__rbtree_it_compute_current_elem
.L421:
	lw	a5,-52(s0)
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	sglib__rbtree_it_init, .-sglib__rbtree_it_init
	.align	2
	.globl	sglib_rbtree_it_init
	.type	sglib_rbtree_it_init, @function
sglib_rbtree_it_init:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,0
	li	a3,0
	li	a2,2
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib__rbtree_it_init
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_init, .-sglib_rbtree_it_init
	.align	2
	.globl	sglib_rbtree_it_init_preorder
	.type	sglib_rbtree_it_init_preorder, @function
sglib_rbtree_it_init_preorder:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,0
	li	a3,0
	li	a2,0
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib__rbtree_it_init
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_init_preorder, .-sglib_rbtree_it_init_preorder
	.align	2
	.globl	sglib_rbtree_it_init_inorder
	.type	sglib_rbtree_it_init_inorder, @function
sglib_rbtree_it_init_inorder:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,0
	li	a3,0
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib__rbtree_it_init
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_init_inorder, .-sglib_rbtree_it_init_inorder
	.align	2
	.globl	sglib_rbtree_it_init_postorder
	.type	sglib_rbtree_it_init_postorder, @function
sglib_rbtree_it_init_postorder:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	li	a4,0
	li	a3,0
	li	a2,2
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib__rbtree_it_init
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_init_postorder, .-sglib_rbtree_it_init_postorder
	.align	2
	.globl	sglib_rbtree_it_init_on_equal
	.type	sglib_rbtree_it_init_on_equal, @function
sglib_rbtree_it_init_on_equal:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	lw	a4,-32(s0)
	lw	a3,-28(s0)
	li	a2,1
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	sglib__rbtree_it_init
	mv	a5,a0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_init_on_equal, .-sglib_rbtree_it_init_on_equal
	.align	2
	.globl	sglib_rbtree_it_current
	.type	sglib_rbtree_it_current, @function
sglib_rbtree_it_current:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_current, .-sglib_rbtree_it_current
	.align	2
	.globl	sglib_rbtree_it_next
	.type	sglib_rbtree_it_next, @function
sglib_rbtree_it_next:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	sglib__rbtree_it_compute_current_elem
	lw	a5,-20(s0)
	lw	a5,0(a5)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib_rbtree_it_next, .-sglib_rbtree_it_next
	.align	2
	.type	sglib___rbtree_consistency_check_recursive, @function
sglib___rbtree_consistency_check_recursive:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L439
	lw	a5,-24(s0)
	lw	a5,0(a5)
	bge	a5,zero,.L438
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	j	.L438
.L439:
	lw	a5,-20(s0)
	lbu	a4,4(a5)
	li	a5,1
	bne	a4,a5,.L441
	lw	a5,-20(s0)
	lw	a5,8(a5)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	sglib___rbtree_consistency_check_recursive
	lw	a5,-20(s0)
	lw	a5,12(a5)
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	sglib___rbtree_consistency_check_recursive
	j	.L438
.L441:
	lw	a5,-20(s0)
	lw	a4,8(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	sglib___rbtree_consistency_check_recursive
	lw	a5,-20(s0)
	lw	a4,12(a5)
	lw	a5,-28(s0)
	addi	a5,a5,1
	mv	a2,a5
	lw	a1,-24(s0)
	mv	a0,a4
	call	sglib___rbtree_consistency_check_recursive
.L438:
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sglib___rbtree_consistency_check_recursive, .-sglib___rbtree_consistency_check_recursive
	.align	2
	.globl	sglib___rbtree_consistency_check
	.type	sglib___rbtree_consistency_check, @function
sglib___rbtree_consistency_check:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	li	a5,-1
	sw	a5,-20(s0)
	addi	a5,s0,-20
	li	a2,0
	mv	a1,a5
	lw	a0,-36(s0)
	call	sglib___rbtree_consistency_check_recursive
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	sglib___rbtree_consistency_check, .-sglib___rbtree_consistency_check
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	sw	zero,-20(s0)
	lui	a5,%hi(the_list)
	lw	a5,%lo(the_list)(a5)
	mv	a0,a5
	call	sglib_dllist_get_first
	sw	a0,-24(s0)
	j	.L444
.L447:
	lw	a5,-24(s0)
	lw	a5,0(a5)
	lw	a4,-20(s0)
	beq	a4,a5,.L445
	li	a5,0
	j	.L454
.L445:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
.L444:
	lw	a5,-24(s0)
	bne	a5,zero,.L447
	sw	zero,-20(s0)
	j	.L448
.L451:
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	addi	a5,s0,-36
	mv	a1,a5
	lui	a5,%hi(htab)
	addi	a0,a5,%lo(htab)
	call	sglib_hashed_ilist_find_member
	sw	a0,-28(s0)
	lw	a5,-28(s0)
	beq	a5,zero,.L449
	lw	a5,-28(s0)
	lw	a4,0(a5)
	lui	a5,%hi(array)
	addi	a3,a5,%lo(array)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	beq	a4,a5,.L450
.L449:
	li	a5,0
	j	.L454
.L450:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L448:
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L451
	lw	a4,-52(s0)
	li	a5,16384
	addi	a5,a5,-1334
	bne	a4,a5,.L452
	lui	a5,%hi(heap)
	addi	a0,a5,%lo(heap)
	call	check_heap_beebs
	mv	a5,a0
	beq	a5,zero,.L452
	li	a2,400
	lui	a5,%hi(array_exp.0)
	addi	a1,a5,%lo(array_exp.0)
	lui	a5,%hi(array2)
	addi	a0,a5,%lo(array2)
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L452
	li	a5,1
	j	.L454
.L452:
	li	a5,0
.L454:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
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
	li	a0,29
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
	addi	sp,sp,-1264
	sw	ra,1260(sp)
	sw	s0,1256(sp)
	addi	s0,sp,1264
	sw	a0,-1252(s0)
	sw	zero,-20(s0)
	j	.L461
.L510:
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lui	a5,%hi(array)
	addi	a5,a5,%lo(array)
	mv	a3,a5
	li	a5,400
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcpy
	sw	zero,-1216(s0)
	li	a5,100
	sw	a5,-812(s0)
	li	a5,1
	sw	a5,-56(s0)
	j	.L462
.L480:
	lw	a5,-56(s0)
	addi	a5,a5,-1
	sw	a5,-56(s0)
	lw	a4,-56(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-60(s0)
	lw	a4,-56(s0)
	addi	a5,s0,-812
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-64(s0)
	j	.L463
.L479:
	lw	a5,-60(s0)
	sw	a5,-112(s0)
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
	lw	a5,-64(s0)
	addi	a5,a5,-1
	sw	a5,-52(s0)
	j	.L464
.L467:
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L465:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bgt	a4,a5,.L466
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L467
.L466:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	ble	a4,a5,.L469
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-124(s0)
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-124(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	sw	a5,-48(s0)
	j	.L464
.L471:
	lw	a5,-52(s0)
	addi	a5,a5,-1
	sw	a5,-52(s0)
.L469:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bgt	a4,a5,.L470
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bgt	a4,a5,.L471
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bge	a4,a5,.L471
.L470:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	ble	a4,a5,.L472
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-120(s0)
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-112(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-120(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	sw	a5,-48(s0)
	j	.L464
.L472:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	bge	a4,a5,.L464
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-116(s0)
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-116(s0)
	sw	a4,0(a5)
	lw	a5,-48(s0)
	addi	a5,a5,2
	lw	a4,-52(s0)
	ble	a4,a5,.L473
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
	lw	a5,-52(s0)
	addi	a5,a5,-1
	sw	a5,-52(s0)
	j	.L464
.L473:
	lw	a5,-48(s0)
	addi	a5,a5,1
	lw	a4,-52(s0)
	ble	a4,a5,.L464
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L464:
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	blt	a4,a5,.L465
	lw	a4,-48(s0)
	lw	a5,-60(s0)
	sub	a4,a4,a5
	li	a5,1
	ble	a4,a5,.L475
	lw	a4,-64(s0)
	lw	a5,-52(s0)
	sub	a4,a4,a5
	li	a5,1
	ble	a4,a5,.L475
	lw	a4,-48(s0)
	lw	a5,-60(s0)
	sub	a4,a4,a5
	lw	a3,-64(s0)
	lw	a5,-52(s0)
	sub	a5,a3,a5
	addi	a5,a5,-1
	bge	a4,a5,.L476
	lw	a5,-52(s0)
	addi	a4,a5,1
	lw	a3,-56(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a4,-56(s0)
	addi	a5,s0,-812
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-64(s0)
	sw	a4,0(a5)
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	lw	a5,-48(s0)
	sw	a5,-64(s0)
	j	.L463
.L476:
	lw	a4,-56(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-60(s0)
	sw	a4,0(a5)
	lw	a4,-56(s0)
	addi	a5,s0,-812
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
	j	.L463
.L475:
	lw	a4,-48(s0)
	lw	a5,-60(s0)
	sub	a4,a4,a5
	li	a5,1
	ble	a4,a5,.L478
	lw	a5,-48(s0)
	sw	a5,-64(s0)
	j	.L463
.L478:
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L463:
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	sub	a4,a4,a5
	li	a5,2
	bgt	a4,a5,.L479
	lw	a4,-64(s0)
	lw	a5,-60(s0)
	sub	a4,a4,a5
	li	a5,2
	bne	a4,a5,.L462
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-60(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-64(s0)
	addi	a5,a5,-1
	lui	a3,%hi(array2)
	addi	a3,a3,%lo(array2)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L462
	lui	a5,%hi(array2)
	addi	a4,a5,%lo(array2)
	lw	a5,-60(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-108(s0)
	lw	a5,-64(s0)
	addi	a5,a5,-1
	lui	a4,%hi(array2)
	addi	a4,a4,%lo(array2)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(array2)
	addi	a3,a5,%lo(array2)
	lw	a5,-60(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-64(s0)
	addi	a5,a5,-1
	lui	a4,%hi(array2)
	addi	a4,a4,%lo(array2)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-108(s0)
	sw	a4,0(a5)
.L462:
	lw	a5,-56(s0)
	bgt	a5,zero,.L480
	li	a1,8192
	lui	a5,%hi(heap)
	addi	a0,a5,%lo(heap)
	call	init_heap_beebs
	lui	a5,%hi(the_list)
	sw	zero,%lo(the_list)(a5)
	sw	zero,-24(s0)
	j	.L481
.L482:
	li	a0,12
	call	malloc_beebs
	sw	a0,-28(s0)
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sw	a4,0(a5)
	lw	a1,-28(s0)
	lui	a5,%hi(the_list)
	addi	a0,a5,%lo(the_list)
	call	sglib_dllist_add
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L481:
	lw	a4,-24(s0)
	li	a5,99
	ble	a4,a5,.L482
	lui	a5,%hi(the_list)
	addi	a0,a5,%lo(the_list)
	call	sglib_dllist_sort
	sw	zero,-128(s0)
	lui	a5,%hi(the_list)
	lw	a5,%lo(the_list)(a5)
	mv	a0,a5
	call	sglib_dllist_get_first
	sw	a0,-28(s0)
	j	.L483
.L484:
	lw	a5,-128(s0)
	addi	a5,a5,1
	sw	a5,-128(s0)
	lw	a5,-28(s0)
	lw	a5,4(a5)
	sw	a5,-28(s0)
.L483:
	lw	a5,-28(s0)
	bne	a5,zero,.L484
	lui	a5,%hi(htab)
	addi	a0,a5,%lo(htab)
	call	sglib_hashed_ilist_init
	sw	zero,-24(s0)
	j	.L485
.L487:
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-136(s0)
	addi	a5,s0,-136
	mv	a1,a5
	lui	a5,%hi(htab)
	addi	a0,a5,%lo(htab)
	call	sglib_hashed_ilist_find_member
	mv	a5,a0
	bne	a5,zero,.L486
	li	a0,8
	call	malloc_beebs
	sw	a0,-104(s0)
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-104(s0)
	sw	a4,0(a5)
	lw	a1,-104(s0)
	lui	a5,%hi(htab)
	addi	a0,a5,%lo(htab)
	call	sglib_hashed_ilist_add
.L486:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L485:
	lw	a4,-24(s0)
	li	a5,99
	ble	a4,a5,.L487
	addi	a4,s0,-1248
	lui	a5,%hi(htab)
	addi	a1,a5,%lo(htab)
	mv	a0,a4
	call	sglib_hashed_ilist_it_init
	sw	a0,-32(s0)
	j	.L488
.L489:
	lw	a5,-128(s0)
	addi	a5,a5,1
	sw	a5,-128(s0)
	addi	a5,s0,-1248
	mv	a0,a5
	call	sglib_hashed_ilist_it_next
	sw	a0,-32(s0)
.L488:
	lw	a5,-32(s0)
	bne	a5,zero,.L489
	sw	zero,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-24(s0)
	j	.L490
.L491:
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-96(s0)
	lw	a4,-40(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-96(s0)
	sw	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	li	a4,680390656
	addi	a4,a4,203
	mulh	a4,a5,a4
	srai	a3,a4,4
	srai	a4,a5,31
	sub	a3,a3,a4
	li	a4,101
	mul	a4,a3,a4
	sub	a5,a5,a4
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L490:
	lw	a4,-24(s0)
	li	a5,99
	ble	a4,a5,.L491
	j	.L492
.L493:
	lw	a4,-36(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-128(s0)
	add	a5,a4,a5
	sw	a5,-128(s0)
	lw	a5,-36(s0)
	addi	a5,a5,1
	li	a4,680390656
	addi	a4,a4,203
	mulh	a4,a5,a4
	srai	a3,a4,4
	srai	a4,a5,31
	sub	a3,a3,a4
	li	a4,101
	mul	a4,a3,a4
	sub	a5,a5,a4
	sw	a5,-36(s0)
.L492:
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L493
	sw	zero,-36(s0)
	sw	zero,-24(s0)
	j	.L494
.L498:
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-96(s0)
	lw	a4,-36(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-96(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	sw	a5,-68(s0)
	j	.L495
.L497:
	lw	a5,-68(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a4,a5
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-100(s0)
	lw	a5,-68(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a3,a5
	lw	a4,-68(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a4,-68(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-100(s0)
	sw	a4,0(a5)
	lw	a5,-68(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-68(s0)
.L495:
	lw	a5,-68(s0)
	ble	a5,zero,.L496
	lw	a5,-68(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a4,a5
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-68(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bgt	a4,a5,.L496
	lw	a5,-68(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	mv	a4,a5
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-68(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	blt	a4,a5,.L497
.L496:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L494:
	lw	a4,-24(s0)
	li	a5,99
	ble	a4,a5,.L498
	j	.L499
.L504:
	lw	a4,-1216(s0)
	lw	a5,-128(s0)
	add	a5,a4,a5
	sw	a5,-128(s0)
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-1216(s0)
	sw	zero,-80(s0)
	lw	a5,-80(s0)
	sw	a5,-72(s0)
.L503:
	lw	a5,-72(s0)
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	slli	a5,a5,1
	addi	a5,a5,1
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
	lw	a4,-84(s0)
	lw	a5,-36(s0)
	bge	a4,a5,.L500
	lw	a4,-72(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-84(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bgt	a4,a5,.L501
	lw	a4,-72(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-84(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bge	a4,a5,.L501
	lw	a5,-84(s0)
	sw	a5,-72(s0)
.L501:
	lw	a4,-88(s0)
	lw	a5,-36(s0)
	bge	a4,a5,.L500
	lw	a4,-72(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-88(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bgt	a4,a5,.L500
	lw	a4,-72(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-88(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	lw	a5,0(a5)
	bge	a4,a5,.L500
	lw	a5,-88(s0)
	sw	a5,-72(s0)
.L500:
	lw	a4,-72(s0)
	lw	a5,-80(s0)
	beq	a4,a5,.L502
	lw	a4,-80(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-92(s0)
	lw	a4,-72(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-80(s0)
	addi	a5,s0,-1216
	slli	a3,a3,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a4,-72(s0)
	addi	a5,s0,-1216
	slli	a4,a4,2
	add	a5,a4,a5
	lw	a4,-92(s0)
	sw	a4,0(a5)
.L502:
	lw	a4,-72(s0)
	lw	a5,-80(s0)
	bne	a4,a5,.L503
.L499:
	lw	a5,-36(s0)
	bne	a5,zero,.L504
	sw	zero,-156(s0)
	sw	zero,-24(s0)
	j	.L505
.L507:
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-152(s0)
	lw	a5,-156(s0)
	addi	a4,s0,-152
	mv	a1,a4
	mv	a0,a5
	call	sglib_rbtree_find_member
	mv	a5,a0
	bne	a5,zero,.L506
	li	a0,16
	call	malloc_beebs
	sw	a0,-76(s0)
	lui	a5,%hi(array)
	addi	a4,a5,%lo(array)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-76(s0)
	sw	a4,0(a5)
	addi	a5,s0,-156
	lw	a1,-76(s0)
	mv	a0,a5
	call	sglib_rbtree_add
.L506:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L505:
	lw	a4,-24(s0)
	li	a5,99
	ble	a4,a5,.L507
	lw	a4,-156(s0)
	addi	a5,s0,-812
	mv	a1,a4
	mv	a0,a5
	call	sglib_rbtree_it_init_inorder
	sw	a0,-44(s0)
	j	.L508
.L509:
	lw	a5,-44(s0)
	lw	a4,0(a5)
	lw	a5,-128(s0)
	add	a5,a4,a5
	sw	a5,-128(s0)
	addi	a5,s0,-812
	mv	a0,a5
	call	sglib_rbtree_it_next
	sw	a0,-44(s0)
.L508:
	lw	a5,-44(s0)
	bne	a5,zero,.L509
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L461:
	lw	a4,-20(s0)
	lw	a5,-1252(s0)
	blt	a4,a5,.L510
	lw	a5,-128(s0)
	mv	a0,a5
	lw	ra,1260(sp)
	lw	s0,1256(sp)
	addi	sp,sp,1264
	jr	ra
	.size	benchmark_body, .-benchmark_body
	.section	.rodata
	.align	2
	.type	array_exp.0, @object
	.size	array_exp.0, 400
array_exp.0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	36
	.word	37
	.word	38
	.word	39
	.word	40
	.word	41
	.word	42
	.word	43
	.word	44
	.word	45
	.word	46
	.word	47
	.word	48
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	58
	.word	59
	.word	60
	.word	61
	.word	62
	.word	63
	.word	64
	.word	65
	.word	66
	.word	67
	.word	68
	.word	69
	.word	70
	.word	71
	.word	72
	.word	73
	.word	74
	.word	75
	.word	76
	.word	77
	.word	78
	.word	79
	.word	80
	.word	81
	.word	82
	.word	83
	.word	84
	.word	85
	.word	86
	.word	87
	.word	88
	.word	89
	.word	90
	.word	91
	.word	92
	.word	93
	.word	94
	.word	95
	.word	96
	.word	97
	.word	98
	.word	99
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
