	.file	1 "sobel_mips.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	sobel
	.set	nomips16
	.set	nomicromips
	.ent	sobel
	.type	sobel, @function
sobel:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	sw	$0,0($fp)
	sw	$0,4($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
	j	$L2
	nop

$L10:
	li	$2,1			# 0x1
	sw	$2,4($fp)
	j	$L3
	nop

$L9:
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-643
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$5,$2
	lw	$2,0($fp)
	nop
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,6
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-1
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	subu	$4,$5,$2
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-642
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sll	$2,$2,1
	addu	$4,$4,$2
	lw	$2,0($fp)
	nop
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$3,$2
	move	$2,$0
	subu	$2,$2,$3
	sll	$2,$2,1
	addu	$4,$4,$2
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-641
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	addu	$4,$4,$2
	lw	$2,0($fp)
	nop
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,1
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	subu	$2,$4,$2
	bgez	$2,$L4
	nop

	subu	$2,$0,$2
$L4:
	sh	$2,8($fp)
	lhu	$2,8($fp)
	nop
	andi	$3,$2,0xffff
	sltu	$3,$3,256
	bne	$3,$0,$L5
	nop

	li	$2,255			# 0xff
$L5:
	sh	$2,8($fp)
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-643
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$5,$2
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-641
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	subu	$4,$5,$2
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-1
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	sll	$2,$2,1
	addu	$4,$4,$2
	lw	$3,0($fp)
	nop
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,1
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	move	$3,$2
	move	$2,$0
	subu	$2,$2,$3
	sll	$2,$2,1
	addu	$4,$4,$2
	lw	$2,0($fp)
	nop
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-1
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	addu	$4,$4,$2
	lw	$2,0($fp)
	nop
	addiu	$3,$2,1
	move	$2,$3
	sll	$2,$2,6
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,1
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lbu	$2,0($2)
	nop
	subu	$2,$4,$2
	bgez	$2,$L6
	nop

	subu	$2,$0,$2
$L6:
	sh	$2,10($fp)
	lhu	$2,10($fp)
	nop
	andi	$3,$2,0xffff
	sltu	$3,$3,256
	bne	$3,$0,$L7
	nop

	li	$2,255			# 0xff
$L7:
	sh	$2,10($fp)
	lhu	$3,8($fp)
	lhu	$2,10($fp)
	nop
	addu	$2,$3,$2
	sh	$2,12($fp)
	lhu	$2,12($fp)
	nop
	andi	$3,$2,0xffff
	sltu	$3,$3,256
	bne	$3,$0,$L8
	nop

	li	$2,255			# 0xff
$L8:
	sh	$2,12($fp)
	lw	$2,0($fp)
	nop
	sll	$2,$2,7
	sll	$3,$2,2
	addu	$3,$2,$3
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,-641
	lw	$3,28($fp)
	nop
	addu	$2,$3,$2
	lhu	$3,12($fp)
	nop
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,4($fp)
	nop
	addiu	$2,$2,1
	sw	$2,4($fp)
$L3:
	lw	$3,4($fp)
	lw	$2,36($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L9
	nop

	lw	$2,0($fp)
	nop
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$3,0($fp)
	lw	$2,32($fp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L10
	nop

	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sobel
	.size	sobel, .-sobel
	.align	2
	.globl	start_wait
	.set	nomips16
	.set	nomicromips
	.ent	start_wait
	.type	start_wait, @function
start_wait:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	li	$2,-2147352576			# 0xffffffff80020000
	ori	$2,$2,0x8
	sw	$2,0($fp)
	nop
$L12:
	lw	$2,0($fp)
	nop
	lw	$2,0($2)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L12
	nop

	lw	$2,0($fp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,4($fp)
	lw	$2,4($fp)
	nop
	srl	$2,$2,2
	andi	$3,$2,0x3ff
	lw	$2,16($fp)
	nop
	sw	$3,0($2)
	lw	$2,4($fp)
	nop
	srl	$2,$2,12
	andi	$3,$2,0x3ff
	lw	$2,20($fp)
	nop
	sw	$3,0($2)
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	start_wait
	.size	start_wait, .-start_wait
	.align	2
	.globl	done_wait
	.set	nomips16
	.set	nomicromips
	.ent	done_wait
	.type	done_wait, @function
done_wait:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	li	$2,-2147352576			# 0xffffffff80020000
	ori	$2,$2,0x8
	sw	$2,0($fp)
	li	$2,-2147352576			# 0xffffffff80020000
	sw	$2,4($fp)
	lw	$2,4($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	nop
$L14:
	lw	$2,0($fp)
	nop
	lw	$2,0($2)
	nop
	andi	$2,$2,0x1
	bne	$2,$0,$L14
	nop

	lw	$2,4($fp)
	li	$3,-2			# 0xfffffffffffffffe
	sw	$3,0($2)
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	done_wait
	.size	done_wait, .-done_wait
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	li	$2,-2147352576			# 0xffffffff80020000
	ori	$2,$2,0x8
	sw	$2,16($fp)
$L16:
	addiu	$3,$fp,32
	addiu	$2,$fp,36
	move	$4,$3
	move	$5,$2
	jal	start_wait
	nop

	lw	$2,16($fp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,20($fp)
	lw	$2,20($fp)
	nop
	srl	$2,$2,2
	andi	$2,$2,0x3ff
	sw	$2,32($fp)
	lw	$2,20($fp)
	nop
	srl	$2,$2,12
	andi	$2,$2,0x3ff
	sw	$2,36($fp)
	lw	$2,20($fp)
	nop
	srl	$3,$2,24
	li	$2,-2147483648			# 0xffffffff80000000
	or	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,20($fp)
	nop
	srl	$3,$2,25
	li	$2,-2147483648			# 0xffffffff80000000
	or	$2,$3,$2
	sw	$2,28($fp)
	lw	$3,32($fp)
	lw	$2,36($fp)
	lw	$4,24($fp)
	lw	$5,28($fp)
	move	$6,$3
	move	$7,$2
	jal	sobel
	nop

	jal	done_wait
	nop

	j	$L16
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.1"
