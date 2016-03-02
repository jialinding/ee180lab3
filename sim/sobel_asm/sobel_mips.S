        .file   1 "sobel_mips.c"
        .section .mdebug.abi32
        .previous
        .nan    legacy
        .gnu_attribute 4, 1
        .text
        .align  2
        .globl  sobel
        .set    nomips16
        .set    nomicromips
        .ent    sobel
        .type   sobel, @function
sobel:
        .frame  $sp,0,$31               # vars= 0, regs= 0/0, args= 0, gp= 0
        .mask   0x00000000,0
        .fmask  0x00000000,0
        .set    noreorder
        .set    nomacro
        beq     $6,$0,$L21
        addiu   $9,$4,642

        addiu   $12,$5,640
        li      $13,2                   # 0x2
$L3:
        beq     $7,$0,$L10
        addiu   $14,$9,642

        move    $10,$14
        j       $L9
        li      $11,1                   # 0x1

$L4:
        lbu     $2,0($9)
        lbu     $5,2($9)
        sll     $2,$2,1
        subu    $8,$8,$24
        addu    $8,$8,$2
        sll     $2,$5,1
        subu    $2,$8,$2
        addu    $3,$3,$2
        subu    $2,$3,$15
        bltz    $2,$L19
        andi    $4,$4,0xffff

$L5:
        andi    $2,$2,0xffff
        sltu    $3,$2,256
        bne     $3,$0,$L20
        sltu    $3,$4,256

        li      $2,255                  # 0xff
$L20:
        bne     $3,$0,$L7
        nop

        li      $4,255                  # 0xff
$L7:
        addu    $2,$2,$4
        andi    $2,$2,0xffff
        sltu    $3,$2,256
        bne     $3,$0,$L8
        addu    $4,$12,$11

        li      $2,255                  # 0xff
$L8:
        addiu   $11,$11,1
        sltu    $3,$7,$11
        sb      $2,-641($4)
        addiu   $9,$9,1
        bne     $3,$0,$L10
        addiu   $10,$10,1

$L9:
        lbu     $8,-642($9)
        lbu     $3,0($10)
        lbu     $5,-641($9)
        lbu     $4,1($10)
        subu    $2,$8,$3
        sll     $5,$5,1
        lbu     $24,-640($9)
        addu    $5,$2,$5
        sll     $4,$4,1
        lbu     $15,2($10)
        subu    $4,$5,$4
        addu    $4,$4,$24
        subu    $4,$4,$15
        bgez    $4,$L4
        nop

        lbu     $2,0($9)
        lbu     $5,2($9)
        sll     $2,$2,1
        subu    $8,$8,$24
        addu    $8,$8,$2
        sll     $2,$5,1
        subu    $2,$8,$2
        addu    $3,$3,$2
        subu    $4,$0,$4
        subu    $2,$3,$15
        bgez    $2,$L5
        andi    $4,$4,0xffff

$L19:
        j       $L5
        subu    $2,$0,$2

$L10:
        sltu    $2,$6,$13
        move    $9,$14
        addiu   $13,$13,1
        beq     $2,$0,$L3
        addiu   $12,$12,640

$L21:
        j       $31
        nop

        .set    macro
        .set    reorder
        .end    sobel
        .size   sobel, .-sobel
        .align  2
        .globl  start_wait
        .set    nomips16
        .set    nomicromips
        .ent    start_wait
        .type   start_wait, @function
start_wait:
        .frame  $sp,0,$31               # vars= 0, regs= 0/0, args= 0, gp= 0
        .mask   0x00000000,0
        .fmask  0x00000000,0
        .set    noreorder
        .set    nomacro
        li      $3,-2147352576                  # 0xffffffff80020000
$L23:
        lw      $2,8($3)
        nop
        andi    $2,$2,0x1
        beq     $2,$0,$L23
        nop

        lw      $2,8($3)
        nop
        srl     $3,$2,2
        srl     $2,$2,12
        andi    $3,$3,0x3ff
        andi    $2,$2,0x3ff
        sw      $3,0($4)
        j       $31
        sw      $2,0($5)

        .set    macro
        .set    reorder
        .end    start_wait
        .size   start_wait, .-start_wait
        .align  2
        .globl  done_wait
        .set    nomips16
        .set    nomicromips
        .ent    done_wait
        .type   done_wait, @function
done_wait:
        .frame  $sp,0,$31               # vars= 0, regs= 0/0, args= 0, gp= 0
        .mask   0x00000000,0
        .fmask  0x00000000,0
        .set    noreorder
        .set    nomacro
        li      $3,1                    # 0x1
        li      $2,-2147352576                  # 0xffffffff80020000
        sw      $3,0($2)
        li      $3,-2147352576                  # 0xffffffff80020000
$L29:
        lw      $2,8($3)
        nop
        andi    $2,$2,0x1
        bne     $2,$0,$L29
        li      $2,-2                   # 0xfffffffffffffffe

        sw      $2,0($3)
        j       $31
        nop

        .set    macro
        .set    reorder
        .end    done_wait
        .size   done_wait, .-done_wait
        .section        .text.startup,"ax",@progbits
        .align  2
        .globl  main
        .set    nomips16
        .set    nomicromips
        .ent    main
        .type   main, @function
main:
        .frame  $sp,40,$31              # vars= 0, regs= 5/0, args= 16, gp= 0
        .mask   0x800f0000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .set    nomacro
        addiu   $sp,$sp,-40
        sw      $19,32($sp)
        sw      $18,28($sp)
        sw      $17,24($sp)
        sw      $31,36($sp)
        sw      $16,20($sp)
        li      $19,-2147483648                 # 0xffffffff80000000
        li      $18,1                   # 0x1
        li      $17,-2                  # 0xfffffffffffffffe
$L31:
        li      $16,-2147352576                 # 0xffffffff80020000
$L38:
        lw      $2,8($16)
        nop
        andi    $2,$2,0x1
        beq     $2,$0,$L31
        nop

        lw      $2,8($16)
        lw      $7,8($16)
        nop
        srl     $4,$7,24
        srl     $5,$7,25
        srl     $6,$7,2
        srl     $7,$7,12
        or      $4,$4,$19
        or      $5,$5,$19
        andi    $6,$6,0x3ff
        jal     sobel
        andi    $7,$7,0x3ff

        sw      $18,0($16)
$L32:
        li      $3,-2147352576                  # 0xffffffff80020000
        lw      $2,8($3)
        nop
        andi    $2,$2,0x1
        bne     $2,$0,$L32
        nop

        sw      $17,0($3)
        j       $L38
        li      $16,-2147352576                 # 0xffffffff80020000

        .set    macro
        .set    reorder
        .end    main
        .size   main, .-main
        .ident  "GCC: (GNU) 4.9.1"
