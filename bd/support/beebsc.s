	.file	"beebsc.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	long_sqrt
	.type	long_sqrt, @function
long_sqrt:
	li	a5,1073741824
	mv	a3,a0
	bge	a0,a5,.L2
.L3:
	srai	a5,a5,2
	blt	a3,a5,.L3
	beq	a5,zero,.L9
.L2:
	li	a0,0
.L7:
	slli	a4,a5,1
	add	a2,a0,a5
	add	a4,a4,a0
	srai	a5,a5,2
	blt	a3,a2,.L5
.L18:
	srai	a0,a4,1
	beq	a5,zero,.L1
	slli	a4,a5,1
	sub	a3,a3,a2
	add	a2,a0,a5
	add	a4,a4,a0
	srai	a5,a5,2
	bge	a3,a2,.L18
.L5:
	srai	a0,a0,1
	bne	a5,zero,.L7
	ret
.L9:
	li	a0,0
.L1:
	ret
	.size	long_sqrt, .-long_sqrt
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
	beq	a0,zero,.L27
	lui	a2,%hi(heap_ptr)
	lw	a0,%lo(heap_ptr)(a2)
	lui	a3,%hi(heap_requested)
	lw	a1,%lo(heap_requested)(a3)
	add	a4,a0,a5
	andi	a6,a4,3
	add	a5,a5,a1
	bne	a6,zero,.L31
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a1,a4,.L27
.L32:
	sw	a4,%lo(heap_ptr)(a2)
	ret
.L31:
	li	a1,4
	sub	a1,a1,a6
	add	a5,a5,a1
	add	a4,a4,a1
	lui	a1,%hi(heap_end)
	lw	a1,%lo(heap_end)(a1)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a1,a4,.L32
.L27:
	li	a0,0
	ret
	.size	malloc_beebs, .-malloc_beebs
	.align	2
	.globl	calloc_beebs
	.type	calloc_beebs, @function
calloc_beebs:
	mul	a2,a0,a1
	beq	a2,zero,.L37
	lui	a0,%hi(heap_ptr)
	lw	a5,%lo(heap_ptr)(a0)
	lui	a1,%hi(heap_requested)
	lw	a4,%lo(heap_requested)(a1)
	add	a3,a5,a2
	andi	a7,a3,3
	add	a4,a2,a4
	bne	a7,zero,.L47
	lui	a6,%hi(heap_end)
	lw	a6,%lo(heap_end)(a6)
	sw	a4,%lo(heap_requested)(a1)
	bltu	a6,a3,.L37
.L48:
	sw	a3,%lo(heap_ptr)(a0)
	beq	a5,zero,.L44
	addi	sp,sp,-32
	mv	a0,a5
	li	a1,0
	sw	ra,28(sp)
	sw	a5,12(sp)
	call	memset
	lw	a5,12(sp)
	lw	ra,28(sp)
	mv	a0,a5
	addi	sp,sp,32
	jr	ra
.L47:
	li	a6,4
	sub	a6,a6,a7
	add	a4,a4,a6
	add	a3,a3,a6
	lui	a6,%hi(heap_end)
	lw	a6,%lo(heap_end)(a6)
	sw	a4,%lo(heap_requested)(a1)
	bgeu	a6,a3,.L48
.L37:
	li	a5,0
.L44:
	mv	a0,a5
	ret
	.size	calloc_beebs, .-calloc_beebs
	.align	2
	.globl	realloc_beebs
	.type	realloc_beebs, @function
realloc_beebs:
	beq	a0,zero,.L50
	beq	a1,zero,.L50
	lui	a6,%hi(heap_ptr)
	lw	a2,%lo(heap_ptr)(a6)
	lui	a3,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a3)
	add	a4,a2,a1
	andi	a7,a4,3
	add	a5,a1,a5
	bne	a7,zero,.L75
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bltu	a7,a4,.L50
.L76:
	sw	a4,%lo(heap_ptr)(a6)
	beq	a2,zero,.L50
	addi	a5,a1,-1
	li	a4,6
	bleu	a5,a4,.L60
	or	a3,a0,a2
	andi	a3,a3,3
	mv	a4,a2
	mv	a5,a0
	bne	a3,zero,.L60
	addi	a3,a2,-1
	sub	a3,a3,a0
	sltiu	a3,a3,3
	bne	a3,zero,.L60
	andi	a7,a1,-4
	add	a6,a0,a7
.L53:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a6,a5,.L53
	beq	a1,a7,.L49
	lbu	a3,0(a6)
	add	a4,a2,a7
	addi	a5,a7,1
	sb	a3,0(a4)
	bleu	a1,a5,.L49
	add	a4,a0,a5
	lbu	a4,0(a4)
	add	a5,a2,a5
	addi	a7,a7,2
	sb	a4,0(a5)
	bleu	a1,a7,.L49
	add	a0,a0,a7
	lbu	a5,0(a0)
	add	a7,a2,a7
	sb	a5,0(a7)
.L49:
	mv	a0,a2
	ret
.L75:
	li	t1,4
	sub	a7,t1,a7
	add	a5,a5,a7
	add	a4,a4,a7
	lui	a7,%hi(heap_end)
	lw	a7,%lo(heap_end)(a7)
	sw	a5,%lo(heap_requested)(a3)
	bgeu	a7,a4,.L76
.L50:
	li	a2,0
	mv	a0,a2
	ret
.L60:
	li	a5,0
.L57:
	add	a4,a0,a5
	lbu	a3,0(a4)
	add	a4,a2,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	bgtu	a1,a5,.L57
	mv	a0,a2
	ret
	.size	realloc_beebs, .-realloc_beebs
	.align	2
	.globl	free_beebs
	.type	free_beebs, @function
free_beebs:
	ret
	.size	free_beebs, .-free_beebs
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
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
