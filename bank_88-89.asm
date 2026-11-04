; This bank contains data and code that is ran on the SPC.
;  This includes music data, sound effects, and the SPC engine.
; Although this bank is technically mapped at $880000, the Super MMC maps it to the lower half of bank E4.
; The Super MMC also maps $890000 to the upper half of E4.

ORG $E40000

Music_MegatonPunch:
    incbin Music/MegatonPunch.bin

SPC_Engine:
    incsrc SPC_Engine.asm

; TODO: Identify what is in between all of the music data


ORG $E445FF

Music_SpringBreezeCredits:
    incbin Music/SpringBreezeCredits.bin


ORG $E4633A

Music_MetaKnightFight:
    incbin Music/MetaKnightFight.bin

Music_FloatIsland:
    incbin Music/FloatIsland.bin


ORG $E49B7A

Music_MainOpening:
    incbin Music/MainOpening.bin