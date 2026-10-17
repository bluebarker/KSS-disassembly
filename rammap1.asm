; Game RAM Addresses

; Game Status
;CurrentSubGame     = $32EA
CurrentGameState   = $7390

; Controller

;P1_Hold         = $32C4
;P1_Frame        = $32D4
;P1_Repeat       = $32CC
;P2_Hold         = $32C6
;P2_Frame        = $32D6
;P2_Repeat       = $32D8

; Save Data
SaveFile_Number        = $7F00     ; 00 for File 1, 01 for File 2, 02 for File 3
SaveFile_Offset        = $7AE3     ; 00 for File 1, 4F for File 2, 9E for File 3
SaveFile_Subgame       = $7F06     ; Subgame to be displayed on the file select screen
SaveFile_GamesFinished = $7F0A     ; The subgames that have been completed in the save file

SB_GCO_Boss_Status     = $7AE5

; Status Elements
PlayerScore              = $7376
Lives              = $737A
Kirby_HP           = $737C
Helper_HP          = $737E
Boss_I_Frames      = $78FC
Boss_HP            = $7A19
Boss_Max_HP        = $7A1B
Boss_HP_Meter      = $7A1D     ; Purely for the visual HP bar on the HUD
Kirby_Ability      = $749F
Helper_Ability     = $74A1 
Wheelie_Rider      = $7569     ; Set byte to 01 to be in Wheelie Rider state
Kirby_Invincible   = $35F1
Kirby_Inv_Time     = $35F5
Kirby_Inv_Flash    = $75B1
Helper_Invincible  = $35F3
Helper_Inv_Time    = $35F7
Helper_Inv_Flash   = $75B3
Kirby_Speed        = $74C8
Helper_Speed       = $74CA
Shooting_Ability   = $7577     ; Sidescrolling Nova shmup, byte set to 01 will enable "Shooting"

; Item Tracking 
;Lives_Collected        = $14C7     ; Persists between rooms (item does not respawn between rooms)
;Tomatoes_Collected     = $14CF     ; Persists between rooms
;Food_Collected         = $14D7     ; Gets cleared in between rooms (item always respawns)
RoMK_Cutscenes_Done    = $771D     ; Persists between rooms, 3 bytes large

; Timers
RoMK_Timer         = $73A0
;Gourmet Race Timer (unsure)
Timer_Minutes      = $7A2D
Timer_Seconds      = $7A2C
Timer_Milliseconds = $7A2B

; Coordinates and Positions
Kirby_X_Pos            = $6988
Kirby_Y_Pos            = $6A02
Kirby_X_Respawn        = $330C
Kirby_Y_Respawn        = $3310
Respawn_Room           = $32F2
Camera_Lock            = $7368
Room_Size_X            = $3366
Room_Bound_Offset_X    = $3364
Room_Size_Y            = $3362
Room_Bound_Offset_Y    = $3360

;Screen_Brightness      = $305F
;Current_RNG                    = $3743
Intangible_to_items    = $744B

Reload_Room                = $7392     ; If this byte is set to 01, the current room is immediately reloaded
Load_Special_Dest          = $7394     ; Set to 01 upon entering a door to go to Dyna Blade map, 02 to Game Over, 03 to reach MWW goal, 04 to beat subgame
Reload_Map_On_Unpause      = $7396     ; Set to 00 to load back to map on unpause

;Milky Way Wishes 
MWW_Current_Planet         = $7A6D
MWW_Abilities_Saved        = $7B1B
MWW_Ability_Quantity       = $7B1E
MWW_Last_Ability_Selected  = $36BC

