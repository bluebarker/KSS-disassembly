; Compiler macros for KSS ActionScript commands
; For the complete list of ActionScript commands, see here: https://github.com/CataLatas/hal-actionscript-extractor/blob/main/KSS/DOCUMENTATION.txt

macro AS_END()
    db $00
endmacro

macro AS_HALT()
    db $01
endmacro

macro AS_WAIT(imm8)    ; wait time is in frames (e.g. 3 = 3 frames)
    db $02, db <imm8>
endmacro

macro AS_ONTICK(long)
    db $03
    dl <long>
endmacro

macro AS_ENDTICK()
    db $04
endmacro

macro AS_LOOP_IMM8(imm8)
    db $05, <imm8>
endmacro

macro AS_LOOP_REG()
    db $06
endmacro

macro AS_ENDLOOP()
    db $07
endmacro

macro AS_JSL(long_addr)
    db $08
    dl <long_addr>
endmacro

macro AS_RTL()
    db $09
endmacro

macro AS_JSR(abs_addr)
    db $0A
    dw <abs_addr>
endmacro

macro AS_MULTIJSR(...)
    db $0B
    db sizeof(...)

    !i #= 0
    while !i < sizeof(...)
        dw <...[!i]>
        !i #= !i+1
    endwhile
endmacro

macro AS_RTS()
    db $0C
endmacro

macro AS_JML(long)
    db $0D
    dl <long>
endmacro

macro AS_JMP(abs)
    db $0E
    dw <abs>
endmacro

macro AS_MULTIJMP(...)
    db $0F
    db sizeof(...)

    !i #= 0
    while !i < sizeof(...)
        dw <...[!i]>
        !i #= !i+1
    endwhile
endmacro

macro AS_JEQ(abs)
    db $10
    dw <abs>
endmacro

macro AS_JNE(abs)
    db $11
    dw <abs>
endmacro

macro AS_BREAKEQ(abs)
    db $12
    dw <abs>
endmacro

macro AS_BREAKNE(abs)
    db $13
    dw <abs>
endmacro

macro AS_SPRITEMAP(long)
    db $14
    dl <long>
endmacro

macro AS_ONDRAW(abs)
    db $15
    dw <abs>
endmacro

macro AS_UNK16(abs)
    db $16
    dw <abs>
endmacro

; Probably should combine all MOV routines into its own routine at some point, for the sake of convenience. Doing this for now because it seems very complex.
macro AS_MOV_REG_IMM16(imm16)
    db $17
    dw <imm16>
endmacro

macro AS_MOV_REG_ABS(abs)
    db $18
    dw <abs>
endmacro

macro AS_MOV_VAR_IMM16(var, imm16)
    db $19
    db <var>
    dw <imm16>
endmacro

macro AS_MOV_ABS_IMM8(abs, imm8)
    db $1A
    dw <abs>
    db <imm8>
endmacro

macro AS_MOV_ABS_IMM16(abs, imm16)
    db $1B
    dw <abs>, <imm16>
endmacro

!AND = 0
!OR = 1
!ADD = 2
!EOR = 3

; Same case with BINOP, would be nice to combine all of these macros
macro AS_BINOP_VAR(var, op, imm16)
    db $1C, <var>, <op>
    dw <imm16>
endmacro

macro AS_BINOP_ABS_IMM8(abs, op, imm8)
    db $1D
    dw <abs>
    db <op>, <imm8>
endmacro

macro AS_BINOP_ABS_IMM16(abs, op, imm16)
    db $1E
    dw <abs>
    db <op>
    dw <imm16>
endmacro

macro AS_BINOP_REG(op, imm16)
    db $1F, <op>
    dw <imm16>
endmacro

macro AS_MOV_VAR_REG(var)
    db $20, <var>
endmacro

macro AS_MOV_REG_VAR(var)
    db $21, <var>
endmacro

macro AS_WAIT_VAR(var)
    db $22, <var>
endmacro

macro AS_SETPOSE_VAR(var)
    db $23, <var>
endmacro

macro AS_UNK24()
    db $24
endmacro

macro AS_UNK25()
    db $25
endmacro

macro AS_SETXPOS(imm16)
    db $26
    dw <imm16>
endmacro

macro AS_SETYPOS(imm16)
    db $27
    dw <imm16>
endmacro

macro AS_ADDXPOS(imm16)
    db $28
    dw <imm16>
endmacro 

macro AS_ADDYPOS(imm16)
    db $29
    dw <imm16>
endmacro 

macro AS_UNK2A(imm8, imm16)
    db $2A, <imm8>
    dw <imm16>
endmacro

macro AS_UNK2B(imm8, imm16)
    db $2B, <imm8>
    dw <imm16>
endmacro

macro AS_UNK2C(imm8, imm16)
    db $2C, <imm8>
    dw <imm16>
endmacro

macro AS_UNK2D(imm8, imm16)
    db $2D, <imm8>
    dw <imm16>
endmacro

macro AS_UNK2E(imm8)
    db $2D, <imm8>
endmacro

macro AS_UNK2F(imm8, imm16)
    db $2F, <imm8>
    dw <imm16>
endmacro

macro AS_UNK30(imm8, imm16)
    db $30, <imm8>
    dw <imm16>
endmacro

macro AS_UNK31(imm8, imm16)
    db $31, <imm8>
    dw <imm16>
endmacro

macro AS_UNK32(imm8, imm16)
    db $32, <imm8>
    dw <imm16>
endmacro

macro AS_UNK33(imm16)
    db $33
    dw <imm16>
endmacro

macro AS_UNK34(imm8)
    db $34, <imm8>
endmacro

macro AS_SETPOSE_IMM16(imm16)
    db $35
    dw <imm16>
endmacro

; Used with byte range $36-$3F. Causes game crash.
macro AS_UNDEFINED(hex)
    db <hex>
endmacro 


macro AS_SETPOSE_IMM8(imm8, wait)
    db $40|(<wait>&$0F), <imm8>
endmacro

macro AS_ADDPOSE(imm8, wait)
    db $50|(<wait>&$0F), <imm8>
endmacro

macro AS_INCPOSE(wait)
    db $60|(<wait>&$0F)
endmacro

macro AS_DECPOSE(wait)
    db $70|(<wait>&$0F)
endmacro

macro AS_UNK8x(value, wait)
    db $80|(<wait>&$0F)
    dw <value>
endmacro

macro AS_UNK9x(value, wait)
    db $90|(<wait>&$0F)
    dw <value>
endmacro

macro AS_UNKAx(value, wait)
    db $A0|(<wait>&$0F)
    dw <value>
endmacro

macro AS_UNKBx(value, wait)
    db $B0|(<wait>&$0F)
    dw <value>
endmacro

macro AS_ASMCALL(long, wait)
    db $C0|(<wait>&$0F)
    dl <long>
endmacro

macro AS_PRESETCALL(imm8, wait)
    db $D0|(<wait>&$0F), <imm8>
endmacro

macro AS_UNKEx(imm8, wait)
    db $E0|(<wait>&$0F), <imm8>
endmacro

macro AS_UNKFx(imm8, wait)
    db $F0|(<wait>&$0F), <imm8>
endmacro