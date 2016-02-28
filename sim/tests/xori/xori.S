###############################################################################
# File         : xori.S
# Project      : EE180 Lab 2: MIPS
#
# Standards/Formatting:
#   MIPS gas, soft tab, 80 column
#
# Description:
#   Test the functionality of the 'xori' instruction.
#
###############################################################################

    .section .boot, "x"
    .balign 4
    .set    noreorder
    .global boot
    .ent    boot
boot:
    lui     $s0, 0x8002         # Load the base address of the status/test registers
    ori     $s1, $0, 1          # Prepare the 'done' status
    lui     $t0, 0x0         # A = 0xdeafbeef
    nop
    nop
    ori     $t0, $t0, 0xbeef
    nop
    nop
    #lui     $t1, 0x3141         # B = 0x31415926
    nop
    nop
    #ori     $t1, $t1, 0x5926
    nop
    nop
    #lui     $t2, 0xefee         # C = 0xefeee7c8
    nop
    nop
    #ori     $t2, $t2, 0xe7c8
    nop
    nop
    xori     $t3, $t0, 0x5926       # t3 = BitXor[0xbeef, 0x5926] = 0xE7C9
    nop
    nop
    xori     $t4, $t3, 0xe7c8       # t4 = BitXor[0xE7C9, 0xe7c8] = 0x1
    nop
    nop
    sw      $t4, 4($s0)         # Set the test result
    sw      $s1, 0($s0)         # Set 'done'

$done:
    j       $done
    nop

    .end boot
