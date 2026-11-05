; Basic macros to make readability and editing better

; Macro for simply writing a long address to the A and X registers
; This pattern is used for passing between the S-CPU and SA-1, and for loading DMA tables
macro LoadLongToAX(addr)
    LDA.W #<addr>
    LDX.W #<addr>>>16
endmacro

; Macro for building the corkboard panels on the corkboard screen
macro WriteCorkboardPanelGFX(subgame_offset, x_pos, y_pos, height, width)
    !pos #= (<x_pos>*$2)+(<y_pos>*$40)+$7000
    !counter #= <height>
    !offset #= 0

    while !counter > 0
        LDY.W #!pos+(!offset*$40)
        PHB
        LDX.W #<subgame_offset>+(!offset*(<width>*2))
        LDA.W #(<width>*2)-1
        MVN $7E,$7E
        PLB

        !offset #= !offset+1
        !counter #= !counter-1
    endwhile
endmacro