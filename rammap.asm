; --== Work RAM ==--

ORG $000000

; === $7E0000 ===
; 2 bytes
; Fixed at 0x0000
; Used to identify code as running on the SNES by reading via $0000
; (The SA-1 would return 0xFFFF instead)
IdentifySNES: skip 2

; Unidentified
skip $7E000E-$7E0002

; === $7E000E ===
; 24 bytes
; SA-1 command wait loop, copied from $00818C
; When jumped to, waits until both a message is received from the chip (via $2130) and a negative value is stored at $300F,
;  at which point it jumps to the routine pointed to by $300C (24-bit).
; This routine should be RTL-ended; after completing execution, it will return back to the start of this routine.
RAM_CommandWaitLoop: skip 24

; === $7E0026 ===
; 14 bytes
; SA-1 response wait loop, copied from $0081A3
; When jumped to, waits until both a message is received from the chip (via $2300) and a positive 16-bit value is stored to $300A,
;  at which point it simply returns back to the caller.
; (Note: $300A is not automatically initialized) 
RAM_ResponseWaitLoop: skip 14

; Unidentified
skip 2

; === $7E0036 ===
; 2 bytes
; Timer tied to new inputs on controller 1
; If the input this frame differs from the previous, this address gets set to 0x14
; Else, it decrements by 1 per frame; if it reaches 0, it gets reset to 0x6.
; If this address gets reset, then $32CC will be set to the input on that frame.
; Else, $32CC will be clear.
P1_ResetRepeat: skip 2

; === $7E0038 ===
; 2 bytes
; Timer tied to new inputs on controller 2
; If the input this frame differs from the previous, this address gets set to 0x14
; Else, it decrements by 1 per frame; if it reaches 0, it gets reset to 0x6.
; If this address gets reset, then $32CE will be set to the input on that frame.
; Else, $32CC will be clear.
P2_ResetRepeat: skip 2

; Unidentified
skip 4

; === $7E003E ===
; 12 bytes
; Table used as part of an indirect HDMA to the screen brightness register ($2100), starting at scanline 0x9B.
; Specifically, it's used for the "fade to black" effect at the bottom of the level.
Table_BottomLevelFade: skip 12

; Unidentified
skip 25

; === $7E0063 ===
; 2 bytes 
; VWF text character width, in pixels.
; Setting this to 0xFFFF will have the characters use a dynamic width rather than monospace.
VWF_Width: skip 2

; === $7E0065 ===
; 1 byte
; VWF text colors for the current tile. Format: ----bbff
; ff - Foreground color
; bb - Background color
VWF_Color: skip 1

; Unidentified
skip 5

; === $7E006B ===
; 1 byte
; Flag for the VWF text to show the blinking cursor in the bottom right of the window.
VWF_ShowCursor: skip 1

; Unidentified
skip 1

; === $7E006D ===
; 1 byte
; Flag for the VWF text to include the secondary color of each character (e.g. the "shadow")
; 00 = no secondary color
; 01 = include secondary color
VWF_SecondaryColor: skip 1

; Unidentified
skip 21

; === $7E0083 ===
; 2 bytes
; Current index of the VWF text pointer stack at $0085
VWF_CurrentIndex: skip 2

; === $7E0085 ===
; 12 bytes
; Subtext pointer stack, with the current position at $0083.
; Whenever subtext is jumped to (with VWF command $0E), a 24-bit return address is written here.
; When that message ends (with VWF command $00), the last 24-bit value in the stack is pulled and the text pointer is set to there.
; Exact size of this table may be smaller than indicated currently.
VWF_Table: skip 12

; === $7E0091 ===
; 3 bytes
; 24-bit pointer to VWF text data. Although this is a 24-bit pointer, the bank byte is always 0xCB (bank 16).
VWF_DataPointer: skip 3

; Unidentified
skip 22

; === $7E00AA ===
; 1 byte
; Currently loaded song. Valid values are 01-42.
CurrentMusic: skip 1 

; === $7E00AB ===
; 1 byte
; Currently loaded sample bank for the music. Valid values are 01-09.
CurrentSampleBank: skip 1

; Unidentified
skip 5

; === $7E00B1 ===
; 2 bytes
; If set to anything greater than zero, updates the status bar in VRAM
;  to match the WRAM mirror located at $7E1617
UpdateStatusBar: skip 2

; === $7E00B3 ===
; 2 bytes
; Which status bar menu is currently active. Values typically are:
; 00 - No partner, no boss 
; 02 - Has partner, no boss
; 04 - No partner, has boss 
; 06 - Has partner, has boss 
; 08 - Textbox (for Revenge of Meta Knight)
CurrentStatusBar: skip 2

; Unidentified
skip 75

; === $7E0100 ===
; 1024 bytes
; Circular VRAM upload buffer, emptied every frame (except during force-blank).
; The index to the start of the buffer is in $3015, while the end is in $3017.

; Each entry has 8 bytes, but depending on the first two, there are two different formats. 
; If the first two bytes are 0000, then it is a single entry write.
; In this case, bytes 2/3 are used as the destination VRAM address and 4/5 as values to write (6/7 are unused).
; Otherwise, all the bytes are used as settings for a DMA:
;  0 - Index (+3) to the table at $00869D for controlling the DMA.
;  1 - 16-bit size
;  2 - 24-bit source
;  6 - 16-bit destination VRAM address

; After writing either, update $3017. While writing the data, if it's about to overflow past $0500, just loop back to $0100.
VRAM_Upload_Buffer: skip 1024

; === $7E0500 ===
; 200 bytes
; Standard palette. All colors are stored in sequence and uploaded to CGRAM during NMI, unless one of the alternate palettes is being used, indicated by $23DC.
; Even if one of the alternative palettes is being used, the first 0x4 FG/BG colors ($0500-$0507) and the first 0x30 sprite colors ($0600-$065F) are still pulled from this table.
Standard_Palette: skip 200

; Unidentified
skip 320

; === $7E0708 ===
; 248 bytes
; Alternative FG/BG palette 0. This is written to colors $04-$7F.
Alternative_FGBG_Palette: skip 248

; Unidentified
skip 96

; === $7E0860 ===
; 160 bytes
; Alternative sprite palette 0. This is written to colors $B0-$FF.
Alternative_Sprite_Palette: skip 160

; === $7E0900 ===
; 160 bytes
; VRAM DMA queue; unlike $7E0100, this one is only emptied on non-lag frames; i.e. a true "end of frame".
; To use, first get the next index from $301F, then write 8 bytes for the DMA:
;  0 - Unused? (Always FF?)
;  1 - 16-bit size
;  3 - 24-bit source
;  6 - 16-bit destination VRAM address
; Finally, update $301F by adding 8 to it.
; Size of this table is uncertain; will need to adjust later.
VRAM_DMA_Queue: skip 168

; === $7E09A8 ===
; 512 bytes
; The list of objects that exist in the current room. The end of the list is denoted by $FFFF.
; Each object in the list constists of two bytes:
;  The low byte is the object type
;  The high byte is the object parameters, if it has any
ObjectSpawnList_Type: skip 512

; === $7E0BA8 ===
; 512 bytes
; The list of X position spawns which correlates to the object list.
ObjectSpawnList_XPos: skip 512

; === $7E0DA8 ===
; 512 bytes
; The list of Y position spawns which correlates to the object list.
ObjectSpawnList_YPos: skip 512

; Unidentified
skip $7E14C7-$7E0FA8

; === $7E14C7 ===
; 8 bytes
; Keeps track of collectables that won't respawn unless the console is reset or the subgame is left.
; Primarily used to keep track of lives collected
Permanent_Collectables: skip 8

; === $7E14CF ===
; 8 bytes
; Keeps track of collectables that will not respawn until leaving the level. 
; Primarily usedd to keep track of Maxim Tomatoes and Invincibility Candy collected
Level_Collectables: skip 8

; === $7E14D7 ===
; 8 bytes
; Keeps track of food items collected.
; Item statuses are cleared on room reload, so these items will always spawn when entering a room.
Room_Collectables: skip 8

; Unidentified
skip 64

; === $7E151F ===
; 248 bytes
; Palette for the status bar, written to colors $04-$7F (other colors are maintained for the level's actual palette).
; Due to an error, the 4 bytes after this table also end up written to colors $80 and $81.
StatusBar_Palette: skip 248

; === $7E1617 ===
; 224 bytes
; Tile numbers for the entire Layer 2 tilemap of the status bar.
StatusBar_TileMap: skip 224

; === $7E16F7 ===
; 224 bytes
; YXPCCCTT for the entire Layer 2 tilemap of the status bar.
StatusBar_YXPCCCTT: skip 224

; Unidentified
skip 1833

; === $7E1F00 ===
; 256 bytes
; SNES program stack. Allocated space may be larger or smaller than currently specified; ends at $1FFF.
SNES_Stack: skip 256

; === $7E2000 ===
; 24319 bytes
; Decompressed data buffer. Data gets decompressed to here as necessary for usage by DMAs.
; The index for where to write the next DMA can be found at $3012, which gets reset at the end of every frame.
DMA_Buffer: skip 24319


; 7EB000 cleared to all FF at $018E76?
; 7EB200 something written to it here: $01C126
; 7EB400 giant list of DMAs for animating background tiles:
; ?? ?? ?? (1 byte, Frame Count to Display DMA) (DMA TABLE FORMAT) (DMA DATA)
;      it is a large list of DMA tables with some other attributes
;      7EB402 is written to $7E0FC8 sometimes (at $01A233)
;      7EB404 is the start of a DMA table
;      7EB407 is fixed to 7EB40D? so data is right after the DMA table
;      DMAs are written to 2CA0 in VRAM
; The rest of this bank seems to be attributed to the DMA table list


ORG $7F0000

; === $7F0000 ===
; 8192 bytes
; The entire Layer 1 Map24 tilemap for the level, two bytes per tile.
; Tiles appear to be laid on in full strips from the left edge of the level to the right edge. 
; As such, the number of tiles per row varies depending on the size of the level.
; DEBUG: For the VRAM viewer, the first 0x1000 bytes of this are used as the raw tilemap to be uploaded into VRAM. 
Level_Tilemap: skip 8192

; === $7F2000 ===
; 4096 bytes
; Table of all tiles in the level that have been changed, i.e. bomb block broke tiles, etc.
; Each tile is one byte
Level_Tilemap_TilesChanged: skip 4096

; === $7F3000 ===
; 1440 bytes
; Table for each meta tile that denotes the first row and first column that each meta tile is using.
Level_Tile_Graphics_1: skip 1440

; === $7F35A0 ===
; 1440 bytes
; Table for each meta tile that denotes the first row and second column that each meta tile is using.
Level_Tile_Graphics_2: skip 1440

; === $7F3B40 ===
; 1440 bytes
; Table for each meta tile that denotes the first row and third column that each meta tile is using.
Level_Tile_Graphics_3: skip 1440

; === $7F40E0 ===
; 1440 bytes
; Table for each meta tile that denotes the second row and first column that each meta tile is using.
Level_Tile_Graphics_4: skip 1440

; === $7F4680 ===
; 1440 bytes
; Table for each meta tile that denotes the second row and second column that each meta tile is using.
Level_Tile_Graphics_5: skip 1440

; === $7F4C20 ===
; 1440 bytes
; Table for each meta tile that denotes the second row and third column that each meta tile is using.
Level_Tile_Graphics_6: skip 1440

; === $7F51C0 ===
; 1440 bytes
; Table for each meta tile that denotes the third row and first column that each meta tile is using.
Level_Tile_Graphics_7: skip 1440

; === $7F5760 ===
; 1440 bytes
; Table for each meta tile that denotes the third row and second column that each meta tile is using.
Level_Tile_Graphics_8: skip 1440

; === $7F5D00 ===
; 1440 bytes
; Table for each meta tile that denotes the third row and third column that each meta tile is using.
Level_Tile_Graphics_9: skip 1440

; === $7F62A0 ===
; 720 bytes
; Table for the attributes of each tile in the current room.
Level_Tile_Attributes: skip 720

; === $7F6570 ===
; 1024 bytes
; VWF text buffer, where each line of character data gets drawn into before being uploaded to VRAM.
; Consists of a 32x2 strip of 8x8 tiles.
VWF_Buffer: skip 1024

; === $7F6970 ===
; 131008 bytes?
; Some sort of table/buffer used at routine at $01E7E7.
; Unclear on what it actually represents.
; Size is probably not accurate, but it is the maximum allowable index given by the game's code.
;UnknownForRoutine01E7E7: skip 131008

; === $7F8800 ===
; 42303 bytes?
; Used as temp storage for loading helper graphics.
; However, this memory is also used initially to load other things before loading the helper graphics (could be the HUD or etc)


; --== SA-1 RAM ==--

ORG $003000

; === $003000 ===
; 2 bytes
; Fixed at 0xFFFF
; Used to identify code running on the SA-1 chip, by reading via $0000
; (The SNES would return 0x0000 instead)
IdentifySA1: skip 2

; Unidentified
skip 6

; === $003008 ===
; 3 bytes
; Used as a 24-bit pointer by the SNES to give the SA-1 chip a routine to execute.
; Controlled by $300A.
Execute_on_SNES: skip 3

; === $00300B ===
; 1 byte
; Flag to tell the SNES to run the pointer written in $3008. 
; If negative, the SA-1 will jump to the routine specified there (assuming it is not already busy).
; Set to 0x00 when the SA-1 finishes execution.
SNES_TriggerExecution: skip 1

; === $00300C ===
; 3 bytes
; Used as a 24-bit pointer by the SA-1 chip to give the SNES a routine to execute.
; Controlled by $300F.
Execute_on_SA1: skip 3

; === $00300F ===
; 1 byte
; Flag to tell the SA-1 to run the pointer written in $300C. 
; If negative, the SNES will jump to the routine specified there (assuming it is not already busy).
; Set to 0x00 when the SNES finishes execution.
SA1_TriggerExecution: skip 1

; === $003010 ===
; 1 byte
; Flag to wait for NMI
; Cleared by the SA-1 chip at the end of the frame, then set to 1 by the SNES after it finishes NMI.
Wait_for_NMI: skip 1

; Unidentified
skip 1 

; === $003012 ===
; 3 bytes
; 24-bit pointer for where to next write decompressed data in $7E2000.
DecompressedDataDest: skip 3

; === $003015 ===
; 2 bytes
; Starting index to the circular VRAM upload buffer at $7E0100.
VRAM_Buffer_StartIndex: skip 2

; === $003017 ===
; 2 bytes
; Ending index to the circular VRAM upload buffer at $7E0100.
VRAM_Buffer_EndIndex: skip 2

; === $003019 ===
; 2 bytes
; Current total NMI execution load.
; If this value exceeds the amount at $301B, a lag frame should be injected to empty pending DMAs.
Current_Total_NMI_Load: skip 2

; === $00301B ===
; 2 bytes
; Maximum NMI execution load, always static at 0x11C8.
; If $3019 is about to pass over this amount, a lag frame should be injected so that NMI doesn't overflow.
Max_NMI_Load: skip 2

; === $00301D ===
; 2 bytes
; Current NMI execution load for DMAs queued to $0900.
; After an injected lag frame, $3019 should be set to this value, as the $0900 buffer will not be emptied until a true end of frame.
Current_NMI_Load: skip 2

; === $00301F ===
; 1 byte
; Current length of the VRAM DMA queue at $0900.
VRAM_DMA_Queue_Length: skip 1

; Unidentified
skip 47

; === $00304F ===
; 2 bytes
; Layer 1 X position. Mirror of SNES register $210D.
Layer_1_X: skip 2

; === $003051 ===
; 2 bytes
; Layer 2 X position. Mirror of SNES register $210F.
Layer_2_X: skip 2

; === $003053 ===
; 2 bytes
; Layer 3 X position. Mirror of SNES register $2111.
Layer_3_X: skip 2

; === $003055 ===
; 2 bytes
; Layer 1 Y position. Mirror of SNES register $210E.
Layer_1_Y: skip 2

; === $003057 ===
; 2 bytes
; Layer 2 Y position. Mirror of SNES register $2110.
Layer_2_Y: skip 2

; === $003059 ===
; 2 bytes
; Layer 3 Y position. Mirror of SNES register $2112.
Layer_3_Y: skip 2

; Unidentified
skip 4

; === $00305F ===
; 1 byte
; Handles screen brightness and force blank. Format: f---bbbb.
; f = force blank flag
; bbbb = brightness setting
; Mirror of SNES register $2100
Screen_Brightness: skip 1

; === $003060 ===
; 1 byte
; Sprite tile size and graphical address in VRAM. Format: sssnnbbb
; sss = sprite tile sizes
; nn = distance between page 0 and page 1 (>>12)
; bbb = VRAM address pf page 0 (>>14)
; Mirror of SNES register $2101
Sprite_Tile_Size: skip 1

; === $003061 ===
; 1 byte
; Background mode. Format: 4321pmmm
; 4321 = Layer 1/2/3/4 uses 8x8 when clear, 16x16 tiles when set
; p = Layer 3 absolute priority (only in background mode 1)
; mmm = Background mode (0-7)
; Mirror of SNES register $2105
Background_Mode: skip 1

; === $003062 ===
; 1 byte
; Current mosaic pixel size. Mirror of SNES register $2106.
Mosaic_Pixel_Size: skip 1

; Tilemap VRAM address and size format: aaaaaayx
; aaaaaa = tilemap VRAM address (>>10)
; y = 2x height
; x = 2x width 

; === $003063 ===
; 1 byte
; Layer 1 tilemap VRAM address and size
; Mirror of SNES register $2107
Layer_1_TilemapVramAddrSize: skip 1

; === $003064 ===
; 1 byte
; Layer 2 tilemap VRAM address and size
; Mirror of SNES register $2108
Layer_2_TilemapVramAddrSize: skip 1

; === $003065 ===
; 1 byte
; Layer 3 tilemap VRAM address and size
; Mirror of SNES register $2109
Layer_3_TilemapVramAddrSize: skip 1

; === $003066 ===
; 1 byte
; Layer 4 tilemap VRAM address and size
; Mirror of SNES register $210A
Layer_4_TilemapVramAddrSize: skip 1

; === $003067 ===
; 1 byte 
; Base VRAM address for Layer 1/2 GFX files. Format: bbbbaaaa
; aaaa = address for Layer 1 (>>13)
; bbbb = address for Layer 2 (>>13)
; Mirror of SNES register $210B
Layer12_Base_VramAddr: skip 1

; === $003068 ===
; 1 byte 
; Base VRAM address for Layer 3/4 GFX files. Format: bbbbaaaa
; aaaa = address for Layer 3 (>>13)
; bbbb = address for Layer 4 (>>13)
; Mirror of SNES register $210C
Layer34_Base_VramAddr: skip 1

; === $003069 ===
; 1 byte
; Layer 1/2 window mask settings. Format: bbbbaaaa
; aaaa = Layer 1 window settings 
; bbbb = Layer 2 window settings
; Mirror of SNES register $2123
Layer12_WindowMask: skip 1 

; === $00306A ===
; 1 byte
; Layer 3/4 window mask settings. Format: bbbbaaaa
; aaaa = Layer 3 window settings 
; bbbb = Layer 4 window settings
; Mirror of SNES register $2124
Layer34_WindowMask: skip 1 

; === $00306B ===
; 1 byte
; Object and color window mask settings. Format: ffffeeee
; ffff = color window settings
; eeee = object window settings
; Mirror of SNES register $2125
Object_Color_WindowMask: skip 1

; === $00306C ===
; 1 byte
; Window 1 left position.
; Mirror of SNES register $2126
Window1_LeftPos: skip 1

; === $00306D ===
; 1 byte
; Window 1 right position.
; Mirror of SNES register $2127
Window1_RightPos: skip 1

; === $00306E ===
; 1 byte
; Window 2 left position.
; Mirror of SNES register $2128
Window2_LeftPos: skip 1

; === $00306F ===
; 1 byte
; Window 2 right position.
; Mirror of SNES register $2129
Window2_RightPos: skip 1

; === $003070 ===
; 1 byte
; Window mask logic for Layer 1/2/3/4. Format: 44332211
; Each layer has 4 possible values:
;  00 = OR
;  01 = AND
;  10 = XOR
;  11 = XNOR
; Mirror of SNES register $212A
Layer_WindowMaskLogic: skip 1

; === $003071 ===
; 1 byte
; Window mask logic for sprites/color. Format: ----ccoo
; cc = color ; oo = sprites (objects)
; Each layer has 4 possible values:
;  00 = OR
;  01 = AND
;  10 = XOR
;  11 = XNOR
; Mirror of SNES register $212A
ColorObj_WindowMaskLogic: skip 1

; === $003072 ===
; 1 byte
; Main screen designation. Format: ---o4321
; Mirror of SNES register $212C
MainScreenDesignation: skip 1

; === $003073 ===
; 1 byte
; Sub screen designation. Format: ---o4321
; Mirror of SNES register $212D
SubScreenDesignation: skip 1

; === $003074 ===
; 1 byte
; Window mask designation for the main screen. Format: ---o4321
; Mirror of SNES register $212E
MainScreenWindowMaskDesignation: skip 1

; === $003075 ===
; 1 byte
; Window mask designation for the sub screen. Format: ---o4321
; Mirror of SNES register $212F
SubScreenWindowMaskDesignation: skip 1

; === $003076 ===
; 1 byte
; Color addition settings. Format: ccmm--sd
; cc = where to clip colors to black
; mm = where to prevent math
; s = add subscreen rather than fixed color
; d = direct color mode for 8bpp backgrounds
; Mirror of SNES register $2130
ColorAddition_Settings: skip 1

; === $003077 ===
; 1 byte
; CGADSUB settings. Format: shbo4321
; s = add (0) or subtract (1)
; h = half-color enable
; bo4321 = affected layers (backdrop/sprites/4/3/2/1)
; Mirror of SNES register $2131.
CGADSUB_Settings: skip 1

; === $003078 ===
; 3 bytes
; Background color, as three mirrors of SNES register $2132.
; Note that the component bits (the top three bits, in the order bgr) also need to be included with this.
Background_Color: skip 3

; === $00307B ===
; 1 byte
; Mode 7 settings. Format: rc----yx
; r = field size (1024x1024 vs larger)
; c = empty space fill when using a larger field (0 = transparent, 1 = fill with 0), x/y = horz/vert mirroring
; Mirror of SNES register $211A.
Mode7_Settings: skip 1

; Unidentified
skip 7

; === $003083 ===
; 2 bytes
; Mode 7 matrix parameter A
; Mirror of SNES register $211B
Mode7_MatrixA: skip 2

; === $003085 ===
; 2 bytes
; Mode 7 matrix parameter B
; Mirror of SNES register $211C
Mode7_MatrixB: skip 2

; === $003087 ===
; 2 bytes
; Mode 7 matrix parameter C
; Mirror of SNES register $211D
Mode7_MatrixC: skip 2

; === $003089 ===
; 2 bytes
; Mode 7 matrix parameter D
; Mirror of SNES register $211E
Mode7_MatrixD: skip 2

; === $00308B ===
; 2 bytes
; Mode 7 center X position
; Mirror of SNES register $211F
Mode7_CenterX: skip 2

; === $00308D ===
; 2 bytes
; Mode 7 center Y position
; Mirror of SNES register $2120
Mode7_CenterY: skip 2

; Unidentified
skip 2

; === $003091 ===
; 1 byte
; Interrupt enable flags. Format: n-yx---a
; n = nmi
; y/x = irq (corresponding to $4209, $4207)
; a = auto-joypad read
; Mirror of SNES register $4200.
InterruptEnableFlags: skip 1

; === $003092 ===
; 1 byte
; HDMA channel enable. Masked out by $3093, then stored to SNES register $420C every frame.
HDMA_Enable: skip 1

; === $003093 ===
; HDMA channel mask. Any bits set to 0 here will have the corresponding HDMA channel completely disabled.
HDMA_Mask: skip 1

; Unidentified
skip 7

; === $00309B ===
; 3 bytes
; 24-bit pointer to the current IRQ routine to run. Known values are:
; $0084BB - No routine.
; $01EA1F - In-level status bar
; Unknown if any other values are used.
IRQ_Routine_Pointer: skip 3

; Unidentified
skip 1

; === $00309F ===
; Some sort of flag to deal with the timing of SA-1 and SNES's NMI execution (for handling lag?).
; SA-1 sets this value to 1, while the SNES clears it.
; Needs further research.
SA1_SNES_NMI_Sync: skip 1

; Unidentified
skip 1

; === $0030A1 ===
; 1 byte
; Mirror of $305F, next frame (which is in turn a hardware mirror of $2100, the screen brightness).
; This address seems to get copied there each frame.
Screen_Brightness_Mirror_PrevFrame: skip 1

; === $0030A2 ===
; 1 byte
; Mirror of $305F, current frame (which is in turn a hardware mirror of $2100, the screen brightness).
Screen_Brightness_Mirror: skip 1

; === $0030A3 ===
; 1 byte
; Mirror of $3072, current frame (which is in turn a hardware mirror of $212C, the main screen designation).
MainScreenDesignation_Mirror: skip 1

; === $0030A4 ===
; 544 bytes
; OAM table; handles all sprite tiles on-screen.
; Each tile gets 4 bytes: xxxxxxxx yyyyyyyy tttttttt yxppccct
; $32A4-$32C3 handles the high X bit and size of each tile.
OAM_Table: skip 544

; Valid controller inputs:
!BTN_NONE   = $0000
!BTN_B      = $8000
!BTN_Y      = $4000
!BTN_SELECT = $2000
!BTN_START  = $1000
!BTN_UP     = $0800
!BTN_DOWN   = $0400
!BTN_LEFT   = $0200
!BTN_RIGHT  = $0100
!BTN_A      = $0080
!BTN_X      = $0040
!BTN_L      = $0020
!BTN_R      = $0010
!BTN_ALL    = $FFF0

; === $0032C4 ===
; 2 bytes
; Controller 1 input, held. Format (16-bit): byetUDLR axlr----
; a/b/x/y/l/r = respective buttons, e = select, t = start, UDLR = directional inputs
P1_Hold: skip 2

; === $0032C6 ===
; 2 bytes
; Controller 2 input, held. Format (16-bit): byetUDLR axlr----
; a/b/x/y/l/r = respective buttons, e = select, t = start, UDLR = directional inputs
P2_Hold: skip 2

; Unidentified
skip 4

; === $0032CC ===
; 2 bytes
; Mirror of $32C4 (controller 1 input), on frames when $7E0036 is reset.
; On any other frame, this address is 0x0000.
P1_Repeat: skip 2

; === $0032CE ===
; 2 bytes
; Mirror of $32C6 (controller 2 input), on frames when $7E0038 is reset.
; On any other frame, this address is 0x0000.
P2_Repeat: skip 2

; Unidentified
skip 4

; === $0032D4 ===
; 2 bytes
; Controller 1 input, first frame only. Format (16-bit): byetUDLR axlr----
; a/b/x/y/l/r = respective buttons, e = select, t = start, UDLR = directional inputs
P1_Frame: skip 2

; === $0032D6 ===
; 2 bytes
; Controller 2 input, first frame only. Format (16-bit): byetUDLR axlr----
; a/b/x/y/l/r = respective buttons, e = select, t = start, UDLR = directional inputs
P2_Frame: skip 2

; Unidentified
skip 4

; === $0032DC ===
; 1 byte
; Value to indicate which of the alternative palettes to use for the FG/BG/sprites.
; If negative (or 7), then the standard palette at $7E0500 is used.
; Else, it uses the corresponding alternative palettes.
; Generally, the alternative palettes are used for darker versions of the sprite palettes, in order to perform pseudo-color math on them.
; As such, you can effectively consider this address to be the brightness of the sprites on a scale of 0 (darkest) to 7 (brightest).
UseAltPalette: skip 1

; Unidentified
skip 1 

; === $0032DE ===
; 2 bytes
; If set to a positive value, used as an index to $0083E6, whose values are used to form an HDMA source address for channel 7.
; Only values 0 and 1 seem to be valid. Needs more research.
HDMA_Source_Index: skip 2

; Unidentified
skip 2

; === $0032E2 ===
; 2 bytes
; Something related to HDMA channel 7
; If non-zero, this value gets stored directly as its source address, and the HDMA channel is enabled.
; Needs more research.
Enable_HDMA_Channel7: skip 2

; Unidentified
skip 6

; === $0032EA ===
; 2 bytes
; Currently active subgame.
; Valid subgames:
!SUBGAME_SPRINGBREEZE   = 00
!SUBGAME_DYNABLADE      = 01
!SUBGAME_GOURMETRACE    = 02
!SUBGAME_GCO            = 03
!SUBGAME_ROMK           = 04
!SUBGAME_MWW            = 05
!SUBGAME_ARENA          = 06
!SUBGAME_SOUNDTEST      = 07
!SUBGAME_MEGATONSAMURAI = 08
Current_SubGame: skip 2

; === $0032EC ===
; 2 bytes
; Written as a double of $32EA whenever a room is being loaded
; Used to calculate offsets for loading room data
Current_SubGame_x2: skip 2

; === $0032EE ===
; 2 bytes
; Level number for Dyna Blade, Revenge of Meta Knight, and Milky Way Wishes.
; Milky Way Wishes planet IDs:
;  00 - Floria
;  01 - Hotbeat
;  02 - Skyhigh
;  03 - Cavios
;  04 - Aqualiss
;  05 - Mecheye
;  06 - Halfmoon
;  07 - [?]
;  08 - Nova
;  09 - [?] (unused duplicate?)
Current_Level: skip 2

; === $0032F0 ===
; 2 bytes
; Written as a double of $32EE whenever a room is being loaded
; Used to calculate offsets for loading room data
Current_Level_x2: skip 2

; === $0032F2 ===
; 2 bytes
; Room number to respawn into
; Room number is relative to subgame index
Current_Room: skip 2

; === $0032F4 ===
; 2 bytes
; Written as a quadruple of $32F2 whenever a room is being loaded
; Used to calculate offsets for loading room data
Current_Room_x4: skip 2

; === $0032F6 ===
; 2 bytes
; Pointer to room data. 
; The data written here is read from the start of bank $FF
skip 2


; 3312 respawn room
; 3314 x respawn
; 3316 y respawn 
; 3318 respawn ram offset position (but why)

; Unidentified
skip $33CA-$32F8

; === $0033CA ===
; 1 byte
; Current music value mirrored from $7E00AA onto the SA-1
CurrentMusic_SA1: skip 1

; === $0033CB ===
; 1 byte
; Current SFX value mirrored from $7E00AB onto the SA-1
CurrentSFX_SA1: skip 1

; === $0033CC ===
; Current music volume. Updates on music or update or sound effect playing.
CurrentVolume: skip 1

; === $0033CD ===
; Whether or not Stereo or Mono is set.
CurrentStereoMono: skip 1

; === $0033CE ===
; 1 byte
; Internal timer A underflow flag. When an underflow occurs, gets set to 0xFF.
InternalTimerA_Underflow: skip 1

; === $0033CF ===
; 1 byte
; Internal timer B underflow flag. When an underflow occurs, gets set to 0xFF.
InternalTimerB_Underflow: skip 1

; === $0033D0 ===
; 1 byte
; Internal timer B underflow flag. When an underflow occurs, gets set to 0xFF.
InternalTimerC_Underflow: skip 1

; === $0033D1 ===
; 2 bytes
; Internal timer A; decrements once per frame, looping from 0000 to FFFF.
; When it reaches 0000, 0xFF is stored to $33CE.
InternalTimerA: skip 2

; === $0033D3 ===
; 2 bytes
; Internal timer B; decrements once per frame, looping from 0000 to FFFF.
; When it reaches 0000, 0xFF is stored to $33CF.
InternalTimerB: skip 2

; === $0033D5 ===
; 2 bytes
; Internal timer C; decrements once per frame, looping from 0000 to FFFF.
; When it reaches 0000, 0xFF is stored to $33D0.
InternalTimerC: skip 2

; === $0033D7 ===
; 2 bytes
; Varies the amount of damage to be received.
; Initializes at 0x1000, and ranges between 0x0A00 and 0x1600
; The lower the value, the more damage will be taken
; For more info: https://waddledx.hatenablog.jp/entry/20171113/1510499775
DamageModifier: skip 2

; Unidentified
skip 551

; === $003600 ===
; 32 bytes
; DEBUG: Temporary storage used for the "wrapped" palette when cycling palettes in the VRAM viewer.
Debug_Temp_Palette_Wrap: skip 32

; === $003620 ===
; 2 bytes
; DEBUG: Current page number for the VRAM viewer.
Debug_Current_VRAM_Page: skip 2

; Unidentified
skip 6

; === $003628 ===
; 2 bytes
; DEBUG: Current palette number for the VRAM viewer.
Debug_Current_Palette: skip 2

; Unidentified
skip $36A0-$362A

; some addresses before the following ones have controller stuff
; 3690 mirror of controller inputs except only when Kirby can receive input
; 3698 was left or right last pressed
; 36FC kirby facing direction

; === $0036A0 ===
; 2 bytes
; Buttons designated to moving Kirby left and right
ButtonMap_P1MoveLR: skip 2

; === $0036A2 ===
; 2 bytes
; Buttons designated to moving Helper left and right
ButtonMap_P2MoveLR: skip 2

; === $0036A4 ===
; 2 bytes
; Buttons designated to having Kirby crouch
ButtonMap_P1Crouch: skip 2

; === $0036A6 ===
; 2 bytes
; Buttons designated to having Helper crouch
ButtonMap_P2Crouch: skip 2

; === $0036A8 ===
; 2 bytes
; Buttons designated to having Kirby shield
ButtonMap_P1Shield: skip 2

; === $0036AA ===
; 2 bytes
; Buttons designated to having Helper shield
ButtonMap_P2Shield: skip 2

; === $0036AC ===
; 2 bytes
; Buttons designated to having Kirby attack
ButtonMap_P1Attack: skip 2

; === $0036AE ===
; 2 bytes
; Buttons designated to having Helper attack
ButtonMap_P2Attack: skip 2

; === $0036B0 ===
; 2 bytes
; Buttons designated to having Kirby jump
ButtonMap_P1Jump: skip 2

; === $0036B2 ===
; 2 bytes
; Buttons designated to having Helper jump
ButtonMap_P2Jump: skip 2

; === $0036B4 ===
; 2 bytes
; Buttons designated to having Kirby summon a helper
ButtonMap_P1Summon: skip 2

; === $0036B6 ===
; 2 bytes
; Buttons designated to having Helper teleport to Kirby
ButtonMap_P2Summon: skip 2

; === $0036B8 ===
; 2 bytes
; Buttons designated to having Kirby select abilities in MWW
ButtonMap_P1SelectAbility: skip 2

; === $0036BA ===
; 2 bytes
; Buttons designated to having Helper select abilities in MWW
ButtonMap_P2SelectAbility: skip 2

; 36BC & 36BE are Kirby and Helper's last obtained abilities?

; Unidentified
skip $3731-$36BC

; === $003731 ===
; 8 bytes
; Used as temporary storage for data to be entered into the circular DMA buffer at $7E0100 or DMA queue at $7E0900.
; Specifically, intended for the routines at $00875A or $008CD0. Values are:
; $3731 - Index (+3) to the table at $00869D for controlling the DMA.
; $3732 - 16-bit size
; $3734 - 24-bit source
; $3737 - 16-bit destination VRAM address
DMA_Buffer_TempStorage: skip 8

; 3739 is labeled as "Track" in the music debug text thing.

; Unidentified
skip 10

; === $003743 ===
; 2 bytes
; Current RNG seed for the routine at $008AC1.
Current_RNG: skip 2

; === $003745 ===
; 10 bytes
; Scratch RAM.
; $3749, $374B, and $374D are often used for storing arguments from A/X/Y passed into function calls.
SA1_Scratch_AXY: skip 10

; Unidentified
skip 57

; === $003780 ===
; SA-1 program stack
; Allocated space may be larger or smaller than currently specified; ends at $37FF
SA1_Stack: skip 128


; --== Save RAM ==--

ORG $006000
; WIP

; The following are temporary RAM addresses used when creating new objects.
; These paramters are written here first before being written to the object queue in routine InitializeNewObject ($008E9E)
; 6000: ObjVar0_Temp
; 6002: ObjVar1_Temp
; 6004: ObjVar2_Temp
; 6006: ObjVar3_Temp
; 6008: ObjVar4_Temp
; 600A: 623C,X
; 600C: ObjXPos_Temp
; 600E: ObjYPos_Temp
; 6010: probably the object type - gets written to at code $009AF9 with a static number #$0040 (denotes intangible particle fx?)
; also gets written to at code $03803D with a value from table $038061
; 6012: similar as above, at around the same code
; 6014: object list size?? stays static at 0x007A and game crashes if it is any different

; 6028: Scratch RAM intended for 24-bit pointers. Used for the LongCall_6028 subroutine
; 6240?: Partner ID, 0xFFFF if no partner is active
; 6438: Kirby's animation frame 2 byte
; 643A: Helper's animation frame 2 byte
; 643C: Kirby's attack particles frame 8 byte (2 byte x 4)
; 6444: Helper's attack particles frame 8 byte (2 byte x 4)
; 6894: X coordinate of Kirby's sprite (object slot 2)
; 690E: X coordinate of Kirby's sprite (object slot 2)
; 6988: Kirby X pos (object slot 2)
; 6A02: Kirby Y pos (object slot 2)
; 6EC4: Currently selected song in sound test
; 6F3E: Currently selected SFX in sound test
; 7368: Camera lock 2 byte
; 737C: Kirby HP  2 byte
; 737E: Helper HP 2 byte
; 7380: Kirby Max HP 2 byte
; 7382: Helper Max HP 2 byte
; 7384: Kirby Copy Ability Panel Graphics
; 7385: Temp graphic on ability panel
; 7386: Helper panel
; 7387: Temp helper panel
; 7388: The temporary graphic number displayed on Kirby's copy ability panel ($7387 is this value plus 0x20
; 7389:  The temporary graphic number displayed on Kirby's copy ability panel, previous frame. Used to determine whether to update the image
; 738A: The display time of the temporary graphics for Kirby's copy ability panel 2 byte
; 738C: A flag indicating whether to temporarily replace the graphics on the helper's copy ability panel.
; 738D: The temporary graphic number displayed on the Helper's copy ability panel (if $738C is anything other than 0x00, it becomes "0xFF = Help!")
; $7735  :  32 Byte :  Food acquisition flags for the Gourmet Race (1 bit x 256)
; $77E6  :   2 Byte :  Enemy's life

; 7a04: count of enemies defeated before rolling a food drop

; corkboard:
; 7a65: current dyna blade level (may be limited to map? double check)
; 7a85: number of games unlocked
; 7a87: last frame subgame selection (used to trigger sfx)
; 7a91: current subgame selected
; 7a93: flags for which subgames have been cleared