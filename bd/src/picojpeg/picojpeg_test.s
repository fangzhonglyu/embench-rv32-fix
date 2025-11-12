	.file	"picojpeg_test.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zicsr2p0_zifencei2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	jpeg_data
	.section	.rodata
	.align	2
	.type	jpeg_data, @object
	.size	jpeg_data, 570
jpeg_data:
	.base64	"/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAFA3PEY8MlBGQUZaVVBfeMiCeG5uePWvuZHI////////////////////////////////////////////////////2wBDAVVaWnhpeOuCguv/////////////////////////////////////////////////////////////////////////wAARCABAADMDAREAAhEBAxEB/8QAGAAAAwEBAAAAAAAAAAAAAAAAAQIDAAT/xAAmEAACAgEDAwQDAQAAAAAAAAABAgARAxIhMUFhcQQiU5ETI1Fi/8QAFQEBAQAAAAAA"
	.base64	"AAAAAAAAAAAAAAH/xAAUEQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIRAxEAPwDHiAsoTWbhAs9YBUWIAKkQNA6vb2hUM2QDYQJqSdtJhFlQkVCgPaSAfIgY1UgFCUPr/wAr9QJ41BysSBCOtVWoDKUv21IqGVP2ggShDkX4hA2tfiEg0DAEk1yZQ+LGVyDU130gOuFA9knxIKOLF8UJRyY1BbUeIHUClcD6gc9SDGwNoCW93dHzKihDsAQOOtwpshP4ahElUyKpfeAuqAbB2qApIU0wNSoouReFBhVQl4zY7yDlAfnTUqG1DrAUkDkyKOJg2RfMotmxAjVYHmAM"
	.base64	"WJUGpiD4kDtnQbCzAk+cVUCOtf4JURLXAf07EZl7mFV9S7tkAOy9BAVFYjayO0IbKhxAdLgRBgC4H//Z"
	.globl	jpeg_off
	.section	.sbss,"aw",@nobits
	.align	2
	.type	jpeg_off, @object
	.size	jpeg_off, 4
jpeg_off:
	.zero	4
	.text
	.align	2
	.globl	pjpeg_need_bytes_callback
	.type	pjpeg_need_bytes_callback, @function
pjpeg_need_bytes_callback:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	mv	a5,a1
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-37(s0)
	lbu	a3,-37(s0)
	lui	a5,%hi(jpeg_off)
	lw	a5,%lo(jpeg_off)(a5)
	li	a4,570
	sub	a4,a4,a5
	mv	a5,a3
	bleu	a5,a4,.L2
	mv	a5,a4
.L2:
	sw	a5,-20(s0)
	lui	a5,%hi(jpeg_off)
	lw	a4,%lo(jpeg_off)(a5)
	lui	a5,%hi(jpeg_data)
	addi	a5,a5,%lo(jpeg_data)
	add	a5,a4,a5
	lw	a2,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	memcpy
	lw	a5,-20(s0)
	andi	a4,a5,0xff
	lw	a5,-44(s0)
	sb	a4,0(a5)
	lui	a5,%hi(jpeg_off)
	lw	a4,%lo(jpeg_off)(a5)
	lw	a5,-20(s0)
	add	a4,a4,a5
	lui	a5,%hi(jpeg_off)
	sw	a4,%lo(jpeg_off)(a5)
	li	a5,0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	pjpeg_need_bytes_callback, .-pjpeg_need_bytes_callback
	.globl	pInfo
	.bss
	.align	2
	.type	pInfo, @object
	.size	pInfo, 44
pInfo:
	.zero	44
	.text
	.align	2
	.globl	verify_benchmark
	.type	verify_benchmark, @function
verify_benchmark:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lui	a5,%hi(pInfo)
	addi	a5,a5,%lo(pInfo)
	lw	a4,32(a5)
	li	a2,64
	lui	a5,%hi(r_ref.2)
	addi	a1,a5,%lo(r_ref.2)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L5
	lui	a5,%hi(pInfo)
	addi	a5,a5,%lo(pInfo)
	lw	a4,36(a5)
	li	a2,64
	lui	a5,%hi(g_ref.1)
	addi	a1,a5,%lo(g_ref.1)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L5
	lui	a5,%hi(pInfo)
	addi	a5,a5,%lo(pInfo)
	lw	a4,40(a5)
	li	a2,64
	lui	a5,%hi(b_ref.0)
	addi	a1,a5,%lo(b_ref.0)
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L5
	li	a5,1
	j	.L7
.L5:
	li	a5,0
.L7:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
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
	li	a0,6
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
	j	.L14
.L18:
	lui	a5,%hi(jpeg_off)
	sw	zero,%lo(jpeg_off)(a5)
	li	a3,0
	li	a2,0
	lui	a5,%hi(pjpeg_need_bytes_callback)
	addi	a1,a5,%lo(pjpeg_need_bytes_callback)
	lui	a5,%hi(pInfo)
	addi	a0,a5,%lo(pInfo)
	call	pjpeg_decode_init
	mv	a5,a0
	sb	a5,-21(s0)
.L17:
	call	pjpeg_decode_mcu
	mv	a5,a0
	sb	a5,-21(s0)
	lbu	a4,-21(s0)
	li	a5,1
	beq	a4,a5,.L21
	j	.L17
.L21:
	nop
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L14:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	blt	a4,a5,.L18
	li	a5,0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	benchmark_body, .-benchmark_body
	.section	.rodata
	.align	2
	.type	r_ref.2, @object
	.size	r_ref.2, 64
r_ref.2:
	.base64	"ISEhISEhISEgICAgICAgIB0dHR0dHR0dGRkZGRkZGRkVFRUVFRUVFRERERERERERDg4ODg4ODg4NDQ0NDQ0NDQ=="
	.align	2
	.type	g_ref.1, @object
	.size	g_ref.1, 64
g_ref.1:
	.ascii	"555555554444444411111111--------))))))))%%%%%%%%\"\"\"\"\"\""
	.ascii	"\"\"!!!!!!!!"
	.align	2
	.type	b_ref.0, @object
	.size	b_ref.0, 64
b_ref.0:
	.ascii	"CCCCCCCCBBBBBBBB????????;;;;;;;;777777773333333300000000////"
	.ascii	"////"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
