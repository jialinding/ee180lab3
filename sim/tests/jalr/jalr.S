###############################################################################
# File         : jr.S
# Project      : EE180 Lab 2: MIPS
#
# Standards/Formatting:
#   MIPS gas, soft tab, 80 column
#
# Description:
#   Test the functionality of the 'jr' instruction.
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
    addiu   $t0, $zero, $target # HEY YOU!!!! replace this with la $t0, $target
    #nop # see above
    #nop # do it
    #nop
    #nop
    jalr    $t0
    ori     $v0, $0, 0          # The test result starts as a failure

$finish:
    #nop
    #nop
    sw      $v0, 4($s0)
    sw      $s1, 0($s0)

$done:
    j       $done
    nop

$target:
    addiu   $t1, $0, $finish       # expected PC+8 in $ra
    #nop
    #nop
    bne     $ra, $t1, $finish
    #nop
    #nop
    j       $finish
    ori     $v0, $0, 1          # Set the result to pass

    .end boot
