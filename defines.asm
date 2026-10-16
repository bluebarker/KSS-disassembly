; Game Status / Save Data
!CurrentSubGame     = $32EA
!CurrentGameState   = $7390
!SB_GCO_Boss_Status = $7AE5

; Status Elements
!Score              = $7376
!Lives              = $737A
!Kirby_HP           = $737C
!Helper_HP          = $737E
!Boss_I_Frames      = $78FC
!Boss_HP            = $7A19
!Boss_Max_HP        = $7A1B
!Boss_HP_Meter      = $7A1D     ; Purely for the visual HP bar on the HUD
!Kirby_Ability      = $749F
!Helper_Ability     = $74A1 
!Wheelie_Rider      = $7569     ; Set byte to 01 to be in Wheelie Rider state
!Kirby_Invincible   = $35F1
!Kirby_Inv_Time     = $35F5
!Kirby_Inv_Flash    = $75B1
!Helper_Invincible  = $35F3
!Helper_Inv_Time    = $35F7
!Helper_Inv_Flash   = $75B3
!Kirby_Speed        = $74C8
!Helper_Speed       = $74CA
!Shooting_Ability   = $7577     ; Sidescrolling Nova shmup, byte set to 01 will enable "Shooting"

; Item Tracking 
!Lives_Collected        = $14C7     ; Persists between rooms (item does not respawn between rooms)
!Tomatoes_Collected     = $14CF     ; Persists between rooms
!Food_Collected         = $14D7     ; Gets cleared in between rooms (item always respawns)
!RoMK_Cutscenes_Done    = $771D     ; Persists between rooms, 3 bytes large

; Timers
!RoMK_Timer         = $73A0
;Gourmet Race Timer (unsure)
!Timer_Minutes      = $7A2D
!Timer_Seconds      = $7A2C
!Timer_Milliseconds = $7A2B

; Coordinates and Positions
!Kirby_X_Pos            = $6988
!Kirby_Y_Pos            = $6A02
!Kirby_X_Respawn        = $330C
!Kirby_Y_Respawn        = $3310
!Respawn_Room           = $32F2
!Camera_Lock            = $7368
!Room_Size_X            = $3366
!Room_Bound_Offset_X    = $3364
!Room_Size_Y            = $3362
!Room_Bound_Offset_Y    = $3360

!Screen_Brightness      = $305F
!RNG                    = $3743
!Intangible_to_items    = $744B

!Reload_Room                = $7392     ; If this byte is set to 01, the current room is immediately reloaded
!Load_Special_Dest          = $7394     ; Set to 01 upon entering a door to go to Dyna Blade map, 02 to Game Over, 03 to reach MWW goal, 04 to beat subgame
!Reload_Map_Unpause         = $7396     ; Set to 00 to load back to map on unpause

;Milky Way Wishes 
!MWW_Current_Planet         = $7A6D
!MWW_Abilities_Saved        = $7B1B
!MWW_Ability_Quantity       = $7B1E
!MWW_Last_Ability_Selected  = $36BC


; Subgame IDs
!SG_SpringBreeze            = #$0000
!SG_DynaBlade               = #$0001
!SG_GourmetRace             = #$0002
!SG_GCO                     = #$0003
!SG_RoMK                    = #$0004
!SG_MWW                     = #$0005
!SG_Arena                   = #$0006
!SG_SoundTest               = #$0007
!SG_MegatonSamurai          = #$0008

; Game State IDs
!GS_TitleScreen             = #$0000
!GS_Corkboard               = #$0001
!GS_Tutorial                = #$0002
!GS_MainLevel               = #$0003
!GS_GameOver                = #$0004
!GS_SubgameTitle            = #$0005
!GS_SubgameMap              = #$0006
!GS_SubgameOpening          = #$0007
!GS_SubgameCredits          = #$0008
!GS_DynaGoal                = #$0009
!GS_SoundTest               = #$000A
!GS_Minigame                = #$000B
!GS_Arena                   = #$000C
!GS_DynaSecret              = #$000D
!GS_DynaMapFight            = #$000E
!GS_TitleSubgamePreview     = #$000F
!GS_TitleMinigamePreview    = #$0010

; abilities
!normal                 = 00
!cutter                 = 01
!beam                   = 02
!yoyo                   = 03
!ninja                  = 04
!wing                   = 05
!fighter                = 06
!jet                    = 07
!sword                  = 08
!fire                   = 09
!stone                  = 0A 
!bomb                   = 0B 
!plasma                 = 0C
!wheel                  = 0D 
!ice                    = 0E 
!mirror                 = 0F
!copy                   = 10
!suplex                 = 11
!hammer                 = 12
!parasol                = 13
!mike                   = 14
!sleep                  = 15
!paint                  = 16
!cook                   = 17
!crash                  = 18



; temp - adding here until more banks are added
ExecuteGamePause = $CF98A9
CODE_FL_03A2D4 = $03A2D4
CODE_FL_039814 = $039814
CODE_FL_059CC6 = $059CC6
DATA8_E12E30 = $E12E30