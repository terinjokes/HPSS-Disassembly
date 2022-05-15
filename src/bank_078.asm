; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $078", ROMX[$4000], BANK[$78]

    db $78

    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_078_4043                             ; $4008: $38 $39

    jr nc, jr_078_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35

    db $1c, $00, $14, $00

    ld b, b                                       ; $4014: $40
    dec a                                         ; $4015: $3d
    pop de                                        ; $4016: $d1
    jp nc, $d2d3                                  ; $4017: $d2 $d3 $d2

    db $d3                                        ; $401a: $d3
    call nc, $d4d1                                ; $401b: $d4 $d1 $d4
    pop de                                        ; $401e: $d1
    jp nc, $d2d1                                  ; $401f: $d2 $d1 $d2

    db $d3                                        ; $4022: $d3
    call nc, $d4d1                                ; $4023: $d4 $d1 $d4
    inc b                                         ; $4026: $04
    inc b                                         ; $4027: $04
    inc b                                         ; $4028: $04
    inc b                                         ; $4029: $04
    inc b                                         ; $402a: $04
    inc b                                         ; $402b: $04
    inc b                                         ; $402c: $04
    inc b                                         ; $402d: $04
    inc b                                         ; $402e: $04
    inc b                                         ; $402f: $04
    inc b                                         ; $4030: $04
    inc b                                         ; $4031: $04
    inc b                                         ; $4032: $04
    inc b                                         ; $4033: $04
    inc b                                         ; $4034: $04
    inc b                                         ; $4035: $04
    db $d3                                        ; $4036: $d3
    push de                                       ; $4037: $d5
    sub $d6                                       ; $4038: $d6 $d6
    pop de                                        ; $403a: $d1
    rst $10                                       ; $403b: $d7
    ret c                                         ; $403c: $d8

jr_078_403d:
    reti                                          ; $403d: $d9


    pop de                                        ; $403e: $d1
    rst $10                                       ; $403f: $d7
    jp c, $d1db                                   ; $4040: $da $db $d1

jr_078_4043:
    rst $10                                       ; $4043: $d7
    call c, $04dd                                 ; $4044: $dc $dd $04
    inc b                                         ; $4047: $04
    inc b                                         ; $4048: $04
    inc b                                         ; $4049: $04
    inc b                                         ; $404a: $04
    inc b                                         ; $404b: $04
    inc bc                                        ; $404c: $03
    inc bc                                        ; $404d: $03
    inc b                                         ; $404e: $04
    inc b                                         ; $404f: $04
    inc bc                                        ; $4050: $03
    inc bc                                        ; $4051: $03
    inc b                                         ; $4052: $04
    inc b                                         ; $4053: $04
    inc bc                                        ; $4054: $03
    inc bc                                        ; $4055: $03
    sub $d6                                       ; $4056: $d6 $d6
    sub $d6                                       ; $4058: $d6 $d6
    sbc $d9                                       ; $405a: $de $d9
    sbc $d9                                       ; $405c: $de $d9
    db $dd                                        ; $405e: $dd
    db $db                                        ; $405f: $db
    db $dd                                        ; $4060: $dd
    db $db                                        ; $4061: $db
    rst $18                                       ; $4062: $df
    db $dd                                        ; $4063: $dd
    db $db                                        ; $4064: $db
    db $dd                                        ; $4065: $dd
    inc b                                         ; $4066: $04
    inc b                                         ; $4067: $04
    inc b                                         ; $4068: $04
    inc b                                         ; $4069: $04
    inc bc                                        ; $406a: $03
    inc bc                                        ; $406b: $03
    inc bc                                        ; $406c: $03
    inc bc                                        ; $406d: $03
    inc bc                                        ; $406e: $03
    inc bc                                        ; $406f: $03
    inc bc                                        ; $4070: $03
    inc bc                                        ; $4071: $03
    inc bc                                        ; $4072: $03
    inc bc                                        ; $4073: $03
    inc bc                                        ; $4074: $03
    inc bc                                        ; $4075: $03
    sub $e0                                       ; $4076: $d6 $e0
    pop hl                                        ; $4078: $e1
    ld [c], a                                     ; $4079: $e2
    ret c                                         ; $407a: $d8

    db $e3                                        ; $407b: $e3
    ld [c], a                                     ; $407c: $e2
    pop hl                                        ; $407d: $e1
    jp c, $e1e0                                   ; $407e: $da $e0 $e1

    ld [c], a                                     ; $4081: $e2
    call c, $e2e3                                 ; $4082: $dc $e3 $e2
    pop hl                                        ; $4085: $e1
    inc b                                         ; $4086: $04
    ld [bc], a                                    ; $4087: $02
    ld [bc], a                                    ; $4088: $02
    ld [bc], a                                    ; $4089: $02
    inc hl                                        ; $408a: $23
    ld [bc], a                                    ; $408b: $02
    ld [bc], a                                    ; $408c: $02
    ld [bc], a                                    ; $408d: $02
    inc hl                                        ; $408e: $23
    ld [bc], a                                    ; $408f: $02
    ld [bc], a                                    ; $4090: $02
    ld [bc], a                                    ; $4091: $02
    inc hl                                        ; $4092: $23
    ld [bc], a                                    ; $4093: $02
    ld [bc], a                                    ; $4094: $02
    ld [bc], a                                    ; $4095: $02
    jp nc, $d4d3                                  ; $4096: $d2 $d3 $d4

    db $d3                                        ; $4099: $d3
    pop de                                        ; $409a: $d1
    jp nc, $d2d3                                  ; $409b: $d2 $d3 $d2

    db $d3                                        ; $409e: $d3
    call nc, $d4d1                                ; $409f: $d4 $d1 $d4
    pop de                                        ; $40a2: $d1
    jp nc, $d2d1                                  ; $40a3: $d2 $d1 $d2

    inc b                                         ; $40a6: $04

Call_078_40a7:
    inc b                                         ; $40a7: $04
    inc b                                         ; $40a8: $04
    inc b                                         ; $40a9: $04
    inc b                                         ; $40aa: $04
    inc b                                         ; $40ab: $04
    inc b                                         ; $40ac: $04
    inc b                                         ; $40ad: $04
    inc b                                         ; $40ae: $04
    inc b                                         ; $40af: $04
    inc b                                         ; $40b0: $04
    inc b                                         ; $40b1: $04
    inc b                                         ; $40b2: $04
    inc b                                         ; $40b3: $04
    inc b                                         ; $40b4: $04
    inc b                                         ; $40b5: $04
    call nc, $dad7                                ; $40b6: $d4 $d7 $da
    rst $18                                       ; $40b9: $df
    db $d3                                        ; $40ba: $d3
    rst $10                                       ; $40bb: $d7
    call c, $d1df                                 ; $40bc: $dc $df $d1
    push de                                       ; $40bf: $d5
    db $e4                                        ; $40c0: $e4
    push hl                                       ; $40c1: $e5
    pop de                                        ; $40c2: $d1
    rst $10                                       ; $40c3: $d7
    and $e7                                       ; $40c4: $e6 $e7
    inc b                                         ; $40c6: $04
    inc b                                         ; $40c7: $04
    inc bc                                        ; $40c8: $03
    inc bc                                        ; $40c9: $03
    inc b                                         ; $40ca: $04
    inc b                                         ; $40cb: $04
    inc bc                                        ; $40cc: $03
    inc bc                                        ; $40cd: $03
    inc b                                         ; $40ce: $04
    inc b                                         ; $40cf: $04
    ld bc, $0401                                  ; $40d0: $01 $01 $04
    inc b                                         ; $40d3: $04
    ld bc, $db01                                  ; $40d4: $01 $01 $db
    rst $18                                       ; $40d7: $df
    add sp, -$21                                  ; $40d8: $e8 $df
    db $db                                        ; $40da: $db
    rst $18                                       ; $40db: $df
    add sp, -$21                                  ; $40dc: $e8 $df
    push hl                                       ; $40de: $e5
    push hl                                       ; $40df: $e5
    push hl                                       ; $40e0: $e5
    push hl                                       ; $40e1: $e5
    rst $20                                       ; $40e2: $e7
    rst $20                                       ; $40e3: $e7
    rst $20                                       ; $40e4: $e7
    rst $20                                       ; $40e5: $e7
    inc bc                                        ; $40e6: $03
    inc bc                                        ; $40e7: $03
    inc bc                                        ; $40e8: $03
    inc bc                                        ; $40e9: $03
    inc bc                                        ; $40ea: $03
    inc bc                                        ; $40eb: $03
    inc bc                                        ; $40ec: $03
    inc bc                                        ; $40ed: $03
    ld bc, $0101                                  ; $40ee: $01 $01 $01
    ld bc, $0101                                  ; $40f1: $01 $01 $01
    ld bc, $da01                                  ; $40f4: $01 $01 $da
    jp hl                                         ; $40f7: $e9


    ld [$dceb], a                                 ; $40f8: $ea $eb $dc
    db $ec                                        ; $40fb: $ec
    db $ed                                        ; $40fc: $ed
    xor $e5                                       ; $40fd: $ee $e5
    push hl                                       ; $40ff: $e5
    push hl                                       ; $4100: $e5
    push hl                                       ; $4101: $e5
    rst $20                                       ; $4102: $e7
    rst $20                                       ; $4103: $e7
    rst $20                                       ; $4104: $e7
    rst $20                                       ; $4105: $e7
    inc hl                                        ; $4106: $23
    inc bc                                        ; $4107: $03
    inc bc                                        ; $4108: $03
    inc bc                                        ; $4109: $03
    inc hl                                        ; $410a: $23
    inc bc                                        ; $410b: $03
    inc bc                                        ; $410c: $03
    inc bc                                        ; $410d: $03
    ld bc, $0101                                  ; $410e: $01 $01 $01
    ld bc, $0101                                  ; $4111: $01 $01 $01
    ld bc, $ef01                                  ; $4114: $01 $01 $ef
    rst $28                                       ; $4117: $ef
    db $d3                                        ; $4118: $d3
    call nc, $f1f0                                ; $4119: $d4 $f0 $f1
    jp nc, $d6d3                                  ; $411c: $d2 $d3 $d6

    sub $d1                                       ; $411f: $d6 $d1
    jp nc, $f3f2                                  ; $4121: $d2 $f2 $f3

    db $d3                                        ; $4124: $d3
    call nc, Call_000_0303                        ; $4125: $d4 $03 $03
    inc b                                         ; $4128: $04
    inc b                                         ; $4129: $04
    inc bc                                        ; $412a: $03
    inc bc                                        ; $412b: $03
    inc b                                         ; $412c: $04
    inc b                                         ; $412d: $04
    inc bc                                        ; $412e: $03
    inc bc                                        ; $412f: $03
    inc b                                         ; $4130: $04
    inc b                                         ; $4131: $04
    inc bc                                        ; $4132: $03
    inc bc                                        ; $4133: $03
    inc b                                         ; $4134: $04
    inc b                                         ; $4135: $04
    pop de                                        ; $4136: $d1
    rst $10                                       ; $4137: $d7
    and $e7                                       ; $4138: $e6 $e7
    call nc, $e6d7                                ; $413a: $d4 $d7 $e6
    rst $20                                       ; $413d: $e7
    db $d3                                        ; $413e: $d3
    rst $10                                       ; $413f: $d7
    and $e7                                       ; $4140: $e6 $e7
    pop de                                        ; $4142: $d1
    rst $10                                       ; $4143: $d7
    db $f4                                        ; $4144: $f4
    push hl                                       ; $4145: $e5
    inc b                                         ; $4146: $04
    inc b                                         ; $4147: $04
    ld bc, $0401                                  ; $4148: $01 $01 $04
    inc b                                         ; $414b: $04
    ld bc, $0401                                  ; $414c: $01 $01 $04
    inc b                                         ; $414f: $04
    ld bc, $0401                                  ; $4150: $01 $01 $04
    inc b                                         ; $4153: $04
    ld bc, $e701                                  ; $4154: $01 $01 $e7
    rst $20                                       ; $4157: $e7
    rst $20                                       ; $4158: $e7
    rst $20                                       ; $4159: $e7
    rst $20                                       ; $415a: $e7
    rst $20                                       ; $415b: $e7
    rst $20                                       ; $415c: $e7
    rst $20                                       ; $415d: $e7
    rst $20                                       ; $415e: $e7
    rst $20                                       ; $415f: $e7
    rst $20                                       ; $4160: $e7
    push af                                       ; $4161: $f5
    push hl                                       ; $4162: $e5
    push hl                                       ; $4163: $e5
    push hl                                       ; $4164: $e5
    or $01                                        ; $4165: $f6 $01
    ld bc, $0101                                  ; $4167: $01 $01 $01
    ld bc, $0101                                  ; $416a: $01 $01 $01
    ld bc, $0101                                  ; $416d: $01 $01 $01
    ld bc, $0101                                  ; $4170: $01 $01 $01
    ld bc, $0101                                  ; $4173: $01 $01 $01
    rst $20                                       ; $4176: $e7
    push af                                       ; $4177: $f5
    push hl                                       ; $4178: $e5
    push af                                       ; $4179: $f5
    push af                                       ; $417a: $f5
    or $f7                                        ; $417b: $f6 $f7
    or $f6                                        ; $417d: $f6 $f6
    ld hl, sp-$07                                 ; $417f: $f8 $f9
    ld hl, sp-$08                                 ; $4181: $f8 $f8
    ld a, [$fcfb]                                 ; $4183: $fa $fb $fc
    ld bc, $0101                                  ; $4186: $01 $01 $01
    ld hl, $0101                                  ; $4189: $21 $01 $01
    ld [bc], a                                    ; $418c: $02
    ld hl, $0201                                  ; $418d: $21 $01 $02
    ld [bc], a                                    ; $4190: $02
    ld [hl+], a                                   ; $4191: $22
    ld [bc], a                                    ; $4192: $02
    ld bc, $0101                                  ; $4193: $01 $01 $01
    sub $d6                                       ; $4196: $d6 $d6
    pop de                                        ; $4198: $d1
    jp nc, $f3f2                                  ; $4199: $d2 $f2 $f3

    db $d3                                        ; $419c: $d3
    call nc, $d6d6                                ; $419d: $d4 $d6 $d6
    jp nc, $ded3                                  ; $41a0: $d2 $d3 $de

    ret c                                         ; $41a3: $d8

    db $fd                                        ; $41a4: $fd
    cp $03                                        ; $41a5: $fe $03
    inc bc                                        ; $41a7: $03
    inc b                                         ; $41a8: $04
    inc b                                         ; $41a9: $04
    inc bc                                        ; $41aa: $03
    inc bc                                        ; $41ab: $03
    inc b                                         ; $41ac: $04
    inc b                                         ; $41ad: $04
    inc bc                                        ; $41ae: $03
    inc bc                                        ; $41af: $03
    inc b                                         ; $41b0: $04
    inc b                                         ; $41b1: $04
    inc bc                                        ; $41b2: $03
    inc hl                                        ; $41b3: $23
    ld bc, $d101                                  ; $41b4: $01 $01 $d1
    push de                                       ; $41b7: $d5
    rst $38                                       ; $41b8: $ff
    nop                                           ; $41b9: $00
    pop de                                        ; $41ba: $d1
    rst $10                                       ; $41bb: $d7
    ld bc, $d402                                  ; $41bc: $01 $02 $d4
    rst $10                                       ; $41bf: $d7
    inc bc                                        ; $41c0: $03
    ld [bc], a                                    ; $41c1: $02
    inc b                                         ; $41c2: $04
    db $fd                                        ; $41c3: $fd
    ld bc, $0402                                  ; $41c4: $01 $02 $04
    inc b                                         ; $41c7: $04
    ld [bc], a                                    ; $41c8: $02
    ld [bc], a                                    ; $41c9: $02
    inc b                                         ; $41ca: $04
    inc b                                         ; $41cb: $04
    ld [bc], a                                    ; $41cc: $02
    ld [bc], a                                    ; $41cd: $02
    inc b                                         ; $41ce: $04
    inc b                                         ; $41cf: $04
    ld [bc], a                                    ; $41d0: $02
    ld [bc], a                                    ; $41d1: $02
    ld bc, $0201                                  ; $41d2: $01 $01 $02
    ld [bc], a                                    ; $41d5: $02
    dec b                                         ; $41d6: $05
    dec b                                         ; $41d7: $05
    dec b                                         ; $41d8: $05
    ld b, $07                                     ; $41d9: $06 $07
    ld [$0209], sp                                ; $41db: $08 $09 $02
    ld a, [bc]                                    ; $41de: $0a
    dec bc                                        ; $41df: $0b
    inc c                                         ; $41e0: $0c
    ld [bc], a                                    ; $41e1: $02
    dec c                                         ; $41e2: $0d
    ld c, $0f                                     ; $41e3: $0e $0f
    ld [bc], a                                    ; $41e5: $02
    ld [bc], a                                    ; $41e6: $02
    ld [bc], a                                    ; $41e7: $02
    ld [bc], a                                    ; $41e8: $02
    ld [bc], a                                    ; $41e9: $02
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    ld [hl+], a                                   ; $41ed: $22
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    ld [hl+], a                                   ; $41f1: $22
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    ld [hl+], a                                   ; $41f5: $22
    ld sp, hl                                     ; $41f6: $f9
    db $10                                        ; $41f7: $10
    ld de, $1312                                  ; $41f8: $11 $12 $13
    inc d                                         ; $41fb: $14
    dec d                                         ; $41fc: $15
    ld d, $02                                     ; $41fd: $16 $02
    rla                                           ; $41ff: $17
    jr jr_078_421a                                ; $4200: $18 $18

    ld [bc], a                                    ; $4202: $02
    add hl, de                                    ; $4203: $19
    ld a, [de]                                    ; $4204: $1a
    ld a, [de]                                    ; $4205: $1a
    ld [bc], a                                    ; $4206: $02
    ld bc, $0101                                  ; $4207: $01 $01 $01
    ld [bc], a                                    ; $420a: $02
    ld bc, $0101                                  ; $420b: $01 $01 $01
    ld [bc], a                                    ; $420e: $02
    ld bc, $0101                                  ; $420f: $01 $01 $01
    ld [bc], a                                    ; $4212: $02
    ld bc, $0101                                  ; $4213: $01 $01 $01
    pop hl                                        ; $4216: $e1
    ld [c], a                                     ; $4217: $e2
    pop hl                                        ; $4218: $e1
    ld [c], a                                     ; $4219: $e2

jr_078_421a:
    ld [c], a                                     ; $421a: $e2
    pop hl                                        ; $421b: $e1
    ld [c], a                                     ; $421c: $e2
    pop hl                                        ; $421d: $e1
    pop hl                                        ; $421e: $e1
    ld [c], a                                     ; $421f: $e2
    pop hl                                        ; $4220: $e1
    ld [c], a                                     ; $4221: $e2
    ld [c], a                                     ; $4222: $e2
    pop hl                                        ; $4223: $e1
    ld [c], a                                     ; $4224: $e2
    pop hl                                        ; $4225: $e1
    add d                                         ; $4226: $82
    add d                                         ; $4227: $82
    add d                                         ; $4228: $82
    add d                                         ; $4229: $82
    add d                                         ; $422a: $82
    add d                                         ; $422b: $82
    add d                                         ; $422c: $82
    add d                                         ; $422d: $82
    add d                                         ; $422e: $82
    add d                                         ; $422f: $82
    add d                                         ; $4230: $82
    add d                                         ; $4231: $82
    add d                                         ; $4232: $82
    add d                                         ; $4233: $82
    add d                                         ; $4234: $82
    add d                                         ; $4235: $82
    pop hl                                        ; $4236: $e1
    ld [c], a                                     ; $4237: $e2
    pop hl                                        ; $4238: $e1
    dec de                                        ; $4239: $1b
    ld [c], a                                     ; $423a: $e2
    pop hl                                        ; $423b: $e1
    ld [c], a                                     ; $423c: $e2
    inc e                                         ; $423d: $1c
    pop hl                                        ; $423e: $e1
    ld [c], a                                     ; $423f: $e2
    pop hl                                        ; $4240: $e1
    dec de                                        ; $4241: $1b
    ld [c], a                                     ; $4242: $e2
    pop hl                                        ; $4243: $e1
    ld [c], a                                     ; $4244: $e2
    inc e                                         ; $4245: $1c
    add d                                         ; $4246: $82
    add d                                         ; $4247: $82
    ld [bc], a                                    ; $4248: $02
    ld [bc], a                                    ; $4249: $02
    add d                                         ; $424a: $82
    add d                                         ; $424b: $82
    ld [bc], a                                    ; $424c: $02
    ld [bc], a                                    ; $424d: $02
    add d                                         ; $424e: $82
    add d                                         ; $424f: $82
    ld [bc], a                                    ; $4250: $02
    ld [bc], a                                    ; $4251: $02
    add d                                         ; $4252: $82
    add d                                         ; $4253: $82
    ld [bc], a                                    ; $4254: $02
    ld [bc], a                                    ; $4255: $02
    rst $20                                       ; $4256: $e7
    rst $20                                       ; $4257: $e7
    rst $20                                       ; $4258: $e7
    db $e4                                        ; $4259: $e4
    rst $20                                       ; $425a: $e7
    rst $20                                       ; $425b: $e7
    rst $20                                       ; $425c: $e7
    and $e7                                       ; $425d: $e6 $e7
    rst $20                                       ; $425f: $e7
    rst $20                                       ; $4260: $e7
    and $e7                                       ; $4261: $e6 $e7
    rst $20                                       ; $4263: $e7
    rst $20                                       ; $4264: $e7
    and $01                                       ; $4265: $e6 $01
    ld bc, $0501                                  ; $4267: $01 $01 $05
    ld bc, $0101                                  ; $426a: $01 $01 $01
    dec b                                         ; $426d: $05
    ld bc, $0101                                  ; $426e: $01 $01 $01
    dec b                                         ; $4271: $05
    ld bc, $0101                                  ; $4272: $01 $01 $01
    dec b                                         ; $4275: $05
    dec e                                         ; $4276: $1d
    ld [$1deb], a                                 ; $4277: $ea $eb $1d
    ld e, $ed                                     ; $427a: $1e $ed
    xor $1e                                       ; $427c: $ee $1e
    push hl                                       ; $427e: $e5
    push hl                                       ; $427f: $e5
    db $e4                                        ; $4280: $e4
    rra                                           ; $4281: $1f
    rst $20                                       ; $4282: $e7
    rst $20                                       ; $4283: $e7
    and $20                                       ; $4284: $e6 $20
    inc bc                                        ; $4286: $03
    inc bc                                        ; $4287: $03
    inc bc                                        ; $4288: $03
    inc bc                                        ; $4289: $03
    inc bc                                        ; $428a: $03
    inc bc                                        ; $428b: $03
    inc bc                                        ; $428c: $03
    inc bc                                        ; $428d: $03
    ld bc, $2101                                  ; $428e: $01 $01 $21
    inc bc                                        ; $4291: $03
    ld bc, $2101                                  ; $4292: $01 $01 $21
    inc bc                                        ; $4295: $03
    db $eb                                        ; $4296: $eb
    dec e                                         ; $4297: $1d
    db $eb                                        ; $4298: $eb
    dec e                                         ; $4299: $1d
    db $ed                                        ; $429a: $ed
    xor $1e                                       ; $429b: $ee $1e
    db $ed                                        ; $429d: $ed
    ld hl, $2322                                  ; $429e: $21 $22 $23
    inc h                                         ; $42a1: $24
    dec h                                         ; $42a2: $25
    rlca                                          ; $42a3: $07
    ld [$0309], sp                                ; $42a4: $08 $09 $03
    inc bc                                        ; $42a7: $03
    inc bc                                        ; $42a8: $03
    inc bc                                        ; $42a9: $03
    inc bc                                        ; $42aa: $03
    inc bc                                        ; $42ab: $03
    inc bc                                        ; $42ac: $03
    inc bc                                        ; $42ad: $03
    inc bc                                        ; $42ae: $03
    inc bc                                        ; $42af: $03
    inc bc                                        ; $42b0: $03
    inc bc                                        ; $42b1: $03
    inc bc                                        ; $42b2: $03
    nop                                           ; $42b3: $00
    nop                                           ; $42b4: $00
    nop                                           ; $42b5: $00
    db $eb                                        ; $42b6: $eb
    dec e                                         ; $42b7: $1d
    ld [$ee26], a                                 ; $42b8: $ea $26 $ee
    ld e, $ef                                     ; $42bb: $1e $ef
    rst $28                                       ; $42bd: $ef
    daa                                           ; $42be: $27
    rra                                           ; $42bf: $1f
    ldh a, [$f0]                                  ; $42c0: $f0 $f0
    jr z, jr_078_42e4                             ; $42c2: $28 $20

    sub $d6                                       ; $42c4: $d6 $d6
    inc bc                                        ; $42c6: $03
    inc bc                                        ; $42c7: $03
    inc bc                                        ; $42c8: $03
    inc bc                                        ; $42c9: $03
    inc bc                                        ; $42ca: $03
    inc bc                                        ; $42cb: $03
    rlca                                          ; $42cc: $07
    rlca                                          ; $42cd: $07
    inc bc                                        ; $42ce: $03
    inc bc                                        ; $42cf: $03
    rlca                                          ; $42d0: $07
    rlca                                          ; $42d1: $07
    inc bc                                        ; $42d2: $03
    inc bc                                        ; $42d3: $03
    rlca                                          ; $42d4: $07
    rlca                                          ; $42d5: $07
    rst $20                                       ; $42d6: $e7
    rst $20                                       ; $42d7: $e7
    rst $20                                       ; $42d8: $e7
    and $ef                                       ; $42d9: $e6 $ef
    rst $28                                       ; $42db: $ef
    rst $28                                       ; $42dc: $ef
    rst $28                                       ; $42dd: $ef
    ldh a, [$f0]                                  ; $42de: $f0 $f0
    ldh a, [$f0]                                  ; $42e0: $f0 $f0
    sub $d6                                       ; $42e2: $d6 $d6

jr_078_42e4:
    sub $d6                                       ; $42e4: $d6 $d6
    ld bc, $0101                                  ; $42e6: $01 $01 $01
    dec b                                         ; $42e9: $05
    rlca                                          ; $42ea: $07
    rlca                                          ; $42eb: $07
    rlca                                          ; $42ec: $07
    rlca                                          ; $42ed: $07
    rlca                                          ; $42ee: $07
    rlca                                          ; $42ef: $07
    rlca                                          ; $42f0: $07
    rlca                                          ; $42f1: $07
    rlca                                          ; $42f2: $07
    rlca                                          ; $42f3: $07
    rlca                                          ; $42f4: $07
    rlca                                          ; $42f5: $07
    rst $20                                       ; $42f6: $e7
    rst $20                                       ; $42f7: $e7
    and $ed                                       ; $42f8: $e6 $ed
    push af                                       ; $42fa: $f5
    rst $20                                       ; $42fb: $e7
    and $1f                                       ; $42fc: $e6 $1f
    or $f5                                        ; $42fe: $f6 $f5
    and $20                                       ; $4300: $e6 $20
    ld hl, sp-$0a                                 ; $4302: $f8 $f6
    db $f4                                        ; $4304: $f4
    ld e, $01                                     ; $4305: $1e $01
    ld bc, $0321                                  ; $4307: $01 $21 $03
    ld hl, $2101                                  ; $430a: $21 $01 $21
    inc bc                                        ; $430d: $03
    ld hl, $2121                                  ; $430e: $21 $21 $21
    inc bc                                        ; $4311: $03
    ld [hl+], a                                   ; $4312: $22
    ld hl, $0321                                  ; $4313: $21 $21 $03
    add hl, hl                                    ; $4316: $29
    ld a, [bc]                                    ; $4317: $0a
    dec bc                                        ; $4318: $0b
    inc c                                         ; $4319: $0c
    ld a, [hl+]                                   ; $431a: $2a
    dec c                                         ; $431b: $0d
    ld c, $0f                                     ; $431c: $0e $0f
    dec hl                                        ; $431e: $2b
    dec e                                         ; $431f: $1d
    ld [$edeb], a                                 ; $4320: $ea $eb $ed
    xor $1e                                       ; $4323: $ee $1e
    db $ed                                        ; $4325: $ed
    inc bc                                        ; $4326: $03
    nop                                           ; $4327: $00
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    inc bc                                        ; $432a: $03
    nop                                           ; $432b: $00
    nop                                           ; $432c: $00
    nop                                           ; $432d: $00
    inc bc                                        ; $432e: $03
    inc bc                                        ; $432f: $03
    inc bc                                        ; $4330: $03
    inc bc                                        ; $4331: $03
    inc bc                                        ; $4332: $03
    inc bc                                        ; $4333: $03
    inc bc                                        ; $4334: $03
    inc bc                                        ; $4335: $03
    db $ec                                        ; $4336: $ec
    db $ed                                        ; $4337: $ed
    inc l                                         ; $4338: $2c
    ld a, [c]                                     ; $4339: $f2
    dec l                                         ; $433a: $2d
    rra                                           ; $433b: $1f
    sub $d6                                       ; $433c: $d6 $d6
    ld l, $20                                     ; $433e: $2e $20
    inc l                                         ; $4340: $2c
    ld a, [c]                                     ; $4341: $f2
    xor $1e                                       ; $4342: $ee $1e
    sub $d6                                       ; $4344: $d6 $d6
    inc bc                                        ; $4346: $03
    inc bc                                        ; $4347: $03
    rlca                                          ; $4348: $07
    rlca                                          ; $4349: $07
    inc bc                                        ; $434a: $03
    inc bc                                        ; $434b: $03
    rlca                                          ; $434c: $07
    rlca                                          ; $434d: $07
    inc bc                                        ; $434e: $03
    inc bc                                        ; $434f: $03
    rlca                                          ; $4350: $07
    rlca                                          ; $4351: $07
    inc bc                                        ; $4352: $03
    inc bc                                        ; $4353: $03
    rlca                                          ; $4354: $07
    rlca                                          ; $4355: $07
    ld a, [c]                                     ; $4356: $f2
    ld a, [c]                                     ; $4357: $f2
    ld a, [c]                                     ; $4358: $f2
    ld a, [c]                                     ; $4359: $f2
    sub $d6                                       ; $435a: $d6 $d6
    sub $d6                                       ; $435c: $d6 $d6
    ld a, [c]                                     ; $435e: $f2
    ld a, [c]                                     ; $435f: $f2
    ld a, [c]                                     ; $4360: $f2
    ld a, [c]                                     ; $4361: $f2
    sub $d6                                       ; $4362: $d6 $d6
    sub $d6                                       ; $4364: $d6 $d6
    rlca                                          ; $4366: $07
    rlca                                          ; $4367: $07
    rlca                                          ; $4368: $07
    rlca                                          ; $4369: $07
    rlca                                          ; $436a: $07
    rlca                                          ; $436b: $07
    rlca                                          ; $436c: $07
    rlca                                          ; $436d: $07
    rlca                                          ; $436e: $07
    rlca                                          ; $436f: $07
    rlca                                          ; $4370: $07
    rlca                                          ; $4371: $07
    rlca                                          ; $4372: $07
    rlca                                          ; $4373: $07
    rlca                                          ; $4374: $07
    rlca                                          ; $4375: $07
    ld sp, hl                                     ; $4376: $f9
    cpl                                           ; $4377: $2f
    rst $38                                       ; $4378: $ff
    db $fd                                        ; $4379: $fd
    jr nc, @+$33                                  ; $437a: $30 $31

    ld bc, $0232                                  ; $437c: $01 $32 $02
    ld sp, hl                                     ; $437f: $f9
    inc bc                                        ; $4380: $03
    inc sp                                        ; $4381: $33
    ld [bc], a                                    ; $4382: $02
    ld sp, $3401                                  ; $4383: $31 $01 $34
    ld [bc], a                                    ; $4386: $02
    ld [bc], a                                    ; $4387: $02
    ld [hl+], a                                   ; $4388: $22
    ld bc, $0202                                  ; $4389: $01 $02 $02
    ld [hl+], a                                   ; $438c: $22
    ld b, $22                                     ; $438d: $06 $22
    ld [bc], a                                    ; $438f: $02
    ld [hl+], a                                   ; $4390: $22
    ld b, $22                                     ; $4391: $06 $22
    ld [bc], a                                    ; $4393: $02
    ld [hl+], a                                   ; $4394: $22
    ld bc, $04fe                                  ; $4395: $01 $fe $04
    db $fd                                        ; $4398: $fd
    cp $35                                        ; $4399: $fe $35
    ld [hl], $37                                  ; $439b: $36 $37
    jr c, jr_078_43d8                             ; $439d: $38 $39

    ld a, [hl-]                                   ; $439f: $3a
    dec sp                                        ; $43a0: $3b
    inc a                                         ; $43a1: $3c
    dec a                                         ; $43a2: $3d
    ld a, $3f                                     ; $43a3: $3e $3f
    ld b, b                                       ; $43a5: $40
    ld bc, $0101                                  ; $43a6: $01 $01 $01
    ld bc, $0106                                  ; $43a9: $01 $06 $01
    ld bc, $0601                                  ; $43ac: $01 $01 $06
    ld bc, $0101                                  ; $43af: $01 $01 $01
    ld bc, $0101                                  ; $43b2: $01 $01 $01
    ld bc, $fd04                                  ; $43b5: $01 $04 $fd
    ret c                                         ; $43b8: $d8

    ld b, c                                       ; $43b9: $41
    ld [hl-], a                                   ; $43ba: $32
    dec [hl]                                      ; $43bb: $35
    jp c, Jump_000_3342                           ; $43bc: $da $42 $33

    add hl, sp                                    ; $43bf: $39
    call c, $3442                                 ; $43c0: $dc $42 $34
    dec a                                         ; $43c3: $3d
    jp c, $0143                                   ; $43c4: $da $43 $01

    ld bc, $0303                                  ; $43c7: $01 $03 $03
    ld b, $06                                     ; $43ca: $06 $06
    inc bc                                        ; $43cc: $03
    inc bc                                        ; $43cd: $03
    ld b, $06                                     ; $43ce: $06 $06
    inc bc                                        ; $43d0: $03
    inc bc                                        ; $43d1: $03
    ld bc, $0301                                  ; $43d2: $01 $01 $03
    inc bc                                        ; $43d5: $03
    ld b, h                                       ; $43d6: $44
    ld b, l                                       ; $43d7: $45

jr_078_43d8:
    ld b, [hl]                                    ; $43d8: $46
    sbc $47                                       ; $43d9: $de $47
    ld c, b                                       ; $43db: $48
    ld b, d                                       ; $43dc: $42
    db $dd                                        ; $43dd: $dd
    ld c, c                                       ; $43de: $49
    ld c, d                                       ; $43df: $4a
    ld c, e                                       ; $43e0: $4b
    ld c, h                                       ; $43e1: $4c
    sbc $d9                                       ; $43e2: $de $d9
    ld c, l                                       ; $43e4: $4d
    ld b, a                                       ; $43e5: $47
    inc bc                                        ; $43e6: $03
    inc bc                                        ; $43e7: $03
    inc bc                                        ; $43e8: $03
    inc bc                                        ; $43e9: $03
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    inc hl                                        ; $43ec: $23
    inc bc                                        ; $43ed: $03
    nop                                           ; $43ee: $00
    nop                                           ; $43ef: $00
    inc bc                                        ; $43f0: $03
    inc bc                                        ; $43f1: $03
    inc bc                                        ; $43f2: $03
    inc bc                                        ; $43f3: $03
    inc bc                                        ; $43f4: $03
    nop                                           ; $43f5: $00
    push hl                                       ; $43f6: $e5
    push hl                                       ; $43f7: $e5
    push hl                                       ; $43f8: $e5
    push hl                                       ; $43f9: $e5
    rst $20                                       ; $43fa: $e7
    rst $20                                       ; $43fb: $e7
    rst $20                                       ; $43fc: $e7
    rst $20                                       ; $43fd: $e7
    rst $20                                       ; $43fe: $e7
    rst $20                                       ; $43ff: $e7
    rst $20                                       ; $4400: $e7
    rst $20                                       ; $4401: $e7
    rst $20                                       ; $4402: $e7
    rst $20                                       ; $4403: $e7
    rst $20                                       ; $4404: $e7
    rst $20                                       ; $4405: $e7
    dec b                                         ; $4406: $05
    dec b                                         ; $4407: $05
    dec b                                         ; $4408: $05
    dec b                                         ; $4409: $05
    dec b                                         ; $440a: $05
    dec b                                         ; $440b: $05
    dec b                                         ; $440c: $05
    dec b                                         ; $440d: $05
    dec b                                         ; $440e: $05
    dec b                                         ; $440f: $05
    dec b                                         ; $4410: $05
    dec b                                         ; $4411: $05
    dec b                                         ; $4412: $05
    dec b                                         ; $4413: $05
    dec b                                         ; $4414: $05
    dec b                                         ; $4415: $05
    push hl                                       ; $4416: $e5
    db $e4                                        ; $4417: $e4
    rst $20                                       ; $4418: $e7
    rst $20                                       ; $4419: $e7
    rst $20                                       ; $441a: $e7
    and $e7                                       ; $441b: $e6 $e7
    rst $20                                       ; $441d: $e7
    rst $20                                       ; $441e: $e7
    and $e7                                       ; $441f: $e6 $e7
    rst $20                                       ; $4421: $e7
    rst $20                                       ; $4422: $e7
    and $e7                                       ; $4423: $e6 $e7
    rst $20                                       ; $4425: $e7
    dec b                                         ; $4426: $05
    dec h                                         ; $4427: $25
    ld bc, $0501                                  ; $4428: $01 $01 $05
    dec h                                         ; $442b: $25
    ld bc, $0501                                  ; $442c: $01 $01 $05
    dec h                                         ; $442f: $25
    ld bc, $0501                                  ; $4430: $01 $01 $05
    dec h                                         ; $4433: $25
    db $01                                        ; $4434: $01
    db $01                                        ; $4435: $01

    db $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

    rst $20                                       ; $4456: $e7
    rst $20                                       ; $4457: $e7
    rst $20                                       ; $4458: $e7
    rst $20                                       ; $4459: $e7
    rst $28                                       ; $445a: $ef
    rst $28                                       ; $445b: $ef
    rst $28                                       ; $445c: $ef
    rst $20                                       ; $445d: $e7
    ldh a, [$f0]                                  ; $445e: $f0 $f0
    pop af                                        ; $4460: $f1
    push hl                                       ; $4461: $e5
    sub $d6                                       ; $4462: $d6 $d6
    sub $eb                                       ; $4464: $d6 $eb
    dec b                                         ; $4466: $05
    dec b                                         ; $4467: $05
    dec b                                         ; $4468: $05
    dec b                                         ; $4469: $05
    rlca                                          ; $446a: $07
    rlca                                          ; $446b: $07
    rlca                                          ; $446c: $07
    dec b                                         ; $446d: $05
    rlca                                          ; $446e: $07
    rlca                                          ; $446f: $07
    rlca                                          ; $4470: $07
    dec b                                         ; $4471: $05
    rlca                                          ; $4472: $07
    rlca                                          ; $4473: $07
    rlca                                          ; $4474: $07
    inc bc                                        ; $4475: $03
    rst $20                                       ; $4476: $e7
    rst $20                                       ; $4477: $e7
    rst $20                                       ; $4478: $e7
    rst $20                                       ; $4479: $e7
    rst $20                                       ; $447a: $e7
    rst $20                                       ; $447b: $e7
    rst $20                                       ; $447c: $e7
    rst $20                                       ; $447d: $e7
    push hl                                       ; $447e: $e5
    push hl                                       ; $447f: $e5
    push hl                                       ; $4480: $e5
    push hl                                       ; $4481: $e5
    dec e                                         ; $4482: $1d
    db $eb                                        ; $4483: $eb
    dec e                                         ; $4484: $1d
    db $eb                                        ; $4485: $eb
    dec b                                         ; $4486: $05
    dec b                                         ; $4487: $05
    dec b                                         ; $4488: $05
    dec b                                         ; $4489: $05
    dec b                                         ; $448a: $05
    dec b                                         ; $448b: $05
    dec b                                         ; $448c: $05
    dec b                                         ; $448d: $05
    dec b                                         ; $448e: $05
    dec b                                         ; $448f: $05
    dec b                                         ; $4490: $05
    dec b                                         ; $4491: $05
    inc bc                                        ; $4492: $03
    inc bc                                        ; $4493: $03
    inc bc                                        ; $4494: $03
    inc bc                                        ; $4495: $03
    rst $20                                       ; $4496: $e7
    and $e7                                       ; $4497: $e6 $e7
    rst $20                                       ; $4499: $e7
    rst $20                                       ; $449a: $e7
    and $e7                                       ; $449b: $e6 $e7
    rst $20                                       ; $449d: $e7
    push hl                                       ; $449e: $e5
    db $f4                                        ; $449f: $f4
    rst $20                                       ; $44a0: $e7
    rst $20                                       ; $44a1: $e7
    dec e                                         ; $44a2: $1d
    ld h, $e7                                     ; $44a3: $26 $e7
    rst $20                                       ; $44a5: $e7
    dec b                                         ; $44a6: $05
    dec h                                         ; $44a7: $25
    ld bc, $0501                                  ; $44a8: $01 $01 $05
    dec h                                         ; $44ab: $25
    ld bc, $0501                                  ; $44ac: $01 $01 $05
    dec h                                         ; $44af: $25
    ld bc, $0301                                  ; $44b0: $01 $01 $03
    inc bc                                        ; $44b3: $03
    ld bc, $f201                                  ; $44b4: $01 $01 $f2
    ld a, [c]                                     ; $44b7: $f2
    di                                            ; $44b8: $f3
    ld hl, $d6d6                                  ; $44b9: $21 $d6 $d6
    sub $25                                       ; $44bc: $d6 $25
    ld a, [c]                                     ; $44be: $f2
    ld a, [c]                                     ; $44bf: $f2
    di                                            ; $44c0: $f3
    add hl, hl                                    ; $44c1: $29
    sub $d6                                       ; $44c2: $d6 $d6
    sub $2a                                       ; $44c4: $d6 $2a
    rlca                                          ; $44c6: $07
    rlca                                          ; $44c7: $07
    rlca                                          ; $44c8: $07
    inc bc                                        ; $44c9: $03
    rlca                                          ; $44ca: $07
    rlca                                          ; $44cb: $07
    rlca                                          ; $44cc: $07
    inc bc                                        ; $44cd: $03
    rlca                                          ; $44ce: $07
    rlca                                          ; $44cf: $07
    rlca                                          ; $44d0: $07
    inc bc                                        ; $44d1: $03
    rlca                                          ; $44d2: $07
    rlca                                          ; $44d3: $07
    rlca                                          ; $44d4: $07
    inc bc                                        ; $44d5: $03
    ld [hl+], a                                   ; $44d6: $22
    inc hl                                        ; $44d7: $23
    inc h                                         ; $44d8: $24
    daa                                           ; $44d9: $27
    rlca                                          ; $44da: $07
    ld [$2809], sp                                ; $44db: $08 $09 $28
    ld a, [bc]                                    ; $44de: $0a
    dec bc                                        ; $44df: $0b
    inc c                                         ; $44e0: $0c
    db $ec                                        ; $44e1: $ec
    dec c                                         ; $44e2: $0d
    ld c, $0f                                     ; $44e3: $0e $0f
    dec l                                         ; $44e5: $2d
    inc bc                                        ; $44e6: $03
    inc bc                                        ; $44e7: $03
    inc bc                                        ; $44e8: $03
    inc bc                                        ; $44e9: $03
    nop                                           ; $44ea: $00
    nop                                           ; $44eb: $00
    nop                                           ; $44ec: $00
    inc bc                                        ; $44ed: $03
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    inc bc                                        ; $44f1: $03
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    inc bc                                        ; $44f5: $03
    ld l, $28                                     ; $44f6: $2e $28
    rst $20                                       ; $44f8: $e7
    rst $20                                       ; $44f9: $e7
    ld e, $ec                                     ; $44fa: $1e $ec
    rst $20                                       ; $44fc: $e7
    rst $20                                       ; $44fd: $e7
    ld l, $2d                                     ; $44fe: $2e $2d
    rst $20                                       ; $4500: $e7
    rst $20                                       ; $4501: $e7
    ld e, $2d                                     ; $4502: $1e $2d
    rst $20                                       ; $4504: $e7
    rst $20                                       ; $4505: $e7
    inc bc                                        ; $4506: $03
    inc hl                                        ; $4507: $23
    ld bc, $0301                                  ; $4508: $01 $01 $03
    inc hl                                        ; $450b: $23
    ld bc, $0301                                  ; $450c: $01 $01 $03
    inc hl                                        ; $450f: $23
    ld bc, $0301                                  ; $4510: $01 $01 $03
    inc hl                                        ; $4513: $23
    ld bc, $d901                                  ; $4514: $01 $01 $d9
    sbc $d8                                       ; $4517: $de $d8
    dec hl                                        ; $4519: $2b
    db $db                                        ; $451a: $db
    db $dd                                        ; $451b: $dd
    jp c, Jump_078_4c21                           ; $451c: $da $21 $4c

    ld c, [hl]                                    ; $451f: $4e
    call c, Call_078_4825                         ; $4520: $dc $25 $48
    ld b, d                                       ; $4523: $42
    jp c, $0329                                   ; $4524: $da $29 $03

    inc bc                                        ; $4527: $03
    inc hl                                        ; $4528: $23
    inc bc                                        ; $4529: $03
    inc bc                                        ; $452a: $03
    inc bc                                        ; $452b: $03
    inc hl                                        ; $452c: $23
    inc bc                                        ; $452d: $03
    inc bc                                        ; $452e: $03
    inc bc                                        ; $452f: $03
    inc hl                                        ; $4530: $23
    inc bc                                        ; $4531: $03
    nop                                           ; $4532: $00
    inc hl                                        ; $4533: $23
    inc hl                                        ; $4534: $23
    inc bc                                        ; $4535: $03
    dec e                                         ; $4536: $1d
    ld [$2eeb], a                                 ; $4537: $ea $eb $2e
    ld [hl+], a                                   ; $453a: $22
    inc hl                                        ; $453b: $23
    inc h                                         ; $453c: $24
    daa                                           ; $453d: $27
    rlca                                          ; $453e: $07
    ld [$2809], sp                                ; $453f: $08 $09 $28
    ld a, [bc]                                    ; $4542: $0a
    dec bc                                        ; $4543: $0b
    inc c                                         ; $4544: $0c
    db $ec                                        ; $4545: $ec
    inc bc                                        ; $4546: $03
    inc bc                                        ; $4547: $03
    inc bc                                        ; $4548: $03
    inc bc                                        ; $4549: $03
    inc bc                                        ; $454a: $03
    inc bc                                        ; $454b: $03
    inc bc                                        ; $454c: $03
    inc bc                                        ; $454d: $03
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    inc bc                                        ; $4551: $03
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    inc bc                                        ; $4555: $03
    ld l, $28                                     ; $4556: $2e $28
    rst $20                                       ; $4558: $e7
    rst $20                                       ; $4559: $e7
    ld e, $ec                                     ; $455a: $1e $ec
    rst $20                                       ; $455c: $e7
    rst $20                                       ; $455d: $e7
    ld l, $2d                                     ; $455e: $2e $2d
    rst $20                                       ; $4560: $e7
    rst $20                                       ; $4561: $e7
    ld e, $28                                     ; $4562: $1e $28
    rst $20                                       ; $4564: $e7
    rst $20                                       ; $4565: $e7
    inc bc                                        ; $4566: $03
    inc hl                                        ; $4567: $23
    ld bc, $0301                                  ; $4568: $01 $01 $03
    inc hl                                        ; $456b: $23
    ld bc, $0301                                  ; $456c: $01 $01 $03
    inc hl                                        ; $456f: $23
    ld bc, $0301                                  ; $4570: $01 $01 $03
    inc hl                                        ; $4573: $23
    ld bc, $f201                                  ; $4574: $01 $01 $f2
    ld a, [c]                                     ; $4577: $f2
    ld a, [c]                                     ; $4578: $f2
    ld a, [c]                                     ; $4579: $f2
    sub $d6                                       ; $457a: $d6 $d6
    sub $d6                                       ; $457c: $d6 $d6
    ld a, [c]                                     ; $457e: $f2
    ld a, [c]                                     ; $457f: $f2
    ld a, [c]                                     ; $4580: $f2
    ld a, [c]                                     ; $4581: $f2
    sub $d6                                       ; $4582: $d6 $d6
    sub $d6                                       ; $4584: $d6 $d6
    inc b                                         ; $4586: $04
    inc b                                         ; $4587: $04
    inc b                                         ; $4588: $04
    inc b                                         ; $4589: $04
    inc b                                         ; $458a: $04
    inc b                                         ; $458b: $04
    inc b                                         ; $458c: $04
    inc b                                         ; $458d: $04
    inc b                                         ; $458e: $04
    inc b                                         ; $458f: $04
    inc b                                         ; $4590: $04
    inc b                                         ; $4591: $04
    inc b                                         ; $4592: $04
    inc b                                         ; $4593: $04
    inc b                                         ; $4594: $04
    inc b                                         ; $4595: $04
    rst $20                                       ; $4596: $e7
    rst $20                                       ; $4597: $e7
    rst $20                                       ; $4598: $e7
    rst $20                                       ; $4599: $e7
    rst $20                                       ; $459a: $e7
    rst $20                                       ; $459b: $e7
    rst $20                                       ; $459c: $e7
    rst $20                                       ; $459d: $e7
    rst $20                                       ; $459e: $e7
    rst $28                                       ; $459f: $ef
    rst $28                                       ; $45a0: $ef
    rst $28                                       ; $45a1: $ef
    rst $20                                       ; $45a2: $e7
    ld c, a                                       ; $45a3: $4f
    ld d, b                                       ; $45a4: $50
    ld c, a                                       ; $45a5: $4f
    ld bc, $0101                                  ; $45a6: $01 $01 $01
    ld bc, $0101                                  ; $45a9: $01 $01 $01
    ld bc, $0101                                  ; $45ac: $01 $01 $01
    ld [bc], a                                    ; $45af: $02
    ld [bc], a                                    ; $45b0: $02
    ld [bc], a                                    ; $45b1: $02
    ld bc, $0202                                  ; $45b2: $01 $02 $02
    ld [bc], a                                    ; $45b5: $02
    sbc $d9                                       ; $45b6: $de $d9
    sbc $d9                                       ; $45b8: $de $d9
    db $dd                                        ; $45ba: $dd
    db $db                                        ; $45bb: $db
    db $dd                                        ; $45bc: $dd
    db $db                                        ; $45bd: $db
    rst $28                                       ; $45be: $ef
    rst $28                                       ; $45bf: $ef
    rst $28                                       ; $45c0: $ef
    rst $28                                       ; $45c1: $ef
    ld d, b                                       ; $45c2: $50
    ld c, a                                       ; $45c3: $4f
    ld d, b                                       ; $45c4: $50
    ld c, a                                       ; $45c5: $4f
    inc bc                                        ; $45c6: $03
    inc bc                                        ; $45c7: $03
    inc bc                                        ; $45c8: $03
    inc bc                                        ; $45c9: $03
    inc bc                                        ; $45ca: $03
    inc bc                                        ; $45cb: $03
    inc bc                                        ; $45cc: $03
    inc bc                                        ; $45cd: $03
    ld [bc], a                                    ; $45ce: $02
    ld [bc], a                                    ; $45cf: $02
    ld [bc], a                                    ; $45d0: $02
    ld [bc], a                                    ; $45d1: $02
    ld [bc], a                                    ; $45d2: $02
    ld [bc], a                                    ; $45d3: $02
    ld [bc], a                                    ; $45d4: $02
    ld [bc], a                                    ; $45d5: $02
    sbc $d9                                       ; $45d6: $de $d9
    sbc $d9                                       ; $45d8: $de $d9
    db $dd                                        ; $45da: $dd
    db $db                                        ; $45db: $db
    db $dd                                        ; $45dc: $dd
    db $db                                        ; $45dd: $db
    rst $28                                       ; $45de: $ef
    rst $28                                       ; $45df: $ef
    db $dd                                        ; $45e0: $dd
    db $db                                        ; $45e1: $db
    ld d, b                                       ; $45e2: $50
    ld c, a                                       ; $45e3: $4f
    rst $18                                       ; $45e4: $df
    add sp, $03                                   ; $45e5: $e8 $03
    inc bc                                        ; $45e7: $03
    inc bc                                        ; $45e8: $03
    inc bc                                        ; $45e9: $03
    inc bc                                        ; $45ea: $03
    inc bc                                        ; $45eb: $03
    inc bc                                        ; $45ec: $03
    inc bc                                        ; $45ed: $03
    ld [bc], a                                    ; $45ee: $02
    ld [bc], a                                    ; $45ef: $02
    inc bc                                        ; $45f0: $03
    inc bc                                        ; $45f1: $03
    ld [bc], a                                    ; $45f2: $02
    ld [bc], a                                    ; $45f3: $02
    inc bc                                        ; $45f4: $03
    inc bc                                        ; $45f5: $03
    rst $20                                       ; $45f6: $e7
    db $e3                                        ; $45f7: $e3
    ld [c], a                                     ; $45f8: $e2
    pop hl                                        ; $45f9: $e1
    rst $20                                       ; $45fa: $e7
    ldh [$e1], a                                  ; $45fb: $e0 $e1
    ld [c], a                                     ; $45fd: $e2
    rst $20                                       ; $45fe: $e7
    db $e3                                        ; $45ff: $e3
    ld [c], a                                     ; $4600: $e2
    pop hl                                        ; $4601: $e1
    rst $20                                       ; $4602: $e7
    ldh [$e1], a                                  ; $4603: $e0 $e1
    ld [c], a                                     ; $4605: $e2
    ld bc, $0202                                  ; $4606: $01 $02 $02
    ld [bc], a                                    ; $4609: $02
    ld bc, $0202                                  ; $460a: $01 $02 $02
    ld [bc], a                                    ; $460d: $02
    ld bc, $0202                                  ; $460e: $01 $02 $02
    ld [bc], a                                    ; $4611: $02
    ld bc, $0202                                  ; $4612: $01 $02 $02
    ld [bc], a                                    ; $4615: $02
    ld [c], a                                     ; $4616: $e2
    pop hl                                        ; $4617: $e1
    ld [c], a                                     ; $4618: $e2
    pop hl                                        ; $4619: $e1
    pop hl                                        ; $461a: $e1
    ld [c], a                                     ; $461b: $e2
    pop hl                                        ; $461c: $e1
    ld [c], a                                     ; $461d: $e2
    ld [c], a                                     ; $461e: $e2
    pop hl                                        ; $461f: $e1
    ld [c], a                                     ; $4620: $e2
    pop hl                                        ; $4621: $e1
    pop hl                                        ; $4622: $e1
    ld [c], a                                     ; $4623: $e2
    pop hl                                        ; $4624: $e1
    ld [c], a                                     ; $4625: $e2
    ld [bc], a                                    ; $4626: $02
    ld [bc], a                                    ; $4627: $02
    ld [bc], a                                    ; $4628: $02
    ld [bc], a                                    ; $4629: $02
    ld [bc], a                                    ; $462a: $02
    ld [bc], a                                    ; $462b: $02
    ld [bc], a                                    ; $462c: $02
    ld [bc], a                                    ; $462d: $02
    ld [bc], a                                    ; $462e: $02
    ld [bc], a                                    ; $462f: $02
    ld [bc], a                                    ; $4630: $02
    ld [bc], a                                    ; $4631: $02
    ld [bc], a                                    ; $4632: $02
    ld [bc], a                                    ; $4633: $02
    ld [bc], a                                    ; $4634: $02
    ld [bc], a                                    ; $4635: $02
    ld [c], a                                     ; $4636: $e2
    inc e                                         ; $4637: $1c
    push hl                                       ; $4638: $e5
    push hl                                       ; $4639: $e5
    pop hl                                        ; $463a: $e1
    dec de                                        ; $463b: $1b
    rst $20                                       ; $463c: $e7
    rst $20                                       ; $463d: $e7
    ld [c], a                                     ; $463e: $e2
    inc e                                         ; $463f: $1c
    rst $20                                       ; $4640: $e7
    rst $20                                       ; $4641: $e7
    pop hl                                        ; $4642: $e1
    dec de                                        ; $4643: $1b
    rst $20                                       ; $4644: $e7
    rst $20                                       ; $4645: $e7
    ld [bc], a                                    ; $4646: $02
    ld [bc], a                                    ; $4647: $02
    ld bc, $0201                                  ; $4648: $01 $01 $02
    ld [bc], a                                    ; $464b: $02
    ld bc, $0201                                  ; $464c: $01 $01 $02
    ld [bc], a                                    ; $464f: $02
    ld bc, $0201                                  ; $4650: $01 $01 $02
    ld [bc], a                                    ; $4653: $02
    ld bc, $e701                                  ; $4654: $01 $01 $e7
    db $e3                                        ; $4657: $e3
    ld [c], a                                     ; $4658: $e2
    pop hl                                        ; $4659: $e1
    rst $20                                       ; $465a: $e7
    jp hl                                         ; $465b: $e9


    ld [$e7eb], a                                 ; $465c: $ea $eb $e7
    db $ec                                        ; $465f: $ec
    db $ed                                        ; $4660: $ed
    xor $e7                                       ; $4661: $ee $e7
    dec l                                         ; $4663: $2d
    rra                                           ; $4664: $1f
    ld hl, $0201                                  ; $4665: $21 $01 $02
    ld [bc], a                                    ; $4668: $02
    ld [bc], a                                    ; $4669: $02
    ld bc, $0707                                  ; $466a: $01 $07 $07
    rlca                                          ; $466d: $07
    ld bc, $0707                                  ; $466e: $01 $07 $07
    rlca                                          ; $4671: $07
    ld bc, $0707                                  ; $4672: $01 $07 $07
    rlca                                          ; $4675: $07
    ld [c], a                                     ; $4676: $e2
    pop hl                                        ; $4677: $e1
    ld [c], a                                     ; $4678: $e2
    pop hl                                        ; $4679: $e1
    dec e                                         ; $467a: $1d
    ld [$1deb], a                                 ; $467b: $ea $eb $1d
    ld e, $ed                                     ; $467e: $1e $ed
    xor $1e                                       ; $4680: $ee $1e
    ld [hl+], a                                   ; $4682: $22
    inc hl                                        ; $4683: $23
    inc h                                         ; $4684: $24
    daa                                           ; $4685: $27
    ld [bc], a                                    ; $4686: $02
    ld [bc], a                                    ; $4687: $02
    ld [bc], a                                    ; $4688: $02
    ld [bc], a                                    ; $4689: $02
    rlca                                          ; $468a: $07
    rlca                                          ; $468b: $07
    rlca                                          ; $468c: $07
    rlca                                          ; $468d: $07
    rlca                                          ; $468e: $07
    rlca                                          ; $468f: $07
    rlca                                          ; $4690: $07
    rlca                                          ; $4691: $07
    rlca                                          ; $4692: $07
    rlca                                          ; $4693: $07
    rlca                                          ; $4694: $07
    rlca                                          ; $4695: $07
    ld [c], a                                     ; $4696: $e2
    inc e                                         ; $4697: $1c
    rst $20                                       ; $4698: $e7
    rst $20                                       ; $4699: $e7
    ld [$e526], a                                 ; $469a: $ea $26 $e5
    push hl                                       ; $469d: $e5
    db $ed                                        ; $469e: $ed
    add hl, hl                                    ; $469f: $29
    cpl                                           ; $46a0: $2f
    cpl                                           ; $46a1: $2f
    rra                                           ; $46a2: $1f
    ld a, [hl+]                                   ; $46a3: $2a
    ld sp, $02f9                                  ; $46a4: $31 $f9 $02
    ld [bc], a                                    ; $46a7: $02
    ld bc, $0701                                  ; $46a8: $01 $01 $07
    rlca                                          ; $46ab: $07
    ld bc, $0701                                  ; $46ac: $01 $01 $07
    rlca                                          ; $46af: $07
    inc b                                         ; $46b0: $04
    inc b                                         ; $46b1: $04
    rlca                                          ; $46b2: $07
    rlca                                          ; $46b3: $07
    inc b                                         ; $46b4: $04
    inc b                                         ; $46b5: $04
    ld a, [c]                                     ; $46b6: $f2
    di                                            ; $46b7: $f3
    dec l                                         ; $46b8: $2d
    db $ed                                        ; $46b9: $ed
    sub $d6                                       ; $46ba: $d6 $d6
    jr z, jr_078_46de                             ; $46bc: $28 $20

    ld a, [c]                                     ; $46be: $f2
    di                                            ; $46bf: $f3
    db $ec                                        ; $46c0: $ec
    db $ed                                        ; $46c1: $ed
    sub $d6                                       ; $46c2: $d6 $d6
    ld d, c                                       ; $46c4: $51
    ld d, d                                       ; $46c5: $52
    inc b                                         ; $46c6: $04
    inc b                                         ; $46c7: $04
    rlca                                          ; $46c8: $07
    rlca                                          ; $46c9: $07
    inc b                                         ; $46ca: $04
    inc b                                         ; $46cb: $04
    rlca                                          ; $46cc: $07
    rlca                                          ; $46cd: $07
    inc b                                         ; $46ce: $04
    inc b                                         ; $46cf: $04
    rlca                                          ; $46d0: $07
    rlca                                          ; $46d1: $07
    inc b                                         ; $46d2: $04
    inc b                                         ; $46d3: $04
    ld bc, $ee01                                  ; $46d4: $01 $01 $ee
    ld e, $ed                                     ; $46d7: $1e $ed
    xor $2b                                       ; $46d9: $ee $2b
    ld l, $20                                     ; $46db: $2e $20
    dec hl                                        ; $46dd: $2b

jr_078_46de:
    xor $1e                                       ; $46de: $ee $1e
    db $ed                                        ; $46e0: $ed
    xor $51                                       ; $46e1: $ee $51
    ld d, d                                       ; $46e3: $52
    jr nz, jr_078_4711                            ; $46e4: $20 $2b

    rlca                                          ; $46e6: $07
    rlca                                          ; $46e7: $07
    rlca                                          ; $46e8: $07
    rlca                                          ; $46e9: $07
    rlca                                          ; $46ea: $07
    rlca                                          ; $46eb: $07
    rlca                                          ; $46ec: $07
    rlca                                          ; $46ed: $07
    rlca                                          ; $46ee: $07
    rlca                                          ; $46ef: $07
    rlca                                          ; $46f0: $07
    rlca                                          ; $46f1: $07
    inc b                                         ; $46f2: $04
    inc b                                         ; $46f3: $04
    rlca                                          ; $46f4: $07
    rlca                                          ; $46f5: $07
    sbc $d9                                       ; $46f6: $de $d9
    sbc $d9                                       ; $46f8: $de $d9
    db $dd                                        ; $46fa: $dd
    db $db                                        ; $46fb: $db
    db $dd                                        ; $46fc: $dd
    db $db                                        ; $46fd: $db
    db $dd                                        ; $46fe: $dd
    db $db                                        ; $46ff: $db
    db $dd                                        ; $4700: $dd
    db $db                                        ; $4701: $db
    rst $18                                       ; $4702: $df
    add sp, -$21                                  ; $4703: $e8 $df
    add sp, $03                                   ; $4705: $e8 $03
    inc bc                                        ; $4707: $03
    inc bc                                        ; $4708: $03
    inc bc                                        ; $4709: $03
    inc bc                                        ; $470a: $03
    inc bc                                        ; $470b: $03
    inc bc                                        ; $470c: $03
    inc bc                                        ; $470d: $03
    inc bc                                        ; $470e: $03
    inc bc                                        ; $470f: $03
    inc bc                                        ; $4710: $03

jr_078_4711:
    inc bc                                        ; $4711: $03
    inc bc                                        ; $4712: $03
    inc bc                                        ; $4713: $03
    inc bc                                        ; $4714: $03
    inc bc                                        ; $4715: $03
    sbc $d8                                       ; $4716: $de $d8
    ld d, e                                       ; $4718: $53
    ld d, h                                       ; $4719: $54
    db $dd                                        ; $471a: $dd
    jp c, $5655                                   ; $471b: $da $55 $56

    db $dd                                        ; $471e: $dd
    call c, $5857                                 ; $471f: $dc $57 $58
    rst $18                                       ; $4722: $df
    jp c, Jump_078_5a59                           ; $4723: $da $59 $5a

    inc bc                                        ; $4726: $03
    inc hl                                        ; $4727: $23
    ld bc, $0301                                  ; $4728: $01 $01 $03
    inc hl                                        ; $472b: $23
    ld bc, $0301                                  ; $472c: $01 $01 $03
    inc hl                                        ; $472f: $23
    ld bc, $0301                                  ; $4730: $01 $01 $03
    inc hl                                        ; $4733: $23
    ld bc, $5301                                  ; $4734: $01 $01 $53
    ld d, h                                       ; $4737: $54
    db $ed                                        ; $4738: $ed
    xor $55                                       ; $4739: $ee $55
    ld d, [hl]                                    ; $473b: $56
    cp $04                                        ; $473c: $fe $04
    ld d, a                                       ; $473e: $57
    ld e, b                                       ; $473f: $58
    ld e, e                                       ; $4740: $5b
    ld e, h                                       ; $4741: $5c
    ld e, c                                       ; $4742: $59
    ld e, d                                       ; $4743: $5a
    ld e, l                                       ; $4744: $5d
    ld e, [hl]                                    ; $4745: $5e
    inc b                                         ; $4746: $04
    inc b                                         ; $4747: $04
    rlca                                          ; $4748: $07
    rlca                                          ; $4749: $07
    inc b                                         ; $474a: $04
    inc b                                         ; $474b: $04
    ld bc, $0401                                  ; $474c: $01 $01 $04
    inc b                                         ; $474f: $04
    ld bc, $0101                                  ; $4750: $01 $01 $01
    ld bc, $0101                                  ; $4753: $01 $01 $01
    push hl                                       ; $4756: $e5
    push hl                                       ; $4757: $e5
    push hl                                       ; $4758: $e5
    push hl                                       ; $4759: $e5
    rst $20                                       ; $475a: $e7
    rst $20                                       ; $475b: $e7
    rst $20                                       ; $475c: $e7
    rst $20                                       ; $475d: $e7
    rst $20                                       ; $475e: $e7
    rst $20                                       ; $475f: $e7
    rst $20                                       ; $4760: $e7
    rst $20                                       ; $4761: $e7
    rst $20                                       ; $4762: $e7
    rst $20                                       ; $4763: $e7
    rst $20                                       ; $4764: $e7
    rst $20                                       ; $4765: $e7
    ld bc, $0101                                  ; $4766: $01 $01 $01
    ld bc, $0101                                  ; $4769: $01 $01 $01
    ld bc, $0101                                  ; $476c: $01 $01 $01
    ld bc, $0101                                  ; $476f: $01 $01 $01
    ld bc, $0101                                  ; $4772: $01 $01 $01
    ld bc, $e5e5                                  ; $4775: $01 $e5 $e5
    db $e4                                        ; $4778: $e4
    db $dd                                        ; $4779: $dd
    rst $20                                       ; $477a: $e7
    rst $20                                       ; $477b: $e7
    and $db                                       ; $477c: $e6 $db
    rst $20                                       ; $477e: $e7
    rst $20                                       ; $477f: $e7
    and $e8                                       ; $4780: $e6 $e8
    rst $20                                       ; $4782: $e7
    rst $20                                       ; $4783: $e7
    and $dd                                       ; $4784: $e6 $dd
    ld bc, $2101                                  ; $4786: $01 $01 $21
    inc bc                                        ; $4789: $03
    ld bc, $2101                                  ; $478a: $01 $01 $21
    inc bc                                        ; $478d: $03
    ld bc, $2101                                  ; $478e: $01 $01 $21
    inc bc                                        ; $4791: $03
    ld bc, $2101                                  ; $4792: $01 $01 $21
    inc bc                                        ; $4795: $03
    db $db                                        ; $4796: $db
    call c, $605f                                 ; $4797: $dc $5f $60
    db $dd                                        ; $479a: $dd
    call c, $6261                                 ; $479b: $dc $61 $62
    rst $18                                       ; $479e: $df
    jp c, Jump_078_6463                           ; $479f: $da $63 $64

    db $db                                        ; $47a2: $db
    call c, Call_078_6536                         ; $47a3: $dc $36 $65
    inc bc                                        ; $47a6: $03
    inc hl                                        ; $47a7: $23
    ld bc, $0301                                  ; $47a8: $01 $01 $03
    inc hl                                        ; $47ab: $23
    ld bc, $0301                                  ; $47ac: $01 $01 $03
    inc hl                                        ; $47af: $23
    ld bc, $0301                                  ; $47b0: $01 $01 $03
    inc hl                                        ; $47b3: $23
    ld bc, $3a01                                  ; $47b4: $01 $01 $3a
    ld h, [hl]                                    ; $47b7: $66
    ld h, a                                       ; $47b8: $67
    ld l, b                                       ; $47b9: $68
    ld l, c                                       ; $47ba: $69
    ld a, $3f                                     ; $47bb: $3e $3f
    scf                                           ; $47bd: $37
    ld l, d                                       ; $47be: $6a
    ld l, e                                       ; $47bf: $6b
    ld l, h                                       ; $47c0: $6c
    dec sp                                        ; $47c1: $3b
    ld l, l                                       ; $47c2: $6d
    ld l, [hl]                                    ; $47c3: $6e
    ld l, a                                       ; $47c4: $6f
    ld h, l                                       ; $47c5: $65
    ld bc, $0101                                  ; $47c6: $01 $01 $01
    ld bc, $0101                                  ; $47c9: $01 $01 $01
    ld bc, $0101                                  ; $47cc: $01 $01 $01
    ld bc, $0101                                  ; $47cf: $01 $01 $01
    ld bc, $0101                                  ; $47d2: $01 $01 $01
    ld bc, $e7e7                                  ; $47d5: $01 $e7 $e7
    rst $20                                       ; $47d8: $e7
    rst $20                                       ; $47d9: $e7
    push hl                                       ; $47da: $e5
    push hl                                       ; $47db: $e5
    push hl                                       ; $47dc: $e5
    push hl                                       ; $47dd: $e5
    cpl                                           ; $47de: $2f
    cpl                                           ; $47df: $2f
    cpl                                           ; $47e0: $2f
    cpl                                           ; $47e1: $2f
    ld sp, hl                                     ; $47e2: $f9
    ld sp, $31f9                                  ; $47e3: $31 $f9 $31
    ld bc, $0101                                  ; $47e6: $01 $01 $01
    ld bc, $0101                                  ; $47e9: $01 $01 $01
    ld bc, $0401                                  ; $47ec: $01 $01 $04
    inc b                                         ; $47ef: $04
    inc b                                         ; $47f0: $04
    inc b                                         ; $47f1: $04
    inc b                                         ; $47f2: $04
    inc b                                         ; $47f3: $04
    inc b                                         ; $47f4: $04
    inc b                                         ; $47f5: $04
    rst $20                                       ; $47f6: $e7
    ld [hl], b                                    ; $47f7: $70
    ld [hl], c                                    ; $47f8: $71
    ld [hl], c                                    ; $47f9: $71
    push hl                                       ; $47fa: $e5
    ld [hl], d                                    ; $47fb: $72
    ld [hl], e                                    ; $47fc: $73
    ld [hl], e                                    ; $47fd: $73
    cpl                                           ; $47fe: $2f
    ld [hl], h                                    ; $47ff: $74
    ld [hl], l                                    ; $4800: $75
    ld [hl], l                                    ; $4801: $75
    ld sp, hl                                     ; $4802: $f9
    ld [hl], h                                    ; $4803: $74
    ld [hl], l                                    ; $4804: $75
    db $e4                                        ; $4805: $e4
    ld bc, $8686                                  ; $4806: $01 $86 $86
    add [hl]                                      ; $4809: $86
    ld bc, $8686                                  ; $480a: $01 $86 $86
    add [hl]                                      ; $480d: $86
    inc b                                         ; $480e: $04
    add [hl]                                      ; $480f: $86
    add [hl]                                      ; $4810: $86
    add [hl]                                      ; $4811: $86
    inc b                                         ; $4812: $04
    add [hl]                                      ; $4813: $86
    add [hl]                                      ; $4814: $86
    dec b                                         ; $4815: $05
    ld [hl], c                                    ; $4816: $71
    ld [hl], c                                    ; $4817: $71
    ld [hl], c                                    ; $4818: $71
    ld [hl], c                                    ; $4819: $71
    ld [hl], e                                    ; $481a: $73
    ld [hl], e                                    ; $481b: $73
    ld [hl], e                                    ; $481c: $73
    ld [hl], e                                    ; $481d: $73
    ld [hl], l                                    ; $481e: $75
    ld [hl], l                                    ; $481f: $75
    ld [hl], l                                    ; $4820: $75
    ld [hl], l                                    ; $4821: $75
    push hl                                       ; $4822: $e5
    push hl                                       ; $4823: $e5
    push hl                                       ; $4824: $e5

Call_078_4825:
    push hl                                       ; $4825: $e5
    add [hl]                                      ; $4826: $86
    add [hl]                                      ; $4827: $86
    add [hl]                                      ; $4828: $86
    add [hl]                                      ; $4829: $86
    add [hl]                                      ; $482a: $86
    add [hl]                                      ; $482b: $86
    add [hl]                                      ; $482c: $86
    add [hl]                                      ; $482d: $86
    add [hl]                                      ; $482e: $86
    add [hl]                                      ; $482f: $86
    add [hl]                                      ; $4830: $86
    add [hl]                                      ; $4831: $86
    dec b                                         ; $4832: $05
    dec b                                         ; $4833: $05
    dec b                                         ; $4834: $05
    dec b                                         ; $4835: $05
    ld [hl], c                                    ; $4836: $71
    ld [hl], c                                    ; $4837: $71
    ld [hl], c                                    ; $4838: $71
    ld [hl], c                                    ; $4839: $71
    ld [hl], e                                    ; $483a: $73
    ld [hl], e                                    ; $483b: $73
    ld [hl], e                                    ; $483c: $73
    ld [hl], e                                    ; $483d: $73
    ld [hl], l                                    ; $483e: $75
    ld [hl], l                                    ; $483f: $75
    ld [hl], l                                    ; $4840: $75
    ld [hl], l                                    ; $4841: $75
    push hl                                       ; $4842: $e5
    push hl                                       ; $4843: $e5
    push hl                                       ; $4844: $e5
    db $e4                                        ; $4845: $e4
    add [hl]                                      ; $4846: $86
    add [hl]                                      ; $4847: $86
    add [hl]                                      ; $4848: $86
    add [hl]                                      ; $4849: $86
    add [hl]                                      ; $484a: $86
    add [hl]                                      ; $484b: $86
    add [hl]                                      ; $484c: $86
    add [hl]                                      ; $484d: $86
    add [hl]                                      ; $484e: $86
    add [hl]                                      ; $484f: $86
    add [hl]                                      ; $4850: $86
    add [hl]                                      ; $4851: $86
    dec b                                         ; $4852: $05
    dec b                                         ; $4853: $05
    dec b                                         ; $4854: $05
    dec h                                         ; $4855: $25
    ld e, $ed                                     ; $4856: $1e $ed
    xor $1e                                       ; $4858: $ee $1e
    ld l, $20                                     ; $485a: $2e $20
    dec hl                                        ; $485c: $2b
    ld l, $1e                                     ; $485d: $2e $1e
    db $ed                                        ; $485f: $ed
    xor $1e                                       ; $4860: $ee $1e
    ld l, $20                                     ; $4862: $2e $20
    dec hl                                        ; $4864: $2b
    ld l, $07                                     ; $4865: $2e $07
    rlca                                          ; $4867: $07
    rlca                                          ; $4868: $07
    rlca                                          ; $4869: $07
    rlca                                          ; $486a: $07
    rlca                                          ; $486b: $07
    rlca                                          ; $486c: $07
    rlca                                          ; $486d: $07
    rlca                                          ; $486e: $07
    rlca                                          ; $486f: $07
    rlca                                          ; $4870: $07
    rlca                                          ; $4871: $07
    rlca                                          ; $4872: $07
    rlca                                          ; $4873: $07
    rlca                                          ; $4874: $07
    rlca                                          ; $4875: $07
    db $ed                                        ; $4876: $ed
    xor $1e                                       ; $4877: $ee $1e
    dec l                                         ; $4879: $2d
    jr nz, jr_078_48a7                            ; $487a: $20 $2b

    ld l, $28                                     ; $487c: $2e $28
    db $ed                                        ; $487e: $ed
    xor $1e                                       ; $487f: $ee $1e
    db $ec                                        ; $4881: $ec
    jr nz, jr_078_48af                            ; $4882: $20 $2b

    ld d, c                                       ; $4884: $51
    ld d, d                                       ; $4885: $52
    rlca                                          ; $4886: $07
    rlca                                          ; $4887: $07
    rlca                                          ; $4888: $07
    daa                                           ; $4889: $27
    rlca                                          ; $488a: $07
    rlca                                          ; $488b: $07
    rlca                                          ; $488c: $07
    daa                                           ; $488d: $27
    rlca                                          ; $488e: $07
    rlca                                          ; $488f: $07
    rlca                                          ; $4890: $07
    daa                                           ; $4891: $27
    rlca                                          ; $4892: $07
    rlca                                          ; $4893: $07
    dec b                                         ; $4894: $05
    dec b                                         ; $4895: $05
    halt                                          ; $4896: $76
    ld [hl], a                                    ; $4897: $77
    ld [hl], a                                    ; $4898: $77
    ld [hl], a                                    ; $4899: $77
    halt                                          ; $489a: $76
    ld [hl], a                                    ; $489b: $77
    ld [hl], a                                    ; $489c: $77
    ld [hl], a                                    ; $489d: $77
    halt                                          ; $489e: $76
    ld [hl], a                                    ; $489f: $77
    ld [hl], a                                    ; $48a0: $77
    ld [hl], a                                    ; $48a1: $77
    halt                                          ; $48a2: $76
    ld [hl], a                                    ; $48a3: $77
    ld [hl], a                                    ; $48a4: $77
    ld [hl], a                                    ; $48a5: $77
    add b                                         ; $48a6: $80

jr_078_48a7:
    add b                                         ; $48a7: $80
    add b                                         ; $48a8: $80
    add b                                         ; $48a9: $80
    add b                                         ; $48aa: $80
    add b                                         ; $48ab: $80
    add b                                         ; $48ac: $80
    add b                                         ; $48ad: $80
    add b                                         ; $48ae: $80

jr_078_48af:
    add b                                         ; $48af: $80
    add b                                         ; $48b0: $80
    add b                                         ; $48b1: $80
    add b                                         ; $48b2: $80
    add b                                         ; $48b3: $80
    add b                                         ; $48b4: $80
    add b                                         ; $48b5: $80
    ld [hl], a                                    ; $48b6: $77
    ld [hl], a                                    ; $48b7: $77
    ld [hl], a                                    ; $48b8: $77
    ld [hl], a                                    ; $48b9: $77
    ld [hl], a                                    ; $48ba: $77
    ld [hl], a                                    ; $48bb: $77
    ld [hl], a                                    ; $48bc: $77
    ld [hl], a                                    ; $48bd: $77
    ld [hl], a                                    ; $48be: $77
    ld [hl], a                                    ; $48bf: $77
    ld [hl], a                                    ; $48c0: $77
    ld [hl], a                                    ; $48c1: $77
    ld [hl], a                                    ; $48c2: $77
    ld [hl], a                                    ; $48c3: $77
    ld [hl], a                                    ; $48c4: $77
    ld [hl], a                                    ; $48c5: $77
    add b                                         ; $48c6: $80
    add b                                         ; $48c7: $80
    add b                                         ; $48c8: $80
    add b                                         ; $48c9: $80
    add b                                         ; $48ca: $80
    add b                                         ; $48cb: $80
    add b                                         ; $48cc: $80
    add b                                         ; $48cd: $80
    add b                                         ; $48ce: $80
    add b                                         ; $48cf: $80
    add b                                         ; $48d0: $80
    add b                                         ; $48d1: $80
    add b                                         ; $48d2: $80
    add b                                         ; $48d3: $80
    add b                                         ; $48d4: $80
    add b                                         ; $48d5: $80
    ld e, $ed                                     ; $48d6: $1e $ed
    xor $1e                                       ; $48d8: $ee $1e
    db $fd                                        ; $48da: $fd
    cp $04                                        ; $48db: $fe $04
    db $fd                                        ; $48dd: $fd
    ld a, b                                       ; $48de: $78
    ld a, c                                       ; $48df: $79
    ld a, d                                       ; $48e0: $7a
    ld a, e                                       ; $48e1: $7b
    ld [hl], $65                                  ; $48e2: $36 $65
    ld a, h                                       ; $48e4: $7c
    ld h, h                                       ; $48e5: $64
    rlca                                          ; $48e6: $07
    rlca                                          ; $48e7: $07
    rlca                                          ; $48e8: $07
    rlca                                          ; $48e9: $07
    ld bc, $0101                                  ; $48ea: $01 $01 $01
    ld bc, $0101                                  ; $48ed: $01 $01 $01
    ld bc, $0101                                  ; $48f0: $01 $01 $01
    ld bc, $0101                                  ; $48f3: $01 $01 $01
    db $ed                                        ; $48f6: $ed
    xor $53                                       ; $48f7: $ee $53
    ld d, h                                       ; $48f9: $54
    cp $04                                        ; $48fa: $fe $04
    ld d, l                                       ; $48fc: $55
    ld d, [hl]                                    ; $48fd: $56
    ld a, b                                       ; $48fe: $78
    ld h, h                                       ; $48ff: $64
    ld d, a                                       ; $4900: $57
    ld e, b                                       ; $4901: $58
    ld a, l                                       ; $4902: $7d
    ld a, [hl]                                    ; $4903: $7e
    ld e, c                                       ; $4904: $59
    ld e, d                                       ; $4905: $5a
    rlca                                          ; $4906: $07
    rlca                                          ; $4907: $07
    dec b                                         ; $4908: $05
    dec b                                         ; $4909: $05
    ld bc, $0501                                  ; $490a: $01 $01 $05
    dec b                                         ; $490d: $05
    ld bc, $0501                                  ; $490e: $01 $01 $05
    dec b                                         ; $4911: $05
    ld bc, $0101                                  ; $4912: $01 $01 $01
    ld bc, $7f3a                                  ; $4915: $01 $3a $7f
    add b                                         ; $4918: $80
    add c                                         ; $4919: $81
    jr c, jr_078_4998                             ; $491a: $38 $7c

    ccf                                           ; $491c: $3f
    add d                                         ; $491d: $82
    inc a                                         ; $491e: $3c
    add e                                         ; $491f: $83
    ld a, b                                       ; $4920: $78
    ld h, h                                       ; $4921: $64
    ld a, h                                       ; $4922: $7c
    add h                                         ; $4923: $84
    ld [hl], $65                                  ; $4924: $36 $65
    ld bc, $0901                                  ; $4926: $01 $01 $09
    add hl, bc                                    ; $4929: $09
    ld bc, $0101                                  ; $492a: $01 $01 $01
    add hl, bc                                    ; $492d: $09
    ld bc, $0109                                  ; $492e: $01 $09 $01
    ld bc, $0901                                  ; $4931: $01 $01 $09
    ld bc, $8501                                  ; $4934: $01 $01 $85
    add [hl]                                      ; $4937: $86
    add b                                         ; $4938: $80
    add a                                         ; $4939: $87
    adc b                                         ; $493a: $88
    adc c                                         ; $493b: $89
    ccf                                           ; $493c: $3f
    ld l, e                                       ; $493d: $6b
    ld l, d                                       ; $493e: $6a
    ld a, e                                       ; $493f: $7b
    ld l, l                                       ; $4940: $6d
    ld l, [hl]                                    ; $4941: $6e
    ld a, h                                       ; $4942: $7c
    add h                                         ; $4943: $84
    ld [hl], $8a                                  ; $4944: $36 $8a
    add hl, bc                                    ; $4946: $09
    add hl, bc                                    ; $4947: $09
    add hl, bc                                    ; $4948: $09
    add hl, bc                                    ; $4949: $09
    add hl, bc                                    ; $494a: $09
    add hl, bc                                    ; $494b: $09
    ld bc, $0101                                  ; $494c: $01 $01 $01
    ld bc, $0101                                  ; $494f: $01 $01 $01
    ld bc, $0109                                  ; $4952: $01 $09 $01
    add hl, bc                                    ; $4955: $09
    ld [hl], c                                    ; $4956: $71
    adc e                                         ; $4957: $8b
    adc h                                         ; $4958: $8c
    adc l                                         ; $4959: $8d
    adc [hl]                                      ; $495a: $8e
    adc a                                         ; $495b: $8f
    ld e, a                                       ; $495c: $5f
    ld h, b                                       ; $495d: $60
    sub b                                         ; $495e: $90
    adc a                                         ; $495f: $8f
    ld h, c                                       ; $4960: $61
    ld h, d                                       ; $4961: $62
    sub b                                         ; $4962: $90
    adc a                                         ; $4963: $8f
    ld h, e                                       ; $4964: $63
    add h                                         ; $4965: $84
    add [hl]                                      ; $4966: $86
    adc [hl]                                      ; $4967: $8e
    add hl, bc                                    ; $4968: $09
    add hl, bc                                    ; $4969: $09
    adc [hl]                                      ; $496a: $8e
    adc [hl]                                      ; $496b: $8e
    ld bc, $8e01                                  ; $496c: $01 $01 $8e
    adc [hl]                                      ; $496f: $8e
    ld bc, $8e01                                  ; $4970: $01 $01 $8e
    adc [hl]                                      ; $4973: $8e
    ld bc, $7909                                  ; $4974: $01 $09 $79
    ld a, d                                       ; $4977: $7a
    ld a, [hl-]                                   ; $4978: $3a
    ld a, a                                       ; $4979: $7f
    ccf                                           ; $497a: $3f
    sub c                                         ; $497b: $91
    sub d                                         ; $497c: $92
    sub e                                         ; $497d: $93
    ld a, b                                       ; $497e: $78
    sub h                                         ; $497f: $94
    sub l                                         ; $4980: $95
    sub [hl]                                      ; $4981: $96
    ld [hl], $65                                  ; $4982: $36 $65
    ld e, c                                       ; $4984: $59
    ld e, d                                       ; $4985: $5a
    ld bc, $0101                                  ; $4986: $01 $01 $01
    ld bc, $0901                                  ; $4989: $01 $01 $09
    ld c, $0e                                     ; $498c: $0e $0e
    ld bc, $0e09                                  ; $498e: $01 $09 $0e
    ld c, $01                                     ; $4991: $0e $01
    ld bc, $0101                                  ; $4993: $01 $01 $01
    ld [hl], a                                    ; $4996: $77
    ld [hl], a                                    ; $4997: $77

jr_078_4998:
    ld [hl], a                                    ; $4998: $77
    halt                                          ; $4999: $76
    ld [hl], a                                    ; $499a: $77
    ld [hl], a                                    ; $499b: $77
    ld [hl], a                                    ; $499c: $77
    halt                                          ; $499d: $76
    ld [hl], a                                    ; $499e: $77
    ld [hl], a                                    ; $499f: $77
    ld [hl], a                                    ; $49a0: $77
    halt                                          ; $49a1: $76
    ld [hl], a                                    ; $49a2: $77
    ld [hl], a                                    ; $49a3: $77
    ld [hl], a                                    ; $49a4: $77
    halt                                          ; $49a5: $76
    add b                                         ; $49a6: $80
    add b                                         ; $49a7: $80
    add b                                         ; $49a8: $80
    and b                                         ; $49a9: $a0
    add b                                         ; $49aa: $80
    add b                                         ; $49ab: $80
    add b                                         ; $49ac: $80
    and b                                         ; $49ad: $a0
    add b                                         ; $49ae: $80
    add b                                         ; $49af: $80
    add b                                         ; $49b0: $80
    and b                                         ; $49b1: $a0
    add b                                         ; $49b2: $80
    add b                                         ; $49b3: $80
    add b                                         ; $49b4: $80
    and b                                         ; $49b5: $a0
    db $dd                                        ; $49b6: $dd
    jp c, Jump_078_6478                           ; $49b7: $da $78 $64

    ld c, [hl]                                    ; $49ba: $4e
    call c, Call_000_3532                         ; $49bb: $dc $32 $35
    ld b, d                                       ; $49be: $42
    jp c, Jump_000_3933                           ; $49bf: $da $33 $39

    ld b, d                                       ; $49c2: $42
    call c, Call_000_3d34                         ; $49c3: $dc $34 $3d
    inc bc                                        ; $49c6: $03
    inc hl                                        ; $49c7: $23
    ld bc, $0301                                  ; $49c8: $01 $01 $03
    inc hl                                        ; $49cb: $23
    ld b, $06                                     ; $49cc: $06 $06
    inc hl                                        ; $49ce: $23
    inc hl                                        ; $49cf: $23
    ld b, $06                                     ; $49d0: $06 $06
    inc hl                                        ; $49d2: $23
    inc hl                                        ; $49d3: $23
    ld bc, $6b01                                  ; $49d4: $01 $01 $6b
    ld l, h                                       ; $49d7: $6c
    inc bc                                        ; $49d8: $03
    sub a                                         ; $49d9: $97
    ld [hl-], a                                   ; $49da: $32
    dec [hl]                                      ; $49db: $35
    ld bc, $3398                                  ; $49dc: $01 $98 $33
    add hl, sp                                    ; $49df: $39
    db $fd                                        ; $49e0: $fd
    cp $34                                        ; $49e1: $fe $34
    dec a                                         ; $49e3: $3d
    ld l, c                                       ; $49e4: $69
    ld a, $01                                     ; $49e5: $3e $01
    ld bc, $0a02                                  ; $49e7: $01 $02 $0a
    ld b, $06                                     ; $49ea: $06 $06
    ld [bc], a                                    ; $49ec: $02
    ld a, [bc]                                    ; $49ed: $0a
    ld b, $06                                     ; $49ee: $06 $06
    ld bc, $0101                                  ; $49f0: $01 $01 $01
    ld bc, $0101                                  ; $49f3: $01 $01 $01
    sbc c                                         ; $49f6: $99
    sbc c                                         ; $49f7: $99
    sbc c                                         ; $49f8: $99
    sub a                                         ; $49f9: $97
    sbc d                                         ; $49fa: $9a
    sbc b                                         ; $49fb: $98
    sbc d                                         ; $49fc: $9a
    sbc b                                         ; $49fd: $98
    inc b                                         ; $49fe: $04
    db $fd                                        ; $49ff: $fd
    cp $04                                        ; $4a00: $fe $04
    ccf                                           ; $4a02: $3f
    ld [hl-], a                                   ; $4a03: $32
    dec [hl]                                      ; $4a04: $35
    ld a, $0a                                     ; $4a05: $3e $0a
    ld a, [bc]                                    ; $4a07: $0a
    ld a, [bc]                                    ; $4a08: $0a
    ld a, [hl+]                                   ; $4a09: $2a
    ld a, [bc]                                    ; $4a0a: $0a
    ld a, [bc]                                    ; $4a0b: $0a
    ld a, [bc]                                    ; $4a0c: $0a
    ld a, [bc]                                    ; $4a0d: $0a
    ld bc, $0101                                  ; $4a0e: $01 $01 $01
    ld bc, $0601                                  ; $4a11: $01 $01 $06
    ld b, $01                                     ; $4a14: $06 $01
    ld [bc], a                                    ; $4a16: $02
    ld a, [de]                                    ; $4a17: $1a
    add hl, de                                    ; $4a18: $19
    sbc e                                         ; $4a19: $9b
    ld [bc], a                                    ; $4a1a: $02
    add hl, de                                    ; $4a1b: $19
    ld a, [de]                                    ; $4a1c: $1a
    add hl, de                                    ; $4a1d: $19
    db $fd                                        ; $4a1e: $fd
    cp $04                                        ; $4a1f: $fe $04
    db $fd                                        ; $4a21: $fd
    ld l, e                                       ; $4a22: $6b
    ld l, h                                       ; $4a23: $6c
    ld l, c                                       ; $4a24: $69
    ld a, $02                                     ; $4a25: $3e $02
    ld bc, $0901                                  ; $4a27: $01 $01 $09
    ld [bc], a                                    ; $4a2a: $02
    ld bc, $0101                                  ; $4a2b: $01 $01 $01
    ld bc, $0101                                  ; $4a2e: $01 $01 $01
    ld bc, $0101                                  ; $4a31: $01 $01 $01
    ld bc, $9c01                                  ; $4a34: $01 $01 $9c
    jp c, Jump_078_7b89                           ; $4a37: $da $89 $7b

    rst $18                                       ; $4a3a: $df
    call c, $847c                                 ; $4a3b: $dc $7c $84
    db $db                                        ; $4a3e: $db
    jp c, Jump_000_3532                           ; $4a3f: $da $32 $35

    add sp, -$24                                  ; $4a42: $e8 $dc
    inc sp                                        ; $4a44: $33
    add hl, sp                                    ; $4a45: $39
    dec bc                                        ; $4a46: $0b
    inc hl                                        ; $4a47: $23
    add hl, bc                                    ; $4a48: $09
    ld bc, $2303                                  ; $4a49: $01 $03 $23
    ld bc, $0309                                  ; $4a4c: $01 $09 $03
    inc hl                                        ; $4a4f: $23
    ld b, $06                                     ; $4a50: $06 $06
    inc bc                                        ; $4a52: $03
    inc hl                                        ; $4a53: $23
    ld b, $06                                     ; $4a54: $06 $06
    sbc l                                         ; $4a56: $9d
    ld e, e                                       ; $4a57: $5b
    ld e, h                                       ; $4a58: $5c
    ld a, l                                       ; $4a59: $7d
    sbc [hl]                                      ; $4a5a: $9e
    ld e, l                                       ; $4a5b: $5d
    ld e, [hl]                                    ; $4a5c: $5e
    add l                                         ; $4a5d: $85
    ld h, [hl]                                    ; $4a5e: $66
    ld h, a                                       ; $4a5f: $67
    ld l, b                                       ; $4a60: $68
    adc b                                         ; $4a61: $88
    ld l, c                                       ; $4a62: $69
    ld a, $3f                                     ; $4a63: $3e $3f
    ld b, b                                       ; $4a65: $40
    add hl, bc                                    ; $4a66: $09
    ld bc, $0101                                  ; $4a67: $01 $01 $01
    add hl, bc                                    ; $4a6a: $09
    ld bc, $0901                                  ; $4a6b: $01 $01 $09
    ld bc, $0101                                  ; $4a6e: $01 $01 $01
    add hl, bc                                    ; $4a71: $09
    ld bc, $0101                                  ; $4a72: $01 $01 $01
    ld bc, $337e                                  ; $4a75: $01 $7e $33
    add hl, sp                                    ; $4a78: $39
    ld l, l                                       ; $4a79: $6d
    add [hl]                                      ; $4a7a: $86
    inc [hl]                                      ; $4a7b: $34
    dec a                                         ; $4a7c: $3d
    add h                                         ; $4a7d: $84
    adc c                                         ; $4a7e: $89
    scf                                           ; $4a7f: $37
    jr c, jr_078_4afe                             ; $4a80: $38 $7c

    ld l, c                                       ; $4a82: $69
    dec sp                                        ; $4a83: $3b
    inc a                                         ; $4a84: $3c
    add e                                         ; $4a85: $83
    ld bc, $0606                                  ; $4a86: $01 $06 $06
    ld bc, $0109                                  ; $4a89: $01 $09 $01
    ld bc, $0909                                  ; $4a8c: $01 $09 $09
    ld bc, $0101                                  ; $4a8f: $01 $01 $01
    ld bc, $0101                                  ; $4a92: $01 $01 $01
    add hl, bc                                    ; $4a95: $09
    ld l, [hl]                                    ; $4a96: $6e
    ld l, a                                       ; $4a97: $6f
    ld l, d                                       ; $4a98: $6a
    ld a, e                                       ; $4a99: $7b
    adc d                                         ; $4a9a: $8a
    sbc a                                         ; $4a9b: $9f
    ld a, h                                       ; $4a9c: $7c
    add h                                         ; $4a9d: $84
    ld a, [hl-]                                   ; $4a9e: $3a
    ld a, a                                       ; $4a9f: $7f
    add b                                         ; $4aa0: $80
    add a                                         ; $4aa1: $87
    ld l, c                                       ; $4aa2: $69
    ld a, $3f                                     ; $4aa3: $3e $3f
    ld b, b                                       ; $4aa5: $40
    ld bc, $0101                                  ; $4aa6: $01 $01 $01
    ld bc, $0909                                  ; $4aa9: $01 $09 $09
    ld bc, $0109                                  ; $4aac: $01 $09 $01
    ld bc, $0909                                  ; $4aaf: $01 $09 $09
    ld bc, $0101                                  ; $4ab2: $01 $01 $01
    ld bc, $dcdd                                  ; $4ab5: $01 $dd $dc
    inc [hl]                                      ; $4ab8: $34
    dec a                                         ; $4ab9: $3d
    rst $18                                       ; $4aba: $df
    jp c, $605f                                   ; $4abb: $da $5f $60

    db $db                                        ; $4abe: $db
    call c, $6261                                 ; $4abf: $dc $61 $62
    ld [hl], c                                    ; $4ac2: $71
    ld [hl], c                                    ; $4ac3: $71
    ld [hl], c                                    ; $4ac4: $71
    ld [hl], c                                    ; $4ac5: $71
    inc bc                                        ; $4ac6: $03
    inc hl                                        ; $4ac7: $23
    ld bc, $0301                                  ; $4ac8: $01 $01 $03
    inc hl                                        ; $4acb: $23
    ld bc, $0301                                  ; $4acc: $01 $01 $03
    inc hl                                        ; $4acf: $23
    ld bc, $8201                                  ; $4ad0: $01 $01 $82
    add d                                         ; $4ad3: $82
    add d                                         ; $4ad4: $82
    add d                                         ; $4ad5: $82
    ld l, d                                       ; $4ad6: $6a
    ld [hl-], a                                   ; $4ad7: $32
    dec [hl]                                      ; $4ad8: $35
    ld h, h                                       ; $4ad9: $64
    ld a, h                                       ; $4ada: $7c
    inc sp                                        ; $4adb: $33
    add hl, sp                                    ; $4adc: $39
    and b                                         ; $4add: $a0
    add b                                         ; $4ade: $80
    rst $28                                       ; $4adf: $ef
    rst $28                                       ; $4ae0: $ef
    rst $28                                       ; $4ae1: $ef
    adc e                                         ; $4ae2: $8b
    ld c, a                                       ; $4ae3: $4f
    ld d, b                                       ; $4ae4: $50
    ld c, a                                       ; $4ae5: $4f
    ld bc, $0606                                  ; $4ae6: $01 $06 $06
    ld bc, $0601                                  ; $4ae9: $01 $01 $06
    ld b, $09                                     ; $4aec: $06 $09
    add hl, bc                                    ; $4aee: $09
    add a                                         ; $4aef: $87
    add a                                         ; $4af0: $87
    add a                                         ; $4af1: $87
    adc d                                         ; $4af2: $8a
    add a                                         ; $4af3: $87
    add a                                         ; $4af4: $87
    add a                                         ; $4af5: $87
    ld l, d                                       ; $4af6: $6a
    ld a, e                                       ; $4af7: $7b
    ld a, b                                       ; $4af8: $78
    and c                                         ; $4af9: $a1
    and d                                         ; $4afa: $a2
    add h                                         ; $4afb: $84
    ld [hl], $a3                                  ; $4afc: $36 $a3

jr_078_4afe:
    rst $28                                       ; $4afe: $ef
    rst $28                                       ; $4aff: $ef
    rst $28                                       ; $4b00: $ef
    rst $28                                       ; $4b01: $ef
    ld d, b                                       ; $4b02: $50
    ld c, a                                       ; $4b03: $4f
    ld d, b                                       ; $4b04: $50
    ld c, a                                       ; $4b05: $4f
    ld bc, $0101                                  ; $4b06: $01 $01 $01
    add hl, bc                                    ; $4b09: $09
    add hl, bc                                    ; $4b0a: $09
    add hl, bc                                    ; $4b0b: $09
    ld bc, $8709                                  ; $4b0c: $01 $09 $87
    add a                                         ; $4b0f: $87
    add a                                         ; $4b10: $87
    add a                                         ; $4b11: $87
    add a                                         ; $4b12: $87
    add a                                         ; $4b13: $87
    add a                                         ; $4b14: $87
    add a                                         ; $4b15: $87
    adc h                                         ; $4b16: $8c
    adc l                                         ; $4b17: $8d
    ld a, b                                       ; $4b18: $78
    ld h, h                                       ; $4b19: $64
    ld e, a                                       ; $4b1a: $5f
    ld h, b                                       ; $4b1b: $60
    ld [hl], $65                                  ; $4b1c: $36 $65
    rst $28                                       ; $4b1e: $ef
    rst $28                                       ; $4b1f: $ef
    rst $28                                       ; $4b20: $ef
    rst $28                                       ; $4b21: $ef
    ld d, b                                       ; $4b22: $50
    ld c, a                                       ; $4b23: $4f
    ld d, b                                       ; $4b24: $50
    ld c, a                                       ; $4b25: $4f
    add hl, bc                                    ; $4b26: $09
    add hl, bc                                    ; $4b27: $09
    ld bc, $0101                                  ; $4b28: $01 $01 $01
    ld bc, $0101                                  ; $4b2b: $01 $01 $01
    add a                                         ; $4b2e: $87
    add a                                         ; $4b2f: $87
    add a                                         ; $4b30: $87
    add a                                         ; $4b31: $87
    add a                                         ; $4b32: $87
    add a                                         ; $4b33: $87
    add a                                         ; $4b34: $87
    add a                                         ; $4b35: $87
    ld [hl], e                                    ; $4b36: $73
    ld [hl], e                                    ; $4b37: $73
    ld [hl], e                                    ; $4b38: $73
    adc [hl]                                      ; $4b39: $8e
    ld [hl], l                                    ; $4b3a: $75
    ld [hl], l                                    ; $4b3b: $75
    ld [hl], l                                    ; $4b3c: $75
    sub b                                         ; $4b3d: $90
    ld [hl], l                                    ; $4b3e: $75
    ld [hl], l                                    ; $4b3f: $75
    ld [hl], l                                    ; $4b40: $75
    sub b                                         ; $4b41: $90
    ld [hl], l                                    ; $4b42: $75
    ld [hl], l                                    ; $4b43: $75
    ld [hl], l                                    ; $4b44: $75
    sub b                                         ; $4b45: $90
    add d                                         ; $4b46: $82
    add d                                         ; $4b47: $82
    add d                                         ; $4b48: $82
    adc d                                         ; $4b49: $8a
    add d                                         ; $4b4a: $82
    add d                                         ; $4b4b: $82
    add d                                         ; $4b4c: $82
    adc d                                         ; $4b4d: $8a
    add d                                         ; $4b4e: $82
    add d                                         ; $4b4f: $82
    add d                                         ; $4b50: $82
    adc d                                         ; $4b51: $8a
    add d                                         ; $4b52: $82
    add d                                         ; $4b53: $82
    add d                                         ; $4b54: $82
    adc d                                         ; $4b55: $8a
    adc a                                         ; $4b56: $8f
    db $e3                                        ; $4b57: $e3
    ld [c], a                                     ; $4b58: $e2
    pop hl                                        ; $4b59: $e1
    adc a                                         ; $4b5a: $8f
    ldh [$e1], a                                  ; $4b5b: $e0 $e1
    ld [c], a                                     ; $4b5d: $e2
    adc a                                         ; $4b5e: $8f
    db $e3                                        ; $4b5f: $e3
    ld [c], a                                     ; $4b60: $e2
    pop hl                                        ; $4b61: $e1
    adc a                                         ; $4b62: $8f
    ldh [$e1], a                                  ; $4b63: $e0 $e1
    ld [c], a                                     ; $4b65: $e2
    adc d                                         ; $4b66: $8a
    add a                                         ; $4b67: $87
    add a                                         ; $4b68: $87
    add a                                         ; $4b69: $87
    adc d                                         ; $4b6a: $8a
    add a                                         ; $4b6b: $87
    add a                                         ; $4b6c: $87
    add a                                         ; $4b6d: $87
    adc d                                         ; $4b6e: $8a
    add a                                         ; $4b6f: $87
    add a                                         ; $4b70: $87
    add a                                         ; $4b71: $87
    adc d                                         ; $4b72: $8a
    add a                                         ; $4b73: $87
    add a                                         ; $4b74: $87
    add a                                         ; $4b75: $87
    ld [c], a                                     ; $4b76: $e2
    pop hl                                        ; $4b77: $e1
    ld [c], a                                     ; $4b78: $e2
    pop hl                                        ; $4b79: $e1
    pop hl                                        ; $4b7a: $e1
    ld [c], a                                     ; $4b7b: $e2
    pop hl                                        ; $4b7c: $e1
    ld [c], a                                     ; $4b7d: $e2
    ld [c], a                                     ; $4b7e: $e2
    pop hl                                        ; $4b7f: $e1
    ld [c], a                                     ; $4b80: $e2
    pop hl                                        ; $4b81: $e1
    pop hl                                        ; $4b82: $e1
    ld [c], a                                     ; $4b83: $e2
    pop hl                                        ; $4b84: $e1
    ld [c], a                                     ; $4b85: $e2
    add a                                         ; $4b86: $87
    add a                                         ; $4b87: $87
    add a                                         ; $4b88: $87
    add a                                         ; $4b89: $87
    add a                                         ; $4b8a: $87
    add a                                         ; $4b8b: $87
    add a                                         ; $4b8c: $87
    add a                                         ; $4b8d: $87
    add a                                         ; $4b8e: $87
    add a                                         ; $4b8f: $87
    add a                                         ; $4b90: $87
    add a                                         ; $4b91: $87
    add a                                         ; $4b92: $87
    add a                                         ; $4b93: $87
    add a                                         ; $4b94: $87
    add a                                         ; $4b95: $87
    ld [bc], a                                    ; $4b96: $02
    ld sp, hl                                     ; $4b97: $f9
    inc bc                                        ; $4b98: $03
    ld h, c                                       ; $4b99: $61
    ld [bc], a                                    ; $4b9a: $02
    ld sp, $6301                                  ; $4b9b: $31 $01 $63
    cp $04                                        ; $4b9e: $fe $04
    db $fd                                        ; $4ba0: $fd
    ld a, a                                       ; $4ba1: $7f
    ccf                                           ; $4ba2: $3f
    ld b, b                                       ; $4ba3: $40
    ld l, c                                       ; $4ba4: $69
    ld a, $22                                     ; $4ba5: $3e $22
    ld [bc], a                                    ; $4ba7: $02
    ld [hl+], a                                   ; $4ba8: $22
    ld bc, $0222                                  ; $4ba9: $01 $22 $02
    ld [hl+], a                                   ; $4bac: $22
    ld bc, $0101                                  ; $4bad: $01 $01 $01
    ld bc, $0101                                  ; $4bb0: $01 $01 $01
    ld bc, $0101                                  ; $4bb3: $01 $01 $01
    ld h, d                                       ; $4bb6: $62
    ld a, e                                       ; $4bb7: $7b
    ld a, b                                       ; $4bb8: $78
    ld h, h                                       ; $4bb9: $64
    sub c                                         ; $4bba: $91
    and h                                         ; $4bbb: $a4
    and b                                         ; $4bbc: $a0
    and d                                         ; $4bbd: $a2
    sub h                                         ; $4bbe: $94
    and l                                         ; $4bbf: $a5
    and [hl]                                      ; $4bc0: $a6
    and a                                         ; $4bc1: $a7
    ccf                                           ; $4bc2: $3f
    xor b                                         ; $4bc3: $a8
    xor c                                         ; $4bc4: $a9
    xor d                                         ; $4bc5: $aa
    ld bc, $0101                                  ; $4bc6: $01 $01 $01
    ld bc, $0909                                  ; $4bc9: $01 $09 $09
    add hl, bc                                    ; $4bcc: $09
    add hl, bc                                    ; $4bcd: $09
    add hl, bc                                    ; $4bce: $09
    add hl, bc                                    ; $4bcf: $09
    add hl, bc                                    ; $4bd0: $09
    add hl, bc                                    ; $4bd1: $09
    ld bc, $0909                                  ; $4bd2: $01 $09 $09
    add hl, bc                                    ; $4bd5: $09
    ld h, h                                       ; $4bd6: $64
    ld a, l                                       ; $4bd7: $7d
    call c, $81ab                                 ; $4bd8: $dc $ab $81
    add l                                         ; $4bdb: $85
    jp c, $8242                                   ; $4bdc: $da $42 $82

    adc b                                         ; $4bdf: $88
    jp c, $8442                                   ; $4be0: $da $42 $84

    sbc l                                         ; $4be3: $9d
    call c, $01ac                                 ; $4be4: $dc $ac $01
    ld bc, $0b03                                  ; $4be7: $01 $03 $0b
    add hl, bc                                    ; $4bea: $09
    add hl, bc                                    ; $4beb: $09
    inc bc                                        ; $4bec: $03
    inc bc                                        ; $4bed: $03
    add hl, bc                                    ; $4bee: $09
    add hl, bc                                    ; $4bef: $09
    inc bc                                        ; $4bf0: $03
    inc bc                                        ; $4bf1: $03
    add hl, bc                                    ; $4bf2: $09
    add hl, bc                                    ; $4bf3: $09
    inc bc                                        ; $4bf4: $03
    dec bc                                        ; $4bf5: $0b
    ld c, h                                       ; $4bf6: $4c
    ld c, h                                       ; $4bf7: $4c
    xor l                                         ; $4bf8: $ad
    ld c, c                                       ; $4bf9: $49
    ld b, a                                       ; $4bfa: $47
    ld c, b                                       ; $4bfb: $48
    xor [hl]                                      ; $4bfc: $ae
    sbc $49                                       ; $4bfd: $de $49
    ld c, d                                       ; $4bff: $4a
    ld b, d                                       ; $4c00: $42
    rst $18                                       ; $4c01: $df
    ld b, h                                       ; $4c02: $44
    ld b, l                                       ; $4c03: $45
    xor a                                         ; $4c04: $af
    or b                                          ; $4c05: $b0
    inc bc                                        ; $4c06: $03
    inc bc                                        ; $4c07: $03
    dec bc                                        ; $4c08: $0b
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    dec bc                                        ; $4c0c: $0b
    inc bc                                        ; $4c0d: $03
    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    inc hl                                        ; $4c10: $23
    inc bc                                        ; $4c11: $03
    inc bc                                        ; $4c12: $03
    inc bc                                        ; $4c13: $03
    dec bc                                        ; $4c14: $0b
    dec bc                                        ; $4c15: $0b
    ld a, c                                       ; $4c16: $79
    ld a, d                                       ; $4c17: $7a
    ld l, d                                       ; $4c18: $6a
    ld a, e                                       ; $4c19: $7b
    sbc l                                         ; $4c1a: $9d
    ld e, e                                       ; $4c1b: $5b
    ld e, h                                       ; $4c1c: $5c
    add h                                         ; $4c1d: $84
    sbc [hl]                                      ; $4c1e: $9e
    ld e, l                                       ; $4c1f: $5d
    ld e, [hl]                                    ; $4c20: $5e

Jump_078_4c21:
    add a                                         ; $4c21: $87
    ld h, [hl]                                    ; $4c22: $66
    ld h, a                                       ; $4c23: $67
    ld l, b                                       ; $4c24: $68
    ld b, b                                       ; $4c25: $40
    ld bc, $0101                                  ; $4c26: $01 $01 $01
    ld bc, $0109                                  ; $4c29: $01 $09 $01
    ld bc, $0909                                  ; $4c2c: $01 $09 $09
    ld bc, $0901                                  ; $4c2f: $01 $01 $09
    ld bc, $0101                                  ; $4c32: $01 $01 $01
    ld bc, $6478                                  ; $4c35: $01 $78 $64
    ld l, d                                       ; $4c38: $6a
    ld a, e                                       ; $4c39: $7b
    ld [hl], $65                                  ; $4c3a: $36 $65
    ld a, h                                       ; $4c3c: $7c
    add h                                         ; $4c3d: $84
    ld a, [hl-]                                   ; $4c3e: $3a
    ld a, a                                       ; $4c3f: $7f
    ld a, c                                       ; $4c40: $79
    ld a, d                                       ; $4c41: $7a
    ld l, c                                       ; $4c42: $69
    ld a, $3f                                     ; $4c43: $3e $3f
    ld b, b                                       ; $4c45: $40
    ld bc, $0101                                  ; $4c46: $01 $01 $01
    ld bc, $0101                                  ; $4c49: $01 $01 $01
    ld bc, $0109                                  ; $4c4c: $01 $09 $01
    ld bc, $0101                                  ; $4c4f: $01 $01 $01
    ld bc, $0101                                  ; $4c52: $01 $01 $01
    ld bc, $9e87                                  ; $4c55: $01 $87 $9e
    jp c, $84b1                                   ; $4c58: $da $b1 $84

    or d                                          ; $4c5b: $b2
    call c, Call_000_3ab1                         ; $4c5c: $dc $b1 $3a
    ld a, a                                       ; $4c5f: $7f
    call c, Call_078_69b1                         ; $4c60: $dc $b1 $69
    ld a, $da                                     ; $4c63: $3e $da
    or c                                          ; $4c65: $b1
    add hl, bc                                    ; $4c66: $09
    add hl, bc                                    ; $4c67: $09
    inc bc                                        ; $4c68: $03
    dec bc                                        ; $4c69: $0b
    add hl, bc                                    ; $4c6a: $09
    add hl, bc                                    ; $4c6b: $09
    inc bc                                        ; $4c6c: $03
    dec bc                                        ; $4c6d: $0b
    ld bc, $0301                                  ; $4c6e: $01 $01 $03
    ld c, e                                       ; $4c71: $4b
    ld bc, $0301                                  ; $4c72: $01 $01 $03
    ld c, e                                       ; $4c75: $4b
    rla                                           ; $4c76: $17
    jr jr_078_4c91                                ; $4c77: $18 $18

    or c                                          ; $4c79: $b1
    add hl, de                                    ; $4c7a: $19
    ld a, [de]                                    ; $4c7b: $1a
    ld a, [de]                                    ; $4c7c: $1a
    or c                                          ; $4c7d: $b1
    ld a, [de]                                    ; $4c7e: $1a
    add hl, de                                    ; $4c7f: $19
    sbc e                                         ; $4c80: $9b
    or c                                          ; $4c81: $b1
    add hl, de                                    ; $4c82: $19
    ld a, [de]                                    ; $4c83: $1a
    add hl, de                                    ; $4c84: $19
    or c                                          ; $4c85: $b1
    ld bc, $0101                                  ; $4c86: $01 $01 $01
    dec hl                                        ; $4c89: $2b
    ld bc, $0101                                  ; $4c8a: $01 $01 $01
    dec hl                                        ; $4c8d: $2b
    ld bc, $0901                                  ; $4c8e: $01 $01 $09

jr_078_4c91:
    dec hl                                        ; $4c91: $2b
    ld bc, $0101                                  ; $4c92: $01 $01 $01
    dec hl                                        ; $4c95: $2b
    ld l, d                                       ; $4c96: $6a
    ld a, e                                       ; $4c97: $7b
    ld a, b                                       ; $4c98: $78
    ld h, h                                       ; $4c99: $64
    ld a, h                                       ; $4c9a: $7c
    add h                                         ; $4c9b: $84
    ld a, c                                       ; $4c9c: $79
    ld a, d                                       ; $4c9d: $7a
    rst $28                                       ; $4c9e: $ef
    rst $28                                       ; $4c9f: $ef
    ld a, [hl-]                                   ; $4ca0: $3a
    ld a, a                                       ; $4ca1: $7f
    ld d, b                                       ; $4ca2: $50
    ld c, a                                       ; $4ca3: $4f
    ld l, c                                       ; $4ca4: $69
    ld a, $01                                     ; $4ca5: $3e $01
    ld bc, $0101                                  ; $4ca7: $01 $01 $01
    ld bc, $0109                                  ; $4caa: $01 $09 $01
    ld bc, $8787                                  ; $4cad: $01 $87 $87
    ld bc, $8701                                  ; $4cb0: $01 $01 $87
    add a                                         ; $4cb3: $87
    ld bc, $6a01                                  ; $4cb4: $01 $01 $6a
    ld h, h                                       ; $4cb7: $64
    ld a, l                                       ; $4cb8: $7d
    ld a, [hl]                                    ; $4cb9: $7e
    ld a, h                                       ; $4cba: $7c
    add c                                         ; $4cbb: $81
    add l                                         ; $4cbc: $85
    add [hl]                                      ; $4cbd: $86
    add b                                         ; $4cbe: $80
    add d                                         ; $4cbf: $82
    adc b                                         ; $4cc0: $88
    adc c                                         ; $4cc1: $89
    sbc l                                         ; $4cc2: $9d
    ld e, e                                       ; $4cc3: $5b
    ld e, h                                       ; $4cc4: $5c
    ld l, l                                       ; $4cc5: $6d
    ld bc, $0101                                  ; $4cc6: $01 $01 $01
    ld bc, $0901                                  ; $4cc9: $01 $01 $09
    add hl, bc                                    ; $4ccc: $09
    add hl, bc                                    ; $4ccd: $09
    add hl, bc                                    ; $4cce: $09
    add hl, bc                                    ; $4ccf: $09
    add hl, bc                                    ; $4cd0: $09
    add hl, bc                                    ; $4cd1: $09
    add hl, bc                                    ; $4cd2: $09
    ld bc, $0101                                  ; $4cd3: $01 $01 $01
    ld l, d                                       ; $4cd6: $6a
    ld a, e                                       ; $4cd7: $7b
    db $fd                                        ; $4cd8: $fd
    cp $7c                                        ; $4cd9: $fe $7c
    add h                                         ; $4cdb: $84
    ld [hl], $65                                  ; $4cdc: $36 $65
    ld l, e                                       ; $4cde: $6b
    ld l, h                                       ; $4cdf: $6c
    ld a, [hl-]                                   ; $4ce0: $3a
    ld a, a                                       ; $4ce1: $7f
    ld l, [hl]                                    ; $4ce2: $6e
    ld l, a                                       ; $4ce3: $6f
    ld l, c                                       ; $4ce4: $69
    ld a, $01                                     ; $4ce5: $3e $01
    ld bc, $0101                                  ; $4ce7: $01 $01 $01
    ld bc, $0109                                  ; $4cea: $01 $09 $01
    ld bc, $0101                                  ; $4ced: $01 $01 $01
    ld bc, $0101                                  ; $4cf0: $01 $01 $01
    ld bc, $0101                                  ; $4cf3: $01 $01 $01
    inc b                                         ; $4cf6: $04
    db $fd                                        ; $4cf7: $fd
    cp $04                                        ; $4cf8: $fe $04
    ld a, h                                       ; $4cfa: $7c
    add h                                         ; $4cfb: $84
    ld [hl], $91                                  ; $4cfc: $36 $91
    ld a, c                                       ; $4cfe: $79
    ld a, d                                       ; $4cff: $7a
    ld a, [hl-]                                   ; $4d00: $3a
    sub h                                         ; $4d01: $94
    ccf                                           ; $4d02: $3f
    ld b, b                                       ; $4d03: $40
    ld l, c                                       ; $4d04: $69
    ld a, $01                                     ; $4d05: $3e $01
    ld bc, $0101                                  ; $4d07: $01 $01 $01
    ld bc, $0109                                  ; $4d0a: $01 $09 $01
    add hl, bc                                    ; $4d0d: $09
    ld bc, $0101                                  ; $4d0e: $01 $01 $01
    add hl, bc                                    ; $4d11: $09
    ld bc, $0101                                  ; $4d12: $01 $01 $01
    ld bc, $1ce2                                  ; $4d15: $01 $e2 $1c
    ld l, h                                       ; $4d18: $6c
    ld a, e                                       ; $4d19: $7b
    pop hl                                        ; $4d1a: $e1
    dec de                                        ; $4d1b: $1b
    ld l, a                                       ; $4d1c: $6f
    add h                                         ; $4d1d: $84
    ld [c], a                                     ; $4d1e: $e2
    inc e                                         ; $4d1f: $1c
    rst $28                                       ; $4d20: $ef
    rst $28                                       ; $4d21: $ef
    pop hl                                        ; $4d22: $e1
    dec de                                        ; $4d23: $1b
    ldh a, [$f0]                                  ; $4d24: $f0 $f0
    add a                                         ; $4d26: $87
    add a                                         ; $4d27: $87
    ld bc, $8701                                  ; $4d28: $01 $01 $87
    add a                                         ; $4d2b: $87
    ld bc, $8709                                  ; $4d2c: $01 $09 $87
    add a                                         ; $4d2f: $87
    add h                                         ; $4d30: $84
    add h                                         ; $4d31: $84
    add a                                         ; $4d32: $87
    add a                                         ; $4d33: $87
    add h                                         ; $4d34: $84
    add h                                         ; $4d35: $84
    sbc [hl]                                      ; $4d36: $9e
    ld e, l                                       ; $4d37: $5d
    ld e, [hl]                                    ; $4d38: $5e
    ld a, e                                       ; $4d39: $7b
    ld h, [hl]                                    ; $4d3a: $66
    ld h, a                                       ; $4d3b: $67
    ld l, b                                       ; $4d3c: $68
    add h                                         ; $4d3d: $84
    rst $28                                       ; $4d3e: $ef
    rst $28                                       ; $4d3f: $ef
    rst $28                                       ; $4d40: $ef
    rst $28                                       ; $4d41: $ef
    ldh a, [$f0]                                  ; $4d42: $f0 $f0
    ldh a, [$f0]                                  ; $4d44: $f0 $f0
    add hl, bc                                    ; $4d46: $09
    ld bc, $0101                                  ; $4d47: $01 $01 $01
    ld bc, $0101                                  ; $4d4a: $01 $01 $01
    add hl, bc                                    ; $4d4d: $09
    add h                                         ; $4d4e: $84
    add h                                         ; $4d4f: $84
    add h                                         ; $4d50: $84
    add h                                         ; $4d51: $84
    add h                                         ; $4d52: $84
    add h                                         ; $4d53: $84
    add h                                         ; $4d54: $84
    add h                                         ; $4d55: $84
    adc d                                         ; $4d56: $8a
    sbc a                                         ; $4d57: $9f
    ld l, d                                       ; $4d58: $6a
    ld a, e                                       ; $4d59: $7b
    ld [hl], $37                                  ; $4d5a: $36 $37
    jr c, jr_078_4dda                             ; $4d5c: $38 $7c

    rst $28                                       ; $4d5e: $ef
    rst $28                                       ; $4d5f: $ef
    rst $28                                       ; $4d60: $ef
    rst $28                                       ; $4d61: $ef
    ldh a, [$f0]                                  ; $4d62: $f0 $f0
    ldh a, [$f0]                                  ; $4d64: $f0 $f0
    add hl, bc                                    ; $4d66: $09
    add hl, bc                                    ; $4d67: $09
    ld bc, $0101                                  ; $4d68: $01 $01 $01
    ld bc, $0101                                  ; $4d6b: $01 $01 $01
    add h                                         ; $4d6e: $84
    add h                                         ; $4d6f: $84
    add h                                         ; $4d70: $84
    add h                                         ; $4d71: $84
    add h                                         ; $4d72: $84
    add h                                         ; $4d73: $84
    add h                                         ; $4d74: $84
    add h                                         ; $4d75: $84
    ld a, b                                       ; $4d76: $78
    ld h, h                                       ; $4d77: $64
    ld l, d                                       ; $4d78: $6a
    ld a, e                                       ; $4d79: $7b
    ld [hl], $65                                  ; $4d7a: $36 $65
    ld a, h                                       ; $4d7c: $7c
    and c                                         ; $4d7d: $a1
    rst $28                                       ; $4d7e: $ef
    rst $28                                       ; $4d7f: $ef
    rst $28                                       ; $4d80: $ef
    rst $28                                       ; $4d81: $ef
    ldh a, [$f0]                                  ; $4d82: $f0 $f0
    ldh a, [$f0]                                  ; $4d84: $f0 $f0
    ld bc, $0101                                  ; $4d86: $01 $01 $01
    ld bc, $0101                                  ; $4d89: $01 $01 $01
    ld bc, $8409                                  ; $4d8c: $01 $09 $84
    add h                                         ; $4d8f: $84
    add h                                         ; $4d90: $84
    add h                                         ; $4d91: $84
    add h                                         ; $4d92: $84
    add h                                         ; $4d93: $84
    add h                                         ; $4d94: $84
    add h                                         ; $4d95: $84
    ld c, d                                       ; $4d96: $4a
    ld b, d                                       ; $4d97: $42
    call c, $d92a                                 ; $4d98: $dc $2a $d9
    sbc h                                         ; $4d9b: $9c
    jp c, $b32b                                   ; $4d9c: $da $2b $b3

    or h                                          ; $4d9f: $b4
    or l                                          ; $4da0: $b5
    db $ed                                        ; $4da1: $ed
    or [hl]                                       ; $4da2: $b6
    or a                                          ; $4da3: $b7
    cp b                                          ; $4da4: $b8
    db $fd                                        ; $4da5: $fd
    nop                                           ; $4da6: $00
    inc hl                                        ; $4da7: $23
    inc hl                                        ; $4da8: $23
    inc bc                                        ; $4da9: $03
    inc bc                                        ; $4daa: $03
    dec bc                                        ; $4dab: $0b
    inc hl                                        ; $4dac: $23
    inc bc                                        ; $4dad: $03
    add hl, bc                                    ; $4dae: $09
    add hl, bc                                    ; $4daf: $09
    add hl, bc                                    ; $4db0: $09
    inc bc                                        ; $4db1: $03
    add hl, bc                                    ; $4db2: $09
    add hl, bc                                    ; $4db3: $09
    add hl, bc                                    ; $4db4: $09
    ld bc, $0e0d                                  ; $4db5: $01 $0d $0e
    rrca                                          ; $4db8: $0f
    dec l                                         ; $4db9: $2d
    dec e                                         ; $4dba: $1d
    ld [$2eeb], a                                 ; $4dbb: $ea $eb $2e
    xor $1e                                       ; $4dbe: $ee $1e
    db $ed                                        ; $4dc0: $ed
    xor $fe                                       ; $4dc1: $ee $fe
    inc b                                         ; $4dc3: $04
    db $fd                                        ; $4dc4: $fd
    cp $00                                        ; $4dc5: $fe $00
    nop                                           ; $4dc7: $00
    nop                                           ; $4dc8: $00
    inc bc                                        ; $4dc9: $03
    inc bc                                        ; $4dca: $03
    inc bc                                        ; $4dcb: $03
    inc bc                                        ; $4dcc: $03
    inc bc                                        ; $4dcd: $03
    inc bc                                        ; $4dce: $03
    inc bc                                        ; $4dcf: $03
    inc bc                                        ; $4dd0: $03
    inc bc                                        ; $4dd1: $03
    ld bc, $0101                                  ; $4dd2: $01 $01 $01
    ld bc, $efef                                  ; $4dd5: $01 $ef $ef
    rst $28                                       ; $4dd8: $ef
    rst $28                                       ; $4dd9: $ef

jr_078_4dda:
    ldh a, [$f0]                                  ; $4dda: $f0 $f0
    ldh a, [$f0]                                  ; $4ddc: $f0 $f0
    sub $d6                                       ; $4dde: $d6 $d6
    sub $d6                                       ; $4de0: $d6 $d6
    inc l                                         ; $4de2: $2c
    ld a, [c]                                     ; $4de3: $f2
    ld a, [c]                                     ; $4de4: $f2
    ld a, [c]                                     ; $4de5: $f2
    inc bc                                        ; $4de6: $03
    inc bc                                        ; $4de7: $03
    inc bc                                        ; $4de8: $03
    inc bc                                        ; $4de9: $03
    inc bc                                        ; $4dea: $03
    inc bc                                        ; $4deb: $03
    inc bc                                        ; $4dec: $03
    inc bc                                        ; $4ded: $03
    inc bc                                        ; $4dee: $03
    inc bc                                        ; $4def: $03
    inc bc                                        ; $4df0: $03
    inc bc                                        ; $4df1: $03
    inc bc                                        ; $4df2: $03
    inc bc                                        ; $4df3: $03
    inc bc                                        ; $4df4: $03
    inc bc                                        ; $4df5: $03
    cp c                                          ; $4df6: $b9
    cp d                                          ; $4df7: $ba
    cp e                                          ; $4df8: $bb
    cp h                                          ; $4df9: $bc
    db $db                                        ; $4dfa: $db
    db $dd                                        ; $4dfb: $dd
    jp c, $e8bd                                   ; $4dfc: $da $bd $e8

    rst $18                                       ; $4dff: $df
    call c, $dd34                                 ; $4e00: $dc $34 $dd
    db $db                                        ; $4e03: $db
    jp c, Jump_000_0988                           ; $4e04: $da $88 $09

    add hl, bc                                    ; $4e07: $09
    add hl, bc                                    ; $4e08: $09
    add hl, bc                                    ; $4e09: $09
    inc bc                                        ; $4e0a: $03
    inc bc                                        ; $4e0b: $03
    inc hl                                        ; $4e0c: $23
    add hl, bc                                    ; $4e0d: $09
    inc bc                                        ; $4e0e: $03
    inc bc                                        ; $4e0f: $03
    inc hl                                        ; $4e10: $23
    ld bc, $0303                                  ; $4e11: $01 $03 $03
    inc hl                                        ; $4e14: $23
    add hl, bc                                    ; $4e15: $09
    cp [hl]                                       ; $4e16: $be
    add b                                         ; $4e17: $80
    sub d                                         ; $4e18: $92
    sub e                                         ; $4e19: $93
    cp a                                          ; $4e1a: $bf
    ld h, l                                       ; $4e1b: $65
    sub l                                         ; $4e1c: $95
    sub [hl]                                      ; $4e1d: $96
    dec a                                         ; $4e1e: $3d
    ld a, a                                       ; $4e1f: $7f
    ld e, c                                       ; $4e20: $59
    ld e, d                                       ; $4e21: $5a
    adc c                                         ; $4e22: $89
    ld a, $3f                                     ; $4e23: $3e $3f
    ld b, b                                       ; $4e25: $40
    add hl, bc                                    ; $4e26: $09
    add hl, bc                                    ; $4e27: $09
    ld c, $0e                                     ; $4e28: $0e $0e
    add hl, bc                                    ; $4e2a: $09
    ld bc, $0e0e                                  ; $4e2b: $01 $0e $0e
    ld bc, $0101                                  ; $4e2e: $01 $01 $01
    ld bc, $0109                                  ; $4e31: $01 $09 $01
    ld bc, $d601                                  ; $4e34: $01 $01 $d6
    sub $d6                                       ; $4e37: $d6 $d6
    sub $2c                                       ; $4e39: $d6 $2c
    ld a, [c]                                     ; $4e3b: $f2
    ld a, [c]                                     ; $4e3c: $f2
    ld a, [c]                                     ; $4e3d: $f2
    sub $d6                                       ; $4e3e: $d6 $d6
    sub $d6                                       ; $4e40: $d6 $d6
    ret nz                                        ; $4e42: $c0

    pop bc                                        ; $4e43: $c1
    jp nz, $03c1                                  ; $4e44: $c2 $c1 $03

    inc bc                                        ; $4e47: $03
    inc bc                                        ; $4e48: $03
    inc bc                                        ; $4e49: $03
    inc bc                                        ; $4e4a: $03
    inc bc                                        ; $4e4b: $03
    inc bc                                        ; $4e4c: $03
    inc bc                                        ; $4e4d: $03
    inc bc                                        ; $4e4e: $03
    inc bc                                        ; $4e4f: $03
    inc bc                                        ; $4e50: $03
    inc bc                                        ; $4e51: $03
    inc c                                         ; $4e52: $0c
    inc c                                         ; $4e53: $0c
    inc c                                         ; $4e54: $0c
    inc c                                         ; $4e55: $0c
    sub $d6                                       ; $4e56: $d6 $d6
    sub $d6                                       ; $4e58: $d6 $d6
    inc l                                         ; $4e5a: $2c
    ld a, [c]                                     ; $4e5b: $f2
    ld a, [c]                                     ; $4e5c: $f2
    ld a, [c]                                     ; $4e5d: $f2
    sub $d6                                       ; $4e5e: $d6 $d6
    sub $d6                                       ; $4e60: $d6 $d6
    jp nz, $c2c1                                  ; $4e62: $c2 $c1 $c2

    pop bc                                        ; $4e65: $c1
    inc bc                                        ; $4e66: $03
    inc bc                                        ; $4e67: $03
    inc bc                                        ; $4e68: $03
    inc bc                                        ; $4e69: $03
    inc bc                                        ; $4e6a: $03
    inc bc                                        ; $4e6b: $03
    inc bc                                        ; $4e6c: $03
    inc bc                                        ; $4e6d: $03
    inc bc                                        ; $4e6e: $03
    inc bc                                        ; $4e6f: $03
    inc bc                                        ; $4e70: $03
    inc bc                                        ; $4e71: $03
    inc c                                         ; $4e72: $0c
    inc c                                         ; $4e73: $0c
    inc c                                         ; $4e74: $0c
    inc c                                         ; $4e75: $0c
    db $fd                                        ; $4e76: $fd
    cp $04                                        ; $4e77: $fe $04
    ld h, h                                       ; $4e79: $64
    and h                                         ; $4e7a: $a4
    and b                                         ; $4e7b: $a0
    and d                                         ; $4e7c: $a2
    ld h, l                                       ; $4e7d: $65
    and l                                         ; $4e7e: $a5
    and [hl]                                      ; $4e7f: $a6
    and a                                         ; $4e80: $a7
    ld a, a                                       ; $4e81: $7f

jr_078_4e82:
    xor b                                         ; $4e82: $a8
    xor c                                         ; $4e83: $a9
    xor d                                         ; $4e84: $aa
    ld a, $01                                     ; $4e85: $3e $01
    ld bc, $0101                                  ; $4e87: $01 $01 $01
    add hl, bc                                    ; $4e8a: $09
    add hl, bc                                    ; $4e8b: $09
    add hl, bc                                    ; $4e8c: $09
    ld bc, $0909                                  ; $4e8d: $01 $09 $09
    add hl, bc                                    ; $4e90: $09
    ld bc, $0909                                  ; $4e91: $01 $09 $09
    add hl, bc                                    ; $4e94: $09
    ld bc, $7b6a                                  ; $4e95: $01 $6a $7b
    ld a, b                                       ; $4e98: $78
    ld h, h                                       ; $4e99: $64
    ld a, h                                       ; $4e9a: $7c
    add h                                         ; $4e9b: $84
    ld l, e                                       ; $4e9c: $6b
    ld l, h                                       ; $4e9d: $6c
    add b                                         ; $4e9e: $80
    ld l, l                                       ; $4e9f: $6d
    ld l, [hl]                                    ; $4ea0: $6e
    ld l, a                                       ; $4ea1: $6f
    ccf                                           ; $4ea2: $3f
    ld b, b                                       ; $4ea3: $40
    adc d                                         ; $4ea4: $8a
    sbc a                                         ; $4ea5: $9f
    ld bc, $0101                                  ; $4ea6: $01 $01 $01
    ld bc, $0901                                  ; $4ea9: $01 $01 $09
    ld bc, $0901                                  ; $4eac: $01 $01 $09
    ld bc, $0101                                  ; $4eaf: $01 $01 $01
    ld bc, $0901                                  ; $4eb2: $01 $01 $09
    add hl, bc                                    ; $4eb5: $09
    jp $d4d3                                      ; $4eb6: $c3 $d3 $d4


    pop de                                        ; $4eb9: $d1
    jp Jump_000_17d1                              ; $4eba: $c3 $d1 $17


    jr jr_078_4e82                                ; $4ebd: $18 $c3

    pop de                                        ; $4ebf: $d1
    add hl, de                                    ; $4ec0: $19
    ld a, [de]                                    ; $4ec1: $1a
    jp Jump_000_1ad3                              ; $4ec2: $c3 $d3 $1a


    add hl, de                                    ; $4ec5: $19
    inc c                                         ; $4ec6: $0c
    inc b                                         ; $4ec7: $04
    inc b                                         ; $4ec8: $04
    inc b                                         ; $4ec9: $04
    inc c                                         ; $4eca: $0c
    inc b                                         ; $4ecb: $04
    ld bc, $0c01                                  ; $4ecc: $01 $01 $0c
    inc b                                         ; $4ecf: $04
    ld bc, $0c01                                  ; $4ed0: $01 $01 $0c
    inc b                                         ; $4ed3: $04
    ld bc, $d201                                  ; $4ed4: $01 $01 $d2
    pop de                                        ; $4ed7: $d1
    call nz, Call_000_18c5                        ; $4ed8: $c4 $c5 $18
    pop de                                        ; $4edb: $d1
    add $c7                                       ; $4edc: $c6 $c7
    ld a, [de]                                    ; $4ede: $1a
    pop de                                        ; $4edf: $d1
    ret z                                         ; $4ee0: $c8

    ret                                           ; $4ee1: $c9


    sbc e                                         ; $4ee2: $9b
    db $d3                                        ; $4ee3: $d3
    call nc, $04d3                                ; $4ee4: $d4 $d3 $04
    inc b                                         ; $4ee7: $04
    add hl, bc                                    ; $4ee8: $09
    add hl, bc                                    ; $4ee9: $09
    ld bc, $0904                                  ; $4eea: $01 $04 $09
    add hl, bc                                    ; $4eed: $09
    ld bc, $0904                                  ; $4eee: $01 $04 $09
    add hl, bc                                    ; $4ef1: $09
    add hl, bc                                    ; $4ef2: $09
    inc b                                         ; $4ef3: $04
    inc b                                         ; $4ef4: $04
    inc b                                         ; $4ef5: $04
    ld a, b                                       ; $4ef6: $78
    ld h, h                                       ; $4ef7: $64
    ld l, d                                       ; $4ef8: $6a
    ld a, e                                       ; $4ef9: $7b
    adc h                                         ; $4efa: $8c
    adc l                                         ; $4efb: $8d
    ld a, h                                       ; $4efc: $7c
    ld a, c                                       ; $4efd: $79
    rst $28                                       ; $4efe: $ef
    ld h, b                                       ; $4eff: $60
    add b                                         ; $4f00: $80
    add a                                         ; $4f01: $87
    pop af                                        ; $4f02: $f1
    ld h, d                                       ; $4f03: $62
    ccf                                           ; $4f04: $3f
    ld l, e                                       ; $4f05: $6b
    ld bc, $0101                                  ; $4f06: $01 $01 $01
    ld bc, $0909                                  ; $4f09: $01 $09 $09
    ld bc, $8401                                  ; $4f0c: $01 $01 $84
    ld bc, $0909                                  ; $4f0f: $01 $09 $09
    add h                                         ; $4f12: $84
    ld bc, $0101                                  ; $4f13: $01 $01 $01
    ld a, b                                       ; $4f16: $78
    ld h, h                                       ; $4f17: $64
    ld l, d                                       ; $4f18: $6a
    ld a, e                                       ; $4f19: $7b
    ld a, d                                       ; $4f1a: $7a
    ld h, l                                       ; $4f1b: $65
    ld a, h                                       ; $4f1c: $7c
    add h                                         ; $4f1d: $84
    ld a, [hl-]                                   ; $4f1e: $3a
    ld a, a                                       ; $4f1f: $7f
    sbc l                                         ; $4f20: $9d
    ld e, e                                       ; $4f21: $5b
    ld l, h                                       ; $4f22: $6c
    ld a, $9e                                     ; $4f23: $3e $9e
    ld e, l                                       ; $4f25: $5d
    ld bc, $0101                                  ; $4f26: $01 $01 $01
    ld bc, $0101                                  ; $4f29: $01 $01 $01
    ld bc, $0109                                  ; $4f2c: $01 $09 $01
    ld bc, $0109                                  ; $4f2f: $01 $09 $01
    ld bc, $0901                                  ; $4f32: $01 $01 $09
    ld bc, $d1c3                                  ; $4f35: $01 $c3 $d1
    add hl, de                                    ; $4f38: $19
    ld a, [de]                                    ; $4f39: $1a
    db $fd                                        ; $4f3a: $fd
    cp $04                                        ; $4f3b: $fe $04
    db $fd                                        ; $4f3d: $fd
    ld e, h                                       ; $4f3e: $5c
    ld a, a                                       ; $4f3f: $7f
    add b                                         ; $4f40: $80
    add a                                         ; $4f41: $87
    ld e, [hl]                                    ; $4f42: $5e
    ld a, $3f                                     ; $4f43: $3e $3f
    ld b, b                                       ; $4f45: $40
    inc c                                         ; $4f46: $0c
    inc b                                         ; $4f47: $04
    ld bc, $0101                                  ; $4f48: $01 $01 $01
    ld bc, $0101                                  ; $4f4b: $01 $01 $01
    ld bc, $0901                                  ; $4f4e: $01 $01 $09
    add hl, bc                                    ; $4f51: $09
    ld bc, $0101                                  ; $4f52: $01 $01 $01
    ld bc, $d119                                  ; $4f55: $01 $19 $d1
    db $d3                                        ; $4f58: $d3
    call nc, Call_000_04fe                        ; $4f59: $d4 $fe $04
    db $fd                                        ; $4f5c: $fd
    cp $3a                                        ; $4f5d: $fe $3a
    ld a, a                                       ; $4f5f: $7f
    add b                                         ; $4f60: $80
    scf                                           ; $4f61: $37
    ld l, c                                       ; $4f62: $69
    ld a, $3f                                     ; $4f63: $3e $3f
    dec sp                                        ; $4f65: $3b
    ld bc, $0404                                  ; $4f66: $01 $04 $04
    inc b                                         ; $4f69: $04
    ld bc, $0101                                  ; $4f6a: $01 $01 $01
    ld bc, $0101                                  ; $4f6d: $01 $01 $01
    add hl, bc                                    ; $4f70: $09
    ld bc, $0101                                  ; $4f71: $01 $01 $01
    ld bc, $ef01                                  ; $4f74: $01 $01 $ef
    rst $28                                       ; $4f77: $ef
    rst $28                                       ; $4f78: $ef
    rst $28                                       ; $4f79: $ef
    ldh a, [$f0]                                  ; $4f7a: $f0 $f0
    ldh a, [$f0]                                  ; $4f7c: $f0 $f0
    sub $d6                                       ; $4f7e: $d6 $d6
    sub $d6                                       ; $4f80: $d6 $d6
    ld a, [c]                                     ; $4f82: $f2
    ld a, [c]                                     ; $4f83: $f2
    ld a, [c]                                     ; $4f84: $f2
    ld a, [c]                                     ; $4f85: $f2
    inc bc                                        ; $4f86: $03
    inc bc                                        ; $4f87: $03
    inc bc                                        ; $4f88: $03
    inc bc                                        ; $4f89: $03
    inc bc                                        ; $4f8a: $03
    inc bc                                        ; $4f8b: $03
    inc bc                                        ; $4f8c: $03
    inc bc                                        ; $4f8d: $03
    inc bc                                        ; $4f8e: $03
    inc bc                                        ; $4f8f: $03
    inc bc                                        ; $4f90: $03
    inc bc                                        ; $4f91: $03
    inc bc                                        ; $4f92: $03
    inc bc                                        ; $4f93: $03
    inc bc                                        ; $4f94: $03
    inc bc                                        ; $4f95: $03
    rst $28                                       ; $4f96: $ef
    jr z, @+$22                                   ; $4f97: $28 $20

    dec h                                         ; $4f99: $25
    pop af                                        ; $4f9a: $f1
    db $ec                                        ; $4f9b: $ec
    db $ed                                        ; $4f9c: $ed
    add hl, hl                                    ; $4f9d: $29
    sub $2d                                       ; $4f9e: $d6 $2d
    rra                                           ; $4fa0: $1f
    ld a, [hl+]                                   ; $4fa1: $2a
    di                                            ; $4fa2: $f3
    jr z, @+$22                                   ; $4fa3: $28 $20

    dec hl                                        ; $4fa5: $2b
    inc bc                                        ; $4fa6: $03
    rlca                                          ; $4fa7: $07
    rlca                                          ; $4fa8: $07
    rlca                                          ; $4fa9: $07
    inc bc                                        ; $4faa: $03
    rlca                                          ; $4fab: $07
    rlca                                          ; $4fac: $07
    rlca                                          ; $4fad: $07
    inc bc                                        ; $4fae: $03
    rlca                                          ; $4faf: $07
    rlca                                          ; $4fb0: $07
    rlca                                          ; $4fb1: $07
    inc bc                                        ; $4fb2: $03
    rlca                                          ; $4fb3: $07
    rlca                                          ; $4fb4: $07
    rlca                                          ; $4fb5: $07
    rlca                                          ; $4fb6: $07
    ld [$2809], sp                                ; $4fb7: $08 $09 $28
    ld a, [bc]                                    ; $4fba: $0a
    dec bc                                        ; $4fbb: $0b
    inc c                                         ; $4fbc: $0c
    db $ec                                        ; $4fbd: $ec
    dec c                                         ; $4fbe: $0d
    ld c, $0f                                     ; $4fbf: $0e $0f
    dec l                                         ; $4fc1: $2d
    dec e                                         ; $4fc2: $1d
    ld [$2eeb], a                                 ; $4fc3: $ea $eb $2e
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    rlca                                          ; $4fc9: $07
    nop                                           ; $4fca: $00
    nop                                           ; $4fcb: $00
    nop                                           ; $4fcc: $00
    rlca                                          ; $4fcd: $07
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    rlca                                          ; $4fd1: $07
    rlca                                          ; $4fd2: $07
    rlca                                          ; $4fd3: $07
    rlca                                          ; $4fd4: $07
    rlca                                          ; $4fd5: $07
    jr nz, jr_078_4ffd                            ; $4fd6: $20 $25

    ld sp, hl                                     ; $4fd8: $f9
    ld sp, $29ed                                  ; $4fd9: $31 $ed $29
    ld sp, $1ff9                                  ; $4fdc: $31 $f9 $1f
    ld a, [hl+]                                   ; $4fdf: $2a
    rst $20                                       ; $4fe0: $e7
    rst $20                                       ; $4fe1: $e7
    jr nz, jr_078_5009                            ; $4fe2: $20 $25

    rst $20                                       ; $4fe4: $e7
    rst $20                                       ; $4fe5: $e7
    rlca                                          ; $4fe6: $07
    rlca                                          ; $4fe7: $07
    inc b                                         ; $4fe8: $04
    inc b                                         ; $4fe9: $04
    rlca                                          ; $4fea: $07
    rlca                                          ; $4feb: $07
    inc b                                         ; $4fec: $04
    inc b                                         ; $4fed: $04
    rlca                                          ; $4fee: $07
    rlca                                          ; $4fef: $07
    ld bc, $0701                                  ; $4ff0: $01 $01 $07
    rlca                                          ; $4ff3: $07
    ld bc, $d601                                  ; $4ff4: $01 $01 $d6
    sub $d6                                       ; $4ff7: $d6 $d6
    sub $f2                                       ; $4ff9: $d6 $f2
    ld a, [c]                                     ; $4ffb: $f2
    ld a, [c]                                     ; $4ffc: $f2

jr_078_4ffd:
    ld a, [c]                                     ; $4ffd: $f2
    sub $d6                                       ; $4ffe: $d6 $d6
    sub $d6                                       ; $5000: $d6 $d6
    jp nz, $c2c1                                  ; $5002: $c2 $c1 $c2

    pop bc                                        ; $5005: $c1
    inc bc                                        ; $5006: $03
    inc bc                                        ; $5007: $03
    inc bc                                        ; $5008: $03

jr_078_5009:
    inc bc                                        ; $5009: $03
    inc bc                                        ; $500a: $03
    inc bc                                        ; $500b: $03
    inc bc                                        ; $500c: $03
    inc bc                                        ; $500d: $03
    inc bc                                        ; $500e: $03
    inc bc                                        ; $500f: $03
    inc bc                                        ; $5010: $03
    inc bc                                        ; $5011: $03
    inc c                                         ; $5012: $0c
    inc c                                         ; $5013: $0c
    inc c                                         ; $5014: $0c
    inc c                                         ; $5015: $0c
    sub $ec                                       ; $5016: $d6 $ec
    db $ed                                        ; $5018: $ed
    xor $f3                                       ; $5019: $ee $f3
    jr z, @+$22                                   ; $501b: $28 $20

    dec hl                                        ; $501d: $2b
    sub $ec                                       ; $501e: $d6 $ec
    db $ed                                        ; $5020: $ed
    xor $d5                                       ; $5021: $ee $d5
    jr z, @+$22                                   ; $5023: $28 $20

    dec hl                                        ; $5025: $2b
    inc bc                                        ; $5026: $03
    rlca                                          ; $5027: $07
    rlca                                          ; $5028: $07
    rlca                                          ; $5029: $07
    inc bc                                        ; $502a: $03
    rlca                                          ; $502b: $07
    rlca                                          ; $502c: $07
    rlca                                          ; $502d: $07
    inc bc                                        ; $502e: $03
    rlca                                          ; $502f: $07
    rlca                                          ; $5030: $07
    rlca                                          ; $5031: $07
    inc b                                         ; $5032: $04
    rlca                                          ; $5033: $07
    rlca                                          ; $5034: $07
    rlca                                          ; $5035: $07

    db $ed, $ee, $ed, $ee, $e4, $ca, $e5, $e5, $e6, $e7, $e7, $e7, $e6, $e7, $e7, $e7
    db $07, $07, $07, $07, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $ed, $29, $e7, $e7, $e5, $e5, $e5, $e5, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7
    db $07, $07, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

    call nz, $d4d3                                ; $5076: $c4 $d3 $d4
    pop de                                        ; $5079: $d1
    add $d2                                       ; $507a: $c6 $d2
    db $d3                                        ; $507c: $d3
    call nc, $d1c8                                ; $507d: $d4 $c8 $d1
    jp nc, $d4d3                                  ; $5080: $d2 $d3 $d4

    db $d3                                        ; $5083: $d3
    call nc, Call_000_29d1                        ; $5084: $d4 $d1 $29
    inc b                                         ; $5087: $04
    inc b                                         ; $5088: $04
    inc b                                         ; $5089: $04
    add hl, hl                                    ; $508a: $29
    inc b                                         ; $508b: $04
    inc b                                         ; $508c: $04
    inc b                                         ; $508d: $04
    add hl, hl                                    ; $508e: $29
    inc b                                         ; $508f: $04
    inc b                                         ; $5090: $04
    inc b                                         ; $5091: $04
    inc b                                         ; $5092: $04
    inc b                                         ; $5093: $04
    inc b                                         ; $5094: $04
    inc b                                         ; $5095: $04
    rst $10                                       ; $5096: $d7
    db $fd                                        ; $5097: $fd
    cp $04                                        ; $5098: $fe $04
    rst $10                                       ; $509a: $d7
    cp h                                          ; $509b: $bc
    cp [hl]                                       ; $509c: $be
    ld h, l                                       ; $509d: $65
    rst $10                                       ; $509e: $d7
    cp l                                          ; $509f: $bd
    cp a                                          ; $50a0: $bf
    ld a, a                                       ; $50a1: $7f
    rst $10                                       ; $50a2: $d7
    inc [hl]                                      ; $50a3: $34
    dec a                                         ; $50a4: $3d
    ld a, $04                                     ; $50a5: $3e $04
    ld bc, $0101                                  ; $50a7: $01 $01 $01
    inc b                                         ; $50aa: $04
    add hl, bc                                    ; $50ab: $09
    add hl, bc                                    ; $50ac: $09
    ld bc, $0904                                  ; $50ad: $01 $04 $09
    add hl, bc                                    ; $50b0: $09
    ld bc, $0104                                  ; $50b1: $01 $04 $01
    db $01                                        ; $50b4: $01
    db $01                                        ; $50b5: $01

    db $e6, $e7, $e7, $e7, $e6, $e7, $cb, $cc, $f4, $ca, $cd, $ce, $ff, $00, $cf, $d0
    db $01, $01, $01, $01, $01, $01, $09, $09, $01, $09, $09, $09, $02, $02, $09, $09
    db $e7, $e7, $e7, $e7, $d1, $e7, $e7, $e7, $d2, $e5, $e5, $e5, $d3, $06, $00, $05
    db $01, $01, $01, $01, $09, $01, $01, $01, $09, $21, $21, $21, $09, $02, $02, $02

    jp nc, $d2d1                                  ; $50f6: $d2 $d1 $d2

    pop de                                        ; $50f9: $d1
    inc b                                         ; $50fa: $04
    db $fd                                        ; $50fb: $fd
    cp $04                                        ; $50fc: $fe $04
    jr c, @+$7e                                   ; $50fe: $38 $7c

    add b                                         ; $5100: $80
    ld a, c                                       ; $5101: $79
    inc a                                         ; $5102: $3c
    add e                                         ; $5103: $83
    ccf                                           ; $5104: $3f
    ld b, b                                       ; $5105: $40
    inc b                                         ; $5106: $04
    inc b                                         ; $5107: $04
    inc b                                         ; $5108: $04
    inc b                                         ; $5109: $04
    ld bc, $0101                                  ; $510a: $01 $01 $01
    ld bc, $0101                                  ; $510d: $01 $01 $01
    add hl, bc                                    ; $5110: $09
    ld bc, $0901                                  ; $5111: $01 $01 $09
    ld bc, $d701                                  ; $5114: $01 $01 $d7
    ld h, e                                       ; $5117: $63
    ld l, d                                       ; $5118: $6a
    ld a, e                                       ; $5119: $7b
    db $fd                                        ; $511a: $fd
    ld h, l                                       ; $511b: $65
    scf                                           ; $511c: $37
    jr c, jr_078_5199                             ; $511d: $38 $7a

    ld a, a                                       ; $511f: $7f
    dec sp                                        ; $5120: $3b
    inc a                                         ; $5121: $3c
    ld l, c                                       ; $5122: $69
    ld a, $3f                                     ; $5123: $3e $3f
    ld b, b                                       ; $5125: $40
    inc b                                         ; $5126: $04
    ld bc, $0101                                  ; $5127: $01 $01 $01
    ld bc, $0101                                  ; $512a: $01 $01 $01
    ld bc, $0101                                  ; $512d: $01 $01 $01
    ld bc, $0101                                  ; $5130: $01 $01 $01
    ld bc, $0101                                  ; $5133: $01 $01 $01

    db $03, $02, $17, $18, $01, $02, $19, $1a, $03, $02, $1a, $19, $01, $02, $19, $1a
    db $02, $02, $01, $01, $02, $02, $01, $01, $02, $02, $01, $01, $02, $02, $01, $01
    db $18, $02, $02, $07, $1a, $02, $02, $0a, $9b, $02, $02, $0d, $19, $02, $97, $99
    db $01, $22, $02, $00, $01, $22, $02, $00, $09, $22, $02, $00, $01, $22, $0a, $0a

    ld sp, $31f9                                  ; $5176: $31 $f9 $31
    ld sp, hl                                     ; $5179: $f9
    ld sp, hl                                     ; $517a: $f9
    ld sp, $31f9                                  ; $517b: $31 $f9 $31
    rst $20                                       ; $517e: $e7
    rst $20                                       ; $517f: $e7
    rst $20                                       ; $5180: $e7
    rst $20                                       ; $5181: $e7
    rst $20                                       ; $5182: $e7
    rst $20                                       ; $5183: $e7
    rst $20                                       ; $5184: $e7
    rst $20                                       ; $5185: $e7
    inc b                                         ; $5186: $04
    inc b                                         ; $5187: $04
    inc b                                         ; $5188: $04
    inc b                                         ; $5189: $04
    inc b                                         ; $518a: $04
    inc b                                         ; $518b: $04
    inc b                                         ; $518c: $04
    inc b                                         ; $518d: $04
    ld bc, $0101                                  ; $518e: $01 $01 $01
    ld bc, $0101                                  ; $5191: $01 $01 $01
    ld bc, $3101                                  ; $5194: $01 $01 $31
    ld [hl], h                                    ; $5197: $74
    ld [hl], l                                    ; $5198: $75

jr_078_5199:
    and $f9                                       ; $5199: $e6 $f9
    db $f4                                        ; $519b: $f4
    call nc, $e7e6                                ; $519c: $d4 $e6 $e7
    rst $38                                       ; $519f: $ff
    cpl                                           ; $51a0: $2f
    and $e7                                       ; $51a1: $e6 $e7
    inc bc                                        ; $51a3: $03
    ld sp, $04e6                                  ; $51a4: $31 $e6 $04
    add [hl]                                      ; $51a7: $86
    add [hl]                                      ; $51a8: $86
    dec b                                         ; $51a9: $05
    inc b                                         ; $51aa: $04
    add [hl]                                      ; $51ab: $86
    adc [hl]                                      ; $51ac: $8e
    dec b                                         ; $51ad: $05
    ld bc, $2202                                  ; $51ae: $01 $02 $22
    dec b                                         ; $51b1: $05
    ld bc, $2202                                  ; $51b2: $01 $02 $22
    dec b                                         ; $51b5: $05
    rst $20                                       ; $51b6: $e7
    rst $20                                       ; $51b7: $e7
    rst $20                                       ; $51b8: $e7
    rst $20                                       ; $51b9: $e7
    rst $20                                       ; $51ba: $e7
    rst $20                                       ; $51bb: $e7
    push af                                       ; $51bc: $f5
    push hl                                       ; $51bd: $e5
    rst $20                                       ; $51be: $e7
    push af                                       ; $51bf: $f5
    or $f7                                        ; $51c0: $f6 $f7
    push af                                       ; $51c2: $f5
    or $f8                                        ; $51c3: $f6 $f8
    ld sp, hl                                     ; $51c5: $f9
    dec b                                         ; $51c6: $05
    dec b                                         ; $51c7: $05
    dec b                                         ; $51c8: $05
    dec b                                         ; $51c9: $05
    dec b                                         ; $51ca: $05
    dec b                                         ; $51cb: $05
    dec b                                         ; $51cc: $05
    dec b                                         ; $51cd: $05
    dec b                                         ; $51ce: $05
    dec b                                         ; $51cf: $05
    dec b                                         ; $51d0: $05
    inc b                                         ; $51d1: $04

Jump_078_51d2:
    dec b                                         ; $51d2: $05
    dec b                                         ; $51d3: $05
    inc b                                         ; $51d4: $04
    inc b                                         ; $51d5: $04
    rst $20                                       ; $51d6: $e7
    rst $20                                       ; $51d7: $e7
    rst $20                                       ; $51d8: $e7
    and $f5                                       ; $51d9: $e6 $f5
    rst $20                                       ; $51db: $e7
    rst $20                                       ; $51dc: $e7
    and $f6                                       ; $51dd: $e6 $f6
    push af                                       ; $51df: $f5
    rst $20                                       ; $51e0: $e7
    and $f8                                       ; $51e1: $e6 $f8
    or $f5                                        ; $51e3: $f6 $f5
    and $05                                       ; $51e5: $e6 $05
    dec b                                         ; $51e7: $05
    dec b                                         ; $51e8: $05
    dec h                                         ; $51e9: $25
    dec h                                         ; $51ea: $25
    dec b                                         ; $51eb: $05
    dec b                                         ; $51ec: $05
    dec h                                         ; $51ed: $25
    dec h                                         ; $51ee: $25
    dec h                                         ; $51ef: $25
    dec b                                         ; $51f0: $05
    dec h                                         ; $51f1: $25
    inc h                                         ; $51f2: $24
    dec h                                         ; $51f3: $25
    dec h                                         ; $51f4: $25
    dec h                                         ; $51f5: $25

    db $e7, $e7, $e7, $e7, $e5, $e5, $d5, $e4, $e7, $e7, $e7, $e6, $e7, $e7, $e7, $e6
    db $01, $01, $01, $01, $01, $01, $09, $21, $01, $01, $01, $21, $01, $01, $01, $21
    db $d6, $01, $f9, $f4, $d6, $03, $31, $ff, $d7, $01, $f9, $01, $d7, $03, $31, $03
    db $09, $02, $22, $05, $09, $02, $22, $04, $09, $02, $22, $04, $09, $02, $22, $04
    db $f6, $f8, $31, $31, $2f, $31, $f9, $13, $f9, $31, $f9, $d8, $31, $f9, $31, $02
    db $05, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $0c, $04, $04, $04, $04
    db $f9, $f8, $f6, $f4, $d9, $da, $05, $db, $07, $08, $09, $dc, $0a, $0b, $0c, $dd
    db $04, $24, $25, $25, $0c, $0c, $04, $0c, $00, $00, $00, $0c, $00, $00, $00, $0c
    db $e7, $e7, $e7, $e6, $e7, $e7, $e7, $e6, $e5, $e5, $ca, $f4, $05, $05, $06, $ff
    db $01, $01, $01, $21, $01, $01, $01, $21, $21, $21, $29, $21, $02, $02, $02, $22
    db $de, $01, $f9, $01, $69, $fd, $fe, $df, $6a, $bc, $be, $e0, $7c, $bd, $bf, $e0
    db $09, $02, $22, $04, $01, $01, $01, $0c, $01, $09, $09, $0c, $01, $09, $09, $0c
    db $f9, $31, $f9, $02, $d9, $da, $d9, $e1, $07, $08, $09, $02, $0a, $0b, $0c, $02
    db $04, $04, $04, $04, $0c, $0c, $0c, $0c, $00, $00, $00, $24, $00, $00, $00, $24
    db $0d, $0e, $0f, $dc, $99, $99, $99, $e2, $f9, $31, $f9, $01, $cb, $e3, $e4, $03
    db $00, $00, $00, $0c, $0c, $0c, $0c, $0c, $04, $04, $04, $24, $09, $09, $09, $24
    db $08, $09, $02, $03, $0b, $0c, $02, $01, $0e, $0f, $02, $03, $99, $99, $97, $01
    db $00, $00, $22, $22, $00, $00, $22, $22, $00, $00, $22, $22, $0a, $0a, $2a, $22
    db $6c, $34, $3d, $e5, $6f, $40, $69, $e6, $9f, $64, $6a, $03, $36, $37, $38, $01
    db $01, $01, $01, $0c, $01, $01, $01, $0c, $09, $01, $01, $04, $01, $01, $01, $04
    db $0d, $0e, $0f, $02, $99, $e7, $e8, $e9, $31, $02, $17, $18, $f9, $02, $19, $1a
    db $00, $00, $00, $24, $0c, $0c, $0c, $0c, $04, $04, $01, $01, $04, $04, $01, $01
    db $ea, $eb, $ec, $01, $ed, $ee, $d3, $03, $18, $02, $f9, $01, $1a, $02, $31, $03
    db $09, $09, $09, $24, $09, $09, $09, $24, $01, $24, $04, $24, $01, $24, $04, $24

    sub b                                         ; $5376: $90
    adc a                                         ; $5377: $8f
    add b                                         ; $5378: $80
    scf                                           ; $5379: $37
    call nc, Call_000_3ff4                        ; $537a: $d4 $f4 $3f
    dec sp                                        ; $537d: $3b
    cpl                                           ; $537e: $2f
    rst $38                                       ; $537f: $ff
    ld a, b                                       ; $5380: $78
    ld h, h                                       ; $5381: $64
    ld sp, $6b03                                  ; $5382: $31 $03 $6b
    ld l, h                                       ; $5385: $6c
    adc [hl]                                      ; $5386: $8e
    adc [hl]                                      ; $5387: $8e
    add hl, bc                                    ; $5388: $09
    ld bc, $a68e                                  ; $5389: $01 $8e $a6
    ld bc, $0201                                  ; $538c: $01 $01 $02
    ld [hl+], a                                   ; $538f: $22
    ld bc, $0201                                  ; $5390: $01 $01 $02
    ld [hl+], a                                   ; $5393: $22
    ld bc, $3801                                  ; $5394: $01 $01 $38
    ld a, h                                       ; $5397: $7c
    add b                                         ; $5398: $80
    add a                                         ; $5399: $87
    inc a                                         ; $539a: $3c
    add e                                         ; $539b: $83
    ccf                                           ; $539c: $3f
    ld b, b                                       ; $539d: $40
    ld l, d                                       ; $539e: $6a
    ld a, e                                       ; $539f: $7b
    and c                                         ; $53a0: $a1
    adc h                                         ; $53a1: $8c
    ld a, h                                       ; $53a2: $7c
    add h                                         ; $53a3: $84
    and e                                         ; $53a4: $a3
    ld e, a                                       ; $53a5: $5f
    ld bc, $0901                                  ; $53a6: $01 $01 $09
    add hl, bc                                    ; $53a9: $09
    ld bc, $0109                                  ; $53aa: $01 $09 $01
    ld bc, $0101                                  ; $53ad: $01 $01 $01
    add hl, bc                                    ; $53b0: $09
    add hl, bc                                    ; $53b1: $09
    ld bc, $0909                                  ; $53b2: $01 $09 $09
    db $01                                        ; $53b5: $01

    db $f9, $01, $6e, $6f, $31, $03, $8a, $9f, $f9, $01, $6a, $7b, $31, $03, $79, $7a
    db $02, $22, $01, $01, $02, $22, $09, $09, $02, $22, $01, $01, $02, $22, $01, $01
    db $80, $87, $ef, $61, $3f, $40, $f0, $63, $78, $64, $6a, $7b, $36, $65, $7c, $84
    db $09, $09, $09, $01, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $76, $77, $77, $77, $f1, $f2, $f2, $f2, $f3, $f4, $f4, $f4, $f5, $75, $75, $75
    db $80, $80, $80, $80, $88, $88, $88, $88, $08, $08, $08, $08, $08, $00, $00, $00
    db $77, $77, $77, $77, $f2, $f2, $f2, $f6, $f4, $f4, $f4, $f7, $75, $75, $75, $f8
    db $80, $80, $80, $80, $88, $88, $88, $88, $08, $08, $08, $08, $00, $00, $00, $08
    db $f9, $01, $80, $87, $fe, $04, $3f, $40, $3f, $7b, $78, $64, $78, $84, $37, $38
    db $02, $22, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $64, $7d, $7e, $87, $81, $85, $86, $40, $82, $88, $89, $64, $7c, $84, $36, $65
    db $01, $01, $01, $09, $09, $09, $09, $01, $09, $09, $09, $01, $01, $09, $01, $01
    db $f3, $f4, $f4, $f4, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $77, $00, $01, $02, $77
    db $48, $48, $48, $48, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08, $08, $00
    db $f4, $f4, $f4, $03, $04, $05, $fc, $06, $07, $08, $77, $09, $07, $08, $77, $09
    db $48, $48, $48, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08, $08, $00, $08
    db $36, $87, $3b, $3c, $64, $40, $69, $3e, $78, $64, $6a, $7b, $36, $a1, $8c, $8d
    db $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $09
    db $83, $79, $7a, $7f, $3f, $40, $69, $3e, $78, $64, $6a, $6b, $36, $65, $6d, $6e
    db $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $0a, $0b, $0c, $0d, $fd, $fe, $ff, $0e, $00, $01, $02, $77, $0a, $0b, $0c, $0f
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08, $08, $08
    db $07, $08, $0d, $10, $07, $08, $0e, $11, $07, $08, $77, $77, $07, $08, $75, $75
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $08, $08, $00, $00
    db $77, $12, $12, $77, $13, $14, $15, $13, $16, $17, $18, $19, $1a, $1b, $1c, $1d
    db $80, $88, $a8, $80, $88, $88, $88, $a8, $08, $08, $08, $08, $08, $08, $08, $08
    db $77, $77, $77, $77, $f6, $f2, $f2, $f2, $1e, $f4, $f4, $f4, $1f, $75, $75, $75
    db $80, $80, $80, $80, $a8, $88, $88, $88, $08, $08, $08, $08, $08, $00, $00, $00
    db $77, $77, $77, $76, $f2, $f2, $f2, $f1, $f4, $f4, $f4, $20, $75, $75, $75, $f5
    db $80, $80, $80, $a0, $88, $88, $88, $a8, $08, $08, $08, $08, $00, $00, $00, $28
    db $21, $22, $23, $24, $25, $26, $26, $25, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $08, $08, $08, $08, $08, $08, $28, $28, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $2f, $f4, $f4, $f4, $06, $fc, $04, $05, $09, $77, $07, $08, $09, $77, $07, $08
    db $08, $48, $48, $48, $28, $28, $08, $08, $28, $00, $08, $08, $28, $00, $08, $08
    db $f4, $f4, $f4, $20, $fc, $f9, $fa, $fb, $77, $fd, $fe, $ff, $77, $00, $01, $02
    db $48, $48, $48, $48, $08, $08, $08, $08, $00, $08, $08, $08, $00, $08, $08, $08
    db $30, $31, $32, $33, $34, $35, $36, $37, $77, $77, $77, $77, $75, $75, $75, $75
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $00, $00, $00, $00, $00, $00, $00, $00
    db $10, $0d, $07, $08, $11, $0e, $07, $08, $77, $77, $07, $08, $75, $0f, $07, $08
    db $28, $28, $08, $08, $28, $08, $08, $08, $00, $00, $08, $08, $00, $08, $08, $08
    db $0d, $0a, $0b, $0c, $0e, $fd, $fe, $ff, $77, $00, $01, $02, $77, $0a, $0b, $0c
    db $08, $08, $08, $08, $08, $08, $08, $08, $00, $08, $08, $08, $00, $08, $08, $08
    db $e7, $e7, $e7, $e7, $e7, $e4, $ca, $e5, $e7, $e6, $e7, $e7, $e7, $e6, $e7, $e7
    db $01, $01, $01, $01, $01, $05, $0d, $05, $01, $05, $05, $05, $01, $05, $05, $05

    call nc, $d4d4                                ; $5676: $d4 $d4 $d4
    call nc, Call_000_2f2f                        ; $5679: $d4 $2f $2f
    cpl                                           ; $567c: $2f
    cpl                                           ; $567d: $2f
    ld sp, $31f9                                  ; $567e: $31 $f9 $31
    ld sp, $31f9                                  ; $5681: $31 $f9 $31
    ld sp, hl                                     ; $5684: $f9
    ld sp, hl                                     ; $5685: $f9
    adc d                                         ; $5686: $8a
    adc d                                         ; $5687: $8a
    adc d                                         ; $5688: $8a
    adc d                                         ; $5689: $8a
    inc b                                         ; $568a: $04
    inc b                                         ; $568b: $04
    inc b                                         ; $568c: $04
    inc b                                         ; $568d: $04
    inc b                                         ; $568e: $04
    inc b                                         ; $568f: $04
    inc b                                         ; $5690: $04
    inc b                                         ; $5691: $04
    inc b                                         ; $5692: $04
    inc b                                         ; $5693: $04
    inc b                                         ; $5694: $04
    inc b                                         ; $5695: $04
    db $f4                                        ; $5696: $f4
    db $e3                                        ; $5697: $e3
    ld [c], a                                     ; $5698: $e2
    pop hl                                        ; $5699: $e1
    rst $38                                       ; $569a: $ff
    ldh [$e1], a                                  ; $569b: $e0 $e1
    ld [c], a                                     ; $569d: $e2
    ld bc, $e2e3                                  ; $569e: $01 $e3 $e2
    pop hl                                        ; $56a1: $e1
    inc bc                                        ; $56a2: $03
    ret c                                         ; $56a3: $d8

    reti                                          ; $56a4: $d9


    sbc $a2                                       ; $56a5: $de $a2
    add a                                         ; $56a7: $87
    add a                                         ; $56a8: $87
    add a                                         ; $56a9: $87
    inc h                                         ; $56aa: $24
    add a                                         ; $56ab: $87
    add a                                         ; $56ac: $87
    add a                                         ; $56ad: $87
    inc h                                         ; $56ae: $24
    add a                                         ; $56af: $87
    add a                                         ; $56b0: $87
    add a                                         ; $56b1: $87
    inc h                                         ; $56b2: $24
    inc bc                                        ; $56b3: $03
    inc bc                                        ; $56b4: $03
    inc bc                                        ; $56b5: $03
    ld [c], a                                     ; $56b6: $e2
    pop hl                                        ; $56b7: $e1
    ld [c], a                                     ; $56b8: $e2
    pop hl                                        ; $56b9: $e1
    pop hl                                        ; $56ba: $e1
    ld [c], a                                     ; $56bb: $e2
    pop hl                                        ; $56bc: $e1
    ld [c], a                                     ; $56bd: $e2
    ld [c], a                                     ; $56be: $e2
    pop hl                                        ; $56bf: $e1
    ld [c], a                                     ; $56c0: $e2
    pop hl                                        ; $56c1: $e1
    sbc $d9                                       ; $56c2: $de $d9
    sbc $e4                                       ; $56c4: $de $e4
    add a                                         ; $56c6: $87
    add a                                         ; $56c7: $87
    add a                                         ; $56c8: $87
    add a                                         ; $56c9: $87
    add a                                         ; $56ca: $87
    add a                                         ; $56cb: $87
    add a                                         ; $56cc: $87
    add a                                         ; $56cd: $87
    add a                                         ; $56ce: $87
    add a                                         ; $56cf: $87
    add a                                         ; $56d0: $87
    add a                                         ; $56d1: $87
    inc bc                                        ; $56d2: $03
    inc bc                                        ; $56d3: $03
    inc bc                                        ; $56d4: $03
    dec b                                         ; $56d5: $05
    ld [c], a                                     ; $56d6: $e2
    pop hl                                        ; $56d7: $e1
    ld [c], a                                     ; $56d8: $e2
    pop hl                                        ; $56d9: $e1
    pop hl                                        ; $56da: $e1
    ld [c], a                                     ; $56db: $e2
    pop hl                                        ; $56dc: $e1
    ld [c], a                                     ; $56dd: $e2
    ld [c], a                                     ; $56de: $e2
    pop hl                                        ; $56df: $e1
    ld [c], a                                     ; $56e0: $e2
    pop hl                                        ; $56e1: $e1
    push hl                                       ; $56e2: $e5
    push hl                                       ; $56e3: $e5
    push hl                                       ; $56e4: $e5
    push hl                                       ; $56e5: $e5
    add a                                         ; $56e6: $87
    add a                                         ; $56e7: $87
    add a                                         ; $56e8: $87
    add a                                         ; $56e9: $87
    add a                                         ; $56ea: $87
    add a                                         ; $56eb: $87
    add a                                         ; $56ec: $87
    add a                                         ; $56ed: $87
    add a                                         ; $56ee: $87
    add a                                         ; $56ef: $87
    add a                                         ; $56f0: $87
    add a                                         ; $56f1: $87
    dec b                                         ; $56f2: $05
    dec b                                         ; $56f3: $05
    dec b                                         ; $56f4: $05
    dec b                                         ; $56f5: $05
    ld sp, $f931                                  ; $56f6: $31 $31 $f9
    ld sp, $f9f9                                  ; $56f9: $31 $f9 $f9
    ld sp, $31f9                                  ; $56fc: $31 $f9 $31
    ld sp, $31f9                                  ; $56ff: $31 $f9 $31
    ld sp, hl                                     ; $5702: $f9
    ld sp, hl                                     ; $5703: $f9
    ld sp, $04f9                                  ; $5704: $31 $f9 $04
    inc b                                         ; $5707: $04
    inc b                                         ; $5708: $04
    inc b                                         ; $5709: $04
    inc b                                         ; $570a: $04
    inc b                                         ; $570b: $04
    inc b                                         ; $570c: $04
    inc b                                         ; $570d: $04
    inc b                                         ; $570e: $04
    inc b                                         ; $570f: $04
    inc b                                         ; $5710: $04
    inc b                                         ; $5711: $04
    inc b                                         ; $5712: $04
    inc b                                         ; $5713: $04
    inc b                                         ; $5714: $04
    inc b                                         ; $5715: $04
    ld bc, $dbda                                  ; $5716: $01 $da $db
    db $dd                                        ; $5719: $dd
    inc bc                                        ; $571a: $03
    call c, $e8df                                 ; $571b: $dc $df $e8
    ld bc, $dbda                                  ; $571e: $01 $da $db
    db $dd                                        ; $5721: $dd
    inc bc                                        ; $5722: $03
    call c, $dfe8                                 ; $5723: $dc $e8 $df
    inc h                                         ; $5726: $24
    inc bc                                        ; $5727: $03
    inc bc                                        ; $5728: $03
    inc bc                                        ; $5729: $03
    inc h                                         ; $572a: $24
    inc bc                                        ; $572b: $03
    inc bc                                        ; $572c: $03
    inc bc                                        ; $572d: $03
    inc h                                         ; $572e: $24
    inc bc                                        ; $572f: $03
    inc bc                                        ; $5730: $03
    inc bc                                        ; $5731: $03
    inc h                                         ; $5732: $24
    inc bc                                        ; $5733: $03
    inc bc                                        ; $5734: $03
    inc bc                                        ; $5735: $03
    db $dd                                        ; $5736: $dd
    db $db                                        ; $5737: $db
    db $dd                                        ; $5738: $dd
    and $df                                       ; $5739: $e6 $df
    db $dd                                        ; $573b: $dd
    db $db                                        ; $573c: $db
    and $db                                       ; $573d: $e6 $db
    rst $18                                       ; $573f: $df
    add sp, -$1a                                  ; $5740: $e8 $e6
    add sp, -$25                                  ; $5742: $e8 $db
    db $dd                                        ; $5744: $dd
    and $03                                       ; $5745: $e6 $03
    inc bc                                        ; $5747: $03
    inc bc                                        ; $5748: $03
    dec b                                         ; $5749: $05
    inc bc                                        ; $574a: $03
    inc bc                                        ; $574b: $03
    inc bc                                        ; $574c: $03
    dec b                                         ; $574d: $05
    inc bc                                        ; $574e: $03
    inc bc                                        ; $574f: $03
    inc bc                                        ; $5750: $03
    dec b                                         ; $5751: $05
    inc bc                                        ; $5752: $03
    inc bc                                        ; $5753: $03
    inc bc                                        ; $5754: $03
    dec b                                         ; $5755: $05
    rst $20                                       ; $5756: $e7
    rst $20                                       ; $5757: $e7

Call_078_5758:
    rst $20                                       ; $5758: $e7
    rst $20                                       ; $5759: $e7
    rst $20                                       ; $575a: $e7
    rst $20                                       ; $575b: $e7
    push af                                       ; $575c: $f5
    push hl                                       ; $575d: $e5
    rst $20                                       ; $575e: $e7
    push af                                       ; $575f: $f5
    or $f7                                        ; $5760: $f6 $f7
    push af                                       ; $5762: $f5
    or $f8                                        ; $5763: $f6 $f8
    ld sp, hl                                     ; $5765: $f9
    dec b                                         ; $5766: $05
    dec b                                         ; $5767: $05
    dec b                                         ; $5768: $05
    dec b                                         ; $5769: $05
    dec b                                         ; $576a: $05
    dec b                                         ; $576b: $05
    dec b                                         ; $576c: $05
    dec b                                         ; $576d: $05
    dec b                                         ; $576e: $05
    dec b                                         ; $576f: $05
    dec b                                         ; $5770: $05
    rlca                                          ; $5771: $07
    dec b                                         ; $5772: $05
    dec b                                         ; $5773: $05
    rlca                                          ; $5774: $07
    rlca                                          ; $5775: $07
    ld sp, $f931                                  ; $5776: $31 $31 $f9
    ld sp, $3131                                  ; $5779: $31 $31 $31
    ld sp, hl                                     ; $577c: $f9
    ld sp, $f9f9                                  ; $577d: $31 $f9 $f9
    ld sp, $31f9                                  ; $5780: $31 $f9 $31
    ld sp, $31f9                                  ; $5783: $31 $f9 $31
    inc b                                         ; $5786: $04
    inc b                                         ; $5787: $04
    inc b                                         ; $5788: $04
    inc b                                         ; $5789: $04
    inc b                                         ; $578a: $04
    inc b                                         ; $578b: $04
    inc b                                         ; $578c: $04
    inc b                                         ; $578d: $04
    inc b                                         ; $578e: $04
    inc b                                         ; $578f: $04
    inc b                                         ; $5790: $04
    inc b                                         ; $5791: $04
    inc b                                         ; $5792: $04
    inc b                                         ; $5793: $04
    inc b                                         ; $5794: $04
    inc b                                         ; $5795: $04
    ld bc, $dbda                                  ; $5796: $01 $da $db
    db $dd                                        ; $5799: $dd
    ld bc, $dfdc                                  ; $579a: $01 $dc $df
    add sp, $03                                   ; $579d: $e8 $03
    jp c, $dddb                                   ; $579f: $da $db $dd

    ld bc, $e8dc                                  ; $57a2: $01 $dc $e8
    rst $18                                       ; $57a5: $df
    inc h                                         ; $57a6: $24
    inc bc                                        ; $57a7: $03
    inc bc                                        ; $57a8: $03
    inc bc                                        ; $57a9: $03
    inc h                                         ; $57aa: $24
    inc bc                                        ; $57ab: $03
    inc bc                                        ; $57ac: $03
    inc bc                                        ; $57ad: $03
    inc h                                         ; $57ae: $24
    inc bc                                        ; $57af: $03
    inc bc                                        ; $57b0: $03
    inc bc                                        ; $57b1: $03
    inc h                                         ; $57b2: $24
    inc bc                                        ; $57b3: $03
    inc bc                                        ; $57b4: $03
    inc bc                                        ; $57b5: $03
    db $dd                                        ; $57b6: $dd
    db $db                                        ; $57b7: $db
    db $dd                                        ; $57b8: $dd
    db $f4                                        ; $57b9: $f4
    rst $18                                       ; $57ba: $df
    db $dd                                        ; $57bb: $dd
    db $db                                        ; $57bc: $db
    rst $38                                       ; $57bd: $ff
    db $db                                        ; $57be: $db
    rst $18                                       ; $57bf: $df
    add sp, $01                                   ; $57c0: $e8 $01
    add sp, -$25                                  ; $57c2: $e8 $db
    db $dd                                        ; $57c4: $dd
    inc bc                                        ; $57c5: $03
    inc bc                                        ; $57c6: $03
    inc bc                                        ; $57c7: $03
    inc bc                                        ; $57c8: $03
    dec b                                         ; $57c9: $05
    inc bc                                        ; $57ca: $03
    inc bc                                        ; $57cb: $03
    inc bc                                        ; $57cc: $03
    rlca                                          ; $57cd: $07
    inc bc                                        ; $57ce: $03
    inc bc                                        ; $57cf: $03
    inc bc                                        ; $57d0: $03
    rlca                                          ; $57d1: $07
    inc bc                                        ; $57d2: $03
    inc bc                                        ; $57d3: $03
    inc bc                                        ; $57d4: $03
    rlca                                          ; $57d5: $07
    or $f8                                        ; $57d6: $f6 $f8
    ld sp, $2f31                                  ; $57d8: $31 $31 $2f
    ld sp, $13f9                                  ; $57db: $31 $f9 $13
    ld sp, hl                                     ; $57de: $f9
    ld sp, $d8f9                                  ; $57df: $31 $f9 $d8
    ld sp, $31f9                                  ; $57e2: $31 $f9 $31
    ld [bc], a                                    ; $57e5: $02
    dec b                                         ; $57e6: $05
    rlca                                          ; $57e7: $07
    rlca                                          ; $57e8: $07
    rlca                                          ; $57e9: $07
    rlca                                          ; $57ea: $07
    rlca                                          ; $57eb: $07
    rlca                                          ; $57ec: $07
    rlca                                          ; $57ed: $07
    rlca                                          ; $57ee: $07
    rlca                                          ; $57ef: $07
    rlca                                          ; $57f0: $07
    rrca                                          ; $57f1: $0f
    rlca                                          ; $57f2: $07
    rlca                                          ; $57f3: $07
    rlca                                          ; $57f4: $07
    rlca                                          ; $57f5: $07
    push hl                                       ; $57f6: $e5
    push de                                       ; $57f7: $d5
    db $e4                                        ; $57f8: $e4
    ld bc, $e7e7                                  ; $57f9: $01 $e7 $e7
    and $df                                       ; $57fc: $e6 $df
    rst $20                                       ; $57fe: $e7
    rst $20                                       ; $57ff: $e7
    and $e0                                       ; $5800: $e6 $e0
    rst $20                                       ; $5802: $e7
    rst $20                                       ; $5803: $e7
    and $e0                                       ; $5804: $e6 $e0
    ld bc, $2109                                  ; $5806: $01 $09 $21
    rlca                                          ; $5809: $07
    ld bc, $2101                                  ; $580a: $01 $01 $21
    rrca                                          ; $580d: $0f
    ld bc, $2101                                  ; $580e: $01 $01 $21
    rrca                                          ; $5811: $0f
    ld bc, $2101                                  ; $5812: $01 $01 $21
    rrca                                          ; $5815: $0f
    ld sp, hl                                     ; $5816: $f9
    ld sp, $02f9                                  ; $5817: $31 $f9 $02
    reti                                          ; $581a: $d9


    jp c, $e1d9                                   ; $581b: $da $d9 $e1

    rlca                                          ; $581e: $07
    ld [$0209], sp                                ; $581f: $08 $09 $02
    ld a, [bc]                                    ; $5822: $0a
    dec bc                                        ; $5823: $0b
    inc c                                         ; $5824: $0c
    ld [bc], a                                    ; $5825: $02
    rlca                                          ; $5826: $07
    rlca                                          ; $5827: $07
    rlca                                          ; $5828: $07
    rlca                                          ; $5829: $07
    rrca                                          ; $582a: $0f
    rrca                                          ; $582b: $0f
    rrca                                          ; $582c: $0f
    rrca                                          ; $582d: $0f
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    daa                                           ; $5831: $27
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    daa                                           ; $5835: $27
    ld [c], a                                     ; $5836: $e2
    inc e                                         ; $5837: $1c
    sub $d6                                       ; $5838: $d6 $d6
    pop hl                                        ; $583a: $e1
    dec de                                        ; $583b: $1b
    inc l                                         ; $583c: $2c
    ld a, [c]                                     ; $583d: $f2
    ld [c], a                                     ; $583e: $e2
    inc e                                         ; $583f: $1c
    sub $d6                                       ; $5840: $d6 $d6
    push hl                                       ; $5842: $e5
    push hl                                       ; $5843: $e5
    push hl                                       ; $5844: $e5
    db $e4                                        ; $5845: $e4
    add a                                         ; $5846: $87
    add a                                         ; $5847: $87
    add h                                         ; $5848: $84
    add h                                         ; $5849: $84
    add a                                         ; $584a: $87
    add a                                         ; $584b: $87
    add h                                         ; $584c: $84
    add h                                         ; $584d: $84
    add a                                         ; $584e: $87
    add a                                         ; $584f: $87
    add h                                         ; $5850: $84
    add h                                         ; $5851: $84
    dec b                                         ; $5852: $05
    dec b                                         ; $5853: $05
    add l                                         ; $5854: $85
    and l                                         ; $5855: $a5
    sub $d6                                       ; $5856: $d6 $d6
    sub $d6                                       ; $5858: $d6 $d6
    ld a, [c]                                     ; $585a: $f2
    ld a, [c]                                     ; $585b: $f2
    ld a, [c]                                     ; $585c: $f2
    ld a, [c]                                     ; $585d: $f2
    sub $d6                                       ; $585e: $d6 $d6
    sub $d6                                       ; $5860: $d6 $d6
    ld a, [c]                                     ; $5862: $f2
    ld a, [c]                                     ; $5863: $f2
    ld a, [c]                                     ; $5864: $f2
    ld a, [c]                                     ; $5865: $f2
    add h                                         ; $5866: $84
    add h                                         ; $5867: $84
    add h                                         ; $5868: $84
    add h                                         ; $5869: $84
    add h                                         ; $586a: $84
    add h                                         ; $586b: $84
    add h                                         ; $586c: $84
    add h                                         ; $586d: $84
    add h                                         ; $586e: $84
    add h                                         ; $586f: $84
    add h                                         ; $5870: $84
    add h                                         ; $5871: $84
    add h                                         ; $5872: $84
    add h                                         ; $5873: $84
    add h                                         ; $5874: $84
    add h                                         ; $5875: $84
    rst $20                                       ; $5876: $e7
    rst $20                                       ; $5877: $e7
    rst $20                                       ; $5878: $e7
    and $f5                                       ; $5879: $e6 $f5
    rst $20                                       ; $587b: $e7
    rst $20                                       ; $587c: $e7
    and $f6                                       ; $587d: $e6 $f6
    push af                                       ; $587f: $f5
    rst $20                                       ; $5880: $e7
    and $f8                                       ; $5881: $e6 $f8
    or $f5                                        ; $5883: $f6 $f5
    and $05                                       ; $5885: $e6 $05
    dec b                                         ; $5887: $05
    add l                                         ; $5888: $85
    and l                                         ; $5889: $a5
    dec h                                         ; $588a: $25
    dec b                                         ; $588b: $05
    dec b                                         ; $588c: $05
    dec h                                         ; $588d: $25
    dec h                                         ; $588e: $25
    dec h                                         ; $588f: $25
    dec b                                         ; $5890: $05
    dec h                                         ; $5891: $25
    daa                                           ; $5892: $27
    dec h                                         ; $5893: $25
    dec h                                         ; $5894: $25
    dec h                                         ; $5895: $25
    sub $d6                                       ; $5896: $d6 $d6
    sub $d6                                       ; $5898: $d6 $d6
    ld [$1deb], a                                 ; $589a: $ea $eb $1d
    ld [$eeed], a                                 ; $589d: $ea $ed $ee
    ld e, $ed                                     ; $58a0: $1e $ed
    db $ed                                        ; $58a2: $ed
    rst $28                                       ; $58a3: $ef
    rst $28                                       ; $58a4: $ef
    rst $28                                       ; $58a5: $ef
    add h                                         ; $58a6: $84
    add h                                         ; $58a7: $84
    add h                                         ; $58a8: $84
    add h                                         ; $58a9: $84
    inc bc                                        ; $58aa: $03
    inc bc                                        ; $58ab: $03
    inc bc                                        ; $58ac: $03
    inc bc                                        ; $58ad: $03
    inc bc                                        ; $58ae: $03
    inc bc                                        ; $58af: $03
    inc bc                                        ; $58b0: $03
    inc bc                                        ; $58b1: $03
    inc bc                                        ; $58b2: $03
    inc bc                                        ; $58b3: $03
    inc bc                                        ; $58b4: $03
    inc bc                                        ; $58b5: $03
    sub $d6                                       ; $58b6: $d6 $d6
    sub $d6                                       ; $58b8: $d6 $d6
    ld [$1deb], a                                 ; $58ba: $ea $eb $1d
    ld [$1eee], a                                 ; $58bd: $ea $ee $1e
    db $ed                                        ; $58c0: $ed
    xor $ef                                       ; $58c1: $ee $ef
    rst $28                                       ; $58c3: $ef
    rst $28                                       ; $58c4: $ef
    rst $28                                       ; $58c5: $ef
    add h                                         ; $58c6: $84
    add h                                         ; $58c7: $84
    add h                                         ; $58c8: $84
    add h                                         ; $58c9: $84
    inc bc                                        ; $58ca: $03
    inc bc                                        ; $58cb: $03
    inc bc                                        ; $58cc: $03
    inc bc                                        ; $58cd: $03
    inc bc                                        ; $58ce: $03
    inc bc                                        ; $58cf: $03
    inc bc                                        ; $58d0: $03
    inc bc                                        ; $58d1: $03
    inc bc                                        ; $58d2: $03
    inc bc                                        ; $58d3: $03
    inc bc                                        ; $58d4: $03
    inc bc                                        ; $58d5: $03
    sub $d6                                       ; $58d6: $d6 $d6
    sub $d6                                       ; $58d8: $d6 $d6
    ld [$1deb], a                                 ; $58da: $ea $eb $1d
    ld [$ed1e], a                                 ; $58dd: $ea $1e $ed
    xor $1e                                       ; $58e0: $ee $1e
    rst $28                                       ; $58e2: $ef
    rst $28                                       ; $58e3: $ef
    rst $28                                       ; $58e4: $ef
    rst $28                                       ; $58e5: $ef
    add h                                         ; $58e6: $84
    add h                                         ; $58e7: $84
    add h                                         ; $58e8: $84
    add h                                         ; $58e9: $84
    inc bc                                        ; $58ea: $03
    inc bc                                        ; $58eb: $03
    inc bc                                        ; $58ec: $03
    inc bc                                        ; $58ed: $03
    inc bc                                        ; $58ee: $03
    inc bc                                        ; $58ef: $03
    inc bc                                        ; $58f0: $03
    inc bc                                        ; $58f1: $03
    inc bc                                        ; $58f2: $03
    inc bc                                        ; $58f3: $03
    inc bc                                        ; $58f4: $03
    inc bc                                        ; $58f5: $03
    ld sp, hl                                     ; $58f6: $f9
    ld hl, sp-$0a                                 ; $58f7: $f8 $f6
    db $f4                                        ; $58f9: $f4
    reti                                          ; $58fa: $d9


    jp c, $db05                                   ; $58fb: $da $05 $db

    rlca                                          ; $58fe: $07
    ld [$dc09], sp                                ; $58ff: $08 $09 $dc
    ld a, [bc]                                    ; $5902: $0a
    dec bc                                        ; $5903: $0b
    inc c                                         ; $5904: $0c
    db $dd                                        ; $5905: $dd
    rlca                                          ; $5906: $07
    daa                                           ; $5907: $27
    dec h                                         ; $5908: $25
    dec h                                         ; $5909: $25
    rrca                                          ; $590a: $0f
    rrca                                          ; $590b: $0f
    rlca                                          ; $590c: $07
    rrca                                          ; $590d: $0f
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    rrca                                          ; $5911: $0f
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    rrca                                          ; $5915: $0f
    rra                                           ; $5916: $1f
    ldh a, [$f0]                                  ; $5917: $f0 $f0
    ldh a, [rNR41]                                ; $5919: $f0 $20
    sub $d6                                       ; $591b: $d6 $d6
    sub $ed                                       ; $591d: $d6 $ed
    inc l                                         ; $591f: $2c
    ld a, [c]                                     ; $5920: $f2
    ld a, [c]                                     ; $5921: $f2
    rra                                           ; $5922: $1f
    sub $d6                                       ; $5923: $d6 $d6
    sub $03                                       ; $5925: $d6 $03
    inc bc                                        ; $5927: $03
    inc bc                                        ; $5928: $03
    inc bc                                        ; $5929: $03
    inc bc                                        ; $592a: $03
    inc bc                                        ; $592b: $03
    inc bc                                        ; $592c: $03
    inc bc                                        ; $592d: $03
    inc bc                                        ; $592e: $03
    inc bc                                        ; $592f: $03
    inc bc                                        ; $5930: $03
    inc bc                                        ; $5931: $03
    inc bc                                        ; $5932: $03
    inc bc                                        ; $5933: $03
    inc bc                                        ; $5934: $03
    inc bc                                        ; $5935: $03
    ldh a, [$f0]                                  ; $5936: $f0 $f0
    ldh a, [$f0]                                  ; $5938: $f0 $f0
    sub $d6                                       ; $593a: $d6 $d6
    sub $d6                                       ; $593c: $d6 $d6
    ld a, [c]                                     ; $593e: $f2
    inc l                                         ; $593f: $2c
    ld a, [c]                                     ; $5940: $f2
    ld a, [c]                                     ; $5941: $f2
    sub $d6                                       ; $5942: $d6 $d6
    sub $d6                                       ; $5944: $d6 $d6
    inc bc                                        ; $5946: $03
    inc bc                                        ; $5947: $03
    inc bc                                        ; $5948: $03
    inc bc                                        ; $5949: $03
    inc bc                                        ; $594a: $03
    inc bc                                        ; $594b: $03
    inc bc                                        ; $594c: $03
    inc bc                                        ; $594d: $03
    inc bc                                        ; $594e: $03
    inc bc                                        ; $594f: $03
    inc bc                                        ; $5950: $03
    inc bc                                        ; $5951: $03
    inc bc                                        ; $5952: $03
    inc bc                                        ; $5953: $03
    inc bc                                        ; $5954: $03
    inc bc                                        ; $5955: $03
    ldh a, [$f0]                                  ; $5956: $f0 $f0
    ldh a, [$f0]                                  ; $5958: $f0 $f0

Jump_078_595a:
    sub $d6                                       ; $595a: $d6 $d6
    sub $d6                                       ; $595c: $d6 $d6
    ld a, [c]                                     ; $595e: $f2
    ld a, [c]                                     ; $595f: $f2
    ld a, [c]                                     ; $5960: $f2
    ld a, [c]                                     ; $5961: $f2
    sub $d6                                       ; $5962: $d6 $d6
    sub $d6                                       ; $5964: $d6 $d6
    inc bc                                        ; $5966: $03
    inc bc                                        ; $5967: $03
    inc bc                                        ; $5968: $03
    inc bc                                        ; $5969: $03
    inc bc                                        ; $596a: $03
    inc bc                                        ; $596b: $03
    inc bc                                        ; $596c: $03
    inc bc                                        ; $596d: $03
    inc bc                                        ; $596e: $03
    inc bc                                        ; $596f: $03
    inc bc                                        ; $5970: $03
    inc bc                                        ; $5971: $03
    inc bc                                        ; $5972: $03
    inc bc                                        ; $5973: $03
    inc bc                                        ; $5974: $03
    inc bc                                        ; $5975: $03
    dec c                                         ; $5976: $0d
    ld c, $0f                                     ; $5977: $0e $0f
    call c, $9999                                 ; $5979: $dc $99 $99
    sbc c                                         ; $597c: $99
    ld [c], a                                     ; $597d: $e2
    ld sp, hl                                     ; $597e: $f9
    ld sp, $01f9                                  ; $597f: $31 $f9 $01
    ld sp, hl                                     ; $5982: $f9
    ld sp, $3938                                  ; $5983: $31 $38 $39
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    rrca                                          ; $5989: $0f
    rrca                                          ; $598a: $0f
    rrca                                          ; $598b: $0f
    rrca                                          ; $598c: $0f
    rrca                                          ; $598d: $0f
    rlca                                          ; $598e: $07
    rlca                                          ; $598f: $07
    rlca                                          ; $5990: $07
    daa                                           ; $5991: $27
    rlca                                          ; $5992: $07
    rlca                                          ; $5993: $07
    add hl, bc                                    ; $5994: $09
    add hl, bc                                    ; $5995: $09
    jr nz, @+$2e                                  ; $5996: $20 $2c

    ld a, [c]                                     ; $5998: $f2
    ld a, [c]                                     ; $5999: $f2
    rst $20                                       ; $599a: $e7
    sub $d6                                       ; $599b: $d6 $d6
    sub $d6                                       ; $599d: $d6 $d6
    ret nz                                        ; $599f: $c0

    pop bc                                        ; $59a0: $c1
    jp nz, $c33a                                  ; $59a1: $c2 $3a $c3

    db $d3                                        ; $59a4: $d3
    call nc, Call_000_0303                        ; $59a5: $d4 $03 $03
    inc bc                                        ; $59a8: $03
    inc bc                                        ; $59a9: $03
    ld bc, $0303                                  ; $59aa: $01 $03 $03
    inc bc                                        ; $59ad: $03
    add hl, bc                                    ; $59ae: $09
    inc c                                         ; $59af: $0c
    inc c                                         ; $59b0: $0c
    inc c                                         ; $59b1: $0c
    add hl, bc                                    ; $59b2: $09
    inc c                                         ; $59b3: $0c
    inc b                                         ; $59b4: $04
    inc b                                         ; $59b5: $04
    ld a, [c]                                     ; $59b6: $f2
    inc l                                         ; $59b7: $2c
    ld a, [c]                                     ; $59b8: $f2
    ld a, [c]                                     ; $59b9: $f2
    sub $d6                                       ; $59ba: $d6 $d6
    sub $d6                                       ; $59bc: $d6 $d6
    pop bc                                        ; $59be: $c1
    jp nz, $c2c1                                  ; $59bf: $c2 $c1 $c2

    pop de                                        ; $59c2: $d1
    call nc, $d4d3                                ; $59c3: $d4 $d3 $d4
    inc bc                                        ; $59c6: $03
    inc bc                                        ; $59c7: $03
    inc bc                                        ; $59c8: $03
    inc bc                                        ; $59c9: $03
    inc bc                                        ; $59ca: $03
    inc bc                                        ; $59cb: $03
    inc bc                                        ; $59cc: $03
    inc bc                                        ; $59cd: $03
    inc c                                         ; $59ce: $0c
    inc c                                         ; $59cf: $0c
    inc c                                         ; $59d0: $0c
    inc c                                         ; $59d1: $0c
    inc b                                         ; $59d2: $04
    inc b                                         ; $59d3: $04
    inc b                                         ; $59d4: $04
    inc b                                         ; $59d5: $04
    ld a, [c]                                     ; $59d6: $f2
    ld a, [c]                                     ; $59d7: $f2
    ld a, [c]                                     ; $59d8: $f2
    ld a, [c]                                     ; $59d9: $f2
    sub $d6                                       ; $59da: $d6 $d6
    sub $d6                                       ; $59dc: $d6 $d6
    pop bc                                        ; $59de: $c1
    jp nz, $c2c1                                  ; $59df: $c2 $c1 $c2

    pop de                                        ; $59e2: $d1
    pop de                                        ; $59e3: $d1
    db $d3                                        ; $59e4: $d3
    call nc, Call_000_0303                        ; $59e5: $d4 $03 $03
    inc bc                                        ; $59e8: $03
    inc bc                                        ; $59e9: $03
    inc bc                                        ; $59ea: $03
    inc bc                                        ; $59eb: $03
    inc bc                                        ; $59ec: $03
    inc bc                                        ; $59ed: $03
    inc c                                         ; $59ee: $0c
    inc c                                         ; $59ef: $0c
    inc c                                         ; $59f0: $0c
    inc c                                         ; $59f1: $0c
    inc b                                         ; $59f2: $04
    inc b                                         ; $59f3: $04
    inc b                                         ; $59f4: $04
    inc b                                         ; $59f5: $04
    sub $7b                                       ; $59f6: $d6 $7b
    ld l, l                                       ; $59f8: $6d
    ld l, [hl]                                    ; $59f9: $6e
    di                                            ; $59fa: $f3
    add h                                         ; $59fb: $84
    ld [hl], $8a                                  ; $59fc: $36 $8a
    ld [hl], b                                    ; $59fe: $70
    ld [hl], c                                    ; $59ff: $71
    ld [hl], c                                    ; $5a00: $71
    ld [hl], c                                    ; $5a01: $71
    ld [hl], d                                    ; $5a02: $72
    ld [hl], e                                    ; $5a03: $73
    ld [hl], e                                    ; $5a04: $73
    ld [hl], e                                    ; $5a05: $73
    add h                                         ; $5a06: $84
    ld bc, $0101                                  ; $5a07: $01 $01 $01
    add h                                         ; $5a0a: $84
    add hl, bc                                    ; $5a0b: $09
    ld bc, $8609                                  ; $5a0c: $01 $09 $86
    add [hl]                                      ; $5a0f: $86
    add [hl]                                      ; $5a10: $86
    add [hl]                                      ; $5a11: $86
    add [hl]                                      ; $5a12: $86
    add [hl]                                      ; $5a13: $86
    add [hl]                                      ; $5a14: $86
    add [hl]                                      ; $5a15: $86
    ld l, a                                       ; $5a16: $6f
    ld a, e                                       ; $5a17: $7b
    ld h, [hl]                                    ; $5a18: $66
    ld h, a                                       ; $5a19: $67
    sbc a                                         ; $5a1a: $9f
    add h                                         ; $5a1b: $84
    ld [hl], $65                                  ; $5a1c: $36 $65
    ld [hl], c                                    ; $5a1e: $71
    ld [hl], c                                    ; $5a1f: $71
    ld [hl], c                                    ; $5a20: $71
    ld [hl], c                                    ; $5a21: $71
    ld [hl], e                                    ; $5a22: $73
    ld [hl], e                                    ; $5a23: $73
    ld [hl], e                                    ; $5a24: $73
    ld [hl], e                                    ; $5a25: $73
    ld bc, $0101                                  ; $5a26: $01 $01 $01
    ld bc, $0909                                  ; $5a29: $01 $09 $09
    ld bc, $8601                                  ; $5a2c: $01 $01 $86
    add [hl]                                      ; $5a2f: $86
    add [hl]                                      ; $5a30: $86
    add [hl]                                      ; $5a31: $86
    add [hl]                                      ; $5a32: $86
    add [hl]                                      ; $5a33: $86
    add [hl]                                      ; $5a34: $86
    add [hl]                                      ; $5a35: $86
    ld l, b                                       ; $5a36: $68
    ld a, e                                       ; $5a37: $7b
    sub c                                         ; $5a38: $91
    and h                                         ; $5a39: $a4
    ld a, h                                       ; $5a3a: $7c
    add h                                         ; $5a3b: $84
    sub h                                         ; $5a3c: $94
    and l                                         ; $5a3d: $a5
    ld [hl], c                                    ; $5a3e: $71
    ld [hl], c                                    ; $5a3f: $71
    ld [hl], c                                    ; $5a40: $71
    adc e                                         ; $5a41: $8b
    ld [hl], e                                    ; $5a42: $73
    ld [hl], e                                    ; $5a43: $73
    adc [hl]                                      ; $5a44: $8e
    rst $28                                       ; $5a45: $ef
    ld bc, $0901                                  ; $5a46: $01 $01 $09
    add hl, bc                                    ; $5a49: $09
    ld bc, $0909                                  ; $5a4a: $01 $09 $09
    add hl, bc                                    ; $5a4d: $09
    add [hl]                                      ; $5a4e: $86
    add [hl]                                      ; $5a4f: $86
    add [hl]                                      ; $5a50: $86
    adc [hl]                                      ; $5a51: $8e
    add [hl]                                      ; $5a52: $86
    add [hl]                                      ; $5a53: $86
    adc [hl]                                      ; $5a54: $8e
    add h                                         ; $5a55: $84
    and b                                         ; $5a56: $a0
    and d                                         ; $5a57: $a2
    ld a, b                                       ; $5a58: $78

Jump_078_5a59:
    ld h, h                                       ; $5a59: $64
    and [hl]                                      ; $5a5a: $a6
    and a                                         ; $5a5b: $a7
    ld [hl], $65                                  ; $5a5c: $36 $65
    xor c                                         ; $5a5e: $a9
    xor d                                         ; $5a5f: $aa
    ld a, [hl-]                                   ; $5a60: $3a
    ld a, a                                       ; $5a61: $7f
    rst $28                                       ; $5a62: $ef
    rst $28                                       ; $5a63: $ef
    rst $28                                       ; $5a64: $ef
    rst $28                                       ; $5a65: $ef
    add hl, bc                                    ; $5a66: $09
    add hl, bc                                    ; $5a67: $09
    ld bc, $0901                                  ; $5a68: $01 $01 $09
    add hl, bc                                    ; $5a6b: $09
    ld bc, $0901                                  ; $5a6c: $01 $01 $09
    add hl, bc                                    ; $5a6f: $09
    ld bc, $8401                                  ; $5a70: $01 $01 $84
    add h                                         ; $5a73: $84
    add h                                         ; $5a74: $84
    add h                                         ; $5a75: $84
    ld [hl], h                                    ; $5a76: $74
    ld [hl], l                                    ; $5a77: $75
    ld [hl], l                                    ; $5a78: $75
    ld [hl], l                                    ; $5a79: $75
    ld [hl], h                                    ; $5a7a: $74
    ld [hl], l                                    ; $5a7b: $75
    ld [hl], l                                    ; $5a7c: $75
    ld [hl], l                                    ; $5a7d: $75
    ld [hl], h                                    ; $5a7e: $74
    ld [hl], l                                    ; $5a7f: $75
    ld [hl], l                                    ; $5a80: $75
    ld [hl], l                                    ; $5a81: $75
    rst $28                                       ; $5a82: $ef
    rst $28                                       ; $5a83: $ef
    call nc, $86d4                                ; $5a84: $d4 $d4 $86
    add [hl]                                      ; $5a87: $86
    add [hl]                                      ; $5a88: $86
    add [hl]                                      ; $5a89: $86
    add [hl]                                      ; $5a8a: $86
    add [hl]                                      ; $5a8b: $86
    add [hl]                                      ; $5a8c: $86
    add [hl]                                      ; $5a8d: $86
    add [hl]                                      ; $5a8e: $86
    add [hl]                                      ; $5a8f: $86
    add [hl]                                      ; $5a90: $86
    add [hl]                                      ; $5a91: $86
    add e                                         ; $5a92: $83
    add e                                         ; $5a93: $83
    adc [hl]                                      ; $5a94: $8e
    adc [hl]                                      ; $5a95: $8e

    db $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $d4, $d4, $d4, $d4
    db $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $8e, $8e, $8e, $8e

    ld [hl], l                                    ; $5ab6: $75
    ld [hl], l                                    ; $5ab7: $75
    sub b                                         ; $5ab8: $90
    ldh a, [$75]                                  ; $5ab9: $f0 $75
    ld [hl], l                                    ; $5abb: $75
    sub b                                         ; $5abc: $90
    sub $75                                       ; $5abd: $d6 $75
    ld [hl], l                                    ; $5abf: $75
    sub b                                         ; $5ac0: $90
    inc l                                         ; $5ac1: $2c
    call nc, $d4d4                                ; $5ac2: $d4 $d4 $d4
    sub $86                                       ; $5ac5: $d6 $86
    add [hl]                                      ; $5ac7: $86
    adc [hl]                                      ; $5ac8: $8e
    add h                                         ; $5ac9: $84
    add [hl]                                      ; $5aca: $86
    add [hl]                                      ; $5acb: $86
    adc [hl]                                      ; $5acc: $8e
    add h                                         ; $5acd: $84
    add [hl]                                      ; $5ace: $86
    add [hl]                                      ; $5acf: $86
    adc [hl]                                      ; $5ad0: $8e
    add h                                         ; $5ad1: $84
    adc [hl]                                      ; $5ad2: $8e
    adc [hl]                                      ; $5ad3: $8e
    adc [hl]                                      ; $5ad4: $8e
    add h                                         ; $5ad5: $84
    ldh a, [$f0]                                  ; $5ad6: $f0 $f0
    ldh a, [$f0]                                  ; $5ad8: $f0 $f0
    sub $d6                                       ; $5ada: $d6 $d6
    sub $d6                                       ; $5adc: $d6 $d6
    ld a, [c]                                     ; $5ade: $f2
    ld a, [c]                                     ; $5adf: $f2
    ld a, [c]                                     ; $5ae0: $f2
    ld a, [c]                                     ; $5ae1: $f2
    sub $d6                                       ; $5ae2: $d6 $d6
    sub $d6                                       ; $5ae4: $d6 $d6
    add h                                         ; $5ae6: $84
    add h                                         ; $5ae7: $84
    add h                                         ; $5ae8: $84
    add h                                         ; $5ae9: $84
    add h                                         ; $5aea: $84
    add h                                         ; $5aeb: $84
    add h                                         ; $5aec: $84
    add h                                         ; $5aed: $84
    add h                                         ; $5aee: $84
    add h                                         ; $5aef: $84
    add h                                         ; $5af0: $84
    add h                                         ; $5af1: $84
    add h                                         ; $5af2: $84
    add h                                         ; $5af3: $84
    add h                                         ; $5af4: $84
    add h                                         ; $5af5: $84
    ldh a, [$f1]                                  ; $5af6: $f0 $f1
    rst $38                                       ; $5af8: $ff
    cpl                                           ; $5af9: $2f
    sub $d6                                       ; $5afa: $d6 $d6
    ld bc, $f2f9                                  ; $5afc: $01 $f9 $f2
    di                                            ; $5aff: $f3
    inc bc                                        ; $5b00: $03
    ld sp, $d6d6                                  ; $5b01: $31 $d6 $d6
    ld bc, $03f9                                  ; $5b04: $01 $f9 $03
    inc bc                                        ; $5b07: $03
    inc b                                         ; $5b08: $04
    inc b                                         ; $5b09: $04
    inc bc                                        ; $5b0a: $03
    inc bc                                        ; $5b0b: $03
    inc b                                         ; $5b0c: $04
    inc b                                         ; $5b0d: $04
    inc bc                                        ; $5b0e: $03
    inc bc                                        ; $5b0f: $03
    inc b                                         ; $5b10: $04
    inc b                                         ; $5b11: $04
    inc bc                                        ; $5b12: $03
    inc bc                                        ; $5b13: $03
    inc b                                         ; $5b14: $04
    inc b                                         ; $5b15: $04
    cpl                                           ; $5b16: $2f
    cpl                                           ; $5b17: $2f
    cpl                                           ; $5b18: $2f
    cpl                                           ; $5b19: $2f
    ld sp, $31f9                                  ; $5b1a: $31 $f9 $31
    ld sp, hl                                     ; $5b1d: $f9
    ld sp, hl                                     ; $5b1e: $f9
    ld sp, $31f9                                  ; $5b1f: $31 $f9 $31
    ld sp, $31f9                                  ; $5b22: $31 $f9 $31
    ld sp, $0404                                  ; $5b25: $31 $04 $04
    inc b                                         ; $5b28: $04
    inc b                                         ; $5b29: $04
    inc b                                         ; $5b2a: $04
    inc b                                         ; $5b2b: $04
    inc b                                         ; $5b2c: $04
    inc b                                         ; $5b2d: $04
    inc b                                         ; $5b2e: $04
    inc b                                         ; $5b2f: $04
    inc b                                         ; $5b30: $04
    inc b                                         ; $5b31: $04
    inc b                                         ; $5b32: $04
    inc b                                         ; $5b33: $04
    inc b                                         ; $5b34: $04
    inc b                                         ; $5b35: $04
    cpl                                           ; $5b36: $2f
    cpl                                           ; $5b37: $2f
    rst $38                                       ; $5b38: $ff
    inc l                                         ; $5b39: $2c
    ld sp, $0131                                  ; $5b3a: $31 $31 $01
    sub $f9                                       ; $5b3d: $d6 $f9
    ld sp, hl                                     ; $5b3f: $f9
    inc bc                                        ; $5b40: $03
    ret c                                         ; $5b41: $d8

    ld sp, hl                                     ; $5b42: $f9
    ld sp, $da01                                  ; $5b43: $31 $01 $da
    inc b                                         ; $5b46: $04
    inc b                                         ; $5b47: $04
    inc h                                         ; $5b48: $24
    inc b                                         ; $5b49: $04
    inc b                                         ; $5b4a: $04
    inc b                                         ; $5b4b: $04
    inc h                                         ; $5b4c: $24
    inc b                                         ; $5b4d: $04
    inc b                                         ; $5b4e: $04
    inc b                                         ; $5b4f: $04
    inc h                                         ; $5b50: $24
    inc bc                                        ; $5b51: $03
    inc b                                         ; $5b52: $04
    inc b                                         ; $5b53: $04
    inc h                                         ; $5b54: $24
    inc bc                                        ; $5b55: $03
    ld a, [c]                                     ; $5b56: $f2
    ld a, [c]                                     ; $5b57: $f2
    ld a, [c]                                     ; $5b58: $f2
    ld a, [c]                                     ; $5b59: $f2
    sub $d6                                       ; $5b5a: $d6 $d6
    sub $d6                                       ; $5b5c: $d6 $d6
    reti                                          ; $5b5e: $d9


    sbc $de                                       ; $5b5f: $de $de
    reti                                          ; $5b61: $d9


    db $db                                        ; $5b62: $db
    db $dd                                        ; $5b63: $dd
    db $dd                                        ; $5b64: $dd
    db $db                                        ; $5b65: $db
    add h                                         ; $5b66: $84
    add h                                         ; $5b67: $84
    add h                                         ; $5b68: $84
    add h                                         ; $5b69: $84
    add h                                         ; $5b6a: $84
    add h                                         ; $5b6b: $84
    add h                                         ; $5b6c: $84
    add h                                         ; $5b6d: $84
    inc bc                                        ; $5b6e: $03
    inc bc                                        ; $5b6f: $03
    inc bc                                        ; $5b70: $03
    inc bc                                        ; $5b71: $03
    inc bc                                        ; $5b72: $03
    inc bc                                        ; $5b73: $03
    inc bc                                        ; $5b74: $03
    inc bc                                        ; $5b75: $03
    ld a, [c]                                     ; $5b76: $f2
    di                                            ; $5b77: $f3
    inc bc                                        ; $5b78: $03
    ld sp, $d6d6                                  ; $5b79: $31 $d6 $d6
    ld bc, $c1f9                                  ; $5b7c: $01 $f9 $c1
    push de                                       ; $5b7f: $d5
    inc bc                                        ; $5b80: $03
    ld sp, $d7d1                                  ; $5b81: $31 $d1 $d7
    ld bc, $03f9                                  ; $5b84: $01 $f9 $03
    inc bc                                        ; $5b87: $03
    inc b                                         ; $5b88: $04
    inc b                                         ; $5b89: $04
    inc bc                                        ; $5b8a: $03
    inc bc                                        ; $5b8b: $03
    inc b                                         ; $5b8c: $04
    inc b                                         ; $5b8d: $04
    inc c                                         ; $5b8e: $0c
    inc b                                         ; $5b8f: $04
    inc b                                         ; $5b90: $04
    inc b                                         ; $5b91: $04
    inc b                                         ; $5b92: $04
    inc b                                         ; $5b93: $04
    inc b                                         ; $5b94: $04
    inc b                                         ; $5b95: $04
    ld sp, hl                                     ; $5b96: $f9
    ld sp, $f9f9                                  ; $5b97: $31 $f9 $f9
    ld sp, $31f9                                  ; $5b9a: $31 $f9 $31
    ld sp, $31f9                                  ; $5b9d: $31 $f9 $31
    ld sp, hl                                     ; $5ba0: $f9
    ld d, c                                       ; $5ba1: $51
    ld sp, $31f9                                  ; $5ba2: $31 $f9 $31
    ld d, e                                       ; $5ba5: $53
    inc b                                         ; $5ba6: $04
    inc b                                         ; $5ba7: $04
    inc b                                         ; $5ba8: $04
    inc b                                         ; $5ba9: $04
    inc b                                         ; $5baa: $04
    inc b                                         ; $5bab: $04
    inc b                                         ; $5bac: $04
    inc b                                         ; $5bad: $04
    inc b                                         ; $5bae: $04
    inc b                                         ; $5baf: $04
    inc b                                         ; $5bb0: $04
    ld [bc], a                                    ; $5bb1: $02
    inc b                                         ; $5bb2: $04
    inc b                                         ; $5bb3: $04
    inc b                                         ; $5bb4: $04
    ld [bc], a                                    ; $5bb5: $02
    ld sp, $03f9                                  ; $5bb6: $31 $f9 $03
    call c, Call_000_31f9                         ; $5bb9: $dc $f9 $31
    ld bc, $52da                                  ; $5bbc: $01 $da $52
    ld d, c                                       ; $5bbf: $51
    ld d, d                                       ; $5bc0: $52
    call c, $5354                                 ; $5bc1: $dc $54 $53
    ld d, h                                       ; $5bc4: $54
    jp c, Jump_000_0404                           ; $5bc5: $da $04 $04

    inc h                                         ; $5bc8: $24
    inc bc                                        ; $5bc9: $03
    inc b                                         ; $5bca: $04
    inc b                                         ; $5bcb: $04
    inc h                                         ; $5bcc: $24
    inc bc                                        ; $5bcd: $03
    ld [bc], a                                    ; $5bce: $02
    ld bc, $0301                                  ; $5bcf: $01 $01 $03
    ld [bc], a                                    ; $5bd2: $02
    ld bc, $0301                                  ; $5bd3: $01 $01 $03
    rst $18                                       ; $5bd6: $df

Jump_078_5bd7:
    add sp, -$21                                  ; $5bd7: $e8 $df
    db $dd                                        ; $5bd9: $dd
    db $db                                        ; $5bda: $db
    db $dd                                        ; $5bdb: $dd
    db $db                                        ; $5bdc: $db
    rst $18                                       ; $5bdd: $df
    add sp, -$21                                  ; $5bde: $e8 $df
    add sp, -$25                                  ; $5be0: $e8 $db
    db $dd                                        ; $5be2: $dd
    db $e4                                        ; $5be3: $e4
    jp z, $03e5                                   ; $5be4: $ca $e5 $03

    inc bc                                        ; $5be7: $03
    inc bc                                        ; $5be8: $03
    inc bc                                        ; $5be9: $03
    inc bc                                        ; $5bea: $03
    inc bc                                        ; $5beb: $03
    inc bc                                        ; $5bec: $03
    inc bc                                        ; $5bed: $03
    inc bc                                        ; $5bee: $03
    inc bc                                        ; $5bef: $03
    inc bc                                        ; $5bf0: $03
    inc bc                                        ; $5bf1: $03
    inc bc                                        ; $5bf2: $03
    add e                                         ; $5bf3: $83
    adc e                                         ; $5bf4: $8b
    add e                                         ; $5bf5: $83
    ld l, d                                       ; $5bf6: $6a
    ld a, e                                       ; $5bf7: $7b
    ld h, h                                       ; $5bf8: $64
    ld a, l                                       ; $5bf9: $7d
    ld a, h                                       ; $5bfa: $7c
    add h                                         ; $5bfb: $84
    add c                                         ; $5bfc: $81
    add l                                         ; $5bfd: $85
    add b                                         ; $5bfe: $80
    add a                                         ; $5bff: $87
    add d                                         ; $5c00: $82
    adc b                                         ; $5c01: $88
    rst $28                                       ; $5c02: $ef
    rst $28                                       ; $5c03: $ef
    rst $28                                       ; $5c04: $ef
    rst $28                                       ; $5c05: $ef
    ld bc, $0101                                  ; $5c06: $01 $01 $01
    ld bc, $0901                                  ; $5c09: $01 $01 $09
    add hl, bc                                    ; $5c0c: $09
    add hl, bc                                    ; $5c0d: $09
    add hl, bc                                    ; $5c0e: $09
    add hl, bc                                    ; $5c0f: $09
    add hl, bc                                    ; $5c10: $09
    add hl, bc                                    ; $5c11: $09
    add h                                         ; $5c12: $84
    add h                                         ; $5c13: $84
    add h                                         ; $5c14: $84
    add h                                         ; $5c15: $84
    ld a, [hl]                                    ; $5c16: $7e
    ld a, e                                       ; $5c17: $7b
    ld a, b                                       ; $5c18: $78
    ld h, h                                       ; $5c19: $64
    add [hl]                                      ; $5c1a: $86
    add h                                         ; $5c1b: $84
    ld [hl], $65                                  ; $5c1c: $36 $65
    adc c                                         ; $5c1e: $89
    add a                                         ; $5c1f: $87
    ld a, [hl-]                                   ; $5c20: $3a
    ld a, a                                       ; $5c21: $7f
    rst $28                                       ; $5c22: $ef
    rst $28                                       ; $5c23: $ef
    ld l, c                                       ; $5c24: $69
    ld a, $01                                     ; $5c25: $3e $01
    ld bc, $0101                                  ; $5c27: $01 $01 $01
    add hl, bc                                    ; $5c2a: $09
    add hl, bc                                    ; $5c2b: $09
    ld bc, $0901                                  ; $5c2c: $01 $01 $09
    add hl, bc                                    ; $5c2f: $09
    ld bc, $8401                                  ; $5c30: $01 $01 $84
    add h                                         ; $5c33: $84
    db $01                                        ; $5c34: $01
    db $01                                        ; $5c35: $01

    db $fd, $fe, $04, $fd, $7c, $84, $3f, $40, $80, $79, $7a, $64, $3f, $40, $36, $65
    db $01, $01, $01, $01, $01, $09, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01
    db $fe, $04, $fd, $fe, $69, $3e, $3f, $40, $9d, $5b, $5c, $64, $9e, $5d, $5e, $65
    db $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01, $01, $09, $01, $01, $01

    ldh a, [$f1]                                  ; $5c76: $f0 $f1
    ld l, d                                       ; $5c78: $6a
    ld a, e                                       ; $5c79: $7b
    sub $d6                                       ; $5c7a: $d6 $d6
    ld a, h                                       ; $5c7c: $7c
    add h                                         ; $5c7d: $84
    ld a, [c]                                     ; $5c7e: $f2
    di                                            ; $5c7f: $f3
    ld [hl], c                                    ; $5c80: $71
    ld [hl], c                                    ; $5c81: $71
    sub $d6                                       ; $5c82: $d6 $d6
    ld [hl], e                                    ; $5c84: $73
    ld [hl], e                                    ; $5c85: $73
    add h                                         ; $5c86: $84
    add h                                         ; $5c87: $84
    ld bc, $8401                                  ; $5c88: $01 $01 $84
    add h                                         ; $5c8b: $84
    ld bc, $8409                                  ; $5c8c: $01 $09 $84
    add h                                         ; $5c8f: $84
    add [hl]                                      ; $5c90: $86
    add [hl]                                      ; $5c91: $86
    add h                                         ; $5c92: $84
    add h                                         ; $5c93: $84
    add [hl]                                      ; $5c94: $86
    add [hl]                                      ; $5c95: $86

    db $78, $6b, $6c, $7f, $6d, $6e, $6f, $3e, $71, $71, $71, $71, $73, $73, $73, $73
    db $01, $01, $01, $01, $01, $01, $01, $01, $86, $86, $86, $86, $86, $86, $86, $86
    db $66, $ef, $ef, $ef, $3f, $4f, $50, $4f, $71, $e3, $e2, $e1, $73, $e0, $e1, $e2
    db $01, $82, $82, $82, $01, $82, $82, $82, $86, $82, $82, $82, $86, $82, $82, $82

    ld a, [c]                                     ; $5cd6: $f2
    ld a, [c]                                     ; $5cd7: $f2
    ld a, [c]                                     ; $5cd8: $f2
    ld a, [c]                                     ; $5cd9: $f2
    sub $d6                                       ; $5cda: $d6 $d6
    sub $d6                                       ; $5cdc: $d6 $d6
    sbc $d9                                       ; $5cde: $de $d9
    sbc $d9                                       ; $5ce0: $de $d9
    db $dd                                        ; $5ce2: $dd
    db $db                                        ; $5ce3: $db
    db $dd                                        ; $5ce4: $dd
    db $db                                        ; $5ce5: $db
    add h                                         ; $5ce6: $84
    add h                                         ; $5ce7: $84
    add h                                         ; $5ce8: $84
    add h                                         ; $5ce9: $84
    add h                                         ; $5cea: $84
    add h                                         ; $5ceb: $84
    add h                                         ; $5cec: $84
    add h                                         ; $5ced: $84
    inc bc                                        ; $5cee: $03
    inc bc                                        ; $5cef: $03
    inc bc                                        ; $5cf0: $03
    inc bc                                        ; $5cf1: $03
    inc bc                                        ; $5cf2: $03
    inc bc                                        ; $5cf3: $03
    inc bc                                        ; $5cf4: $03
    inc bc                                        ; $5cf5: $03
    ld a, [c]                                     ; $5cf6: $f2
    di                                            ; $5cf7: $f3
    ld [hl], l                                    ; $5cf8: $75
    ld [hl], l                                    ; $5cf9: $75
    sub $d6                                       ; $5cfa: $d6 $d6
    ld [hl], l                                    ; $5cfc: $75
    ld [hl], l                                    ; $5cfd: $75
    sbc $d8                                       ; $5cfe: $de $d8
    ld [hl], l                                    ; $5d00: $75
    ld [hl], l                                    ; $5d01: $75
    db $dd                                        ; $5d02: $dd
    jp c, $d4d4                                   ; $5d03: $da $d4 $d4

    add h                                         ; $5d06: $84
    add h                                         ; $5d07: $84
    add [hl]                                      ; $5d08: $86
    add [hl]                                      ; $5d09: $86
    add h                                         ; $5d0a: $84
    add h                                         ; $5d0b: $84
    add [hl]                                      ; $5d0c: $86
    add [hl]                                      ; $5d0d: $86
    inc bc                                        ; $5d0e: $03
    inc hl                                        ; $5d0f: $23
    add [hl]                                      ; $5d10: $86
    add [hl]                                      ; $5d11: $86
    inc bc                                        ; $5d12: $03
    inc hl                                        ; $5d13: $23
    adc [hl]                                      ; $5d14: $8e
    adc [hl]                                      ; $5d15: $8e

    db $75, $e3, $e2, $e1, $75, $e0, $e1, $e2, $75, $e3, $e2, $e1, $d4, $e9, $ea, $eb
    db $86, $82, $82, $82, $86, $82, $82, $82, $86, $82, $82, $82, $8e, $03, $03, $03

    db $db                                        ; $5d36: $db
    db $dd                                        ; $5d37: $dd
    db $dd                                        ; $5d38: $dd
    db $db                                        ; $5d39: $db
    add sp, -$21                                  ; $5d3a: $e8 $df
    rst $18                                       ; $5d3c: $df
    add sp, -$23                                  ; $5d3d: $e8 $dd
    db $db                                        ; $5d3f: $db
    db $db                                        ; $5d40: $db
    db $dd                                        ; $5d41: $dd
    push hl                                       ; $5d42: $e5
    push hl                                       ; $5d43: $e5
    push hl                                       ; $5d44: $e5
    push hl                                       ; $5d45: $e5
    inc bc                                        ; $5d46: $03
    inc bc                                        ; $5d47: $03
    inc bc                                        ; $5d48: $03
    inc bc                                        ; $5d49: $03
    inc bc                                        ; $5d4a: $03
    inc bc                                        ; $5d4b: $03
    inc bc                                        ; $5d4c: $03
    inc bc                                        ; $5d4d: $03
    inc bc                                        ; $5d4e: $03
    inc bc                                        ; $5d4f: $03
    inc bc                                        ; $5d50: $03
    inc bc                                        ; $5d51: $03
    add e                                         ; $5d52: $83
    add e                                         ; $5d53: $83
    add e                                         ; $5d54: $83
    add e                                         ; $5d55: $83

    db $dd, $dc, $ff, $2f, $df, $da, $01, $f9, $db, $dc, $03, $31, $e5, $e5, $e5, $ca
    db $03, $23, $04, $04, $03, $23, $04, $04, $03, $23, $04, $04, $a3, $a3, $a3, $ab
    db $2f, $2f, $2f, $2f, $31, $f9, $31, $31, $f9, $31, $f9, $f9, $e4, $31, $f9, $31
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $a3, $04, $04, $04
    db $ff, $ec, $ed, $ee, $01, $2d, $1f, $21, $03, $28, $20, $25, $01, $ec, $ed, $29
    db $24, $03, $03, $03, $24, $03, $03, $03, $24, $03, $03, $03, $24, $03, $03, $03
    db $04, $fd, $fe, $04, $79, $7a, $3f, $40, $6a, $7b, $78, $64, $7c, $a1, $8c, $8d
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $09
    db $3a, $3b, $3c, $03, $69, $3e, $3f, $01, $6a, $7b, $78, $fd, $7c, $84, $36, $65
    db $01, $01, $01, $04, $01, $01, $01, $04, $01, $01, $01, $01, $01, $09, $01, $01
    db $31, $02, $1a, $19, $f9, $02, $19, $1a, $fe, $04, $fd, $fe, $7c, $84, $36, $65
    db $04, $04, $01, $01, $04, $04, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $9b, $02, $f9, $01, $19, $02, $31, $03, $04, $fd, $fe, $04, $7c, $84, $36, $79
    db $09, $24, $04, $24, $01, $24, $04, $24, $01, $01, $01, $01, $01, $09, $01, $01
    db $ef, $ef, $ef, $ef, $50, $4f, $50, $4f, $e2, $e1, $e2, $e1, $e1, $e2, $e1, $e2
    db $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82
    db $ef, $ef, $3a, $79, $50, $4f, $69, $3e, $e2, $1c, $38, $7c, $e1, $1b, $3c, $83
    db $82, $82, $01, $01, $82, $82, $01, $01, $82, $82, $01, $01, $82, $82, $01, $09
    db $7a, $87, $91, $a4, $3f, $40, $94, $a5, $78, $64, $6a, $a8, $36, $65, $7c, $84
    db $01, $09, $09, $09, $01, $01, $09, $09, $01, $01, $01, $09, $01, $01, $01, $09
    db $a0, $a2, $3a, $7f, $a6, $a7, $9d, $5b, $a9, $aa, $9e, $5d, $36, $65, $66, $67
    db $09, $09, $01, $01, $09, $09, $09, $01, $09, $09, $09, $01, $01, $01, $01, $01
    db $e2, $e1, $e2, $e1, $e1, $e2, $e1, $e2, $e2, $e1, $e2, $e1, $1d, $ea, $eb, $1d
    db $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $03, $03, $03, $03
    db $e2, $1c, $80, $87, $e1, $1b, $3f, $40, $e2, $1c, $78, $64, $ea, $26, $36, $65
    db $82, $82, $09, $09, $82, $82, $01, $01, $82, $82, $01, $01, $03, $03, $01, $01
    db $3a, $64, $7d, $7e, $69, $81, $85, $86, $6a, $82, $88, $89, $7c, $84, $36, $65
    db $01, $01, $01, $01, $01, $09, $09, $09, $01, $09, $09, $09, $01, $09, $01, $01
    db $3a, $7f, $80, $87, $69, $3e, $3f, $37, $6a, $7b, $78, $3b, $7c, $84, $36, $65
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $1e, $ed, $ee, $1e, $22, $23, $24, $27, $07, $08, $09, $28, $0a, $0b, $0c, $ec
    db $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $03, $00, $00, $00, $03
    db $ed, $29, $a0, $a2, $1f, $2a, $a6, $a7, $20, $25, $a9, $aa, $ed, $29, $7c, $84
    db $03, $03, $09, $09, $03, $03, $09, $09, $03, $03, $09, $09, $03, $03, $01, $09
    db $80, $87, $3a, $7f, $3f, $40, $69, $3e, $78, $79, $7a, $7b, $36, $65, $7c, $84
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $80, $87, $3a, $7f, $91, $a4, $a0, $a2, $94, $a5, $a6, $a7, $36, $a8, $a9, $aa
    db $09, $09, $01, $01, $09, $09, $09, $09, $09, $09, $09, $09, $01, $09, $09, $09
    db $3a, $a3, $5f, $60, $69, $ef, $61, $62, $6a, $f0, $63, $64, $7a, $84, $36, $65
    db $01, $09, $01, $01, $01, $09, $01, $01, $01, $09, $01, $01, $01, $09, $01, $01
    db $3a, $9d, $5b, $5c, $69, $9e, $5d, $5e, $6a, $66, $67, $68, $7c, $84, $36, $65
    db $01, $09, $01, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $fd, $fe, $ff, $75, $00, $0b, $0c, $f4, $0a, $fe, $ff, $f4, $3b, $3c, $3d, $f4
    db $08, $08, $08, $00, $08, $08, $08, $48, $08, $08, $08, $48, $08, $08, $08, $48
    db $3e, $3f, $75, $75, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4
    db $08, $08, $00, $00, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $80, $87, $3a, $7f, $5c, $40, $6b, $6c, $5e, $6d, $6e, $6f, $68, $65, $8a, $9f
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09
    db $80, $87, $3a, $7f, $3f, $40, $69, $3e, $78, $64, $79, $7a, $36, $65, $7c, $84
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $fd, $fe, $04, $fd, $3f, $40, $69, $3e, $78, $64, $6a, $7b, $91, $a4, $a0, $a2
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $09, $09
    db $fe, $04, $fd, $fe, $3f, $40, $69, $3e, $78, $37, $38, $7c, $36, $3b, $3c, $83
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $3a, $7f, $80, $87, $38, $7c, $3f, $40, $3c, $83, $78, $64, $7c, $84, $36, $65
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $09, $01, $01, $01, $09, $01, $01
    db $3a, $7f, $80, $87, $79, $7a, $3f, $40, $6a, $7b, $78, $64, $7c, $84, $36, $65
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $94, $a5, $a6, $a7, $69, $a8, $a9, $aa, $6a, $7b, $78, $64, $7c, $37, $38, $7c
    db $09, $09, $09, $09, $01, $09, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01
    db $3a, $7f, $80, $87, $69, $3e, $3f, $79, $6a, $7b, $78, $64, $7c, $64, $7d, $7e
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $80, $87, $3a, $7f, $3f, $79, $7a, $3e, $78, $64, $40, $41, $36, $65, $42, $43
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $08, $08, $01, $01, $08, $08
    db $80, $a1, $8c, $8d, $3f, $a3, $5f, $60, $41, $44, $61, $62, $45, $46, $63, $84
    db $09, $09, $09, $09, $01, $09, $01, $01, $28, $08, $01, $01, $08, $08, $01, $09
    db $80, $3b, $3c, $83, $3f, $40, $69, $3e, $78, $64, $6a, $7b, $36, $65, $7c, $84
    db $09, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $80, $81, $85, $86, $3f, $82, $88, $89, $78, $64, $6a, $7b, $36, $65, $37, $38
    db $09, $09, $09, $09, $01, $09, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01
    db $75, $75, $75, $75, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4
    db $00, $00, $00, $00, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $75, $75, $3e, $3f, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4, $f4
    db $00, $00, $08, $08, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $47, $fd, $fe, $ff, $48, $00, $0b, $0c, $49, $0a, $fe, $ff, $4a, $3b, $3c, $ef
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $87
    db $e7, $e6, $e7, $e7, $e7, $e6, $e7, $e7, $e7, $f4, $ca, $e5, $ef, $ef, $ef, $ef
    db $01, $05, $05, $05, $01, $05, $05, $05, $01, $05, $0d, $05, $87, $87, $87, $87
    db $04, $fd, $fe, $04, $3f, $40, $69, $3e, $78, $64, $6b, $6c, $36, $6d, $6e, $6f
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $fd, $fe, $04, $fd, $3f, $40, $79, $7a, $78, $64, $6a, $7b, $9d, $5b, $5c, $84
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01, $09
    db $fe, $04, $fd, $f0, $3f, $40, $69, $d6, $78, $a1, $8c, $2c, $36, $a3, $5f, $d6
    db $01, $01, $01, $87, $01, $01, $01, $87, $01, $09, $09, $87, $01, $09, $01, $87
    db $f0, $f0, $f0, $f0, $d6, $d6, $d6, $d6, $f2, $f2, $f2, $2c, $d6, $d6, $d6, $d6
    db $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87
    db $3a, $7f, $8a, $9f, $7a, $3e, $3f, $40, $6a, $7b, $78, $64, $7c, $84, $36, $79
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $9e, $5d, $5e, $87, $66, $67, $68, $40, $6a, $7b, $78, $64, $7a, $84, $36, $65
    db $09, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $3a, $ef, $61, $2c, $69, $f0, $63, $d6, $91, $a4, $a0, $ff, $94, $a5, $a6, $01
    db $01, $09, $01, $87, $01, $09, $01, $87, $09, $09, $09, $06, $09, $09, $09, $06
    db $f2, $f2, $f2, $2c, $d6, $d6, $d6, $d6, $2f, $2f, $70, $71, $f9, $f9, $72, $73
    db $87, $87, $87, $87, $87, $87, $87, $87, $06, $06, $04, $04, $06, $06, $04, $04
    db $80, $87, $9d, $5b, $3f, $40, $9e, $5d, $78, $64, $66, $67, $7c, $65, $7c, $84
    db $09, $09, $09, $01, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $5c, $87, $3a, $7f, $5e, $40, $69, $3e, $68, $64, $6a, $37, $36, $65, $7c, $3b
    db $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $80, $a8, $a9, $03, $3f, $40, $69, $01, $38, $7c, $6b, $03, $3c, $83, $6e, $01
    db $09, $09, $09, $06, $01, $01, $01, $06, $01, $01, $01, $06, $01, $09, $01, $06
    db $31, $31, $74, $75, $f9, $f9, $74, $75, $31, $31, $74, $75, $f9, $f9, $f4, $d4
    db $06, $06, $04, $04, $06, $06, $04, $04, $06, $06, $04, $04, $06, $06, $04, $0c

    rst $20                                       ; $63b6: $e7
    rst $20                                       ; $63b7: $e7
    rst $20                                       ; $63b8: $e7
    rst $20                                       ; $63b9: $e7
    push hl                                       ; $63ba: $e5
    push hl                                       ; $63bb: $e5
    push hl                                       ; $63bc: $e5
    push hl                                       ; $63bd: $e5
    nop                                           ; $63be: $00
    dec b                                         ; $63bf: $05
    dec b                                         ; $63c0: $05
    dec b                                         ; $63c1: $05
    ld [bc], a                                    ; $63c2: $02
    rla                                           ; $63c3: $17
    jr jr_078_63de                                ; $63c4: $18 $18

    ld bc, $0101                                  ; $63c6: $01 $01 $01
    ld bc, $2121                                  ; $63c9: $01 $21 $21
    ld hl, $0621                                  ; $63cc: $21 $21 $06
    ld b, $06                                     ; $63cf: $06 $06
    ld b, $06                                     ; $63d1: $06 $06
    ld bc, $0101                                  ; $63d3: $01 $01 $01
    rst $20                                       ; $63d6: $e7
    rst $20                                       ; $63d7: $e7
    rst $20                                       ; $63d8: $e7
    rst $20                                       ; $63d9: $e7
    push hl                                       ; $63da: $e5
    push hl                                       ; $63db: $e5
    push hl                                       ; $63dc: $e5
    push hl                                       ; $63dd: $e5

jr_078_63de:
    ld b, $00                                     ; $63de: $06 $00
    dec b                                         ; $63e0: $05
    dec b                                         ; $63e1: $05
    ld [bc], a                                    ; $63e2: $02
    ld [bc], a                                    ; $63e3: $02
    rlca                                          ; $63e4: $07
    ld [$0101], sp                                ; $63e5: $08 $01 $01
    ld bc, $2101                                  ; $63e8: $01 $01 $21
    ld hl, $2121                                  ; $63eb: $21 $21 $21
    ld b, $06                                     ; $63ee: $06 $06
    ld b, $06                                     ; $63f0: $06 $06
    ld h, $06                                     ; $63f2: $26 $06
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    rst $20                                       ; $63f6: $e7
    rst $20                                       ; $63f7: $e7
    and $e5                                       ; $63f8: $e6 $e5
    push hl                                       ; $63fa: $e5
    jp z, $e6f4                                   ; $63fb: $ca $f4 $e6

    dec b                                         ; $63fe: $05
    ld b, $ff                                     ; $63ff: $06 $ff
    inc bc                                        ; $6401: $03
    add hl, bc                                    ; $6402: $09
    ld [bc], a                                    ; $6403: $02
    inc bc                                        ; $6404: $03
    ld bc, $0101                                  ; $6405: $01 $01 $01
    ld hl, $210f                                  ; $6408: $21 $0f $21
    add hl, hl                                    ; $640b: $29
    ld hl, $060f                                  ; $640c: $21 $0f $06
    ld b, $26                                     ; $640f: $06 $26
    rlca                                          ; $6411: $07
    nop                                           ; $6412: $00
    ld h, $26                                     ; $6413: $26 $26
    rlca                                          ; $6415: $07
    dec c                                         ; $6416: $0d
    ld c, $0f                                     ; $6417: $0e $0f
    ld [bc], a                                    ; $6419: $02
    sbc c                                         ; $641a: $99
    rst $20                                       ; $641b: $e7

jr_078_641c:
    add sp, -$17                                  ; $641c: $e8 $e9
    ld sp, $1702                                  ; $641e: $31 $02 $17
    jr jr_078_641c                                ; $6421: $18 $f9

    ld [bc], a                                    ; $6423: $02
    add hl, de                                    ; $6424: $19
    ld a, [de]                                    ; $6425: $1a
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    daa                                           ; $6429: $27
    rrca                                          ; $642a: $0f
    rrca                                          ; $642b: $0f
    rrca                                          ; $642c: $0f
    rrca                                          ; $642d: $0f
    rlca                                          ; $642e: $07
    rlca                                          ; $642f: $07
    ld bc, $0701                                  ; $6430: $01 $01 $07
    rlca                                          ; $6433: $07
    ld bc, $e501                                  ; $6434: $01 $01 $e5
    push hl                                       ; $6437: $e5
    push hl                                       ; $6438: $e5
    push hl                                       ; $6439: $e5
    rst $20                                       ; $643a: $e7
    rst $20                                       ; $643b: $e7
    rst $20                                       ; $643c: $e7
    rst $20                                       ; $643d: $e7
    rst $20                                       ; $643e: $e7
    rst $20                                       ; $643f: $e7
    rst $20                                       ; $6440: $e7
    rst $20                                       ; $6441: $e7
    rst $20                                       ; $6442: $e7
    rst $20                                       ; $6443: $e7
    rst $20                                       ; $6444: $e7
    rst $20                                       ; $6445: $e7
    and l                                         ; $6446: $a5
    and l                                         ; $6447: $a5
    and l                                         ; $6448: $a5
    and l                                         ; $6449: $a5
    add l                                         ; $644a: $85
    add l                                         ; $644b: $85
    add l                                         ; $644c: $85
    add l                                         ; $644d: $85
    add l                                         ; $644e: $85
    add l                                         ; $644f: $85
    add l                                         ; $6450: $85
    add l                                         ; $6451: $85
    add l                                         ; $6452: $85
    add l                                         ; $6453: $85
    add l                                         ; $6454: $85
    add l                                         ; $6455: $85
    push hl                                       ; $6456: $e5
    push hl                                       ; $6457: $e5
    push hl                                       ; $6458: $e5
    jp z, $e7e7                                   ; $6459: $ca $e7 $e7

    rst $20                                       ; $645c: $e7
    rst $20                                       ; $645d: $e7
    rst $20                                       ; $645e: $e7
    rst $20                                       ; $645f: $e7
    rst $20                                       ; $6460: $e7
    rst $20                                       ; $6461: $e7
    rst $20                                       ; $6462: $e7

Jump_078_6463:
    rst $20                                       ; $6463: $e7
    rst $20                                       ; $6464: $e7
    rst $20                                       ; $6465: $e7
    and l                                         ; $6466: $a5
    and l                                         ; $6467: $a5
    and l                                         ; $6468: $a5
    xor l                                         ; $6469: $ad
    add l                                         ; $646a: $85
    add l                                         ; $646b: $85
    add l                                         ; $646c: $85
    add l                                         ; $646d: $85
    add l                                         ; $646e: $85
    add l                                         ; $646f: $85
    add l                                         ; $6470: $85
    add l                                         ; $6471: $85
    add l                                         ; $6472: $85
    add l                                         ; $6473: $85
    add l                                         ; $6474: $85
    add l                                         ; $6475: $85
    db $e4                                        ; $6476: $e4
    ld [bc], a                                    ; $6477: $02

Jump_078_6478:
    ld bc, $e603                                  ; $6478: $01 $03 $e6
    ld [bc], a                                    ; $647b: $02
    inc bc                                        ; $647c: $03
    ld bc, $97e6                                  ; $647d: $01 $e6 $97
    ld bc, $e6fd                                  ; $6480: $01 $fd $e6
    cp $04                                        ; $6483: $fe $04
    add a                                         ; $6485: $87
    and l                                         ; $6486: $a5
    ld h, $26                                     ; $6487: $26 $26
    rlca                                          ; $6489: $07
    and l                                         ; $648a: $a5
    ld h, $26                                     ; $648b: $26 $26
    rlca                                          ; $648d: $07
    and l                                         ; $648e: $a5
    ld l, $26                                     ; $648f: $2e $26
    ld bc, $01a5                                  ; $6491: $01 $a5 $01
    ld bc, $3109                                  ; $6494: $01 $09 $31
    ld [bc], a                                    ; $6497: $02
    ld a, [de]                                    ; $6498: $1a
    add hl, de                                    ; $6499: $19
    ld sp, hl                                     ; $649a: $f9
    ld [bc], a                                    ; $649b: $02
    add hl, de                                    ; $649c: $19
    ld a, [de]                                    ; $649d: $1a
    cp $04                                        ; $649e: $fe $04
    db $fd                                        ; $64a0: $fd
    cp $3a                                        ; $64a1: $fe $3a
    ld a, a                                       ; $64a3: $7f
    add b                                         ; $64a4: $80
    add a                                         ; $64a5: $87
    rlca                                          ; $64a6: $07
    rlca                                          ; $64a7: $07
    ld bc, $0701                                  ; $64a8: $01 $01 $07
    rlca                                          ; $64ab: $07
    ld bc, $0101                                  ; $64ac: $01 $01 $01
    ld bc, $0101                                  ; $64af: $01 $01 $01
    ld bc, $0901                                  ; $64b2: $01 $01 $09
    add hl, bc                                    ; $64b5: $09
    rst $20                                       ; $64b6: $e7
    rst $20                                       ; $64b7: $e7
    rst $20                                       ; $64b8: $e7
    rst $20                                       ; $64b9: $e7
    rst $20                                       ; $64ba: $e7
    rst $20                                       ; $64bb: $e7
    rst $20                                       ; $64bc: $e7
    rst $20                                       ; $64bd: $e7
    rst $20                                       ; $64be: $e7
    rst $20                                       ; $64bf: $e7
    rst $20                                       ; $64c0: $e7
    rst $20                                       ; $64c1: $e7
    rst $20                                       ; $64c2: $e7
    rst $20                                       ; $64c3: $e7
    rst $20                                       ; $64c4: $e7
    rst $20                                       ; $64c5: $e7
    add l                                         ; $64c6: $85
    add l                                         ; $64c7: $85
    add l                                         ; $64c8: $85
    add l                                         ; $64c9: $85
    add l                                         ; $64ca: $85
    add l                                         ; $64cb: $85
    add l                                         ; $64cc: $85
    add l                                         ; $64cd: $85
    add l                                         ; $64ce: $85
    add l                                         ; $64cf: $85
    add l                                         ; $64d0: $85
    add l                                         ; $64d1: $85
    add l                                         ; $64d2: $85
    add l                                         ; $64d3: $85
    add l                                         ; $64d4: $85
    add l                                         ; $64d5: $85
    and $5b                                       ; $64d6: $e6 $5b
    ld e, h                                       ; $64d8: $5c
    ld b, b                                       ; $64d9: $40
    and $5d                                       ; $64da: $e6 $5d
    ld e, [hl]                                    ; $64dc: $5e
    ld h, h                                       ; $64dd: $64
    and $67                                       ; $64de: $e6 $67
    ld l, b                                       ; $64e0: $68
    ld h, l                                       ; $64e1: $65
    and $87                                       ; $64e2: $e6 $87
    ld a, [hl-]                                   ; $64e4: $3a
    ld a, a                                       ; $64e5: $7f
    and l                                         ; $64e6: $a5
    ld bc, $0101                                  ; $64e7: $01 $01 $01
    and l                                         ; $64ea: $a5
    ld bc, $0101                                  ; $64eb: $01 $01 $01
    and l                                         ; $64ee: $a5
    ld bc, $0101                                  ; $64ef: $01 $01 $01
    and l                                         ; $64f2: $a5
    add hl, bc                                    ; $64f3: $09
    ld bc, $3701                                  ; $64f4: $01 $01 $37
    jr c, @+$7e                                   ; $64f7: $38 $7c

    ld b, b                                       ; $64f9: $40
    dec sp                                        ; $64fa: $3b
    inc a                                         ; $64fb: $3c
    add e                                         ; $64fc: $83
    ld h, h                                       ; $64fd: $64
    ld a, h                                       ; $64fe: $7c
    add h                                         ; $64ff: $84
    ld [hl], $65                                  ; $6500: $36 $65
    add b                                         ; $6502: $80
    ld h, h                                       ; $6503: $64
    ld a, l                                       ; $6504: $7d
    ld a, [hl]                                    ; $6505: $7e
    ld bc, $0101                                  ; $6506: $01 $01 $01
    ld bc, $0101                                  ; $6509: $01 $01 $01
    add hl, bc                                    ; $650c: $09
    ld bc, $0901                                  ; $650d: $01 $01 $09
    ld bc, $0901                                  ; $6510: $01 $01 $09
    ld bc, $0101                                  ; $6513: $01 $01 $01
    push hl                                       ; $6516: $e5
    push hl                                       ; $6517: $e5
    push hl                                       ; $6518: $e5
    push hl                                       ; $6519: $e5
    dec b                                         ; $651a: $05
    dec b                                         ; $651b: $05
    ld b, $00                                     ; $651c: $06 $00
    jr jr_078_6538                                ; $651e: $18 $18

    ld c, e                                       ; $6520: $4b
    ld [bc], a                                    ; $6521: $02
    ld a, [de]                                    ; $6522: $1a
    ld a, [de]                                    ; $6523: $1a
    ld [bc], a                                    ; $6524: $02
    ld [bc], a                                    ; $6525: $02
    and l                                         ; $6526: $a5
    and l                                         ; $6527: $a5
    and l                                         ; $6528: $a5
    and l                                         ; $6529: $a5
    ld [bc], a                                    ; $652a: $02
    ld [bc], a                                    ; $652b: $02
    ld [bc], a                                    ; $652c: $02
    ld [bc], a                                    ; $652d: $02
    ld bc, $0a01                                  ; $652e: $01 $01 $0a
    ld [bc], a                                    ; $6531: $02
    ld bc, $2201                                  ; $6532: $01 $01 $22
    ld [bc], a                                    ; $6535: $02

Call_078_6536:
    push hl                                       ; $6536: $e5
    push hl                                       ; $6537: $e5

jr_078_6538:
    push hl                                       ; $6538: $e5
    jp z, Jump_000_0505                           ; $6539: $ca $05 $05

    dec b                                         ; $653c: $05
    ld b, $07                                     ; $653d: $06 $07
    ld [$0209], sp                                ; $653f: $08 $09 $02
    ld a, [bc]                                    ; $6542: $0a
    dec bc                                        ; $6543: $0b
    inc c                                         ; $6544: $0c
    ld [bc], a                                    ; $6545: $02
    and l                                         ; $6546: $a5
    and l                                         ; $6547: $a5
    and l                                         ; $6548: $a5
    xor l                                         ; $6549: $ad
    ld [bc], a                                    ; $654a: $02
    ld [bc], a                                    ; $654b: $02
    ld [bc], a                                    ; $654c: $02
    ld [bc], a                                    ; $654d: $02
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    ld [hl+], a                                   ; $6551: $22
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    ld [hl+], a                                   ; $6555: $22
    db $f4                                        ; $6556: $f4
    ld b, b                                       ; $6557: $40
    ld l, c                                       ; $6558: $69
    and c                                         ; $6559: $a1
    rst $38                                       ; $655a: $ff
    ld h, h                                       ; $655b: $64
    ld l, d                                       ; $655c: $6a
    and e                                         ; $655d: $a3
    inc bc                                        ; $655e: $03
    ld h, l                                       ; $655f: $65
    ld a, h                                       ; $6560: $7c
    rst $28                                       ; $6561: $ef
    ld bc, $807f                                  ; $6562: $01 $7f $80
    ldh a, [$a5]                                  ; $6565: $f0 $a5
    ld bc, $0901                                  ; $6567: $01 $01 $09
    ld [hl+], a                                   ; $656a: $22
    ld bc, $0901                                  ; $656b: $01 $01 $09
    ld [hl+], a                                   ; $656e: $22
    ld bc, $0901                                  ; $656f: $01 $01 $09
    ld [hl+], a                                   ; $6572: $22
    ld bc, $0909                                  ; $6573: $01 $09 $09
    adc h                                         ; $6576: $8c
    adc l                                         ; $6577: $8d
    add l                                         ; $6578: $85
    add [hl]                                      ; $6579: $86
    ld e, a                                       ; $657a: $5f
    ld h, b                                       ; $657b: $60
    adc b                                         ; $657c: $88
    adc c                                         ; $657d: $89
    ld h, c                                       ; $657e: $61
    ld h, d                                       ; $657f: $62
    ld a, h                                       ; $6580: $7c
    add h                                         ; $6581: $84
    ld h, e                                       ; $6582: $63
    sub c                                         ; $6583: $91
    and h                                         ; $6584: $a4
    and b                                         ; $6585: $a0
    add hl, bc                                    ; $6586: $09
    add hl, bc                                    ; $6587: $09
    add hl, bc                                    ; $6588: $09
    add hl, bc                                    ; $6589: $09
    ld bc, $0901                                  ; $658a: $01 $01 $09
    add hl, bc                                    ; $658d: $09
    ld bc, $0101                                  ; $658e: $01 $01 $01
    add hl, bc                                    ; $6591: $09
    ld bc, $0909                                  ; $6592: $01 $09 $09
    add hl, bc                                    ; $6595: $09
    ld sp, $4cf9                                  ; $6596: $31 $f9 $4c
    ld c, l                                       ; $6599: $4d
    ld c, [hl]                                    ; $659a: $4e
    jr nc, jr_078_65ec                            ; $659b: $30 $4f

    ld d, b                                       ; $659d: $50
    jr @+$04                                      ; $659e: $18 $02

    ld sp, hl                                     ; $65a0: $f9
    ld bc, $021a                                  ; $65a1: $01 $1a $02
    ld sp, $0703                                  ; $65a4: $31 $03 $07
    rlca                                          ; $65a7: $07
    add hl, bc                                    ; $65a8: $09
    add hl, bc                                    ; $65a9: $09
    rrca                                          ; $65aa: $0f
    rlca                                          ; $65ab: $07
    add hl, bc                                    ; $65ac: $09
    add hl, bc                                    ; $65ad: $09
    ld bc, $0727                                  ; $65ae: $01 $27 $07
    daa                                           ; $65b1: $27
    ld bc, $0727                                  ; $65b2: $01 $27 $07
    daa                                           ; $65b5: $27
    ld d, c                                       ; $65b6: $51
    jp $d3d2                                      ; $65b7: $c3 $d2 $d3


    ld d, d                                       ; $65ba: $52
    jp $d4d3                                      ; $65bb: $c3 $d3 $d4


    rst $10                                       ; $65be: $d7
    jp Jump_078_51d2                              ; $65bf: $c3 $d2 $51


    sbc $c3                                       ; $65c2: $de $c3
    pop de                                        ; $65c4: $d1
    ld d, e                                       ; $65c5: $53
    add hl, bc                                    ; $65c6: $09
    inc c                                         ; $65c7: $0c
    inc b                                         ; $65c8: $04
    inc b                                         ; $65c9: $04
    add hl, bc                                    ; $65ca: $09
    inc c                                         ; $65cb: $0c
    inc b                                         ; $65cc: $04
    inc b                                         ; $65cd: $04
    add hl, bc                                    ; $65ce: $09
    inc c                                         ; $65cf: $0c
    inc b                                         ; $65d0: $04
    inc b                                         ; $65d1: $04
    add hl, bc                                    ; $65d2: $09
    inc c                                         ; $65d3: $0c
    inc b                                         ; $65d4: $04
    inc b                                         ; $65d5: $04
    jp nc, $d2d3                                  ; $65d6: $d2 $d3 $d2

    db $d3                                        ; $65d9: $d3
    pop de                                        ; $65da: $d1
    jp nc, $d2d1                                  ; $65db: $d2 $d1 $d2

    ld d, d                                       ; $65de: $52
    db $e4                                        ; $65df: $e4
    jp z, $54e5                                   ; $65e0: $ca $e5 $54

    and $e7                                       ; $65e3: $e6 $e7
    rst $20                                       ; $65e5: $e7
    inc b                                         ; $65e6: $04
    inc b                                         ; $65e7: $04
    inc b                                         ; $65e8: $04
    inc b                                         ; $65e9: $04
    inc b                                         ; $65ea: $04
    inc b                                         ; $65eb: $04

jr_078_65ec:
    inc b                                         ; $65ec: $04
    inc b                                         ; $65ed: $04
    inc b                                         ; $65ee: $04
    add d                                         ; $65ef: $82
    adc d                                         ; $65f0: $8a
    add d                                         ; $65f1: $82
    inc b                                         ; $65f2: $04
    add d                                         ; $65f3: $82
    add d                                         ; $65f4: $82
    add d                                         ; $65f5: $82
    jp nc, $d2d3                                  ; $65f6: $d2 $d3 $d2

    db $d3                                        ; $65f9: $d3
    pop de                                        ; $65fa: $d1
    jp nc, $d2d1                                  ; $65fb: $d2 $d1 $d2

    push hl                                       ; $65fe: $e5
    push hl                                       ; $65ff: $e5
    push hl                                       ; $6600: $e5
    push hl                                       ; $6601: $e5
    rst $20                                       ; $6602: $e7
    rst $20                                       ; $6603: $e7
    rst $20                                       ; $6604: $e7
    rst $20                                       ; $6605: $e7
    inc b                                         ; $6606: $04
    inc b                                         ; $6607: $04
    inc b                                         ; $6608: $04
    inc b                                         ; $6609: $04
    inc b                                         ; $660a: $04
    inc b                                         ; $660b: $04
    inc b                                         ; $660c: $04
    inc b                                         ; $660d: $04
    add d                                         ; $660e: $82
    add d                                         ; $660f: $82
    add d                                         ; $6610: $82
    add d                                         ; $6611: $82
    add d                                         ; $6612: $82
    add d                                         ; $6613: $82
    add d                                         ; $6614: $82
    add d                                         ; $6615: $82
    sbc e                                         ; $6616: $9b
    ld [bc], a                                    ; $6617: $02
    ld sp, hl                                     ; $6618: $f9
    ld bc, $0219                                  ; $6619: $01 $19 $02
    ld sp, $0403                                  ; $661c: $31 $03 $04
    db $fd                                        ; $661f: $fd
    cp $04                                        ; $6620: $fe $04
    sub c                                         ; $6622: $91
    and h                                         ; $6623: $a4
    and b                                         ; $6624: $a0
    and d                                         ; $6625: $a2
    add hl, bc                                    ; $6626: $09
    daa                                           ; $6627: $27
    rlca                                          ; $6628: $07
    daa                                           ; $6629: $27
    ld bc, $0727                                  ; $662a: $01 $27 $07
    daa                                           ; $662d: $27
    ld bc, $0101                                  ; $662e: $01 $01 $01
    ld bc, $0909                                  ; $6631: $01 $09 $09
    add hl, bc                                    ; $6634: $09
    add hl, bc                                    ; $6635: $09
    ld h, h                                       ; $6636: $64
    db $fd                                        ; $6637: $fd
    cp $55                                        ; $6638: $fe $55
    ld a, b                                       ; $663a: $78
    ld a, c                                       ; $663b: $79
    ld a, d                                       ; $663c: $7a
    ld d, a                                       ; $663d: $57
    ld [hl], $65                                  ; $663e: $36 $65
    ld a, h                                       ; $6640: $7c
    add h                                         ; $6641: $84
    ld a, [hl-]                                   ; $6642: $3a
    ld a, a                                       ; $6643: $7f
    add b                                         ; $6644: $80
    and c                                         ; $6645: $a1
    ld bc, $0101                                  ; $6646: $01 $01 $01
    inc b                                         ; $6649: $04
    ld bc, $0101                                  ; $664a: $01 $01 $01
    inc b                                         ; $664d: $04
    ld bc, $0101                                  ; $664e: $01 $01 $01
    add hl, bc                                    ; $6651: $09
    ld bc, $0901                                  ; $6652: $01 $01 $09
    add hl, bc                                    ; $6655: $09
    ld d, [hl]                                    ; $6656: $56
    and $e7                                       ; $6657: $e6 $e7
    rst $20                                       ; $6659: $e7
    ld e, b                                       ; $665a: $58
    and $e7                                       ; $665b: $e6 $e7
    rst $20                                       ; $665d: $e7
    ld [hl], $e6                                  ; $665e: $36 $e6
    rst $20                                       ; $6660: $e7
    ld d, e                                       ; $6661: $53
    adc h                                         ; $6662: $8c
    db $f4                                        ; $6663: $f4
    jp z, Jump_000_0454                           ; $6664: $ca $54 $04

    add d                                         ; $6667: $82
    add d                                         ; $6668: $82
    add d                                         ; $6669: $82
    inc b                                         ; $666a: $04
    add d                                         ; $666b: $82
    add d                                         ; $666c: $82
    add d                                         ; $666d: $82
    ld bc, $8282                                  ; $666e: $01 $82 $82
    adc c                                         ; $6671: $89
    add hl, bc                                    ; $6672: $09
    add d                                         ; $6673: $82
    adc d                                         ; $6674: $8a
    adc c                                         ; $6675: $89
    rst $20                                       ; $6676: $e7
    rst $20                                       ; $6677: $e7
    rst $20                                       ; $6678: $e7
    rst $20                                       ; $6679: $e7
    rst $20                                       ; $667a: $e7
    rst $20                                       ; $667b: $e7
    rst $20                                       ; $667c: $e7
    rst $20                                       ; $667d: $e7
    ld d, l                                       ; $667e: $55
    ld d, [hl]                                    ; $667f: $56
    rst $20                                       ; $6680: $e7
    rst $20                                       ; $6681: $e7
    ld d, a                                       ; $6682: $57
    ld e, b                                       ; $6683: $58
    push hl                                       ; $6684: $e5
    push hl                                       ; $6685: $e5
    add d                                         ; $6686: $82
    add d                                         ; $6687: $82
    add d                                         ; $6688: $82
    add d                                         ; $6689: $82
    add d                                         ; $668a: $82
    add d                                         ; $668b: $82
    add d                                         ; $668c: $82
    add d                                         ; $668d: $82
    adc c                                         ; $668e: $89
    adc c                                         ; $668f: $89
    add d                                         ; $6690: $82
    add d                                         ; $6691: $82
    adc c                                         ; $6692: $89
    adc c                                         ; $6693: $89
    and d                                         ; $6694: $a2
    and d                                         ; $6695: $a2
    sub h                                         ; $6696: $94
    and l                                         ; $6697: $a5
    and [hl]                                      ; $6698: $a6
    and a                                         ; $6699: $a7
    ld l, d                                       ; $669a: $6a
    xor b                                         ; $669b: $a8
    xor c                                         ; $669c: $a9
    xor d                                         ; $669d: $aa
    ld a, h                                       ; $669e: $7c
    add h                                         ; $669f: $84
    ld [hl], $65                                  ; $66a0: $36 $65
    add b                                         ; $66a2: $80
    ld a, c                                       ; $66a3: $79
    ld a, d                                       ; $66a4: $7a
    ld a, a                                       ; $66a5: $7f
    add hl, bc                                    ; $66a6: $09
    add hl, bc                                    ; $66a7: $09
    add hl, bc                                    ; $66a8: $09
    add hl, bc                                    ; $66a9: $09
    ld bc, $0909                                  ; $66aa: $01 $09 $09
    add hl, bc                                    ; $66ad: $09
    ld bc, $0109                                  ; $66ae: $01 $09 $01
    ld bc, $0109                                  ; $66b1: $01 $09 $01
    ld bc, $6901                                  ; $66b4: $01 $01 $69
    ld a, $3f                                     ; $66b7: $3e $3f
    and e                                         ; $66b9: $a3
    ld l, d                                       ; $66ba: $6a
    ld a, e                                       ; $66bb: $7b
    ld a, b                                       ; $66bc: $78
    rst $28                                       ; $66bd: $ef
    ld a, h                                       ; $66be: $7c
    add h                                         ; $66bf: $84
    ld [hl], $f0                                  ; $66c0: $36 $f0
    add b                                         ; $66c2: $80
    add a                                         ; $66c3: $87
    ld a, [hl-]                                   ; $66c4: $3a
    ld a, c                                       ; $66c5: $79
    ld bc, $0101                                  ; $66c6: $01 $01 $01
    add hl, bc                                    ; $66c9: $09
    ld bc, $0101                                  ; $66ca: $01 $01 $01
    add hl, bc                                    ; $66cd: $09
    ld bc, $0109                                  ; $66ce: $01 $09 $01
    add hl, bc                                    ; $66d1: $09
    add hl, bc                                    ; $66d2: $09
    add hl, bc                                    ; $66d3: $09
    ld bc, $5f01                                  ; $66d4: $01 $01 $5f
    ret nz                                        ; $66d7: $c0

    pop bc                                        ; $66d8: $c1
    ld e, c                                       ; $66d9: $59
    ld h, c                                       ; $66da: $61
    jp $d4d3                                      ; $66db: $c3 $d3 $d4


    ld h, e                                       ; $66de: $63
    jp $5ad7                                      ; $66df: $c3 $d7 $5a


    ld a, d                                       ; $66e2: $7a
    jp Jump_078_5bd7                              ; $66e3: $c3 $d7 $5b


    ld bc, $0d0d                                  ; $66e6: $01 $0d $0d
    add hl, bc                                    ; $66e9: $09
    ld bc, $050d                                  ; $66ea: $01 $0d $05
    dec b                                         ; $66ed: $05
    ld bc, $050d                                  ; $66ee: $01 $0d $05
    ld [$0d01], sp                                ; $66f1: $08 $01 $0d
    dec b                                         ; $66f4: $05
    ld [$5d5c], sp                                ; $66f5: $08 $5c $5d
    pop bc                                        ; $66f8: $c1
    jp nz, $d2d1                                  ; $66f9: $c2 $d1 $d2

    db $d3                                        ; $66fc: $d3
    call nc, $5f5e                                ; $66fd: $d4 $5e $5f
    ld h, b                                       ; $6700: $60
    ld h, c                                       ; $6701: $61
    ld h, d                                       ; $6702: $62
    ld h, e                                       ; $6703: $63
    ld h, h                                       ; $6704: $64
    ld h, l                                       ; $6705: $65
    add hl, bc                                    ; $6706: $09
    add hl, bc                                    ; $6707: $09
    dec c                                         ; $6708: $0d
    dec c                                         ; $6709: $0d
    dec b                                         ; $670a: $05
    dec b                                         ; $670b: $05
    dec b                                         ; $670c: $05
    dec b                                         ; $670d: $05
    ld [$0808], sp                                ; $670e: $08 $08 $08
    ld [$0808], sp                                ; $6711: $08 $08 $08
    ld [$3f08], sp                                ; $6714: $08 $08 $3f
    ld b, b                                       ; $6717: $40
    ld l, c                                       ; $6718: $69
    ld a, $78                                     ; $6719: $3e $78
    ld h, h                                       ; $671b: $64
    ld l, d                                       ; $671c: $6a
    ld l, l                                       ; $671d: $6d
    ld [hl], $79                                  ; $671e: $36 $79
    ld a, d                                       ; $6720: $7a
    add h                                         ; $6721: $84
    and d                                         ; $6722: $a2
    ld a, a                                       ; $6723: $7f
    add b                                         ; $6724: $80
    add a                                         ; $6725: $87
    ld bc, $0101                                  ; $6726: $01 $01 $01
    ld bc, $0101                                  ; $6729: $01 $01 $01
    ld bc, $0101                                  ; $672c: $01 $01 $01
    ld bc, $0901                                  ; $672f: $01 $01 $09
    add hl, bc                                    ; $6732: $09
    ld bc, $0909                                  ; $6733: $01 $09 $09
    ld l, e                                       ; $6736: $6b
    ld l, h                                       ; $6737: $6c
    ld l, c                                       ; $6738: $69
    ld a, $6e                                     ; $6739: $3e $6e
    ld l, a                                       ; $673b: $6f
    ld l, d                                       ; $673c: $6a
    ld a, e                                       ; $673d: $7b
    adc d                                         ; $673e: $8a
    sbc a                                         ; $673f: $9f
    scf                                           ; $6740: $37
    jr c, jr_078_677d                             ; $6741: $38 $3a

    ld a, a                                       ; $6743: $7f
    dec sp                                        ; $6744: $3b
    inc a                                         ; $6745: $3c
    ld bc, $0101                                  ; $6746: $01 $01 $01
    ld bc, $0101                                  ; $6749: $01 $01 $01
    ld bc, $0901                                  ; $674c: $01 $01 $09
    add hl, bc                                    ; $674f: $09
    ld bc, $0101                                  ; $6750: $01 $01 $01
    ld bc, $0101                                  ; $6753: $01 $01 $01
    ccf                                           ; $6756: $3f
    jp $c2d2                                      ; $6757: $c3 $d2 $c2


    ld a, b                                       ; $675a: $78
    jp $d4d3                                      ; $675b: $c3 $d3 $d4


    ld a, h                                       ; $675e: $7c
    db $fd                                        ; $675f: $fd
    cp $04                                        ; $6760: $fe $04
    add e                                         ; $6762: $83
    ld a, a                                       ; $6763: $7f
    sbc l                                         ; $6764: $9d
    ld e, e                                       ; $6765: $5b
    ld bc, $050d                                  ; $6766: $01 $0d $05
    dec c                                         ; $6769: $0d
    ld bc, $050d                                  ; $676a: $01 $0d $05
    dec b                                         ; $676d: $05
    ld bc, $0101                                  ; $676e: $01 $01 $01
    ld bc, $0109                                  ; $6771: $01 $09 $01
    add hl, bc                                    ; $6774: $09
    ld bc, $c2c1                                  ; $6775: $01 $c1 $c2
    pop bc                                        ; $6778: $c1
    jp nz, $d4d3                                  ; $6779: $c2 $d3 $d4

    db $d3                                        ; $677c: $d3

jr_078_677d:
    call nc, $fefd                                ; $677d: $d4 $fd $fe
    inc b                                         ; $6780: $04
    db $fd                                        ; $6781: $fd
    ld e, h                                       ; $6782: $5c
    ld a, a                                       ; $6783: $7f
    add b                                         ; $6784: $80
    add a                                         ; $6785: $87
    dec c                                         ; $6786: $0d
    dec c                                         ; $6787: $0d
    dec c                                         ; $6788: $0d
    dec c                                         ; $6789: $0d
    dec b                                         ; $678a: $05
    dec b                                         ; $678b: $05
    dec b                                         ; $678c: $05
    dec b                                         ; $678d: $05
    ld bc, $0101                                  ; $678e: $01 $01 $01
    ld bc, $0101                                  ; $6791: $01 $01 $01
    add hl, bc                                    ; $6794: $09
    add hl, bc                                    ; $6795: $09
    call nc, $d6d7                                ; $6796: $d4 $d7 $d6
    sub $d3                                       ; $6799: $d6 $d3
    rst $10                                       ; $679b: $d7
    sub $d7                                       ; $679c: $d6 $d7
    push hl                                       ; $679e: $e5
    push hl                                       ; $679f: $e5
    push hl                                       ; $67a0: $e5
    push hl                                       ; $67a1: $e5
    rst $20                                       ; $67a2: $e7
    rst $20                                       ; $67a3: $e7
    rst $20                                       ; $67a4: $e7
    rst $20                                       ; $67a5: $e7
    inc b                                         ; $67a6: $04
    inc b                                         ; $67a7: $04
    add hl, bc                                    ; $67a8: $09
    add hl, bc                                    ; $67a9: $09
    inc b                                         ; $67aa: $04
    inc b                                         ; $67ab: $04
    add hl, bc                                    ; $67ac: $09
    add hl, bc                                    ; $67ad: $09
    add d                                         ; $67ae: $82
    add d                                         ; $67af: $82
    add d                                         ; $67b0: $82
    add d                                         ; $67b1: $82
    add d                                         ; $67b2: $82
    add d                                         ; $67b3: $82
    add d                                         ; $67b4: $82
    add d                                         ; $67b5: $82
    rst $10                                       ; $67b6: $d7
    db $fd                                        ; $67b7: $fd
    db $fd                                        ; $67b8: $fd
    ld d, l                                       ; $67b9: $55
    rst $10                                       ; $67ba: $d7
    sbc $3f                                       ; $67bb: $de $3f
    ld d, a                                       ; $67bd: $57
    push de                                       ; $67be: $d5
    db $e4                                        ; $67bf: $e4
    ld a, b                                       ; $67c0: $78
    ld e, c                                       ; $67c1: $59
    rst $20                                       ; $67c2: $e7
    and $36                                       ; $67c3: $e6 $36
    ld h, l                                       ; $67c5: $65
    add hl, bc                                    ; $67c6: $09
    ld bc, $0201                                  ; $67c7: $01 $01 $02
    add hl, bc                                    ; $67ca: $09
    add hl, bc                                    ; $67cb: $09
    ld bc, $8a02                                  ; $67cc: $01 $02 $8a
    and d                                         ; $67cf: $a2
    ld bc, $8201                                  ; $67d0: $01 $01 $82
    and d                                         ; $67d3: $a2
    ld bc, $5601                                  ; $67d4: $01 $01 $56
    ld d, l                                       ; $67d7: $55
    ld d, [hl]                                    ; $67d8: $56
    call c, Call_078_5758                         ; $67d9: $dc $58 $57
    ld e, b                                       ; $67dc: $58
    jp c, Jump_078_595a                           ; $67dd: $da $5a $59

    ld e, d                                       ; $67e0: $5a
    call c, $6d7c                                 ; $67e1: $dc $7c $6d
    ld l, [hl]                                    ; $67e4: $6e
    jp c, $0102                                   ; $67e5: $da $02 $01

    ld bc, $0203                                  ; $67e8: $01 $03 $02
    ld bc, $0301                                  ; $67eb: $01 $01 $03
    ld bc, $0101                                  ; $67ee: $01 $01 $01
    inc bc                                        ; $67f1: $03
    ld bc, $0101                                  ; $67f2: $01 $01 $01
    inc bc                                        ; $67f5: $03
    add sp, -$1a                                  ; $67f6: $e8 $e6
    rst $20                                       ; $67f8: $e7
    rst $20                                       ; $67f9: $e7
    db $dd                                        ; $67fa: $dd
    and $e7                                       ; $67fb: $e6 $e7
    rst $20                                       ; $67fd: $e7
    rst $18                                       ; $67fe: $df
    and $e7                                       ; $67ff: $e6 $e7
    rst $20                                       ; $6801: $e7
    db $db                                        ; $6802: $db
    and $e7                                       ; $6803: $e6 $e7
    ld h, [hl]                                    ; $6805: $66
    inc bc                                        ; $6806: $03
    add e                                         ; $6807: $83
    add d                                         ; $6808: $82
    add d                                         ; $6809: $82
    inc bc                                        ; $680a: $03
    add e                                         ; $680b: $83
    add d                                         ; $680c: $82
    add d                                         ; $680d: $82
    inc bc                                        ; $680e: $03
    add e                                         ; $680f: $83
    add d                                         ; $6810: $82
    add d                                         ; $6811: $82
    inc bc                                        ; $6812: $03
    add e                                         ; $6813: $83
    add d                                         ; $6814: $82
    adc c                                         ; $6815: $89
    rst $20                                       ; $6816: $e7
    rst $20                                       ; $6817: $e7
    rst $20                                       ; $6818: $e7
    rst $20                                       ; $6819: $e7
    rst $20                                       ; $681a: $e7
    rst $20                                       ; $681b: $e7
    rst $20                                       ; $681c: $e7
    rst $20                                       ; $681d: $e7
    rst $20                                       ; $681e: $e7
    rst $20                                       ; $681f: $e7
    rst $20                                       ; $6820: $e7
    rst $20                                       ; $6821: $e7
    push hl                                       ; $6822: $e5
    push hl                                       ; $6823: $e5
    push hl                                       ; $6824: $e5
    push hl                                       ; $6825: $e5
    add d                                         ; $6826: $82
    add d                                         ; $6827: $82
    add d                                         ; $6828: $82
    add d                                         ; $6829: $82
    add d                                         ; $682a: $82
    add d                                         ; $682b: $82
    add d                                         ; $682c: $82
    add d                                         ; $682d: $82
    add d                                         ; $682e: $82
    add d                                         ; $682f: $82
    add d                                         ; $6830: $82
    add d                                         ; $6831: $82
    and d                                         ; $6832: $a2
    and d                                         ; $6833: $a2
    and d                                         ; $6834: $a2
    and d                                         ; $6835: $a2
    rst $20                                       ; $6836: $e7
    and $a4                                       ; $6837: $e6 $a4
    and b                                         ; $6839: $a0
    rst $20                                       ; $683a: $e7
    and $a5                                       ; $683b: $e6 $a5
    and [hl]                                      ; $683d: $a6
    rst $20                                       ; $683e: $e7
    and $a8                                       ; $683f: $e6 $a8
    xor c                                         ; $6841: $a9
    jp z, Jump_078_7cf4                           ; $6842: $ca $f4 $7c

    add h                                         ; $6845: $84
    add d                                         ; $6846: $82
    and d                                         ; $6847: $a2
    add hl, bc                                    ; $6848: $09
    add hl, bc                                    ; $6849: $09
    add d                                         ; $684a: $82
    and d                                         ; $684b: $a2
    add hl, bc                                    ; $684c: $09
    add hl, bc                                    ; $684d: $09
    add d                                         ; $684e: $82
    and d                                         ; $684f: $a2
    add hl, bc                                    ; $6850: $09
    add hl, bc                                    ; $6851: $09
    xor d                                         ; $6852: $aa
    and d                                         ; $6853: $a2
    ld bc, $a209                                  ; $6854: $01 $09 $a2
    add a                                         ; $6857: $87
    adc d                                         ; $6858: $8a
    call c, Call_078_40a7                         ; $6859: $dc $a7 $40
    ld l, c                                       ; $685c: $69
    jp c, $64aa                                   ; $685d: $da $aa $64

    ld l, d                                       ; $6860: $6a
    db $fd                                        ; $6861: $fd
    ld [hl], $65                                  ; $6862: $36 $65
    ld a, h                                       ; $6864: $7c
    sub d                                         ; $6865: $92
    add hl, bc                                    ; $6866: $09
    add hl, bc                                    ; $6867: $09
    add hl, bc                                    ; $6868: $09
    inc bc                                        ; $6869: $03
    add hl, bc                                    ; $686a: $09
    ld bc, $0301                                  ; $686b: $01 $01 $03
    add hl, bc                                    ; $686e: $09
    ld bc, $0101                                  ; $686f: $01 $01 $01
    ld bc, $0101                                  ; $6872: $01 $01 $01
    ld c, $e8                                     ; $6875: $0e $e8
    db $f4                                        ; $6877: $f4
    jp z, $dd67                                   ; $6878: $ca $67 $dd

    rst $38                                       ; $687b: $ff
    nop                                           ; $687c: $00
    ld l, b                                       ; $687d: $68
    cp $03                                        ; $687e: $fe $03
    ld [bc], a                                    ; $6880: $02
    rla                                           ; $6881: $17
    sub e                                         ; $6882: $93
    ld bc, $1902                                  ; $6883: $01 $02 $19
    inc bc                                        ; $6886: $03
    add e                                         ; $6887: $83
    adc e                                         ; $6888: $8b
    adc c                                         ; $6889: $89
    inc bc                                        ; $688a: $03
    rlca                                          ; $688b: $07
    rlca                                          ; $688c: $07
    add hl, bc                                    ; $688d: $09
    ld bc, $0707                                  ; $688e: $01 $07 $07
    ld bc, $070e                                  ; $6891: $01 $0e $07
    rlca                                          ; $6894: $07
    ld bc, $c2c1                                  ; $6895: $01 $c1 $c2
    pop bc                                        ; $6898: $c1
    jp nz, $d2d1                                  ; $6899: $c2 $d1 $d2

    db $d3                                        ; $689c: $d3
    call nc, Call_000_17c3                        ; $689d: $d4 $c3 $17
    jr jr_078_68ba                                ; $68a0: $18 $18

    jp $1a19                                      ; $68a2: $c3 $19 $1a


    ld a, [de]                                    ; $68a5: $1a
    dec c                                         ; $68a6: $0d
    dec c                                         ; $68a7: $0d
    dec c                                         ; $68a8: $0d
    dec c                                         ; $68a9: $0d
    dec b                                         ; $68aa: $05
    dec b                                         ; $68ab: $05
    dec b                                         ; $68ac: $05
    dec b                                         ; $68ad: $05
    dec c                                         ; $68ae: $0d
    ld bc, $0101                                  ; $68af: $01 $01 $01
    dec c                                         ; $68b2: $0d
    ld bc, $0101                                  ; $68b3: $01 $01 $01
    pop bc                                        ; $68b6: $c1
    push de                                       ; $68b7: $d5
    add b                                         ; $68b8: $80
    add a                                         ; $68b9: $87

jr_078_68ba:
    pop de                                        ; $68ba: $d1
    rst $10                                       ; $68bb: $d7
    ld a, l                                       ; $68bc: $7d
    ld a, [hl]                                    ; $68bd: $7e
    call nc, $85d7                                ; $68be: $d4 $d7 $85
    add [hl]                                      ; $68c1: $86
    db $d3                                        ; $68c2: $d3
    rst $10                                       ; $68c3: $d7
    adc b                                         ; $68c4: $88
    adc c                                         ; $68c5: $89
    dec c                                         ; $68c6: $0d
    dec b                                         ; $68c7: $05
    add hl, bc                                    ; $68c8: $09
    add hl, bc                                    ; $68c9: $09
    dec b                                         ; $68ca: $05
    dec b                                         ; $68cb: $05
    ld bc, $0501                                  ; $68cc: $01 $01 $05
    dec b                                         ; $68cf: $05
    add hl, bc                                    ; $68d0: $09
    add hl, bc                                    ; $68d1: $09
    dec b                                         ; $68d2: $05
    dec b                                         ; $68d3: $05
    add hl, bc                                    ; $68d4: $09
    add hl, bc                                    ; $68d5: $09
    ld a, [hl-]                                   ; $68d6: $3a
    ld a, a                                       ; $68d7: $7f
    add b                                         ; $68d8: $80
    sub l                                         ; $68d9: $95
    ld a, c                                       ; $68da: $79
    ld a, d                                       ; $68db: $7a
    ccf                                           ; $68dc: $3f
    ld e, c                                       ; $68dd: $59
    ld l, d                                       ; $68de: $6a
    ld a, e                                       ; $68df: $7b
    ld a, b                                       ; $68e0: $78
    ld h, h                                       ; $68e1: $64
    ld a, h                                       ; $68e2: $7c
    add h                                         ; $68e3: $84
    ld [hl], $65                                  ; $68e4: $36 $65
    ld bc, $0901                                  ; $68e6: $01 $01 $09
    ld c, $01                                     ; $68e9: $0e $01
    ld bc, $0101                                  ; $68eb: $01 $01 $01
    ld bc, $0101                                  ; $68ee: $01 $01 $01
    ld bc, $0901                                  ; $68f1: $01 $01 $09
    ld bc, $9601                                  ; $68f4: $01 $01 $96
    inc bc                                        ; $68f7: $03
    ld [bc], a                                    ; $68f8: $02
    ld a, [de]                                    ; $68f9: $1a
    ld e, d                                       ; $68fa: $5a
    ld bc, $1902                                  ; $68fb: $01 $02 $19
    ld l, d                                       ; $68fe: $6a
    db $fd                                        ; $68ff: $fd
    cp $04                                        ; $6900: $fe $04
    sbc l                                         ; $6902: $9d
    ld e, e                                       ; $6903: $5b
    ld e, h                                       ; $6904: $5c
    ld h, l                                       ; $6905: $65
    ld c, $07                                     ; $6906: $0e $07
    rlca                                          ; $6908: $07
    ld bc, $0701                                  ; $6909: $01 $01 $07
    rlca                                          ; $690c: $07
    ld bc, $0101                                  ; $690d: $01 $01 $01
    ld bc, $0901                                  ; $6910: $01 $01 $09
    ld bc, $0101                                  ; $6913: $01 $01 $01
    jp nc, $191a                                  ; $6916: $d2 $1a $19

    sbc e                                         ; $6919: $9b
    pop de                                        ; $691a: $d1
    add hl, de                                    ; $691b: $19
    ld a, [de]                                    ; $691c: $1a
    add hl, de                                    ; $691d: $19
    cp $04                                        ; $691e: $fe $04
    db $fd                                        ; $6920: $fd
    cp $3a                                        ; $6921: $fe $3a
    ld a, a                                       ; $6923: $7f
    ld a, h                                       ; $6924: $7c
    add h                                         ; $6925: $84
    dec b                                         ; $6926: $05
    ld bc, $0901                                  ; $6927: $01 $01 $09
    dec b                                         ; $692a: $05
    ld bc, $0101                                  ; $692b: $01 $01 $01
    ld bc, $0101                                  ; $692e: $01 $01 $01
    ld bc, $0101                                  ; $6931: $01 $01 $01
    ld bc, $d109                                  ; $6934: $01 $09 $d1
    rst $10                                       ; $6937: $d7
    ld a, [hl-]                                   ; $6938: $3a
    ld a, a                                       ; $6939: $7f
    pop de                                        ; $693a: $d1
    rst $10                                       ; $693b: $d7
    ld l, c                                       ; $693c: $69
    ld a, $04                                     ; $693d: $3e $04
    db $fd                                        ; $693f: $fd
    scf                                           ; $6940: $37
    jr c, jr_078_6979                             ; $6941: $38 $36

    ld h, l                                       ; $6943: $65
    dec sp                                        ; $6944: $3b
    inc a                                         ; $6945: $3c
    dec b                                         ; $6946: $05
    dec b                                         ; $6947: $05
    ld bc, $0501                                  ; $6948: $01 $01 $05
    dec b                                         ; $694b: $05
    ld bc, $0101                                  ; $694c: $01 $01 $01
    ld bc, $0101                                  ; $694f: $01 $01 $01
    ld bc, $0101                                  ; $6952: $01 $01 $01
    ld bc, $8780                                  ; $6955: $01 $80 $87
    ld a, [hl-]                                   ; $6958: $3a
    ld a, a                                       ; $6959: $7f
    ccf                                           ; $695a: $3f
    ld b, b                                       ; $695b: $40
    ld l, c                                       ; $695c: $69
    ld a, $7c                                     ; $695d: $3e $7c
    ld h, h                                       ; $695f: $64
    and c                                         ; $6960: $a1
    adc h                                         ; $6961: $8c
    add e                                         ; $6962: $83
    ld h, l                                       ; $6963: $65
    and e                                         ; $6964: $a3
    ld e, a                                       ; $6965: $5f
    add hl, bc                                    ; $6966: $09
    add hl, bc                                    ; $6967: $09
    ld bc, $0101                                  ; $6968: $01 $01 $01
    ld bc, $0101                                  ; $696b: $01 $01 $01
    ld bc, $0901                                  ; $696e: $01 $01 $09
    add hl, bc                                    ; $6971: $09
    add hl, bc                                    ; $6972: $09
    ld bc, $0109                                  ; $6973: $01 $09 $01
    sbc [hl]                                      ; $6976: $9e
    ld e, l                                       ; $6977: $5d
    ld e, [hl]                                    ; $6978: $5e

jr_078_6979:
    ld a, a                                       ; $6979: $7f
    ld h, [hl]                                    ; $697a: $66
    ld h, a                                       ; $697b: $67
    ld l, b                                       ; $697c: $68
    ld a, $8d                                     ; $697d: $3e $8d
    ld h, h                                       ; $697f: $64
    ld l, d                                       ; $6980: $6a
    ld a, e                                       ; $6981: $7b
    ld h, b                                       ; $6982: $60
    ld h, l                                       ; $6983: $65
    ld a, h                                       ; $6984: $7c
    add h                                         ; $6985: $84
    add hl, bc                                    ; $6986: $09
    ld bc, $0101                                  ; $6987: $01 $01 $01
    ld bc, $0101                                  ; $698a: $01 $01 $01
    ld bc, $0109                                  ; $698d: $01 $09 $01
    ld bc, $0101                                  ; $6990: $01 $01 $01
    ld bc, $0901                                  ; $6993: $01 $01 $09
    rst $20                                       ; $6996: $e7
    rst $20                                       ; $6997: $e7
    rst $20                                       ; $6998: $e7
    rst $20                                       ; $6999: $e7
    rst $20                                       ; $699a: $e7
    rst $20                                       ; $699b: $e7
    rst $20                                       ; $699c: $e7
    rst $20                                       ; $699d: $e7
    rst $20                                       ; $699e: $e7
    rst $20                                       ; $699f: $e7
    rst $20                                       ; $69a0: $e7
    rst $20                                       ; $69a1: $e7
    ld l, c                                       ; $69a2: $69
    ld l, d                                       ; $69a3: $6a
    rst $20                                       ; $69a4: $e7
    rst $20                                       ; $69a5: $e7
    add d                                         ; $69a6: $82
    add d                                         ; $69a7: $82
    add d                                         ; $69a8: $82
    add d                                         ; $69a9: $82
    add d                                         ; $69aa: $82
    add d                                         ; $69ab: $82
    add d                                         ; $69ac: $82
    add d                                         ; $69ad: $82
    add d                                         ; $69ae: $82
    add d                                         ; $69af: $82
    add d                                         ; $69b0: $82

Call_078_69b1:
    add d                                         ; $69b1: $82
    adc c                                         ; $69b2: $89
    adc c                                         ; $69b3: $89
    add d                                         ; $69b4: $82
    add d                                         ; $69b5: $82

    db $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7
    db $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82
    db $e6, $f9, $31, $f9, $e6, $31, $31, $f9, $e6, $31, $f9, $31, $e6, $f9, $31, $51
    db $a3, $04, $04, $04, $a3, $04, $04, $04, $a3, $04, $04, $04, $a3, $04, $04, $05
    db $03, $2d, $1f, $2a, $6b, $6c, $6d, $2b, $6e, $6f, $70, $ee, $71, $72, $73, $2a
    db $24, $03, $03, $03, $09, $09, $09, $03, $09, $09, $09, $03, $09, $09, $09, $03

    ld [hl], h                                    ; $6a16: $74
    ld [hl], l                                    ; $6a17: $75
    push hl                                       ; $6a18: $e5
    push hl                                       ; $6a19: $e5
    halt                                          ; $6a1a: $76
    ld [hl], a                                    ; $6a1b: $77
    ld b, $00                                     ; $6a1c: $06 $00
    jr @+$1a                                      ; $6a1e: $18 $18

    ld [bc], a                                    ; $6a20: $02
    ld [bc], a                                    ; $6a21: $02
    ld a, [de]                                    ; $6a22: $1a
    ld a, [de]                                    ; $6a23: $1a
    ld [bc], a                                    ; $6a24: $02
    ld [bc], a                                    ; $6a25: $02
    adc c                                         ; $6a26: $89
    adc c                                         ; $6a27: $89
    and e                                         ; $6a28: $a3
    and e                                         ; $6a29: $a3
    add hl, bc                                    ; $6a2a: $09
    add hl, bc                                    ; $6a2b: $09
    rlca                                          ; $6a2c: $07
    rlca                                          ; $6a2d: $07
    ld bc, $2701                                  ; $6a2e: $01 $01 $27
    rlca                                          ; $6a31: $07
    ld bc, $2701                                  ; $6a32: $01 $01 $27
    rlca                                          ; $6a35: $07

    db $e5, $e5, $e5, $ca, $05, $05, $05, $06, $07, $08, $09, $02, $0a, $0b, $0c, $02
    db $a3, $a3, $a3, $ab, $07, $07, $07, $07, $00, $00, $00, $27, $00, $00, $00, $27
    db $f4, $fd, $fe, $53, $ff, $32, $35, $55, $03, $33, $39, $57, $01, $34, $3d, $84
    db $a3, $01, $01, $05, $27, $06, $06, $05, $27, $06, $06, $05, $27, $01, $01, $09
    db $54, $28, $20, $25, $56, $ec, $ed, $29, $58, $2d, $1f, $2a, $36, $fd, $fe, $04
    db $05, $03, $03, $03, $05, $03, $03, $03, $05, $03, $03, $03, $01, $01, $01, $01

    add hl, de                                    ; $6a96: $19
    sbc e                                         ; $6a97: $9b
    ld [bc], a                                    ; $6a98: $02
    ld [bc], a                                    ; $6a99: $02
    ld a, [de]                                    ; $6a9a: $1a
    add hl, de                                    ; $6a9b: $19
    ld [bc], a                                    ; $6a9c: $02
    sub a                                         ; $6a9d: $97
    db $fd                                        ; $6a9e: $fd
    cp $04                                        ; $6a9f: $fe $04
    db $fd                                        ; $6aa1: $fd
    ld a, h                                       ; $6aa2: $7c
    add h                                         ; $6aa3: $84
    ld [hl], $65                                  ; $6aa4: $36 $65
    ld bc, $2709                                  ; $6aa6: $01 $09 $27
    rlca                                          ; $6aa9: $07
    ld bc, $2701                                  ; $6aaa: $01 $01 $27
    rrca                                          ; $6aad: $0f
    ld bc, $0101                                  ; $6aae: $01 $01 $01
    ld bc, $0901                                  ; $6ab1: $01 $01 $09
    db $01                                        ; $6ab4: $01
    db $01                                        ; $6ab5: $01

    db $0d, $0e, $0f, $02, $99, $99, $99, $97, $fe, $04, $fd, $fe, $7c, $84, $36, $65
    db $00, $00, $00, $27, $0f, $0f, $0f, $2f, $01, $01, $01, $01, $01, $09, $01, $01
    db $03, $61, $62, $87, $01, $63, $3f, $40, $04, $7b, $78, $64, $7c, $84, $36, $65
    db $27, $01, $01, $09, $27, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $3a, $7f, $80, $87, $37, $38, $7c, $40, $3b, $3c, $83, $64, $7c, $84, $36, $65
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $09, $01, $01, $09, $01, $01

    add b                                         ; $6b16: $80
    add a                                         ; $6b17: $87
    sub c                                         ; $6b18: $91
    and h                                         ; $6b19: $a4
    ccf                                           ; $6b1a: $3f
    ld b, b                                       ; $6b1b: $40
    sub h                                         ; $6b1c: $94
    and l                                         ; $6b1d: $a5
    ld a, b                                       ; $6b1e: $78
    ld h, h                                       ; $6b1f: $64
    ld l, d                                       ; $6b20: $6a
    xor b                                         ; $6b21: $a8
    ld a, c                                       ; $6b22: $79
    ld a, d                                       ; $6b23: $7a
    ld a, h                                       ; $6b24: $7c
    add h                                         ; $6b25: $84
    add hl, bc                                    ; $6b26: $09
    add hl, bc                                    ; $6b27: $09
    add hl, bc                                    ; $6b28: $09
    add hl, bc                                    ; $6b29: $09
    ld bc, $0901                                  ; $6b2a: $01 $01 $09
    add hl, bc                                    ; $6b2d: $09
    ld bc, $0101                                  ; $6b2e: $01 $01 $01
    add hl, bc                                    ; $6b31: $09
    ld bc, $0101                                  ; $6b32: $01 $01 $01
    add hl, bc                                    ; $6b35: $09

    db $a0, $a2, $3a, $7f, $a6, $a7, $69, $3e, $a9, $aa, $6a, $7b, $36, $65, $79, $7a
    db $09, $09, $01, $01, $09, $09, $01, $01, $09, $09, $01, $01, $01, $01, $01, $01
    db $80, $79, $7a, $7f, $3f, $40, $69, $6d, $78, $64, $6a, $7b, $36, $37, $38, $7c
    db $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $6b, $6c, $3a, $7f, $6e, $6f, $69, $3e, $8a, $9f, $6a, $7b, $36, $65, $7c, $70
    db $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $01, $01, $01, $01, $01, $86
    db $0d, $0e, $0f, $2d, $1d, $ea, $eb, $2e, $22, $23, $24, $1e, $17, $18, $18, $2d
    db $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $01, $01, $01, $03
    db $1f, $2a, $80, $87, $20, $25, $8c, $8d, $ed, $29, $5f, $60, $1f, $2a, $61, $62
    db $03, $03, $09, $09, $03, $03, $09, $09, $03, $03, $01, $01, $03, $03, $01, $01
    db $3a, $7f, $80, $87, $69, $3e, $3f, $40, $6a, $6b, $6c, $64, $6d, $6e, $6f, $65
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $3a, $7f, $80, $9d, $69, $3e, $3f, $9e, $6a, $7b, $78, $66, $7c, $84, $36, $65
    db $01, $01, $09, $09, $01, $01, $01, $09, $01, $01, $01, $01, $01, $09, $01, $01
    db $19, $1a, $1a, $28, $1a, $19, $9b, $ec, $19, $1a, $19, $2d, $fd, $fe, $04, $fd
    db $01, $01, $01, $03, $01, $01, $09, $03, $01, $01, $01, $03, $01, $01, $01, $01
    db $20, $25, $63, $7f, $ed, $29, $69, $3e, $1f, $2a, $6a, $7b, $fe, $04, $79, $7a
    db $03, $03, $01, $01, $03, $03, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01
    db $80, $8a, $9f, $7f, $3f, $64, $7d, $7e, $78, $81, $85, $86, $36, $82, $88, $89
    db $09, $09, $09, $01, $01, $01, $01, $01, $01, $09, $09, $09, $01, $09, $09, $09
    db $80, $87, $3a, $7f, $3f, $40, $69, $3e, $78, $64, $37, $38, $36, $65, $3b, $3c
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $9d, $5b, $5c, $87, $9e, $5d, $5e, $40, $66, $67, $68, $64, $7c, $84, $36, $65
    db $09, $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $3a, $7f, $80, $87, $69, $3e, $3f, $40, $6a, $7b, $78, $6b, $7c, $84, $6d, $6e
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $79, $7a, $3a, $7f, $3f, $40, $69, $3e, $78, $64, $6a, $7b, $71, $71, $71, $71
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $86, $86, $86, $86
    db $a1, $8c, $8d, $7f, $a3, $5f, $60, $3e, $ef, $61, $62, $7b, $71, $71, $71, $71
    db $09, $09, $09, $01, $09, $01, $01, $01, $09, $01, $01, $01, $86, $86, $86, $86
    db $80, $87, $3a, $7f, $3f, $40, $6b, $6c, $78, $6d, $6e, $6f, $71, $71, $71, $71
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $86, $86, $86, $86
    db $ef, $ef, $ef, $ef, $f1, $f0, $f0, $f0, $d6, $d6, $d6, $d6, $f3, $f2, $f2, $f2
    db $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7
    db $5b, $5c, $78, $79, $5d, $5e, $7a, $7b, $67, $68, $7c, $f4, $7c, $84, $fd, $fe
    db $01, $01, $08, $08, $01, $01, $28, $08, $01, $01, $08, $48, $01, $09, $01, $01
    db $7d, $7a, $a4, $a0, $7b, $7a, $a5, $a6, $f4, $7e, $a8, $a9, $04, $fd, $36, $65
    db $08, $08, $09, $09, $28, $08, $09, $09, $48, $08, $09, $09, $01, $01, $01, $01
    db $a2, $7f, $80, $6b, $a7, $3e, $6d, $6e, $aa, $7b, $78, $8a, $7c, $84, $36, $65
    db $09, $01, $09, $01, $09, $01, $01, $01, $09, $01, $01, $09, $01, $09, $01, $01
    db $6c, $7f, $3b, $3c, $6f, $3e, $3f, $40, $9f, $7b, $78, $64, $7c, $84, $36, $65
    db $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01, $01, $01, $09, $01, $01
    db $80, $87, $3a, $7f, $3f, $40, $69, $3e, $7c, $64, $6a, $79, $83, $65, $7c, $84
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01, $09
    db $80, $87, $3a, $37, $79, $7a, $69, $3b, $7a, $64, $6a, $7b, $36, $65, $7c, $64
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $38, $7c, $3a, $7f, $3c, $83, $69, $3e, $78, $64, $6a, $7b, $7d, $7e, $7c, $84
    db $01, $01, $01, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $9d, $5b, $5c, $7f, $9e, $5d, $5e, $3e, $66, $67, $68, $7b, $36, $65, $7c, $84
    db $09, $01, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $3a, $7f, $80, $87, $69, $3e, $3f, $40, $6c, $7b, $78, $91, $6f, $84, $36, $94
    db $01, $01, $09, $09, $01, $01, $01, $01, $01, $01, $01, $09, $01, $09, $01, $09
    db $3a, $7f, $80, $81, $69, $3e, $3f, $82, $a4, $a0, $a2, $64, $a5, $a6, $8b, $71
    db $01, $01, $09, $09, $01, $01, $01, $09, $09, $09, $09, $01, $09, $09, $ac, $a4
    db $85, $86, $80, $87, $88, $89, $3f, $40, $6a, $7b, $78, $64, $71, $71, $71, $71
    db $09, $09, $09, $09, $09, $09, $01, $01, $01, $01, $01, $01, $a4, $a4, $a4, $a4
    db $3a, $7f, $80, $87, $a1, $8c, $8d, $40, $a3, $5f, $60, $64, $71, $71, $71, $71
    db $01, $01, $09, $09, $09, $09, $09, $01, $09, $01, $01, $01, $a4, $a4, $a4, $a4
    db $ef, $ef, $ef, $ef, $f0, $f0, $f0, $f0, $d6, $d6, $d6, $d6, $f2, $f2, $f2, $f2
    db $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7
    db $ef, $ef, $ef, $8e, $f0, $f0, $f0, $90, $d6, $d6, $d6, $90, $f2, $f2, $2c, $90
    db $a7, $a7, $a7, $ac, $a7, $a7, $a7, $ac, $a7, $a7, $a7, $ac, $a7, $a7, $a7, $ac
    db $73, $73, $73, $73, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75
    db $a4, $a4, $a4, $a4, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84
    db $83, $7f, $80, $87, $69, $3e, $a1, $8c, $6a, $7b, $a3, $5f, $7c, $84, $ef, $61
    db $09, $01, $09, $09, $01, $01, $09, $09, $01, $01, $09, $01, $01, $09, $09, $01
    db $3a, $7f, $80, $87, $8d, $3e, $3f, $40, $60, $7b, $78, $64, $62, $84, $79, $7a
    db $01, $01, $09, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $09, $01, $01
    db $3a, $7f, $8a, $03, $69, $3e, $3f, $04, $6a, $37, $38, $7c, $7c, $3b, $3c, $83
    db $01, $01, $09, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09
    db $31, $ef, $ef, $ef, $fd, $4f, $50, $4f, $6a, $e3, $e2, $e1, $7c, $e0, $e1, $e2
    db $06, $82, $82, $82, $01, $82, $82, $82, $01, $82, $82, $82, $01, $82, $82, $82
    db $80, $87, $f0, $63, $3f, $40, $69, $3e, $78, $64, $6a, $37, $36, $ef, $ef, $ef
    db $09, $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $a4, $a4, $a4
    db $80, $87, $3a, $7f, $3f, $40, $69, $3e, $38, $7c, $6a, $7b, $ef, $ef, $ef, $ef
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $a4, $a4, $a4, $a4
    db $80, $87, $3a, $7f, $3f, $6b, $6c, $3e, $6d, $6e, $6f, $7b, $ef, $ef, $ef, $ef
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $a4, $a4, $a4, $a4
    db $79, $e3, $e2, $e1, $3f, $e0, $e1, $e2, $78, $e3, $e2, $e1, $ef, $ef, $ef, $ef
    db $01, $82, $82, $82, $01, $82, $82, $82, $01, $82, $82, $82, $a4, $a4, $a4, $a4
    db $3a, $f1, $f0, $f0, $69, $d6, $d6, $d6, $6a, $f3, $f2, $f2, $71, $70, $d6, $d6
    db $01, $a4, $a4, $a4, $01, $a4, $a4, $a4, $01, $a4, $a4, $a4, $a4, $a4, $a4, $a4
    db $f0, $f0, $f0, $f0, $d6, $d6, $d6, $d6, $f2, $f2, $f2, $f2, $d6, $d6, $d6, $d6
    db $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4

    ldh a, [$f0]                                  ; $7076: $f0 $f0
    ldh a, [$f0]                                  ; $7078: $f0 $f0
    sub $d6                                       ; $707a: $d6 $d6
    sub $d6                                       ; $707c: $d6 $d6
    ld a, [c]                                     ; $707e: $f2
    ld a, [c]                                     ; $707f: $f2
    ld a, [c]                                     ; $7080: $f2
    inc l                                         ; $7081: $2c
    sub $d6                                       ; $7082: $d6 $d6
    sub $d6                                       ; $7084: $d6 $d6
    and h                                         ; $7086: $a4
    and h                                         ; $7087: $a4
    and h                                         ; $7088: $a4
    and h                                         ; $7089: $a4
    and h                                         ; $708a: $a4
    and h                                         ; $708b: $a4
    and h                                         ; $708c: $a4
    and h                                         ; $708d: $a4
    and h                                         ; $708e: $a4
    and h                                         ; $708f: $a4
    and h                                         ; $7090: $a4
    and h                                         ; $7091: $a4
    and h                                         ; $7092: $a4
    and h                                         ; $7093: $a4
    and h                                         ; $7094: $a4
    and h                                         ; $7095: $a4

    db $73, $72, $f2, $f2, $75, $74, $d6, $d6, $75, $74, $ea, $1d, $75, $74, $1e, $ee
    db $a4, $a4, $a4, $a4, $84, $a4, $a4, $a4, $84, $a4, $23, $23, $84, $a4, $23, $23
    db $f2, $f2, $f2, $f2, $d6, $d6, $d6, $d6, $eb, $ea, $ea, $1d, $ed, $1e, $ee, $ed
    db $a4, $a4, $a4, $a4, $a4, $a4, $a4, $a4, $23, $23, $23, $23, $23, $23, $23, $23

    ld a, [c]                                     ; $70d6: $f2
    ld a, [c]                                     ; $70d7: $f2
    ld a, [c]                                     ; $70d8: $f2
    ld a, [c]                                     ; $70d9: $f2
    sub $d6                                       ; $70da: $d6 $d6
    sub $d6                                       ; $70dc: $d6 $d6
    db $eb                                        ; $70de: $eb
    ld [$1dea], a                                 ; $70df: $ea $ea $1d
    ld e, $ee                                     ; $70e2: $1e $ee
    db $ed                                        ; $70e4: $ed
    ld e, $a4                                     ; $70e5: $1e $a4
    and h                                         ; $70e7: $a4
    and h                                         ; $70e8: $a4
    and h                                         ; $70e9: $a4
    and h                                         ; $70ea: $a4
    and h                                         ; $70eb: $a4
    and h                                         ; $70ec: $a4
    and h                                         ; $70ed: $a4
    inc hl                                        ; $70ee: $23
    inc hl                                        ; $70ef: $23
    inc hl                                        ; $70f0: $23
    inc hl                                        ; $70f1: $23
    inc hl                                        ; $70f2: $23
    inc hl                                        ; $70f3: $23
    inc hl                                        ; $70f4: $23
    inc hl                                        ; $70f5: $23
    ld a, [c]                                     ; $70f6: $f2
    ld a, [c]                                     ; $70f7: $f2
    db $e4                                        ; $70f8: $e4
    push hl                                       ; $70f9: $e5
    sub $d6                                       ; $70fa: $d6 $d6
    and $e7                                       ; $70fc: $e6 $e7
    db $eb                                        ; $70fe: $eb
    ld [$e7e6], a                                 ; $70ff: $ea $e6 $e7
    xor $ed                                       ; $7102: $ee $ed
    and $e7                                       ; $7104: $e6 $e7
    and h                                         ; $7106: $a4
    and h                                         ; $7107: $a4
    add l                                         ; $7108: $85
    and l                                         ; $7109: $a5
    and h                                         ; $710a: $a4
    and h                                         ; $710b: $a4
    add l                                         ; $710c: $85
    add l                                         ; $710d: $85
    inc hl                                        ; $710e: $23
    inc hl                                        ; $710f: $23
    dec b                                         ; $7110: $05
    dec b                                         ; $7111: $05
    inc hl                                        ; $7112: $23
    inc hl                                        ; $7113: $23
    dec b                                         ; $7114: $05
    dec b                                         ; $7115: $05
    add hl, de                                    ; $7116: $19
    sbc e                                         ; $7117: $9b
    ld [bc], a                                    ; $7118: $02
    ld [bc], a                                    ; $7119: $02
    ld a, [de]                                    ; $711a: $1a
    add hl, de                                    ; $711b: $19
    ld [bc], a                                    ; $711c: $02
    sub a                                         ; $711d: $97
    rst $28                                       ; $711e: $ef
    rst $28                                       ; $711f: $ef
    rst $28                                       ; $7120: $ef
    rst $28                                       ; $7121: $ef
    ldh a, [$f0]                                  ; $7122: $f0 $f0
    ldh a, [$f0]                                  ; $7124: $f0 $f0
    ld bc, $2209                                  ; $7126: $01 $09 $22
    ld [bc], a                                    ; $7129: $02
    ld bc, $2201                                  ; $712a: $01 $01 $22
    ld a, [bc]                                    ; $712d: $0a
    add h                                         ; $712e: $84
    add h                                         ; $712f: $84
    add h                                         ; $7130: $84
    add h                                         ; $7131: $84
    add h                                         ; $7132: $84
    add h                                         ; $7133: $84
    add h                                         ; $7134: $84
    add h                                         ; $7135: $84
    dec c                                         ; $7136: $0d
    ld c, $0f                                     ; $7137: $0e $0f
    ld [bc], a                                    ; $7139: $02
    sbc c                                         ; $713a: $99
    sbc c                                         ; $713b: $99
    sbc c                                         ; $713c: $99
    sub a                                         ; $713d: $97
    rst $28                                       ; $713e: $ef
    rst $28                                       ; $713f: $ef
    rst $28                                       ; $7140: $ef
    rst $28                                       ; $7141: $ef
    ldh a, [$f0]                                  ; $7142: $f0 $f0
    ldh a, [$f0]                                  ; $7144: $f0 $f0
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    ld [hl+], a                                   ; $7149: $22
    ld a, [bc]                                    ; $714a: $0a
    ld a, [bc]                                    ; $714b: $0a
    ld a, [bc]                                    ; $714c: $0a
    ld a, [hl+]                                   ; $714d: $2a
    add h                                         ; $714e: $84
    add h                                         ; $714f: $84
    add h                                         ; $7150: $84
    add h                                         ; $7151: $84
    add h                                         ; $7152: $84
    add h                                         ; $7153: $84
    add h                                         ; $7154: $84
    add h                                         ; $7155: $84
    inc bc                                        ; $7156: $03
    jr c, jr_078_71d5                             ; $7157: $38 $7c

    ld b, b                                       ; $7159: $40
    ld bc, $833c                                  ; $715a: $01 $3c $83
    ld h, h                                       ; $715d: $64
    rst $28                                       ; $715e: $ef
    rst $28                                       ; $715f: $ef
    ld [hl], $79                                  ; $7160: $36 $79
    ldh a, [$f1]                                  ; $7162: $f0 $f1
    ld a, [hl-]                                   ; $7164: $3a
    ld a, a                                       ; $7165: $7f
    ld [hl+], a                                   ; $7166: $22
    ld bc, $0101                                  ; $7167: $01 $01 $01
    ld [hl+], a                                   ; $716a: $22
    ld bc, $0109                                  ; $716b: $01 $09 $01
    add h                                         ; $716e: $84
    add h                                         ; $716f: $84
    ld bc, $8401                                  ; $7170: $01 $01 $84
    add h                                         ; $7173: $84
    ld bc, $6901                                  ; $7174: $01 $01 $69
    sub h                                         ; $7177: $94
    and l                                         ; $7178: $a5
    and [hl]                                      ; $7179: $a6
    ld l, d                                       ; $717a: $6a
    ld a, e                                       ; $717b: $7b
    xor b                                         ; $717c: $a8
    xor c                                         ; $717d: $a9
    ld a, d                                       ; $717e: $7a
    add h                                         ; $717f: $84
    ld [hl], $65                                  ; $7180: $36 $65
    add b                                         ; $7182: $80
    add a                                         ; $7183: $87
    ld a, [hl-]                                   ; $7184: $3a
    ld l, e                                       ; $7185: $6b
    ld bc, $0909                                  ; $7186: $01 $09 $09
    add hl, bc                                    ; $7189: $09
    ld bc, $0901                                  ; $718a: $01 $01 $09
    add hl, bc                                    ; $718d: $09
    ld bc, $0109                                  ; $718e: $01 $09 $01
    ld bc, $0909                                  ; $7191: $01 $09 $09
    ld bc, $d601                                  ; $7194: $01 $01 $d6
    sub $8c                                       ; $7197: $d6 $8c
    adc l                                         ; $7199: $8d
    ld a, [c]                                     ; $719a: $f2
    di                                            ; $719b: $f3
    ld e, a                                       ; $719c: $5f
    ld h, b                                       ; $719d: $60
    rst $28                                       ; $719e: $ef
    rst $28                                       ; $719f: $ef
    rst $28                                       ; $71a0: $ef
    rst $28                                       ; $71a1: $ef
    ldh a, [$f0]                                  ; $71a2: $f0 $f0
    ldh a, [$f0]                                  ; $71a4: $f0 $f0
    add h                                         ; $71a6: $84
    add h                                         ; $71a7: $84
    add hl, bc                                    ; $71a8: $09
    add hl, bc                                    ; $71a9: $09
    add h                                         ; $71aa: $84
    add h                                         ; $71ab: $84
    ld bc, $8701                                  ; $71ac: $01 $01 $87
    add a                                         ; $71af: $87
    add a                                         ; $71b0: $87
    add a                                         ; $71b1: $87
    add a                                         ; $71b2: $87
    add a                                         ; $71b3: $87
    add a                                         ; $71b4: $87
    add a                                         ; $71b5: $87
    ccf                                           ; $71b6: $3f
    ld b, b                                       ; $71b7: $40
    ld l, l                                       ; $71b8: $6d
    ld l, [hl]                                    ; $71b9: $6e
    ld a, b                                       ; $71ba: $78
    ld h, h                                       ; $71bb: $64
    ld l, d                                       ; $71bc: $6a
    adc d                                         ; $71bd: $8a
    rst $28                                       ; $71be: $ef
    rst $28                                       ; $71bf: $ef
    rst $28                                       ; $71c0: $ef
    rst $28                                       ; $71c1: $ef
    ldh a, [$f0]                                  ; $71c2: $f0 $f0
    ldh a, [$f0]                                  ; $71c4: $f0 $f0
    ld bc, $0101                                  ; $71c6: $01 $01 $01
    ld bc, $0101                                  ; $71c9: $01 $01 $01
    ld bc, $8709                                  ; $71cc: $01 $09 $87
    add a                                         ; $71cf: $87
    add a                                         ; $71d0: $87
    add a                                         ; $71d1: $87
    add a                                         ; $71d2: $87
    add a                                         ; $71d3: $87
    add a                                         ; $71d4: $87

jr_078_71d5:
    add a                                         ; $71d5: $87
    sub $d6                                       ; $71d6: $d6 $d6
    sub $d6                                       ; $71d8: $d6 $d6
    cpl                                           ; $71da: $2f
    cpl                                           ; $71db: $2f
    cpl                                           ; $71dc: $2f
    cpl                                           ; $71dd: $2f
    ld sp, $31f9                                  ; $71de: $31 $f9 $31
    ld sp, $31f9                                  ; $71e1: $31 $f9 $31
    ld sp, hl                                     ; $71e4: $f9
    ld sp, hl                                     ; $71e5: $f9
    add h                                         ; $71e6: $84
    add h                                         ; $71e7: $84
    add h                                         ; $71e8: $84
    add h                                         ; $71e9: $84
    inc b                                         ; $71ea: $04
    inc b                                         ; $71eb: $04
    inc b                                         ; $71ec: $04
    inc b                                         ; $71ed: $04
    inc b                                         ; $71ee: $04
    inc b                                         ; $71ef: $04
    inc b                                         ; $71f0: $04
    inc b                                         ; $71f1: $04
    inc b                                         ; $71f2: $04
    inc b                                         ; $71f3: $04
    inc b                                         ; $71f4: $04
    inc b                                         ; $71f5: $04
    sub $d6                                       ; $71f6: $d6 $d6
    sub $d6                                       ; $71f8: $d6 $d6
    cpl                                           ; $71fa: $2f
    cpl                                           ; $71fb: $2f
    cpl                                           ; $71fc: $2f
    rst $38                                       ; $71fd: $ff
    ld sp, hl                                     ; $71fe: $f9
    ld sp, $0131                                  ; $71ff: $31 $31 $01
    ld sp, $f9f9                                  ; $7202: $31 $f9 $f9
    inc bc                                        ; $7205: $03
    add h                                         ; $7206: $84
    add h                                         ; $7207: $84
    add h                                         ; $7208: $84
    add h                                         ; $7209: $84
    inc b                                         ; $720a: $04
    inc b                                         ; $720b: $04
    inc b                                         ; $720c: $04
    inc h                                         ; $720d: $24
    inc b                                         ; $720e: $04
    inc b                                         ; $720f: $04
    inc b                                         ; $7210: $04
    inc h                                         ; $7211: $24
    inc b                                         ; $7212: $04
    inc b                                         ; $7213: $04
    inc b                                         ; $7214: $04
    inc h                                         ; $7215: $24
    sub $d6                                       ; $7216: $d6 $d6
    sub $d6                                       ; $7218: $d6 $d6
    inc l                                         ; $721a: $2c
    ld a, [c]                                     ; $721b: $f2
    ld a, [c]                                     ; $721c: $f2
    ld a, [c]                                     ; $721d: $f2
    sub $d6                                       ; $721e: $d6 $d6
    sub $d6                                       ; $7220: $d6 $d6
    inc l                                         ; $7222: $2c
    ld a, [c]                                     ; $7223: $f2
    ld a, [c]                                     ; $7224: $f2
    ld a, [c]                                     ; $7225: $f2
    add a                                         ; $7226: $87
    add a                                         ; $7227: $87
    add a                                         ; $7228: $87
    add a                                         ; $7229: $87
    add a                                         ; $722a: $87
    add a                                         ; $722b: $87
    add a                                         ; $722c: $87
    add a                                         ; $722d: $87
    add a                                         ; $722e: $87
    add a                                         ; $722f: $87
    add a                                         ; $7230: $87
    add a                                         ; $7231: $87
    add a                                         ; $7232: $87
    add a                                         ; $7233: $87
    add a                                         ; $7234: $87
    add a                                         ; $7235: $87
    ld sp, $31f9                                  ; $7236: $31 $f9 $31
    ld bc, $31f9                                  ; $7239: $01 $f9 $31
    ld sp, hl                                     ; $723c: $f9
    inc bc                                        ; $723d: $03
    ld sp, $31f9                                  ; $723e: $31 $f9 $31
    ld bc, $31f9                                  ; $7241: $01 $f9 $31
    ld sp, hl                                     ; $7244: $f9
    inc bc                                        ; $7245: $03
    inc b                                         ; $7246: $04
    inc b                                         ; $7247: $04
    inc b                                         ; $7248: $04
    inc h                                         ; $7249: $24
    inc b                                         ; $724a: $04
    inc b                                         ; $724b: $04
    inc b                                         ; $724c: $04
    inc h                                         ; $724d: $24
    inc b                                         ; $724e: $04
    inc b                                         ; $724f: $04
    inc b                                         ; $7250: $04
    inc h                                         ; $7251: $24
    inc b                                         ; $7252: $04
    inc b                                         ; $7253: $04
    inc b                                         ; $7254: $04
    inc h                                         ; $7255: $24
    sub $d6                                       ; $7256: $d6 $d6
    sub $d6                                       ; $7258: $d6 $d6
    ret nz                                        ; $725a: $c0

    pop bc                                        ; $725b: $c1
    jp nz, $c3c1                                  ; $725c: $c2 $c1 $c3

    db $d3                                        ; $725f: $d3
    call nc, $c3d1                                ; $7260: $d4 $d1 $c3
    jp nc, $d2d3                                  ; $7263: $d2 $d3 $d2

    rlca                                          ; $7266: $07
    rlca                                          ; $7267: $07
    add a                                         ; $7268: $87
    add a                                         ; $7269: $87
    dec bc                                        ; $726a: $0b
    dec bc                                        ; $726b: $0b
    dec bc                                        ; $726c: $0b
    dec bc                                        ; $726d: $0b
    dec bc                                        ; $726e: $0b
    inc bc                                        ; $726f: $03
    inc bc                                        ; $7270: $03
    inc bc                                        ; $7271: $03
    dec bc                                        ; $7272: $0b
    inc bc                                        ; $7273: $03
    inc bc                                        ; $7274: $03
    inc bc                                        ; $7275: $03
    sub $d6                                       ; $7276: $d6 $d6
    sub $d6                                       ; $7278: $d6 $d6
    jp nz, $c2c1                                  ; $727a: $c2 $c1 $c2

    pop bc                                        ; $727d: $c1
    call nc, $d4d3                                ; $727e: $d4 $d3 $d4
    pop de                                        ; $7281: $d1
    db $d3                                        ; $7282: $d3
    jp nc, $d2d3                                  ; $7283: $d2 $d3 $d2

    add a                                         ; $7286: $87
    add a                                         ; $7287: $87
    add a                                         ; $7288: $87
    add a                                         ; $7289: $87
    dec bc                                        ; $728a: $0b
    dec bc                                        ; $728b: $0b
    dec bc                                        ; $728c: $0b
    dec bc                                        ; $728d: $0b
    inc bc                                        ; $728e: $03
    inc bc                                        ; $728f: $03
    inc bc                                        ; $7290: $03
    inc bc                                        ; $7291: $03
    inc bc                                        ; $7292: $03
    inc bc                                        ; $7293: $03
    inc bc                                        ; $7294: $03
    inc bc                                        ; $7295: $03
    and a                                         ; $7296: $a7
    ld a, $3f                                     ; $7297: $3e $3f
    ld b, b                                       ; $7299: $40
    xor d                                         ; $729a: $aa
    ld a, e                                       ; $729b: $7b
    ld a, b                                       ; $729c: $78
    ld h, h                                       ; $729d: $64
    ld a, h                                       ; $729e: $7c
    add h                                         ; $729f: $84
    ld a, c                                       ; $72a0: $79
    ld a, d                                       ; $72a1: $7a
    ld l, h                                       ; $72a2: $6c
    add a                                         ; $72a3: $87
    ld a, [hl-]                                   ; $72a4: $3a
    ld a, a                                       ; $72a5: $7f
    add hl, bc                                    ; $72a6: $09
    ld bc, $0101                                  ; $72a7: $01 $01 $01
    add hl, bc                                    ; $72aa: $09
    ld bc, $0101                                  ; $72ab: $01 $01 $01
    ld bc, $0109                                  ; $72ae: $01 $09 $01
    ld bc, $0901                                  ; $72b1: $01 $01 $09
    ld bc, $6901                                  ; $72b4: $01 $01 $69
    ld a, $3f                                     ; $72b7: $3e $3f
    ld b, b                                       ; $72b9: $40
    ld l, d                                       ; $72ba: $6a
    ld h, h                                       ; $72bb: $64
    ld a, l                                       ; $72bc: $7d
    ld a, [hl]                                    ; $72bd: $7e
    ld a, h                                       ; $72be: $7c
    add c                                         ; $72bf: $81
    add l                                         ; $72c0: $85
    add [hl]                                      ; $72c1: $86
    add b                                         ; $72c2: $80
    add d                                         ; $72c3: $82
    adc b                                         ; $72c4: $88
    adc c                                         ; $72c5: $89
    ld bc, $0101                                  ; $72c6: $01 $01 $01
    ld bc, $0101                                  ; $72c9: $01 $01 $01
    ld bc, $0101                                  ; $72cc: $01 $01 $01
    add hl, bc                                    ; $72cf: $09
    add hl, bc                                    ; $72d0: $09
    add hl, bc                                    ; $72d1: $09
    add hl, bc                                    ; $72d2: $09
    add hl, bc                                    ; $72d3: $09
    add hl, bc                                    ; $72d4: $09
    add hl, bc                                    ; $72d5: $09
    ld l, c                                       ; $72d6: $69
    ld a, $9e                                     ; $72d7: $3e $9e
    ld e, l                                       ; $72d9: $5d
    ld l, d                                       ; $72da: $6a
    ld a, e                                       ; $72db: $7b
    ld h, [hl]                                    ; $72dc: $66
    ld h, a                                       ; $72dd: $67
    ld a, h                                       ; $72de: $7c
    add h                                         ; $72df: $84
    ld [hl], $65                                  ; $72e0: $36 $65
    add b                                         ; $72e2: $80
    add a                                         ; $72e3: $87
    ld a, [hl-]                                   ; $72e4: $3a
    ld a, a                                       ; $72e5: $7f
    ld bc, $0901                                  ; $72e6: $01 $01 $09
    ld bc, $0101                                  ; $72e9: $01 $01 $01
    ld bc, $0101                                  ; $72ec: $01 $01 $01
    add hl, bc                                    ; $72ef: $09
    ld bc, $0901                                  ; $72f0: $01 $01 $09
    add hl, bc                                    ; $72f3: $09
    ld bc, $5e01                                  ; $72f4: $01 $01 $5e
    ld a, $3f                                     ; $72f7: $3e $3f
    sub c                                         ; $72f9: $91
    ld l, b                                       ; $72fa: $68
    ld a, e                                       ; $72fb: $7b
    ld a, b                                       ; $72fc: $78
    sub h                                         ; $72fd: $94
    ld a, h                                       ; $72fe: $7c
    add h                                         ; $72ff: $84
    ld [hl], $65                                  ; $7300: $36 $65
    add b                                         ; $7302: $80
    ld a, c                                       ; $7303: $79
    ld a, d                                       ; $7304: $7a
    ld a, a                                       ; $7305: $7f
    ld bc, $0101                                  ; $7306: $01 $01 $01
    add hl, bc                                    ; $7309: $09
    ld bc, $0101                                  ; $730a: $01 $01 $01
    add hl, bc                                    ; $730d: $09

jr_078_730e:
    ld bc, $0109                                  ; $730e: $01 $09 $01
    ld bc, $0109                                  ; $7311: $01 $09 $01
    ld bc, $6f01                                  ; $7314: $01 $01 $6f
    ld b, b                                       ; $7317: $40
    ld l, c                                       ; $7318: $69
    ld a, $9f                                     ; $7319: $3e $9f
    ld h, h                                       ; $731b: $64
    scf                                           ; $731c: $37
    jr c, jr_078_730e                             ; $731d: $38 $ef

    rst $28                                       ; $731f: $ef
    rst $28                                       ; $7320: $ef
    rst $28                                       ; $7321: $ef
    ldh a, [$f0]                                  ; $7322: $f0 $f0
    ldh a, [$f0]                                  ; $7324: $f0 $f0
    ld bc, $0101                                  ; $7326: $01 $01 $01
    ld bc, $0109                                  ; $7329: $01 $09 $01
    ld bc, $8701                                  ; $732c: $01 $01 $87
    add a                                         ; $732f: $87
    add a                                         ; $7330: $87
    add a                                         ; $7331: $87
    add a                                         ; $7332: $87
    add a                                         ; $7333: $87
    add a                                         ; $7334: $87
    add a                                         ; $7335: $87
    ccf                                           ; $7336: $3f
    ld b, b                                       ; $7337: $40
    ld l, c                                       ; $7338: $69
    ld a, $7c                                     ; $7339: $3e $7c
    ld h, h                                       ; $733b: $64
    ld l, d                                       ; $733c: $6a
    ld a, e                                       ; $733d: $7b
    rst $28                                       ; $733e: $ef
    rst $28                                       ; $733f: $ef
    rst $28                                       ; $7340: $ef
    rst $28                                       ; $7341: $ef
    ldh a, [$f0]                                  ; $7342: $f0 $f0
    ldh a, [$f0]                                  ; $7344: $f0 $f0
    ld bc, $0101                                  ; $7346: $01 $01 $01
    ld bc, $0101                                  ; $7349: $01 $01 $01
    ld bc, $8701                                  ; $734c: $01 $01 $87
    add a                                         ; $734f: $87
    add a                                         ; $7350: $87
    add a                                         ; $7351: $87
    add a                                         ; $7352: $87
    add a                                         ; $7353: $87
    add a                                         ; $7354: $87
    add a                                         ; $7355: $87
    ccf                                           ; $7356: $3f
    ld b, b                                       ; $7357: $40
    and c                                         ; $7358: $a1
    adc h                                         ; $7359: $8c
    ld a, b                                       ; $735a: $78
    ld h, h                                       ; $735b: $64
    and e                                         ; $735c: $a3
    ld e, a                                       ; $735d: $5f
    rst $28                                       ; $735e: $ef
    rst $28                                       ; $735f: $ef
    rst $28                                       ; $7360: $ef
    rst $28                                       ; $7361: $ef
    ldh a, [$f0]                                  ; $7362: $f0 $f0
    ldh a, [$f0]                                  ; $7364: $f0 $f0
    ld bc, $0901                                  ; $7366: $01 $01 $09
    add hl, bc                                    ; $7369: $09
    ld bc, $0901                                  ; $736a: $01 $01 $09
    ld bc, $8787                                  ; $736d: $01 $87 $87
    add a                                         ; $7370: $87
    add a                                         ; $7371: $87
    add a                                         ; $7372: $87
    add a                                         ; $7373: $87
    add a                                         ; $7374: $87
    add a                                         ; $7375: $87
    adc l                                         ; $7376: $8d
    ld b, b                                       ; $7377: $40
    ld l, c                                       ; $7378: $69
    ld a, $60                                     ; $7379: $3e $60
    ld h, h                                       ; $737b: $64
    ld l, d                                       ; $737c: $6a
    ld a, e                                       ; $737d: $7b
    rst $28                                       ; $737e: $ef
    rst $28                                       ; $737f: $ef
    rst $28                                       ; $7380: $ef
    rst $28                                       ; $7381: $ef
    ldh a, [$f0]                                  ; $7382: $f0 $f0
    ldh a, [$f1]                                  ; $7384: $f0 $f1
    add hl, bc                                    ; $7386: $09
    ld bc, $0101                                  ; $7387: $01 $01 $01
    ld bc, $0101                                  ; $738a: $01 $01 $01
    ld bc, $8787                                  ; $738d: $01 $87 $87
    add a                                         ; $7390: $87
    add a                                         ; $7391: $87
    add a                                         ; $7392: $87
    add a                                         ; $7393: $87
    add a                                         ; $7394: $87
    add a                                         ; $7395: $87
    sub $d6                                       ; $7396: $d6 $d6
    sub $d6                                       ; $7398: $d6 $d6
    ld a, [c]                                     ; $739a: $f2
    ld a, [c]                                     ; $739b: $f2
    ld a, [c]                                     ; $739c: $f2
    ld a, [c]                                     ; $739d: $f2
    sub $d6                                       ; $739e: $d6 $d6
    sub $d6                                       ; $73a0: $d6 $d6
    ld a, [c]                                     ; $73a2: $f2
    ld a, [c]                                     ; $73a3: $f2
    ld a, [c]                                     ; $73a4: $f2
    ld a, [c]                                     ; $73a5: $f2
    add a                                         ; $73a6: $87
    add a                                         ; $73a7: $87
    add a                                         ; $73a8: $87
    add a                                         ; $73a9: $87
    add a                                         ; $73aa: $87
    add a                                         ; $73ab: $87
    add a                                         ; $73ac: $87
    add a                                         ; $73ad: $87
    add a                                         ; $73ae: $87
    add a                                         ; $73af: $87
    add a                                         ; $73b0: $87
    add a                                         ; $73b1: $87
    add a                                         ; $73b2: $87
    add a                                         ; $73b3: $87
    add a                                         ; $73b4: $87
    add a                                         ; $73b5: $87
    sub $d6                                       ; $73b6: $d6 $d6
    sub $d6                                       ; $73b8: $d6 $d6
    ld a, [c]                                     ; $73ba: $f2
    ld a, [c]                                     ; $73bb: $f2
    ld a, [c]                                     ; $73bc: $f2
    di                                            ; $73bd: $f3
    sub $d6                                       ; $73be: $d6 $d6
    sub $d6                                       ; $73c0: $d6 $d6
    ld a, [c]                                     ; $73c2: $f2
    ld a, [c]                                     ; $73c3: $f2
    ld a, [c]                                     ; $73c4: $f2
    di                                            ; $73c5: $f3
    add a                                         ; $73c6: $87
    add a                                         ; $73c7: $87
    add a                                         ; $73c8: $87
    add a                                         ; $73c9: $87
    add a                                         ; $73ca: $87
    add a                                         ; $73cb: $87
    add a                                         ; $73cc: $87
    add a                                         ; $73cd: $87
    add a                                         ; $73ce: $87
    add a                                         ; $73cf: $87
    add a                                         ; $73d0: $87
    add a                                         ; $73d1: $87
    add a                                         ; $73d2: $87
    add a                                         ; $73d3: $87
    add a                                         ; $73d4: $87
    add a                                         ; $73d5: $87
    sub $d6                                       ; $73d6: $d6 $d6
    sub $d6                                       ; $73d8: $d6 $d6
    jp nz, $c2c1                                  ; $73da: $c2 $c1 $c2

    pop bc                                        ; $73dd: $c1
    pop de                                        ; $73de: $d1
    db $d3                                        ; $73df: $d3
    call nc, $d1d1                                ; $73e0: $d4 $d1 $d1
    pop de                                        ; $73e3: $d1
    pop de                                        ; $73e4: $d1
    pop de                                        ; $73e5: $d1
    add a                                         ; $73e6: $87
    add a                                         ; $73e7: $87
    add a                                         ; $73e8: $87
    add a                                         ; $73e9: $87
    dec bc                                        ; $73ea: $0b
    dec bc                                        ; $73eb: $0b
    dec bc                                        ; $73ec: $0b
    dec bc                                        ; $73ed: $0b
    inc bc                                        ; $73ee: $03
    inc bc                                        ; $73ef: $03
    inc bc                                        ; $73f0: $03
    inc bc                                        ; $73f1: $03
    inc bc                                        ; $73f2: $03
    inc bc                                        ; $73f3: $03
    inc bc                                        ; $73f4: $03
    inc bc                                        ; $73f5: $03
    sub $d6                                       ; $73f6: $d6 $d6
    sub $d6                                       ; $73f8: $d6 $d6
    pop bc                                        ; $73fa: $c1
    jp nz, $c2c1                                  ; $73fb: $c2 $c1 $c2

    pop de                                        ; $73fe: $d1
    pop de                                        ; $73ff: $d1
    pop de                                        ; $7400: $d1
    pop de                                        ; $7401: $d1
    jp nc, $d2d3                                  ; $7402: $d2 $d3 $d2

    db $d3                                        ; $7405: $d3
    add a                                         ; $7406: $87
    add a                                         ; $7407: $87
    add a                                         ; $7408: $87
    add a                                         ; $7409: $87
    dec bc                                        ; $740a: $0b
    dec bc                                        ; $740b: $0b
    dec bc                                        ; $740c: $0b
    dec bc                                        ; $740d: $0b
    inc bc                                        ; $740e: $03
    inc bc                                        ; $740f: $03
    inc bc                                        ; $7410: $03
    inc bc                                        ; $7411: $03
    inc bc                                        ; $7412: $03
    inc bc                                        ; $7413: $03
    inc bc                                        ; $7414: $03
    inc bc                                        ; $7415: $03
    sub $d6                                       ; $7416: $d6 $d6
    sub $d6                                       ; $7418: $d6 $d6
    pop bc                                        ; $741a: $c1
    jp nz, $c2c1                                  ; $741b: $c2 $c1 $c2

    db $d3                                        ; $741e: $d3
    call nc, $d1d1                                ; $741f: $d4 $d1 $d1
    jp nc, $d2d3                                  ; $7422: $d2 $d3 $d2

    db $d3                                        ; $7425: $d3
    add a                                         ; $7426: $87
    add a                                         ; $7427: $87
    add a                                         ; $7428: $87
    add a                                         ; $7429: $87
    dec bc                                        ; $742a: $0b
    dec bc                                        ; $742b: $0b
    dec bc                                        ; $742c: $0b
    dec bc                                        ; $742d: $0b
    inc bc                                        ; $742e: $03
    inc bc                                        ; $742f: $03
    inc bc                                        ; $7430: $03
    inc bc                                        ; $7431: $03
    inc bc                                        ; $7432: $03
    inc bc                                        ; $7433: $03
    inc bc                                        ; $7434: $03
    inc bc                                        ; $7435: $03
    sub $d6                                       ; $7436: $d6 $d6
    sub $d6                                       ; $7438: $d6 $d6
    pop bc                                        ; $743a: $c1
    jp nz, $d5c1                                  ; $743b: $c2 $c1 $d5

    pop de                                        ; $743e: $d1
    pop de                                        ; $743f: $d1
    pop de                                        ; $7440: $d1
    rst $10                                       ; $7441: $d7
    jp nc, $d4d3                                  ; $7442: $d2 $d3 $d4

    rst $10                                       ; $7445: $d7
    add a                                         ; $7446: $87
    add a                                         ; $7447: $87
    add a                                         ; $7448: $87
    add a                                         ; $7449: $87
    dec bc                                        ; $744a: $0b
    dec bc                                        ; $744b: $0b
    dec bc                                        ; $744c: $0b
    inc bc                                        ; $744d: $03
    inc bc                                        ; $744e: $03
    inc bc                                        ; $744f: $03
    inc bc                                        ; $7450: $03
    inc bc                                        ; $7451: $03
    inc bc                                        ; $7452: $03
    inc bc                                        ; $7453: $03
    inc bc                                        ; $7454: $03
    inc bc                                        ; $7455: $03
    and h                                         ; $7456: $a4
    and b                                         ; $7457: $a0
    and d                                         ; $7458: $a2
    add a                                         ; $7459: $87
    and l                                         ; $745a: $a5
    and [hl]                                      ; $745b: $a6
    and a                                         ; $745c: $a7
    ld b, b                                       ; $745d: $40
    xor b                                         ; $745e: $a8
    xor c                                         ; $745f: $a9
    xor d                                         ; $7460: $aa
    ld h, h                                       ; $7461: $64
    add b                                         ; $7462: $80
    add a                                         ; $7463: $87
    ld [hl], $65                                  ; $7464: $36 $65
    add hl, bc                                    ; $7466: $09
    add hl, bc                                    ; $7467: $09
    add hl, bc                                    ; $7468: $09
    add hl, bc                                    ; $7469: $09
    add hl, bc                                    ; $746a: $09
    add hl, bc                                    ; $746b: $09
    add hl, bc                                    ; $746c: $09
    ld bc, $0909                                  ; $746d: $01 $09 $09
    add hl, bc                                    ; $7470: $09
    ld bc, $0909                                  ; $7471: $01 $09 $09
    ld bc, $3a01                                  ; $7474: $01 $01 $3a
    ld a, a                                       ; $7477: $7f
    add b                                         ; $7478: $80
    add a                                         ; $7479: $87
    ld l, c                                       ; $747a: $69
    ld a, $3f                                     ; $747b: $3e $3f
    ld b, b                                       ; $747d: $40
    ld l, d                                       ; $747e: $6a
    ld a, e                                       ; $747f: $7b
    ld l, e                                       ; $7480: $6b
    ld l, h                                       ; $7481: $6c
    ld a, h                                       ; $7482: $7c
    ld l, l                                       ; $7483: $6d
    ld l, [hl]                                    ; $7484: $6e
    ld l, a                                       ; $7485: $6f
    ld bc, $0901                                  ; $7486: $01 $01 $09
    add hl, bc                                    ; $7489: $09
    ld bc, $0101                                  ; $748a: $01 $01 $01
    ld bc, $0101                                  ; $748d: $01 $01 $01
    ld bc, $0101                                  ; $7490: $01 $01 $01
    ld bc, $0101                                  ; $7493: $01 $01 $01
    ld a, [hl-]                                   ; $7496: $3a
    ld a, a                                       ; $7497: $7f
    rst $28                                       ; $7498: $ef
    ld h, c                                       ; $7499: $61
    ld l, c                                       ; $749a: $69
    ld a, $f0                                     ; $749b: $3e $f0
    ld h, e                                       ; $749d: $63
    ld l, d                                       ; $749e: $6a
    ld a, e                                       ; $749f: $7b
    ld a, b                                       ; $74a0: $78
    ld a, c                                       ; $74a1: $79
    ld a, h                                       ; $74a2: $7c
    add h                                         ; $74a3: $84
    ld [hl], $65                                  ; $74a4: $36 $65
    ld bc, $0901                                  ; $74a6: $01 $01 $09
    ld bc, $0101                                  ; $74a9: $01 $01 $01
    add hl, bc                                    ; $74ac: $09
    ld bc, $0101                                  ; $74ad: $01 $01 $01
    ld bc, $0101                                  ; $74b0: $01 $01 $01
    add hl, bc                                    ; $74b3: $09
    ld bc, $6201                                  ; $74b4: $01 $01 $62
    ld a, a                                       ; $74b7: $7f
    add b                                         ; $74b8: $80
    add a                                         ; $74b9: $87
    ld l, c                                       ; $74ba: $69
    ld a, $3f                                     ; $74bb: $3e $3f
    ld b, b                                       ; $74bd: $40
    ld a, d                                       ; $74be: $7a
    ld a, e                                       ; $74bf: $7b
    ld [hl], b                                    ; $74c0: $70
    ld [hl], c                                    ; $74c1: $71
    ld a, h                                       ; $74c2: $7c
    add h                                         ; $74c3: $84
    ld [hl], d                                    ; $74c4: $72
    ld [hl], e                                    ; $74c5: $73
    ld bc, $0901                                  ; $74c6: $01 $01 $09
    add hl, bc                                    ; $74c9: $09
    ld bc, $0101                                  ; $74ca: $01 $01 $01
    ld bc, $0101                                  ; $74cd: $01 $01 $01
    add d                                         ; $74d0: $82
    add d                                         ; $74d1: $82
    ld bc, $8209                                  ; $74d2: $01 $09 $82
    add d                                         ; $74d5: $82
    ccf                                           ; $74d6: $3f
    ld b, b                                       ; $74d7: $40
    ld a, [hl-]                                   ; $74d8: $3a
    rst $28                                       ; $74d9: $ef
    ld a, b                                       ; $74da: $78
    ld h, h                                       ; $74db: $64
    scf                                           ; $74dc: $37
    rst $28                                       ; $74dd: $ef
    ld [hl], $65                                  ; $74de: $36 $65
    dec sp                                        ; $74e0: $3b
    ld c, a                                       ; $74e1: $4f
    sbc $7f                                       ; $74e2: $de $7f
    ld a, h                                       ; $74e4: $7c
    db $e3                                        ; $74e5: $e3
    ld bc, $0101                                  ; $74e6: $01 $01 $01
    add d                                         ; $74e9: $82
    ld bc, $0101                                  ; $74ea: $01 $01 $01
    add d                                         ; $74ed: $82
    ld bc, $0101                                  ; $74ee: $01 $01 $01
    add d                                         ; $74f1: $82
    add hl, bc                                    ; $74f2: $09
    ld bc, $8201                                  ; $74f3: $01 $01 $82
    rst $28                                       ; $74f6: $ef
    rst $28                                       ; $74f7: $ef
    rst $28                                       ; $74f8: $ef
    rst $28                                       ; $74f9: $ef
    rst $28                                       ; $74fa: $ef
    rst $28                                       ; $74fb: $ef
    rst $28                                       ; $74fc: $ef
    rst $28                                       ; $74fd: $ef
    ld d, b                                       ; $74fe: $50
    ld c, a                                       ; $74ff: $4f
    ld d, b                                       ; $7500: $50
    ld c, a                                       ; $7501: $4f
    ld [c], a                                     ; $7502: $e2
    pop hl                                        ; $7503: $e1
    ld [c], a                                     ; $7504: $e2
    pop hl                                        ; $7505: $e1
    add d                                         ; $7506: $82
    add d                                         ; $7507: $82
    add d                                         ; $7508: $82
    add d                                         ; $7509: $82
    add d                                         ; $750a: $82
    add d                                         ; $750b: $82
    add d                                         ; $750c: $82
    add d                                         ; $750d: $82
    add d                                         ; $750e: $82
    add d                                         ; $750f: $82
    add d                                         ; $7510: $82
    add d                                         ; $7511: $82
    add d                                         ; $7512: $82
    add d                                         ; $7513: $82
    add d                                         ; $7514: $82
    add d                                         ; $7515: $82
    rst $28                                       ; $7516: $ef
    rst $28                                       ; $7517: $ef
    rst $28                                       ; $7518: $ef
    rst $28                                       ; $7519: $ef
    rst $28                                       ; $751a: $ef
    rst $28                                       ; $751b: $ef
    rst $28                                       ; $751c: $ef
    rst $28                                       ; $751d: $ef
    ld d, b                                       ; $751e: $50
    ld c, a                                       ; $751f: $4f
    ld d, b                                       ; $7520: $50
    ld c, a                                       ; $7521: $4f
    ld [c], a                                     ; $7522: $e2
    pop hl                                        ; $7523: $e1
    ld [c], a                                     ; $7524: $e2
    inc e                                         ; $7525: $1c
    add d                                         ; $7526: $82
    add d                                         ; $7527: $82
    add d                                         ; $7528: $82
    add d                                         ; $7529: $82
    add d                                         ; $752a: $82
    add d                                         ; $752b: $82
    add d                                         ; $752c: $82
    add d                                         ; $752d: $82
    add d                                         ; $752e: $82
    add d                                         ; $752f: $82
    add d                                         ; $7530: $82
    add d                                         ; $7531: $82
    add d                                         ; $7532: $82
    add d                                         ; $7533: $82
    add d                                         ; $7534: $82
    add d                                         ; $7535: $82
    rst $10                                       ; $7536: $d7
    sbc $de                                       ; $7537: $de $de
    ldh [$d7], a                                  ; $7539: $e0 $d7
    rst $10                                       ; $753b: $d7
    rst $10                                       ; $753c: $d7
    db $e3                                        ; $753d: $e3
    sub $d7                                       ; $753e: $d6 $d7
    sub $e0                                       ; $7540: $d6 $e0
    sub $d6                                       ; $7542: $d6 $d6
    sub $e3                                       ; $7544: $d6 $e3
    add hl, bc                                    ; $7546: $09
    add hl, bc                                    ; $7547: $09
    add hl, bc                                    ; $7548: $09
    add d                                         ; $7549: $82
    add hl, bc                                    ; $754a: $09
    add hl, bc                                    ; $754b: $09
    add hl, bc                                    ; $754c: $09
    add d                                         ; $754d: $82
    add hl, bc                                    ; $754e: $09
    add hl, bc                                    ; $754f: $09
    add hl, bc                                    ; $7550: $09
    add d                                         ; $7551: $82
    add hl, bc                                    ; $7552: $09
    add hl, bc                                    ; $7553: $09
    add hl, bc                                    ; $7554: $09
    add d                                         ; $7555: $82
    rst $20                                       ; $7556: $e7
    sub $e7                                       ; $7557: $d6 $e7
    ldh [$e7], a                                  ; $7559: $e0 $e7
    rst $20                                       ; $755b: $e7
    rst $20                                       ; $755c: $e7
    db $e3                                        ; $755d: $e3
    rst $20                                       ; $755e: $e7
    rst $20                                       ; $755f: $e7
    rst $20                                       ; $7560: $e7
    ret nz                                        ; $7561: $c0

    rst $20                                       ; $7562: $e7
    rst $20                                       ; $7563: $e7
    rst $20                                       ; $7564: $e7
    jp Jump_000_0901                              ; $7565: $c3 $01 $09


    ld bc, $0182                                  ; $7568: $01 $82 $01
    ld bc, $8201                                  ; $756b: $01 $01 $82
    ld bc, $0101                                  ; $756e: $01 $01 $01
    inc c                                         ; $7571: $0c
    ld bc, $0101                                  ; $7572: $01 $01 $01
    inc c                                         ; $7575: $0c
    pop hl                                        ; $7576: $e1
    ld [c], a                                     ; $7577: $e2
    pop hl                                        ; $7578: $e1
    ld [c], a                                     ; $7579: $e2
    ld [c], a                                     ; $757a: $e2
    pop hl                                        ; $757b: $e1
    ld [c], a                                     ; $757c: $e2
    pop hl                                        ; $757d: $e1
    pop bc                                        ; $757e: $c1
    jp nz, $c2c1                                  ; $757f: $c2 $c1 $c2

    db $d3                                        ; $7582: $d3
    call nc, $d4d1                                ; $7583: $d4 $d1 $d4
    add d                                         ; $7586: $82
    add d                                         ; $7587: $82
    add d                                         ; $7588: $82
    add d                                         ; $7589: $82
    add d                                         ; $758a: $82
    add d                                         ; $758b: $82
    add d                                         ; $758c: $82
    add d                                         ; $758d: $82
    inc c                                         ; $758e: $0c
    inc c                                         ; $758f: $0c
    inc c                                         ; $7590: $0c
    inc c                                         ; $7591: $0c
    inc b                                         ; $7592: $04
    inc b                                         ; $7593: $04
    inc b                                         ; $7594: $04
    inc b                                         ; $7595: $04
    pop hl                                        ; $7596: $e1
    ld [c], a                                     ; $7597: $e2
    pop hl                                        ; $7598: $e1
    ld [c], a                                     ; $7599: $e2
    ld [c], a                                     ; $759a: $e2
    pop hl                                        ; $759b: $e1
    ld [c], a                                     ; $759c: $e2
    pop hl                                        ; $759d: $e1
    pop bc                                        ; $759e: $c1
    jp nz, $c2c1                                  ; $759f: $c2 $c1 $c2

    db $d3                                        ; $75a2: $d3
    call nc, $d1d1                                ; $75a3: $d4 $d1 $d1
    add d                                         ; $75a6: $82
    add d                                         ; $75a7: $82
    add d                                         ; $75a8: $82
    add d                                         ; $75a9: $82
    add d                                         ; $75aa: $82
    add d                                         ; $75ab: $82
    add d                                         ; $75ac: $82
    add d                                         ; $75ad: $82
    inc c                                         ; $75ae: $0c
    inc c                                         ; $75af: $0c
    inc c                                         ; $75b0: $0c
    inc c                                         ; $75b1: $0c
    inc b                                         ; $75b2: $04
    inc b                                         ; $75b3: $04
    inc b                                         ; $75b4: $04
    inc b                                         ; $75b5: $04
    pop hl                                        ; $75b6: $e1
    ld [c], a                                     ; $75b7: $e2
    pop hl                                        ; $75b8: $e1
    dec de                                        ; $75b9: $1b
    ld [c], a                                     ; $75ba: $e2
    pop hl                                        ; $75bb: $e1
    ld [c], a                                     ; $75bc: $e2
    inc e                                         ; $75bd: $1c
    pop bc                                        ; $75be: $c1
    jp nz, $d5c1                                  ; $75bf: $c2 $c1 $d5

    db $d3                                        ; $75c2: $d3
    call nc, $d7d1                                ; $75c3: $d4 $d1 $d7
    add d                                         ; $75c6: $82
    add d                                         ; $75c7: $82
    ld [bc], a                                    ; $75c8: $02
    ld [bc], a                                    ; $75c9: $02
    add d                                         ; $75ca: $82
    add d                                         ; $75cb: $82
    ld [bc], a                                    ; $75cc: $02
    ld [bc], a                                    ; $75cd: $02
    inc c                                         ; $75ce: $0c
    inc c                                         ; $75cf: $0c
    inc c                                         ; $75d0: $0c
    inc b                                         ; $75d1: $04
    inc b                                         ; $75d2: $04
    inc b                                         ; $75d3: $04
    inc b                                         ; $75d4: $04
    inc b                                         ; $75d5: $04
    ld a, [hl-]                                   ; $75d6: $3a
    ld a, a                                       ; $75d7: $7f
    add b                                         ; $75d8: $80
    ld h, h                                       ; $75d9: $64
    ld l, c                                       ; $75da: $69
    ld a, $3f                                     ; $75db: $3e $3f
    add c                                         ; $75dd: $81
    ld [hl], c                                    ; $75de: $71
    ld [hl], c                                    ; $75df: $71
    ld [hl], c                                    ; $75e0: $71
    ld [hl], c                                    ; $75e1: $71
    ld [hl], e                                    ; $75e2: $73
    ld [hl], e                                    ; $75e3: $73
    ld [hl], e                                    ; $75e4: $73
    ld [hl], e                                    ; $75e5: $73
    ld bc, $0901                                  ; $75e6: $01 $01 $09
    ld bc, $0101                                  ; $75e9: $01 $01 $01
    ld bc, $8209                                  ; $75ec: $01 $09 $82
    add d                                         ; $75ef: $82
    add d                                         ; $75f0: $82
    add d                                         ; $75f1: $82
    add d                                         ; $75f2: $82
    add d                                         ; $75f3: $82
    add d                                         ; $75f4: $82
    add d                                         ; $75f5: $82

    db $7d, $7e, $80, $87, $85, $86, $3f, $40, $71, $71, $71, $8b, $73, $73, $8e, $8f
    db $01, $01, $09, $09, $09, $09, $01, $01, $82, $82, $82, $8a, $82, $82, $8a, $8a
    db $3a, $3b, $3c, $83, $69, $3e, $3f, $40, $6a, $7b, $78, $64, $7c, $79, $7a, $65
    db $01, $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $3a, $7f, $80, $72, $69, $3e, $3f, $74, $91, $a4, $a0, $74, $94, $a5, $e4, $ca
    db $01, $01, $09, $86, $01, $01, $01, $86, $09, $09, $09, $86, $09, $09, $85, $8d

    ld [hl], l                                    ; $7656: $75
    ld [hl], l                                    ; $7657: $75
    ld [hl], l                                    ; $7658: $75
    ld [hl], l                                    ; $7659: $75
    ld [hl], l                                    ; $765a: $75
    ld [hl], l                                    ; $765b: $75
    ld [hl], l                                    ; $765c: $75
    ld [hl], l                                    ; $765d: $75
    ld [hl], l                                    ; $765e: $75
    ld [hl], l                                    ; $765f: $75
    ld [hl], l                                    ; $7660: $75
    ld [hl], l                                    ; $7661: $75
    call nc, $d4d4                                ; $7662: $d4 $d4 $d4
    call nc, $8282                                ; $7665: $d4 $82 $82
    add d                                         ; $7668: $82
    add d                                         ; $7669: $82
    add d                                         ; $766a: $82
    add d                                         ; $766b: $82
    add d                                         ; $766c: $82
    add d                                         ; $766d: $82
    add d                                         ; $766e: $82
    add d                                         ; $766f: $82
    add d                                         ; $7670: $82
    add d                                         ; $7671: $82
    adc d                                         ; $7672: $8a
    adc d                                         ; $7673: $8a
    adc d                                         ; $7674: $8a
    adc d                                         ; $7675: $8a

    db $75, $75, $90, $8f, $75, $75, $90, $8f, $75, $75, $90, $8f, $d4, $d4, $d4, $f4
    db $82, $82, $8a, $8a, $82, $82, $8a, $8a, $82, $82, $8a, $8a, $8a, $8a, $8a, $a2
    db $80, $87, $3a, $7f, $6b, $6c, $69, $3e, $6e, $6f, $6a, $7b, $8a, $9f, $9d, $5b
    db $09, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $09, $01
    db $80, $a8, $e6, $e7, $3f, $40, $e6, $e7, $78, $64, $e6, $e7, $5c, $65, $e6, $f5
    db $09, $09, $85, $85, $01, $01, $85, $85, $01, $01, $85, $85, $01, $01, $85, $85

    cpl                                           ; $76d6: $2f
    cpl                                           ; $76d7: $2f
    cpl                                           ; $76d8: $2f
    cpl                                           ; $76d9: $2f
    ld sp, $31f9                                  ; $76da: $31 $f9 $31
    ld sp, $31f9                                  ; $76dd: $31 $f9 $31
    ld sp, hl                                     ; $76e0: $f9
    ld sp, hl                                     ; $76e1: $f9
    ld sp, $f931                                  ; $76e2: $31 $31 $f9
    ld sp, $0404                                  ; $76e5: $31 $04 $04
    inc b                                         ; $76e8: $04
    inc b                                         ; $76e9: $04
    inc b                                         ; $76ea: $04
    inc b                                         ; $76eb: $04
    inc b                                         ; $76ec: $04
    inc b                                         ; $76ed: $04
    inc b                                         ; $76ee: $04
    inc b                                         ; $76ef: $04
    inc b                                         ; $76f0: $04
    inc b                                         ; $76f1: $04
    inc b                                         ; $76f2: $04
    inc b                                         ; $76f3: $04
    inc b                                         ; $76f4: $04
    inc b                                         ; $76f5: $04

    db $2f, $2f, $2f, $ff, $f9, $31, $31, $01, $f9, $31, $f9, $01, $31, $31, $f9, $01
    db $04, $04, $04, $24, $04, $04, $04, $24, $04, $04, $04, $24, $04, $04, $04, $24
    db $3a, $7f, $9e, $5d, $69, $3e, $66, $67, $6a, $7b, $78, $64, $8c, $8d, $36, $65
    db $01, $01, $09, $01, $01, $01, $01, $01, $01, $01, $01, $01, $09, $09, $01, $01
    db $5e, $7f, $f4, $f6, $68, $7d, $ff, $2f, $81, $85, $01, $f9, $82, $88, $03, $31
    db $01, $01, $85, $85, $01, $01, $03, $03, $09, $09, $03, $03, $09, $09, $03, $03

    ld sp, hl                                     ; $7756: $f9
    ld sp, hl                                     ; $7757: $f9
    ld sp, $31f9                                  ; $7758: $31 $f9 $31
    ld sp, $31f9                                  ; $775b: $31 $f9 $31
    ld sp, hl                                     ; $775e: $f9
    ld sp, hl                                     ; $775f: $f9
    ld sp, $31f9                                  ; $7760: $31 $f9 $31
    ld sp, $31f9                                  ; $7763: $31 $f9 $31
    inc b                                         ; $7766: $04
    inc b                                         ; $7767: $04
    inc b                                         ; $7768: $04
    inc b                                         ; $7769: $04
    inc b                                         ; $776a: $04
    inc b                                         ; $776b: $04
    inc b                                         ; $776c: $04
    inc b                                         ; $776d: $04
    inc b                                         ; $776e: $04
    inc b                                         ; $776f: $04
    inc b                                         ; $7770: $04
    inc b                                         ; $7771: $04
    inc b                                         ; $7772: $04
    inc b                                         ; $7773: $04
    inc b                                         ; $7774: $04
    inc b                                         ; $7775: $04
    ld sp, hl                                     ; $7776: $f9
    ld sp, hl                                     ; $7777: $f9
    ld sp, $3101                                  ; $7778: $31 $01 $31
    ld sp, hl                                     ; $777b: $f9
    ld sp, $f901                                  ; $777c: $31 $01 $f9
    ld sp, $7170                                  ; $777f: $31 $70 $71
    ld sp, $72f9                                  ; $7782: $31 $f9 $72
    ld [hl], e                                    ; $7785: $73
    inc b                                         ; $7786: $04
    inc b                                         ; $7787: $04
    inc b                                         ; $7788: $04
    inc h                                         ; $7789: $24
    inc b                                         ; $778a: $04
    inc b                                         ; $778b: $04
    inc b                                         ; $778c: $04
    inc h                                         ; $778d: $24
    inc b                                         ; $778e: $04
    inc b                                         ; $778f: $04
    add a                                         ; $7790: $87
    add a                                         ; $7791: $87
    inc b                                         ; $7792: $04
    inc b                                         ; $7793: $04
    add a                                         ; $7794: $87
    add a                                         ; $7795: $87
    ld e, a                                       ; $7796: $5f
    ld h, b                                       ; $7797: $60
    ld a, [hl-]                                   ; $7798: $3a
    ld a, a                                       ; $7799: $7f
    ld h, c                                       ; $779a: $61
    ld h, d                                       ; $779b: $62
    ld l, c                                       ; $779c: $69
    ld a, $71                                     ; $779d: $3e $71
    ld [hl], c                                    ; $779f: $71
    ld [hl], c                                    ; $77a0: $71
    ld [hl], c                                    ; $77a1: $71
    ld [hl], e                                    ; $77a2: $73
    ld [hl], e                                    ; $77a3: $73
    ld [hl], e                                    ; $77a4: $73
    ld [hl], e                                    ; $77a5: $73
    ld bc, $0101                                  ; $77a6: $01 $01 $01
    ld bc, $0101                                  ; $77a9: $01 $01 $01
    ld bc, $8701                                  ; $77ac: $01 $01 $87
    add a                                         ; $77af: $87
    add a                                         ; $77b0: $87
    add a                                         ; $77b1: $87
    add a                                         ; $77b2: $87
    add a                                         ; $77b3: $87
    add a                                         ; $77b4: $87
    add a                                         ; $77b5: $87
    sub d                                         ; $77b6: $92
    sub e                                         ; $77b7: $93
    ld bc, $95f9                                  ; $77b8: $01 $f9 $95
    sub [hl]                                      ; $77bb: $96
    rst $18                                       ; $77bc: $df
    reti                                          ; $77bd: $d9


    ld [hl], c                                    ; $77be: $71
    ld [hl], c                                    ; $77bf: $71
    ld [hl], c                                    ; $77c0: $71
    adc e                                         ; $77c1: $8b
    ld [hl], e                                    ; $77c2: $73
    ld [hl], e                                    ; $77c3: $73
    adc [hl]                                      ; $77c4: $8e
    adc a                                         ; $77c5: $8f
    ld c, $0e                                     ; $77c6: $0e $0e
    inc bc                                        ; $77c8: $03
    inc bc                                        ; $77c9: $03
    ld c, $0e                                     ; $77ca: $0e $0e
    dec bc                                        ; $77cc: $0b
    dec bc                                        ; $77cd: $0b
    add a                                         ; $77ce: $87
    add a                                         ; $77cf: $87
    add a                                         ; $77d0: $87
    adc a                                         ; $77d1: $8f
    add a                                         ; $77d2: $87
    add a                                         ; $77d3: $87
    adc a                                         ; $77d4: $8f
    adc a                                         ; $77d5: $8f

    db $73, $73, $73, $73, $75, $75, $75, $75, $75, $75, $75, $75, $e5, $e5, $e5, $e5
    db $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $85, $85, $85, $85
    db $73, $73, $73, $73, $75, $75, $75, $75, $75, $75, $75, $75, $e5, $d5, $e4, $75
    db $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $85, $8d, $a5, $86
    db $73, $73, $73, $73, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75
    db $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86
    db $d6, $d6, $d6, $d6, $f3, $f2, $f2, $f2, $d6, $d6, $d6, $d6, $d8, $de, $d9, $de
    db $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $03, $23, $23, $23
    db $e7, $e7, $e7, $e7, $e7, $f5, $e5, $f5, $f5, $f6, $f7, $f6, $f6, $f8, $f9, $f8
    db $85, $85, $85, $85, $85, $85, $85, $a5, $85, $85, $83, $a5, $85, $83, $83, $a3
    db $e7, $e7, $e6, $d4, $e7, $e7, $e6, $2f, $f5, $e7, $e6, $31, $f6, $f5, $e6, $f9
    db $85, $85, $a5, $ae, $85, $85, $a5, $24, $a5, $85, $a5, $24, $a5, $a5, $a5, $24
    db $d4, $d4, $d4, $d4, $2f, $2f, $2f, $ff, $f9, $31, $f9, $01, $31, $f9, $31, $03
    db $ae, $ae, $ae, $ae, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24
    db $da, $dd, $db, $dd, $dc, $dd, $db, $dd, $da, $df, $e8, $df, $dc, $db, $dd, $db
    db $03, $23, $23, $23, $03, $23, $23, $23, $03, $23, $23, $23, $03, $23, $23, $23
    db $f8, $31, $31, $f9, $31, $f9, $13, $d9, $31, $f9, $d8, $07, $f9, $31, $02, $0a
    db $83, $83, $83, $83, $03, $03, $03, $0b, $03, $03, $0b, $00, $03, $03, $03, $00
    db $f8, $f6, $f4, $f9, $da, $05, $db, $31, $08, $09, $dc, $31, $0b, $0c, $dd, $f9
    db $a3, $a5, $a5, $24, $0b, $03, $0b, $24, $00, $00, $0b, $24, $00, $00, $0b, $24
    db $31, $e4, $e5, $e5, $f9, $e6, $e7, $e7, $31, $e6, $e7, $e7, $31, $e6, $e7, $e7
    db $24, $01, $21, $21, $24, $01, $01, $01, $24, $01, $01, $01, $24, $01, $01, $01
    db $e5, $e5, $e5, $e5, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7
    db $21, $21, $21, $21, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

    ld sp, $02f9                                  ; $7956: $31 $f9 $02
    dec c                                         ; $7959: $0d
    jp c, $e1d9                                   ; $795a: $da $d9 $e1

    sbc c                                         ; $795d: $99
    ld [$0209], sp                                ; $795e: $08 $09 $02
    ld sp, hl                                     ; $7961: $f9
    dec bc                                        ; $7962: $0b
    inc c                                         ; $7963: $0c
    ld [bc], a                                    ; $7964: $02
    ld sp, hl                                     ; $7965: $f9
    inc bc                                        ; $7966: $03
    inc bc                                        ; $7967: $03
    inc bc                                        ; $7968: $03
    nop                                           ; $7969: $00
    dec bc                                        ; $796a: $0b
    dec bc                                        ; $796b: $0b
    dec bc                                        ; $796c: $0b
    dec bc                                        ; $796d: $0b
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    inc hl                                        ; $7970: $23
    inc bc                                        ; $7971: $03
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    inc hl                                        ; $7974: $23
    inc bc                                        ; $7975: $03
    ld c, $0f                                     ; $7976: $0e $0f
    call c, $9931                                 ; $7978: $dc $31 $99
    sbc c                                         ; $797b: $99
    ld [c], a                                     ; $797c: $e2
    rst $20                                       ; $797d: $e7
    ld sp, $01f9                                  ; $797e: $31 $f9 $01
    rst $20                                       ; $7981: $e7
    ld sp, $01f9                                  ; $7982: $31 $f9 $01
    rst $20                                       ; $7985: $e7
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    dec bc                                        ; $7988: $0b
    inc h                                         ; $7989: $24
    dec bc                                        ; $798a: $0b
    dec bc                                        ; $798b: $0b
    dec bc                                        ; $798c: $0b
    ld bc, $0303                                  ; $798d: $01 $03 $03
    inc hl                                        ; $7990: $23
    ld bc, $0303                                  ; $7991: $01 $03 $03
    inc hl                                        ; $7994: $23
    ld bc, $e6f9                                  ; $7995: $01 $f9 $e6
    rst $20                                       ; $7998: $e7
    rst $20                                       ; $7999: $e7
    rst $20                                       ; $799a: $e7
    db $f4                                        ; $799b: $f4
    push hl                                       ; $799c: $e5
    push hl                                       ; $799d: $e5

jr_078_799e:
    rst $20                                       ; $799e: $e7
    rst $38                                       ; $799f: $ff
    ld b, $05                                     ; $79a0: $06 $05
    rst $20                                       ; $79a2: $e7
    inc bc                                        ; $79a3: $03
    ld [bc], a                                    ; $79a4: $02
    add hl, bc                                    ; $79a5: $09
    inc h                                         ; $79a6: $24
    ld bc, $0101                                  ; $79a7: $01 $01 $01
    ld bc, $2101                                  ; $79aa: $01 $01 $21
    ld hl, $0201                                  ; $79ad: $21 $01 $02
    ld [hl+], a                                   ; $79b0: $22
    ld [hl+], a                                   ; $79b1: $22
    ld bc, $0202                                  ; $79b2: $01 $02 $02
    jr nz, jr_078_799e                            ; $79b5: $20 $e7

    rst $20                                       ; $79b7: $e7
    rst $20                                       ; $79b8: $e7
    rst $20                                       ; $79b9: $e7
    push hl                                       ; $79ba: $e5
    push hl                                       ; $79bb: $e5
    push hl                                       ; $79bc: $e5
    push hl                                       ; $79bd: $e5
    dec b                                         ; $79be: $05
    dec b                                         ; $79bf: $05
    nop                                           ; $79c0: $00
    cpl                                           ; $79c1: $2f
    ld [$0207], sp                                ; $79c2: $08 $07 $02
    ld sp, $0101                                  ; $79c5: $31 $01 $01
    ld bc, $2101                                  ; $79c8: $01 $01 $21
    ld hl, $2121                                  ; $79cb: $21 $21 $21
    ld [hl+], a                                   ; $79ce: $22
    ld [hl+], a                                   ; $79cf: $22
    ld [hl+], a                                   ; $79d0: $22
    inc h                                         ; $79d1: $24
    jr nz, @+$22                                  ; $79d2: $20 $20

    ld [hl+], a                                   ; $79d4: $22
    inc h                                         ; $79d5: $24

    db $d6, $d6, $d6, $d6, $f2, $f2, $f2, $f2, $d6, $d6, $d6, $d6, $d9, $de, $d9, $de
    db $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $23, $23, $23, $23
    db $d6, $d6, $d6, $d4, $f2, $f2, $2c, $ff, $d6, $d6, $d6, $01, $de, $d9, $d8, $03
    db $a7, $a7, $a7, $ac, $a7, $a7, $a7, $02, $a7, $a7, $a7, $02, $23, $23, $23, $02
    db $d4, $d4, $d4, $d4, $2f, $2f, $2f, $2f, $31, $31, $f9, $31, $f9, $f9, $31, $f9
    db $ac, $ac, $ac, $ac, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22
    db $d4, $d4, $d4, $d4, $2f, $2f, $2f, $ff, $f9, $31, $f9, $01, $31, $f9, $31, $03
    db $ac, $ac, $ac, $ac, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22
    db $db, $dd, $db, $dd, $dd, $db, $dd, $df, $df, $e8, $df, $db, $db, $dd, $db, $e8
    db $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23
    db $dd, $db, $da, $01, $e8, $df, $dc, $03, $dd, $db, $da, $01, $df, $e8, $dc, $03
    db $23, $23, $23, $02, $23, $23, $23, $02, $23, $23, $23, $02, $23, $23, $23, $02
    db $31, $f9, $31, $31, $f9, $31, $f9, $f9, $31, $f9, $31, $31, $f9, $31, $f9, $f9
    db $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22
    db $f9, $31, $f9, $01, $31, $f9, $31, $03, $f9, $31, $f9, $01, $31, $f9, $31, $03
    db $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22
    db $e4, $dd, $da, $01, $e6, $e8, $dc, $e7, $e6, $dd, $da, $e7, $e6, $df, $dc, $e7
    db $21, $23, $23, $02, $21, $23, $23, $01, $21, $23, $23, $01, $21, $23, $23, $01
    db $31, $f9, $31, $31, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7
    db $22, $22, $22, $22, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $f9, $31, $f9, $01, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e7, $e4, $e5, $e5, $e5
    db $22, $22, $22, $22, $01, $01, $01, $01, $01, $01, $01, $01, $02, $22, $22, $22

    rst $20                                       ; $7b36: $e7
    rst $20                                       ; $7b37: $e7
    rst $20                                       ; $7b38: $e7
    rst $20                                       ; $7b39: $e7
    push hl                                       ; $7b3a: $e5
    push hl                                       ; $7b3b: $e5
    push hl                                       ; $7b3c: $e5
    push hl                                       ; $7b3d: $e5
    cpl                                           ; $7b3e: $2f
    cpl                                           ; $7b3f: $2f
    cpl                                           ; $7b40: $2f
    cpl                                           ; $7b41: $2f
    ld sp, hl                                     ; $7b42: $f9
    ld sp, $31f9                                  ; $7b43: $31 $f9 $31
    ld bc, $0101                                  ; $7b46: $01 $01 $01
    ld bc, $2121                                  ; $7b49: $01 $21 $21
    ld hl, $2421                                  ; $7b4c: $21 $21 $24
    inc h                                         ; $7b4f: $24
    inc h                                         ; $7b50: $24
    inc h                                         ; $7b51: $24
    inc h                                         ; $7b52: $24
    inc h                                         ; $7b53: $24
    inc h                                         ; $7b54: $24
    inc h                                         ; $7b55: $24
    and $db                                       ; $7b56: $e6 $db
    jp c, $f4e7                                   ; $7b58: $da $e7 $f4

    add sp, -$24                                  ; $7b5b: $e8 $dc
    rst $20                                       ; $7b5d: $e7
    rst $38                                       ; $7b5e: $ff
    db $dd                                        ; $7b5f: $dd
    jp c, $03e7                                   ; $7b60: $da $e7 $03

    rst $20                                       ; $7b63: $e7
    rst $20                                       ; $7b64: $e7
    rst $20                                       ; $7b65: $e7
    ld hl, $2323                                  ; $7b66: $21 $23 $23
    ld bc, $2321                                  ; $7b69: $01 $21 $23
    inc hl                                        ; $7b6c: $23
    ld bc, $2322                                  ; $7b6d: $01 $22 $23
    inc hl                                        ; $7b70: $23
    ld bc, $0122                                  ; $7b71: $01 $22 $01
    ld bc, $e601                                  ; $7b74: $01 $01 $e6
    rst $20                                       ; $7b77: $e7
    rst $20                                       ; $7b78: $e7
    rst $20                                       ; $7b79: $e7
    and $e7                                       ; $7b7a: $e6 $e7
    rst $20                                       ; $7b7c: $e7
    rst $20                                       ; $7b7d: $e7
    and $e7                                       ; $7b7e: $e6 $e7
    rst $20                                       ; $7b80: $e7
    rst $20                                       ; $7b81: $e7
    and $e7                                       ; $7b82: $e6 $e7
    rst $20                                       ; $7b84: $e7
    rst $20                                       ; $7b85: $e7
    ld [bc], a                                    ; $7b86: $02
    ld [bc], a                                    ; $7b87: $02
    ld [bc], a                                    ; $7b88: $02

Jump_078_7b89:
    ld [bc], a                                    ; $7b89: $02
    ld [bc], a                                    ; $7b8a: $02
    ld [bc], a                                    ; $7b8b: $02
    ld [bc], a                                    ; $7b8c: $02
    ld [bc], a                                    ; $7b8d: $02
    ld [bc], a                                    ; $7b8e: $02
    ld [bc], a                                    ; $7b8f: $02
    ld [bc], a                                    ; $7b90: $02
    ld [bc], a                                    ; $7b91: $02
    ld [bc], a                                    ; $7b92: $02
    ld [bc], a                                    ; $7b93: $02
    ld [bc], a                                    ; $7b94: $02
    ld [bc], a                                    ; $7b95: $02

    db $ef, $ef, $ef, $ef, $f1, $f0, $f0, $f0, $d6, $d6, $d6, $d6, $f3, $f2, $f2, $f2
    db $a3, $a3, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23
    db $ef, $ef, $ef, $ef, $f0, $f0, $f0, $f0, $d6, $d6, $d6, $d6, $f2, $f2, $f2, $f2
    db $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23

    rst $28                                       ; $7bd6: $ef
    rst $28                                       ; $7bd7: $ef
    rst $28                                       ; $7bd8: $ef
    rst $28                                       ; $7bd9: $ef
    ldh a, [$f0]                                  ; $7bda: $f0 $f0

jr_078_7bdc:
    ldh a, [$f0]                                  ; $7bdc: $f0 $f0
    sub $d6                                       ; $7bde: $d6 $d6
    sub $d6                                       ; $7be0: $d6 $d6
    inc l                                         ; $7be2: $2c
    ld a, [c]                                     ; $7be3: $f2
    ld a, [c]                                     ; $7be4: $f2
    ld a, [c]                                     ; $7be5: $f2
    inc hl                                        ; $7be6: $23
    inc hl                                        ; $7be7: $23
    inc hl                                        ; $7be8: $23
    inc hl                                        ; $7be9: $23
    inc hl                                        ; $7bea: $23
    inc hl                                        ; $7beb: $23
    inc hl                                        ; $7bec: $23

jr_078_7bed:
    inc hl                                        ; $7bed: $23
    inc hl                                        ; $7bee: $23
    inc hl                                        ; $7bef: $23
    inc hl                                        ; $7bf0: $23
    inc hl                                        ; $7bf1: $23
    inc hl                                        ; $7bf2: $23
    inc hl                                        ; $7bf3: $23
    inc hl                                        ; $7bf4: $23
    inc hl                                        ; $7bf5: $23
    rst $28                                       ; $7bf6: $ef
    db $ed                                        ; $7bf7: $ed
    and $f5                                       ; $7bf8: $e6 $f5
    ldh a, [$1f]                                  ; $7bfa: $f0 $1f
    db $f4                                        ; $7bfc: $f4
    or $d6                                        ; $7bfd: $f6 $d6
    jr nz, jr_078_7bdc                            ; $7bff: $20 $db

    dec b                                         ; $7c01: $05
    inc l                                         ; $7c02: $2c
    db $ed                                        ; $7c03: $ed
    call c, Call_000_2309                         ; $7c04: $dc $09 $23
    inc bc                                        ; $7c07: $03
    dec b                                         ; $7c08: $05
    dec b                                         ; $7c09: $05
    inc hl                                        ; $7c0a: $23
    inc bc                                        ; $7c0b: $03
    dec b                                         ; $7c0c: $05
    dec b                                         ; $7c0d: $05
    inc hl                                        ; $7c0e: $23
    inc bc                                        ; $7c0f: $03
    inc l                                         ; $7c10: $2c
    inc h                                         ; $7c11: $24
    inc hl                                        ; $7c12: $23
    inc bc                                        ; $7c13: $03
    inc l                                         ; $7c14: $2c
    db $20                                        ; $7c15: $20

    db $d6, $d6, $d6, $d6, $f3, $f2, $f2, $f2, $d6, $d6, $d6, $d6, $d5, $c1, $c2, $c1
    db $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $24, $2c, $2c, $2c
    db $d6, $d6, $d6, $d6, $f2, $f2, $f2, $f2, $d6, $d6, $d6, $d6, $c2, $c1, $c2, $c1
    db $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $2c, $2c, $2c, $2c

    sub $d6                                       ; $7c56: $d6 $d6
    sub $d6                                       ; $7c58: $d6 $d6
    inc l                                         ; $7c5a: $2c
    ld a, [c]                                     ; $7c5b: $f2
    ld a, [c]                                     ; $7c5c: $f2
    ld a, [c]                                     ; $7c5d: $f2
    sub $d6                                       ; $7c5e: $d6 $d6
    sub $d6                                       ; $7c60: $d6 $d6
    jp nz, $c2c1                                  ; $7c62: $c2 $c1 $c2

    pop bc                                        ; $7c65: $c1
    inc hl                                        ; $7c66: $23
    inc hl                                        ; $7c67: $23
    inc hl                                        ; $7c68: $23
    inc hl                                        ; $7c69: $23
    inc hl                                        ; $7c6a: $23
    inc hl                                        ; $7c6b: $23
    inc hl                                        ; $7c6c: $23
    inc hl                                        ; $7c6d: $23
    inc hl                                        ; $7c6e: $23
    inc hl                                        ; $7c6f: $23
    inc hl                                        ; $7c70: $23
    inc hl                                        ; $7c71: $23
    inc l                                         ; $7c72: $2c
    inc l                                         ; $7c73: $2c
    inc l                                         ; $7c74: $2c
    inc l                                         ; $7c75: $2c
    sub $1f                                       ; $7c76: $d6 $1f
    db $dd                                        ; $7c78: $dd
    inc c                                         ; $7c79: $0c
    inc l                                         ; $7c7a: $2c
    jr nz, @-$22                                  ; $7c7b: $20 $dc

    rrca                                          ; $7c7d: $0f
    sub $e7                                       ; $7c7e: $d6 $e7
    ld [c], a                                     ; $7c80: $e2
    sbc c                                         ; $7c81: $99
    ret nz                                        ; $7c82: $c0

    rst $20                                       ; $7c83: $e7
    ld bc, $23f9                                  ; $7c84: $01 $f9 $23
    inc bc                                        ; $7c87: $03
    inc l                                         ; $7c88: $2c
    jr nz, @+$25                                  ; $7c89: $20 $23

    inc bc                                        ; $7c8b: $03
    inc l                                         ; $7c8c: $2c
    jr nz, @+$25                                  ; $7c8d: $20 $23

    ld bc, $2c2c                                  ; $7c8f: $01 $2c $2c
    inc l                                         ; $7c92: $2c
    ld bc, $2404                                  ; $7c93: $01 $04 $24

    db $d7, $d1, $d4, $d3, $d7, $d4, $d3, $d2, $d7, $d3, $d2, $d1, $e5, $e5, $e5, $e5
    db $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $22, $22, $22, $22
    db $d1, $d1, $d4, $d3, $d3, $d2, $d3, $d2, $d2, $d1, $d2, $d1, $e5, $e5, $e5, $e5
    db $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $22, $22, $22, $22

    call nc, $d4d1                                ; $7cd6: $d4 $d1 $d4
    db $d3                                        ; $7cd9: $d3
    db $d3                                        ; $7cda: $d3
    jp nc, $d2d3                                  ; $7cdb: $d2 $d3 $d2

    jp nc, $d4d1                                  ; $7cde: $d2 $d1 $d4

    db $d3                                        ; $7ce1: $d3
    db $e4                                        ; $7ce2: $e4
    pop de                                        ; $7ce3: $d1
    db $d3                                        ; $7ce4: $d3
    jp nc, $2424                                  ; $7ce5: $d2 $24 $24

    inc h                                         ; $7ce8: $24
    inc h                                         ; $7ce9: $24
    inc h                                         ; $7cea: $24
    inc h                                         ; $7ceb: $24
    inc h                                         ; $7cec: $24
    inc h                                         ; $7ced: $24
    inc h                                         ; $7cee: $24
    inc h                                         ; $7cef: $24
    inc h                                         ; $7cf0: $24
    inc h                                         ; $7cf1: $24
    ld [hl+], a                                   ; $7cf2: $22
    inc h                                         ; $7cf3: $24

Jump_078_7cf4:
    inc h                                         ; $7cf4: $24
    inc h                                         ; $7cf5: $24
    jp $01e7                                      ; $7cf6: $c3 $e7 $01


    ld sp, hl                                     ; $7cf9: $f9
    jp $03e7                                      ; $7cfa: $c3 $e7 $03


    ld sp, $e7c3                                  ; $7cfd: $31 $c3 $e7
    inc bc                                        ; $7d00: $03
    ld sp, $e7c3                                  ; $7d01: $31 $c3 $e7
    ld bc, $2cf9                                  ; $7d04: $01 $f9 $2c
    ld bc, $2404                                  ; $7d07: $01 $04 $24
    inc l                                         ; $7d0a: $2c
    ld bc, $2404                                  ; $7d0b: $01 $04 $24
    inc l                                         ; $7d0e: $2c
    ld bc, $2404                                  ; $7d0f: $01 $04 $24
    inc l                                         ; $7d12: $2c
    ld bc, $2404                                  ; $7d13: $01 $04 $24
    and $d1                                       ; $7d16: $e6 $d1
    jp nc, $e6d1                                  ; $7d18: $d2 $d1 $e6

    rst $20                                       ; $7d1b: $e7
    rst $20                                       ; $7d1c: $e7
    rst $20                                       ; $7d1d: $e7
    and $e7                                       ; $7d1e: $e6 $e7
    rst $20                                       ; $7d20: $e7
    rst $20                                       ; $7d21: $e7
    and $e7                                       ; $7d22: $e6 $e7
    rst $20                                       ; $7d24: $e7
    rst $20                                       ; $7d25: $e7
    ld [hl+], a                                   ; $7d26: $22
    inc h                                         ; $7d27: $24
    inc h                                         ; $7d28: $24
    inc h                                         ; $7d29: $24
    ld [hl+], a                                   ; $7d2a: $22
    ld bc, $0101                                  ; $7d2b: $01 $01 $01
    ld [hl+], a                                   ; $7d2e: $22
    ld bc, $0101                                  ; $7d2f: $01 $01 $01
    ld [hl+], a                                   ; $7d32: $22
    ld bc, $0101                                  ; $7d33: $01 $01 $01
    jp $03e7                                      ; $7d36: $c3 $e7 $03


    ld sp, $e7e7                                  ; $7d39: $31 $e7 $e7
    ld bc, $e7f9                                  ; $7d3c: $01 $f9 $e7
    rst $20                                       ; $7d3f: $e7
    inc bc                                        ; $7d40: $03
    ld sp, $e7e7                                  ; $7d41: $31 $e7 $e7
    rst $20                                       ; $7d44: $e7
    rst $20                                       ; $7d45: $e7
    inc l                                         ; $7d46: $2c
    ld bc, $2404                                  ; $7d47: $01 $04 $24
    ld bc, $0401                                  ; $7d4a: $01 $01 $04
    inc h                                         ; $7d4d: $24
    ld bc, $0401                                  ; $7d4e: $01 $01 $04
    inc h                                         ; $7d51: $24
    ld bc, $0101                                  ; $7d52: $01 $01 $01
    ld bc, $0005                                  ; $7d55: $01 $05 $00
    dec b                                         ; $7d58: $05
    nop                                           ; $7d59: $00
    jr nz, jr_078_7d5e                            ; $7d5a: $20 $02

    pop de                                        ; $7d5c: $d1
    pop de                                        ; $7d5d: $d1

jr_078_7d5e:
    pop de                                        ; $7d5e: $d1
    pop de                                        ; $7d5f: $d1
    pop de                                        ; $7d60: $d1
    pop de                                        ; $7d61: $d1
    pop de                                        ; $7d62: $d1
    pop de                                        ; $7d63: $d1
    pop de                                        ; $7d64: $d1
    pop de                                        ; $7d65: $d1
    pop de                                        ; $7d66: $d1
    pop de                                        ; $7d67: $d1
    pop de                                        ; $7d68: $d1
    pop de                                        ; $7d69: $d1
    pop de                                        ; $7d6a: $d1
    pop de                                        ; $7d6b: $d1
    ld [bc], a                                    ; $7d6c: $02
    ld [bc], a                                    ; $7d6d: $02
    ld [bc], a                                    ; $7d6e: $02
    ld [bc], a                                    ; $7d6f: $02
    ld [bc], a                                    ; $7d70: $02
    ld [bc], a                                    ; $7d71: $02
    ld [bc], a                                    ; $7d72: $02
    ld [bc], a                                    ; $7d73: $02
    ld [bc], a                                    ; $7d74: $02
    ld [bc], a                                    ; $7d75: $02
    ld [bc], a                                    ; $7d76: $02
    ld [bc], a                                    ; $7d77: $02
    ld [bc], a                                    ; $7d78: $02
    ld [bc], a                                    ; $7d79: $02
    ld [bc], a                                    ; $7d7a: $02
    ld [bc], a                                    ; $7d7b: $02
    pop de                                        ; $7d7c: $d1
    pop de                                        ; $7d7d: $d1
    pop de                                        ; $7d7e: $d1
    pop de                                        ; $7d7f: $d1
    pop de                                        ; $7d80: $d1
    pop de                                        ; $7d81: $d1
    pop de                                        ; $7d82: $d1
    pop de                                        ; $7d83: $d1
    pop de                                        ; $7d84: $d1
    jp nc, $d3d3                                  ; $7d85: $d2 $d3 $d3

    pop de                                        ; $7d88: $d1
    call nc, $d6d5                                ; $7d89: $d4 $d5 $d6
    ld [bc], a                                    ; $7d8c: $02
    ld [bc], a                                    ; $7d8d: $02
    ld [bc], a                                    ; $7d8e: $02
    ld [bc], a                                    ; $7d8f: $02
    ld [bc], a                                    ; $7d90: $02
    ld [bc], a                                    ; $7d91: $02
    ld [bc], a                                    ; $7d92: $02
    ld [bc], a                                    ; $7d93: $02
    ld [bc], a                                    ; $7d94: $02
    ld [bc], a                                    ; $7d95: $02
    ld [bc], a                                    ; $7d96: $02
    ld [bc], a                                    ; $7d97: $02
    add d                                         ; $7d98: $82
    add d                                         ; $7d99: $82
    inc bc                                        ; $7d9a: $03
    inc bc                                        ; $7d9b: $03
    pop de                                        ; $7d9c: $d1
    pop de                                        ; $7d9d: $d1
    pop de                                        ; $7d9e: $d1
    pop de                                        ; $7d9f: $d1
    pop de                                        ; $7da0: $d1
    pop de                                        ; $7da1: $d1
    pop de                                        ; $7da2: $d1
    pop de                                        ; $7da3: $d1
    db $d3                                        ; $7da4: $d3
    db $d3                                        ; $7da5: $d3
    db $d3                                        ; $7da6: $d3
    db $d3                                        ; $7da7: $d3
    rst $10                                       ; $7da8: $d7
    push de                                       ; $7da9: $d5
    sub $d7                                       ; $7daa: $d6 $d7
    ld [bc], a                                    ; $7dac: $02
    ld [bc], a                                    ; $7dad: $02
    ld [bc], a                                    ; $7dae: $02
    ld [bc], a                                    ; $7daf: $02
    ld [bc], a                                    ; $7db0: $02
    ld [bc], a                                    ; $7db1: $02
    ld [bc], a                                    ; $7db2: $02
    ld [bc], a                                    ; $7db3: $02
    ld [bc], a                                    ; $7db4: $02
    ld [bc], a                                    ; $7db5: $02
    ld [bc], a                                    ; $7db6: $02
    ld [bc], a                                    ; $7db7: $02
    inc bc                                        ; $7db8: $03
    inc bc                                        ; $7db9: $03
    inc bc                                        ; $7dba: $03
    inc bc                                        ; $7dbb: $03
    pop de                                        ; $7dbc: $d1
    pop de                                        ; $7dbd: $d1
    pop de                                        ; $7dbe: $d1
    pop de                                        ; $7dbf: $d1
    pop de                                        ; $7dc0: $d1
    pop de                                        ; $7dc1: $d1
    pop de                                        ; $7dc2: $d1
    pop de                                        ; $7dc3: $d1
    db $d3                                        ; $7dc4: $d3
    db $d3                                        ; $7dc5: $d3
    db $d3                                        ; $7dc6: $d3
    db $d3                                        ; $7dc7: $d3
    push de                                       ; $7dc8: $d5
    sub $d7                                       ; $7dc9: $d6 $d7
    push de                                       ; $7dcb: $d5
    ld [bc], a                                    ; $7dcc: $02
    ld [bc], a                                    ; $7dcd: $02
    ld [bc], a                                    ; $7dce: $02
    ld [bc], a                                    ; $7dcf: $02
    ld [bc], a                                    ; $7dd0: $02
    ld [bc], a                                    ; $7dd1: $02
    ld [bc], a                                    ; $7dd2: $02
    ld [bc], a                                    ; $7dd3: $02
    ld [bc], a                                    ; $7dd4: $02
    ld [bc], a                                    ; $7dd5: $02
    ld [bc], a                                    ; $7dd6: $02
    ld [bc], a                                    ; $7dd7: $02
    inc bc                                        ; $7dd8: $03
    inc bc                                        ; $7dd9: $03
    inc bc                                        ; $7dda: $03
    inc bc                                        ; $7ddb: $03
    pop de                                        ; $7ddc: $d1
    call nc, $d9d8                                ; $7ddd: $d4 $d8 $d9
    pop de                                        ; $7de0: $d1
    call nc, $dbda                                ; $7de1: $d4 $da $db
    pop de                                        ; $7de4: $d1
    call nc, $dddc                                ; $7de5: $d4 $dc $dd
    pop de                                        ; $7de8: $d1
    call nc, $dfde                                ; $7de9: $d4 $de $df
    add d                                         ; $7dec: $82
    add d                                         ; $7ded: $82
    dec b                                         ; $7dee: $05
    dec b                                         ; $7def: $05
    add d                                         ; $7df0: $82
    add d                                         ; $7df1: $82
    dec b                                         ; $7df2: $05
    dec b                                         ; $7df3: $05
    add d                                         ; $7df4: $82
    add d                                         ; $7df5: $82
    inc bc                                        ; $7df6: $03
    inc bc                                        ; $7df7: $03
    add d                                         ; $7df8: $82
    add d                                         ; $7df9: $82
    inc bc                                        ; $7dfa: $03
    inc bc                                        ; $7dfb: $03
    ldh [$e1], a                                  ; $7dfc: $e0 $e1
    ld [c], a                                     ; $7dfe: $e2
    db $e3                                        ; $7dff: $e3
    db $e4                                        ; $7e00: $e4
    push hl                                       ; $7e01: $e5
    and $e7                                       ; $7e02: $e6 $e7
    add sp, -$17                                  ; $7e04: $e8 $e9
    ld [$eceb], a                                 ; $7e06: $ea $eb $ec
    sbc $ed                                       ; $7e09: $de $ed
    xor $03                                       ; $7e0b: $ee $03
    inc bc                                        ; $7e0d: $03
    inc bc                                        ; $7e0e: $03
    inc bc                                        ; $7e0f: $03
    inc bc                                        ; $7e10: $03
    inc bc                                        ; $7e11: $03
    inc bc                                        ; $7e12: $03
    inc bc                                        ; $7e13: $03
    inc bc                                        ; $7e14: $03
    inc bc                                        ; $7e15: $03
    inc bc                                        ; $7e16: $03
    inc bc                                        ; $7e17: $03
    inc bc                                        ; $7e18: $03
    inc bc                                        ; $7e19: $03
    inc bc                                        ; $7e1a: $03
    inc bc                                        ; $7e1b: $03
    ret c                                         ; $7e1c: $d8

    reti                                          ; $7e1d: $d9


    rst $28                                       ; $7e1e: $ef
    ldh a, [$da]                                  ; $7e1f: $f0 $da
    db $db                                        ; $7e21: $db
    pop hl                                        ; $7e22: $e1
    pop af                                        ; $7e23: $f1
    call c, $f3f2                                 ; $7e24: $dc $f2 $f3
    jp hl                                         ; $7e27: $e9


    sbc $f4                                       ; $7e28: $de $f4
    push af                                       ; $7e2a: $f5
    sbc $05                                       ; $7e2b: $de $05
    dec b                                         ; $7e2d: $05
    inc bc                                        ; $7e2e: $03
    inc bc                                        ; $7e2f: $03
    dec b                                         ; $7e30: $05
    dec b                                         ; $7e31: $05
    ld b, e                                       ; $7e32: $43
    inc bc                                        ; $7e33: $03
    inc bc                                        ; $7e34: $03
    inc bc                                        ; $7e35: $03
    inc bc                                        ; $7e36: $03
    inc bc                                        ; $7e37: $03
    inc bc                                        ; $7e38: $03
    inc bc                                        ; $7e39: $03
    inc bc                                        ; $7e3a: $03
    inc bc                                        ; $7e3b: $03
    pop de                                        ; $7e3c: $d1
    call nc, $f7f6                                ; $7e3d: $d4 $f6 $f7
    pop de                                        ; $7e40: $d1
    call nc, $f9f8                                ; $7e41: $d4 $f8 $f9
    pop de                                        ; $7e44: $d1
    call nc, $fbfa                                ; $7e45: $d4 $fa $fb
    pop de                                        ; $7e48: $d1
    call nc, $fdfc                                ; $7e49: $d4 $fc $fd
    add d                                         ; $7e4c: $82
    add d                                         ; $7e4d: $82
    ld b, $04                                     ; $7e4e: $06 $04
    add d                                         ; $7e50: $82
    add d                                         ; $7e51: $82
    ld b, $01                                     ; $7e52: $06 $01
    add d                                         ; $7e54: $82
    add d                                         ; $7e55: $82
    ld b, $07                                     ; $7e56: $06 $07
    add d                                         ; $7e58: $82
    add d                                         ; $7e59: $82
    ld b, $00                                     ; $7e5a: $06 $00
    cp $ff                                        ; $7e5c: $fe $ff
    rst $30                                       ; $7e5e: $f7
    cp $00                                        ; $7e5f: $fe $00
    ld bc, $f9f8                                  ; $7e61: $01 $f8 $f9
    ld [bc], a                                    ; $7e64: $02
    inc bc                                        ; $7e65: $03
    inc b                                         ; $7e66: $04
    dec b                                         ; $7e67: $05
    ld b, $07                                     ; $7e68: $06 $07
    ld [$0409], sp                                ; $7e6a: $08 $09 $04
    ld b, $04                                     ; $7e6d: $06 $04
    inc b                                         ; $7e6f: $04
    ld bc, $0107                                  ; $7e70: $01 $07 $01
    ld bc, $0707                                  ; $7e73: $01 $07 $07
    rlca                                          ; $7e76: $07
    ld bc, $0100                                  ; $7e77: $01 $00 $01
    rlca                                          ; $7e7a: $07
    ld bc, $ff0a                                  ; $7e7b: $01 $0a $ff
    or $0b                                        ; $7e7e: $f6 $0b
    nop                                           ; $7e80: $00
    ld bc, $f9f8                                  ; $7e81: $01 $f8 $f9
    ld [bc], a                                    ; $7e84: $02
    inc bc                                        ; $7e85: $03
    inc b                                         ; $7e86: $04
    dec b                                         ; $7e87: $05
    inc c                                         ; $7e88: $0c
    rlca                                          ; $7e89: $07
    ld [$0609], sp                                ; $7e8a: $08 $09 $06
    ld b, $06                                     ; $7e8d: $06 $06
    ld b, $07                                     ; $7e8f: $06 $07
    ld bc, $0107                                  ; $7e91: $01 $07 $01
    ld bc, $0107                                  ; $7e94: $01 $07 $01
    ld bc, $0101                                  ; $7e97: $01 $01 $01
    rlca                                          ; $7e9a: $07
    ld bc, $d4d1                                  ; $7e9b: $01 $d1 $d4
    dec c                                         ; $7e9e: $0d
    ld c, $d1                                     ; $7e9f: $0e $d1
    call nc, Call_000_100f                        ; $7ea1: $d4 $0f $10
    pop de                                        ; $7ea4: $d1
    ld de, $d3d3                                  ; $7ea5: $11 $d3 $d3
    pop de                                        ; $7ea8: $d1
    pop de                                        ; $7ea9: $d1
    pop de                                        ; $7eaa: $d1
    pop de                                        ; $7eab: $d1
    add d                                         ; $7eac: $82
    add d                                         ; $7ead: $82
    ld b, $00                                     ; $7eae: $06 $00
    add d                                         ; $7eb0: $82
    add d                                         ; $7eb1: $82
    ld b, $07                                     ; $7eb2: $06 $07
    add d                                         ; $7eb4: $82
    and d                                         ; $7eb5: $a2
    add d                                         ; $7eb6: $82
    add d                                         ; $7eb7: $82
    add d                                         ; $7eb8: $82
    add d                                         ; $7eb9: $82
    add d                                         ; $7eba: $82
    add d                                         ; $7ebb: $82
    ld [de], a                                    ; $7ebc: $12
    inc de                                        ; $7ebd: $13
    dec c                                         ; $7ebe: $0d
    inc d                                         ; $7ebf: $14
    dec d                                         ; $7ec0: $15
    ld d, $17                                     ; $7ec1: $16 $17
    db $10                                        ; $7ec3: $10
    db $d3                                        ; $7ec4: $d3
    db $d3                                        ; $7ec5: $d3
    db $d3                                        ; $7ec6: $d3
    db $d3                                        ; $7ec7: $d3
    pop de                                        ; $7ec8: $d1
    pop de                                        ; $7ec9: $d1
    pop de                                        ; $7eca: $d1
    pop de                                        ; $7ecb: $d1
    nop                                           ; $7ecc: $00
    ld bc, $0701                                  ; $7ecd: $01 $01 $07
    ld bc, $0000                                  ; $7ed0: $01 $00 $00
    ld bc, $8282                                  ; $7ed3: $01 $82 $82
    add d                                         ; $7ed6: $82
    add d                                         ; $7ed7: $82
    add d                                         ; $7ed8: $82
    add d                                         ; $7ed9: $82
    add d                                         ; $7eda: $82
    add d                                         ; $7edb: $82
    jr jr_078_7ef1                                ; $7edc: $18 $13

    add hl, de                                    ; $7ede: $19
    ld a, [de]                                    ; $7edf: $1a
    dec d                                         ; $7ee0: $15
    dec de                                        ; $7ee1: $1b
    inc e                                         ; $7ee2: $1c
    dec e                                         ; $7ee3: $1d
    db $d3                                        ; $7ee4: $d3
    db $d3                                        ; $7ee5: $d3
    db $d3                                        ; $7ee6: $d3
    db $d3                                        ; $7ee7: $d3
    pop de                                        ; $7ee8: $d1
    pop de                                        ; $7ee9: $d1
    pop de                                        ; $7eea: $d1
    pop de                                        ; $7eeb: $d1
    rlca                                          ; $7eec: $07
    ld bc, $0000                                  ; $7eed: $01 $00 $00
    rlca                                          ; $7ef0: $07

jr_078_7ef1:
    ld bc, $0000                                  ; $7ef1: $01 $00 $00
    add d                                         ; $7ef4: $82
    add d                                         ; $7ef5: $82
    add d                                         ; $7ef6: $82
    add d                                         ; $7ef7: $82
    add d                                         ; $7ef8: $82
    add d                                         ; $7ef9: $82
    add d                                         ; $7efa: $82
    add d                                         ; $7efb: $82
    pop de                                        ; $7efc: $d1
    pop de                                        ; $7efd: $d1
    pop de                                        ; $7efe: $d1
    pop de                                        ; $7eff: $d1
    pop de                                        ; $7f00: $d1
    pop de                                        ; $7f01: $d1
    pop de                                        ; $7f02: $d1
    pop de                                        ; $7f03: $d1
    jp nc, $d1d1                                  ; $7f04: $d2 $d1 $d1

    pop de                                        ; $7f07: $d1
    ld e, $d3                                     ; $7f08: $1e $d3
    jp nc, Jump_000_02d1                          ; $7f0a: $d2 $d1 $02

    ld [bc], a                                    ; $7f0d: $02
    ld [bc], a                                    ; $7f0e: $02
    ld [bc], a                                    ; $7f0f: $02
    ld [bc], a                                    ; $7f10: $02
    ld [bc], a                                    ; $7f11: $02
    ld [bc], a                                    ; $7f12: $02
    ld [bc], a                                    ; $7f13: $02
    ld [hl+], a                                   ; $7f14: $22
    ld [bc], a                                    ; $7f15: $02
    ld [bc], a                                    ; $7f16: $02
    ld [bc], a                                    ; $7f17: $02
    ld [bc], a                                    ; $7f18: $02
    ld [bc], a                                    ; $7f19: $02
    ld [hl+], a                                   ; $7f1a: $22
    ld [bc], a                                    ; $7f1b: $02
    rra                                           ; $7f1c: $1f
    push de                                       ; $7f1d: $d5
    call nc, $20d1                                ; $7f1e: $d4 $d1 $20
    pop hl                                        ; $7f21: $e1
    ld hl, $22d1                                  ; $7f22: $21 $d1 $22
    push hl                                       ; $7f25: $e5
    ld hl, $23d1                                  ; $7f26: $21 $d1 $23
    jp hl                                         ; $7f29: $e9


    ld hl, $03d1                                  ; $7f2a: $21 $d1 $03
    inc bc                                        ; $7f2d: $03
    and d                                         ; $7f2e: $a2
    add d                                         ; $7f2f: $82
    inc bc                                        ; $7f30: $03
    inc bc                                        ; $7f31: $03
    add d                                         ; $7f32: $82
    add d                                         ; $7f33: $82
    inc bc                                        ; $7f34: $03
    inc bc                                        ; $7f35: $03
    add d                                         ; $7f36: $82
    add d                                         ; $7f37: $82
    inc bc                                        ; $7f38: $03
    inc bc                                        ; $7f39: $03
    add d                                         ; $7f3a: $82
    add d                                         ; $7f3b: $82
    inc h                                         ; $7f3c: $24
    sbc $21                                       ; $7f3d: $de $21
    pop de                                        ; $7f3f: $d1
    nop                                           ; $7f40: $00
    ld bc, $2521                                  ; $7f41: $01 $21 $25
    ld [bc], a                                    ; $7f44: $02
    inc bc                                        ; $7f45: $03
    call nc, Call_000_2625                        ; $7f46: $d4 $25 $26
    db $d3                                        ; $7f49: $d3
    ld de, $0325                                  ; $7f4a: $11 $25 $03
    inc bc                                        ; $7f4d: $03
    add d                                         ; $7f4e: $82
    add d                                         ; $7f4f: $82
    ld b, $06                                     ; $7f50: $06 $06
    add d                                         ; $7f52: $82
    add d                                         ; $7f53: $82
    ld bc, $a207                                  ; $7f54: $01 $07 $a2
    add d                                         ; $7f57: $82
    add d                                         ; $7f58: $82
    add d                                         ; $7f59: $82
    add d                                         ; $7f5a: $82
    add d                                         ; $7f5b: $82
    call nc, $d1d1                                ; $7f5c: $d4 $d1 $d1
    pop de                                        ; $7f5f: $d1
    call nc, $d1d1                                ; $7f60: $d4 $d1 $d1
    pop de                                        ; $7f63: $d1
    ld de, $d1d1                                  ; $7f64: $11 $d1 $d1
    pop de                                        ; $7f67: $d1
    pop de                                        ; $7f68: $d1
    pop de                                        ; $7f69: $d1
    pop de                                        ; $7f6a: $d1
    pop de                                        ; $7f6b: $d1
    and d                                         ; $7f6c: $a2
    add d                                         ; $7f6d: $82
    add d                                         ; $7f6e: $82
    add d                                         ; $7f6f: $82
    and d                                         ; $7f70: $a2
    add d                                         ; $7f71: $82
    ld [bc], a                                    ; $7f72: $02
    ld [bc], a                                    ; $7f73: $02
    add d                                         ; $7f74: $82
    add d                                         ; $7f75: $82
    ld [bc], a                                    ; $7f76: $02
    ld [bc], a                                    ; $7f77: $02
    add d                                         ; $7f78: $82
    add d                                         ; $7f79: $82
    ld [bc], a                                    ; $7f7a: $02
    ld [bc], a                                    ; $7f7b: $02
    ld l, h                                       ; $7f7c: $6c
    nop                                           ; $7f7d: $00
    nop                                           ; $7f7e: $00
    nop                                           ; $7f7f: $00
    nop                                           ; $7f80: $00
    ld bc, $0200                                  ; $7f81: $01 $00 $02
    nop                                           ; $7f84: $00
    inc bc                                        ; $7f85: $03
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    stop                                          ; $7f88: $10 $00
    ld de, $1200                                  ; $7f8a: $11 $00 $12
    nop                                           ; $7f8d: $00
    inc de                                        ; $7f8e: $13
    nop                                           ; $7f8f: $00
    nop                                           ; $7f90: $00
    inc b                                         ; $7f91: $04
    nop                                           ; $7f92: $00
    dec b                                         ; $7f93: $05
    nop                                           ; $7f94: $00
    ld b, $00                                     ; $7f95: $06 $00
    rlca                                          ; $7f97: $07
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    inc d                                         ; $7f9a: $14
    nop                                           ; $7f9b: $00
    dec d                                         ; $7f9c: $15
    nop                                           ; $7f9d: $00
    ld d, $00                                     ; $7f9e: $16 $00
    rla                                           ; $7fa0: $17
    nop                                           ; $7fa1: $00
    nop                                           ; $7fa2: $00
    ld [$0900], sp                                ; $7fa3: $08 $00 $09
    nop                                           ; $7fa6: $00
    ld a, [bc]                                    ; $7fa7: $0a
    nop                                           ; $7fa8: $00
    dec bc                                        ; $7fa9: $0b
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    jr jr_078_7fae                                ; $7fac: $18 $00

jr_078_7fae:
    add hl, de                                    ; $7fae: $19
    nop                                           ; $7faf: $00
    ld a, [de]                                    ; $7fb0: $1a
    nop                                           ; $7fb1: $00
    dec de                                        ; $7fb2: $1b
    nop                                           ; $7fb3: $00
    nop                                           ; $7fb4: $00
    inc c                                         ; $7fb5: $0c
    nop                                           ; $7fb6: $00
    dec c                                         ; $7fb7: $0d
    nop                                           ; $7fb8: $00
    ld c, $00                                     ; $7fb9: $0e $00
    rrca                                          ; $7fbb: $0f
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    inc e                                         ; $7fbe: $1c
    nop                                           ; $7fbf: $00
    dec e                                         ; $7fc0: $1d
    nop                                           ; $7fc1: $00
    ld e, $00                                     ; $7fc2: $1e $00
    rra                                           ; $7fc4: $1f
    nop                                           ; $7fc5: $00
    nop                                           ; $7fc6: $00
    jr nz, jr_078_7fc9                            ; $7fc7: $20 $00

jr_078_7fc9:
    ld hl, $2200                                  ; $7fc9: $21 $00 $22
    nop                                           ; $7fcc: $00
    inc hl                                        ; $7fcd: $23
    nop                                           ; $7fce: $00
    inc b                                         ; $7fcf: $04
    inc l                                         ; $7fd0: $2c
    nop                                           ; $7fd1: $00
    dec l                                         ; $7fd2: $2d
    nop                                           ; $7fd3: $00
    ld l, $40                                     ; $7fd4: $2e $40
    nop                                           ; $7fd6: $00
    inc h                                         ; $7fd7: $24
    nop                                           ; $7fd8: $00
    nop                                           ; $7fd9: $00
    dec h                                         ; $7fda: $25
    nop                                           ; $7fdb: $00
    ld h, $00                                     ; $7fdc: $26 $00
    daa                                           ; $7fde: $27
    nop                                           ; $7fdf: $00
    cpl                                           ; $7fe0: $2f
    nop                                           ; $7fe1: $00
    db $10                                        ; $7fe2: $10
    jr nc, jr_078_7fe5                            ; $7fe3: $30 $00

jr_078_7fe5:
    ld sp, $0050                                  ; $7fe5: $31 $50 $00
    jr z, jr_078_7fea                             ; $7fe8: $28 $00

jr_078_7fea:
    add hl, hl                                    ; $7fea: $29
    nop                                           ; $7feb: $00
    nop                                           ; $7fec: $00
    ld a, [hl+]                                   ; $7fed: $2a
    nop                                           ; $7fee: $00
    dec hl                                        ; $7fef: $2b
    nop                                           ; $7ff0: $00
    ld [hl-], a                                   ; $7ff1: $32
    nop                                           ; $7ff2: $00
    inc sp                                        ; $7ff3: $33
    nop                                           ; $7ff4: $00
    nop                                           ; $7ff5: $00
    inc [hl]                                      ; $7ff6: $34
    nop                                           ; $7ff7: $00
    dec [hl]                                      ; $7ff8: $35
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
