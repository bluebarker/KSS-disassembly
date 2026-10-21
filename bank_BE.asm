; This bank contains mainly pointers to level data and graphics.
; Although this bank is technically mapped at $BE8000, the Super MMC maps it to the lower half of bank FF.
;  As KSS always references it in this way, all address values will be treated as such.

ORG $FF0000

    dw $009A,$0596,$089C,$013F    ;$BE8000 |    Unsure what this is for but it has to do with loading level graphics
    dw $0102,$0043,$0022,$002A    ;$BE8008 |
    dw $0038,$0040,$0044,$0056    ;$BE8010 |
    dw $0068,$006A,$006C,$0076    ;$BE8018 |
    dw $007C,$009A,$00B2,$00D6    ;$BE8020 |
    dw $00FA,$0106,$011E,$0146    ;$BE8028 |
    dw $016A,$0196,$01A2,$01A6    ;$BE8030 |
    dw $01AA,$01AE,$01B2,$01B6    ;$BE8038 |
    dw $01BA,$02FE,$0302,$030E    ;$BE8040 |
    dw $0322,$0342,$035E,$0366    ;$BE8048 |
    dw $0382,$0392,$039A,$03AE    ;$BE8050 |
    dw $03D2,$03EE,$0426,$043A    ;$BE8058 |
    dw $045E,$047A,$049A,$04A6    ;$BE8060 |
    dw $04B2,$050A,$050E,$051E    ;$BE8068 |
    dw $052A,$0532,$053A,$0542    ;$BE8070 |
    dw $0546,$054A,$054E,$0552    ;$BE8078 |
    dw $0556,$055A,$0562,$0566    ;$BE8080 |
    dw $056E,$0572,$057A,$057E    ;$BE8088 |
    dw $0582,$0586,$058A,$058E    ;$BE8090 |
    dw $0592                      ;$BE8098 |

LevelLayoutDataPointers:          ; Giant pointer table to level layout data.
    dl DATA8_F0DACE : db $00      ; Unsure why each one has a $00 following it
    dl DATA8_F020EF : db $00
    dl DATA8_F081C4 : db $00
    dl DATA8_F1E611 : db $00
    dl DATA8_F1E020 : db $00
    dl DATA8_F00DF8 : db $00
    dl DATA8_F09AD3 : db $00
    dl DATA8_F02972 : db $00
    dl DATA8_F1CAB4 : db $00
    dl DATA8_F089F1 : db $00
    dl DATA8_F1F8F4 : db $00
    dl DATA8_F07CB5 : db $00
    dl DATA8_F0947C : db $00
    dl DATA8_F0980C : db $00
    dl DATA8_F1C633 : db $00
    dl DATA8_F09A24 : db $00
    dl DATA8_F1DC1F : db $00
    dl DATA8_F0225F : db $00
    dl DATA8_F06502 : db $00
    dl DATA8_F15B14 : db $00
    dl DATA8_F13D6F : db $00
    dl DATA8_F1D39A : db $00
    dl DATA8_F2A14B : db $00
    dl DATA8_F066ED : db $00
    dl DATA8_F0836C : db $00
    dl DATA8_F193F0 : db $00
    dl DATA8_F05E14 : db $00
    dl DATA8_F19E90 : db $00
    dl DATA8_F01DFB : db $00
    dl DATA8_F103D8 : db $00
    dl DATA8_F25394 : db $00
    dl DATA8_F433A2 : db $00
    dl DATA8_F06F58 : db $00
    dl DATA8_F1A670 : db $00
    dl DATA8_F0449B : db $00
    dl DATA8_F3C872 : db $00
    dl DATA8_F04809 : db $00
    dl DATA8_F1B0A7 : db $00
    dl DATA8_F48BC3 : db $00
    dl DATA8_F3482D : db $00
    dl DATA8_F258C8 : db $00
    dl DATA8_F5FED2 : db $00
    dl DATA8_F07D90 : db $00
    dl DATA8_F2FB51 : db $00
    dl DATA8_F09B82 : db $00
    dl DATA8_F182C9 : db $00
    dl DATA8_F170D4 : db $00
    dl DATA8_F21CED : db $00
    dl DATA8_F330C3 : db $00
    dl DATA8_F0399E : db $00
    dl DATA8_F1FAC8 : db $00
    dl DATA8_F1AE23 : db $00
    dl DATA8_F1549A : db $00
    dl DATA8_F3CE9E : db $00
    dl DATA8_F2632B : db $00
    dl DATA8_F365E2 : db $00
    dl DATA8_F4479A : db $00
    dl DATA8_F12C61 : db $00
    dl DATA8_F1B594 : db $00
    dl DATA8_F03450 : db $00
    dl DATA8_F06AB7 : db $00
    dl DATA8_F09E23 : db $00
    dl DATA8_F3F2F8 : db $00
    dl DATA8_F00000 : db $00
    dl DATA8_F06D81 : db $00
    dl DATA8_F0DF63 : db $00
    dl DATA8_F1BCD3 : db $00
    dl DATA8_F1C876 : db $00
    dl DATA8_F21749 : db $00
    dl DATA8_F4518C : db $00
    dl DATA8_F63F60 : db $00
    dl DATA8_F0B3B7 : db $00
    dl DATA8_F05F14 : db $00
    dl DATA8_F067E0 : db $00
    dl DATA8_F16DCE : db $00
    dl DATA8_F26D64 : db $00
    dl DATA8_F395D6 : db $00
    dl DATA8_F072F3 : db $00
    dl DATA8_F10000 : db $00
    dl DATA8_F116AD : db $00
    dl DATA8_F0D0B4 : db $00
    dl DATA8_F18B79 : db $00
    dl DATA8_F15E50 : db $00
    dl DATA8_F1969E : db $00
    dl DATA8_F176DC : db $00
    dl DATA8_F0055B : db $00
    dl DATA8_F2F39B : db $00
    dl DATA8_F4BA70 : db $00
    dl DATA8_F40000 : db $00
    dl DATA8_F07127 : db $00
    dl DATA8_F48252 : db $00
    dl DATA8_F2C7C0 : db $00
    dl DATA8_F157D8 : db $00
    dl DATA8_F036FB : db $00
    dl DATA8_F1B802 : db $00
    dl DATA8_F03C39 : db $00
    dl DATA8_F00395 : db $00
    dl DATA8_F1EFAE : db $00
    dl DATA8_F035A6 : db $00
    dl DATA8_F008D4 : db $00
    dl DATA8_F12557 : db $00
    dl DATA8_F2AE83 : db $00
    dl DATA8_F02C39 : db $00
    dl DATA8_F16AC0 : db $00
    dl DATA8_F11A5B : db $00
    dl DATA8_F128F1 : db $00
    dl DATA8_F1648E : db $00
    dl DATA8_F1D166 : db $00
    dl DATA8_F1CF2E : db $00
    dl DATA8_F17CDF : db $00
    dl DATA8_F1FE69 : db $00
    dl DATA8_F014C2 : db $00
    dl DATA8_F1E41B : db $00
    dl DATA8_F055FD : db $00
    dl DATA8_F1C3E3 : db $00
    dl DATA8_F046E5 : db $00
    dl DATA8_F03D7D : db $00
    dl DATA8_F032FA : db $00
    dl DATA8_F026A3 : db $00
    dl DATA8_F08B81 : db $00
    dl DATA8_F08ABA : db $00
    dl DATA8_F065F8 : db $00
    dl DATA8_F04927 : db $00
    dl DATA8_F073D9 : db $00
    dl DATA8_F074BF : db $00
    dl DATA8_F0165B : db $00
    dl DATA8_F08F55 : db $00
    dl DATA8_F0D4A2 : db $00
    dl DATA8_F085E1 : db $00
    dl DATA8_F08D0F : db $00
    dl DATA8_F1C190 : db $00
    dl DATA8_F2E3FD : db $00
    dl DATA8_F2EBDD : db $00
    dl DATA8_F017E6 : db $00
    dl DATA8_F388B3 : db $00
    dl DATA8_F031A3 : db $00
    dl DATA8_F053ED : db $00
    dl DATA8_F023CD : db $00
    dl DATA8_F051D5 : db $00
    dl DATA8_F1CCF2 : db $00
    dl DATA8_F1F18F : db $00
    dl DATA8_F01AF6 : db $00
    dl DATA8_F00FAE : db $00
    dl DATA8_F167AA : db $00
    dl DATA8_F36D0D : db $00
    dl DATA8_F1D5CA : db $00
    dl DATA8_F1F36E : db $00
    dl DATA8_F06211 : db $00
    dl DATA8_F1EDCC : db $00
    dl DATA8_F0930A : db $00
    dl DATA8_F08C48 : db $00
    dl DATA8_F06014 : db $00
    dl DATA8_F0720D : db $00
    dl DATA8_F09193 : db $00
    dl DATA8_F23343 : db $00
    dl DATA8_F01162 : db $00
    dl DATA8_F0384F : db $00
    dl DATA8_F16171 : db $00
    dl DATA8_F39C4A : db $00
    dl DATA8_F49E93 : db $00
    dl DATA8_F054F6 : db $00
    dl DATA8_F1912A : db $00
    dl DATA8_F1F547 : db $00
    dl DATA8_F4CC81 : db $00
    dl DATA8_F248FC : db $00
    dl DATA8_F06C95 : db $00
    dl DATA8_F40A7D : db $00
    dl DATA8_F00A8B : db $00
    dl DATA8_F01315 : db $00
    dl DATA8_F0E034 : db $00
    dl DATA8_F29CCB : db $00
    dl DATA8_F1E9F2 : db $00
    dl DATA8_F107AF : db $00
    dl DATA8_F28A67 : db $00
    dl DATA8_F069C5 : db $00
    dl DATA8_F05702 : db $00
    dl DATA8_F0D269 : db $00
    dl DATA8_F28105 : db $00
    dl DATA8_F4D547 : db $00
    dl DATA8_F18E58 : db $00
    dl DATA8_F1E21F : db $00
    dl DATA8_F2B2D0 : db $00
    dl DATA8_F4654A : db $00
    dl DATA8_F06E6D : db $00
    dl DATA8_F08510 : db $00
    dl DATA8_FFFF6E : db $00
    dl DATA8_F27264 : db $00
    dl DATA8_F20BC5 : db $00
    dl DATA8_F086B2 : db $00
    dl DATA8_F07AF1 : db $00
    dl DATA8_F01970 : db $00
    dl DATA8_F35E9F : db $00
    dl DATA8_F06BA7 : db $00
    dl DATA8_F112F5 : db $00
    dl DATA8_F03EBF : db $00
    dl DATA8_F0630E : db $00
    dl DATA8_F3D4C5 : db $00
    dl DATA8_F10F3D : db $00
    dl DATA8_F2DFFC : db $00
    dl DATA8_F2EFBC : db $00
    dl DATA8_F21188 : db $00
    dl DATA8_F0D01D : db $00
    dl DATA8_F08782 : db $00
    dl DATA8_F0A0BA : db $00
    dl DATA8_F09C2C : db $00
    dl DATA8_F0A015 : db $00
    dl DATA8_F3A2B2 : db $00
    dl DATA8_F53CCF : db $00
    dl DATA8_F25DFA : db $00
    dl DATA8_F03FF7 : db $00
    dl DATA8_F090D6 : db $00
    dl DATA8_F0CF85 : db $00
    dl DATA8_F09CD5 : db $00
    dl DATA8_F1DA1C : db $00
    dl DATA8_F318E4 : db $00
    dl DATA8_F04FB7 : db $00
    dl DATA8_F04C77 : db $00
    dl DATA8_F045C0 : db $00
    dl DATA8_F050C7 : db $00
    dl DATA8_F0424F : db $00
    dl DATA8_F04D8E : db $00
    dl DATA8_F04375 : db $00
    dl DATA8_F04B5D : db $00
    dl DATA8_F2FF29 : db $00
    dl DATA8_F05806 : db $00
    dl DATA8_F04EA3 : db $00
    dl DATA8_F052E3 : db $00
    dl DATA8_F01C7A : db $00
    dl DATA8_F5A02C : db $00
    dl DATA8_F238C9 : db $00
    dl DATA8_F07040 : db $00
    dl DATA8_F0CEE8 : db $00
    dl DATA8_F02AD8 : db $00
    dl DATA8_F3ECF4 : db $00
    dl DATA8_F2E7FD : db $00
    dl DATA8_F1EBE0 : db $00
    dl DATA8_F34FC3 : db $00
    dl DATA8_F06113 : db $00
    dl DATA8_F09250 : db $00
    dl DATA8_F1889A : db $00
    dl DATA8_F0D387 : db $00
    dl DATA8_F02539 : db $00
    dl DATA8_F338AC : db $00
    dl DATA8_F30000 : db $00
    dl DATA8_F3DAD7 : db $00
    dl DATA8_F1F71E : db $00
    dl DATA8_F0D9EA : db $00
    dl DATA8_F08852 : db $00
    dl DATA8_F1D7F8 : db $00
    dl DATA8_F2D7F3 : db $00
    dl DATA8_F3408A : db $00
    dl DATA8_F243A4 : db $00
    dl DATA8_F3F8EE : db $00
    dl DATA8_F8FF32 : db $00
    dl DATA8_F08922 : db $00
    dl DATA8_F09974 : db $00
    dl DATA8_F001CD : db $00
    dl DATA8_F03AED : db $00
    dl DATA8_F0DB3B : db $00
    dl DATA8_F23E4C : db $00
    dl DATA8_F13338 : db $00
    dl DATA8_F0DBA6 : db $00
    dl DATA8_F7FE9C : db $00
    dl DATA8_F07F42 : db $00
    dl DATA8_F09ECA : db $00
    dl DATA8_F00C42 : db $00
    dl DATA8_F09F70 : db $00
    dl DATA8_F093C3 : db $00
    dl DATA8_F068D3 : db $00
    dl DATA8_F06409 : db $00
    dl DATA8_F0DC11 : db $00
    dl DATA8_FAFF93 : db $00
    dl DATA8_F0D1DA : db $00
    dl DATA8_F09D7C : db $00
    dl DATA8_F0D8EE : db $00
    dl DATA8_F0D2F8 : db $00
    dl DATA8_F0DA5C : db $00
    dl DATA8_F0D149 : db $00
    dl DATA8_F07E69 : db $00
    dl DATA8_F136A1 : db $00
    dl DATA8_F096A3 : db $00
    dl DATA8_F098C0 : db $00
    dl DATA8_F09758 : db $00
    dl DATA8_F0DC7C : db $00
    dl DATA8_F0DFCC : db $00
    dl DATA8_F0D866 : db $00
    dl DATA8_F0D52F : db $00
    dl DATA8_F0D646 : db $00
    dl DATA8_F0DE8F : db $00
    dl DATA8_F0D756 : db $00
    dl DATA8_F0D7DE : db $00
    dl DATA8_F0DCE7 : db $00
    dl DATA8_F0D415 : db $00
    dl DATA8_F0DE25 : db $00
    dl DATA8_F04A43 : db $00
    dl DATA8_F0DEF9 : db $00
    dl DATA8_F0D6CE : db $00
    dl DATA8_F0DD51 : db $00
    dl DATA8_F09016 : db $00
    dl DATA8_F080EF : db $00
    dl DATA8_F0843E : db $00
    dl DATA8_F0E4DB : db $00
    dl DATA8_F0E53E : db $00
    dl DATA8_F0E5A1 : db $00
    dl DATA8_F0E604 : db $00
    dl DATA8_F0E667 : db $00
    dl DATA8_F0E6CA : db $00
    dl DATA8_F0E72D : db $00
    dl DATA8_F0E09A : db $00
    dl DATA8_F0E0FD : db $00
    dl DATA8_F0E160 : db $00
    dl DATA8_F0E1C3 : db $00
    dl DATA8_F0E226 : db $00
    dl DATA8_F0E289 : db $00
    dl DATA8_F0E2EC : db $00
    dl DATA8_F0E34F : db $00
    dl DATA8_F0E3B2 : db $00
    dl DATA8_F0E415 : db $00
    dl DATA8_F0E478 : db $00
    dl $000000

TilesetGraphicsDataPointers:
    dl DATA8_F43DA7               ;$BE8599 |	Pointers to compressed tileset graphics
    dl DATA8_FC37B6               ;$BE859C |
    dl DATA8_F78654               ;$BE859F |
    dl DATA8_FC0000               ;$BE85A2 |
    dl DATA8_FA0000               ;$BE85A5 |
    dl DATA8_F9E494               ;$BE85A8 |
    dl DATA8_F5DDE9               ;$BE85AB |
    dl DATA8_FCA5A8               ;$BE85AE |
    dl DATA8_FEB42C               ;$BE85B1 |
    dl DATA8_FE3CD7               ;$BE85B4 |
    dl DATA8_F6E1DD               ;$BE85B7 |
    dl DATA8_FD0000               ;$BE85BA |
    dl DATA8_F5BAB0               ;$BE85BD |
    dl DATA8_FFC606               ;$BE85C0 |
    dl DATA8_FC6EF1               ;$BE85C3 |
    dl DATA8_FF88DB               ;$BE85C6 |
    dl DATA8_FE78B3               ;$BE85C9 |
    dl DATA8_F4DE0C               ;$BE85CC |
    dl DATA8_FB0000               ;$BE85CF |
    dl DATA8_FB6555               ;$BE85D2 |
    dl DATA8_F50F43               ;$BE85D5 |
    dl DATA8_FB3381               ;$BE85D8 |
    dl DATA8_FD7538               ;$BE85DB |
    dl DATA8_FD3AEA               ;$BE85DE |
    dl DATA8_FDAF73               ;$BE85E1 |
    dl DATA8_FA7A3A               ;$BE85E4 |
    dl DATA8_F90000               ;$BE85E7 |
    dl DATA8_FB921D               ;$BE85EA |
    dl DATA8_FF4989               ;$BE85ED |
    dl GFX_Tileset_RoMK1          ;$BE85F0 |
    dl DATA8_F80000               ;$BE85F3 |
    dl DATA8_FAA25D               ;$BE85F6 |
    dl DATA8_FAC681               ;$BE85F9 |
    dl DATA8_F69E7B               ;$BE85FC |
    dl DATA8_F5C6A4               ;$BE85FF |
    dl DATA8_F71BC1               ;$BE8602 |
    dl DATA8_F8AECA               ;$BE8605 |
    dl DATA8_FDE764               ;$BE8608 |
    dl DATA8_FAE912               ;$BE860B |
    dl DATA8_F6158E               ;$BE860E |
    dl DATA8_F83C76               ;$BE8611 |
    dl DATA8_F7E826               ;$BE8614 |
    dl DATA8_F7D064               ;$BE8617 |
    dl DATA8_F876EB               ;$BE861A |
    dl DATA8_F8E66D               ;$BE861D |
    dl DATA8_F67ADB               ;$BE8620 |
    dl DATA8_F892F0               ;$BE8623 |
    dl DATA8_FCDC46               ;$BE8626 |
    dl DATA8_F70000               ;$BE8629 |
    dl DATA8_F7517D               ;$BE862C |
    dl DATA8_FA51D7               ;$BE862F |
    dl DATA8_F51E80               ;$BE8632 |
    dl DATA8_F96612               ;$BE8635 |
    dl DATA8_F94463               ;$BE8638 |
    dl DATA8_F92243               ;$BE863B |
    dl DATA8_F9A613               ;$BE863E |
    dl DATA8_F0B783               ;$BE8641 |
    dl DATA8_F0EE74               ;$BE8644 |
    dl DATA8_F0BBF1               ;$BE8647 |
    dl DATA8_F0EED6               ;$BE864A |
    dl DATA8_F0F4A7               ;$BE864D |
    dl DATA8_F0EF9A               ;$BE8650 |
    dl DATA8_F0F56D               ;$BE8653 |
    dl DATA8_F0F184               ;$BE8656 |
    dl DATA8_F0F1E6               ;$BE8659 |
    dl DATA8_F0F2AA               ;$BE865C |
    dl DATA8_F0F30C               ;$BE865F |
    dl DATA8_F0E7F2               ;$BE8662 |
    dl DATA8_F0E854               ;$BE8665 |
    dl DATA8_F0E8B6               ;$BE8668 |
    dl DATA8_F0EB02               ;$BE866B |
    dl DATA8_F0F5F1               ;$BE866E |
    dl DATA8_F0EB64               ;$BE8671 |
    dl DATA8_F0F4E9               ;$BE8674 |
    dl DATA8_F0EBC6               ;$BE8677 |
    dl DATA8_F0EC28               ;$BE867A |
    dl DATA8_F0EC8A               ;$BE867D |
    dl DATA8_F0BC93               ;$BE8680 |
    dl DATA8_F0BDD7               ;$BE8683 |
    dl DATA8_F0BE79               ;$BE8686 |
    dl DATA8_F0F122               ;$BE8689 |
    dl DATA8_F0C611               ;$BE868C |
    dl DATA8_F0C755               ;$BE868F |
    dl DATA8_F0CDA9               ;$BE8692 |
    dl DATA8_F0F465               ;$BE8695 |
    dl DATA8_F0A66D               ;$BE8698 |
    dl DATA8_F0E790               ;$BE869B |
    dl DATA8_F0AFEB               ;$BE869E |
    dl DATA8_F0B08D               ;$BE86A1 |
    dl DATA8_F0B12F               ;$BE86A4 |
    dl DATA8_F0EAA0               ;$BE86A7 |
    dl DATA8_F0B273               ;$BE86AA |
    dl DATA8_F0B4FB               ;$BE86AD |
    dl DATA8_F0B59D               ;$BE86B0 |
    dl DATA8_F0B63F               ;$BE86B3 |
    dl DATA8_F6FFD4               ;$BE86B6 |
    dl DATA8_F0B6E1               ;$BE86B9 |
    dl DATA8_F0ECEC               ;$BE86BC |
    dl DATA8_F0ED4E               ;$BE86BF |
    dl DATA8_F0F5AF               ;$BE86C2 |
    dl DATA8_F08E93               ;$BE86C5 |
    dl DATA8_F0B825               ;$BE86C8 |
    dl DATA8_F0B8C7               ;$BE86CB |
    dl DATA8_F0B969               ;$BE86CE |
    dl DATA8_F0BA0B               ;$BE86D1 |
    dl DATA8_F0BAAD               ;$BE86D4 |
    dl DATA8_F0BB4F               ;$BE86D7 |
    dl DATA8_F075A5               ;$BE86DA |
    dl DATA8_F05C10               ;$BE86DD |
    dl DATA8_F0BD35               ;$BE86E0 |
    dl DATA8_F0F52B               ;$BE86E3 |
    dl DATA8_F07687               ;$BE86E6 |
    dl DATA8_F07769               ;$BE86E9 |
    dl DATA8_F0E97A               ;$BE86EC |
    dl DATA8_F0EA3E               ;$BE86EF |
    dl DATA8_F0BF1B               ;$BE86F2 |
    dl DATA8_F0BFBD               ;$BE86F5 |
    dl DATA8_F4FFC9               ;$BE86F8 |
    dl DATA8_F0F6B1               ;$BE86FB |
    dl DATA8_F0F6D3               ;$BE86FE |
    dl DATA8_F0F6F5               ;$BE8701 |
    dl DATA8_F0F739               ;$BE8704 |
    dl DATA8_F0F75B               ;$BE8707 |
    dl DATA8_F0C05F               ;$BE870A |
    dl DATA8_F0C101               ;$BE870D |
    dl DATA8_F0C1A3               ;$BE8710 |
    dl DATA8_F0C245               ;$BE8713 |
    dl DATA8_F0C2E7               ;$BE8716 |
    dl DATA8_F0C389               ;$BE8719 |
    dl DATA8_F0EE12               ;$BE871C |
    dl DATA8_F0C42B               ;$BE871F |
    dl DATA8_F0C4CD               ;$BE8722 |
    dl DATA8_F0EF38               ;$BE8725 |
    dl DATA8_F0C56F               ;$BE8728 |
    dl DATA8_F0F05E               ;$BE872B |
    dl DATA8_F0F0C0               ;$BE872E |
    dl DATA8_F05D12               ;$BE8731 |
    dl DATA8_F0C6B3               ;$BE8734 |
    dl DATA8_F05A0C               ;$BE8737 |
    dl DATA8_F0C7F7               ;$BE873A |
    dl DATA8_F0C899               ;$BE873D |
    dl DATA8_F0C93B               ;$BE8740 |
    dl DATA8_F0F717               ;$BE8743 |
    dl DATA8_F0C9DD               ;$BE8746 |
    dl DATA8_F0CA7F               ;$BE8749 |
    dl DATA8_F0CB21               ;$BE874C |
    dl DATA8_F0CBC3               ;$BE874F |
    dl DATA8_F0CC65               ;$BE8752 |
    dl DATA8_F0CD07               ;$BE8755 |
    dl DATA8_F05B0E               ;$BE8758 |
    dl DATA8_F0A15D               ;$BE875B |
    dl DATA8_F0A1FF               ;$BE875E |
    dl DATA8_F0A2A1               ;$BE8761 |
    dl DATA8_F0A343               ;$BE8764 |
    dl DATA8_F0A3E5               ;$BE8767 |
    dl DATA8_F0A487               ;$BE876A |
    dl DATA8_F0EDB0               ;$BE876D |
    dl DATA8_F0A529               ;$BE8770 |
    dl DATA8_F0A5CB               ;$BE8773 |
    dl DATA8_F08DD1               ;$BE8776 |
    dl DATA8_F0A70F               ;$BE8779 |
    dl DATA8_F0A7B1               ;$BE877C |
    dl DATA8_F0EFFC               ;$BE877F |
    dl DATA8_F0A853               ;$BE8782 |
    dl DATA8_F0A8F5               ;$BE8785 |
    dl DATA8_F0A997               ;$BE8788 |
    dl DATA8_F0AA39               ;$BE878B |
    dl DATA8_F0AADB               ;$BE878E |
    dl DATA8_F0F248               ;$BE8791 |
    dl DATA8_F0AB7D               ;$BE8794 |
    dl DATA8_F0AC1F               ;$BE8797 |
    dl DATA8_F0ACC1               ;$BE879A |
    dl DATA8_F0AD63               ;$BE879D |
    dl DATA8_F0AE05               ;$BE87A0 |
    dl DATA8_F0AEA7               ;$BE87A3 |
    dl DATA8_F0E918               ;$BE87A6 |
    dl DATA8_F0AF49               ;$BE87A9 |
    dl DATA8_F0E9DC               ;$BE87AC |
    dl DATA8_F0784B               ;$BE87AF |
    dl DATA8_F0792D               ;$BE87B2 |
    dl DATA8_F07A0F               ;$BE87B5 |
    dl DATA8_F0B1D1               ;$BE87B8 |
    dl DATA8_F07BD3               ;$BE87BB |
    dl DATA8_F0B315               ;$BE87BE |
    dl DATA8_F0B459               ;$BE87C1 |
    dl DATA8_FEFFE8               ;$BE87C4 |
    dl DATA8_F19BEB               ;$BE87C7 |
    dl DATA8_F14AC9               ;$BE87CA |
    dl DATA8_F4EF2F               ;$BE87CD |
    dl DATA8_F2CFE4               ;$BE87D0 |
    dl DATA8_F205E7               ;$BE87D3 |
    dl DATA8_F37406               ;$BE87D6 |
    dl DATA8_F0DDBB               ;$BE87D9 |
    dl DATA8_F14780               ;$BE87DC |
    dl DATA8_F414E1               ;$BE87DF |
    dl DATA8_F0071B               ;$BE87E2 |
    dl DATA8_F320DB               ;$BE87E5 |
    dl DATA8_FEEF2A               ;$BE87E8 |
    dl DATA8_F46F03               ;$BE87EB |
    dl DATA8_F2A5C7               ;$BE87EE |
    dl DATA8_F2D3EC               ;$BE87F1 |
    dl DATA8_F5E90F               ;$BE87F4 |
    dl DATA8_F13A0A               ;$BE87F7 |
    dl DATA8_F2684B               ;$BE87FA |
    dl DATA8_F310D6               ;$BE87FD |
    dl DATA8_F3BBFC               ;$BE8800 |
    dl DATA8_F3B5AD               ;$BE8803 |
    dl DATA8_F285C9               ;$BE8806 |
    dl DATA8_F29835               ;$BE8809 |
    dl DATA8_F22824               ;$BE880C |
    dl DATA8_F1515B               ;$BE880F |
    dl DATA8_F179DF               ;$BE8812 |
    dl DATA8_F2F776               ;$BE8815 |
    dl DATA8_F2CBD7               ;$BE8818 |
    dl DATA8_F2BB41               ;$BE881B |
    dl DATA8_F20000               ;$BE881E |
    dl DATA8_F38F62               ;$BE8821 |
    dl DATA8_F2228A               ;$BE8824 |
    dl DATA8_F173D8               ;$BE8827 |
    dl DATA8_F12FCF               ;$BE882A |
    dl DATA8_F2AA25               ;$BE882D |
    dl DATA8_F55A4E               ;$BE8830 |
    dl DATA8_F3C244               ;$BE8833 |
    dl DATA8_F45B73               ;$BE8836 |
    dl DATA8_F1BA6E               ;$BE8839 |
    dl DATA8_F11E06               ;$BE883C |
    dl DATA8_F24E4B               ;$BE883F |
    dl DATA8_F02EF1               ;$BE8842 |
    dl DATA8_F37AF6               ;$BE8845 |
    dl DATA8_FBE75C               ;$BE8848 |
    dl DATA8_F736CE               ;$BE884B |
    dl DATA8_F01F75               ;$BE884E |
    dl DATA8_F4F7B0               ;$BE8851 |
    dl DATA8_F76BEC               ;$BE8854 |
    dl DATA8_F62A7D               ;$BE8857 |
    dl DATA8_F2939E               ;$BE885A |
    dl DATA8_F7B890               ;$BE885D |
    dl DATA8_F6685A               ;$BE8860 |
    dl DATA8_F140D4               ;$BE8863 |
    dl DATA8_F60000               ;$BE8866 |
    dl DATA8_F6B000               ;$BE8869 |
    dl DATA8_FBBDF4               ;$BE886C |
    dl DATA8_F6F185               ;$BE886F |
    dl DATA8_F185B4               ;$BE8872 |
    dl DATA8_F859D6               ;$BE8875 |
    dl DATA8_F1A3D8               ;$BE8878 |
    dl DATA8_F35759               ;$BE887B |
    dl DATA8_F6C127               ;$BE887E |
    dl DATA8_F68CD1               ;$BE8881 |
    dl DATA8_F5852B               ;$BE8884 |
    dl DATA8_F9C5CD               ;$BE8887 |
    dl DATA8_FA28F5               ;$BE888A |
    dl DATA8_F98631               ;$BE888D |
    dl DATA8_F8CAA3               ;$BE8890 |
    dl DATA8_F81E92               ;$BE8893 |
    dl DATA8_F6D1C7               ;$BE8896 |
    dl DATA8_F41F3D               ;$BE8899 |
    dl $000000                    ;$BE889C |
    dl DATA8_F27762               ;$BE889F |
    dl DATA8_F0801A               ;$BE88A2 |
    dl DATA8_F04128               ;$BE88A5 |
    dl DATA8_FE0000               ;$BE88A8 |
    dl DATA8_F095EC               ;$BE88AB |
    dl DATA8_F0D973               ;$BE88AE |
    dl DATA8_F0F672               ;$BE88B1 |
    dl DATA8_F4C387               ;$BE88B4 |
    dl DATA8_F17FDD               ;$BE88B7 |
    dl DATA8_F52DAA               ;$BE88BA |
    dl DATA8_F5F3F4               ;$BE88BD |
    dl DATA8_F3A90F               ;$BE88C0 |
    dl DATA8_F568EE               ;$BE88C3 |
    dl DATA8_F19946               ;$BE88C6 |
    dl DATA8_F4B155               ;$BE88C9 |
    dl DATA8_F1E803               ;$BE88CC |
    dl DATA8_F0280C               ;$BE88CF |
    dl DATA8_F1A907               ;$BE88D2 |
    dl DATA8_F09535               ;$BE88D5 |
    dl DATA8_F2DBF9               ;$BE88D8 |
    dl DATA8_F3E0E5               ;$BE88DB |
    dl DATA8_F1BF32               ;$BE88DE |
    dl DATA8_F14E12               ;$BE88E1 |
    dl DATA8_F478B9               ;$BE88E4 |
    dl DATA8_F1FC9A               ;$BE88E7 |
    dl DATA8_F0F41A               ;$BE88EA |
    dl DATA8_F50000               ;$BE88ED |
    dl DATA8_F02D96               ;$BE88F0 |
    dl DATA8_F0CE4B               ;$BE88F3 |
    dl DATA8_F5770D               ;$BE88F6 |
    dl DATA8_F1A134               ;$BE88F9 |
    dl DATA8_F2B70B               ;$BE88FC |
    dl DATA8_F653EF               ;$BE88FF |
    dl DATA8_F3E6F0               ;$BE8902 |
    dl DATA8_F1DE21               ;$BE8905 |
    dl DATA8_F592BD               ;$BE8908 |
    dl DATA8_F5AD79               ;$BE890B |
    dl DATA8_F14431               ;$BE890E |
    dl DATA8_F121AF               ;$BE8911 |
    dl DATA8_F4A7F9               ;$BE8914 |
    dl DATA8_F0F633               ;$BE8917 |
    dl DATA8_F28F03               ;$BE891A |
    dl DATA8_F10B76               ;$BE891D |
    dl DATA8_F7A0A1               ;$BE8920 |
    dl DATA8_F08299               ;$BE8923 |
    dl DATA8_F3FEDF               ;$BE8926 |
    dl DATA8_F0304C               ;$BE8929 |
    dl DATA8_F54B93               ;$BE892C |
    dl DATA8_F4952C               ;$BE892F |
    dl DATA8_F1AB9C               ;$BE8932 |
    dl DATA8_F1B326               ;$BE8935 |
    dl DATA8_F0D5BB               ;$BE8938 |
    dl DATA8_F0F3CD               ;$BE893B |
    dl DATA8_F2BF72               ;$BE893E |
    dl DATA8_F5D28A               ;$BE8941 |
    dl DATA8_F2C399               ;$BE8944 |
    dl DATA8_F328D0               ;$BE8947 |
    dl DATA8_F22DBC               ;$BE894A |
    dl DATA8_F0F36E               ;$BE894D |
    dl DATA8_F05909               ;$BE8950 |
    dl DATA8_F3AF5E               ;$BE8953 |
    dl DATA8_F27C36               ;$BE8956 |
    dl DATA8_F381DC               ;$BE8959 |
    dl DATA8_F4E6A4               ;$BE895C |
    dl DATA8_F3087B               ;$BE895F |
    dl DATA8_F42993               ;$BE8962 |

; More compressed Graphics start at FF0965
; Seems to be a RoMK tileset, unsure which one it is
; I'm not totally sure how I will conventionally name all of these so they will be stupid for now
GFX_Tileset_RoMK1:
    incbin "Graphics/Tilesets/FF0965.bin"