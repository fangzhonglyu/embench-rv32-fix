	.file	"beebsc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	seed
	.comm	seed,4,4
	.local	heap_ptr
	.comm	heap_ptr,4,4
	.local	heap_end
	.comm	heap_end,4,4
	.local	heap_requested
	.comm	heap_requested,4,4
	.align	2
	.globl	rand_beebs
	.type	rand_beebs, @function
rand_beebs:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	lui	a5,%hi(seed)
	lw	a4,%lo(seed)(a5)
	li	a5,1103515648
	addi	a5,a5,-403
	mul	a4,a4,a5
	li	a5,12288
	addi	a5,a5,57
	add	a4,a4,a5
	li	a5,-2147483648
	addi	a5,a5,-1
	and	a4,a4,a5
	lui	a5,%hi(seed)
	sw	a4,%lo(seed)(a5)
	lui	a5,%hi(seed)
	lw	a5,%lo(seed)(a5)
	srai	a5,a5,16
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	rand_beebs, .-rand_beebs
	.align	2
	.globl	srand_beebs
	.type	srand_beebs, @function
srand_beebs:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	lui	a5,%hi(seed)
	sw	a4,%lo(seed)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	srand_beebs, .-srand_beebs
	.section	.rodata
	.align	2
.LC0:
	.string	"heap_size % sizeof(void *) == 0"
	.align	2
.LC1:
	.string	"/home/soxehli/work/egraph_isa_compiler_codesign/embench-iot/support/beebsc.c"
	.text
	.align	2
	.globl	init_heap_beebs
	.type	init_heap_beebs, @function
init_heap_beebs:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-24(s0)
	andi	a5,a5,3
	beq	a5,zero,.L5
	lui	a5,%hi(.LC0)
	addi	a3,a5,%lo(.LC0)
	lui	a5,%hi(__func__.0)
	addi	a2,a5,%lo(__func__.0)
	li	a1,65
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	__assert_func
.L5:
	lui	a5,%hi(heap_ptr)
	lw	a4,-20(s0)
	sw	a4,%lo(heap_ptr)(a5)
	lui	a5,%hi(heap_ptr)
	lw	a4,%lo(heap_ptr)(a5)
	lw	a5,-24(s0)
	add	a4,a4,a5
	lui	a5,%hi(heap_end)
	sw	a4,%lo(heap_end)(a5)
	lui	a5,%hi(heap_requested)
	sw	zero,%lo(heap_requested)(a5)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	init_heap_beebs, .-init_heap_beebs
	.align	2
	.globl	check_heap_beebs
	.type	check_heap_beebs, @function
check_heap_beebs:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(heap_requested)
	lw	a5,%lo(heap_requested)(a5)
	lw	a4,-20(s0)
	add	a4,a4,a5
	lui	a5,%hi(heap_end)
	lw	a5,%lo(heap_end)(a5)
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	check_heap_beebs, .-check_heap_beebs
	.align	2
	.globl	malloc_beebs
	.type	malloc_beebs, @function
malloc_beebs:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L9
	li	a5,0
	j	.L10
.L9:
	lui	a5,%hi(heap_ptr)
	lw	a4,%lo(heap_ptr)(a5)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lui	a5,%hi(heap_requested)
	lw	a4,%lo(heap_requested)(a5)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lui	a5,%hi(heap_requested)
	sw	a4,%lo(heap_requested)(a5)
	li	a5,4
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	remu	a5,a4,a5
	beq	a5,zero,.L11
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	remu	a5,a4,a5
	lw	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lui	a5,%hi(heap_requested)
	lw	a4,%lo(heap_requested)(a5)
	lw	a5,-28(s0)
	add	a4,a4,a5
	lui	a5,%hi(heap_requested)
	sw	a4,%lo(heap_requested)(a5)
.L11:
	lui	a5,%hi(heap_end)
	lw	a5,%lo(heap_end)(a5)
	lw	a4,-20(s0)
	bleu	a4,a5,.L12
	li	a5,0
	j	.L10
.L12:
	lui	a5,%hi(heap_ptr)
	lw	a5,%lo(heap_ptr)(a5)
	sw	a5,-32(s0)
	lui	a5,%hi(heap_ptr)
	lw	a4,-20(s0)
	sw	a4,%lo(heap_ptr)(a5)
	lw	a5,-32(s0)
.L10:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	malloc_beebs, .-malloc_beebs
	.align	2
	.globl	calloc_beebs
	.type	calloc_beebs, @function
calloc_beebs:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	mv	a0,a5
	call	malloc_beebs
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,.L14
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	mul	a5,a4,a5
	mv	a2,a5
	li	a1,0
	lw	a0,-20(s0)
	call	memset
.L14:
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	calloc_beebs, .-calloc_beebs
	.align	2
	.globl	realloc_beebs
	.type	realloc_beebs, @function
realloc_beebs:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-36(s0)
	bne	a5,zero,.L17
	li	a5,0
	j	.L18
.L17:
	lw	a0,-40(s0)
	call	malloc_beebs
	sw	a0,-24(s0)
	lw	a5,-24(s0)
	beq	a5,zero,.L19
	sw	zero,-20(s0)
	j	.L20
.L21:
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	lw	a5,-20(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L21
.L19:
	lw	a5,-24(s0)
.L18:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	realloc_beebs, .-realloc_beebs
	.align	2
	.globl	free_beebs
	.type	free_beebs, @function
free_beebs:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	nop
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	free_beebs, .-free_beebs
	.section	.rodata
	.align	2
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"init_heap_beebs"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
