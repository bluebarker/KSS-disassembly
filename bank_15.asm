
    ORG $CA8000

    BEQ CODE_15800C               ;$158000 |
    STZ.W $7A73                   ;$158002 |
    JSL.L CODE_FL_CA81D7          ;$158005 |
    JMP.W CODE_JP_158158          ;$158009 |

CODE_15800C:
    LDA.W P1_Hold                 ;$15800C |
    AND.W #$0200                  ;$15800F |
    BEQ CODE_158023               ;$158012 |
    LDA.W #$7E52                  ;$158014 |
    LDY.W #$00CA                  ;$158017 |
    LDX.B $39                     ;$15801A |
    JSL.L CODE_FL_008F64          ;$15801C |
    JMP.W CODE_JP_158158          ;$158020 |

CODE_158023:
    LDA.W P1_Hold                 ;$158023 |
    AND.W #$0100                  ;$158026 |
    BEQ CODE_158049               ;$158029 |
    LDA.W $7A65                   ;$15802B |
    AND.W #$00FF                  ;$15802E |
    STA.B $28                     ;$158031 |
    LDA.W $7A63                   ;$158033 |
    AND.W #$00FF                  ;$158036 |
    CMP.B $28                     ;$158039 |
    BMI CODE_158049               ;$15803B |
    LDA.W #$7E72                  ;$15803D |
    LDY.W #$00CA                  ;$158040 |
    LDX.B $39                     ;$158043 |
    JSL.L CODE_FL_008F64          ;$158045 |

CODE_158049:
    JMP.W CODE_JP_158158          ;$158049 |
    LDA.W P1_Hold                 ;$15804C |
    AND.W #$C0C0                  ;$15804F |
    BEQ CODE_15805E               ;$158052 |
    STZ.W $7A73                   ;$158054 |
    JSL.L CODE_FL_CA81D7          ;$158057 |
    JMP.W CODE_JP_158158          ;$15805B |

CODE_15805E:
    LDA.W P1_Hold                 ;$15805E |
    AND.W #$0400                  ;$158061 |
    BEQ CODE_158075               ;$158064 |
    LDA.W #$7E9E                  ;$158066 |
    LDY.W #$00CA                  ;$158069 |
    LDX.B $39                     ;$15806C |
    JSL.L CODE_FL_008F64          ;$15806E |
    JMP.W CODE_JP_158158          ;$158072 |

CODE_158075:
    LDA.W P1_Hold                 ;$158075 |
    AND.W #$0100                  ;$158078 |
    BEQ CODE_15809E               ;$15807B |
    LDA.W $7A65                   ;$15807D |
    AND.W #$00FF                  ;$158080 |
    STA.B $28                     ;$158083 |
    LDA.W $7A63                   ;$158085 |
    AND.W #$00FF                  ;$158088 |
    CMP.B $28                     ;$15808B |
    BMI CODE_15809E               ;$15808D |
    LDA.W #$7ECA                  ;$15808F |
    LDY.W #$00CA                  ;$158092 |
    LDX.B $39                     ;$158095 |
    JSL.L CODE_FL_008F64          ;$158097 |
    JMP.W CODE_JP_158158          ;$15809B |

CODE_15809E:
    LDA.W P1_Hold                 ;$15809E |
    AND.W #$0800                  ;$1580A1 |
    BEQ CODE_1580C5               ;$1580A4 |
    LDA.W $7A64                   ;$1580A6 |
    AND.W #$00FF                  ;$1580A9 |
    ASL A                         ;$1580AC |
    TAX                           ;$1580AD |
    JMP.W (PTR16_1580B1,X)        ;$1580AE |
PTR16_1580B1:
    dw CODE_1580C5                ;$1580B1 |
    dw CODE_1580C5                ;$1580B3 |
    dw CODE_1580B9                ;$1580B5 |
    dw CODE_1580B9                ;$1580B7 |

CODE_1580B9:
    LDA.W #$7EEA                  ;$1580B9 |
    LDY.W #$00CA                  ;$1580BC |
    LDX.B $39                     ;$1580BF |
    JSL.L CODE_FL_008F64          ;$1580C1 |

CODE_1580C5:
    JMP.W CODE_JP_158158          ;$1580C5 |
    LDA.W P1_Hold                 ;$1580C8 |
    AND.W #$C0C0                  ;$1580CB |
    BEQ CODE_1580DA               ;$1580CE |
    STZ.W $7A73                   ;$1580D0 |
    JSL.L CODE_FL_CA81D7          ;$1580D3 |
    JMP.W CODE_JP_158158          ;$1580D7 |

CODE_1580DA:
    LDA.W P1_Hold                 ;$1580DA |
    AND.W #$0400                  ;$1580DD |
    BEQ CODE_1580EE               ;$1580E0 |
    LDA.W #$7F2A                  ;$1580E2 |
    LDY.W #$00CA                  ;$1580E5 |
    LDX.B $39                     ;$1580E8 |
    JSL.L CODE_FL_008F64          ;$1580EA |

CODE_1580EE:
    JMP.W CODE_JP_158158          ;$1580EE |
    LDA.W P1_Hold                 ;$1580F1 |
    AND.W #$C0C0                  ;$1580F4 |
    BEQ CODE_158103               ;$1580F7 |
    STZ.W $7A73                   ;$1580F9 |
    JSL.L CODE_FL_CA81D7          ;$1580FC |
    JMP.W CODE_JP_158158          ;$158100 |

CODE_158103:
    LDA.W P1_Hold                 ;$158103 |
    AND.W #$0400                  ;$158106 |
    BEQ CODE_158117               ;$158109 |
    LDA.W #$7E2C                  ;$15810B |
    LDY.W #$00CA                  ;$15810E |
    LDX.B $39                     ;$158111 |
    JSL.L CODE_FL_008F64          ;$158113 |

CODE_158117:
    JMP.W CODE_JP_158158          ;$158117 |
    LDA.W P1_Hold                 ;$15811A |
    AND.W #$C0C0                  ;$15811D |
    BEQ CODE_15812C               ;$158120 |
    STZ.W $7A73                   ;$158122 |
    JSL.L CODE_FL_CA81D7          ;$158125 |
    JMP.W CODE_JP_158158          ;$158129 |

CODE_15812C:
    LDA.W P1_Hold                 ;$15812C |
    AND.W #$0100                  ;$15812F |
    BEQ CODE_158140               ;$158132 |
    LDA.W #$7F0A                  ;$158134 |
    LDY.W #$00CA                  ;$158137 |
    LDX.B $39                     ;$15813A |
    JSL.L CODE_FL_008F64          ;$15813C |

CODE_158140:
    JMP.W CODE_JP_158158          ;$158140 |
    JMP.W CODE_JP_158158          ;$158143 |
    JMP.W CODE_JP_158158          ;$158146 |
    LDA.W #$7D58                  ;$158149 |
    LDY.W #$00CA                  ;$15814C |
    LDX.B $39                     ;$15814F |
    JSL.L CODE_FL_008F64          ;$158151 |
    JMP.W CODE_JP_158158          ;$158155 |

CODE_JP_158158:
    LDY.B $39                     ;$158158 |
    LDA.W Obj_VAR4,Y              ;$15815A |
    INC A                         ;$15815D |
    AND.W #$003F                  ;$15815E |
    STA.W Obj_VAR4,Y              ;$158161 |
    LSR A                         ;$158164 |
    LSR A                         ;$158165 |
    LSR A                         ;$158166 |
    LSR A                         ;$158167 |
    ASL A                         ;$158168 |
    TAX                           ;$158169 |
    LDA.L DATA16_CA8172,X         ;$15816A |
    STA.W Obj_Pose,Y              ;$15816E |
    RTL                           ;$158171 |

DATA16_CA8172:
    dw $0000,$0001,$0002,$0001    ;$158172 |

    LDA.W $7A67                   ;$15817A |
    AND.W #$00FF                  ;$15817D |
    BNE CODE_1581AD               ;$158180 |
    LDA.W #$0000                  ;$158182 |
    STA.W ObjVar0_Temp            ;$158185 |
    LDA.W #$000A                  ;$158188 |
    STA.W ObjVar1_Temp            ;$15818B |
    TYA                           ;$15818E |
    STA.W ObjVar2_Temp            ;$15818F |
    STZ.W ObjVar3_Temp            ;$158192 |
    STZ.W ObjVar4_Temp            ;$158195 |
    LDA.W #$0018                  ;$158198 |
    STA.W ObjSlotMinimum          ;$15819B |
    LDA.W #$0040                  ;$15819E |
    STA.W ObjSlotMaximum          ;$1581A1 |
    LDA.W #$0010                  ;$1581A4 |
    JSL.L CreateNewObject         ;$1581A7 |
    LDY.B $39                     ;$1581AB |

CODE_1581AD:
    RTL                           ;$1581AD |
    LDA.W $7A63                   ;$1581AE |
    AND.W #$00FF                  ;$1581B1 |
    STA.B $28                     ;$1581B4 |
    LDX.W #$0001                  ;$1581B6 |
    LDA.W $7A68                   ;$1581B9 |
    AND.W #$00FF                  ;$1581BC |
    CMP.B $28                     ;$1581BF |
    BPL CODE_9581D3               ;$1581C1 |
    CMP.W #$0004                  ;$1581C3 |
    BEQ CODE_9581D3               ;$1581C6 |
    SEP #$20                      ;$1581C8 |
    LDA.W $7A63                   ;$1581CA |
    STA.W $7A68                   ;$1581CD |
    REP #$20                      ;$1581D0 |
    DEX                           ;$1581D2 |

CODE_9581D3:
    STX.W $7A79                   ;$1581D3 |
    RTL                           ;$1581D6 |
    LDA.W #$7D94                  ;$1581D7 |
    LDY.W #$00CA                  ;$1581DA |
    LDX.B $39                     ;$1581DD |
    JSL.L CODE_FL_008F64          ;$1581DF |
    RTL                           ;$1581E3 |
    LDA.W #$0000                  ;$1581E4 |
    SEP #$20                      ;$1581E7 |
    LDA.B #$01                    ;$1581E9 |
    STA.W $7A65                   ;$1581EB |
    REP #$20                      ;$1581EE |
    RTL                           ;$1581F0 |
    LDA.W #$0000                  ;$1581F1 |
    SEP #$20                      ;$1581F4 |
    LDA.B #$02                    ;$1581F6 |
    STA.W $7A65                   ;$1581F8 |
    REP #$20                      ;$1581FB |
    RTL                           ;$1581FD |
    LDA.W #$0000                  ;$1581FE |
    SEP #$20                      ;$158201 |
    LDA.B #$03                    ;$158203 |
    STA.W $7A65                   ;$158205 |
    REP #$20                      ;$158208 |
    RTL                           ;$15820A |
    LDA.W #$0000                  ;$15820B |
    SEP #$20                      ;$15820E |
    LDA.B #$04                    ;$158210 |
    STA.W $7A65                   ;$158212 |
    REP #$20                      ;$158215 |
    RTL                           ;$158217 |
    LDA.W #$0000                  ;$158218 |
    SEP #$20                      ;$15821B |
    LDA.B #$05                    ;$15821D |
    STA.W $7A65                   ;$15821F |
    REP #$20                      ;$158222 |
    RTL                           ;$158224 |
    LDA.W #$0000                  ;$158225 |
    SEP #$20                      ;$158228 |
    LDA.B #$06                    ;$15822A |
    STA.W $7A65                   ;$15822C |
    REP #$20                      ;$15822F |
    RTL                           ;$158231 |
    LDA.W #$0000                  ;$158232 |
    SEP #$20                      ;$158235 |
    LDA.B #$07                    ;$158237 |
    STA.W $7A65                   ;$158239 |
    REP #$20                      ;$15823C |
    RTL                           ;$15823E |
    LDY.B $39                     ;$15823F |
    LDA.W $7A65                   ;$158241 |
    AND.W #$00FF                  ;$158244 |
    BNE CODE_958256               ;$158247 |
    LDA.W $7A63                   ;$158249 |
    AND.W #$00FF                  ;$15824C |
    SEP #$20                      ;$15824F |
    STA.W $7A65                   ;$158251 |
    REP #$20                      ;$158254 |

CODE_958256:
    ASL A                         ;$158256 |
    TAX                           ;$158257 |
    LDA.L DATA16_CA8267,X         ;$158258 |
    STA.W Obj_XPosition,Y         ;$15825C |
    LDA.L DATA16_CA8277,X         ;$15825F |
    STA.W Obj_YPosition,Y         ;$158263 |
    RTL                           ;$158266 |

DATA16_CA8267:
    dw $0034,$0034,$007A,$0099    ;$158267 |
    dw $00A8,$00CF,$0042,$0090    ;$15826F |

DATA16_CA8277:
    dw $00A2,$00A2,$0084,$00AB    ;$158277 |
    dw $005E,$004A,$0056,$0042    ;$15827F |

AS_CA8287:
    db $33,$5B,$00,$14            ;$158287 |	ActionScript
    dl PTR16_CDE526               ;$15828B |
    db $26,$E0,$00,$27,$3E,$00,$24;$15828E |

AS_CA8295:
    db $80,$40,$00,$4A,$06,$80,$C0,$FF;$158295 |
    db $90,$40,$00,$4A,$04,$80,$80,$FF;$15829D |
    db $4A,$06,$80,$00,$FF,$90,$20,$00;$1582A5 |
    db $4A,$05,$4A,$06,$90,$E0,$FF,$4A;$1582AD |
    db $04,$4A,$06,$80,$80,$FF,$90,$C0;$1582B5 |
    db $FF,$4A,$05,$80,$C0,$FF,$4A,$09;$1582BD |
    db $80,$40,$00,$90,$C0,$FF,$4A,$07;$1582C5 |
    db $80,$80,$00,$4A,$09,$80,$00,$01;$1582CD |
    db $90,$E0,$FF,$4A,$08,$4A,$09,$90;$1582D5 |
    db $20,$00,$4A,$07,$4A,$09,$80,$80;$1582DD |
    db $00,$90,$40,$00,$4A,$08,$0E;$1582E5 |
    dw AS_CA8295                  ;$1582EC |

AS_CA82EE:
    db $33,$5C,$00,$14            ;$1582EE |
    dl PTR16_CDE526               ;$1582F2 |
    db $26,$C8,$00,$27,$2B,$00,$24;$1582F5 |

AS_CA82FC:
    db $40,$FF,$02,$50,$40,$12,$02,$50;$1582FC |
    db $0E                        ;$158304 |
    dw AS_CA82FC                  ;$158305 |

AS_CA8307:
    db $C0                        ;$158307 |
    dl MoveCurrentScriptToSCPU    ;$158308 |
    db $02,$01,$C0                ;$15830B |
    dl CODE_CA5FE6                ;$15830E |
    db $33,$5D,$00,$14            ;$158311 |
    dl PTR16_CDE526               ;$158315 |
    db $26                        ;$158318 |
    dw $0080                      ;$158319 |
    db $27                        ;$15831B |
    dw $0080                      ;$15831C |
    db $03                        ;$15831E |
    dl CODE_CA8446                ;$15831F |
    db $24,$18,$77,$7A,$0F,$03    ;$158322 |
    dw AS_CA832E                  ;$158328 |
    dw AS_CA83A7                  ;$15832A |
    dw AS_CA83A7                  ;$15832C |

AS_CA832E:
    db $18,$79,$7A,$0F,$02        ;$15832E |
    dw AS_CA8337                  ;$158333 |
    dw AS_CA83A7                  ;$158335 |

AS_CA8337:
    db $C0                        ;$158337 |
    dl CODE_FL_00A40B                ;$158338 |
    dw $7A63                      ;$15833B |
    db $0F,$06                    ;$15833D |
    dw AS_CA83BB                  ;$15833F |
    dw AS_CA834B                  ;$158341 |
    dw AS_CA8362                  ;$158343 |
    dw AS_CA8379                  ;$158345 |
    dw AS_CA8390                  ;$158347 |
    dw AS_CA83DA                  ;$158349 |

AS_CA834B:
    db $C0                        ;$15834B |
    dl CODE_FL_009B65                ;$15834C |
    db $18,$40                    ;$15834F |
    dw $0010,$0034,$00A2,$0000    ;$158351 |
    dw $0006                      ;$158359 |
    db $C0                        ;$15835B |
    dl CODE_CA8431                ;$15835C |
    db $40,$0B,$01                ;$15835F |

AS_CA8362:
    db $C0                        ;$158362 |
    dl CODE_FL_009B65                ;$158363 |
    db $18,$40                    ;$158366 |
    dw $0010,$0034,$00A2,$0000    ;$158368 |
    dw $0007                      ;$158370 |
    db $C0                        ;$158372 |
    dl CODE_CA841D                ;$158373 |
    db $40,$0C,$01                ;$158376 |

AS_CA8379:
    db $C0                        ;$158379 |
    dl CODE_FL_009B65                ;$15837A |
    db $18,$40                    ;$15837D |
    dw $0010,$0034,$00A2,$0000    ;$15837F |
    dw $0008                      ;$158387 |
    db $C0                        ;$158389 |
    dl CODE_CA8409                ;$15838A |
    db $40,$0D,$01                ;$15838D |

AS_CA8390:
    db $C0                        ;$158390 |
    dl CODE_FL_009B65                ;$158391 |
    db $18,$40                    ;$158394 |
    dw $0010,$0034,$00A2,$0000    ;$158396 |
    dw $0009                      ;$15839E |
    db $C0                        ;$1583A0 |
    dl CODE_CA83F5                ;$1583A1 |
    db $40,$0E,$01                ;$1583A4 |

AS_CA83A7:
    db $C0                        ;$1583A7 |
    dl CODE_FL_00A40B                ;$1583A8 |
    dw $7A63                      ;$1583AB |
    db $0F,$06                    ;$1583AD |
    dw AS_CA83BB                  ;$1583AF |
    dw AS_CA83BE                  ;$1583B1 |
    dw AS_CA83C5                  ;$1583B3 |
    dw AS_CA83CC                  ;$1583B5 |
    dw AS_CA83D3                  ;$1583B7 |
    dw AS_CA83DA                  ;$1583B9 |

AS_CA83BB:
    db $40,$0A,$01                ;$1583BB |

AS_CA83BE:
    db $C0                        ;$1583BE |
    dl CODE_CA8431                ;$1583BF |
    db $40,$0B,$01                ;$1583C2 |

AS_CA83C5:
    db $C0                        ;$1583C5 |
    dl CODE_CA841D                ;$1583C6 |
    db $40,$0C,$01                ;$1583C9 |

AS_CA83CC:
    db $C0                        ;$1583CC |
    dl CODE_CA8409                ;$1583CD |
    db $40,$0D,$01                ;$1583D0 |

AS_CA83D3:
    db $C0                        ;$1583D3 |
    dl CODE_CA83F5                ;$1583D4 |
    db $40,$0E,$01                ;$1583D7 |

AS_CA83DA:
    db $C0                        ;$1583DA |
    dl CODE_CA83E1                ;$1583DB |
    db $40,$0E,$01                ;$1583DE |

CODE_CA83E1:
    LDX.W #$00B3                  ;$1583E1 |
    JSL.L CODE_FL_009AEB          ;$1583E4 |
    TAX                           ;$1583E8 |
    LDA.W #$00CF                  ;$1583E9 |
    STA.W Obj_VAR1,X              ;$1583EC |
    LDA.W #$004B                  ;$1583EF |
    STA.W Obj_VAR2,X              ;$1583F2 |

CODE_CA83F5:
    LDX.W #$00B3                  ;$1583F5 |
    JSL.L CODE_FL_009AEB          ;$1583F8 |
    TAX                           ;$1583FC |
    LDA.W #$00A8                  ;$1583FD |
    STA.W Obj_VAR1,X              ;$158400 |
    LDA.W #$0060                  ;$158403 |
    STA.W Obj_VAR2,X              ;$158406 |

CODE_CA8409:
    LDX.W #$00B3                  ;$158409 |
    JSL.L CODE_FL_009AEB          ;$15840C |
    TAX                           ;$158410 |
    LDA.W #$0099                  ;$158411 |
    STA.W Obj_VAR1,X              ;$158414 |
    LDA.W #$00AD                  ;$158417 |
    STA.W Obj_VAR2,X              ;$15841A |

CODE_CA841D:
    LDX.W #$00B3                  ;$15841D |
    JSL.L CODE_FL_009AEB          ;$158420 |
    TAX                           ;$158424 |
    LDA.W #$007A                  ;$158425 |
    STA.W Obj_VAR1,X              ;$158428 |
    LDA.W #$0088                  ;$15842B |
    STA.W Obj_VAR2,X              ;$15842E |

CODE_CA8431:
    LDX.W #$00B3                  ;$158431 |
    JSL.L CODE_FL_009AEB          ;$158434 |
    TAX                           ;$158438 |
    LDA.W #$0034                  ;$158439 |
    STA.W Obj_VAR1,X              ;$15843C |
    LDA.W #$00A4                  ;$15843F |
    STA.W Obj_VAR2,X              ;$158442 |
    RTL                           ;$158445 |

CODE_CA8446:
    LDX.B $39                     ;$158446 |
    LDA.W Obj_VAR4,X              ;$158448 |
    CMP.W #$0002                  ;$15844B |
    BMI CODE_958479               ;$15844E |
    STZ.W Obj_VAR4,X              ;$158450 |
    LDA.W Obj_VAR0,X              ;$158453 |
    CLC                           ;$158456 |
    ADC.W #$5FF9                  ;$158457 |
    LDX.W #$00CA                  ;$15845A |
    LDY.W #$A010                  ;$15845D |
    JSL.L WritePal                ;$158460 |
    LDY.B $39                     ;$158464 |
    LDA.W Obj_VAR0,Y              ;$158466 |
    CLC                           ;$158469 |
    ADC.W #$0020                  ;$15846A |
    CMP.W #$0200                  ;$15846D |
    BMI CODE_958475               ;$158470 |
    LDA.W #$0000                  ;$158472 |

CODE_958475:
    STA.W Obj_VAR0,Y              ;$158475 |
    RTL                           ;$158478 |

CODE_958479:
    INC.W Obj_VAR4,X              ;$158479 |
    RTL                           ;$15847C |

AS_CA847D:
    db $C0                        ;$15847D |	ActionScript
    dl MoveCurrentScriptToSCPU    ;$15847E |
    db $26                        ;$158481 |
    dw $0080                      ;$158482 |
    db $27                        ;$158484 |
    dw $0080                      ;$158485 |
    db $33                        ;$158487 |
    dw $005E                      ;$158488 |
    db $14                        ;$15848A |
    dl PTR16_CDE526               ;$15848B |
    db $24,$03                    ;$15848E |
    dl CODE_CA84AF                ;$158490 |
    db $C0                        ;$158493 |
    dl CODE_FL_00A40B                ;$158494 |
    dw $7A64                      ;$158497 |
    db $0F,$04                    ;$158499 |
    dw AS_CA84A3                  ;$15849B |
    dw AS_CA84A6                  ;$15849D |
    dw AS_CA84A9                  ;$15849F |
    dw AS_CA84AC                  ;$1584A1 |

AS_CA84A3:
    db $40,$FF,$01                ;$1584A3 |

AS_CA84A6:
    db $40,$0F,$01                ;$1584A6 |

AS_CA84A9:
    db $40,$10,$01                ;$1584A9 |

AS_CA84AC:
    db $40,$11,$01                ;$1584AC |

CODE_CA84AF:
    LDX.B $39                     ;$1584AF |
    LDA.W Obj_VAR4,X              ;$1584B1 |
    CMP.W #$0002                  ;$1584B4 |
    BMI CODE_9584E2               ;$1584B7 |
    STZ.W Obj_VAR4,X              ;$1584B9 |
    LDA.W Obj_VAR0,X              ;$1584BC |
    CLC                           ;$1584BF |
    ADC.W #$6279                  ;$1584C0 |
    LDX.W #$00CA                  ;$1584C3 |
    LDY.W #$B010                  ;$1584C6 |
    JSL.L WritePal                ;$1584C9 |
    LDY.B $39                     ;$1584CD |
    LDA.W Obj_VAR0,Y              ;$1584CF |
    CLC                           ;$1584D2 |
    ADC.W #$0020                  ;$1584D3 |
    CMP.W #$0200                  ;$1584D6 |
    BMI CODE_9584DE               ;$1584D9 |
    LDA.W #$0000                  ;$1584DB |

CODE_9584DE:
    STA.W Obj_VAR0,Y              ;$1584DE |
    RTL                           ;$1584E1 |

CODE_9584E2:
    INC.W Obj_VAR4,X              ;$1584E2 |
    RTL                           ;$1584E5 |
    db $C0,$6C,$92,$00,$26,$80,$00,$27;$1584E6 |
    db $80,$00,$33,$5E,$00,$14,$26,$E5;$1584EE |
    db $CD,$24,$18,$77,$7A,$0F,$03,$03;$1584F6 |
    db $85,$06,$85,$1A,$85,$40,$FF,$01;$1584FE |
    db $C0,$32,$85,$CA,$05,$1E,$41,$0F;$158506 |
    db $41,$FF,$07,$40,$0F,$02,$1E,$C0;$15850E |
    db $2E,$85,$CA,$01,$C0,$32,$85,$CA;$158516 |
    db $05,$1E,$41,$10,$41,$FF,$07,$40;$15851E |
    db $10,$02,$1E,$C0,$2E,$85,$CA,$01;$158526 |
    STZ.W $7A73                   ;$15852E |
    RTL                           ;$158531 |
    LDA.W $7A64                   ;$158532 |
    AND.W #$00FF                  ;$158535 |
    STA.B $28                     ;$158538 |
    LDA.W $7A77                   ;$15853A |
    ORA.B $28                     ;$15853D |
    SEP #$20                      ;$15853F |
    STA.W $7A64                   ;$158541 |
    REP #$20                      ;$158544 |
    STZ.W $7A77                   ;$158546 |
    RTL                           ;$158549 |
    db $C0,$6C,$92,$00,$02,$01,$33,$5E;$15854A |
    db $00,$14,$26,$E5,$CD,$26,$80,$00;$158552 |
    db $27,$80,$00,$C0,$6D,$85,$CA,$05;$15855A |
    db $1E,$41,$0B,$41,$FF,$07,$C0,$77;$158562 |
    db $85,$CA,$00                ;$15856A |
    LDX.W Obj_VAR2,Y              ;$15856D |
    LDA.W #$000A                  ;$158570 |
    STA.W Obj_Pose,X              ;$158573 |
    RTL                           ;$158576 |
    LDX.W Obj_VAR2,Y              ;$158577 |
    LDA.W #$000B                  ;$15857A |
    STA.W Obj_Pose,X              ;$15857D |
    RTL                           ;$158580 |
    db $33,$5E,$00,$14,$26,$E5,$CD,$26;$158581 |
    db $80,$00,$27,$80,$00,$C0,$9E,$85;$158589 |
    db $CA,$05,$1E,$41,$13,$41,$FF,$07;$158591 |
    db $C0,$A8,$85,$CA,$00        ;$158599 |
    LDX.W Obj_VAR2,Y              ;$15859E |
    LDA.W #$000B                  ;$1585A1 |
    STA.W Obj_Pose,X              ;$1585A4 |
    RTL                           ;$1585A7 |
    LDX.W Obj_VAR2,Y              ;$1585A8 |
    LDA.W #$000C                  ;$1585AB |
    STA.W Obj_Pose,X              ;$1585AE |
    RTL                           ;$1585B1 |
    db $33,$5E,$00,$14,$26,$E5,$CD,$26;$1585B2 |
    db $80,$00,$27,$80,$00,$C0,$CF,$85;$1585BA |
    db $CA,$05,$1E,$41,$14,$41,$FF,$07;$1585C2 |
    db $C0,$D9,$85,$CA,$00        ;$1585CA |
    LDX.W Obj_VAR2,Y              ;$1585CF |
    LDA.W #$000C                  ;$1585D2 |
    STA.W Obj_Pose,X              ;$1585D5 |
    RTL                           ;$1585D8 |
    LDX.W Obj_VAR2,Y              ;$1585D9 |
    LDA.W #$000D                  ;$1585DC |
    STA.W Obj_Pose,X              ;$1585DF |
    RTL                           ;$1585E2 |
    db $33,$5E,$00,$14,$26,$E5,$CD,$26;$1585E3 |
    db $80,$00,$27,$80,$00,$C0,$00,$86;$1585EB |
    db $CA,$05,$1E,$41,$15,$41,$FF,$07;$1585F3 |
    db $C0,$0A,$86,$CA,$00        ;$1585FB |
    LDX.W Obj_VAR2,Y              ;$158600 |
    LDA.W #$000D                  ;$158603 |
    STA.W Obj_Pose,X              ;$158606 |
    RTL                           ;$158609 |
    LDX.W Obj_VAR2,Y              ;$15860A |
    LDA.W #$000E                  ;$15860D |
    STA.W Obj_Pose,X              ;$158610 |
    RTL                           ;$158613 |
    db $C0,$6C,$92,$00,$02,$01,$33,$60;$158614 |
    db $00,$14,$26,$E5,$CD,$24,$40,$03;$15861C |
    db $C0,$46,$8A,$CA,$18,$77,$7A,$0F;$158624 |
    db $03,$38,$86,$33,$86,$33,$86,$03;$15862C |
    db $92,$8A,$CA,$01,$24,$C0,$CD,$89;$158634 |
    db $CA,$C0,$0B,$A4,$00,$66,$7A,$0F;$15863C |
    db $08,$55,$86,$55,$86,$5A,$86,$5F;$158644 |
    db $86,$64,$86,$69,$86,$6E,$86,$73;$15864C |
    db $86,$03,$E6,$87,$CA,$01,$03,$FF;$158654 |
    db $87,$CA,$01,$03,$5B,$88,$CA,$01;$15865C |
    db $03,$A5,$88,$CA,$01,$03,$13,$89;$158664 |
    db $CA,$01,$03,$2C,$89,$CA,$01,$03;$15866C |
    db $45,$89,$CA,$01,$24,$03,$BB,$89;$158674 |
    db $CA,$01,$24,$03,$5E,$89,$CA,$80;$15867C |
    db $80,$00,$02,$5E,$24,$90,$80,$FF;$158684 |
    db $02,$38,$24,$80,$80,$00,$02,$2E;$15868C |
    db $24,$C0,$F8,$89,$CA,$03,$BE,$89;$158694 |
    db $CA,$01,$24,$03,$5E,$89,$CA,$80;$15869C |
    db $80,$FF,$02,$2E,$24,$90,$80,$00;$1586A4 |
    db $02,$38,$24,$80,$80,$FF,$02,$5E;$1586AC |
    db $24,$C0,$EB,$89,$CA,$03,$BE,$89;$1586B4 |
    db $CA,$01,$24,$03,$5E,$89,$CA,$90;$1586BC |
    db $80,$00,$02,$4A,$24,$80,$80,$00;$1586C4 |
    db $02,$3E,$24,$C0,$05,$8A,$CA,$03;$1586CC |
    db $BE,$89,$CA,$01,$24,$03,$5E,$89;$1586D4 |
    db $CA,$90,$80,$FF,$02,$3A,$24,$80;$1586DC |
    db $80,$FF,$02,$6E,$24,$90,$80,$FF;$1586E4 |
    db $02,$28,$24,$C0,$2C,$8A,$CA,$03;$1586EC |
    db $BE,$89,$CA,$01,$24,$03,$5E,$89;$1586F4 |
    db $CA,$90,$80,$00,$02,$28,$24,$80;$1586FC |
    db $80,$00,$02,$6E,$24,$90,$80,$00;$158704 |
    db $02,$3A,$24,$C0,$F8,$89,$CA,$03;$15870C |
    db $BE,$89,$CA,$01,$24,$03,$5E,$89;$158714 |
    db $CA,$80,$80,$FF,$02,$3E,$24,$90;$15871C |
    db $80,$FF,$02,$4A,$24,$C0,$F8,$89;$158724 |
    db $CA,$03,$BE,$89,$CA,$01,$24,$03;$15872C |
    db $5E,$89,$CA,$80,$80,$00,$02,$4E;$158734 |
    db $24,$90,$80,$FF,$02,$70,$24,$80;$15873C |
    db $80,$FF,$02,$30,$24,$90,$80,$FF;$158744 |
    db $02,$2A,$24,$C0,$12,$8A,$CA,$03;$15874C |
    db $BE,$89,$CA,$01,$24,$03,$5E,$89;$158754 |
    db $CA,$90,$80,$00,$02,$2A,$24,$80;$15875C |
    db $80,$00,$02,$30,$24,$90,$80,$00;$158764 |
    db $02,$70,$24,$80,$80,$FF,$02,$4E;$15876C |
    db $24,$C0,$05,$8A,$CA,$03,$BE,$89;$158774 |
    db $CA,$01,$24,$03,$5E,$89,$CA,$80;$15877C |
    db $80,$00,$02,$4E,$24,$90,$80,$FF;$158784 |
    db $02,$28,$24,$C0,$1F,$8A,$CA,$03;$15878C |
    db $BE,$89,$CA,$01,$24,$03,$5E,$89;$158794 |
    db $CA,$90,$80,$FF,$02,$3C,$24,$80;$15879C |
    db $80,$FF,$02,$2E,$24,$C0,$39,$8A;$1587A4 |
    db $CA,$03,$BE,$89,$CA,$01,$24,$03;$1587AC |
    db $5E,$89,$CA,$80,$80,$00,$02,$2E;$1587B4 |
    db $24,$90,$80,$00,$02,$3C,$24,$C0;$1587BC |
    db $12,$8A,$CA,$03,$BE,$89,$CA,$01;$1587C4 |
    db $24,$03,$5E,$89,$CA,$90,$80,$00;$1587CC |
    db $02,$28,$24,$80,$80,$FF,$02,$4E;$1587D4 |
    db $24,$C0,$12,$8A,$CA,$03,$BE,$89;$1587DC |
    db $CA,$01                    ;$1587E4 |
    LDX.B $39                     ;$1587E6 |
    DEC.W Obj_VAR1,X              ;$1587E8 |
    BEQ CODE_1587F0               ;$1587EB |
    JMP.W CODE_JP_15895E          ;$1587ED |

CODE_1587F0:
    LDA.W #$867E                  ;$1587F0 |
    LDY.W #$00CA                  ;$1587F3 |
    LDX.B $39                     ;$1587F6 |
    JSL.L CODE_FL_008F64          ;$1587F8 |
    JMP.W CODE_JP_15895E          ;$1587FC |
    LDX.B $39                     ;$1587FF |
    DEC.W Obj_VAR1,X              ;$158801 |
    BEQ CODE_158809               ;$158804 |
    JMP.W CODE_JP_15895E          ;$158806 |

CODE_158809:
    LDA.W #$0003                  ;$158809 |
    JSL.L CallRNG_ModA            ;$15880C |
    ASL A                         ;$158810 |
    TAX                           ;$158811 |
    JMP.W (PTR16_158815,X)        ;$158812 |
PTR16_158815:
    dw CODE_15881B                ;$158815 |
    dw CODE_15882A                ;$158817 |
    dw CODE_158839                ;$158819 |

CODE_15881B:
    LDA.W #$869E                  ;$15881B |
    LDY.W #$00CA                  ;$15881E |
    LDX.B $39                     ;$158821 |
    JSL.L CODE_FL_008F64          ;$158823 |
    JMP.W CODE_JP_15895E          ;$158827 |

CODE_15882A:
    LDA.W #$86BE                  ;$15882A |
    LDY.W #$00CA                  ;$15882D |
    LDX.B $39                     ;$158830 |
    JSL.L CODE_FL_008F64          ;$158832 |
    JMP.W CODE_JP_15895E          ;$158836 |


CODE_158839:
    LDA.W $7A64                   ;$158839 |
    AND.W #$00FF                  ;$15883C |
    ASL A                         ;$15883F |
    TAX                           ;$158840 |
    JMP.W (PTR16_158844,X)        ;$158841 |

PTR16_158844:
    dw CODE_158809
PTR16_158847:
    dw CODE_15884C
    dw CODE_158809
    dw CODE_15884C

CODE_15884C:
    LDA.W #$86D8                  ;$15884C |
    LDY.W #$00CA                  ;$15884F |
    LDX.B $39                     ;$158852 |
    JSL.L CODE_FL_008F64          ;$158854 |
    JMP.W CODE_JP_15895E          ;$158858 |
    LDX.B $39                     ;$15885B |
    DEC.W Obj_VAR1,X              ;$15885D |
    BEQ CODE_158865               ;$158860 |
    JMP.W CODE_JP_15895E          ;$158862 |


CODE_158865:
    LDA.W #$0002                  ;$158865 |
    JSL.L CallRNG_ModA          ;$158868 |
    ASL A                         ;$15886C |
    TAX                           ;$15886D |
    JMP.W (CODE_158871,X)         ;$15886E |


CODE_158871:
    ADC.B $88,X                   ;$158871 |
    STY.B $88                     ;$158873 |
    LDA.W #$8718                  ;$158875 |
    LDY.W #$00CA                  ;$158878 |
    LDX.B $39                     ;$15887B |
    JSL.L CODE_FL_008F64          ;$15887D |
    JMP.W CODE_JP_15895E          ;$158881 |

    LDA.W $7A66                   ;$158884 |
    AND.W #$00FF                  ;$158887 |
    STA.B $28                     ;$15888A |
    LDA.W $7A63                   ;$15888C |
    AND.W #$00FF                  ;$15888F |
    CMP.B $28                     ;$158892 |
    BMI CODE_158865               ;$158894 |
    LDA.W #$8732                  ;$158896 |
    LDY.W #$00CA                  ;$158899 |
    LDX.B $39                     ;$15889C |
    JSL.L CODE_FL_008F64          ;$15889E |
    JMP.W CODE_JP_15895E          ;$1588A2 |

    LDX.B $39                     ;$1588A5 |
    DEC.W Obj_VAR1,X              ;$1588A7 |
    BEQ CODE_1588AF               ;$1588AA |
    JMP.W CODE_JP_15895E          ;$1588AC |


CODE_1588AF:
    LDA.W #$0003                  ;$1588AF |
    JSL.L CallRNG_ModA          ;$1588B2 |
    ASL A                         ;$1588B6 |
    TAX                           ;$1588B7 |
    JMP.W (CODE_1588BB,X)         ;$1588B8 |


CODE_1588BB:
    CMP.B ($88,X)                 ;$1588BB |
    BNE PTR16_158847+1            ;$1588BD | Code jumps to... a pointer table??? Is this an error or intentional?
    SBC.B ($88),Y                 ;$1588BF |
    LDA.W #$8758                  ;$1588C1 |
    LDY.W #$00CA                  ;$1588C4 |
    LDX.B $39                     ;$1588C7 |
    JSL.L CODE_FL_008F64          ;$1588C9 |
    JMP.W CODE_JP_15895E          ;$1588CD |

    LDA.W $7A66                   ;$1588D0 |
    AND.W #$00FF                  ;$1588D3 |
    STA.B $28                     ;$1588D6 |
    LDA.W $7A63                   ;$1588D8 |
    AND.W #$00FF                  ;$1588DB |
    CMP.B $28                     ;$1588DE |
    BMI CODE_1588AF               ;$1588E0 |
    LDA.W #$877E                  ;$1588E2 |
    LDY.W #$00CA                  ;$1588E5 |
    LDX.B $39                     ;$1588E8 |
    JSL.L CODE_FL_008F64          ;$1588EA |
    JMP.W CODE_JP_15895E          ;$1588EE |

    LDA.W $7A64                   ;$1588F1 |
    AND.W #$00FF                  ;$1588F4 |
    ASL A                         ;$1588F7 |
    TAX                           ;$1588F8 |
    JMP.W (CODE_1588FC,X)         ;$1588F9 |


CODE_1588FC:
    LDA.L DATA8_88AF88            ;$1588FC |
    TSB.B $89                     ;$158900 |
    TSB.B $89                     ;$158902 |
    LDA.W #$8798                  ;$158904 |
    LDY.W #$00CA                  ;$158907 |
    LDX.B $39                     ;$15890A |
    JSL.L CODE_FL_008F64          ;$15890C |
    JMP.W CODE_JP_15895E          ;$158910 |

    LDX.B $39                     ;$158913 |
    DEC.W Obj_VAR1,X              ;$158915 |
    BEQ CODE_15891D               ;$158918 |
    JMP.W CODE_JP_15895E          ;$15891A |


CODE_15891D:
    LDA.W #$87CC                  ;$15891D |
    LDY.W #$00CA                  ;$158920 |
    LDX.B $39                     ;$158923 |
    JSL.L CODE_FL_008F64          ;$158925 |
    JMP.W CODE_JP_15895E          ;$158929 |

    LDX.B $39                     ;$15892C |
    DEC.W Obj_VAR1,X              ;$15892E |
    BEQ CODE_158936               ;$158931 |
    JMP.W CODE_JP_15895E          ;$158933 |

CODE_158936:
    LDA.W #$86F8                  ;$158936 |
    LDY.W #$00CA                  ;$158939 |
    LDX.B $39                     ;$15893C |
    JSL.L CODE_FL_008F64          ;$15893E |
    JMP.W CODE_JP_15895E          ;$158942 |
    LDX.B $39                     ;$158945 |
    DEC.W Obj_VAR1,X              ;$158947 |
    BEQ CODE_15894F               ;$15894A |
    JMP.W CODE_JP_15895E          ;$15894C |


CODE_15894F:
    LDA.W #$87B2                  ;$15894F |
    LDY.W #$00CA                  ;$158952 |
    LDX.B $39                     ;$158955 |
    JSL.L CODE_FL_008F64          ;$158957 |
    JMP.W CODE_JP_15895E          ;$15895B |


CODE_JP_15895E:
    LDX.B $39                     ;$15895E |
    LDY.W Obj_VAR2,X              ;$158960 |
    LDA.W Obj_XPositionMirror,Y   ;$158963 |
    CLC                           ;$158966 |
    ADC.W #$0008                  ;$158967 |
    CMP.W Obj_XPositionMirror,X   ;$15896A |
    BMI CODE_1589B8               ;$15896D |
    LDA.W Obj_XPositionMirror,Y   ;$15896F |
    CLC                           ;$158972 |
    ADC.W #$FFF8                  ;$158973 |
    CMP.W Obj_XPositionMirror,X   ;$158976 |
    BPL CODE_1589B8               ;$158979 |
    LDA.W Obj_YPositionMirror,Y   ;$15897B |
    CLC                           ;$15897E |
    ADC.W #$000C                  ;$15897F |
    CMP.W Obj_YPositionMirror,X   ;$158982 |
    BMI CODE_1589B8               ;$158985 |
    LDA.W Obj_YPositionMirror,Y   ;$158987 |
    CLC                           ;$15898A |
    ADC.W #$FFFC                  ;$15898B |
    CMP.W Obj_YPositionMirror,X   ;$15898E |
    BPL CODE_1589B8               ;$158991 |
    LDA.W #$8678                  ;$158993 |
    LDY.W #$00CA                  ;$158996 |
    JSL.L CODE_FL_008F64          ;$158999 |
    LDA.W #$7D94                  ;$15899D |
    PHA                           ;$1589A0 |
    LDY.W #$00CA                  ;$1589A1 |
    LDX.B $39                     ;$1589A4 |
    LDA.W Obj_VAR2,X              ;$1589A6 |
    TAX                           ;$1589A9 |
    PLA                           ;$1589AA |
    JSL.L CODE_FL_008F64          ;$1589AB |
    LDA.W #$FFFF                  ;$1589AF |
    STA.W ReloadRoom              ;$1589B2 |
    STZ.W $7A73                   ;$1589B5 |

CODE_1589B8:
    JMP.W CODE_JP_158A92          ;$1589B8 |
    JMP.W CODE_JP_158A92          ;$1589BB |
    LDA.W #$8638                  ;$1589BE |
    LDY.W #$00CA                  ;$1589C1 |
    LDX.B $39                     ;$1589C4 |
    JSL.L CODE_FL_008F64          ;$1589C6 |
    JMP.W CODE_JP_158A92          ;$1589CA |
    LDA.W #$0080                  ;$1589CD |
    JSL.L CallRNG_ModA          ;$1589D0 |
    CLC                           ;$1589D4 |
    ADC.W #$001E                  ;$1589D5 |
    LDX.B $39                     ;$1589D8 |
    STA.W Obj_VAR1,X              ;$1589DA |
    RTL                           ;$1589DD |
    LDA.W #$8678                  ;$1589DE |
    LDY.W #$00CA                  ;$1589E1 |
    LDX.B $39                     ;$1589E4 |
    JSL.L CODE_FL_008F64          ;$1589E6 |
    RTL                           ;$1589EA |

    LDA.W #$0000                  ;$1589EB |
    SEP #$20                      ;$1589EE |
    LDA.B #$01                    ;$1589F0 |
    STA.W $7A66                   ;$1589F2 |
    REP #$20                      ;$1589F5 |
    RTL                           ;$1589F7 |
    LDA.W #$0000                  ;$1589F8 |
    SEP #$20                      ;$1589FB |
    LDA.B #$02                    ;$1589FD |
    STA.W $7A66                   ;$1589FF |
    REP #$20                      ;$158A02 |
    RTL                           ;$158A04 |
    LDA.W #$0000                  ;$158A05 |
    SEP #$20                      ;$158A08 |
    LDA.B #$03                    ;$158A0A |
    STA.W $7A66                   ;$158A0C |
    REP #$20                      ;$158A0F |
    RTL                           ;$158A11 |

    LDA.W #$0000                  ;$158A12 |
    SEP #$20                      ;$158A15 |
    LDA.B #$04                    ;$158A17 |
    STA.W $7A66                   ;$158A19 |
    REP #$20                      ;$158A1C |
    RTL                           ;$158A1E |

    LDA.W #$0000                  ;$158A1F |
    SEP #$20                      ;$158A22 |
    LDA.B #$05                    ;$158A24 |
    STA.W $7A66                   ;$158A26 |
    REP #$20                      ;$158A29 |
    RTL                           ;$158A2B |

    LDA.W #$0000                  ;$158A2C |
    SEP #$20                      ;$158A2F |
    LDA.B #$06                    ;$158A31 |
    STA.W $7A66                   ;$158A33 |
    REP #$20                      ;$158A36 |
    RTL                           ;$158A38 |
    LDA.W #$0000                  ;$158A39 |
    SEP #$20                      ;$158A3C |
    LDA.B #$07                    ;$158A3E |
    STA.W $7A66                   ;$158A40 |
    REP #$20                      ;$158A43 |
    RTL                           ;$158A45 |

    LDY.B $39                     ;$158A46 |
    LDA.W $7A65                   ;$158A48 |
    AND.W #$00FF                  ;$158A4B |
    STA.B $28                     ;$158A4E |
    LDA.W $7A66                   ;$158A50 |
    AND.W #$00FF                  ;$158A53 |
    CMP.B $28                     ;$158A56 |
    BNE CODE_158A61               ;$158A58 |
    SEC                           ;$158A5A |
    SBC.W #$0001                  ;$158A5B |
    STA.W $7A66                   ;$158A5E |

CODE_158A61:
    ASL A                         ;$158A61 |
    TAX                           ;$158A62 |
    LDA.L DATA16_CA8A72,X         ;$158A63 |
    STA.W Obj_XPosition,Y         ;$158A67 |
    LDA.L DATA16_CA8A82,X         ;$158A6A |
    STA.W Obj_YPosition,Y         ;$158A6E |
    RTL                           ;$158A71 |

DATA16_CA8A72:
    dw $0034,$0034,$007A,$0099    ;$158A72 |
    dw $00A8,$00CF,$0042,$0090    ;$158A7A |

DATA16_CA8A82:
    dw $00AB,$00AB,$008D,$00B4    ;$158A82 |
    dw $0067,$0053,$005F,$004B    ;$158A8A |

CODE_JP_158A92:
    LDX.B $39                     ;$158A92 |
    LDA.W Obj_VAR4,X              ;$158A94 |
    CMP.W #$0002                  ;$158A97 |
    BMI CODE_158AC5               ;$158A9A |
    STZ.W Obj_VAR4,X              ;$158A9C |
    LDA.W Obj_VAR0,X              ;$158A9F |
    CLC                           ;$158AA2 |
    ADC.W #$64F9                  ;$158AA3 |
    LDX.W #$00CA                  ;$158AA6 |
    LDY.W #$C010                  ;$158AA9 |
    JSL.L WritePal                ;$158AAC |
    LDY.B $39                     ;$158AB0 |
    LDA.W Obj_VAR0,Y              ;$158AB2 |
    CLC                           ;$158AB5 |
    ADC.W #$0020                  ;$158AB6 |
    CMP.W #$0200                  ;$158AB9 |
    BMI CODE_158AC1               ;$158ABC |
    LDA.W #$0000                  ;$158ABE |

CODE_158AC1:
    STA.W Obj_VAR0,Y              ;$158AC1 |
    RTL                           ;$158AC4 |

CODE_158AC5:
    INC.W Obj_VAR4,X              ;$158AC5 |
    RTL                           ;$158AC8 |
    db $83,$00,$14,$30,$2E,$E1,$00,$76;$158AC9 |
    db $83,$A0,$07,$7C,$98,$E7,$00,$60;$158AD1 |
    db $83,$80,$3C,$00,$00,$D9,$00,$00;$158AD9 |
    db $83,$10,$01,$A1,$1C,$EC,$00,$40;$158AE1 |
    db $89,$00,$04,$69,$4F,$E8,$00,$48;$158AE9 |
    db $0F,$00,$04,$00,$24,$7E,$00,$48;$158AF1 |
    db $89,$00,$04,$7F,$CC,$EB,$00,$58;$158AF9 |
    db $0F,$00,$04,$00,$24,$7E,$00,$58;$158B01 |
    db $FF,$C0,$6C,$92,$00,$02,$01,$C0;$158B09 |
    db $E6,$5F,$CA,$C0,$7D,$8C,$CA,$C0;$158B11 |
    db $D5,$A2,$00,$3E,$6F,$01,$00,$11;$158B19 |
    db $33,$8C,$24,$16,$FB,$A6,$15,$78;$158B21 |
    db $AB,$14,$52,$E5,$CD,$33,$61,$00;$158B29 |
    db $40,$FF,$C0,$E6,$5F,$CA,$C0,$BE;$158B31 |
    db $84,$00,$F0,$38,$0A,$CE,$5F,$1B;$158B39 |
    db $73,$7A,$FF,$FF,$C0,$94,$9C,$00;$158B41 |
    db $09,$C0,$BB,$9C,$00,$00,$00,$60;$158B49 |
    db $00,$C0,$9A,$9C,$00,$00,$00,$00;$158B51 |
    db $00,$00,$48,$C0,$CE,$9C,$00,$11;$158B59 |
    db $C0,$85,$9F,$00,$00,$C0,$65,$9B;$158B61 |
    db $00,$04,$30,$10,$00,$00,$00,$00;$158B69 |
    db $00,$01,$00,$00,$00,$C0,$90,$8C;$158B71 |
    db $CA,$C0,$D5,$A2,$00,$3E,$6F,$01;$158B79 |
    db $00,$11,$C9,$8B,$C0,$E6,$5F,$CA;$158B81 |
    db $03,$39,$8C,$CA,$C0,$EA,$9F,$00;$158B89 |
    db $99,$DC,$E9,$00,$00,$02,$C0,$6C;$158B91 |
    db $9C,$00,$95,$9C,$CA,$05,$10,$C1;$158B99 |
    db $CD,$9F,$00,$07,$C1,$C9,$A2,$00;$158BA1 |
    db $73,$7A,$00,$00,$11,$A5,$8B,$05;$158BA9 |
    db $10,$C1,$DD,$9F,$00,$07,$C0,$BE;$158BB1 |
    db $84,$00,$C0,$EF,$9B,$00,$C0,$A1;$158BB9 |
    db $8C,$CA,$1B,$92,$73,$01,$00,$01;$158BC1 |
    db $16,$BA,$A8,$C0,$EA,$9F,$00,$99;$158BC9 |
    db $AE,$E9,$00,$00,$02,$C0,$70,$8C;$158BD1 |
    db $CA,$C0,$6C,$9C,$00,$BE,$9C,$CA;$158BD9 |
    db $C0,$8F,$A2,$00,$F5,$97,$DB,$00;$158BE1 |
    db $20,$7E,$C0,$9A,$9C,$00,$00,$00;$158BE9 |
    db $00,$00,$00,$40,$C0,$9A,$9C,$00;$158BF1 |
    db $01,$03,$00,$00,$00,$50,$C0,$CE;$158BF9 |
    db $9C,$00,$13,$02,$03,$2F,$01,$C0;$158C01 |
    db $FF,$30,$01,$40,$00,$05,$10,$C1;$158C09 |
    db $CD,$9F,$00,$07,$C1,$C9,$A2,$00;$158C11 |
    db $73,$7A,$00,$00,$11,$15,$8C,$05;$158C19 |
    db $10,$C1,$DD,$9F,$00,$07,$C0,$BE;$158C21 |
    db $84,$00,$C0,$EF,$9B,$00,$C0,$A1;$158C29 |
    db $8C,$CA,$1B,$92,$73,$01,$00,$01;$158C31 |
    LDX.B $39                     ;$158C39 |
    LDA.W Obj_VAR4,X              ;$158C3B |
    CMP.W #$0002                  ;$158C3E |
    BPL CODE_158C47               ;$158C41 |
    INC.W Obj_VAR4,X              ;$158C43 |
    RTL                           ;$158C46 |

CODE_158C47:
    STZ.W Obj_VAR4,X              ;$158C47 |
    LDA.W Obj_VAR0,X              ;$158C4A |
    CLC                           ;$158C4D |
    ADC.W #$6779                  ;$158C4E |
    LDX.W #$00CA                  ;$158C51 |
    LDY.W #$7010                  ;$158C54 |
    JSL.L WritePal                ;$158C57 |
    LDY.B $39                     ;$158C5B |
    LDA.W Obj_VAR0,Y              ;$158C5D |
    CLC                           ;$158C60 |
    ADC.W #$0020                  ;$158C61 |
    CMP.W #$0400                  ;$158C64 |
    BMI CODE_158C6C               ;$158C67 |
    LDA.W #$0000                  ;$158C69 |

CODE_158C6C:
    STA.W Obj_VAR0,Y              ;$158C6C |
    RTL                           ;$158C6F |
    LDA.W #$000A                  ;$158C70 |
    LDX.W #$000D                  ;$158C73 |
    LDY.W #$0000                  ;$158C76 |
    JML.L CODE_FL_01A841          ;$158C79 |
    LDY.B $39                     ;$158C7D |
    LDA.W Current_Level           ;$158C7F |
    BNE CODE_158C89               ;$158C82 |
    LDA.W Current_Room            ;$158C84 |
    BEQ CODE_158C8F               ;$158C87 |

CODE_158C89:
    LDA.W #$0001                  ;$158C89 |
    STA.W Obj_VAR4,Y              ;$158C8C |

CODE_158C8F:
    RTL                           ;$158C8F |
    LDY.B $39                     ;$158C90 |
    LDA.W Current_Level           ;$158C92 |
    CMP.W #$0003                  ;$158C95 |
    BPL CODE_158CA0               ;$158C98 |
    LDA.W #$0001                  ;$158C9A |
    STA.W Obj_VAR4,Y              ;$158C9D |

CODE_158CA0:
    RTL                           ;$158CA0 |
    LDA.W $7A69                   ;$158CA1 |
    STA.W Current_Level           ;$158CA4 |
    STZ.W Current_Room            ;$158CA7 |
    RTL                           ;$158CAA |
    db $C0,$6C,$92,$00,$02,$01,$24,$C0;$158CAB |
    db $E6,$5F,$CA,$16,$FB,$A6,$15,$78;$158CB3 |
    db $AB,$33,$61,$00,$14,$52,$E5,$CD;$158CBB |
    db $C0,$65,$9B,$00,$04,$30,$10,$00;$158CC3 |
    db $00,$00,$00,$00,$01,$00,$01,$00;$158CCB |
    db $18,$EE,$32,$0F,$09,$EA,$8C,$58;$158CD3 |
    db $8D,$0D,$8E,$9C,$8E,$F2,$8E,$8A;$158CDB |
    db $8F,$37,$90,$8F,$90,$34,$8F,$26;$158CE3 |
    db $40,$00,$27,$A8,$00,$41,$08,$41;$158CEB |
    db $0D,$41,$09,$41,$0A,$80,$00,$FC;$158CF3 |
    db $05,$03,$41,$00,$41,$01,$41,$03;$158CFB |
    db $41,$02,$07,$C0,$65,$9B,$00,$04;$158D03 |
    db $30,$10,$00,$00,$00,$00,$00,$01;$158D0B |
    db $00,$02,$00,$C0,$65,$9B,$00,$04;$158D13 |
    db $30,$10,$00,$00,$00,$00,$00,$01;$158D1B |
    db $00,$04,$00,$24,$42,$02,$80,$40;$158D23 |
    db $02,$90,$B0,$FB,$B0,$24,$00,$05;$158D2B |
    db $08,$42,$00,$42,$01,$42,$03,$42;$158D33 |
    db $02,$07,$C0,$90,$90,$CA,$24,$44;$158D3B |
    db $11,$44,$12,$4A,$13,$44,$12,$44;$158D43 |
    db $11,$40,$FF,$02,$1E,$1B,$73,$7A;$158D4B |
    db $00,$00,$0E,$8F,$90,$26,$C8,$00;$158D53 |
    db $27,$B4,$00,$40,$01,$C0,$65,$9B;$158D5B |
    db $00,$04,$30,$10,$00,$00,$00,$00;$158D63 |
    db $00,$01,$00,$04,$00,$80,$00,$01;$158D6B |
    db $90,$00,$FC,$A0,$F0,$FF,$B0,$10;$158D73 |
    db $00,$02,$38,$A0,$10,$00,$B0,$18;$158D7B |
    db $00,$40,$00,$02,$18,$A0,$20,$00;$158D83 |
    db $B0,$00,$00,$02,$18,$24,$02,$02;$158D8B |
    db $C0,$65,$9B,$00,$04,$30,$10,$00;$158D93 |
    db $00,$00,$00,$00,$01,$00,$02,$00;$158D9B |
    db $80,$00,$FC,$92,$00,$FE,$42,$01;$158DA3 |
    db $42,$03,$42,$02,$49,$15,$C0,$65;$158DAB |
    db $9B,$00,$04,$30,$10,$00,$00,$00;$158DB3 |
    db $00,$00,$01,$00,$04,$00,$C0,$65;$158DBB |
    db $9B,$00,$04,$30,$10,$00,$00,$00;$158DC3 |
    db $00,$00,$01,$00,$03,$00,$80,$F0;$158DCB |
    db $00,$90,$00,$FC,$B0,$30,$00,$05;$158DD3 |
    db $0C,$42,$15,$42,$16,$07,$C0,$65;$158DDB |
    db $9B,$00,$04,$30,$10,$00,$00,$00;$158DE3 |
    db $00,$00,$01,$00,$04,$00,$C0,$65;$158DEB |
    db $9B,$00,$04,$30,$10,$00,$00,$00;$158DF3 |
    db $00,$00,$01,$00,$02,$00,$40,$FF;$158DFB |
    db $02,$30,$1B,$73,$7A,$00,$00,$0E;$158E03 |
    db $8F,$90,$26,$30,$00,$27,$30,$00;$158E0B |
    db $40,$17,$80,$00,$FD,$90,$C0,$00;$158E13 |
    db $A0,$20,$00,$02,$18,$B0,$FA,$FF;$158E1B |
    db $02,$28,$C0,$65,$9B,$00,$04,$30;$158E23 |
    db $10,$00,$00,$00,$00,$00,$01,$00;$158E2B |
    db $0C,$00,$A0,$DE,$FF,$40,$18,$02;$158E33 |
    db $2C,$C0,$65,$9B,$00,$04,$30,$10;$158E3B |
    db $00,$00,$00,$00,$00,$01,$00,$0C;$158E43 |
    db $00,$A0,$06,$00,$B0,$0C,$00,$02;$158E4B |
    db $1E,$80,$C0,$FF,$90,$40,$00,$A0;$158E53 |
    db $00,$00,$B0,$00,$00,$40,$19,$05;$158E5B |
    db $02,$02,$1E,$C0,$65,$9B,$00,$04;$158E63 |
    db $30,$10,$00,$00,$00,$00,$00,$01;$158E6B |
    db $00,$0C,$00,$07,$80,$E0,$FF,$90;$158E73 |
    db $20,$00,$40,$1A,$05,$03,$02,$14;$158E7B |
    db $C0,$65,$9B,$00,$04,$30,$10,$00;$158E83 |
    db $00,$00,$00,$00,$01,$00,$0C,$00;$158E8B |
    db $07,$1B,$73,$7A,$00,$00,$0E,$8F;$158E93 |
    db $90,$26,$56,$00,$27,$74,$00,$40;$158E9B |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$158EA3 |
    db $00,$00,$00,$00,$00,$01,$00,$02;$158EAB |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$158EB3 |
    db $00,$00,$00,$00,$00,$01,$00,$0D;$158EBB |
    db $00,$80,$00,$FE,$90,$00,$FC,$A0;$158EC3 |
    db $10,$00,$B0,$20,$00,$02,$22,$C0;$158ECB |
    db $6C,$9C,$00,$F7,$9C,$CA,$24,$02;$158ED3 |
    db $14,$80,$00,$01,$90,$00,$FD,$B0;$158EDB |
    db $20,$00,$02,$3C,$24,$02,$1E,$1B;$158EE3 |
    db $73,$7A,$00,$00,$0E,$8F,$90,$C0;$158EEB |
    db $6C,$9C,$00,$F7,$9C,$CA,$26,$90;$158EF3 |
    db $00,$27,$7C,$00,$40,$00,$C0,$65;$158EFB |
    db $9B,$00,$04,$30,$10,$00,$00,$00;$158F03 |
    db $00,$00,$01,$00,$02,$00,$C0,$65;$158F0B |
    db $9B,$00,$04,$30,$10,$00,$00,$00;$158F13 |
    db $00,$00,$01,$00,$15,$00,$02,$1E;$158F1B |
    db $C0,$6C,$9C,$00,$00,$9D,$CA,$02;$158F23 |
    db $8C,$1B,$73,$7A,$00,$00,$0E,$8F;$158F2B |
    db $90,$C0,$6C,$9C,$00,$F7,$9C,$CA;$158F33 |
    db $C0,$6C,$9C,$00,$00,$9D,$CA,$26;$158F3B |
    db $60,$00,$27,$5C,$00,$40,$00,$C0;$158F43 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$158F4B |
    db $00,$00,$00,$01,$00,$02,$00,$C0;$158F53 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$158F5B |
    db $00,$00,$00,$01,$00,$0F,$00,$80;$158F63 |
    db $F0,$FF,$90,$00,$F8,$B5,$40,$01;$158F6B |
    db $C0,$6C,$9C,$00,$2B,$9D,$CA,$B0;$158F73 |
    db $06,$00,$02,$A0,$24,$02,$1E,$1B;$158F7B |
    db $73,$7A,$00,$00,$0E,$8F,$90,$C0;$158F83 |
    db $6C,$9C,$00,$F7,$9C,$CA,$C0,$6C;$158F8B |
    db $9C,$00,$00,$9D,$CA,$C0,$6C,$9C;$158F93 |
    db $00,$2B,$9D,$CA,$26,$74,$00,$27;$158F9B |
    db $90,$00,$40,$23,$C0,$65,$9B,$00;$158FA3 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$158FAB |
    db $01,$00,$02,$00,$C0,$65,$9B,$00;$158FB3 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$158FBB |
    db $01,$00,$10,$00,$80,$C0,$FF,$90;$158FC3 |
    db $00,$04,$B0,$E0,$FF,$02,$18,$C0;$158FCB |
    db $6C,$9C,$00,$09,$9D,$CA,$B0,$F4;$158FD3 |
    db $FF,$40,$00,$02,$18,$A0,$E0,$FF;$158FDB |
    db $B0,$F0,$FF,$02,$18,$A0,$20,$00;$158FE3 |
    db $B0,$F4,$FF,$02,$18,$40,$23,$B0;$158FEB |
    db $10,$00,$02,$2C,$40,$24,$A0,$DC;$158FF3 |
    db $FF,$02,$18,$A0,$D0,$FF,$B0,$00;$158FFB |
    db $00,$02,$18,$40,$01,$80,$00,$FA;$159003 |
    db $90,$00,$03,$A0,$30,$00,$B0,$E8;$15900B |
    db $FF,$02,$20,$40,$00,$90,$00,$04;$159013 |
    db $A0,$04,$00,$B0,$E0,$FF,$02,$10;$15901B |
    db $40,$23,$A0,$00,$00,$02,$38,$24;$159023 |
    db $40,$FF,$02,$14,$1B,$73,$7A,$00;$15902B |
    db $00,$0E,$8F,$90,$C0,$6C,$9C,$00;$159033 |
    db $F7,$9C,$CA,$C0,$6C,$9C,$00,$00;$15903B |
    db $9D,$CA,$C0,$6C,$9C,$00,$2B,$9D;$159043 |
    db $CA,$C0,$6C,$9C,$00,$09,$9D,$CA;$15904B |
    db $26,$79,$00,$27,$48,$00,$40,$00;$159053 |
    db $C0,$65,$9B,$00,$04,$30,$10,$00;$15905B |
    db $00,$00,$00,$00,$01,$00,$02,$00;$159063 |
    db $C0,$65,$9B,$00,$04,$30,$10,$00;$15906B |
    db $00,$00,$00,$00,$01,$00,$13,$00;$159073 |
    db $02,$14,$C0,$6C,$9C,$00,$12,$9D;$15907B |
    db $CA,$02,$B4,$24,$1B,$73,$7A,$00;$159083 |
    db $00,$0E,$8F,$90,$01        ;$15908B |
    LDA.W #$0497                  ;$159090 |
    STA.W $0632                   ;$159093 |
    LDA.W #$053C                  ;$159096 |
    STA.W $0634                   ;$159099 |
    LDA.W #$5F3E                  ;$15909C |
    STA.W $063C                   ;$15909F |
    RTL                           ;$1590A2 |
    dw $0038,$0038,$0038,$00A0    ;$1590A3 |
    dw $00AC,$00B8,$00C8,$00C8    ;$1590AB |
    dw $0060,$0060,$0060,$0060    ;$1590B3 |
    dw $0038,$0060,$0038,$0032    ;$1590BB |
    dw $0040,$0050,$0069,$0060    ;$1590C3 |
    dw $0056,$0056,$0078,$0090    ;$1590CB |
    dw $0048,$0030,$0040,$0058    ;$1590D3 |
    dw $0060,$0072,$0072,$0079    ;$1590DB |
    dw $0079,$0079,$0088,$0098    ;$1590E3 |
    dw $00A0,$0080,$0078,$0060    ;$1590EB |
    dw $0060,$009A,$009A,$009A    ;$1590F3 |
    dw $00B8,$00BA,$00BA,$00B4    ;$1590FB |
    dw $00B4,$0060,$0060,$0060    ;$159103 |
    dw $0060,$0048,$0060,$0048    ;$15910B |
    dw $0087,$0094,$0090,$0080    ;$159113 |
    dw $0080,$0074,$0074,$006A    ;$15911B |
    dw $007C,$0058,$0058,$00A8    ;$159123 |
    dw $0094,$0094,$0094,$0094    ;$15912B |
    dw $0078,$0058,$0048,$0050    ;$159133 |
    dw $0054,$0088,$0078,$0074    ;$15913B |
    dw $005C,$005C                ;$159143 |
    db $C0,$6C,$92,$00,$02,$01,$24,$C0;$159147 |
    db $E6,$5F,$CA,$16,$FB,$A6,$15,$78;$15914F |
    db $AB,$33,$60,$00,$14,$52,$E5,$CD;$159157 |
    db $18,$EE,$32,$0F,$09,$76,$91,$97;$15915F |
    db $91,$E5,$91,$44,$92,$44,$92,$44;$159167 |
    db $92,$44,$92,$44,$92,$44,$92,$26;$15916F |
    db $50,$00,$27,$A8,$00,$40,$05,$C0;$159177 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$15917F |
    db $00,$00,$00,$01,$00,$05,$00,$80;$159187 |
    db $10,$00,$90,$FC,$FF,$41,$05,$01;$15918F |
    db $03,$29,$93,$CA,$26,$98,$00,$27;$159197 |
    db $8C,$00,$40,$06,$80,$08,$00,$90;$15919F |
    db $F0,$FF,$40,$06,$02,$5E,$C0,$65;$1591A7 |
    db $9B,$00,$04,$30,$10,$00,$F8,$FF;$1591AF |
    db $F8,$FF,$01,$00,$05,$00,$C0,$65;$1591B7 |
    db $9B,$00,$04,$30,$10,$00,$F8,$FF;$1591BF |
    db $F8,$FF,$01,$00,$07,$00,$02,$0C;$1591C7 |
    db $05,$10,$02,$02,$C0,$65,$9B,$00;$1591CF |
    db $04,$30,$10,$00,$00,$00,$00,$00;$1591D7 |
    db $01,$00,$06,$00,$07,$01,$03,$29;$1591DF |
    db $93,$CA,$26,$A0,$00,$27,$40,$00;$1591E7 |
    db $40,$07,$90,$F8,$FF,$40,$07,$02;$1591EF |
    db $1D,$C0,$65,$9B,$00,$04,$30,$10;$1591F7 |
    db $00,$00,$00,$00,$00,$01,$00,$08;$1591FF |
    db $00,$02,$1C,$C0,$65,$9B,$00,$04;$159207 |
    db $30,$10,$00,$00,$00,$00,$00,$01;$15920F |
    db $00,$09,$00,$02,$29,$C0,$65,$9B;$159217 |
    db $00,$04,$30,$10,$00,$00,$00,$00;$15921F |
    db $00,$01,$00,$0A,$00,$02,$1E,$05;$159227 |
    db $07,$02,$19,$C0,$65,$9B,$00,$04;$15922F |
    db $30,$10,$00,$00,$00,$00,$00,$01;$159237 |
    db $00,$0B,$00,$07,$01,$C0,$4B,$92;$15923F |
    db $CA,$41,$04,$01            ;$159247 |
    LDY.B $39                     ;$15924B |
    LDA.W Current_Level           ;$15924D |
    ASL A                         ;$159250 |
    TAX                           ;$159251 |
    LDA.L DATA16_CA9261,X         ;$159252 |
    STA.W Obj_XPosition,Y         ;$159256 |
    LDA.L DATA16_CA9273,X         ;$159259 |
    STA.W Obj_YPosition,Y         ;$15925D |
    RTL                           ;$159260 |

DATA16_CA9261:
    dw $0000,$0000,$0000,$0056    ;$159261 |
    dw $00A0,$0074,$0079,$0079    ;$159269 |
    dw $0060                      ;$159271 |

DATA16_CA9273:
    dw $0000,$0000,$0000          ;$159273 |
    dw $0072,$0082,$0094,$0048    ;$159279 |
    dw $0048,$005C,$0044,$0044    ;$159281 |
    dw $0044,$0060,$0088,$0094    ;$159289 |
    dw $0096,$0096,$00A0,$00A0    ;$159291 |
    dw $00A0,$00A0,$00A0,$00A0    ;$159299 |
    dw $00A0,$0056,$0056,$0056    ;$1592A1 |
    dw $0056,$0056,$0056,$0056    ;$1592A9 |
    dw $00A0,$00A0,$0074,$0074    ;$1592B1 |
    dw $0074,$0074,$0074,$0074    ;$1592B9 |
    dw $0074,$0079,$0079,$0079    ;$1592C1 |
    dw $0079,$0079,$0060,$0060    ;$1592C9 |
    dw $0060,$0060,$0060,$00A8    ;$1592D1 |
    dw $00A8,$00A8,$00A6,$0098    ;$1592D9 |
    dw $0090,$008A,$008A,$005A    ;$1592E1 |
    dw $005A,$005A,$005A,$0048    ;$1592E9 |
    dw $005A,$0048,$0072,$0072    ;$1592F1 |
    dw $0072,$0072,$0072,$0072    ;$1592F9 |
    dw $0072,$0082,$0082,$0094    ;$159301 |
    dw $0094,$0094,$0094,$0094    ;$159309 |
    dw $0094,$0094,$0048,$0048    ;$159311 |
    dw $0048,$0048,$0048,$005C    ;$159319 |
    dw $005C,$005C,$005C,$005C    ;$159321 |

    LDX.B $39                     ;$159329 |
    LDA.W Obj_VAR0,X              ;$15932B |
    CLC                           ;$15932E |
    ADC.W #$6B79                  ;$15932F |
    LDX.W #$00CA                  ;$159332 |
    LDY.W #$8010                  ;$159335 |
    JSL.L WritePal                ;$159338 |
    LDY.B $39                     ;$15933C |
    LDA.W Obj_VAR0,Y              ;$15933E |
    CLC                           ;$159341 |
    ADC.W #$0020                  ;$159342 |
    CMP.W #$00A0                  ;$159345 |
    BMI CODE_15934D               ;$159348 |
    LDA.W #$0000                  ;$15934A |

CODE_15934D:
    STA.W Obj_VAR0,Y              ;$15934D |
    RTL                           ;$159350 |
    db $2E,$00,$C0,$E6,$5F,$CA,$16,$BA;$159351 |
    db $A8,$2A,$00,$00,$00,$2B,$00,$00;$159359 |
    db $00,$40,$FF,$05,$04,$30,$00,$00;$159361 |
    db $FE,$02,$01,$30,$00,$00,$02,$02;$159369 |
    db $02,$30,$00,$00,$FE,$02,$01,$07;$159371 |
    db $2E,$00,$00,$2E,$00,$C0,$E6,$5F;$159379 |
    db $CA,$16,$BA,$A8,$2A,$00,$00,$00;$159381 |
    db $2B,$00,$00,$00,$40,$FF,$05,$02;$159389 |
    db $30,$00,$00,$FF,$02,$01,$30,$00;$159391 |
    db $00,$01,$02,$02,$30,$00,$00,$FF;$159399 |
    db $02,$01,$07,$2E,$00,$00,$24,$C0;$1593A1 |
    db $E6,$5F,$CA,$16,$FB,$A6,$15,$78;$1593A9 |
    db $AB,$33,$61,$00,$14,$52,$E5,$CD;$1593B1 |
    db $90,$00,$FF,$44,$0E,$44,$0F,$44;$1593B9 |
    db $10,$00,$24,$C0,$E6,$5F,$CA,$16;$1593C1 |
    db $FB,$A6,$15,$78,$AB,$33,$61,$00;$1593C9 |
    db $14,$52,$E5,$CD,$80,$00,$FF,$90;$1593D1 |
    db $00,$FF,$42,$08,$42,$0D,$42,$09;$1593D9 |
    db $42,$0A,$42,$0B,$42,$0C,$00,$24;$1593E1 |
    db $C0,$E6,$5F,$CA,$16,$FB,$A6,$15;$1593E9 |
    db $78,$AB,$33,$61,$00,$14,$52,$E5;$1593F1 |
    db $CD,$C0,$11,$94,$CA,$80,$00,$FF;$1593F9 |
    db $90,$00,$FF,$42,$08,$42,$0D,$42;$159401 |
    db $09,$42,$0A,$42,$0B,$42,$0C,$00;$159409 |
    LDA.W #$0010                  ;$159411 |
    JSL.L CallRNG_ModA          ;$159414 |
    LDY.B $39                     ;$159418 |
    CLC                           ;$15941A |
    ADC.W #$0070                  ;$15941B |
    STA.W Obj_XPosition,Y         ;$15941E |
    LDA.W #$0010                  ;$159421 |
    JSL.L CallRNG_ModA          ;$159424 |
    LDY.B $39                     ;$159428 |
    CLC                           ;$15942A |
    ADC.W #$0068                  ;$15942B |
    STA.W Obj_YPosition,Y         ;$15942E |
    RTL                           ;$159431 |
    db $24,$C0,$E6,$5F,$CA,$16,$FB,$A6;$159432 |
    db $15,$78,$AB,$33,$61,$00,$14,$52;$15943A |
    db $E5,$CD,$80,$00,$FE,$90,$00,$FF;$159442 |
    db $4C,$14,$00,$24,$C0,$E6,$5F,$CA;$15944A |
    db $16,$FB,$A6,$15,$78,$AB,$33,$61;$159452 |
    db $00,$14,$52,$E5,$CD,$41,$08,$80;$15945A |
    db $00,$FC,$90,$00,$01,$4A,$14,$80;$159462 |
    db $00,$FF,$90,$00,$FF,$42,$08,$42;$15946A |
    db $0D,$42,$09,$42,$0A,$42,$0B,$42;$159472 |
    db $0C,$00,$24,$C0,$E6,$5F,$CA,$16;$15947A |
    db $FB,$A6,$15,$78,$AB,$33,$61,$00;$159482 |
    db $14,$52,$E5,$CD,$41,$08,$80,$00;$15948A |
    db $FE,$90,$00,$02,$48,$14,$00,$24;$159492 |
    db $C0,$E6,$5F,$CA,$16,$FB,$A6,$15;$15949A |
    db $78,$AB,$33,$61,$00,$14,$52,$E5;$1594A2 |
    db $CD,$41,$08,$80,$00,$04,$90,$80;$1594AA |
    db $FE,$4A,$14,$00,$24,$C0,$E6,$5F;$1594B2 |
    db $CA,$16,$FB,$A6,$15,$78,$AB,$33;$1594BA |
    db $61,$00,$14,$52,$E5,$CD,$41,$08;$1594C2 |
    db $00,$24,$C0,$E6,$5F,$CA,$16,$FB;$1594CA |
    db $A6,$15,$78,$AB,$33,$61,$00,$14;$1594D2 |
    db $52,$E5,$CD,$C0,$65,$9B,$00,$04;$1594DA |
    db $30,$10,$00,$00,$00,$00,$00,$01;$1594E2 |
    db $00,$03,$00,$80,$00,$FF,$90,$00;$1594EA |
    db $FF,$42,$08,$42,$0D,$42,$09,$42;$1594F2 |
    db $0A,$42,$0B,$42,$0C,$00,$A9,$10;$1594FA |
    db $00,$22,$C4,$8A,$00,$A4,$39,$99;$159502 |
    db $86,$69,$A9,$10,$00,$22,$C4,$8A;$15950A |
    db $00,$99,$00,$6A,$6B,$24,$C0,$E6;$159512 |
    db $5F,$CA,$16,$FB,$A6,$15,$78,$AB;$15951A |
    db $33,$61,$00,$14,$52,$E5,$CD,$40;$159522 |
    db $FF,$05,$02,$26,$46,$00,$27,$84;$15952A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159532 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$15953A |
    db $00,$02,$04,$26,$40,$00,$27,$88;$159542 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$15954A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159552 |
    db $00,$02,$04,$26,$38,$00,$27,$90;$15955A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159562 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$15956A |
    db $00,$02,$04,$26,$3C,$00,$27,$7C;$159572 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$15957A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159582 |
    db $00,$02,$04,$26,$30,$00,$27,$94;$15958A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159592 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$15959A |
    db $00,$02,$04,$26,$2A,$00,$27,$80;$1595A2 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1595AA |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1595B2 |
    db $00,$02,$04,$26,$28,$00,$27,$94;$1595BA |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1595C2 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1595CA |
    db $00,$02,$04,$26,$24,$00,$27,$7C;$1595D2 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1595DA |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1595E2 |
    db $00,$02,$04,$26,$18,$00,$27,$90;$1595EA |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1595F2 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1595FA |
    db $00,$02,$04,$26,$20,$00,$27,$98;$159602 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$15960A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159612 |
    db $00,$02,$04,$26,$44,$00,$27,$98;$15961A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159622 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$15962A |
    db $00,$02,$04,$07,$00,$24,$C0,$E6;$159632 |
    db $5F,$CA,$16,$FB,$A6,$15,$78,$AB;$15963A |
    db $33,$61,$00,$14,$52,$E5,$CD,$80;$159642 |
    db $00,$01,$90,$80,$FF,$A0,$04,$00;$15964A |
    db $B0,$FE,$FF,$43,$08,$43,$0D,$4A;$159652 |
    db $09,$4A,$0A,$4A,$0B,$4A,$0C,$00;$15965A |
    db $24,$C0,$E6,$5F,$CA,$16,$FB,$A6;$159662 |
    db $15,$78,$AB,$33,$61,$00,$14,$52;$15966A |
    db $E5,$CD,$40,$FF,$05,$02,$26,$44;$159672 |
    db $00,$27,$68,$00,$C0,$65,$9B,$00;$15967A |
    db $04,$30,$10,$00,$00,$00,$00,$00;$159682 |
    db $01,$00,$0E,$00,$02,$03,$26,$48;$15968A |
    db $00,$27,$58,$00,$C0,$65,$9B,$00;$159692 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$15969A |
    db $01,$00,$0E,$00,$02,$03,$26,$40;$1596A2 |
    db $00,$27,$53,$00,$C0,$65,$9B,$00;$1596AA |
    db $04,$30,$10,$00,$00,$00,$00,$00;$1596B2 |
    db $01,$00,$0E,$00,$02,$03,$26,$50;$1596BA |
    db $00,$27,$4E,$00,$C0,$65,$9B,$00;$1596C2 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$1596CA |
    db $01,$00,$0E,$00,$02,$03,$26,$38;$1596D2 |
    db $00,$27,$48,$00,$C0,$65,$9B,$00;$1596DA |
    db $04,$30,$10,$00,$00,$00,$00,$00;$1596E2 |
    db $01,$00,$0E,$00,$02,$03,$26,$48;$1596EA |
    db $00,$27,$40,$00,$C0,$65,$9B,$00;$1596F2 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$1596FA |
    db $01,$00,$0E,$00,$02,$03,$26,$4C;$159702 |
    db $00,$27,$34,$00,$C0,$65,$9B,$00;$15970A |
    db $04,$30,$10,$00,$00,$00,$00,$00;$159712 |
    db $01,$00,$0E,$00,$02,$03,$26,$44;$15971A |
    db $00,$27,$2C,$00,$C0,$65,$9B,$00;$159722 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$15972A |
    db $01,$00,$0E,$00,$02,$03,$26,$4C;$159732 |
    db $00,$27,$20,$00,$C0,$65,$9B,$00;$15973A |
    db $04,$30,$10,$00,$00,$00,$00,$00;$159742 |
    db $01,$00,$0E,$00,$02,$03,$07,$00;$15974A |
    db $24,$C0,$E6,$5F,$CA,$16,$FB,$A6;$159752 |
    db $15,$78,$AB,$33,$61,$00,$14,$52;$15975A |
    db $E5,$CD,$40,$FF,$26,$74,$00,$27;$159762 |
    db $9C,$00,$05,$04,$C0,$65,$9B,$00;$15976A |
    db $04,$30,$10,$00,$00,$00,$00,$00;$159772 |
    db $01,$00,$11,$00,$02,$04,$07,$05;$15977A |
    db $08,$C0,$65,$9B,$00,$04,$30,$10;$159782 |
    db $00,$00,$00,$00,$00,$01,$00,$03;$15978A |
    db $00,$26,$78,$00,$27,$AC,$00,$C0;$159792 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$15979A |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$1597A2 |
    db $03,$26,$74,$00,$27,$B0,$00,$C0;$1597AA |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$1597B2 |
    db $00,$00,$00,$01,$00,$12,$00,$02;$1597BA |
    db $03,$26,$80,$00,$27,$94,$00,$C0;$1597C2 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$1597CA |
    db $00,$00,$00,$01,$00,$11,$00,$C0;$1597D2 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$1597DA |
    db $00,$00,$00,$01,$00,$03,$00,$26;$1597E2 |
    db $70,$00,$27,$AC,$00,$C0,$65,$9B;$1597EA |
    db $00,$04,$30,$10,$00,$00,$00,$00;$1597F2 |
    db $00,$01,$00,$12,$00,$02,$03,$26;$1597FA |
    db $68,$00,$27,$A0,$00,$C0,$65,$9B;$159802 |
    db $00,$04,$30,$10,$00,$00,$00,$00;$15980A |
    db $00,$01,$00,$12,$00,$02,$03,$26;$159812 |
    db $72,$00,$27,$98,$00,$C0,$65,$9B;$15981A |
    db $00,$04,$30,$10,$00,$00,$00,$00;$159822 |
    db $00,$01,$00,$0E,$00,$02,$03,$C0;$15982A |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159832 |
    db $00,$00,$00,$01,$00,$03,$00,$26;$15983A |
    db $74,$00,$27,$AC,$00,$C0,$65,$9B;$159842 |
    db $00,$04,$30,$10,$00,$00,$00,$00;$15984A |
    db $00,$01,$00,$12,$00,$02,$03,$26;$159852 |
    db $78,$00,$27,$90,$00,$C0,$65,$9B;$15985A |
    db $00,$04,$30,$10,$00,$00,$00,$00;$159862 |
    db $00,$01,$00,$11,$00,$C0,$65,$9B;$15986A |
    db $00,$04,$30,$10,$00,$00,$00,$00;$159872 |
    db $00,$01,$00,$12,$00,$02,$03,$26;$15987A |
    db $78,$00,$27,$B0,$00,$C0,$65,$9B;$159882 |
    db $00,$04,$30,$10,$00,$00,$00,$00;$15988A |
    db $00,$01,$00,$12,$00,$02,$03,$26;$159892 |
    db $82,$00,$27,$AC,$00,$C0,$65,$9B;$15989A |
    db $00,$04,$30,$10,$00,$00,$00,$00;$1598A2 |
    db $00,$01,$00,$0E,$00,$02,$03,$26;$1598AA |
    db $6C,$00,$27,$AC,$00,$C0,$65,$9B;$1598B2 |
    db $00,$04,$30,$10,$00,$00,$00,$00;$1598BA |
    db $00,$01,$00,$12,$00,$02,$03,$07;$1598C2 |
    db $00,$24,$C0,$E6,$5F,$CA,$16,$FB;$1598CA |
    db $A6,$15,$78,$AB,$33,$61,$00,$14;$1598D2 |
    db $52,$E5,$CD,$80,$00,$01,$90,$00;$1598DA |
    db $03,$A0,$04,$00,$B0,$E8,$FF,$43;$1598E2 |
    db $1D,$43,$1E,$4A,$1F,$B0,$FC,$FF;$1598EA |
    db $4A,$20,$4A,$21,$4A,$22,$00,$24;$1598F2 |
    db $C0,$E6,$5F,$CA,$16,$FB,$A6,$15;$1598FA |
    db $78,$AB,$33,$61,$00,$14,$52,$E5;$159902 |
    db $CD,$80,$00,$01,$90,$00,$01,$A0;$15990A |
    db $04,$00,$B0,$E8,$FF,$43,$1D,$43;$159912 |
    db $1E,$4A,$1F,$B0,$FC,$FF,$4A,$20;$15991A |
    db $4A,$21,$4A,$22,$00,$24,$C0,$E6;$159922 |
    db $5F,$CA,$16,$FB,$A6,$15,$78,$AB;$15992A |
    db $33,$61,$00,$14,$52,$E5,$CD,$40;$159932 |
    db $FF,$05,$03,$26,$77,$00,$27,$48;$15993A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159942 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$15994A |
    db $00,$02,$06,$26,$7B,$00,$27,$4C;$159952 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$15995A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159962 |
    db $00,$02,$06,$26,$77,$00,$27,$50;$15996A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159972 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$15997A |
    db $00,$07,$02,$1E,$C0,$65,$9B,$00;$159982 |
    db $04,$30,$10,$00,$00,$00,$00,$00;$15998A |
    db $01,$00,$14,$00,$00,$24,$C0,$E6;$159992 |
    db $5F,$CA,$16,$FB,$A6,$15,$78,$AB;$15999A |
    db $33,$61,$00,$14,$52,$E5,$CD,$40;$1599A2 |
    db $FF,$05,$02,$C0,$65,$9B,$00,$04;$1599AA |
    db $30,$10,$00,$00,$00,$00,$00,$01;$1599B2 |
    db $00,$03,$00,$26,$30,$00,$27,$90;$1599BA |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1599C2 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1599CA |
    db $00,$02,$03,$26,$B0,$00,$27,$6D;$1599D2 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1599DA |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1599E2 |
    db $00,$02,$03,$26,$70,$00,$27,$50;$1599EA |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$1599F2 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$1599FA |
    db $00,$02,$03,$26,$A8,$00,$27,$A8;$159A02 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159A0A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159A12 |
    db $00,$02,$03,$C0,$65,$9B,$00,$04;$159A1A |
    db $30,$10,$00,$00,$00,$00,$00,$01;$159A22 |
    db $00,$03,$00,$26,$58,$00,$27,$98;$159A2A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159A32 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159A3A |
    db $00,$02,$03,$26,$80,$00,$27,$60;$159A42 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159A4A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159A52 |
    db $00,$02,$03,$26,$58,$00,$27,$40;$159A5A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159A62 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159A6A |
    db $00,$02,$03,$26,$88,$00,$27,$8D;$159A72 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159A7A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159A82 |
    db $00,$02,$03,$C0,$65,$9B,$00,$04;$159A8A |
    db $30,$10,$00,$00,$00,$00,$00,$01;$159A92 |
    db $00,$03,$00,$26,$3C,$00,$27,$A8;$159A9A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159AA2 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159AAA |
    db $00,$02,$03,$26,$60,$00,$27,$68;$159AB2 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159ABA |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159AC2 |
    db $00,$02,$03,$26,$64,$00,$27,$80;$159ACA |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159AD2 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159ADA |
    db $00,$02,$03,$26,$A0,$00,$27,$78;$159AE2 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159AEA |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159AF2 |
    db $00,$02,$03,$C0,$65,$9B,$00,$04;$159AFA |
    db $30,$10,$00,$00,$00,$00,$00,$01;$159B02 |
    db $00,$03,$00,$26,$20,$00,$27,$A8;$159B0A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159B12 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159B1A |
    db $00,$02,$03,$26,$60,$00,$27,$6D;$159B22 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159B2A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159B32 |
    db $00,$02,$03,$26,$A0,$00,$27,$40;$159B3A |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159B42 |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159B4A |
    db $00,$02,$03,$26,$88,$00,$27,$8D;$159B52 |
    db $00,$C0,$65,$9B,$00,$04,$30,$10;$159B5A |
    db $00,$00,$00,$00,$00,$01,$00,$0E;$159B62 |
    db $00,$02,$03,$07,$00,$C0,$6C,$92;$159B6A |
    db $00,$02,$01,$24,$C0,$E6,$5F,$CA;$159B72 |
    db $16,$FB,$A6,$15,$78,$AB,$33,$61;$159B7A |
    db $00,$14,$52,$E5,$CD,$40,$FF,$05;$159B82 |
    db $02,$26,$88,$00,$27,$9D,$00,$C0;$159B8A |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159B92 |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159B9A |
    db $03,$26,$A0,$00,$27,$A0,$00,$C0;$159BA2 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159BAA |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159BB2 |
    db $03,$26,$98,$00,$27,$BC,$00,$C0;$159BBA |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159BC2 |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159BCA |
    db $03,$26,$B8,$00,$27,$84,$00,$C0;$159BD2 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159BDA |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159BE2 |
    db $03,$26,$A8,$00,$27,$90,$00,$C0;$159BEA |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159BF2 |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159BFA |
    db $03,$26,$A8,$00,$27,$80,$00,$C0;$159C02 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159C0A |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159C12 |
    db $03,$26,$90,$00,$27,$B8,$00,$C0;$159C1A |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159C22 |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159C2A |
    db $03,$26,$A0,$00,$27,$80,$00,$C0;$159C32 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159C3A |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159C42 |
    db $03,$26,$C8,$00,$27,$78,$00,$C0;$159C4A |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159C52 |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159C5A |
    db $03,$26,$B0,$00,$27,$C0,$00,$C0;$159C62 |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159C6A |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159C72 |
    db $03,$26,$DC,$00,$27,$88,$00,$C0;$159C7A |
    db $65,$9B,$00,$04,$30,$10,$00,$00;$159C82 |
    db $00,$00,$00,$01,$00,$0E,$00,$02;$159C8A |
    db $03,$07,$00,$83,$00,$14,$30,$2E;$159C92 |
    db $E1,$00,$76,$83,$60,$16,$B3,$52;$159C9A |
    db $E2,$00,$60,$83,$40,$33,$71,$26;$159CA2 |
    db $DA,$00,$00,$89,$00,$04,$41,$6F;$159CAA |
    db $E8,$00,$48,$0F,$00,$04,$00,$24;$159CB2 |
    db $7E,$00,$48,$FF,$83,$00,$14,$30;$159CBA |
    db $2E,$E1,$00,$76,$83,$60,$16,$B3;$159CC2 |
    db $52,$E2,$00,$60,$83,$00,$24,$35;$159CCA |
    db $70,$DC,$00,$00,$89,$00,$04,$95;$159CD2 |
    db $A6,$E9,$00,$40,$0F,$00,$04,$00;$159CDA |
    db $24,$7E,$00,$40,$89,$00,$10,$5C;$159CE2 |
    db $86,$E8,$00,$50,$0F,$00,$10,$00;$159CEA |
    db $30,$7E,$00,$50,$FF,$03,$A0,$06;$159CF2 |
    db $C0,$2F,$7E,$E0,$07,$FF,$03,$00;$159CFA |
    db $09,$00,$3B,$7E,$80,$0D,$FF,$03;$159D02 |
    db $A0,$04,$60,$36,$7E,$30,$0B,$FF;$159D0A |
    db $03,$00,$09,$C0,$26,$7E,$60,$03;$159D12 |
    db $89,$00,$04,$95,$A6,$E9,$00,$48;$159D1A |
    db $0F,$00,$04,$00,$24,$7E,$00,$48;$159D22 |
    db $FF,$03,$02,$00,$FD,$FF,$E2,$8B;$159D2A |
    db $49,$03,$02,$00,$FD,$FF,$E1,$CA;$159D32 |
    db $49,$03,$C0,$06,$00,$20,$7E,$00;$159D3A |
    db $00,$FF,$C0,$BE,$84,$00,$16,$F1;$159D42 |
    db $A6,$04,$14,$FF,$FF,$FF,$40,$FF;$159D4A |
    db $C0,$94,$9C,$00,$09,$C0,$BB,$9C;$159D52 |
    db $00,$00,$00,$60,$00,$C0,$9A,$9C;$159D5A |
    db $00,$00,$01,$00,$00,$00,$48,$C0;$159D62 |
    db $9A,$9C,$00,$01,$00,$00,$00,$00;$159D6A |
    db $50,$C0,$CE,$9C,$00,$13,$C0,$A0;$159D72 |
    db $9E,$CA,$C0,$85,$9F,$00,$00,$C0;$159D7A |
    db $EA,$9F,$00,$99,$BE,$E9,$00,$00;$159D82 |
    db $02,$C0,$6C,$9C,$00,$D9,$AB,$CA;$159D8A |
    db $F0,$1D,$0A,$CE,$5F,$C0,$BC,$9B;$159D92 |
    db $00,$00,$00,$00,$00,$02,$10,$00;$159D9A |
    db $80,$00,$80,$00,$02,$00,$00,$00;$159DA2 |
    db $C0,$BC,$9B,$00,$02,$00,$00,$00;$159DAA |
    db $04,$10,$00,$00,$00,$00,$00,$02;$159DB2 |
    db $00,$00,$00,$C0,$BC,$9B,$00,$03;$159DBA |
    db $00,$00,$00,$06,$10,$00,$00,$00;$159DC2 |
    db $00,$00,$02,$00,$00,$00,$C0,$BC;$159DCA |
    db $9B,$00,$04,$00,$00,$00,$08,$10;$159DD2 |
    db $00,$00,$00,$00,$00,$02,$00,$00;$159DDA |
    db $00,$C0,$BC,$9B,$00,$05,$00,$00;$159DE2 |
    db $00,$0A,$10,$00,$30,$00,$D0,$00;$159DEA |
    db $02,$00,$00,$00,$C0,$BC,$9B,$00;$159DF2 |
    db $06,$00,$00,$00,$0C,$10,$00,$00;$159DFA |
    db $00,$00,$00,$02,$00,$00,$00,$C0;$159E02 |
    db $6A,$9E,$CA,$C0,$D5,$A2,$00,$3E;$159E0A |
    db $6F,$01,$00,$11,$2B,$9E,$C0,$BC;$159E12 |
    db $9B,$00,$07,$00,$00,$00,$0E,$10;$159E1A |
    db $00,$00,$00,$00,$00,$02,$00,$00;$159E22 |
    db $00,$1B,$73,$7A,$FF,$FF,$05,$10;$159E2A |
    db $C2,$CD,$9F,$00,$07,$C1,$C9,$A2;$159E32 |
    db $00,$73,$7A,$00,$00,$11,$37,$9E;$159E3A |
    db $05,$10,$C2,$DD,$9F,$00,$07,$C0;$159E42 |
    db $EF,$9B,$00,$C0,$BE,$84,$00,$C0;$159E4A |
    db $D5,$A2,$00,$B8,$6F,$01,$00,$11;$159E52 |
    db $60,$9E,$0D,$60,$C0,$CA,$C0,$93;$159E5A |
    db $9E,$CA,$1B,$92,$73,$01,$00,$01;$159E62 |
    LDY.B $39                     ;$159E6A |
    LDA.W $7A6B                   ;$159E6C |
    AND.W #$007F                  ;$159E6F |
    CMP.W #$007F                  ;$159E72 |
    BNE CODE_159E7D               ;$159E75 |
    LDA.W #$0001                  ;$159E77 |
    STA.W Obj_VAR4,Y              ;$159E7A |

CODE_159E7D:
    RTL                           ;$159E7D |
    LDA.W #$0001                  ;$159E7E |
    STA.W Shooting_Ability        ;$159E81 |
    LDA.W $7AC1                   ;$159E84 |
    BNE CODE_159E92               ;$159E87 |
    LDA.W #$FFFF                  ;$159E89 |
    STA.W $7495                   ;$159E8C |
    STA.W Helper_Ability          ;$159E8F |

CODE_159E92:
    RTL                           ;$159E92 |
    LDA.W #$0005                  ;$159E93 |
    LDX.W MWW_Current_Planet      ;$159E96 |
    LDY.W #$0000                  ;$159E99 |
    JML.L CODE_FL_00DA97          ;$159E9C |
    LDA.W #$000A                  ;$159EA0 |
    LDX.W #$0000                  ;$159EA3 |
    LDY.W #$0000                  ;$159EA6 |
    JML.L CODE_FL_01A841          ;$159EA9 |
    db $24,$16,$FB,$A6,$15,$78,$AB,$C0;$159EAD |
    db $B1,$A1,$CA,$14,$9C,$E5,$CD,$33;$159EB5 |
    db $60,$00,$03,$C9,$9E,$CA,$40,$00;$159EBD |
    db $01,$04,$24,$01            ;$159EC5 |
    LDX.B $39                     ;$159EC9 |
    JSL.L CODE_FL_CAA0AA          ;$159ECB |
    JSL.L CODE_FL_CAA0DD          ;$159ECF |
    LDA.W P1_Hold                 ;$159ED3 |
    XBA                           ;$159ED6 |
    AND.W #$000F                  ;$159ED7 |
    CMP.W #$000B                  ;$159EDA |

CODE_159EDD:
    BCS CODE_159EDD               ;$159EDD |
    ASL A                         ;$159EDF |
    TAX                           ;$159EE0 |
    JMP.W (PTR16_159EE4,X)        ;$159EE1 |
PTR16_159EE4:
    dw CODE_159EFA                ;$159EE4 |
    dw CODE_159F0B                ;$159EE6 |
    dw CODE_159F34                ;$159EE8 |
    dw CODE_159EFA                ;$159EEA |
    dw CODE_159F5D                ;$159EEC |
    dw CODE_159F86                ;$159EEE |
    dw CODE_159FBE                ;$159EF0 |
    dw CODE_159EFA                ;$159EF2 |
    dw CODE_159FF9                ;$159EF4 |
    dw CODE_15A022                ;$159EF6 |
    dw CODE_15A05D                ;$159EF8 |

CODE_159EFA:
    LDX.B $39                     ;$159EFA |
    JSL.L CODE_FL_CAA161          ;$159EFC |
    JSL.L CODE_FL_CAA185          ;$159F00 |
    JSL.L CODE_FL_CAA126          ;$159F04 |
    JMP.W CODE_JP_15A095          ;$159F08 |

CODE_159F0B:
    LDX.B $39                     ;$159F0B |
    LDA.W #$4000                  ;$159F0D |
    STA.W Obj_VAR1,X              ;$159F10 |
    LDA.W #$0008                  ;$159F13 |
    STA.W $6C62,X                 ;$159F16 |
    LDA.W $6B6E,X                 ;$159F19 |
    BMI CODE_159F29               ;$159F1C |
    CMP.W #$0100                  ;$159F1E |
    BMI CODE_159F29               ;$159F21 |
    LDA.W #$0100                  ;$159F23 |
    STA.W $6B6E,X                 ;$159F26 |

CODE_159F29:
    JSL.L CODE_FL_CAA185          ;$159F29 |
    JSL.L CODE_FL_CAA126          ;$159F2D |
    JMP.W CODE_JP_15A095          ;$159F31 |

CODE_159F34:
    LDX.B $39                     ;$159F34 |
    LDA.W #$C000                  ;$159F36 |
    STA.W Obj_VAR1,X              ;$159F39 |
    LDA.W #$FFF8                  ;$159F3C |
    STA.W $6C62,X                 ;$159F3F |
    LDA.W $6B6E,X                 ;$159F42 |
    BPL CODE_159F52               ;$159F45 |
    CMP.W #$FF00                  ;$159F47 |
    BPL CODE_159F52               ;$159F4A |
    LDA.W #$FF00                  ;$159F4C |
    STA.W $6B6E,X                 ;$159F4F |

CODE_159F52:
    JSL.L CODE_FL_CAA185          ;$159F52 |
    JSL.L CODE_FL_CAA126          ;$159F56 |
    JMP.W CODE_JP_15A095          ;$159F5A |

CODE_159F5D:
    LDX.B $39                     ;$159F5D |
    LDA.W #$8000                  ;$159F5F |
    STA.W Obj_VAR1,X              ;$159F62 |
    LDA.W #$0008                  ;$159F65 |
    STA.W $6CDC,X                 ;$159F68 |
    LDA.W $6BE8,X                 ;$159F6B |
    BMI CODE_159F7B               ;$159F6E |
    CMP.W #$0100                  ;$159F70 |
    BMI CODE_159F7B               ;$159F73 |
    LDA.W #$0100                  ;$159F75 |
    STA.W $6BE8,X                 ;$159F78 |

CODE_159F7B:
    JSL.L CODE_FL_CAA161          ;$159F7B |
    JSL.L CODE_FL_CAA126          ;$159F7F |
    JMP.W CODE_JP_15A095          ;$159F83 |

CODE_159F86:
    LDX.B $39                     ;$159F86 |
    LDA.W #$6000                  ;$159F88 |
    STA.W Obj_VAR1,X              ;$159F8B |
    LDA.W #$0008                  ;$159F8E |
    STA.W $6C62,X                 ;$159F91 |
    STA.W $6CDC,X                 ;$159F94 |
    LDA.W $6B6E,X                 ;$159F97 |
    BMI CODE_159FA7               ;$159F9A |
    CMP.W #$00B0                  ;$159F9C |
    BMI CODE_159FA7               ;$159F9F |
    LDA.W #$00B0                  ;$159FA1 |
    STA.W $6B6E,X                 ;$159FA4 |

CODE_159FA7:
    LDA.W $6BE8,X                 ;$159FA7 |
    BMI CODE_159FB7               ;$159FAA |
    CMP.W #$00B0                  ;$159FAC |
    BMI CODE_159FB7               ;$159FAF |
    LDA.W #$00B0                  ;$159FB1 |
    STA.W $6BE8,X                 ;$159FB4 |

CODE_159FB7:
    JSL.L CODE_FL_CAA126          ;$159FB7 |
    JMP.W CODE_JP_15A095          ;$159FBB |

CODE_159FBE:
    LDX.B $39                     ;$159FBE |
    LDA.W #$A000                  ;$159FC0 |
    STA.W Obj_VAR1,X              ;$159FC3 |
    LDA.W #$FFF8                  ;$159FC6 |
    STA.W $6C62,X                 ;$159FC9 |
    LDA.W #$0008                  ;$159FCC |
    STA.W $6CDC,X                 ;$159FCF |
    LDA.W $6B6E,X                 ;$159FD2 |
    BPL CODE_159FE2               ;$159FD5 |
    CMP.W #$FF50                  ;$159FD7 |
    BPL CODE_159FE2               ;$159FDA |
    LDA.W #$FF50                  ;$159FDC |
    STA.W $6B6E,X                 ;$159FDF |

CODE_159FE2:
    LDA.W $6BE8,X                 ;$159FE2 |
    BMI CODE_159FF2               ;$159FE5 |
    CMP.W #$00B0                  ;$159FE7 |
    BMI CODE_159FF2               ;$159FEA |
    LDA.W #$00B0                  ;$159FEC |
    STA.W $6BE8,X                 ;$159FEF |

CODE_159FF2:
    JSL.L CODE_FL_CAA126          ;$159FF2 |
    JMP.W CODE_JP_15A095          ;$159FF6 |

CODE_159FF9:
    LDX.B $39                     ;$159FF9 |
    LDA.W #$0000                  ;$159FFB |
    STA.W Obj_VAR1,X              ;$159FFE |
    LDA.W #$FFF8                  ;$15A001 |
    STA.W $6CDC,X                 ;$15A004 |
    LDA.W $6BE8,X                 ;$15A007 |
    BPL CODE_15A017               ;$15A00A |
    CMP.W #$FF00                  ;$15A00C |
    BPL CODE_15A017               ;$15A00F |
    LDA.W #$FF00                  ;$15A011 |
    STA.W $6BE8,X                 ;$15A014 |

CODE_15A017:
    JSL.L CODE_FL_CAA161          ;$15A017 |
    JSL.L CODE_FL_CAA126          ;$15A01B |
    JMP.W CODE_JP_15A095          ;$15A01F |

CODE_15A022:
    LDX.B $39                     ;$15A022 |
    LDA.W #$2000                  ;$15A024 |
    STA.W Obj_VAR1,X              ;$15A027 |
    LDA.W #$0008                  ;$15A02A |
    STA.W $6C62,X                 ;$15A02D |
    LDA.W #$FFF8                  ;$15A030 |
    STA.W $6CDC,X                 ;$15A033 |
    LDA.W $6B6E,X                 ;$15A036 |
    BMI CODE_15A046               ;$15A039 |
    CMP.W #$00B0                  ;$15A03B |
    BMI CODE_15A046               ;$15A03E |
    LDA.W #$00B0                  ;$15A040 |
    STA.W $6B6E,X                 ;$15A043 |

CODE_15A046:
    LDA.W $6BE8,X                 ;$15A046 |
    BPL CODE_15A056               ;$15A049 |
    CMP.W #$FF50                  ;$15A04B |
    BPL CODE_15A056               ;$15A04E |
    LDA.W #$FF50                  ;$15A050 |
    STA.W $6BE8,X                 ;$15A053 |

CODE_15A056:
    JSL.L CODE_FL_CAA126          ;$15A056 |
    JMP.W CODE_JP_15A095          ;$15A05A |

CODE_15A05D:
    LDX.B $39                     ;$15A05D |
    LDA.W #$E000                  ;$15A05F |
    STA.W Obj_VAR1,X              ;$15A062 |
    LDA.W #$FFF8                  ;$15A065 |
    STA.W $6C62,X                 ;$15A068 |
    STA.W $6CDC,X                 ;$15A06B |
    LDA.W $6B6E,X                 ;$15A06E |
    BPL CODE_15A07E               ;$15A071 |
    CMP.W #$FF50                  ;$15A073 |
    BPL CODE_15A07E               ;$15A076 |
    LDA.W #$FF50                  ;$15A078 |
    STA.W $6B6E,X                 ;$15A07B |

CODE_15A07E:
    LDA.W $6BE8,X                 ;$15A07E |
    BPL CODE_15A08E               ;$15A081 |
    CMP.W #$FF50                  ;$15A083 |
    BPL CODE_15A08E               ;$15A086 |
    LDA.W #$FF50                  ;$15A088 |
    STA.W $6BE8,X                 ;$15A08B |

CODE_15A08E:
    JSL.L CODE_FL_CAA126          ;$15A08E |
    JMP.W CODE_JP_15A095          ;$15A092 |

CODE_JP_15A095:
    LDX.B $39                     ;$15A095 |
    LDA.W Obj_VAR4,X              ;$15A097 |
    INC A                         ;$15A09A |
    AND.W #$0007                  ;$15A09B |
    BNE CODE_15A0A4               ;$15A09E |
    JSL.L CODE_FL_CAA1C7          ;$15A0A0 |

CODE_15A0A4:
    LDX.B $39                     ;$15A0A4 |
    STA.W Obj_VAR4,X              ;$15A0A6 |
    RTL                           ;$15A0A9 |
    LDA.W Obj_XPosition,X         ;$15A0AA |
    SEC                           ;$15A0AD |
    SBC.W #$0080                  ;$15A0AE |
    BPL CODE_15A0B8               ;$15A0B1 |
    LDA.W #$0000                  ;$15A0B3 |
    BRA CODE_15A0C0               ;$15A0B6 |

CODE_15A0B8:
    CMP.W #$0080                  ;$15A0B8 |
    BMI CODE_15A0C0               ;$15A0BB |
    LDA.W #$0080                  ;$15A0BD |

CODE_15A0C0:
    STA.W $735E                   ;$15A0C0 |
    LDA.W Obj_YPosition,X         ;$15A0C3 |
    SEC                           ;$15A0C6 |
    SBC.W #$0070                  ;$15A0C7 |
    BPL CODE_15A0D1               ;$15A0CA |
    LDA.W #$0000                  ;$15A0CC |
    BRA CODE_15A0D9               ;$15A0CF |

CODE_15A0D1:
    CMP.W #$0080                  ;$15A0D1 |
    BMI CODE_15A0D9               ;$15A0D4 |
    LDA.W #$0080                  ;$15A0D6 |

CODE_15A0D9:
    STA.W $7360                   ;$15A0D9 |
    RTL                           ;$15A0DC |
    LDA.W Obj_XPosition,X         ;$15A0DD |
    CMP.W #$0170                  ;$15A0E0 |
    BMI CODE_15A0F0               ;$15A0E3 |
    STZ.W $6B6E,X                 ;$15A0E5 |
    STZ.W $6C62,X                 ;$15A0E8 |
    LDA.W #$0170                  ;$15A0EB |
    BRA CODE_15A0FE               ;$15A0EE |


CODE_15A0F0:
    CMP.W #$0010                  ;$15A0F0 |
    BPL CODE_15A0FE               ;$15A0F3 |
    STZ.W $6B6E,X                 ;$15A0F5 |
    STZ.W $6C62,X                 ;$15A0F8 |
    LDA.W #$0010                  ;$15A0FB |

CODE_15A0FE:
    STA.W Obj_XPosition,X         ;$15A0FE |
    LDA.W Obj_YPosition,X         ;$15A101 |
    CMP.W #$0150                  ;$15A104 |
    BMI CODE_15A114               ;$15A107 |
    STZ.W $6BE8,X                 ;$15A109 |
    STZ.W $6CDC,X                 ;$15A10C |
    LDA.W #$0150                  ;$15A10F |
    BRA CODE_15A122               ;$15A112 |


CODE_15A114:
    CMP.W #$0010                  ;$15A114 |
    BPL CODE_15A122               ;$15A117 |
    STZ.W $6BE8,X                 ;$15A119 |
    STZ.W $6CDC,X                 ;$15A11C |
    LDA.W #$0010                  ;$15A11F |

CODE_15A122:
    STA.W Obj_YPosition,X         ;$15A122 |
    RTL                           ;$15A125 |
    LDA.W Obj_XPosition,X         ;$15A126 |
    SEC                           ;$15A129 |
    SBC.W #$0080                  ;$15A12A |
    BPL CODE_15A134               ;$15A12D |
    LDA.W #$0000                  ;$15A12F |
    BRA CODE_15A13C               ;$15A132 |

CODE_15A134:
    CMP.W #$0080                  ;$15A134 |
    BMI CODE_15A13C               ;$15A137 |
    LDA.W #$0080                  ;$15A139 |

CODE_15A13C:
    EOR.W #$FFFF                  ;$15A13C |
    INC A                         ;$15A13F |
    STA.W $305B                   ;$15A140 |
    LDA.W Obj_YPosition,X         ;$15A143 |
    SEC                           ;$15A146 |
    SBC.W #$0070                  ;$15A147 |
    BPL CODE_15A151               ;$15A14A |
    LDA.W #$0000                  ;$15A14C |
    BRA CODE_15A159               ;$15A14F |

CODE_15A151:
    CMP.W #$0080                  ;$15A151 |
    BMI CODE_15A159               ;$15A154 |
    LDA.W #$0080                  ;$15A156 |

CODE_15A159:
    EOR.W #$FFFF                  ;$15A159 |
    INC A                         ;$15A15C |
    STA.W $305D                   ;$15A15D |
    RTL                           ;$15A160 |
    LDA.W $6B6E,X                 ;$15A161 |
    BEQ CODE_15A17D               ;$15A164 |
    BMI CODE_15A172               ;$15A166 |
    LDA.W Obj_VAR1,X              ;$15A168 |
    BMI CODE_15A17E               ;$15A16B |
    LDA.W #$FFFA                  ;$15A16D |
    BRA CODE_15A17A               ;$15A170 |

CODE_15A172:
    LDA.W Obj_VAR1,X              ;$15A172 |
    BPL CODE_15A17E               ;$15A175 |
    LDA.W #$0006                  ;$15A177 |

CODE_15A17A:
    STA.W $6C62,X                 ;$15A17A |

CODE_15A17D:
    RTL                           ;$15A17D |

CODE_15A17E:
    STZ.W $6B6E,X                 ;$15A17E |
    STZ.W $6C62,X                 ;$15A181 |
    RTL                           ;$15A184 |
    LDA.W $6BE8,X                 ;$15A185 |
    BEQ CODE_15A1A9               ;$15A188 |
    BMI CODE_15A19A               ;$15A18A |
    LDA.W Obj_VAR1,X              ;$15A18C |
    CLC                           ;$15A18F |
    ADC.W #$8000                  ;$15A190 |
    BMI CODE_15A1AA               ;$15A193 |
    LDA.W #$FFFA                  ;$15A195 |
    BRA CODE_15A1A6               ;$15A198 |

CODE_15A19A:
    LDA.W Obj_VAR1,X              ;$15A19A |
    CLC                           ;$15A19D |
    ADC.W #$8000                  ;$15A19E |
    BPL CODE_15A1AA               ;$15A1A1 |
    LDA.W #$0006                  ;$15A1A3 |

CODE_15A1A6:
    STA.W $6CDC,X                 ;$15A1A6 |

CODE_15A1A9:
    RTL                           ;$15A1A9 |

CODE_15A1AA:
    STZ.W $6BE8,X                 ;$15A1AA |
    STZ.W $6CDC,X                 ;$15A1AD |
    RTL                           ;$15A1B0 |
    LDY.B $39                     ;$15A1B1 |
    LDA.W MWW_Current_Planet      ;$15A1B3 |
    ASL A                         ;$15A1B6 |
    TAX                           ;$15A1B7 |
    LDA.L DATA8_CAA73C,X          ;$15A1B8 |
    STA.W Obj_XPosition,Y         ;$15A1BC |
    LDA.L DATA8_CAA750,X          ;$15A1BF |
    STA.W Obj_YPosition,Y         ;$15A1C3 |
    RTL                           ;$15A1C6 |
    PHY                           ;$15A1C7 |
    PHX                           ;$15A1C8 |
    PHA                           ;$15A1C9 |
    LDY.B $39                     ;$15A1CA |
    LDA.W Obj_XPosition,Y         ;$15A1CC |
    STA.B IdentifySNES            ;$15A1CF |
    LDA.W Obj_YPosition,Y         ;$15A1D1 |
    STA.B DSP_P                   ;$15A1D4 |
    LDA.W #$001C                  ;$15A1D6 |
    STA.W ObjSlotMinimum          ;$15A1D9 |
    LDA.W #$0026                  ;$15A1DC |
    STA.W ObjSlotMaximum          ;$15A1DF |
    LDA.W #$0002                  ;$15A1E2 |
    STA.W ObjVar0_Temp            ;$15A1E5 |
    STZ.W ObjVar1_Temp            ;$15A1E8 |
    STZ.W ObjVar2_Temp            ;$15A1EB |
    LDA.W #$0001                  ;$15A1EE |
    STA.W ObjVar3_Temp            ;$15A1F1 |
    STZ.W ObjVar4_Temp            ;$15A1F4 |
    LDY.B DSP_P                   ;$15A1F7 |
    LDX.B IdentifySNES            ;$15A1F9 |
    LDA.W #$0010                  ;$15A1FB |
    JSL.L CreateNewObject         ;$15A1FE |
    PLA                           ;$15A202 |
    PLX                           ;$15A203 |
    PLY                           ;$15A204 |
    RTL                           ;$15A205 |
    db $16,$F1,$A6,$14,$9C,$E5,$CD,$33;$15A206 |
    db $5F,$00,$48,$01,$33,$5E,$00,$48;$15A20E |
    db $02,$33,$5D,$00,$48,$03,$33,$5C;$15A216 |
    db $00,$48,$04,$00,$14,$9C,$E5,$CD;$15A21E |
    db $C0,$E6,$5F,$CA,$03,$5A,$A3,$CA;$15A226 |
    db $33,$58,$00,$26,$40,$00,$27,$A0;$15A22E |
    db $00,$05,$03,$16,$FB,$A6,$80,$00;$15A236 |
    db $00,$90,$C0,$FD,$A0,$18,$00,$B0;$15A23E |
    db $18,$00,$40,$07,$02,$18,$A0,$E8;$15A246 |
    db $FF,$02,$18,$B0,$E8,$FF,$02,$18;$15A24E |
    db $A0,$18,$00,$02,$18,$07,$80,$00;$15A256 |
    db $00,$90,$00,$00,$A0,$00,$00,$B0;$15A25E |
    db $00,$00,$02,$20,$05,$03,$80,$00;$15A266 |
    db $00,$90,$00,$F8,$A0,$00,$01,$B0;$15A26E |
    db $00,$01,$02,$08,$A0,$00,$FF,$02;$15A276 |
    db $08,$B0,$00,$FF,$02,$08,$A0,$00;$15A27E |
    db $01,$02,$08,$07,$80,$00,$FD,$90;$15A286 |
    db $00,$FF,$A0,$18,$00,$B0,$08,$00;$15A28E |
    db $02,$20,$80,$00,$00,$90,$00,$00;$15A296 |
    db $A0,$00,$00,$B0,$00,$00,$02,$10;$15A29E |
    db $80,$00,$07,$90,$00,$02,$02,$08;$15A2A6 |
    db $0A,$39,$A3,$80,$00,$FA,$90,$00;$15A2AE |
    db $F8,$02,$08,$80,$00,$04,$90,$00;$15A2B6 |
    db $02,$02,$08,$0A,$39,$A3,$80,$00;$15A2BE |
    db $03,$90,$00,$0C,$02,$08,$80,$00;$15A2C6 |
    db $FC,$90,$00,$FE,$02,$08,$0A,$39;$15A2CE |
    db $A3,$80,$00,$FF,$90,$00,$FC,$A0;$15A2D6 |
    db $08,$00,$B0,$20,$00,$02,$20,$80;$15A2DE |
    db $00,$04,$90,$00,$05,$02,$08,$80;$15A2E6 |
    db $00,$FA,$90,$00,$06,$A0,$60,$00;$15A2EE |
    db $B0,$A0,$FF,$02,$18,$80,$00,$04;$15A2F6 |
    db $90,$00,$FA,$A0,$00,$00,$B0,$00;$15A2FE |
    db $00,$02,$08,$80,$00,$FC,$90,$00;$15A306 |
    db $FA,$A0,$40,$00,$B0,$60,$00,$02;$15A30E |
    db $18,$80,$20,$02,$90,$C0,$04,$A0;$15A316 |
    db $00,$00,$B0,$00,$00,$02,$08,$0A;$15A31E |
    db $39,$A3,$80,$E0,$FF,$90,$A0,$FF;$15A326 |
    db $A0,$00,$00,$B0,$00,$00,$02,$0C;$15A32E |
    db $0E,$31,$A2,$05,$06,$16,$FB,$A6;$15A336 |
    db $80,$00,$00,$90,$00,$FE,$A0,$00;$15A33E |
    db $00,$B0,$00,$00,$40,$07,$02,$01;$15A346 |
    db $90,$00,$02,$02,$02,$90,$00,$FE;$15A34E |
    db $02,$01,$07,$0C            ;$15A356 |
    LDX.B $39                     ;$15A35A |
    LDA.W Obj_VAR3,X              ;$15A35C |
    CMP.W #$0002                  ;$15A35F |
    BMI CODE_15A38D               ;$15A362 |
    STZ.W Obj_VAR3,X              ;$15A364 |
    LDA.W Obj_VAR1,X              ;$15A367 |
    CLC                           ;$15A36A |
    ADC.W #$71F9                  ;$15A36B |
    LDX.W #$00CA                  ;$15A36E |
    LDY.W #$E010                  ;$15A371 |
    JSL.L WritePal                ;$15A374 |
    LDY.B $39                     ;$15A378 |
    LDA.W Obj_VAR1,Y              ;$15A37A |
    CLC                           ;$15A37D |
    ADC.W #$0020                  ;$15A37E |
    CMP.W #$06C0                  ;$15A381 |
    BMI CODE_15A389               ;$15A384 |
    LDA.W #$0000                  ;$15A386 |

CODE_15A389:
    STA.W Obj_VAR1,Y              ;$15A389 |
    RTL                           ;$15A38C |

CODE_15A38D:
    INC.W Obj_VAR3,X              ;$15A38D |
    RTL                           ;$15A390 |
    db $14,$9C,$E5,$CD,$C0,$E6,$5F,$CA;$15A391 |
    db $03,$CF,$A4,$CA,$33,$58,$00,$26;$15A399 |
    db $58,$00,$27,$A0,$00,$05,$03,$16;$15A3A1 |
    db $FB,$A6,$80,$00,$00,$90,$40,$02;$15A3A9 |
    db $A0,$E8,$FF,$B0,$E8,$FF,$40,$08;$15A3B1 |
    db $02,$18,$A0,$18,$00,$02,$18,$B0;$15A3B9 |
    db $18,$00,$02,$18,$A0,$E8,$FF,$02;$15A3C1 |
    db $18,$07,$80,$00,$00,$90,$00,$00;$15A3C9 |
    db $A0,$00,$00,$B0,$00,$00,$02,$20;$15A3D1 |
    db $05,$03,$80,$00,$00,$90,$00,$08;$15A3D9 |
    db $A0,$00,$FF,$B0,$00,$FF,$02,$08;$15A3E1 |
    db $A0,$00,$01,$02,$08,$B0,$00,$01;$15A3E9 |
    db $02,$08,$A0,$00,$FF,$02,$08,$07;$15A3F1 |
    db $80,$00,$03,$90,$00,$01,$A0,$E8;$15A3F9 |
    db $FF,$B0,$F8,$FF,$02,$20,$80,$00;$15A401 |
    db $00,$90,$00,$00,$A0,$00,$00,$B0;$15A409 |
    db $00,$00,$02,$10,$80,$00,$F9,$90;$15A411 |
    db $00,$FE,$A0,$00,$00,$B0,$00,$00;$15A419 |
    db $02,$08,$0A,$AE,$A4,$80,$00,$02;$15A421 |
    db $90,$00,$F8,$02,$08,$80,$00,$FC;$15A429 |
    db $90,$00,$02,$02,$08,$0A,$AE,$A4;$15A431 |
    db $80,$00,$F9,$90,$00,$0C,$02,$08;$15A439 |
    db $80,$00,$04,$90,$00,$FE,$02,$08;$15A441 |
    db $0A,$AE,$A4,$80,$00,$04,$90,$00;$15A449 |
    db $01,$A0,$E0,$FF,$B0,$F8,$FF,$02;$15A451 |
    db $20,$80,$00,$FC,$90,$00,$FB,$02;$15A459 |
    db $08,$80,$00,$06,$90,$00,$FA,$A0;$15A461 |
    db $A0,$FF,$B0,$60,$00,$02,$18,$80;$15A469 |
    db $00,$FC,$90,$00,$06,$A0,$00,$00;$15A471 |
    db $B0,$00,$00,$02,$08,$80,$00,$04;$15A479 |
    db $90,$00,$06,$A0,$C0,$FF,$B0,$A0;$15A481 |
    db $FF,$02,$18,$80,$E0,$FE,$90,$A0;$15A489 |
    db $FA,$A0,$00,$00,$B0,$00,$00,$02;$15A491 |
    db $08,$0A,$AE,$A4,$80,$C0,$00,$90;$15A499 |
    db $40,$FF,$A0,$00,$00,$B0,$00,$00;$15A4A1 |
    db $02,$0C,$0E,$A0,$A3,$05,$06,$16;$15A4A9 |
    db $FB,$A6,$80,$00,$00,$90,$00,$02;$15A4B1 |
    db $A0,$00,$00,$B0,$00,$00,$40,$08;$15A4B9 |
    db $02,$01,$90,$00,$FE,$02,$02,$90;$15A4C1 |
    db $00,$02,$02,$01,$07,$0C    ;$15A4C9 |
    LDX.B $39                     ;$15A4CF |
    LDA.W Obj_VAR3,X              ;$15A4D1 |
    CMP.W #$0002                  ;$15A4D4 |
    BMI CODE_15A502               ;$15A4D7 |
    STZ.W Obj_VAR3,X              ;$15A4D9 |
    LDA.W Obj_VAR1,X              ;$15A4DC |
    CLC                           ;$15A4DF |
    ADC.W #$6C19                  ;$15A4E0 |
    LDX.W #$00CA                  ;$15A4E3 |
    LDY.W #$C010                  ;$15A4E6 |
    JSL.L WritePal                ;$15A4E9 |
    LDY.B $39                     ;$15A4ED |
    LDA.W Obj_VAR1,Y              ;$15A4EF |
    CLC                           ;$15A4F2 |
    ADC.W #$0020                  ;$15A4F3 |
    CMP.W #$0200                  ;$15A4F6 |
    BMI CODE_15A4FE               ;$15A4F9 |
    LDA.W #$0000                  ;$15A4FB |

CODE_15A4FE:
    STA.W Obj_VAR1,Y              ;$15A4FE |
    RTL                           ;$15A501 |

CODE_15A502:
    INC.W Obj_VAR3,X              ;$15A502 |
    RTL                           ;$15A505 |
    db $C0,$E6,$5F,$CA,$03,$26,$A5,$CA;$15A506 |
    db $26,$18,$01,$27,$10,$01,$14,$9C;$15A50E |
    db $E5,$CD,$33,$58,$00,$46,$0A,$46;$15A516 |
    db $0B,$46,$0C,$46,$0D,$0E,$1B,$A5;$15A51E |
    LDX.B $39                     ;$15A526 |
    LDA.W Obj_VAR3,X              ;$15A528 |
    CMP.W #$0003                  ;$15A52B |
    BMI CODE_15A55C               ;$15A52E |
    STZ.W Obj_VAR3,X              ;$15A530 |
    LDA.W Obj_VAR1,X              ;$15A533 |
    CLC                           ;$15A536 |
    ADC.W #$7979                  ;$15A537 |
    LDX.W #$00CA                  ;$15A53A |
    LDY.W #$8010                  ;$15A53D |
    JSL.L WritePal                ;$15A540 |
    LDY.B $39                     ;$15A544 |
    LDA.W Obj_VAR1,Y              ;$15A546 |
    CLC                           ;$15A549 |
    ADC.W #$0020                  ;$15A54A |
    CMP.W #$0180                  ;$15A54D |
    BMI CODE_15A555               ;$15A550 |
    LDA.W #$0000                  ;$15A552 |

CODE_15A555:
    STA.W Obj_VAR1,Y              ;$15A555 |
    LDA.W #$0001                  ;$15A558 |
    RTL                           ;$15A55B |

CODE_15A55C:
    INC.W Obj_VAR3,X              ;$15A55C |
    LDA.W #$0001                  ;$15A55F |
    RTL                           ;$15A562 |
    db $C0,$E6,$5F,$CA,$03,$7B,$A5,$CA;$15A563 |
    db $26,$50,$01,$27,$A8,$00,$14,$9C;$15A56B |
    db $E5,$CD,$33,$58,$00,$40,$06,$01;$15A573 |
    LDX.B $39                     ;$15A57B |
    LDA.W Obj_VAR3,X              ;$15A57D |
    CMP.W #$0003                  ;$15A580 |
    BMI CODE_15A5B1               ;$15A583 |
    STZ.W Obj_VAR3,X              ;$15A585 |
    LDA.W Obj_VAR1,X              ;$15A588 |
    CLC                           ;$15A58B |
    ADC.W #$7019                  ;$15A58C |
    LDX.W #$00CA                  ;$15A58F |
    LDY.W #$B010                  ;$15A592 |
    JSL.L WritePal                ;$15A595 |
    LDY.B $39                     ;$15A599 |
    LDA.W Obj_VAR1,Y              ;$15A59B |
    CLC                           ;$15A59E |
    ADC.W #$0020                  ;$15A59F |
    CMP.W #$0140                  ;$15A5A2 |
    BMI CODE_15A5AA               ;$15A5A5 |
    LDA.W #$0000                  ;$15A5A7 |

CODE_15A5AA:
    STA.W Obj_VAR1,Y              ;$15A5AA |
    LDA.W #$0005                  ;$15A5AD |
    RTL                           ;$15A5B0 |

CODE_15A5B1:
    INC.W Obj_VAR3,X              ;$15A5B1 |
    LDA.W #$0005                  ;$15A5B4 |
    RTL                           ;$15A5B7 |
    db $C0,$E6,$5F,$CA,$03,$D8,$A5,$CA;$15A5B8 |
    db $26,$88,$00,$27,$B0,$00,$14,$9C;$15A5C0 |
    db $E5,$CD,$33,$58,$00,$40,$09,$C0;$15A5C8 |
    db $E5,$A5,$CA,$02,$06,$0E,$CF,$A5;$15A5D0 |
    LDA.W P1_Frame                ;$15A5D8 |
    AND.W #$C0C0                  ;$15A5DB |
    BEQ CODE_15A5E4               ;$15A5DE |
    JSL.L CODE_FL_CAA692          ;$15A5E0 |

CODE_15A5E4:
    RTL                           ;$15A5E4 |
    LDA.W $7A6B                   ;$15A5E5 |
    AND.W #$0001                  ;$15A5E8 |
    BEQ CODE_15A5FA               ;$15A5EB |
    LDA.W #$0000                  ;$15A5ED |
    STA.W ObjVar0_Temp            ;$15A5F0 |
    LDX.W #$00B5                  ;$15A5F3 |
    JSL.L CODE_FL_009AEB          ;$15A5F6 |

CODE_15A5FA:
    LDA.W $7A6B                   ;$15A5FA |
    AND.W #$0002                  ;$15A5FD |
    BEQ CODE_15A60F               ;$15A600 |
    LDA.W #$0001                  ;$15A602 |
    STA.W ObjVar0_Temp            ;$15A605 |
    LDX.W #$00B5                  ;$15A608 |
    JSL.L CODE_FL_009AEB          ;$15A60B |

CODE_15A60F:
    LDA.W $7A6B                   ;$15A60F |
    AND.W #$0004                  ;$15A612 |
    BEQ CODE_15A624               ;$15A615 |
    LDA.W #$0002                  ;$15A617 |
    STA.W ObjVar0_Temp            ;$15A61A |
    LDX.W #$00B5                  ;$15A61D |
    JSL.L CODE_FL_009AEB          ;$15A620 |

CODE_15A624:
    LDA.W $7A6B                   ;$15A624 |
    AND.W #$0008                  ;$15A627 |
    BEQ CODE_15A639               ;$15A62A |
    LDA.W #$0003                  ;$15A62C |
    STA.W ObjVar0_Temp            ;$15A62F |
    LDX.W #$00B5                  ;$15A632 |
    JSL.L CODE_FL_009AEB          ;$15A635 |

CODE_15A639:
    LDA.W $7A6B                   ;$15A639 |
    AND.W #$0010                  ;$15A63C |
    BEQ CODE_15A64E               ;$15A63F |
    LDA.W #$0004                  ;$15A641 |
    STA.W ObjVar0_Temp            ;$15A644 |
    LDX.W #$00B5                  ;$15A647 |
    JSL.L CODE_FL_009AEB          ;$15A64A |

CODE_15A64E:
    LDA.W $7A6B                   ;$15A64E |
    AND.W #$0020                  ;$15A651 |
    BEQ CODE_15A663               ;$15A654 |
    LDA.W #$0005                  ;$15A656 |
    STA.W ObjVar0_Temp            ;$15A659 |
    LDX.W #$00B5                  ;$15A65C |
    JSL.L CODE_FL_009AEB          ;$15A65F |

CODE_15A663:
    LDA.W $7A6B                   ;$15A663 |
    AND.W #$007F                  ;$15A666 |
    SEC                           ;$15A669 |
    SBC.W #$007F                  ;$15A66A |
    BNE CODE_15A67C               ;$15A66D |
    LDA.W #$0007                  ;$15A66F |
    STA.W ObjVar0_Temp            ;$15A672 |
    LDX.W #$00B5                  ;$15A675 |
    JSL.L CODE_FL_009AEB          ;$15A678 |

CODE_15A67C:
    LDA.W $7A6B                   ;$15A67C |
    AND.W #$0040                  ;$15A67F |
    BEQ CODE_15A691               ;$15A682 |
    LDA.W #$0006                  ;$15A684 |
    STA.W ObjVar0_Temp            ;$15A687 |
    LDX.W #$00B5                  ;$15A68A |
    JSL.L CODE_FL_009AEB          ;$15A68D |

CODE_15A691:
    RTL                           ;$15A691 |
    LDX.B $39                     ;$15A692 |
    STZ.W Obj_VAR0,X              ;$15A694 |
    LDY.W #$0002                  ;$15A697 |
    LDA.W Obj_XPosition,Y         ;$15A69A |
    STA.W Obj_VAR1,X              ;$15A69D |
    LDA.W Obj_YPosition,Y         ;$15A6A0 |
    STA.W Obj_VAR2,X              ;$15A6A3 |

CODE_JP_15A6A6:
    LDY.B $39                     ;$15A6A6 |
    LDA.W Obj_VAR0,Y              ;$15A6A8 |
    CMP.W #$0008                  ;$15A6AB |
    BNE CODE_15A6BE               ;$15A6AE |
    LDA.W $7A6B                   ;$15A6B0 |
    AND.W #$007F                  ;$15A6B3 |
    CMP.W #$007F                  ;$15A6B6 |
    BNE CODE_15A72C               ;$15A6B9 |
    LDA.W Obj_VAR0,Y              ;$15A6BB |

CODE_15A6BE:
    ASL A                         ;$15A6BE |
    TAX                           ;$15A6BF |
    LDA.L DATA8_CAA73C,X          ;$15A6C0 |
    CLC                           ;$15A6C4 |
    ADC.W #$0010                  ;$15A6C5 |
    SEC                           ;$15A6C8 |
    SBC.W Obj_VAR1,Y              ;$15A6C9 |
    BMI CODE_15A72C               ;$15A6CC |
    SEC                           ;$15A6CE |
    SBC.W #$0010                  ;$15A6CF |
    SEC                           ;$15A6D2 |
    SBC.W #$0010                  ;$15A6D3 |
    BPL CODE_15A72C               ;$15A6D6 |
    LDA.W Obj_VAR0,Y              ;$15A6D8 |
    ASL A                         ;$15A6DB |
    TAX                           ;$15A6DC |
    LDA.L DATA8_CAA750,X          ;$15A6DD |
    CLC                           ;$15A6E1 |
    ADC.W #$0010                  ;$15A6E2 |
    SEC                           ;$15A6E5 |
    SBC.W Obj_VAR2,Y              ;$15A6E6 |
    BMI CODE_15A72C               ;$15A6E9 |
    SEC                           ;$15A6EB |
    SBC.W #$0010                  ;$15A6EC |
    SEC                           ;$15A6EF |
    SBC.W #$0010                  ;$15A6F0 |
    BPL CODE_15A72C               ;$15A6F3 |
    LDA.W Obj_VAR0,Y              ;$15A6F5 |
    CMP.W #$0008                  ;$15A6F8 |
    BNE CODE_15A70C               ;$15A6FB |
    LDX.W #$0000                  ;$15A6FD |
    LDA.W #$0001                  ;$15A700 |
    STA.W Obj_VAR5,X              ;$15A703 |
    LDA.W #$0004                  ;$15A706 |
    STA.W MWW_Current_Planet      ;$15A709 |

CODE_15A70C:
    STA.W MWW_Current_Planet      ;$15A70C |
    STZ.W $7A73                   ;$15A70F |
    LDX.W #$0002                  ;$15A712 |
    STZ.W $6B6E,X                 ;$15A715 |
    STZ.W $6BE8,X                 ;$15A718 |
    STZ.W $6C62,X                 ;$15A71B |
    STZ.W $6CDC,X                 ;$15A71E |
    LDA.W #$9EC6                  ;$15A721 |
    LDY.W #$00CA                  ;$15A724 |
    JSL.L CODE_FL_008F64          ;$15A727 |
    RTL                           ;$15A72B |

CODE_15A72C:
    TYX                           ;$15A72C |
    INC.W Obj_VAR0,X              ;$15A72D |
    LDA.W Obj_VAR0,X              ;$15A730 |
    CMP.W #$0009                  ;$15A733 |
    BPL CODE_15A73B               ;$15A736 |
    JMP.W CODE_JP_15A6A6          ;$15A738 |

CODE_15A73B:
    RTL                           ;$15A73B |
    db $28,$00,$18,$01,$C8,$00,$F0,$00;$15A73C |
    db $88,$00,$50,$01,$E8,$00,$C8,$00;$15A744 |
    db $50,$01,$48,$00,$48,$00,$10,$01;$15A74C |
    db $00,$01,$B0,$00,$68,$00,$A8,$00;$15A754 |
    db $40,$00,$C8,$00,$34,$00,$A8,$00;$15A75C |
    db $C0,$E6,$5F,$CA,$26,$50,$01,$27;$15A764 |
    db $34,$00,$14,$9C,$E5,$CD,$33,$58;$15A76C |
    db $00,$40,$05,$01,$C0,$BE,$84,$00;$15A774 |
    db $16,$F1,$A6,$04,$14,$FF,$FF,$FF;$15A77C |
    db $40,$FF,$C0,$94,$9C,$00,$09,$C0;$15A784 |
    db $BB,$9C,$00,$00,$00,$60,$00,$C0;$15A78C |
    db $9A,$9C,$00,$00,$01,$00,$00,$00;$15A794 |
    db $48,$C0,$9A,$9C,$00,$01,$00,$00;$15A79C |
    db $00,$00,$50,$C0,$CE,$9C,$00,$13;$15A7A4 |
    db $C0,$85,$9F,$00,$00,$C0,$EA,$9F;$15A7AC |
    db $00,$99,$BE,$E9,$00,$00,$02,$C0;$15A7B4 |
    db $6C,$9C,$00,$D9,$AB,$CA,$F0,$1D;$15A7BC |
    db $0A,$CE,$5F,$C0,$BC,$9B,$00,$00;$15A7C4 |
    db $00,$00,$00,$02,$10,$00,$80,$00;$15A7CC |
    db $80,$00,$02,$00,$00,$00,$C0,$BC;$15A7D4 |
    db $9B,$00,$08,$00,$00,$00,$04,$10;$15A7DC |
    db $00,$00,$00,$00,$00,$02,$00,$00;$15A7E4 |
    db $00,$C0,$BC,$9B,$00,$09,$00,$00;$15A7EC |
    db $00,$06,$10,$00,$00,$00,$00,$00;$15A7F4 |
    db $02,$00,$00,$00,$C0,$BC,$9B,$00;$15A7FC |
    db $04,$00,$00,$00,$08,$10,$00,$00;$15A804 |
    db $00,$00,$00,$02,$00,$00,$00,$C0;$15A80C |
    db $BC,$9B,$00,$05,$00,$00,$00,$0A;$15A814 |
    db $10,$00,$30,$00,$D0,$00,$02,$00;$15A81C |
    db $00,$00,$C0,$BC,$9B,$00,$0A,$00;$15A824 |
    db $00,$00,$0C,$10,$00,$00,$00,$00;$15A82C |
    db $00,$02,$00,$00,$00,$C0,$BC,$9B;$15A834 |
    db $00,$0B,$00,$00,$00,$0E,$10,$00;$15A83C |
    db $00,$00,$00,$00,$02,$00,$00,$00;$15A844 |
    db $1B,$73,$7A,$FF,$FF,$05,$10,$C2;$15A84C |
    db $CD,$9F,$00,$07,$C1,$C9,$A2,$00;$15A854 |
    db $73,$7A,$00,$00,$11,$58,$A8,$05;$15A85C |
    db $10,$C2,$DD,$9F,$00,$07,$C0,$6C;$15A864 |
    db $92,$00,$02,$01,$C0,$EF,$9B,$00;$15A86C |
    db $C0,$BE,$84,$00,$C0,$93,$9E,$CA;$15A874 |
    db $C0,$7E,$9E,$CA,$1B,$92,$73,$01;$15A87C |
    db $00,$C0,$8A,$A8,$CA,$01    ;$15A884 |
    LDA.W #$0005                  ;$15A88A |
    LDX.W #$0008                  ;$15A88D |
    LDY.W #$0000                  ;$15A890 |
    JSL.L CODE_FL_00DA97          ;$15A893 |
    LDA.W #$0001                  ;$15A897 |
    STA.W $3332                   ;$15A89A |
    RTL                           ;$15A89D |
    db $14,$9C,$E5,$CD,$C0,$E6,$5F,$CA;$15A89E |
    db $03,$5A,$A3,$CA,$33,$5F,$00,$26;$15A8A6 |
    db $42,$00,$27,$98,$00,$05,$10,$16;$15A8AE |
    db $FB,$A6,$90,$00,$FF,$40,$07,$02;$15A8B6 |
    db $01,$90,$00,$01,$02,$02,$90,$00;$15A8BE |
    db $FF,$02,$01,$07,$80,$00,$FC,$90;$15A8C6 |
    db $00,$FC,$A0,$40,$00,$B0,$40,$00;$15A8CE |
    db $02,$10,$80,$00,$00,$90,$00,$00;$15A8D6 |
    db $A0,$00,$00,$B0,$00,$00,$02,$10;$15A8DE |
    db $05,$02,$90,$00,$FF,$02,$01,$90;$15A8E6 |
    db $00,$01,$02,$02,$90,$00,$FF,$02;$15A8EE |
    db $01,$07,$80,$00,$FC,$90,$00,$00;$15A8F6 |
    db $A0,$40,$00,$B0,$00,$00,$02,$28;$15A8FE |
    db $05,$07,$80,$00,$02,$A0,$00,$00;$15A906 |
    db $02,$02,$80,$00,$FF,$02,$02,$07;$15A90E |
    db $05,$14,$80,$00,$00,$90,$00,$FF;$15A916 |
    db $02,$02,$90,$00,$01,$02,$02,$07;$15A91E |
    db $05,$18,$80,$00,$01,$90,$00,$FF;$15A926 |
    db $02,$02,$80,$80,$FE,$90,$80,$01;$15A92E |
    db $02,$02,$07,$05,$30,$80,$80,$FF;$15A936 |
    db $90,$80,$00,$02,$02,$80,$C0,$00;$15A93E |
    db $90,$40,$FF,$02,$02,$07,$0E,$16;$15A946 |
    db $A9,$14,$9C,$E5,$CD,$C0,$E6,$5F;$15A94E |
    db $CA,$03,$CF,$A4,$CA,$33,$5F,$00;$15A956 |
    db $26,$50,$00,$27,$A4,$00,$05,$10;$15A95E |
    db $16,$FB,$A6,$90,$00,$FF,$40,$08;$15A966 |
    db $02,$01,$90,$00,$01,$02,$02,$90;$15A96E |
    db $00,$FF,$02,$01,$07,$80,$00,$04;$15A976 |
    db $90,$00,$04,$A0,$C0,$FF,$B0,$C0;$15A97E |
    db $FF,$02,$10,$80,$00,$00,$90,$00;$15A986 |
    db $00,$A0,$00,$00,$B0,$00,$00,$02;$15A98E |
    db $10,$05,$02,$90,$00,$FF,$02,$01;$15A996 |
    db $90,$00,$01,$02,$02,$90,$00,$FF;$15A99E |
    db $02,$01,$07,$80,$00,$00,$90,$00;$15A9A6 |
    db $04,$A0,$00,$00,$B0,$C0,$FF,$02;$15A9AE |
    db $28,$05,$07,$90,$00,$FE,$B0,$00;$15A9B6 |
    db $00,$02,$02,$90,$00,$01,$02,$02;$15A9BE |
    db $07,$05,$14,$80,$00,$00,$90,$00;$15A9C6 |
    db $FF,$02,$02,$90,$00,$01,$02,$02;$15A9CE |
    db $07,$05,$18,$80,$00,$01,$90,$00;$15A9D6 |
    db $FF,$02,$02,$80,$80,$FE,$90,$80;$15A9DE |
    db $01,$02,$02,$07,$05,$30,$80,$80;$15A9E6 |
    db $FF,$90,$80,$00,$02,$02,$80,$C0;$15A9EE |
    db $00,$90,$40,$FF,$02,$02,$07,$0E;$15A9F6 |
    db $C7,$A9,$C0,$E6,$5F,$CA,$26,$88;$15A9FE |
    db $00,$27,$B0,$00,$14,$9C,$E5,$CD;$15AA06 |
    db $33,$58,$00,$40,$09,$01,$C0,$1D;$15AA0E |
    db $AA,$CA,$02,$06,$0E,$CF,$A5,$A9;$15AA16 |
    db $00,$00,$8D,$00,$60,$A2,$B5,$00;$15AA1E |
    db $22,$EB,$9A,$00,$A9,$01,$00,$8D;$15AA26 |
    db $00,$60,$A2,$B5,$00,$22,$EB,$9A;$15AA2E |
    db $00,$A9,$02,$00,$8D,$00,$60,$A2;$15AA36 |
    db $B5,$00,$22,$EB,$9A,$00,$A9,$03;$15AA3E |
    db $00,$8D,$00,$60,$A2,$B5,$00,$22;$15AA46 |
    db $EB,$9A,$00,$A9,$04,$00,$8D,$00;$15AA4E |
    db $60,$A2,$B5,$00,$22,$EB,$9A,$00;$15AA56 |
    db $A9,$05,$00,$8D,$00,$60,$A2,$B5;$15AA5E |
    db $00,$22,$EB,$9A,$00,$A9,$07,$00;$15AA66 |
    db $8D,$00,$60,$A2,$B5,$00,$22,$EB;$15AA6E |
    db $9A,$00,$6B,$14,$9C,$E5,$CD,$C0;$15AA76 |
    db $E6,$5F,$CA,$03,$49,$AB,$CA,$33;$15AA7E |
    db $5E,$00,$26,$F4,$00,$27,$14,$00;$15AA86 |
    db $05,$30,$C0,$BC,$9B,$00,$0C,$00;$15AA8E |
    db $00,$00,$10,$10,$00,$00,$00,$00;$15AA96 |
    db $00,$02,$00,$00,$00,$16,$FB,$A6;$15AA9E |
    db $80,$00,$FF,$90,$C0,$00,$40,$05;$15AAA6 |
    db $02,$03,$07,$05,$06,$C0,$BC,$9B;$15AAAE |
    db $00,$0C,$00,$00,$00,$12,$10,$00;$15AAB6 |
    db $00,$00,$00,$00,$02,$00,$00,$00;$15AABE |
    db $80,$00,$01,$90,$00,$FE,$02,$02;$15AAC6 |
    db $80,$00,$00,$90,$00,$01,$02,$02;$15AACE |
    db $07,$05,$14,$C0,$BC,$9B,$00,$0C;$15AAD6 |
    db $00,$00,$00,$14,$10,$00,$00,$00;$15AADE |
    db $00,$00,$02,$00,$00,$00,$80,$00;$15AAE6 |
    db $00,$90,$00,$FF,$02,$02,$90,$00;$15AAEE |
    db $01,$02,$02,$07,$05,$18,$C0,$BC;$15AAF6 |
    db $9B,$00,$0C,$00,$00,$00,$16,$10;$15AAFE |
    db $00,$00,$00,$00,$00,$02,$00,$00;$15AB06 |
    db $00,$80,$00,$01,$90,$00,$FF,$02;$15AB0E |
    db $02,$80,$80,$FE,$90,$80,$01,$02;$15AB16 |
    db $02,$07,$05,$30,$C0,$BC,$9B,$00;$15AB1E |
    db $0C,$00,$00,$00,$18,$10,$00,$00;$15AB26 |
    db $00,$00,$00,$02,$00,$00,$00,$80;$15AB2E |
    db $80,$FF,$90,$80,$00,$02,$02,$80;$15AB36 |
    db $C0,$00,$90,$40,$FF,$02,$02,$07;$15AB3E |
    db $0E,$D7,$AA                ;$15AB46 |
    LDA.W P1_Frame                ;$15AB49 |
    AND.W #$C0C0                  ;$15AB4C |
    BEQ CODE_15AB81               ;$15AB4F |
    LDY.W #$0002                  ;$15AB51 |
    LDX.B $39                     ;$15AB54 |
    LDA.W #$1010                  ;$15AB56 |
    JSL.L CODE_FL_CAAB82          ;$15AB59 |
    CMP.W #$0000                  ;$15AB5D |
    BNE CODE_15AB81               ;$15AB60 |
    LDX.W #$0002                  ;$15AB62 |
    STZ.W $7A73                   ;$15AB65 |
    STZ.W $6B6E,X                 ;$15AB68 |
    STZ.W $6BE8,X                 ;$15AB6B |
    STZ.W $6C62,X                 ;$15AB6E |
    STZ.W $6CDC,X                 ;$15AB71 |
    LDA.W #$9EC6                  ;$15AB74 |
    LDY.W #$00CA                  ;$15AB77 |
    LDX.W #$0002                  ;$15AB7A |
    JSL.L CODE_FL_008F64          ;$15AB7D |

CODE_15AB81:
    RTL                           ;$15AB81 |
    PHX                           ;$15AB82 |
    PHY                           ;$15AB83 |
    PHA                           ;$15AB84 |
    AND.W #$00FF                  ;$15AB85 |
    STA.B IdentifySNES            ;$15AB88 |
    PLA                           ;$15AB8A |
    XBA                           ;$15AB8B |
    AND.W #$00FF                  ;$15AB8C |
    STA.B DSP_P                   ;$15AB8F |
    LDA.W Obj_XPositionMirror,X   ;$15AB91 |
    SEC                           ;$15AB94 |
    SBC.W Obj_XPositionMirror,Y   ;$15AB95 |
    BPL CODE_15AB9E               ;$15AB98 |
    EOR.W #$FFFF                  ;$15AB9A |
    INC A                         ;$15AB9D |

CODE_15AB9E:
    CMP.B IdentifySNES            ;$15AB9E |
    BCS CODE_15ABB8               ;$15ABA0 |
    LDA.W Obj_YPositionMirror,X   ;$15ABA2 |
    SEC                           ;$15ABA5 |
    SBC.W Obj_YPositionMirror,Y   ;$15ABA6 |
    BPL CODE_15ABAF               ;$15ABA9 |
    EOR.W #$FFFF                  ;$15ABAB |
    INC A                         ;$15ABAE |

CODE_15ABAF:
    CMP.B DSP_P                   ;$15ABAF |
    BCS CODE_15ABB8               ;$15ABB1 |
    LDA.W #$0000                  ;$15ABB3 |
    BRA CODE_15ABBB               ;$15ABB6 |

CODE_15ABB8:
    LDA.W #$FFFF                  ;$15ABB8 |

CODE_15ABBB:
    PLY                           ;$15ABBB |
    PLX                           ;$15ABBC |
    RTL                           ;$15ABBD |
    db $16,$FB,$A6,$C0,$E6,$5F,$CA,$14;$15ABBE |
    db $9C,$E5,$CD,$33,$59,$00,$80,$00;$15ABC6 |
    db $04,$90,$80,$FC,$44,$0E,$44,$0E;$15ABCE |
    db $44,$0E,$00,$83,$00,$14,$30,$2E;$15ABD6 |
    db $E1,$00,$76,$83,$80,$1A,$C6,$51;$15ABDE |
    db $DF,$00,$60,$83,$00,$09,$B8,$29;$15ABE6 |
    db $E6,$00,$00,$89,$00,$08,$81,$EB;$15ABEE |
    db $ED,$00,$48,$0F,$00,$08,$00,$28;$15ABF6 |
    db $7E,$00,$48,$89,$00,$04,$19,$E6;$15ABFE |
    db $E6,$00,$50,$0F,$00,$04,$00,$24;$15AC06 |
    db $7E,$00,$50,$FF,$C0,$BE,$84,$00;$15AC0E |
    db $C0,$EF,$9B,$00,$C0,$94,$9C,$00;$15AC16 |
    db $09,$C0,$BB,$9C,$00,$00,$00,$60;$15AC1E |
    db $00,$C0,$9A,$9C,$00,$00,$01,$00;$15AC26 |
    db $00,$00,$40,$C0,$9A,$9C,$00,$01;$15AC2E |
    db $00,$00,$00,$00,$5C,$C0,$9A,$9C;$15AC36 |
    db $00,$02,$01,$00,$50,$00,$48,$C0;$15AC3E |
    db $CE,$9C,$00,$16,$C0,$85,$9F,$00;$15AC46 |
    db $00,$C0,$EA,$9F,$00,$CD,$D8,$EF;$15AC4E |
    db $00,$20,$00,$C0,$EA,$9F,$00,$F5;$15AC56 |
    db $F4,$EB,$10,$E0,$00,$C0,$EA,$9F;$15AC5E |
    db $00,$18,$DE,$EF,$91,$1E,$00,$C0;$15AC66 |
    db $EA,$9F,$00,$6A,$3D,$EC,$A0,$C0;$15AC6E |
    db $00,$C0,$6C,$9C,$00,$C7,$BD,$CA;$15AC76 |
    db $C0,$8F,$A2,$00,$B5,$7B,$E7,$00;$15AC7E |
    db $70,$7E,$C0,$8F,$A2,$00,$B6,$4E;$15AC86 |
    db $E7,$00,$60,$7E,$C0,$C0,$AE,$CA;$15AC8E |
    db $C0,$6E,$B8,$CA,$C0,$AA,$B8,$CA;$15AC96 |
    db $C0,$4D,$AF,$CA,$C0,$6C,$9C,$00;$15AC9E |
    db $E0,$BD,$CA,$F0,$16,$C0,$F3,$D2;$15ACA6 |
    db $00,$0C,$C0,$64,$CE,$00,$FF,$C0;$15ACAE |
    db $10,$9D,$00,$00,$00,$00,$00,$2E;$15ACB6 |
    db $00,$2E,$01,$2F,$02,$80,$FF,$30;$15ACBE |
    db $02,$80,$FF,$1B,$89,$7A,$00,$00;$15ACC6 |
    db $1B,$8D,$7A,$00,$00,$1B,$9D,$7A;$15ACCE |
    db $00,$00,$15,$90,$AB,$16,$BA,$A8;$15ACD6 |
    db $14,$FF,$FF,$FF,$40,$FF,$C0,$15;$15ACDE |
    db $AE,$CA,$05,$10,$C1,$CD,$9F,$00;$15ACE6 |
    db $07,$21,$01,$10,$F7,$AC,$0A,$73;$15ACEE |
    db $AF,$C0,$69,$AE,$CA,$C0,$55,$AE;$15ACF6 |
    db $CA,$2F,$02,$80,$FF,$30,$02,$80;$15ACFE |
    db $FF,$1B,$83,$7A,$FF,$FF,$C1,$C9;$15AD06 |
    db $A2,$00,$83,$7A,$00,$00,$11,$0C;$15AD0E |
    db $AD,$C0,$F6,$AE,$CA,$0F,$05,$67;$15AD16 |
    db $AD,$27,$AD,$39,$AD,$50,$AD,$07;$15AD1E |
    db $AD,$05,$10,$C1,$DD,$9F,$00,$07;$15AD26 |
    db $1B,$EA,$32,$07,$00,$1B,$92,$73;$15AD2E |
    db $FF,$FF,$01,$05,$10,$C1,$DD,$9F;$15AD36 |
    db $00,$07,$1B,$AA,$73,$00,$00,$1B;$15AD3E |
    db $EA,$32,$08,$00,$1B,$92,$73,$FF;$15AD46 |
    db $FF,$01,$05,$10,$C1,$DD,$9F,$00;$15AD4E |
    db $07,$1B,$AA,$73,$01,$00,$1B,$EA;$15AD56 |
    db $32,$08,$00,$1B,$92,$73,$FF,$FF;$15AD5E |
    db $01,$C0,$69,$AE,$CA,$19,$00,$00;$15AD66 |
    db $00,$05,$0F,$C0,$DF,$AE,$CA,$C1;$15AD6E |
    db $48,$AF,$CA,$07,$2E,$00,$2E,$02;$15AD76 |
    db $2A,$00,$F8,$00,$2B,$00,$00,$00;$15AD7E |
    db $2A,$02,$F8,$00,$2B,$02,$00,$00;$15AD86 |
    db $02,$01,$C0,$4D,$B0,$CA,$02,$01;$15AD8E |
    db $C0,$6C,$9C,$00,$57,$AF,$CA,$02;$15AD96 |
    db $01,$C0,$CE,$9C,$00,$17,$2F,$00;$15AD9E |
    db $00,$F0,$2F,$02,$00,$F0,$05,$20;$15ADA6 |
    db $31,$00,$80,$00,$31,$02,$80,$00;$15ADAE |
    db $02,$01,$07,$2F,$00,$00,$00,$2F;$15ADB6 |
    db $02,$00,$00,$C1,$AA,$AE,$CA,$0F;$15ADBE |
    db $03,$C1,$AD,$09,$AE,$CD,$AD,$05;$15ADC6 |
    db $20,$31,$00,$80,$00,$31,$02,$80;$15ADCE |
    db $00,$02,$01,$07,$2F,$00,$00,$00;$15ADD6 |
    db $2F,$02,$00,$00,$C0,$9D,$AE,$CA;$15ADDE |
    db $C0,$6C,$9C,$00,$E0,$BD,$CA,$19;$15ADE6 |
    db $00,$0F,$00,$05,$0F,$C0,$DF,$AE;$15ADEE |
    db $CA,$C1,$43,$AF,$CA,$07,$C0,$EA;$15ADF6 |
    db $9F,$00,$CD,$D8,$EF,$00,$20,$00;$15ADFE |
    db $0E,$F7,$AC,$05,$10,$C1,$DD,$9F;$15AE06 |
    db $00,$07,$C0,$83,$AE,$CA,$01;$15AE0E |
    LDA.W $7A85                   ;$15AE15 |
    CMP.W #$0001                  ;$15AE18 |
    BCS CODE_95AE2A               ;$15AE1B |
    LDY.W #$0006                  ;$15AE1D |
    LDA.W #$0005                  ;$15AE20 |
    LDX.W #$0000                  ;$15AE23 |
    JSL.L CODE_FL_CABD7D          ;$15AE26 |

CODE_95AE2A:
    LDA.W $7A85                   ;$15AE2A |
    CMP.W #$0002                  ;$15AE2D |
    BCS CODE_95AE3F               ;$15AE30 |
    LDY.W #$0008                  ;$15AE32 |
    LDA.W #$0005                  ;$15AE35 |
    LDX.W #$0002                  ;$15AE38 |
    JSL.L CODE_FL_CABD7D          ;$15AE3B |

CODE_95AE3F:
    LDA.W $7A85                   ;$15AE3F |
    CMP.W #$0003                  ;$15AE42 |
    BCS CODE_95AE54               ;$15AE45 |
    LDY.W #$000A                  ;$15AE47 |
    LDA.W #$0005                  ;$15AE4A |
    LDX.W #$0004                  ;$15AE4D |
    JSL.L CODE_FL_CABD7D          ;$15AE50 |

CODE_95AE54:
    RTL                           ;$15AE54 |
    LDY.W #$000E                  ;$15AE55 |
    LDA.W #$0000                  ;$15AE58 |
    JSL.L CODE_FL_CABD7D          ;$15AE5B |
    LDY.W #$000C                  ;$15AE5F |
    LDA.W #$0004                  ;$15AE62 |
    JML.L CODE_FL_CABD7D          ;$15AE65 |
    LDA.W #$0030                  ;$15AE69 |
    STA.B DSP_P                   ;$15AE6C |
    LDX.W #$000E                  ;$15AE6E |

CODE_95AE71:
    LDA.W $623C,X                 ;$15AE71 |
    BMI CODE_95AE7C               ;$15AE74 |
    PHX                           ;$15AE76 |
    JSL.L DestroyObject_L         ;$15AE77 |
    PLX                           ;$15AE7B |

CODE_95AE7C:
    INX                           ;$15AE7C |
    INX                           ;$15AE7D |
    CMP.B DSP_P                   ;$15AE7E |
    BCC CODE_95AE71               ;$15AE80 |
    RTL                           ;$15AE82 |
    LDA.W #$FFFF                  ;$15AE83 |
    STA.W $7A8B                   ;$15AE86 |
    LDA.W $7A91                   ;$15AE89 |
    STA.W Current_SubGame         ;$15AE8C |
    ASL A                         ;$15AE8F |
    STA.W Current_SubGame_x2      ;$15AE90 |
    LDA.W $7A91                   ;$15AE93 |
    STA.W Current_SubGame         ;$15AE96 |
    INC.W ReloadRoom              ;$15AE99 |
    RTL                           ;$15AE9C |
    SEP #$20                      ;$15AE9D |
    LDA.W MainScreenDesignation   ;$15AE9F |
    AND.B #$FE                    ;$15AEA2 |
    STA.W MainScreenDesignation   ;$15AEA4 |
    REP #$20                      ;$15AEA7 |
    RTL                           ;$15AEA9 |
    LDX.W #$0000                  ;$15AEAA |
    LDA.W P1_Frame                ;$15AEAD |
    BIT.W #$A040                  ;$15AEB0 |
    BNE CODE_95AEBC               ;$15AEB3 |
    BIT.W #$5080                  ;$15AEB5 |
    BNE CODE_95AEBD               ;$15AEB8 |
    BRA CODE_95AEBE               ;$15AEBA |

CODE_95AEBC:
    INX                           ;$15AEBC |

CODE_95AEBD:
    INX                           ;$15AEBD |

CODE_95AEBE:
    TXA                           ;$15AEBE |
    RTL                           ;$15AEBF |
    TYX                           ;$15AEC0 |
    STZ.W Obj_VAR1,X              ;$15AEC1 |
    LDA.W $7A93                   ;$15AEC4 |
    CMP.W $7A8F                   ;$15AEC7 |
    BEQ CODE_95AEDE               ;$15AECA |
    LDA.W #$FFFF                  ;$15AECC |
    STA.W Obj_VAR1,Y              ;$15AECF |
    LDA.W $7A93                   ;$15AED2 |
    LDX.W $7A8F                   ;$15AED5 |
    STX.W $7A93                   ;$15AED8 |
    STA.W $7A8F                   ;$15AEDB |

CODE_95AEDE:
    RTL                           ;$15AEDE |
    LDA.W Obj_VAR0,Y              ;$15AEDF |
    ASL A                         ;$15AEE2 |
    ASL A                         ;$15AEE3 |
    ASL A                         ;$15AEE4 |
    CLC                           ;$15AEE5 |
    ADC.W #$BF36                  ;$15AEE6 |
    LDX.W #$00CA                  ;$15AEE9 |
    LDY.W #$0404                  ;$15AEEC |
    JSL.L WritePal                ;$15AEEF |
    LDY.B $39                     ;$15AEF3 |
    RTL                           ;$15AEF5 |
    LDA.W $7A91                   ;$15AEF6 |
    CMP.W #$000A                  ;$15AEF9 |
    BEQ CODE_95AF21               ;$15AEFC |
    CMP.W #$0007                  ;$15AEFE |
    BEQ CODE_95AF12               ;$15AF01 |
    CMP.W #$0008                  ;$15AF03 |
    BEQ CODE_95AF17               ;$15AF06 |
    CMP.W #$0009                  ;$15AF08 |
    BEQ CODE_95AF1C               ;$15AF0B |
    LDA.W #$0000                  ;$15AF0D |
    BRA CODE_95AF42               ;$15AF10 |

CODE_95AF12:
    LDA.W #$0001                  ;$15AF12 |
    BRA CODE_95AF42               ;$15AF15 |

CODE_95AF17:
    LDA.W #$0002                  ;$15AF17 |
    BRA CODE_95AF42               ;$15AF1A |

CODE_95AF1C:
    LDA.W #$0003                  ;$15AF1C |
    BRA CODE_95AF42               ;$15AF1F |

CODE_95AF21:
    LDA.W CurrentStereoMono       ;$15AF21 |
    AND.W #$00FF                  ;$15AF24 |
    BEQ CODE_15AF2E               ;$15AF27 |
    LDA.W #$0000                  ;$15AF29 |
    BRA CODE_15AF31               ;$15AF2C |

CODE_15AF2E:
    LDA.W #$0001                  ;$15AF2E |

CODE_15AF31:
    JSL.L CODE_FL_00CE43          ;$15AF31 |
    LDA.W #$000A                  ;$15AF35 |
    JSR.W CODE_FN_15B92A          ;$15AF38 |
    JSL.L CODE_FL_CAB90B          ;$15AF3B |
    LDA.W #$0004                  ;$15AF3F |

CODE_95AF42:
    RTL                           ;$15AF42 |
    TYX                           ;$15AF43 |
    DEC.W Obj_VAR0,X              ;$15AF44 |
    RTL                           ;$15AF47 |
    TYX                           ;$15AF48 |
    INC.W Obj_VAR0,X              ;$15AF49 |
    RTL                           ;$15AF4C |
    LDA.W #$AF60                  ;$15AF4D |
    LDX.W #$00CA                  ;$15AF50 |
    JML.L LoadDMATable            ;$15AF53 |
    db $83,$30,$0B,$43,$5A,$E8,$00,$50;$15AF57 |
    db $FF,$06,$00,$10,$71,$AF,$CA,$00;$15AF5F |
    db $40,$06,$00,$10,$71,$AF,$CA,$00;$15AF67 |
    db $48,$FF,$00,$00,$19,$04,$04,$00;$15AF6F |
    db $C0,$3C,$B0,$CA,$C0,$AE,$AF,$CA;$15AF77 |
    db $10,$8A,$AF,$02,$3C,$C0,$23,$B0;$15AF7F |
    db $CA,$02,$50,$C0,$9A,$AF,$CA,$10;$15AF87 |
    db $7B,$AF,$C0,$46,$B0,$CA,$C0,$6E;$15AF8F |
    db $B8,$CA,$0C                ;$15AF97 |
    LDA.W Obj_VAR4,Y              ;$15AF9A |
    INC A                         ;$15AF9D |
    STA.W Obj_VAR4,Y              ;$15AF9E |
    CMP.W #$0008                  ;$15AFA1 |
    BEQ CODE_15AFAA               ;$15AFA4 |
    LDA.W #$0000                  ;$15AFA6 |
    RTL                           ;$15AFA9 |

CODE_15AFAA:
    LDA.W #$FFFF                  ;$15AFAA |
    RTL                           ;$15AFAD |
    LDA.W Obj_VAR4,Y              ;$15AFAE |
    ASL A                         ;$15AFB1 |
    TAX                           ;$15AFB2 |
    LDA.L DATA16_CAB013,X         ;$15AFB3 |
    AND.W Obj_VAR3,Y              ;$15AFB7 |
    BNE CODE_15AFC0               ;$15AFBA |
    LDA.W #$0000                  ;$15AFBC |
    RTL                           ;$15AFBF |

CODE_15AFC0:
    JMP.W (PTR16_15AFC3,X)        ;$15AFC0 |
PTR16_15AFC3:
    dw CODE_15AFD3                ;$15AFC3 |
    dw CODE_15AFD3                ;$15AFC5 |
    dw CODE_15AFD3                ;$15AFC7 |
    dw CODE_15AFD3                ;$15AFC9 |
    dw CODE_15AFD7                ;$15AFCB |
    dw CODE_15AFE1                ;$15AFCD |
    dw CODE_15AFEE                ;$15AFCF |
    dw CODE_15AFF8                ;$15AFD1 |

CODE_15AFD3:
    LDA.W #$0000                  ;$15AFD3 |
    RTL                           ;$15AFD6 |

CODE_15AFD7:
    LDA.W $7A8F                   ;$15AFD7 |
    AND.W #$0002                  ;$15AFDA |
    BEQ CODE_15AFD3               ;$15AFDD |
    BRA CODE_15B002               ;$15AFDF |

CODE_15AFE1:
    LDA.W $7A8F                   ;$15AFE1 |
    AND.W #$0018                  ;$15AFE4 |
    CMP.W #$0018                  ;$15AFE7 |
    BEQ CODE_15B002               ;$15AFEA |
    BRA CODE_15AFD3               ;$15AFEC |

CODE_15AFEE:
    LDA.W $7A8F                   ;$15AFEE |
    AND.W #$0020                  ;$15AFF1 |
    BEQ CODE_15AFD3               ;$15AFF4 |
    BRA CODE_15B002               ;$15AFF6 |

CODE_15AFF8:
    LDA.W $7A8F                   ;$15AFF8 |
    AND.W #$0040                  ;$15AFFB |
    BEQ CODE_15AFD3               ;$15AFFE |
    BRA CODE_15B002               ;$15B000 |

CODE_15B002:
    LDX.W Obj_VAR4,Y              ;$15B002 |
    STX.W $7A91                   ;$15B005 |
    LDA.W #$0003                  ;$15B008 |
    JSL.L CODE_FL_CABD8B          ;$15B00B |
    LDA.W #$FFFF                  ;$15B00F |
    RTL                           ;$15B012 |

DATA16_CAB013:
    dw $0000,$0000,$0000,$0002    ;$15B013 |
    dw $0002,$0018,$0020,$0040    ;$15B01B |

    LDX.W Obj_VAR4,Y              ;$15B023 |
    LDA.L DATA8_CAB034,X          ;$15B026 |
    AND.W #$00FF                  ;$15B02A |
    JSR.W CODE_FN_15B92A          ;$15B02D |
    JML.L CODE_FL_CAB90B          ;$15B030 |

DATA8_CAB034:
    db $00,$01,$02,$03,$04,$05,$06,$07;$15B034 |

    LDA.W $7A93                   ;$15B03C |
    EOR.W $7A8F                   ;$15B03F |
    STA.W Obj_VAR3,Y              ;$15B042 |
    RTL                           ;$15B045 |
    LDA.W $7A8F                   ;$15B046 |
    STA.W $7A93                   ;$15B049 |
    RTL                           ;$15B04C |
    LDA.W $7A91                   ;$15B04D |
    ASL A                         ;$15B050 |
    TAX                           ;$15B051 |
    LDA.L DATA8_CAB2C6,X          ;$15B052 |
    LDX.W #$00CA                  ;$15B056 |
    JSL.L LoadDMATable            ;$15B059 |
    LDA.W $7A91                   ;$15B05D |
    CMP.W #$0007                  ;$15B060 |

CODE_95B063:
    BCS CODE_95B063               ;$15B063 |
    ASL A                         ;$15B065 |
    TAX                           ;$15B066 |
    JMP.W (DATA8_15B06A,X)        ;$15B067 |

DATA8_15B06A:
    db $78,$B0,$A2,$B0,$D1,$B0,$8D,$B1;$15B06A |
    db $17,$B2,$59,$B2,$AF,$B2    ;$15B072 |
    LDA.W $7A93                   ;$15B078 |
    AND.W #$0001                  ;$15B07B |
    BEQ CODE_95B08A               ;$15B07E |
    LDX.W $7A91                   ;$15B080 |
    LDA.W #$0001                  ;$15B083 |
    JSL.L CODE_FL_CABD8B          ;$15B086 |

CODE_95B08A:
    LDA.W $7AEB                   ;$15B08A |
    LDY.W $7AED                   ;$15B08D |
    JSL.L CODE_FL_CFB2E2          ;$15B090 |
    LDX.W #$0010                  ;$15B094 |
    LDA.W #$0007                  ;$15B097 |
    JSL.L CODE_FL_CAB3FB          ;$15B09A |
    JML.L CODE_JL_CAB35F          ;$15B09E |
    LDA.W $7A93                   ;$15B0A2 |
    AND.W #$0002                  ;$15B0A5 |
    BEQ CODE_95B0B4               ;$15B0A8 |
    LDX.W $7A91                   ;$15B0AA |
    LDA.W #$0001                  ;$15B0AD |
    JSL.L CODE_FL_CABD8B          ;$15B0B0 |

CODE_95B0B4:
    LDA.W $7AEF                   ;$15B0B4 |
    LDY.W $7AF1                   ;$15B0B7 |
    JSL.L CODE_FL_CFB2E2          ;$15B0BA |
    LDX.W #$000F                  ;$15B0BE |
    LDA.W #$0008                  ;$15B0C1 |
    JSL.L CODE_FL_CAB3FB          ;$15B0C4 |
    LDA.W #$0003                  ;$15B0C8 |
    STA.B IdentifySNES            ;$15B0CB |
    JML.L CODE_JL_CAB35F          ;$15B0CD |
    LDA.W $7A93                   ;$15B0D1 |
    AND.W #$0004                  ;$15B0D4 |
    BEQ CODE_15B0E3               ;$15B0D7 |
    LDX.W $7A91                   ;$15B0D9 |
    LDA.W #$0001                  ;$15B0DC |
    JSL.L CODE_FL_CABD8B          ;$15B0DF |

CODE_15B0E3:
    LDA.W $7B03                   ;$15B0E3 |
    LDX.W #$000A                  ;$15B0E6 |
    JSL.L CODE_FL_00A5F7          ;$15B0E9 |
    LDA.W $32E6                   ;$15B0ED |
    STA.W ObjVar4_Temp            ;$15B0F0 |
    LDX.W #$A0C0                  ;$15B0F3 |
    LDA.W #$0002                  ;$15B0F6 |
    JSL.L CODE_FL_CABD8B          ;$15B0F9 |
    LDA.W $32E4                   ;$15B0FD |
    BEQ CODE_15B12B               ;$15B100 |
    LDX.W #$000A                  ;$15B102 |
    JSL.L CODE_FL_00A5F7          ;$15B105 |
    LDA.W $32E6                   ;$15B109 |
    STA.W ObjVar4_Temp            ;$15B10C |
    LDX.W #$90C0                  ;$15B10F |
    LDA.W #$0002                  ;$15B112 |
    JSL.L CODE_FL_CABD8B          ;$15B115 |
    LDA.W $32E4                   ;$15B119 |
    BEQ CODE_15B12B               ;$15B11C |
    STA.W ObjVar4_Temp            ;$15B11E |
    LDX.W #$80C0                  ;$15B121 |
    LDA.W #$0002                  ;$15B124 |
    JSL.L CODE_FL_CABD8B          ;$15B127 |

CODE_15B12B:
    LDA.W $7B00                   ;$15B12B |
    AND.W #$00FF                  ;$15B12E |
    LDX.W #$000A                  ;$15B131 |
    JSL.L CODE_FL_00A5F7          ;$15B134 |
    LDA.W $32E6                   ;$15B138 |
    STA.W ObjVar4_Temp            ;$15B13B |
    LDX.W #$30C0                  ;$15B13E |
    LDA.W #$0002                  ;$15B141 |
    JSL.L CODE_FL_CABD8B          ;$15B144 |
    LDA.W $32E4                   ;$15B148 |
    BEQ CODE_15B15A               ;$15B14B |
    STA.W ObjVar4_Temp            ;$15B14D |
    LDX.W #$20C0                  ;$15B150 |
    LDA.W #$0002                  ;$15B153 |
    JSL.L CODE_FL_CABD8B          ;$15B156 |

CODE_15B15A:
    LDA.W $7B01                   ;$15B15A |
    AND.W #$00FF                  ;$15B15D |
    LDX.W #$000A                  ;$15B160 |
    JSL.L CODE_FL_00A5F7          ;$15B163 |
    LDA.W $32E6                   ;$15B167 |
    STA.W ObjVar4_Temp            ;$15B16A |
    LDX.W #$60C0                  ;$15B16D |
    LDA.W #$0002                  ;$15B170 |
    JSL.L CODE_FL_CABD8B          ;$15B173 |
    LDA.W $32E4                   ;$15B177 |
    BEQ CODE_15B189               ;$15B17A |
    STA.W ObjVar4_Temp            ;$15B17C |
    LDX.W #$50C0                  ;$15B17F |
    LDA.W #$0002                  ;$15B182 |
    JSL.L CODE_FL_CABD8B          ;$15B185 |

CODE_15B189:
    JML.L CODE_JL_CAB35F          ;$15B189 |

    LDA.W $7A93                   ;$15B18D |
    AND.W #$0008                  ;$15B190 |
    BEQ CODE_15B19F               ;$15B193 |
    LDX.W $7A91                   ;$15B195 |
    LDA.W #$0001                  ;$15B198 |
    JSL.L CODE_FL_CABD8B          ;$15B19B |

CODE_15B19F:
    LDA.W $7B13                   ;$15B19F |
    AND.W #$00FF                  ;$15B1A2 |
    LDX.W #$000A                  ;$15B1A5 |
    JSL.L CODE_FL_00A5F7          ;$15B1A8 |
    LDA.W $32E6                   ;$15B1AC |
    STA.W ObjVar4_Temp            ;$15B1AF |
    LDX.W #$45C0                  ;$15B1B2 |
    LDA.W #$0002                  ;$15B1B5 |
    JSL.L CODE_FL_CABD8B          ;$15B1B8 |
    LDA.W $32E4                   ;$15B1BC |
    BEQ CODE_15B1CE               ;$15B1BF |
    STA.W ObjVar4_Temp            ;$15B1C1 |
    LDX.W #$38C0                  ;$15B1C4 |
    LDA.W #$0002                  ;$15B1C7 |
    JSL.L CODE_FL_CABD8B          ;$15B1CA |

CODE_15B1CE:
    LDA.W $7B0F                   ;$15B1CE |
    LDY.W $7B11                   ;$15B1D1 |
    JSL.L CODE_FL_CFB2E2          ;$15B1D4 |
    LDX.W #$0000                  ;$15B1D8 |

CODE_15B1DB:
    LDA.W $3700,X                 ;$15B1DB |
    BNE CODE_15B1E7               ;$15B1DE |
    INX                           ;$15B1E0 |
    INX                           ;$15B1E1 |
    CPX.W #$000C                  ;$15B1E2 |
    BNE CODE_15B1DB               ;$15B1E5 |

CODE_15B1E7:
    TXA                           ;$15B1E7 |
    LSR A                         ;$15B1E8 |

CODE_15B1E9:
    PHA                           ;$15B1E9 |
    ASL A                         ;$15B1EA |
    TAX                           ;$15B1EB |
    LDA.W $3700,X                 ;$15B1EC |
    STA.W ObjVar4_Temp            ;$15B1EF |
    LDA.L DATA8_CAB209,X          ;$15B1F2 |
    TAX                           ;$15B1F6 |
    LDA.W #$0002                  ;$15B1F7 |
    JSL.L CODE_FL_CABD8B          ;$15B1FA |
    PLA                           ;$15B1FE |
    INC A                         ;$15B1FF |
    CMP.W #$0007                  ;$15B200 |
    BNE CODE_15B1E9               ;$15B203 |
    JML.L CODE_JL_CAB35F          ;$15B205 |
    db $C0,$58,$C0,$64,$C0,$70,$C0,$7C;$15B209 |
    db $C0,$88,$C0,$94,$C0,$A0    ;$15B211 |
    LDA.W $7A93                   ;$15B217 |
    AND.W #$0010                  ;$15B21A |
    BEQ CODE_15B229               ;$15B21D |
    LDX.W $7A91                   ;$15B21F |
    LDA.W #$0001                  ;$15B222 |
    JSL.L CODE_FL_CABD8B          ;$15B225 |

CODE_15B229:
    LDA.W $7B15                   ;$15B229 |
    STA.W $32E4                   ;$15B22C |
    LDA.W $7B17                   ;$15B22F |
    STA.W $32E6                   ;$15B232 |
    LDA.W #$0003                  ;$15B235 |
    JSL.L CODE_FL_06F87B          ;$15B238 |
    LDA.W #$0003                  ;$15B23C |
    LDA.W $32E4                   ;$15B23F |
    LDY.W $32E6                   ;$15B242 |
    JSL.L CODE_FL_CFB2E2          ;$15B245 |
    LDX.W #$0012                  ;$15B249 |
    LDA.W #$0008                  ;$15B24C |
    JSL.L CODE_FL_CAB4D1          ;$15B24F |
    LDY.B $39                     ;$15B253 |
    JML.L CODE_JL_CAB35F          ;$15B255 |
    LDA.W $7A93                   ;$15B259 |
    AND.W #$0020                  ;$15B25C |
    BEQ CODE_95B26B               ;$15B25F |
    LDX.W $7A91                   ;$15B261 |
    LDA.W #$0001                  ;$15B264 |
    JSL.L CODE_FL_CABD8B          ;$15B267 |

CODE_95B26B:
    LDA.W #$0002                  ;$15B26B |
    STA.B IdentifySNES            ;$15B26E |
    LDA.W $7B20                   ;$15B270 |
    AND.W #$00FF                  ;$15B273 |
    LDX.W #$0012                  ;$15B276 |
    LDY.W #$000A                  ;$15B279 |
    JSL.L CODE_FL_CAB587          ;$15B27C |
    LDA.W #$0003                  ;$15B280 |
    STA.B IdentifySNES            ;$15B283 |
    LDX.W SaveFile_Offset         ;$15B285 |
    JSL.L CODE_FL_00F0FC          ;$15B288 |
    ASL A                         ;$15B28C |
    ASL A                         ;$15B28D |
    LDX.W #$0013                  ;$15B28E |
    LDY.W #$0007                  ;$15B291 |
    JSL.L CODE_FL_CAB587          ;$15B294 |
    LDA.W #$0001                  ;$15B298 |
    STA.B IdentifySNES            ;$15B29B |
    JSL.L CODE_FL_CAB34B          ;$15B29D |
    LDX.W #$000F                  ;$15B2A1 |
    LDY.W #$0007                  ;$15B2A4 |
    JSL.L CODE_FL_CAB587          ;$15B2A7 |
    JML.L CODE_JL_CAB35F          ;$15B2AB |
    LDA.W $7A93                   ;$15B2AF |
    AND.W #$0040                  ;$15B2B2 |
    BEQ CODE_15B2C2               ;$15B2B5 |
    LDX.W $7A91                   ;$15B2B7 |
    INX                           ;$15B2BA |
    LDA.W #$0001                  ;$15B2BB |
    JSL.L CODE_FL_CABD8B          ;$15B2BE |

CODE_15B2C2:
    JML.L CODE_JL_CAB35F          ;$15B2C2 |
    db $D4,$B2,$E5,$B2,$F6,$B2,$07,$B3;$15B2C6 |
    db $18,$B3,$29,$B3,$3A,$B3,$89,$00;$15B2CE |
    db $04,$9A,$B6,$EA,$00,$40,$0F,$00;$15B2D6 |
    db $04,$00,$24,$7E,$00,$40,$FF,$89;$15B2DE |
    db $00,$04,$66,$5B,$EA,$00,$40,$0F;$15B2E6 |
    db $00,$04,$00,$24,$7E,$00,$40,$FF;$15B2EE |
    db $89,$00,$04,$9C,$8A,$EA,$00,$40;$15B2F6 |
    db $0F,$00,$04,$00,$24,$7E,$00,$40;$15B2FE |
    db $FF,$89,$00,$04,$82,$82,$EA,$00;$15B306 |
    db $40,$0F,$00,$04,$00,$24,$7E,$00;$15B30E |
    db $40,$FF,$89,$00,$04,$F4,$66,$EA;$15B316 |
    db $00,$40,$0F,$00,$04,$00,$24,$7E;$15B31E |
    db $00,$40,$FF,$89,$00,$04,$07,$2C;$15B326 |
    db $EA,$00,$40,$0F,$00,$04,$00,$24;$15B32E |
    db $7E,$00,$40,$FF,$89,$00,$04,$38;$15B336 |
    db $8D,$EA,$00,$40,$0F,$00,$04,$00;$15B33E |
    db $24,$7E,$00,$40,$FF        ;$15B346 |
    LDA.W $7A6B                   ;$15B34B |
    AND.W #$007F                  ;$15B34E |
    LDX.W #$0000                  ;$15B351 |

CODE_95B354:
    LSR A                         ;$15B354 |
    BCC CODE_95B358               ;$15B355 |
    INX                           ;$15B357 |

CODE_95B358:
    CMP.W #$0000                  ;$15B358 |
    BNE CODE_95B354               ;$15B35B |
    TXA                           ;$15B35D |
    RTL                           ;$15B35E |
    LDA.W #$3000                  ;$15B35F |
    STA.B IdentifySNES            ;$15B362 |
    LDA.W #$007E                  ;$15B364 |
    STA.B DSP_P                   ;$15B367 |
    LDA.W $7A91                   ;$15B369 |
    ASL A                         ;$15B36C |
    ASL A                         ;$15B36D |
    TAX                           ;$15B36E |
    LDA.L DATA8_CAB3CA,X          ;$15B36F |
    PHA                           ;$15B373 |
    LDA.L DATA8_CAB3CC,X          ;$15B374 |
    PLX                           ;$15B378 |
    JSL.L CODE_FL_CFA8B8          ;$15B379 |
    LDA.W $7A91                   ;$15B37D |
    PHA                           ;$15B380 |
    ASL A                         ;$15B381 |
    TAX                           ;$15B382 |
    LDA.L DATA8_CAB3ED,X          ;$15B383 |
    STA.B DSP_SRCN                ;$15B387 |
    LDA.W #$3000                  ;$15B389 |
    STA.B $06                     ;$15B38C |
    PLX                           ;$15B38E |
    LDA.L DATA8_CAB3E6,X          ;$15B38F |
    AND.W #$00FF                  ;$15B393 |

CODE_95B396:
    PHA                           ;$15B396 |
    LDA.W #$0003                  ;$15B397 |
    STA.B $31                     ;$15B39A |
    LDA.W #$002C                  ;$15B39C |
    STA.B $32                     ;$15B39F |
    LDA.B $06                     ;$15B3A1 |
    STA.B $34                     ;$15B3A3 |
    SEP #$20                      ;$15B3A5 |
    LDA.B #$7E                    ;$15B3A7 |
    STA.B P1_ResetRepeat          ;$15B3A9 |
    REP #$20                      ;$15B3AB |
    LDA.B DSP_SRCN                ;$15B3AD |
    STA.B $37                     ;$15B3AF |
    JSL.L WriteToDMABuffer     ;$15B3B1 |
    LDA.B DSP_SRCN                ;$15B3B5 |
    CLC                           ;$15B3B7 |
    ADC.W #$0020                  ;$15B3B8 |
    STA.B DSP_SRCN                ;$15B3BB |
    LDA.B $06                     ;$15B3BD |
    CLC                           ;$15B3BF |
    ADC.W #$002C                  ;$15B3C0 |
    STA.B $06                     ;$15B3C3 |
    PLA                           ;$15B3C5 |
    DEC A                         ;$15B3C6 |
    BNE CODE_95B396               ;$15B3C7 |
    RTL                           ;$15B3C9 |
    db $05,$D5,$EA,$00,$22,$14,$EB,$00;$15B3CA |
    db $C6,$C9,$EB,$00,$4C,$23,$EC,$00;$15B3D2 |
    db $BF,$0F,$EC,$00,$54,$A0,$EC,$00;$15B3DA |
    db $8A,$BF,$EB,$00,$10,$0E,$0D,$0B;$15B3E2 |
    db $0D,$0D,$0D,$42,$49,$82,$49,$22;$15B3EA |
    db $49,$62,$49,$62,$49,$82,$49,$82;$15B3F2 |
    db $49                        ;$15B3FA |
    STX.B RAM_CommandWaitLoop     ;$15B3FB |
    ASL A                         ;$15B3FD |
    ASL A                         ;$15B3FE |
    ASL A                         ;$15B3FF |
    ASL A                         ;$15B400 |
    ASL A                         ;$15B401 |
    CLC                           ;$15B402 |
    ADC.B RAM_CommandWaitLoop     ;$15B403 |
    CLC                           ;$15B405 |
    ADC.W #$4000                  ;$15B406 |
    STA.B RAM_CommandWaitLoop     ;$15B409 |
    LDY.W #$0000                  ;$15B40B |
    LDA.B DSP_P                   ;$15B40E |
    BNE CODE_95B41D               ;$15B410 |
    CPY.W #$0000                  ;$15B412 |
    BNE CODE_95B41D               ;$15B415 |
    LDA.L DATA8_E2FFFB            ;$15B417 |
    BRA CODE_95B426               ;$15B41B |

CODE_95B41D:
    LDY.W #$FFFF                  ;$15B41D |
    ASL A                         ;$15B420 |
    TAX                           ;$15B421 |
    LDA.L DATA8_EFE604,X          ;$15B422 |

CODE_95B426:
    LDX.B RAM_CommandWaitLoop     ;$15B426 |
    JSL.L WriteTile               ;$15B428 |
    INC.B RAM_CommandWaitLoop     ;$15B42C |
    LDA.B DSP_SRCN                ;$15B42E |
    BNE CODE_95B43D               ;$15B430 |
    CPY.W #$0000                  ;$15B432 |
    BNE CODE_95B43D               ;$15B435 |
    LDA.L DATA8_E2FFFB            ;$15B437 |
    BRA CODE_95B446               ;$15B43B |

CODE_95B43D:
    LDY.W #$FFFF                  ;$15B43D |
    ASL A                         ;$15B440 |
    TAX                           ;$15B441 |
    LDA.L DATA8_EFE604,X          ;$15B442 |

CODE_95B446:
    LDX.B RAM_CommandWaitLoop     ;$15B446 |
    JSL.L WriteTile               ;$15B448 |
    INC.B RAM_CommandWaitLoop     ;$15B44C |
    LDA.B $06                     ;$15B44E |
    BNE CODE_95B45D               ;$15B450 |
    CPY.W #$0000                  ;$15B452 |
    BNE CODE_95B45D               ;$15B455 |
    LDA.L DATA8_E2FFFB            ;$15B457 |
    BRA CODE_95B466               ;$15B45B |

CODE_95B45D:
    LDY.W #$FFFF                  ;$15B45D |
    ASL A                         ;$15B460 |
    TAX                           ;$15B461 |
    LDA.L DATA8_EFE604,X          ;$15B462 |

CODE_95B466:
    LDX.B RAM_CommandWaitLoop     ;$15B466 |
    JSL.L WriteTile               ;$15B468 |
    INC.B RAM_CommandWaitLoop     ;$15B46C |
    LDA.B DSP_ENVX                ;$15B46E |
    BNE CODE_95B47D               ;$15B470 |
    CPY.W #$0000                  ;$15B472 |
    BNE CODE_95B47D               ;$15B475 |
    LDA.L DATA8_E2FFFB            ;$15B477 |
    BRA CODE_95B486               ;$15B47B |

CODE_95B47D:
    LDY.W #$FFFF                  ;$15B47D |
    ASL A                         ;$15B480 |
    TAX                           ;$15B481 |
    LDA.L DATA8_EFE604,X          ;$15B482 |

CODE_95B486:
    LDX.B RAM_CommandWaitLoop     ;$15B486 |
    JSL.L WriteTile               ;$15B488 |
    INC.B RAM_CommandWaitLoop     ;$15B48C |
    LDA.B $0A                     ;$15B48E |
    BNE CODE_95B49D               ;$15B490 |
    CPY.W #$0000                  ;$15B492 |
    BNE CODE_95B49D               ;$15B495 |
    LDA.L DATA8_E2FFFB            ;$15B497 |
    BRA CODE_95B4A6               ;$15B49B |

CODE_95B49D:
    LDY.W #$FFFF                  ;$15B49D |
    ASL A                         ;$15B4A0 |
    TAX                           ;$15B4A1 |
    LDA.L DATA8_EFE604,X          ;$15B4A2 |

CODE_95B4A6:
    LDX.B RAM_CommandWaitLoop     ;$15B4A6 |
    JSL.L WriteTile               ;$15B4A8 |
    INC.B RAM_CommandWaitLoop     ;$15B4AC |
    LDA.B DSP_MVOLL               ;$15B4AE |
    BNE CODE_95B4BD               ;$15B4B0 |
    CPY.W #$0000                  ;$15B4B2 |
    BNE CODE_95B4BD               ;$15B4B5 |
    LDA.L DATA8_E2FFFB            ;$15B4B7 |
    BRA CODE_95B4C6               ;$15B4BB |

CODE_95B4BD:
    LDY.W #$FFFF                  ;$15B4BD |
    ASL A                         ;$15B4C0 |
    TAX                           ;$15B4C1 |
    LDA.L DATA8_EFE604,X          ;$15B4C2 |

CODE_95B4C6:
    LDX.B RAM_CommandWaitLoop     ;$15B4C6 |
    JSL.L WriteTile               ;$15B4C8 |
    INC.B RAM_CommandWaitLoop     ;$15B4CC |
    LDY.B $39                     ;$15B4CE |
    RTL                           ;$15B4D0 |
    STX.B RAM_CommandWaitLoop     ;$15B4D1 |
    ASL A                         ;$15B4D3 |
    ASL A                         ;$15B4D4 |
    ASL A                         ;$15B4D5 |
    ASL A                         ;$15B4D6 |
    ASL A                         ;$15B4D7 |
    CLC                           ;$15B4D8 |
    ADC.B RAM_CommandWaitLoop     ;$15B4D9 |
    CLC                           ;$15B4DB |
    ADC.W #$4000                  ;$15B4DC |
    STA.B RAM_CommandWaitLoop     ;$15B4DF |
    LDY.W #$0000                  ;$15B4E1 |
    LDA.B DSP_SRCN                ;$15B4E4 |
    BNE CODE_15B4F3               ;$15B4E6 |
    CPY.W #$0000                  ;$15B4E8 |
    BNE CODE_15B4F3               ;$15B4EB |
    LDA.L DATA8_E2FFFB            ;$15B4ED |
    BRA CODE_15B4FC               ;$15B4F1 |


CODE_15B4F3:
    LDY.W #$FFFF                  ;$15B4F3 |
    ASL A                         ;$15B4F6 |
    TAX                           ;$15B4F7 |
    LDA.L DATA8_EFE604,X          ;$15B4F8 |

CODE_15B4FC:
    LDX.B RAM_CommandWaitLoop     ;$15B4FC |
    JSL.L WriteTile               ;$15B4FE |
    INC.B RAM_CommandWaitLoop     ;$15B502 |
    LDA.B $06                     ;$15B504 |
    BNE CODE_15B513               ;$15B506 |
    CPY.W #$0000                  ;$15B508 |
    BNE CODE_15B513               ;$15B50B |
    LDA.L DATA8_E2FFFB            ;$15B50D |
    BRA CODE_15B51C               ;$15B511 |


CODE_15B513:
    LDY.W #$FFFF                  ;$15B513 |
    ASL A                         ;$15B516 |
    TAX                           ;$15B517 |
    LDA.L DATA8_EFE604,X          ;$15B518 |

CODE_15B51C:
    LDX.B RAM_CommandWaitLoop     ;$15B51C |
    JSL.L WriteTile               ;$15B51E |
    INC.B RAM_CommandWaitLoop     ;$15B522 |
    LDA.B DSP_ENVX                ;$15B524 |
    BNE CODE_15B533               ;$15B526 |
    CPY.W #$0000                  ;$15B528 |
    BNE CODE_15B533               ;$15B52B |
    LDA.L DATA8_E2FFFB            ;$15B52D |
    BRA CODE_15B53C               ;$15B531 |


CODE_15B533:
    LDY.W #$FFFF                  ;$15B533 |
    ASL A                         ;$15B536 |
    TAX                           ;$15B537 |
    LDA.L DATA8_EFE604,X          ;$15B538 |

CODE_15B53C:
    LDX.B RAM_CommandWaitLoop     ;$15B53C |
    JSL.L WriteTile               ;$15B53E |
    INC.B RAM_CommandWaitLoop     ;$15B542 |
    LDA.B $0A                     ;$15B544 |
    BNE CODE_15B553               ;$15B546 |
    CPY.W #$0000                  ;$15B548 |
    BNE CODE_15B553               ;$15B54B |
    LDA.L DATA8_E2FFFB            ;$15B54D |
    BRA CODE_15B55C               ;$15B551 |


CODE_15B553:
    LDY.W #$FFFF                  ;$15B553 |
    ASL A                         ;$15B556 |
    TAX                           ;$15B557 |
    LDA.L DATA8_EFE604,X          ;$15B558 |

CODE_15B55C:
    LDX.B RAM_CommandWaitLoop     ;$15B55C |
    JSL.L WriteTile               ;$15B55E |
    INC.B RAM_CommandWaitLoop     ;$15B562 |
    LDA.B DSP_MVOLL               ;$15B564 |
    BNE CODE_15B573               ;$15B566 |
    CPY.W #$0000                  ;$15B568 |
    BNE CODE_15B573               ;$15B56B |
    LDA.L DATA8_E2FFFB            ;$15B56D |
    BRA CODE_15B57C               ;$15B571 |


CODE_15B573:
    LDY.W #$FFFF                  ;$15B573 |
    ASL A                         ;$15B576 |
    TAX                           ;$15B577 |
    LDA.L DATA8_EFE604,X          ;$15B578 |

CODE_15B57C:
    LDX.B RAM_CommandWaitLoop     ;$15B57C |
    JSL.L WriteTile               ;$15B57E |
    INC.B RAM_CommandWaitLoop     ;$15B582 |
    LDY.B $39                     ;$15B584 |
    RTL                           ;$15B586 |
    STA.B DSP_P                   ;$15B587 |
    STX.B DSP_SRCN                ;$15B589 |
    TYA                           ;$15B58B |
    ASL A                         ;$15B58C |
    ASL A                         ;$15B58D |
    ASL A                         ;$15B58E |
    ASL A                         ;$15B58F |
    ASL A                         ;$15B590 |
    CLC                           ;$15B591 |
    ADC.B DSP_SRCN                ;$15B592 |
    CLC                           ;$15B594 |
    ADC.W #$4000                  ;$15B595 |
    DEC.B IdentifySNES            ;$15B598 |
    CLC                           ;$15B59A |
    ADC.B IdentifySNES            ;$15B59B |
    STA.B DSP_SRCN                ;$15B59D |
    LDA.B DSP_P                   ;$15B59F |

CODE_95B5A1:
    LDX.W #$000A                  ;$15B5A1 |
    JSL.L CODE_FL_00A5F7          ;$15B5A4 |
    LDA.W $32E6                   ;$15B5A8 |
    ASL A                         ;$15B5AB |
    TAX                           ;$15B5AC |
    LDA.L DATA8_EFE604,X          ;$15B5AD |
    LDX.B DSP_SRCN                ;$15B5B1 |
    JSL.L WriteTile               ;$15B5B3 |
    LDA.W $32E4                   ;$15B5B7 |
    DEC.B DSP_SRCN                ;$15B5BA |
    DEC.B IdentifySNES            ;$15B5BC |
    BPL CODE_95B5A1               ;$15B5BE |
    LDY.B $39                     ;$15B5C0 |
    RTL                           ;$15B5C2 |
    db $14,$C0,$E5,$CD,$33,$40,$00,$C0;$15B5C3 |
    db $CF,$B5,$CA,$01            ;$15B5CB |
    LDA.W #$0017                  ;$15B5CF |
    CLC                           ;$15B5D2 |
    ADC.W Obj_VAR4,Y              ;$15B5D3 |
    STA.W Obj_Pose,Y              ;$15B5D6 |
    LDA.W Obj_VAR3,Y              ;$15B5D9 |
    XBA                           ;$15B5DC |
    AND.W #$00FF                  ;$15B5DD |
    STA.W Obj_XPosition,Y         ;$15B5E0 |
    STA.W Obj_XPositionMirror,Y   ;$15B5E3 |
    LDA.W Obj_VAR3,Y              ;$15B5E6 |
    AND.W #$00FF                  ;$15B5E9 |
    STA.W Obj_YPosition,Y         ;$15B5EC |
    STA.W Obj_YPositionMirror,Y   ;$15B5EF |
    RTL                           ;$15B5F2 |
    db $15,$72,$AB,$14,$C0,$E5,$CD,$33;$15B5F3 |
    db $40,$00,$03,$06,$B6,$CA,$19,$00;$15B5FB |
    db $00,$00,$01                ;$15B603 |
    LDA.W $7A83                   ;$15B606 |
    BEQ CODE_95B62F               ;$15B609 |
    JSR.W CODE_FN_15B66A          ;$15B60B |
    JSR.W CODE_FN_15B630          ;$15B60E |
    JSR.W CODE_FN_15B63C          ;$15B611 |
    JSR.W CODE_FN_15B65B          ;$15B614 |
    LDA.W $7A91                   ;$15B617 |
    CMP.W $7A87                   ;$15B61A |
    BEQ CODE_95B62F               ;$15B61D |
    STA.W $7A87                   ;$15B61F |
    JSL.L CODE_FL_CAB8A2          ;$15B622 |
    LDA.W #$008F                  ;$15B626 |
    JSL.L PlaySFX                 ;$15B629 |
    LDY.B $39                     ;$15B62D |

CODE_95B62F:
    RTL                           ;$15B62F |

CODE_FN_15B630:
    LDA.W P1_Frame                ;$15B630 |
    AND.W #$5080                  ;$15B633 |
    BEQ CODE_95B63B               ;$15B636 |
    STZ.W $7A83                   ;$15B638 |

CODE_95B63B:
    RTS                           ;$15B63B |

CODE_FN_15B63C:
    LDY.B $39                     ;$15B63C |
    LDA.W $7A91                   ;$15B63E |
    ASL A                         ;$15B641 |
    ASL A                         ;$15B642 |
    TAX                           ;$15B643 |
    LDA.L CorkboardCursorCoordinates_LUT,X ;$15B644 |
    STA.W Obj_XPosition,Y         ;$15B648 |
    STA.W Obj_XPositionMirror,Y   ;$15B64B |
    INX                           ;$15B64E |
    INX                           ;$15B64F |
    LDA.L CorkboardCursorCoordinates_LUT,X ;$15B650 |
    STA.W Obj_YPosition,Y         ;$15B654 |
    STA.W Obj_YPositionMirror,Y   ;$15B657 |
    RTS                           ;$15B65A |

CODE_FN_15B65B:
    LDY.B $39                     ;$15B65B |
    LDA.W $7A91                   ;$15B65D |
    ASL A                         ;$15B660 |
    TAX                           ;$15B661 |
    LDA.L CorkboardCursorObjSlot_LUT,X     ;$15B662 |
    STA.W Obj_Pose,Y              ;$15B666 |
    RTS                           ;$15B669 |

CODE_FN_15B66A:
    LDA.W P1_Repeat               ;$15B66A |
    XBA                           ;$15B66D |
    AND.W #$000F                  ;$15B66E |
    BEQ CODE_95B6A8               ;$15B671 |
    TAX                           ;$15B673 |
    LDA.L CorkboardCursorButtonMap_LUT,X   ;$15B674 |
    AND.W #$00FF                  ;$15B678 |
    CMP.W #$00FF                  ;$15B67B |
    BEQ CODE_95B6A8               ;$15B67E |
    STA.B IdentifySNES            ;$15B680 |
    LDA.W $7A91                   ;$15B682 |
    ASL A                         ;$15B685 |
    ASL A                         ;$15B686 |
    CLC                           ;$15B687 |
    ADC.B IdentifySNES            ;$15B688 |
    TAY                           ;$15B68A |
    LDA.W $7A85                   ;$15B68B |
    ASL A                         ;$15B68E |
    TAX                           ;$15B68F |
    LDA.L DATA8_CABE22,X          ;$15B690 |
    STA.B SNES_WaitForCommand_waitForMessage;$15B694 |
    LDA.W #$00CA                  ;$15B696 |
    STA.B $16                     ;$15B699 |
    LDA.B [SNES_WaitForCommand_waitForMessage],Y;$15B69B |
    AND.W #$00FF                  ;$15B69D |
    CMP.W #$00FF                  ;$15B6A0 |
    BEQ CODE_95B6A8               ;$15B6A3 |
    STA.W $7A91                   ;$15B6A5 |

CODE_95B6A8:
    RTS                           ;$15B6A8 |

CorkboardCursorButtonMap_LUT:
    db $FF,$01,$03,$FF            ;	This table provides what buttons move the corkboard in which directions
    db $02,$FF,$FF,$FF
    db $00,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF

    dw $0001,$0002,$0004,$0008    ;$15B6B9 |
    dw $0010,$0020,$0040,$0080    ;$15B6C1 |
    dw $0100,$0200,$0400,$0800    ;$15B6C9 |

CorkboardCursorCoordinates_LUT:
    dw $0018, $0010       ; Spring Breeze
    dw $0010, $0050
    dw $0058, $0008
    dw $0048, $0048
    dw $0080, $0040
    dw $00B0, $0010
    dw $00C0, $0080
    dw $0070, $00A0
    dw $0098, $0098
    dw $0088, $0088
    dw $0048, $00A0

CorkboardCursorObjSlot_LUT:
    dw $0003              ;	Spring Breeze
    dw $0005
    dw $0004
    dw $0006
    dw $0007
    dw $0008
    dw $0009
    dw $000A
    dw $000C
    dw $000C
    dw $000B

DATA16_CAB713:
    dw $0000
    dw $000D
    dw $000E
    dw $000F
    dw $0010
    dw $0011
    dw $0012
    dw $0013
    dw $C014

    db $E5,$CD,$33,$41,$00,$C0,$53,$B7;$15B725 |
    db $CA,$40,$FF,$02,$3C,$05,$28,$C1;$15B72D |
    db $46,$B7,$CA,$41,$FF,$07,$C1,$46;$15B735 |
    db $B7,$CA,$C0,$68,$B7,$CA,$41,$FF;$15B73D |
    db $00                        ;$15B745 |

    LDA.W Obj_VAR3,Y              ;$15B746 |
    ASL A                         ;$15B749 |
    TAX                           ;$15B74A |
    LDA.L DATA16_CAB713,X         ;$15B74B |
    STA.W Obj_Pose,Y              ;$15B74F |
    RTL                           ;$15B752 |
    LDA.W Obj_VAR3,Y              ;$15B753 |
    ASL A                         ;$15B756 |
    ASL A                         ;$15B757 |
    TAX                           ;$15B758 |
    LDA.L CorkboardCursorCoordinates_LUT,X    ;$15B759 |
    STA.W Obj_XPosition,Y         ;$15B75D |
    LDA.L CorkboardCursorCoordinates_LUT+2,X  ;$15B760 |
    STA.W Obj_YPosition,Y         ;$15B764 |
    RTL                           ;$15B767 |
    LDA.W Obj_VAR3,Y              ;$15B768 |
    ASL A                         ;$15B76B |
    TAX                           ;$15B76C |
    LDA.L DATA8_CAB779,X          ;$15B76D |
    BMI CODE_15B778               ;$15B771 |
    TAX                           ;$15B773 |
    JML.L DestroyObject_L         ;$15B774 |

CODE_15B778:
    RTL                           ;$15B778 |

DATA8_CAB779:
    db $FF,$FF,$FF,$FF,$FF,$FF,$06,$00;$15B779 |
    db $08,$00,$0A,$00,$FF,$FF,$15,$72;$15B781 |
    db $AB,$14,$C0,$E5,$CD,$33,$40,$00;$15B789 |
    db $C0,$96,$B7,$CA,$01        ;$15B791 |

    LDX.W Obj_VAR3,Y              ;$15B796 |
    LDA.L DATA16_CAB7AF,X         ;$15B799 |
    STA.W Obj_XPosition,Y         ;$15B79D |
    LDA.L DATA16_CAB7B5,X         ;$15B7A0 |
    STA.W Obj_YPosition,Y         ;$15B7A4 |
    LDA.L DATA16_CAB7BB,X         ;$15B7A7 |
    STA.W Obj_Pose,Y              ;$15B7AB |
    RTL                           ;$15B7AE |

DATA16_CAB7AF:
    dw $0068,$00B8,$00D0

DATA16_CAB7B5:
    dw $0050
    dw $004D
    dw $0020

DATA16_CAB7BB:
    dw $0000,$0001                ;$15B7B7 |
    dw $0002,$C014

DATA16_CAB7C3:
    dw $CDE5,$4033                ;$15B7BF |
    dw $C000                      ;$15B7C7 |
    dw $B7CD                      ;$15B7C9 | ; Pointer to below?
    dw $01CA                      ;$15B7CB |

CODE_15B7CD:
    LDA.W Obj_VAR3,Y              ;$15B7CD |
    CMP.W #$0002                  ;$15B7D0 |
    BNE CODE_95B7FC               ;$15B7D3 |
    SEP #$20                      ;$15B7D5 |
    LDA.W $7B00                   ;$15B7D7 |
    CLC                           ;$15B7DA |
    ADC.W $7B01                   ;$15B7DB |
    REP #$20                      ;$15B7DE |
    AND.W #$00FF                  ;$15B7E0 |
    BEQ CODE_15B7F7               ;$15B7E3 |
    LDA.W $7B02                   ;$15B7E5 |
    AND.W #$00FF                  ;$15B7E8 |
    BEQ CODE_15B7F2               ;$15B7EB |
    LDA.W #$0016                  ;$15B7ED |
    BRA CODE_15B7FF               ;$15B7F0 |

CODE_15B7F2:
    LDA.W #$0015                  ;$15B7F2 |
    BRA CODE_15B7FF               ;$15B7F5 |


CODE_15B7F7:
    LDA.W #$FFFF                  ;$15B7F7 |
    BRA CODE_15B7FF               ;$15B7FA |


CODE_95B7FC:
    LDA.W #$0026                  ;$15B7FC |

CODE_15B7FF:
    STA.W Obj_Pose,Y              ;$15B7FF |
    LDA.W Obj_VAR3,Y              ;$15B802 |
    ASL A                         ;$15B805 |
    TAX                           ;$15B806 |
    LDA.L DATA16_CAB816,X         ;$15B807 |
    STA.W Obj_XPosition,Y         ;$15B80B |
    LDA.L DATA16_CAB826,X         ;$15B80E |
    STA.W Obj_YPosition,Y         ;$15B812 |
    RTL                           ;$15B815 |

DATA16_CAB816:
    dw $0060,$005A,$0071,$0060    ;$15B816 |
    dw $0068,$005A,$0094,$0036    ;$15B81E |

DATA16_CAB826:
    dw $001A,$001A,$001A,$001A    ;$15B826 |
    dw $001A,$001A,$002A,$002A    ;$15B82E |

    dw $EC16,$14A6,$FFFF,$40FF    ;$15B836 |
    dw $19FF,$0000,$C100,$B84A    ;$15B83E |
    dw $0ECA,$B843                ;$15B846 |

    LDA.W Obj_VAR0,Y              ;$15B84A |
    ASL A                         ;$15B84D |
    CLC                           ;$15B84E |
    ADC.W #$BFB6                  ;$15B84F |
    LDX.W #$00CA                  ;$15B852 |
    LDY.W #$A102                  ;$15B855 |
    JSL.L WritePal                ;$15B858 |
    LDY.B $39                     ;$15B85C |
    LDA.W Obj_VAR0,Y              ;$15B85E |
    INC A                         ;$15B861 |
    CMP.W #$0005                  ;$15B862 |
    BCC CODE_95B86A               ;$15B865 |
    LDA.W #$0000                  ;$15B867 |

CODE_95B86A:
    STA.W Obj_VAR0,Y              ;$15B86A |
    RTL                           ;$15B86D |

GetUnlockedSubgameCount:
    LDA.W $7A91                   ;$15B86E |
    STA.W $7A87                   ;$15B871 |
    STZ.B IdentifySNES            ;$15B874 |
    INC.B IdentifySNES            ;$15B876 |
    LDA.W $7A93                   ;$15B878 |
    BIT.W #$0002                  ;$15B87B |
    BEQ CODE_95B882               ;$15B87E |
    INC.B IdentifySNES            ;$15B880 |

CODE_95B882:
    BIT.W #$0008                  ;$15B882 |
    BEQ CODE_95B88E               ;$15B885 |
    BIT.W #$0010                  ;$15B887 |
    BEQ CODE_95B88E               ;$15B88A |
    INC.B IdentifySNES            ;$15B88C |

CODE_95B88E:
    BIT.W #$0020                  ;$15B88E |
    BEQ CODE_95B895               ;$15B891 |
    INC.B IdentifySNES            ;$15B893 |

CODE_95B895:
    BIT.W #$0040                  ;$15B895 |
    BEQ CODE_95B89C               ;$15B898 |
    INC.B IdentifySNES            ;$15B89A |

CODE_95B89C:
    LDA.B IdentifySNES            ;$15B89C |
    STA.W $7A85                   ;$15B89E |
    RTL                           ;$15B8A1 |
    JSR.W CODE_FN_15B92A          ;$15B8A2 |
    JSL.L CODE_FL_CAB90B          ;$15B8A5 |
    RTL                           ;$15B8A9 |
    LDA.W $7A85                   ;$15B8AA |
    CMP.W #$0006                  ;$15B8AD |

CODE_95B8B0:
    BCS CODE_95B8B0               ;$15B8B0 |
    ASL A                         ;$15B8B2 |
    TAX                           ;$15B8B3 |
    JMP.W (PTR16_15B8B7,X)        ;$15B8B4 |
PTR16_15B8B7:
    dw CODE_15B8E1                ;$15B8B7 |
    dw CODE_15B8DB                ;$15B8B9 |
    dw CODE_15B8D5                ;$15B8BB |
    dw CODE_15B8CF                ;$15B8BD |
    dw CODE_15B8C9                ;$15B8BF |
    dw CODE_15B8C3                ;$15B8C1 |

CODE_15B8C3:
    LDA.W #$0007                  ;$15B8C3 |
    JSR.W CODE_FN_15B92A          ;$15B8C6 |

CODE_15B8C9:
    LDA.W #$0006                  ;$15B8C9 |
    JSR.W CODE_FN_15B92A          ;$15B8CC |

CODE_15B8CF:
    LDA.W #$0005                  ;$15B8CF |
    JSR.W CODE_FN_15B92A          ;$15B8D2 |

CODE_15B8D5:
    LDA.W #$0004                  ;$15B8D5 |
    JSR.W CODE_FN_15B92A          ;$15B8D8 |

CODE_15B8DB:
    LDA.W #$0003                  ;$15B8DB |
    JSR.W CODE_FN_15B92A          ;$15B8DE |

CODE_15B8E1:
    LDA.W #$0002                  ;$15B8E1 |
    JSR.W CODE_FN_15B92A          ;$15B8E4 |
    LDA.W #$0001                  ;$15B8E7 |
    JSR.W CODE_FN_15B92A          ;$15B8EA |
    LDA.W #$0000                  ;$15B8ED |
    JSR.W CODE_FN_15B92A          ;$15B8F0 |
    LDA.W #$0008                  ;$15B8F3 |
    JSR.W CODE_FN_15B92A          ;$15B8F6 |
    LDA.W #$0009                  ;$15B8F9 |
    JSR.W CODE_FN_15B92A          ;$15B8FC |
    LDA.W #$000A                  ;$15B8FF |
    JSR.W CODE_FN_15B92A          ;$15B902 |
    LDA.W $7A91                   ;$15B905 |
    JSR.W CODE_FN_15B92A          ;$15B908 |
    SEP #$20                      ;$15B90B |
    LDA.B #$03                    ;$15B90D |
    STA.B $31                     ;$15B90F |
    LDA.B #$7E                    ;$15B911 |
    STA.B P1_ResetRepeat          ;$15B913 |
    REP #$20                      ;$15B915 |
    LDA.W #$0800                  ;$15B917 |
    STA.B $32                     ;$15B91A |
    LDA.W #$7000                  ;$15B91C |
    STA.B $34                     ;$15B91F |
    LDA.W #$5C00                  ;$15B921 |
    STA.B $37                     ;$15B924 |
    JML.L WriteToDMABuffer     ;$15B926 |

CODE_FN_15B92A:
    ASL A                         ;$15B92A |
    STA.B $4B                     ;$15B92B |
    LDA.W #$B938                  ;$15B92D |
    LDX.W #$00CA                  ;$15B930 |
    JSL.L SA1_ExecuteSNES         ;$15B933 |
    RTS                           ;$15B937 |
    LDX.B $4B                     ;$15B938 |
    JMP.W (PTR16_15B93D,X)        ;$15B93A |

PTR16_15B93D:
    dw WriteToCorkboardGFX_SpringBreeze ;$15B93D |
    dw WriteToCorkboardGFX_DynaBlade    ;$15B93F |
    dw WriteToCorkboardGFX_Gourmet      ;$15B941 |
    dw WriteToCorkboardGFX_GreatCave    ;$15B943 |
    dw WriteToCorkboardGFX_MetaKnight   ;$15B945 |
    dw WriteToCorkboardGFX_MilkyWay     ;$15B947 |
    dw WriteToCorkboardGFX_Arena        ;$15B949 |
    dw WriteToCorkboardGFX_SoundTest    ;$15B94B |
    dw WriteToCorkboardGFX_Samurai      ;$15B94D |
    dw WriteToCorkboardGFX_Megaton      ;$15B94F |
    dw WriteToCorkboardGFX_StereoMono   ;$15B951 |

; Routines to write each corkboard panel's graphics to a temp location in WRAM
; This temp location is then mirrored to VRAM

; Below are variables that will modify the X and Y positions of each panel
; The coordinates indicate the top-left corner of the subgame panel
;  (with 0,0 being the top-left of the entire screen and 31,27 being the bottom-right)
;  Height/Width is total number of pixels that span the sprite (so the minimum is 1)

!SpringBreeze_X_Location    #= 3
!SpringBreeze_Y_Location    #= 2
!SpringBreeze_Height        #= 8
!SpringBreeze_Width         #= 9

!DynaBlade_X_Location       #= 2
!DynaBlade_Y_Location       #= 10
!DynaBlade_Height           #= 10
!DynaBlade_Width            #= 8

!Gourmet_X_Location         #= 11
!Gourmet_Y_Location         #= 1
!Gourmet_Height             #= 7
!Gourmet_Width              #= 11

!GCO_X_Location             #= 9
!GCO_Y_Location             #= 9
!GCO_Height                 #= 9
!GCO_Width                  #= 9

!RoMK_X_Location            #= 16
!RoMK_Y_Location            #= 8
!RoMK_Height                #= 9
!RoMK_Width                 #= 10


WriteToCorkboardGFX_SpringBreeze:
    %WriteCorkboardPanelGFX($6000, !SpringBreeze_X_Location, !SpringBreeze_Y_Location, !SpringBreeze_Height, !SpringBreeze_Width)
    RTL                           ;$15B9C3 |

WriteToCorkboardGFX_DynaBlade:
    %WriteCorkboardPanelGFX($6090, !DynaBlade_X_Location, !DynaBlade_Y_Location, !DynaBlade_Height, !DynaBlade_Width)
    RTL                           ;$15BA50 |

WriteToCorkboardGFX_Gourmet:
    %WriteCorkboardPanelGFX($6140, !Gourmet_X_Location, !Gourmet_Y_Location, !Gourmet_Height, !Gourmet_Width)
    RTL                           ;$15BAB3 |

WriteToCorkboardGFX_GreatCave:
    %WriteCorkboardPanelGFX($6200, !GCO_X_Location, !GCO_Y_Location, !GCO_Height, !GCO_Width)
    RTL                           ;$15BB32 |

WriteToCorkboardGFX_MetaKnight:
    %WriteCorkboardPanelGFX($62C0, !RoMK_X_Location, !RoMK_Y_Location, !RoMK_Height, !RoMK_Width)
    RTL                           ;$15BBB1 |

WriteToCorkboardGFX_MilkyWay:
    LDY.W #$70AC                  ;$15BBB2 |
    PHB                           ;$15BBB5 |
    LDX.W #$6380                  ;$15BBB6 |
    LDA.W #$000F                  ;$15BBB9 |
    MVN $7E,$7E                   ;$15BBBC |
    PLB                           ;$15BBBF |
    LDY.W #$70EC                  ;$15BBC0 |
    PHB                           ;$15BBC3 |
    LDX.W #$6390                  ;$15BBC4 |
    LDA.W #$000F                  ;$15BBC7 |
    MVN $7E,$7E                   ;$15BBCA |
    PLB                           ;$15BBCD |
    LDY.W #$712C                  ;$15BBCE |
    PHB                           ;$15BBD1 |
    LDX.W #$63A0                  ;$15BBD2 |
    LDA.W #$000F                  ;$15BBD5 |
    MVN $7E,$7E                   ;$15BBD8 |
    PLB                           ;$15BBDB |
    LDY.W #$716C                  ;$15BBDC |
    PHB                           ;$15BBDF |
    LDX.W #$63B0                  ;$15BBE0 |
    LDA.W #$000F                  ;$15BBE3 |
    MVN $7E,$7E                   ;$15BBE6 |
    PLB                           ;$15BBE9 |
    LDY.W #$71AC                  ;$15BBEA |
    PHB                           ;$15BBED |
    LDX.W #$63C0                  ;$15BBEE |
    LDA.W #$000F                  ;$15BBF1 |
    MVN $7E,$7E                   ;$15BBF4 |
    PLB                           ;$15BBF7 |
    LDY.W #$71EC                  ;$15BBF8 |
    PHB                           ;$15BBFB |
    LDX.W #$63D0                  ;$15BBFC |
    LDA.W #$000F                  ;$15BBFF |
    MVN $7E,$7E                   ;$15BC02 |
    PLB                           ;$15BC05 |
    LDY.W #$722C                  ;$15BC06 |
    PHB                           ;$15BC09 |
    LDX.W #$63E0                  ;$15BC0A |
    LDA.W #$000F                  ;$15BC0D |
    MVN $7E,$7E                   ;$15BC10 |
    PLB                           ;$15BC13 |
    LDY.W #$726C                  ;$15BC14 |
    PHB                           ;$15BC17 |
    LDX.W #$63F0                  ;$15BC18 |
    LDA.W #$000F                  ;$15BC1B |
    MVN $7E,$7E                   ;$15BC1E |
    PLB                           ;$15BC21 |
    LDY.W #$72AC                  ;$15BC22 |
    PHB                           ;$15BC25 |
    LDX.W #$6400                  ;$15BC26 |
    LDA.W #$000F                  ;$15BC29 |
    MVN $7E,$7E                   ;$15BC2C |
    PLB                           ;$15BC2F |
    LDY.W #$72EC                  ;$15BC30 |
    PHB                           ;$15BC33 |
    LDX.W #$6410                  ;$15BC34 |
    LDA.W #$000F                  ;$15BC37 |
    MVN $7E,$7E                   ;$15BC3A |
    PLB                           ;$15BC3D |
    RTL                           ;$15BC3E |

WriteToCorkboardGFX_Arena:
    LDY.W #$7430                  ;$15BC3F |
    PHB                           ;$15BC42 |
    LDX.W #$6440                  ;$15BC43 |
    LDA.W #$000D                  ;$15BC46 |
    MVN $7E,$7E                   ;$15BC49 |
    PLB                           ;$15BC4C |
    LDY.W #$7470                  ;$15BC4D |
    PHB                           ;$15BC50 |
    LDX.W #$644E                  ;$15BC51 |
    LDA.W #$000D                  ;$15BC54 |
    MVN $7E,$7E                   ;$15BC57 |
    PLB                           ;$15BC5A |
    LDY.W #$74B0                  ;$15BC5B |
    PHB                           ;$15BC5E |
    LDX.W #$645C                  ;$15BC5F |
    LDA.W #$000D                  ;$15BC62 |
    MVN $7E,$7E                   ;$15BC65 |
    PLB                           ;$15BC68 |
    LDY.W #$74F0                  ;$15BC69 |
    PHB                           ;$15BC6C |
    LDX.W #$646A                  ;$15BC6D |
    LDA.W #$000D                  ;$15BC70 |
    MVN $7E,$7E                   ;$15BC73 |
    PLB                           ;$15BC76 |
    LDY.W #$7530                  ;$15BC77 |
    PHB                           ;$15BC7A |
    LDX.W #$6478                  ;$15BC7B |
    LDA.W #$000D                  ;$15BC7E |
    MVN $7E,$7E                   ;$15BC81 |
    PLB                           ;$15BC84 |
    LDY.W #$7570                  ;$15BC85 |
    PHB                           ;$15BC88 |
    LDX.W #$6486                  ;$15BC89 |
    LDA.W #$000D                  ;$15BC8C |
    MVN $7E,$7E                   ;$15BC8F |
    PLB                           ;$15BC92 |
    LDY.W #$75B0                  ;$15BC93 |
    PHB                           ;$15BC96 |
    LDX.W #$6494                  ;$15BC97 |
    LDA.W #$000D                  ;$15BC9A |
    MVN $7E,$7E                   ;$15BC9D |
    PLB                           ;$15BCA0 |
    RTL                           ;$15BCA1 |

WriteToCorkboardGFX_SoundTest:
    LDY.W #$751C                  ;$15BCA2 |
    PHB                           ;$15BCA5 |
    LDX.W #$64C0                  ;$15BCA6 |
    LDA.W #$0007                  ;$15BCA9 |
    MVN $7E,$7E                   ;$15BCAC |
    PLB                           ;$15BCAF |
    LDY.W #$755C                  ;$15BCB0 |
    PHB                           ;$15BCB3 |
    LDX.W #$64C8                  ;$15BCB4 |
    LDA.W #$0007                  ;$15BCB7 |
    MVN $7E,$7E                   ;$15BCBA |
    PLB                           ;$15BCBD |
    LDY.W #$759C                  ;$15BCBE |
    PHB                           ;$15BCC1 |
    LDX.W #$64D0                  ;$15BCC2 |
    LDA.W #$0007                  ;$15BCC5 |
    MVN $7E,$7E                   ;$15BCC8 |
    PLB                           ;$15BCCB |
    LDY.W #$75DC                  ;$15BCCC |
    PHB                           ;$15BCCF |
    LDX.W #$64D8                  ;$15BCD0 |
    LDA.W #$0007                  ;$15BCD3 |
    MVN $7E,$7E                   ;$15BCD6 |
    PLB                           ;$15BCD9 |
    RTL                           ;$15BCDA |

WriteToCorkboardGFX_Samurai:
    LDA.W #$CE9F                  ;$15BCDB |
    STA.B SNES_WaitForCommand_waitForMessage;$15BCDE |
    LDA.W #$00EF                  ;$15BCE0 |
    STA.B $16                     ;$15BCE3 |
    LDA.W #$0604                  ;$15BCE5 |
    LDX.W #$0013                  ;$15BCE8 |
    LDY.W #$0013                  ;$15BCEB |
    JML.L CODE_JL_CABD34          ;$15BCEE |

WriteToCorkboardGFX_Megaton:
    LDA.W #$CE3F                  ;$15BCF2 |
    STA.B SNES_WaitForCommand_waitForMessage;$15BCF5 |
    LDA.W #$00EF                  ;$15BCF7 |
    STA.B $16                     ;$15BCFA |
    LDA.W #$0604                  ;$15BCFC |
    LDX.W #$0011                  ;$15BCFF |
    LDY.W #$0011                  ;$15BD02 |
    JML.L CODE_JL_CABD34          ;$15BD05 |

WriteToCorkboardGFX_StereoMono:
    LDA.W CurrentStereoMono       ;$15BD09 |
    AND.W #$00FF                  ;$15BD0C |
    BNE CODE_95BD1D               ;$15BD0F |
    LDA.W #$E5D4                  ;$15BD11 |
    STA.B SNES_WaitForCommand_waitForMessage;$15BD14 |
    LDA.W #$00EF                  ;$15BD16 |
    STA.B $16                     ;$15BD19 |
    BRA CODE_95BD27               ;$15BD1B |

CODE_95BD1D:
    LDA.W #$E5EC                  ;$15BD1D |
    STA.B SNES_WaitForCommand_waitForMessage;$15BD20 |
    LDA.W #$00EF                  ;$15BD22 |
    STA.B $16                     ;$15BD25 |

CODE_95BD27:
    LDA.W #$0303                  ;$15BD27 |
    LDX.W #$0009                  ;$15BD2A |
    LDY.W #$0014                  ;$15BD2D |
    JML.L CODE_JL_CABD34          ;$15BD30 |
    PHA                           ;$15BD34 |
    AND.W #$00FF                  ;$15BD35 |
    STA.B $06                     ;$15BD38 |
    PLA                           ;$15BD3A |
    XBA                           ;$15BD3B |
    AND.W #$00FF                  ;$15BD3C |
    STA.B DSP_SRCN                ;$15BD3F |
    DEC A                         ;$15BD41 |
    ASL A                         ;$15BD42 |
    STA.B DSP_ENVX                ;$15BD43 |
    TYA                           ;$15BD45 |
    ASL A                         ;$15BD46 |
    ASL A                         ;$15BD47 |
    ASL A                         ;$15BD48 |
    ASL A                         ;$15BD49 |
    ASL A                         ;$15BD4A |
    ASL A                         ;$15BD4B |
    STA.B IdentifySNES            ;$15BD4C |
    TXA                           ;$15BD4E |
    ASL A                         ;$15BD4F |
    CLC                           ;$15BD50 |
    ADC.B IdentifySNES            ;$15BD51 |
    CLC                           ;$15BD53 |
    ADC.W #$7000                  ;$15BD54 |
    STA.B $18                     ;$15BD57 |
    LDA.W #$007E                  ;$15BD59 |
    STA.B $1A                     ;$15BD5C |

CODE_95BD5E:
    LDY.B DSP_ENVX                ;$15BD5E |

CODE_95BD60:
    LDA.B [SNES_WaitForCommand_waitForMessage],Y;$15BD60 |
    STA.B [$18],Y                 ;$15BD62 |
    DEY                           ;$15BD64 |
    DEY                           ;$15BD65 |
    BPL CODE_95BD60               ;$15BD66 |
    LDA.B DSP_SRCN                ;$15BD68 |
    ASL A                         ;$15BD6A |
    CLC                           ;$15BD6B |
    ADC.B SNES_WaitForCommand_waitForMessage;$15BD6C |
    STA.B SNES_WaitForCommand_waitForMessage;$15BD6E |
    LDA.B $18                     ;$15BD70 |
    CLC                           ;$15BD72 |
    ADC.W #$0040                  ;$15BD73 |
    STA.B $18                     ;$15BD76 |
    DEC.B $06                     ;$15BD78 |
    BNE CODE_95BD5E               ;$15BD7A |
    RTL                           ;$15BD7C |
    STA.W ObjVar0_Temp            ;$15BD7D |
    STY.W ObjSlotMinimum          ;$15BD80 |
    TYA                           ;$15BD83 |
    INC A                         ;$15BD84 |
    INC A                         ;$15BD85 |
    STA.W ObjSlotMaximum          ;$15BD86 |
    BRA CODE_95BD9A               ;$15BD89 |
    STA.W ObjVar0_Temp            ;$15BD8B |
    LDA.W #$0010                  ;$15BD8E |
    STA.W ObjSlotMinimum          ;$15BD91 |
    LDA.W #$0030                  ;$15BD94 |
    STA.W ObjSlotMaximum          ;$15BD97 |

CODE_95BD9A:
    LDY.B $39                     ;$15BD9A |
    STZ.W ObjVar1_Temp            ;$15BD9C |
    STY.W ObjVar2_Temp            ;$15BD9F |
    STX.W ObjVar3_Temp            ;$15BDA2 |
    LDA.W Obj_XPositionMirror,Y   ;$15BDA5 |
    TAX                           ;$15BDA8 |
    LDA.W Obj_YPositionMirror,Y   ;$15BDA9 |
    TAY                           ;$15BDAC |
    LDA.W #$0011                  ;$15BDAD |
    JSL.L CreateNewObject         ;$15BDB0 |
    LDY.B $39                     ;$15BDB4 |
    RTL                           ;$15BDB6 |
    db $21,$00,$0F,$06,$F3,$B5,$C1,$B7;$15BDB7 |
    db $C3,$B5,$23,$B7,$36,$B8,$87,$B7;$15BDBF |
    db $83,$00,$14,$30,$2E,$E1,$00,$76;$15BDC7 |
    db $83,$E0,$6E,$6E,$5E,$D6,$00,$00;$15BDCF |
    db $83,$00,$18,$E8,$A6,$E1,$00,$60;$15BDD7 |
    db $FF,$83,$00,$08,$00,$99,$EF,$00;$15BDDF |
    db $48,$03,$00,$08,$00,$20,$7E,$00;$15BDE7 |
    db $4C,$83,$60,$00,$CF,$D0,$EF,$00;$15BDEF |
    db $50,$FF,$83,$00,$20,$4F,$78,$DF;$15BDF7 |
    db $00,$00,$83,$00,$24,$4A,$44,$DE;$15BDFF |
    db $00,$20,$83,$80,$1D,$3A,$21,$E0;$15BE07 |
    db $00,$10,$83,$80,$09,$A6,$49,$E7;$15BE0F |
    db $00,$1B,$83,$00,$18,$E8,$A6,$E1;$15BE17 |
    db $00,$60,$FF

DATA8_CABE22:
    db $2E,$BE,$5A,$BE,$86            ;$15BE1F |
    db $BE,$B2
    db $BE,$DE,$BE,$0A,$BF,$FF        ;$15BE27 |
    db $02,$01,$FF,$00,$09,$0A,$FF,$FF;$15BE2F |
    db $FF,$09,$00,$FF,$FF,$FF,$FF,$FF;$15BE37 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15BE3F |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$09;$15BE47 |
    db $FF,$FF,$09,$02,$08,$08,$0A,$01;$15BE4F |
    db $09,$FF,$01,$FF,$02,$01,$FF,$00;$15BE57 |
    db $03,$0A,$FF,$FF,$FF,$03,$00,$02;$15BE5F |
    db $09,$0A,$01,$FF,$FF,$FF,$FF,$FF;$15BE67 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15BE6F |
    db $FF,$FF,$FF,$09,$FF,$FF,$09,$03;$15BE77 |
    db $08,$08,$0A,$03,$09,$FF,$01,$FF;$15BE7F |
    db $02,$01,$FF,$00,$03,$0A,$FF,$FF;$15BE87 |
    db $04,$03,$00,$02,$04,$0A,$01,$02;$15BE8F |
    db $FF,$09,$03,$FF,$FF,$FF,$FF,$FF;$15BE97 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$09;$15BE9F |
    db $FF,$FF,$09,$04,$08,$08,$0A,$03;$15BEA7 |
    db $09,$FF,$01,$FF,$02,$01,$FF,$00;$15BEAF |
    db $03,$0A,$FF,$FF,$05,$03,$00,$02;$15BEB7 |
    db $04,$0A,$01,$05,$FF,$09,$03,$FF;$15BEBF |
    db $FF,$04,$02,$FF,$FF,$FF,$FF,$FF;$15BEC7 |
    db $FF,$FF,$FF,$09,$FF,$FF,$09,$04;$15BECF |
    db $08,$08,$0A,$03,$09,$FF,$01,$FF;$15BED7 |
    db $02,$01,$FF,$00,$03,$0A,$FF,$FF;$15BEDF |
    db $05,$03,$00,$02,$04,$0A,$01,$05;$15BEE7 |
    db $06,$09,$03,$FF,$FF,$04,$02,$05;$15BEEF |
    db $FF,$FF,$08,$FF,$FF,$FF,$FF,$09;$15BEF7 |
    db $06,$FF,$09,$04,$08,$08,$0A,$03;$15BEFF |
    db $09,$FF,$01                ;$15BF07 |

CorkboardSelectionDirections_LUT:
    db $FF,$02,$01,$FF,$00,$03,$0A,$FF;$15BF0A |	Declare what subgame will be selected when pressing up/down/left/right while having a specific subgame selected.
    db $FF,$05,$03,$00,$02,$04,$0A,$01;$15BF12 |
    db $05,$06,$09,$03,$FF,$FF,$04,$02;$15BF1A |
    db $05,$FF,$FF,$08,$04,$09,$FF,$0A;$15BF22 |
    db $09,$06,$FF,$09,$04,$08,$08,$07;$15BF2A |
    db $03,$07,$FF,$01            ;$15BF32 |

CorkboardBG_FadeRedBlue:
    db $BE,$6A,$13,$20,$7B,$23,$B7,$21;$15BF36 |	Palette that is written to background when transitioning from red to blue on subgame selection.
    db $BE,$6A,$12,$24,$39,$27,$96,$25;$15BF3E |
    db $BE,$6A,$10,$2C,$18,$2F,$74,$2D;$15BF46 |
    db $BE,$6A,$0F,$30,$D6,$32,$73,$31;$15BF4E |
    db $BE,$6A,$0E,$38,$94,$3A,$51,$39;$15BF56 |
    db $BE,$6A,$0D,$3C,$52,$3E,$30,$3D;$15BF5E |
    db $BE,$6A,$0B,$44,$10,$46,$0E,$45;$15BF66 |
    db $BE,$6A,$0A,$4C,$EF,$4D,$ED,$4C;$15BF6E |
    db $BE,$6A,$09,$50,$AD,$51,$CB,$50;$15BF76 |
    db $BE,$6A,$08,$58,$6B,$59,$A9,$58;$15BF7E |
    db $BE,$6A,$06,$5C,$29,$5D,$88,$5C;$15BF86 |
    db $BE,$6A,$05,$64,$E7,$64,$86,$64;$15BF8E |
    db $BE,$6A,$04,$68,$A5,$68,$65,$68;$15BF96 |
    db $BE,$6A,$03,$70,$84,$70,$43,$70;$15BF9E |
    db $BE,$6A,$01,$74,$42,$74,$22,$74;$15BFA6 |
    db $BE,$6A,$00,$7C,$00,$7C,$00,$7C;$15BFAE |

CorkboardCursorPalette:
    dw $7C00                      ;$15BFB6 |	Palette that the corkboard cursor cycles through every frame
    dw $001F                      ;$15BFB8 |	Red
    dw $0000                      ;$15BFBA |	Black
    dw $7FFF                      ;$15BFBC |	White
    dw $03E0                      ;$15BFBE |	Green
    dw $45A8                      ;$15BFC0 |	Gray... but this frame is never seen?
    db $00,$00,$08,$21,$0F,$00,$00,$3C;$15BFC2 |
    db $EF,$3D,$87,$15,$44,$11,$C4,$04;$15BFCA |
    db $84,$04,$2C,$15,$0B,$0D,$E9,$08;$15BFD2 |
    db $A7,$04,$EF,$3D,$CE,$35,$A8,$45;$15BFDA |
    db $06,$00,$08,$00,$AB,$00,$00,$00;$15BFE2 |
    db $C6,$18,$4A,$29,$00,$00,$A3,$10;$15BFEA |
    db $E5,$14,$06,$1D,$28,$21,$4A,$25;$15BFF2 |
    db $8B,$2D,$AD,$31,$CE,$35,$A8,$45;$15BFFA |
    db $00,$00,$C6,$18,$EF,$3D,$ED,$14;$15C002 |
    db $0E,$19,$2F,$1D,$4F,$21,$6F,$25;$15C00A |
    db $8F,$2D,$EF,$3D,$EF,$3D,$EF,$3D;$15C012 |
    db $EF,$3D,$EF,$3D,$EF,$3D,$A8,$45;$15C01A |
    db $00,$00,$00,$00,$00,$00,$00,$00;$15C022 |
    db $00,$00,$00,$00,$00,$00,$00,$00;$15C02A |
    db $00,$00,$00,$00,$00,$00,$00,$00;$15C032 |
    db $00,$00,$00,$00,$00,$00,$A8,$45;$15C03A |
    db $00,$00,$85,$11,$C6,$18,$8F,$31;$15C042 |
    db $05,$00,$0A,$00,$40,$18,$C0,$30;$15C04A |
    db $40,$3D,$C7,$3D,$EF,$01,$00,$01;$15C052 |
    db $0F,$00,$29,$25,$CE,$39,$C0,$39;$15C05A |
    db $CD,$CA,$C0,$6C,$92,$00,$02,$01;$15C062 |
    db $0A,$5B,$C3,$C0,$F8,$07,$C9,$C0;$15C06A |
    db $F3,$D2,$00,$1E,$F0,$2F,$E0,$00;$15C072 |
    db $C0,$EA,$9F,$00,$80,$D1,$EE,$80;$15C07A |
    db $80,$00,$C0,$EA,$9F,$00,$8D,$DC;$15C082 |
    db $EF,$F0,$20,$00,$C0,$EA,$9F,$00;$15C08A |
    db $B9,$C6,$E9,$30,$20,$00,$C0,$6C;$15C092 |
    db $9C,$00,$79,$CD,$CA,$C0,$65,$9B;$15C09A |
    db $00,$18,$40,$19,$00,$00,$00,$00;$15C0A2 |
    db $00,$00,$00,$00,$00,$0A,$68,$CD;$15C0AA |
    db $03,$46,$C3,$CA,$05,$10,$C1,$CD;$15C0B2 |
    db $9F,$00,$07,$19,$09,$00,$00,$C0;$15C0BA |
    db $65,$9B,$00,$18,$40,$19,$00,$00;$15C0C2 |
    db $00,$00,$00,$12,$00,$00,$00,$C0;$15C0CA |
    db $65,$9B,$00,$18,$40,$19,$00,$00;$15C0D2 |
    db $00,$00,$00,$04,$00,$00,$00,$21;$15C0DA |
    db $09,$11,$EB,$C0,$02,$01,$0E,$E1;$15C0E2 |
    db $C0,$05,$10,$C1,$DD,$9F,$00,$07;$15C0EA |
    db $C0,$2C,$CD,$CA,$00,$00,$19,$00;$15C0F2 |
    db $C0,$EF,$9B,$00,$0A,$5B,$C3,$C0;$15C0FA |
    db $F8,$07,$C9,$C0,$EA,$9F,$00,$AA;$15C102 |
    db $69,$EC,$80,$C0,$00,$C0,$EA,$9F;$15C10A |
    db $00,$8D,$DC,$EF,$F0,$20,$00,$C0;$15C112 |
    db $9D,$CE,$CA,$C0,$6C,$9C,$00,$DA;$15C11A |
    db $CD,$CA,$C0,$EA,$9F,$00,$4A,$6A;$15C122 |
    db $EC,$D0,$20,$00,$2A,$01,$40,$00;$15C12A |
    db $2B,$01,$00,$00,$C0,$65,$9B,$00;$15C132 |
    db $18,$40,$19,$00,$00,$00,$00,$00;$15C13A |
    db $02,$00,$00,$00,$C0,$65,$9B,$00;$15C142 |
    db $18,$40,$19,$00,$00,$00,$00,$00;$15C14A |
    db $17,$00,$00,$00,$C0,$65,$9B,$00;$15C152 |
    db $18,$40,$19,$00,$00,$00,$00,$00;$15C15A |
    db $00,$00,$00,$00,$0A,$68,$CD,$03;$15C162 |
    db $46,$C3,$CA,$05,$10,$C1,$CD,$9F;$15C16A |
    db $00,$07,$19,$09,$00,$00,$C0,$65;$15C172 |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C17A |
    db $00,$00,$13,$00,$00,$00,$C0,$65;$15C182 |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C18A |
    db $00,$00,$15,$00,$00,$00,$C0,$65;$15C192 |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C19A |
    db $00,$00,$19,$00,$00,$00,$21,$09;$15C1A2 |
    db $11,$B2,$C1,$02,$01,$0E,$A8,$C1;$15C1AA |
    db $C0,$EA,$9F,$00,$AD,$DC,$EF,$80;$15C1B2 |
    db $20,$00,$19,$09,$00,$00,$C0,$65;$15C1BA |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C1C2 |
    db $00,$00,$08,$00,$00,$00,$C0,$65;$15C1CA |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C1D2 |
    db $00,$00,$23,$00,$00,$00,$21,$09;$15C1DA |
    db $11,$EA,$C1,$02,$01,$0E,$E0,$C1;$15C1E2 |
    db $2E,$01,$19,$09,$00,$00,$02,$01;$15C1EA |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C1F2 |
    db $00,$00,$00,$00,$1A,$00,$00,$00;$15C1FA |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C202 |
    db $00,$00,$00,$00,$1C,$00,$00,$00;$15C20A |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C212 |
    db $00,$00,$00,$00,$1D,$00,$00,$00;$15C21A |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C222 |
    db $00,$00,$00,$00,$1E,$00,$00,$00;$15C22A |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C232 |
    db $00,$00,$00,$00,$1F,$00,$00,$00;$15C23A |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C242 |
    db $00,$00,$00,$00,$20,$00,$00,$00;$15C24A |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C252 |
    db $00,$00,$00,$00,$21,$00,$00,$00;$15C25A |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C262 |
    db $00,$00,$00,$00,$06,$00,$00,$00;$15C26A |
    db $21,$09,$11,$7C,$C2,$02,$01,$0E;$15C272 |
    db $72,$C2,$05,$10,$C1,$DD,$9F,$00;$15C27A |
    db $07,$C0,$2C,$CD,$CA,$00,$00,$19;$15C282 |
    db $00,$C0,$EF,$9B,$00,$0A,$5B,$C3;$15C28A |
    db $C0,$F8,$07,$C9,$2A,$00,$00,$00;$15C292 |
    db $2B,$00,$38,$00,$2A,$01,$00,$00;$15C29A |
    db $2B,$01,$40,$00,$C0,$EA,$9F,$00;$15C2A2 |
    db $AA,$69,$EC,$80,$C0,$00,$C0,$EA;$15C2AA |
    db $9F,$00,$99,$BE,$E9,$00,$A0,$00;$15C2B2 |
    db $C0,$6C,$9C,$00,$2B,$CE,$CA,$C0;$15C2BA |
    db $65,$9B,$00,$18,$40,$19,$00,$00;$15C2C2 |
    db $00,$00,$00,$00,$00,$00,$00,$0A;$15C2CA |
    db $68,$CD,$03,$46,$C3,$CA,$05,$10;$15C2D2 |
    db $C1,$CD,$9F,$00,$07,$19,$09,$00;$15C2DA |
    db $00,$C0,$65,$9B,$00,$18,$40,$19;$15C2E2 |
    db $00,$00,$00,$00,$00,$07,$00,$00;$15C2EA |
    db $00,$C0,$65,$9B,$00,$18,$40,$19;$15C2F2 |
    db $00,$00,$00,$00,$00,$03,$00,$00;$15C2FA |
    db $00,$C0,$65,$9B,$00,$18,$40,$19;$15C302 |
    db $00,$00,$00,$00,$00,$16,$00,$00;$15C30A |
    db $00,$C0,$65,$9B,$00,$18,$40,$19;$15C312 |
    db $00,$00,$00,$00,$00,$18,$00,$00;$15C31A |
    db $00,$21,$09,$11,$2D,$C3,$02,$01;$15C322 |
    db $0E,$23,$C3,$05,$10,$C0,$DD,$9F;$15C32A |
    db $00,$C0,$78,$CE,$00,$F0,$02,$01;$15C332 |
    db $07,$F0,$00,$E0,$00,$C0,$BE,$84;$15C33A |
    db $00,$0E,$F5,$CC            ;$15C342 |
    LDA.W P1_Hold                 ;$15C346 |
    BIT.W #$1000                  ;$15C349 |
    BEQ CODE_15C35A               ;$15C34C |
    LDA.W #$C32D                  ;$15C34E |
    LDY.W #$00CA                  ;$15C351 |
    LDX.B $39                     ;$15C354 |
    JSL.L CODE_FL_008F64          ;$15C356 |

CODE_15C35A:
    RTL                           ;$15C35A |
    db $1B,$30,$33,$00,$00,$C0,$EF,$9B;$15C35B |
    db $00,$C0,$BE,$84,$00,$C0,$10,$9D;$15C363 |
    db $00,$00,$00,$00,$00,$1B,$5B,$30;$15C36B |
    db $00,$00,$1B,$5D,$30,$00,$00,$C0;$15C373 |
    db $94,$9C,$00,$09,$C0,$CE,$9C,$00;$15C37B |
    db $17,$C0,$9A,$9C,$00,$00,$02,$00;$15C383 |
    db $00,$00,$48,$C0,$9A,$9C,$00,$01;$15C38B |
    db $00,$00,$00,$00,$54,$C0,$9A,$9C;$15C393 |
    db $00,$02,$00,$00,$40,$00,$50,$C0;$15C39B |
    db $BB,$9C,$00,$00,$00,$60,$00,$C0;$15C3A3 |
    db $85,$9F,$00,$17,$0C,$C0,$6C,$92;$15C3AB |
    db $00,$02,$01,$15,$72,$AB,$16,$FB;$15C3B3 |
    db $A6,$14,$C7,$88,$CC,$33,$40,$00;$15C3BB |
    db $24,$21,$00,$0F,$26,$14,$C4,$20;$15C3C3 |
    db $C4,$5E,$C4,$70,$C4,$7E,$C4,$A3;$15C3CB |
    db $C4,$DC,$C4,$9A,$C5,$73,$C9,$CF;$15C3D3 |
    db $C5,$FA,$C5,$43,$C6,$59,$C6,$6F;$15C3DB |
    db $C6,$85,$C6,$9B,$C6,$B1,$C6,$C7;$15C3E3 |
    db $C6,$46,$C7,$C7,$C7,$FE,$C7,$2A;$15C3EB |
    db $C8,$CF,$C8,$59,$C9,$8A,$C9,$A4;$15C3F3 |
    db $C9,$C8,$C9,$C8,$C9,$0A,$CA,$32;$15C3FB |
    db $CA,$5A,$CA,$82,$CA,$AA,$CA,$D2;$15C403 |
    db $CA,$FA,$CA,$FA,$CA,$0B,$CB,$A2;$15C40B |
    db $C8,$33,$F0,$00,$26,$D7,$00,$27;$15C413 |
    db $C0,$00,$40,$16,$01,$26,$00,$01;$15C41B |
    db $27,$80,$00,$40,$FF,$02,$4B,$02;$15C423 |
    db $F0,$80,$00,$FA,$40,$0D,$02,$15;$15C42B |
    db $24,$26,$80,$00,$27,$80,$00,$02;$15C433 |
    db $04,$40,$0E,$C0,$2C,$CD,$CA,$F4;$15C43B |
    db $05,$19,$00,$0A,$5C,$CD,$02,$01;$15C443 |
    db $C0,$2C,$CD,$CA,$F6,$05,$19,$00;$15C44B |
    db $0A,$5C,$CD,$02,$01,$1B,$A0,$71;$15C453 |
    db $01,$00,$01,$26,$40,$00,$27,$50;$15C45B |
    db $00,$80,$D8,$FF,$40,$18,$02,$80;$15C463 |
    db $02,$FF,$02,$FF,$00,$26,$00,$01;$15C46B |
    db $27,$40,$00,$80,$E0,$FF,$40,$18;$15C473 |
    db $02,$C8,$01,$26,$80,$00,$27,$A0;$15C47B |
    db $00,$40,$0C,$90,$80,$FF,$02,$72;$15C483 |
    db $4C,$14,$24,$02,$14,$C0,$65,$9B;$15C48B |
    db $00,$18,$40,$19,$00,$00,$00,$00;$15C493 |
    db $00,$11,$00,$00,$00,$02,$04,$00;$15C49B |
    db $26,$80,$00,$27,$2C,$FF,$40,$00;$15C4A3 |
    db $02,$28,$90,$00,$10,$02,$11,$BA;$15C4AB |
    db $00,$FE,$B0,$1E,$00,$02,$1E,$24;$15C4B3 |
    db $02,$14,$60,$02,$1C,$60,$C0,$2C;$15C4BB |
    db $CD,$CA,$F0,$05,$19,$00,$0A,$5C;$15C4C3 |
    db $CD,$02,$01,$C0,$2C,$CD,$CA,$F2;$15C4CB |
    db $05,$19,$00,$0A,$5C,$CD,$02,$01;$15C4D3 |
    db $01,$26,$80,$00,$27,$4B,$00,$02;$15C4DB |
    db $50,$19,$06,$00,$00,$03,$5A,$C5;$15C4E3 |
    db $CA,$E0,$40,$14,$EA,$9A,$C5,$42;$15C4EB |
    db $18,$42,$19,$42,$1A,$C0,$F1,$A3;$15C4F3 |
    db $00,$E0,$00,$00,$00,$C0,$F1,$A3;$15C4FB |
    db $00,$E0,$00,$01,$00,$C0,$F1,$A3;$15C503 |
    db $00,$E0,$00,$02,$00,$C0,$F1,$A3;$15C50B |
    db $00,$E0,$00,$03,$00,$C0,$F1,$A3;$15C513 |
    db $00,$E0,$00,$04,$00,$C0,$F1,$A3;$15C51B |
    db $00,$E0,$00,$05,$00,$C0,$F1,$A3;$15C523 |
    db $00,$E0,$00,$06,$00,$C0,$F1,$A3;$15C52B |
    db $00,$E0,$00,$07,$00,$14,$C7,$88;$15C533 |
    db $CC,$33,$41,$00,$40,$1B,$02,$14;$15C53B |
    db $80,$60,$02,$A0,$EE,$FF,$02,$1C;$15C543 |
    db $A8,$F6,$FF,$A0,$A0,$FF,$02,$3C;$15C54B |
    db $24,$1B,$A0,$71,$01,$00,$01;$15C553 |
    LDA.W Obj_VAR6,Y              ;$15C55A |
    LDX.W #$000A                  ;$15C55D |
    JSL.L CODE_FL_00A628          ;$15C560 |
    LDY.B $39                     ;$15C564 |
    LDA.W $32E6                   ;$15C566 |
    BNE CODE_15C583               ;$15C569 |
    LDA.W $32E4                   ;$15C56B |
    CMP.W #$0005                  ;$15C56E |
    BCS CODE_15C589               ;$15C571 |
    ASL A                         ;$15C573 |
    TAX                           ;$15C574 |
    LDA.L DATA8_CAC590,X          ;$15C575 |
    LDX.W #$00ED                  ;$15C579 |
    LDY.W #$8010                  ;$15C57C |
    JSL.L WritePal                ;$15C57F |

CODE_15C583:
    LDX.B $39                     ;$15C583 |
    INC.W Obj_VAR6,X              ;$15C585 |
    RTL                           ;$15C588 |

CODE_15C589:
    LDY.B $39                     ;$15C589 |
    JSL.L CODE_FL_00E1BF          ;$15C58B |
    RTL                           ;$15C58F |
    db $60,$B6,$40,$B6,$20,$B6,$00,$B6;$15C590 |
    db $E0,$B5,$26,$D8,$00,$27,$10,$00;$15C598 |
    db $02,$AA,$E0,$E4,$02,$1E,$80,$80;$15C5A0 |
    db $FF,$A0,$E0,$FF,$90,$00,$06,$33;$15C5A8 |
    db $60,$00,$40,$1B,$02,$1A,$24,$8A;$15C5B0 |
    db $00,$FC,$80,$1C,$00,$90,$C0,$FF;$15C5B8 |
    db $33,$20,$00,$40,$1C,$02,$C8,$02;$15C5C0 |
    db $98,$1B,$A0,$71,$01,$00,$00,$26;$15C5C8 |
    db $80,$00,$27,$20,$00,$40,$0F,$02;$15C5D0 |
    db $1E,$16,$EC,$A6,$03,$3B,$C6,$CA;$15C5D8 |
    db $19,$01,$00,$C0,$19,$03,$00,$FF;$15C5E0 |
    db $19,$04,$00,$02,$19,$05,$00,$00;$15C5E8 |
    db $02,$80,$02,$80,$24,$16,$FB,$A6;$15C5F0 |
    db $04,$01,$33,$40,$00,$40,$14,$02;$15C5F8 |
    db $0A,$0A,$10,$C6,$02,$AA,$19,$01;$15C600 |
    db $B6,$6D,$0A,$2E,$C6,$02,$14,$00;$15C608 |
    db $16,$EC,$A6,$03,$3B,$C6,$CA,$26;$15C610 |
    db $80,$00,$27,$60,$00,$19,$01,$00;$15C618 |
    db $C0,$19,$03,$E7,$02,$19,$04,$00;$15C620 |
    db $02,$19,$05,$00,$00,$0C,$19,$03;$15C628 |
    db $00,$00,$19,$04,$00,$00,$19,$05;$15C630 |
    db $C0,$00,$0C                ;$15C638 |

CODE_JP_15C63B:
    JSL.L CODE_FL_CACD09          ;$15C63B |
    JML.L CODE_FL_00A6F7          ;$15C63F |
    db $33,$3F,$00,$40,$10,$02,$0A,$0A;$15C643 |
    db $10,$C6,$02,$9E,$19,$01,$24,$49;$15C64B |
    db $0A,$2E,$C6,$02,$14,$00,$33,$3E;$15C653 |
    db $00,$40,$11,$02,$0A,$0A,$10,$C6;$15C65B |
    db $02,$91,$19,$01,$92,$24,$0A,$2E;$15C663 |
    db $C6,$02,$14,$00,$33,$3D,$00,$40;$15C66B |
    db $12,$02,$0A,$0A,$10,$C6,$02,$84;$15C673 |
    db $19,$01,$FE,$FF,$0A,$2E,$C6,$02;$15C67B |
    db $14,$00,$33,$3C,$00,$40,$13,$02;$15C683 |
    db $0A,$0A,$10,$C6,$02,$77,$19,$01;$15C68B |
    db $6C,$DB,$0A,$2E,$C6,$02,$14,$00;$15C693 |
    db $33,$3B,$00,$40,$0F,$02,$0A,$0A;$15C69B |
    db $10,$C6,$02,$6A,$19,$01,$DA,$B6;$15C6A3 |
    db $0A,$2E,$C6,$02,$14,$00,$33,$3A;$15C6AB |
    db $00,$40,$15,$02,$0A,$0A,$10,$C6;$15C6B3 |
    db $02,$5E,$19,$01,$48,$92,$0A,$2E;$15C6BB |
    db $C6,$02,$14,$00,$E0,$15,$C0,$65;$15C6C3 |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C6CB |
    db $00,$00,$0A,$00,$00,$00,$02,$0C;$15C6D3 |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C6DB |
    db $00,$00,$00,$00,$0B,$00,$00,$00;$15C6E3 |
    db $02,$0D,$C0,$65,$9B,$00,$18,$40;$15C6EB |
    db $19,$00,$00,$00,$00,$00,$0C,$00;$15C6F3 |
    db $00,$00,$02,$0D,$C0,$65,$9B,$00;$15C6FB |
    db $18,$40,$19,$00,$00,$00,$00,$00;$15C703 |
    db $0D,$00,$00,$00,$02,$0D,$C0,$65;$15C70B |
    db $9B,$00,$18,$40,$19,$00,$00,$00;$15C713 |
    db $00,$00,$0E,$00,$00,$00,$02,$0D;$15C71B |
    db $C0,$65,$9B,$00,$18,$40,$19,$00;$15C723 |
    db $00,$00,$00,$00,$0F,$00,$00,$00;$15C72B |
    db $02,$0C,$C0,$65,$9B,$00,$18,$40;$15C733 |
    db $19,$00,$00,$00,$00,$00,$10,$00;$15C73B |
    db $00,$00,$00,$33,$60,$00,$26,$80;$15C743 |
    db $00,$27,$9E,$00,$40,$FF,$02,$2E;$15C74B |
    db $90,$C0,$00,$B0,$F4,$FF,$02,$42;$15C753 |
    db $40,$03,$B0,$10,$00,$02,$34,$24;$15C75B |
    db $02,$AC,$C0,$65,$9B,$00,$18,$40;$15C763 |
    db $19,$00,$00,$00,$00,$00,$14,$00;$15C76B |
    db $00,$00,$C0,$65,$9B,$00,$18,$40;$15C773 |
    db $19,$00,$00,$00,$00,$00,$05,$00;$15C77B |
    db $00,$00,$90,$60,$00,$B0,$06,$00;$15C783 |
    db $02,$38,$24,$40,$0B,$02,$28,$02;$15C78B |
    db $F0,$C0,$65,$9B,$00,$18,$40,$19;$15C793 |
    db $00,$00,$00,$00,$00,$01,$00,$00;$15C79B |
    db $00,$02,$5F,$02,$F0,$E0,$11,$80;$15C7A3 |
    db $00,$FE,$90,$00,$FE,$B0,$08,$00;$15C7AB |
    db $05,$02,$44,$03,$44,$05,$44,$09;$15C7B3 |
    db $44,$07,$44,$04,$44,$08,$44,$0A;$15C7BB |
    db $44,$06,$07,$00,$02,$78,$19,$09;$15C7C3 |
    db $00,$00,$03,$D2,$C7,$CA,$01;$15C7CB |
    LDA.W Obj_VAR9,Y              ;$15C7D2 |
    TAX                           ;$15C7D5 |
    AND.W #$001F                  ;$15C7D6 |
    BNE CODE_15C7F1               ;$15C7D9 |
    TXA                           ;$15C7DB |
    AND.W #$03E0                  ;$15C7DC |
    CMP.W #$0200                  ;$15C7DF |
    BCS CODE_15C7FA               ;$15C7E2 |
    ADC.W #$CF18                  ;$15C7E4 |
    LDX.W #$00CA                  ;$15C7E7 |
    LDY.W #$A010                  ;$15C7EA |
    JSL.L WritePal                ;$15C7ED |

CODE_15C7F1:
    LDX.B $39                     ;$15C7F1 |
    INC.W Obj_VAR9,X              ;$15C7F3 |
    INC.W Obj_VAR9,X              ;$15C7F6 |
    RTL                           ;$15C7F9 |

CODE_15C7FA:
    JML.L DestroyUsedObject       ;$15C7FA |
    db $16,$EC,$A6,$03,$23,$C8,$CA,$2E;$15C7FE |
    db $00,$24,$2A,$00,$00,$00,$2B,$00;$15C806 |
    db $00,$00,$02,$28,$90,$00,$10,$02;$15C80E |
    db $11,$BA,$00,$FE,$B0,$1E,$00,$02;$15C816 |
    db $1E,$2E,$00,$24,$00        ;$15C81E |
    LDX.W #$0000                  ;$15C823 |
    JML.L CODE_FL_00A91D          ;$15C826 |
    db $26,$00,$01,$27,$40,$00,$80,$A0;$15C82A |
    db $FF,$90,$F0,$FF,$40,$19,$C0,$2C;$15C832 |
    db $CD,$CA,$F8,$05,$19,$00,$02,$C8;$15C83A |
    db $02,$64,$80,$B0,$FF,$02,$28,$80;$15C842 |
    db $D0,$FF,$90,$00,$00,$02,$14,$E0;$15C84A |
    db $05,$44,$1A,$44,$19,$44,$1A,$14;$15C852 |
    db $83,$0A,$CE,$42,$19,$42,$18,$42;$15C85A |
    db $17,$42,$16,$42,$1A,$42,$0B,$42;$15C862 |
    db $0A,$42,$09,$42,$00,$42,$01,$42;$15C86A |
    db $02,$42,$03,$42,$04,$42,$05,$42;$15C872 |
    db $06,$42,$07,$C0,$65,$9B,$00,$18;$15C87A |
    db $40,$19,$00,$00,$00,$00,$00,$25;$15C882 |
    db $00,$00,$00,$19,$09,$00,$00,$05;$15C88A |
    db $80,$44,$34,$44,$35,$C0,$9D,$C8;$15C892 |
    db $CA,$07,$00                ;$15C89A |
    TYX                           ;$15C89D |
    INC.W Obj_VAR9,X              ;$15C89E |
    RTL                           ;$15C8A1 |
    db $03,$BD,$C8,$CA,$14,$83,$0A,$CE;$15C8A2 |
    db $33,$20,$00,$1B,$B4,$77,$FF,$FF;$15C8AA |
    db $41,$36,$61,$41,$58,$61,$61,$61;$15C8B2 |
    db $0E,$B2,$C8                ;$15C8BA |
    JSL.L CODE_FL_D034E4          ;$15C8BD |
    LDA.W $623C,X                 ;$15C8C1 |
    BPL CODE_15C8CB               ;$15C8C4 |
    TYX                           ;$15C8C6 |
    JML.L DestroyObject_L         ;$15C8C7 |

CODE_15C8CB:
    JML.L CODE_JL_D5EE87          ;$15C8CB |
    db $16,$EC,$A6,$03,$3B,$C9,$CA,$19;$15C8CF |
    db $08,$00,$00,$26,$4A,$00,$27,$6A;$15C8D7 |
    db $00,$19,$03,$00,$00,$19,$05,$C0;$15C8DF |
    db $FF,$19,$04,$00,$04,$19,$01,$00;$15C8E7 |
    db $00,$02,$1F,$19,$04,$00,$04,$19;$15C8EF |
    db $01,$00,$20,$02,$1F,$19,$04,$00;$15C8F7 |
    db $04,$19,$01,$00,$40,$02,$1F,$19;$15C8FF |
    db $04,$00,$04,$19,$01,$00,$60,$02;$15C907 |
    db $1F,$19,$04,$00,$04,$19,$01,$00;$15C90F |
    db $80,$02,$1F,$19,$04,$00,$04,$19;$15C917 |
    db $01,$00,$A0,$02,$1F,$19,$04,$00;$15C91F |
    db $04,$19,$01,$00,$C0,$02,$1F,$19;$15C927 |
    db $04,$00,$04,$19,$01,$00,$E0,$02;$15C92F |
    db $1F,$0E,$E8,$C8            ;$15C937 |
    TYX                           ;$15C93B |
    INC.W Obj_VAR8,X              ;$15C93C |
    LDA.W Obj_VAR8,Y              ;$15C93F |
    AND.W #$000C                  ;$15C942 |
    LSR A                         ;$15C945 |
    TAX                           ;$15C946 |
    LDA.L DATA8_CAC951,X          ;$15C947 |
    STA.W Obj_Pose,Y              ;$15C94B |
    JMP.W CODE_JP_15C63B          ;$15C94E |
    db $1E,$00,$1F,$00,$21,$00,$20,$00;$15C951 |
    db $16,$EC,$A6,$03,$6C,$C9,$CA,$2A;$15C959 |
    db $01,$80,$00,$2B,$01,$00,$00,$80;$15C961 |
    db $C0,$FF,$01                ;$15C969 |
    LDX.W #$0002                  ;$15C96C |
    JML.L CODE_FL_00A91D          ;$15C96F |
    db $16,$EC,$A6,$03,$6C,$C9,$CA,$80;$15C973 |
    db $80,$FF,$02,$97,$02,$7A,$80,$C0;$15C97B |
    db $FF,$02,$6C,$A0,$10,$00,$01,$16;$15C983 |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$4A;$15C98B |
    db $00,$27,$6A,$00,$40,$1D,$19,$03;$15C993 |
    db $00,$00,$19,$05,$C0,$FF,$0E,$10;$15C99B |
    db $C9,$26,$00,$00,$27,$60,$00,$80;$15C9A3 |
    db $30,$00,$90,$0A,$00,$40,$17,$02;$15C9AB |
    db $FA,$02,$FA,$02,$FA,$90,$00,$00;$15C9B3 |
    db $02,$FA,$02,$8C,$24,$1B,$A0,$71;$15C9BB |
    db $01,$00,$02,$03,$00,$E0,$15,$16;$15C9C3 |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$D5;$15C9CB |
    db $00,$27,$6C,$00,$19,$01,$FE,$7F;$15C9D3 |
    db $19,$03,$00,$00,$19,$04,$00,$04;$15C9DB |
    db $19,$05,$00,$00,$02,$0A,$19,$01;$15C9E3 |
    db $FE,$FF,$40,$10,$02,$14,$19,$03;$15C9EB |
    db $00,$FE,$02,$10,$19,$03,$00,$FD;$15C9F3 |
    db $02,$0A,$19,$03,$00,$FC,$02,$10;$15C9FB |
    db $19,$03,$00,$FB,$02,$0A,$00,$16;$15CA03 |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$27;$15CA0B |
    db $00,$27,$53,$00,$19,$01,$B6,$ED;$15CA13 |
    db $19,$03,$00,$00,$19,$04,$00,$04;$15CA1B |
    db $19,$05,$00,$00,$02,$0A,$19,$01;$15CA23 |
    db $B6,$6D,$40,$13,$0E,$EF,$C9,$16;$15CA2B |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$CE;$15CA33 |
    db $00,$27,$1E,$00,$19,$01,$6C,$5B;$15CA3B |
    db $19,$03,$00,$00,$19,$04,$00,$04;$15CA43 |
    db $19,$05,$00,$00,$02,$0A,$19,$01;$15CA4B |
    db $6C,$DB,$40,$12,$0E,$EF,$C9,$16;$15CA53 |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$8F;$15CA5B |
    db $00,$27,$F0,$FF,$19,$01,$DA,$36;$15CA63 |
    db $19,$03,$00,$00,$19,$04,$00,$04;$15CA6B |
    db $19,$05,$00,$00,$02,$0A,$19,$01;$15CA73 |
    db $DA,$B6,$40,$11,$0E,$EF,$C9,$16;$15CA7B |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$4B;$15CA83 |
    db $00,$27,$93,$00,$19,$01,$24,$C9;$15CA8B |
    db $19,$03,$00,$00,$19,$04,$00,$04;$15CA93 |
    db $19,$05,$00,$00,$02,$0A,$19,$01;$15CA9B |
    db $24,$49,$40,$14,$0E,$EF,$C9,$16;$15CAA3 |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$97;$15CAAB |
    db $00,$27,$A0,$00,$19,$01,$92,$A4;$15CAB3 |
    db $19,$03,$00,$00,$19,$04,$00,$04;$15CABB |
    db $19,$05,$00,$00,$02,$0A,$19,$01;$15CAC3 |
    db $92,$24,$40,$15,$0E,$EF,$C9,$16;$15CACB |
    db $EC,$A6,$03,$3B,$C6,$CA,$26,$44;$15CAD3 |
    db $00,$27,$07,$00,$19,$01,$48,$92;$15CADB |
    db $19,$03,$00,$00,$19,$04,$00,$FC;$15CAE3 |
    db $19,$05,$00,$00,$02,$0A,$19,$04;$15CAEB |
    db $00,$04,$40,$0F,$0E,$EF,$C9,$C0;$15CAF3 |
    db $65,$9B,$00,$02,$04,$19,$00,$D4;$15CAFB |
    db $00,$7D,$00,$24,$00,$00,$00,$00;$15CB03 |
    db $03,$60,$CC,$CA,$15,$04,$B0,$14;$15CB0B |
    db $FC,$96,$C7,$26,$D4,$00,$27,$7D;$15CB13 |
    db $00,$80,$B0,$FF,$90,$D0,$FF,$19;$15CB1B |
    db $08,$00,$00,$19,$09,$00,$00,$19;$15CB23 |
    db $09,$10,$00,$02,$01,$19,$09,$1C;$15CB2B |
    db $00,$02,$01,$19,$09,$12,$00,$02;$15CB33 |
    db $01,$19,$09,$20,$00,$02,$01,$19;$15CB3B |
    db $09,$13,$00,$E0,$39,$02,$14,$19;$15CB43 |
    db $09,$3E,$00,$02,$02,$19,$09,$11;$15CB4B |
    db $00,$02,$02,$19,$09,$00,$00,$02;$15CB53 |
    db $02,$19,$09,$1F,$00,$02,$02,$19;$15CB5B |
    db $09,$18,$00,$02,$02,$19,$09,$03;$15CB63 |
    db $00,$E0,$39,$02,$1E,$19,$09,$35;$15CB6B |
    db $00,$02,$02,$19,$09,$1E,$00,$02;$15CB73 |
    db $02,$19,$09,$0A,$00,$02,$02,$19;$15CB7B |
    db $09,$09,$00,$E0,$39,$02,$14,$19;$15CB83 |
    db $09,$18,$00,$02,$02,$19,$09,$10;$15CB8B |
    db $00,$02,$02,$19,$09,$00,$00,$02;$15CB93 |
    db $02,$19,$09,$30,$00,$02,$02,$19;$15CB9B |
    db $09,$05,$00,$02,$01,$19,$09,$12;$15CBA3 |
    db $00,$02,$01,$19,$09,$23,$00,$02;$15CBAB |
    db $01,$19,$09,$37,$00,$02,$02,$19;$15CBB3 |
    db $09,$34,$00,$02,$02,$19,$09,$2C;$15CBBB |
    db $00,$E0,$39,$02,$14,$19,$09,$0F;$15CBC3 |
    db $00,$02,$02,$19,$09,$31,$00,$02;$15CBCB |
    db $02,$19,$09,$3E,$00,$02,$02,$19;$15CBD3 |
    db $09,$1B,$00,$E0,$39,$02,$14,$19;$15CBDB |
    db $09,$2C,$00,$02,$08,$19,$09,$32;$15CBE3 |
    db $00,$02,$08,$19,$09,$38,$00,$02;$15CBEB |
    db $01,$19,$09,$33,$00,$02,$01,$19;$15CBF3 |
    db $09,$3A,$00,$02,$01,$19,$09,$06;$15CBFB |
    db $00,$02,$01,$19,$09,$3C,$00,$02;$15CC03 |
    db $01,$19,$09,$01,$00,$02,$01,$19;$15CC0B |
    db $09,$20,$00,$02,$08,$19,$09,$0A;$15CC13 |
    db $00,$02,$08,$19,$09,$1C,$00,$02;$15CC1B |
    db $08,$19,$09,$1E,$00,$02,$08,$19;$15CC23 |
    db $09,$21,$00,$02,$01,$19,$09,$15;$15CC2B |
    db $00,$02,$01,$19,$09,$30,$00,$02;$15CC33 |
    db $01,$19,$09,$14,$00,$E0,$39,$02;$15CC3B |
    db $38,$24,$02,$1A,$C1,$6C,$9C,$00;$15CC43 |
    db $8C,$CE,$CA,$C1,$EA,$9F,$00,$E0;$15CC4B |
    db $D1,$EE,$B0,$20,$00,$1B,$A0,$71;$15CC53 |
    db $01,$00,$02,$50,$00        ;$15CC5B |
    LDA.W Obj_VAR9,Y              ;$15CC60 |
    CMP.W Obj_VAR8,Y              ;$15CC63 |
    BEQ CODE_15CC74               ;$15CC66 |
    STA.W Obj_VAR8,Y              ;$15CC68 |
    ASL A                         ;$15CC6B |
    TAX                           ;$15CC6C |
    LDA.L DATA8_CACC75,X          ;$15CC6D |
    STA.W Obj_Pose,Y              ;$15CC71 |

CODE_15CC74:
    RTL                           ;$15CC74 |
    db $1C,$00,$1E,$00,$72,$00,$73,$00;$15CC75 |
    db $7C,$00,$7D,$00,$00,$00,$01,$00;$15CC7D |
    db $76,$00,$77,$00,$80,$00,$81,$00;$15CC85 |
    db $74,$00,$75,$00,$7E,$00,$7F,$00;$15CC8D |
    db $60,$00,$61,$00,$64,$00,$65,$00;$15CC95 |
    db $78,$00,$79,$00,$82,$00,$83,$00;$15CC9D |
    db $7A,$00,$7B,$00,$84,$00,$85,$00;$15CCA5 |
    db $68,$00,$69,$00,$4E,$00,$D4,$00;$15CCAD |
    db $D5,$00,$34,$00,$36,$00,$38,$00;$15CCB5 |
    db $39,$00,$3A,$00,$3B,$00,$3C,$00;$15CCBD |
    db $3D,$00,$06,$00,$07,$00,$54,$00;$15CCC5 |
    db $6E,$00,$6F,$00,$70,$00,$71,$00;$15CCCD |
    db $5A,$00,$5B,$00,$6C,$00,$6D,$00;$15CCD5 |
    db $08,$00,$09,$00,$5C,$00,$5E,$00;$15CCDD |
    db $AC,$00,$AD,$00,$AE,$00,$AF,$00;$15CCE5 |
    db $C4,$00,$C5,$00,$C8,$00,$C6,$00;$15CCED |
    db $C0,$2C,$CD,$CA,$00,$00,$19,$00;$15CCF5 |
    db $C0,$EF,$9B,$00,$C0,$4F,$CD,$CA;$15CCFD |
    db $0D,$78,$A7,$CA            ;$15CD05 |
    LDA.W Obj_VAR5,Y              ;$15CD09 |
    CLC                           ;$15CD0C |
    ADC.W Obj_VAR4,Y              ;$15CD0D |
    STA.W Obj_VAR4,Y              ;$15CD10 |
    LDA.W Obj_VAR3,Y              ;$15CD13 |
    CLC                           ;$15CD16 |
    ADC.W Obj_VAR1,Y              ;$15CD17 |
    STA.W Obj_VAR1,Y              ;$15CD1A |
    LDX.W Obj_VAR4,Y              ;$15CD1D |
    JSL.L CODE_FL_059CC6          ;$15CD20 |
    STA.W $6B6E,Y                 ;$15CD24 |
    TXA                           ;$15CD27 |
    STA.W $6BE8,Y                 ;$15CD28 |
    RTL                           ;$15CD2B |
    JSL.L AS_ReadWord_L           ;$15CD2C |
    TAX                           ;$15CD30 |
    JSL.L AS_ReadWord_L           ;$15CD31 |
    JML.L CODE_FL_01DE7A          ;$15CD35 |
    LDA.W Kirby_Ability           ;$15CD39 |
    STA.W Obj_VAR7,Y              ;$15CD3C |
    LDA.W $750B                   ;$15CD3F |
    STA.W Obj_VAR8,Y              ;$15CD42 |
    LDA.W #$0000                  ;$15CD45 |
    STA.W Kirby_Ability           ;$15CD48 |
    STZ.W $750B                   ;$15CD4B |
    RTL                           ;$15CD4E |
    LDA.W Obj_VAR7,Y              ;$15CD4F |
    STA.W Kirby_Ability           ;$15CD52 |
    LDA.W Obj_VAR8,Y              ;$15CD55 |
    STA.W $750B                   ;$15CD58 |
    RTL                           ;$15CD5B |
    db $18,$C6,$33,$11,$67,$CD,$02,$01;$15CD5C |
    db $0E,$5C,$CD,$0C,$C0,$EA,$9F,$00;$15CD64 |
    db $73,$CD,$CA,$00,$06,$00,$0C,$00;$15CD6C |
    db $00,$FF,$7F,$00,$00,$83,$00,$04;$15CD74 |
    db $75,$3E,$DF,$00,$66,$83,$00,$04;$15CD7C |
    db $C4,$C4,$E8,$00,$68,$83,$00,$04;$15CD84 |
    db $6A,$9C,$E8,$00,$6A,$83,$00,$08;$15CD8C |
    db $48,$59,$E6,$00,$7C,$83,$80,$1D;$15CD94 |
    db $20,$DD,$DE,$00,$00,$89,$00,$08;$15CD9C |
    db $63,$F8,$EE,$00,$48,$0F,$00,$08;$15CDA4 |
    db $00,$28,$7E,$00,$48,$89,$00,$04;$15CDAC |
    db $D0,$71,$E7,$00,$54,$0F,$00,$04;$15CDB4 |
    db $00,$24,$7E,$00,$54,$83,$40,$00;$15CDBC |
    db $07,$E7,$EF,$00,$40,$89,$00,$04;$15CDC4 |
    db $7A,$A0,$E9,$00,$50,$0F,$00,$04;$15CDCC |
    db $00,$24,$7E,$00,$50,$FF,$83,$00;$15CDD4 |
    db $08,$85,$EF,$E5,$00,$62,$83,$00;$15CDDC |
    db $08,$48,$59,$E6,$00,$7C,$83,$80;$15CDE4 |
    db $1D,$20,$DD,$DE,$00,$00,$89,$00;$15CDEC |
    db $08,$63,$F8,$EE,$00,$48,$0F,$00;$15CDF4 |
    db $08,$00,$28,$7E,$00,$48,$89,$00;$15CDFC |
    db $04,$D0,$71,$E7,$00,$54,$0F,$00;$15CE04 |
    db $04,$00,$24,$7E,$00,$54,$83,$40;$15CE0C |
    db $00,$07,$E7,$EF,$00,$40,$89,$00;$15CE14 |
    db $04,$7A,$A0,$E9,$00,$50,$0F,$00;$15CE1C |
    db $04,$00,$24,$7E,$00,$50,$FF,$83;$15CE24 |
    db $00,$09,$B8,$29,$E6,$00,$00,$89;$15CE2C |
    db $00,$08,$81,$EB,$ED,$00,$48,$0F;$15CE34 |
    db $00,$08,$00,$28,$7E,$00,$48,$83;$15CE3C |
    db $00,$04,$6A,$9C,$E8,$00,$6A,$83;$15CE44 |
    db $00,$08,$85,$EF,$E5,$00,$62,$83;$15CE4C |
    db $00,$04,$D1,$6B,$E8,$00,$66,$83;$15CE54 |
    db $00,$08,$48,$59,$E6,$00,$7C,$89;$15CE5C |
    db $00,$04,$D0,$71,$E7,$00,$54,$0F;$15CE64 |
    db $00,$04,$00,$24,$7E,$00,$54,$83;$15CE6C |
    db $40,$00,$07,$E7,$EF,$00,$40,$89;$15CE74 |
    db $00,$04,$7A,$A0,$E9,$00,$50,$0F;$15CE7C |
    db $00,$04,$00,$24,$7E,$00,$50,$FF;$15CE84 |
    db $83,$00,$04,$D1,$6B,$E8,$00,$66;$15CE8C |
    db $83,$00,$04,$6A,$9C,$E8,$00,$6A;$15CE94 |
    db $FF                        ;$15CE9C |
    LDA.W #$CEA8                  ;$15CE9D |
    LDX.W #$00CA                  ;$15CEA0 |
    JSL.L SA1_ExecuteSNES         ;$15CEA3 |
    RTL                           ;$15CEA7 |
    PEA.W $007E                   ;$15CEA8 |
    PLB                           ;$15CEAB |
    LDA.W #$00CB                  ;$15CEAC |
    LDX.W #$7944                  ;$15CEAF |
    LDY.W #$2E00                  ;$15CEB2 |
    JSL.L DecompressData          ;$15CEB5 |
    PLB                           ;$15CEB9 |
    LDA.W #$CEED                  ;$15CEBA |
    LDX.W #$00CA                  ;$15CEBD |
    JSL.L LoadDMATable            ;$15CEC0 |
    LDA.W #$CEF6                  ;$15CEC4 |
    LDX.W #$00CA                  ;$15CEC7 |
    JSL.L LoadDMATable            ;$15CECA |
    LDA.W #$CEFF                  ;$15CECE |
    LDX.W #$00CA                  ;$15CED1 |
    JSL.L LoadDMATable            ;$15CED4 |
    LDA.W #$CF08                  ;$15CED8 |
    LDX.W #$00CA                  ;$15CEDB |
    JSL.L LoadDMATable            ;$15CEDE |
    LDA.W #$CF11                  ;$15CEE2 |
    LDX.W #$00CA                  ;$15CEE5 |
    JSL.L CODE_FL_D3E412          ;$15CEE8 |
    RTL                           ;$15CEEC |
    db $03,$00,$08,$00,$2E,$7E,$00,$66;$15CEED |
    db $FF,$03,$00,$08,$00,$36,$7E,$00;$15CEF5 |
    db $6A,$FF,$03,$00,$08,$00,$3E,$7E;$15CEFD |
    db $00,$6E,$FF,$03,$00,$08,$00,$46;$15CF05 |
    db $7E,$00,$72,$FF,$8B,$FC,$D5,$50;$15CF0D |
    db $B0,$FF,$FF,$26,$1A,$BD,$77,$F7;$15CF15 |
    db $66,$31,$4E,$CE,$41,$6B,$35,$BD;$15CF1D |
    db $53,$BD,$3B,$BD,$03,$BA,$12,$D4;$15CF25 |
    db $11,$52,$11,$EF,$11,$8D,$72,$BD;$15CF2D |
    db $2D,$08,$21,$05,$16,$7B,$6F,$D6;$15CF35 |
    db $62,$10,$4A,$AD,$3D,$6B,$31,$7B;$15CF3D |
    db $4B,$7B,$37,$7B,$03,$79,$12,$B2;$15CF45 |
    db $11,$51,$11,$CE,$11,$4C,$6A,$9B;$15CF4D |
    db $2D,$08,$21,$E5,$15,$39,$67,$94;$15CF55 |
    db $5A,$EF,$41,$8C,$39,$4A,$2D,$39;$15CF5D |
    db $47,$39,$33,$39,$03,$57,$0E,$91;$15CF65 |
    db $0D,$2F,$0D,$AD,$0D,$2B,$62,$79;$15CF6D |
    db $29,$E7,$1C,$C5,$15,$F7,$5E,$73;$15CF75 |
    db $52,$CE,$3D,$6B,$35,$29,$2D,$F7;$15CF7D |
    db $42,$F7,$2E,$F7,$02,$35,$0E,$70;$15CF85 |
    db $0D,$0E,$0D,$8C,$0D,$0B,$5E,$77;$15CF8D |
    db $25,$E7,$1C,$84,$11,$B5,$56,$31;$15CF95 |
    db $4E,$8C,$39,$4A,$31,$08,$29,$B5;$15CF9D |
    db $3A,$B5,$2A,$B5,$02,$F3,$0D,$4E;$15CFA5 |
    db $0D,$0D,$0D,$6B,$0D,$CA,$55,$55;$15CFAD |
    db $21,$C6,$18,$64,$11,$73,$4E,$10;$15CFB5 |
    db $46,$6B,$35,$29,$2D,$08,$25,$73;$15CFBD |
    db $36,$73,$26,$73,$02,$D2,$0D,$2D;$15CFC5 |
    db $0D,$EC,$0C,$4A,$0D,$A9,$4D,$33;$15CFCD |
    db $21,$C6,$18,$43,$0D,$31,$46,$CE;$15CFD5 |
    db $3D,$4A,$2D,$08,$29,$E7,$20,$31;$15CFDD |
    db $32,$31,$22,$31,$02,$90,$09,$0C;$15CFE5 |
    db $09,$CB,$08,$29,$09,$88,$45,$11;$15CFED |
    db $1D,$A5,$14,$23,$0D,$10,$42,$AD;$15CFF5 |
    db $39,$29,$29,$08,$25,$C6,$1C,$10;$15CFFD |
    db $2E,$10,$22,$10,$02,$6E,$09,$0B;$15D005 |
    db $09,$CA,$08,$08,$09,$67,$3D,$F0;$15D00D |
    db $18,$A5,$14,$03,$0D,$CE,$39,$6B;$15D015 |
    db $31,$08,$25,$E7,$1C,$A5,$18,$CE;$15D01D |
    db $25,$CE,$1D,$CE,$01,$4C,$09,$E9;$15D025 |
    db $08,$A8,$08,$E7,$08,$26,$35,$CE;$15D02D |
    db $14,$84,$10,$E2,$08,$8C,$31,$29;$15D035 |
    db $29,$E7,$20,$C6,$18,$A5,$14,$8C;$15D03D |
    db $21,$8C,$19,$8C,$01,$0B,$09,$C8;$15D045 |
    db $08,$87,$08,$C6,$08,$05,$2D,$AC;$15D04D |
    db $14,$63,$0C,$C2,$08,$4A,$29,$08;$15D055 |
    db $21,$C6,$18,$A5,$14,$84,$10,$4A;$15D05D |
    db $1D,$4A,$15,$4A,$01,$E9,$04,$A7;$15D065 |
    db $04,$66,$04,$A5,$04,$E4,$24,$8A;$15D06D |
    db $10,$63,$0C,$A2,$08,$08,$21,$C6;$15D075 |
    db $1C,$A5,$14,$84,$10,$63,$10,$08;$15D07D |
    db $15,$08,$11,$08,$01,$C7,$04,$85;$15D085 |
    db $04,$65,$04,$84,$04,$A4,$20,$88;$15D08D |
    db $0C,$42,$08,$61,$04,$C6,$18,$A5;$15D095 |
    db $14,$63,$10,$63,$0C,$42,$0C,$C6;$15D09D |
    db $10,$C6,$0C,$C6,$00,$85,$04,$64;$15D0A5 |
    db $04,$44,$04,$63,$04,$83,$18,$66;$15D0AD |
    db $08,$42,$08,$41,$04,$84,$10,$63;$15D0B5 |
    db $0C,$42,$0C,$42,$08,$42,$08,$84;$15D0BD |
    db $0C,$84,$08,$84,$00,$64,$04,$43;$15D0C5 |
    db $04,$22,$04,$42,$04,$62,$10,$44;$15D0CD |
    db $08,$21,$04,$20,$00,$42,$08,$42;$15D0D5 |
    db $08,$21,$04,$21,$04,$21,$04,$42;$15D0DD |
    db $04,$42,$04,$42,$00,$22,$00,$21;$15D0E5 |
    db $00,$21,$00,$21,$00,$21,$08,$22;$15D0ED |
    db $04,$21,$04,$00,$00,$00,$00,$00;$15D0F5 |
    db $00,$00,$00,$00,$00,$00,$00,$00;$15D0FD |
    db $00,$00,$00,$00,$00,$00,$00,$00;$15D105 |
    db $00,$00,$00,$00,$00,$00,$00,$00;$15D10D |
    db $00,$00,$00                ;$15D115 |
    LDA.W #$0032                  ;$15D118 |
    STA.W $7493                   ;$15D11B |
    LDA.W #$0032                  ;$15D11E |
    STA.W $7495                   ;$15D121 |
    INC.W $7ADF                   ;$15D124 |
    STZ.W $7366                   ;$15D127 |
    STZ.W Shooting_Ability        ;$15D12A |
    LDY.B $39                     ;$15D12D |
    LDA.W #$0000                  ;$15D12F |
    JSL.L PlayMusic          ;$15D132 |
    LDY.B $39                     ;$15D136 |
    LDA.W #$0000                  ;$15D138 |
    JSL.L PlaySFX                 ;$15D13B |
    LDY.B $39                     ;$15D13F |
    LDA.W #$DA4D                  ;$15D141 |
    LDX.W #$00EF                  ;$15D144 |
    LDY.W #$C010                  ;$15D147 |
    JSL.L WritePal                ;$15D14A |
    LDA.W #$9F92                  ;$15D14E |
    LDX.W #$00EF                  ;$15D151 |
    LDY.W #$E020                  ;$15D154 |
    JSL.L WritePal                ;$15D157 |
    LDA.W #$C6B9                  ;$15D15B |
    LDX.W #$00E9                  ;$15D15E |
    LDY.W #$3010                  ;$15D161 |
    JSL.L WritePal                ;$15D164 |
    LDA.W #$0002                  ;$15D168 |
    LDX.W #$0000                  ;$15D16B |
    LDY.W #$0000                  ;$15D16E |
    JSL.L CODE_FL_CAD629          ;$15D171 |
    LDY.B $39                     ;$15D175 |
    JML.L DestroyUsedObject       ;$15D177 |
    db $15,$72,$AB,$16,$FB,$A6,$14,$DA;$15D17B |
    db $8C,$CC,$33,$40,$00,$24,$21,$00;$15D183 |
    db $0F,$0D,$A7,$D1,$34,$D3,$8E,$D3;$15D18B |
    db $4D,$D4,$86,$D4,$9C,$D4,$B2,$D4;$15D193 |
    db $C8,$D4,$DE,$D4,$F4,$D4,$0A,$D5;$15D19B |
    db $2E,$D4,$23,$D5,$C0,$1D,$D6,$03;$15D1A3 |
    db $C0,$2A,$D3,$CA,$1B,$75,$76,$00;$15D1AB |
    db $00,$15,$72,$AB,$16,$FB,$A6,$14;$15D1B3 |
    db $DA,$8C,$CC,$33,$40,$00,$03,$10;$15D1BB |
    db $8E,$02,$26,$A0,$00,$27,$38,$00;$15D1C3 |
    db $24,$40,$FF,$02,$10,$02,$96,$40;$15D1CB |
    db $04,$80,$B0,$00,$90,$50,$FF,$02;$15D1D3 |
    db $23,$02,$6D,$C0,$1B,$D6,$CA,$15;$15D1DB |
    db $04,$B0,$14,$FC,$96,$C7,$02,$50;$15D1E3 |
    db $26,$A8,$00,$27,$F0,$FF,$E0,$52;$15D1EB |
    db $33,$80,$00,$C0,$6A,$D6,$CA,$C0;$15D1F3 |
    db $65,$9B,$00,$18,$40,$1A,$00,$00;$15D1FB |
    db $00,$00,$00,$0C,$00,$00,$00,$80;$15D203 |
    db $80,$FD,$A0,$14,$00,$90,$00,$06;$15D20B |
    db $B0,$E8,$FF,$02,$20,$1B,$42,$73;$15D213 |
    db $00,$03,$1B,$52,$73,$00,$00,$C0;$15D21B |
    db $65,$9B,$00,$18,$40,$1A,$00,$00;$15D223 |
    db $00,$00,$00,$0B,$00,$00,$00,$80;$15D22B |
    db $00,$00,$A8,$00,$00,$80,$E0,$FF;$15D233 |
    db $90,$C0,$FE,$B0,$0A,$00,$02,$20;$15D23B |
    db $98,$00,$00,$B8,$F6,$FF,$1B,$42;$15D243 |
    db $73,$00,$00,$B0,$F1,$FF,$02,$10;$15D24B |
    db $05,$02,$80,$E0,$FF,$90,$C0,$FE;$15D253 |
    db $B0,$0A,$00,$02,$20,$98,$00,$00;$15D25B |
    db $B8,$F6,$FF,$1B,$42,$73,$00,$00;$15D263 |
    db $B0,$F1,$FF,$02,$10,$07,$C0,$EA;$15D26B |
    db $9F,$00,$A0,$87,$ED,$00,$A0,$00;$15D273 |
    db $80,$E0,$FF,$90,$C0,$FE,$B0,$0A;$15D27B |
    db $00,$02,$20,$1B,$42,$73,$B8,$02;$15D283 |
    db $80,$80,$FF,$A0,$02,$00,$90,$00;$15D28B |
    db $02,$B0,$00,$00,$02,$32,$1B,$42;$15D293 |
    db $73,$00,$00,$1B,$3D,$30,$00,$00;$15D29B |
    db $F0,$2D,$E0,$40,$C0,$77,$D6,$CA;$15D2A3 |
    db $C0,$F1,$A3,$00,$B8,$00,$00,$00;$15D2AB |
    db $C0,$F1,$A3,$00,$B8,$00,$01,$00;$15D2B3 |
    db $C0,$F1,$A3,$00,$B8,$00,$02,$00;$15D2BB |
    db $C0,$F1,$A3,$00,$B8,$00,$03,$00;$15D2C3 |
    db $80,$80,$FF,$A0,$00,$00,$90,$00;$15D2CB |
    db $FD,$B0,$20,$00,$40,$1C,$02,$14;$15D2D3 |
    db $44,$6E,$44,$70,$44,$6C,$40,$1E;$15D2DB |
    db $02,$10,$24,$48,$4E,$C0,$E3,$9A;$15D2E3 |
    db $05,$03,$87,$FB,$D0,$C0,$FF,$D2;$15D2EB |
    db $CA,$1B,$DF,$7A,$00,$00,$1B,$AA;$15D2F3 |
    db $77,$01,$00,$01            ;$15D2FB |
    LDX.W #$0002                  ;$15D2FF |
    LDA.W #$80AE                  ;$15D302 |
    STA.W Obj_VAR3,X              ;$15D305 |
    LDA.W #$9819                  ;$15D308 |
    STA.W Obj_TickCallbackAddr,X  ;$15D30B |
    LDA.W #$00D0                  ;$15D30E |
    STA.W Obj_TickCallbackBank,X  ;$15D311 |
    LDX.W #$0004                  ;$15D314 |
    LDA.W #$0000                  ;$15D317 |
    STA.W Obj_VAR3,X              ;$15D31A |
    LDA.W #$98A5                  ;$15D31D |
    STA.W Obj_TickCallbackAddr,X  ;$15D320 |
    LDA.W #$00D0                  ;$15D323 |
    STA.W Obj_TickCallbackBank,X  ;$15D326 |
    RTL                           ;$15D329 |
    LDY.W #$0002                  ;$15D32A |
    LDX.W #$001A                  ;$15D32D |
    JML.L CODE_FL_05AC9C          ;$15D330 |
    db $C0,$1D,$D6,$03,$C0,$84,$D3,$CA;$15D334 |
    db $03,$76,$D3,$CA,$16,$EC,$A6,$33;$15D33C |
    db $40,$00,$02,$FA,$03,$41,$D5,$CA;$15D344 |

    db $02,$C8,$02,$FE,$16,$FB,$A6,$03;$15D34C |
    db $AF,$83,$04,$80,$00,$FF,$A0,$00;$15D354 |
    db $00,$90,$00,$FD,$B0,$20,$00,$05;$15D35C |
    db $02,$46,$40,$46,$42,$46,$44,$46;$15D364 |
    db $46,$07,$24,$48,$36,$03,$EE,$FB;$15D36C |
    db $D0,$01,$A9,$FF,$FF,$8D,$3A,$64;$15D374 |
    db $22,$08,$D6,$CA,$5C,$AF,$83,$04;$15D37C |
    db $A0,$04,$00,$A9,$DB,$AD,$5C,$D0;$15D384 |
    db $AB,$05,$15,$72,$AB,$26,$80,$00;$15D38C |
    db $27,$60,$00,$33,$20,$00,$40,$00;$15D394 |
    db $02,$3C,$E0,$05,$C0,$65,$9B,$00;$15D39C |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D3A4 |
    db $03,$00,$00,$00,$C0,$65,$9B,$00;$15D3AC |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D3B4 |
    db $04,$00,$00,$00,$C0,$65,$9B,$00;$15D3BC |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D3C4 |
    db $05,$00,$00,$00,$C0,$65,$9B,$00;$15D3CC |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D3D4 |
    db $06,$00,$00,$00,$C0,$65,$9B,$00;$15D3DC |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D3E4 |
    db $07,$00,$00,$00,$C0,$65,$9B,$00;$15D3EC |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D3F4 |
    db $08,$00,$00,$00,$C0,$65,$9B,$00;$15D3FC |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D404 |
    db $09,$00,$00,$00,$C0,$65,$9B,$00;$15D40C |
    db $18,$40,$1A,$00,$00,$00,$00,$00;$15D414 |
    db $0A,$00,$00,$00,$02,$01,$40,$03;$15D41C |
    db $02,$FA,$02,$70,$90,$00,$FD,$02;$15D424 |
    db $20,$00,$16,$EC,$A6,$03,$46,$D4;$15D42C |
    db $CA,$B0,$E0,$FF,$02,$64,$B0,$00;$15D434 |
    db $00,$02,$72,$B0,$20,$00,$02,$64;$15D43C |
    db $24,$00                    ;$15D444 |
    LDX.W #$0002                  ;$15D446 |
    JML.L CODE_FL_00A91D          ;$15D449 |
    db $26,$90,$00,$27,$3A,$00,$19,$01;$15D44D |
    db $00,$00,$0A,$63,$D4,$05,$0A,$44;$15D455 |
    db $05,$0A,$7A,$D4,$07,$00,$16,$EC;$15D45D |
    db $A6,$03,$3B,$C6,$CA,$33,$60,$00;$15D465 |
    db $19,$03,$00,$00,$19,$04,$C0,$00;$15D46D |
    db $19,$05,$FE,$FF,$0C,$64,$64,$64;$15D475 |
    db $19,$05,$00,$00,$64,$64,$64,$64;$15D47D |
    db $0C,$26,$81,$00,$27,$40,$00,$19;$15D485 |
    db $01,$00,$C0,$0A,$63,$D4,$05,$0A;$15D48D |
    db $44,$0D,$0A,$7A,$D4,$07,$00,$26;$15D495 |
    db $A0,$00,$27,$47,$00,$19,$01,$00;$15D49D |
    db $20,$0A,$63,$D4,$05,$0A,$44,$15;$15D4A5 |
    db $0A,$7A,$D4,$07,$00,$26,$9F,$00;$15D4AD |
    db $27,$52,$00,$19,$01,$00,$40,$0A;$15D4B5 |
    db $63,$D4,$05,$0A,$44,$1D,$0A,$7A;$15D4BD |
    db $D4,$07,$00,$26,$94,$00,$27,$4E;$15D4C5 |
    db $00,$19,$01,$00,$80,$0A,$63,$D4;$15D4CD |
    db $05,$0A,$44,$25,$0A,$7A,$D4,$07;$15D4D5 |
    db $00,$26,$8E,$00,$27,$4E,$00,$19;$15D4DD |
    db $01,$00,$E0,$0A,$63,$D4,$05,$0A;$15D4E5 |
    db $44,$2D,$0A,$7A,$D4,$07,$00,$26;$15D4ED |
    db $84,$00,$27,$50,$00,$19,$01,$00;$15D4F5 |
    db $A0,$0A,$63,$D4,$05,$0A,$44,$35;$15D4FD |
    db $0A,$7A,$D4,$07,$00,$33,$22,$00;$15D505 |
    db $26,$94,$00,$27,$44,$00,$19,$01;$15D50D |
    db $00,$60,$0A,$63,$D4,$05,$0A,$44;$15D515 |
    db $3D,$0A,$7A,$D4,$07,$00,$03,$3D;$15D51D |
    db $D5,$CA,$05,$06,$C0,$55,$A5,$00;$15D525 |
    db $06,$40,$0D,$00,$00,$00,$00,$00;$15D52D |
    db $58,$00,$00,$00,$02,$30,$07,$00;$15D535 |
    JML.L CODE_FL_D034E4          ;$15D53D |
    LDA.W $6240                   ;$15D541 |
    BMI CODE_15D587               ;$15D544 |
    LDA.W Helper_Ability          ;$15D546 |
    ASL A                         ;$15D549 |
    TAX                           ;$15D54A |
    LDA.L DATA16_CAD5B8,X         ;$15D54B |
    CLC                           ;$15D54F |
    ADC.W $64B8                   ;$15D550 |
    STA.W $64BA                   ;$15D553 |
    LDA.W Helper_Ability          ;$15D556 |
    CMP.W #$000C                  ;$15D559 |
    BEQ CODE_15D566               ;$15D55C |
    ASL A                         ;$15D55E |
    TAX                           ;$15D55F |
    LDA.L DATA16_CAD588,X         ;$15D560 |
    BRA CODE_15D572               ;$15D564 |


CODE_15D566:
    LDA.W $3094                   ;$15D566 |
    AND.W #$000C                  ;$15D569 |
    LSR A                         ;$15D56C |
    TAX                           ;$15D56D |
    LDA.L DATA16_CAD5B0,X         ;$15D56E |

CODE_15D572:
    STA.W $643A                   ;$15D572 |
    JSL.L CODE_FL_CAD608          ;$15D575 |
    LDA.L DATA16_CAD5E0,X         ;$15D579 |
    CLC                           ;$15D57D |
    ADC.W $6910                   ;$15D57E |
    STA.W $6910                   ;$15D581 |
    STA.W $6A04                   ;$15D584 |

CODE_15D587:
    RTL                           ;$15D587 |

DATA16_CAD588:
    dw $0000,$0072,$0072,$008E    ;$15D588 |
    dw $0072,$0072,$0072,$0072    ;$15D590 |
    dw $0076,$0072,$0076,$0072    ;$15D598 |
    dw $0078,$0076,$0072,$0072    ;$15D5A0 |
    dw $0078,$0076,$0070,$0072    ;$15D5A8 |

DATA16_CAD5B0:
    dw $0078,$007A,$007C,$007E    ;$15D5B0 |

DATA16_CAD5B8:
    dw $0000,$FFFE,$FFFE,$FFFE    ;$15D5B8 |
    dw $0002,$FFFE,$0002,$FFFE    ;$15D5C0 |
    dw $0002,$FFFE,$FFFE,$0002    ;$15D5C8 |
    dw $FFFE,$FFFE,$FFFE,$FFFE    ;$15D5D0 |
    dw $FFFE,$0002,$0002,$FFFE    ;$15D5D8 |

DATA16_CAD5E0:
    dw $0000,$0000,$0000,$0000    ;$15D5E0 |
    dw $0000,$0000,$0000,$0000    ;$15D5E8 |
    dw $0000,$0005,$0000,$0000    ;$15D5F0 |
    dw $0000,$0000,$0004,$0000    ;$15D5F8 |
    dw $0000,$0000,$0000,$0000    ;$15D600 |

CODE_FL_CAD608:
    LDA.W $6894                   ;$15D608 |
    STA.W $6896                   ;$15D60B |
    STA.W $698A                   ;$15D60E |
    LDA.W $690E                   ;$15D611 |
    STA.W $6910                   ;$15D614 |
    STA.W $6A04                   ;$15D617 |
    RTL                           ;$15D61A |

    LDA.W #$0132                  ;$15D61B |
    LDX.W $6240                   ;$15D61E |
    BMI CODE_15D625               ;$15D621 |
    INC A                         ;$15D623 |
    INC A                         ;$15D624 |

CODE_15D625:
    STA.W $6438                   ;$15D625 |
    RTL                           ;$15D628 |
    PHY                           ;$15D629 |
    LDY.B $39                     ;$15D62A |
    STA.W ObjVar0_Temp            ;$15D62C |
    LDA.W Obj_VAR1,Y              ;$15D62F |
    STA.W ObjVar1_Temp            ;$15D632 |
    STY.W ObjVar2_Temp            ;$15D635 |
    STZ.W ObjVar3_Temp            ;$15D638 |
    STZ.W ObjVar4_Temp            ;$15D63B |
    LDA.W #$0018                  ;$15D63E |
    STA.W ObjSlotMinimum          ;$15D641 |
    LDA.W #$0040                  ;$15D644 |
    STA.W ObjSlotMaximum          ;$15D647 |
    TXA                           ;$15D64A |
    CLC                           ;$15D64B |
    ADC.W Obj_XPositionMirror,Y   ;$15D64C |
    TAX                           ;$15D64F |
    PLA                           ;$15D650 |
    CLC                           ;$15D651 |
    ADC.W Obj_YPositionMirror,Y   ;$15D652 |
    TAY                           ;$15D655 |
    LDA.W #$001A                  ;$15D656 |
    AND.W #$7FFF                  ;$15D659 |
    JML.L CreateNewObject         ;$15D65C |

    db $A2                        ;$15D660 |
    ORA.B (IdentifySNES,X)        ;$15D661 |
    LDA.W #$8479                  ;$15D663 |
    JML.L LoadDMATable            ;$15D666 |

    LDA.W $64BA                   ;$15D66A |
    STA.W Obj_VAR1,Y              ;$15D66D |
    LDA.W #$0080                  ;$15D670 |
    STA.W $64BA                   ;$15D673 |
    RTL                           ;$15D676 |
    LDA.W Obj_VAR1,Y              ;$15D677 |
    STA.W $64BA                   ;$15D67A |
    RTL                           ;$15D67D |
    LDA.W #$D696                  ;$15D67E |
    LDX.W #$00CA                  ;$15D681 |
    JSL.L LoadDMATable            ;$15D684 |
    LDA.W #$87A0                  ;$15D688 |
    LDX.W #$00ED                  ;$15D68B |
    LDY.W #$0050                  ;$15D68E |
    JSL.L WritePal                ;$15D691 |
    RTL                           ;$15D695 |
    db $83,$00,$04,$75,$3E,$DF,$00,$66;$15D696 |
    db $83,$80,$10,$4D,$DF,$E2,$00,$68;$15D69E |
    db $83,$80,$1D,$20,$DD,$DE,$00,$00;$15D6A6 |
    db $83,$80,$1D,$27,$D4,$E3,$00,$10;$15D6AE |
    db $89,$00,$08,$63,$F8,$EE,$00,$48;$15D6B6 |
    db $0F,$00,$08,$00,$28,$7E,$00,$48;$15D6BE |
    db $89,$00,$04,$D0,$71,$E7,$00,$50;$15D6C6 |
    db $0F,$00,$04,$00,$24,$7E,$00,$50;$15D6CE |
    db $83,$C0,$02,$24,$6B,$EA,$60,$49;$15D6D6 |
    db $FF,$C0,$EF,$D9,$CA,$C0,$71,$D9;$15D6DE |
    db $CA,$1B,$26,$60,$59,$A9,$C0,$BE;$15D6E6 |
    db $84,$00,$16,$FB,$A6,$15,$72,$AB;$15D6EE |
    db $04,$14,$67,$95,$CC,$33,$60,$00;$15D6F6 |
    db $40,$FF,$C0,$94,$9C,$00,$09,$C0;$15D6FE |
    db $BB,$9C,$00,$00,$00,$60,$00,$C0;$15D706 |
    db $EA,$9F,$00,$F7,$ED,$E9,$00,$00;$15D70E |
    db $02,$C0,$9A,$9C,$00,$00,$02,$00;$15D716 |
    db $00,$00,$48,$C0,$CE,$9C,$00,$11;$15D71E |
    db $C0,$85,$9F,$00,$00,$C0,$6C,$9C;$15D726 |
    db $00,$82,$DC,$CA,$24,$C0,$10,$9D;$15D72E |
    db $00,$00,$00,$00,$00,$1B,$92,$68;$15D736 |
    db $00,$00,$1B,$0C,$69,$00,$00,$05;$15D73E |
    db $10,$C1,$CD,$9F,$00,$07,$F0,$0E;$15D746 |
    db $03,$0A,$DA,$CA,$02,$F0,$F0,$00;$15D74E |
    db $C0,$94,$D9,$CA,$C0,$6C,$9C,$00;$15D756 |
    db $AB,$DC,$CA,$C0,$BC,$9B,$00,$00;$15D75E |
    db $00,$00,$00,$02,$0F,$00,$00,$00;$15D766 |
    db $00,$00,$0C,$00,$00,$00,$26,$2E;$15D76E |
    db $00,$27,$3B,$00,$40,$00,$03,$48;$15D776 |
    db $DA,$CA,$01,$E0,$46,$04,$90,$80;$15D77E |
    db $FB,$B0,$48,$00,$02,$10,$24,$03;$15D786 |
    db $48,$DA,$CA,$01,$E0,$46,$04,$90;$15D78E |
    db $80,$04,$B0,$B8,$FF,$02,$10,$24;$15D796 |
    db $03,$1F,$DA,$CA,$01,$E0,$32,$04;$15D79E |
    db $4A,$01,$40,$00,$80,$E0,$FC,$90;$15D7A6 |
    db $E0,$FD,$A0,$30,$00,$B0,$50,$00;$15D7AE |
    db $02,$18,$BC,$BC,$FF,$40,$19,$AC;$15D7B6 |
    db $D4,$FF,$A0,$00,$00,$B0,$00,$00;$15D7BE |
    db $02,$18,$80,$00,$00,$90,$80,$FF;$15D7C6 |
    db $02,$3C,$C0,$BC,$9B,$00,$00,$00;$15D7CE |
    db $00,$00,$04,$0F,$00,$00,$00,$00;$15D7D6 |
    db $00,$0C,$00,$03,$00,$03,$71,$DA;$15D7DE |
    db $CA,$24,$26,$80,$00,$27,$80,$00;$15D7E6 |
    db $40,$18,$B0,$05,$00,$02,$40,$B0;$15D7EE |
    db $F4,$FF,$02,$40,$B0,$10,$00,$02;$15D7F6 |
    db $14,$03,$7F,$DA,$CA,$C0,$AE,$D9;$15D7FE |
    db $CA,$24,$02,$14,$40,$19,$90,$00;$15D806 |
    db $04,$A0,$A0,$FF,$B0,$C0,$FF,$02;$15D80E |
    db $10,$A0,$60,$00,$02,$10,$40,$02;$15D816 |
    db $B0,$40,$00,$02,$10,$24,$02,$1A;$15D81E |
    db $40,$13,$90,$00,$02,$B8,$20,$00;$15D826 |
    db $40,$14,$90,$00,$FE,$B8,$E0,$FF;$15D82E |
    db $24,$40,$15,$02,$14,$80,$60,$00;$15D836 |
    db $90,$40,$00,$02,$40,$40,$16,$90;$15D83E |
    db $00,$00,$02,$14,$4A,$17,$C0,$BC;$15D846 |
    db $9B,$00,$00,$00,$00,$00,$06,$0F;$15D84E |
    db $00,$00,$00,$00,$00,$0C,$00,$01;$15D856 |
    db $00,$40,$02,$90,$00,$FF,$02,$28;$15D85E |
    db $40,$11,$90,$00,$01,$A0,$F8,$FF;$15D866 |
    db $B0,$F8,$FF,$01,$E0,$32,$C0,$D4;$15D86E |
    db $D9,$CA,$03,$A7,$DA,$CA,$4A,$01;$15D876 |
    db $40,$00,$80,$E0,$FC,$90,$E0,$FD;$15D87E |
    db $A0,$30,$00,$B0,$50,$00,$02,$18;$15D886 |
    db $BC,$A0,$FF,$AC,$D0,$FF,$40,$11;$15D88E |
    db $80,$40,$03,$90,$00,$FF,$A0,$E0;$15D896 |
    db $FF,$B0,$0C,$00,$02,$18,$24,$94;$15D89E |
    db $80,$00,$C0,$BC,$D9,$CA,$40,$03;$15D8A6 |
    db $90,$00,$FC,$B0,$40,$00,$02,$10;$15D8AE |
    db $80,$00,$FD,$90,$00,$03,$A0,$20;$15D8B6 |
    db $00,$B0,$F0,$FF,$02,$18,$40,$09;$15D8BE |
    db $80,$00,$00,$90,$00,$FE,$A0,$00;$15D8C6 |
    db $00,$B2,$30,$00,$42,$08,$42,$07;$15D8CE |
    db $40,$04,$90,$00,$FE,$02,$10,$E0;$15D8D6 |
    db $0B,$C0,$BC,$9B,$00,$00,$00,$00;$15D8DE |
    db $00,$08,$0F,$00,$00,$00,$00,$00;$15D8E6 |
    db $0C,$00,$02,$00,$C0,$BC,$9B,$00;$15D8EE |
    db $00,$00,$00,$00,$04,$0F,$00,$00;$15D8F6 |
    db $00,$00,$00,$0C,$00,$04,$00,$40;$15D8FE |
    db $06,$80,$00,$FA,$90,$00,$06,$A0;$15D906 |
    db $00,$00,$B4,$00,$00,$80,$00,$06;$15D90E |
    db $92,$00,$FA,$24,$02,$1E,$40,$11;$15D916 |
    db $80,$00,$05,$AA,$A0,$FF,$40,$00;$15D91E |
    db $A0,$00,$00,$05,$02,$82,$00,$02;$15D926 |
    db $82,$00,$FE,$07,$24,$02,$1E,$05;$15D92E |
    db $04,$40,$07,$90,$00,$02,$B6,$D0;$15D936 |
    db $FF,$43,$08,$43,$09,$40,$0A,$90;$15D93E |
    db $00,$FE,$B6,$30,$00,$43,$09,$43;$15D946 |
    db $08,$07,$24,$05,$10,$C1,$DD,$9F;$15D94E |
    db $00,$07,$C0,$A6,$DB,$CA,$C0,$EF;$15D956 |
    db $9B,$00,$F0,$00,$1B,$26,$60,$6A;$15D95E |
    db $A9,$C0,$7D,$D9,$CA,$1B,$92,$73;$15D966 |
    db $01,$00,$01                ;$15D96E |
    LDA.W Shooting_Ability        ;$15D971 |
    BEQ CODE_15D97C               ;$15D974 |
    STA.W Obj_VAR2,Y              ;$15D976 |
    STZ.W Shooting_Ability        ;$15D979 |

CODE_15D97C:
    RTL                           ;$15D97C |
    LDA.W Obj_VAR2,Y              ;$15D97D |
    BEQ CODE_15D993               ;$15D980 |
    STA.W Shooting_Ability        ;$15D982 |
    LDA.W $7AC1                   ;$15D985 |
    BNE CODE_15D993               ;$15D988 |
    LDA.W #$FFFF                  ;$15D98A |
    STA.W $7495                   ;$15D98D |
    STA.W Helper_Ability          ;$15D990 |

CODE_15D993:
    RTL                           ;$15D993 |
    LDA.W #$0001                  ;$15D994 |
    LDX.W Current_SubGame         ;$15D997 |
    CPX.W #$0000                  ;$15D99A |
    BEQ CODE_15D9AA               ;$15D99D |
    LDA.W #$0040                  ;$15D99F |
    CPX.W #$0005                  ;$15D9A2 |
    BEQ CODE_15D9AA               ;$15D9A5 |
    LDA.W #$003B                  ;$15D9A7 |

CODE_15D9AA:
    JML.L PlayMusic          ;$15D9AA |
    LDA.W #$DAFD                  ;$15D9AE |
    LDY.W #$00CA                  ;$15D9B1 |
    LDX.W #$0002                  ;$15D9B4 |
    JSL.L CODE_FL_008F64          ;$15D9B7 |
    RTL                           ;$15D9BB |
    LDA.W #$DB15                  ;$15D9BC |
    LDY.W #$00CA                  ;$15D9BF |
    LDX.W #$0002                  ;$15D9C2 |
    JSL.L CODE_FL_008F64          ;$15D9C5 |
    RTL                           ;$15D9C9 |
    LDY.W #$0002                  ;$15D9CA |
    JSL.L CODE_FL_00E2F8          ;$15D9CD |
    LDY.B $39                     ;$15D9D1 |
    RTL                           ;$15D9D3 |

    LDA.W $738E                   ;$15D9D4 |
    DEC A                         ;$15D9D7 |
    STA.W $738E                   ;$15D9D8 |
    LDA.W #$0001                  ;$15D9DB |
    STA.W ReloadMapOnUnpause      ;$15D9DE |
    LDA.W #$0003                  ;$15D9E1 |
    STA.W Lives                   ;$15D9E4 |
    INC.W $75EF                   ;$15D9E7 |
    JSL.L CODE_FL_0599E9          ;$15D9EA |
    RTL                           ;$15D9EE |
    LDX.B $39                     ;$15D9EF |
    STZ.W Obj_VAR0,X              ;$15D9F1 |
    STZ.W Obj_VAR1,X              ;$15D9F4 |
    STZ.W Obj_VAR2,X              ;$15D9F7 |
    STZ.W Obj_VAR3,X              ;$15D9FA |
    STZ.W Obj_VAR4,X              ;$15D9FD |
    STZ.W Obj_VAR5,X              ;$15DA00 |
    STZ.W Obj_VAR6,X              ;$15DA03 |
    STZ.W Obj_VAR7,X              ;$15DA06 |
    RTL                           ;$15DA09 |
    LDA.W P1_Frame                ;$15DA0A |
    AND.W #$C0C0                  ;$15DA0D |
    BEQ CODE_15DA1E               ;$15DA10 |
    LDA.W #$D754                  ;$15DA12 |
    LDY.W #$00CA                  ;$15DA15 |
    LDX.B $39                     ;$15DA18 |
    JSL.L CODE_FL_008F64          ;$15DA1A |

CODE_15DA1E:
    RTL                           ;$15DA1E |
    LDA.W P1_Frame                ;$15DA1F |
    AND.W #$C0C0                  ;$15DA22 |
    BEQ CODE_15DA33               ;$15DA25 |
    LDA.W #$D7A3                  ;$15DA27 |
    LDY.W #$00CA                  ;$15DA2A |
    LDX.B $39                     ;$15DA2D |
    JSL.L CODE_FL_008F64          ;$15DA2F |

CODE_15DA33:
    LDA.W P1_Frame                ;$15DA33 |
    AND.W #$0800                  ;$15DA36 |
    BEQ CODE_15DA47               ;$15DA39 |
    LDA.W #$D781                  ;$15DA3B |
    LDY.W #$00CA                  ;$15DA3E |
    LDX.B $39                     ;$15DA41 |
    JSL.L CODE_FL_008F64          ;$15DA43 |

CODE_15DA47:
    RTL                           ;$15DA47 |
    LDA.W P1_Frame                ;$15DA48 |
    AND.W #$C0C0                  ;$15DA4B |
    BEQ CODE_15DA5C               ;$15DA4E |
    LDA.W #$D872                  ;$15DA50 |
    LDY.W #$00CA                  ;$15DA53 |
    LDX.B $39                     ;$15DA56 |
    JSL.L CODE_FL_008F64          ;$15DA58 |

CODE_15DA5C:
    LDA.W P1_Frame                ;$15DA5C |
    AND.W #$0400                  ;$15DA5F |
    BEQ CODE_15DA70               ;$15DA62 |
    LDA.W #$D792                  ;$15DA64 |
    LDY.W #$00CA                  ;$15DA67 |
    LDX.B $39                     ;$15DA6A |
    JSL.L CODE_FL_008F64          ;$15DA6C |

CODE_15DA70:
    RTL                           ;$15DA70 |
    LDY.B $39                     ;$15DA71 |
    LDX.W #$0002                  ;$15DA73 |
    LDA.W Obj_YPosition,Y         ;$15DA76 |
    STA.W Obj_YPosition,X         ;$15DA79 |
    STA.W Obj_YPositionMirror,X   ;$15DA7C |
    LDA.W P1_Frame                ;$15DA7F |
    AND.W #$C0C0                  ;$15DA82 |
    BEQ CODE_15DAA6               ;$15DA85 |
    LDA.W $738E                   ;$15DA87 |
    DEC A                         ;$15DA8A |
    STA.W $738E                   ;$15DA8B |
    LDA.W #$0000                  ;$15DA8E |
    STA.W ReloadMapOnUnpause      ;$15DA91 |
    LDA.W #$0003                  ;$15DA94 |
    STA.W Lives                   ;$15DA97 |
    LDA.W #$D950                  ;$15DA9A |
    LDY.W #$00CA                  ;$15DA9D |
    LDX.B $39                     ;$15DAA0 |
    JSL.L CODE_FL_008F64          ;$15DAA2 |

CODE_15DAA6:
    RTL                           ;$15DAA6 |
    LDA.W P1_Frame                ;$15DAA7 |
    AND.W #$C0C0                  ;$15DAAA |
    BEQ CODE_15DABB               ;$15DAAD |
    LDA.W #$D950                  ;$15DAAF |
    LDY.W #$00CA                  ;$15DAB2 |
    LDX.B $39                     ;$15DAB5 |
    JSL.L CODE_FL_008F64          ;$15DAB7 |

CODE_15DABB:
    RTL                           ;$15DABB |
    db $C0,$6C,$92,$00,$24,$C0,$EF,$D9;$15DABC |
    db $CA,$C0,$8C,$DB,$CA,$16,$FB,$A6;$15DAC4 |
    db $15,$04,$B0,$26,$80,$00,$27,$80;$15DACC |
    db $00,$14,$FC,$96,$C7,$33,$5F,$00;$15DAD4 |
    db $35,$7D,$01,$02,$0C,$35,$7F,$01;$15DADC |
    db $02,$0C,$35,$81,$01,$02,$0C,$35;$15DAE4 |
    db $83,$01,$02,$0C,$35,$81,$01,$02;$15DAEC |
    db $0C,$35,$7F,$01,$02,$0C,$0E,$DC;$15DAF4 |
    db $DA,$15,$72,$AB,$14,$67,$95,$CC;$15DAFC |
    db $26,$80,$00,$27,$80,$00,$40,$1A;$15DB04 |
    db $02,$3C,$40,$1B,$02,$3C,$0E,$0A;$15DB0C |
    db $DB,$04,$15,$F5,$AF,$35,$83,$01;$15DB14 |
    db $02,$0C,$35,$85,$01,$02,$0C,$35;$15DB1C |
    db $87,$01,$02,$0C,$35,$89,$01,$02;$15DB24 |
    db $0C,$35,$87,$01,$02,$0C,$15,$72;$15DB2C |
    db $AB,$26,$80,$00,$27,$80,$00,$14;$15DB34 |
    db $67,$95,$CC,$40,$0B,$82,$00,$FE;$15DB3C |
    db $82,$00,$02,$80,$00,$01,$90,$00;$15DB44 |
    db $FC,$B0,$50,$00,$02,$18,$15,$F5;$15DB4C |
    db $AF,$14,$FC,$96,$C7,$35,$7F,$01;$15DB54 |
    db $80,$80,$00,$90,$00,$FE,$B0,$40;$15DB5C |
    db $00,$02,$10,$24,$05,$02,$35,$81;$15DB64 |
    db $01,$02,$03,$35,$7F,$01,$02,$03;$15DB6C |
    db $07,$35,$81,$01,$02,$10,$80,$80;$15DB74 |
    db $02,$43,$0C,$42,$0E,$42,$10,$43;$15DB7C |
    db $12,$42,$10,$42,$0E,$0E,$7D,$DB;$15DB84 |
    LDY.W #$0002                  ;$15DB8C |
    LDA.W #$0015                  ;$15DB8F |
    JSL.L CODE_FL_029C71          ;$15DB92 |
    LDX.B $39                     ;$15DB96 |
    LDA.W #$EEF7                  ;$15DB98 |
    LDX.W #$00E9                  ;$15DB9B |
    LDY.W #$8010                  ;$15DB9E |
    JSL.L WritePal                ;$15DBA1 |
    RTL                           ;$15DBA5 |
    LDY.W #$0002                  ;$15DBA6 |
    LDA.W #$0000                  ;$15DBA9 |
    JSL.L CODE_FL_029C71          ;$15DBAC |
    RTL                           ;$15DBB0 |
    db $24,$C0,$EF,$D9,$CA,$16,$FB,$A6;$15DBB1 |
    db $15,$72,$AB,$26,$76,$00,$27,$8A;$15DBB9 |
    db $00,$14,$67,$95,$CC,$33,$60,$00;$15DBC1 |
    db $40,$1C,$01,$24,$C0,$EF,$D9,$CA;$15DBC9 |
    db $16,$FB,$A6,$15,$72,$AB,$26,$50;$15DBD1 |
    db $00,$27,$70,$00,$14,$67,$95,$CC;$15DBD9 |
    db $33,$60,$00,$05,$02,$42,$0C,$42;$15DBE1 |
    db $0D,$42,$0E,$42,$0F,$42,$10,$07;$15DBE9 |
    db $00,$24,$C0,$EF,$D9,$CA,$03,$21;$15DBF1 |
    db $DC,$CA,$15,$72,$AB,$16,$FB,$A6;$15DBF9 |
    db $26,$00,$00,$27,$00,$00,$40,$FF;$15DC01 |
    db $C0,$8F,$A2,$00,$93,$86,$EA,$00;$15DC09 |
    db $20,$7E,$B0,$E0,$FF,$02,$40,$90;$15DC11 |
    db $00,$F8,$B0,$20,$00,$02,$40,$00;$15DC19 |
    LDY.B $39                     ;$15DC21 |
    LDA.W Obj_YPosition,Y         ;$15DC23 |
    STA.W $303D                   ;$15DC26 |
    LDA.W Obj_VAR3,Y              ;$15DC29 |
    BNE CODE_15DC48               ;$15DC2C |
    LDA.W $303D                   ;$15DC2E |
    CMP.W #$FF00                  ;$15DC31 |
    BPL CODE_15DC48               ;$15DC34 |
    LDA.W #$DCCC                  ;$15DC36 |
    LDX.W #$00CA                  ;$15DC39 |
    JSL.L LoadDMATable            ;$15DC3C |
    LDY.B $39                     ;$15DC40 |
    LDA.W #$FFFF                  ;$15DC42 |
    STA.W Obj_VAR3,Y              ;$15DC45 |

CODE_15DC48:
    RTL                           ;$15DC48 |
    db $2E,$00,$C0,$EF,$D9,$CA,$16,$BA;$15DC49 |
    db $A8,$2A,$00,$00,$00,$2B,$00,$00;$15DC51 |
    db $00,$40,$FF,$05,$03,$30,$00,$00;$15DC59 |
    db $FE,$02,$01,$30,$00,$00,$02,$02;$15DC61 |
    db $02,$30,$00,$00,$FE,$02,$01,$07;$15DC69 |
    db $00,$21,$01,$0F,$05,$BC,$DA,$B1;$15DC71 |
    db $DB,$CC,$DB,$F2,$DB,$49,$DC,$00;$15DC79 |
    db $00,$83,$C0,$3A,$82,$B7,$DA,$00;$15DC81 |
    db $00,$83,$80,$1E,$F2,$2D,$DE,$00;$15DC89 |
    db $66,$83,$00,$14,$30,$2E,$E1,$00;$15DC91 |
    db $76,$89,$00,$04,$FC,$8F,$E8,$00;$15DC99 |
    db $48,$0F,$00,$04,$00,$24,$7E,$00;$15DCA1 |
    db $48,$FF,$89,$00,$04,$54,$10,$E7;$15DCA9 |
    db $00,$4C,$0F,$00,$04,$00,$28,$7E;$15DCB1 |
    db $00,$4C,$09,$00,$04,$00,$24,$7E;$15DCB9 |
    db $00,$48,$0F,$00,$04,$00,$2C,$7E;$15DCC1 |
    db $00,$48,$FF,$09,$00,$04,$00,$20;$15DCC9 |
    db $7E,$00,$48,$0F,$00,$04,$00,$24;$15DCD1 |
    db $7E,$00,$48,$FF,$80,$00,$68,$00;$15DCD9 |
    db $3C,$00,$3C,$00,$83,$00,$57,$00;$15DCE1 |
    db $00,$00,$00,$00,$00,$00,$48,$00;$15DCE9 |

    JSL.L CODE_FL_00D883          ;$15DCF1 |
    LDA.W #$A8FC                  ;$15DCF5 |
    STA.W Obj_UnknownCallback,Y   ;$15DCF8 |
    LDA.W #$AB90                  ;$15DCFB |
    STA.W Obj_DrawCallback,Y      ;$15DCFE |
    JSL.L CODE_FL_00E1BF          ;$15DD01 |
    JSL.L CODE_FL_00E465          ;$15DD05 |
    LDA.W #$0080                  ;$15DD09 |
    LDX.W #$0080                  ;$15DD0C |
    JSR.W CODE_FN_15F398          ;$15DD0F |
    LDA.W #$B800                  ;$15DD12 |
    STA.W $307D                   ;$15DD15 |
    LDA.W #$0000                  ;$15DD18 |
    STA.W $778E                   ;$15DD1B |
    LDA.W #$0100                  ;$15DD1E |
    LDX.W #$0100                  ;$15DD21 |
    JSR.W CODE_FN_15F39F          ;$15DD24 |
    LDA.W #$0000                  ;$15DD27 |
    LDX.W #$0000                  ;$15DD2A |
    JSR.W CODE_FN_15F3A6          ;$15DD2D |
    LDA.W #$0011                  ;$15DD30 |
    STA.W MainScreenDesignation   ;$15DD33 |
    LDA.W #$0000                  ;$15DD36 |
    LDX.W #$0000                  ;$15DD39 |
    LDY.W #$0000                  ;$15DD3C |
    JSL.L ConfigureLayer1         ;$15DD3F |
    LDA.W #$0000                  ;$15DD43 |
    LDX.W #$4000                  ;$15DD46 |
    LDY.W #$4800                  ;$15DD49 |
    JSL.L ConfigureLayer2         ;$15DD4C |
    LDA.W #$0000                  ;$15DD50 |
    LDX.W #$6000                  ;$15DD53 |
    JSL.L UpdateVramSpriteTileSize;$15DD56 |
    LDA.W #$0007                  ;$15DD5A |
    JSL.L UpdateSNESMode          ;$15DD5D |
    LDA.W #$00C0                  ;$15DD61 |
    STA.W Mode7_Settings          ;$15DD64 |
    PEA.W $007E                   ;$15DD67 |
    PLB                           ;$15DD6A |
    LDA.W #$00EF                  ;$15DD6B |
    LDX.W #$CD73                  ;$15DD6E |
    LDY.W #$2000                  ;$15DD71 |
    JSL.L DecompressData          ;$15DD74 |
    PLB                           ;$15DD78 |
    LDX.W #$00CA                  ;$15DD79 |
    LDA.W #$E5CC                  ;$15DD7C |
    JSL.L LoadDMATable            ;$15DD7F |
    LDX.W #$0001                  ;$15DD83 |
    LDA.W #$8479                  ;$15DD86 |
    JSL.L LoadDMATable            ;$15DD89 |
    LDA.W #$F3D5                  ;$15DD8D |
    LDX.W #$00CA                  ;$15DD90 |
    JSL.L SA1_ExecuteSNES         ;$15DD93 |
    LDA.L DATA8_EB1825            ;$15DD97 |
    STA.W $778C                   ;$15DD9B |
    LDA.W #$1827                  ;$15DD9E |
    LDX.W #$00EB                  ;$15DDA1 |
    LDY.W #$017F                  ;$15DDA4 |
    JSL.L WritePal                ;$15DDA7 |
    LDA.W #$DE72                  ;$15DDAB |
    LDX.W #$00EF                  ;$15DDAE |
    LDY.W #$810F                  ;$15DDB1 |
    JSL.L WritePal                ;$15DDB4 |
    LDA.W #$DE18                  ;$15DDB8 |
    LDX.W #$00EF                  ;$15DDBB |
    LDY.W #$910F                  ;$15DDBE |
    JSL.L WritePal                ;$15DDC1 |
    LDA.W #$E67E                  ;$15DDC5 |
    LDX.W #$00EF                  ;$15DDC8 |
    LDY.W #$A10A                  ;$15DDCB |
    JSL.L WritePal                ;$15DDCE |
    LDA.W #$0000                  ;$15DDD2 |
    JSL.L CODE_FL_0085C7          ;$15DDD5 |
    STZ.W $7796                   ;$15DDD9 |
    LDA.W #$F586                  ;$15DDDC |
    STA.W $3097                   ;$15DDDF |
    LDA.W #$80CA                  ;$15DDE2 |
    STA.W $3099                   ;$15DDE5 |
    LDA.W #$F5D0                  ;$15DDE8 |
    LDX.W #$00CA                  ;$15DDEB |
    JSL.L SA1_ExecuteSNES         ;$15DDEE |
    LDY.B $39                     ;$15DDF2 |
    LDA.W #$E4A3                  ;$15DDF4 |
    LDX.W #$00CA                  ;$15DDF7 |
    JSL.L CODE_FL_00E1B7          ;$15DDFA |
    LDA.W #$0078                  ;$15DDFE |
    LDX.W #$0090                  ;$15DE01 |
    JSR.W CODE_FN_15F398          ;$15DE04 |
    LDA.W #$0010                  ;$15DE07 |
    LDX.W #$FFF0                  ;$15DE0A |
    JSR.W CODE_FN_15F3A6          ;$15DE0D |
    JSL.L CODE_FL_00E0A3          ;$15DE10 |
    LDA.W #$0000                  ;$15DE14 |
    LDX.W #$0000                  ;$15DE17 |
    JSR.W CODE_FN_15F3A6          ;$15DE1A |
    JSL.L CODE_FL_00E097          ;$15DE1D |
    LDA.W #$FFE0                  ;$15DE21 |
    LDX.W #$0020                  ;$15DE24 |
    JSR.W CODE_FN_15F3A6          ;$15DE27 |
    JSL.L CODE_FL_00E0A3          ;$15DE2A |
    LDA.W #$0000                  ;$15DE2E |
    LDX.W #$0000                  ;$15DE31 |
    JSR.W CODE_FN_15F3A6          ;$15DE34 |
    JSL.L CODE_FL_00E097          ;$15DE37 |
    LDA.W #$0010                  ;$15DE3B |
    LDX.W #$FFF0                  ;$15DE3E |
    JSR.W CODE_FN_15F3A6          ;$15DE41 |
    JSL.L CODE_FL_00E0A3          ;$15DE44 |
    LDA.W #$0000                  ;$15DE48 |
    LDX.W #$0000                  ;$15DE4B |
    JSR.W CODE_FN_15F3A6          ;$15DE4E |
    LDA.W #$0078                  ;$15DE51 |
    LDX.W #$0080                  ;$15DE54 |
    JSR.W CODE_FN_15F398          ;$15DE57 |
    LDA.W #$0030                  ;$15DE5A |
    JSL.L CODE_FL_00E17F          ;$15DE5D |
    STZ.W $7794                   ;$15DE61 |
    LDX.W #$0000                  ;$15DE64 |
    LDY.W #$0000                  ;$15DE67 |
    LDA.W #$0000                  ;$15DE6A |
    JSR.W CODE_FN_15F3AD          ;$15DE6D |
    LDA.W #$0200                  ;$15DE70 |
    LDX.W #$FD00                  ;$15DE73 |
    JSL.L CODE_FL_00E539          ;$15DE76 |
    LDA.W #$FFB0                  ;$15DE7A |
    LDX.W #$0060                  ;$15DE7D |
    JSL.L CODE_FL_00E5CE          ;$15DE80 |
    LDA.W #$0040                  ;$15DE84 |
    STA.W $778E                   ;$15DE87 |
    LDA.W #$FFFA                  ;$15DE8A |
    LDX.W #$FFFA                  ;$15DE8D |
    JSR.W CODE_FN_15F3A6          ;$15DE90 |
    LDA.W #$0010                  ;$15DE93 |
    STA.W Obj_VAR8,Y              ;$15DE96 |

CODE_JP_15DE99:
    LDA.W #$F3D9                  ;$15DE99 |
    LDX.W #$00CA                  ;$15DE9C |
    JSL.L SA1_ExecuteSNES         ;$15DE9F |
    JSL.L CODE_FL_00E091          ;$15DEA3 |
    TYX                           ;$15DEA7 |
    DEC.W Obj_VAR8,X              ;$15DEA8 |
    BEQ CODE_95DEB0               ;$15DEAB |
    JMP.W CODE_JP_15DE99          ;$15DEAD |

CODE_95DEB0:
    LDA.W #$FF00                  ;$15DEB0 |
    LDX.W #$0180                  ;$15DEB3 |
    JSL.L CODE_FL_00E5CE          ;$15DEB6 |
    LDX.W #$0100                  ;$15DEBA |
    LDY.W #$0050                  ;$15DEBD |
    LDA.W #$0006                  ;$15DEC0 |
    JSR.W CODE_FN_15F3AD          ;$15DEC3 |
    LDX.W #$0100                  ;$15DEC6 |
    LDY.W #$0030                  ;$15DEC9 |
    LDA.W #$0008                  ;$15DECC |
    JSR.W CODE_FN_15F3AD          ;$15DECF |
    LDX.W #$0100                  ;$15DED2 |
    LDY.W #$0040                  ;$15DED5 |
    LDA.W #$000A                  ;$15DED8 |
    JSR.W CODE_FN_15F3AD          ;$15DEDB |
    LDA.W #$FFF9                  ;$15DEDE |
    LDX.W #$FFF9                  ;$15DEE1 |
    JSR.W CODE_FN_15F3A6          ;$15DEE4 |
    LDA.W #$0008                  ;$15DEE7 |
    STA.W Obj_VAR8,Y              ;$15DEEA |

CODE_JP_15DEED:
    LDA.W #$F3D9                  ;$15DEED |
    LDX.W #$00CA                  ;$15DEF0 |
    JSL.L SA1_ExecuteSNES         ;$15DEF3 |
    JSL.L CODE_FL_00E091          ;$15DEF7 |
    TYX                           ;$15DEFB |
    DEC.W Obj_VAR8,X              ;$15DEFC |
    BEQ CODE_95DF04               ;$15DEFF |
    JMP.W CODE_JP_15DEED          ;$15DF01 |

CODE_95DF04:
    LDA.W #$FD00                  ;$15DF04 |
    LDX.W #$0400                  ;$15DF07 |
    JSL.L CODE_FL_00E5CE          ;$15DF0A |
    LDA.W #$0007                  ;$15DF0E |
    STA.W Obj_VAR8,Y              ;$15DF11 |

CODE_JP_15DF14:
    LDA.W #$F3D9                  ;$15DF14 |
    LDX.W #$00CA                  ;$15DF17 |
    JSL.L SA1_ExecuteSNES         ;$15DF1A |
    JSL.L CODE_FL_00E091          ;$15DF1E |
    TYX                           ;$15DF22 |
    DEC.W Obj_VAR8,X              ;$15DF23 |
    BEQ CODE_95DF2B               ;$15DF26 |
    JMP.W CODE_JP_15DF14          ;$15DF28 |

CODE_95DF2B:
    LDA.W #$0000                  ;$15DF2B |
    STA.W $778E                   ;$15DF2E |
    LDA.W #$0000                  ;$15DF31 |
    LDX.W #$0000                  ;$15DF34 |
    JSR.W CODE_FN_15F3A6          ;$15DF37 |
    JSL.L CODE_FL_00E465          ;$15DF3A |
    LDX.W #$00CA                  ;$15DF3E |
    LDA.W #$E68D                  ;$15DF41 |
    JSL.L LoadDMATable            ;$15DF44 |
    LDY.B $39                     ;$15DF48 |
    LDA.W #$0120                  ;$15DF4A |
    LDX.W #$0160                  ;$15DF4D |
    JSR.W CODE_FN_15F35A          ;$15DF50 |
    LDA.W #$0200                  ;$15DF53 |
    LDX.W #$0188                  ;$15DF56 |
    JSR.W CODE_FN_15F398          ;$15DF59 |
    LDA.W #$3000                  ;$15DF5C |
    STA.W $307D                   ;$15DF5F |
    LDA.W #$0A00                  ;$15DF62 |
    LDX.W #$0A00                  ;$15DF65 |
    JSR.W CODE_FN_15F39F          ;$15DF68 |
    LDA.W #$F700                  ;$15DF6B |
    LDX.W #$0700                  ;$15DF6E |
    JSL.L CODE_FL_00E539          ;$15DF71 |
    LDA.W #$0060                  ;$15DF75 |
    LDX.W #$FFCE                  ;$15DF78 |
    JSL.L CODE_FL_00E5CE          ;$15DF7B |
    LDA.W #$FFD8                  ;$15DF7F |
    LDX.W #$FFD8                  ;$15DF82 |
    JSR.W CODE_FN_15F3A6          ;$15DF85 |
    LDA.W #$FF00                  ;$15DF88 |
    STA.W $778E                   ;$15DF8B |
    JSL.L CODE_FL_00E14B          ;$15DF8E |
    LDA.W #$FFDC                  ;$15DF92 |
    LDX.W #$FFDC                  ;$15DF95 |
    JSR.W CODE_FN_15F3A6          ;$15DF98 |
    LDA.W #$FD00                  ;$15DF9B |
    STA.W $778E                   ;$15DF9E |
    LDA.W #$0000                  ;$15DFA1 |
    LDX.W #$FFA0                  ;$15DFA4 |
    JSL.L CODE_FL_00E5CE          ;$15DFA7 |
    JSL.L CODE_FL_00E0D3          ;$15DFAB |
    LDA.W #$FFF0                  ;$15DFAF |
    LDX.W #$FFF0                  ;$15DFB2 |
    JSR.W CODE_FN_15F3A6          ;$15DFB5 |
    LDA.W #$FB00                  ;$15DFB8 |
    STA.W $778E                   ;$15DFBB |
    LDA.W #$FFE0                  ;$15DFBE |
    LDX.W #$0000                  ;$15DFC1 |
    JSL.L CODE_FL_00E5CE          ;$15DFC4 |
    JSL.L CODE_FL_00E0EB          ;$15DFC8 |
    LDA.W #$FFEE                  ;$15DFCC |
    LDX.W #$FFEE                  ;$15DFCF |
    JSR.W CODE_FN_15F3A6          ;$15DFD2 |
    LDA.W #$F780                  ;$15DFD5 |
    STA.W $778E                   ;$15DFD8 |
    LDA.W #$FFC0                  ;$15DFDB |
    LDX.W #$0080                  ;$15DFDE |
    JSL.L CODE_FL_00E5CE          ;$15DFE1 |
    JSL.L CODE_FL_00E0F7          ;$15DFE5 |
    LDA.W #$FFF4                  ;$15DFE9 |
    LDX.W #$FFF4                  ;$15DFEC |
    JSR.W CODE_FN_15F3A6          ;$15DFEF |
    LDA.W #$FE00                  ;$15DFF2 |
    STA.W $778E                   ;$15DFF5 |
    LDA.W #$FF60                  ;$15DFF8 |
    LDX.W #$FFC0                  ;$15DFFB |
    JSL.L CODE_FL_00E5CE          ;$15DFFE |
    JSL.L CODE_FL_00E0BB          ;$15E002 |
    JSL.L CODE_FL_00E465          ;$15E006 |
    LDA.W #$0000                  ;$15E00A |
    STA.W $778E                   ;$15E00D |
    LDA.W #$FFF0                  ;$15E010 |
    LDX.W #$0010                  ;$15E013 |
    JSR.W CODE_FN_15F3A6          ;$15E016 |
    JSL.L CODE_FL_00E0A3          ;$15E019 |
    LDA.W #$0000                  ;$15E01D |
    LDX.W #$0000                  ;$15E020 |
    JSR.W CODE_FN_15F3A6          ;$15E023 |
    JSL.L CODE_FL_00E097          ;$15E026 |
    LDA.W #$0020                  ;$15E02A |
    LDX.W #$FFE0                  ;$15E02D |
    JSR.W CODE_FN_15F3A6          ;$15E030 |
    JSL.L CODE_FL_00E0A3          ;$15E033 |
    LDA.W #$0000                  ;$15E037 |
    LDX.W #$0000                  ;$15E03A |
    JSR.W CODE_FN_15F3A6          ;$15E03D |
    JSL.L CODE_FL_00E097          ;$15E040 |
    LDA.W #$FFF0                  ;$15E044 |
    LDX.W #$0010                  ;$15E047 |
    JSR.W CODE_FN_15F3A6          ;$15E04A |
    JSL.L CODE_FL_00E0A3          ;$15E04D |
    LDA.W #$0000                  ;$15E051 |
    LDX.W #$0000                  ;$15E054 |
    JSR.W CODE_FN_15F3A6          ;$15E057 |
    LDA.W #$0002                  ;$15E05A |
    STA.W Obj_VAR8,Y              ;$15E05D |

CODE_JP_15E060:
    LDA.W #$0000                  ;$15E060 |
    LDX.W #$0300                  ;$15E063 |
    JSL.L CODE_FL_00E539          ;$15E066 |
    JSL.L CODE_FL_00E097          ;$15E06A |
    LDA.W #$0000                  ;$15E06E |
    LDX.W #$FD00                  ;$15E071 |
    JSL.L CODE_FL_00E539          ;$15E074 |
    JSL.L CODE_FL_00E097          ;$15E078 |
    TYX                           ;$15E07C |
    DEC.W Obj_VAR8,X              ;$15E07D |
    BEQ CODE_95E085               ;$15E080 |
    JMP.W CODE_JP_15E060          ;$15E082 |

CODE_95E085:
    LDX.W #$0068                  ;$15E085 |
    LDY.W #$00A8                  ;$15E088 |
    LDA.W #$000E                  ;$15E08B |
    JSR.W CODE_FN_15F3AD          ;$15E08E |
    LDX.W #$0050                  ;$15E091 |
    LDY.W #$0090                  ;$15E094 |
    LDA.W #$0010                  ;$15E097 |
    JSR.W CODE_FN_15F3AD          ;$15E09A |
    LDX.W #$00A0                  ;$15E09D |
    LDY.W #$0080                  ;$15E0A0 |
    LDA.W #$0012                  ;$15E0A3 |
    JSR.W CODE_FN_15F3AD          ;$15E0A6 |
    LDX.W #$00B0                  ;$15E0A9 |
    LDY.W #$008C                  ;$15E0AC |
    LDA.W #$0014                  ;$15E0AF |
    JSR.W CODE_FN_15F3AD          ;$15E0B2 |
    JSL.L CODE_FL_00E465          ;$15E0B5 |
    JSL.L CODE_FL_00E0A3          ;$15E0B9 |
    LDA.W #$FFF8                  ;$15E0BD |
    LDX.W #$FFF8                  ;$15E0C0 |
    JSR.W CODE_FN_15F3A6          ;$15E0C3 |
    LDA.W #$FF00                  ;$15E0C6 |
    STA.W $778E                   ;$15E0C9 |
    LDA.W #$FE00                  ;$15E0CC |
    LDX.W #$FE00                  ;$15E0CF |
    JSL.L CODE_FL_00E5CE          ;$15E0D2 |
    JSL.L CODE_FL_00E0D3          ;$15E0D6 |
    LDA.W #$0000                  ;$15E0DA |
    LDX.W #$0000                  ;$15E0DD |
    JSR.W CODE_FN_15F3A6          ;$15E0E0 |
    LDA.W #$0000                  ;$15E0E3 |
    STA.W $778E                   ;$15E0E6 |
    JSL.L CODE_FL_00E0A3          ;$15E0E9 |
    JSL.L CODE_FL_00E465          ;$15E0ED |
    JSL.L CODE_FL_00E0EB          ;$15E0F1 |
    JSL.L UpdateVramSprSize       ;$15E0F5 |
    JSL.L CODE_FL_009BEF          ;$15E0F9 |
    LDA.W #$F4C2                  ;$15E0FD |
    LDX.W #$00CA                  ;$15E100 |
    JSL.L SA1_ExecuteSNES         ;$15E103 |
    LDX.W #$00CA                  ;$15E107 |
    LDA.W #$E6E6                  ;$15E10A |
    JSL.L LoadDMATable            ;$15E10D |
    LDA.W #$1925                  ;$15E111 |
    LDX.W #$00EB                  ;$15E114 |
    LDY.W #$0080                  ;$15E117 |
    JSL.L WritePal                ;$15E11A |
    LDA.W #$E39A                  ;$15E11E |
    LDX.W #$00EF                  ;$15E121 |
    LDY.W #$810F                  ;$15E124 |
    JSL.L WritePal                ;$15E127 |
    LDA.W #$9CA8                  ;$15E12B |
    LDX.W #$00EC                  ;$15E12E |
    LDY.W #$A15F                  ;$15E131 |
    JSL.L WritePal                ;$15E134 |
    STZ.W Mode7_Settings          ;$15E138 |
    LDA.W #$0100                  ;$15E13B |
    STZ.W $3039                   ;$15E13E |
    STA.W $303F                   ;$15E141 |
    STZ.W $7344                   ;$15E144 |
    STZ.W $7354                   ;$15E147 |
    LDY.B $39                     ;$15E14A |
    LDA.W #$0000                  ;$15E14C |
    STA.W $307D                   ;$15E14F |
    LDA.W #$0000                  ;$15E152 |
    STA.W $778E                   ;$15E155 |
    LDA.W #$0200                  ;$15E158 |
    LDX.W #$0200                  ;$15E15B |
    JSR.W CODE_FN_15F39F          ;$15E15E |
    LDA.W #$FFFC                  ;$15E161 |
    LDX.W #$FFFC                  ;$15E164 |
    JSR.W CODE_FN_15F3A6          ;$15E167 |
    LDA.W #$0800                  ;$15E16A |
    LDX.W #$F800                  ;$15E16D |
    JSL.L CODE_FL_00E539          ;$15E170 |
    LDA.W #$E497                  ;$15E174 |
    LDX.W #$00CA                  ;$15E177 |
    JSL.L CODE_FL_00E1B7          ;$15E17A |
    LDA.W #$0000                  ;$15E17E |
    JSL.L CODE_FL_0085C7          ;$15E181 |
    LDA.W #$0010                  ;$15E185 |
    STA.W Obj_VAR8,Y              ;$15E188 |

CODE_JP_15E18B:
    LDA.W Screen_Brightness_Mirror_PrevFrame;$15E18B |
    INC A                         ;$15E18E |
    JSL.L CODE_FL_0085C7          ;$15E18F |
    JSL.L CODE_FL_00E091          ;$15E193 |
    TYX                           ;$15E197 |
    DEC.W Obj_VAR8,X              ;$15E198 |
    BEQ CODE_95E1A0               ;$15E19B |
    JMP.W CODE_JP_15E18B          ;$15E19D |

CODE_95E1A0:
    LDX.W #$0100                  ;$15E1A0 |
    LDY.W #$FFD0                  ;$15E1A3 |
    LDA.W #$0016                  ;$15E1A6 |
    JSR.W CODE_FN_15F3AD          ;$15E1A9 |
    LDA.W #$0030                  ;$15E1AC |
    JSL.L CODE_FL_00E17F          ;$15E1AF |
    LDA.W #$0000                  ;$15E1B3 |
    LDX.W #$0000                  ;$15E1B6 |
    JSR.W CODE_FN_15F3A6          ;$15E1B9 |
    LDA.W #$0060                  ;$15E1BC |
    JSL.L CODE_FL_00E17F          ;$15E1BF |
    LDA.W #$0100                  ;$15E1C3 |
    STA.W $7790                   ;$15E1C6 |
    STZ.W $7792                   ;$15E1C9 |
    STZ.W $7794                   ;$15E1CC |
    LDA.W #$FFFC                  ;$15E1CF |
    STA.W $7796                   ;$15E1D2 |
    LDA.W #$0600                  ;$15E1D5 |
    STA.W $7798                   ;$15E1D8 |
    LDA.W #$F5E0                  ;$15E1DB |
    LDX.W #$00CA                  ;$15E1DE |
    JSL.L SA1_ExecuteSNES         ;$15E1E1 |
    LDA.W #$E4C3                  ;$15E1E5 |
    LDX.W #$00CA                  ;$15E1E8 |
    JSL.L CODE_FL_00E1B7          ;$15E1EB |
    LDX.W #$0000                  ;$15E1EF |
    LDY.W #$0000                  ;$15E1F2 |
    LDA.W #$001A                  ;$15E1F5 |
    JSR.W CODE_FN_15F3AD          ;$15E1F8 |
    LDA.W #$0280                  ;$15E1FB |
    STA.W $778E                   ;$15E1FE |
    LDA.W #$0028                  ;$15E201 |
    JSL.L CODE_FL_00E17F          ;$15E204 |
    LDA.W #$DDDC                  ;$15E208 |
    LDX.W #$00EF                  ;$15E20B |
    LDY.W #$810F                  ;$15E20E |
    JSL.L WritePal                ;$15E211 |
    LDA.W #$DF20                  ;$15E215 |
    LDX.W #$00ED                  ;$15E218 |
    LDY.W #$B14F                  ;$15E21B |
    JSL.L WritePal                ;$15E21E |
    LDX.W #$0000                  ;$15E222 |
    LDY.W #$0080                  ;$15E225 |
    LDA.W #$0018                  ;$15E228 |
    JSR.W CODE_FN_15F3AD          ;$15E22B |
    LDA.W #$FFC0                  ;$15E22E |
    STA.W $778E                   ;$15E231 |
    LDA.W #$0480                  ;$15E234 |
    LDX.W #$FB80                  ;$15E237 |
    JSL.L CODE_FL_00E539          ;$15E23A |
    LDA.W #$0008                  ;$15E23E |
    LDX.W #$0000                  ;$15E241 |
    JSL.L CODE_FL_00E5CE          ;$15E244 |
    LDA.W #$0001                  ;$15E248 |
    STA.W $7796                   ;$15E24B |
    LDA.W #$0140                  ;$15E24E |
    STA.W $7798                   ;$15E251 |
    LDA.W #$0064                  ;$15E254 |
    JSL.L CODE_FL_00E17F          ;$15E257 |
    LDA.W #$0005                  ;$15E25B |
    STA.W $7796                   ;$15E25E |
    LDA.W #$001C                  ;$15E261 |
    STA.W Obj_VAR8,Y              ;$15E264 |

CODE_JP_15E267:
    LDA.W $7798                   ;$15E267 |
    CLC                           ;$15E26A |
    ADC.W #$01E0                  ;$15E26B |
    STA.W $7798                   ;$15E26E |
    JSL.L CODE_FL_00E091          ;$15E271 |
    TYX                           ;$15E275 |
    DEC.W Obj_VAR8,X              ;$15E276 |
    BEQ CODE_95E27E               ;$15E279 |
    JMP.W CODE_JP_15E267          ;$15E27B |

CODE_95E27E:
    JSL.L CODE_FL_00E465          ;$15E27E |
    JSL.L UpdateVramSprSize       ;$15E282 |
    JSL.L CODE_FL_009BEF          ;$15E286 |
    LDA.W #$E4A3                  ;$15E28A |
    LDX.W #$00CA                  ;$15E28D |
    JSL.L CODE_FL_00E1B7          ;$15E290 |
    LDA.W #$F572                  ;$15E294 |
    LDX.W #$00CA                  ;$15E297 |
    JSL.L SA1_ExecuteSNES         ;$15E29A |
    LDX.W #$00CA                  ;$15E29E |
    LDA.W #$E70F                  ;$15E2A1 |
    JSL.L LoadDMATable            ;$15E2A4 |
    LDA.W #$1A25                  ;$15E2A8 |
    LDX.W #$00EB                  ;$15E2AB |
    LDY.W #$0080                  ;$15E2AE |
    JSL.L WritePal                ;$15E2B1 |
    LDA.W #$DE72                  ;$15E2B5 |
    LDX.W #$00EF                  ;$15E2B8 |
    LDY.W #$810F                  ;$15E2BB |
    JSL.L WritePal                ;$15E2BE |
    LDX.W #$0210                  ;$15E2C2 |
    LDY.W #$01F8                  ;$15E2C5 |
    LDA.W #$0038                  ;$15E2C8 |
    JSR.W CODE_FN_15F3AD          ;$15E2CB |
    LDX.W #$0000                  ;$15E2CE |
    LDY.W #$0000                  ;$15E2D1 |
    LDA.W #$003A                  ;$15E2D4 |
    JSR.W CODE_FN_15F3AD          ;$15E2D7 |
    LDX.W #$0068                  ;$15E2DA |
    LDY.W #$00A8                  ;$15E2DD |
    LDA.W #$0040                  ;$15E2E0 |
    JSR.W CODE_FN_15F3AD          ;$15E2E3 |
    LDX.W #$0050                  ;$15E2E6 |
    LDY.W #$0090                  ;$15E2E9 |
    LDA.W #$0042                  ;$15E2EC |
    JSR.W CODE_FN_15F3AD          ;$15E2EF |
    LDX.W #$00A0                  ;$15E2F2 |
    LDY.W #$0080                  ;$15E2F5 |
    LDA.W #$0044                  ;$15E2F8 |
    JSR.W CODE_FN_15F3AD          ;$15E2FB |
    LDX.W #$00B0                  ;$15E2FE |
    LDY.W #$008C                  ;$15E301 |
    LDA.W #$0046                  ;$15E304 |
    JSR.W CODE_FN_15F3AD          ;$15E307 |
    LDA.W #$0000                  ;$15E30A |
    JSL.L CODE_FL_0085C7          ;$15E30D |
    LDY.B $39                     ;$15E311 |
    LDA.W #$0002                  ;$15E313 |
    STA.W Obj_VAR8,Y              ;$15E316 |

CODE_JP_15E319:
    LDA.W #$0180                  ;$15E319 |
    LDX.W #$0160                  ;$15E31C |
    JSR.W CODE_FN_15F35A          ;$15E31F |
    LDA.W #$01FC                  ;$15E322 |
    LDX.W #$01EC                  ;$15E325 |
    JSR.W CODE_FN_15F398          ;$15E328 |
    LDA.W #$E400                  ;$15E32B |
    STA.W $307D                   ;$15E32E |
    LDA.W #$00E0                  ;$15E331 |
    STA.W $778E                   ;$15E334 |
    LDA.W #$0006                  ;$15E337 |
    LDX.W #$0006                  ;$15E33A |
    JSR.W CODE_FN_15F39F          ;$15E33D |
    LDA.W #$0006                  ;$15E340 |
    LDX.W #$0006                  ;$15E343 |
    JSR.W CODE_FN_15F3A6          ;$15E346 |
    LDA.W #$F600                  ;$15E349 |
    LDX.W #$FB00                  ;$15E34C |
    JSL.L CODE_FL_00E539          ;$15E34F |
    LDA.W #$0060                  ;$15E353 |
    LDX.W #$0024                  ;$15E356 |
    JSL.L CODE_FL_00E5CE          ;$15E359 |
    LDA.W #$0004                  ;$15E35D |
    STA.W Obj_VAR9,Y              ;$15E360 |

CODE_JP_15E363:
    LDA.W Screen_Brightness_Mirror_PrevFrame;$15E363 |
    INC A                         ;$15E366 |
    JSL.L CODE_FL_0085C7          ;$15E367 |
    JSL.L CODE_FL_00E091          ;$15E36B |
    TYX                           ;$15E36F |
    DEC.W Obj_VAR9,X              ;$15E370 |
    BEQ CODE_95E378               ;$15E373 |
    JMP.W CODE_JP_15E363          ;$15E375 |

CODE_95E378:
    TYX                           ;$15E378 |
    DEC.W Obj_VAR8,X              ;$15E379 |
    BEQ CODE_95E381               ;$15E37C |
    JMP.W CODE_JP_15E319          ;$15E37E |

CODE_95E381:
    LDA.W #$0008                  ;$15E381 |
    STA.W Obj_VAR8,Y              ;$15E384 |

CODE_JP_15E387:
    LDA.W Screen_Brightness_Mirror_PrevFrame;$15E387 |
    INC A                         ;$15E38A |
    JSL.L CODE_FL_0085C7          ;$15E38B |
    JSL.L CODE_FL_00E091          ;$15E38F |
    TYX                           ;$15E393 |
    DEC.W Obj_VAR8,X              ;$15E394 |
    BEQ CODE_95E39C               ;$15E397 |
    JMP.W CODE_JP_15E387          ;$15E399 |

CODE_95E39C:
    LDA.W #$0024                  ;$15E39C |
    JSL.L CODE_FL_00E17F          ;$15E39F |
    LDA.W #$FF88                  ;$15E3A3 |
    LDX.W #$FFD0                  ;$15E3A6 |
    JSL.L CODE_FL_00E5CE          ;$15E3A9 |
    LDA.W #$FFA0                  ;$15E3AD |
    STA.W $778E                   ;$15E3B0 |
    LDA.W #$0008                  ;$15E3B3 |
    LDX.W #$0008                  ;$15E3B6 |
    JSR.W CODE_FN_15F3A6          ;$15E3B9 |
    JSL.L CODE_FL_00E0EB          ;$15E3BC |
    LDA.W #$FF80                  ;$15E3C0 |
    LDX.W #$0000                  ;$15E3C3 |
    JSL.L CODE_FL_00E5CE          ;$15E3C6 |
    LDA.W #$0000                  ;$15E3CA |
    STA.W $778E                   ;$15E3CD |
    LDA.W #$FFC0                  ;$15E3D0 |
    LDX.W #$0040                  ;$15E3D3 |
    JSR.W CODE_FN_15F3A6          ;$15E3D6 |
    JSL.L CODE_FL_00E0A3          ;$15E3D9 |
    LDA.W #$0080                  ;$15E3DD |
    LDX.W #$FF80                  ;$15E3E0 |
    JSR.W CODE_FN_15F3A6          ;$15E3E3 |
    JSL.L CODE_FL_00E0A3          ;$15E3E6 |
    LDA.W #$0000                  ;$15E3EA |
    LDX.W #$0000                  ;$15E3ED |
    JSR.W CODE_FN_15F3A6          ;$15E3F0 |
    JSL.L CODE_FL_00E097          ;$15E3F3 |
    LDA.W #$F700                  ;$15E3F7 |
    LDX.W #$FF00                  ;$15E3FA |
    JSL.L CODE_FL_00E640          ;$15E3FD |
    LDA.W #$FFC0                  ;$15E401 |
    LDX.W #$0040                  ;$15E404 |
    JSR.W CODE_FN_15F3A6          ;$15E407 |
    JSL.L CODE_FL_00E0A3          ;$15E40A |
    LDA.W #$F700                  ;$15E40E |
    STA.W $6B6E,Y                 ;$15E411 |
    TYX                           ;$15E414 |
    STZ.W $6CDC,X                 ;$15E415 |
    LDA.W #$0080                  ;$15E418 |
    STA.W $778E                   ;$15E41B |
    LDA.W #$0020                  ;$15E41E |
    LDX.W #$0020                  ;$15E421 |
    JSR.W CODE_FN_15F3A6          ;$15E424 |
    JSL.L CODE_FL_00E0C1          ;$15E427 |
    LDA.W #$0010                  ;$15E42B |
    STA.W MainScreenDesignation   ;$15E42E |
    LDA.W #$60E0                  ;$15E431 |
    STA.W $778C                   ;$15E434 |
    STZ.W $778E                   ;$15E437 |
    LDA.W #$000E                  ;$15E43A |
    STA.W Obj_VAR8,Y              ;$15E43D |

CODE_JP_15E440:
    LDA.W #$F42C                  ;$15E440 |
    LDX.W #$00CA                  ;$15E443 |
    JSL.L SA1_ExecuteSNES         ;$15E446 |
    JSL.L CODE_FL_00E091          ;$15E44A |
    TYX                           ;$15E44E |
    DEC.W Obj_VAR8,X              ;$15E44F |
    BEQ CODE_95E457               ;$15E452 |
    JMP.W CODE_JP_15E440          ;$15E454 |

CODE_95E457:
    JSL.L CODE_FL_009BEF          ;$15E457 |
    LDA.W #$00F0                  ;$15E45B |
    TRB.W HDMA_Enable             ;$15E45E |
    LDA.W #$0000                  ;$15E461 |
    JSL.L CODE_FL_0085C7          ;$15E464 |
    JSL.L UpdateVramSprSize       ;$15E468 |
    LDA.W #$8812                  ;$15E46C |
    LDX.W #$0007                  ;$15E46F |
    JSL.L CODE_FL_00A49D          ;$15E472 |
    RTL                           ;$15E476 |
    JSL.L CODE_FL_009BEF          ;$15E477 |
    LDA.W #$00F0                  ;$15E47B |
    TRB.W HDMA_Enable             ;$15E47E |
    LDA.W #$0000                  ;$15E481 |
    JSL.L CODE_FL_0085C7          ;$15E484 |
    JSL.L UpdateVramSprSize       ;$15E488 |
    LDA.W #$8807                  ;$15E48C |
    LDX.W #$0007                  ;$15E48F |
    JSL.L CODE_FL_00A49D          ;$15E492 |
    RTL                           ;$15E496 |
    LDA.W $3037                   ;$15E497 |
    STA.W Mode7_CenterX           ;$15E49A |
    LDA.W $303D                   ;$15E49D |
    STA.W Mode7_CenterY           ;$15E4A0 |
    JSR.W CODE_FN_15E5B3          ;$15E4A3 |
    LDA.W $307F                   ;$15E4A6 |
    CLC                           ;$15E4A9 |
    ADC.W $7790                   ;$15E4AA |
    STA.W $307F                   ;$15E4AD |
    TAX                           ;$15E4B0 |
    LDA.W $3081                   ;$15E4B1 |
    CLC                           ;$15E4B4 |
    ADC.W $7792                   ;$15E4B5 |
    STA.W $3081                   ;$15E4B8 |
    TAY                           ;$15E4BB |
    LDA.W $307D                   ;$15E4BC |
    JML.L CODE_FL_00A66C          ;$15E4BF |
    JSR.W CODE_FN_15E5B3          ;$15E4C3 |
    LDA.W $3037                   ;$15E4C6 |
    CLC                           ;$15E4C9 |
    ADC.W #$0080                  ;$15E4CA |
    STA.W Mode7_CenterX           ;$15E4CD |
    LDA.W $303D                   ;$15E4D0 |
    CLC                           ;$15E4D3 |
    ADC.W #$00E0                  ;$15E4D4 |
    STA.W Mode7_CenterY           ;$15E4D7 |
    STZ.B SNES_WaitForCommand_waitForMessage;$15E4DA |
    STZ.B $16                     ;$15E4DC |
    LDA.W $7790                   ;$15E4DE |
    CLC                           ;$15E4E1 |
    ADC.W $7796                   ;$15E4E2 |
    STA.W $7790                   ;$15E4E5 |
    LDA.W $7792                   ;$15E4E8 |
    CLC                           ;$15E4EB |
    ADC.W $7798                   ;$15E4EC |
    STA.W $7792                   ;$15E4EF |
    BCC CODE_95E4F7               ;$15E4F2 |
    INC.W $7794                   ;$15E4F4 |

CODE_95E4F7:
    LDA.W #$FFFC                  ;$15E4F7 |
    STA.B DSP_P                   ;$15E4FA |
    JSR.W CODE_FN_15E529          ;$15E4FC |
    LDA.W #$E57D                  ;$15E4FF |
    LDX.W #$00CA                  ;$15E502 |
    JSL.L SA1_ExecuteSNES         ;$15E505 |
    LDA.W #$0100                  ;$15E509 |
    SEC                           ;$15E50C |
    SBC.W $303F                   ;$15E50D |
    BCC CODE_95E51B               ;$15E510 |
    ASL A                         ;$15E512 |
    ASL A                         ;$15E513 |
    CMP.W #$01B0                  ;$15E514 |
    BCS CODE_95E51B               ;$15E517 |
    STA.B DSP_P                   ;$15E519 |

CODE_95E51B:
    JSR.W CODE_FN_15E529          ;$15E51B |
    LDA.W #$E598                  ;$15E51E |
    LDX.W #$00CA                  ;$15E521 |
    JSL.L SA1_ExecuteSNES         ;$15E524 |
    RTL                           ;$15E528 |

CODE_FN_15E529:
    LDX.W #$01BC                  ;$15E529 |

CODE_95E52C:
    STX.B IdentifySNES            ;$15E52C |
    STZ.W $2250                   ;$15E52E |
    LDA.B SNES_WaitForCommand_waitForMessage;$15E531 |
    CLC                           ;$15E533 |
    ADC.W $7792                   ;$15E534 |
    STA.B SNES_WaitForCommand_waitForMessage;$15E537 |
    LDA.B $16                     ;$15E539 |
    ADC.W $7794                   ;$15E53B |
    STA.B $16                     ;$15E53E |
    ASL A                         ;$15E540 |
    TAX                           ;$15E541 |
    LDA.L DATA8_CAF654,X          ;$15E542 |
    STA.W $2251                   ;$15E546 |
    LDA.W $7790                   ;$15E549 |
    STA.W $2253                   ;$15E54C |
    LDA.W $307D                   ;$15E54F |
    LDX.W $2307                   ;$15E552 |
    TXY                           ;$15E555 |
    JSL.L CODE_FL_00A66C          ;$15E556 |
    LDX.B IdentifySNES            ;$15E55A |
    LDA.W Mode7_MatrixA           ;$15E55C |
    STA.W $7B80,X                 ;$15E55F |
    LDA.W Mode7_MatrixB           ;$15E562 |
    STA.W $7B82,X                 ;$15E565 |
    LDA.W Mode7_MatrixC           ;$15E568 |
    STA.W $7D40,X                 ;$15E56B |
    LDA.W Mode7_MatrixD           ;$15E56E |
    STA.W $7D42,X                 ;$15E571 |
    DEX                           ;$15E574 |
    DEX                           ;$15E575 |
    DEX                           ;$15E576 |
    DEX                           ;$15E577 |
    CPX.B DSP_P                   ;$15E578 |
    BNE CODE_95E52C               ;$15E57A |
    RTS                           ;$15E57C |
    PHB                           ;$15E57D |
    LDX.W #$7B80                  ;$15E57E |
    LDY.W #$7330                  ;$15E581 |
    LDA.W #$01BF                  ;$15E584 |
    MVN $7F,$00                   ;$15E587 |
    LDX.W #$7D40                  ;$15E58A |
    LDY.W #$76B0                  ;$15E58D |
    LDA.W #$01BF                  ;$15E590 |
    MVN $7F,$00                   ;$15E593 |
    PLB                           ;$15E596 |
    RTL                           ;$15E597 |
    PHB                           ;$15E598 |
    LDX.W #$7B80                  ;$15E599 |
    LDY.W #$7170                  ;$15E59C |
    LDA.W #$01BF                  ;$15E59F |
    MVN $7F,$00                   ;$15E5A2 |
    LDX.W #$7D40                  ;$15E5A5 |
    LDY.W #$74F0                  ;$15E5A8 |
    LDA.W #$01BF                  ;$15E5AB |
    MVN $7F,$00                   ;$15E5AE |
    PLB                           ;$15E5B1 |
    RTL                           ;$15E5B2 |

CODE_FN_15E5B3:
    LDA.W P1_Frame                ;$15E5B3 |
    AND.W #$D0C0                  ;$15E5B6 |
    BEQ CODE_95E5C1               ;$15E5B9 |
    LDA.W #$E477                  ;$15E5BB |
    STA.W Obj_TickCallbackAddr,Y  ;$15E5BE |

CODE_95E5C1:
    LDA.W $307D                   ;$15E5C1 |
    CLC                           ;$15E5C4 |
    ADC.W $778E                   ;$15E5C5 |
    STA.W $307D                   ;$15E5C8 |
    RTS                           ;$15E5CB |
    db $0C,$00,$40,$FE,$FF,$00,$00,$00;$15E5CC |
    db $09,$0C,$00,$00,$20,$7E,$0A,$04;$15E5D4 |
    db $09,$0E,$00,$0C,$20,$7E,$89,$04;$15E5DC |
    db $09,$0E,$00,$1A,$20,$7E,$09,$05;$15E5E4 |
    db $09,$0C,$00,$28,$20,$7E,$8A,$05;$15E5EC |
    db $09,$06,$00,$34,$20,$7E,$0D,$07;$15E5F4 |
    db $09,$06,$00,$3A,$20,$7E,$8D,$07;$15E5FC |
    db $09,$06,$00,$40,$20,$7E,$0D,$08;$15E604 |
    db $09,$06,$00,$46,$20,$7E,$8D,$08;$15E60C |
    db $09,$06,$00,$4C,$20,$7E,$0D,$09;$15E614 |
    db $09,$06,$00,$52,$20,$7E,$8D,$09;$15E61C |
    db $09,$06,$00,$58,$20,$7E,$0D,$0A;$15E624 |
    db $09,$06,$00,$5E,$20,$7E,$BD,$16;$15E62C |
    db $09,$07,$00,$64,$20,$7E,$3D,$17;$15E634 |
    db $09,$0C,$00,$6B,$20,$7E,$BA,$17;$15E63C |
    db $09,$0C,$00,$77,$20,$7E,$3A,$18;$15E644 |
    db $09,$0C,$00,$83,$20,$7E,$BA,$18;$15E64C |
    db $09,$0A,$00,$8F,$20,$7E,$3B,$19;$15E654 |
    db $09,$0A,$00,$99,$20,$7E,$BB,$19;$15E65C |
    db $09,$0C,$00,$A3,$20,$7E,$3A,$1A;$15E664 |
    db $09,$0C,$00,$AF,$20,$7E,$BA,$1A;$15E66C |
    db $09,$0C,$00,$BB,$20,$7E,$3A,$1B;$15E674 |
    db $83,$20,$11,$CB,$DE,$E3,$00,$60;$15E67C |
    db $8F,$40,$31,$00,$00,$DF,$00,$00;$15E684 |
    db $FF,$0C,$0D,$00,$FE,$FF,$00,$09;$15E68C |
    db $04,$0C,$0D,$00,$FE,$FF,$00,$89;$15E694 |
    db $04,$0C,$0D,$00,$FE,$FF,$00,$09;$15E69C |
    db $05,$0C,$0D,$00,$FE,$FF,$00,$89;$15E6A4 |
    db $05,$0C,$06,$00,$FE,$FF,$00,$0C;$15E6AC |
    db $07,$0C,$06,$00,$FE,$FF,$00,$8C;$15E6B4 |
    db $07,$0C,$06,$00,$FE,$FF,$00,$0C;$15E6BC |
    db $08,$0C,$06,$00,$FE,$FF,$00,$8C;$15E6C4 |
    db $08,$0C,$06,$00,$FE,$FF,$00,$0C;$15E6CC |
    db $09,$0C,$06,$00,$FE,$FF,$00,$8C;$15E6D4 |
    db $09,$0C,$06,$00,$FE,$FF,$00,$0C;$15E6DC |
    db $0A,$FF,$09,$00,$40,$00,$20,$7E;$15E6E4 |
    db $00,$00,$89,$00,$04,$B1,$A6,$EC;$15E6EC |
    db $00,$48,$8F,$00,$04,$4D,$D5,$EF;$15E6F4 |
    db $00,$48,$83,$60,$0B,$FB,$14,$E6;$15E6FC |
    db $00,$40,$0F,$00,$10,$B2,$92,$E0;$15E704 |
    db $00,$00,$FF,$0C,$00,$40,$FE,$FF;$15E70C |
    db $00,$00,$00,$09,$05,$00,$00,$20;$15E714 |
    db $7E,$3F,$1E,$09,$07,$00,$05,$20;$15E71C |
    db $7E,$BE,$1E,$09,$07,$00,$0C,$20;$15E724 |
    db $7E,$3E,$1F,$09,$08,$00,$13,$20;$15E72C |
    db $7E,$BD,$1F,$09,$08,$00,$1B,$20;$15E734 |
    db $7E,$3D,$20,$09,$07,$00,$23,$20;$15E73C |
    db $7E,$BD,$20,$8F,$C0,$0A,$07,$07;$15E744 |
    db $E6,$00,$00,$FF            ;$15E74C |
    LDA.W #$CFFF                  ;$15E750 |
    STA.W $3033                   ;$15E753 |
    STZ.W $3035                   ;$15E756 |
    LDA.W #$ABA3                  ;$15E759 |
    STA.W Obj_DrawCallback,Y      ;$15E75C |
    JSL.L CODE_FL_00E302          ;$15E75F |
    LDA.W #$0040                  ;$15E763 |
    STA.W $64B6,Y                 ;$15E766 |
    LDA.W #$9693                  ;$15E769 |
    LDX.W #$00CC                  ;$15E76C |
    JSL.L CODE_FL_00E1CC          ;$15E76F |
    LDX.W Obj_VAR0,Y              ;$15E773 |
    JMP.W (DATA8_15E779,X)        ;$15E776 |

DATA8_15E779:
    db $C7,$E7,$1D,$E8,$43,$E8,$9D,$E8;$15E779 |
    db $B3,$E8,$CD,$E8,$4F,$E9,$79,$E9;$15E781 |
    db $8F,$E9,$A5,$E9,$BB,$E9,$1F,$EA;$15E789 |
    db $49,$EB,$07,$EC,$73,$ED,$C2,$ED;$15E791 |
    db $95,$EE,$DC,$EE,$27,$EF,$33,$EF;$15E799 |
    db $3F,$EF,$8B,$EF,$BA,$EF,$F5,$EF;$15E7A1 |
    db $41,$F0,$97,$F0,$ED,$F0,$1C,$F1;$15E7A9 |
    db $57,$F1,$D0,$F1,$33,$F2,$49,$F2;$15E7B1 |
    db $5F,$F2,$75,$F2,$8B,$F2,$A1,$F2;$15E7B9 |
    db $03,$F3,$0F,$F3,$1B,$F3    ;$15E7C1 |
    LDX.W #$00F0                  ;$15E7C7 |
    LDY.W #$FF90                  ;$15E7CA |
    LDA.W #$0002                  ;$15E7CD |
    JSR.W CODE_FN_15F3AD          ;$15E7D0 |
    LDX.W #$00C0                  ;$15E7D3 |
    LDY.W #$0020                  ;$15E7D6 |
    LDA.W #$0002                  ;$15E7D9 |
    JSR.W CODE_FN_15F3AD          ;$15E7DC |
    LDX.W #$0040                  ;$15E7DF |
    LDY.W #$FFA0                  ;$15E7E2 |
    LDA.W #$0002                  ;$15E7E5 |
    JSR.W CODE_FN_15F3AD          ;$15E7E8 |
    LDX.W #$FFC0                  ;$15E7EB |
    LDY.W #$FFD0                  ;$15E7EE |
    LDA.W #$0004                  ;$15E7F1 |
    JSR.W CODE_FN_15F3AD          ;$15E7F4 |
    LDX.W #$0000                  ;$15E7F7 |
    LDY.W #$0040                  ;$15E7FA |
    LDA.W #$0004                  ;$15E7FD |
    JSR.W CODE_FN_15F3AD          ;$15E800 |
    LDA.W #$FD80                  ;$15E803 |
    LDX.W #$0700                  ;$15E806 |
    JSL.L CODE_FL_00E539          ;$15E809 |
    LDA.W #$000E                  ;$15E80D |
    LDX.W #$FFE4                  ;$15E810 |
    JSL.L CODE_FL_00E5CE          ;$15E813 |

CODE_95E817:
    JSL.L CODE_FL_00E091          ;$15E817 |
    BRA CODE_95E817               ;$15E81B |
    JSL.L CODE_FL_00E307          ;$15E81D |
    LDA.W #$0041                  ;$15E821 |
    STA.W $64B6,Y                 ;$15E824 |
    LDA.W #$E869                  ;$15E827 |
    LDX.W #$00CA                  ;$15E82A |
    JSL.L CODE_FL_00E1B7          ;$15E82D |
    LDA.W #$000C                  ;$15E831 |
    STA.W Obj_Pose,Y              ;$15E834 |
    LDA.W #$FFF0                  ;$15E837 |
    STA.W $6B6E,Y                 ;$15E83A |

CODE_95E83D:
    JSL.L CODE_FL_00E091          ;$15E83D |
    BRA CODE_95E83D               ;$15E841 |
    JSL.L CODE_FL_00E307          ;$15E843 |
    LDA.W #$0041                  ;$15E847 |
    STA.W $64B6,Y                 ;$15E84A |
    LDA.W #$E869                  ;$15E84D |
    LDX.W #$00CA                  ;$15E850 |
    JSL.L CODE_FL_00E1B7          ;$15E853 |
    LDA.W #$000D                  ;$15E857 |
    STA.W Obj_Pose,Y              ;$15E85A |
    LDA.W #$FFF8                  ;$15E85D |
    STA.W $6B6E,Y                 ;$15E860 |

CODE_95E863:
    JSL.L CODE_FL_00E091          ;$15E863 |
    BRA CODE_95E863               ;$15E867 |
    LDX.W Obj_VAR2,Y              ;$15E869 |
    LDA.W $6B6E,X                 ;$15E86C |
    BMI CODE_95E884               ;$15E86F |
    LDA.W Obj_XPositionMirror,Y   ;$15E871 |
    BMI CODE_95E884               ;$15E874 |
    CMP.W #$0118                  ;$15E876 |
    BCC CODE_95E884               ;$15E879 |
    LDA.W Obj_XPosition,Y         ;$15E87B |
    SBC.W #$0150                  ;$15E87E |
    STA.W Obj_XPosition,Y         ;$15E881 |

CODE_95E884:
    LDA.W $6BE8,X                 ;$15E884 |
    BPL CODE_95E89C               ;$15E887 |
    LDA.W Obj_YPositionMirror,Y   ;$15E889 |
    BPL CODE_95E89C               ;$15E88C |
    CMP.W #$FFF0                  ;$15E88E |
    BCS CODE_95E89C               ;$15E891 |
    LDA.W Obj_YPosition,Y         ;$15E893 |
    ADC.W #$0110                  ;$15E896 |
    STA.W Obj_YPosition,Y         ;$15E899 |

CODE_95E89C:
    RTL                           ;$15E89C |
    LDA.W #$FB00                  ;$15E89D |
    LDX.W #$0180                  ;$15E8A0 |
    JSL.L CODE_FL_00E539          ;$15E8A3 |
    LDA.W #$0000                  ;$15E8A7 |
    LDX.W #$0018                  ;$15E8AA |
    JSL.L CODE_FL_00E5CE          ;$15E8AD |
    BRA CODE_95E8E5               ;$15E8B1 |
    JSL.L CODE_FL_00E0EB          ;$15E8B3 |
    LDA.W #$FB00                  ;$15E8B7 |
    LDX.W #$0080                  ;$15E8BA |
    JSL.L CODE_FL_00E539          ;$15E8BD |
    LDA.W #$FFF8                  ;$15E8C1 |
    LDX.W #$0010                  ;$15E8C4 |
    JSL.L CODE_FL_00E5CE          ;$15E8C7 |
    BRA CODE_95E8E5               ;$15E8CB |
    JSL.L CODE_FL_00E14B          ;$15E8CD |
    LDA.W #$FC00                  ;$15E8D1 |
    LDX.W #$0300                  ;$15E8D4 |
    JSL.L CODE_FL_00E539          ;$15E8D7 |
    LDA.W #$FFFC                  ;$15E8DB |
    LDX.W #$0010                  ;$15E8DE |
    JSL.L CODE_FL_00E5CE          ;$15E8E1 |

CODE_95E8E5:
    LDA.W #$9AEA                  ;$15E8E5 |
    LDX.W #$00C5                  ;$15E8E8 |
    JSL.L CODE_FL_00E1CC          ;$15E8EB |
    LDA.W #$0006                  ;$15E8EF |
    STA.W Obj_VAR8,Y              ;$15E8F2 |

CODE_JP_15E8F5:
    LDX.W #$0000                  ;$15E8F5 |
    LDY.W #$0000                  ;$15E8F8 |
    LDA.W #$000C                  ;$15E8FB |
    JSR.W CODE_FN_15F3AD          ;$15E8FE |
    LDA.W #$0402                  ;$15E901 |
    JSL.L CODE_FL_00E169          ;$15E904 |
    LDX.W #$0000                  ;$15E908 |
    LDY.W #$0000                  ;$15E90B |
    LDA.W #$000C                  ;$15E90E |
    JSR.W CODE_FN_15F3AD          ;$15E911 |
    LDA.W #$0004                  ;$15E914 |
    JSL.L CODE_FL_00E269          ;$15E917 |
    LDX.W #$0000                  ;$15E91B |
    LDY.W #$0000                  ;$15E91E |
    LDA.W #$000C                  ;$15E921 |
    JSR.W CODE_FN_15F3AD          ;$15E924 |
    TYX                           ;$15E927 |
    DEC.W Obj_Pose,X              ;$15E928 |
    JSL.L CODE_FL_00E0A3          ;$15E92B |
    LDX.W #$0000                  ;$15E92F |
    LDY.W #$0000                  ;$15E932 |
    LDA.W #$000C                  ;$15E935 |
    JSR.W CODE_FN_15F3AD          ;$15E938 |
    LDA.W #$0004                  ;$15E93B |
    JSL.L CODE_FL_00E269          ;$15E93E |
    TYX                           ;$15E942 |
    DEC.W Obj_VAR8,X              ;$15E943 |
    BEQ CODE_95E94B               ;$15E946 |
    JMP.W CODE_JP_15E8F5          ;$15E948 |

CODE_95E94B:
    JML.L DestroyUsedObject       ;$15E94B |
    JSL.L CODE_FL_05E5D2          ;$15E94F |
    LDA.W #$9AEA                  ;$15E953 |
    LDX.W #$00C5                  ;$15E956 |
    JSL.L CODE_FL_00E1CC          ;$15E959 |
    LDA.W #$0200                  ;$15E95D |
    LDX.W #$FE00                  ;$15E960 |
    JSL.L CODE_FL_00E539          ;$15E963 |
    LDA.W #$0302                  ;$15E967 |
    JSL.L CODE_FL_00E169          ;$15E96A |
    LDA.W #$0001                  ;$15E96E |
    JSL.L CODE_FL_00E273          ;$15E971 |
    JML.L DestroyUsedObject       ;$15E975 |
    LDA.W #$F800                  ;$15E979 |
    LDX.W #$0300                  ;$15E97C |
    JSL.L CODE_FL_00E539          ;$15E97F |
    LDA.W #$0060                  ;$15E983 |
    LDX.W #$FFE8                  ;$15E986 |
    JSL.L CODE_FL_00E5CE          ;$15E989 |
    BRA CODE_95E9CF               ;$15E98D |
    LDA.W #$FB00                  ;$15E98F |
    LDX.W #$FB00                  ;$15E992 |
    JSL.L CODE_FL_00E539          ;$15E995 |
    LDA.W #$0040                  ;$15E999 |
    LDX.W #$0048                  ;$15E99C |
    JSL.L CODE_FL_00E5CE          ;$15E99F |
    BRA CODE_95E9CF               ;$15E9A3 |
    LDA.W #$FF00                  ;$15E9A5 |
    LDX.W #$F800                  ;$15E9A8 |
    JSL.L CODE_FL_00E539          ;$15E9AB |
    LDA.W #$0010                  ;$15E9AF |
    LDX.W #$0060                  ;$15E9B2 |
    JSL.L CODE_FL_00E5CE          ;$15E9B5 |
    BRA CODE_95E9CF               ;$15E9B9 |
    LDA.W #$0500                  ;$15E9BB |
    LDX.W #$FF00                  ;$15E9BE |
    JSL.L CODE_FL_00E539          ;$15E9C1 |
    LDA.W #$FFC8                  ;$15E9C5 |
    LDX.W #$0008                  ;$15E9C8 |
    JSL.L CODE_FL_00E5CE          ;$15E9CB |

CODE_95E9CF:
    LDA.W #$0042                  ;$15E9CF |
    STA.W $64B6,Y                 ;$15E9D2 |
    LDA.W #$9AEA                  ;$15E9D5 |
    LDX.W #$00C5                  ;$15E9D8 |
    JSL.L CODE_FL_00E1CC          ;$15E9DB |
    LDA.W #$0003                  ;$15E9DF |
    STA.W Obj_VAR8,Y              ;$15E9E2 |

CODE_JP_15E9E5:
    LDA.W #$0206                  ;$15E9E5 |
    JSL.L CODE_FL_00E169          ;$15E9E8 |
    TYX                           ;$15E9EC |
    INC.W Obj_Pose,X              ;$15E9ED |
    JSL.L CODE_FL_00E097          ;$15E9F0 |
    TYX                           ;$15E9F4 |
    INC.W Obj_Pose,X              ;$15E9F5 |
    JSL.L CODE_FL_00E097          ;$15E9F8 |
    TYX                           ;$15E9FC |
    INC.W Obj_Pose,X              ;$15E9FD |
    JSL.L CODE_FL_00E097          ;$15EA00 |
    TYX                           ;$15EA04 |
    DEC.W Obj_VAR8,X              ;$15EA05 |
    BEQ CODE_95EA0D               ;$15EA08 |
    JMP.W CODE_JP_15E9E5          ;$15EA0A |

CODE_95EA0D:
    LDA.W #$0403                  ;$15EA0D |
    JSL.L CODE_FL_00E169          ;$15EA10 |
    LDA.W #$0400                  ;$15EA14 |
    JSL.L CODE_FL_00E169          ;$15EA17 |
    JML.L DestroyUsedObject       ;$15EA1B |
    LDX.W #$0000                  ;$15EA1F |
    LDY.W #$0080                  ;$15EA22 |
    LDA.W #$001C                  ;$15EA25 |
    JSR.W CODE_FN_15F3AD          ;$15EA28 |
    LDX.W #$0000                  ;$15EA2B |
    LDY.W #$0000                  ;$15EA2E |
    LDA.W #$0022                  ;$15EA31 |
    JSR.W CODE_FN_15F3AD          ;$15EA34 |
    LDA.W #$AB72                  ;$15EA37 |
    STA.W Obj_DrawCallback,Y      ;$15EA3A |
    LDA.W #$FE80                  ;$15EA3D |
    LDX.W #$0C00                  ;$15EA40 |
    JSL.L CODE_FL_00E539          ;$15EA43 |
    LDA.W #$FFA0                  ;$15EA47 |
    LDX.W #$FF80                  ;$15EA4A |
    JSL.L CODE_FL_00E5CE          ;$15EA4D |
    LDA.W #$1000                  ;$15EA51 |
    JSL.L CODE_FL_00E169          ;$15EA54 |
    LDA.W #$0070                  ;$15EA58 |
    LDX.W #$FF90                  ;$15EA5B |
    LDY.W #$0010                  ;$15EA5E |
    JSL.L CODE_FL_00E617          ;$15EA61 |
    LDA.W #$0020                  ;$15EA65 |
    LDX.W #$FFF0                  ;$15EA68 |
    LDY.W #$000A                  ;$15EA6B |
    JSL.L CODE_FL_00E617          ;$15EA6E |
    LDX.W #$0000                  ;$15EA72 |
    LDY.W #$0000                  ;$15EA75 |
    LDA.W #$002A                  ;$15EA78 |
    JSR.W CODE_FN_15F3AD          ;$15EA7B |
    LDX.W #$0000                  ;$15EA7E |
    LDY.W #$0000                  ;$15EA81 |
    LDA.W #$002C                  ;$15EA84 |
    JSR.W CODE_FN_15F3AD          ;$15EA87 |
    LDA.W #$FA00                  ;$15EA8A |
    LDX.W #$0600                  ;$15EA8D |
    JSL.L CODE_FL_00E539          ;$15EA90 |
    LDA.W #$0040                  ;$15EA94 |
    LDX.W #$0020                  ;$15EA97 |
    LDY.W #$0008                  ;$15EA9A |
    JSL.L CODE_FL_00E617          ;$15EA9D |
    LDX.W #$0000                  ;$15EAA1 |
    LDY.W #$0000                  ;$15EAA4 |
    LDA.W #$0022                  ;$15EAA7 |
    JSR.W CODE_FN_15F3AD          ;$15EAAA |
    LDA.W #$00A0                  ;$15EAAD |
    LDX.W #$FFA0                  ;$15EAB0 |
    LDY.W #$0014                  ;$15EAB3 |
    JSL.L CODE_FL_00E617          ;$15EAB6 |
    LDX.W #$0000                  ;$15EABA |
    LDY.W #$0000                  ;$15EABD |
    LDA.W #$002C                  ;$15EAC0 |
    JSR.W CODE_FN_15F3AD          ;$15EAC3 |
    LDA.W #$FFA0                  ;$15EAC6 |
    LDX.W #$FFA0                  ;$15EAC9 |
    LDY.W #$0010                  ;$15EACC |
    JSL.L CODE_FL_00E617          ;$15EACF |
    LDA.W #$FFA0                  ;$15EAD3 |
    LDX.W #$0040                  ;$15EAD6 |
    LDY.W #$000A                  ;$15EAD9 |
    JSL.L CODE_FL_00E617          ;$15EADC |
    LDA.W #$0000                  ;$15EAE0 |
    LDX.W #$0060                  ;$15EAE3 |
    LDY.W #$0004                  ;$15EAE6 |
    JSL.L CODE_FL_00E617          ;$15EAE9 |
    LDX.W #$0000                  ;$15EAED |
    LDY.W #$0000                  ;$15EAF0 |
    LDA.W #$002A                  ;$15EAF3 |
    JSR.W CODE_FN_15F3AD          ;$15EAF6 |
    LDX.W #$0000                  ;$15EAF9 |
    LDY.W #$0000                  ;$15EAFC |
    LDA.W #$0022                  ;$15EAFF |
    JSR.W CODE_FN_15F3AD          ;$15EB02 |
    LDA.W #$FC00                  ;$15EB05 |
    LDX.W #$0600                  ;$15EB08 |
    JSL.L CODE_FL_00E539          ;$15EB0B |
    LDA.W #$FFE0                  ;$15EB0F |
    LDX.W #$FFE0                  ;$15EB12 |
    LDY.W #$0010                  ;$15EB15 |
    JSL.L CODE_FL_00E617          ;$15EB18 |
    LDA.W #$0000                  ;$15EB1C |
    LDX.W #$FF90                  ;$15EB1F |
    JSL.L CODE_FL_00E5CE          ;$15EB22 |
    LDA.W #$0005                  ;$15EB26 |
    STA.W Obj_VAR8,Y              ;$15EB29 |

CODE_JP_15EB2C:
    LDX.W #$0000                  ;$15EB2C |
    LDY.W #$0000                  ;$15EB2F |
    LDA.W #$002C                  ;$15EB32 |
    JSR.W CODE_FN_15F3AD          ;$15EB35 |
    JSL.L CODE_FL_00E0AF          ;$15EB38 |
    TYX                           ;$15EB3C |
    DEC.W Obj_VAR8,X              ;$15EB3D |
    BEQ CODE_95EB45               ;$15EB40 |
    JMP.W CODE_JP_15EB2C          ;$15EB42 |

CODE_95EB45:
    JML.L DestroyUsedObject       ;$15EB45 |
    LDA.W #$AB72                  ;$15EB49 |
    STA.W Obj_DrawCallback,Y      ;$15EB4C |
    LDA.W #$0600                  ;$15EB4F |
    LDX.W #$0000                  ;$15EB52 |
    JSL.L CODE_FL_00E539          ;$15EB55 |
    LDA.W #$00B0                  ;$15EB59 |
    LDX.W #$FFC0                  ;$15EB5C |
    JSL.L CODE_FL_00E5CE          ;$15EB5F |
    LDA.W #$0001                  ;$15EB63 |
    STA.W Obj_Pose,Y              ;$15EB66 |
    LDA.W #$0006                  ;$15EB69 |
    STA.W Obj_VAR8,Y              ;$15EB6C |

CODE_JP_15EB6F:
    LDX.W #$0000                  ;$15EB6F |
    LDY.W #$0000                  ;$15EB72 |
    LDA.W #$0030                  ;$15EB75 |
    JSR.W CODE_FN_15F3AD          ;$15EB78 |
    JSL.L CODE_FL_00E0A3          ;$15EB7B |
    TYX                           ;$15EB7F |
    DEC.W Obj_VAR8,X              ;$15EB80 |
    BEQ CODE_95EB88               ;$15EB83 |
    JMP.W CODE_JP_15EB6F          ;$15EB85 |

CODE_95EB88:
    LDA.W #$0014                  ;$15EB88 |
    JSL.L CODE_FL_00E473          ;$15EB8B |
    LDA.W #$00D0                  ;$15EB8F |
    LDX.W #$FFE0                  ;$15EB92 |
    JSL.L CODE_FL_00E2E4          ;$15EB95 |
    LDA.W #$FE00                  ;$15EB99 |
    LDX.W #$0980                  ;$15EB9C |
    JSL.L CODE_FL_00E539          ;$15EB9F |
    LDA.W #$0000                  ;$15EBA3 |
    LDX.W #$FFC0                  ;$15EBA6 |
    JSL.L CODE_FL_00E5CE          ;$15EBA9 |
    LDX.W #$00C8                  ;$15EBAD |
    LDY.W #$00F0                  ;$15EBB0 |
    LDA.W #$002E                  ;$15EBB3 |
    JSR.W CODE_FN_15F3AD          ;$15EBB6 |
    LDA.W #$0007                  ;$15EBB9 |
    STA.W Obj_VAR8,Y              ;$15EBBC |

CODE_JP_15EBBF:
    LDX.W #$0000                  ;$15EBBF |
    LDY.W #$0000                  ;$15EBC2 |
    LDA.W #$0032                  ;$15EBC5 |
    JSR.W CODE_FN_15F3AD          ;$15EBC8 |
    JSL.L CODE_FL_00E0AF          ;$15EBCB |
    TYX                           ;$15EBCF |
    DEC.W Obj_VAR8,X              ;$15EBD0 |
    BEQ CODE_95EBD8               ;$15EBD3 |
    JMP.W CODE_JP_15EBBF          ;$15EBD5 |

CODE_95EBD8:
    LDX.W #$0000                  ;$15EBD8 |
    LDY.W #$0000                  ;$15EBDB |
    LDA.W #$0034                  ;$15EBDE |
    JSR.W CODE_FN_15F3AD          ;$15EBE1 |
    LDA.W #$0007                  ;$15EBE4 |
    STA.W Obj_VAR8,Y              ;$15EBE7 |

CODE_JP_15EBEA:
    LDX.W #$0000                  ;$15EBEA |
    LDY.W #$0000                  ;$15EBED |
    LDA.W #$0036                  ;$15EBF0 |
    JSR.W CODE_FN_15F3AD          ;$15EBF3 |
    JSL.L CODE_FL_00E0AF          ;$15EBF6 |
    TYX                           ;$15EBFA |
    DEC.W Obj_VAR8,X              ;$15EBFB |
    BEQ CODE_95EC03               ;$15EBFE |
    JMP.W CODE_JP_15EBEA          ;$15EC00 |

CODE_95EC03:
    JML.L DestroyUsedObject       ;$15EC03 |

    TYX                           ;$15EC07 |
    STZ.W Obj_VAR0,X              ;$15EC08 |
    STZ.W Obj_VAR1,X              ;$15EC0B |
    LDA.W #$EC73                  ;$15EC0E |
    LDX.W #$00CA                  ;$15EC11 |
    JSL.L CODE_FL_00E1B7          ;$15EC14 |
    LDA.W #$0028                  ;$15EC18 |
    JSL.L CODE_FL_00E17F          ;$15EC1B |
    LDY.W #$0002                  ;$15EC1F |
    LDA.W #$0800                  ;$15EC22 |
    LDX.W #$FF80                  ;$15EC25 |
    JSR.W CODE_FN_15F361          ;$15EC28 |
    LDA.W #$FFE0                  ;$15EC2B |
    STA.W Obj_VAR0,Y              ;$15EC2E |
    LDA.W #$FFFD                  ;$15EC31 |
    STA.W Obj_VAR1,Y              ;$15EC34 |
    LDA.W #$0032                  ;$15EC37 |
    JSL.L CODE_FL_00E17F          ;$15EC3A |
    LDA.W #$FFF0                  ;$15EC3E |
    STA.W Obj_VAR0,Y              ;$15EC41 |
    LDA.W #$0000                  ;$15EC44 |
    STA.W Obj_VAR1,Y              ;$15EC47 |
    LDA.W #$0032                  ;$15EC4A |
    JSL.L CODE_FL_00E17F          ;$15EC4D |
    LDA.W #$FFE0                  ;$15EC51 |
    STA.W Obj_VAR0,Y              ;$15EC54 |
    LDA.W #$FFD0                  ;$15EC57 |
    STA.W Obj_VAR1,Y              ;$15EC5A |
    JSL.L CODE_FL_00E103          ;$15EC5D |
    LDA.W #$0008                  ;$15EC61 |
    STA.W Obj_VAR0,Y              ;$15EC64 |
    LDA.W #$FFD0                  ;$15EC67 |
    STA.W Obj_VAR1,Y              ;$15EC6A |

CODE_95EC6D:
    JSL.L CODE_FL_00E091          ;$15EC6D |
    BRA CODE_95EC6D               ;$15EC71 |
    LDA.W Obj_VAR0,Y              ;$15EC73 |
    JSL.L CODE_FL_03AC43          ;$15EC76 |
    PHA                           ;$15EC7A |
    TXA                           ;$15EC7B |
    CLC                           ;$15EC7C |
    ADC.W $734C                   ;$15EC7D |
    STA.W $734C                   ;$15EC80 |
    PLA                           ;$15EC83 |
    ADC.W $733C                   ;$15EC84 |
    STA.W $733C                   ;$15EC87 |
    LDA.W $3045                   ;$15EC8A |
    CLC                           ;$15EC8D |
    ADC.W $734C                   ;$15EC8E |
    STA.W $3045                   ;$15EC91 |
    LDA.W $3039                   ;$15EC94 |
    ADC.W $733C                   ;$15EC97 |
    STA.W $3039                   ;$15EC9A |
    LDA.W Obj_VAR1,Y              ;$15EC9D |
    JSL.L CODE_FL_03AC43          ;$15ECA0 |
    PHA                           ;$15ECA4 |
    TXA                           ;$15ECA5 |
    CLC                           ;$15ECA6 |
    ADC.W $7354                   ;$15ECA7 |
    STA.W $7354                   ;$15ECAA |
    PLA                           ;$15ECAD |
    ADC.W $7344                   ;$15ECAE |
    STA.W $7344                   ;$15ECB1 |
    LDA.W $304B                   ;$15ECB4 |
    CLC                           ;$15ECB7 |
    ADC.W $7354                   ;$15ECB8 |
    STA.W $304B                   ;$15ECBB |
    LDA.W $303F                   ;$15ECBE |
    ADC.W $7344                   ;$15ECC1 |
    STA.W $303F                   ;$15ECC4 |
    LDA.W #$ECD1                  ;$15ECC7 |
    LDX.W #$00CA                  ;$15ECCA |
    JML.L SA1_ExecuteSNES         ;$15ECCD |

CODE_JP_15ECD1:
    LDX.W #$0000                  ;$15ECD1 |
    LDA.W #$00FF                  ;$15ECD4 |
    SEC                           ;$15ECD7 |
    SBC.W $303F                   ;$15ECD8 |
    BCS CODE_95ECE1               ;$15ECDB |
    STZ.B IdentifySNES            ;$15ECDD |
    BRA CODE_95ED21               ;$15ECDF |

CODE_95ECE1:
    STA.B IdentifySNES            ;$15ECE1 |
    CMP.W #$0080                  ;$15ECE3 |
    BCC CODE_95ED09               ;$15ECE6 |
    LDA.W #$007F                  ;$15ECE8 |
    STA.L $7F7870,X               ;$15ECEB |
    STA.L $7F7A70,X               ;$15ECEF |
    LDA.W #$0001                  ;$15ECF3 |
    STA.L $7F7871,X               ;$15ECF6 |
    LDA.W #$0012                  ;$15ECFA |
    STA.L $7F7A71,X               ;$15ECFD |
    INX                           ;$15ED01 |
    INX                           ;$15ED02 |
    LDA.B IdentifySNES            ;$15ED03 |
    SEC                           ;$15ED05 |
    SBC.W #$007F                  ;$15ED06 |

CODE_95ED09:
    STA.L $7F7870,X               ;$15ED09 |
    STA.L $7F7A70,X               ;$15ED0D |
    LDA.W #$0001                  ;$15ED11 |
    STA.L $7F7871,X               ;$15ED14 |
    LDA.W #$0012                  ;$15ED18 |
    STA.L $7F7A71,X               ;$15ED1B |
    INX                           ;$15ED1F |
    INX                           ;$15ED20 |

CODE_95ED21:
    LDA.W #$00E0                  ;$15ED21 |
    SEC                           ;$15ED24 |
    SBC.B IdentifySNES            ;$15ED25 |
    BCC CODE_95ED67               ;$15ED27 |
    STA.B IdentifySNES            ;$15ED29 |
    CMP.W #$0080                  ;$15ED2B |
    BCC CODE_95ED51               ;$15ED2E |
    LDA.W #$007F                  ;$15ED30 |
    STA.L $7F7870,X               ;$15ED33 |
    STA.L $7F7A70,X               ;$15ED37 |
    LDA.W #$0007                  ;$15ED3B |
    STA.L $7F7871,X               ;$15ED3E |
    LDA.W #$0011                  ;$15ED42 |
    STA.L $7F7A71,X               ;$15ED45 |
    INX                           ;$15ED49 |
    INX                           ;$15ED4A |
    LDA.B IdentifySNES            ;$15ED4B |
    SEC                           ;$15ED4D |
    SBC.W #$007F                  ;$15ED4E |

CODE_95ED51:
    STA.L $7F7870,X               ;$15ED51 |
    STA.L $7F7A70,X               ;$15ED55 |
    LDA.W #$0007                  ;$15ED59 |
    STA.L $7F7871,X               ;$15ED5C |
    LDA.W #$0011                  ;$15ED60 |
    STA.L $7F7A71,X               ;$15ED63 |

CODE_95ED67:
    LDA.W #$0000                  ;$15ED67 |
    STA.L $7F7872,X               ;$15ED6A |
    STA.L $7F7A72,X               ;$15ED6E |
    RTL                           ;$15ED72 |
    JSL.L CODE_FL_00E31E          ;$15ED73 |
    LDX.W #$0000                  ;$15ED77 |
    LDY.W #$0000                  ;$15ED7A |
    LDA.W #$001E                  ;$15ED7D |
    JSR.W CODE_FN_15F3AD          ;$15ED80 |
    LDA.W #$0000                  ;$15ED83 |
    LDX.W #$0000                  ;$15ED86 |
    JSL.L CODE_FL_00E5CE          ;$15ED89 |
    LDA.W #$0000                  ;$15ED8D |
    LDX.W #$FD00                  ;$15ED90 |
    LDY.W #$0020                  ;$15ED93 |
    JSL.L CODE_FL_00E582          ;$15ED96 |
    LDA.W #$0000                  ;$15ED9A |
    LDX.W #$0026                  ;$15ED9D |
    JSL.L CODE_FL_00E55E          ;$15EDA0 |
    LDA.W #$0280                  ;$15EDA4 |
    LDX.W #$001E                  ;$15EDA7 |
    JSL.L CODE_FL_00E55E          ;$15EDAA |
    LDA.W #$0080                  ;$15EDAE |
    STA.W $6CDC,Y                 ;$15EDB1 |
    LDA.W #$F700                  ;$15EDB4 |
    LDX.W #$0030                  ;$15EDB7 |
    JSL.L CODE_FL_00E55E          ;$15EDBA |
    JML.L DestroyUsedObject       ;$15EDBE |
    JSL.L CODE_FL_00E307          ;$15EDC2 |
    LDA.W #$AB72                  ;$15EDC6 |
    STA.W Obj_DrawCallback,Y      ;$15EDC9 |
    LDA.W #$003D                  ;$15EDCC |
    STA.W $64B6,Y                 ;$15EDCF |
    LDA.W #$0005                  ;$15EDD2 |
    STA.W Obj_VAR8,Y              ;$15EDD5 |

CODE_95EDD8:
    LDA.W #$EDE1                  ;$15EDD8 |
    STA.W Obj_VAR6,Y              ;$15EDDB |
    JMP.W CODE_JP_15EE3F          ;$15EDDE |
    TYX                           ;$15EDE1 |
    DEC.W Obj_VAR8,X              ;$15EDE2 |
    BNE CODE_95EDD8               ;$15EDE5 |
    LDA.W #$0007                  ;$15EDE7 |
    STA.W Obj_VAR8,Y              ;$15EDEA |

CODE_95EDED:
    LDA.W #$EDF6                  ;$15EDED |
    STA.W Obj_VAR6,Y              ;$15EDF0 |
    JMP.W CODE_JP_15EE5C          ;$15EDF3 |
    TYX                           ;$15EDF6 |
    DEC.W Obj_VAR8,X              ;$15EDF7 |
    BNE CODE_95EDED               ;$15EDFA |
    LDA.W #$0007                  ;$15EDFC |
    STA.W Obj_VAR8,Y              ;$15EDFF |

CODE_95EE02:
    LDA.W #$EE0B                  ;$15EE02 |
    STA.W Obj_VAR6,Y              ;$15EE05 |
    JMP.W CODE_JP_15EE3F          ;$15EE08 |
    TYX                           ;$15EE0B |
    DEC.W Obj_VAR8,X              ;$15EE0C |
    BNE CODE_95EE02               ;$15EE0F |
    LDA.W #$0003                  ;$15EE11 |
    STA.W Obj_VAR8,Y              ;$15EE14 |

CODE_95EE17:
    LDA.W #$EE20                  ;$15EE17 |
    STA.W Obj_VAR6,Y              ;$15EE1A |
    JMP.W CODE_JP_15EE5C          ;$15EE1D |
    TYX                           ;$15EE20 |
    DEC.W Obj_VAR8,X              ;$15EE21 |
    BNE CODE_95EE17               ;$15EE24 |
    LDA.W #$0004                  ;$15EE26 |
    STA.W Obj_VAR8,Y              ;$15EE29 |

CODE_95EE2C:
    LDA.W #$EE35                  ;$15EE2C |
    STA.W Obj_VAR6,Y              ;$15EE2F |
    JMP.W CODE_JP_15EE3F          ;$15EE32 |
    TYX                           ;$15EE35 |
    DEC.W Obj_VAR8,X              ;$15EE36 |
    BNE CODE_95EE2C               ;$15EE39 |
    JML.L DestroyUsedObject       ;$15EE3B |

CODE_JP_15EE3F:
    LDA.W #$0202                  ;$15EE3F |
    JSL.L CODE_FL_00E169          ;$15EE42 |
    LDA.W #$0002                  ;$15EE46 |
    JSL.L CODE_FL_00E269          ;$15EE49 |
    LDA.W #$0002                  ;$15EE4D |
    JSL.L CODE_FL_00E269          ;$15EE50 |
    LDA.W Obj_VAR6,Y              ;$15EE54 |
    STA.B IdentifySNES            ;$15EE57 |
    JMP.W ($3700)                 ;$15EE59 |

CODE_JP_15EE5C:
    LDX.W #$0000                  ;$15EE5C |
    LDY.W #$0000                  ;$15EE5F |
    LDA.W #$0020                  ;$15EE62 |
    JSR.W CODE_FN_15F3AD          ;$15EE65 |
    LDA.W #$0202                  ;$15EE68 |
    JSL.L CODE_FL_00E169          ;$15EE6B |
    LDA.W #$0001                  ;$15EE6F |
    JSL.L CODE_FL_00E269          ;$15EE72 |
    LDX.W #$0000                  ;$15EE76 |
    LDY.W #$0000                  ;$15EE79 |
    LDA.W #$0020                  ;$15EE7C |
    JSR.W CODE_FN_15F3AD          ;$15EE7F |
    JSL.L CODE_FL_00E091          ;$15EE82 |
    LDA.W #$0002                  ;$15EE86 |
    JSL.L CODE_FL_00E269          ;$15EE89 |
    LDA.W Obj_VAR6,Y              ;$15EE8D |
    STA.B IdentifySNES            ;$15EE90 |
    JMP.W ($3700)                 ;$15EE92 |
    JSL.L CODE_FL_05E5D2          ;$15EE95 |
    LDA.W #$AB72                  ;$15EE99 |
    STA.W Obj_DrawCallback,Y      ;$15EE9C |
    LDA.W #$003C                  ;$15EE9F |
    STA.W $64B6,Y                 ;$15EEA2 |
    LDA.W #$0190                  ;$15EEA5 |
    LDX.W #$FC00                  ;$15EEA8 |
    JSL.L CODE_FL_00E539          ;$15EEAB |
    LDA.W #$0000                  ;$15EEAF |
    LDX.W #$0020                  ;$15EEB2 |
    JSL.L CODE_FL_00E5CE          ;$15EEB5 |
    LDA.W #$0408                  ;$15EEB9 |
    JSL.L CODE_FL_00E169          ;$15EEBC |
    TYX                           ;$15EEC0 |
    INC.W Obj_Pose,X              ;$15EEC1 |
    JSL.L CODE_FL_00E0A3          ;$15EEC4 |
    TYX                           ;$15EEC8 |
    INC.W Obj_Pose,X              ;$15EEC9 |
    JSL.L CODE_FL_00E0A3          ;$15EECC |
    TYX                           ;$15EED0 |
    INC.W Obj_Pose,X              ;$15EED1 |
    JSL.L CODE_FL_00E0A3          ;$15EED4 |
    JML.L DestroyUsedObject       ;$15EED8 |
    JSL.L CODE_FL_00E307          ;$15EEDC |
    LDA.W #$0003                  ;$15EEE0 |
    STA.W Obj_VAR8,Y              ;$15EEE3 |

CODE_JP_15EEE6:
    LDX.W #$0000                  ;$15EEE6 |
    LDY.W #$0000                  ;$15EEE9 |
    LDA.W #$0024                  ;$15EEEC |
    JSR.W CODE_FN_15F3AD          ;$15EEEF |
    JSL.L CODE_FL_00E0A3          ;$15EEF2 |
    LDX.W #$0000                  ;$15EEF6 |
    LDY.W #$0000                  ;$15EEF9 |
    LDA.W #$0026                  ;$15EEFC |
    JSR.W CODE_FN_15F3AD          ;$15EEFF |
    JSL.L CODE_FL_00E0A3          ;$15EF02 |
    LDX.W #$0000                  ;$15EF06 |
    LDY.W #$0000                  ;$15EF09 |
    LDA.W #$0028                  ;$15EF0C |
    JSR.W CODE_FN_15F3AD          ;$15EF0F |
    JSL.L CODE_FL_00E0A3          ;$15EF12 |
    TYX                           ;$15EF16 |
    DEC.W Obj_VAR8,X              ;$15EF17 |
    BEQ CODE_95EF1F               ;$15EF1A |
    JMP.W CODE_JP_15EEE6          ;$15EF1C |

CODE_95EF1F:
    JSL.L CODE_FL_00E11B          ;$15EF1F |
    JML.L DestroyUsedObject       ;$15EF23 |
    LDA.W #$0500                  ;$15EF27 |
    LDX.W #$F900                  ;$15EF2A |
    JSL.L CODE_FL_00E539          ;$15EF2D |
    BRA CODE_95EF49               ;$15EF31 |
    LDA.W #$0600                  ;$15EF33 |
    LDX.W #$FA00                  ;$15EF36 |
    JSL.L CODE_FL_00E539          ;$15EF39 |
    BRA CODE_95EF49               ;$15EF3D |
    LDA.W #$0700                  ;$15EF3F |
    LDX.W #$FB00                  ;$15EF42 |
    JSL.L CODE_FL_00E539          ;$15EF45 |

CODE_95EF49:
    JSL.L CODE_FL_05E5D2          ;$15EF49 |
    LDA.W #$AB72                  ;$15EF4D |
    STA.W Obj_DrawCallback,Y      ;$15EF50 |
    LDA.W #$9AEA                  ;$15EF53 |
    LDX.W #$00C5                  ;$15EF56 |
    JSL.L CODE_FL_00E1CC          ;$15EF59 |
    LDA.W #$003F                  ;$15EF5D |
    STA.W $64B6,Y                 ;$15EF60 |
    LDA.W #$0302                  ;$15EF63 |
    JSL.L CODE_FL_00E169          ;$15EF66 |
    LDA.W #$0003                  ;$15EF6A |
    JSL.L CODE_FL_00E269          ;$15EF6D |
    TYX                           ;$15EF71 |
    DEC.W Obj_Pose,X              ;$15EF72 |
    JSL.L CODE_FL_00E09D          ;$15EF75 |
    LDA.W #$0003                  ;$15EF79 |
    JSL.L CODE_FL_00E269          ;$15EF7C |
    LDA.W #$0400                  ;$15EF80 |
    JSL.L CODE_FL_00E169          ;$15EF83 |
    JML.L DestroyUsedObject       ;$15EF87 |
    JSL.L CODE_FL_05E5D2          ;$15EF8B |
    LDA.W #$AB72                  ;$15EF8F |
    STA.W Obj_DrawCallback,Y      ;$15EF92 |
    LDA.W #$003E                  ;$15EF95 |
    STA.W $64B6,Y                 ;$15EF98 |
    LDA.W #$9AEA                  ;$15EF9B |
    LDX.W #$00C5                  ;$15EF9E |
    JSL.L CODE_FL_00E1CC          ;$15EFA1 |
    LDA.W #$0800                  ;$15EFA5 |
    LDX.W #$F800                  ;$15EFA8 |
    JSL.L CODE_FL_00E539          ;$15EFAB |
    LDA.W #$0419                  ;$15EFAF |
    JSL.L CODE_FL_00E169          ;$15EFB2 |
    JML.L DestroyUsedObject       ;$15EFB6 |
    LDA.W #$003F                  ;$15EFBA |
    STA.W $64B6,Y                 ;$15EFBD |
    JSL.L CODE_FL_05E5D2          ;$15EFC0 |
    LDA.W #$AB72                  ;$15EFC4 |
    STA.W Obj_DrawCallback,Y      ;$15EFC7 |
    LDA.W #$0100                  ;$15EFCA |
    LDX.W #$FF00                  ;$15EFCD |
    JSL.L CODE_FL_00E539          ;$15EFD0 |
    LDA.W #$0004                  ;$15EFD4 |
    STA.W Obj_VAR8,Y              ;$15EFD7 |

CODE_JP_15EFDA:
    LDA.W #$01FF                  ;$15EFDA |
    JSL.L CODE_FL_00E169          ;$15EFDD |
    LDA.W #$0100                  ;$15EFE1 |
    JSL.L CODE_FL_00E169          ;$15EFE4 |
    TYX                           ;$15EFE8 |
    DEC.W Obj_VAR8,X              ;$15EFE9 |
    BEQ CODE_95EFF1               ;$15EFEC |
    JMP.W CODE_JP_15EFDA          ;$15EFEE |

CODE_95EFF1:
    JML.L DestroyUsedObject       ;$15EFF1 |
    JSL.L CODE_FL_00E0BB          ;$15EFF5 |
    LDA.W #$003D                  ;$15EFF9 |
    STA.W $64B6,Y                 ;$15EFFC |
    LDA.W #$AB72                  ;$15EFFF |
    STA.W Obj_DrawCallback,Y      ;$15F002 |
    LDA.W #$FE00                  ;$15F005 |
    LDX.W #$FC00                  ;$15F008 |
    JSL.L CODE_FL_00E539          ;$15F00B |
    LDA.W #$0000                  ;$15F00F |
    LDX.W #$0030                  ;$15F012 |
    JSL.L CODE_FL_00E5CE          ;$15F015 |
    LDA.W #$000A                  ;$15F019 |
    STA.W Obj_VAR8,Y              ;$15F01C |

CODE_JP_15F01F:
    LDA.W #$0203                  ;$15F01F |
    JSL.L CODE_FL_00E169          ;$15F022 |
    LDA.W #$0002                  ;$15F026 |
    JSL.L CODE_FL_00E269          ;$15F029 |
    LDA.W #$0002                  ;$15F02D |
    JSL.L CODE_FL_00E269          ;$15F030 |
    TYX                           ;$15F034 |
    DEC.W Obj_VAR8,X              ;$15F035 |
    BEQ CODE_95F03D               ;$15F038 |
    JMP.W CODE_JP_15F01F          ;$15F03A |

CODE_95F03D:
    JML.L DestroyUsedObject       ;$15F03D |
    JSL.L CODE_FL_05E5D2          ;$15F041 |
    LDA.W #$AB72                  ;$15F045 |
    STA.W Obj_DrawCallback,Y      ;$15F048 |
    LDA.W #$9AEA                  ;$15F04B |
    LDX.W #$00C5                  ;$15F04E |
    JSL.L CODE_FL_00E1CC          ;$15F051 |
    LDA.W #$0043                  ;$15F055 |
    STA.W $64B6,Y                 ;$15F058 |
    LDA.W #$0800                  ;$15F05B |
    LDX.W #$0200                  ;$15F05E |
    JSL.L CODE_FL_00E539          ;$15F061 |
    LDA.W #$FF40                  ;$15F065 |
    LDX.W #$FFF0                  ;$15F068 |
    JSL.L CODE_FL_00E5CE          ;$15F06B |
    LDA.W #$0302                  ;$15F06F |
    JSL.L CODE_FL_00E169          ;$15F072 |
    LDA.W #$0003                  ;$15F076 |
    JSL.L CODE_FL_00E269          ;$15F079 |
    TYX                           ;$15F07D |
    DEC.W Obj_Pose,X              ;$15F07E |
    JSL.L CODE_FL_00E09D          ;$15F081 |
    LDA.W #$0003                  ;$15F085 |
    JSL.L CODE_FL_00E269          ;$15F088 |
    LDA.W #$0400                  ;$15F08C |
    JSL.L CODE_FL_00E169          ;$15F08F |
    JML.L DestroyUsedObject       ;$15F093 |
    JSL.L CODE_FL_05E5D2          ;$15F097 |
    LDA.W #$AB72                  ;$15F09B |
    STA.W Obj_DrawCallback,Y      ;$15F09E |
    LDA.W #$9AEA                  ;$15F0A1 |
    LDX.W #$00C5                  ;$15F0A4 |
    JSL.L CODE_FL_00E1CC          ;$15F0A7 |
    LDA.W #$0043                  ;$15F0AB |
    STA.W $64B6,Y                 ;$15F0AE |
    LDA.W #$0000                  ;$15F0B1 |
    LDX.W #$0400                  ;$15F0B4 |
    JSL.L CODE_FL_00E539          ;$15F0B7 |
    LDA.W #$0080                  ;$15F0BB |
    LDX.W #$FF40                  ;$15F0BE |
    JSL.L CODE_FL_00E5CE          ;$15F0C1 |
    LDA.W #$0302                  ;$15F0C5 |
    JSL.L CODE_FL_00E169          ;$15F0C8 |
    LDA.W #$0004                  ;$15F0CC |
    JSL.L CODE_FL_00E269          ;$15F0CF |
    TYX                           ;$15F0D3 |
    DEC.W Obj_Pose,X              ;$15F0D4 |
    JSL.L CODE_FL_00E0A3          ;$15F0D7 |
    LDA.W #$0004                  ;$15F0DB |
    JSL.L CODE_FL_00E269          ;$15F0DE |
    LDA.W #$0400                  ;$15F0E2 |
    JSL.L CODE_FL_00E169          ;$15F0E5 |
    JML.L DestroyUsedObject       ;$15F0E9 |
    JSL.L CODE_FL_05E5D2          ;$15F0ED |
    LDA.W #$AB72                  ;$15F0F1 |
    STA.W Obj_DrawCallback,Y      ;$15F0F4 |
    LDA.W #$0042                  ;$15F0F7 |
    STA.W $64B6,Y                 ;$15F0FA |
    LDA.W #$9AEA                  ;$15F0FD |
    LDX.W #$00C5                  ;$15F100 |
    JSL.L CODE_FL_00E1CC          ;$15F103 |
    LDA.W #$0A00                  ;$15F107 |
    LDX.W #$0100                  ;$15F10A |
    JSL.L CODE_FL_00E539          ;$15F10D |
    LDA.W #$0419                  ;$15F111 |
    JSL.L CODE_FL_00E169          ;$15F114 |
    JML.L DestroyUsedObject       ;$15F118 |
    JSL.L CODE_FL_05E5D2          ;$15F11C |
    LDA.W #$AB72                  ;$15F120 |
    STA.W Obj_DrawCallback,Y      ;$15F123 |
    LDA.W #$0041                  ;$15F126 |
    STA.W $64B6,Y                 ;$15F129 |
    LDA.W #$0100                  ;$15F12C |
    LDX.W #$0100                  ;$15F12F |
    JSL.L CODE_FL_00E539          ;$15F132 |
    LDA.W #$0003                  ;$15F136 |
    STA.W Obj_VAR8,Y              ;$15F139 |

CODE_JP_15F13C:
    LDA.W #$01FF                  ;$15F13C |
    JSL.L CODE_FL_00E169          ;$15F13F |
    LDA.W #$0101                  ;$15F143 |
    JSL.L CODE_FL_00E169          ;$15F146 |
    TYX                           ;$15F14A |
    DEC.W Obj_VAR8,X              ;$15F14B |
    BEQ CODE_95F153               ;$15F14E |
    JMP.W CODE_JP_15F13C          ;$15F150 |

CODE_95F153:
    JML.L DestroyUsedObject       ;$15F153 |
    JSL.L CODE_FL_00E2F8          ;$15F157 |
    LDA.W #$F1BB                  ;$15F15B |
    LDX.W #$00CA                  ;$15F15E |
    JSL.L CODE_FL_00E1B7          ;$15F161 |
    LDA.W #$004A                  ;$15F165 |
    JSL.L CODE_FL_00E17F          ;$15F168 |
    LDX.W #$0000                  ;$15F16C |
    LDY.W #$0000                  ;$15F16F |
    LDA.W #$0034                  ;$15F172 |
    JSR.W CODE_FN_15F3AD          ;$15F175 |
    LDA.W #$0002                  ;$15F178 |
    STA.W Obj_VAR8,Y              ;$15F17B |

CODE_JP_15F17E:
    LDX.W #$0000                  ;$15F17E |
    LDY.W #$0000                  ;$15F181 |
    LDA.W #$0048                  ;$15F184 |
    JSR.W CODE_FN_15F3AD          ;$15F187 |
    JSL.L CODE_FL_00E09D          ;$15F18A |
    LDX.W #$0000                  ;$15F18E |
    LDY.W #$0000                  ;$15F191 |
    LDA.W #$004A                  ;$15F194 |
    JSR.W CODE_FN_15F3AD          ;$15F197 |
    JSL.L CODE_FL_00E09D          ;$15F19A |
    LDX.W #$0000                  ;$15F19E |
    LDY.W #$0000                  ;$15F1A1 |
    LDA.W #$004C                  ;$15F1A4 |
    JSR.W CODE_FN_15F3AD          ;$15F1A7 |
    JSL.L CODE_FL_00E09D          ;$15F1AA |
    TYX                           ;$15F1AE |
    DEC.W Obj_VAR8,X              ;$15F1AF |
    BEQ CODE_95F1B7               ;$15F1B2 |
    JMP.W CODE_JP_15F17E          ;$15F1B4 |

CODE_95F1B7:
    JML.L DestroyUsedObject       ;$15F1B7 |
    LDA.W Obj_XPosition,Y         ;$15F1BB |
    SEC                           ;$15F1BE |
    SBC.W $3037                   ;$15F1BF |
    STA.W Obj_XPositionMirror,Y   ;$15F1C2 |
    LDA.W Obj_YPosition,Y         ;$15F1C5 |
    SEC                           ;$15F1C8 |
    SBC.W $303D                   ;$15F1C9 |
    STA.W Obj_YPositionMirror,Y   ;$15F1CC |
    RTL                           ;$15F1CF |
    LDX.W #$01C0                  ;$15F1D0 |
    LDY.W #$0070                  ;$15F1D3 |
    LDA.W #$003C                  ;$15F1D6 |
    JSR.W CODE_FN_15F3AD          ;$15F1D9 |
    LDX.W #$01F0                  ;$15F1DC |
    LDY.W #$00B0                  ;$15F1DF |
    LDA.W #$003E                  ;$15F1E2 |
    JSR.W CODE_FN_15F3AD          ;$15F1E5 |
    LDX.W #$00A0                  ;$15F1E8 |
    LDY.W #$00F0                  ;$15F1EB |
    LDA.W #$003C                  ;$15F1EE |
    JSR.W CODE_FN_15F3AD          ;$15F1F1 |
    LDX.W #$0100                  ;$15F1F4 |
    LDY.W #$0070                  ;$15F1F7 |
    LDA.W #$003E                  ;$15F1FA |
    JSR.W CODE_FN_15F3AD          ;$15F1FD |
    LDX.W #$0180                  ;$15F200 |
    LDY.W #$00D0                  ;$15F203 |
    LDA.W #$003C                  ;$15F206 |
    JSR.W CODE_FN_15F3AD          ;$15F209 |
    LDA.W #$F000                  ;$15F20C |
    LDX.W #$FA00                  ;$15F20F |
    JSL.L CODE_FL_00E539          ;$15F212 |
    LDA.W #$0058                  ;$15F216 |
    LDX.W #$0030                  ;$15F219 |
    LDY.W #$0032                  ;$15F21C |
    JSL.L CODE_FL_00E617          ;$15F21F |
    LDA.W #$0058                  ;$15F223 |
    LDX.W #$FFD0                  ;$15F226 |
    JSL.L CODE_FL_00E5CE          ;$15F229 |

CODE_95F22D:
    JSL.L CODE_FL_00E091          ;$15F22D |
    BRA CODE_95F22D               ;$15F231 |
    JSL.L CODE_FL_00E307          ;$15F233 |
    LDA.W #$003E                  ;$15F237 |
    STA.W $64B6,Y                 ;$15F23A |
    LDA.W #$000C                  ;$15F23D |
    STA.W Obj_Pose,Y              ;$15F240 |

CODE_95F243:
    JSL.L CODE_FL_00E091          ;$15F243 |
    BRA CODE_95F243               ;$15F247 |
    JSL.L CODE_FL_00E307          ;$15F249 |
    LDA.W #$003E                  ;$15F24D |
    STA.W $64B6,Y                 ;$15F250 |
    LDA.W #$000D                  ;$15F253 |
    STA.W Obj_Pose,Y              ;$15F256 |

CODE_95F259:
    JSL.L CODE_FL_00E091          ;$15F259 |
    BRA CODE_95F259               ;$15F25D |
    LDA.W #$F800                  ;$15F25F |
    LDX.W #$0300                  ;$15F262 |
    JSL.L CODE_FL_00E539          ;$15F265 |
    LDA.W #$0060                  ;$15F269 |
    LDX.W #$FFE8                  ;$15F26C |
    JSL.L CODE_FL_00E5CE          ;$15F26F |
    BRA CODE_95F2B5               ;$15F273 |
    LDA.W #$FB00                  ;$15F275 |
    LDX.W #$FB00                  ;$15F278 |
    JSL.L CODE_FL_00E539          ;$15F27B |
    LDA.W #$0040                  ;$15F27F |
    LDX.W #$0048                  ;$15F282 |
    JSL.L CODE_FL_00E5CE          ;$15F285 |
    BRA CODE_95F2B5               ;$15F289 |
    LDA.W #$FF00                  ;$15F28B |
    LDX.W #$F800                  ;$15F28E |
    JSL.L CODE_FL_00E539          ;$15F291 |
    LDA.W #$0010                  ;$15F295 |
    LDX.W #$0060                  ;$15F298 |
    JSL.L CODE_FL_00E5CE          ;$15F29B |
    BRA CODE_95F2B5               ;$15F29F |
    LDA.W #$0500                  ;$15F2A1 |
    LDX.W #$FF00                  ;$15F2A4 |
    JSL.L CODE_FL_00E539          ;$15F2A7 |
    LDA.W #$FFC8                  ;$15F2AB |
    LDX.W #$0008                  ;$15F2AE |
    JSL.L CODE_FL_00E5CE          ;$15F2B1 |

CODE_95F2B5:
    LDA.W #$9AEA                  ;$15F2B5 |
    LDX.W #$00C5                  ;$15F2B8 |
    JSL.L CODE_FL_00E1CC          ;$15F2BB |
    LDA.W #$003F                  ;$15F2BF |
    STA.W $64B6,Y                 ;$15F2C2 |
    LDA.W #$0003                  ;$15F2C5 |
    STA.W Obj_VAR8,Y              ;$15F2C8 |

CODE_JP_15F2CB:
    LDA.W #$0206                  ;$15F2CB |
    JSL.L CODE_FL_00E169          ;$15F2CE |
    LDA.W #$0002                  ;$15F2D2 |
    JSL.L CODE_FL_00E269          ;$15F2D5 |
    TYX                           ;$15F2D9 |
    DEC.W Obj_Pose,X              ;$15F2DA |
    JSL.L CODE_FL_00E097          ;$15F2DD |
    LDA.W #$0002                  ;$15F2E1 |
    JSL.L CODE_FL_00E269          ;$15F2E4 |
    TYX                           ;$15F2E8 |
    DEC.W Obj_VAR8,X              ;$15F2E9 |
    BEQ CODE_95F2F1               ;$15F2EC |
    JMP.W CODE_JP_15F2CB          ;$15F2EE |

CODE_95F2F1:
    LDA.W #$0402                  ;$15F2F1 |
    JSL.L CODE_FL_00E169          ;$15F2F4 |
    LDA.W #$0004                  ;$15F2F8 |
    JSL.L CODE_FL_00E273          ;$15F2FB |
    JML.L DestroyUsedObject       ;$15F2FF |
    LDA.W #$0600                  ;$15F303 |
    LDX.W #$FF80                  ;$15F306 |
    JSL.L CODE_FL_00E539          ;$15F309 |
    BRA CODE_95F325               ;$15F30D |
    LDA.W #$0600                  ;$15F30F |
    LDX.W #$0080                  ;$15F312 |
    JSL.L CODE_FL_00E539          ;$15F315 |
    BRA CODE_95F325               ;$15F319 |
    LDA.W #$0500                  ;$15F31B |
    LDX.W #$0180                  ;$15F31E |
    JSL.L CODE_FL_00E539          ;$15F321 |

CODE_95F325:
    LDA.W #$9AEA                  ;$15F325 |
    LDX.W #$00C5                  ;$15F328 |
    JSL.L CODE_FL_00E1CC          ;$15F32B |
    LDA.W #$003F                  ;$15F32F |
    STA.W $64B6,Y                 ;$15F332 |
    JSL.L CODE_FL_05E5D2          ;$15F335 |
    LDA.W #$0302                  ;$15F339 |
    JSL.L CODE_FL_00E169          ;$15F33C |
    LDA.W #$0003                  ;$15F340 |
    JSL.L CODE_FL_00E269          ;$15F343 |
    TYX                           ;$15F347 |
    DEC.W Obj_Pose,X              ;$15F348 |
    JSL.L CODE_FL_00E09D          ;$15F34B |
    LDA.W #$0300                  ;$15F34F |
    JSL.L CODE_FL_00E169          ;$15F352 |
    JML.L DestroyUsedObject       ;$15F356 |

CODE_FN_15F35A:
    STA.W $3037                   ;$15F35A |
    STX.W $303D                   ;$15F35D |
    RTS                           ;$15F360 |

CODE_FN_15F361:
    PHX                           ;$15F361 |
    JSL.L CODE_FL_03AC43          ;$15F362 |
    STA.W $733A,Y                 ;$15F366 |
    TXA                           ;$15F369 |
    STA.W $734A,Y                 ;$15F36A |
    PLA                           ;$15F36D |
    JSL.L CODE_FL_03AC43          ;$15F36E |
    STA.W $7342,Y                 ;$15F372 |
    TXA                           ;$15F375 |
    STA.W $7352,Y                 ;$15F376 |
    LDY.B $39                     ;$15F379 |
    RTS                           ;$15F37B |
    JSL.L CODE_FL_03AC43          ;$15F37C |
    STA.W $733A,Y                 ;$15F380 |
    TXA                           ;$15F383 |
    STA.W $734A,Y                 ;$15F384 |
    LDY.B $39                     ;$15F387 |
    RTS                           ;$15F389 |

    JSL.L CODE_FL_03AC43          ;$15F38A |
    STA.W $7342,Y                 ;$15F38E |
    TXA                           ;$15F391 |
    STA.W $7352,Y                 ;$15F392 |
    LDY.B $39                     ;$15F395 |
    RTS                           ;$15F397 |


CODE_FN_15F398:
    STA.W Mode7_CenterX           ;$15F398 |
    STX.W Mode7_CenterY           ;$15F39B |
    RTS                           ;$15F39E |

CODE_FN_15F39F:
    STA.W $307F                   ;$15F39F |
    STX.W $3081                   ;$15F3A2 |
    RTS                           ;$15F3A5 |

CODE_FN_15F3A6:
    STA.W $7790                   ;$15F3A6 |
    STX.W $7792                   ;$15F3A9 |
    RTS                           ;$15F3AC |

CODE_FN_15F3AD:
    STA.W ObjVar0_Temp            ;$15F3AD |
    LDA.B $39                     ;$15F3B0 |
    STA.W ObjVar2_Temp            ;$15F3B2 |
    STZ.W ObjSlotMinimum          ;$15F3B5 |
    LDA.W #$007A                  ;$15F3B8 |
    STA.W ObjSlotMaximum          ;$15F3BB |
    LDA.W #$0000                  ;$15F3BE |
    JSL.L CreateNewObject         ;$15F3C1 |
    BCS CODE_95F3D2               ;$15F3C5 |
    TAX                           ;$15F3C7 |
    LDA.W #$E750                  ;$15F3C8 |
    LDY.W #$40CA                  ;$15F3CB |
    JSL.L CODE_FL_008F64          ;$15F3CE |

CODE_95F3D2:
    LDY.B $39                     ;$15F3D2 |
    RTS                           ;$15F3D4 |
    STZ.W Standard_Palette        ;$15F3D5 |
    RTL                           ;$15F3D8 |
    STZ.B IdentifySNES            ;$15F3D9 |
    LDA.W $778C                   ;$15F3DB |
    STA.B DSP_P                   ;$15F3DE |
    LDA.W $7794                   ;$15F3E0 |
    CLC                           ;$15F3E3 |
    ADC.W #$0008                  ;$15F3E4 |
    STA.W $7794                   ;$15F3E7 |
    STA.B DSP_SRCN                ;$15F3EA |
    JSL.L CODE_FL_CAF449          ;$15F3EC |
    LDA.B IdentifySNES            ;$15F3F0 |
    STA.W Standard_Palette        ;$15F3F2 |
    LDY.W #$0012                  ;$15F3F5 |

CODE_95F3F8:
    TYX                           ;$15F3F8 |
    LDA.L DATA8_EFE67E,X          ;$15F3F9 |
    STA.B IdentifySNES            ;$15F3FD |
    JSL.L CODE_FL_CAF449          ;$15F3FF |
    LDA.B IdentifySNES            ;$15F403 |
    STA.W $0642,Y                 ;$15F405 |
    DEY                           ;$15F408 |
    DEY                           ;$15F409 |
    BPL CODE_95F3F8               ;$15F40A |
    LDY.W #$001C                  ;$15F40C |

CODE_95F40F:
    LDA.W Standard_Palette        ;$15F40F |
    STA.B IdentifySNES            ;$15F412 |
    TYX                           ;$15F414 |
    LDA.L DATA8_EFDE72,X          ;$15F415 |
    STA.B DSP_P                   ;$15F419 |
    JSL.L CODE_FL_CAF449          ;$15F41B |
    LDA.B IdentifySNES            ;$15F41F |
    STA.W $0602,Y                 ;$15F421 |
    DEY                           ;$15F424 |
    DEY                           ;$15F425 |
    BPL CODE_95F40F               ;$15F426 |
    JML.L WaitForSnesNMI          ;$15F428 |
    LDA.W $778C                   ;$15F42C |
    STA.B IdentifySNES            ;$15F42F |
    STZ.B DSP_P                   ;$15F431 |
    LDA.W $778E                   ;$15F433 |
    CLC                           ;$15F436 |
    ADC.W #$0010                  ;$15F437 |
    STA.W $778E                   ;$15F43A |
    STA.B DSP_SRCN                ;$15F43D |
    JSL.L CODE_FL_CAF449          ;$15F43F |
    LDA.B IdentifySNES            ;$15F443 |
    STA.W Standard_Palette        ;$15F445 |
    RTL                           ;$15F448 |
    BIT.W IdentifySNES            ;$15F449 |
    BMI CODE_95F458               ;$15F44C |
    LDA.W #$F458                  ;$15F44E |
    LDX.W #$00CA                  ;$15F451 |
    JML.L SNES_ExecuteSA1         ;$15F454 |


CODE_95F458:
    STZ.W $2250                   ;$15F458 |
    LDA.W #$0100                  ;$15F45B |
    SEC                           ;$15F45E |
    SBC.B DSP_SRCN                ;$15F45F |
    STA.W $2251                   ;$15F461 |
    LDA.B IdentifySNES            ;$15F464 |
    AND.W #$7C00                  ;$15F466 |
    STA.W $2253                   ;$15F469 |
    LDA.B IdentifySNES            ;$15F46C |
    LDY.W $2307                   ;$15F46E |
    PHY                           ;$15F471 |
    AND.W #$03E0                  ;$15F472 |
    STA.W $2253                   ;$15F475 |
    LDA.B IdentifySNES            ;$15F478 |
    LDY.W $2307                   ;$15F47A |
    PHY                           ;$15F47D |
    AND.W #$001F                  ;$15F47E |
    STA.W $2253                   ;$15F481 |
    CLC                           ;$15F484 |
    LDY.W $2307                   ;$15F485 |
    LDA.B DSP_SRCN                ;$15F488 |
    STA.W $2251                   ;$15F48A |
    LDA.B DSP_P                   ;$15F48D |
    AND.W #$001F                  ;$15F48F |
    STA.W $2253                   ;$15F492 |
    TYA                           ;$15F495 |
    ADC.W $2307                   ;$15F496 |
    STA.B IdentifySNES            ;$15F499 |
    LDA.B DSP_P                   ;$15F49B |
    AND.W #$03E0                  ;$15F49D |
    STA.W $2253                   ;$15F4A0 |
    PLA                           ;$15F4A3 |
    ADC.W $2307                   ;$15F4A4 |
    AND.W #$03E0                  ;$15F4A7 |
    ORA.B IdentifySNES            ;$15F4AA |
    STA.B IdentifySNES            ;$15F4AC |
    LDA.B DSP_P                   ;$15F4AE |
    AND.W #$7C00                  ;$15F4B0 |
    STA.W $2253                   ;$15F4B3 |
    PLA                           ;$15F4B6 |
    ADC.W $2307                   ;$15F4B7 |
    AND.W #$7C00                  ;$15F4BA |
    ORA.B IdentifySNES            ;$15F4BD |
    STA.B IdentifySNES            ;$15F4BF |
    RTL                           ;$15F4C1 |
    PEA.W $007E                   ;$15F4C2 |
    PLB                           ;$15F4C5 |
    LDA.W #$00EF                  ;$15F4C6 |
    LDX.W #$E6CA                  ;$15F4C9 |
    LDY.W #$2000                  ;$15F4CC |
    JSL.L DecompressData          ;$15F4CF |
    LDY.W #$0006                  ;$15F4D3 |

CODE_95F4D6:
    LDA.W $2008,Y                 ;$15F4D6 |
    STA.W $2080,Y                 ;$15F4D9 |
    LDA.W $2010,Y                 ;$15F4DC |
    STA.W HW_INIDISP,Y            ;$15F4DF |
    LDA.W $2018,Y                 ;$15F4E2 |
    STA.W HW_WMDATA,Y             ;$15F4E5 |
    LDA.W $2020,Y                 ;$15F4E8 |
    STA.W $2200,Y                 ;$15F4EB |
    LDA.W $2028,Y                 ;$15F4EE |
    STA.W $2280,Y                 ;$15F4F1 |
    LDA.W $2030,Y                 ;$15F4F4 |
    STA.W $2300,Y                 ;$15F4F7 |
    LDA.W $2038,Y                 ;$15F4FA |
    STA.W $2380,Y                 ;$15F4FD |
    DEY                           ;$15F500 |
    DEY                           ;$15F501 |
    BPL CODE_95F4D6               ;$15F502 |
    LDX.W #$2000                  ;$15F504 |
    LDY.W #$2008                  ;$15F507 |
    LDA.W #$0077                  ;$15F50A |
    MVN $7E,$7E                   ;$15F50D |
    LDX.W #$2080                  ;$15F510 |
    LDY.W #$2088                  ;$15F513 |
    LDA.W #$0077                  ;$15F516 |
    MVN $7E,$7E                   ;$15F519 |
    LDX.W #$2100                  ;$15F51C |
    LDY.W #$2108                  ;$15F51F |
    LDA.W #$0077                  ;$15F522 |
    MVN $7E,$7E                   ;$15F525 |
    LDX.W #$2180                  ;$15F528 |
    LDY.W #$2188                  ;$15F52B |
    LDA.W #$0077                  ;$15F52E |
    MVN $7E,$7E                   ;$15F531 |
    LDX.W #$2200                  ;$15F534 |
    LDY.W #$2208                  ;$15F537 |
    LDA.W #$0077                  ;$15F53A |
    MVN $7E,$7E                   ;$15F53D |
    LDX.W #$2280                  ;$15F540 |
    LDY.W #$2288                  ;$15F543 |
    LDA.W #$0077                  ;$15F546 |
    MVN $7E,$7E                   ;$15F549 |
    LDX.W #$2300                  ;$15F54C |
    LDY.W #$2308                  ;$15F54F |
    LDA.W #$0077                  ;$15F552 |
    MVN $7E,$7E                   ;$15F555 |
    LDX.W #$2380                  ;$15F558 |
    LDY.W #$2388                  ;$15F55B |
    LDA.W #$0077                  ;$15F55E |
    MVN $7E,$7E                   ;$15F561 |
    LDX.W #$2000                  ;$15F564 |
    LDY.W #$2400                  ;$15F567 |
    LDA.W #$3F7F                  ;$15F56A |
    MVN $7E,$7E                   ;$15F56D |
    PLB                           ;$15F570 |
    RTL                           ;$15F571 |
    SEP #$30                      ;$15F572 |
    LDA.B #$F0                    ;$15F574 |
    TRB.W HDMA_Enable             ;$15F576 |
    LDX.B #$2A                    ;$15F579 |

CODE_95F57B:
    TXA                           ;$15F57B |
    STA.L $7E1FFF,X               ;$15F57C |
    DEX                           ;$15F580 |
    BNE CODE_95F57B               ;$15F581 |
    REP #$30                      ;$15F583 |
    RTL                           ;$15F585 |
    SEP #$20                      ;$15F586 |
    LDA.W Screen_Brightness_Mirror_PrevFrame;$15F588 |
    CMP.B #$0F                    ;$15F58B |
    BCS CODE_95F596               ;$15F58D |
    INC A                         ;$15F58F |
    STA.W Screen_Brightness_Mirror_PrevFrame;$15F590 |
    STA.W Screen_Brightness       ;$15F593 |

CODE_95F596:
    REP #$20                      ;$15F596 |
    LDA.W #$3700                  ;$15F598 |
    TCD                           ;$15F59B |
    LDA.W $7796                   ;$15F59C |
    CMP.W #$0014                  ;$15F59F |
    BCC CODE_95F5AB               ;$15F5A2 |
    STZ.W $3099                   ;$15F5A4 |
    JML.L CODE_FL_00842C          ;$15F5A7 |

CODE_95F5AB:
    CMP.W #$0010                  ;$15F5AB |
    BCS CODE_95F5B5               ;$15F5AE |
    LDA.W #$0400                  ;$15F5B0 |
    BRA CODE_95F5B8               ;$15F5B3 |

CODE_95F5B5:
    LDA.W #$0200                  ;$15F5B5 |

CODE_95F5B8:
    CLC                           ;$15F5B8 |
    ADC.W $307D                   ;$15F5B9 |
    STA.W $307D                   ;$15F5BC |
    LDX.W $307F                   ;$15F5BF |
    LDY.W $3081                   ;$15F5C2 |
    JSL.L CODE_FL_00A66C          ;$15F5C5 |
    INC.W $7796                   ;$15F5C9 |
    JML.L CODE_FL_00842C          ;$15F5CC |
    STZ.W CurrentLoadedMusic      ;$15F5D0 |
    LDA.W #$0015                  ;$15F5D3 |
    JSL.L PlayMusic               ;$15F5D6 |

CODE_95F5DA:
    LDA.W $3099                   ;$15F5DA |
    BNE CODE_95F5DA               ;$15F5DD |
    RTL                           ;$15F5DF |
    SEP #$20                      ;$15F5E0 |
    LDA.B #$43                    ;$15F5E2 |
    STA.W $4360                   ;$15F5E4 |
    STA.W $4370                   ;$15F5E7 |
    LDA.B #$1B                    ;$15F5EA |
    STA.W $4361                   ;$15F5EC |
    LDA.B #$1D                    ;$15F5EF |
    STA.W $4371                   ;$15F5F1 |
    LDY.W #$F646                  ;$15F5F4 |
    STY.W $4362                   ;$15F5F7 |
    LDY.W #$F64D                  ;$15F5FA |
    STY.W $4372                   ;$15F5FD |
    LDA.B #$CA                    ;$15F600 |
    STA.W $4364                   ;$15F602 |
    STA.W $4374                   ;$15F605 |
    LDA.B #$7F                    ;$15F608 |
    STA.W $4367                   ;$15F60A |
    STA.W $4377                   ;$15F60D |
    STZ.W $4350                   ;$15F610 |
    LDA.B #$2C                    ;$15F613 |
    STA.W $4351                   ;$15F615 |
    LDY.W #$7A70                  ;$15F618 |
    STY.W $4352                   ;$15F61B |
    LDA.B #$7F                    ;$15F61E |
    STA.W $4354                   ;$15F620 |
    STA.W $4357                   ;$15F623 |
    STZ.W $4340                   ;$15F626 |
    LDA.B #$05                    ;$15F629 |
    STA.W $4341                   ;$15F62B |
    LDY.W #$7870                  ;$15F62E |
    STY.W $4342                   ;$15F631 |
    LDA.B #$7F                    ;$15F634 |
    STA.W $4344                   ;$15F636 |
    STA.W $4347                   ;$15F639 |
    LDA.B #$F0                    ;$15F63C |
    TSB.W HDMA_Enable             ;$15F63E |
    REP #$20                      ;$15F641 |
    JMP.W CODE_JP_15ECD1          ;$15F643 |
    db $F0,$70,$71,$F0,$30,$73,$00,$F0;$15F646 |
    db $F0,$74,$F0,$B0,$76,$00,$00,$01;$15F64E |
    db $01,$01,$02,$01,$03,$01,$04,$01;$15F656 |
    db $05,$01,$06,$01,$07,$01,$08,$01;$15F65E |
    db $09,$01,$0A,$01,$0B,$01,$0C,$01;$15F666 |
    db $0D,$01,$0E,$01,$0F,$01,$11,$01;$15F66E |
    db $12,$01,$13,$01,$14,$01,$15,$01;$15F676 |
    db $16,$01,$18,$01,$19,$01,$1A,$01;$15F67E |
    db $1B,$01,$1C,$01,$1E,$01,$1F,$01;$15F686 |
    db $20,$01,$21,$01,$23,$01,$24,$01;$15F68E |
    db $25,$01,$27,$01,$28,$01,$29,$01;$15F696 |
    db $2B,$01,$2C,$01,$2E,$01,$2F,$01;$15F69E |
    db $30,$01,$32,$01,$33,$01,$35,$01;$15F6A6 |
    db $36,$01,$38,$01,$39,$01,$3B,$01;$15F6AE |
    db $3C,$01,$3E,$01,$3F,$01,$41,$01;$15F6B6 |
    db $42,$01,$44,$01,$46,$01,$47,$01;$15F6BE |
    db $49,$01,$4A,$01,$4C,$01,$4E,$01;$15F6C6 |
    db $50,$01,$51,$01,$53,$01,$55,$01;$15F6CE |
    db $57,$01,$58,$01,$5A,$01,$5C,$01;$15F6D6 |
    db $5E,$01,$60,$01,$62,$01,$64,$01;$15F6DE |
    db $66,$01,$68,$01,$6A,$01,$6C,$01;$15F6E6 |
    db $6E,$01,$70,$01,$72,$01,$74,$01;$15F6EE |
    db $76,$01,$78,$01,$7A,$01,$7D,$01;$15F6F6 |
    db $7F,$01,$81,$01,$83,$01,$86,$01;$15F6FE |
    db $88,$01,$8A,$01,$8D,$01,$8F,$01;$15F706 |
    db $92,$01,$94,$01,$97,$01,$99,$01;$15F70E |
    db $9C,$01,$9E,$01,$A1,$01,$A4,$01;$15F716 |
    db $A6,$01,$A9,$01,$AC,$01,$AF,$01;$15F71E |
    db $B2,$01,$B4,$01,$B7,$01,$BA,$01;$15F726 |
    db $BD,$01,$C0,$01,$C3,$01,$C7,$01;$15F72E |
    db $CA,$01,$CD,$01,$D0,$01,$D4,$01;$15F736 |
    db $D7,$01,$DA,$01,$DE,$01,$E1,$01;$15F73E |
    db $E5,$01,$E9,$01,$EC,$01,$F0,$01;$15F746 |
    db $F4,$01,$F8,$01,$FC,$01,$00,$02;$15F74E |
    db $04,$02,$08,$02,$0C,$02,$10,$02;$15F756 |
    db $14,$02,$19,$02,$1D,$02,$22,$02;$15F75E |
    db $26,$02,$2B,$02,$30,$02,$34,$02;$15F766 |
    db $39,$02,$3E,$02,$43,$02,$49,$02;$15F76E |
    db $4E,$02,$53,$02,$59,$02,$5E,$02;$15F776 |
    db $64,$02,$6A,$02,$70,$02,$76,$02;$15F77E |
    db $7C,$02,$82,$02,$88,$02,$8F,$02;$15F786 |
    db $95,$02,$9C,$02,$A3,$02,$AA,$02;$15F78E |
    db $B1,$02,$B9,$02,$C0,$02,$C8,$02;$15F796 |
    db $D0,$02,$D8,$02,$E0,$02,$E8,$02;$15F79E |
    db $F1,$02,$FA,$02,$03,$03,$0C,$03;$15F7A6 |
    db $15,$03,$1F,$03,$29,$03,$33,$03;$15F7AE |
    db $3D,$03,$48,$03,$53,$03,$5E,$03;$15F7B6 |
    db $69,$03,$75,$03,$81,$03,$8E,$03;$15F7BE |
    db $9B,$03,$A8,$03,$B5,$03,$C3,$03;$15F7C6 |
    db $D2,$03,$E0,$03,$F0,$03,$00,$04;$15F7CE |
    db $10,$04,$21,$04,$32,$04,$44,$04;$15F7D6 |
    db $56,$04,$69,$04,$7D,$04,$92,$04;$15F7DE |
    db $A7,$04,$BD,$04,$D4,$04,$EC,$04;$15F7E6 |
    db $05,$05,$1E,$05,$39,$05,$55,$05;$15F7EE |
    db $72,$05,$90,$05,$B0,$05,$D1,$05;$15F7F6 |
    db $F4,$05,$18,$06,$3E,$06,$66,$06;$15F7FE |
    db $90,$06,$BC,$06,$EB,$06,$1C,$07;$15F806 |
    db $50,$07,$87,$07,$C1,$07    ;$15F80E |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F814 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F81C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F824 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F82C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F834 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F83C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F844 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F84C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F854 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F85C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F864 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F86C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F874 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F87C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F884 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F88C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F894 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F89C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8A4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8AC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8B4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8BC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8C4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8CC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8D4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8DC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8E4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8EC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8F4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F8FC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F904 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F90C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F914 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F91C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F924 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F92C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F934 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F93C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F944 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F94C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F954 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F95C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F964 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F96C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F974 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F97C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F984 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F98C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F994 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F99C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9A4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9AC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9B4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9BC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9C4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9CC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9D4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9DC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9E4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9EC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9F4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15F9FC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA04 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA0C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA14 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA1C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA24 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA2C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA34 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA3C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA44 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA4C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA54 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA5C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA64 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA6C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA74 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA7C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA84 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA8C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA94 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FA9C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAA4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAAC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAB4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FABC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAC4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FACC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAD4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FADC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAE4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAEC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAF4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FAFC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB04 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB0C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB14 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB1C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB24 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB2C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB34 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB3C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB44 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB4C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB54 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB5C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB64 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB6C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB74 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB7C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB84 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB8C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB94 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FB9C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBA4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBAC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBB4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBBC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBC4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBCC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBD4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBDC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBE4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBEC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBF4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FBFC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC04 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC0C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC14 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC1C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC24 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC2C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC34 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC3C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC44 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC4C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC54 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC5C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC64 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC6C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC74 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC7C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC84 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC8C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC94 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FC9C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCA4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCAC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCB4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCBC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCC4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCCC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCD4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCDC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCE4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCEC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCF4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FCFC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD04 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD0C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD14 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD1C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD24 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD2C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD34 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD3C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD44 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD4C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD54 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD5C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD64 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD6C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD74 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD7C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD84 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD8C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD94 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FD9C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDA4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDAC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDB4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDBC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDC4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDCC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDD4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDDC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDE4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDEC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDF4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FDFC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE04 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE0C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE14 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE1C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE24 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE2C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE34 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE3C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE44 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE4C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE54 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE5C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE64 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE6C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE74 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE7C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE84 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE8C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE94 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FE9C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEA4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEAC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEB4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEBC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEC4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FECC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FED4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEDC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEE4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEEC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEF4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FEFC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF04 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF0C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF14 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF1C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF24 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF2C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF34 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF3C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF44 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF4C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF54 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF5C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF64 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF6C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF74 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF7C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF84 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF8C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF94 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FF9C |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFA4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFAC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFB4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFBC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFC4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFCC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFD4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFDC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFE4 |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFEC |
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF;$15FFF4 |
    db $FF,$FF,$FF,$FF            ;$15FFFC |
