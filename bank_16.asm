; This bank contains mainly text data.
; Although this bank is technically mapped at $168000, the Super MMC maps it to the lower half of bank CB.
;  As KSS always references it in this way, all address values will be treated as such.

;table CharMaps/vwf.map		Asar2.0 uses charmaps differently so commenting this out
incsrc "CharMaps/vwf.asm"
org $CB0000

; VWF placement info format:
; 00 - Layer 3 GFX VRAM address
; 02 - Layer 3 tilemap VRAM address
; 04 - X position to start writing at (divided by 8)
; 05 - Y position to start writing at (divided by 8)
; 06 - Width of the text (in 8x8s)
; 07 - Height of the text (in 8x8s)

DATA_CB0000:						;$CB0000	| Table of VWF placement info. 8 bytes per option, see above for details.
	dw $4000,$5000 : db $04,$06,$18,$0A			; 00
	dw $4000,$5000 : db $04,$0E,$18,$0C			; 01 - "Is this your first time" dialogue
	dw $4000,$5000 : db $06,$0C,$14,$04			; 02
	dw $4000,$5000 : db $00,$00,$02,$02			; 03
	dw $4000,$5000 : db $04,$0C,$18,$06			; 04
	dw $4000,$5000 : db $04,$03,$18,$08			; 05 - Beginner's Show (guide)
	dw $4000,$5000 : db $04,$15,$18,$06			; 06 - End of Beginner's Show?
	dw $4000,$5000 : db $04,$13,$18,$06			; 07 - Game tutorial scene
	dw $2000,$2800 : db $06,$06,$16,$08			; 08 - Spring Breeze intro
	dw $4000,$5800 : db $05,$14,$15,$06			; 09
	dw $4000,$1800 : db $09,$00,$10,$20			; 0A
	dw $4000,$4C00 : db $02,$14,$19,$08			; 0B - Revenge of Meta-Knight intro
	dw $4000,$5800 : db $08,$12,$0E,$06			; 0C
	dw $4000,$5800 : db $04,$13,$18,$06			; 0D - Milky Way Wishes intro
	dw $5000,$4000 : db $04,$15,$18,$06			; 0E
	dw $4000,$7C00 : db $08,$00,$18,$20			; 0F
	dw $4000,$5000 : db $02,$02,$1C,$20			; 10
	dw $4000,$5000 : db $0A,$06,$0F,$06			; 11
	dw $4000,$5000 : db $07,$06,$12,$04			; 12
	dw $4000,$5000 : db $06,$17,$18,$04			; 13 - Meta-Knight textbox
	dw $4000,$5000 : db $02,$04,$1C,$12			; 14 - Startup error screens
	dw $3000,$2C00 : db $02,$04,$10,$02			; 15
	dw $4000,$5C00 : db $06,$0B,$13,$08			; 16
	dw $4000,$5C00 : db $04,$0B,$18,$07			; 17
	dw $4000,$5000 : db $05,$02,$17,$04			; 18 - Computer Virus
	dw $4000,$5000 : db $01,$14,$16,$06			; 19 - Talk with Nova
	dw $5000,$5800 : db $08,$08,$11,$0E			; 1A
	dw $4000,$5C00 : db $02,$17,$1C,$02			; 1B

DATA_CB00E0:						;$CB00E0	| 2bpp values used to initialize the VWF text buffer with the base background color defined by $0065.
	dw $0000,$00FF,$FF00,$FFFF
	
	; TODO: $CB00E8 to $CB0F17

ORG $CB0F18
	incsrc "text.asm"

ORG $CB7944
	incbin "Graphics/Marx (CB7944).bin" ; Called from subroutine $D5F444

;ORG $CB9066
;	Marx's red "glow" overlay sprite, 0x456 bytes. Called from subroutine $D5F444. It is decompressed by itself separately, but is also decompressed with the Marx graphics.

;ORG $CB94BC
; pointers?

ORG $CB94D3
	LDA $73AC
	STA $17D7
	RTL

; unsure what this area could be doing, will return to it later