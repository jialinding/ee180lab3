###############################################################################
# File         : addiu.S
# Project      : EE180 Lab 2: MIPS
#
# Standards/Formatting:
#   MIPS gas, soft tab, 80 column
#
# Description:
#   Test the functionality of the 'addiu' instruction.
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
    #lui     $t0, 0xffff         # A = -1000
    #nop
    #ori     $t0, $t0, 0xfc18
    #nop
    #addiu   $t1, $t0, 56        # B = A + 56 = -944
    #nop
	addiu   $t0, $0, 1000
    add.s   $t2, $s1, $s1       # should ignore $t0, and output 1 since 1 < 255
    #nop
    #nop
    sw      $t2, 4($s0)         # Set the test result
    sw      $s1, 0($s0)         # Set 'done'

$done:
    j       $done
    nop

    .end boot
