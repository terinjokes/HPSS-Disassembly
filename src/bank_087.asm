; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $087", ROMX[$4000], BANK[$87]

    add a                                         ; $4000: $87
    ld d, $00                                     ; $4001: $16 $00
    add hl, de                                    ; $4003: $19
    nop                                           ; $4004: $00
    add b                                         ; $4005: $80
    inc l                                         ; $4006: $2c
    pop de                                        ; $4007: $d1
    pop de                                        ; $4008: $d1
    pop de                                        ; $4009: $d1
    pop de                                        ; $400a: $d1
    pop de                                        ; $400b: $d1
    pop de                                        ; $400c: $d1
    pop de                                        ; $400d: $d1
    pop de                                        ; $400e: $d1
    pop de                                        ; $400f: $d1
    pop de                                        ; $4010: $d1
    pop de                                        ; $4011: $d1
    pop de                                        ; $4012: $d1
    pop de                                        ; $4013: $d1
    pop de                                        ; $4014: $d1
    pop de                                        ; $4015: $d1
    pop de                                        ; $4016: $d1
    inc bc                                        ; $4017: $03
    inc bc                                        ; $4018: $03
    inc bc                                        ; $4019: $03
    inc bc                                        ; $401a: $03
    inc bc                                        ; $401b: $03
    inc bc                                        ; $401c: $03
    inc bc                                        ; $401d: $03
    inc bc                                        ; $401e: $03
    inc bc                                        ; $401f: $03
    inc bc                                        ; $4020: $03
    inc bc                                        ; $4021: $03
    inc bc                                        ; $4022: $03
    inc bc                                        ; $4023: $03
    inc bc                                        ; $4024: $03
    inc bc                                        ; $4025: $03
    inc bc                                        ; $4026: $03
    pop de                                        ; $4027: $d1
    pop de                                        ; $4028: $d1
    jp nc, $d1d3                                  ; $4029: $d2 $d3 $d1

    pop de                                        ; $402c: $d1
    call nc, $d1d5                                ; $402d: $d4 $d5 $d1
    sub $d7                                       ; $4030: $d6 $d7
    ret c                                         ; $4032: $d8

    pop de                                        ; $4033: $d1
    reti                                          ; $4034: $d9


    jp c, Jump_000_03db                           ; $4035: $da $db $03

    inc bc                                        ; $4038: $03
    inc bc                                        ; $4039: $03
    inc bc                                        ; $403a: $03
    inc bc                                        ; $403b: $03
    inc bc                                        ; $403c: $03
    inc bc                                        ; $403d: $03
    inc bc                                        ; $403e: $03
    inc bc                                        ; $403f: $03
    inc bc                                        ; $4040: $03
    inc bc                                        ; $4041: $03
    inc bc                                        ; $4042: $03
    inc bc                                        ; $4043: $03
    inc bc                                        ; $4044: $03
    inc bc                                        ; $4045: $03
    inc bc                                        ; $4046: $03
    pop de                                        ; $4047: $d1
    call c, $dedd                                 ; $4048: $dc $dd $de
    pop de                                        ; $404b: $d1
    rst $18                                       ; $404c: $df
    ldh [$e1], a                                  ; $404d: $e0 $e1
    pop de                                        ; $404f: $d1
    ld [c], a                                     ; $4050: $e2
    db $e3                                        ; $4051: $e3
    db $e4                                        ; $4052: $e4
    pop de                                        ; $4053: $d1
    push hl                                       ; $4054: $e5
    and $e7                                       ; $4055: $e6 $e7
    inc bc                                        ; $4057: $03
    inc bc                                        ; $4058: $03
    inc bc                                        ; $4059: $03
    inc bc                                        ; $405a: $03
    inc bc                                        ; $405b: $03
    inc bc                                        ; $405c: $03
    inc bc                                        ; $405d: $03
    inc bc                                        ; $405e: $03
    inc bc                                        ; $405f: $03
    inc bc                                        ; $4060: $03
    inc bc                                        ; $4061: $03
    dec b                                         ; $4062: $05
    inc bc                                        ; $4063: $03
    inc bc                                        ; $4064: $03
    inc bc                                        ; $4065: $03
    rlca                                          ; $4066: $07
    pop de                                        ; $4067: $d1
    add sp, -$17                                  ; $4068: $e8 $e9
    ld [$ebd1], a                                 ; $406a: $ea $d1 $eb
    db $ec                                        ; $406d: $ec
    db $ed                                        ; $406e: $ed
    pop de                                        ; $406f: $d1
    xor $ef                                       ; $4070: $ee $ef
    ldh a, [$d1]                                  ; $4072: $f0 $d1
    pop af                                        ; $4074: $f1
    ld a, [c]                                     ; $4075: $f2
    di                                            ; $4076: $f3
    inc bc                                        ; $4077: $03
    inc bc                                        ; $4078: $03
    inc bc                                        ; $4079: $03
    rlca                                          ; $407a: $07
    inc bc                                        ; $407b: $03
    inc bc                                        ; $407c: $03
    inc bc                                        ; $407d: $03
    rlca                                          ; $407e: $07
    inc bc                                        ; $407f: $03
    inc bc                                        ; $4080: $03
    inc bc                                        ; $4081: $03
    rlca                                          ; $4082: $07
    inc bc                                        ; $4083: $03
    inc bc                                        ; $4084: $03
    inc bc                                        ; $4085: $03
    rlca                                          ; $4086: $07
    db $f4                                        ; $4087: $f4
    push af                                       ; $4088: $f5
    or $f7                                        ; $4089: $f6 $f7
    ld hl, sp-$07                                 ; $408b: $f8 $f9
    ld a, [$fcfb]                                 ; $408d: $fa $fb $fc
    db $fd                                        ; $4090: $fd
    pop de                                        ; $4091: $d1
    cp $ff                                        ; $4092: $fe $ff
    nop                                           ; $4094: $00
    ld bc, $0202                                  ; $4095: $01 $02 $02
    inc bc                                        ; $4098: $03
    inc bc                                        ; $4099: $03
    inc bc                                        ; $409a: $03
    ld [bc], a                                    ; $409b: $02
    inc bc                                        ; $409c: $03
    inc bc                                        ; $409d: $03
    inc bc                                        ; $409e: $03
    ld [bc], a                                    ; $409f: $02
    inc bc                                        ; $40a0: $03
    inc bc                                        ; $40a1: $03
    inc bc                                        ; $40a2: $03
    ld [bc], a                                    ; $40a3: $02
    inc bc                                        ; $40a4: $03
    inc bc                                        ; $40a5: $03
    inc bc                                        ; $40a6: $03
    inc bc                                        ; $40a7: $03
    db $f4                                        ; $40a8: $f4
    inc b                                         ; $40a9: $04
    dec b                                         ; $40aa: $05
    ld b, $07                                     ; $40ab: $06 $07
    ld [$0a09], sp                                ; $40ad: $08 $09 $0a
    rlca                                          ; $40b0: $07
    dec bc                                        ; $40b1: $0b
    inc c                                         ; $40b2: $0c
    dec c                                         ; $40b3: $0d
    rlca                                          ; $40b4: $07
    ld c, $0f                                     ; $40b5: $0e $0f
    inc bc                                        ; $40b7: $03
    ld [bc], a                                    ; $40b8: $02
    ld [bc], a                                    ; $40b9: $02
    ld [bc], a                                    ; $40ba: $02
    inc bc                                        ; $40bb: $03
    ld [bc], a                                    ; $40bc: $02
    ld [bc], a                                    ; $40bd: $02
    ld [bc], a                                    ; $40be: $02
    inc bc                                        ; $40bf: $03
    ld [bc], a                                    ; $40c0: $02
    inc b                                         ; $40c1: $04
    inc b                                         ; $40c2: $04
    inc bc                                        ; $40c3: $03
    ld [bc], a                                    ; $40c4: $02
    inc b                                         ; $40c5: $04
    inc b                                         ; $40c6: $04
    inc b                                         ; $40c7: $04
    db $f4                                        ; $40c8: $f4
    or $f7                                        ; $40c9: $f6 $f7
    ld [$1007], sp                                ; $40cb: $08 $07 $10
    ei                                            ; $40ce: $fb
    ld de, $1207                                  ; $40cf: $11 $07 $12
    inc de                                        ; $40d2: $13
    inc d                                         ; $40d3: $14
    rlca                                          ; $40d4: $07
    dec d                                         ; $40d5: $15
    ld d, $22                                     ; $40d6: $16 $22
    ld [bc], a                                    ; $40d8: $02
    inc bc                                        ; $40d9: $03
    inc bc                                        ; $40da: $03
    ld [hl+], a                                   ; $40db: $22
    ld [bc], a                                    ; $40dc: $02
    inc bc                                        ; $40dd: $03
    inc bc                                        ; $40de: $03

jr_087_40df:
    inc b                                         ; $40df: $04
    ld [bc], a                                    ; $40e0: $02
    inc bc                                        ; $40e1: $03
    inc bc                                        ; $40e2: $03
    inc b                                         ; $40e3: $04
    ld [bc], a                                    ; $40e4: $02
    inc bc                                        ; $40e5: $03
    inc bc                                        ; $40e6: $03
    inc bc                                        ; $40e7: $03
    rla                                           ; $40e8: $17
    jr jr_087_40df                                ; $40e9: $18 $f4

    ld b, $19                                     ; $40eb: $06 $19
    ld a, [de]                                    ; $40ed: $1a
    rlca                                          ; $40ee: $07
    ld a, [bc]                                    ; $40ef: $0a
    dec de                                        ; $40f0: $1b
    inc e                                         ; $40f1: $1c
    rlca                                          ; $40f2: $07
    dec c                                         ; $40f3: $0d
    dec e                                         ; $40f4: $1d
    ld e, $07                                     ; $40f5: $1e $07
    inc bc                                        ; $40f7: $03
    inc bc                                        ; $40f8: $03
    inc bc                                        ; $40f9: $03
    ld [bc], a                                    ; $40fa: $02
    inc bc                                        ; $40fb: $03
    inc bc                                        ; $40fc: $03
    inc bc                                        ; $40fd: $03
    ld [bc], a                                    ; $40fe: $02
    inc bc                                        ; $40ff: $03
    inc bc                                        ; $4100: $03
    inc bc                                        ; $4101: $03
    ld [bc], a                                    ; $4102: $02
    inc bc                                        ; $4103: $03
    inc bc                                        ; $4104: $03
    inc bc                                        ; $4105: $03
    ld [bc], a                                    ; $4106: $02
    rlca                                          ; $4107: $07
    rra                                           ; $4108: $1f
    jr nz, jr_087_412c                            ; $4109: $20 $21

    ld [hl+], a                                   ; $410b: $22
    inc hl                                        ; $410c: $23
    inc h                                         ; $410d: $24
    dec h                                         ; $410e: $25
    ld h, $27                                     ; $410f: $26 $27
    jr z, jr_087_413c                             ; $4111: $28 $29

    ld a, [hl+]                                   ; $4113: $2a
    dec hl                                        ; $4114: $2b
    inc l                                         ; $4115: $2c
    dec l                                         ; $4116: $2d
    ld [bc], a                                    ; $4117: $02
    inc bc                                        ; $4118: $03
    inc bc                                        ; $4119: $03
    inc bc                                        ; $411a: $03
    ld [bc], a                                    ; $411b: $02
    inc bc                                        ; $411c: $03
    inc bc                                        ; $411d: $03
    inc bc                                        ; $411e: $03
    dec b                                         ; $411f: $05
    dec b                                         ; $4120: $05
    dec b                                         ; $4121: $05
    dec b                                         ; $4122: $05
    rlca                                          ; $4123: $07
    rlca                                          ; $4124: $07
    rlca                                          ; $4125: $07
    rlca                                          ; $4126: $07
    ld l, $07                                     ; $4127: $2e $07
    cpl                                           ; $4129: $2f
    jr nc, jr_087_415d                            ; $412a: $30 $31

jr_087_412c:
    ld [hl+], a                                   ; $412c: $22
    ld [hl-], a                                   ; $412d: $32
    inc sp                                        ; $412e: $33
    inc [hl]                                      ; $412f: $34
    db $e4                                        ; $4130: $e4
    ld h, $27                                     ; $4131: $26 $27
    dec [hl]                                      ; $4133: $35
    ld [hl], $2a                                  ; $4134: $36 $2a
    dec hl                                        ; $4136: $2b
    inc bc                                        ; $4137: $03
    ld [bc], a                                    ; $4138: $02
    inc b                                         ; $4139: $04
    inc b                                         ; $413a: $04
    inc bc                                        ; $413b: $03

jr_087_413c:
    ld [bc], a                                    ; $413c: $02
    inc b                                         ; $413d: $04
    inc b                                         ; $413e: $04
    dec b                                         ; $413f: $05
    dec b                                         ; $4140: $05
    dec b                                         ; $4141: $05
    dec b                                         ; $4142: $05
    rlca                                          ; $4143: $07
    rlca                                          ; $4144: $07
    rlca                                          ; $4145: $07
    rlca                                          ; $4146: $07
    scf                                           ; $4147: $37
    rlca                                          ; $4148: $07
    jr c, jr_087_4184                             ; $4149: $38 $39

    ld a, [hl-]                                   ; $414b: $3a
    ld [hl+], a                                   ; $414c: $22
    inc h                                         ; $414d: $24
    dec h                                         ; $414e: $25
    jr z, jr_087_417a                             ; $414f: $28 $29

    inc [hl]                                      ; $4151: $34
    db $e4                                        ; $4152: $e4
    inc l                                         ; $4153: $2c
    dec sp                                        ; $4154: $3b
    inc a                                         ; $4155: $3c
    rst $20                                       ; $4156: $e7
    inc b                                         ; $4157: $04
    ld [bc], a                                    ; $4158: $02
    inc bc                                        ; $4159: $03
    inc bc                                        ; $415a: $03
    inc b                                         ; $415b: $04
    ld [bc], a                                    ; $415c: $02

jr_087_415d:
    inc bc                                        ; $415d: $03
    inc bc                                        ; $415e: $03
    dec b                                         ; $415f: $05
    dec b                                         ; $4160: $05
    dec b                                         ; $4161: $05
    dec b                                         ; $4162: $05
    rlca                                          ; $4163: $07
    rlca                                          ; $4164: $07
    rlca                                          ; $4165: $07
    rlca                                          ; $4166: $07
    ld l, $3d                                     ; $4167: $2e $3d
    ld a, $07                                     ; $4169: $3e $07
    ld sp, $403f                                  ; $416b: $31 $3f $40
    ld [hl+], a                                   ; $416e: $22
    ld h, $27                                     ; $416f: $26 $27
    jr z, @+$2b                                   ; $4171: $28 $29

    ld a, [hl+]                                   ; $4173: $2a
    dec hl                                        ; $4174: $2b
    inc l                                         ; $4175: $2c
    dec sp                                        ; $4176: $3b
    inc bc                                        ; $4177: $03
    inc bc                                        ; $4178: $03
    inc bc                                        ; $4179: $03

jr_087_417a:
    ld [bc], a                                    ; $417a: $02
    inc bc                                        ; $417b: $03
    inc bc                                        ; $417c: $03
    inc bc                                        ; $417d: $03
    ld [bc], a                                    ; $417e: $02
    dec b                                         ; $417f: $05
    dec b                                         ; $4180: $05
    dec b                                         ; $4181: $05
    dec b                                         ; $4182: $05
    rlca                                          ; $4183: $07

jr_087_4184:
    rlca                                          ; $4184: $07
    rlca                                          ; $4185: $07
    rlca                                          ; $4186: $07
    ld b, c                                       ; $4187: $41
    ld b, d                                       ; $4188: $42
    ld b, e                                       ; $4189: $43
    ld b, h                                       ; $418a: $44
    ld b, l                                       ; $418b: $45
    ld b, [hl]                                    ; $418c: $46
    ld b, a                                       ; $418d: $47
    ld c, b                                       ; $418e: $48
    ld c, c                                       ; $418f: $49
    ld c, d                                       ; $4190: $4a
    ld c, e                                       ; $4191: $4b
    ld c, h                                       ; $4192: $4c
    ld c, l                                       ; $4193: $4d
    ld c, [hl]                                    ; $4194: $4e
    ld c, a                                       ; $4195: $4f
    ld d, b                                       ; $4196: $50
    ld bc, $0101                                  ; $4197: $01 $01 $01
    ld bc, $0102                                  ; $419a: $01 $02 $01
    ld bc, $0202                                  ; $419d: $01 $02 $02
    ld [bc], a                                    ; $41a0: $02
    ld bc, $0101                                  ; $41a1: $01 $01 $01
    ld bc, $0101                                  ; $41a4: $01 $01 $01
    ld d, c                                       ; $41a7: $51
    ld d, d                                       ; $41a8: $52
    ld b, c                                       ; $41a9: $41
    ld b, d                                       ; $41aa: $42
    ld d, e                                       ; $41ab: $53
    ld d, h                                       ; $41ac: $54
    ld b, l                                       ; $41ad: $45
    ld b, [hl]                                    ; $41ae: $46
    ld d, l                                       ; $41af: $55
    ld d, [hl]                                    ; $41b0: $56
    ld c, c                                       ; $41b1: $49
    ld c, d                                       ; $41b2: $4a
    ld d, a                                       ; $41b3: $57
    di                                            ; $41b4: $f3
    ld c, l                                       ; $41b5: $4d
    ld c, [hl]                                    ; $41b6: $4e
    ld [bc], a                                    ; $41b7: $02
    ld bc, $0101                                  ; $41b8: $01 $01 $01
    ld [bc], a                                    ; $41bb: $02
    ld [bc], a                                    ; $41bc: $02
    ld [bc], a                                    ; $41bd: $02
    ld [bc], a                                    ; $41be: $02
    ld bc, $0202                                  ; $41bf: $01 $02 $02
    ld [bc], a                                    ; $41c2: $02
    ld bc, $0201                                  ; $41c3: $01 $01 $02
    ld [bc], a                                    ; $41c6: $02
    ld b, e                                       ; $41c7: $43
    ld e, b                                       ; $41c8: $58
    ld e, c                                       ; $41c9: $59
    ld [$5a47], a                                 ; $41ca: $ea $47 $5a
    ld e, e                                       ; $41cd: $5b
    db $ed                                        ; $41ce: $ed
    ld c, e                                       ; $41cf: $4b
    ld e, h                                       ; $41d0: $5c
    ld e, l                                       ; $41d1: $5d
    ldh a, [rVBK]                                 ; $41d2: $f0 $4f
    ld d, b                                       ; $41d4: $50
    ld d, a                                       ; $41d5: $57
    di                                            ; $41d6: $f3
    ld bc, $0101                                  ; $41d7: $01 $01 $01
    ld bc, $0202                                  ; $41da: $01 $02 $02
    ld bc, $0201                                  ; $41dd: $01 $01 $02
    ld [bc], a                                    ; $41e0: $02
    ld [bc], a                                    ; $41e1: $02
    ld [bc], a                                    ; $41e2: $02
    ld [bc], a                                    ; $41e3: $02
    ld [bc], a                                    ; $41e4: $02
    ld [bc], a                                    ; $41e5: $02
    ld [bc], a                                    ; $41e6: $02
    ld b, c                                       ; $41e7: $41
    ld b, d                                       ; $41e8: $42
    ld b, e                                       ; $41e9: $43
    ld e, b                                       ; $41ea: $58
    ld b, l                                       ; $41eb: $45
    ld b, [hl]                                    ; $41ec: $46
    ld b, a                                       ; $41ed: $47
    ld e, d                                       ; $41ee: $5a
    ld c, c                                       ; $41ef: $49
    ld c, d                                       ; $41f0: $4a
    ld c, e                                       ; $41f1: $4b
    ld e, h                                       ; $41f2: $5c
    ld c, l                                       ; $41f3: $4d
    ld c, [hl]                                    ; $41f4: $4e
    ld c, a                                       ; $41f5: $4f
    ld d, b                                       ; $41f6: $50
    ld bc, $0101                                  ; $41f7: $01 $01 $01
    ld bc, $0101                                  ; $41fa: $01 $01 $01
    ld [bc], a                                    ; $41fd: $02

jr_087_41fe:
    ld [bc], a                                    ; $41fe: $02
    ld bc, $0202                                  ; $41ff: $01 $02 $02
    ld bc, $0102                                  ; $4202: $01 $02 $01
    ld bc, $5e01                                  ; $4205: $01 $01 $5e
    push af                                       ; $4208: $f5
    or $5f                                        ; $4209: $f6 $5f
    ld h, b                                       ; $420b: $60
    ld h, c                                       ; $420c: $61
    ld h, d                                       ; $420d: $62
    ld h, e                                       ; $420e: $63
    ld h, h                                       ; $420f: $64
    ld h, l                                       ; $4210: $65
    ld h, [hl]                                    ; $4211: $66
    ld h, a                                       ; $4212: $67
    ld l, b                                       ; $4213: $68
    ld l, c                                       ; $4214: $69
    ld l, d                                       ; $4215: $6a
    ld l, e                                       ; $4216: $6b
    inc bc                                        ; $4217: $03
    inc bc                                        ; $4218: $03
    inc bc                                        ; $4219: $03
    inc bc                                        ; $421a: $03
    inc bc                                        ; $421b: $03
    inc bc                                        ; $421c: $03
    inc bc                                        ; $421d: $03
    inc bc                                        ; $421e: $03
    inc bc                                        ; $421f: $03
    inc bc                                        ; $4220: $03
    inc bc                                        ; $4221: $03
    inc bc                                        ; $4222: $03
    inc bc                                        ; $4223: $03
    inc bc                                        ; $4224: $03
    inc bc                                        ; $4225: $03
    inc bc                                        ; $4226: $03
    ld l, h                                       ; $4227: $6c
    rla                                           ; $4228: $17
    jr jr_087_41fe                                ; $4229: $18 $d3

    ld l, l                                       ; $422b: $6d
    add hl, de                                    ; $422c: $19
    ld a, [de]                                    ; $422d: $1a
    push de                                       ; $422e: $d5
    ld l, [hl]                                    ; $422f: $6e
    ld l, a                                       ; $4230: $6f
    inc e                                         ; $4231: $1c
    ret c                                         ; $4232: $d8

    ld [hl], b                                    ; $4233: $70
    ld [hl], c                                    ; $4234: $71
    ld e, $db                                     ; $4235: $1e $db
    inc bc                                        ; $4237: $03
    inc bc                                        ; $4238: $03
    inc bc                                        ; $4239: $03
    inc bc                                        ; $423a: $03
    inc bc                                        ; $423b: $03
    inc bc                                        ; $423c: $03
    inc bc                                        ; $423d: $03
    inc bc                                        ; $423e: $03
    inc bc                                        ; $423f: $03
    inc bc                                        ; $4240: $03
    inc bc                                        ; $4241: $03
    inc bc                                        ; $4242: $03
    inc bc                                        ; $4243: $03
    inc bc                                        ; $4244: $03
    inc bc                                        ; $4245: $03
    inc bc                                        ; $4246: $03
    db $f4                                        ; $4247: $f4
    push af                                       ; $4248: $f5
    ld [hl], d                                    ; $4249: $72
    ld [hl], e                                    ; $424a: $73
    ld [hl], h                                    ; $424b: $74
    ld [hl], l                                    ; $424c: $75
    halt                                          ; $424d: $76
    ld [hl], a                                    ; $424e: $77
    ld a, b                                       ; $424f: $78
    ld a, c                                       ; $4250: $79
    ld a, d                                       ; $4251: $7a
    ld a, e                                       ; $4252: $7b
    rlca                                          ; $4253: $07
    ld a, h                                       ; $4254: $7c
    ld a, l                                       ; $4255: $7d
    ld a, [hl]                                    ; $4256: $7e
    ld [bc], a                                    ; $4257: $02
    inc bc                                        ; $4258: $03
    inc bc                                        ; $4259: $03
    inc bc                                        ; $425a: $03
    ld [bc], a                                    ; $425b: $02
    inc bc                                        ; $425c: $03
    inc bc                                        ; $425d: $03
    inc bc                                        ; $425e: $03

jr_087_425f:
    ld [bc], a                                    ; $425f: $02
    inc bc                                        ; $4260: $03
    inc bc                                        ; $4261: $03
    inc bc                                        ; $4262: $03
    ld [bc], a                                    ; $4263: $02
    inc bc                                        ; $4264: $03
    inc bc                                        ; $4265: $03
    inc bc                                        ; $4266: $03
    ld a, a                                       ; $4267: $7f
    rla                                           ; $4268: $17
    jr jr_087_425f                                ; $4269: $18 $f4

    add b                                         ; $426b: $80
    add hl, de                                    ; $426c: $19
    ld a, [de]                                    ; $426d: $1a
    rlca                                          ; $426e: $07
    add c                                         ; $426f: $81
    dec de                                        ; $4270: $1b
    inc e                                         ; $4271: $1c
    rlca                                          ; $4272: $07
    add d                                         ; $4273: $82
    dec e                                         ; $4274: $1d
    ld e, $07                                     ; $4275: $1e $07
    inc bc                                        ; $4277: $03
    inc bc                                        ; $4278: $03
    inc bc                                        ; $4279: $03
    ld [bc], a                                    ; $427a: $02
    dec bc                                        ; $427b: $0b
    inc bc                                        ; $427c: $03
    inc bc                                        ; $427d: $03
    ld [bc], a                                    ; $427e: $02
    dec bc                                        ; $427f: $0b
    inc bc                                        ; $4280: $03
    inc bc                                        ; $4281: $03
    ld [bc], a                                    ; $4282: $02
    dec bc                                        ; $4283: $0b
    inc bc                                        ; $4284: $03
    inc bc                                        ; $4285: $03
    ld [bc], a                                    ; $4286: $02
    add e                                         ; $4287: $83
    add h                                         ; $4288: $84
    add l                                         ; $4289: $85
    add [hl]                                      ; $428a: $86
    add a                                         ; $428b: $87
    inc hl                                        ; $428c: $23
    inc h                                         ; $428d: $24
    adc b                                         ; $428e: $88
    inc [hl]                                      ; $428f: $34
    db $e4                                        ; $4290: $e4
    ld h, $27                                     ; $4291: $26 $27
    inc a                                         ; $4293: $3c
    rst $20                                       ; $4294: $e7
    ld a, [hl+]                                   ; $4295: $2a
    adc c                                         ; $4296: $89
    dec bc                                        ; $4297: $0b
    dec bc                                        ; $4298: $0b
    dec bc                                        ; $4299: $0b
    dec bc                                        ; $429a: $0b
    dec bc                                        ; $429b: $0b
    inc bc                                        ; $429c: $03
    inc bc                                        ; $429d: $03
    dec bc                                        ; $429e: $0b
    dec b                                         ; $429f: $05
    dec b                                         ; $42a0: $05
    dec b                                         ; $42a1: $05
    dec b                                         ; $42a2: $05
    rlca                                          ; $42a3: $07
    rlca                                          ; $42a4: $07
    rlca                                          ; $42a5: $07
    rrca                                          ; $42a6: $0f
    adc d                                         ; $42a7: $8a
    adc e                                         ; $42a8: $8b
    ld a, $de                                     ; $42a9: $3e $de
    adc h                                         ; $42ab: $8c
    adc l                                         ; $42ac: $8d
    ld b, b                                       ; $42ad: $40
    pop hl                                        ; $42ae: $e1
    adc [hl]                                      ; $42af: $8e
    adc a                                         ; $42b0: $8f
    inc [hl]                                      ; $42b1: $34
    db $e4                                        ; $42b2: $e4
    sub b                                         ; $42b3: $90
    sub c                                         ; $42b4: $91
    sub d                                         ; $42b5: $92
    rst $20                                       ; $42b6: $e7
    dec bc                                        ; $42b7: $0b
    dec bc                                        ; $42b8: $0b
    inc bc                                        ; $42b9: $03
    inc bc                                        ; $42ba: $03
    dec bc                                        ; $42bb: $0b
    dec bc                                        ; $42bc: $0b
    inc bc                                        ; $42bd: $03
    inc bc                                        ; $42be: $03
    dec c                                         ; $42bf: $0d
    dec c                                         ; $42c0: $0d
    dec b                                         ; $42c1: $05
    dec b                                         ; $42c2: $05
    rrca                                          ; $42c3: $0f
    rrca                                          ; $42c4: $0f
    rrca                                          ; $42c5: $0f
    rlca                                          ; $42c6: $07
    sub e                                         ; $42c7: $93
    sub h                                         ; $42c8: $94
    sub l                                         ; $42c9: $95
    sub [hl]                                      ; $42ca: $96
    ld [hl+], a                                   ; $42cb: $22
    inc hl                                        ; $42cc: $23
    inc h                                         ; $42cd: $24
    dec h                                         ; $42ce: $25
    ld h, $27                                     ; $42cf: $26 $27
    jr z, jr_087_42fc                             ; $42d1: $28 $29

    ld a, [hl+]                                   ; $42d3: $2a
    dec hl                                        ; $42d4: $2b
    inc l                                         ; $42d5: $2c
    dec sp                                        ; $42d6: $3b
    ld a, [bc]                                    ; $42d7: $0a
    dec bc                                        ; $42d8: $0b
    dec bc                                        ; $42d9: $0b
    dec bc                                        ; $42da: $0b
    ld [bc], a                                    ; $42db: $02
    inc bc                                        ; $42dc: $03
    inc bc                                        ; $42dd: $03
    inc bc                                        ; $42de: $03
    dec b                                         ; $42df: $05
    dec b                                         ; $42e0: $05
    dec b                                         ; $42e1: $05
    dec b                                         ; $42e2: $05
    rlca                                          ; $42e3: $07
    rlca                                          ; $42e4: $07
    rlca                                          ; $42e5: $07
    rlca                                          ; $42e6: $07
    sub a                                         ; $42e7: $97
    dec a                                         ; $42e8: $3d
    ld a, $07                                     ; $42e9: $3e $07
    ld sp, $403f                                  ; $42eb: $31 $3f $40
    ld [hl+], a                                   ; $42ee: $22
    inc [hl]                                      ; $42ef: $34
    db $e4                                        ; $42f0: $e4
    ld h, $27                                     ; $42f1: $26 $27
    inc a                                         ; $42f3: $3c
    rst $20                                       ; $42f4: $e7
    ld a, [hl+]                                   ; $42f5: $2a
    dec hl                                        ; $42f6: $2b
    dec bc                                        ; $42f7: $0b
    inc bc                                        ; $42f8: $03
    inc bc                                        ; $42f9: $03
    ld [bc], a                                    ; $42fa: $02
    inc bc                                        ; $42fb: $03

jr_087_42fc:
    inc bc                                        ; $42fc: $03
    inc bc                                        ; $42fd: $03
    ld [bc], a                                    ; $42fe: $02
    dec b                                         ; $42ff: $05
    dec b                                         ; $4300: $05
    dec b                                         ; $4301: $05
    dec b                                         ; $4302: $05
    rlca                                          ; $4303: $07
    rlca                                          ; $4304: $07
    rlca                                          ; $4305: $07
    rlca                                          ; $4306: $07
    ld e, c                                       ; $4307: $59
    ld [$9841], a                                 ; $4308: $ea $41 $98
    ld e, e                                       ; $430b: $5b
    db $ed                                        ; $430c: $ed
    ld b, l                                       ; $430d: $45
    sbc c                                         ; $430e: $99
    ld e, l                                       ; $430f: $5d
    ldh a, [rOBP1]                                ; $4310: $f0 $49
    sbc d                                         ; $4312: $9a
    ld d, a                                       ; $4313: $57
    di                                            ; $4314: $f3
    ld c, l                                       ; $4315: $4d
    ld c, [hl]                                    ; $4316: $4e
    ld bc, $0201                                  ; $4317: $01 $01 $02
    ld c, $02                                     ; $431a: $0e $02
    ld bc, $0e01                                  ; $431c: $01 $01 $0e
    ld bc, $0102                                  ; $431f: $01 $02 $01
    add hl, bc                                    ; $4322: $09
    ld [bc], a                                    ; $4323: $02
    ld [bc], a                                    ; $4324: $02
    ld bc, $9b01                                  ; $4325: $01 $01 $9b
    sbc h                                         ; $4328: $9c
    sbc l                                         ; $4329: $9d
    sbc [hl]                                      ; $432a: $9e
    sbc a                                         ; $432b: $9f
    and b                                         ; $432c: $a0
    and c                                         ; $432d: $a1
    db $ed                                        ; $432e: $ed
    and d                                         ; $432f: $a2
    and e                                         ; $4330: $a3
    and h                                         ; $4331: $a4
    and l                                         ; $4332: $a5
    ld c, a                                       ; $4333: $4f
    and [hl]                                      ; $4334: $a6
    and a                                         ; $4335: $a7
    di                                            ; $4336: $f3
    ld c, $0e                                     ; $4337: $0e $0e
    ld c, $09                                     ; $4339: $0e $09
    ld c, $0e                                     ; $433b: $0e $0e
    add hl, bc                                    ; $433d: $09
    ld bc, $0e0e                                  ; $433e: $01 $0e $0e
    ld c, $09                                     ; $4341: $0e $09
    ld bc, $0a09                                  ; $4343: $01 $09 $0a
    ld [bc], a                                    ; $4346: $02
    ld e, c                                       ; $4347: $59
    ld [$4241], a                                 ; $4348: $ea $41 $42
    ld e, e                                       ; $434b: $5b
    db $ed                                        ; $434c: $ed
    ld b, l                                       ; $434d: $45
    ld b, [hl]                                    ; $434e: $46
    ld e, l                                       ; $434f: $5d
    ldh a, [rOBP1]                                ; $4350: $f0 $49
    ld c, d                                       ; $4352: $4a
    ld d, a                                       ; $4353: $57
    di                                            ; $4354: $f3
    ld c, l                                       ; $4355: $4d
    ld c, [hl]                                    ; $4356: $4e
    ld bc, $0101                                  ; $4357: $01 $01 $01
    ld bc, $0101                                  ; $435a: $01 $01 $01
    ld [bc], a                                    ; $435d: $02

jr_087_435e:
    ld bc, $0202                                  ; $435e: $01 $02 $02
    ld [bc], a                                    ; $4361: $02
    ld bc, $0102                                  ; $4362: $01 $02 $01
    ld bc, $0401                                  ; $4365: $01 $01 $04
    dec b                                         ; $4368: $05
    inc b                                         ; $4369: $04
    db $f4                                        ; $436a: $f4
    ld [$0809], sp                                ; $436b: $08 $09 $08
    rlca                                          ; $436e: $07
    dec bc                                        ; $436f: $0b
    inc c                                         ; $4370: $0c
    ld de, $0e07                                  ; $4371: $11 $07 $0e
    rrca                                          ; $4374: $0f
    inc d                                         ; $4375: $14
    rlca                                          ; $4376: $07
    ld [bc], a                                    ; $4377: $02
    ld [bc], a                                    ; $4378: $02
    ld [hl+], a                                   ; $4379: $22
    ld [bc], a                                    ; $437a: $02
    ld [bc], a                                    ; $437b: $02
    ld [bc], a                                    ; $437c: $02
    ld [hl+], a                                   ; $437d: $22
    ld [bc], a                                    ; $437e: $02
    inc b                                         ; $437f: $04
    inc b                                         ; $4380: $04
    inc b                                         ; $4381: $04
    ld [bc], a                                    ; $4382: $02
    inc b                                         ; $4383: $04
    inc b                                         ; $4384: $04
    inc b                                         ; $4385: $04
    ld [bc], a                                    ; $4386: $02
    inc bc                                        ; $4387: $03
    rla                                           ; $4388: $17
    jr jr_087_435e                                ; $4389: $18 $d3

    ld b, $19                                     ; $438b: $06 $19
    ld a, [de]                                    ; $438d: $1a
    push de                                       ; $438e: $d5
    ld a, [bc]                                    ; $438f: $0a
    dec de                                        ; $4390: $1b
    inc e                                         ; $4391: $1c
    ret c                                         ; $4392: $d8

    dec c                                         ; $4393: $0d
    dec e                                         ; $4394: $1d
    ld e, $db                                     ; $4395: $1e $db
    inc bc                                        ; $4397: $03
    inc bc                                        ; $4398: $03
    inc bc                                        ; $4399: $03
    inc bc                                        ; $439a: $03
    inc bc                                        ; $439b: $03
    inc bc                                        ; $439c: $03
    inc bc                                        ; $439d: $03
    inc bc                                        ; $439e: $03
    inc bc                                        ; $439f: $03
    inc bc                                        ; $43a0: $03
    inc bc                                        ; $43a1: $03
    inc bc                                        ; $43a2: $03
    inc bc                                        ; $43a3: $03
    inc bc                                        ; $43a4: $03
    inc bc                                        ; $43a5: $03
    inc bc                                        ; $43a6: $03
    ld e, [hl]                                    ; $43a7: $5e
    db $f4                                        ; $43a8: $f4
    or $f7                                        ; $43a9: $f6 $f7
    ld h, b                                       ; $43ab: $60
    ld hl, sp+$10                                 ; $43ac: $f8 $10
    ei                                            ; $43ae: $fb
    ld h, h                                       ; $43af: $64
    db $fc                                        ; $43b0: $fc
    ld [de], a                                    ; $43b1: $12
    xor b                                         ; $43b2: $a8
    ld l, b                                       ; $43b3: $68
    rst $38                                       ; $43b4: $ff
    dec d                                         ; $43b5: $15
    xor c                                         ; $43b6: $a9
    inc bc                                        ; $43b7: $03
    ld [bc], a                                    ; $43b8: $02
    inc bc                                        ; $43b9: $03
    inc bc                                        ; $43ba: $03
    inc bc                                        ; $43bb: $03
    ld [bc], a                                    ; $43bc: $02
    inc bc                                        ; $43bd: $03
    inc bc                                        ; $43be: $03
    inc bc                                        ; $43bf: $03
    ld [bc], a                                    ; $43c0: $02
    inc bc                                        ; $43c1: $03
    dec bc                                        ; $43c2: $0b
    inc bc                                        ; $43c3: $03
    ld [bc], a                                    ; $43c4: $02
    inc bc                                        ; $43c5: $03
    dec bc                                        ; $43c6: $0b
    push af                                       ; $43c7: $f5
    ld [hl], d                                    ; $43c8: $72
    ld [hl], e                                    ; $43c9: $73
    ld a, a                                       ; $43ca: $7f
    ld [hl], l                                    ; $43cb: $75
    halt                                          ; $43cc: $76
    ld [hl], a                                    ; $43cd: $77
    add b                                         ; $43ce: $80
    ld a, c                                       ; $43cf: $79
    ld a, d                                       ; $43d0: $7a
    ld a, e                                       ; $43d1: $7b
    add c                                         ; $43d2: $81
    ld a, h                                       ; $43d3: $7c
    ld a, l                                       ; $43d4: $7d
    ld a, [hl]                                    ; $43d5: $7e
    add d                                         ; $43d6: $82
    inc bc                                        ; $43d7: $03
    inc bc                                        ; $43d8: $03
    inc bc                                        ; $43d9: $03
    inc bc                                        ; $43da: $03
    inc bc                                        ; $43db: $03
    inc bc                                        ; $43dc: $03
    inc bc                                        ; $43dd: $03
    dec bc                                        ; $43de: $0b
    inc bc                                        ; $43df: $03
    inc bc                                        ; $43e0: $03
    inc bc                                        ; $43e1: $03
    dec bc                                        ; $43e2: $0b
    inc bc                                        ; $43e3: $03
    inc bc                                        ; $43e4: $03
    inc bc                                        ; $43e5: $03
    dec bc                                        ; $43e6: $0b
    cpl                                           ; $43e7: $2f
    jr nc, jr_087_4421                            ; $43e8: $30 $37

    rlca                                          ; $43ea: $07
    ld [hl-], a                                   ; $43eb: $32
    inc sp                                        ; $43ec: $33
    ld a, [hl-]                                   ; $43ed: $3a
    ld [hl+], a                                   ; $43ee: $22
    jr z, jr_087_441a                             ; $43ef: $28 $29

    inc [hl]                                      ; $43f1: $34
    db $e4                                        ; $43f2: $e4
    inc l                                         ; $43f3: $2c
    dec sp                                        ; $43f4: $3b
    inc a                                         ; $43f5: $3c
    rst $20                                       ; $43f6: $e7
    inc b                                         ; $43f7: $04
    inc b                                         ; $43f8: $04
    inc b                                         ; $43f9: $04
    ld [bc], a                                    ; $43fa: $02
    inc b                                         ; $43fb: $04
    inc b                                         ; $43fc: $04
    inc b                                         ; $43fd: $04
    ld [bc], a                                    ; $43fe: $02
    dec b                                         ; $43ff: $05
    dec b                                         ; $4400: $05
    dec b                                         ; $4401: $05
    dec b                                         ; $4402: $05
    rlca                                          ; $4403: $07
    rlca                                          ; $4404: $07
    rlca                                          ; $4405: $07
    rlca                                          ; $4406: $07
    ld l, $3d                                     ; $4407: $2e $3d
    ld a, $de                                     ; $4409: $3e $de
    ld sp, $403f                                  ; $440b: $31 $3f $40
    pop hl                                        ; $440e: $e1
    ld h, $27                                     ; $440f: $26 $27
    jr z, jr_087_443c                             ; $4411: $28 $29

    ld a, [hl+]                                   ; $4413: $2a
    dec hl                                        ; $4414: $2b
    inc l                                         ; $4415: $2c
    dec sp                                        ; $4416: $3b
    inc bc                                        ; $4417: $03
    inc bc                                        ; $4418: $03
    inc bc                                        ; $4419: $03

jr_087_441a:
    inc bc                                        ; $441a: $03
    inc bc                                        ; $441b: $03
    inc bc                                        ; $441c: $03
    inc bc                                        ; $441d: $03
    inc bc                                        ; $441e: $03
    dec b                                         ; $441f: $05
    dec b                                         ; $4420: $05

jr_087_4421:
    dec b                                         ; $4421: $05
    dec b                                         ; $4422: $05
    rlca                                          ; $4423: $07
    rlca                                          ; $4424: $07
    rlca                                          ; $4425: $07
    rlca                                          ; $4426: $07
    add e                                         ; $4427: $83
    rlca                                          ; $4428: $07
    jr c, jr_087_4464                             ; $4429: $38 $39

    add a                                         ; $442b: $87
    ld [hl+], a                                   ; $442c: $22
    inc h                                         ; $442d: $24
    dec h                                         ; $442e: $25
    inc [hl]                                      ; $442f: $34
    db $e4                                        ; $4430: $e4
    ld h, $27                                     ; $4431: $26 $27
    inc a                                         ; $4433: $3c
    rst $20                                       ; $4434: $e7
    ld a, [hl+]                                   ; $4435: $2a
    dec hl                                        ; $4436: $2b
    dec bc                                        ; $4437: $0b
    ld [bc], a                                    ; $4438: $02
    inc bc                                        ; $4439: $03
    inc bc                                        ; $443a: $03
    dec bc                                        ; $443b: $0b

jr_087_443c:
    ld [bc], a                                    ; $443c: $02
    inc bc                                        ; $443d: $03
    inc bc                                        ; $443e: $03
    dec b                                         ; $443f: $05
    dec b                                         ; $4440: $05
    dec b                                         ; $4441: $05
    dec b                                         ; $4442: $05
    rlca                                          ; $4443: $07
    rlca                                          ; $4444: $07
    rlca                                          ; $4445: $07
    rlca                                          ; $4446: $07
    sub h                                         ; $4447: $94
    sub l                                         ; $4448: $95
    sub [hl]                                      ; $4449: $96
    sub a                                         ; $444a: $97
    inc hl                                        ; $444b: $23
    inc h                                         ; $444c: $24
    dec h                                         ; $444d: $25
    ld sp, $2928                                  ; $444e: $31 $28 $29
    inc [hl]                                      ; $4451: $34
    db $e4                                        ; $4452: $e4
    inc l                                         ; $4453: $2c
    dec sp                                        ; $4454: $3b
    inc a                                         ; $4455: $3c
    rst $20                                       ; $4456: $e7
    dec bc                                        ; $4457: $0b
    dec bc                                        ; $4458: $0b
    dec bc                                        ; $4459: $0b
    dec bc                                        ; $445a: $0b
    inc bc                                        ; $445b: $03
    inc bc                                        ; $445c: $03
    inc bc                                        ; $445d: $03
    inc bc                                        ; $445e: $03
    dec b                                         ; $445f: $05
    dec b                                         ; $4460: $05
    dec b                                         ; $4461: $05
    dec b                                         ; $4462: $05
    rlca                                          ; $4463: $07

jr_087_4464:
    rlca                                          ; $4464: $07
    rlca                                          ; $4465: $07
    rlca                                          ; $4466: $07
    ld e, c                                       ; $4467: $59
    ld [$4241], a                                 ; $4468: $ea $41 $42
    ld e, e                                       ; $446b: $5b
    db $ed                                        ; $446c: $ed
    ld b, l                                       ; $446d: $45
    ld b, [hl]                                    ; $446e: $46
    ld e, l                                       ; $446f: $5d
    ldh a, [rOBP1]                                ; $4470: $f0 $49
    ld c, d                                       ; $4472: $4a
    ld d, a                                       ; $4473: $57
    di                                            ; $4474: $f3
    ld c, l                                       ; $4475: $4d
    ld c, [hl]                                    ; $4476: $4e
    ld bc, $0101                                  ; $4477: $01 $01 $01
    ld bc, $0101                                  ; $447a: $01 $01 $01
    ld [bc], a                                    ; $447d: $02
    ld bc, $0202                                  ; $447e: $01 $02 $02
    ld bc, $0102                                  ; $4481: $01 $02 $01
    ld [bc], a                                    ; $4484: $02
    ld [bc], a                                    ; $4485: $02
    ld [bc], a                                    ; $4486: $02
    ld b, e                                       ; $4487: $43
    ld e, b                                       ; $4488: $58
    ld e, c                                       ; $4489: $59
    ld [$5a47], a                                 ; $448a: $ea $47 $5a
    ld e, e                                       ; $448d: $5b
    db $ed                                        ; $448e: $ed
    ld c, e                                       ; $448f: $4b
    ld e, h                                       ; $4490: $5c
    ld e, l                                       ; $4491: $5d
    ldh a, [rVBK]                                 ; $4492: $f0 $4f
    ld d, b                                       ; $4494: $50
    ld d, a                                       ; $4495: $57
    di                                            ; $4496: $f3
    ld bc, $0101                                  ; $4497: $01 $01 $01
    ld bc, $0101                                  ; $449a: $01 $01 $01
    ld bc, $0202                                  ; $449d: $01 $02 $02
    ld bc, $0102                                  ; $44a0: $01 $02 $01
    ld [bc], a                                    ; $44a3: $02
    ld [bc], a                                    ; $44a4: $02
    ld bc, $5e01                                  ; $44a5: $01 $01 $5e
    db $f4                                        ; $44a8: $f4
    or $f7                                        ; $44a9: $f6 $f7
    ld h, b                                       ; $44ab: $60
    ld [hl], h                                    ; $44ac: $74
    db $10                                        ; $44ad: $10
    ei                                            ; $44ae: $fb
    ld h, h                                       ; $44af: $64
    ld a, b                                       ; $44b0: $78
    ld [de], a                                    ; $44b1: $12
    xor b                                         ; $44b2: $a8
    ld l, b                                       ; $44b3: $68
    rlca                                          ; $44b4: $07
    dec d                                         ; $44b5: $15
    xor c                                         ; $44b6: $a9
    inc bc                                        ; $44b7: $03
    ld [bc], a                                    ; $44b8: $02
    inc bc                                        ; $44b9: $03
    inc bc                                        ; $44ba: $03
    inc bc                                        ; $44bb: $03
    ld [bc], a                                    ; $44bc: $02
    inc bc                                        ; $44bd: $03
    inc bc                                        ; $44be: $03

jr_087_44bf:
    inc bc                                        ; $44bf: $03
    ld [bc], a                                    ; $44c0: $02
    inc bc                                        ; $44c1: $03
    dec bc                                        ; $44c2: $0b
    inc bc                                        ; $44c3: $03
    ld [bc], a                                    ; $44c4: $02
    inc bc                                        ; $44c5: $03
    dec bc                                        ; $44c6: $0b
    inc bc                                        ; $44c7: $03
    rla                                           ; $44c8: $17
    jr jr_087_44bf                                ; $44c9: $18 $f4

    ld b, $19                                     ; $44cb: $06 $19
    ld a, [de]                                    ; $44cd: $1a
    rlca                                          ; $44ce: $07
    inc de                                        ; $44cf: $13
    dec de                                        ; $44d0: $1b
    inc e                                         ; $44d1: $1c
    rlca                                          ; $44d2: $07
    ld d, $1d                                     ; $44d3: $16 $1d
    ld e, $07                                     ; $44d5: $1e $07
    inc bc                                        ; $44d7: $03
    inc bc                                        ; $44d8: $03
    inc bc                                        ; $44d9: $03
    ld [bc], a                                    ; $44da: $02
    inc bc                                        ; $44db: $03
    inc bc                                        ; $44dc: $03
    inc bc                                        ; $44dd: $03
    ld [bc], a                                    ; $44de: $02
    inc bc                                        ; $44df: $03
    inc bc                                        ; $44e0: $03
    inc bc                                        ; $44e1: $03
    ld [bc], a                                    ; $44e2: $02
    inc bc                                        ; $44e3: $03
    inc bc                                        ; $44e4: $03
    inc bc                                        ; $44e5: $03
    ld [bc], a                                    ; $44e6: $02
    inc bc                                        ; $44e7: $03
    rla                                           ; $44e8: $17
    push af                                       ; $44e9: $f5
    or $06                                        ; $44ea: $f6 $06
    add hl, de                                    ; $44ec: $19
    ld sp, hl                                     ; $44ed: $f9
    ld a, [$1b0a]                                 ; $44ee: $fa $0a $1b
    db $fd                                        ; $44f1: $fd
    pop de                                        ; $44f2: $d1
    dec c                                         ; $44f3: $0d
    dec e                                         ; $44f4: $1d
    nop                                           ; $44f5: $00
    ld bc, $0303                                  ; $44f6: $01 $03 $03
    inc bc                                        ; $44f9: $03
    inc bc                                        ; $44fa: $03
    inc bc                                        ; $44fb: $03
    inc bc                                        ; $44fc: $03
    inc bc                                        ; $44fd: $03
    inc bc                                        ; $44fe: $03
    inc bc                                        ; $44ff: $03
    inc bc                                        ; $4500: $03
    inc bc                                        ; $4501: $03
    inc bc                                        ; $4502: $03
    inc bc                                        ; $4503: $03
    inc bc                                        ; $4504: $03
    inc bc                                        ; $4505: $03
    inc bc                                        ; $4506: $03
    add e                                         ; $4507: $83
    sub e                                         ; $4508: $93
    jr c, jr_087_4544                             ; $4509: $38 $39

    add a                                         ; $450b: $87
    ld [hl+], a                                   ; $450c: $22
    inc h                                         ; $450d: $24
    dec h                                         ; $450e: $25
    ld h, $27                                     ; $450f: $26 $27
    jr z, jr_087_453c                             ; $4511: $28 $29

    ld a, [hl+]                                   ; $4513: $2a
    dec hl                                        ; $4514: $2b
    inc l                                         ; $4515: $2c
    dec sp                                        ; $4516: $3b
    dec bc                                        ; $4517: $0b
    ld a, [bc]                                    ; $4518: $0a
    inc bc                                        ; $4519: $03
    inc bc                                        ; $451a: $03
    dec bc                                        ; $451b: $0b
    ld [bc], a                                    ; $451c: $02
    inc bc                                        ; $451d: $03
    inc bc                                        ; $451e: $03
    dec b                                         ; $451f: $05
    dec b                                         ; $4520: $05
    dec b                                         ; $4521: $05
    dec b                                         ; $4522: $05
    rlca                                          ; $4523: $07
    rlca                                          ; $4524: $07
    rlca                                          ; $4525: $07
    rlca                                          ; $4526: $07
    ld l, $3d                                     ; $4527: $2e $3d
    ld a, $07                                     ; $4529: $3e $07
    ld sp, $403f                                  ; $452b: $31 $3f $40
    ld [hl+], a                                   ; $452e: $22
    inc [hl]                                      ; $452f: $34
    db $e4                                        ; $4530: $e4
    ld h, $27                                     ; $4531: $26 $27
    inc a                                         ; $4533: $3c
    rst $20                                       ; $4534: $e7
    ld a, [hl+]                                   ; $4535: $2a
    dec hl                                        ; $4536: $2b
    inc bc                                        ; $4537: $03
    inc bc                                        ; $4538: $03
    inc bc                                        ; $4539: $03
    ld [bc], a                                    ; $453a: $02
    inc bc                                        ; $453b: $03

jr_087_453c:
    inc bc                                        ; $453c: $03
    inc bc                                        ; $453d: $03
    ld [bc], a                                    ; $453e: $02
    dec b                                         ; $453f: $05
    dec b                                         ; $4540: $05
    dec b                                         ; $4541: $05
    dec b                                         ; $4542: $05
    rlca                                          ; $4543: $07

jr_087_4544:
    rlca                                          ; $4544: $07
    rlca                                          ; $4545: $07
    rlca                                          ; $4546: $07
    ld l, $3d                                     ; $4547: $2e $3d
    rra                                           ; $4549: $1f
    jr nz, @+$33                                  ; $454a: $20 $31

    ccf                                           ; $454c: $3f
    inc hl                                        ; $454d: $23
    inc h                                         ; $454e: $24
    ld h, $27                                     ; $454f: $26 $27
    adc [hl]                                      ; $4551: $8e
    adc a                                         ; $4552: $8f
    ld a, [hl+]                                   ; $4553: $2a
    adc c                                         ; $4554: $89
    sub b                                         ; $4555: $90
    sub c                                         ; $4556: $91
    inc bc                                        ; $4557: $03
    inc bc                                        ; $4558: $03
    inc bc                                        ; $4559: $03
    inc bc                                        ; $455a: $03
    inc bc                                        ; $455b: $03
    inc bc                                        ; $455c: $03
    inc bc                                        ; $455d: $03
    inc bc                                        ; $455e: $03
    dec b                                         ; $455f: $05
    dec b                                         ; $4560: $05
    dec c                                         ; $4561: $0d
    dec c                                         ; $4562: $0d
    rlca                                          ; $4563: $07
    rrca                                          ; $4564: $0f
    rrca                                          ; $4565: $0f
    rrca                                          ; $4566: $0f
    ld b, c                                       ; $4567: $41
    ld b, d                                       ; $4568: $42
    ld b, e                                       ; $4569: $43
    ld e, b                                       ; $456a: $58
    ld b, l                                       ; $456b: $45
    ld b, [hl]                                    ; $456c: $46
    ld b, a                                       ; $456d: $47
    ld e, d                                       ; $456e: $5a
    ld c, c                                       ; $456f: $49
    ld c, d                                       ; $4570: $4a
    ld c, e                                       ; $4571: $4b
    ld e, h                                       ; $4572: $5c
    ld c, l                                       ; $4573: $4d
    ld c, [hl]                                    ; $4574: $4e
    ld c, a                                       ; $4575: $4f
    ld d, b                                       ; $4576: $50
    ld bc, $0101                                  ; $4577: $01 $01 $01
    ld [bc], a                                    ; $457a: $02
    ld [bc], a                                    ; $457b: $02
    ld bc, $0101                                  ; $457c: $01 $01 $01
    ld bc, $0201                                  ; $457f: $01 $01 $02
    ld [bc], a                                    ; $4582: $02
    ld bc, $0201                                  ; $4583: $01 $01 $02
    ld bc, $ea59                                  ; $4586: $01 $59 $ea
    ld b, c                                       ; $4589: $41
    ld b, d                                       ; $458a: $42
    ld e, e                                       ; $458b: $5b
    db $ed                                        ; $458c: $ed
    ld b, l                                       ; $458d: $45
    ld b, [hl]                                    ; $458e: $46
    ld e, l                                       ; $458f: $5d
    ldh a, [rOBP1]                                ; $4590: $f0 $49
    ld c, d                                       ; $4592: $4a
    ld d, a                                       ; $4593: $57
    di                                            ; $4594: $f3
    ld c, l                                       ; $4595: $4d
    ld c, [hl]                                    ; $4596: $4e
    ld [bc], a                                    ; $4597: $02
    ld bc, $0201                                  ; $4598: $01 $01 $02
    ld bc, $0202                                  ; $459b: $01 $02 $02
    ld [bc], a                                    ; $459e: $02
    ld [bc], a                                    ; $459f: $02
    ld bc, $0101                                  ; $45a0: $01 $01 $01
    ld bc, $0202                                  ; $45a3: $01 $02 $02
    ld [bc], a                                    ; $45a6: $02
    ld b, e                                       ; $45a7: $43
    ld e, b                                       ; $45a8: $58
    ld e, c                                       ; $45a9: $59
    ld [$5a47], a                                 ; $45aa: $ea $47 $5a
    ld e, e                                       ; $45ad: $5b
    db $ed                                        ; $45ae: $ed
    ld c, e                                       ; $45af: $4b
    ld e, h                                       ; $45b0: $5c
    ld e, l                                       ; $45b1: $5d
    ldh a, [rVBK]                                 ; $45b2: $f0 $4f
    ld d, b                                       ; $45b4: $50
    ld d, a                                       ; $45b5: $57
    di                                            ; $45b6: $f3
    ld [bc], a                                    ; $45b7: $02
    ld [bc], a                                    ; $45b8: $02
    ld bc, $0101                                  ; $45b9: $01 $01 $01
    ld bc, $0102                                  ; $45bc: $01 $02 $01
    ld bc, $0201                                  ; $45bf: $01 $01 $02
    ld [bc], a                                    ; $45c2: $02
    ld bc, $0102                                  ; $45c3: $01 $02 $01
    ld [bc], a                                    ; $45c6: $02
    ld b, c                                       ; $45c7: $41
    sbc b                                         ; $45c8: $98
    sbc e                                         ; $45c9: $9b
    sbc h                                         ; $45ca: $9c
    ld b, l                                       ; $45cb: $45
    sbc c                                         ; $45cc: $99
    sbc a                                         ; $45cd: $9f
    and b                                         ; $45ce: $a0
    ld c, c                                       ; $45cf: $49
    sbc d                                         ; $45d0: $9a
    and d                                         ; $45d1: $a2
    and e                                         ; $45d2: $a3
    ld c, l                                       ; $45d3: $4d
    ld c, [hl]                                    ; $45d4: $4e
    ld c, a                                       ; $45d5: $4f
    and [hl]                                      ; $45d6: $a6
    ld bc, $0e0e                                  ; $45d7: $01 $0e $0e
    ld c, $01                                     ; $45da: $0e $01
    ld c, $0e                                     ; $45dc: $0e $0e
    ld c, $01                                     ; $45de: $0e $01
    add hl, bc                                    ; $45e0: $09
    ld c, $0e                                     ; $45e1: $0e $0e
    ld bc, $0101                                  ; $45e3: $01 $01 $01
    add hl, bc                                    ; $45e6: $09
    rst $30                                       ; $45e7: $f7
    db $f4                                        ; $45e8: $f4
    or $f7                                        ; $45e9: $f6 $f7
    ei                                            ; $45eb: $fb
    rlca                                          ; $45ec: $07
    db $10                                        ; $45ed: $10
    ei                                            ; $45ee: $fb
    cp $07                                        ; $45ef: $fe $07
    ld [de], a                                    ; $45f1: $12
    xor b                                         ; $45f2: $a8
    ld [bc], a                                    ; $45f3: $02
    rlca                                          ; $45f4: $07
    dec d                                         ; $45f5: $15
    xor c                                         ; $45f6: $a9
    inc bc                                        ; $45f7: $03
    ld [bc], a                                    ; $45f8: $02
    inc bc                                        ; $45f9: $03
    inc bc                                        ; $45fa: $03
    inc bc                                        ; $45fb: $03
    ld [bc], a                                    ; $45fc: $02
    inc bc                                        ; $45fd: $03
    inc bc                                        ; $45fe: $03
    inc bc                                        ; $45ff: $03
    ld [bc], a                                    ; $4600: $02
    inc bc                                        ; $4601: $03
    dec bc                                        ; $4602: $0b
    inc bc                                        ; $4603: $03
    ld [bc], a                                    ; $4604: $02
    inc bc                                        ; $4605: $03
    dec bc                                        ; $4606: $0b
    xor d                                         ; $4607: $aa
    pop de                                        ; $4608: $d1
    pop de                                        ; $4609: $d1
    pop de                                        ; $460a: $d1
    xor e                                         ; $460b: $ab
    xor h                                         ; $460c: $ac
    pop de                                        ; $460d: $d1
    pop de                                        ; $460e: $d1
    xor l                                         ; $460f: $ad
    xor [hl]                                      ; $4610: $ae
    pop de                                        ; $4611: $d1
    pop de                                        ; $4612: $d1
    xor a                                         ; $4613: $af
    or b                                          ; $4614: $b0
    pop de                                        ; $4615: $d1
    pop de                                        ; $4616: $d1
    dec bc                                        ; $4617: $0b
    inc bc                                        ; $4618: $03
    inc bc                                        ; $4619: $03
    inc bc                                        ; $461a: $03
    dec bc                                        ; $461b: $0b
    dec bc                                        ; $461c: $0b
    inc bc                                        ; $461d: $03
    inc bc                                        ; $461e: $03
    dec bc                                        ; $461f: $0b
    dec bc                                        ; $4620: $0b
    inc bc                                        ; $4621: $03
    inc bc                                        ; $4622: $03
    adc e                                         ; $4623: $8b
    adc e                                         ; $4624: $8b
    inc bc                                        ; $4625: $03
    inc bc                                        ; $4626: $03
    ld hl, $3807                                  ; $4627: $21 $07 $38
    add hl, sp                                    ; $462a: $39
    dec h                                         ; $462b: $25
    ld [hl+], a                                   ; $462c: $22
    inc h                                         ; $462d: $24
    dec h                                         ; $462e: $25
    inc [hl]                                      ; $462f: $34
    db $e4                                        ; $4630: $e4
    ld h, $27                                     ; $4631: $26 $27
    sub d                                         ; $4633: $92
    rst $20                                       ; $4634: $e7
    ld a, [hl+]                                   ; $4635: $2a
    dec hl                                        ; $4636: $2b
    inc bc                                        ; $4637: $03
    ld [bc], a                                    ; $4638: $02
    inc bc                                        ; $4639: $03
    inc bc                                        ; $463a: $03
    inc bc                                        ; $463b: $03
    ld [bc], a                                    ; $463c: $02
    inc bc                                        ; $463d: $03
    inc bc                                        ; $463e: $03
    dec b                                         ; $463f: $05
    dec b                                         ; $4640: $05
    dec b                                         ; $4641: $05
    dec b                                         ; $4642: $05
    rrca                                          ; $4643: $0f
    rlca                                          ; $4644: $07
    rlca                                          ; $4645: $07
    rlca                                          ; $4646: $07
    or c                                          ; $4647: $b1
    or d                                          ; $4648: $b2
    pop de                                        ; $4649: $d1
    pop de                                        ; $464a: $d1
    or e                                          ; $464b: $b3
    or h                                          ; $464c: $b4
    pop de                                        ; $464d: $d1
    pop de                                        ; $464e: $d1
    db $e3                                        ; $464f: $e3
    ld [c], a                                     ; $4650: $e2
    pop de                                        ; $4651: $d1
    pop de                                        ; $4652: $d1
    and $e5                                       ; $4653: $e6 $e5
    pop de                                        ; $4655: $d1
    pop de                                        ; $4656: $d1
    adc e                                         ; $4657: $8b
    adc e                                         ; $4658: $8b
    inc bc                                        ; $4659: $03
    inc bc                                        ; $465a: $03
    adc e                                         ; $465b: $8b
    adc e                                         ; $465c: $8b
    inc bc                                        ; $465d: $03
    inc bc                                        ; $465e: $03
    and e                                         ; $465f: $a3
    and e                                         ; $4660: $a3
    inc bc                                        ; $4661: $03
    inc bc                                        ; $4662: $03
    and e                                         ; $4663: $a3
    and e                                         ; $4664: $a3
    inc bc                                        ; $4665: $03
    inc bc                                        ; $4666: $03
    sbc l                                         ; $4667: $9d
    sbc [hl]                                      ; $4668: $9e
    ld b, c                                       ; $4669: $41
    ld b, d                                       ; $466a: $42
    and c                                         ; $466b: $a1
    db $ed                                        ; $466c: $ed
    ld b, l                                       ; $466d: $45
    ld b, [hl]                                    ; $466e: $46
    and h                                         ; $466f: $a4
    and l                                         ; $4670: $a5
    ld c, c                                       ; $4671: $49
    ld c, d                                       ; $4672: $4a
    and a                                         ; $4673: $a7
    di                                            ; $4674: $f3
    ld c, l                                       ; $4675: $4d
    ld c, [hl]                                    ; $4676: $4e
    ld c, $09                                     ; $4677: $0e $09
    ld bc, $0907                                  ; $4679: $01 $07 $09
    ld bc, $0701                                  ; $467c: $01 $01 $07
    ld c, $09                                     ; $467f: $0e $09
    ld bc, $0907                                  ; $4681: $01 $07 $09
    ld bc, $0701                                  ; $4684: $01 $01 $07
    jp hl                                         ; $4687: $e9


    add sp, -$2f                                  ; $4688: $e8 $d1
    pop de                                        ; $468a: $d1
    db $ec                                        ; $468b: $ec
    db $eb                                        ; $468c: $eb
    pop de                                        ; $468d: $d1
    pop de                                        ; $468e: $d1
    rst $28                                       ; $468f: $ef
    xor $d1                                       ; $4690: $ee $d1
    pop de                                        ; $4692: $d1
    ld a, [c]                                     ; $4693: $f2
    pop af                                        ; $4694: $f1
    pop de                                        ; $4695: $d1
    pop de                                        ; $4696: $d1
    and e                                         ; $4697: $a3
    and e                                         ; $4698: $a3
    inc bc                                        ; $4699: $03
    inc bc                                        ; $469a: $03
    and e                                         ; $469b: $a3
    and e                                         ; $469c: $a3
    inc bc                                        ; $469d: $03
    inc bc                                        ; $469e: $03
    and e                                         ; $469f: $a3
    and e                                         ; $46a0: $a3
    inc bc                                        ; $46a1: $03
    inc bc                                        ; $46a2: $03
    and e                                         ; $46a3: $a3
    and e                                         ; $46a4: $a3
    inc bc                                        ; $46a5: $03
    inc bc                                        ; $46a6: $03
    pop de                                        ; $46a7: $d1
    pop af                                        ; $46a8: $f1
    ld a, [c]                                     ; $46a9: $f2
    db $e4                                        ; $46aa: $e4
    pop de                                        ; $46ab: $d1
    ld [c], a                                     ; $46ac: $e2
    db $e3                                        ; $46ad: $e3
    rst $20                                       ; $46ae: $e7
    pop de                                        ; $46af: $d1
    push hl                                       ; $46b0: $e5
    and $ea                                       ; $46b1: $e6 $ea
    pop de                                        ; $46b3: $d1
    add sp, -$17                                  ; $46b4: $e8 $e9
    db $ed                                        ; $46b6: $ed
    inc bc                                        ; $46b7: $03
    inc bc                                        ; $46b8: $03
    inc bc                                        ; $46b9: $03
    rlca                                          ; $46ba: $07
    inc bc                                        ; $46bb: $03
    inc bc                                        ; $46bc: $03
    inc bc                                        ; $46bd: $03
    rlca                                          ; $46be: $07
    inc bc                                        ; $46bf: $03
    inc bc                                        ; $46c0: $03
    inc bc                                        ; $46c1: $03
    rlca                                          ; $46c2: $07
    inc bc                                        ; $46c3: $03
    inc bc                                        ; $46c4: $03
    inc bc                                        ; $46c5: $03
    rlca                                          ; $46c6: $07
    pop de                                        ; $46c7: $d1
    pop de                                        ; $46c8: $d1
    pop de                                        ; $46c9: $d1
    pop de                                        ; $46ca: $d1
    pop de                                        ; $46cb: $d1
    pop de                                        ; $46cc: $d1
    pop de                                        ; $46cd: $d1
    pop de                                        ; $46ce: $d1
    pop de                                        ; $46cf: $d1
    pop de                                        ; $46d0: $d1
    pop de                                        ; $46d1: $d1
    pop de                                        ; $46d2: $d1
    pop de                                        ; $46d3: $d1
    pop de                                        ; $46d4: $d1
    pop de                                        ; $46d5: $d1
    jp nc, Jump_000_0303                          ; $46d6: $d2 $03 $03

    inc bc                                        ; $46d9: $03
    inc bc                                        ; $46da: $03
    inc bc                                        ; $46db: $03
    inc bc                                        ; $46dc: $03
    inc bc                                        ; $46dd: $03
    inc bc                                        ; $46de: $03
    inc bc                                        ; $46df: $03
    inc bc                                        ; $46e0: $03
    inc bc                                        ; $46e1: $03
    inc bc                                        ; $46e2: $03
    inc bc                                        ; $46e3: $03
    inc bc                                        ; $46e4: $03
    inc bc                                        ; $46e5: $03
    inc bc                                        ; $46e6: $03
    pop de                                        ; $46e7: $d1
    pop de                                        ; $46e8: $d1
    pop de                                        ; $46e9: $d1
    pop de                                        ; $46ea: $d1
    pop de                                        ; $46eb: $d1
    pop de                                        ; $46ec: $d1
    pop de                                        ; $46ed: $d1
    pop de                                        ; $46ee: $d1
    pop de                                        ; $46ef: $d1
    pop de                                        ; $46f0: $d1
    pop de                                        ; $46f1: $d1
    pop de                                        ; $46f2: $d1
    inc bc                                        ; $46f3: $03
    db $f4                                        ; $46f4: $f4
    inc b                                         ; $46f5: $04
    dec b                                         ; $46f6: $05
    inc bc                                        ; $46f7: $03
    inc bc                                        ; $46f8: $03
    inc bc                                        ; $46f9: $03
    inc bc                                        ; $46fa: $03
    inc bc                                        ; $46fb: $03
    inc bc                                        ; $46fc: $03
    inc bc                                        ; $46fd: $03
    inc bc                                        ; $46fe: $03
    inc bc                                        ; $46ff: $03
    inc bc                                        ; $4700: $03
    inc bc                                        ; $4701: $03
    inc bc                                        ; $4702: $03
    inc bc                                        ; $4703: $03
    ld [bc], a                                    ; $4704: $02
    ld [bc], a                                    ; $4705: $02
    ld [bc], a                                    ; $4706: $02
    pop de                                        ; $4707: $d1
    pop de                                        ; $4708: $d1
    pop de                                        ; $4709: $d1
    pop de                                        ; $470a: $d1
    pop de                                        ; $470b: $d1
    pop de                                        ; $470c: $d1
    pop de                                        ; $470d: $d1
    pop de                                        ; $470e: $d1
    pop de                                        ; $470f: $d1
    pop de                                        ; $4710: $d1
    pop de                                        ; $4711: $d1
    pop de                                        ; $4712: $d1
    inc b                                         ; $4713: $04
    db $f4                                        ; $4714: $f4
    or $f7                                        ; $4715: $f6 $f7
    inc bc                                        ; $4717: $03
    inc bc                                        ; $4718: $03
    inc bc                                        ; $4719: $03
    inc bc                                        ; $471a: $03
    inc bc                                        ; $471b: $03
    inc bc                                        ; $471c: $03
    inc bc                                        ; $471d: $03
    inc bc                                        ; $471e: $03
    inc bc                                        ; $471f: $03
    inc bc                                        ; $4720: $03
    inc bc                                        ; $4721: $03
    inc bc                                        ; $4722: $03
    ld [hl+], a                                   ; $4723: $22
    ld [bc], a                                    ; $4724: $02
    inc bc                                        ; $4725: $03
    inc bc                                        ; $4726: $03
    pop de                                        ; $4727: $d1
    db $eb                                        ; $4728: $eb
    db $ec                                        ; $4729: $ec
    ldh a, [$d1]                                  ; $472a: $f0 $d1
    xor $ef                                       ; $472c: $ee $ef
    di                                            ; $472e: $f3
    pop de                                        ; $472f: $d1
    pop af                                        ; $4730: $f1
    ld a, [c]                                     ; $4731: $f2
    db $e4                                        ; $4732: $e4
    inc bc                                        ; $4733: $03
    or l                                          ; $4734: $b5
    db $e3                                        ; $4735: $e3
    rst $20                                       ; $4736: $e7
    inc bc                                        ; $4737: $03
    inc bc                                        ; $4738: $03
    inc bc                                        ; $4739: $03
    rlca                                          ; $473a: $07
    inc bc                                        ; $473b: $03
    inc bc                                        ; $473c: $03
    inc bc                                        ; $473d: $03
    rlca                                          ; $473e: $07
    inc bc                                        ; $473f: $03
    inc bc                                        ; $4740: $03
    inc bc                                        ; $4741: $03
    rlca                                          ; $4742: $07
    inc bc                                        ; $4743: $03
    dec bc                                        ; $4744: $0b
    inc bc                                        ; $4745: $03
    rlca                                          ; $4746: $07
    pop de                                        ; $4747: $d1
    pop de                                        ; $4748: $d1
    pop de                                        ; $4749: $d1
    call nc, $d1d1                                ; $474a: $d4 $d1 $d1
    sub $d7                                       ; $474d: $d6 $d7
    pop de                                        ; $474f: $d1
    pop de                                        ; $4750: $d1
    reti                                          ; $4751: $d9


    jp c, $d1d1                                   ; $4752: $da $d1 $d1

    call c, Call_000_03dd                         ; $4755: $dc $dd $03
    inc bc                                        ; $4758: $03
    inc bc                                        ; $4759: $03
    inc bc                                        ; $475a: $03
    inc bc                                        ; $475b: $03
    inc bc                                        ; $475c: $03
    inc bc                                        ; $475d: $03
    inc bc                                        ; $475e: $03
    inc bc                                        ; $475f: $03
    inc bc                                        ; $4760: $03
    add e                                         ; $4761: $83
    add e                                         ; $4762: $83
    inc bc                                        ; $4763: $03
    inc bc                                        ; $4764: $03
    add e                                         ; $4765: $83
    add e                                         ; $4766: $83
    ld b, $07                                     ; $4767: $06 $07
    ld [$0a09], sp                                ; $4769: $08 $09 $0a
    rlca                                          ; $476c: $07
    dec bc                                        ; $476d: $0b
    inc c                                         ; $476e: $0c
    dec c                                         ; $476f: $0d
    rlca                                          ; $4770: $07
    ld c, $0f                                     ; $4771: $0e $0f
    ld l, $07                                     ; $4773: $2e $07
    cpl                                           ; $4775: $2f
    jr nc, jr_087_477b                            ; $4776: $30 $03

    ld [bc], a                                    ; $4778: $02
    ld [bc], a                                    ; $4779: $02
    ld [bc], a                                    ; $477a: $02

jr_087_477b:
    inc bc                                        ; $477b: $03
    ld [bc], a                                    ; $477c: $02
    inc b                                         ; $477d: $04
    inc b                                         ; $477e: $04
    inc bc                                        ; $477f: $03
    ld [bc], a                                    ; $4780: $02
    inc b                                         ; $4781: $04
    inc b                                         ; $4782: $04
    inc bc                                        ; $4783: $03
    ld [bc], a                                    ; $4784: $02
    inc b                                         ; $4785: $04
    inc b                                         ; $4786: $04
    ld [$1007], sp                                ; $4787: $08 $07 $10
    ei                                            ; $478a: $fb
    ld de, $1207                                  ; $478b: $11 $07 $12
    inc de                                        ; $478e: $13
    inc d                                         ; $478f: $14
    rlca                                          ; $4790: $07
    dec d                                         ; $4791: $15
    ld d, $37                                     ; $4792: $16 $37
    rlca                                          ; $4794: $07
    jr c, jr_087_47d0                             ; $4795: $38 $39

    ld [hl+], a                                   ; $4797: $22
    ld [bc], a                                    ; $4798: $02
    inc bc                                        ; $4799: $03
    inc bc                                        ; $479a: $03
    inc b                                         ; $479b: $04
    ld [bc], a                                    ; $479c: $02
    inc bc                                        ; $479d: $03
    inc bc                                        ; $479e: $03
    inc b                                         ; $479f: $04
    ld [bc], a                                    ; $47a0: $02
    inc bc                                        ; $47a1: $03
    inc bc                                        ; $47a2: $03
    inc b                                         ; $47a3: $04
    ld [bc], a                                    ; $47a4: $02
    inc bc                                        ; $47a5: $03
    inc bc                                        ; $47a6: $03
    ld b, $b6                                     ; $47a7: $06 $b6
    and $ea                                       ; $47a9: $e6 $ea
    ld a, [bc]                                    ; $47ab: $0a
    or a                                          ; $47ac: $b7
    jp hl                                         ; $47ad: $e9


    db $ed                                        ; $47ae: $ed
    dec c                                         ; $47af: $0d
    cp b                                          ; $47b0: $b8
    db $ec                                        ; $47b1: $ec
    ldh a, [$2e]                                  ; $47b2: $f0 $2e
    cp c                                          ; $47b4: $b9
    cp d                                          ; $47b5: $ba
    di                                            ; $47b6: $f3
    inc bc                                        ; $47b7: $03
    dec bc                                        ; $47b8: $0b
    inc bc                                        ; $47b9: $03
    rlca                                          ; $47ba: $07
    inc bc                                        ; $47bb: $03
    dec bc                                        ; $47bc: $0b
    inc bc                                        ; $47bd: $03
    rlca                                          ; $47be: $07
    inc bc                                        ; $47bf: $03
    dec bc                                        ; $47c0: $0b
    inc bc                                        ; $47c1: $03
    rlca                                          ; $47c2: $07
    inc bc                                        ; $47c3: $03
    dec bc                                        ; $47c4: $0b
    dec bc                                        ; $47c5: $0b
    rlca                                          ; $47c6: $07
    pop de                                        ; $47c7: $d1
    pop de                                        ; $47c8: $d1
    rst $18                                       ; $47c9: $df
    ldh [$d1], a                                  ; $47ca: $e0 $d1
    pop de                                        ; $47cc: $d1
    xor $ef                                       ; $47cd: $ee $ef
    pop de                                        ; $47cf: $d1

jr_087_47d0:
    pop de                                        ; $47d0: $d1
    pop af                                        ; $47d1: $f1
    ld a, [c]                                     ; $47d2: $f2
    pop de                                        ; $47d3: $d1
    pop de                                        ; $47d4: $d1
    push hl                                       ; $47d5: $e5
    and $03                                       ; $47d6: $e6 $03
    inc bc                                        ; $47d8: $03
    add e                                         ; $47d9: $83
    add e                                         ; $47da: $83
    inc bc                                        ; $47db: $03
    inc bc                                        ; $47dc: $03
    add e                                         ; $47dd: $83
    add e                                         ; $47de: $83
    inc bc                                        ; $47df: $03
    inc bc                                        ; $47e0: $03
    add e                                         ; $47e1: $83
    add e                                         ; $47e2: $83
    inc bc                                        ; $47e3: $03
    inc bc                                        ; $47e4: $03
    add e                                         ; $47e5: $83
    add e                                         ; $47e6: $83
    ld sp, $3222                                  ; $47e7: $31 $22 $32
    inc sp                                        ; $47ea: $33
    ld a, [hl+]                                   ; $47eb: $2a
    dec hl                                        ; $47ec: $2b
    inc l                                         ; $47ed: $2c
    dec sp                                        ; $47ee: $3b
    ld b, c                                       ; $47ef: $41
    ld b, d                                       ; $47f0: $42
    ld b, e                                       ; $47f1: $43
    ld e, b                                       ; $47f2: $58
    cp e                                          ; $47f3: $bb
    cp h                                          ; $47f4: $bc
    cp l                                          ; $47f5: $bd
    ld e, d                                       ; $47f6: $5a
    inc bc                                        ; $47f7: $03
    ld [bc], a                                    ; $47f8: $02
    inc b                                         ; $47f9: $04
    inc b                                         ; $47fa: $04
    dec b                                         ; $47fb: $05
    dec b                                         ; $47fc: $05
    dec b                                         ; $47fd: $05
    dec b                                         ; $47fe: $05
    rlca                                          ; $47ff: $07
    rlca                                          ; $4800: $07
    rlca                                          ; $4801: $07
    rlca                                          ; $4802: $07
    rrca                                          ; $4803: $0f
    add hl, bc                                    ; $4804: $09
    add hl, bc                                    ; $4805: $09
    ld bc, $223a                                  ; $4806: $01 $3a $22
    inc h                                         ; $4809: $24
    dec h                                         ; $480a: $25
    inc a                                         ; $480b: $3c
    rst $20                                       ; $480c: $e7
    sbc c                                         ; $480d: $99
    sbc a                                         ; $480e: $9f
    ld e, c                                       ; $480f: $59
    ld [$a29a], a                                 ; $4810: $ea $9a $a2
    ld e, e                                       ; $4813: $5b
    db $ed                                        ; $4814: $ed
    ld b, l                                       ; $4815: $45
    ld c, a                                       ; $4816: $4f
    inc b                                         ; $4817: $04
    ld [bc], a                                    ; $4818: $02
    inc bc                                        ; $4819: $03
    inc bc                                        ; $481a: $03
    dec b                                         ; $481b: $05
    dec b                                         ; $481c: $05
    dec c                                         ; $481d: $0d
    dec c                                         ; $481e: $0d
    rlca                                          ; $481f: $07
    rlca                                          ; $4820: $07
    rrca                                          ; $4821: $0f
    rrca                                          ; $4822: $0f
    ld bc, $0102                                  ; $4823: $01 $02 $01
    ld bc, $be31                                  ; $4826: $01 $31 $be
    cp a                                          ; $4829: $bf
    db $e4                                        ; $482a: $e4
    and b                                         ; $482b: $a0
    and c                                         ; $482c: $a1
    db $ed                                        ; $482d: $ed
    ld [hl], $a3                                  ; $482e: $36 $a3
    and h                                         ; $4830: $a4
    and l                                         ; $4831: $a5
    ld d, d                                       ; $4832: $52
    and [hl]                                      ; $4833: $a6
    and a                                         ; $4834: $a7
    cp l                                          ; $4835: $bd
    ld d, h                                       ; $4836: $54
    inc bc                                        ; $4837: $03
    dec bc                                        ; $4838: $0b
    dec bc                                        ; $4839: $0b
    rlca                                          ; $483a: $07
    dec c                                         ; $483b: $0d
    dec c                                         ; $483c: $0d
    rlca                                          ; $483d: $07
    ld bc, $0f0f                                  ; $483e: $01 $0f $0f
    add hl, bc                                    ; $4841: $09
    ld bc, $0a0a                                  ; $4842: $01 $0a $0a
    ld a, [bc]                                    ; $4845: $0a
    ld [bc], a                                    ; $4846: $02
    ld h, $27                                     ; $4847: $26 $27
    adc [hl]                                      ; $4849: $8e
    adc a                                         ; $484a: $8f
    ld a, [hl+]                                   ; $484b: $2a
    adc c                                         ; $484c: $89
    sub b                                         ; $484d: $90
    sub c                                         ; $484e: $91
    ld b, c                                       ; $484f: $41
    sbc b                                         ; $4850: $98
    sbc e                                         ; $4851: $9b
    sbc h                                         ; $4852: $9c
    ld b, l                                       ; $4853: $45
    sbc c                                         ; $4854: $99
    sbc a                                         ; $4855: $9f
    and b                                         ; $4856: $a0
    ld bc, $0901                                  ; $4857: $01 $01 $09
    add hl, bc                                    ; $485a: $09
    ld bc, $0e09                                  ; $485b: $01 $09 $0e
    ld c, $01                                     ; $485e: $0e $01
    ld c, $0e                                     ; $4860: $0e $0e
    ld c, $01                                     ; $4862: $0e $01
    ld c, $0e                                     ; $4864: $0e $0e
    ld c, $34                                     ; $4866: $0e $34
    ret nz                                        ; $4868: $c0

    pop bc                                        ; $4869: $c1
    jp nz, $e392                                  ; $486a: $c2 $92 $e3

    ld [c], a                                     ; $486d: $e2
    pop de                                        ; $486e: $d1
    sbc l                                         ; $486f: $9d
    and $e5                                       ; $4870: $e6 $e5
    pop de                                        ; $4872: $d1
    and c                                         ; $4873: $a1
    jp hl                                         ; $4874: $e9


    add sp, -$2f                                  ; $4875: $e8 $d1
    ld bc, $8b8b                                  ; $4877: $01 $8b $8b
    adc e                                         ; $487a: $8b
    rrca                                          ; $487b: $0f
    and e                                         ; $487c: $a3
    and e                                         ; $487d: $a3
    add e                                         ; $487e: $83
    rrca                                          ; $487f: $0f
    inc hl                                        ; $4880: $23
    inc hl                                        ; $4881: $23
    inc bc                                        ; $4882: $03
    rrca                                          ; $4883: $0f
    inc hl                                        ; $4884: $23
    inc hl                                        ; $4885: $23
    inc bc                                        ; $4886: $03
    jp $c5c4                                      ; $4887: $c3 $c4 $c5


    add $d1                                       ; $488a: $c6 $d1
    pop de                                        ; $488c: $d1
    pop de                                        ; $488d: $d1
    pop de                                        ; $488e: $d1
    pop de                                        ; $488f: $d1
    pop de                                        ; $4890: $d1
    pop de                                        ; $4891: $d1
    pop de                                        ; $4892: $d1
    pop de                                        ; $4893: $d1
    pop de                                        ; $4894: $d1
    pop de                                        ; $4895: $d1
    pop de                                        ; $4896: $d1
    adc e                                         ; $4897: $8b
    adc e                                         ; $4898: $8b
    adc e                                         ; $4899: $8b
    adc e                                         ; $489a: $8b
    add e                                         ; $489b: $83
    add e                                         ; $489c: $83
    add e                                         ; $489d: $83
    add e                                         ; $489e: $83
    inc bc                                        ; $489f: $03
    inc bc                                        ; $48a0: $03
    inc bc                                        ; $48a1: $03
    inc bc                                        ; $48a2: $03
    inc bc                                        ; $48a3: $03
    inc bc                                        ; $48a4: $03
    inc bc                                        ; $48a5: $03
    inc bc                                        ; $48a6: $03
    rst $00                                       ; $48a7: $c7
    ret z                                         ; $48a8: $c8

    ret                                           ; $48a9: $c9


    push bc                                       ; $48aa: $c5
    pop de                                        ; $48ab: $d1
    pop de                                        ; $48ac: $d1
    pop de                                        ; $48ad: $d1
    pop de                                        ; $48ae: $d1
    pop de                                        ; $48af: $d1
    pop de                                        ; $48b0: $d1
    pop de                                        ; $48b1: $d1
    pop de                                        ; $48b2: $d1
    pop de                                        ; $48b3: $d1
    pop de                                        ; $48b4: $d1
    pop de                                        ; $48b5: $d1
    pop de                                        ; $48b6: $d1
    adc e                                         ; $48b7: $8b
    adc e                                         ; $48b8: $8b
    adc e                                         ; $48b9: $8b
    adc e                                         ; $48ba: $8b
    add e                                         ; $48bb: $83
    add e                                         ; $48bc: $83
    add e                                         ; $48bd: $83
    add e                                         ; $48be: $83
    inc bc                                        ; $48bf: $03
    inc bc                                        ; $48c0: $03
    inc bc                                        ; $48c1: $03
    inc bc                                        ; $48c2: $03
    inc bc                                        ; $48c3: $03
    inc bc                                        ; $48c4: $03
    inc bc                                        ; $48c5: $03
    inc bc                                        ; $48c6: $03
    ld c, c                                       ; $48c7: $49
    sbc d                                         ; $48c8: $9a
    and d                                         ; $48c9: $a2
    and e                                         ; $48ca: $a3
    ld c, l                                       ; $48cb: $4d
    ld c, [hl]                                    ; $48cc: $4e
    ld c, a                                       ; $48cd: $4f
    and [hl]                                      ; $48ce: $a6
    ld h, $27                                     ; $48cf: $26 $27
    jr z, jr_087_48fc                             ; $48d1: $28 $29

    ld a, [hl+]                                   ; $48d3: $2a
    dec hl                                        ; $48d4: $2b
    inc l                                         ; $48d5: $2c
    dec sp                                        ; $48d6: $3b
    ld bc, $0e09                                  ; $48d7: $01 $09 $0e
    ld c, $02                                     ; $48da: $0e $02
    ld bc, $0901                                  ; $48dc: $01 $01 $09
    ld [bc], a                                    ; $48df: $02
    ld [bc], a                                    ; $48e0: $02
    ld bc, $0101                                  ; $48e1: $01 $01 $01
    ld [bc], a                                    ; $48e4: $02
    ld [bc], a                                    ; $48e5: $02
    ld [bc], a                                    ; $48e6: $02
    and h                                         ; $48e7: $a4
    db $ec                                        ; $48e8: $ec
    db $eb                                        ; $48e9: $eb
    pop de                                        ; $48ea: $d1
    and a                                         ; $48eb: $a7
    rst $28                                       ; $48ec: $ef
    xor $d1                                       ; $48ed: $ee $d1
    inc [hl]                                      ; $48ef: $34
    ld a, [c]                                     ; $48f0: $f2
    pop af                                        ; $48f1: $f1
    pop de                                        ; $48f2: $d1
    inc a                                         ; $48f3: $3c
    db $e3                                        ; $48f4: $e3
    or l                                          ; $48f5: $b5
    db $f4                                        ; $48f6: $f4
    rrca                                          ; $48f7: $0f
    inc hl                                        ; $48f8: $23
    inc hl                                        ; $48f9: $23
    inc bc                                        ; $48fa: $03
    rrca                                          ; $48fb: $0f

jr_087_48fc:
    inc hl                                        ; $48fc: $23
    inc hl                                        ; $48fd: $23
    inc bc                                        ; $48fe: $03
    rlca                                          ; $48ff: $07
    inc hl                                        ; $4900: $23
    inc hl                                        ; $4901: $23
    inc bc                                        ; $4902: $03
    rlca                                          ; $4903: $07
    inc hl                                        ; $4904: $23
    dec hl                                        ; $4905: $2b
    ld [bc], a                                    ; $4906: $02
    pop de                                        ; $4907: $d1
    pop de                                        ; $4908: $d1
    pop de                                        ; $4909: $d1
    pop de                                        ; $490a: $d1
    pop de                                        ; $490b: $d1
    pop de                                        ; $490c: $d1
    pop de                                        ; $490d: $d1
    pop de                                        ; $490e: $d1
    pop de                                        ; $490f: $d1
    pop de                                        ; $4910: $d1
    pop de                                        ; $4911: $d1
    pop de                                        ; $4912: $d1
    rst $30                                       ; $4913: $f7
    inc bc                                        ; $4914: $03
    rla                                           ; $4915: $17
    jr jr_087_491b                                ; $4916: $18 $03

    inc bc                                        ; $4918: $03
    inc bc                                        ; $4919: $03
    inc bc                                        ; $491a: $03

jr_087_491b:
    inc bc                                        ; $491b: $03
    inc bc                                        ; $491c: $03
    inc bc                                        ; $491d: $03
    inc bc                                        ; $491e: $03
    inc bc                                        ; $491f: $03
    inc bc                                        ; $4920: $03
    inc bc                                        ; $4921: $03
    inc bc                                        ; $4922: $03
    inc bc                                        ; $4923: $03
    inc bc                                        ; $4924: $03
    inc bc                                        ; $4925: $03
    inc bc                                        ; $4926: $03
    pop de                                        ; $4927: $d1
    pop de                                        ; $4928: $d1
    pop de                                        ; $4929: $d1
    pop de                                        ; $492a: $d1
    pop de                                        ; $492b: $d1
    pop de                                        ; $492c: $d1
    pop de                                        ; $492d: $d1
    pop de                                        ; $492e: $d1
    pop de                                        ; $492f: $d1
    pop de                                        ; $4930: $d1
    pop de                                        ; $4931: $d1
    pop de                                        ; $4932: $d1
    xor d                                         ; $4933: $aa
    pop de                                        ; $4934: $d1
    pop de                                        ; $4935: $d1
    pop de                                        ; $4936: $d1
    inc bc                                        ; $4937: $03
    inc bc                                        ; $4938: $03
    inc bc                                        ; $4939: $03
    inc bc                                        ; $493a: $03
    inc bc                                        ; $493b: $03
    inc bc                                        ; $493c: $03
    inc bc                                        ; $493d: $03
    inc bc                                        ; $493e: $03
    inc bc                                        ; $493f: $03
    inc bc                                        ; $4940: $03
    inc bc                                        ; $4941: $03
    inc bc                                        ; $4942: $03
    dec bc                                        ; $4943: $0b
    inc bc                                        ; $4944: $03
    inc bc                                        ; $4945: $03
    inc bc                                        ; $4946: $03
    ld b, c                                       ; $4947: $41
    ld b, d                                       ; $4948: $42
    ld b, e                                       ; $4949: $43
    ld e, b                                       ; $494a: $58
    cp e                                          ; $494b: $bb
    cp h                                          ; $494c: $bc
    cp l                                          ; $494d: $bd
    ld e, d                                       ; $494e: $5a
    jp z, $cccb                                   ; $494f: $ca $cb $cc

    ld e, h                                       ; $4952: $5c
    call $cfce                                    ; $4953: $cd $ce $cf
    ld d, b                                       ; $4956: $50
    ld bc, $0101                                  ; $4957: $01 $01 $01
    ld bc, $090a                                  ; $495a: $01 $0a $09
    ld a, [bc]                                    ; $495d: $0a
    ld bc, $0a09                                  ; $495e: $01 $09 $0a
    ld a, [bc]                                    ; $4961: $0a
    ld bc, $0909                                  ; $4962: $01 $09 $09
    ld a, [bc]                                    ; $4965: $0a
    ld bc, $e659                                  ; $4966: $01 $59 $e6
    or [hl]                                       ; $4969: $b6
    rlca                                          ; $496a: $07
    ld e, e                                       ; $496b: $5b
    jp hl                                         ; $496c: $e9


    or a                                          ; $496d: $b7
    rlca                                          ; $496e: $07
    ld e, l                                       ; $496f: $5d
    db $ec                                        ; $4970: $ec
    cp b                                          ; $4971: $b8
    rlca                                          ; $4972: $07
    ld d, a                                       ; $4973: $57
    cp d                                          ; $4974: $ba
    cp c                                          ; $4975: $b9
    rlca                                          ; $4976: $07
    rlca                                          ; $4977: $07
    inc hl                                        ; $4978: $23
    dec hl                                        ; $4979: $2b
    ld [bc], a                                    ; $497a: $02
    rlca                                          ; $497b: $07
    inc hl                                        ; $497c: $23
    dec hl                                        ; $497d: $2b
    ld [bc], a                                    ; $497e: $02
    rlca                                          ; $497f: $07
    inc hl                                        ; $4980: $23
    dec hl                                        ; $4981: $2b
    ld [bc], a                                    ; $4982: $02
    rlca                                          ; $4983: $07
    dec hl                                        ; $4984: $2b
    dec hl                                        ; $4985: $2b
    ld [bc], a                                    ; $4986: $02
    ei                                            ; $4987: $fb
    ld b, $19                                     ; $4988: $06 $19
    ld a, [de]                                    ; $498a: $1a
    xor b                                         ; $498b: $a8
    ld a, [bc]                                    ; $498c: $0a
    inc de                                        ; $498d: $13
    inc e                                         ; $498e: $1c
    xor c                                         ; $498f: $a9
    dec c                                         ; $4990: $0d
    ld d, $1e                                     ; $4991: $16 $1e
    add hl, sp                                    ; $4993: $39
    ld l, $3d                                     ; $4994: $2e $3d
    ld a, $03                                     ; $4996: $3e $03
    inc bc                                        ; $4998: $03
    inc bc                                        ; $4999: $03
    inc bc                                        ; $499a: $03
    dec bc                                        ; $499b: $0b
    inc bc                                        ; $499c: $03
    inc bc                                        ; $499d: $03
    inc bc                                        ; $499e: $03
    dec bc                                        ; $499f: $0b
    inc bc                                        ; $49a0: $03
    inc bc                                        ; $49a1: $03
    inc bc                                        ; $49a2: $03
    inc bc                                        ; $49a3: $03
    inc bc                                        ; $49a4: $03
    inc bc                                        ; $49a5: $03
    inc bc                                        ; $49a6: $03
    xor e                                         ; $49a7: $ab
    xor h                                         ; $49a8: $ac
    pop de                                        ; $49a9: $d1
    pop de                                        ; $49aa: $d1
    xor l                                         ; $49ab: $ad
    xor [hl]                                      ; $49ac: $ae
    pop de                                        ; $49ad: $d1
    pop de                                        ; $49ae: $d1
    xor a                                         ; $49af: $af
    or b                                          ; $49b0: $b0
    pop de                                        ; $49b1: $d1
    pop de                                        ; $49b2: $d1
    or c                                          ; $49b3: $b1
    or d                                          ; $49b4: $b2
    pop de                                        ; $49b5: $d1
    pop de                                        ; $49b6: $d1
    dec bc                                        ; $49b7: $0b
    dec bc                                        ; $49b8: $0b
    inc bc                                        ; $49b9: $03
    inc bc                                        ; $49ba: $03
    dec bc                                        ; $49bb: $0b
    dec bc                                        ; $49bc: $0b
    inc bc                                        ; $49bd: $03
    inc bc                                        ; $49be: $03
    adc e                                         ; $49bf: $8b
    adc e                                         ; $49c0: $8b
    inc bc                                        ; $49c1: $03
    inc bc                                        ; $49c2: $03
    adc e                                         ; $49c3: $8b
    adc e                                         ; $49c4: $8b
    inc bc                                        ; $49c5: $03
    inc bc                                        ; $49c6: $03
    ld h, $27                                     ; $49c7: $26 $27
    jr z, jr_087_49f4                             ; $49c9: $28 $29

    ld a, [hl+]                                   ; $49cb: $2a
    dec hl                                        ; $49cc: $2b
    inc l                                         ; $49cd: $2c
    dec sp                                        ; $49ce: $3b
    ld b, c                                       ; $49cf: $41
    ld b, d                                       ; $49d0: $42
    ld b, e                                       ; $49d1: $43
    ld e, b                                       ; $49d2: $58
    ld b, l                                       ; $49d3: $45
    ld b, [hl]                                    ; $49d4: $46
    ld b, a                                       ; $49d5: $47
    ld e, d                                       ; $49d6: $5a
    ld bc, $0201                                  ; $49d7: $01 $01 $02
    ld bc, $0101                                  ; $49da: $01 $01 $01
    ld bc, $0101                                  ; $49dd: $01 $01 $01
    ld bc, $0101                                  ; $49e0: $01 $01 $01
    ld [bc], a                                    ; $49e3: $02
    ld bc, $0101                                  ; $49e4: $01 $01 $01
    inc [hl]                                      ; $49e7: $34
    cp a                                          ; $49e8: $bf
    cp [hl]                                       ; $49e9: $be
    ld [hl+], a                                   ; $49ea: $22
    inc a                                         ; $49eb: $3c
    rst $20                                       ; $49ec: $e7
    ld a, [hl+]                                   ; $49ed: $2a
    dec hl                                        ; $49ee: $2b
    ld e, c                                       ; $49ef: $59
    ld [$4241], a                                 ; $49f0: $ea $41 $42
    ld e, e                                       ; $49f3: $5b

jr_087_49f4:
    db $ed                                        ; $49f4: $ed
    ld b, l                                       ; $49f5: $45
    ld b, [hl]                                    ; $49f6: $46
    rlca                                          ; $49f7: $07
    dec hl                                        ; $49f8: $2b
    dec hl                                        ; $49f9: $2b
    ld [bc], a                                    ; $49fa: $02
    ld bc, $0507                                  ; $49fb: $01 $07 $05
    dec b                                         ; $49fe: $05
    ld bc, $0701                                  ; $49ff: $01 $01 $07
    rlca                                          ; $4a02: $07
    ld bc, $0101                                  ; $4a03: $01 $01 $01
    ld bc, $3125                                  ; $4a06: $01 $25 $31
    ccf                                           ; $4a09: $3f
    ld b, b                                       ; $4a0a: $40
    inc l                                         ; $4a0b: $2c
    dec sp                                        ; $4a0c: $3b
    inc a                                         ; $4a0d: $3c
    rst $20                                       ; $4a0e: $e7
    ld b, e                                       ; $4a0f: $43
    ld e, b                                       ; $4a10: $58
    ld e, c                                       ; $4a11: $59
    ld [$5a47], a                                 ; $4a12: $ea $47 $5a
    ld e, e                                       ; $4a15: $5b
    db $ed                                        ; $4a16: $ed
    inc bc                                        ; $4a17: $03
    inc bc                                        ; $4a18: $03
    inc bc                                        ; $4a19: $03
    inc bc                                        ; $4a1a: $03
    dec b                                         ; $4a1b: $05
    dec b                                         ; $4a1c: $05
    dec b                                         ; $4a1d: $05
    dec b                                         ; $4a1e: $05
    rlca                                          ; $4a1f: $07
    rlca                                          ; $4a20: $07
    rlca                                          ; $4a21: $07
    rlca                                          ; $4a22: $07
    ld [bc], a                                    ; $4a23: $02
    ld [bc], a                                    ; $4a24: $02
    ld bc, $b307                                  ; $4a25: $01 $07 $b3
    or h                                          ; $4a28: $b4
    pop de                                        ; $4a29: $d1
    pop de                                        ; $4a2a: $d1
    rst $28                                       ; $4a2b: $ef
    xor $d1                                       ; $4a2c: $ee $d1
    pop de                                        ; $4a2e: $d1
    ld a, [c]                                     ; $4a2f: $f2
    pop af                                        ; $4a30: $f1
    pop de                                        ; $4a31: $d1
    pop de                                        ; $4a32: $d1
    and $e5                                       ; $4a33: $e6 $e5
    pop de                                        ; $4a35: $d1
    pop de                                        ; $4a36: $d1
    adc e                                         ; $4a37: $8b
    adc e                                         ; $4a38: $8b
    inc bc                                        ; $4a39: $03
    inc bc                                        ; $4a3a: $03
    and e                                         ; $4a3b: $a3
    and e                                         ; $4a3c: $a3
    inc bc                                        ; $4a3d: $03
    inc bc                                        ; $4a3e: $03
    and e                                         ; $4a3f: $a3
    and e                                         ; $4a40: $a3
    inc bc                                        ; $4a41: $03
    inc bc                                        ; $4a42: $03
    and e                                         ; $4a43: $a3
    and e                                         ; $4a44: $a3
    inc bc                                        ; $4a45: $03
    inc bc                                        ; $4a46: $03
    add $c7                                       ; $4a47: $c6 $c7
    ret z                                         ; $4a49: $c8

    ret                                           ; $4a4a: $c9


    pop de                                        ; $4a4b: $d1
    pop de                                        ; $4a4c: $d1
    pop de                                        ; $4a4d: $d1
    pop de                                        ; $4a4e: $d1
    pop de                                        ; $4a4f: $d1
    pop de                                        ; $4a50: $d1
    pop de                                        ; $4a51: $d1
    pop de                                        ; $4a52: $d1
    pop de                                        ; $4a53: $d1
    pop de                                        ; $4a54: $d1
    pop de                                        ; $4a55: $d1
    pop de                                        ; $4a56: $d1
    adc e                                         ; $4a57: $8b
    adc e                                         ; $4a58: $8b
    adc e                                         ; $4a59: $8b
    adc e                                         ; $4a5a: $8b
    add e                                         ; $4a5b: $83
    add e                                         ; $4a5c: $83
    add e                                         ; $4a5d: $83
    add e                                         ; $4a5e: $83
    inc bc                                        ; $4a5f: $03
    inc bc                                        ; $4a60: $03
    inc bc                                        ; $4a61: $03
    inc bc                                        ; $4a62: $03
    inc bc                                        ; $4a63: $03
    inc bc                                        ; $4a64: $03
    inc bc                                        ; $4a65: $03
    inc bc                                        ; $4a66: $03
    jp nz, $c4c3                                  ; $4a67: $c2 $c3 $c4

    push bc                                       ; $4a6a: $c5
    pop de                                        ; $4a6b: $d1
    pop de                                        ; $4a6c: $d1
    pop de                                        ; $4a6d: $d1
    pop de                                        ; $4a6e: $d1
    pop de                                        ; $4a6f: $d1
    pop de                                        ; $4a70: $d1
    pop de                                        ; $4a71: $d1
    pop de                                        ; $4a72: $d1
    pop de                                        ; $4a73: $d1
    pop de                                        ; $4a74: $d1
    pop de                                        ; $4a75: $d1
    pop de                                        ; $4a76: $d1
    adc e                                         ; $4a77: $8b
    adc e                                         ; $4a78: $8b
    adc e                                         ; $4a79: $8b
    adc e                                         ; $4a7a: $8b
    add e                                         ; $4a7b: $83
    add e                                         ; $4a7c: $83
    add e                                         ; $4a7d: $83
    add e                                         ; $4a7e: $83
    inc bc                                        ; $4a7f: $03
    inc bc                                        ; $4a80: $03
    inc bc                                        ; $4a81: $03
    inc bc                                        ; $4a82: $03
    inc bc                                        ; $4a83: $03
    inc bc                                        ; $4a84: $03
    inc bc                                        ; $4a85: $03
    inc bc                                        ; $4a86: $03
    pop de                                        ; $4a87: $d1
    pop de                                        ; $4a88: $d1
    pop de                                        ; $4a89: $d1
    pop de                                        ; $4a8a: $d1
    pop de                                        ; $4a8b: $d1
    pop de                                        ; $4a8c: $d1
    pop de                                        ; $4a8d: $d1
    pop de                                        ; $4a8e: $d1
    pop de                                        ; $4a8f: $d1
    pop de                                        ; $4a90: $d1
    pop de                                        ; $4a91: $d1
    jp nc, $d1d1                                  ; $4a92: $d2 $d1 $d1

    pop de                                        ; $4a95: $d1
    call nc, Call_000_0303                        ; $4a96: $d4 $03 $03
    inc bc                                        ; $4a99: $03
    inc bc                                        ; $4a9a: $03
    inc bc                                        ; $4a9b: $03
    inc bc                                        ; $4a9c: $03
    inc bc                                        ; $4a9d: $03
    inc bc                                        ; $4a9e: $03
    inc bc                                        ; $4a9f: $03
    inc bc                                        ; $4aa0: $03
    inc bc                                        ; $4aa1: $03
    inc bc                                        ; $4aa2: $03
    inc bc                                        ; $4aa3: $03
    inc bc                                        ; $4aa4: $03
    inc bc                                        ; $4aa5: $03
    inc bc                                        ; $4aa6: $03
    pop de                                        ; $4aa7: $d1
    pop de                                        ; $4aa8: $d1
    pop de                                        ; $4aa9: $d1
    pop de                                        ; $4aaa: $d1
    pop de                                        ; $4aab: $d1
    pop de                                        ; $4aac: $d1
    pop de                                        ; $4aad: $d1
    pop de                                        ; $4aae: $d1

jr_087_4aaf:
    rst $30                                       ; $4aaf: $f7
    inc bc                                        ; $4ab0: $03
    rla                                           ; $4ab1: $17
    jr jr_087_4aaf                                ; $4ab2: $18 $fb

    ld b, $19                                     ; $4ab4: $06 $19
    ld a, [de]                                    ; $4ab6: $1a
    inc bc                                        ; $4ab7: $03
    inc bc                                        ; $4ab8: $03
    inc bc                                        ; $4ab9: $03
    inc bc                                        ; $4aba: $03
    inc bc                                        ; $4abb: $03
    inc bc                                        ; $4abc: $03
    inc bc                                        ; $4abd: $03
    inc bc                                        ; $4abe: $03
    inc bc                                        ; $4abf: $03
    inc bc                                        ; $4ac0: $03
    inc bc                                        ; $4ac1: $03
    inc bc                                        ; $4ac2: $03
    inc bc                                        ; $4ac3: $03
    inc bc                                        ; $4ac4: $03
    inc bc                                        ; $4ac5: $03
    inc bc                                        ; $4ac6: $03
    pop de                                        ; $4ac7: $d1
    pop de                                        ; $4ac8: $d1
    pop de                                        ; $4ac9: $d1
    pop de                                        ; $4aca: $d1
    pop de                                        ; $4acb: $d1
    pop de                                        ; $4acc: $d1
    pop de                                        ; $4acd: $d1
    pop de                                        ; $4ace: $d1
    db $f4                                        ; $4acf: $f4
    ld e, [hl]                                    ; $4ad0: $5e
    push af                                       ; $4ad1: $f5
    or $07                                        ; $4ad2: $f6 $07
    ld h, b                                       ; $4ad4: $60
    ld h, c                                       ; $4ad5: $61
    ld h, d                                       ; $4ad6: $62
    inc bc                                        ; $4ad7: $03
    inc bc                                        ; $4ad8: $03
    inc bc                                        ; $4ad9: $03
    inc bc                                        ; $4ada: $03
    inc bc                                        ; $4adb: $03
    inc bc                                        ; $4adc: $03
    inc bc                                        ; $4add: $03
    inc bc                                        ; $4ade: $03
    ld [bc], a                                    ; $4adf: $02
    inc bc                                        ; $4ae0: $03
    inc bc                                        ; $4ae1: $03
    inc bc                                        ; $4ae2: $03
    ld [bc], a                                    ; $4ae3: $02
    inc bc                                        ; $4ae4: $03
    inc bc                                        ; $4ae5: $03
    inc bc                                        ; $4ae6: $03
    pop de                                        ; $4ae7: $d1
    pop de                                        ; $4ae8: $d1
    sub $d7                                       ; $4ae9: $d6 $d7
    pop de                                        ; $4aeb: $d1
    pop de                                        ; $4aec: $d1
    reti                                          ; $4aed: $d9


    jp c, $d1d1                                   ; $4aee: $da $d1 $d1

    call c, $d1dd                                 ; $4af1: $dc $dd $d1
    pop de                                        ; $4af4: $d1
    rst $18                                       ; $4af5: $df
    ldh [$03], a                                  ; $4af6: $e0 $03
    inc bc                                        ; $4af8: $03
    inc bc                                        ; $4af9: $03
    inc bc                                        ; $4afa: $03
    inc bc                                        ; $4afb: $03
    inc bc                                        ; $4afc: $03
    add e                                         ; $4afd: $83
    add e                                         ; $4afe: $83
    inc bc                                        ; $4aff: $03
    inc bc                                        ; $4b00: $03
    add e                                         ; $4b01: $83
    add e                                         ; $4b02: $83
    inc bc                                        ; $4b03: $03
    inc bc                                        ; $4b04: $03
    add e                                         ; $4b05: $83
    add e                                         ; $4b06: $83
    xor b                                         ; $4b07: $a8
    ld a, [bc]                                    ; $4b08: $0a
    dec de                                        ; $4b09: $1b
    inc e                                         ; $4b0a: $1c
    xor c                                         ; $4b0b: $a9
    dec c                                         ; $4b0c: $0d
    dec e                                         ; $4b0d: $1d
    ld e, $39                                     ; $4b0e: $1e $39
    ld l, $3d                                     ; $4b10: $2e $3d
    ld a, $25                                     ; $4b12: $3e $25
    ld sp, $403f                                  ; $4b14: $31 $3f $40
    dec bc                                        ; $4b17: $0b
    inc bc                                        ; $4b18: $03
    inc bc                                        ; $4b19: $03
    inc bc                                        ; $4b1a: $03
    dec bc                                        ; $4b1b: $0b
    inc bc                                        ; $4b1c: $03
    inc bc                                        ; $4b1d: $03
    inc bc                                        ; $4b1e: $03
    inc bc                                        ; $4b1f: $03
    inc bc                                        ; $4b20: $03
    inc bc                                        ; $4b21: $03
    inc bc                                        ; $4b22: $03
    inc bc                                        ; $4b23: $03
    inc bc                                        ; $4b24: $03
    inc bc                                        ; $4b25: $03
    inc bc                                        ; $4b26: $03
    rlca                                          ; $4b27: $07
    ld h, h                                       ; $4b28: $64
    ld h, l                                       ; $4b29: $65
    ld h, [hl]                                    ; $4b2a: $66
    rlca                                          ; $4b2b: $07
    ld l, b                                       ; $4b2c: $68
    ld l, c                                       ; $4b2d: $69
    ld l, d                                       ; $4b2e: $6a
    rlca                                          ; $4b2f: $07
    add e                                         ; $4b30: $83
    add h                                         ; $4b31: $84
    add l                                         ; $4b32: $85
    ld [hl+], a                                   ; $4b33: $22
    add a                                         ; $4b34: $87
    inc hl                                        ; $4b35: $23
    inc h                                         ; $4b36: $24
    ld [bc], a                                    ; $4b37: $02
    inc bc                                        ; $4b38: $03
    inc bc                                        ; $4b39: $03
    inc bc                                        ; $4b3a: $03
    ld [bc], a                                    ; $4b3b: $02
    inc bc                                        ; $4b3c: $03
    inc bc                                        ; $4b3d: $03
    inc bc                                        ; $4b3e: $03
    ld [bc], a                                    ; $4b3f: $02
    dec bc                                        ; $4b40: $0b
    dec bc                                        ; $4b41: $0b
    dec bc                                        ; $4b42: $0b
    ld [bc], a                                    ; $4b43: $02
    dec bc                                        ; $4b44: $0b
    inc bc                                        ; $4b45: $03
    inc bc                                        ; $4b46: $03
    pop de                                        ; $4b47: $d1
    pop de                                        ; $4b48: $d1
    ld [c], a                                     ; $4b49: $e2
    db $e3                                        ; $4b4a: $e3
    pop de                                        ; $4b4b: $d1
    pop de                                        ; $4b4c: $d1
    push hl                                       ; $4b4d: $e5
    and $d1                                       ; $4b4e: $e6 $d1
    pop de                                        ; $4b50: $d1
    add sp, -$17                                  ; $4b51: $e8 $e9
    pop de                                        ; $4b53: $d1
    pop de                                        ; $4b54: $d1
    db $eb                                        ; $4b55: $eb
    db $ec                                        ; $4b56: $ec
    inc bc                                        ; $4b57: $03
    inc bc                                        ; $4b58: $03
    add e                                         ; $4b59: $83
    add e                                         ; $4b5a: $83
    inc bc                                        ; $4b5b: $03
    inc bc                                        ; $4b5c: $03
    add e                                         ; $4b5d: $83
    add e                                         ; $4b5e: $83
    inc bc                                        ; $4b5f: $03
    inc bc                                        ; $4b60: $03
    add e                                         ; $4b61: $83
    add e                                         ; $4b62: $83
    inc bc                                        ; $4b63: $03
    inc bc                                        ; $4b64: $03
    add e                                         ; $4b65: $83
    add e                                         ; $4b66: $83
    ld h, $27                                     ; $4b67: $26 $27
    jr z, jr_087_4b94                             ; $4b69: $28 $29

    ld a, [hl+]                                   ; $4b6b: $2a
    dec hl                                        ; $4b6c: $2b
    inc l                                         ; $4b6d: $2c
    dec sp                                        ; $4b6e: $3b
    ld b, c                                       ; $4b6f: $41
    ld b, d                                       ; $4b70: $42
    ld b, e                                       ; $4b71: $43
    ld e, b                                       ; $4b72: $58
    ld b, l                                       ; $4b73: $45
    ld b, [hl]                                    ; $4b74: $46
    ld b, a                                       ; $4b75: $47
    ld e, d                                       ; $4b76: $5a
    dec b                                         ; $4b77: $05
    dec b                                         ; $4b78: $05
    dec b                                         ; $4b79: $05
    dec b                                         ; $4b7a: $05
    rlca                                          ; $4b7b: $07
    rlca                                          ; $4b7c: $07
    rlca                                          ; $4b7d: $07
    rlca                                          ; $4b7e: $07
    rlca                                          ; $4b7f: $07
    ld bc, $0202                                  ; $4b80: $01 $02 $02
    rlca                                          ; $4b83: $07
    ld [bc], a                                    ; $4b84: $02
    ld bc, $3401                                  ; $4b85: $01 $01 $34
    db $e4                                        ; $4b88: $e4
    ld h, $27                                     ; $4b89: $26 $27
    inc a                                         ; $4b8b: $3c
    rst $20                                       ; $4b8c: $e7
    ld a, [hl+]                                   ; $4b8d: $2a
    dec hl                                        ; $4b8e: $2b
    ld e, c                                       ; $4b8f: $59
    ld [$4241], a                                 ; $4b90: $ea $41 $42
    ld e, e                                       ; $4b93: $5b

jr_087_4b94:
    db $ed                                        ; $4b94: $ed
    ld b, l                                       ; $4b95: $45
    ld b, [hl]                                    ; $4b96: $46
    dec b                                         ; $4b97: $05
    dec b                                         ; $4b98: $05
    dec b                                         ; $4b99: $05
    dec b                                         ; $4b9a: $05
    rlca                                          ; $4b9b: $07
    rlca                                          ; $4b9c: $07
    rlca                                          ; $4b9d: $07
    rlca                                          ; $4b9e: $07
    ld [bc], a                                    ; $4b9f: $02
    ld [bc], a                                    ; $4ba0: $02
    ld bc, $0102                                  ; $4ba1: $01 $02 $01
    ld [bc], a                                    ; $4ba4: $02
    ld [bc], a                                    ; $4ba5: $02
    ld bc, $c0c1                                  ; $4ba6: $01 $c1 $c0
    inc [hl]                                      ; $4ba9: $34
    db $e4                                        ; $4baa: $e4
    ld [c], a                                     ; $4bab: $e2
    db $e3                                        ; $4bac: $e3
    inc a                                         ; $4bad: $3c
    rst $20                                       ; $4bae: $e7
    push hl                                       ; $4baf: $e5
    and $59                                       ; $4bb0: $e6 $59
    ld [$e9e8], a                                 ; $4bb2: $ea $e8 $e9
    ld e, e                                       ; $4bb5: $5b
    db $ed                                        ; $4bb6: $ed
    xor e                                         ; $4bb7: $ab
    xor e                                         ; $4bb8: $ab
    ld bc, $8301                                  ; $4bb9: $01 $01 $83
    add e                                         ; $4bbc: $83
    rlca                                          ; $4bbd: $07
    ld bc, $0303                                  ; $4bbe: $01 $03 $03
    rlca                                          ; $4bc1: $07
    ld [bc], a                                    ; $4bc2: $02
    inc bc                                        ; $4bc3: $03
    inc bc                                        ; $4bc4: $03
    rlca                                          ; $4bc5: $07
    ld [bc], a                                    ; $4bc6: $02
    pop de                                        ; $4bc7: $d1
    pop de                                        ; $4bc8: $d1
    pop de                                        ; $4bc9: $d1
    pop de                                        ; $4bca: $d1
    pop de                                        ; $4bcb: $d1
    pop de                                        ; $4bcc: $d1
    pop de                                        ; $4bcd: $d1
    pop de                                        ; $4bce: $d1
    ld e, a                                       ; $4bcf: $5f
    ld l, h                                       ; $4bd0: $6c
    rla                                           ; $4bd1: $17
    jr jr_087_4c37                                ; $4bd2: $18 $63

    ld l, l                                       ; $4bd4: $6d
    add hl, de                                    ; $4bd5: $19
    ld a, [de]                                    ; $4bd6: $1a
    inc bc                                        ; $4bd7: $03
    inc bc                                        ; $4bd8: $03
    inc bc                                        ; $4bd9: $03
    inc bc                                        ; $4bda: $03
    inc bc                                        ; $4bdb: $03
    inc bc                                        ; $4bdc: $03
    inc bc                                        ; $4bdd: $03
    inc bc                                        ; $4bde: $03
    inc bc                                        ; $4bdf: $03
    inc bc                                        ; $4be0: $03
    inc bc                                        ; $4be1: $03
    inc bc                                        ; $4be2: $03
    inc bc                                        ; $4be3: $03
    inc bc                                        ; $4be4: $03
    inc bc                                        ; $4be5: $03
    inc bc                                        ; $4be6: $03
    pop de                                        ; $4be7: $d1
    pop de                                        ; $4be8: $d1
    pop de                                        ; $4be9: $d1
    pop de                                        ; $4bea: $d1
    pop de                                        ; $4beb: $d1
    pop de                                        ; $4bec: $d1
    pop de                                        ; $4bed: $d1
    pop de                                        ; $4bee: $d1
    db $f4                                        ; $4bef: $f4
    inc b                                         ; $4bf0: $04
    dec b                                         ; $4bf1: $05
    inc b                                         ; $4bf2: $04
    rlca                                          ; $4bf3: $07
    ld [$0809], sp                                ; $4bf4: $08 $09 $08
    inc bc                                        ; $4bf7: $03
    inc bc                                        ; $4bf8: $03
    inc bc                                        ; $4bf9: $03
    inc bc                                        ; $4bfa: $03
    inc bc                                        ; $4bfb: $03
    inc bc                                        ; $4bfc: $03
    inc bc                                        ; $4bfd: $03
    inc bc                                        ; $4bfe: $03
    ld [bc], a                                    ; $4bff: $02
    ld [bc], a                                    ; $4c00: $02
    ld [bc], a                                    ; $4c01: $02
    ld [hl+], a                                   ; $4c02: $22
    ld [bc], a                                    ; $4c03: $02
    ld [bc], a                                    ; $4c04: $02
    ld [bc], a                                    ; $4c05: $02
    ld [hl+], a                                   ; $4c06: $22
    pop de                                        ; $4c07: $d1
    pop de                                        ; $4c08: $d1
    pop de                                        ; $4c09: $d1
    pop de                                        ; $4c0a: $d1
    pop de                                        ; $4c0b: $d1
    pop de                                        ; $4c0c: $d1
    pop de                                        ; $4c0d: $d1
    pop de                                        ; $4c0e: $d1
    db $f4                                        ; $4c0f: $f4
    inc bc                                        ; $4c10: $03
    rla                                           ; $4c11: $17
    jr jr_087_4c1b                                ; $4c12: $18 $07

    ld b, $19                                     ; $4c14: $06 $19
    ld a, [de]                                    ; $4c16: $1a
    inc bc                                        ; $4c17: $03
    inc bc                                        ; $4c18: $03
    inc bc                                        ; $4c19: $03
    inc bc                                        ; $4c1a: $03

jr_087_4c1b:
    inc bc                                        ; $4c1b: $03
    inc bc                                        ; $4c1c: $03
    inc bc                                        ; $4c1d: $03
    inc bc                                        ; $4c1e: $03
    ld [bc], a                                    ; $4c1f: $02
    inc bc                                        ; $4c20: $03
    inc bc                                        ; $4c21: $03
    inc bc                                        ; $4c22: $03
    ld [bc], a                                    ; $4c23: $02
    inc bc                                        ; $4c24: $03
    inc bc                                        ; $4c25: $03
    inc bc                                        ; $4c26: $03
    db $eb                                        ; $4c27: $eb
    db $ec                                        ; $4c28: $ec
    ld e, l                                       ; $4c29: $5d
    ldh a, [$ee]                                  ; $4c2a: $f0 $ee
    rst $28                                       ; $4c2c: $ef
    ld d, a                                       ; $4c2d: $57
    di                                            ; $4c2e: $f3
    or l                                          ; $4c2f: $b5
    db $e3                                        ; $4c30: $e3
    inc [hl]                                      ; $4c31: $34
    db $e4                                        ; $4c32: $e4
    or [hl]                                       ; $4c33: $b6
    and $3c                                       ; $4c34: $e6 $3c
    rst $20                                       ; $4c36: $e7

jr_087_4c37:
    inc bc                                        ; $4c37: $03
    inc bc                                        ; $4c38: $03
    rlca                                          ; $4c39: $07
    ld bc, $0303                                  ; $4c3a: $01 $03 $03
    rlca                                          ; $4c3d: $07
    ld bc, $030b                                  ; $4c3e: $01 $0b $03
    rlca                                          ; $4c41: $07
    ld [bc], a                                    ; $4c42: $02
    dec bc                                        ; $4c43: $0b
    inc bc                                        ; $4c44: $03
    rlca                                          ; $4c45: $07
    ld [bc], a                                    ; $4c46: $02
    ld h, a                                       ; $4c47: $67
    ld l, [hl]                                    ; $4c48: $6e
    ld l, a                                       ; $4c49: $6f
    inc e                                         ; $4c4a: $1c
    ld l, e                                       ; $4c4b: $6b
    ld [hl], b                                    ; $4c4c: $70
    ld [hl], c                                    ; $4c4d: $71
    ld e, $86                                     ; $4c4e: $1e $86
    adc d                                         ; $4c50: $8a
    adc e                                         ; $4c51: $8b
    ld a, $88                                     ; $4c52: $3e $88
    adc h                                         ; $4c54: $8c
    adc l                                         ; $4c55: $8d
    ld b, b                                       ; $4c56: $40
    inc bc                                        ; $4c57: $03
    inc bc                                        ; $4c58: $03
    inc bc                                        ; $4c59: $03
    inc bc                                        ; $4c5a: $03
    inc bc                                        ; $4c5b: $03
    inc bc                                        ; $4c5c: $03
    inc bc                                        ; $4c5d: $03
    inc bc                                        ; $4c5e: $03
    dec bc                                        ; $4c5f: $0b
    dec bc                                        ; $4c60: $0b
    dec bc                                        ; $4c61: $0b
    inc bc                                        ; $4c62: $03
    dec bc                                        ; $4c63: $0b
    dec bc                                        ; $4c64: $0b
    dec bc                                        ; $4c65: $0b
    inc bc                                        ; $4c66: $03
    rlca                                          ; $4c67: $07
    dec bc                                        ; $4c68: $0b
    inc c                                         ; $4c69: $0c
    ld de, $0e07                                  ; $4c6a: $11 $07 $0e
    rrca                                          ; $4c6d: $0f
    inc d                                         ; $4c6e: $14
    rlca                                          ; $4c6f: $07
    cpl                                           ; $4c70: $2f
    jr nc, jr_087_4caa                            ; $4c71: $30 $37

    ld [hl+], a                                   ; $4c73: $22
    ld [hl-], a                                   ; $4c74: $32
    inc sp                                        ; $4c75: $33
    ld a, [hl-]                                   ; $4c76: $3a
    ld [bc], a                                    ; $4c77: $02
    inc b                                         ; $4c78: $04
    inc b                                         ; $4c79: $04
    inc b                                         ; $4c7a: $04
    ld [bc], a                                    ; $4c7b: $02
    inc b                                         ; $4c7c: $04
    inc b                                         ; $4c7d: $04
    inc b                                         ; $4c7e: $04
    ld [bc], a                                    ; $4c7f: $02
    inc b                                         ; $4c80: $04
    inc b                                         ; $4c81: $04
    inc b                                         ; $4c82: $04
    ld [bc], a                                    ; $4c83: $02
    inc b                                         ; $4c84: $04
    inc b                                         ; $4c85: $04
    inc b                                         ; $4c86: $04
    rlca                                          ; $4c87: $07
    ld a, [bc]                                    ; $4c88: $0a
    inc de                                        ; $4c89: $13
    inc e                                         ; $4c8a: $1c
    rlca                                          ; $4c8b: $07
    dec c                                         ; $4c8c: $0d
    ld d, $1e                                     ; $4c8d: $16 $1e
    rlca                                          ; $4c8f: $07
    ld l, $3d                                     ; $4c90: $2e $3d
    ld a, $22                                     ; $4c92: $3e $22
    ld sp, $403f                                  ; $4c94: $31 $3f $40
    ld [bc], a                                    ; $4c97: $02
    inc bc                                        ; $4c98: $03
    inc bc                                        ; $4c99: $03
    inc bc                                        ; $4c9a: $03
    ld [bc], a                                    ; $4c9b: $02
    inc bc                                        ; $4c9c: $03
    inc bc                                        ; $4c9d: $03
    inc bc                                        ; $4c9e: $03
    ld [bc], a                                    ; $4c9f: $02
    inc bc                                        ; $4ca0: $03
    inc bc                                        ; $4ca1: $03
    inc bc                                        ; $4ca2: $03
    ld [bc], a                                    ; $4ca3: $02
    inc bc                                        ; $4ca4: $03
    inc bc                                        ; $4ca5: $03
    inc bc                                        ; $4ca6: $03
    or a                                          ; $4ca7: $b7
    jp hl                                         ; $4ca8: $e9


    ld e, c                                       ; $4ca9: $59

jr_087_4caa:
    ld [$ecb8], a                                 ; $4caa: $ea $b8 $ec
    ld e, e                                       ; $4cad: $5b
    db $ed                                        ; $4cae: $ed
    cp c                                          ; $4caf: $b9
    cp d                                          ; $4cb0: $ba
    ld e, l                                       ; $4cb1: $5d
    ldh a, [$be]                                  ; $4cb2: $f0 $be
    cp a                                          ; $4cb4: $bf
    ld d, a                                       ; $4cb5: $57
    di                                            ; $4cb6: $f3
    dec bc                                        ; $4cb7: $0b
    inc bc                                        ; $4cb8: $03
    rlca                                          ; $4cb9: $07
    ld bc, $030b                                  ; $4cba: $01 $0b $03
    rlca                                          ; $4cbd: $07
    ld bc, $0b0b                                  ; $4cbe: $01 $0b $0b
    rlca                                          ; $4cc1: $07
    ld bc, $0b0b                                  ; $4cc2: $01 $0b $0b
    rlca                                          ; $4cc5: $07
    ld bc, $2928                                  ; $4cc6: $01 $28 $29
    inc [hl]                                      ; $4cc9: $34
    db $e4                                        ; $4cca: $e4
    inc l                                         ; $4ccb: $2c
    dec l                                         ; $4ccc: $2d
    dec [hl]                                      ; $4ccd: $35
    ld [hl], $43                                  ; $4cce: $36 $43
    ld b, h                                       ; $4cd0: $44
    ld d, c                                       ; $4cd1: $51
    ld d, d                                       ; $4cd2: $52
    ld b, a                                       ; $4cd3: $47
    ld c, b                                       ; $4cd4: $48
    ld d, e                                       ; $4cd5: $53
    ld d, h                                       ; $4cd6: $54
    dec b                                         ; $4cd7: $05
    dec b                                         ; $4cd8: $05
    dec b                                         ; $4cd9: $05
    dec b                                         ; $4cda: $05
    rlca                                          ; $4cdb: $07
    rlca                                          ; $4cdc: $07
    rlca                                          ; $4cdd: $07
    rlca                                          ; $4cde: $07
    ld [bc], a                                    ; $4cdf: $02
    ld bc, $0101                                  ; $4ce0: $01 $01 $01
    ld [bc], a                                    ; $4ce3: $02
    ld bc, $0101                                  ; $4ce4: $01 $01 $01
    ld h, $27                                     ; $4ce7: $26 $27
    jr z, jr_087_4d14                             ; $4ce9: $28 $29

    ld a, [hl+]                                   ; $4ceb: $2a
    dec hl                                        ; $4cec: $2b
    inc l                                         ; $4ced: $2c
    dec sp                                        ; $4cee: $3b
    ld b, c                                       ; $4cef: $41
    ld b, d                                       ; $4cf0: $42
    ld b, e                                       ; $4cf1: $43
    ld e, b                                       ; $4cf2: $58
    ld b, l                                       ; $4cf3: $45
    ld b, [hl]                                    ; $4cf4: $46
    ld b, a                                       ; $4cf5: $47
    ld e, d                                       ; $4cf6: $5a
    dec b                                         ; $4cf7: $05
    dec b                                         ; $4cf8: $05
    dec b                                         ; $4cf9: $05
    dec b                                         ; $4cfa: $05
    rlca                                          ; $4cfb: $07
    rlca                                          ; $4cfc: $07
    rlca                                          ; $4cfd: $07
    rlca                                          ; $4cfe: $07
    ld [bc], a                                    ; $4cff: $02
    ld [bc], a                                    ; $4d00: $02
    ld bc, $0102                                  ; $4d01: $01 $02 $01
    ld bc, $0101                                  ; $4d04: $01 $01 $01
    inc [hl]                                      ; $4d07: $34
    db $e4                                        ; $4d08: $e4
    ld h, $27                                     ; $4d09: $26 $27
    inc a                                         ; $4d0b: $3c
    rst $20                                       ; $4d0c: $e7

Jump_087_4d0d:
    ld a, [hl+]                                   ; $4d0d: $2a
    adc c                                         ; $4d0e: $89
    ld e, c                                       ; $4d0f: $59
    ld [$9841], a                                 ; $4d10: $ea $41 $98
    ld e, e                                       ; $4d13: $5b

jr_087_4d14:
    db $ed                                        ; $4d14: $ed
    cp e                                          ; $4d15: $bb
    sbc c                                         ; $4d16: $99
    dec b                                         ; $4d17: $05
    dec b                                         ; $4d18: $05
    dec b                                         ; $4d19: $05
    dec b                                         ; $4d1a: $05
    rlca                                          ; $4d1b: $07
    rlca                                          ; $4d1c: $07
    rlca                                          ; $4d1d: $07
    rrca                                          ; $4d1e: $0f
    ld [bc], a                                    ; $4d1f: $02
    ld bc, $0e01                                  ; $4d20: $01 $01 $0e
    ld bc, $0901                                  ; $4d23: $01 $01 $09
    ld c, $8e                                     ; $4d26: $0e $8e
    adc a                                         ; $4d28: $8f
    inc [hl]                                      ; $4d29: $34
    db $e4                                        ; $4d2a: $e4
    sub b                                         ; $4d2b: $90
    sub c                                         ; $4d2c: $91
    sub d                                         ; $4d2d: $92
    rst $20                                       ; $4d2e: $e7
    sbc e                                         ; $4d2f: $9b
    sbc h                                         ; $4d30: $9c
    sbc l                                         ; $4d31: $9d
    sbc [hl]                                      ; $4d32: $9e
    sbc a                                         ; $4d33: $9f
    and b                                         ; $4d34: $a0
    and c                                         ; $4d35: $a1
    db $ed                                        ; $4d36: $ed
    dec c                                         ; $4d37: $0d
    rrca                                          ; $4d38: $0f
    ld bc, $0e02                                  ; $4d39: $01 $02 $0e
    ld c, $09                                     ; $4d3c: $0e $09
    ld [bc], a                                    ; $4d3e: $02
    ld c, $0e                                     ; $4d3f: $0e $0e
    ld c, $09                                     ; $4d41: $0e $09
    ld c, $0e                                     ; $4d43: $0e $0e
    add hl, bc                                    ; $4d45: $09
    ld bc, $2726                                  ; $4d46: $01 $26 $27
    ret nz                                        ; $4d49: $c0

    pop bc                                        ; $4d4a: $c1
    ld a, [hl+]                                   ; $4d4b: $2a
    dec hl                                        ; $4d4c: $2b
    db $e3                                        ; $4d4d: $e3
    ld [c], a                                     ; $4d4e: $e2
    ld b, c                                       ; $4d4f: $41
    ld b, d                                       ; $4d50: $42
    and $e5                                       ; $4d51: $e6 $e5
    ld b, l                                       ; $4d53: $45
    ld b, [hl]                                    ; $4d54: $46
    jp hl                                         ; $4d55: $e9


    add sp, $01                                   ; $4d56: $e8 $01
    ld bc, $8b8b                                  ; $4d58: $01 $8b $8b
    ld [bc], a                                    ; $4d5b: $02
    rlca                                          ; $4d5c: $07
    and e                                         ; $4d5d: $a3
    and e                                         ; $4d5e: $a3
    ld [bc], a                                    ; $4d5f: $02
    rlca                                          ; $4d60: $07
    inc hl                                        ; $4d61: $23
    inc hl                                        ; $4d62: $23
    ld bc, $2307                                  ; $4d63: $01 $07 $23
    inc hl                                        ; $4d66: $23
    jp nz, $c2c3                                  ; $4d67: $c2 $c3 $c2

    jp $d1d1                                      ; $4d6a: $c3 $d1 $d1


    pop de                                        ; $4d6d: $d1
    pop de                                        ; $4d6e: $d1
    pop de                                        ; $4d6f: $d1
    pop de                                        ; $4d70: $d1
    pop de                                        ; $4d71: $d1
    pop de                                        ; $4d72: $d1
    pop de                                        ; $4d73: $d1
    pop de                                        ; $4d74: $d1
    pop de                                        ; $4d75: $d1
    pop de                                        ; $4d76: $d1
    adc e                                         ; $4d77: $8b
    adc e                                         ; $4d78: $8b
    adc e                                         ; $4d79: $8b
    adc e                                         ; $4d7a: $8b
    add e                                         ; $4d7b: $83
    add e                                         ; $4d7c: $83
    add e                                         ; $4d7d: $83
    add e                                         ; $4d7e: $83
    inc bc                                        ; $4d7f: $03
    inc bc                                        ; $4d80: $03
    inc bc                                        ; $4d81: $03
    inc bc                                        ; $4d82: $03
    inc bc                                        ; $4d83: $03
    inc bc                                        ; $4d84: $03
    inc bc                                        ; $4d85: $03
    inc bc                                        ; $4d86: $03
    call nz, $c6c5                                ; $4d87: $c4 $c5 $c6
    rst $00                                       ; $4d8a: $c7
    pop de                                        ; $4d8b: $d1
    pop de                                        ; $4d8c: $d1
    pop de                                        ; $4d8d: $d1
    pop de                                        ; $4d8e: $d1
    pop de                                        ; $4d8f: $d1
    pop de                                        ; $4d90: $d1
    pop de                                        ; $4d91: $d1
    pop de                                        ; $4d92: $d1
    pop de                                        ; $4d93: $d1
    pop de                                        ; $4d94: $d1
    pop de                                        ; $4d95: $d1
    pop de                                        ; $4d96: $d1
    adc e                                         ; $4d97: $8b
    adc e                                         ; $4d98: $8b
    adc e                                         ; $4d99: $8b
    adc e                                         ; $4d9a: $8b
    add e                                         ; $4d9b: $83
    add e                                         ; $4d9c: $83
    add e                                         ; $4d9d: $83
    add e                                         ; $4d9e: $83
    inc bc                                        ; $4d9f: $03
    inc bc                                        ; $4da0: $03
    inc bc                                        ; $4da1: $03
    inc bc                                        ; $4da2: $03
    inc bc                                        ; $4da3: $03
    inc bc                                        ; $4da4: $03
    inc bc                                        ; $4da5: $03
    inc bc                                        ; $4da6: $03
    ret z                                         ; $4da7: $c8

    ret                                           ; $4da8: $c9


    pop bc                                        ; $4da9: $c1
    ret nz                                        ; $4daa: $c0

    pop de                                        ; $4dab: $d1
    pop de                                        ; $4dac: $d1
    ld [c], a                                     ; $4dad: $e2
    db $e3                                        ; $4dae: $e3
    pop de                                        ; $4daf: $d1
    pop de                                        ; $4db0: $d1
    push hl                                       ; $4db1: $e5
    and $d1                                       ; $4db2: $e6 $d1
    pop de                                        ; $4db4: $d1
    add sp, -$17                                  ; $4db5: $e8 $e9
    adc e                                         ; $4db7: $8b
    adc e                                         ; $4db8: $8b
    xor e                                         ; $4db9: $ab
    xor e                                         ; $4dba: $ab
    add e                                         ; $4dbb: $83
    add e                                         ; $4dbc: $83
    add e                                         ; $4dbd: $83
    add e                                         ; $4dbe: $83
    inc bc                                        ; $4dbf: $03
    inc bc                                        ; $4dc0: $03
    add e                                         ; $4dc1: $83
    add e                                         ; $4dc2: $83
    inc bc                                        ; $4dc3: $03
    inc bc                                        ; $4dc4: $03
    add e                                         ; $4dc5: $83
    add e                                         ; $4dc6: $83
    ld c, c                                       ; $4dc7: $49
    ld c, d                                       ; $4dc8: $4a
    db $ec                                        ; $4dc9: $ec
    db $eb                                        ; $4dca: $eb
    ld c, l                                       ; $4dcb: $4d
    ld c, [hl]                                    ; $4dcc: $4e
    rst $28                                       ; $4dcd: $ef
    xor $26                                       ; $4dce: $ee $26
    daa                                           ; $4dd0: $27
    db $e3                                        ; $4dd1: $e3
    or l                                          ; $4dd2: $b5
    ld a, [hl+]                                   ; $4dd3: $2a
    dec hl                                        ; $4dd4: $2b
    and $b6                                       ; $4dd5: $e6 $b6
    ld bc, $2307                                  ; $4dd7: $01 $07 $23
    inc hl                                        ; $4dda: $23
    ld [bc], a                                    ; $4ddb: $02
    rlca                                          ; $4ddc: $07
    inc hl                                        ; $4ddd: $23
    inc hl                                        ; $4dde: $23
    ld [bc], a                                    ; $4ddf: $02
    rlca                                          ; $4de0: $07
    inc hl                                        ; $4de1: $23
    dec hl                                        ; $4de2: $2b
    ld [bc], a                                    ; $4de3: $02
    rlca                                          ; $4de4: $07
    inc hl                                        ; $4de5: $23
    dec hl                                        ; $4de6: $2b
    pop de                                        ; $4de7: $d1
    pop de                                        ; $4de8: $d1
    pop de                                        ; $4de9: $d1
    pop de                                        ; $4dea: $d1
    pop de                                        ; $4deb: $d1
    pop de                                        ; $4dec: $d1
    pop de                                        ; $4ded: $d1
    pop de                                        ; $4dee: $d1
    xor d                                         ; $4def: $aa
    pop de                                        ; $4df0: $d1
    pop de                                        ; $4df1: $d1
    pop de                                        ; $4df2: $d1
    xor e                                         ; $4df3: $ab
    xor h                                         ; $4df4: $ac
    pop de                                        ; $4df5: $d1
    pop de                                        ; $4df6: $d1
    inc bc                                        ; $4df7: $03
    inc bc                                        ; $4df8: $03
    inc bc                                        ; $4df9: $03
    inc bc                                        ; $4dfa: $03
    inc bc                                        ; $4dfb: $03
    inc bc                                        ; $4dfc: $03
    inc bc                                        ; $4dfd: $03
    inc bc                                        ; $4dfe: $03
    dec bc                                        ; $4dff: $0b
    inc bc                                        ; $4e00: $03
    inc bc                                        ; $4e01: $03
    inc bc                                        ; $4e02: $03
    dec bc                                        ; $4e03: $0b
    dec bc                                        ; $4e04: $0b
    inc bc                                        ; $4e05: $03
    inc bc                                        ; $4e06: $03
    pop de                                        ; $4e07: $d1
    pop de                                        ; $4e08: $d1
    db $eb                                        ; $4e09: $eb
    db $ec                                        ; $4e0a: $ec
    pop de                                        ; $4e0b: $d1
    pop de                                        ; $4e0c: $d1
    xor $ef                                       ; $4e0d: $ee $ef
    pop de                                        ; $4e0f: $d1
    pop de                                        ; $4e10: $d1
    pop af                                        ; $4e11: $f1
    ld a, [c]                                     ; $4e12: $f2
    pop de                                        ; $4e13: $d1
    pop de                                        ; $4e14: $d1
    ld [c], a                                     ; $4e15: $e2
    db $e3                                        ; $4e16: $e3
    inc bc                                        ; $4e17: $03
    inc bc                                        ; $4e18: $03
    add e                                         ; $4e19: $83
    add e                                         ; $4e1a: $83
    inc bc                                        ; $4e1b: $03
    inc bc                                        ; $4e1c: $03
    add e                                         ; $4e1d: $83
    add e                                         ; $4e1e: $83
    inc bc                                        ; $4e1f: $03
    inc bc                                        ; $4e20: $03
    add e                                         ; $4e21: $83
    add e                                         ; $4e22: $83
    inc bc                                        ; $4e23: $03
    inc bc                                        ; $4e24: $03
    add e                                         ; $4e25: $83
    add e                                         ; $4e26: $83
    ld b, c                                       ; $4e27: $41
    ld b, d                                       ; $4e28: $42
    jp hl                                         ; $4e29: $e9


    or a                                          ; $4e2a: $b7
    ld b, l                                       ; $4e2b: $45
    ld b, [hl]                                    ; $4e2c: $46
    db $ec                                        ; $4e2d: $ec
    cp b                                          ; $4e2e: $b8
    ld c, c                                       ; $4e2f: $49
    ld c, d                                       ; $4e30: $4a
    cp d                                          ; $4e31: $ba
    cp c                                          ; $4e32: $b9
    ld c, l                                       ; $4e33: $4d
    ld c, [hl]                                    ; $4e34: $4e
    cp a                                          ; $4e35: $bf
    cp [hl]                                       ; $4e36: $be
    ld bc, $2307                                  ; $4e37: $01 $07 $23
    dec hl                                        ; $4e3a: $2b
    ld bc, $2307                                  ; $4e3b: $01 $07 $23
    dec hl                                        ; $4e3e: $2b
    ld bc, $2b07                                  ; $4e3f: $01 $07 $2b
    dec hl                                        ; $4e42: $2b
    ld bc, $2b07                                  ; $4e43: $01 $07 $2b
    dec hl                                        ; $4e46: $2b
    xor l                                         ; $4e47: $ad
    xor [hl]                                      ; $4e48: $ae
    pop de                                        ; $4e49: $d1
    pop de                                        ; $4e4a: $d1
    xor a                                         ; $4e4b: $af
    or b                                          ; $4e4c: $b0
    pop de                                        ; $4e4d: $d1
    pop de                                        ; $4e4e: $d1
    or c                                          ; $4e4f: $b1
    or d                                          ; $4e50: $b2
    pop de                                        ; $4e51: $d1
    pop de                                        ; $4e52: $d1
    or e                                          ; $4e53: $b3
    or h                                          ; $4e54: $b4
    pop de                                        ; $4e55: $d1
    pop de                                        ; $4e56: $d1
    dec bc                                        ; $4e57: $0b
    dec bc                                        ; $4e58: $0b
    inc bc                                        ; $4e59: $03
    inc bc                                        ; $4e5a: $03
    adc e                                         ; $4e5b: $8b
    adc e                                         ; $4e5c: $8b
    inc bc                                        ; $4e5d: $03
    inc bc                                        ; $4e5e: $03
    adc e                                         ; $4e5f: $8b
    adc e                                         ; $4e60: $8b
    inc bc                                        ; $4e61: $03
    inc bc                                        ; $4e62: $03
    adc e                                         ; $4e63: $8b
    adc e                                         ; $4e64: $8b
    inc bc                                        ; $4e65: $03
    inc bc                                        ; $4e66: $03
    pop de                                        ; $4e67: $d1
    pop de                                        ; $4e68: $d1
    ret nc                                        ; $4e69: $d0

    pop de                                        ; $4e6a: $d1
    pop de                                        ; $4e6b: $d1
    pop de                                        ; $4e6c: $d1
    pop de                                        ; $4e6d: $d1
    pop de                                        ; $4e6e: $d1
    pop de                                        ; $4e6f: $d1
    pop de                                        ; $4e70: $d1
    pop de                                        ; $4e71: $d1
    pop de                                        ; $4e72: $d1
    pop de                                        ; $4e73: $d1
    pop de                                        ; $4e74: $d1
    pop de                                        ; $4e75: $d1
    pop de                                        ; $4e76: $d1
    inc bc                                        ; $4e77: $03
    inc bc                                        ; $4e78: $03
    adc e                                         ; $4e79: $8b
    adc e                                         ; $4e7a: $8b
    inc bc                                        ; $4e7b: $03
    inc bc                                        ; $4e7c: $03
    add e                                         ; $4e7d: $83
    add e                                         ; $4e7e: $83
    inc bc                                        ; $4e7f: $03
    inc bc                                        ; $4e80: $03
    inc bc                                        ; $4e81: $03
    inc bc                                        ; $4e82: $03
    inc bc                                        ; $4e83: $03
    inc bc                                        ; $4e84: $03
    inc bc                                        ; $4e85: $03
    inc bc                                        ; $4e86: $03
    ld h, $27                                     ; $4e87: $26 $27
    jr z, jr_087_4eb4                             ; $4e89: $28 $29

    ld a, [hl+]                                   ; $4e8b: $2a
    dec hl                                        ; $4e8c: $2b
    inc l                                         ; $4e8d: $2c
    dec sp                                        ; $4e8e: $3b
    ld b, c                                       ; $4e8f: $41
    ld b, d                                       ; $4e90: $42
    ld b, e                                       ; $4e91: $43
    ld e, b                                       ; $4e92: $58
    ld b, l                                       ; $4e93: $45
    ld b, [hl]                                    ; $4e94: $46
    ld b, a                                       ; $4e95: $47
    ld e, d                                       ; $4e96: $5a
    ld [bc], a                                    ; $4e97: $02
    ld bc, $0507                                  ; $4e98: $01 $07 $05
    ld bc, $0101                                  ; $4e9b: $01 $01 $01
    rlca                                          ; $4e9e: $07
    ld [bc], a                                    ; $4e9f: $02
    ld [bc], a                                    ; $4ea0: $02
    ld bc, $0107                                  ; $4ea1: $01 $07 $01
    ld [bc], a                                    ; $4ea4: $02
    ld bc, $e307                                  ; $4ea5: $01 $07 $e3
    ld [c], a                                     ; $4ea8: $e2
    pop de                                        ; $4ea9: $d1
    pop de                                        ; $4eaa: $d1
    and $e5                                       ; $4eab: $e6 $e5
    pop de                                        ; $4ead: $d1
    pop de                                        ; $4eae: $d1
    jp hl                                         ; $4eaf: $e9


    add sp, -$2f                                  ; $4eb0: $e8 $d1
    pop de                                        ; $4eb2: $d1
    db $ec                                        ; $4eb3: $ec

jr_087_4eb4:
    db $eb                                        ; $4eb4: $eb
    pop de                                        ; $4eb5: $d1
    pop de                                        ; $4eb6: $d1
    and e                                         ; $4eb7: $a3
    and e                                         ; $4eb8: $a3
    inc bc                                        ; $4eb9: $03
    inc bc                                        ; $4eba: $03
    and e                                         ; $4ebb: $a3
    and e                                         ; $4ebc: $a3
    inc bc                                        ; $4ebd: $03
    inc bc                                        ; $4ebe: $03
    and e                                         ; $4ebf: $a3
    and e                                         ; $4ec0: $a3
    inc bc                                        ; $4ec1: $03
    inc bc                                        ; $4ec2: $03
    and e                                         ; $4ec3: $a3
    and e                                         ; $4ec4: $a3
    inc bc                                        ; $4ec5: $03
    inc bc                                        ; $4ec6: $03
    inc [hl]                                      ; $4ec7: $34
    db $e4                                        ; $4ec8: $e4
    ld h, $27                                     ; $4ec9: $26 $27
    inc a                                         ; $4ecb: $3c
    rst $20                                       ; $4ecc: $e7
    ld a, [hl+]                                   ; $4ecd: $2a
    dec hl                                        ; $4ece: $2b
    ld e, c                                       ; $4ecf: $59
    ld [$4241], a                                 ; $4ed0: $ea $41 $42
    ld e, e                                       ; $4ed3: $5b
    db $ed                                        ; $4ed4: $ed
    ld b, l                                       ; $4ed5: $45
    ld b, [hl]                                    ; $4ed6: $46
    ld bc, $0101                                  ; $4ed7: $01 $01 $01
    rlca                                          ; $4eda: $07
    rlca                                          ; $4edb: $07
    ld bc, $0701                                  ; $4edc: $01 $01 $07
    rlca                                          ; $4edf: $07
    ld [bc], a                                    ; $4ee0: $02
    ld [bc], a                                    ; $4ee1: $02
    rlca                                          ; $4ee2: $07
    rlca                                          ; $4ee3: $07
    ld [bc], a                                    ; $4ee4: $02
    ld bc, $5d07                                  ; $4ee5: $01 $07 $5d
    ldh a, [rOBP1]                                ; $4ee8: $f0 $49
    ld c, d                                       ; $4eea: $4a
    ld d, a                                       ; $4eeb: $57
    di                                            ; $4eec: $f3
    ld c, l                                       ; $4eed: $4d
    ld c, [hl]                                    ; $4eee: $4e
    inc [hl]                                      ; $4eef: $34
    db $e4                                        ; $4ef0: $e4
    ld h, $27                                     ; $4ef1: $26 $27
    inc a                                         ; $4ef3: $3c
    rst $20                                       ; $4ef4: $e7
    ld a, [hl+]                                   ; $4ef5: $2a
    dec hl                                        ; $4ef6: $2b
    rlca                                          ; $4ef7: $07
    ld [bc], a                                    ; $4ef8: $02
    ld bc, $0707                                  ; $4ef9: $01 $07 $07
    ld bc, $0702                                  ; $4efc: $01 $02 $07
    rlca                                          ; $4eff: $07
    ld [bc], a                                    ; $4f00: $02
    ld [bc], a                                    ; $4f01: $02
    rlca                                          ; $4f02: $07
    rlca                                          ; $4f03: $07
    ld bc, $0701                                  ; $4f04: $01 $01 $07
    rst $28                                       ; $4f07: $ef
    xor $d1                                       ; $4f08: $ee $d1
    pop de                                        ; $4f0a: $d1
    ld a, [c]                                     ; $4f0b: $f2
    pop af                                        ; $4f0c: $f1
    pop de                                        ; $4f0d: $d1
    pop de                                        ; $4f0e: $d1
    db $e3                                        ; $4f0f: $e3
    ld [c], a                                     ; $4f10: $e2
    pop de                                        ; $4f11: $d1
    pop de                                        ; $4f12: $d1
    and $e5                                       ; $4f13: $e6 $e5
    pop de                                        ; $4f15: $d1
    pop de                                        ; $4f16: $d1
    and e                                         ; $4f17: $a3
    and e                                         ; $4f18: $a3
    inc bc                                        ; $4f19: $03
    inc bc                                        ; $4f1a: $03
    and e                                         ; $4f1b: $a3
    and e                                         ; $4f1c: $a3
    inc bc                                        ; $4f1d: $03
    inc bc                                        ; $4f1e: $03
    and e                                         ; $4f1f: $a3
    and e                                         ; $4f20: $a3
    inc bc                                        ; $4f21: $03
    inc bc                                        ; $4f22: $03
    and e                                         ; $4f23: $a3
    and e                                         ; $4f24: $a3
    inc bc                                        ; $4f25: $03
    inc bc                                        ; $4f26: $03
    jp nz, $c3c2                                  ; $4f27: $c2 $c2 $c3

    call nz, $d1d1                                ; $4f2a: $c4 $d1 $d1
    pop de                                        ; $4f2d: $d1
    pop de                                        ; $4f2e: $d1
    pop de                                        ; $4f2f: $d1
    pop de                                        ; $4f30: $d1
    pop de                                        ; $4f31: $d1
    pop de                                        ; $4f32: $d1
    pop de                                        ; $4f33: $d1
    pop de                                        ; $4f34: $d1
    pop de                                        ; $4f35: $d1
    pop de                                        ; $4f36: $d1
    adc e                                         ; $4f37: $8b
    adc e                                         ; $4f38: $8b
    adc e                                         ; $4f39: $8b
    adc e                                         ; $4f3a: $8b
    add e                                         ; $4f3b: $83
    add e                                         ; $4f3c: $83
    add e                                         ; $4f3d: $83
    add e                                         ; $4f3e: $83
    inc bc                                        ; $4f3f: $03
    inc bc                                        ; $4f40: $03
    inc bc                                        ; $4f41: $03
    inc bc                                        ; $4f42: $03
    inc bc                                        ; $4f43: $03
    inc bc                                        ; $4f44: $03
    inc bc                                        ; $4f45: $03
    inc bc                                        ; $4f46: $03
    pop de                                        ; $4f47: $d1
    ret nc                                        ; $4f48: $d0

    pop de                                        ; $4f49: $d1
    pop de                                        ; $4f4a: $d1
    pop de                                        ; $4f4b: $d1
    pop de                                        ; $4f4c: $d1
    pop de                                        ; $4f4d: $d1
    pop de                                        ; $4f4e: $d1
    pop de                                        ; $4f4f: $d1
    pop de                                        ; $4f50: $d1
    pop de                                        ; $4f51: $d1
    pop de                                        ; $4f52: $d1
    pop de                                        ; $4f53: $d1
    pop de                                        ; $4f54: $d1
    pop de                                        ; $4f55: $d1
    pop de                                        ; $4f56: $d1
    xor e                                         ; $4f57: $ab
    xor e                                         ; $4f58: $ab
    inc bc                                        ; $4f59: $03
    inc bc                                        ; $4f5a: $03
    add e                                         ; $4f5b: $83
    add e                                         ; $4f5c: $83
    inc bc                                        ; $4f5d: $03
    inc bc                                        ; $4f5e: $03
    inc bc                                        ; $4f5f: $03
    inc bc                                        ; $4f60: $03
    inc bc                                        ; $4f61: $03
    inc bc                                        ; $4f62: $03
    inc bc                                        ; $4f63: $03
    inc bc                                        ; $4f64: $03
    inc bc                                        ; $4f65: $03
    inc bc                                        ; $4f66: $03
    pop de                                        ; $4f67: $d1
    pop de                                        ; $4f68: $d1
    add sp, -$17                                  ; $4f69: $e8 $e9
    pop de                                        ; $4f6b: $d1
    pop de                                        ; $4f6c: $d1
    db $eb                                        ; $4f6d: $eb
    db $ec                                        ; $4f6e: $ec
    pop de                                        ; $4f6f: $d1
    pop de                                        ; $4f70: $d1
    xor $ef                                       ; $4f71: $ee $ef
    pop de                                        ; $4f73: $d1
    pop de                                        ; $4f74: $d1
    pop af                                        ; $4f75: $f1
    ld a, [c]                                     ; $4f76: $f2
    inc bc                                        ; $4f77: $03
    inc bc                                        ; $4f78: $03
    add e                                         ; $4f79: $83
    add e                                         ; $4f7a: $83
    inc bc                                        ; $4f7b: $03
    inc bc                                        ; $4f7c: $03
    add e                                         ; $4f7d: $83
    add e                                         ; $4f7e: $83
    inc bc                                        ; $4f7f: $03
    inc bc                                        ; $4f80: $03
    add e                                         ; $4f81: $83
    add e                                         ; $4f82: $83
    inc bc                                        ; $4f83: $03
    inc bc                                        ; $4f84: $03
    add e                                         ; $4f85: $83
    add e                                         ; $4f86: $83
    jp z, $cccb                                   ; $4f87: $ca $cb $cc

    ld e, h                                       ; $4f8a: $5c
    call $cfce                                    ; $4f8b: $cd $ce $cf
    ld d, b                                       ; $4f8e: $50
    ld h, $27                                     ; $4f8f: $26 $27
    jr z, jr_087_4fbc                             ; $4f91: $28 $29

    ld a, [hl+]                                   ; $4f93: $2a
    dec hl                                        ; $4f94: $2b
    inc l                                         ; $4f95: $2c
    dec sp                                        ; $4f96: $3b
    rrca                                          ; $4f97: $0f
    add hl, bc                                    ; $4f98: $09
    add hl, bc                                    ; $4f99: $09
    ld bc, $090f                                  ; $4f9a: $01 $0f $09
    add hl, bc                                    ; $4f9d: $09
    ld [bc], a                                    ; $4f9e: $02
    rlca                                          ; $4f9f: $07
    ld bc, $0101                                  ; $4fa0: $01 $01 $01
    rlca                                          ; $4fa3: $07
    ld bc, $0101                                  ; $4fa4: $01 $01 $01
    ld e, l                                       ; $4fa7: $5d
    ldh a, [rOBP1]                                ; $4fa8: $f0 $49
    ld c, d                                       ; $4faa: $4a
    ld d, a                                       ; $4fab: $57
    di                                            ; $4fac: $f3
    ld c, l                                       ; $4fad: $4d
    ld c, [hl]                                    ; $4fae: $4e
    inc [hl]                                      ; $4faf: $34
    db $e4                                        ; $4fb0: $e4
    ld h, $27                                     ; $4fb1: $26 $27
    inc a                                         ; $4fb3: $3c
    rst $20                                       ; $4fb4: $e7
    ld a, [hl+]                                   ; $4fb5: $2a
    dec hl                                        ; $4fb6: $2b
    ld [bc], a                                    ; $4fb7: $02
    ld [bc], a                                    ; $4fb8: $02
    ld bc, $0201                                  ; $4fb9: $01 $01 $02

jr_087_4fbc:
    ld bc, $0101                                  ; $4fbc: $01 $01 $01
    ld [bc], a                                    ; $4fbf: $02
    ld bc, $0101                                  ; $4fc0: $01 $01 $01
    ld bc, $0202                                  ; $4fc3: $01 $02 $02
    ld [bc], a                                    ; $4fc6: $02
    ld c, e                                       ; $4fc7: $4b
    ld c, h                                       ; $4fc8: $4c
    ld d, l                                       ; $4fc9: $55
    ld d, [hl]                                    ; $4fca: $56
    ld c, a                                       ; $4fcb: $4f
    ld d, b                                       ; $4fcc: $50
    ld d, a                                       ; $4fcd: $57
    di                                            ; $4fce: $f3
    jr z, jr_087_4ffa                             ; $4fcf: $28 $29

    inc [hl]                                      ; $4fd1: $34
    db $e4                                        ; $4fd2: $e4
    inc l                                         ; $4fd3: $2c
    dec sp                                        ; $4fd4: $3b
    inc a                                         ; $4fd5: $3c
    rst $20                                       ; $4fd6: $e7
    ld bc, $0201                                  ; $4fd7: $01 $01 $02
    ld bc, $0101                                  ; $4fda: $01 $01 $01
    ld bc, $0201                                  ; $4fdd: $01 $01 $02
    ld [bc], a                                    ; $4fe0: $02
    ld bc, $0101                                  ; $4fe1: $01 $01 $01
    ld bc, $0101                                  ; $4fe4: $01 $01 $01
    rst $00                                       ; $4fe7: $c7
    ret z                                         ; $4fe8: $c8

    ret                                           ; $4fe9: $c9


    pop bc                                        ; $4fea: $c1
    pop de                                        ; $4feb: $d1
    pop de                                        ; $4fec: $d1
    pop de                                        ; $4fed: $d1
    ld [c], a                                     ; $4fee: $e2
    pop de                                        ; $4fef: $d1
    pop de                                        ; $4ff0: $d1
    pop de                                        ; $4ff1: $d1
    push hl                                       ; $4ff2: $e5
    pop de                                        ; $4ff3: $d1
    pop de                                        ; $4ff4: $d1
    pop de                                        ; $4ff5: $d1
    add sp, -$75                                  ; $4ff6: $e8 $8b
    adc e                                         ; $4ff8: $8b
    adc e                                         ; $4ff9: $8b

jr_087_4ffa:
    xor e                                         ; $4ffa: $ab
    add e                                         ; $4ffb: $83
    add e                                         ; $4ffc: $83
    add e                                         ; $4ffd: $83
    add e                                         ; $4ffe: $83
    inc bc                                        ; $4fff: $03
    inc bc                                        ; $5000: $03
    inc bc                                        ; $5001: $03
    inc bc                                        ; $5002: $03
    inc bc                                        ; $5003: $03
    inc bc                                        ; $5004: $03
    inc bc                                        ; $5005: $03
    inc bc                                        ; $5006: $03
    pop de                                        ; $5007: $d1
    pop de                                        ; $5008: $d1
    pop de                                        ; $5009: $d1
    db $eb                                        ; $500a: $eb
    pop de                                        ; $500b: $d1
    pop de                                        ; $500c: $d1
    pop de                                        ; $500d: $d1
    xor $d1                                       ; $500e: $ee $d1
    pop de                                        ; $5010: $d1
    pop de                                        ; $5011: $d1
    pop af                                        ; $5012: $f1
    pop de                                        ; $5013: $d1
    pop de                                        ; $5014: $d1
    pop de                                        ; $5015: $d1
    push hl                                       ; $5016: $e5
    inc bc                                        ; $5017: $03
    inc bc                                        ; $5018: $03
    inc bc                                        ; $5019: $03
    inc bc                                        ; $501a: $03
    inc bc                                        ; $501b: $03
    inc bc                                        ; $501c: $03
    inc bc                                        ; $501d: $03
    inc bc                                        ; $501e: $03
    inc bc                                        ; $501f: $03
    inc bc                                        ; $5020: $03
    inc bc                                        ; $5021: $03
    inc bc                                        ; $5022: $03
    inc bc                                        ; $5023: $03
    inc bc                                        ; $5024: $03
    inc bc                                        ; $5025: $03
    inc bc                                        ; $5026: $03
    pop de                                        ; $5027: $d1
    pop de                                        ; $5028: $d1
    pop de                                        ; $5029: $d1
    add sp, -$2f                                  ; $502a: $e8 $d1
    pop de                                        ; $502c: $d1
    pop de                                        ; $502d: $d1
    db $eb                                        ; $502e: $eb
    pop de                                        ; $502f: $d1
    pop de                                        ; $5030: $d1
    pop de                                        ; $5031: $d1
    xor $d1                                       ; $5032: $ee $d1
    pop de                                        ; $5034: $d1
    pop de                                        ; $5035: $d1
    pop af                                        ; $5036: $f1
    inc bc                                        ; $5037: $03
    inc bc                                        ; $5038: $03
    inc bc                                        ; $5039: $03
    inc bc                                        ; $503a: $03
    inc bc                                        ; $503b: $03
    inc bc                                        ; $503c: $03
    inc bc                                        ; $503d: $03
    inc bc                                        ; $503e: $03
    inc bc                                        ; $503f: $03
    inc bc                                        ; $5040: $03
    inc bc                                        ; $5041: $03
    inc bc                                        ; $5042: $03
    inc bc                                        ; $5043: $03
    inc bc                                        ; $5044: $03
    inc bc                                        ; $5045: $03
    inc bc                                        ; $5046: $03
    ld c, c                                       ; $5047: $49
    ld c, d                                       ; $5048: $4a
    ld c, e                                       ; $5049: $4b
    ld e, h                                       ; $504a: $5c
    ld c, l                                       ; $504b: $4d
    ld c, [hl]                                    ; $504c: $4e
    ld c, a                                       ; $504d: $4f
    ld d, b                                       ; $504e: $50
    ld h, $27                                     ; $504f: $26 $27
    jr z, @+$2b                                   ; $5051: $28 $29

    ld a, [hl+]                                   ; $5053: $2a
    dec hl                                        ; $5054: $2b
    inc l                                         ; $5055: $2c
    dec sp                                        ; $5056: $3b
    ld bc, $0101                                  ; $5057: $01 $01 $01
    ld [bc], a                                    ; $505a: $02
    ld bc, $0101                                  ; $505b: $01 $01 $01
    ld bc, $0101                                  ; $505e: $01 $01 $01
    ld bc, $0102                                  ; $5061: $01 $02 $01
    ld bc, $0201                                  ; $5064: $01 $01 $02
    ld e, l                                       ; $5067: $5d
    ldh a, [rOBP1]                                ; $5068: $f0 $49
    ld c, d                                       ; $506a: $4a
    ld d, a                                       ; $506b: $57
    di                                            ; $506c: $f3
    ld c, l                                       ; $506d: $4d
    ld c, [hl]                                    ; $506e: $4e
    inc [hl]                                      ; $506f: $34
    db $e4                                        ; $5070: $e4
    ld h, $27                                     ; $5071: $26 $27
    inc a                                         ; $5073: $3c
    rst $20                                       ; $5074: $e7
    ld a, [hl+]                                   ; $5075: $2a
    adc c                                         ; $5076: $89
    ld bc, $0201                                  ; $5077: $01 $01 $02
    ld bc, $0202                                  ; $507a: $01 $02 $02
    ld bc, $0201                                  ; $507d: $01 $01 $02
    ld bc, $0101                                  ; $5080: $01 $01 $01
    ld bc, $0101                                  ; $5083: $01 $01 $01
    add hl, bc                                    ; $5086: $09
    ld c, e                                       ; $5087: $4b
    ld e, h                                       ; $5088: $5c
    ld e, l                                       ; $5089: $5d
    ldh a, [rVBK]                                 ; $508a: $f0 $4f
    ld d, b                                       ; $508c: $50
    ld d, a                                       ; $508d: $57
    di                                            ; $508e: $f3
    adc [hl]                                      ; $508f: $8e
    adc a                                         ; $5090: $8f
    inc [hl]                                      ; $5091: $34
    db $e4                                        ; $5092: $e4
    sub b                                         ; $5093: $90
    sub c                                         ; $5094: $91
    sub d                                         ; $5095: $92
    rst $20                                       ; $5096: $e7
    ld bc, $0101                                  ; $5097: $01 $01 $01
    rlca                                          ; $509a: $07
    ld bc, $0101                                  ; $509b: $01 $01 $01
    rlca                                          ; $509e: $07
    add hl, bc                                    ; $509f: $09
    add hl, bc                                    ; $50a0: $09
    ld bc, $0e07                                  ; $50a1: $01 $07 $0e
    ld c, $09                                     ; $50a4: $0e $09
    rlca                                          ; $50a6: $07
    ret nz                                        ; $50a7: $c0

    ld b, d                                       ; $50a8: $42
    ld b, e                                       ; $50a9: $43
    ld e, b                                       ; $50aa: $58
    db $e3                                        ; $50ab: $e3
    ld b, [hl]                                    ; $50ac: $46
    ld b, a                                       ; $50ad: $47
    ld e, d                                       ; $50ae: $5a
    and $4a                                       ; $50af: $e6 $4a
    ld c, e                                       ; $50b1: $4b
    ld e, h                                       ; $50b2: $5c
    jp hl                                         ; $50b3: $e9


    ld c, [hl]                                    ; $50b4: $4e
    ld c, a                                       ; $50b5: $4f
    ld d, b                                       ; $50b6: $50
    xor e                                         ; $50b7: $ab
    ld bc, $0101                                  ; $50b8: $01 $01 $01
    add e                                         ; $50bb: $83
    rlca                                          ; $50bc: $07
    ld [bc], a                                    ; $50bd: $02
    ld bc, $0703                                  ; $50be: $01 $03 $07
    ld [bc], a                                    ; $50c1: $02
    ld bc, $0703                                  ; $50c2: $01 $03 $07
    ld [bc], a                                    ; $50c5: $02
    ld [bc], a                                    ; $50c6: $02
    ld e, c                                       ; $50c7: $59
    ret nz                                        ; $50c8: $c0

    pop bc                                        ; $50c9: $c1
    jp nz, $e35b                                  ; $50ca: $c2 $5b $e3

    ld [c], a                                     ; $50cd: $e2
    pop de                                        ; $50ce: $d1
    ld e, l                                       ; $50cf: $5d
    and $e5                                       ; $50d0: $e6 $e5
    pop de                                        ; $50d2: $d1
    ld d, a                                       ; $50d3: $57
    jp hl                                         ; $50d4: $e9


    add sp, -$2f                                  ; $50d5: $e8 $d1
    ld bc, $8b8b                                  ; $50d7: $01 $8b $8b
    adc e                                         ; $50da: $8b
    rlca                                          ; $50db: $07
    and e                                         ; $50dc: $a3
    and e                                         ; $50dd: $a3
    add e                                         ; $50de: $83
    rlca                                          ; $50df: $07
    inc hl                                        ; $50e0: $23
    inc hl                                        ; $50e1: $23
    inc bc                                        ; $50e2: $03
    rlca                                          ; $50e3: $07
    inc hl                                        ; $50e4: $23
    inc hl                                        ; $50e5: $23
    inc bc                                        ; $50e6: $03
    jp $c8c4                                      ; $50e7: $c3 $c4 $c8


    ret                                           ; $50ea: $c9


    pop de                                        ; $50eb: $d1
    pop de                                        ; $50ec: $d1
    pop de                                        ; $50ed: $d1
    pop de                                        ; $50ee: $d1
    pop de                                        ; $50ef: $d1
    pop de                                        ; $50f0: $d1
    pop de                                        ; $50f1: $d1
    pop de                                        ; $50f2: $d1
    pop de                                        ; $50f3: $d1
    pop de                                        ; $50f4: $d1
    pop de                                        ; $50f5: $d1
    pop de                                        ; $50f6: $d1
    adc e                                         ; $50f7: $8b
    adc e                                         ; $50f8: $8b
    adc e                                         ; $50f9: $8b
    adc e                                         ; $50fa: $8b
    add e                                         ; $50fb: $83
    add e                                         ; $50fc: $83
    add e                                         ; $50fd: $83
    add e                                         ; $50fe: $83
    inc bc                                        ; $50ff: $03
    inc bc                                        ; $5100: $03
    inc bc                                        ; $5101: $03
    inc bc                                        ; $5102: $03
    inc bc                                        ; $5103: $03
    inc bc                                        ; $5104: $03
    inc bc                                        ; $5105: $03
    inc bc                                        ; $5106: $03
    pop de                                        ; $5107: $d1
    ret nc                                        ; $5108: $d0

    pop de                                        ; $5109: $d1
    pop de                                        ; $510a: $d1
    pop de                                        ; $510b: $d1
    pop de                                        ; $510c: $d1
    pop de                                        ; $510d: $d1
    pop de                                        ; $510e: $d1
    pop de                                        ; $510f: $d1
    pop de                                        ; $5110: $d1
    pop de                                        ; $5111: $d1
    jp nc, $d1d1                                  ; $5112: $d2 $d1 $d1

    pop de                                        ; $5115: $d1
    call nc, $abab                                ; $5116: $d4 $ab $ab
    inc bc                                        ; $5119: $03
    inc bc                                        ; $511a: $03
    add e                                         ; $511b: $83
    add e                                         ; $511c: $83
    inc bc                                        ; $511d: $03
    inc bc                                        ; $511e: $03
    inc bc                                        ; $511f: $03
    inc bc                                        ; $5120: $03
    inc bc                                        ; $5121: $03
    inc bc                                        ; $5122: $03
    inc bc                                        ; $5123: $03
    inc bc                                        ; $5124: $03
    inc bc                                        ; $5125: $03
    inc bc                                        ; $5126: $03
    db $ec                                        ; $5127: $ec
    daa                                           ; $5128: $27
    jr z, jr_087_5154                             ; $5129: $28 $29

    rst $28                                       ; $512b: $ef
    dec hl                                        ; $512c: $2b
    inc l                                         ; $512d: $2c
    dec sp                                        ; $512e: $3b
    ld a, [c]                                     ; $512f: $f2
    ld b, d                                       ; $5130: $42
    ld b, e                                       ; $5131: $43
    ld e, b                                       ; $5132: $58
    and $bc                                       ; $5133: $e6 $bc
    cp l                                          ; $5135: $bd
    ld e, d                                       ; $5136: $5a
    inc bc                                        ; $5137: $03
    rlca                                          ; $5138: $07
    ld bc, $0302                                  ; $5139: $01 $02 $03
    rlca                                          ; $513c: $07
    ld [bc], a                                    ; $513d: $02
    ld bc, $0703                                  ; $513e: $01 $03 $07
    ld [bc], a                                    ; $5141: $02
    ld bc, $0f03                                  ; $5142: $01 $03 $0f
    ld a, [bc]                                    ; $5145: $0a
    ld bc, $ec34                                  ; $5146: $01 $34 $ec
    db $eb                                        ; $5149: $eb
    pop de                                        ; $514a: $d1
    inc a                                         ; $514b: $3c
    rst $28                                       ; $514c: $ef
    xor $d1                                       ; $514d: $ee $d1
    ld e, c                                       ; $514f: $59
    ld a, [c]                                     ; $5150: $f2
    pop af                                        ; $5151: $f1
    pop de                                        ; $5152: $d1
    ld e, e                                       ; $5153: $5b

jr_087_5154:
    db $e3                                        ; $5154: $e3
    ld [c], a                                     ; $5155: $e2
    pop de                                        ; $5156: $d1
    rlca                                          ; $5157: $07
    inc hl                                        ; $5158: $23
    inc hl                                        ; $5159: $23
    inc bc                                        ; $515a: $03
    rlca                                          ; $515b: $07
    inc hl                                        ; $515c: $23
    inc hl                                        ; $515d: $23
    inc bc                                        ; $515e: $03
    rlca                                          ; $515f: $07
    inc hl                                        ; $5160: $23
    inc hl                                        ; $5161: $23
    inc bc                                        ; $5162: $03
    rlca                                          ; $5163: $07
    inc hl                                        ; $5164: $23
    inc hl                                        ; $5165: $23
    inc bc                                        ; $5166: $03
    jp hl                                         ; $5167: $e9


    set 1, h                                      ; $5168: $cb $cc
    ld e, h                                       ; $516a: $5c
    db $ec                                        ; $516b: $ec
    adc $cf                                       ; $516c: $ce $cf
    ld d, b                                       ; $516e: $50
    rst $28                                       ; $516f: $ef
    daa                                           ; $5170: $27
    jr z, jr_087_519c                             ; $5171: $28 $29

    ld a, [c]                                     ; $5173: $f2
    dec hl                                        ; $5174: $2b
    inc l                                         ; $5175: $2c
    dec sp                                        ; $5176: $3b
    inc bc                                        ; $5177: $03
    rrca                                          ; $5178: $0f
    ld a, [bc]                                    ; $5179: $0a
    ld bc, $0f03                                  ; $517a: $01 $03 $0f
    ld a, [bc]                                    ; $517d: $0a
    ld [bc], a                                    ; $517e: $02
    inc bc                                        ; $517f: $03
    rlca                                          ; $5180: $07
    ld bc, $0302                                  ; $5181: $01 $02 $03
    rlca                                          ; $5184: $07
    ld [bc], a                                    ; $5185: $02
    ld [bc], a                                    ; $5186: $02
    ld e, l                                       ; $5187: $5d
    and $e5                                       ; $5188: $e6 $e5
    pop de                                        ; $518a: $d1
    ld d, a                                       ; $518b: $57
    jp hl                                         ; $518c: $e9


    add sp, -$2f                                  ; $518d: $e8 $d1
    inc [hl]                                      ; $518f: $34
    db $ec                                        ; $5190: $ec
    db $eb                                        ; $5191: $eb
    pop de                                        ; $5192: $d1
    inc a                                         ; $5193: $3c
    rst $28                                       ; $5194: $ef
    xor $d1                                       ; $5195: $ee $d1
    rlca                                          ; $5197: $07
    inc hl                                        ; $5198: $23
    inc hl                                        ; $5199: $23
    inc bc                                        ; $519a: $03
    rlca                                          ; $519b: $07

jr_087_519c:
    inc hl                                        ; $519c: $23
    inc hl                                        ; $519d: $23
    inc bc                                        ; $519e: $03
    rlca                                          ; $519f: $07
    inc hl                                        ; $51a0: $23
    inc hl                                        ; $51a1: $23
    inc bc                                        ; $51a2: $03
    rlca                                          ; $51a3: $07
    inc hl                                        ; $51a4: $23
    inc hl                                        ; $51a5: $23
    inc bc                                        ; $51a6: $03
    pop de                                        ; $51a7: $d1
    pop de                                        ; $51a8: $d1
    xor $ef                                       ; $51a9: $ee $ef
    pop de                                        ; $51ab: $d1
    pop de                                        ; $51ac: $d1
    pop af                                        ; $51ad: $f1
    ld a, [c]                                     ; $51ae: $f2
    pop de                                        ; $51af: $d1
    pop de                                        ; $51b0: $d1
    ret nc                                        ; $51b1: $d0

    pop de                                        ; $51b2: $d1
    pop de                                        ; $51b3: $d1
    pop de                                        ; $51b4: $d1
    pop de                                        ; $51b5: $d1
    pop de                                        ; $51b6: $d1
    inc bc                                        ; $51b7: $03
    inc bc                                        ; $51b8: $03
    add e                                         ; $51b9: $83
    add e                                         ; $51ba: $83
    inc bc                                        ; $51bb: $03
    inc bc                                        ; $51bc: $03
    add e                                         ; $51bd: $83
    add e                                         ; $51be: $83
    inc bc                                        ; $51bf: $03
    inc bc                                        ; $51c0: $03
    adc e                                         ; $51c1: $8b
    adc e                                         ; $51c2: $8b
    inc bc                                        ; $51c3: $03
    inc bc                                        ; $51c4: $03
    add e                                         ; $51c5: $83
    add e                                         ; $51c6: $83
    ld c, c                                       ; $51c7: $49
    ld c, d                                       ; $51c8: $4a
    ld c, e                                       ; $51c9: $4b
    ld e, h                                       ; $51ca: $5c
    ld c, l                                       ; $51cb: $4d
    ld c, [hl]                                    ; $51cc: $4e
    ld c, a                                       ; $51cd: $4f
    ld d, b                                       ; $51ce: $50
    jp nz, $c4c3                                  ; $51cf: $c2 $c3 $c4

    push bc                                       ; $51d2: $c5
    pop de                                        ; $51d3: $d1
    pop de                                        ; $51d4: $d1
    pop de                                        ; $51d5: $d1
    pop de                                        ; $51d6: $d1
    rlca                                          ; $51d7: $07
    ld bc, $0101                                  ; $51d8: $01 $01 $01
    rlca                                          ; $51db: $07
    ld bc, $0201                                  ; $51dc: $01 $01 $02
    adc e                                         ; $51df: $8b
    adc e                                         ; $51e0: $8b
    adc e                                         ; $51e1: $8b
    adc e                                         ; $51e2: $8b
    add e                                         ; $51e3: $83
    add e                                         ; $51e4: $83
    add e                                         ; $51e5: $83
    add e                                         ; $51e6: $83
    ld e, l                                       ; $51e7: $5d
    ldh a, [rOBP1]                                ; $51e8: $f0 $49
    ld c, d                                       ; $51ea: $4a
    ld d, a                                       ; $51eb: $57
    di                                            ; $51ec: $f3
    ld c, l                                       ; $51ed: $4d
    ld c, [hl]                                    ; $51ee: $4e
    add $c7                                       ; $51ef: $c6 $c7
    ret z                                         ; $51f1: $c8

    ret                                           ; $51f2: $c9


    pop de                                        ; $51f3: $d1
    pop de                                        ; $51f4: $d1
    pop de                                        ; $51f5: $d1
    pop de                                        ; $51f6: $d1
    ld bc, $0101                                  ; $51f7: $01 $01 $01
    ld bc, $0202                                  ; $51fa: $01 $02 $02
    ld [bc], a                                    ; $51fd: $02
    ld [bc], a                                    ; $51fe: $02
    adc e                                         ; $51ff: $8b
    adc e                                         ; $5200: $8b
    adc e                                         ; $5201: $8b
    adc e                                         ; $5202: $8b
    add e                                         ; $5203: $83
    add e                                         ; $5204: $83
    add e                                         ; $5205: $83
    add e                                         ; $5206: $83
    pop de                                        ; $5207: $d1
    pop de                                        ; $5208: $d1
    pop de                                        ; $5209: $d1
    pop de                                        ; $520a: $d1
    pop de                                        ; $520b: $d1
    pop de                                        ; $520c: $d1
    pop de                                        ; $520d: $d1
    pop de                                        ; $520e: $d1
    db $f4                                        ; $520f: $f4
    inc bc                                        ; $5210: $03
    rla                                           ; $5211: $17
    push af                                       ; $5212: $f5
    rlca                                          ; $5213: $07
    ld b, $19                                     ; $5214: $06 $19
    ld [hl], l                                    ; $5216: $75
    inc bc                                        ; $5217: $03
    inc bc                                        ; $5218: $03
    inc bc                                        ; $5219: $03
    inc bc                                        ; $521a: $03
    inc bc                                        ; $521b: $03
    inc bc                                        ; $521c: $03
    inc bc                                        ; $521d: $03
    inc bc                                        ; $521e: $03
    ld [bc], a                                    ; $521f: $02
    inc bc                                        ; $5220: $03
    inc bc                                        ; $5221: $03
    inc bc                                        ; $5222: $03
    ld [bc], a                                    ; $5223: $02
    inc bc                                        ; $5224: $03
    inc bc                                        ; $5225: $03
    inc bc                                        ; $5226: $03
    pop de                                        ; $5227: $d1
    pop de                                        ; $5228: $d1
    pop de                                        ; $5229: $d1
    pop de                                        ; $522a: $d1
    pop de                                        ; $522b: $d1
    pop de                                        ; $522c: $d1
    pop de                                        ; $522d: $d1
    pop de                                        ; $522e: $d1
    ld [hl], d                                    ; $522f: $72
    ld [hl], e                                    ; $5230: $73
    ld a, a                                       ; $5231: $7f
    or $76                                        ; $5232: $f6 $76
    ld [hl], a                                    ; $5234: $77
    add b                                         ; $5235: $80
    db $10                                        ; $5236: $10
    inc bc                                        ; $5237: $03
    inc bc                                        ; $5238: $03
    inc bc                                        ; $5239: $03
    inc bc                                        ; $523a: $03
    inc bc                                        ; $523b: $03
    inc bc                                        ; $523c: $03
    inc bc                                        ; $523d: $03
    inc bc                                        ; $523e: $03
    inc bc                                        ; $523f: $03
    inc bc                                        ; $5240: $03
    inc bc                                        ; $5241: $03
    inc bc                                        ; $5242: $03
    inc bc                                        ; $5243: $03
    inc bc                                        ; $5244: $03
    dec bc                                        ; $5245: $0b
    inc bc                                        ; $5246: $03
    rlca                                          ; $5247: $07
    ld a, [bc]                                    ; $5248: $0a
    dec de                                        ; $5249: $1b
    ld a, c                                       ; $524a: $79
    rlca                                          ; $524b: $07
    dec c                                         ; $524c: $0d
    dec e                                         ; $524d: $1d
    ld a, h                                       ; $524e: $7c
    rlca                                          ; $524f: $07
    ld l, $3d                                     ; $5250: $2e $3d
    sub h                                         ; $5252: $94
    ld [hl+], a                                   ; $5253: $22
    ld sp, $233f                                  ; $5254: $31 $3f $23
    ld [bc], a                                    ; $5257: $02
    inc bc                                        ; $5258: $03
    inc bc                                        ; $5259: $03
    inc bc                                        ; $525a: $03
    ld [bc], a                                    ; $525b: $02
    inc bc                                        ; $525c: $03
    inc bc                                        ; $525d: $03
    inc bc                                        ; $525e: $03
    ld [bc], a                                    ; $525f: $02
    inc bc                                        ; $5260: $03
    inc bc                                        ; $5261: $03
    dec bc                                        ; $5262: $0b
    ld [bc], a                                    ; $5263: $02
    inc bc                                        ; $5264: $03
    inc bc                                        ; $5265: $03
    inc bc                                        ; $5266: $03
    ld a, d                                       ; $5267: $7a
    ld a, e                                       ; $5268: $7b
    add c                                         ; $5269: $81
    ld [de], a                                    ; $526a: $12
    ld a, l                                       ; $526b: $7d
    ld a, [hl]                                    ; $526c: $7e
    add d                                         ; $526d: $82
    dec d                                         ; $526e: $15
    sub l                                         ; $526f: $95
    sub [hl]                                      ; $5270: $96
    sub a                                         ; $5271: $97
    jr c, jr_087_5298                             ; $5272: $38 $24

    dec h                                         ; $5274: $25
    ld sp, $0324                                  ; $5275: $31 $24 $03
    inc bc                                        ; $5278: $03
    dec bc                                        ; $5279: $0b
    inc bc                                        ; $527a: $03
    inc bc                                        ; $527b: $03
    inc bc                                        ; $527c: $03
    dec bc                                        ; $527d: $0b
    inc bc                                        ; $527e: $03
    dec bc                                        ; $527f: $0b
    dec bc                                        ; $5280: $0b
    dec bc                                        ; $5281: $0b
    inc bc                                        ; $5282: $03
    inc bc                                        ; $5283: $03
    inc bc                                        ; $5284: $03
    inc bc                                        ; $5285: $03
    inc bc                                        ; $5286: $03
    ld e, l                                       ; $5287: $5d
    ldh a, [rOBP1]                                ; $5288: $f0 $49
    ld c, d                                       ; $528a: $4a
    ld d, a                                       ; $528b: $57
    di                                            ; $528c: $f3
    ld c, l                                       ; $528d: $4d
    ld c, [hl]                                    ; $528e: $4e
    inc [hl]                                      ; $528f: $34
    db $e4                                        ; $5290: $e4
    ld h, $27                                     ; $5291: $26 $27
    inc a                                         ; $5293: $3c
    rst $20                                       ; $5294: $e7
    ld a, [hl+]                                   ; $5295: $2a
    dec hl                                        ; $5296: $2b
    dec b                                         ; $5297: $05

jr_087_5298:
    dec b                                         ; $5298: $05
    dec b                                         ; $5299: $05
    dec b                                         ; $529a: $05
    rlca                                          ; $529b: $07
    rlca                                          ; $529c: $07
    rlca                                          ; $529d: $07
    rlca                                          ; $529e: $07
    rlca                                          ; $529f: $07
    ld bc, $0201                                  ; $52a0: $01 $01 $02
    rlca                                          ; $52a3: $07
    ld bc, $0101                                  ; $52a4: $01 $01 $01
    ld c, e                                       ; $52a7: $4b
    ld e, h                                       ; $52a8: $5c
    ld e, l                                       ; $52a9: $5d
    ldh a, [rVBK]                                 ; $52aa: $f0 $4f
    ld d, b                                       ; $52ac: $50
    ld d, a                                       ; $52ad: $57
    di                                            ; $52ae: $f3
    jr z, jr_087_52da                             ; $52af: $28 $29

    inc [hl]                                      ; $52b1: $34
    db $e4                                        ; $52b2: $e4
    inc l                                         ; $52b3: $2c
    dec sp                                        ; $52b4: $3b
    inc a                                         ; $52b5: $3c
    rst $20                                       ; $52b6: $e7
    dec b                                         ; $52b7: $05
    dec b                                         ; $52b8: $05
    dec b                                         ; $52b9: $05
    dec b                                         ; $52ba: $05
    rlca                                          ; $52bb: $07
    rlca                                          ; $52bc: $07
    rlca                                          ; $52bd: $07
    rlca                                          ; $52be: $07
    ld [bc], a                                    ; $52bf: $02
    ld [bc], a                                    ; $52c0: $02
    ld bc, $0201                                  ; $52c1: $01 $01 $02
    ld [bc], a                                    ; $52c4: $02
    ld [bc], a                                    ; $52c5: $02
    ld bc, $4a49                                  ; $52c6: $01 $49 $4a
    ld c, e                                       ; $52c9: $4b
    ld e, h                                       ; $52ca: $5c
    ld c, l                                       ; $52cb: $4d
    ld c, [hl]                                    ; $52cc: $4e
    ld c, a                                       ; $52cd: $4f
    ld d, b                                       ; $52ce: $50
    ld h, $27                                     ; $52cf: $26 $27
    jr z, jr_087_52fc                             ; $52d1: $28 $29

    ld a, [hl+]                                   ; $52d3: $2a
    dec hl                                        ; $52d4: $2b
    inc l                                         ; $52d5: $2c
    dec l                                         ; $52d6: $2d
    dec b                                         ; $52d7: $05
    dec b                                         ; $52d8: $05
    dec b                                         ; $52d9: $05

jr_087_52da:
    dec b                                         ; $52da: $05
    rlca                                          ; $52db: $07
    rlca                                          ; $52dc: $07
    rlca                                          ; $52dd: $07
    rlca                                          ; $52de: $07
    ld bc, $0201                                  ; $52df: $01 $01 $02
    ld [bc], a                                    ; $52e2: $02
    ld bc, $0202                                  ; $52e3: $01 $02 $02
    ld bc, $f05d                                  ; $52e6: $01 $5d $f0
    ld c, c                                       ; $52e9: $49
    ld c, d                                       ; $52ea: $4a
    ld d, a                                       ; $52eb: $57
    di                                            ; $52ec: $f3
    ld c, l                                       ; $52ed: $4d
    ld c, [hl]                                    ; $52ee: $4e
    inc [hl]                                      ; $52ef: $34
    db $e4                                        ; $52f0: $e4
    ld h, $27                                     ; $52f1: $26 $27
    dec [hl]                                      ; $52f3: $35
    ld [hl], $2a                                  ; $52f4: $36 $2a
    adc c                                         ; $52f6: $89
    dec b                                         ; $52f7: $05
    dec b                                         ; $52f8: $05
    dec b                                         ; $52f9: $05
    dec b                                         ; $52fa: $05
    rlca                                          ; $52fb: $07

jr_087_52fc:
    rlca                                          ; $52fc: $07
    rlca                                          ; $52fd: $07
    rlca                                          ; $52fe: $07
    ld [bc], a                                    ; $52ff: $02
    ld bc, $0101                                  ; $5300: $01 $01 $01
    ld bc, $0101                                  ; $5303: $01 $01 $01
    add hl, bc                                    ; $5306: $09
    ld c, e                                       ; $5307: $4b
    ld c, h                                       ; $5308: $4c
    ld d, l                                       ; $5309: $55
    ld d, [hl]                                    ; $530a: $56
    ld c, a                                       ; $530b: $4f
    ld d, b                                       ; $530c: $50
    ld d, a                                       ; $530d: $57
    di                                            ; $530e: $f3
    jp nz, $c4c3                                  ; $530f: $c2 $c3 $c4

    push bc                                       ; $5312: $c5
    pop de                                        ; $5313: $d1
    pop de                                        ; $5314: $d1
    pop de                                        ; $5315: $d1
    pop de                                        ; $5316: $d1
    ld [bc], a                                    ; $5317: $02
    ld [bc], a                                    ; $5318: $02
    ld [bc], a                                    ; $5319: $02
    ld bc, $0101                                  ; $531a: $01 $01 $01
    ld bc, $8b01                                  ; $531d: $01 $01 $8b
    adc e                                         ; $5320: $8b
    adc e                                         ; $5321: $8b
    adc e                                         ; $5322: $8b
    add e                                         ; $5323: $83
    add e                                         ; $5324: $83
    add e                                         ; $5325: $83
    add e                                         ; $5326: $83
    ld c, c                                       ; $5327: $49
    ld c, d                                       ; $5328: $4a
    ld c, e                                       ; $5329: $4b
    ld e, h                                       ; $532a: $5c
    ld c, l                                       ; $532b: $4d
    ld c, [hl]                                    ; $532c: $4e
    ld c, a                                       ; $532d: $4f
    ld d, b                                       ; $532e: $50
    jp nz, $c4c3                                  ; $532f: $c2 $c3 $c4

    push bc                                       ; $5332: $c5
    pop de                                        ; $5333: $d1
    pop de                                        ; $5334: $d1
    pop de                                        ; $5335: $d1
    pop de                                        ; $5336: $d1
    ld bc, $0202                                  ; $5337: $01 $02 $02
    ld bc, $0202                                  ; $533a: $01 $02 $02
    ld bc, $8b02                                  ; $533d: $01 $02 $8b
    adc e                                         ; $5340: $8b
    adc e                                         ; $5341: $8b
    adc e                                         ; $5342: $8b
    add e                                         ; $5343: $83
    add e                                         ; $5344: $83
    add e                                         ; $5345: $83
    add e                                         ; $5346: $83
    ld e, l                                       ; $5347: $5d
    ldh a, [$ca]                                  ; $5348: $f0 $ca
    sbc d                                         ; $534a: $9a
    ld d, a                                       ; $534b: $57
    di                                            ; $534c: $f3
    call $c6ce                                    ; $534d: $cd $ce $c6
    rst $00                                       ; $5350: $c7
    ret z                                         ; $5351: $c8

    ret                                           ; $5352: $c9


    pop de                                        ; $5353: $d1
    pop de                                        ; $5354: $d1
    pop de                                        ; $5355: $d1
    pop de                                        ; $5356: $d1
    ld bc, $0901                                  ; $5357: $01 $01 $09
    add hl, bc                                    ; $535a: $09
    ld [bc], a                                    ; $535b: $02
    ld [bc], a                                    ; $535c: $02
    ld a, [bc]                                    ; $535d: $0a
    ld a, [bc]                                    ; $535e: $0a
    adc e                                         ; $535f: $8b
    adc e                                         ; $5360: $8b
    adc e                                         ; $5361: $8b
    adc e                                         ; $5362: $8b
    add e                                         ; $5363: $83
    add e                                         ; $5364: $83
    add e                                         ; $5365: $83
    add e                                         ; $5366: $83
    and d                                         ; $5367: $a2
    and e                                         ; $5368: $a3
    and h                                         ; $5369: $a4
    and l                                         ; $536a: $a5
    ld c, a                                       ; $536b: $4f
    and [hl]                                      ; $536c: $a6
    and a                                         ; $536d: $a7
    di                                            ; $536e: $f3
    pop bc                                        ; $536f: $c1
    ret nz                                        ; $5370: $c0

    inc [hl]                                      ; $5371: $34
    db $e4                                        ; $5372: $e4
    ld [c], a                                     ; $5373: $e2
    db $e3                                        ; $5374: $e3
    dec [hl]                                      ; $5375: $35
    ld [hl], $0e                                  ; $5376: $36 $0e
    ld c, $0e                                     ; $5378: $0e $0e
    add hl, bc                                    ; $537a: $09
    ld bc, $0909                                  ; $537b: $01 $09 $09
    ld bc, $abab                                  ; $537e: $01 $ab $ab
    ld bc, $8301                                  ; $5381: $01 $01 $83
    add e                                         ; $5384: $83
    rlca                                          ; $5385: $07
    ld [bc], a                                    ; $5386: $02
    pop de                                        ; $5387: $d1
    pop de                                        ; $5388: $d1
    pop de                                        ; $5389: $d1
    pop de                                        ; $538a: $d1
    pop de                                        ; $538b: $d1

jr_087_538c:
    pop de                                        ; $538c: $d1
    pop de                                        ; $538d: $d1
    pop de                                        ; $538e: $d1
    db $f4                                        ; $538f: $f4
    inc bc                                        ; $5390: $03
    rla                                           ; $5391: $17
    jr jr_087_538c                                ; $5392: $18 $f8

    ld b, $19                                     ; $5394: $06 $19
    ld a, [de]                                    ; $5396: $1a
    inc bc                                        ; $5397: $03
    inc bc                                        ; $5398: $03
    inc bc                                        ; $5399: $03
    inc bc                                        ; $539a: $03
    inc bc                                        ; $539b: $03
    inc bc                                        ; $539c: $03
    inc bc                                        ; $539d: $03
    inc bc                                        ; $539e: $03
    ld [bc], a                                    ; $539f: $02
    inc bc                                        ; $53a0: $03
    inc bc                                        ; $53a1: $03
    inc bc                                        ; $53a2: $03
    ld [bc], a                                    ; $53a3: $02
    inc bc                                        ; $53a4: $03
    inc bc                                        ; $53a5: $03
    inc bc                                        ; $53a6: $03
    pop de                                        ; $53a7: $d1
    pop de                                        ; $53a8: $d1
    pop de                                        ; $53a9: $d1
    pop de                                        ; $53aa: $d1
    pop de                                        ; $53ab: $d1
    pop de                                        ; $53ac: $d1
    pop de                                        ; $53ad: $d1
    pop de                                        ; $53ae: $d1
    db $d3                                        ; $53af: $d3
    ld e, [hl]                                    ; $53b0: $5e
    push af                                       ; $53b1: $f5
    or $d5                                        ; $53b2: $f6 $d5
    ld h, b                                       ; $53b4: $60
    ld sp, hl                                     ; $53b5: $f9
    ld a, [$0303]                                 ; $53b6: $fa $03 $03
    inc bc                                        ; $53b9: $03
    inc bc                                        ; $53ba: $03
    inc bc                                        ; $53bb: $03
    inc bc                                        ; $53bc: $03
    inc bc                                        ; $53bd: $03
    inc bc                                        ; $53be: $03
    inc bc                                        ; $53bf: $03
    inc bc                                        ; $53c0: $03
    inc bc                                        ; $53c1: $03
    inc bc                                        ; $53c2: $03
    inc bc                                        ; $53c3: $03
    inc bc                                        ; $53c4: $03
    inc bc                                        ; $53c5: $03
    inc bc                                        ; $53c6: $03
    pop de                                        ; $53c7: $d1
    pop de                                        ; $53c8: $d1
    pop de                                        ; $53c9: $d1
    pop de                                        ; $53ca: $d1
    pop de                                        ; $53cb: $d1
    pop de                                        ; $53cc: $d1
    pop de                                        ; $53cd: $d1
    pop de                                        ; $53ce: $d1

jr_087_53cf:
    rst $30                                       ; $53cf: $f7
    inc bc                                        ; $53d0: $03
    db $f4                                        ; $53d1: $f4
    jr jr_087_53cf                                ; $53d2: $18 $fb

    ld b, $07                                     ; $53d4: $06 $07
    ld a, [de]                                    ; $53d6: $1a
    inc bc                                        ; $53d7: $03
    inc bc                                        ; $53d8: $03
    inc bc                                        ; $53d9: $03
    inc bc                                        ; $53da: $03
    inc bc                                        ; $53db: $03
    inc bc                                        ; $53dc: $03
    inc bc                                        ; $53dd: $03
    inc bc                                        ; $53de: $03
    inc bc                                        ; $53df: $03
    inc bc                                        ; $53e0: $03
    ld [bc], a                                    ; $53e1: $02
    inc bc                                        ; $53e2: $03
    inc bc                                        ; $53e3: $03
    inc bc                                        ; $53e4: $03
    ld [bc], a                                    ; $53e5: $02
    inc bc                                        ; $53e6: $03
    push hl                                       ; $53e7: $e5
    and $51                                       ; $53e8: $e6 $51
    ld d, d                                       ; $53ea: $52
    add sp, -$17                                  ; $53eb: $e8 $e9
    ld d, e                                       ; $53ed: $53
    ld d, h                                       ; $53ee: $54
    or l                                          ; $53ef: $b5
    db $e3                                        ; $53f0: $e3
    ld d, l                                       ; $53f1: $55
    ld d, [hl]                                    ; $53f2: $56
    or [hl]                                       ; $53f3: $b6
    and $57                                       ; $53f4: $e6 $57
    di                                            ; $53f6: $f3
    inc bc                                        ; $53f7: $03
    inc bc                                        ; $53f8: $03
    rlca                                          ; $53f9: $07
    ld bc, $0303                                  ; $53fa: $01 $03 $03
    rlca                                          ; $53fd: $07
    ld bc, $030b                                  ; $53fe: $01 $0b $03
    rlca                                          ; $5401: $07
    ld [bc], a                                    ; $5402: $02
    dec bc                                        ; $5403: $0b
    inc bc                                        ; $5404: $03
    rlca                                          ; $5405: $07
    ld [bc], a                                    ; $5406: $02
    db $fc                                        ; $5407: $fc
    ld a, [bc]                                    ; $5408: $0a
    dec de                                        ; $5409: $1b
    inc de                                        ; $540a: $13
    rst $38                                       ; $540b: $ff
    dec c                                         ; $540c: $0d
    dec e                                         ; $540d: $1d
    ld d, $07                                     ; $540e: $16 $07
    ld l, $3d                                     ; $5410: $2e $3d
    ld a, $22                                     ; $5412: $3e $22
    ld sp, $403f                                  ; $5414: $31 $3f $40
    ld [bc], a                                    ; $5417: $02
    inc bc                                        ; $5418: $03
    inc bc                                        ; $5419: $03
    inc bc                                        ; $541a: $03
    ld [bc], a                                    ; $541b: $02
    inc bc                                        ; $541c: $03
    inc bc                                        ; $541d: $03
    inc bc                                        ; $541e: $03
    ld [bc], a                                    ; $541f: $02
    inc bc                                        ; $5420: $03
    inc bc                                        ; $5421: $03
    inc bc                                        ; $5422: $03
    ld [bc], a                                    ; $5423: $02
    inc bc                                        ; $5424: $03
    inc bc                                        ; $5425: $03
    inc bc                                        ; $5426: $03
    ret c                                         ; $5427: $d8

    ld h, h                                       ; $5428: $64
    db $fd                                        ; $5429: $fd
    pop de                                        ; $542a: $d1
    db $db                                        ; $542b: $db
    ld l, b                                       ; $542c: $68
    nop                                           ; $542d: $00
    ld bc, $83de                                  ; $542e: $01 $de $83
    rra                                           ; $5431: $1f
    jr nz, @-$1d                                  ; $5432: $20 $e1

    add a                                         ; $5434: $87
    inc hl                                        ; $5435: $23
    inc h                                         ; $5436: $24
    inc bc                                        ; $5437: $03
    inc bc                                        ; $5438: $03
    inc bc                                        ; $5439: $03
    inc bc                                        ; $543a: $03
    inc bc                                        ; $543b: $03
    inc bc                                        ; $543c: $03
    inc bc                                        ; $543d: $03
    inc bc                                        ; $543e: $03
    inc bc                                        ; $543f: $03
    dec bc                                        ; $5440: $0b
    inc bc                                        ; $5441: $03
    inc bc                                        ; $5442: $03
    inc bc                                        ; $5443: $03
    dec bc                                        ; $5444: $0b
    inc bc                                        ; $5445: $03
    inc bc                                        ; $5446: $03
    cp $0a                                        ; $5447: $fe $0a
    rlca                                          ; $5449: $07
    inc e                                         ; $544a: $1c
    ld [bc], a                                    ; $544b: $02
    dec c                                         ; $544c: $0d
    rlca                                          ; $544d: $07
    ld e, $21                                     ; $544e: $1e $21
    ld l, $07                                     ; $5450: $2e $07
    ld a, $25                                     ; $5452: $3e $25
    ld sp, $4022                                  ; $5454: $31 $22 $40
    inc bc                                        ; $5457: $03
    inc bc                                        ; $5458: $03
    ld [bc], a                                    ; $5459: $02
    inc bc                                        ; $545a: $03
    inc bc                                        ; $545b: $03
    inc bc                                        ; $545c: $03
    ld [bc], a                                    ; $545d: $02
    inc bc                                        ; $545e: $03
    inc bc                                        ; $545f: $03
    inc bc                                        ; $5460: $03
    ld [bc], a                                    ; $5461: $02
    inc bc                                        ; $5462: $03
    inc bc                                        ; $5463: $03
    inc bc                                        ; $5464: $03
    ld [bc], a                                    ; $5465: $02
    inc bc                                        ; $5466: $03
    or a                                          ; $5467: $b7
    jp hl                                         ; $5468: $e9


    inc [hl]                                      ; $5469: $34
    db $e4                                        ; $546a: $e4
    cp b                                          ; $546b: $b8
    db $ec                                        ; $546c: $ec
    inc a                                         ; $546d: $3c
    rst $20                                       ; $546e: $e7
    cp c                                          ; $546f: $b9
    cp d                                          ; $5470: $ba
    ld e, c                                       ; $5471: $59
    ld [$bfbe], a                                 ; $5472: $ea $be $bf
    ld e, e                                       ; $5475: $5b
    db $ed                                        ; $5476: $ed
    dec bc                                        ; $5477: $0b
    inc bc                                        ; $5478: $03
    rlca                                          ; $5479: $07
    ld [bc], a                                    ; $547a: $02
    dec bc                                        ; $547b: $0b
    inc bc                                        ; $547c: $03
    rlca                                          ; $547d: $07
    ld bc, $0b0b                                  ; $547e: $01 $0b $0b
    rlca                                          ; $5481: $07
    ld bc, $0b0b                                  ; $5482: $01 $0b $0b
    rlca                                          ; $5485: $07
    ld bc, $5c4b                                  ; $5486: $01 $4b $5c
    ld e, l                                       ; $5489: $5d
    ldh a, [rVBK]                                 ; $548a: $f0 $4f
    ld d, b                                       ; $548c: $50
    ld d, a                                       ; $548d: $57
    di                                            ; $548e: $f3
    adc [hl]                                      ; $548f: $8e
    adc a                                         ; $5490: $8f
    inc [hl]                                      ; $5491: $34
    db $e4                                        ; $5492: $e4
    sub b                                         ; $5493: $90
    sub c                                         ; $5494: $91
    sub d                                         ; $5495: $92
    rst $20                                       ; $5496: $e7
    dec b                                         ; $5497: $05
    dec b                                         ; $5498: $05
    dec b                                         ; $5499: $05
    dec b                                         ; $549a: $05
    rlca                                          ; $549b: $07
    rlca                                          ; $549c: $07
    rlca                                          ; $549d: $07
    rlca                                          ; $549e: $07
    add hl, bc                                    ; $549f: $09
    add hl, bc                                    ; $54a0: $09
    ld bc, $0e01                                  ; $54a1: $01 $01 $0e
    ld c, $09                                     ; $54a4: $0e $09
    ld bc, $4a49                                  ; $54a6: $01 $49 $4a
    ld c, e                                       ; $54a9: $4b
    ld e, h                                       ; $54aa: $5c
    ld c, l                                       ; $54ab: $4d
    ld c, [hl]                                    ; $54ac: $4e
    ld c, a                                       ; $54ad: $4f
    ld d, b                                       ; $54ae: $50
    ld h, $27                                     ; $54af: $26 $27
    jr z, jr_087_54dc                             ; $54b1: $28 $29

    ld a, [hl+]                                   ; $54b3: $2a
    dec hl                                        ; $54b4: $2b
    inc l                                         ; $54b5: $2c
    dec sp                                        ; $54b6: $3b
    dec b                                         ; $54b7: $05
    dec b                                         ; $54b8: $05
    dec b                                         ; $54b9: $05
    dec b                                         ; $54ba: $05
    rlca                                          ; $54bb: $07
    rlca                                          ; $54bc: $07
    rlca                                          ; $54bd: $07
    rlca                                          ; $54be: $07
    ld [bc], a                                    ; $54bf: $02
    ld bc, $0101                                  ; $54c0: $01 $01 $01
    ld bc, $0102                                  ; $54c3: $01 $02 $01
    ld bc, $f05d                                  ; $54c6: $01 $5d $f0
    jp z, Jump_087_57cb                           ; $54c9: $ca $cb $57

    di                                            ; $54cc: $f3
    call Call_000_34ce                            ; $54cd: $cd $ce $34
    db $e4                                        ; $54d0: $e4
    ld h, $27                                     ; $54d1: $26 $27
    inc a                                         ; $54d3: $3c
    rst $20                                       ; $54d4: $e7
    ld a, [hl+]                                   ; $54d5: $2a
    dec hl                                        ; $54d6: $2b
    dec b                                         ; $54d7: $05
    dec b                                         ; $54d8: $05
    dec c                                         ; $54d9: $0d
    dec c                                         ; $54da: $0d
    rlca                                          ; $54db: $07

jr_087_54dc:
    rlca                                          ; $54dc: $07
    rrca                                          ; $54dd: $0f
    rrca                                          ; $54de: $0f
    ld bc, $0101                                  ; $54df: $01 $01 $01
    ld bc, $0101                                  ; $54e2: $01 $01 $01
    ld bc, $cc01                                  ; $54e5: $01 $01 $cc
    ld e, h                                       ; $54e8: $5c
    ld e, l                                       ; $54e9: $5d
    ldh a, [$cf]                                  ; $54ea: $f0 $cf
    ld d, b                                       ; $54ec: $50
    ld d, a                                       ; $54ed: $57
    di                                            ; $54ee: $f3
    jr z, jr_087_551a                             ; $54ef: $28 $29

    inc [hl]                                      ; $54f1: $34
    db $e4                                        ; $54f2: $e4
    inc l                                         ; $54f3: $2c
    dec sp                                        ; $54f4: $3b
    inc a                                         ; $54f5: $3c
    rst $20                                       ; $54f6: $e7
    dec c                                         ; $54f7: $0d
    rlca                                          ; $54f8: $07
    ld bc, $0f01                                  ; $54f9: $01 $01 $0f
    ld bc, $0101                                  ; $54fc: $01 $01 $01
    ld bc, $0101                                  ; $54ff: $01 $01 $01
    ld [bc], a                                    ; $5502: $02
    ld [bc], a                                    ; $5503: $02
    ld [bc], a                                    ; $5504: $02
    ld [bc], a                                    ; $5505: $02
    ld bc, $4a49                                  ; $5506: $01 $49 $4a
    ld c, e                                       ; $5509: $4b
    ld e, h                                       ; $550a: $5c
    ld c, l                                       ; $550b: $4d
    ld c, [hl]                                    ; $550c: $4e
    ld c, a                                       ; $550d: $4f
    ld d, b                                       ; $550e: $50
    ld h, $27                                     ; $550f: $26 $27
    adc [hl]                                      ; $5511: $8e
    adc a                                         ; $5512: $8f
    ld a, [hl+]                                   ; $5513: $2a
    adc c                                         ; $5514: $89
    sub b                                         ; $5515: $90
    sub c                                         ; $5516: $91
    ld bc, $0101                                  ; $5517: $01 $01 $01

jr_087_551a:
    rlca                                          ; $551a: $07
    ld bc, $0202                                  ; $551b: $01 $02 $02
    rlca                                          ; $551e: $07
    ld [bc], a                                    ; $551f: $02
    ld [bc], a                                    ; $5520: $02
    add hl, bc                                    ; $5521: $09
    rrca                                          ; $5522: $0f
    ld [bc], a                                    ; $5523: $02
    add hl, bc                                    ; $5524: $09
    ld c, $0f                                     ; $5525: $0e $0f
    ld b, c                                       ; $5527: $41
    sbc b                                         ; $5528: $98
    sbc e                                         ; $5529: $9b
    sbc h                                         ; $552a: $9c
    ld b, l                                       ; $552b: $45
    sbc c                                         ; $552c: $99
    sbc a                                         ; $552d: $9f
    and b                                         ; $552e: $a0
    ld c, c                                       ; $552f: $49
    sbc d                                         ; $5530: $9a
    and d                                         ; $5531: $a2
    and e                                         ; $5532: $a3
    ld c, l                                       ; $5533: $4d
    ld c, [hl]                                    ; $5534: $4e
    ld c, a                                       ; $5535: $4f
    and [hl]                                      ; $5536: $a6
    ld bc, $0e0e                                  ; $5537: $01 $0e $0e
    rrca                                          ; $553a: $0f
    ld bc, $0e0e                                  ; $553b: $01 $0e $0e
    rrca                                          ; $553e: $0f
    ld bc, $0e09                                  ; $553f: $01 $09 $0e
    rrca                                          ; $5542: $0f
    ld bc, $0101                                  ; $5543: $01 $01 $01
    rrca                                          ; $5546: $0f
    jp hl                                         ; $5547: $e9


    add sp, -$2f                                  ; $5548: $e8 $d1
    pop de                                        ; $554a: $d1
    db $ec                                        ; $554b: $ec
    db $eb                                        ; $554c: $eb
    pop de                                        ; $554d: $d1
    pop de                                        ; $554e: $d1
    db $e3                                        ; $554f: $e3
    or l                                          ; $5550: $b5
    ld e, [hl]                                    ; $5551: $5e
    push af                                       ; $5552: $f5
    and $b6                                       ; $5553: $e6 $b6
    ld h, b                                       ; $5555: $60
    jp nc, Jump_000_2323                          ; $5556: $d2 $23 $23

    inc bc                                        ; $5559: $03
    inc bc                                        ; $555a: $03
    inc hl                                        ; $555b: $23
    inc hl                                        ; $555c: $23
    inc bc                                        ; $555d: $03
    inc bc                                        ; $555e: $03
    inc hl                                        ; $555f: $23
    dec hl                                        ; $5560: $2b
    inc bc                                        ; $5561: $03
    inc bc                                        ; $5562: $03
    inc hl                                        ; $5563: $23
    dec hl                                        ; $5564: $2b
    inc bc                                        ; $5565: $03
    dec bc                                        ; $5566: $0b
    pop de                                        ; $5567: $d1
    pop de                                        ; $5568: $d1
    pop de                                        ; $5569: $d1
    pop de                                        ; $556a: $d1
    pop de                                        ; $556b: $d1
    pop de                                        ; $556c: $d1
    pop de                                        ; $556d: $d1
    pop de                                        ; $556e: $d1
    db $f4                                        ; $556f: $f4
    ld e, [hl]                                    ; $5570: $5e
    push af                                       ; $5571: $f5
    ld [hl], d                                    ; $5572: $72
    rlca                                          ; $5573: $07
    ld h, b                                       ; $5574: $60
    ld [hl], l                                    ; $5575: $75
    halt                                          ; $5576: $76
    inc bc                                        ; $5577: $03
    inc bc                                        ; $5578: $03
    inc bc                                        ; $5579: $03
    inc bc                                        ; $557a: $03
    inc bc                                        ; $557b: $03
    inc bc                                        ; $557c: $03
    inc bc                                        ; $557d: $03
    inc bc                                        ; $557e: $03
    ld [bc], a                                    ; $557f: $02
    inc bc                                        ; $5580: $03
    inc bc                                        ; $5581: $03
    inc bc                                        ; $5582: $03
    ld [bc], a                                    ; $5583: $02
    inc bc                                        ; $5584: $03
    inc bc                                        ; $5585: $03
    inc bc                                        ; $5586: $03
    ld h, $27                                     ; $5587: $26 $27
    jr z, jr_087_55b4                             ; $5589: $28 $29

    ld a, [hl+]                                   ; $558b: $2a
    dec hl                                        ; $558c: $2b
    inc l                                         ; $558d: $2c
    dec sp                                        ; $558e: $3b
    ld b, c                                       ; $558f: $41
    ld b, d                                       ; $5590: $42
    ld b, e                                       ; $5591: $43
    ld e, b                                       ; $5592: $58
    ld b, l                                       ; $5593: $45
    ld b, [hl]                                    ; $5594: $46
    ld b, a                                       ; $5595: $47
    ld e, d                                       ; $5596: $5a
    ld bc, $0201                                  ; $5597: $01 $01 $02
    rlca                                          ; $559a: $07
    ld [bc], a                                    ; $559b: $02
    ld bc, $0702                                  ; $559c: $01 $02 $07
    ld [bc], a                                    ; $559f: $02
    ld bc, $0702                                  ; $55a0: $01 $02 $07
    ld bc, $0201                                  ; $55a3: $01 $01 $02
    rlca                                          ; $55a6: $07
    jp hl                                         ; $55a7: $e9


    or a                                          ; $55a8: $b7
    ld h, h                                       ; $55a9: $64
    db $d3                                        ; $55aa: $d3
    db $ec                                        ; $55ab: $ec
    cp b                                          ; $55ac: $b8
    ld l, b                                       ; $55ad: $68
    call nc, $b9ba                                ; $55ae: $d4 $ba $b9
    add e                                         ; $55b1: $83
    sub h                                         ; $55b2: $94
    cp a                                          ; $55b3: $bf

jr_087_55b4:
    cp [hl]                                       ; $55b4: $be
    add a                                         ; $55b5: $87
    inc hl                                        ; $55b6: $23
    inc hl                                        ; $55b7: $23
    dec hl                                        ; $55b8: $2b
    inc bc                                        ; $55b9: $03
    dec bc                                        ; $55ba: $0b
    inc hl                                        ; $55bb: $23
    dec hl                                        ; $55bc: $2b
    inc bc                                        ; $55bd: $03
    dec bc                                        ; $55be: $0b
    dec hl                                        ; $55bf: $2b
    dec hl                                        ; $55c0: $2b
    dec bc                                        ; $55c1: $0b
    dec bc                                        ; $55c2: $0b
    dec hl                                        ; $55c3: $2b
    dec hl                                        ; $55c4: $2b
    dec bc                                        ; $55c5: $0b
    inc bc                                        ; $55c6: $03
    rlca                                          ; $55c7: $07
    ld h, h                                       ; $55c8: $64
    ld a, c                                       ; $55c9: $79
    ld a, d                                       ; $55ca: $7a
    rlca                                          ; $55cb: $07
    ld l, b                                       ; $55cc: $68
    ld a, h                                       ; $55cd: $7c
    ld a, l                                       ; $55ce: $7d
    rlca                                          ; $55cf: $07
    add e                                         ; $55d0: $83
    sub h                                         ; $55d1: $94
    sub l                                         ; $55d2: $95
    ld [hl+], a                                   ; $55d3: $22
    add a                                         ; $55d4: $87
    inc hl                                        ; $55d5: $23
    inc h                                         ; $55d6: $24
    ld [bc], a                                    ; $55d7: $02
    inc bc                                        ; $55d8: $03
    inc bc                                        ; $55d9: $03
    inc bc                                        ; $55da: $03
    ld [bc], a                                    ; $55db: $02
    inc bc                                        ; $55dc: $03
    inc bc                                        ; $55dd: $03
    inc bc                                        ; $55de: $03
    ld [bc], a                                    ; $55df: $02
    dec bc                                        ; $55e0: $0b
    dec bc                                        ; $55e1: $0b
    dec bc                                        ; $55e2: $0b
    ld [bc], a                                    ; $55e3: $02
    dec bc                                        ; $55e4: $0b
    inc bc                                        ; $55e5: $03
    inc bc                                        ; $55e6: $03
    ld c, c                                       ; $55e7: $49
    ld c, d                                       ; $55e8: $4a
    ld c, e                                       ; $55e9: $4b
    ld e, h                                       ; $55ea: $5c
    ld c, l                                       ; $55eb: $4d
    ld c, [hl]                                    ; $55ec: $4e
    ld c, a                                       ; $55ed: $4f
    ld d, b                                       ; $55ee: $50
    ld h, $27                                     ; $55ef: $26 $27
    jr z, @+$2b                                   ; $55f1: $28 $29

    ld a, [hl+]                                   ; $55f3: $2a
    dec hl                                        ; $55f4: $2b
    inc l                                         ; $55f5: $2c
    dec sp                                        ; $55f6: $3b
    ld bc, $0101                                  ; $55f7: $01 $01 $01
    ld bc, $0202                                  ; $55fa: $01 $02 $02
    ld [bc], a                                    ; $55fd: $02
    ld bc, $0102                                  ; $55fe: $01 $02 $01
    ld [bc], a                                    ; $5601: $02
    ld [bc], a                                    ; $5602: $02
    ld [bc], a                                    ; $5603: $02
    ld [bc], a                                    ; $5604: $02
    ld bc, $5d01                                  ; $5605: $01 $01 $5d
    ldh a, [rOBP1]                                ; $5608: $f0 $49
    ld c, d                                       ; $560a: $4a
    ld d, a                                       ; $560b: $57
    di                                            ; $560c: $f3
    ld c, l                                       ; $560d: $4d
    ld c, [hl]                                    ; $560e: $4e
    inc [hl]                                      ; $560f: $34
    db $e4                                        ; $5610: $e4
    ld h, $27                                     ; $5611: $26 $27
    inc a                                         ; $5613: $3c
    rst $20                                       ; $5614: $e7
    ld a, [hl+]                                   ; $5615: $2a
    adc c                                         ; $5616: $89
    rlca                                          ; $5617: $07
    dec b                                         ; $5618: $05
    dec b                                         ; $5619: $05
    dec b                                         ; $561a: $05
    ld bc, $0707                                  ; $561b: $01 $07 $07
    rlca                                          ; $561e: $07
    ld [bc], a                                    ; $561f: $02
    ld [bc], a                                    ; $5620: $02
    ld bc, $0201                                  ; $5621: $01 $01 $02
    ld bc, $0901                                  ; $5624: $01 $01 $09
    ld c, e                                       ; $5627: $4b
    ld c, h                                       ; $5628: $4c
    ld d, l                                       ; $5629: $55
    ld d, [hl]                                    ; $562a: $56
    ld c, a                                       ; $562b: $4f
    ld d, b                                       ; $562c: $50
    ld d, a                                       ; $562d: $57
    di                                            ; $562e: $f3
    adc [hl]                                      ; $562f: $8e
    adc a                                         ; $5630: $8f
    inc [hl]                                      ; $5631: $34
    db $e4                                        ; $5632: $e4
    sub b                                         ; $5633: $90
    sub c                                         ; $5634: $91
    sub d                                         ; $5635: $92
    rst $20                                       ; $5636: $e7
    dec b                                         ; $5637: $05
    dec b                                         ; $5638: $05
    dec b                                         ; $5639: $05
    dec b                                         ; $563a: $05
    rlca                                          ; $563b: $07
    rlca                                          ; $563c: $07
    rlca                                          ; $563d: $07
    rlca                                          ; $563e: $07
    add hl, bc                                    ; $563f: $09
    add hl, bc                                    ; $5640: $09
    ld bc, $0e01                                  ; $5641: $01 $01 $0e
    ld c, $09                                     ; $5644: $0e $09
    ld bc, $4a49                                  ; $5646: $01 $49 $4a
    ld c, e                                       ; $5649: $4b
    ld e, h                                       ; $564a: $5c
    ld c, l                                       ; $564b: $4d
    ld c, [hl]                                    ; $564c: $4e
    ld c, a                                       ; $564d: $4f
    ld d, b                                       ; $564e: $50
    ld h, $27                                     ; $564f: $26 $27
    jr z, jr_087_567c                             ; $5651: $28 $29

    ld a, [hl+]                                   ; $5653: $2a
    dec hl                                        ; $5654: $2b
    inc l                                         ; $5655: $2c
    dec l                                         ; $5656: $2d
    dec b                                         ; $5657: $05
    dec b                                         ; $5658: $05
    dec b                                         ; $5659: $05
    dec b                                         ; $565a: $05
    rlca                                          ; $565b: $07
    rlca                                          ; $565c: $07
    rlca                                          ; $565d: $07
    rlca                                          ; $565e: $07
    ld bc, $0101                                  ; $565f: $01 $01 $01
    ld bc, $0101                                  ; $5662: $01 $01 $01
    ld [bc], a                                    ; $5665: $02
    ld bc, $d1d1                                  ; $5666: $01 $d1 $d1
    pop de                                        ; $5669: $d1
    pop de                                        ; $566a: $d1
    pop de                                        ; $566b: $d1
    pop de                                        ; $566c: $d1
    pop de                                        ; $566d: $d1
    pop de                                        ; $566e: $d1
    ld [hl], e                                    ; $566f: $73
    ld a, a                                       ; $5670: $7f
    db $f4                                        ; $5671: $f4
    jr jr_087_56eb                                ; $5672: $18 $77

    add b                                         ; $5674: $80
    ld [hl], h                                    ; $5675: $74
    ld a, [de]                                    ; $5676: $1a
    inc bc                                        ; $5677: $03
    inc bc                                        ; $5678: $03
    inc bc                                        ; $5679: $03
    inc bc                                        ; $567a: $03
    inc bc                                        ; $567b: $03

jr_087_567c:
    inc bc                                        ; $567c: $03
    inc bc                                        ; $567d: $03
    inc bc                                        ; $567e: $03
    inc bc                                        ; $567f: $03
    inc bc                                        ; $5680: $03
    ld [bc], a                                    ; $5681: $02
    inc bc                                        ; $5682: $03
    inc bc                                        ; $5683: $03
    dec bc                                        ; $5684: $0b
    ld [bc], a                                    ; $5685: $02
    inc bc                                        ; $5686: $03
    ld a, e                                       ; $5687: $7b
    add c                                         ; $5688: $81
    ld a, b                                       ; $5689: $78
    inc e                                         ; $568a: $1c
    ld a, [hl]                                    ; $568b: $7e
    add d                                         ; $568c: $82
    rlca                                          ; $568d: $07
    ld e, $96                                     ; $568e: $1e $96
    sub a                                         ; $5690: $97
    sub e                                         ; $5691: $93
    ld a, $25                                     ; $5692: $3e $25
    ld sp, $4022                                  ; $5694: $31 $22 $40
    inc bc                                        ; $5697: $03
    dec bc                                        ; $5698: $0b
    ld [bc], a                                    ; $5699: $02
    inc bc                                        ; $569a: $03
    inc bc                                        ; $569b: $03
    dec bc                                        ; $569c: $0b
    ld [bc], a                                    ; $569d: $02
    inc bc                                        ; $569e: $03
    dec bc                                        ; $569f: $0b
    dec bc                                        ; $56a0: $0b
    ld a, [bc]                                    ; $56a1: $0a
    inc bc                                        ; $56a2: $03
    inc bc                                        ; $56a3: $03
    inc bc                                        ; $56a4: $03
    ld [bc], a                                    ; $56a5: $02
    inc bc                                        ; $56a6: $03
    ld e, l                                       ; $56a7: $5d
    ldh a, [rOBP1]                                ; $56a8: $f0 $49
    ld c, d                                       ; $56aa: $4a
    ld d, a                                       ; $56ab: $57
    di                                            ; $56ac: $f3
    ld c, l                                       ; $56ad: $4d
    ld c, [hl]                                    ; $56ae: $4e
    inc [hl]                                      ; $56af: $34
    db $e4                                        ; $56b0: $e4
    ld h, $27                                     ; $56b1: $26 $27
    dec [hl]                                      ; $56b3: $35
    ld [hl], $2a                                  ; $56b4: $36 $2a
    dec hl                                        ; $56b6: $2b
    dec b                                         ; $56b7: $05
    dec b                                         ; $56b8: $05
    dec b                                         ; $56b9: $05
    dec b                                         ; $56ba: $05
    rlca                                          ; $56bb: $07
    rlca                                          ; $56bc: $07
    rlca                                          ; $56bd: $07
    rlca                                          ; $56be: $07
    ld [bc], a                                    ; $56bf: $02
    ld [bc], a                                    ; $56c0: $02
    ld bc, $0107                                  ; $56c1: $01 $07 $01
    ld bc, $0701                                  ; $56c4: $01 $01 $07
    pop de                                        ; $56c7: $d1
    pop de                                        ; $56c8: $d1
    pop de                                        ; $56c9: $d1
    jp nc, $d1d1                                  ; $56ca: $d2 $d1 $d1

    pop de                                        ; $56cd: $d1
    call nc, $d1d1                                ; $56ce: $d4 $d1 $d1
    sub $d7                                       ; $56d1: $d6 $d7
    pop de                                        ; $56d3: $d1
    pop de                                        ; $56d4: $d1
    reti                                          ; $56d5: $d9


    jp c, Jump_000_0303                           ; $56d6: $da $03 $03

    inc bc                                        ; $56d9: $03
    inc bc                                        ; $56da: $03
    inc bc                                        ; $56db: $03
    inc bc                                        ; $56dc: $03
    inc bc                                        ; $56dd: $03
    inc bc                                        ; $56de: $03
    inc bc                                        ; $56df: $03
    inc bc                                        ; $56e0: $03
    inc bc                                        ; $56e1: $03
    inc bc                                        ; $56e2: $03
    inc bc                                        ; $56e3: $03
    inc bc                                        ; $56e4: $03
    add e                                         ; $56e5: $83
    add e                                         ; $56e6: $83
    or $f4                                        ; $56e7: $f6 $f4
    inc b                                         ; $56e9: $04
    dec b                                         ; $56ea: $05

jr_087_56eb:
    db $10                                        ; $56eb: $10
    rlca                                          ; $56ec: $07
    ld [$1209], sp                                ; $56ed: $08 $09 $12
    rlca                                          ; $56f0: $07
    dec bc                                        ; $56f1: $0b
    inc c                                         ; $56f2: $0c
    dec d                                         ; $56f3: $15
    rlca                                          ; $56f4: $07
    ld c, $0f                                     ; $56f5: $0e $0f
    inc bc                                        ; $56f7: $03
    ld [bc], a                                    ; $56f8: $02
    ld [bc], a                                    ; $56f9: $02
    ld [bc], a                                    ; $56fa: $02
    inc bc                                        ; $56fb: $03
    ld [bc], a                                    ; $56fc: $02
    ld [bc], a                                    ; $56fd: $02
    ld [bc], a                                    ; $56fe: $02
    inc bc                                        ; $56ff: $03
    ld [bc], a                                    ; $5700: $02
    inc b                                         ; $5701: $04
    inc b                                         ; $5702: $04
    inc bc                                        ; $5703: $03
    ld [bc], a                                    ; $5704: $02
    inc b                                         ; $5705: $04
    inc b                                         ; $5706: $04
    inc b                                         ; $5707: $04
    db $f4                                        ; $5708: $f4
    ld e, [hl]                                    ; $5709: $5e
    push af                                       ; $570a: $f5
    ld [$6007], sp                                ; $570b: $08 $07 $60
    jp nc, $0711                                  ; $570e: $d2 $11 $07

    ld h, h                                       ; $5711: $64
    db $d3                                        ; $5712: $d3
    inc d                                         ; $5713: $14
    rlca                                          ; $5714: $07
    ld l, b                                       ; $5715: $68
    call nc, $0222                                ; $5716: $d4 $22 $02
    inc bc                                        ; $5719: $03
    inc bc                                        ; $571a: $03
    ld [hl+], a                                   ; $571b: $22
    ld [bc], a                                    ; $571c: $02
    inc bc                                        ; $571d: $03
    dec bc                                        ; $571e: $0b
    inc b                                         ; $571f: $04
    ld [bc], a                                    ; $5720: $02
    inc bc                                        ; $5721: $03
    dec bc                                        ; $5722: $0b
    inc b                                         ; $5723: $04
    ld [bc], a                                    ; $5724: $02
    inc bc                                        ; $5725: $03
    dec bc                                        ; $5726: $0b
    or $f7                                        ; $5727: $f6 $f7
    db $f4                                        ; $5729: $f4
    or l                                          ; $572a: $b5
    db $10                                        ; $572b: $10
    ei                                            ; $572c: $fb
    ld [hl], h                                    ; $572d: $74
    or [hl]                                       ; $572e: $b6
    inc de                                        ; $572f: $13
    xor b                                         ; $5730: $a8
    ld a, b                                       ; $5731: $78
    or a                                          ; $5732: $b7
    ld d, $a9                                     ; $5733: $16 $a9
    rlca                                          ; $5735: $07
    cp b                                          ; $5736: $b8
    inc bc                                        ; $5737: $03
    inc bc                                        ; $5738: $03
    ld [bc], a                                    ; $5739: $02
    dec bc                                        ; $573a: $0b
    inc bc                                        ; $573b: $03
    inc bc                                        ; $573c: $03
    ld [bc], a                                    ; $573d: $02
    dec bc                                        ; $573e: $0b
    inc bc                                        ; $573f: $03
    dec bc                                        ; $5740: $0b
    ld [bc], a                                    ; $5741: $02
    dec bc                                        ; $5742: $0b
    inc bc                                        ; $5743: $03
    dec bc                                        ; $5744: $0b
    ld [bc], a                                    ; $5745: $02
    dec bc                                        ; $5746: $0b
    pop de                                        ; $5747: $d1
    pop de                                        ; $5748: $d1
    call c, $d1dd                                 ; $5749: $dc $dd $d1
    pop de                                        ; $574c: $d1
    rst $18                                       ; $574d: $df
    ldh [$d1], a                                  ; $574e: $e0 $d1
    pop de                                        ; $5750: $d1
    ld [c], a                                     ; $5751: $e2
    db $e3                                        ; $5752: $e3
    pop de                                        ; $5753: $d1
    pop de                                        ; $5754: $d1
    push hl                                       ; $5755: $e5
    and $03                                       ; $5756: $e6 $03
    inc bc                                        ; $5758: $03
    add e                                         ; $5759: $83
    add e                                         ; $575a: $83
    inc bc                                        ; $575b: $03
    inc bc                                        ; $575c: $03
    add e                                         ; $575d: $83
    add e                                         ; $575e: $83
    inc bc                                        ; $575f: $03
    inc bc                                        ; $5760: $03
    add e                                         ; $5761: $83
    add e                                         ; $5762: $83
    inc bc                                        ; $5763: $03
    inc bc                                        ; $5764: $03
    add e                                         ; $5765: $83
    add e                                         ; $5766: $83
    jr c, jr_087_5770                             ; $5767: $38 $07

    cpl                                           ; $5769: $2f
    jr nc, jr_087_5790                            ; $576a: $30 $24

    ld [hl+], a                                   ; $576c: $22
    ld [hl-], a                                   ; $576d: $32
    inc sp                                        ; $576e: $33
    ld b, c                                       ; $576f: $41

jr_087_5770:
    ld b, d                                       ; $5770: $42
    ld b, e                                       ; $5771: $43
    ld b, h                                       ; $5772: $44
    ld b, l                                       ; $5773: $45
    ld b, [hl]                                    ; $5774: $46
    ld b, a                                       ; $5775: $47
    ld c, b                                       ; $5776: $48
    inc bc                                        ; $5777: $03
    ld [bc], a                                    ; $5778: $02
    inc b                                         ; $5779: $04
    inc b                                         ; $577a: $04
    inc bc                                        ; $577b: $03
    ld [bc], a                                    ; $577c: $02
    inc b                                         ; $577d: $04
    inc b                                         ; $577e: $04
    dec b                                         ; $577f: $05
    dec b                                         ; $5780: $05
    dec b                                         ; $5781: $05
    dec b                                         ; $5782: $05
    rlca                                          ; $5783: $07
    rlca                                          ; $5784: $07
    rlca                                          ; $5785: $07
    rlca                                          ; $5786: $07
    scf                                           ; $5787: $37
    rlca                                          ; $5788: $07
    add e                                         ; $5789: $83
    sub h                                         ; $578a: $94
    ld a, [hl-]                                   ; $578b: $3a
    ld [hl+], a                                   ; $578c: $22
    add a                                         ; $578d: $87
    inc hl                                        ; $578e: $23
    ld d, c                                       ; $578f: $51

jr_087_5790:
    ld d, d                                       ; $5790: $52
    ld b, c                                       ; $5791: $41
    ld b, d                                       ; $5792: $42
    ld d, e                                       ; $5793: $53
    ld d, h                                       ; $5794: $54
    ld b, l                                       ; $5795: $45
    ld b, [hl]                                    ; $5796: $46
    inc b                                         ; $5797: $04
    ld [bc], a                                    ; $5798: $02
    dec bc                                        ; $5799: $0b
    dec bc                                        ; $579a: $0b
    inc b                                         ; $579b: $04
    ld [bc], a                                    ; $579c: $02
    dec bc                                        ; $579d: $0b
    inc bc                                        ; $579e: $03
    dec b                                         ; $579f: $05
    dec b                                         ; $57a0: $05
    dec b                                         ; $57a1: $05
    dec b                                         ; $57a2: $05
    rlca                                          ; $57a3: $07
    rlca                                          ; $57a4: $07
    rlca                                          ; $57a5: $07
    rlca                                          ; $57a6: $07
    jr c, jr_087_57e2                             ; $57a7: $38 $39

    sub e                                         ; $57a9: $93
    cp c                                          ; $57aa: $b9
    inc h                                         ; $57ab: $24
    dec h                                         ; $57ac: $25
    ld [hl+], a                                   ; $57ad: $22
    cp [hl]                                       ; $57ae: $be
    ld b, e                                       ; $57af: $43
    ld e, b                                       ; $57b0: $58
    ld e, c                                       ; $57b1: $59
    ld [$5a47], a                                 ; $57b2: $ea $47 $5a
    ld e, e                                       ; $57b5: $5b
    db $ed                                        ; $57b6: $ed
    inc bc                                        ; $57b7: $03
    inc bc                                        ; $57b8: $03
    ld a, [bc]                                    ; $57b9: $0a
    dec bc                                        ; $57ba: $0b
    inc bc                                        ; $57bb: $03
    inc bc                                        ; $57bc: $03
    ld [bc], a                                    ; $57bd: $02
    dec bc                                        ; $57be: $0b
    dec b                                         ; $57bf: $05
    dec b                                         ; $57c0: $05
    dec b                                         ; $57c1: $05
    dec b                                         ; $57c2: $05
    rlca                                          ; $57c3: $07
    rlca                                          ; $57c4: $07
    rlca                                          ; $57c5: $07
    rlca                                          ; $57c6: $07
    ld c, c                                       ; $57c7: $49
    ld c, d                                       ; $57c8: $4a
    ld c, e                                       ; $57c9: $4b
    ld c, h                                       ; $57ca: $4c

Jump_087_57cb:
    ld c, l                                       ; $57cb: $4d
    ld c, [hl]                                    ; $57cc: $4e
    ld c, a                                       ; $57cd: $4f
    ld d, b                                       ; $57ce: $50
    ld h, $27                                     ; $57cf: $26 $27
    jr z, @+$2b                                   ; $57d1: $28 $29

    ld a, [hl+]                                   ; $57d3: $2a
    dec hl                                        ; $57d4: $2b
    inc l                                         ; $57d5: $2c
    dec sp                                        ; $57d6: $3b
    rlca                                          ; $57d7: $07
    ld bc, $0201                                  ; $57d8: $01 $01 $02
    rlca                                          ; $57db: $07
    ld [bc], a                                    ; $57dc: $02
    ld [bc], a                                    ; $57dd: $02
    ld bc, $0207                                  ; $57de: $01 $07 $02
    ld [bc], a                                    ; $57e1: $02

jr_087_57e2:
    ld [bc], a                                    ; $57e2: $02
    rlca                                          ; $57e3: $07
    ld bc, $0101                                  ; $57e4: $01 $01 $01
    ld d, l                                       ; $57e7: $55
    ld d, [hl]                                    ; $57e8: $56
    ld c, c                                       ; $57e9: $49
    ld c, d                                       ; $57ea: $4a
    ld d, a                                       ; $57eb: $57
    di                                            ; $57ec: $f3
    ld c, l                                       ; $57ed: $4d
    ld c, [hl]                                    ; $57ee: $4e
    inc [hl]                                      ; $57ef: $34
    db $e4                                        ; $57f0: $e4
    ld h, $27                                     ; $57f1: $26 $27
    inc a                                         ; $57f3: $3c
    rst $20                                       ; $57f4: $e7
    ld a, [hl+]                                   ; $57f5: $2a
    dec hl                                        ; $57f6: $2b
    ld [bc], a                                    ; $57f7: $02
    ld bc, $0101                                  ; $57f8: $01 $01 $01
    ld bc, $0101                                  ; $57fb: $01 $01 $01
    ld [bc], a                                    ; $57fe: $02
    ld bc, $0201                                  ; $57ff: $01 $01 $02
    ld [bc], a                                    ; $5802: $02
    ld bc, $0202                                  ; $5803: $01 $02 $02
    ld [bc], a                                    ; $5806: $02
    ld c, e                                       ; $5807: $4b
    ld e, h                                       ; $5808: $5c
    ld e, l                                       ; $5809: $5d
    ldh a, [rVBK]                                 ; $580a: $f0 $4f
    ld d, b                                       ; $580c: $50
    ld d, a                                       ; $580d: $57
    di                                            ; $580e: $f3
    jr z, jr_087_583a                             ; $580f: $28 $29

    inc [hl]                                      ; $5811: $34
    db $e4                                        ; $5812: $e4
    inc l                                         ; $5813: $2c
    dec sp                                        ; $5814: $3b
    inc a                                         ; $5815: $3c
    rst $20                                       ; $5816: $e7
    ld [bc], a                                    ; $5817: $02
    ld [bc], a                                    ; $5818: $02
    ld bc, $0201                                  ; $5819: $01 $01 $02
    ld bc, $0101                                  ; $581c: $01 $01 $01
    ld bc, $0101                                  ; $581f: $01 $01 $01
    ld bc, $0102                                  ; $5822: $01 $02 $01
    ld bc, $c201                                  ; $5825: $01 $01 $c2
    jp $c2c4                                      ; $5828: $c3 $c4 $c2


    pop de                                        ; $582b: $d1
    pop de                                        ; $582c: $d1
    pop de                                        ; $582d: $d1
    pop de                                        ; $582e: $d1
    pop de                                        ; $582f: $d1
    pop de                                        ; $5830: $d1
    pop de                                        ; $5831: $d1
    pop de                                        ; $5832: $d1
    pop de                                        ; $5833: $d1
    pop de                                        ; $5834: $d1
    pop de                                        ; $5835: $d1
    pop de                                        ; $5836: $d1
    adc e                                         ; $5837: $8b
    adc e                                         ; $5838: $8b
    adc e                                         ; $5839: $8b

jr_087_583a:
    adc e                                         ; $583a: $8b
    add e                                         ; $583b: $83
    add e                                         ; $583c: $83
    add e                                         ; $583d: $83
    add e                                         ; $583e: $83
    inc bc                                        ; $583f: $03
    inc bc                                        ; $5840: $03
    inc bc                                        ; $5841: $03
    inc bc                                        ; $5842: $03
    inc bc                                        ; $5843: $03
    inc bc                                        ; $5844: $03
    inc bc                                        ; $5845: $03
    inc bc                                        ; $5846: $03
    db $e3                                        ; $5847: $e3
    ld b, d                                       ; $5848: $42
    ld b, e                                       ; $5849: $43
    ld e, b                                       ; $584a: $58
    and $46                                       ; $584b: $e6 $46
    ld b, a                                       ; $584d: $47
    ld e, d                                       ; $584e: $5a
    jp hl                                         ; $584f: $e9


    ld c, d                                       ; $5850: $4a
    ld c, e                                       ; $5851: $4b
    ld e, h                                       ; $5852: $5c
    db $ec                                        ; $5853: $ec
    ld c, [hl]                                    ; $5854: $4e
    ld c, a                                       ; $5855: $4f
    ld d, b                                       ; $5856: $50
    inc bc                                        ; $5857: $03
    rlca                                          ; $5858: $07
    ld [bc], a                                    ; $5859: $02
    ld bc, $0703                                  ; $585a: $01 $03 $07
    ld bc, $0301                                  ; $585d: $01 $01 $03
    rlca                                          ; $5860: $07
    ld bc, $0301                                  ; $5861: $01 $01 $03
    rlca                                          ; $5864: $07
    ld [bc], a                                    ; $5865: $02
    ld [bc], a                                    ; $5866: $02
    ld e, c                                       ; $5867: $59
    db $e3                                        ; $5868: $e3
    or l                                          ; $5869: $b5
    xor d                                         ; $586a: $aa
    ld e, e                                       ; $586b: $5b
    and $b6                                       ; $586c: $e6 $b6
    xor e                                         ; $586e: $ab
    ld e, l                                       ; $586f: $5d
    jp hl                                         ; $5870: $e9


    or a                                          ; $5871: $b7
    xor l                                         ; $5872: $ad
    ld d, a                                       ; $5873: $57
    db $ec                                        ; $5874: $ec
    cp b                                          ; $5875: $b8
    xor a                                         ; $5876: $af
    rlca                                          ; $5877: $07
    inc hl                                        ; $5878: $23
    dec hl                                        ; $5879: $2b
    dec bc                                        ; $587a: $0b
    rlca                                          ; $587b: $07
    inc hl                                        ; $587c: $23
    dec hl                                        ; $587d: $2b
    dec bc                                        ; $587e: $0b
    rlca                                          ; $587f: $07
    inc hl                                        ; $5880: $23
    dec hl                                        ; $5881: $2b
    dec bc                                        ; $5882: $0b
    rlca                                          ; $5883: $07
    inc hl                                        ; $5884: $23
    dec hl                                        ; $5885: $2b
    dec bc                                        ; $5886: $0b
    pop de                                        ; $5887: $d1
    pop de                                        ; $5888: $d1
    pop de                                        ; $5889: $d1
    pop de                                        ; $588a: $d1
    xor h                                         ; $588b: $ac
    pop de                                        ; $588c: $d1
    pop de                                        ; $588d: $d1
    pop de                                        ; $588e: $d1
    xor [hl]                                      ; $588f: $ae
    pop de                                        ; $5890: $d1
    pop de                                        ; $5891: $d1
    pop de                                        ; $5892: $d1
    or b                                          ; $5893: $b0
    pop de                                        ; $5894: $d1
    pop de                                        ; $5895: $d1
    pop de                                        ; $5896: $d1
    inc bc                                        ; $5897: $03
    inc bc                                        ; $5898: $03
    inc bc                                        ; $5899: $03
    inc bc                                        ; $589a: $03
    dec bc                                        ; $589b: $0b
    inc bc                                        ; $589c: $03
    inc bc                                        ; $589d: $03
    inc bc                                        ; $589e: $03
    dec bc                                        ; $589f: $0b
    inc bc                                        ; $58a0: $03
    inc bc                                        ; $58a1: $03
    inc bc                                        ; $58a2: $03
    dec bc                                        ; $58a3: $0b
    inc bc                                        ; $58a4: $03
    inc bc                                        ; $58a5: $03
    inc bc                                        ; $58a6: $03
    pop de                                        ; $58a7: $d1
    pop de                                        ; $58a8: $d1
    xor $ef                                       ; $58a9: $ee $ef
    pop de                                        ; $58ab: $d1
    pop de                                        ; $58ac: $d1
    pop af                                        ; $58ad: $f1
    ld a, [c]                                     ; $58ae: $f2
    pop de                                        ; $58af: $d1
    pop de                                        ; $58b0: $d1
    ld [c], a                                     ; $58b1: $e2
    db $e3                                        ; $58b2: $e3
    pop de                                        ; $58b3: $d1
    pop de                                        ; $58b4: $d1
    push hl                                       ; $58b5: $e5
    and $03                                       ; $58b6: $e6 $03
    inc bc                                        ; $58b8: $03
    inc bc                                        ; $58b9: $03
    inc bc                                        ; $58ba: $03
    inc bc                                        ; $58bb: $03
    inc bc                                        ; $58bc: $03
    inc bc                                        ; $58bd: $03
    inc bc                                        ; $58be: $03
    inc bc                                        ; $58bf: $03
    inc bc                                        ; $58c0: $03
    inc bc                                        ; $58c1: $03
    inc bc                                        ; $58c2: $03
    inc bc                                        ; $58c3: $03
    inc bc                                        ; $58c4: $03
    inc bc                                        ; $58c5: $03
    inc bc                                        ; $58c6: $03
    cp d                                          ; $58c7: $ba
    daa                                           ; $58c8: $27
    jr z, jr_087_58f4                             ; $58c9: $28 $29

    cp a                                          ; $58cb: $bf
    dec hl                                        ; $58cc: $2b
    inc l                                         ; $58cd: $2c
    dec sp                                        ; $58ce: $3b
    ld b, c                                       ; $58cf: $41
    ld b, d                                       ; $58d0: $42
    ld b, e                                       ; $58d1: $43
    ld e, b                                       ; $58d2: $58
    cp e                                          ; $58d3: $bb
    cp h                                          ; $58d4: $bc
    cp l                                          ; $58d5: $bd
    ld e, d                                       ; $58d6: $5a
    dec bc                                        ; $58d7: $0b
    rlca                                          ; $58d8: $07
    ld bc, $0b02                                  ; $58d9: $01 $02 $0b
    rlca                                          ; $58dc: $07
    ld bc, $0702                                  ; $58dd: $01 $02 $07
    ld bc, $0201                                  ; $58e0: $01 $01 $02
    add hl, bc                                    ; $58e3: $09
    add hl, bc                                    ; $58e4: $09
    ld a, [bc]                                    ; $58e5: $0a
    ld [bc], a                                    ; $58e6: $02
    inc [hl]                                      ; $58e7: $34
    cp d                                          ; $58e8: $ba
    cp c                                          ; $58e9: $b9
    or c                                          ; $58ea: $b1
    inc a                                         ; $58eb: $3c
    cp a                                          ; $58ec: $bf
    cp [hl]                                       ; $58ed: $be
    or e                                          ; $58ee: $b3
    ld e, c                                       ; $58ef: $59
    ld [$f241], a                                 ; $58f0: $ea $41 $f2
    ld e, e                                       ; $58f3: $5b

jr_087_58f4:
    db $ed                                        ; $58f4: $ed
    ld b, l                                       ; $58f5: $45
    db $e3                                        ; $58f6: $e3
    rlca                                          ; $58f7: $07
    dec hl                                        ; $58f8: $2b
    dec hl                                        ; $58f9: $2b
    dec bc                                        ; $58fa: $0b
    rlca                                          ; $58fb: $07
    dec hl                                        ; $58fc: $2b
    dec hl                                        ; $58fd: $2b
    dec bc                                        ; $58fe: $0b
    ld bc, $0507                                  ; $58ff: $01 $07 $05
    inc hl                                        ; $5902: $23
    ld bc, $0701                                  ; $5903: $01 $01 $07
    inc hl                                        ; $5906: $23
    or d                                          ; $5907: $b2
    pop de                                        ; $5908: $d1
    pop de                                        ; $5909: $d1
    pop de                                        ; $590a: $d1
    or h                                          ; $590b: $b4
    pop de                                        ; $590c: $d1
    pop de                                        ; $590d: $d1
    pop de                                        ; $590e: $d1
    pop af                                        ; $590f: $f1
    pop de                                        ; $5910: $d1
    pop de                                        ; $5911: $d1
    pop de                                        ; $5912: $d1
    or l                                          ; $5913: $b5
    db $d3                                        ; $5914: $d3
    db $f4                                        ; $5915: $f4
    push af                                       ; $5916: $f5
    dec bc                                        ; $5917: $0b
    inc bc                                        ; $5918: $03
    inc bc                                        ; $5919: $03
    inc bc                                        ; $591a: $03
    dec bc                                        ; $591b: $0b
    inc bc                                        ; $591c: $03
    inc bc                                        ; $591d: $03
    inc bc                                        ; $591e: $03
    inc hl                                        ; $591f: $23
    inc bc                                        ; $5920: $03
    inc bc                                        ; $5921: $03
    inc bc                                        ; $5922: $03
    dec hl                                        ; $5923: $2b
    inc bc                                        ; $5924: $03
    ld [bc], a                                    ; $5925: $02
    inc bc                                        ; $5926: $03
    pop de                                        ; $5927: $d1
    pop de                                        ; $5928: $d1
    add sp, -$17                                  ; $5929: $e8 $e9
    pop de                                        ; $592b: $d1
    pop de                                        ; $592c: $d1
    db $eb                                        ; $592d: $eb
    db $ec                                        ; $592e: $ec
    pop de                                        ; $592f: $d1
    pop de                                        ; $5930: $d1
    xor $ef                                       ; $5931: $ee $ef
    or $f7                                        ; $5933: $f6 $f7
    or l                                          ; $5935: $b5
    db $e3                                        ; $5936: $e3
    inc bc                                        ; $5937: $03
    inc bc                                        ; $5938: $03
    inc bc                                        ; $5939: $03
    inc bc                                        ; $593a: $03
    inc bc                                        ; $593b: $03
    inc bc                                        ; $593c: $03
    inc bc                                        ; $593d: $03
    inc bc                                        ; $593e: $03
    inc bc                                        ; $593f: $03
    inc bc                                        ; $5940: $03
    inc bc                                        ; $5941: $03
    inc bc                                        ; $5942: $03
    inc bc                                        ; $5943: $03
    inc bc                                        ; $5944: $03
    dec bc                                        ; $5945: $0b
    inc bc                                        ; $5946: $03
    jp z, $cccb                                   ; $5947: $ca $cb $cc

    ld e, h                                       ; $594a: $5c
    call $cfce                                    ; $594b: $cd $ce $cf
    ld d, b                                       ; $594e: $50
    ld h, $27                                     ; $594f: $26 $27
    jr z, jr_087_597c                             ; $5951: $28 $29

    ld a, [hl+]                                   ; $5953: $2a
    dec hl                                        ; $5954: $2b
    inc l                                         ; $5955: $2c
    dec sp                                        ; $5956: $3b
    add hl, bc                                    ; $5957: $09
    add hl, bc                                    ; $5958: $09
    ld a, [bc]                                    ; $5959: $0a
    ld bc, $0a09                                  ; $595a: $01 $09 $0a
    add hl, bc                                    ; $595d: $09
    ld bc, $0102                                  ; $595e: $01 $02 $01
    ld bc, $0101                                  ; $5961: $01 $01 $01
    ld bc, $0201                                  ; $5964: $01 $01 $02
    ld e, l                                       ; $5967: $5d
    ldh a, [rOBP1]                                ; $5968: $f0 $49
    and $57                                       ; $596a: $e6 $57
    di                                            ; $596c: $f3
    ld c, l                                       ; $596d: $4d
    jp hl                                         ; $596e: $e9


    inc [hl]                                      ; $596f: $34
    db $e4                                        ; $5970: $e4
    ld h, $ec                                     ; $5971: $26 $ec
    inc a                                         ; $5973: $3c
    rst $20                                       ; $5974: $e7
    ld a, [hl+]                                   ; $5975: $2a
    cp d                                          ; $5976: $ba
    ld bc, $0701                                  ; $5977: $01 $01 $07
    inc hl                                        ; $597a: $23
    ld [bc], a                                    ; $597b: $02

jr_087_597c:
    ld bc, $2307                                  ; $597c: $01 $07 $23
    ld [bc], a                                    ; $597f: $02
    ld bc, $2307                                  ; $5980: $01 $07 $23
    ld bc, $0702                                  ; $5983: $01 $02 $07
    dec hl                                        ; $5986: $2b
    or [hl]                                       ; $5987: $b6
    push de                                       ; $5988: $d5
    ld hl, sp-$07                                 ; $5989: $f8 $f9
    or a                                          ; $598b: $b7
    ret c                                         ; $598c: $d8

    db $fc                                        ; $598d: $fc
    db $fd                                        ; $598e: $fd
    cp b                                          ; $598f: $b8
    db $db                                        ; $5990: $db
    rst $38                                       ; $5991: $ff
    nop                                           ; $5992: $00
    cp c                                          ; $5993: $b9
    sbc $07                                       ; $5994: $de $07
    rra                                           ; $5996: $1f
    dec hl                                        ; $5997: $2b
    inc bc                                        ; $5998: $03
    ld [bc], a                                    ; $5999: $02
    inc bc                                        ; $599a: $03
    dec hl                                        ; $599b: $2b
    inc bc                                        ; $599c: $03
    ld [bc], a                                    ; $599d: $02
    inc bc                                        ; $599e: $03
    dec hl                                        ; $599f: $2b
    inc bc                                        ; $59a0: $03
    ld [bc], a                                    ; $59a1: $02
    inc bc                                        ; $59a2: $03
    dec hl                                        ; $59a3: $2b
    inc bc                                        ; $59a4: $03
    ld [bc], a                                    ; $59a5: $02
    inc bc                                        ; $59a6: $03
    ld a, [$b6fb]                                 ; $59a7: $fa $fb $b6
    and $d1                                       ; $59aa: $e6 $d1
    cp $b7                                        ; $59ac: $fe $b7
    jp hl                                         ; $59ae: $e9


    ld bc, $b802                                  ; $59af: $01 $02 $b8
    db $ec                                        ; $59b2: $ec
    jr nz, jr_087_59d6                            ; $59b3: $20 $21

    cp c                                          ; $59b5: $b9
    cp d                                          ; $59b6: $ba
    inc bc                                        ; $59b7: $03
    inc bc                                        ; $59b8: $03
    dec bc                                        ; $59b9: $0b
    inc bc                                        ; $59ba: $03
    inc bc                                        ; $59bb: $03
    inc bc                                        ; $59bc: $03
    dec bc                                        ; $59bd: $0b
    inc bc                                        ; $59be: $03
    inc bc                                        ; $59bf: $03
    inc bc                                        ; $59c0: $03
    dec bc                                        ; $59c1: $0b
    inc bc                                        ; $59c2: $03
    inc bc                                        ; $59c3: $03
    inc bc                                        ; $59c4: $03
    dec bc                                        ; $59c5: $0b
    dec bc                                        ; $59c6: $0b
    ret nz                                        ; $59c7: $c0

    ld b, d                                       ; $59c8: $42
    ld b, e                                       ; $59c9: $43
    ld e, b                                       ; $59ca: $58
    db $e3                                        ; $59cb: $e3
    ld b, [hl]                                    ; $59cc: $46
    ld b, a                                       ; $59cd: $47
    ld e, d                                       ; $59ce: $5a
    and $4a                                       ; $59cf: $e6 $4a
    ld c, e                                       ; $59d1: $4b
    ld e, h                                       ; $59d2: $5c
    jp hl                                         ; $59d3: $e9


    ld c, [hl]                                    ; $59d4: $4e
    ld c, a                                       ; $59d5: $4f

jr_087_59d6:
    ld d, b                                       ; $59d6: $50
    xor e                                         ; $59d7: $ab
    ld bc, $0201                                  ; $59d8: $01 $01 $02
    add e                                         ; $59db: $83
    rlca                                          ; $59dc: $07
    ld bc, $0302                                  ; $59dd: $01 $02 $03
    rlca                                          ; $59e0: $07
    ld bc, $0301                                  ; $59e1: $01 $01 $03
    rlca                                          ; $59e4: $07
    ld bc, $5901                                  ; $59e5: $01 $01 $59
    ld [$bf41], a                                 ; $59e8: $ea $41 $bf
    ld e, e                                       ; $59eb: $5b
    db $ed                                        ; $59ec: $ed
    ld b, l                                       ; $59ed: $45
    ld b, [hl]                                    ; $59ee: $46
    ld e, l                                       ; $59ef: $5d
    ldh a, [rOBP1]                                ; $59f0: $f0 $49
    ld c, d                                       ; $59f2: $4a
    ld d, a                                       ; $59f3: $57
    di                                            ; $59f4: $f3
    ld c, l                                       ; $59f5: $4d
    ld c, [hl]                                    ; $59f6: $4e
    ld bc, $0702                                  ; $59f7: $01 $02 $07
    dec hl                                        ; $59fa: $2b
    ld bc, $0101                                  ; $59fb: $01 $01 $01
    rlca                                          ; $59fe: $07
    ld [bc], a                                    ; $59ff: $02
    ld [bc], a                                    ; $5a00: $02
    ld bc, $0101                                  ; $5a01: $01 $01 $01
    ld [bc], a                                    ; $5a04: $02
    ld [bc], a                                    ; $5a05: $02
    ld [bc], a                                    ; $5a06: $02
    cp [hl]                                       ; $5a07: $be
    pop hl                                        ; $5a08: $e1
    ld [hl+], a                                   ; $5a09: $22
    inc hl                                        ; $5a0a: $23
    ld b, a                                       ; $5a0b: $47
    ld c, b                                       ; $5a0c: $48
    ld d, e                                       ; $5a0d: $53
    ld d, h                                       ; $5a0e: $54
    ld c, e                                       ; $5a0f: $4b
    ld c, h                                       ; $5a10: $4c
    ld d, l                                       ; $5a11: $55
    ld d, [hl]                                    ; $5a12: $56
    ld c, a                                       ; $5a13: $4f
    ld d, b                                       ; $5a14: $50
    ld d, a                                       ; $5a15: $57
    di                                            ; $5a16: $f3
    dec hl                                        ; $5a17: $2b
    inc bc                                        ; $5a18: $03
    ld [bc], a                                    ; $5a19: $02
    inc bc                                        ; $5a1a: $03
    dec b                                         ; $5a1b: $05
    dec b                                         ; $5a1c: $05
    dec b                                         ; $5a1d: $05
    dec b                                         ; $5a1e: $05
    rlca                                          ; $5a1f: $07
    rlca                                          ; $5a20: $07
    rlca                                          ; $5a21: $07
    rlca                                          ; $5a22: $07
    ld bc, $0101                                  ; $5a23: $01 $01 $01
    ld bc, $2524                                  ; $5a26: $01 $24 $25
    cp [hl]                                       ; $5a29: $be
    cp a                                          ; $5a2a: $bf
    ld b, l                                       ; $5a2b: $45
    ld b, [hl]                                    ; $5a2c: $46
    ld b, a                                       ; $5a2d: $47
    ld e, d                                       ; $5a2e: $5a
    ld c, c                                       ; $5a2f: $49
    ld c, d                                       ; $5a30: $4a
    ld c, e                                       ; $5a31: $4b
    ld e, h                                       ; $5a32: $5c
    ld c, l                                       ; $5a33: $4d
    ld c, [hl]                                    ; $5a34: $4e
    ld c, a                                       ; $5a35: $4f
    ld d, b                                       ; $5a36: $50
    inc bc                                        ; $5a37: $03
    inc bc                                        ; $5a38: $03
    dec bc                                        ; $5a39: $0b
    dec bc                                        ; $5a3a: $0b
    dec b                                         ; $5a3b: $05
    dec b                                         ; $5a3c: $05
    dec b                                         ; $5a3d: $05
    rlca                                          ; $5a3e: $07
    rlca                                          ; $5a3f: $07
    rlca                                          ; $5a40: $07
    rlca                                          ; $5a41: $07
    ld bc, $0101                                  ; $5a42: $01 $01 $01
    ld bc, $5901                                  ; $5a45: $01 $01 $59
    ld [$4241], a                                 ; $5a48: $ea $41 $42
    ld e, e                                       ; $5a4b: $5b
    db $ed                                        ; $5a4c: $ed
    cp e                                          ; $5a4d: $bb
    cp h                                          ; $5a4e: $bc
    ld e, l                                       ; $5a4f: $5d
    ldh a, [$ca]                                  ; $5a50: $f0 $ca
    bit 2, a                                      ; $5a52: $cb $57
    di                                            ; $5a54: $f3
    call Call_000_07ce                            ; $5a55: $cd $ce $07
    ld [bc], a                                    ; $5a58: $02
    ld bc, $0701                                  ; $5a59: $01 $01 $07
    ld [bc], a                                    ; $5a5c: $02
    ld a, [bc]                                    ; $5a5d: $0a
    add hl, bc                                    ; $5a5e: $09
    rlca                                          ; $5a5f: $07
    ld bc, $0a0a                                  ; $5a60: $01 $0a $0a
    rlca                                          ; $5a63: $07
    ld [bc], a                                    ; $5a64: $02
    add hl, bc                                    ; $5a65: $09
    add hl, bc                                    ; $5a66: $09
    ld b, e                                       ; $5a67: $43
    ld e, b                                       ; $5a68: $58
    ld e, c                                       ; $5a69: $59
    ld [$5abd], a                                 ; $5a6a: $ea $bd $5a
    ld e, e                                       ; $5a6d: $5b
    db $ed                                        ; $5a6e: $ed
    call z, Call_087_5d5c                         ; $5a6f: $cc $5c $5d
    ldh a, [$cf]                                  ; $5a72: $f0 $cf
    ld d, b                                       ; $5a74: $50
    ld d, a                                       ; $5a75: $57
    di                                            ; $5a76: $f3
    ld [bc], a                                    ; $5a77: $02
    ld bc, $0101                                  ; $5a78: $01 $01 $01
    add hl, bc                                    ; $5a7b: $09
    ld bc, $0101                                  ; $5a7c: $01 $01 $01
    ld a, [bc]                                    ; $5a7f: $0a
    ld bc, $0101                                  ; $5a80: $01 $01 $01
    add hl, bc                                    ; $5a83: $09
    ld bc, $0701                                  ; $5a84: $01 $01 $07
    ld b, c                                       ; $5a87: $41
    ld b, d                                       ; $5a88: $42
    ld b, e                                       ; $5a89: $43
    ld b, h                                       ; $5a8a: $44
    ld b, l                                       ; $5a8b: $45
    ld b, [hl]                                    ; $5a8c: $46
    ld b, a                                       ; $5a8d: $47
    ld c, b                                       ; $5a8e: $48
    ret nz                                        ; $5a8f: $c0

    pop bc                                        ; $5a90: $c1
    jp nz, $e3c3                                  ; $5a91: $c2 $c3 $e3

    ld [c], a                                     ; $5a94: $e2
    pop de                                        ; $5a95: $d1
    pop de                                        ; $5a96: $d1
    ld bc, $0202                                  ; $5a97: $01 $02 $02
    ld [bc], a                                    ; $5a9a: $02
    ld bc, $0101                                  ; $5a9b: $01 $01 $01
    ld [bc], a                                    ; $5a9e: $02
    adc e                                         ; $5a9f: $8b
    adc e                                         ; $5aa0: $8b
    adc e                                         ; $5aa1: $8b
    adc e                                         ; $5aa2: $8b
    and e                                         ; $5aa3: $a3
    and e                                         ; $5aa4: $a3
    add e                                         ; $5aa5: $83
    add e                                         ; $5aa6: $83
    ld d, c                                       ; $5aa7: $51
    ld d, d                                       ; $5aa8: $52
    ld b, c                                       ; $5aa9: $41
    sbc b                                         ; $5aaa: $98
    ld d, e                                       ; $5aab: $53
    ld d, h                                       ; $5aac: $54
    ld b, l                                       ; $5aad: $45
    sbc c                                         ; $5aae: $99
    call nz, $c6c5                                ; $5aaf: $c4 $c5 $c6
    rst $00                                       ; $5ab2: $c7
    pop de                                        ; $5ab3: $d1
    pop de                                        ; $5ab4: $d1
    pop de                                        ; $5ab5: $d1
    pop de                                        ; $5ab6: $d1
    ld [bc], a                                    ; $5ab7: $02
    ld [bc], a                                    ; $5ab8: $02
    ld bc, $020e                                  ; $5ab9: $01 $0e $02
    ld [bc], a                                    ; $5abc: $02
    ld bc, $8b0e                                  ; $5abd: $01 $0e $8b
    adc e                                         ; $5ac0: $8b
    adc e                                         ; $5ac1: $8b
    adc e                                         ; $5ac2: $8b
    add e                                         ; $5ac3: $83
    add e                                         ; $5ac4: $83
    add e                                         ; $5ac5: $83
    add e                                         ; $5ac6: $83
    inc [hl]                                      ; $5ac7: $34
    db $e4                                        ; $5ac8: $e4
    ld h, $27                                     ; $5ac9: $26 $27
    inc a                                         ; $5acb: $3c
    rst $20                                       ; $5acc: $e7
    ld a, [hl+]                                   ; $5acd: $2a
    adc c                                         ; $5ace: $89
    ld e, c                                       ; $5acf: $59
    ld [$9841], a                                 ; $5ad0: $ea $41 $98
    ld e, e                                       ; $5ad3: $5b
    db $ed                                        ; $5ad4: $ed
    ld b, l                                       ; $5ad5: $45
    sbc c                                         ; $5ad6: $99
    rlca                                          ; $5ad7: $07
    ld bc, $0101                                  ; $5ad8: $01 $01 $01
    rlca                                          ; $5adb: $07
    ld bc, $0901                                  ; $5adc: $01 $01 $09
    rlca                                          ; $5adf: $07
    ld bc, $0e01                                  ; $5ae0: $01 $01 $0e
    rlca                                          ; $5ae3: $07
    ld bc, $0e01                                  ; $5ae4: $01 $01 $0e
    adc [hl]                                      ; $5ae7: $8e
    adc a                                         ; $5ae8: $8f
    inc [hl]                                      ; $5ae9: $34
    db $e4                                        ; $5aea: $e4
    sub b                                         ; $5aeb: $90
    sub c                                         ; $5aec: $91
    sub d                                         ; $5aed: $92
    rst $20                                       ; $5aee: $e7
    sbc e                                         ; $5aef: $9b
    sbc h                                         ; $5af0: $9c
    sbc l                                         ; $5af1: $9d
    sbc [hl]                                      ; $5af2: $9e
    sbc a                                         ; $5af3: $9f
    and b                                         ; $5af4: $a0
    and c                                         ; $5af5: $a1
    db $ed                                        ; $5af6: $ed
    add hl, bc                                    ; $5af7: $09
    add hl, bc                                    ; $5af8: $09
    ld bc, $0e07                                  ; $5af9: $01 $07 $0e
    ld c, $09                                     ; $5afc: $0e $09
    rlca                                          ; $5afe: $07
    ld c, $0e                                     ; $5aff: $0e $0e
    ld c, $0f                                     ; $5b01: $0e $0f
    ld c, $0e                                     ; $5b03: $0e $0e
    add hl, bc                                    ; $5b05: $09
    rlca                                          ; $5b06: $07
    and $e5                                       ; $5b07: $e6 $e5
    pop de                                        ; $5b09: $d1
    pop de                                        ; $5b0a: $d1
    jp hl                                         ; $5b0b: $e9


    add sp, -$2f                                  ; $5b0c: $e8 $d1
    pop de                                        ; $5b0e: $d1
    db $ec                                        ; $5b0f: $ec
    db $eb                                        ; $5b10: $eb
    pop de                                        ; $5b11: $d1
    pop de                                        ; $5b12: $d1
    rst $28                                       ; $5b13: $ef
    xor $d1                                       ; $5b14: $ee $d1
    pop de                                        ; $5b16: $d1
    and e                                         ; $5b17: $a3
    and e                                         ; $5b18: $a3
    inc bc                                        ; $5b19: $03
    inc bc                                        ; $5b1a: $03
    and e                                         ; $5b1b: $a3
    and e                                         ; $5b1c: $a3
    inc bc                                        ; $5b1d: $03
    inc bc                                        ; $5b1e: $03
    and e                                         ; $5b1f: $a3
    and e                                         ; $5b20: $a3
    inc bc                                        ; $5b21: $03
    inc bc                                        ; $5b22: $03
    and e                                         ; $5b23: $a3
    and e                                         ; $5b24: $a3
    inc bc                                        ; $5b25: $03
    inc bc                                        ; $5b26: $03
    ld e, l                                       ; $5b27: $5d
    ldh a, [rOBP1]                                ; $5b28: $f0 $49
    sbc d                                         ; $5b2a: $9a
    ld d, a                                       ; $5b2b: $57
    di                                            ; $5b2c: $f3
    ld c, l                                       ; $5b2d: $4d
    ld c, [hl]                                    ; $5b2e: $4e
    inc [hl]                                      ; $5b2f: $34
    db $e4                                        ; $5b30: $e4
    ld h, $27                                     ; $5b31: $26 $27
    inc a                                         ; $5b33: $3c
    rst $20                                       ; $5b34: $e7
    ld a, [hl+]                                   ; $5b35: $2a
    dec hl                                        ; $5b36: $2b
    rlca                                          ; $5b37: $07
    ld [bc], a                                    ; $5b38: $02
    ld [bc], a                                    ; $5b39: $02
    add hl, bc                                    ; $5b3a: $09
    rlca                                          ; $5b3b: $07
    ld [bc], a                                    ; $5b3c: $02
    ld [bc], a                                    ; $5b3d: $02
    ld bc, $0207                                  ; $5b3e: $01 $07 $02
    ld bc, $0702                                  ; $5b41: $01 $02 $07
    ld bc, $0201                                  ; $5b44: $01 $01 $02
    and d                                         ; $5b47: $a2
    and e                                         ; $5b48: $a3
    and h                                         ; $5b49: $a4
    and l                                         ; $5b4a: $a5
    ld c, a                                       ; $5b4b: $4f
    and [hl]                                      ; $5b4c: $a6
    and a                                         ; $5b4d: $a7
    di                                            ; $5b4e: $f3
    jr z, jr_087_5b7a                             ; $5b4f: $28 $29

    inc [hl]                                      ; $5b51: $34
    db $e4                                        ; $5b52: $e4
    inc l                                         ; $5b53: $2c
    dec sp                                        ; $5b54: $3b
    inc a                                         ; $5b55: $3c
    rst $20                                       ; $5b56: $e7
    ld c, $0e                                     ; $5b57: $0e $0e
    ld c, $0f                                     ; $5b59: $0e $0f
    ld bc, $0909                                  ; $5b5b: $01 $09 $09
    rlca                                          ; $5b5e: $07
    ld bc, $0101                                  ; $5b5f: $01 $01 $01
    rlca                                          ; $5b62: $07
    ld [bc], a                                    ; $5b63: $02
    ld [bc], a                                    ; $5b64: $02
    ld bc, $f207                                  ; $5b65: $01 $07 $f2
    pop af                                        ; $5b68: $f1
    pop de                                        ; $5b69: $d1
    pop de                                        ; $5b6a: $d1
    ld a, [c]                                     ; $5b6b: $f2
    pop af                                        ; $5b6c: $f1
    pop de                                        ; $5b6d: $d1
    pop de                                        ; $5b6e: $d1
    db $e3                                        ; $5b6f: $e3
    ld [c], a                                     ; $5b70: $e2
    pop de                                        ; $5b71: $d1
    pop de                                        ; $5b72: $d1
    and $e5                                       ; $5b73: $e6 $e5
    pop de                                        ; $5b75: $d1
    pop de                                        ; $5b76: $d1
    and e                                         ; $5b77: $a3
    and e                                         ; $5b78: $a3
    inc bc                                        ; $5b79: $03

jr_087_5b7a:
    inc bc                                        ; $5b7a: $03
    and e                                         ; $5b7b: $a3
    and e                                         ; $5b7c: $a3
    inc bc                                        ; $5b7d: $03
    inc bc                                        ; $5b7e: $03
    and e                                         ; $5b7f: $a3
    and e                                         ; $5b80: $a3
    inc bc                                        ; $5b81: $03
    inc bc                                        ; $5b82: $03
    and e                                         ; $5b83: $a3
    and e                                         ; $5b84: $a3
    inc bc                                        ; $5b85: $03
    inc bc                                        ; $5b86: $03
    ld e, c                                       ; $5b87: $59
    ld [$4241], a                                 ; $5b88: $ea $41 $42
    ld e, e                                       ; $5b8b: $5b
    db $ed                                        ; $5b8c: $ed
    ld b, l                                       ; $5b8d: $45
    ld b, [hl]                                    ; $5b8e: $46
    ld e, l                                       ; $5b8f: $5d
    ldh a, [rOBP1]                                ; $5b90: $f0 $49
    ld c, d                                       ; $5b92: $4a
    ld d, a                                       ; $5b93: $57
    di                                            ; $5b94: $f3
    ld c, l                                       ; $5b95: $4d
    ld c, [hl]                                    ; $5b96: $4e
    rlca                                          ; $5b97: $07
    ld [bc], a                                    ; $5b98: $02
    ld [bc], a                                    ; $5b99: $02
    ld bc, $0101                                  ; $5b9a: $01 $01 $01
    ld bc, $0201                                  ; $5b9d: $01 $01 $02
    ld [bc], a                                    ; $5ba0: $02
    ld bc, $0201                                  ; $5ba1: $01 $01 $02
    ld bc, $0101                                  ; $5ba4: $01 $01 $01
    ld b, e                                       ; $5ba7: $43
    ld e, b                                       ; $5ba8: $58
    ld e, c                                       ; $5ba9: $59
    ld [$5a47], a                                 ; $5baa: $ea $47 $5a
    ld e, e                                       ; $5bad: $5b
    db $ed                                        ; $5bae: $ed
    ld c, e                                       ; $5baf: $4b
    ld e, h                                       ; $5bb0: $5c
    ld e, l                                       ; $5bb1: $5d
    ldh a, [rVBK]                                 ; $5bb2: $f0 $4f
    ld d, b                                       ; $5bb4: $50
    ld d, a                                       ; $5bb5: $57
    di                                            ; $5bb6: $f3
    ld bc, $0202                                  ; $5bb7: $01 $02 $02
    rlca                                          ; $5bba: $07
    ld bc, $0102                                  ; $5bbb: $01 $02 $01
    rlca                                          ; $5bbe: $07
    ld [bc], a                                    ; $5bbf: $02
    ld bc, $0701                                  ; $5bc0: $01 $01 $07
    ld bc, $0101                                  ; $5bc3: $01 $01 $01
    rlca                                          ; $5bc6: $07
    sbc e                                         ; $5bc7: $9b
    sbc h                                         ; $5bc8: $9c
    sbc l                                         ; $5bc9: $9d
    sbc [hl]                                      ; $5bca: $9e
    sbc a                                         ; $5bcb: $9f
    and b                                         ; $5bcc: $a0
    and c                                         ; $5bcd: $a1
    db $ed                                        ; $5bce: $ed
    ret z                                         ; $5bcf: $c8

    ret                                           ; $5bd0: $c9


    ret z                                         ; $5bd1: $c8

    ret                                           ; $5bd2: $c9


    pop de                                        ; $5bd3: $d1
    pop de                                        ; $5bd4: $d1
    pop de                                        ; $5bd5: $d1
    pop de                                        ; $5bd6: $d1
    ld c, $0e                                     ; $5bd7: $0e $0e
    ld c, $09                                     ; $5bd9: $0e $09
    ld c, $0e                                     ; $5bdb: $0e $0e
    add hl, bc                                    ; $5bdd: $09
    ld bc, $8b8b                                  ; $5bde: $01 $8b $8b
    adc e                                         ; $5be1: $8b
    adc e                                         ; $5be2: $8b
    add e                                         ; $5be3: $83
    add e                                         ; $5be4: $83
    add e                                         ; $5be5: $83
    add e                                         ; $5be6: $83
    ld b, c                                       ; $5be7: $41
    ld b, d                                       ; $5be8: $42
    ld b, e                                       ; $5be9: $43
    ld e, b                                       ; $5bea: $58
    ld b, l                                       ; $5beb: $45
    ld b, [hl]                                    ; $5bec: $46
    ld b, a                                       ; $5bed: $47
    ld e, d                                       ; $5bee: $5a
    jp nz, $c4c3                                  ; $5bef: $c2 $c3 $c4

    push bc                                       ; $5bf2: $c5
    pop de                                        ; $5bf3: $d1
    pop de                                        ; $5bf4: $d1
    pop de                                        ; $5bf5: $d1
    pop de                                        ; $5bf6: $d1
    ld bc, $0201                                  ; $5bf7: $01 $01 $02
    ld [bc], a                                    ; $5bfa: $02
    ld [bc], a                                    ; $5bfb: $02
    ld [bc], a                                    ; $5bfc: $02
    ld [bc], a                                    ; $5bfd: $02
    ld [bc], a                                    ; $5bfe: $02
    adc e                                         ; $5bff: $8b
    adc e                                         ; $5c00: $8b
    adc e                                         ; $5c01: $8b
    adc e                                         ; $5c02: $8b
    add e                                         ; $5c03: $83
    add e                                         ; $5c04: $83
    add e                                         ; $5c05: $83
    add e                                         ; $5c06: $83
    ld e, c                                       ; $5c07: $59
    ld [$4241], a                                 ; $5c08: $ea $41 $42
    ld e, e                                       ; $5c0b: $5b
    db $ed                                        ; $5c0c: $ed
    ld b, l                                       ; $5c0d: $45
    ld b, [hl]                                    ; $5c0e: $46
    add $c7                                       ; $5c0f: $c6 $c7
    ret z                                         ; $5c11: $c8

    ret                                           ; $5c12: $c9


    pop de                                        ; $5c13: $d1
    pop de                                        ; $5c14: $d1
    pop de                                        ; $5c15: $d1
    pop de                                        ; $5c16: $d1
    ld bc, $0101                                  ; $5c17: $01 $01 $01
    ld [bc], a                                    ; $5c1a: $02
    ld bc, $0101                                  ; $5c1b: $01 $01 $01
    ld bc, $8b8b                                  ; $5c1e: $01 $8b $8b
    adc e                                         ; $5c21: $8b
    adc e                                         ; $5c22: $8b
    add e                                         ; $5c23: $83
    add e                                         ; $5c24: $83
    add e                                         ; $5c25: $83
    add e                                         ; $5c26: $83
    ld b, e                                       ; $5c27: $43
    ld e, b                                       ; $5c28: $58
    ld e, c                                       ; $5c29: $59
    ld [$5a47], a                                 ; $5c2a: $ea $47 $5a
    ld e, e                                       ; $5c2d: $5b
    db $ed                                        ; $5c2e: $ed
    pop bc                                        ; $5c2f: $c1
    ret nz                                        ; $5c30: $c0

    ld e, l                                       ; $5c31: $5d
    ldh a, [$e2]                                  ; $5c32: $f0 $e2
    db $e3                                        ; $5c34: $e3
    ld d, a                                       ; $5c35: $57
    di                                            ; $5c36: $f3
    ld [bc], a                                    ; $5c37: $02
    ld bc, $0102                                  ; $5c38: $01 $02 $01
    ld bc, $0201                                  ; $5c3b: $01 $01 $02
    ld [bc], a                                    ; $5c3e: $02
    xor e                                         ; $5c3f: $ab
    xor e                                         ; $5c40: $ab
    ld bc, $8301                                  ; $5c41: $01 $01 $83
    add e                                         ; $5c44: $83
    rlca                                          ; $5c45: $07
    ld bc, $e6e5                                  ; $5c46: $01 $e5 $e6
    inc [hl]                                      ; $5c49: $34
    db $e4                                        ; $5c4a: $e4
    add sp, -$17                                  ; $5c4b: $e8 $e9
    dec [hl]                                      ; $5c4d: $35
    ld [hl], $eb                                  ; $5c4e: $36 $eb
    db $ec                                        ; $5c50: $ec
    ld d, c                                       ; $5c51: $51
    ld d, d                                       ; $5c52: $52
    xor $ef                                       ; $5c53: $ee $ef
    ld d, e                                       ; $5c55: $53
    ld d, h                                       ; $5c56: $54
    inc bc                                        ; $5c57: $03
    inc bc                                        ; $5c58: $03
    rlca                                          ; $5c59: $07
    ld bc, $0303                                  ; $5c5a: $01 $03 $03
    rlca                                          ; $5c5d: $07
    ld [bc], a                                    ; $5c5e: $02
    inc bc                                        ; $5c5f: $03
    inc bc                                        ; $5c60: $03
    rlca                                          ; $5c61: $07
    ld [bc], a                                    ; $5c62: $02
    inc bc                                        ; $5c63: $03
    inc bc                                        ; $5c64: $03
    rlca                                          ; $5c65: $07
    ld bc, $f2f1                                  ; $5c66: $01 $f1 $f2
    ld d, l                                       ; $5c69: $55
    ld d, [hl]                                    ; $5c6a: $56
    ld [c], a                                     ; $5c6b: $e2
    db $e3                                        ; $5c6c: $e3
    ld d, a                                       ; $5c6d: $57
    di                                            ; $5c6e: $f3
    push hl                                       ; $5c6f: $e5
    and $34                                       ; $5c70: $e6 $34
    db $e4                                        ; $5c72: $e4
    add sp, -$17                                  ; $5c73: $e8 $e9
    inc a                                         ; $5c75: $3c
    rst $20                                       ; $5c76: $e7
    inc bc                                        ; $5c77: $03
    inc bc                                        ; $5c78: $03
    rlca                                          ; $5c79: $07
    ld [bc], a                                    ; $5c7a: $02
    inc bc                                        ; $5c7b: $03
    inc bc                                        ; $5c7c: $03
    rlca                                          ; $5c7d: $07
    ld [bc], a                                    ; $5c7e: $02
    inc bc                                        ; $5c7f: $03
    inc bc                                        ; $5c80: $03
    rlca                                          ; $5c81: $07
    ld bc, $0303                                  ; $5c82: $01 $03 $03
    rlca                                          ; $5c85: $07
    ld bc, $eceb                                  ; $5c86: $01 $eb $ec
    ld e, c                                       ; $5c89: $59
    ld [$efee], a                                 ; $5c8a: $ea $ee $ef
    ld e, e                                       ; $5c8d: $5b
    db $ed                                        ; $5c8e: $ed
    pop af                                        ; $5c8f: $f1
    ld a, [c]                                     ; $5c90: $f2
    ld e, l                                       ; $5c91: $5d
    ldh a, [$e2]                                  ; $5c92: $f0 $e2
    db $e3                                        ; $5c94: $e3
    ld d, a                                       ; $5c95: $57
    di                                            ; $5c96: $f3
    inc bc                                        ; $5c97: $03
    inc bc                                        ; $5c98: $03
    rlca                                          ; $5c99: $07
    ld bc, $0303                                  ; $5c9a: $01 $03 $03
    rlca                                          ; $5c9d: $07
    ld [bc], a                                    ; $5c9e: $02
    inc bc                                        ; $5c9f: $03
    inc bc                                        ; $5ca0: $03
    rlca                                          ; $5ca1: $07
    ld bc, $0303                                  ; $5ca2: $01 $03 $03
    rlca                                          ; $5ca5: $07
    ld bc, $4241                                  ; $5ca6: $01 $41 $42
    ld b, e                                       ; $5ca9: $43
    ld e, b                                       ; $5caa: $58
    ld b, l                                       ; $5cab: $45
    ld b, [hl]                                    ; $5cac: $46
    ld b, a                                       ; $5cad: $47
    ld e, d                                       ; $5cae: $5a
    ld c, c                                       ; $5caf: $49
    ld c, d                                       ; $5cb0: $4a
    ld c, e                                       ; $5cb1: $4b
    ld e, h                                       ; $5cb2: $5c
    ld c, l                                       ; $5cb3: $4d
    ld c, [hl]                                    ; $5cb4: $4e
    ld c, a                                       ; $5cb5: $4f
    ld d, b                                       ; $5cb6: $50
    ld [bc], a                                    ; $5cb7: $02
    ld [bc], a                                    ; $5cb8: $02
    ld bc, $0102                                  ; $5cb9: $01 $02 $01
    ld [bc], a                                    ; $5cbc: $02
    ld [bc], a                                    ; $5cbd: $02
    ld bc, $0201                                  ; $5cbe: $01 $01 $02
    ld [bc], a                                    ; $5cc1: $02
    ld bc, $0201                                  ; $5cc2: $01 $01 $02
    ld bc, $5901                                  ; $5cc5: $01 $01 $59
    ld [$9841], a                                 ; $5cc8: $ea $41 $98
    ld e, e                                       ; $5ccb: $5b
    db $ed                                        ; $5ccc: $ed
    ld b, l                                       ; $5ccd: $45
    sbc c                                         ; $5cce: $99
    ld e, l                                       ; $5ccf: $5d
    ldh a, [rOBP1]                                ; $5cd0: $f0 $49
    sbc d                                         ; $5cd2: $9a
    ld d, a                                       ; $5cd3: $57
    di                                            ; $5cd4: $f3
    ld c, l                                       ; $5cd5: $4d
    ld c, [hl]                                    ; $5cd6: $4e
    ld [bc], a                                    ; $5cd7: $02
    ld bc, $0e01                                  ; $5cd8: $01 $01 $0e
    ld bc, $0201                                  ; $5cdb: $01 $01 $02
    ld c, $02                                     ; $5cde: $0e $02
    ld [bc], a                                    ; $5ce0: $02
    ld [bc], a                                    ; $5ce1: $02
    add hl, bc                                    ; $5ce2: $09
    ld [bc], a                                    ; $5ce3: $02
    ld [bc], a                                    ; $5ce4: $02
    ld bc, $9b01                                  ; $5ce5: $01 $01 $9b
    sbc h                                         ; $5ce8: $9c
    sbc l                                         ; $5ce9: $9d
    sbc [hl]                                      ; $5cea: $9e
    sbc a                                         ; $5ceb: $9f
    and b                                         ; $5cec: $a0
    and c                                         ; $5ced: $a1
    db $ed                                        ; $5cee: $ed
    and d                                         ; $5cef: $a2
    and e                                         ; $5cf0: $a3
    and h                                         ; $5cf1: $a4
    and l                                         ; $5cf2: $a5
    ld c, a                                       ; $5cf3: $4f
    and [hl]                                      ; $5cf4: $a6
    and a                                         ; $5cf5: $a7
    di                                            ; $5cf6: $f3
    ld c, $0e                                     ; $5cf7: $0e $0e
    ld c, $09                                     ; $5cf9: $0e $09
    ld c, $0e                                     ; $5cfb: $0e $0e
    add hl, bc                                    ; $5cfd: $09
    ld bc, $0e0e                                  ; $5cfe: $01 $0e $0e
    ld c, $09                                     ; $5d01: $0e $09
    ld bc, $0909                                  ; $5d03: $01 $09 $09
    ld bc, $4241                                  ; $5d06: $01 $41 $42
    ld b, e                                       ; $5d09: $43
    ld b, h                                       ; $5d0a: $44
    ld b, l                                       ; $5d0b: $45
    ld b, [hl]                                    ; $5d0c: $46
    ld b, a                                       ; $5d0d: $47
    ld c, b                                       ; $5d0e: $48
    ld c, c                                       ; $5d0f: $49
    ld c, d                                       ; $5d10: $4a
    ld c, e                                       ; $5d11: $4b
    ld c, h                                       ; $5d12: $4c
    ld c, l                                       ; $5d13: $4d
    ld c, [hl]                                    ; $5d14: $4e
    ld c, a                                       ; $5d15: $4f
    ld d, b                                       ; $5d16: $50
    ld bc, $0201                                  ; $5d17: $01 $01 $02
    ld bc, $0101                                  ; $5d1a: $01 $01 $01
    ld [bc], a                                    ; $5d1d: $02
    ld bc, $0101                                  ; $5d1e: $01 $01 $01
    ld [bc], a                                    ; $5d21: $02
    ld bc, $0202                                  ; $5d22: $01 $02 $02
    ld [bc], a                                    ; $5d25: $02
    ld [bc], a                                    ; $5d26: $02
    ld h, $27                                     ; $5d27: $26 $27
    jr z, jr_087_5d54                             ; $5d29: $28 $29

    ld a, [hl+]                                   ; $5d2b: $2a
    dec hl                                        ; $5d2c: $2b
    inc l                                         ; $5d2d: $2c
    dec sp                                        ; $5d2e: $3b
    ld b, c                                       ; $5d2f: $41
    ld b, d                                       ; $5d30: $42
    ld b, e                                       ; $5d31: $43
    ld e, b                                       ; $5d32: $58
    ld b, l                                       ; $5d33: $45
    ld b, [hl]                                    ; $5d34: $46
    ld b, a                                       ; $5d35: $47
    ld e, d                                       ; $5d36: $5a
    ld bc, $0101                                  ; $5d37: $01 $01 $01
    ld bc, $0101                                  ; $5d3a: $01 $01 $01
    ld bc, $0207                                  ; $5d3d: $01 $07 $02
    ld bc, $0701                                  ; $5d40: $01 $01 $07
    ld bc, $0202                                  ; $5d43: $01 $02 $02
    rlca                                          ; $5d46: $07
    ret nz                                        ; $5d47: $c0

    pop bc                                        ; $5d48: $c1
    jp nz, $e3c3                                  ; $5d49: $c2 $c3 $e3

    ld [c], a                                     ; $5d4c: $e2
    pop de                                        ; $5d4d: $d1
    pop de                                        ; $5d4e: $d1
    and $e5                                       ; $5d4f: $e6 $e5
    pop de                                        ; $5d51: $d1
    pop de                                        ; $5d52: $d1
    jp hl                                         ; $5d53: $e9


jr_087_5d54:
    add sp, -$2f                                  ; $5d54: $e8 $d1
    pop de                                        ; $5d56: $d1
    adc e                                         ; $5d57: $8b
    adc e                                         ; $5d58: $8b
    adc e                                         ; $5d59: $8b
    adc e                                         ; $5d5a: $8b
    and e                                         ; $5d5b: $a3

Call_087_5d5c:
    and e                                         ; $5d5c: $a3
    add e                                         ; $5d5d: $83
    add e                                         ; $5d5e: $83
    and e                                         ; $5d5f: $a3
    and e                                         ; $5d60: $a3
    inc bc                                        ; $5d61: $03
    inc bc                                        ; $5d62: $03
    and e                                         ; $5d63: $a3
    and e                                         ; $5d64: $a3
    inc bc                                        ; $5d65: $03
    inc bc                                        ; $5d66: $03
    ret z                                         ; $5d67: $c8

    ret                                           ; $5d68: $c9


    call nz, $d1c5                                ; $5d69: $c4 $c5 $d1
    pop de                                        ; $5d6c: $d1
    pop de                                        ; $5d6d: $d1
    pop de                                        ; $5d6e: $d1
    pop de                                        ; $5d6f: $d1
    pop de                                        ; $5d70: $d1
    pop de                                        ; $5d71: $d1
    pop de                                        ; $5d72: $d1
    pop de                                        ; $5d73: $d1
    pop de                                        ; $5d74: $d1
    pop de                                        ; $5d75: $d1
    pop de                                        ; $5d76: $d1
    adc e                                         ; $5d77: $8b
    adc e                                         ; $5d78: $8b
    adc e                                         ; $5d79: $8b
    adc e                                         ; $5d7a: $8b
    add e                                         ; $5d7b: $83
    add e                                         ; $5d7c: $83
    add e                                         ; $5d7d: $83
    add e                                         ; $5d7e: $83
    inc bc                                        ; $5d7f: $03
    inc bc                                        ; $5d80: $03
    inc bc                                        ; $5d81: $03
    inc bc                                        ; $5d82: $03
    inc bc                                        ; $5d83: $03
    inc bc                                        ; $5d84: $03
    inc bc                                        ; $5d85: $03
    inc bc                                        ; $5d86: $03
    ld c, c                                       ; $5d87: $49
    ld c, d                                       ; $5d88: $4a
    ld c, e                                       ; $5d89: $4b
    ld e, h                                       ; $5d8a: $5c
    ld c, l                                       ; $5d8b: $4d
    ld c, [hl]                                    ; $5d8c: $4e
    ld c, a                                       ; $5d8d: $4f
    ld d, b                                       ; $5d8e: $50
    ld h, $27                                     ; $5d8f: $26 $27
    jr z, jr_087_5dbc                             ; $5d91: $28 $29

    ld a, [hl+]                                   ; $5d93: $2a
    dec hl                                        ; $5d94: $2b
    inc l                                         ; $5d95: $2c
    dec sp                                        ; $5d96: $3b
    ld [bc], a                                    ; $5d97: $02
    ld bc, $0701                                  ; $5d98: $01 $01 $07
    ld [bc], a                                    ; $5d9b: $02
    ld bc, $0701                                  ; $5d9c: $01 $01 $07
    ld bc, $0101                                  ; $5d9f: $01 $01 $01
    rlca                                          ; $5da2: $07
    ld bc, $0201                                  ; $5da3: $01 $01 $02
    rlca                                          ; $5da6: $07
    db $ec                                        ; $5da7: $ec
    db $eb                                        ; $5da8: $eb
    pop de                                        ; $5da9: $d1
    pop de                                        ; $5daa: $d1
    rst $28                                       ; $5dab: $ef
    xor $d1                                       ; $5dac: $ee $d1
    pop de                                        ; $5dae: $d1
    ld a, [c]                                     ; $5daf: $f2
    pop af                                        ; $5db0: $f1
    pop de                                        ; $5db1: $d1
    pop de                                        ; $5db2: $d1
    and $e5                                       ; $5db3: $e6 $e5
    pop de                                        ; $5db5: $d1
    pop de                                        ; $5db6: $d1
    and e                                         ; $5db7: $a3
    and e                                         ; $5db8: $a3
    inc bc                                        ; $5db9: $03
    inc bc                                        ; $5dba: $03
    and e                                         ; $5dbb: $a3

jr_087_5dbc:
    and e                                         ; $5dbc: $a3
    inc bc                                        ; $5dbd: $03
    inc bc                                        ; $5dbe: $03
    and e                                         ; $5dbf: $a3
    and e                                         ; $5dc0: $a3
    inc bc                                        ; $5dc1: $03
    inc bc                                        ; $5dc2: $03
    and e                                         ; $5dc3: $a3
    and e                                         ; $5dc4: $a3
    inc bc                                        ; $5dc5: $03
    inc bc                                        ; $5dc6: $03
    ld b, c                                       ; $5dc7: $41
    ld b, d                                       ; $5dc8: $42
    ld b, e                                       ; $5dc9: $43
    ld e, b                                       ; $5dca: $58
    ld b, l                                       ; $5dcb: $45
    ld b, [hl]                                    ; $5dcc: $46
    ld b, a                                       ; $5dcd: $47
    ld e, d                                       ; $5dce: $5a
    ld c, c                                       ; $5dcf: $49
    ld c, d                                       ; $5dd0: $4a
    ld c, e                                       ; $5dd1: $4b
    ld e, h                                       ; $5dd2: $5c
    ld c, l                                       ; $5dd3: $4d
    ld c, [hl]                                    ; $5dd4: $4e
    ld c, a                                       ; $5dd5: $4f
    ld d, b                                       ; $5dd6: $50
    ld bc, $0102                                  ; $5dd7: $01 $02 $01
    rlca                                          ; $5dda: $07
    ld [bc], a                                    ; $5ddb: $02
    ld bc, $0701                                  ; $5ddc: $01 $01 $07
    ld bc, $0101                                  ; $5ddf: $01 $01 $01
    rlca                                          ; $5de2: $07
    ld [bc], a                                    ; $5de3: $02
    ld [bc], a                                    ; $5de4: $02
    ld bc, $5107                                  ; $5de5: $01 $07 $51
    ld d, d                                       ; $5de8: $52
    ld b, c                                       ; $5de9: $41
    ld b, d                                       ; $5dea: $42
    ld d, e                                       ; $5deb: $53
    ld d, h                                       ; $5dec: $54
    ld b, l                                       ; $5ded: $45
    ld b, [hl]                                    ; $5dee: $46
    ld d, l                                       ; $5def: $55
    ld d, [hl]                                    ; $5df0: $56
    ld c, c                                       ; $5df1: $49
    ld c, d                                       ; $5df2: $4a
    ld d, a                                       ; $5df3: $57
    di                                            ; $5df4: $f3
    ld c, l                                       ; $5df5: $4d
    ld c, [hl]                                    ; $5df6: $4e
    ld bc, $0101                                  ; $5df7: $01 $01 $01
    rlca                                          ; $5dfa: $07
    ld bc, $0101                                  ; $5dfb: $01 $01 $01
    rlca                                          ; $5dfe: $07
    ld bc, $0101                                  ; $5dff: $01 $01 $01
    rlca                                          ; $5e02: $07
    ld [bc], a                                    ; $5e03: $02
    ld [bc], a                                    ; $5e04: $02
    ld bc, $d107                                  ; $5e05: $01 $07 $d1
    pop de                                        ; $5e08: $d1
    pop de                                        ; $5e09: $d1
    db $eb                                        ; $5e0a: $eb
    pop de                                        ; $5e0b: $d1
    pop de                                        ; $5e0c: $d1
    pop de                                        ; $5e0d: $d1
    xor $d1                                       ; $5e0e: $ee $d1
    pop de                                        ; $5e10: $d1
    pop de                                        ; $5e11: $d1
    pop af                                        ; $5e12: $f1
    pop de                                        ; $5e13: $d1
    pop de                                        ; $5e14: $d1
    pop de                                        ; $5e15: $d1
    pop af                                        ; $5e16: $f1
    inc bc                                        ; $5e17: $03
    inc bc                                        ; $5e18: $03
    inc bc                                        ; $5e19: $03
    inc bc                                        ; $5e1a: $03
    inc bc                                        ; $5e1b: $03
    inc bc                                        ; $5e1c: $03
    inc bc                                        ; $5e1d: $03
    inc bc                                        ; $5e1e: $03
    inc bc                                        ; $5e1f: $03

jr_087_5e20:
    inc bc                                        ; $5e20: $03
    inc bc                                        ; $5e21: $03
    inc bc                                        ; $5e22: $03
    inc bc                                        ; $5e23: $03
    inc bc                                        ; $5e24: $03
    inc bc                                        ; $5e25: $03
    inc bc                                        ; $5e26: $03
    pop de                                        ; $5e27: $d1
    jp nc, $d318                                  ; $5e28: $d2 $18 $d3

    pop de                                        ; $5e2b: $d1
    call nc, $d51a                                ; $5e2c: $d4 $1a $d5
    sub $d7                                       ; $5e2f: $d6 $d7
    inc e                                         ; $5e31: $1c
    inc de                                        ; $5e32: $13

jr_087_5e33:
    reti                                          ; $5e33: $d9


    jp c, Jump_000_161e                           ; $5e34: $da $1e $16

    inc bc                                        ; $5e37: $03
    inc bc                                        ; $5e38: $03
    inc bc                                        ; $5e39: $03
    inc bc                                        ; $5e3a: $03
    inc bc                                        ; $5e3b: $03
    inc bc                                        ; $5e3c: $03
    inc bc                                        ; $5e3d: $03
    inc bc                                        ; $5e3e: $03
    inc bc                                        ; $5e3f: $03
    inc bc                                        ; $5e40: $03
    inc bc                                        ; $5e41: $03
    inc bc                                        ; $5e42: $03
    add e                                         ; $5e43: $83
    add e                                         ; $5e44: $83
    inc bc                                        ; $5e45: $03
    inc bc                                        ; $5e46: $03
    ld e, [hl]                                    ; $5e47: $5e
    db $f4                                        ; $5e48: $f4
    inc b                                         ; $5e49: $04
    dec b                                         ; $5e4a: $05
    ld h, b                                       ; $5e4b: $60
    rlca                                          ; $5e4c: $07
    ld [$6409], sp                                ; $5e4d: $08 $09 $64
    rlca                                          ; $5e50: $07
    dec bc                                        ; $5e51: $0b
    inc c                                         ; $5e52: $0c
    ld l, b                                       ; $5e53: $68
    rlca                                          ; $5e54: $07
    ld c, $0f                                     ; $5e55: $0e $0f
    inc bc                                        ; $5e57: $03
    ld [bc], a                                    ; $5e58: $02
    ld [bc], a                                    ; $5e59: $02
    ld [bc], a                                    ; $5e5a: $02
    inc bc                                        ; $5e5b: $03
    ld [bc], a                                    ; $5e5c: $02
    ld [bc], a                                    ; $5e5d: $02
    ld [bc], a                                    ; $5e5e: $02
    inc bc                                        ; $5e5f: $03
    ld [bc], a                                    ; $5e60: $02
    inc b                                         ; $5e61: $04
    inc b                                         ; $5e62: $04
    inc bc                                        ; $5e63: $03
    ld [bc], a                                    ; $5e64: $02
    inc b                                         ; $5e65: $04
    inc b                                         ; $5e66: $04
    inc b                                         ; $5e67: $04
    db $f4                                        ; $5e68: $f4
    jr jr_087_5e20                                ; $5e69: $18 $b5

    ld [$1a07], sp                                ; $5e6b: $08 $07 $1a
    or [hl]                                       ; $5e6e: $b6
    ld de, $1c07                                  ; $5e6f: $11 $07 $1c
    or a                                          ; $5e72: $b7
    inc d                                         ; $5e73: $14
    rlca                                          ; $5e74: $07
    ld e, $b8                                     ; $5e75: $1e $b8
    ld [hl+], a                                   ; $5e77: $22
    ld [bc], a                                    ; $5e78: $02
    inc bc                                        ; $5e79: $03
    dec bc                                        ; $5e7a: $0b
    ld [hl+], a                                   ; $5e7b: $22
    ld [bc], a                                    ; $5e7c: $02
    inc bc                                        ; $5e7d: $03
    dec bc                                        ; $5e7e: $0b
    inc b                                         ; $5e7f: $04
    ld [bc], a                                    ; $5e80: $02
    inc bc                                        ; $5e81: $03
    dec bc                                        ; $5e82: $0b
    inc b                                         ; $5e83: $04
    ld [bc], a                                    ; $5e84: $02
    inc bc                                        ; $5e85: $03
    dec bc                                        ; $5e86: $0b
    call c, $3edd                                 ; $5e87: $dc $dd $3e
    sbc $df                                       ; $5e8a: $de $df
    ldh [rLCDC], a                                ; $5e8c: $e0 $40
    pop hl                                        ; $5e8e: $e1
    db $eb                                        ; $5e8f: $eb
    db $ec                                        ; $5e90: $ec
    ld c, e                                       ; $5e91: $4b
    ld e, h                                       ; $5e92: $5c
    xor $ef                                       ; $5e93: $ee $ef
    ld c, a                                       ; $5e95: $4f
    ld d, b                                       ; $5e96: $50
    add e                                         ; $5e97: $83
    add e                                         ; $5e98: $83
    inc bc                                        ; $5e99: $03
    inc bc                                        ; $5e9a: $03
    add e                                         ; $5e9b: $83
    add e                                         ; $5e9c: $83
    inc bc                                        ; $5e9d: $03
    inc bc                                        ; $5e9e: $03
    add e                                         ; $5e9f: $83
    add e                                         ; $5ea0: $83
    dec b                                         ; $5ea1: $05
    dec b                                         ; $5ea2: $05
    add e                                         ; $5ea3: $83
    add e                                         ; $5ea4: $83
    rlca                                          ; $5ea5: $07
    rlca                                          ; $5ea6: $07
    add e                                         ; $5ea7: $83
    rlca                                          ; $5ea8: $07
    cpl                                           ; $5ea9: $2f
    jr nc, jr_087_5e33                            ; $5eaa: $30 $87

    ld [hl+], a                                   ; $5eac: $22
    ld [hl-], a                                   ; $5ead: $32
    inc sp                                        ; $5eae: $33
    ld e, l                                       ; $5eaf: $5d
    ldh a, [rOBP1]                                ; $5eb0: $f0 $49
    ld c, d                                       ; $5eb2: $4a
    ld d, a                                       ; $5eb3: $57
    di                                            ; $5eb4: $f3
    ld c, l                                       ; $5eb5: $4d
    ld c, [hl]                                    ; $5eb6: $4e
    dec bc                                        ; $5eb7: $0b
    ld [bc], a                                    ; $5eb8: $02
    inc b                                         ; $5eb9: $04
    inc b                                         ; $5eba: $04
    dec bc                                        ; $5ebb: $0b
    ld [bc], a                                    ; $5ebc: $02
    inc b                                         ; $5ebd: $04
    inc b                                         ; $5ebe: $04
    dec b                                         ; $5ebf: $05
    dec b                                         ; $5ec0: $05
    dec b                                         ; $5ec1: $05
    dec b                                         ; $5ec2: $05
    rlca                                          ; $5ec3: $07
    rlca                                          ; $5ec4: $07
    rlca                                          ; $5ec5: $07
    rlca                                          ; $5ec6: $07
    scf                                           ; $5ec7: $37
    rlca                                          ; $5ec8: $07
    ld a, $b9                                     ; $5ec9: $3e $b9
    ld a, [hl-]                                   ; $5ecb: $3a
    ld [hl+], a                                   ; $5ecc: $22
    ld b, b                                       ; $5ecd: $40
    cp [hl]                                       ; $5ece: $be
    ld c, e                                       ; $5ecf: $4b
    ld e, h                                       ; $5ed0: $5c
    ld e, l                                       ; $5ed1: $5d
    ldh a, [rVBK]                                 ; $5ed2: $f0 $4f
    ld d, b                                       ; $5ed4: $50
    ld d, a                                       ; $5ed5: $57
    di                                            ; $5ed6: $f3
    inc b                                         ; $5ed7: $04
    ld [bc], a                                    ; $5ed8: $02
    inc bc                                        ; $5ed9: $03
    dec bc                                        ; $5eda: $0b
    inc b                                         ; $5edb: $04
    ld [bc], a                                    ; $5edc: $02
    inc bc                                        ; $5edd: $03
    dec bc                                        ; $5ede: $0b
    dec b                                         ; $5edf: $05
    dec b                                         ; $5ee0: $05
    dec b                                         ; $5ee1: $05
    dec b                                         ; $5ee2: $05
    rlca                                          ; $5ee3: $07
    rlca                                          ; $5ee4: $07
    rlca                                          ; $5ee5: $07
    rlca                                          ; $5ee6: $07
    pop af                                        ; $5ee7: $f1
    ld a, [c]                                     ; $5ee8: $f2
    jr z, jr_087_5f14                             ; $5ee9: $28 $29

    ld [c], a                                     ; $5eeb: $e2
    db $e3                                        ; $5eec: $e3
    inc l                                         ; $5eed: $2c
    dec sp                                        ; $5eee: $3b
    push hl                                       ; $5eef: $e5
    and $43                                       ; $5ef0: $e6 $43
    ld e, b                                       ; $5ef2: $58
    add sp, -$17                                  ; $5ef3: $e8 $e9
    ld b, a                                       ; $5ef5: $47
    ld e, d                                       ; $5ef6: $5a
    add e                                         ; $5ef7: $83
    add e                                         ; $5ef8: $83
    rlca                                          ; $5ef9: $07
    ld [bc], a                                    ; $5efa: $02
    add e                                         ; $5efb: $83
    add e                                         ; $5efc: $83
    rlca                                          ; $5efd: $07
    ld [bc], a                                    ; $5efe: $02
    add e                                         ; $5eff: $83
    add e                                         ; $5f00: $83
    rlca                                          ; $5f01: $07
    ld bc, $8383                                  ; $5f02: $01 $83 $83
    rlca                                          ; $5f05: $07
    ld bc, $e434                                  ; $5f06: $01 $34 $e4
    ld h, $27                                     ; $5f09: $26 $27
    inc a                                         ; $5f0b: $3c
    rst $20                                       ; $5f0c: $e7
    ld a, [hl+]                                   ; $5f0d: $2a
    adc c                                         ; $5f0e: $89
    ld e, c                                       ; $5f0f: $59
    ld [$9841], a                                 ; $5f10: $ea $41 $98
    ld e, e                                       ; $5f13: $5b

jr_087_5f14:
    db $ed                                        ; $5f14: $ed
    ld b, l                                       ; $5f15: $45
    sbc c                                         ; $5f16: $99
    ld bc, $0101                                  ; $5f17: $01 $01 $01
    ld bc, $0101                                  ; $5f1a: $01 $01 $01
    ld bc, $0209                                  ; $5f1d: $01 $09 $02
    ld bc, $0e01                                  ; $5f20: $01 $01 $0e
    ld [bc], a                                    ; $5f23: $02
    ld [bc], a                                    ; $5f24: $02
    ld bc, $8e0e                                  ; $5f25: $01 $0e $8e
    adc a                                         ; $5f28: $8f
    inc [hl]                                      ; $5f29: $34
    db $e4                                        ; $5f2a: $e4
    sub b                                         ; $5f2b: $90
    sub c                                         ; $5f2c: $91
    sub d                                         ; $5f2d: $92
    rst $20                                       ; $5f2e: $e7
    sbc e                                         ; $5f2f: $9b
    sbc h                                         ; $5f30: $9c
    sbc l                                         ; $5f31: $9d
    sbc [hl]                                      ; $5f32: $9e
    sbc a                                         ; $5f33: $9f
    and b                                         ; $5f34: $a0
    and c                                         ; $5f35: $a1
    db $ed                                        ; $5f36: $ed
    add hl, bc                                    ; $5f37: $09
    add hl, bc                                    ; $5f38: $09
    ld bc, $0e01                                  ; $5f39: $01 $01 $0e
    ld c, $09                                     ; $5f3c: $0e $09
    ld bc, $0e0e                                  ; $5f3e: $01 $0e $0e
    ld c, $09                                     ; $5f41: $0e $09
    ld c, $0e                                     ; $5f43: $0e $0e
    add hl, bc                                    ; $5f45: $09
    ld bc, $27ec                                  ; $5f46: $01 $ec $27
    adc [hl]                                      ; $5f49: $8e
    adc a                                         ; $5f4a: $8f
    rst $28                                       ; $5f4b: $ef
    adc c                                         ; $5f4c: $89
    sub b                                         ; $5f4d: $90
    sub c                                         ; $5f4e: $91
    ld a, [c]                                     ; $5f4f: $f2
    sbc b                                         ; $5f50: $98
    sbc e                                         ; $5f51: $9b
    sbc h                                         ; $5f52: $9c
    ld a, [c]                                     ; $5f53: $f2
    sbc c                                         ; $5f54: $99
    sbc a                                         ; $5f55: $9f
    and b                                         ; $5f56: $a0
    inc bc                                        ; $5f57: $03
    rlca                                          ; $5f58: $07
    ld a, [bc]                                    ; $5f59: $0a
    ld a, [bc]                                    ; $5f5a: $0a
    inc bc                                        ; $5f5b: $03
    rrca                                          ; $5f5c: $0f
    ld c, $0e                                     ; $5f5d: $0e $0e
    inc bc                                        ; $5f5f: $03
    rrca                                          ; $5f60: $0f
    ld c, $0e                                     ; $5f61: $0e $0e
    inc bc                                        ; $5f63: $03
    rrca                                          ; $5f64: $0f
    ld c, $0e                                     ; $5f65: $0e $0e
    inc [hl]                                      ; $5f67: $34
    db $e4                                        ; $5f68: $e4
    ld h, $27                                     ; $5f69: $26 $27
    sub d                                         ; $5f6b: $92
    rst $20                                       ; $5f6c: $e7
    ld a, [hl+]                                   ; $5f6d: $2a
    dec hl                                        ; $5f6e: $2b
    sbc l                                         ; $5f6f: $9d
    sbc [hl]                                      ; $5f70: $9e
    ld b, c                                       ; $5f71: $41
    ld b, d                                       ; $5f72: $42
    and c                                         ; $5f73: $a1
    db $ed                                        ; $5f74: $ed
    ld b, l                                       ; $5f75: $45
    ld b, [hl]                                    ; $5f76: $46
    ld [bc], a                                    ; $5f77: $02
    ld [bc], a                                    ; $5f78: $02
    ld bc, $0902                                  ; $5f79: $01 $02 $09
    ld [bc], a                                    ; $5f7c: $02
    ld [bc], a                                    ; $5f7d: $02
    ld [bc], a                                    ; $5f7e: $02
    ld c, $09                                     ; $5f7f: $0e $09
    ld bc, $0902                                  ; $5f81: $01 $02 $09
    ld bc, $0101                                  ; $5f84: $01 $01 $01
    jr z, jr_087_5fb2                             ; $5f87: $28 $29

    inc [hl]                                      ; $5f89: $34
    db $e4                                        ; $5f8a: $e4
    inc l                                         ; $5f8b: $2c
    dec sp                                        ; $5f8c: $3b
    inc a                                         ; $5f8d: $3c
    rst $20                                       ; $5f8e: $e7
    ld b, e                                       ; $5f8f: $43
    ld e, b                                       ; $5f90: $58
    ld e, c                                       ; $5f91: $59
    ld [$5a47], a                                 ; $5f92: $ea $47 $5a
    ld e, e                                       ; $5f95: $5b
    db $ed                                        ; $5f96: $ed
    ld [bc], a                                    ; $5f97: $02
    ld bc, $0101                                  ; $5f98: $01 $01 $01
    ld bc, $0101                                  ; $5f9b: $01 $01 $01
    ld bc, $0102                                  ; $5f9e: $01 $02 $01
    ld bc, $0101                                  ; $5fa1: $01 $01 $01
    ld bc, $0202                                  ; $5fa4: $01 $02 $02
    ld h, $27                                     ; $5fa7: $26 $27
    jr z, jr_087_5fd4                             ; $5fa9: $28 $29

    ld a, [hl+]                                   ; $5fab: $2a
    dec hl                                        ; $5fac: $2b
    inc l                                         ; $5fad: $2c
    dec sp                                        ; $5fae: $3b
    ld b, c                                       ; $5faf: $41
    ld b, d                                       ; $5fb0: $42
    ld b, e                                       ; $5fb1: $43

jr_087_5fb2:
    ld e, b                                       ; $5fb2: $58
    ld b, l                                       ; $5fb3: $45
    ld b, [hl]                                    ; $5fb4: $46
    ld b, a                                       ; $5fb5: $47
    ld e, d                                       ; $5fb6: $5a
    ld bc, $0101                                  ; $5fb7: $01 $01 $01
    ld [bc], a                                    ; $5fba: $02
    ld bc, $0201                                  ; $5fbb: $01 $01 $02
    ld bc, $0201                                  ; $5fbe: $01 $01 $02
    ld [bc], a                                    ; $5fc1: $02
    ld [bc], a                                    ; $5fc2: $02
    ld [bc], a                                    ; $5fc3: $02
    ld [bc], a                                    ; $5fc4: $02
    ld [bc], a                                    ; $5fc5: $02
    ld [bc], a                                    ; $5fc6: $02
    db $e3                                        ; $5fc7: $e3
    sbc d                                         ; $5fc8: $9a
    and d                                         ; $5fc9: $a2
    and e                                         ; $5fca: $a3
    and $ce                                       ; $5fcb: $e6 $ce
    ld c, a                                       ; $5fcd: $4f
    and [hl]                                      ; $5fce: $a6
    jp hl                                         ; $5fcf: $e9


    daa                                           ; $5fd0: $27
    jr z, jr_087_5ffc                             ; $5fd1: $28 $29

    db $ec                                        ; $5fd3: $ec

jr_087_5fd4:
    dec hl                                        ; $5fd4: $2b
    inc l                                         ; $5fd5: $2c
    dec l                                         ; $5fd6: $2d
    inc bc                                        ; $5fd7: $03
    rrca                                          ; $5fd8: $0f
    ld c, $0e                                     ; $5fd9: $0e $0e
    inc bc                                        ; $5fdb: $03
    rrca                                          ; $5fdc: $0f
    ld bc, $0309                                  ; $5fdd: $01 $09 $03
    rlca                                          ; $5fe0: $07
    ld bc, $0301                                  ; $5fe1: $01 $01 $03
    rlca                                          ; $5fe4: $07
    ld bc, $a401                                  ; $5fe5: $01 $01 $a4
    and l                                         ; $5fe8: $a5
    ld c, c                                       ; $5fe9: $49
    ret nz                                        ; $5fea: $c0

    and a                                         ; $5feb: $a7
    di                                            ; $5fec: $f3
    ld c, l                                       ; $5fed: $4d
    db $ec                                        ; $5fee: $ec
    inc [hl]                                      ; $5fef: $34
    db $e4                                        ; $5ff0: $e4
    ld h, $ef                                     ; $5ff1: $26 $ef
    dec [hl]                                      ; $5ff3: $35
    ld [hl], $2a                                  ; $5ff4: $36 $2a
    ld a, [c]                                     ; $5ff6: $f2
    ld c, $09                                     ; $5ff7: $0e $09
    ld bc, $098b                                  ; $5ff9: $01 $8b $09

jr_087_5ffc:
    ld bc, $a307                                  ; $5ffc: $01 $07 $a3
    ld bc, $0702                                  ; $5fff: $01 $02 $07
    inc hl                                        ; $6002: $23
    ld [bc], a                                    ; $6003: $02
    ld bc, $2307                                  ; $6004: $01 $07 $23
    pop bc                                        ; $6007: $c1
    jp nz, $c4c3                                  ; $6008: $c2 $c3 $c4

    db $eb                                        ; $600b: $eb
    pop de                                        ; $600c: $d1
    pop de                                        ; $600d: $d1
    pop de                                        ; $600e: $d1
    xor $d1                                       ; $600f: $ee $d1
    pop de                                        ; $6011: $d1
    pop de                                        ; $6012: $d1
    pop af                                        ; $6013: $f1
    pop de                                        ; $6014: $d1
    pop de                                        ; $6015: $d1
    pop de                                        ; $6016: $d1
    adc e                                         ; $6017: $8b
    adc e                                         ; $6018: $8b
    adc e                                         ; $6019: $8b
    adc e                                         ; $601a: $8b
    and e                                         ; $601b: $a3
    add e                                         ; $601c: $83
    add e                                         ; $601d: $83
    add e                                         ; $601e: $83
    inc hl                                        ; $601f: $23
    inc bc                                        ; $6020: $03
    inc bc                                        ; $6021: $03
    inc bc                                        ; $6022: $03
    inc hl                                        ; $6023: $23
    inc bc                                        ; $6024: $03
    inc bc                                        ; $6025: $03
    inc bc                                        ; $6026: $03
    push bc                                       ; $6027: $c5
    add $c7                                       ; $6028: $c6 $c7
    ret z                                         ; $602a: $c8

    pop de                                        ; $602b: $d1
    pop de                                        ; $602c: $d1
    pop de                                        ; $602d: $d1
    pop de                                        ; $602e: $d1
    pop de                                        ; $602f: $d1
    pop de                                        ; $6030: $d1
    pop de                                        ; $6031: $d1
    pop de                                        ; $6032: $d1
    pop de                                        ; $6033: $d1
    pop de                                        ; $6034: $d1
    pop de                                        ; $6035: $d1
    pop de                                        ; $6036: $d1
    adc e                                         ; $6037: $8b
    adc e                                         ; $6038: $8b
    adc e                                         ; $6039: $8b
    adc e                                         ; $603a: $8b
    add e                                         ; $603b: $83
    add e                                         ; $603c: $83
    add e                                         ; $603d: $83
    add e                                         ; $603e: $83
    inc bc                                        ; $603f: $03
    inc bc                                        ; $6040: $03
    inc bc                                        ; $6041: $03
    inc bc                                        ; $6042: $03
    inc bc                                        ; $6043: $03
    inc bc                                        ; $6044: $03
    inc bc                                        ; $6045: $03
    inc bc                                        ; $6046: $03
    cp d                                          ; $6047: $ba
    ld b, d                                       ; $6048: $42
    ld b, e                                       ; $6049: $43
    ld b, h                                       ; $604a: $44
    cp a                                          ; $604b: $bf
    ld b, [hl]                                    ; $604c: $46
    ld b, a                                       ; $604d: $47
    ld c, b                                       ; $604e: $48
    ld c, c                                       ; $604f: $49
    ld c, d                                       ; $6050: $4a
    ld c, e                                       ; $6051: $4b
    ld c, h                                       ; $6052: $4c
    ld c, l                                       ; $6053: $4d
    ld c, [hl]                                    ; $6054: $4e
    ld c, a                                       ; $6055: $4f
    ld d, b                                       ; $6056: $50
    dec bc                                        ; $6057: $0b
    rlca                                          ; $6058: $07
    ld bc, $0b02                                  ; $6059: $01 $02 $0b
    rlca                                          ; $605c: $07
    ld [bc], a                                    ; $605d: $02
    ld [bc], a                                    ; $605e: $02
    rlca                                          ; $605f: $07
    ld bc, $0102                                  ; $6060: $01 $02 $01
    ld bc, $0101                                  ; $6063: $01 $01 $01
    ld bc, $5251                                  ; $6066: $01 $51 $52
    ld b, c                                       ; $6069: $41
    db $e3                                        ; $606a: $e3
    ld d, e                                       ; $606b: $53
    ld d, h                                       ; $606c: $54
    ld b, l                                       ; $606d: $45
    and $55                                       ; $606e: $e6 $55
    ld d, [hl]                                    ; $6070: $56
    ld c, c                                       ; $6071: $49
    jp hl                                         ; $6072: $e9


    ld d, a                                       ; $6073: $57
    di                                            ; $6074: $f3
    ld c, l                                       ; $6075: $4d
    db $ec                                        ; $6076: $ec
    ld [bc], a                                    ; $6077: $02
    ld bc, $2307                                  ; $6078: $01 $07 $23
    ld [bc], a                                    ; $607b: $02
    ld [bc], a                                    ; $607c: $02
    rlca                                          ; $607d: $07
    inc hl                                        ; $607e: $23
    ld bc, $0701                                  ; $607f: $01 $01 $07
    inc hl                                        ; $6082: $23
    ld bc, $0701                                  ; $6083: $01 $01 $07
    inc hl                                        ; $6086: $23
    ld [c], a                                     ; $6087: $e2
    pop de                                        ; $6088: $d1
    pop de                                        ; $6089: $d1
    pop de                                        ; $608a: $d1
    push hl                                       ; $608b: $e5
    pop de                                        ; $608c: $d1
    pop de                                        ; $608d: $d1
    pop de                                        ; $608e: $d1
    add sp, -$2f                                  ; $608f: $e8 $d1
    pop de                                        ; $6091: $d1
    pop de                                        ; $6092: $d1
    db $eb                                        ; $6093: $eb
    pop de                                        ; $6094: $d1
    pop de                                        ; $6095: $d1
    pop de                                        ; $6096: $d1
    inc hl                                        ; $6097: $23
    inc bc                                        ; $6098: $03
    inc bc                                        ; $6099: $03
    inc bc                                        ; $609a: $03
    inc hl                                        ; $609b: $23
    inc bc                                        ; $609c: $03
    inc bc                                        ; $609d: $03
    inc bc                                        ; $609e: $03
    inc hl                                        ; $609f: $23
    inc bc                                        ; $60a0: $03
    inc bc                                        ; $60a1: $03
    inc bc                                        ; $60a2: $03
    inc hl                                        ; $60a3: $23
    inc bc                                        ; $60a4: $03
    inc bc                                        ; $60a5: $03
    inc bc                                        ; $60a6: $03
    ld h, $27                                     ; $60a7: $26 $27
    jr z, jr_087_60d4                             ; $60a9: $28 $29

    ld a, [hl+]                                   ; $60ab: $2a
    dec hl                                        ; $60ac: $2b
    inc l                                         ; $60ad: $2c
    dec sp                                        ; $60ae: $3b
    ld b, c                                       ; $60af: $41
    ld b, d                                       ; $60b0: $42
    ld b, e                                       ; $60b1: $43
    ld e, b                                       ; $60b2: $58
    cp e                                          ; $60b3: $bb
    cp h                                          ; $60b4: $bc
    cp l                                          ; $60b5: $bd
    ld e, d                                       ; $60b6: $5a
    ld bc, $0101                                  ; $60b7: $01 $01 $01
    ld [bc], a                                    ; $60ba: $02
    ld bc, $0201                                  ; $60bb: $01 $01 $02
    ld bc, $0101                                  ; $60be: $01 $01 $01
    ld bc, $0901                                  ; $60c1: $01 $01 $09
    add hl, bc                                    ; $60c4: $09
    ld a, [bc]                                    ; $60c5: $0a
    ld [bc], a                                    ; $60c6: $02
    inc [hl]                                      ; $60c7: $34
    db $e4                                        ; $60c8: $e4
    ld h, $ef                                     ; $60c9: $26 $ef
    inc a                                         ; $60cb: $3c
    rst $20                                       ; $60cc: $e7
    ld a, [hl+]                                   ; $60cd: $2a
    ld a, [c]                                     ; $60ce: $f2
    ld e, c                                       ; $60cf: $59
    ld [$e341], a                                 ; $60d0: $ea $41 $e3
    ld e, e                                       ; $60d3: $5b

jr_087_60d4:
    db $ed                                        ; $60d4: $ed
    ld b, l                                       ; $60d5: $45
    and $02                                       ; $60d6: $e6 $02
    ld [bc], a                                    ; $60d8: $02
    rlca                                          ; $60d9: $07
    inc hl                                        ; $60da: $23
    ld bc, $0701                                  ; $60db: $01 $01 $07
    inc hl                                        ; $60de: $23
    ld [bc], a                                    ; $60df: $02
    ld bc, $2307                                  ; $60e0: $01 $07 $23
    ld [bc], a                                    ; $60e3: $02
    ld bc, $2307                                  ; $60e4: $01 $07 $23
    xor $d1                                       ; $60e7: $ee $d1
    pop de                                        ; $60e9: $d1
    pop de                                        ; $60ea: $d1
    pop af                                        ; $60eb: $f1
    pop de                                        ; $60ec: $d1
    pop de                                        ; $60ed: $d1
    pop de                                        ; $60ee: $d1
    or l                                          ; $60ef: $b5
    ld e, [hl]                                    ; $60f0: $5e
    push af                                       ; $60f1: $f5
    db $f4                                        ; $60f2: $f4
    or [hl]                                       ; $60f3: $b6
    ld h, b                                       ; $60f4: $60
    jp nc, Jump_000_2374                          ; $60f5: $d2 $74 $23

    inc bc                                        ; $60f8: $03
    inc bc                                        ; $60f9: $03
    inc bc                                        ; $60fa: $03
    inc hl                                        ; $60fb: $23
    inc bc                                        ; $60fc: $03
    inc bc                                        ; $60fd: $03
    inc bc                                        ; $60fe: $03
    dec hl                                        ; $60ff: $2b
    inc bc                                        ; $6100: $03
    inc bc                                        ; $6101: $03
    ld [bc], a                                    ; $6102: $02
    dec hl                                        ; $6103: $2b
    inc bc                                        ; $6104: $03
    dec bc                                        ; $6105: $0b
    ld [bc], a                                    ; $6106: $02
    pop de                                        ; $6107: $d1
    pop de                                        ; $6108: $d1
    pop de                                        ; $6109: $d1
    pop de                                        ; $610a: $d1
    pop de                                        ; $610b: $d1
    pop de                                        ; $610c: $d1
    pop de                                        ; $610d: $d1
    pop de                                        ; $610e: $d1
    rst $30                                       ; $610f: $f7
    inc bc                                        ; $6110: $03
    rla                                           ; $6111: $17
    xor d                                         ; $6112: $aa
    ei                                            ; $6113: $fb
    ld b, $19                                     ; $6114: $06 $19
    xor e                                         ; $6116: $ab
    inc bc                                        ; $6117: $03
    inc bc                                        ; $6118: $03
    inc bc                                        ; $6119: $03
    inc bc                                        ; $611a: $03
    inc bc                                        ; $611b: $03
    inc bc                                        ; $611c: $03
    inc bc                                        ; $611d: $03
    inc bc                                        ; $611e: $03
    inc bc                                        ; $611f: $03
    inc bc                                        ; $6120: $03
    inc bc                                        ; $6121: $03
    dec bc                                        ; $6122: $0b
    inc bc                                        ; $6123: $03
    inc bc                                        ; $6124: $03
    inc bc                                        ; $6125: $03
    dec bc                                        ; $6126: $0b
    inc [hl]                                      ; $6127: $34
    db $e4                                        ; $6128: $e4
    ld h, $27                                     ; $6129: $26 $27
    inc a                                         ; $612b: $3c
    rst $20                                       ; $612c: $e7
    ld a, [hl+]                                   ; $612d: $2a
    dec hl                                        ; $612e: $2b
    ld e, c                                       ; $612f: $59
    ld [$4241], a                                 ; $6130: $ea $41 $42
    ld e, e                                       ; $6133: $5b
    db $ed                                        ; $6134: $ed
    ld b, l                                       ; $6135: $45
    ld b, [hl]                                    ; $6136: $46
    ld bc, $0102                                  ; $6137: $01 $02 $01
    ld bc, $0102                                  ; $613a: $01 $02 $01
    ld bc, $0107                                  ; $613d: $01 $07 $01
    ld bc, $0701                                  ; $6140: $01 $01 $07
    ld bc, $0101                                  ; $6143: $01 $01 $01
    rlca                                          ; $6146: $07
    ret nz                                        ; $6147: $c0

    pop bc                                        ; $6148: $c1
    ret z                                         ; $6149: $c8

    ret                                           ; $614a: $c9


    db $ec                                        ; $614b: $ec
    db $eb                                        ; $614c: $eb
    pop de                                        ; $614d: $d1
    pop de                                        ; $614e: $d1
    rst $28                                       ; $614f: $ef
    xor $d1                                       ; $6150: $ee $d1
    pop de                                        ; $6152: $d1
    ld a, [c]                                     ; $6153: $f2
    pop af                                        ; $6154: $f1
    pop de                                        ; $6155: $d1
    pop de                                        ; $6156: $d1
    adc e                                         ; $6157: $8b
    adc e                                         ; $6158: $8b
    adc e                                         ; $6159: $8b
    adc e                                         ; $615a: $8b
    and e                                         ; $615b: $a3
    and e                                         ; $615c: $a3
    add e                                         ; $615d: $83
    add e                                         ; $615e: $83
    and e                                         ; $615f: $a3
    and e                                         ; $6160: $a3
    inc bc                                        ; $6161: $03
    inc bc                                        ; $6162: $03
    and e                                         ; $6163: $a3
    and e                                         ; $6164: $a3
    inc bc                                        ; $6165: $03
    inc bc                                        ; $6166: $03
    ret                                           ; $6167: $c9


    rst $00                                       ; $6168: $c7
    ret z                                         ; $6169: $c8

    ret                                           ; $616a: $c9


    pop de                                        ; $616b: $d1
    pop de                                        ; $616c: $d1
    pop de                                        ; $616d: $d1
    pop de                                        ; $616e: $d1
    pop de                                        ; $616f: $d1
    pop de                                        ; $6170: $d1
    pop de                                        ; $6171: $d1
    pop de                                        ; $6172: $d1
    pop de                                        ; $6173: $d1
    pop de                                        ; $6174: $d1
    pop de                                        ; $6175: $d1
    pop de                                        ; $6176: $d1
    adc e                                         ; $6177: $8b
    adc e                                         ; $6178: $8b
    adc e                                         ; $6179: $8b
    adc e                                         ; $617a: $8b
    add e                                         ; $617b: $83
    add e                                         ; $617c: $83
    add e                                         ; $617d: $83
    add e                                         ; $617e: $83
    inc bc                                        ; $617f: $03
    inc bc                                        ; $6180: $03
    inc bc                                        ; $6181: $03
    inc bc                                        ; $6182: $03
    inc bc                                        ; $6183: $03
    inc bc                                        ; $6184: $03
    inc bc                                        ; $6185: $03
    inc bc                                        ; $6186: $03
    pop de                                        ; $6187: $d1
    pop de                                        ; $6188: $d1
    pop de                                        ; $6189: $d1
    pop de                                        ; $618a: $d1
    pop de                                        ; $618b: $d1
    pop de                                        ; $618c: $d1
    pop de                                        ; $618d: $d1
    pop de                                        ; $618e: $d1
    pop de                                        ; $618f: $d1
    pop de                                        ; $6190: $d1
    pop de                                        ; $6191: $d1
    pop de                                        ; $6192: $d1
    xor h                                         ; $6193: $ac
    pop de                                        ; $6194: $d1
    pop de                                        ; $6195: $d1
    pop de                                        ; $6196: $d1
    inc bc                                        ; $6197: $03
    inc bc                                        ; $6198: $03
    inc bc                                        ; $6199: $03
    inc bc                                        ; $619a: $03
    inc bc                                        ; $619b: $03
    inc bc                                        ; $619c: $03
    inc bc                                        ; $619d: $03
    inc bc                                        ; $619e: $03
    inc bc                                        ; $619f: $03
    inc bc                                        ; $61a0: $03
    inc bc                                        ; $61a1: $03
    inc bc                                        ; $61a2: $03
    dec bc                                        ; $61a3: $0b
    inc bc                                        ; $61a4: $03
    inc bc                                        ; $61a5: $03
    inc bc                                        ; $61a6: $03
    push hl                                       ; $61a7: $e5
    and $34                                       ; $61a8: $e6 $34
    db $e4                                        ; $61aa: $e4
    add sp, -$17                                  ; $61ab: $e8 $e9
    inc a                                         ; $61ad: $3c
    rst $20                                       ; $61ae: $e7
    db $eb                                        ; $61af: $eb
    db $ec                                        ; $61b0: $ec
    ld e, c                                       ; $61b1: $59
    ld [$efee], a                                 ; $61b2: $ea $ee $ef
    ld e, e                                       ; $61b5: $5b
    db $ed                                        ; $61b6: $ed
    inc bc                                        ; $61b7: $03
    inc bc                                        ; $61b8: $03
    rlca                                          ; $61b9: $07
    ld bc, $0303                                  ; $61ba: $01 $03 $03
    rlca                                          ; $61bd: $07
    ld [bc], a                                    ; $61be: $02
    inc bc                                        ; $61bf: $03
    inc bc                                        ; $61c0: $03
    rlca                                          ; $61c1: $07
    ld [bc], a                                    ; $61c2: $02
    inc bc                                        ; $61c3: $03
    inc bc                                        ; $61c4: $03
    rlca                                          ; $61c5: $07
    ld bc, $d1d1                                  ; $61c6: $01 $d1 $d1
    pop de                                        ; $61c9: $d1
    pop de                                        ; $61ca: $d1
    pop de                                        ; $61cb: $d1
    pop de                                        ; $61cc: $d1
    pop de                                        ; $61cd: $d1
    pop de                                        ; $61ce: $d1
    ld e, [hl]                                    ; $61cf: $5e
    push af                                       ; $61d0: $f5
    or $5f                                        ; $61d1: $f6 $5f
    ld h, b                                       ; $61d3: $60
    ld h, c                                       ; $61d4: $61
    ld h, d                                       ; $61d5: $62
    ld h, e                                       ; $61d6: $63
    inc bc                                        ; $61d7: $03
    inc bc                                        ; $61d8: $03
    inc bc                                        ; $61d9: $03
    inc bc                                        ; $61da: $03
    inc bc                                        ; $61db: $03
    inc bc                                        ; $61dc: $03
    inc bc                                        ; $61dd: $03
    inc bc                                        ; $61de: $03
    inc bc                                        ; $61df: $03
    inc bc                                        ; $61e0: $03
    inc bc                                        ; $61e1: $03
    inc bc                                        ; $61e2: $03
    inc bc                                        ; $61e3: $03
    inc bc                                        ; $61e4: $03
    inc bc                                        ; $61e5: $03
    inc bc                                        ; $61e6: $03
    pop de                                        ; $61e7: $d1
    pop de                                        ; $61e8: $d1
    pop de                                        ; $61e9: $d1
    pop de                                        ; $61ea: $d1
    pop de                                        ; $61eb: $d1
    pop de                                        ; $61ec: $d1
    pop de                                        ; $61ed: $d1
    pop de                                        ; $61ee: $d1
    ld l, h                                       ; $61ef: $6c
    rla                                           ; $61f0: $17
    xor d                                         ; $61f1: $aa
    pop de                                        ; $61f2: $d1
    ld l, l                                       ; $61f3: $6d
    add hl, de                                    ; $61f4: $19
    xor e                                         ; $61f5: $ab
    xor h                                         ; $61f6: $ac
    inc bc                                        ; $61f7: $03
    inc bc                                        ; $61f8: $03
    inc bc                                        ; $61f9: $03
    inc bc                                        ; $61fa: $03
    inc bc                                        ; $61fb: $03
    inc bc                                        ; $61fc: $03
    inc bc                                        ; $61fd: $03
    inc bc                                        ; $61fe: $03
    inc bc                                        ; $61ff: $03
    inc bc                                        ; $6200: $03
    dec bc                                        ; $6201: $0b
    inc bc                                        ; $6202: $03
    inc bc                                        ; $6203: $03
    inc bc                                        ; $6204: $03
    dec bc                                        ; $6205: $0b
    dec bc                                        ; $6206: $0b
    pop af                                        ; $6207: $f1
    ld a, [c]                                     ; $6208: $f2
    ld e, l                                       ; $6209: $5d
    ldh a, [$e2]                                  ; $620a: $f0 $e2
    db $e3                                        ; $620c: $e3
    ld d, a                                       ; $620d: $57
    di                                            ; $620e: $f3
    push hl                                       ; $620f: $e5
    and $34                                       ; $6210: $e6 $34
    db $e4                                        ; $6212: $e4
    add sp, -$17                                  ; $6213: $e8 $e9
    dec [hl]                                      ; $6215: $35
    ld [hl], $03                                  ; $6216: $36 $03
    inc bc                                        ; $6218: $03
    rlca                                          ; $6219: $07
    ld [bc], a                                    ; $621a: $02
    inc bc                                        ; $621b: $03
    inc bc                                        ; $621c: $03
    rlca                                          ; $621d: $07
    ld [bc], a                                    ; $621e: $02
    inc bc                                        ; $621f: $03
    inc bc                                        ; $6220: $03
    rlca                                          ; $6221: $07
    ld [bc], a                                    ; $6222: $02
    inc bc                                        ; $6223: $03
    inc bc                                        ; $6224: $03
    rlca                                          ; $6225: $07
    ld [bc], a                                    ; $6226: $02
    ld h, h                                       ; $6227: $64
    ld h, l                                       ; $6228: $65
    ld h, [hl]                                    ; $6229: $66
    ld h, a                                       ; $622a: $67
    ld l, b                                       ; $622b: $68
    ld l, c                                       ; $622c: $69
    ld l, d                                       ; $622d: $6a
    ld l, e                                       ; $622e: $6b
    add e                                         ; $622f: $83
    add h                                         ; $6230: $84
    add l                                         ; $6231: $85
    add [hl]                                      ; $6232: $86
    add a                                         ; $6233: $87
    inc hl                                        ; $6234: $23
    inc h                                         ; $6235: $24
    adc b                                         ; $6236: $88
    inc bc                                        ; $6237: $03
    inc bc                                        ; $6238: $03
    inc bc                                        ; $6239: $03
    inc bc                                        ; $623a: $03
    inc bc                                        ; $623b: $03
    inc bc                                        ; $623c: $03
    inc bc                                        ; $623d: $03
    inc bc                                        ; $623e: $03
    dec bc                                        ; $623f: $0b
    dec bc                                        ; $6240: $0b
    dec bc                                        ; $6241: $0b
    dec bc                                        ; $6242: $0b
    dec bc                                        ; $6243: $0b
    inc bc                                        ; $6244: $03
    inc bc                                        ; $6245: $03
    dec bc                                        ; $6246: $0b
    ld l, [hl]                                    ; $6247: $6e
    ld l, a                                       ; $6248: $6f
    xor l                                         ; $6249: $ad
    xor [hl]                                      ; $624a: $ae
    ld [hl], b                                    ; $624b: $70
    ld [hl], c                                    ; $624c: $71
    xor a                                         ; $624d: $af
    or b                                          ; $624e: $b0
    adc d                                         ; $624f: $8a
    adc e                                         ; $6250: $8b
    or c                                          ; $6251: $b1
    or d                                          ; $6252: $b2
    adc h                                         ; $6253: $8c
    adc l                                         ; $6254: $8d
    or e                                          ; $6255: $b3
    or h                                          ; $6256: $b4
    inc bc                                        ; $6257: $03
    inc bc                                        ; $6258: $03
    dec bc                                        ; $6259: $0b
    dec bc                                        ; $625a: $0b
    inc bc                                        ; $625b: $03
    inc bc                                        ; $625c: $03
    dec bc                                        ; $625d: $0b
    dec bc                                        ; $625e: $0b
    dec bc                                        ; $625f: $0b
    dec bc                                        ; $6260: $0b
    dec bc                                        ; $6261: $0b
    dec bc                                        ; $6262: $0b
    dec bc                                        ; $6263: $0b
    dec bc                                        ; $6264: $0b
    dec bc                                        ; $6265: $0b
    dec bc                                        ; $6266: $0b
    db $eb                                        ; $6267: $eb
    db $ec                                        ; $6268: $ec
    ld d, c                                       ; $6269: $51
    ld d, d                                       ; $626a: $52
    xor $ef                                       ; $626b: $ee $ef
    ld d, e                                       ; $626d: $53
    ld d, h                                       ; $626e: $54
    pop af                                        ; $626f: $f1
    ld a, [c]                                     ; $6270: $f2
    ld d, l                                       ; $6271: $55
    ld d, [hl]                                    ; $6272: $56
    ld [c], a                                     ; $6273: $e2
    db $e3                                        ; $6274: $e3
    ld d, a                                       ; $6275: $57
    di                                            ; $6276: $f3
    inc bc                                        ; $6277: $03
    inc bc                                        ; $6278: $03
    rlca                                          ; $6279: $07
    ld bc, $0303                                  ; $627a: $01 $03 $03
    rlca                                          ; $627d: $07
    ld bc, $0303                                  ; $627e: $01 $03 $03
    rlca                                          ; $6281: $07
    ld bc, $0303                                  ; $6282: $01 $03 $03
    rlca                                          ; $6285: $07
    ld bc, $2928                                  ; $6286: $01 $28 $29
    inc [hl]                                      ; $6289: $34
    db $e4                                        ; $628a: $e4
    inc l                                         ; $628b: $2c
    dec sp                                        ; $628c: $3b
    inc a                                         ; $628d: $3c
    rst $20                                       ; $628e: $e7
    ld b, e                                       ; $628f: $43
    ld e, b                                       ; $6290: $58
    ld e, c                                       ; $6291: $59
    ld [$5a47], a                                 ; $6292: $ea $47 $5a
    ld e, e                                       ; $6295: $5b
    db $ed                                        ; $6296: $ed
    dec b                                         ; $6297: $05
    dec b                                         ; $6298: $05
    dec b                                         ; $6299: $05
    dec b                                         ; $629a: $05
    rlca                                          ; $629b: $07
    rlca                                          ; $629c: $07
    rlca                                          ; $629d: $07
    rlca                                          ; $629e: $07
    rlca                                          ; $629f: $07
    ld bc, $0101                                  ; $62a0: $01 $01 $01
    rlca                                          ; $62a3: $07
    ld bc, $0102                                  ; $62a4: $01 $02 $01
    ld h, $27                                     ; $62a7: $26 $27
    db $e3                                        ; $62a9: $e3
    ld [c], a                                     ; $62aa: $e2
    ld a, [hl+]                                   ; $62ab: $2a
    dec hl                                        ; $62ac: $2b
    and $e5                                       ; $62ad: $e6 $e5
    ld b, c                                       ; $62af: $41
    ld b, d                                       ; $62b0: $42
    jp hl                                         ; $62b1: $e9


    add sp, -$45                                  ; $62b2: $e8 $bb
    cp h                                          ; $62b4: $bc
    db $ec                                        ; $62b5: $ec
    db $eb                                        ; $62b6: $eb
    dec b                                         ; $62b7: $05
    dec b                                         ; $62b8: $05
    inc hl                                        ; $62b9: $23
    inc hl                                        ; $62ba: $23
    rlca                                          ; $62bb: $07
    rlca                                          ; $62bc: $07
    inc hl                                        ; $62bd: $23
    inc hl                                        ; $62be: $23
    ld bc, $2307                                  ; $62bf: $01 $07 $23
    inc hl                                        ; $62c2: $23
    add hl, bc                                    ; $62c3: $09
    rrca                                          ; $62c4: $0f
    inc hl                                        ; $62c5: $23
    inc hl                                        ; $62c6: $23
    push hl                                       ; $62c7: $e5
    and $34                                       ; $62c8: $e6 $34
    db $e4                                        ; $62ca: $e4
    add sp, -$17                                  ; $62cb: $e8 $e9
    inc a                                         ; $62cd: $3c
    rst $20                                       ; $62ce: $e7
    db $eb                                        ; $62cf: $eb
    db $ec                                        ; $62d0: $ec
    ld e, c                                       ; $62d1: $59
    ld [$e3e2], a                                 ; $62d2: $ea $e2 $e3
    ld e, e                                       ; $62d5: $5b
    db $ed                                        ; $62d6: $ed
    inc bc                                        ; $62d7: $03
    inc bc                                        ; $62d8: $03
    rlca                                          ; $62d9: $07
    ld bc, $0303                                  ; $62da: $01 $03 $03
    rlca                                          ; $62dd: $07
    ld bc, $0303                                  ; $62de: $01 $03 $03
    rlca                                          ; $62e1: $07
    ld [bc], a                                    ; $62e2: $02
    inc bc                                        ; $62e3: $03
    inc bc                                        ; $62e4: $03
    rlca                                          ; $62e5: $07
    ld bc, $4a49                                  ; $62e6: $01 $49 $4a
    adc [hl]                                      ; $62e9: $8e
    adc a                                         ; $62ea: $8f
    ld c, l                                       ; $62eb: $4d
    adc c                                         ; $62ec: $89
    sub b                                         ; $62ed: $90
    sub c                                         ; $62ee: $91
    ld h, $98                                     ; $62ef: $26 $98
    sbc e                                         ; $62f1: $9b
    sbc h                                         ; $62f2: $9c
    ld a, [hl+]                                   ; $62f3: $2a
    sbc c                                         ; $62f4: $99
    sbc a                                         ; $62f5: $9f
    and b                                         ; $62f6: $a0
    ld bc, $0901                                  ; $62f7: $01 $01 $09
    rrca                                          ; $62fa: $0f
    ld bc, $0e09                                  ; $62fb: $01 $09 $0e
    rrca                                          ; $62fe: $0f
    ld bc, $0e0e                                  ; $62ff: $01 $0e $0e
    rrca                                          ; $6302: $0f
    ld [bc], a                                    ; $6303: $02
    ld c, $0e                                     ; $6304: $0e $0e
    rrca                                          ; $6306: $0f
    rst $28                                       ; $6307: $ef
    xor $d1                                       ; $6308: $ee $d1
    pop de                                        ; $630a: $d1
    ld a, [c]                                     ; $630b: $f2
    pop af                                        ; $630c: $f1
    pop de                                        ; $630d: $d1
    pop de                                        ; $630e: $d1
    db $e3                                        ; $630f: $e3
    or l                                          ; $6310: $b5
    ld e, [hl]                                    ; $6311: $5e
    db $f4                                        ; $6312: $f4
    and $b6                                       ; $6313: $e6 $b6
    ld h, b                                       ; $6315: $60
    rlca                                          ; $6316: $07
    inc hl                                        ; $6317: $23
    inc hl                                        ; $6318: $23
    inc bc                                        ; $6319: $03
    inc bc                                        ; $631a: $03
    inc hl                                        ; $631b: $23
    inc hl                                        ; $631c: $23
    inc bc                                        ; $631d: $03
    inc bc                                        ; $631e: $03
    inc hl                                        ; $631f: $23
    dec hl                                        ; $6320: $2b
    inc bc                                        ; $6321: $03
    ld [bc], a                                    ; $6322: $02
    inc hl                                        ; $6323: $23
    dec hl                                        ; $6324: $2b
    inc bc                                        ; $6325: $03
    ld [bc], a                                    ; $6326: $02
    pop de                                        ; $6327: $d1
    pop de                                        ; $6328: $d1
    pop de                                        ; $6329: $d1
    pop de                                        ; $632a: $d1
    pop de                                        ; $632b: $d1
    pop de                                        ; $632c: $d1
    pop de                                        ; $632d: $d1
    pop de                                        ; $632e: $d1
    or $f5                                        ; $632f: $f6 $f5
    or $f7                                        ; $6331: $f6 $f7
    db $10                                        ; $6333: $10
    ld sp, hl                                     ; $6334: $f9
    ld a, [$03fb]                                 ; $6335: $fa $fb $03
    inc bc                                        ; $6338: $03
    inc bc                                        ; $6339: $03
    inc bc                                        ; $633a: $03
    inc bc                                        ; $633b: $03
    inc bc                                        ; $633c: $03
    inc bc                                        ; $633d: $03
    inc bc                                        ; $633e: $03
    inc bc                                        ; $633f: $03
    inc bc                                        ; $6340: $03
    inc bc                                        ; $6341: $03
    inc bc                                        ; $6342: $03
    inc bc                                        ; $6343: $03
    inc bc                                        ; $6344: $03

jr_087_6345:
    inc bc                                        ; $6345: $03
    inc bc                                        ; $6346: $03
    pop de                                        ; $6347: $d1
    pop de                                        ; $6348: $d1
    pop de                                        ; $6349: $d1
    pop de                                        ; $634a: $d1
    pop de                                        ; $634b: $d1
    pop de                                        ; $634c: $d1
    pop de                                        ; $634d: $d1
    pop de                                        ; $634e: $d1
    jr jr_087_6345                                ; $634f: $18 $f4

    inc b                                         ; $6351: $04
    dec b                                         ; $6352: $05
    ld a, [de]                                    ; $6353: $1a
    rlca                                          ; $6354: $07
    ld [$0309], sp                                ; $6355: $08 $09 $03
    inc bc                                        ; $6358: $03
    inc bc                                        ; $6359: $03
    inc bc                                        ; $635a: $03
    inc bc                                        ; $635b: $03
    inc bc                                        ; $635c: $03
    inc bc                                        ; $635d: $03
    inc bc                                        ; $635e: $03
    inc bc                                        ; $635f: $03
    ld [bc], a                                    ; $6360: $02
    ld [bc], a                                    ; $6361: $02
    ld [bc], a                                    ; $6362: $02
    inc bc                                        ; $6363: $03
    ld [bc], a                                    ; $6364: $02
    ld [bc], a                                    ; $6365: $02
    ld [bc], a                                    ; $6366: $02
    ld b, c                                       ; $6367: $41
    sbc d                                         ; $6368: $9a
    and d                                         ; $6369: $a2
    and e                                         ; $636a: $a3
    ld b, l                                       ; $636b: $45
    ld b, [hl]                                    ; $636c: $46
    ld c, a                                       ; $636d: $4f
    and [hl]                                      ; $636e: $a6
    ld c, c                                       ; $636f: $49
    ld c, d                                       ; $6370: $4a
    ld c, e                                       ; $6371: $4b
    ld e, h                                       ; $6372: $5c
    ld c, l                                       ; $6373: $4d
    ld c, [hl]                                    ; $6374: $4e
    ld c, a                                       ; $6375: $4f
    ld d, b                                       ; $6376: $50
    ld bc, $0e09                                  ; $6377: $01 $09 $0e
    rrca                                          ; $637a: $0f
    ld bc, $0101                                  ; $637b: $01 $01 $01
    rrca                                          ; $637e: $0f
    ld bc, $0101                                  ; $637f: $01 $01 $01
    rlca                                          ; $6382: $07
    ld bc, $0102                                  ; $6383: $01 $02 $01
    rlca                                          ; $6386: $07
    jp hl                                         ; $6387: $e9


    or a                                          ; $6388: $b7
    ld h, h                                       ; $6389: $64
    rlca                                          ; $638a: $07
    db $ec                                        ; $638b: $ec
    cp b                                          ; $638c: $b8
    ld l, b                                       ; $638d: $68
    rlca                                          ; $638e: $07
    cp d                                          ; $638f: $ba
    cp c                                          ; $6390: $b9
    add e                                         ; $6391: $83
    rlca                                          ; $6392: $07
    cp a                                          ; $6393: $bf
    cp [hl]                                       ; $6394: $be
    add a                                         ; $6395: $87
    ld [hl+], a                                   ; $6396: $22
    inc hl                                        ; $6397: $23
    dec hl                                        ; $6398: $2b
    inc bc                                        ; $6399: $03
    ld [bc], a                                    ; $639a: $02
    inc hl                                        ; $639b: $23
    dec hl                                        ; $639c: $2b
    inc bc                                        ; $639d: $03
    ld [bc], a                                    ; $639e: $02
    dec hl                                        ; $639f: $2b
    dec hl                                        ; $63a0: $2b
    dec bc                                        ; $63a1: $0b
    ld [bc], a                                    ; $63a2: $02
    dec hl                                        ; $63a3: $2b
    dec hl                                        ; $63a4: $2b
    dec bc                                        ; $63a5: $0b
    ld [bc], a                                    ; $63a6: $02
    ld [de], a                                    ; $63a7: $12
    db $fd                                        ; $63a8: $fd
    pop de                                        ; $63a9: $d1
    cp $15                                        ; $63aa: $fe $15
    nop                                           ; $63ac: $00
    ld bc, $3802                                  ; $63ad: $01 $02 $38
    rra                                           ; $63b0: $1f
    jr nz, jr_087_63d4                            ; $63b1: $20 $21

    inc h                                         ; $63b3: $24
    inc hl                                        ; $63b4: $23
    inc h                                         ; $63b5: $24
    dec h                                         ; $63b6: $25
    inc bc                                        ; $63b7: $03
    inc bc                                        ; $63b8: $03
    inc bc                                        ; $63b9: $03
    inc bc                                        ; $63ba: $03
    inc bc                                        ; $63bb: $03
    inc bc                                        ; $63bc: $03
    inc bc                                        ; $63bd: $03
    inc bc                                        ; $63be: $03
    inc bc                                        ; $63bf: $03
    inc bc                                        ; $63c0: $03
    inc bc                                        ; $63c1: $03
    inc bc                                        ; $63c2: $03
    inc bc                                        ; $63c3: $03
    inc bc                                        ; $63c4: $03
    inc bc                                        ; $63c5: $03
    inc bc                                        ; $63c6: $03
    inc e                                         ; $63c7: $1c
    rlca                                          ; $63c8: $07
    dec bc                                        ; $63c9: $0b
    inc c                                         ; $63ca: $0c
    ld e, $07                                     ; $63cb: $1e $07
    ld c, $0f                                     ; $63cd: $0e $0f
    ld a, $07                                     ; $63cf: $3e $07
    cpl                                           ; $63d1: $2f
    jr nc, jr_087_6414                            ; $63d2: $30 $40

jr_087_63d4:
    ld [hl+], a                                   ; $63d4: $22
    ld [hl-], a                                   ; $63d5: $32
    inc sp                                        ; $63d6: $33
    inc bc                                        ; $63d7: $03
    ld [bc], a                                    ; $63d8: $02
    inc b                                         ; $63d9: $04
    inc b                                         ; $63da: $04
    inc bc                                        ; $63db: $03
    ld [bc], a                                    ; $63dc: $02
    inc b                                         ; $63dd: $04
    inc b                                         ; $63de: $04
    inc bc                                        ; $63df: $03
    ld [bc], a                                    ; $63e0: $02
    inc b                                         ; $63e1: $04
    inc b                                         ; $63e2: $04
    inc bc                                        ; $63e3: $03
    ld [bc], a                                    ; $63e4: $02
    inc b                                         ; $63e5: $04
    inc b                                         ; $63e6: $04
    ld h, $27                                     ; $63e7: $26 $27
    jr z, jr_087_6414                             ; $63e9: $28 $29

    ld a, [hl+]                                   ; $63eb: $2a
    dec hl                                        ; $63ec: $2b
    inc l                                         ; $63ed: $2c
    dec l                                         ; $63ee: $2d
    ld b, c                                       ; $63ef: $41
    ld b, d                                       ; $63f0: $42
    ld b, e                                       ; $63f1: $43
    ld b, h                                       ; $63f2: $44
    ld b, l                                       ; $63f3: $45
    ld b, [hl]                                    ; $63f4: $46
    ld b, a                                       ; $63f5: $47
    ld c, b                                       ; $63f6: $48
    ld bc, $0102                                  ; $63f7: $01 $02 $01
    ld bc, $0102                                  ; $63fa: $01 $02 $01
    ld bc, $0201                                  ; $63fd: $01 $01 $02
    ld bc, $0101                                  ; $6400: $01 $01 $01
    ld bc, $0101                                  ; $6403: $01 $01 $01
    ld bc, $e434                                  ; $6406: $01 $34 $e4
    ld h, $27                                     ; $6409: $26 $27
    dec [hl]                                      ; $640b: $35
    ld [hl], $2a                                  ; $640c: $36 $2a
    dec hl                                        ; $640e: $2b
    ld d, c                                       ; $640f: $51
    ld d, d                                       ; $6410: $52
    ld b, c                                       ; $6411: $41
    ld b, d                                       ; $6412: $42
    ld d, e                                       ; $6413: $53

jr_087_6414:
    ld d, h                                       ; $6414: $54
    cp e                                          ; $6415: $bb
    cp h                                          ; $6416: $bc
    rlca                                          ; $6417: $07
    dec b                                         ; $6418: $05
    dec b                                         ; $6419: $05
    dec b                                         ; $641a: $05
    ld bc, $0707                                  ; $641b: $01 $07 $07
    rlca                                          ; $641e: $07
    ld bc, $0101                                  ; $641f: $01 $01 $01
    ld bc, $0101                                  ; $6422: $01 $01 $01
    add hl, bc                                    ; $6425: $09
    add hl, bc                                    ; $6426: $09
    jr z, jr_087_6452                             ; $6427: $28 $29

    inc [hl]                                      ; $6429: $34
    db $e4                                        ; $642a: $e4
    inc l                                         ; $642b: $2c
    dec sp                                        ; $642c: $3b
    inc a                                         ; $642d: $3c
    rst $20                                       ; $642e: $e7
    ld b, e                                       ; $642f: $43
    ld e, b                                       ; $6430: $58
    ld e, c                                       ; $6431: $59
    ld [$5abd], a                                 ; $6432: $ea $bd $5a
    ld e, e                                       ; $6435: $5b
    db $ed                                        ; $6436: $ed
    dec b                                         ; $6437: $05
    dec b                                         ; $6438: $05
    dec b                                         ; $6439: $05
    dec b                                         ; $643a: $05
    rlca                                          ; $643b: $07
    rlca                                          ; $643c: $07
    rlca                                          ; $643d: $07
    rlca                                          ; $643e: $07
    ld bc, $0201                                  ; $643f: $01 $01 $02
    ld [bc], a                                    ; $6442: $02
    add hl, bc                                    ; $6443: $09
    ld bc, $0101                                  ; $6444: $01 $01 $01
    ld h, $27                                     ; $6447: $26 $27
    adc [hl]                                      ; $6449: $8e
    adc a                                         ; $644a: $8f
    ld a, [hl+]                                   ; $644b: $2a
    adc c                                         ; $644c: $89
    sub b                                         ; $644d: $90
    sub c                                         ; $644e: $91
    ld b, c                                       ; $644f: $41
    sbc b                                         ; $6450: $98
    sbc e                                         ; $6451: $9b

jr_087_6452:
    sbc h                                         ; $6452: $9c
    ld b, l                                       ; $6453: $45
    sbc c                                         ; $6454: $99
    sbc a                                         ; $6455: $9f
    and b                                         ; $6456: $a0
    dec b                                         ; $6457: $05
    dec b                                         ; $6458: $05
    dec c                                         ; $6459: $0d
    dec c                                         ; $645a: $0d
    rlca                                          ; $645b: $07
    rrca                                          ; $645c: $0f
    rrca                                          ; $645d: $0f
    rrca                                          ; $645e: $0f
    ld bc, $0e0e                                  ; $645f: $01 $0e $0e
    ld c, $01                                     ; $6462: $0e $01
    ld c, $0e                                     ; $6464: $0e $0e
    ld c, $d1                                     ; $6466: $0e $d1
    pop de                                        ; $6468: $d1
    pop de                                        ; $6469: $d1
    pop de                                        ; $646a: $d1
    pop de                                        ; $646b: $d1
    pop de                                        ; $646c: $d1
    pop de                                        ; $646d: $d1
    pop de                                        ; $646e: $d1
    inc b                                         ; $646f: $04
    db $f4                                        ; $6470: $f4
    rla                                           ; $6471: $17
    jr jr_087_647c                                ; $6472: $18 $08

    rlca                                          ; $6474: $07
    add hl, de                                    ; $6475: $19
    ld a, [de]                                    ; $6476: $1a
    inc bc                                        ; $6477: $03
    inc bc                                        ; $6478: $03
    inc bc                                        ; $6479: $03
    inc bc                                        ; $647a: $03
    inc bc                                        ; $647b: $03

jr_087_647c:
    inc bc                                        ; $647c: $03
    inc bc                                        ; $647d: $03
    inc bc                                        ; $647e: $03
    ld [hl+], a                                   ; $647f: $22
    ld [bc], a                                    ; $6480: $02
    inc bc                                        ; $6481: $03
    inc bc                                        ; $6482: $03
    ld [hl+], a                                   ; $6483: $22
    ld [bc], a                                    ; $6484: $02
    inc bc                                        ; $6485: $03
    inc bc                                        ; $6486: $03
    ld de, $1b07                                  ; $6487: $11 $07 $1b
    inc e                                         ; $648a: $1c
    inc d                                         ; $648b: $14
    rlca                                          ; $648c: $07
    dec e                                         ; $648d: $1d
    ld e, $37                                     ; $648e: $1e $37
    rlca                                          ; $6490: $07
    dec a                                         ; $6491: $3d
    ld a, $3a                                     ; $6492: $3e $3a
    ld [hl+], a                                   ; $6494: $22
    ccf                                           ; $6495: $3f
    ld b, b                                       ; $6496: $40
    inc b                                         ; $6497: $04
    ld [bc], a                                    ; $6498: $02
    inc bc                                        ; $6499: $03
    inc bc                                        ; $649a: $03
    inc b                                         ; $649b: $04
    ld [bc], a                                    ; $649c: $02
    inc bc                                        ; $649d: $03
    inc bc                                        ; $649e: $03
    inc b                                         ; $649f: $04
    ld [bc], a                                    ; $64a0: $02
    inc bc                                        ; $64a1: $03
    inc bc                                        ; $64a2: $03
    inc b                                         ; $64a3: $04
    ld [bc], a                                    ; $64a4: $02
    inc bc                                        ; $64a5: $03
    inc bc                                        ; $64a6: $03
    inc [hl]                                      ; $64a7: $34
    db $e4                                        ; $64a8: $e4
    ld h, $27                                     ; $64a9: $26 $27
    sub d                                         ; $64ab: $92
    rst $20                                       ; $64ac: $e7
    ld a, [hl+]                                   ; $64ad: $2a
    dec hl                                        ; $64ae: $2b
    sbc l                                         ; $64af: $9d
    sbc [hl]                                      ; $64b0: $9e
    ld b, c                                       ; $64b1: $41
    ld b, d                                       ; $64b2: $42
    and c                                         ; $64b3: $a1
    db $ed                                        ; $64b4: $ed
    cp e                                          ; $64b5: $bb
    cp h                                          ; $64b6: $bc
    dec b                                         ; $64b7: $05
    dec b                                         ; $64b8: $05
    dec b                                         ; $64b9: $05
    dec b                                         ; $64ba: $05
    rrca                                          ; $64bb: $0f
    rlca                                          ; $64bc: $07
    rlca                                          ; $64bd: $07
    rlca                                          ; $64be: $07
    ld c, $09                                     ; $64bf: $0e $09
    ld bc, $0907                                  ; $64c1: $01 $07 $09
    ld bc, $0f09                                  ; $64c4: $01 $09 $0f
    db $eb                                        ; $64c7: $eb
    db $ec                                        ; $64c8: $ec
    ld c, e                                       ; $64c9: $4b
    ld e, h                                       ; $64ca: $5c
    xor $ef                                       ; $64cb: $ee $ef
    ld c, a                                       ; $64cd: $4f
    ld d, b                                       ; $64ce: $50
    pop af                                        ; $64cf: $f1
    ld a, [c]                                     ; $64d0: $f2
    jr z, @+$2b                                   ; $64d1: $28 $29

    ld [c], a                                     ; $64d3: $e2
    db $e3                                        ; $64d4: $e3
    inc l                                         ; $64d5: $2c
    dec sp                                        ; $64d6: $3b
    add e                                         ; $64d7: $83
    add e                                         ; $64d8: $83
    rlca                                          ; $64d9: $07
    ld bc, $8383                                  ; $64da: $01 $83 $83
    rlca                                          ; $64dd: $07
    ld bc, $8383                                  ; $64de: $01 $83 $83
    rlca                                          ; $64e1: $07
    ld bc, $8383                                  ; $64e2: $01 $83 $83
    rlca                                          ; $64e5: $07
    ld bc, $f05d                                  ; $64e6: $01 $5d $f0
    ld c, c                                       ; $64e9: $49
    sbc d                                         ; $64ea: $9a
    ld d, a                                       ; $64eb: $57
    di                                            ; $64ec: $f3
    ld c, l                                       ; $64ed: $4d
    ld c, [hl]                                    ; $64ee: $4e
    inc [hl]                                      ; $64ef: $34
    db $e4                                        ; $64f0: $e4
    ld h, $27                                     ; $64f1: $26 $27
    inc a                                         ; $64f3: $3c
    rst $20                                       ; $64f4: $e7
    ld a, [hl+]                                   ; $64f5: $2a
    dec hl                                        ; $64f6: $2b
    ld bc, $0101                                  ; $64f7: $01 $01 $01
    add hl, bc                                    ; $64fa: $09
    ld bc, $0202                                  ; $64fb: $01 $02 $02
    ld bc, $0202                                  ; $64fe: $01 $02 $02
    ld bc, $0201                                  ; $6501: $01 $01 $02
    ld bc, $0101                                  ; $6504: $01 $01 $01
    and d                                         ; $6507: $a2
    and e                                         ; $6508: $a3
    and h                                         ; $6509: $a4
    and l                                         ; $650a: $a5
    ld c, a                                       ; $650b: $4f
    and [hl]                                      ; $650c: $a6
    and a                                         ; $650d: $a7
    di                                            ; $650e: $f3
    jr z, jr_087_653a                             ; $650f: $28 $29

    inc [hl]                                      ; $6511: $34
    db $e4                                        ; $6512: $e4
    inc l                                         ; $6513: $2c
    dec l                                         ; $6514: $2d
    dec [hl]                                      ; $6515: $35
    ld [hl], $0e                                  ; $6516: $36 $0e
    ld c, $0e                                     ; $6518: $0e $0e
    add hl, bc                                    ; $651a: $09
    ld bc, $0909                                  ; $651b: $01 $09 $09
    ld bc, $0202                                  ; $651e: $01 $02 $02
    ld [bc], a                                    ; $6521: $02
    ld bc, $0102                                  ; $6522: $01 $02 $01
    ld [bc], a                                    ; $6525: $02
    ld [bc], a                                    ; $6526: $02
    push hl                                       ; $6527: $e5
    and $43                                       ; $6528: $e6 $43
    ld e, b                                       ; $652a: $58
    add sp, -$17                                  ; $652b: $e8 $e9
    ld b, a                                       ; $652d: $47
    ld e, d                                       ; $652e: $5a
    db $eb                                        ; $652f: $eb
    db $ec                                        ; $6530: $ec
    ld c, e                                       ; $6531: $4b
    ld e, h                                       ; $6532: $5c
    xor $ef                                       ; $6533: $ee $ef
    ld c, a                                       ; $6535: $4f
    ld d, b                                       ; $6536: $50
    add e                                         ; $6537: $83
    add e                                         ; $6538: $83
    rlca                                          ; $6539: $07

jr_087_653a:
    ld bc, $8383                                  ; $653a: $01 $83 $83
    rlca                                          ; $653d: $07
    ld bc, $8383                                  ; $653e: $01 $83 $83
    rlca                                          ; $6541: $07
    ld bc, $8383                                  ; $6542: $01 $83 $83
    rlca                                          ; $6545: $07
    ld bc, $ea59                                  ; $6546: $01 $59 $ea
    ld b, c                                       ; $6549: $41
    ld b, d                                       ; $654a: $42
    ld e, e                                       ; $654b: $5b
    db $ed                                        ; $654c: $ed
    ld b, l                                       ; $654d: $45
    ld b, [hl]                                    ; $654e: $46
    ld e, l                                       ; $654f: $5d
    ldh a, [rOBP1]                                ; $6550: $f0 $49
    ld c, d                                       ; $6552: $4a
    ld d, a                                       ; $6553: $57
    di                                            ; $6554: $f3
    ld c, l                                       ; $6555: $4d
    ld c, [hl]                                    ; $6556: $4e
    ld [bc], a                                    ; $6557: $02
    ld bc, $0101                                  ; $6558: $01 $01 $01
    ld [bc], a                                    ; $655b: $02
    ld bc, $0101                                  ; $655c: $01 $01 $01
    ld bc, $0202                                  ; $655f: $01 $02 $02
    ld [bc], a                                    ; $6562: $02
    ld bc, $0101                                  ; $6563: $01 $01 $01
    ld bc, $4443                                  ; $6566: $01 $43 $44
    ld d, c                                       ; $6569: $51
    ld d, d                                       ; $656a: $52
    ld b, a                                       ; $656b: $47
    ld c, b                                       ; $656c: $48
    ld d, e                                       ; $656d: $53
    ld d, h                                       ; $656e: $54
    ld c, e                                       ; $656f: $4b
    ld c, h                                       ; $6570: $4c
    ld d, l                                       ; $6571: $55
    ld d, [hl]                                    ; $6572: $56
    ld c, a                                       ; $6573: $4f
    ld d, b                                       ; $6574: $50
    ld d, a                                       ; $6575: $57
    di                                            ; $6576: $f3
    ld [bc], a                                    ; $6577: $02
    ld [bc], a                                    ; $6578: $02
    ld [bc], a                                    ; $6579: $02
    ld bc, $0201                                  ; $657a: $01 $01 $02
    ld [bc], a                                    ; $657d: $02
    ld [bc], a                                    ; $657e: $02
    ld bc, $0102                                  ; $657f: $01 $02 $01
    ld bc, $0101                                  ; $6582: $01 $01 $01
    ld bc, $f101                                  ; $6585: $01 $01 $f1
    ld a, [c]                                     ; $6588: $f2
    jr z, jr_087_65b4                             ; $6589: $28 $29

    ld [c], a                                     ; $658b: $e2
    db $e3                                        ; $658c: $e3
    inc l                                         ; $658d: $2c
    dec l                                         ; $658e: $2d
    push hl                                       ; $658f: $e5
    and $43                                       ; $6590: $e6 $43
    ld b, h                                       ; $6592: $44
    add sp, -$17                                  ; $6593: $e8 $e9
    ld b, a                                       ; $6595: $47
    ld c, b                                       ; $6596: $48
    add e                                         ; $6597: $83
    add e                                         ; $6598: $83
    rlca                                          ; $6599: $07
    ld bc, $8383                                  ; $659a: $01 $83 $83
    rlca                                          ; $659d: $07
    ld bc, $8383                                  ; $659e: $01 $83 $83
    rlca                                          ; $65a1: $07
    ld bc, $8383                                  ; $65a2: $01 $83 $83
    rlca                                          ; $65a5: $07
    ld [bc], a                                    ; $65a6: $02
    inc [hl]                                      ; $65a7: $34
    db $e4                                        ; $65a8: $e4
    ld h, $27                                     ; $65a9: $26 $27
    dec [hl]                                      ; $65ab: $35
    ld [hl], $2a                                  ; $65ac: $36 $2a
    dec hl                                        ; $65ae: $2b
    ld d, c                                       ; $65af: $51
    ld d, d                                       ; $65b0: $52
    ld b, c                                       ; $65b1: $41
    ld b, d                                       ; $65b2: $42
    ld d, e                                       ; $65b3: $53

jr_087_65b4:
    ld d, h                                       ; $65b4: $54
    ld b, l                                       ; $65b5: $45
    ld b, [hl]                                    ; $65b6: $46
    ld bc, $0102                                  ; $65b7: $01 $02 $01
    ld bc, $0201                                  ; $65ba: $01 $01 $02
    ld bc, $0107                                  ; $65bd: $01 $07 $01
    ld [bc], a                                    ; $65c0: $02
    ld bc, $0107                                  ; $65c1: $01 $07 $01
    ld [bc], a                                    ; $65c4: $02
    ld bc, $eb07                                  ; $65c5: $01 $07 $eb
    db $ec                                        ; $65c8: $ec
    ld c, e                                       ; $65c9: $4b
    ld c, h                                       ; $65ca: $4c
    xor $ef                                       ; $65cb: $ee $ef
    ld c, a                                       ; $65cd: $4f
    ld d, b                                       ; $65ce: $50
    pop af                                        ; $65cf: $f1
    ld a, [c]                                     ; $65d0: $f2
    jr z, jr_087_65fc                             ; $65d1: $28 $29

    ld [c], a                                     ; $65d3: $e2
    db $e3                                        ; $65d4: $e3
    inc l                                         ; $65d5: $2c
    dec sp                                        ; $65d6: $3b
    add e                                         ; $65d7: $83
    add e                                         ; $65d8: $83
    rlca                                          ; $65d9: $07
    ld [bc], a                                    ; $65da: $02
    add e                                         ; $65db: $83
    add e                                         ; $65dc: $83
    rlca                                          ; $65dd: $07
    ld [bc], a                                    ; $65de: $02
    add e                                         ; $65df: $83
    add e                                         ; $65e0: $83
    rlca                                          ; $65e1: $07
    ld [bc], a                                    ; $65e2: $02
    add e                                         ; $65e3: $83
    add e                                         ; $65e4: $83
    rlca                                          ; $65e5: $07
    ld [bc], a                                    ; $65e6: $02
    ld d, l                                       ; $65e7: $55
    ld d, [hl]                                    ; $65e8: $56
    ld c, c                                       ; $65e9: $49
    ld c, d                                       ; $65ea: $4a
    ld d, a                                       ; $65eb: $57
    di                                            ; $65ec: $f3
    ld c, l                                       ; $65ed: $4d
    ld c, [hl]                                    ; $65ee: $4e
    inc [hl]                                      ; $65ef: $34
    db $e4                                        ; $65f0: $e4
    ld h, $27                                     ; $65f1: $26 $27
    inc a                                         ; $65f3: $3c
    rst $20                                       ; $65f4: $e7
    ld a, [hl+]                                   ; $65f5: $2a
    dec hl                                        ; $65f6: $2b
    ld bc, $0102                                  ; $65f7: $01 $02 $01
    rlca                                          ; $65fa: $07
    ld [bc], a                                    ; $65fb: $02

jr_087_65fc:
    ld bc, $0702                                  ; $65fc: $01 $02 $07
    ld [bc], a                                    ; $65ff: $02
    ld bc, $0702                                  ; $6600: $01 $02 $07
    ld [bc], a                                    ; $6603: $02
    ld [bc], a                                    ; $6604: $02
    ld bc, $ca07                                  ; $6605: $01 $07 $ca
    set 1, h                                      ; $6608: $cb $cc
    ld e, h                                       ; $660a: $5c
    call $cfce                                    ; $660b: $cd $ce $cf
    ld d, b                                       ; $660e: $50
    ld h, $27                                     ; $660f: $26 $27
    jr z, @+$2b                                   ; $6611: $28 $29

    ld a, [hl+]                                   ; $6613: $2a
    dec hl                                        ; $6614: $2b
    inc l                                         ; $6615: $2c
    dec sp                                        ; $6616: $3b
    add hl, bc                                    ; $6617: $09
    ld a, [bc]                                    ; $6618: $0a
    add hl, bc                                    ; $6619: $09
    ld bc, $0a09                                  ; $661a: $01 $09 $0a
    add hl, bc                                    ; $661d: $09
    ld bc, $0101                                  ; $661e: $01 $01 $01
    ld bc, $0201                                  ; $6621: $01 $01 $02
    ld bc, $0101                                  ; $6624: $01 $01 $01
    ld e, l                                       ; $6627: $5d
    ldh a, [rOBP1]                                ; $6628: $f0 $49
    jp hl                                         ; $662a: $e9


    ld d, a                                       ; $662b: $57
    di                                            ; $662c: $f3
    ld c, l                                       ; $662d: $4d
    db $ec                                        ; $662e: $ec
    inc [hl]                                      ; $662f: $34
    db $e4                                        ; $6630: $e4
    ld h, $ba                                     ; $6631: $26 $ba
    inc a                                         ; $6633: $3c
    rst $20                                       ; $6634: $e7
    ld a, [hl+]                                   ; $6635: $2a
    cp a                                          ; $6636: $bf
    ld [bc], a                                    ; $6637: $02
    ld bc, $2307                                  ; $6638: $01 $07 $23
    ld bc, $0701                                  ; $663b: $01 $01 $07
    inc hl                                        ; $663e: $23
    ld bc, $0701                                  ; $663f: $01 $01 $07
    dec hl                                        ; $6642: $2b
    ld bc, $0701                                  ; $6643: $01 $01 $07
    dec hl                                        ; $6646: $2b
    or a                                          ; $6647: $b7
    ld h, h                                       ; $6648: $64
    db $d3                                        ; $6649: $d3
    ld a, b                                       ; $664a: $78
    cp b                                          ; $664b: $b8
    ld l, b                                       ; $664c: $68
    call nc, $b907                                ; $664d: $d4 $07 $b9
    add e                                         ; $6650: $83
    sub h                                         ; $6651: $94
    sub e                                         ; $6652: $93
    cp [hl]                                       ; $6653: $be
    add a                                         ; $6654: $87
    inc hl                                        ; $6655: $23
    ld [hl+], a                                   ; $6656: $22
    dec hl                                        ; $6657: $2b
    inc bc                                        ; $6658: $03
    dec bc                                        ; $6659: $0b
    ld [bc], a                                    ; $665a: $02
    dec hl                                        ; $665b: $2b
    inc bc                                        ; $665c: $03
    dec bc                                        ; $665d: $0b
    ld [bc], a                                    ; $665e: $02
    dec hl                                        ; $665f: $2b
    dec bc                                        ; $6660: $0b
    dec bc                                        ; $6661: $0b
    ld a, [bc]                                    ; $6662: $0a
    dec hl                                        ; $6663: $2b
    dec bc                                        ; $6664: $0b
    inc bc                                        ; $6665: $03
    ld [bc], a                                    ; $6666: $02
    xor b                                         ; $6667: $a8
    ld a, [bc]                                    ; $6668: $0a
    dec de                                        ; $6669: $1b
    xor l                                         ; $666a: $ad
    xor c                                         ; $666b: $a9
    dec c                                         ; $666c: $0d
    dec e                                         ; $666d: $1d
    xor a                                         ; $666e: $af
    add hl, sp                                    ; $666f: $39
    ld l, $3d                                     ; $6670: $2e $3d
    or c                                          ; $6672: $b1
    dec h                                         ; $6673: $25
    ld sp, $b33f                                  ; $6674: $31 $3f $b3
    dec bc                                        ; $6677: $0b
    inc bc                                        ; $6678: $03
    inc bc                                        ; $6679: $03
    dec bc                                        ; $667a: $0b
    dec bc                                        ; $667b: $0b
    inc bc                                        ; $667c: $03
    inc bc                                        ; $667d: $03
    dec bc                                        ; $667e: $0b
    inc bc                                        ; $667f: $03
    inc bc                                        ; $6680: $03
    inc bc                                        ; $6681: $03
    dec bc                                        ; $6682: $0b
    inc bc                                        ; $6683: $03
    inc bc                                        ; $6684: $03
    inc bc                                        ; $6685: $03
    dec bc                                        ; $6686: $0b
    ld b, c                                       ; $6687: $41
    ld b, d                                       ; $6688: $42
    ld b, e                                       ; $6689: $43
    ld e, b                                       ; $668a: $58
    ld b, l                                       ; $668b: $45
    ld b, [hl]                                    ; $668c: $46
    ld b, a                                       ; $668d: $47
    ld e, d                                       ; $668e: $5a
    ld c, c                                       ; $668f: $49
    ld c, d                                       ; $6690: $4a
    ld c, e                                       ; $6691: $4b
    ld e, h                                       ; $6692: $5c
    ld c, l                                       ; $6693: $4d
    ld c, [hl]                                    ; $6694: $4e
    ld c, a                                       ; $6695: $4f
    ld d, b                                       ; $6696: $50
    ld [bc], a                                    ; $6697: $02
    ld [bc], a                                    ; $6698: $02
    ld [bc], a                                    ; $6699: $02
    ld bc, $0102                                  ; $669a: $01 $02 $01
    ld bc, $0101                                  ; $669d: $01 $01 $01
    ld bc, $0101                                  ; $66a0: $01 $01 $01
    ld bc, $0202                                  ; $66a3: $01 $02 $02
    ld [bc], a                                    ; $66a6: $02
    ld e, c                                       ; $66a7: $59
    ld [$4241], a                                 ; $66a8: $ea $41 $42
    ld e, e                                       ; $66ab: $5b
    db $ed                                        ; $66ac: $ed
    ld b, l                                       ; $66ad: $45
    ld b, [hl]                                    ; $66ae: $46
    ld e, l                                       ; $66af: $5d
    ldh a, [rOBP1]                                ; $66b0: $f0 $49
    ld c, d                                       ; $66b2: $4a
    ld d, a                                       ; $66b3: $57
    di                                            ; $66b4: $f3
    ld c, l                                       ; $66b5: $4d
    ld c, [hl]                                    ; $66b6: $4e
    ld bc, $0101                                  ; $66b7: $01 $01 $01
    rlca                                          ; $66ba: $07
    ld [bc], a                                    ; $66bb: $02
    ld bc, $0101                                  ; $66bc: $01 $01 $01
    ld [bc], a                                    ; $66bf: $02
    ld bc, $0101                                  ; $66c0: $01 $01 $01
    ld [bc], a                                    ; $66c3: $02
    ld [bc], a                                    ; $66c4: $02
    ld bc, $4301                                  ; $66c5: $01 $01 $43
    ld e, b                                       ; $66c8: $58
    ld e, c                                       ; $66c9: $59
    ld [$5a47], a                                 ; $66ca: $ea $47 $5a
    ld e, e                                       ; $66cd: $5b
    db $ed                                        ; $66ce: $ed
    ld c, e                                       ; $66cf: $4b
    ld e, h                                       ; $66d0: $5c
    ld e, l                                       ; $66d1: $5d
    ldh a, [rVBK]                                 ; $66d2: $f0 $4f
    ld d, b                                       ; $66d4: $50
    ld d, a                                       ; $66d5: $57
    di                                            ; $66d6: $f3
    dec b                                         ; $66d7: $05
    dec b                                         ; $66d8: $05
    dec b                                         ; $66d9: $05
    dec b                                         ; $66da: $05
    rlca                                          ; $66db: $07
    rlca                                          ; $66dc: $07
    rlca                                          ; $66dd: $07
    rlca                                          ; $66de: $07
    ld bc, $0202                                  ; $66df: $01 $02 $02
    ld [bc], a                                    ; $66e2: $02
    ld bc, $0101                                  ; $66e3: $01 $01 $01
    ld [bc], a                                    ; $66e6: $02
    ld b, c                                       ; $66e7: $41
    ld b, d                                       ; $66e8: $42
    ld b, e                                       ; $66e9: $43
    db $e3                                        ; $66ea: $e3
    ld b, l                                       ; $66eb: $45
    ld b, [hl]                                    ; $66ec: $46
    ld b, a                                       ; $66ed: $47
    push de                                       ; $66ee: $d5
    ld c, c                                       ; $66ef: $49
    ld c, d                                       ; $66f0: $4a
    ld c, e                                       ; $66f1: $4b
    cp d                                          ; $66f2: $ba
    ld c, l                                       ; $66f3: $4d
    ld c, [hl]                                    ; $66f4: $4e
    ld c, a                                       ; $66f5: $4f
    cp a                                          ; $66f6: $bf
    dec b                                         ; $66f7: $05
    dec b                                         ; $66f8: $05
    dec b                                         ; $66f9: $05
    inc hl                                        ; $66fa: $23
    rlca                                          ; $66fb: $07
    rlca                                          ; $66fc: $07
    rlca                                          ; $66fd: $07
    dec bc                                        ; $66fe: $0b
    ld [bc], a                                    ; $66ff: $02
    ld bc, $2b07                                  ; $6700: $01 $07 $2b
    ld [bc], a                                    ; $6703: $02
    ld [bc], a                                    ; $6704: $02
    rlca                                          ; $6705: $07
    dec hl                                        ; $6706: $2b
    ret z                                         ; $6707: $c8

    ret                                           ; $6708: $c9


    pop bc                                        ; $6709: $c1
    ret nz                                        ; $670a: $c0

    pop de                                        ; $670b: $d1
    pop de                                        ; $670c: $d1
    ld [c], a                                     ; $670d: $e2
    db $e3                                        ; $670e: $e3
    pop de                                        ; $670f: $d1
    pop de                                        ; $6710: $d1
    ld [c], a                                     ; $6711: $e2
    db $e3                                        ; $6712: $e3
    pop de                                        ; $6713: $d1
    pop de                                        ; $6714: $d1
    push hl                                       ; $6715: $e5
    and $8b                                       ; $6716: $e6 $8b
    adc e                                         ; $6718: $8b
    xor e                                         ; $6719: $ab
    xor e                                         ; $671a: $ab
    add e                                         ; $671b: $83
    add e                                         ; $671c: $83
    add e                                         ; $671d: $83
    add e                                         ; $671e: $83
    inc bc                                        ; $671f: $03
    inc bc                                        ; $6720: $03
    add e                                         ; $6721: $83
    add e                                         ; $6722: $83
    inc bc                                        ; $6723: $03
    inc bc                                        ; $6724: $03
    add e                                         ; $6725: $83
    add e                                         ; $6726: $83
    jr z, jr_087_6752                             ; $6727: $28 $29

    inc [hl]                                      ; $6729: $34
    db $e4                                        ; $672a: $e4
    inc l                                         ; $672b: $2c
    dec sp                                        ; $672c: $3b
    inc a                                         ; $672d: $3c
    rst $20                                       ; $672e: $e7
    ld b, e                                       ; $672f: $43
    ld e, b                                       ; $6730: $58
    ld e, c                                       ; $6731: $59
    ld [$5a47], a                                 ; $6732: $ea $47 $5a
    ld e, e                                       ; $6735: $5b
    db $ed                                        ; $6736: $ed
    ld bc, $0101                                  ; $6737: $01 $01 $01
    ld [bc], a                                    ; $673a: $02
    rlca                                          ; $673b: $07
    ld bc, $0201                                  ; $673c: $01 $01 $02
    rlca                                          ; $673f: $07
    ld bc, $0101                                  ; $6740: $01 $01 $01
    rlca                                          ; $6743: $07
    ld bc, $0101                                  ; $6744: $01 $01 $01
    ld h, $27                                     ; $6747: $26 $27
    adc [hl]                                      ; $6749: $8e
    adc a                                         ; $674a: $8f
    ld a, [hl+]                                   ; $674b: $2a
    adc c                                         ; $674c: $89
    sub b                                         ; $674d: $90
    sub c                                         ; $674e: $91
    ld b, c                                       ; $674f: $41
    sbc b                                         ; $6750: $98
    sbc e                                         ; $6751: $9b

jr_087_6752:
    sbc h                                         ; $6752: $9c
    ld b, l                                       ; $6753: $45
    sbc c                                         ; $6754: $99
    sbc a                                         ; $6755: $9f
    and b                                         ; $6756: $a0
    ld bc, $0901                                  ; $6757: $01 $01 $09
    rrca                                          ; $675a: $0f
    ld [bc], a                                    ; $675b: $02
    add hl, bc                                    ; $675c: $09
    ld c, $0e                                     ; $675d: $0e $0e
    ld bc, $0e0e                                  ; $675f: $01 $0e $0e
    ld c, $01                                     ; $6762: $0e $01
    ld c, $0e                                     ; $6764: $0e $0e
    ld c, $4b                                     ; $6766: $0e $4b
    ld e, h                                       ; $6768: $5c
    ld e, l                                       ; $6769: $5d
    ldh a, [rVBK]                                 ; $676a: $f0 $4f
    ld d, b                                       ; $676c: $50
    ld d, a                                       ; $676d: $57
    di                                            ; $676e: $f3
    jr z, @+$2b                                   ; $676f: $28 $29

    inc [hl]                                      ; $6771: $34
    db $e4                                        ; $6772: $e4
    inc l                                         ; $6773: $2c
    dec sp                                        ; $6774: $3b
    inc a                                         ; $6775: $3c
    rst $20                                       ; $6776: $e7
    rlca                                          ; $6777: $07
    ld [bc], a                                    ; $6778: $02
    ld [bc], a                                    ; $6779: $02
    ld [bc], a                                    ; $677a: $02
    rlca                                          ; $677b: $07
    ld [bc], a                                    ; $677c: $02
    ld [bc], a                                    ; $677d: $02
    ld [bc], a                                    ; $677e: $02
    rlca                                          ; $677f: $07
    ld bc, $0202                                  ; $6780: $01 $02 $02
    rlca                                          ; $6783: $07
    ld bc, $0201                                  ; $6784: $01 $01 $02
    ld c, c                                       ; $6787: $49
    sbc d                                         ; $6788: $9a
    and d                                         ; $6789: $a2
    and e                                         ; $678a: $a3
    ld c, l                                       ; $678b: $4d
    ld c, [hl]                                    ; $678c: $4e
    ld c, a                                       ; $678d: $4f
    and [hl]                                      ; $678e: $a6
    ld h, $27                                     ; $678f: $26 $27
    jr z, jr_087_67bc                             ; $6791: $28 $29

    ld a, [hl+]                                   ; $6793: $2a
    dec hl                                        ; $6794: $2b
    inc l                                         ; $6795: $2c
    dec sp                                        ; $6796: $3b
    ld [bc], a                                    ; $6797: $02
    add hl, bc                                    ; $6798: $09
    ld c, $0e                                     ; $6799: $0e $0e
    ld [bc], a                                    ; $679b: $02
    ld bc, $0901                                  ; $679c: $01 $01 $09
    ld [bc], a                                    ; $679f: $02
    ld bc, $0101                                  ; $67a0: $01 $01 $01
    ld [bc], a                                    ; $67a3: $02
    ld bc, $0201                                  ; $67a4: $01 $01 $02
    xor [hl]                                      ; $67a7: $ae
    pop de                                        ; $67a8: $d1
    pop de                                        ; $67a9: $d1
    pop de                                        ; $67aa: $d1
    or b                                          ; $67ab: $b0
    pop de                                        ; $67ac: $d1
    pop de                                        ; $67ad: $d1
    pop de                                        ; $67ae: $d1
    sub $7f                                       ; $67af: $d6 $7f
    ld [hl], e                                    ; $67b1: $73
    ld [hl], d                                    ; $67b2: $72
    rst $10                                       ; $67b3: $d7
    add b                                         ; $67b4: $80
    ld [hl], a                                    ; $67b5: $77
    halt                                          ; $67b6: $76
    dec bc                                        ; $67b7: $0b
    inc bc                                        ; $67b8: $03
    inc bc                                        ; $67b9: $03
    inc bc                                        ; $67ba: $03
    dec bc                                        ; $67bb: $0b

jr_087_67bc:
    inc bc                                        ; $67bc: $03
    inc bc                                        ; $67bd: $03
    inc bc                                        ; $67be: $03
    dec bc                                        ; $67bf: $0b
    inc hl                                        ; $67c0: $23
    inc hl                                        ; $67c1: $23
    inc hl                                        ; $67c2: $23
    dec bc                                        ; $67c3: $0b
    dec hl                                        ; $67c4: $2b
    inc hl                                        ; $67c5: $23
    inc hl                                        ; $67c6: $23
    pop de                                        ; $67c7: $d1
    pop de                                        ; $67c8: $d1
    pop de                                        ; $67c9: $d1
    pop de                                        ; $67ca: $d1
    pop de                                        ; $67cb: $d1
    pop de                                        ; $67cc: $d1
    pop de                                        ; $67cd: $d1
    pop de                                        ; $67ce: $d1
    push af                                       ; $67cf: $f5
    db $f4                                        ; $67d0: $f4
    inc b                                         ; $67d1: $04
    dec b                                         ; $67d2: $05
    ld [hl], l                                    ; $67d3: $75
    rlca                                          ; $67d4: $07
    ld [$0309], sp                                ; $67d5: $08 $09 $03
    inc bc                                        ; $67d8: $03
    inc bc                                        ; $67d9: $03
    inc bc                                        ; $67da: $03
    inc bc                                        ; $67db: $03
    inc bc                                        ; $67dc: $03
    inc bc                                        ; $67dd: $03
    inc bc                                        ; $67de: $03
    inc hl                                        ; $67df: $23
    ld [bc], a                                    ; $67e0: $02
    ld [bc], a                                    ; $67e1: $02
    ld [bc], a                                    ; $67e2: $02
    inc hl                                        ; $67e3: $23
    ld [bc], a                                    ; $67e4: $02
    ld [bc], a                                    ; $67e5: $02
    ld [bc], a                                    ; $67e6: $02
    pop de                                        ; $67e7: $d1
    pop de                                        ; $67e8: $d1
    pop de                                        ; $67e9: $d1
    pop de                                        ; $67ea: $d1
    pop de                                        ; $67eb: $d1
    pop de                                        ; $67ec: $d1
    pop de                                        ; $67ed: $d1
    pop de                                        ; $67ee: $d1
    inc b                                         ; $67ef: $04
    db $f4                                        ; $67f0: $f4
    ld e, [hl]                                    ; $67f1: $5e
    push af                                       ; $67f2: $f5
    ld [$6007], sp                                ; $67f3: $08 $07 $60
    jp nc, Jump_000_0303                          ; $67f6: $d2 $03 $03

    inc bc                                        ; $67f9: $03
    inc bc                                        ; $67fa: $03
    inc bc                                        ; $67fb: $03
    inc bc                                        ; $67fc: $03
    inc bc                                        ; $67fd: $03
    inc bc                                        ; $67fe: $03
    ld [hl+], a                                   ; $67ff: $22
    ld [bc], a                                    ; $6800: $02
    inc bc                                        ; $6801: $03
    inc bc                                        ; $6802: $03
    ld [hl+], a                                   ; $6803: $22
    ld [bc], a                                    ; $6804: $02
    inc bc                                        ; $6805: $03
    dec bc                                        ; $6806: $0b
    pop de                                        ; $6807: $d1
    pop de                                        ; $6808: $d1
    xor $ef                                       ; $6809: $ee $ef
    pop de                                        ; $680b: $d1
    pop de                                        ; $680c: $d1
    pop af                                        ; $680d: $f1
    ld a, [c]                                     ; $680e: $f2
    or $f4                                        ; $680f: $f6 $f4
    or l                                          ; $6811: $b5
    db $e3                                        ; $6812: $e3
    db $10                                        ; $6813: $10
    rlca                                          ; $6814: $07
    or [hl]                                       ; $6815: $b6
    and $03                                       ; $6816: $e6 $03
    inc bc                                        ; $6818: $03
    inc bc                                        ; $6819: $03
    inc bc                                        ; $681a: $03
    inc bc                                        ; $681b: $03
    inc bc                                        ; $681c: $03
    inc bc                                        ; $681d: $03
    inc bc                                        ; $681e: $03
    inc bc                                        ; $681f: $03
    ld [bc], a                                    ; $6820: $02
    dec bc                                        ; $6821: $0b
    inc bc                                        ; $6822: $03
    inc bc                                        ; $6823: $03
    ld [bc], a                                    ; $6824: $02
    dec bc                                        ; $6825: $0b
    inc bc                                        ; $6826: $03
    ret c                                         ; $6827: $d8

    add c                                         ; $6828: $81
    ld a, e                                       ; $6829: $7b
    ld a, d                                       ; $682a: $7a
    reti                                          ; $682b: $d9


    add d                                         ; $682c: $82
    ld a, [hl]                                    ; $682d: $7e
    ld a, l                                       ; $682e: $7d
    cp c                                          ; $682f: $b9
    sub a                                         ; $6830: $97
    sub [hl]                                      ; $6831: $96
    sub l                                         ; $6832: $95
    cp [hl]                                       ; $6833: $be
    ld sp, $2425                                  ; $6834: $31 $25 $24
    dec bc                                        ; $6837: $0b
    dec hl                                        ; $6838: $2b
    inc hl                                        ; $6839: $23
    inc hl                                        ; $683a: $23
    dec bc                                        ; $683b: $0b
    dec hl                                        ; $683c: $2b
    inc hl                                        ; $683d: $23
    inc hl                                        ; $683e: $23
    dec hl                                        ; $683f: $2b
    dec hl                                        ; $6840: $2b
    dec hl                                        ; $6841: $2b
    dec hl                                        ; $6842: $2b
    dec hl                                        ; $6843: $2b
    inc hl                                        ; $6844: $23
    inc hl                                        ; $6845: $23
    inc hl                                        ; $6846: $23
    ld a, c                                       ; $6847: $79
    rlca                                          ; $6848: $07
    dec bc                                        ; $6849: $0b
    inc c                                         ; $684a: $0c
    ld a, h                                       ; $684b: $7c
    rlca                                          ; $684c: $07
    ld c, $0f                                     ; $684d: $0e $0f
    sub h                                         ; $684f: $94
    rlca                                          ; $6850: $07
    cpl                                           ; $6851: $2f
    jr nc, jr_087_6877                            ; $6852: $30 $23

    ld [hl+], a                                   ; $6854: $22
    ld [hl-], a                                   ; $6855: $32
    inc sp                                        ; $6856: $33
    inc hl                                        ; $6857: $23
    ld [bc], a                                    ; $6858: $02
    inc b                                         ; $6859: $04
    inc b                                         ; $685a: $04
    inc hl                                        ; $685b: $23
    ld [bc], a                                    ; $685c: $02
    inc b                                         ; $685d: $04
    inc b                                         ; $685e: $04
    dec hl                                        ; $685f: $2b
    ld [bc], a                                    ; $6860: $02
    inc b                                         ; $6861: $04
    inc b                                         ; $6862: $04
    inc hl                                        ; $6863: $23
    ld [bc], a                                    ; $6864: $02
    inc b                                         ; $6865: $04
    inc b                                         ; $6866: $04
    ld de, $6407                                  ; $6867: $11 $07 $64
    inc de                                        ; $686a: $13
    inc d                                         ; $686b: $14
    rlca                                          ; $686c: $07
    ld l, b                                       ; $686d: $68
    ld d, $37                                     ; $686e: $16 $37
    rlca                                          ; $6870: $07
    add e                                         ; $6871: $83
    sub h                                         ; $6872: $94
    ld a, [hl-]                                   ; $6873: $3a
    ld [hl+], a                                   ; $6874: $22
    add a                                         ; $6875: $87
    inc hl                                        ; $6876: $23

jr_087_6877:
    inc b                                         ; $6877: $04
    ld [bc], a                                    ; $6878: $02
    inc bc                                        ; $6879: $03
    inc bc                                        ; $687a: $03
    inc b                                         ; $687b: $04
    ld [bc], a                                    ; $687c: $02
    inc bc                                        ; $687d: $03
    inc bc                                        ; $687e: $03
    inc b                                         ; $687f: $04
    ld [bc], a                                    ; $6880: $02
    dec bc                                        ; $6881: $0b
    dec bc                                        ; $6882: $0b
    inc b                                         ; $6883: $04
    ld [bc], a                                    ; $6884: $02
    dec bc                                        ; $6885: $0b
    inc bc                                        ; $6886: $03
    ld [de], a                                    ; $6887: $12
    rlca                                          ; $6888: $07
    or a                                          ; $6889: $b7
    jp hl                                         ; $688a: $e9


    dec d                                         ; $688b: $15
    rlca                                          ; $688c: $07
    cp b                                          ; $688d: $b8
    db $ec                                        ; $688e: $ec
    jr c, jr_087_6898                             ; $688f: $38 $07

    cp c                                          ; $6891: $b9
    cp d                                          ; $6892: $ba
    inc h                                         ; $6893: $24
    ld [hl+], a                                   ; $6894: $22
    cp [hl]                                       ; $6895: $be
    cp a                                          ; $6896: $bf
    inc bc                                        ; $6897: $03

jr_087_6898:
    ld [bc], a                                    ; $6898: $02
    dec bc                                        ; $6899: $0b
    inc bc                                        ; $689a: $03
    inc bc                                        ; $689b: $03
    ld [bc], a                                    ; $689c: $02
    dec bc                                        ; $689d: $0b
    inc bc                                        ; $689e: $03
    inc bc                                        ; $689f: $03
    ld [bc], a                                    ; $68a0: $02
    dec bc                                        ; $68a1: $0b
    dec bc                                        ; $68a2: $0b
    inc bc                                        ; $68a3: $03
    ld [bc], a                                    ; $68a4: $02
    dec bc                                        ; $68a5: $0b
    dec bc                                        ; $68a6: $0b
    inc [hl]                                      ; $68a7: $34
    db $e4                                        ; $68a8: $e4
    ld h, $27                                     ; $68a9: $26 $27
    sub d                                         ; $68ab: $92
    rst $20                                       ; $68ac: $e7
    ld a, [hl+]                                   ; $68ad: $2a
    dec hl                                        ; $68ae: $2b
    sbc l                                         ; $68af: $9d
    sbc [hl]                                      ; $68b0: $9e
    ld b, c                                       ; $68b1: $41
    ld b, d                                       ; $68b2: $42
    and c                                         ; $68b3: $a1
    db $ed                                        ; $68b4: $ed
    ld b, l                                       ; $68b5: $45
    ld b, [hl]                                    ; $68b6: $46
    dec b                                         ; $68b7: $05
    dec b                                         ; $68b8: $05
    dec b                                         ; $68b9: $05
    dec b                                         ; $68ba: $05
    rrca                                          ; $68bb: $0f
    rlca                                          ; $68bc: $07
    rlca                                          ; $68bd: $07
    rlca                                          ; $68be: $07
    ld c, $09                                     ; $68bf: $0e $09
    ld bc, $0901                                  ; $68c1: $01 $01 $09
    ld bc, $0101                                  ; $68c4: $01 $01 $01
    jr z, jr_087_68f2                             ; $68c7: $28 $29

    inc [hl]                                      ; $68c9: $34
    db $e4                                        ; $68ca: $e4
    inc l                                         ; $68cb: $2c
    dec sp                                        ; $68cc: $3b
    inc a                                         ; $68cd: $3c
    rst $20                                       ; $68ce: $e7
    ld b, e                                       ; $68cf: $43
    ld e, b                                       ; $68d0: $58
    ld e, c                                       ; $68d1: $59
    ld [$5a47], a                                 ; $68d2: $ea $47 $5a
    ld e, e                                       ; $68d5: $5b
    db $ed                                        ; $68d6: $ed
    dec b                                         ; $68d7: $05
    dec b                                         ; $68d8: $05
    dec b                                         ; $68d9: $05
    dec b                                         ; $68da: $05
    rlca                                          ; $68db: $07
    rlca                                          ; $68dc: $07
    rlca                                          ; $68dd: $07
    rlca                                          ; $68de: $07
    ld [bc], a                                    ; $68df: $02
    ld bc, $0101                                  ; $68e0: $01 $01 $01
    ld [bc], a                                    ; $68e3: $02
    ld bc, $0201                                  ; $68e4: $01 $01 $02
    ld h, $27                                     ; $68e7: $26 $27
    jr z, jr_087_6914                             ; $68e9: $28 $29

    ld a, [hl+]                                   ; $68eb: $2a
    dec hl                                        ; $68ec: $2b
    inc l                                         ; $68ed: $2c
    dec sp                                        ; $68ee: $3b
    ld b, c                                       ; $68ef: $41
    ld b, d                                       ; $68f0: $42
    ld b, e                                       ; $68f1: $43

jr_087_68f2:
    ld e, b                                       ; $68f2: $58
    ld b, l                                       ; $68f3: $45
    ld b, [hl]                                    ; $68f4: $46
    ld b, a                                       ; $68f5: $47
    ld e, d                                       ; $68f6: $5a
    dec b                                         ; $68f7: $05
    dec b                                         ; $68f8: $05
    dec b                                         ; $68f9: $05
    dec b                                         ; $68fa: $05
    rlca                                          ; $68fb: $07
    rlca                                          ; $68fc: $07
    rlca                                          ; $68fd: $07
    rlca                                          ; $68fe: $07
    ld [bc], a                                    ; $68ff: $02
    ld [bc], a                                    ; $6900: $02
    ld bc, $0201                                  ; $6901: $01 $01 $02
    ld bc, $0101                                  ; $6904: $01 $01 $01
    inc [hl]                                      ; $6907: $34
    db $e4                                        ; $6908: $e4
    ld h, $27                                     ; $6909: $26 $27
    inc a                                         ; $690b: $3c
    rst $20                                       ; $690c: $e7
    ld a, [hl+]                                   ; $690d: $2a
    dec hl                                        ; $690e: $2b
    ld e, c                                       ; $690f: $59
    ld [$4241], a                                 ; $6910: $ea $41 $42
    ld e, e                                       ; $6913: $5b

jr_087_6914:
    db $ed                                        ; $6914: $ed
    ld b, l                                       ; $6915: $45
    ld b, [hl]                                    ; $6916: $46
    dec b                                         ; $6917: $05
    dec b                                         ; $6918: $05
    dec b                                         ; $6919: $05
    rlca                                          ; $691a: $07
    rlca                                          ; $691b: $07
    rlca                                          ; $691c: $07
    rlca                                          ; $691d: $07
    ld bc, $0101                                  ; $691e: $01 $01 $01
    ld bc, $0201                                  ; $6921: $01 $01 $02
    ld bc, $0101                                  ; $6924: $01 $01 $01
    and h                                         ; $6927: $a4
    and l                                         ; $6928: $a5
    ld c, c                                       ; $6929: $49
    ld c, d                                       ; $692a: $4a
    and a                                         ; $692b: $a7
    di                                            ; $692c: $f3
    ld c, l                                       ; $692d: $4d
    ld c, [hl]                                    ; $692e: $4e
    inc [hl]                                      ; $692f: $34
    db $e4                                        ; $6930: $e4
    ld h, $27                                     ; $6931: $26 $27
    inc a                                         ; $6933: $3c
    rst $20                                       ; $6934: $e7
    ld a, [hl+]                                   ; $6935: $2a
    dec hl                                        ; $6936: $2b
    ld c, $09                                     ; $6937: $0e $09
    ld bc, $0902                                  ; $6939: $01 $02 $09
    ld [bc], a                                    ; $693c: $02
    ld [bc], a                                    ; $693d: $02
    ld bc, $0102                                  ; $693e: $01 $02 $01
    ld bc, $0201                                  ; $6941: $01 $01 $02
    ld bc, $0101                                  ; $6944: $01 $01 $01
    ld c, e                                       ; $6947: $4b
    ld e, h                                       ; $6948: $5c
    ld e, l                                       ; $6949: $5d
    ldh a, [rVBK]                                 ; $694a: $f0 $4f
    ld d, b                                       ; $694c: $50
    ld d, a                                       ; $694d: $57
    di                                            ; $694e: $f3
    jr z, jr_087_697a                             ; $694f: $28 $29

    inc [hl]                                      ; $6951: $34
    db $e4                                        ; $6952: $e4
    inc l                                         ; $6953: $2c
    dec sp                                        ; $6954: $3b
    inc a                                         ; $6955: $3c
    rst $20                                       ; $6956: $e7
    ld [bc], a                                    ; $6957: $02
    ld bc, $0202                                  ; $6958: $01 $02 $02
    ld [bc], a                                    ; $695b: $02
    ld [bc], a                                    ; $695c: $02
    ld [bc], a                                    ; $695d: $02
    ld bc, $0202                                  ; $695e: $01 $02 $02
    ld bc, $0101                                  ; $6961: $01 $01 $01
    ld bc, $0201                                  ; $6964: $01 $01 $02
    ld c, c                                       ; $6967: $49
    ld c, d                                       ; $6968: $4a
    ld c, e                                       ; $6969: $4b
    ld e, h                                       ; $696a: $5c
    ld c, l                                       ; $696b: $4d
    ld c, [hl]                                    ; $696c: $4e
    ld c, a                                       ; $696d: $4f
    ld d, b                                       ; $696e: $50
    ld h, $27                                     ; $696f: $26 $27
    adc [hl]                                      ; $6971: $8e
    adc a                                         ; $6972: $8f
    ld a, [hl+]                                   ; $6973: $2a
    adc c                                         ; $6974: $89
    sub b                                         ; $6975: $90
    sub c                                         ; $6976: $91
    ld bc, $0101                                  ; $6977: $01 $01 $01

jr_087_697a:
    ld [bc], a                                    ; $697a: $02
    ld [bc], a                                    ; $697b: $02
    ld [bc], a                                    ; $697c: $02
    ld [bc], a                                    ; $697d: $02
    ld bc, $0102                                  ; $697e: $01 $02 $01
    add hl, bc                                    ; $6981: $09
    add hl, bc                                    ; $6982: $09
    ld bc, $0e09                                  ; $6983: $01 $09 $0e
    ld c, $5d                                     ; $6986: $0e $5d
    ldh a, [rOBP1]                                ; $6988: $f0 $49
    ld c, d                                       ; $698a: $4a
    ld d, a                                       ; $698b: $57
    di                                            ; $698c: $f3
    ld c, l                                       ; $698d: $4d
    ld c, [hl]                                    ; $698e: $4e
    inc [hl]                                      ; $698f: $34
    db $e4                                        ; $6990: $e4
    ld h, $27                                     ; $6991: $26 $27
    sub d                                         ; $6993: $92
    rst $20                                       ; $6994: $e7
    ld a, [hl+]                                   ; $6995: $2a
    dec hl                                        ; $6996: $2b
    ld bc, $0201                                  ; $6997: $01 $01 $02
    ld [bc], a                                    ; $699a: $02
    ld bc, $0202                                  ; $699b: $01 $02 $02
    ld bc, $0101                                  ; $699e: $01 $01 $01
    ld [bc], a                                    ; $69a1: $02
    ld bc, $0109                                  ; $69a2: $01 $09 $01
    ld [bc], a                                    ; $69a5: $02
    ld bc, $5c4b                                  ; $69a6: $01 $4b $5c
    ld e, l                                       ; $69a9: $5d
    ldh a, [rVBK]                                 ; $69aa: $f0 $4f
    ld d, b                                       ; $69ac: $50
    ld d, a                                       ; $69ad: $57
    di                                            ; $69ae: $f3
    adc [hl]                                      ; $69af: $8e
    adc a                                         ; $69b0: $8f
    inc [hl]                                      ; $69b1: $34
    db $e4                                        ; $69b2: $e4
    sub b                                         ; $69b3: $90
    sub c                                         ; $69b4: $91
    sub d                                         ; $69b5: $92
    rst $20                                       ; $69b6: $e7
    rlca                                          ; $69b7: $07
    ld bc, $0201                                  ; $69b8: $01 $01 $02
    rlca                                          ; $69bb: $07
    ld bc, $0201                                  ; $69bc: $01 $01 $02
    rrca                                          ; $69bf: $0f
    add hl, bc                                    ; $69c0: $09
    ld bc, $0f01                                  ; $69c1: $01 $01 $0f
    ld c, $09                                     ; $69c4: $0e $09
    ld bc, $cbca                                  ; $69c6: $01 $ca $cb
    rst $28                                       ; $69c9: $ef
    xor $cd                                       ; $69ca: $ee $cd
    adc $f2                                       ; $69cc: $ce $f2
    pop af                                        ; $69ce: $f1
    ld h, $27                                     ; $69cf: $26 $27
    db $e3                                        ; $69d1: $e3
    or l                                          ; $69d2: $b5
    ld a, [hl+]                                   ; $69d3: $2a
    dec hl                                        ; $69d4: $2b
    and $b6                                       ; $69d5: $e6 $b6
    add hl, bc                                    ; $69d7: $09
    rrca                                          ; $69d8: $0f
    inc hl                                        ; $69d9: $23
    inc hl                                        ; $69da: $23
    add hl, bc                                    ; $69db: $09
    rrca                                          ; $69dc: $0f
    inc hl                                        ; $69dd: $23
    inc hl                                        ; $69de: $23
    ld [bc], a                                    ; $69df: $02
    rlca                                          ; $69e0: $07
    inc hl                                        ; $69e1: $23
    dec hl                                        ; $69e2: $2b
    ld [bc], a                                    ; $69e3: $02
    rlca                                          ; $69e4: $07
    inc hl                                        ; $69e5: $23
    dec hl                                        ; $69e6: $2b
    pop de                                        ; $69e7: $d1
    pop de                                        ; $69e8: $d1
    pop de                                        ; $69e9: $d1
    pop de                                        ; $69ea: $d1
    pop de                                        ; $69eb: $d1
    pop de                                        ; $69ec: $d1
    pop de                                        ; $69ed: $d1
    pop de                                        ; $69ee: $d1
    ld e, [hl]                                    ; $69ef: $5e
    push af                                       ; $69f0: $f5
    or $f4                                        ; $69f1: $f6 $f4
    ld h, b                                       ; $69f3: $60
    jp nc, $f810                                  ; $69f4: $d2 $10 $f8

    inc bc                                        ; $69f7: $03
    inc bc                                        ; $69f8: $03
    inc bc                                        ; $69f9: $03
    inc bc                                        ; $69fa: $03
    inc bc                                        ; $69fb: $03
    inc bc                                        ; $69fc: $03
    inc bc                                        ; $69fd: $03
    inc bc                                        ; $69fe: $03
    inc bc                                        ; $69ff: $03
    inc bc                                        ; $6a00: $03
    inc bc                                        ; $6a01: $03
    ld [bc], a                                    ; $6a02: $02
    inc bc                                        ; $6a03: $03
    dec bc                                        ; $6a04: $0b
    inc bc                                        ; $6a05: $03
    ld [bc], a                                    ; $6a06: $02
    push hl                                       ; $6a07: $e5
    and $5d                                       ; $6a08: $e6 $5d
    ldh a, [$e8]                                  ; $6a0a: $f0 $e8
    jp hl                                         ; $6a0c: $e9


    ld d, a                                       ; $6a0d: $57
    di                                            ; $6a0e: $f3
    or l                                          ; $6a0f: $b5
    db $e3                                        ; $6a10: $e3
    inc [hl]                                      ; $6a11: $34
    db $e4                                        ; $6a12: $e4
    or [hl]                                       ; $6a13: $b6
    and $3c                                       ; $6a14: $e6 $3c
    rst $20                                       ; $6a16: $e7
    inc bc                                        ; $6a17: $03
    inc bc                                        ; $6a18: $03
    rlca                                          ; $6a19: $07
    ld bc, $0303                                  ; $6a1a: $01 $03 $03
    rlca                                          ; $6a1d: $07
    ld bc, $030b                                  ; $6a1e: $01 $0b $03
    rlca                                          ; $6a21: $07
    ld [bc], a                                    ; $6a22: $02
    dec bc                                        ; $6a23: $0b
    inc bc                                        ; $6a24: $03
    rlca                                          ; $6a25: $07
    ld [bc], a                                    ; $6a26: $02
    sbc e                                         ; $6a27: $9b
    sbc h                                         ; $6a28: $9c
    sbc l                                         ; $6a29: $9d
    sbc [hl]                                      ; $6a2a: $9e
    sbc a                                         ; $6a2b: $9f
    and b                                         ; $6a2c: $a0
    and c                                         ; $6a2d: $a1
    db $ed                                        ; $6a2e: $ed
    and d                                         ; $6a2f: $a2
    and e                                         ; $6a30: $a3
    and h                                         ; $6a31: $a4
    and l                                         ; $6a32: $a5
    ld c, a                                       ; $6a33: $4f
    and [hl]                                      ; $6a34: $a6
    and a                                         ; $6a35: $a7
    di                                            ; $6a36: $f3
    rrca                                          ; $6a37: $0f
    ld c, $0e                                     ; $6a38: $0e $0e
    add hl, bc                                    ; $6a3a: $09
    rrca                                          ; $6a3b: $0f
    ld c, $09                                     ; $6a3c: $0e $09
    ld bc, $0e0f                                  ; $6a3e: $01 $0f $0e
    ld c, $09                                     ; $6a41: $0e $09
    rlca                                          ; $6a43: $07
    add hl, bc                                    ; $6a44: $09
    add hl, bc                                    ; $6a45: $09
    ld bc, $d364                                  ; $6a46: $01 $64 $d3
    ld [de], a                                    ; $6a49: $12
    db $fc                                        ; $6a4a: $fc
    ld l, b                                       ; $6a4b: $68
    call nc, $ff15                                ; $6a4c: $d4 $15 $ff
    add e                                         ; $6a4f: $83
    sub h                                         ; $6a50: $94
    jr c, jr_087_6a5a                             ; $6a51: $38 $07

    add a                                         ; $6a53: $87
    inc hl                                        ; $6a54: $23
    inc h                                         ; $6a55: $24
    ld [hl+], a                                   ; $6a56: $22
    inc bc                                        ; $6a57: $03
    dec bc                                        ; $6a58: $0b
    inc bc                                        ; $6a59: $03

jr_087_6a5a:
    ld [bc], a                                    ; $6a5a: $02
    inc bc                                        ; $6a5b: $03
    dec bc                                        ; $6a5c: $0b
    inc bc                                        ; $6a5d: $03
    ld [bc], a                                    ; $6a5e: $02
    dec bc                                        ; $6a5f: $0b
    dec bc                                        ; $6a60: $0b
    inc bc                                        ; $6a61: $03
    ld [bc], a                                    ; $6a62: $02
    dec bc                                        ; $6a63: $0b
    inc bc                                        ; $6a64: $03
    inc bc                                        ; $6a65: $03
    ld [bc], a                                    ; $6a66: $02
    jr z, jr_087_6a92                             ; $6a67: $28 $29

    inc [hl]                                      ; $6a69: $34
    db $e4                                        ; $6a6a: $e4
    inc l                                         ; $6a6b: $2c
    dec sp                                        ; $6a6c: $3b
    inc a                                         ; $6a6d: $3c
    rst $20                                       ; $6a6e: $e7
    ld b, e                                       ; $6a6f: $43
    ld e, b                                       ; $6a70: $58
    ld e, c                                       ; $6a71: $59
    ld [$5a47], a                                 ; $6a72: $ea $47 $5a
    ld e, e                                       ; $6a75: $5b
    db $ed                                        ; $6a76: $ed
    ld bc, $0201                                  ; $6a77: $01 $01 $02
    ld bc, $0101                                  ; $6a7a: $01 $01 $01
    ld [bc], a                                    ; $6a7d: $02
    ld bc, $0201                                  ; $6a7e: $01 $01 $02
    ld bc, $0201                                  ; $6a81: $01 $01 $02
    ld bc, $0201                                  ; $6a84: $01 $01 $02
    ld h, $27                                     ; $6a87: $26 $27
    jr z, jr_087_6ab4                             ; $6a89: $28 $29

    ld a, [hl+]                                   ; $6a8b: $2a
    dec hl                                        ; $6a8c: $2b
    inc l                                         ; $6a8d: $2c
    dec sp                                        ; $6a8e: $3b
    ld b, c                                       ; $6a8f: $41
    ld b, d                                       ; $6a90: $42
    ld b, e                                       ; $6a91: $43

jr_087_6a92:
    ld e, b                                       ; $6a92: $58
    cp e                                          ; $6a93: $bb
    cp h                                          ; $6a94: $bc
    cp l                                          ; $6a95: $bd
    ld e, d                                       ; $6a96: $5a
    ld [bc], a                                    ; $6a97: $02
    ld bc, $0507                                  ; $6a98: $01 $07 $05
    ld bc, $0102                                  ; $6a9b: $01 $02 $01
    rlca                                          ; $6a9e: $07
    ld bc, $0101                                  ; $6a9f: $01 $01 $01
    ld bc, $090a                                  ; $6aa2: $01 $0a $09
    add hl, bc                                    ; $6aa5: $09
    ld [bc], a                                    ; $6aa6: $02
    inc [hl]                                      ; $6aa7: $34
    db $e4                                        ; $6aa8: $e4
    ld h, $27                                     ; $6aa9: $26 $27
    inc a                                         ; $6aab: $3c
    rst $20                                       ; $6aac: $e7
    ld a, [hl+]                                   ; $6aad: $2a
    dec hl                                        ; $6aae: $2b
    ld e, c                                       ; $6aaf: $59
    ld [$4241], a                                 ; $6ab0: $ea $41 $42
    ld e, e                                       ; $6ab3: $5b

jr_087_6ab4:
    db $ed                                        ; $6ab4: $ed
    ld b, l                                       ; $6ab5: $45
    ld b, [hl]                                    ; $6ab6: $46
    dec b                                         ; $6ab7: $05
    dec b                                         ; $6ab8: $05
    dec b                                         ; $6ab9: $05
    dec b                                         ; $6aba: $05
    rlca                                          ; $6abb: $07
    rlca                                          ; $6abc: $07
    rlca                                          ; $6abd: $07
    rlca                                          ; $6abe: $07
    ld bc, $0202                                  ; $6abf: $01 $02 $02
    ld bc, $0202                                  ; $6ac2: $01 $02 $02
    ld bc, $2801                                  ; $6ac5: $01 $01 $28
    add hl, hl                                    ; $6ac8: $29
    inc [hl]                                      ; $6ac9: $34
    db $e4                                        ; $6aca: $e4
    inc l                                         ; $6acb: $2c
    dec l                                         ; $6acc: $2d
    dec [hl]                                      ; $6acd: $35
    ld [hl], $43                                  ; $6ace: $36 $43
    ld b, h                                       ; $6ad0: $44
    ld d, c                                       ; $6ad1: $51
    ld d, d                                       ; $6ad2: $52
    ld b, a                                       ; $6ad3: $47
    ld c, b                                       ; $6ad4: $48
    ld d, e                                       ; $6ad5: $53
    ld d, h                                       ; $6ad6: $54
    dec b                                         ; $6ad7: $05
    rlca                                          ; $6ad8: $07
    ld bc, $0701                                  ; $6ad9: $01 $01 $07
    ld bc, $0202                                  ; $6adc: $01 $02 $02
    ld bc, $0201                                  ; $6adf: $01 $01 $02
    ld [bc], a                                    ; $6ae2: $02
    ld bc, $0202                                  ; $6ae3: $01 $02 $02
    ld [bc], a                                    ; $6ae6: $02
    jp z, $cccb                                   ; $6ae7: $ca $cb $cc

    ld e, h                                       ; $6aea: $5c
    call $cfce                                    ; $6aeb: $cd $ce $cf
    ld d, b                                       ; $6aee: $50
    ld h, $27                                     ; $6aef: $26 $27
    jr z, @+$2b                                   ; $6af1: $28 $29

    ld a, [hl+]                                   ; $6af3: $2a
    dec hl                                        ; $6af4: $2b
    inc l                                         ; $6af5: $2c
    dec sp                                        ; $6af6: $3b
    ld a, [bc]                                    ; $6af7: $0a
    ld a, [bc]                                    ; $6af8: $0a
    ld a, [bc]                                    ; $6af9: $0a
    ld [bc], a                                    ; $6afa: $02
    add hl, bc                                    ; $6afb: $09
    add hl, bc                                    ; $6afc: $09
    add hl, bc                                    ; $6afd: $09
    ld bc, $0201                                  ; $6afe: $01 $01 $02
    ld bc, $0201                                  ; $6b01: $01 $01 $02
    ld [bc], a                                    ; $6b04: $02
    ld [bc], a                                    ; $6b05: $02
    ld [bc], a                                    ; $6b06: $02
    ld e, l                                       ; $6b07: $5d
    ldh a, [rOBP1]                                ; $6b08: $f0 $49
    ld c, d                                       ; $6b0a: $4a
    ld d, a                                       ; $6b0b: $57
    di                                            ; $6b0c: $f3
    ld c, l                                       ; $6b0d: $4d
    ld c, [hl]                                    ; $6b0e: $4e
    inc [hl]                                      ; $6b0f: $34
    db $e4                                        ; $6b10: $e4
    ld h, $27                                     ; $6b11: $26 $27
    inc a                                         ; $6b13: $3c
    rst $20                                       ; $6b14: $e7
    ld a, [hl+]                                   ; $6b15: $2a
    dec hl                                        ; $6b16: $2b
    ld bc, $0101                                  ; $6b17: $01 $01 $01
    ld bc, $0201                                  ; $6b1a: $01 $01 $02
    ld [bc], a                                    ; $6b1d: $02
    ld [bc], a                                    ; $6b1e: $02
    ld [bc], a                                    ; $6b1f: $02
    ld bc, $0101                                  ; $6b20: $01 $01 $01
    ld bc, $0101                                  ; $6b23: $01 $01 $01
    ld bc, $4c4b                                  ; $6b26: $01 $4b $4c
    ld d, l                                       ; $6b29: $55
    ld d, [hl]                                    ; $6b2a: $56
    ld c, a                                       ; $6b2b: $4f
    ld d, b                                       ; $6b2c: $50
    ld d, a                                       ; $6b2d: $57
    di                                            ; $6b2e: $f3
    jr z, jr_087_6b5a                             ; $6b2f: $28 $29

    inc [hl]                                      ; $6b31: $34
    db $e4                                        ; $6b32: $e4
    inc l                                         ; $6b33: $2c
    dec sp                                        ; $6b34: $3b
    inc a                                         ; $6b35: $3c
    rst $20                                       ; $6b36: $e7
    ld [bc], a                                    ; $6b37: $02
    ld [bc], a                                    ; $6b38: $02
    ld [bc], a                                    ; $6b39: $02
    ld bc, $0101                                  ; $6b3a: $01 $01 $01
    ld [bc], a                                    ; $6b3d: $02
    ld bc, $0101                                  ; $6b3e: $01 $01 $01
    ld bc, $0201                                  ; $6b41: $01 $01 $02
    ld [bc], a                                    ; $6b44: $02
    ld [bc], a                                    ; $6b45: $02
    ld [bc], a                                    ; $6b46: $02
    ld c, c                                       ; $6b47: $49
    ld c, d                                       ; $6b48: $4a
    ld c, e                                       ; $6b49: $4b
    ld c, h                                       ; $6b4a: $4c
    ld c, l                                       ; $6b4b: $4d
    ld c, [hl]                                    ; $6b4c: $4e
    ld c, a                                       ; $6b4d: $4f
    ld d, b                                       ; $6b4e: $50
    ld h, $27                                     ; $6b4f: $26 $27
    jr z, @+$2b                                   ; $6b51: $28 $29

    ld a, [hl+]                                   ; $6b53: $2a
    dec hl                                        ; $6b54: $2b
    inc l                                         ; $6b55: $2c
    dec sp                                        ; $6b56: $3b
    ld bc, $0101                                  ; $6b57: $01 $01 $01

jr_087_6b5a:
    ld bc, $0101                                  ; $6b5a: $01 $01 $01
    ld bc, $0102                                  ; $6b5d: $01 $02 $01
    ld bc, $0102                                  ; $6b60: $01 $02 $01
    ld bc, $0201                                  ; $6b63: $01 $01 $02
    ld bc, $5655                                  ; $6b66: $01 $55 $56
    jp z, Jump_087_57cb                           ; $6b69: $ca $cb $57

    di                                            ; $6b6c: $f3
    call Call_000_34ce                            ; $6b6d: $cd $ce $34
    db $e4                                        ; $6b70: $e4
    ld h, $27                                     ; $6b71: $26 $27
    inc a                                         ; $6b73: $3c
    rst $20                                       ; $6b74: $e7
    ld a, [hl+]                                   ; $6b75: $2a
    dec hl                                        ; $6b76: $2b
    ld bc, $0a01                                  ; $6b77: $01 $01 $0a
    ld a, [bc]                                    ; $6b7a: $0a
    ld bc, $0a01                                  ; $6b7b: $01 $01 $0a
    ld a, [bc]                                    ; $6b7e: $0a
    ld bc, $0202                                  ; $6b7f: $01 $02 $02
    ld [bc], a                                    ; $6b82: $02
    ld [bc], a                                    ; $6b83: $02
    ld bc, $0101                                  ; $6b84: $01 $01 $01
    call z, Call_087_5d5c                         ; $6b87: $cc $5c $5d
    ldh a, [$cf]                                  ; $6b8a: $f0 $cf
    ld d, b                                       ; $6b8c: $50
    ld d, a                                       ; $6b8d: $57
    di                                            ; $6b8e: $f3
    jr z, jr_087_6bba                             ; $6b8f: $28 $29

    inc [hl]                                      ; $6b91: $34
    db $e4                                        ; $6b92: $e4
    inc l                                         ; $6b93: $2c
    dec sp                                        ; $6b94: $3b
    inc a                                         ; $6b95: $3c
    rst $20                                       ; $6b96: $e7
    ld a, [bc]                                    ; $6b97: $0a
    ld bc, $0101                                  ; $6b98: $01 $01 $01
    add hl, bc                                    ; $6b9b: $09
    ld bc, $0101                                  ; $6b9c: $01 $01 $01
    ld bc, $0101                                  ; $6b9f: $01 $01 $01
    ld [bc], a                                    ; $6ba2: $02
    ld bc, $0101                                  ; $6ba3: $01 $01 $01
    ld [bc], a                                    ; $6ba6: $02
    ld c, c                                       ; $6ba7: $49
    sbc d                                         ; $6ba8: $9a
    and d                                         ; $6ba9: $a2
    and e                                         ; $6baa: $a3
    ld c, l                                       ; $6bab: $4d
    ld c, [hl]                                    ; $6bac: $4e
    ld c, a                                       ; $6bad: $4f
    and [hl]                                      ; $6bae: $a6
    ld h, $27                                     ; $6baf: $26 $27
    jr z, jr_087_6bdc                             ; $6bb1: $28 $29

    ld a, [hl+]                                   ; $6bb3: $2a
    dec hl                                        ; $6bb4: $2b
    inc l                                         ; $6bb5: $2c
    dec sp                                        ; $6bb6: $3b
    ld bc, $0e09                                  ; $6bb7: $01 $09 $0e

jr_087_6bba:
    ld c, $01                                     ; $6bba: $0e $01
    ld bc, $0902                                  ; $6bbc: $01 $02 $09
    ld [bc], a                                    ; $6bbf: $02
    ld [bc], a                                    ; $6bc0: $02
    ld bc, $0101                                  ; $6bc1: $01 $01 $01
    ld bc, $0201                                  ; $6bc4: $01 $01 $02
    ld b, c                                       ; $6bc7: $41
    ld b, d                                       ; $6bc8: $42
    ld b, e                                       ; $6bc9: $43
    ld e, b                                       ; $6bca: $58
    ld b, l                                       ; $6bcb: $45
    ld b, [hl]                                    ; $6bcc: $46
    ld b, a                                       ; $6bcd: $47
    ld e, d                                       ; $6bce: $5a
    ld c, c                                       ; $6bcf: $49
    ld c, d                                       ; $6bd0: $4a
    ld c, e                                       ; $6bd1: $4b
    ld e, h                                       ; $6bd2: $5c
    ld c, l                                       ; $6bd3: $4d
    ld c, [hl]                                    ; $6bd4: $4e
    ld c, a                                       ; $6bd5: $4f
    ld d, b                                       ; $6bd6: $50
    ld [bc], a                                    ; $6bd7: $02
    ld [bc], a                                    ; $6bd8: $02
    ld bc, $0201                                  ; $6bd9: $01 $01 $02

jr_087_6bdc:
    ld bc, $0701                                  ; $6bdc: $01 $01 $07
    ld [bc], a                                    ; $6bdf: $02
    ld bc, $0701                                  ; $6be0: $01 $01 $07
    ld bc, $0102                                  ; $6be3: $01 $02 $01
    rlca                                          ; $6be6: $07
    ld h, $27                                     ; $6be7: $26 $27
    adc [hl]                                      ; $6be9: $8e
    adc a                                         ; $6bea: $8f
    ld a, [hl+]                                   ; $6beb: $2a
    adc c                                         ; $6bec: $89
    sub b                                         ; $6bed: $90
    sub c                                         ; $6bee: $91
    ld b, c                                       ; $6bef: $41
    sbc b                                         ; $6bf0: $98
    sbc e                                         ; $6bf1: $9b
    sbc h                                         ; $6bf2: $9c
    ld b, l                                       ; $6bf3: $45
    sbc c                                         ; $6bf4: $99
    sbc a                                         ; $6bf5: $9f
    and b                                         ; $6bf6: $a0
    ld bc, $0901                                  ; $6bf7: $01 $01 $09
    rrca                                          ; $6bfa: $0f
    ld bc, $0e09                                  ; $6bfb: $01 $09 $0e
    rrca                                          ; $6bfe: $0f
    ld bc, $0e0e                                  ; $6bff: $01 $0e $0e
    rrca                                          ; $6c02: $0f
    ld bc, $0e0e                                  ; $6c03: $01 $0e $0e
    rrca                                          ; $6c06: $0f
    ld c, c                                       ; $6c07: $49
    sbc d                                         ; $6c08: $9a
    and d                                         ; $6c09: $a2
    and e                                         ; $6c0a: $a3
    ld c, l                                       ; $6c0b: $4d
    ld c, [hl]                                    ; $6c0c: $4e
    ld c, a                                       ; $6c0d: $4f
    and [hl]                                      ; $6c0e: $a6
    ld h, $27                                     ; $6c0f: $26 $27
    jr z, jr_087_6c3c                             ; $6c11: $28 $29

    ld a, [hl+]                                   ; $6c13: $2a
    dec hl                                        ; $6c14: $2b
    inc l                                         ; $6c15: $2c
    dec sp                                        ; $6c16: $3b
    ld bc, $0e09                                  ; $6c17: $01 $09 $0e
    rrca                                          ; $6c1a: $0f
    ld bc, $0102                                  ; $6c1b: $01 $02 $01
    rrca                                          ; $6c1e: $0f
    ld [bc], a                                    ; $6c1f: $02
    ld bc, $0701                                  ; $6c20: $01 $01 $07
    ld bc, $0201                                  ; $6c23: $01 $01 $02
    rlca                                          ; $6c26: $07
    and h                                         ; $6c27: $a4
    and l                                         ; $6c28: $a5
    jp z, $a7cb                                   ; $6c29: $ca $cb $a7

    di                                            ; $6c2c: $f3
    call Call_000_34ce                            ; $6c2d: $cd $ce $34
    db $e4                                        ; $6c30: $e4
    ld h, $27                                     ; $6c31: $26 $27
    inc a                                         ; $6c33: $3c
    rst $20                                       ; $6c34: $e7
    ld a, [hl+]                                   ; $6c35: $2a
    dec hl                                        ; $6c36: $2b
    ld c, $09                                     ; $6c37: $0e $09
    add hl, bc                                    ; $6c39: $09
    rrca                                          ; $6c3a: $0f
    add hl, bc                                    ; $6c3b: $09

jr_087_6c3c:
    ld bc, $0f09                                  ; $6c3c: $01 $09 $0f
    ld bc, $0101                                  ; $6c3f: $01 $01 $01
    rlca                                          ; $6c42: $07
    ld [bc], a                                    ; $6c43: $02
    ld [bc], a                                    ; $6c44: $02
    ld bc, $e507                                  ; $6c45: $01 $07 $e5
    and $43                                       ; $6c48: $e6 $43
    ld e, b                                       ; $6c4a: $58
    add sp, -$17                                  ; $6c4b: $e8 $e9
    ld b, a                                       ; $6c4d: $47
    ld e, d                                       ; $6c4e: $5a
    db $eb                                        ; $6c4f: $eb
    db $ec                                        ; $6c50: $ec
    ld c, e                                       ; $6c51: $4b
    ld e, h                                       ; $6c52: $5c
    xor $ef                                       ; $6c53: $ee $ef
    ld c, a                                       ; $6c55: $4f
    jp c, $8383                                   ; $6c56: $da $83 $83

    rlca                                          ; $6c59: $07
    ld [bc], a                                    ; $6c5a: $02
    add e                                         ; $6c5b: $83
    add e                                         ; $6c5c: $83
    rlca                                          ; $6c5d: $07
    ld bc, $8383                                  ; $6c5e: $01 $83 $83
    rlca                                          ; $6c61: $07
    ld bc, $8383                                  ; $6c62: $01 $83 $83
    rlca                                          ; $6c65: $07
    add hl, bc                                    ; $6c66: $09
    ld e, c                                       ; $6c67: $59
    ld [$4241], a                                 ; $6c68: $ea $41 $42
    ld e, e                                       ; $6c6b: $5b
    db $ed                                        ; $6c6c: $ed
    ld b, l                                       ; $6c6d: $45
    ld b, [hl]                                    ; $6c6e: $46
    ld e, l                                       ; $6c6f: $5d
    ldh a, [rOBP1]                                ; $6c70: $f0 $49
    ld c, d                                       ; $6c72: $4a
    db $db                                        ; $6c73: $db
    call c, $4edd                                 ; $6c74: $dc $dd $4e
    ld bc, $0101                                  ; $6c77: $01 $01 $01
    rlca                                          ; $6c7a: $07
    ld bc, $0101                                  ; $6c7b: $01 $01 $01
    rlca                                          ; $6c7e: $07
    ld bc, $0101                                  ; $6c7f: $01 $01 $01
    rlca                                          ; $6c82: $07
    add hl, bc                                    ; $6c83: $09
    add hl, bc                                    ; $6c84: $09
    add hl, bc                                    ; $6c85: $09
    rlca                                          ; $6c86: $07
    add hl, bc                                    ; $6c87: $09
    nop                                           ; $6c88: $00
    stop                                          ; $6c89: $10 $00
    ret nz                                        ; $6c8b: $c0

    ld de, $d1d1                                  ; $6c8c: $11 $d1 $d1
    pop de                                        ; $6c8f: $d1
    jp nc, $d1d1                                  ; $6c90: $d2 $d1 $d1

    pop de                                        ; $6c93: $d1
    jp nc, $d1d1                                  ; $6c94: $d2 $d1 $d1

    pop de                                        ; $6c97: $d1
    jp nc, $d1d1                                  ; $6c98: $d2 $d1 $d1

    pop de                                        ; $6c9b: $d1
    jp nc, $8282                                  ; $6c9c: $d2 $82 $82

    add d                                         ; $6c9f: $82
    add d                                         ; $6ca0: $82
    add d                                         ; $6ca1: $82
    add d                                         ; $6ca2: $82
    add d                                         ; $6ca3: $82
    add d                                         ; $6ca4: $82
    add d                                         ; $6ca5: $82
    add d                                         ; $6ca6: $82
    add d                                         ; $6ca7: $82
    add d                                         ; $6ca8: $82
    add d                                         ; $6ca9: $82
    add d                                         ; $6caa: $82
    add d                                         ; $6cab: $82
    add d                                         ; $6cac: $82
    db $d3                                        ; $6cad: $d3
    call nc, $d6d5                                ; $6cae: $d4 $d5 $d6
    rst $10                                       ; $6cb1: $d7
    ret c                                         ; $6cb2: $d8

    reti                                          ; $6cb3: $d9


    jp c, $dcdb                                   ; $6cb4: $da $db $dc

    db $dd                                        ; $6cb7: $dd
    sbc $df                                       ; $6cb8: $de $df
    ldh [$dd], a                                  ; $6cba: $e0 $dd
    sbc $00                                       ; $6cbc: $de $00
    ld [bc], a                                    ; $6cbe: $02
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    ld [bc], a                                    ; $6cc2: $02
    ld [bc], a                                    ; $6cc3: $02
    ld [bc], a                                    ; $6cc4: $02
    ld [bc], a                                    ; $6cc5: $02
    ld [bc], a                                    ; $6cc6: $02
    ld [bc], a                                    ; $6cc7: $02
    ld [bc], a                                    ; $6cc8: $02
    ld [bc], a                                    ; $6cc9: $02
    ld [bc], a                                    ; $6cca: $02
    ld [bc], a                                    ; $6ccb: $02
    ld [bc], a                                    ; $6ccc: $02
    rst $10                                       ; $6ccd: $d7
    call nc, $d3e1                                ; $6cce: $d4 $e1 $d3
    ld [c], a                                     ; $6cd1: $e2
    ret c                                         ; $6cd2: $d8

    push de                                       ; $6cd3: $d5
    rst $10                                       ; $6cd4: $d7
    db $e3                                        ; $6cd5: $e3
    db $e4                                        ; $6cd6: $e4
    db $db                                        ; $6cd7: $db
    db $db                                        ; $6cd8: $db
    push hl                                       ; $6cd9: $e5
    and $df                                       ; $6cda: $e6 $df
    ldh [rP1], a                                  ; $6cdc: $e0 $00
    ld [bc], a                                    ; $6cde: $02
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    ld [bc], a                                    ; $6ce1: $02
    ld [bc], a                                    ; $6ce2: $02
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    ld [bc], a                                    ; $6ce5: $02
    ld [bc], a                                    ; $6ce6: $02
    ld [bc], a                                    ; $6ce7: $02
    ld [bc], a                                    ; $6ce8: $02
    ld [bc], a                                    ; $6ce9: $02
    ld [bc], a                                    ; $6cea: $02
    ld [bc], a                                    ; $6ceb: $02
    ld [bc], a                                    ; $6cec: $02
    rst $20                                       ; $6ced: $e7
    add sp, -$17                                  ; $6cee: $e8 $e9
    ld [$eceb], a                                 ; $6cf0: $ea $eb $ec
    db $ed                                        ; $6cf3: $ed
    xor $ef                                       ; $6cf4: $ee $ef
    ldh a, [$e9]                                  ; $6cf6: $f0 $e9
    ld [$f2f1], a                                 ; $6cf8: $ea $f1 $f2
    db $ed                                        ; $6cfb: $ed
    xor $02                                       ; $6cfc: $ee $02
    inc bc                                        ; $6cfe: $03
    inc bc                                        ; $6cff: $03
    inc bc                                        ; $6d00: $03
    ld [bc], a                                    ; $6d01: $02
    inc bc                                        ; $6d02: $03
    inc bc                                        ; $6d03: $03
    inc bc                                        ; $6d04: $03
    ld [bc], a                                    ; $6d05: $02
    inc bc                                        ; $6d06: $03
    inc bc                                        ; $6d07: $03
    inc bc                                        ; $6d08: $03
    ld [bc], a                                    ; $6d09: $02
    inc bc                                        ; $6d0a: $03
    inc bc                                        ; $6d0b: $03
    inc bc                                        ; $6d0c: $03
    pop de                                        ; $6d0d: $d1
    pop de                                        ; $6d0e: $d1
    pop de                                        ; $6d0f: $d1
    jp nc, $d1d1                                  ; $6d10: $d2 $d1 $d1

    pop de                                        ; $6d13: $d1
    jp nc, $d1d1                                  ; $6d14: $d2 $d1 $d1

    pop de                                        ; $6d17: $d1
    jp nc, $f3d1                                  ; $6d18: $d2 $d1 $f3

    db $f4                                        ; $6d1b: $f4
    push af                                       ; $6d1c: $f5
    add d                                         ; $6d1d: $82
    add d                                         ; $6d1e: $82
    add d                                         ; $6d1f: $82

jr_087_6d20:
    add d                                         ; $6d20: $82
    add d                                         ; $6d21: $82
    add d                                         ; $6d22: $82
    add d                                         ; $6d23: $82
    add d                                         ; $6d24: $82
    add d                                         ; $6d25: $82
    add d                                         ; $6d26: $82
    add d                                         ; $6d27: $82
    add d                                         ; $6d28: $82
    add d                                         ; $6d29: $82
    add d                                         ; $6d2a: $82
    add d                                         ; $6d2b: $82
    add d                                         ; $6d2c: $82
    or $f7                                        ; $6d2d: $f6 $f7
    ld hl, sp-$07                                 ; $6d2f: $f8 $f9
    ld a, [$fcfb]                                 ; $6d31: $fa $fb $fc
    db $fd                                        ; $6d34: $fd
    cp $ff                                        ; $6d35: $fe $ff
    nop                                           ; $6d37: $00
    ld bc, $0302                                  ; $6d38: $01 $02 $03
    inc b                                         ; $6d3b: $04
    dec b                                         ; $6d3c: $05
    ld [bc], a                                    ; $6d3d: $02
    ld [bc], a                                    ; $6d3e: $02
    ld [bc], a                                    ; $6d3f: $02
    ld [bc], a                                    ; $6d40: $02
    dec b                                         ; $6d41: $05
    dec b                                         ; $6d42: $05
    dec b                                         ; $6d43: $05
    dec b                                         ; $6d44: $05
    dec b                                         ; $6d45: $05
    ld b, $07                                     ; $6d46: $06 $07
    ld bc, $0705                                  ; $6d48: $01 $05 $07
    rlca                                          ; $6d4b: $07
    ld bc, $f706                                  ; $6d4c: $01 $06 $f7
    or $f7                                        ; $6d4f: $f6 $f7
    rlca                                          ; $6d51: $07
    ld [$0a09], sp                                ; $6d52: $08 $09 $0a
    dec bc                                        ; $6d55: $0b
    inc c                                         ; $6d56: $0c
    dec c                                         ; $6d57: $0d
    ld c, $0f                                     ; $6d58: $0e $0f
    db $10                                        ; $6d5a: $10
    ld de, $0212                                  ; $6d5b: $11 $12 $02
    ld [bc], a                                    ; $6d5e: $02
    ld [bc], a                                    ; $6d5f: $02
    ld [bc], a                                    ; $6d60: $02
    dec b                                         ; $6d61: $05
    dec b                                         ; $6d62: $05
    dec b                                         ; $6d63: $05
    dec b                                         ; $6d64: $05
    ld b, $01                                     ; $6d65: $06 $01
    rlca                                          ; $6d67: $07
    ld bc, $0701                                  ; $6d68: $01 $01 $07
    ld bc, $1301                                  ; $6d6b: $01 $01 $13
    inc d                                         ; $6d6e: $14
    dec d                                         ; $6d6f: $15
    ld d, $17                                     ; $6d70: $16 $17
    inc d                                         ; $6d72: $14
    db $ed                                        ; $6d73: $ed
    xor $18                                       ; $6d74: $ee $18
    add hl, de                                    ; $6d76: $19
    ld d, $1a                                     ; $6d77: $16 $1a
    dec de                                        ; $6d79: $1b
    inc e                                         ; $6d7a: $1c
    ld a, [de]                                    ; $6d7b: $1a
    xor $02                                       ; $6d7c: $ee $02
    inc bc                                        ; $6d7e: $03
    inc bc                                        ; $6d7f: $03
    inc bc                                        ; $6d80: $03
    dec b                                         ; $6d81: $05
    inc bc                                        ; $6d82: $03
    inc bc                                        ; $6d83: $03
    inc bc                                        ; $6d84: $03
    inc bc                                        ; $6d85: $03
    inc bc                                        ; $6d86: $03
    inc bc                                        ; $6d87: $03
    inc bc                                        ; $6d88: $03
    inc bc                                        ; $6d89: $03
    inc bc                                        ; $6d8a: $03
    inc bc                                        ; $6d8b: $03
    inc bc                                        ; $6d8c: $03
    pop de                                        ; $6d8d: $d1
    jp nc, $d4d3                                  ; $6d8e: $d2 $d3 $d4

    pop de                                        ; $6d91: $d1
    dec e                                         ; $6d92: $1d
    rst $10                                       ; $6d93: $d7
    ret c                                         ; $6d94: $d8

    pop de                                        ; $6d95: $d1
    dec e                                         ; $6d96: $1d
    db $db                                        ; $6d97: $db
    ld e, $d1                                     ; $6d98: $1e $d1
    dec e                                         ; $6d9a: $1d
    rra                                           ; $6d9b: $1f
    jr nz, jr_087_6d20                            ; $6d9c: $20 $82

    add d                                         ; $6d9e: $82
    nop                                           ; $6d9f: $00
    ld [bc], a                                    ; $6da0: $02
    add d                                         ; $6da1: $82
    add d                                         ; $6da2: $82
    nop                                           ; $6da3: $00
    ld [bc], a                                    ; $6da4: $02
    add d                                         ; $6da5: $82
    add d                                         ; $6da6: $82
    ld [hl+], a                                   ; $6da7: $22
    ld [bc], a                                    ; $6da8: $02
    add d                                         ; $6da9: $82
    add d                                         ; $6daa: $82
    ld [bc], a                                    ; $6dab: $02
    ld [bc], a                                    ; $6dac: $02
    ld hl, $2322                                  ; $6dad: $21 $22 $23
    inc h                                         ; $6db0: $24
    dec h                                         ; $6db1: $25
    ld h, $27                                     ; $6db2: $26 $27
    jr z, @+$2b                                   ; $6db4: $28 $29

    ld a, [hl+]                                   ; $6db6: $2a
    dec hl                                        ; $6db7: $2b
    inc l                                         ; $6db8: $2c
    dec l                                         ; $6db9: $2d
    ld l, $2f                                     ; $6dba: $2e $2f
    jr nc, jr_087_6dc3                            ; $6dbc: $30 $05

    ld bc, $0101                                  ; $6dbe: $01 $01 $01
    dec b                                         ; $6dc1: $05
    rlca                                          ; $6dc2: $07

jr_087_6dc3:
    ld bc, $0501                                  ; $6dc3: $01 $01 $05
    ld bc, $0107                                  ; $6dc6: $01 $07 $01
    dec b                                         ; $6dc9: $05
    ld bc, $0706                                  ; $6dca: $01 $06 $07
    ld sp, $3332                                  ; $6dcd: $31 $32 $33
    inc [hl]                                      ; $6dd0: $34
    dec [hl]                                      ; $6dd1: $35
    ld [hl], $37                                  ; $6dd2: $36 $37
    jr c, jr_087_6e0f                             ; $6dd4: $38 $39

    ld a, [hl-]                                   ; $6dd6: $3a
    dec sp                                        ; $6dd7: $3b
    inc a                                         ; $6dd8: $3c
    dec a                                         ; $6dd9: $3d
    ld a, $3f                                     ; $6dda: $3e $3f
    ld b, b                                       ; $6ddc: $40
    rlca                                          ; $6ddd: $07
    ld bc, $0101                                  ; $6dde: $01 $01 $01
    ld bc, $0101                                  ; $6de1: $01 $01 $01
    ld bc, $0101                                  ; $6de4: $01 $01 $01
    ld bc, $0703                                  ; $6de7: $01 $03 $07
    ld bc, $0301                                  ; $6dea: $01 $01 $03
    ld b, c                                       ; $6ded: $41
    ld b, d                                       ; $6dee: $42
    ld d, $1a                                     ; $6def: $16 $1a
    ld b, e                                       ; $6df1: $43
    ld b, h                                       ; $6df2: $44
    ld b, l                                       ; $6df3: $45
    ld b, [hl]                                    ; $6df4: $46
    ld b, a                                       ; $6df5: $47
    dec d                                         ; $6df6: $15
    db $ed                                        ; $6df7: $ed
    xor $48                                       ; $6df8: $ee $48
    ld d, $1a                                     ; $6dfa: $16 $1a
    db $ed                                        ; $6dfc: $ed
    inc bc                                        ; $6dfd: $03
    inc bc                                        ; $6dfe: $03
    inc bc                                        ; $6dff: $03
    inc bc                                        ; $6e00: $03
    inc bc                                        ; $6e01: $03
    inc bc                                        ; $6e02: $03
    inc bc                                        ; $6e03: $03
    inc bc                                        ; $6e04: $03
    inc bc                                        ; $6e05: $03
    inc bc                                        ; $6e06: $03
    inc bc                                        ; $6e07: $03
    inc bc                                        ; $6e08: $03
    inc bc                                        ; $6e09: $03
    inc bc                                        ; $6e0a: $03
    inc bc                                        ; $6e0b: $03
    inc bc                                        ; $6e0c: $03
    pop de                                        ; $6e0d: $d1
    dec e                                         ; $6e0e: $1d

jr_087_6e0f:
    ld c, c                                       ; $6e0f: $49
    ld c, d                                       ; $6e10: $4a
    ld c, e                                       ; $6e11: $4b
    dec e                                         ; $6e12: $1d
    add hl, bc                                    ; $6e13: $09
    ld c, h                                       ; $6e14: $4c
    ld c, e                                       ; $6e15: $4b
    jp nc, Jump_087_4d0d                          ; $6e16: $d2 $0d $4d

    ld c, e                                       ; $6e19: $4b
    ld c, [hl]                                    ; $6e1a: $4e
    db $f4                                        ; $6e1b: $f4
    ld c, a                                       ; $6e1c: $4f
    add d                                         ; $6e1d: $82
    add d                                         ; $6e1e: $82
    ld [bc], a                                    ; $6e1f: $02
    ld [bc], a                                    ; $6e20: $02
    add d                                         ; $6e21: $82
    add d                                         ; $6e22: $82
    dec b                                         ; $6e23: $05
    dec b                                         ; $6e24: $05
    add d                                         ; $6e25: $82
    add d                                         ; $6e26: $82
    dec b                                         ; $6e27: $05
    ld bc, $8282                                  ; $6e28: $01 $82 $82
    add d                                         ; $6e2b: $82
    add d                                         ; $6e2c: $82
    ld d, b                                       ; $6e2d: $50
    ld d, c                                       ; $6e2e: $51
    ld d, d                                       ; $6e2f: $52
    ld d, e                                       ; $6e30: $53
    ld a, [$fcfb]                                 ; $6e31: $fa $fb $fc
    db $fd                                        ; $6e34: $fd
    cp $ff                                        ; $6e35: $fe $ff
    nop                                           ; $6e37: $00
    ld bc, $0302                                  ; $6e38: $01 $02 $03
    inc b                                         ; $6e3b: $04
    dec b                                         ; $6e3c: $05
    dec b                                         ; $6e3d: $05
    ld bc, $0606                                  ; $6e3e: $01 $06 $06
    dec b                                         ; $6e41: $05
    ld b, $01                                     ; $6e42: $06 $01
    ld b, $07                                     ; $6e44: $06 $07
    ld b, $01                                     ; $6e46: $06 $01
    ld b, $07                                     ; $6e48: $06 $07
    rlca                                          ; $6e4a: $07
    ld bc, $5401                                  ; $6e4b: $01 $01 $54
    ld d, l                                       ; $6e4e: $55
    ld d, [hl]                                    ; $6e4f: $56
    ld d, a                                       ; $6e50: $57
    rlca                                          ; $6e51: $07
    ld [$5958], sp                                ; $6e52: $08 $58 $59
    dec bc                                        ; $6e55: $0b
    ld e, d                                       ; $6e56: $5a
    ld e, e                                       ; $6e57: $5b
    ld e, h                                       ; $6e58: $5c
    ld e, l                                       ; $6e59: $5d
    ld e, [hl]                                    ; $6e5a: $5e
    ld e, a                                       ; $6e5b: $5f
    ld h, b                                       ; $6e5c: $60
    ld b, $06                                     ; $6e5d: $06 $06
    ld bc, $0603                                  ; $6e5f: $01 $03 $06
    ld bc, $0383                                  ; $6e62: $01 $83 $03
    ld bc, $8383                                  ; $6e65: $01 $83 $83
    inc bc                                        ; $6e68: $03
    ld bc, $0383                                  ; $6e69: $01 $83 $03
    inc bc                                        ; $6e6c: $03
    ld h, c                                       ; $6e6d: $61
    xor $62                                       ; $6e6e: $ee $62
    ld b, l                                       ; $6e70: $45
    ld h, e                                       ; $6e71: $63
    ld b, l                                       ; $6e72: $45
    ld d, $16                                     ; $6e73: $16 $16
    jp hl                                         ; $6e75: $e9


    ld d, $16                                     ; $6e76: $16 $16
    ld a, [de]                                    ; $6e78: $1a
    ld h, h                                       ; $6e79: $64
    ld d, $1a                                     ; $6e7a: $16 $1a
    xor $03                                       ; $6e7c: $ee $03
    inc bc                                        ; $6e7e: $03
    inc bc                                        ; $6e7f: $03
    inc bc                                        ; $6e80: $03
    inc bc                                        ; $6e81: $03
    inc bc                                        ; $6e82: $03
    inc bc                                        ; $6e83: $03
    inc bc                                        ; $6e84: $03
    inc bc                                        ; $6e85: $03
    inc bc                                        ; $6e86: $03
    inc bc                                        ; $6e87: $03
    inc bc                                        ; $6e88: $03
    inc bc                                        ; $6e89: $03
    inc bc                                        ; $6e8a: $03
    inc bc                                        ; $6e8b: $03
    inc bc                                        ; $6e8c: $03
    ld h, l                                       ; $6e8d: $65
    ld h, h                                       ; $6e8e: $64
    dec d                                         ; $6e8f: $15
    ld d, $62                                     ; $6e90: $16 $62
    ld b, l                                       ; $6e92: $45
    ld d, $1a                                     ; $6e93: $16 $1a
    ld h, l                                       ; $6e95: $65
    ld d, $1a                                     ; $6e96: $16 $1a
    db $ed                                        ; $6e98: $ed
    ld d, $1a                                     ; $6e99: $16 $1a
    ld b, [hl]                                    ; $6e9b: $46
    jp hl                                         ; $6e9c: $e9


    inc bc                                        ; $6e9d: $03
    inc bc                                        ; $6e9e: $03
    inc bc                                        ; $6e9f: $03
    inc bc                                        ; $6ea0: $03
    inc bc                                        ; $6ea1: $03
    inc bc                                        ; $6ea2: $03
    inc bc                                        ; $6ea3: $03
    inc bc                                        ; $6ea4: $03
    inc bc                                        ; $6ea5: $03
    inc bc                                        ; $6ea6: $03
    inc bc                                        ; $6ea7: $03
    inc bc                                        ; $6ea8: $03
    inc bc                                        ; $6ea9: $03
    inc bc                                        ; $6eaa: $03
    inc bc                                        ; $6eab: $03
    inc bc                                        ; $6eac: $03
    ld a, [de]                                    ; $6ead: $1a
    ld h, d                                       ; $6eae: $62
    add sp, -$2c                                  ; $6eaf: $e8 $d4
    ld [$ec65], a                                 ; $6eb1: $ea $65 $ec
    ret c                                         ; $6eb4: $d8

    xor $62                                       ; $6eb5: $ee $62
    ldh a, [$66]                                  ; $6eb7: $f0 $66
    ld [$f265], a                                 ; $6eb9: $ea $65 $f2
    ld h, a                                       ; $6ebc: $67
    inc bc                                        ; $6ebd: $03
    inc bc                                        ; $6ebe: $03
    inc hl                                        ; $6ebf: $23
    ld [bc], a                                    ; $6ec0: $02
    inc bc                                        ; $6ec1: $03
    inc bc                                        ; $6ec2: $03
    inc hl                                        ; $6ec3: $23
    ld [bc], a                                    ; $6ec4: $02
    inc bc                                        ; $6ec5: $03
    inc bc                                        ; $6ec6: $03
    inc hl                                        ; $6ec7: $23
    ld [bc], a                                    ; $6ec8: $02
    inc bc                                        ; $6ec9: $03
    inc bc                                        ; $6eca: $03
    inc hl                                        ; $6ecb: $23
    ld [bc], a                                    ; $6ecc: $02
    pop hl                                        ; $6ecd: $e1
    db $d3                                        ; $6ece: $d3
    call nc, $d5d5                                ; $6ecf: $d4 $d5 $d5
    rst $10                                       ; $6ed2: $d7
    ret c                                         ; $6ed3: $d8

    reti                                          ; $6ed4: $d9


    db $db                                        ; $6ed5: $db
    db $db                                        ; $6ed6: $db
    call c, $dfdd                                 ; $6ed7: $dc $dd $df
    ldh [rBCPS], a                                ; $6eda: $e0 $68
    db $dd                                        ; $6edc: $dd
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    ld [bc], a                                    ; $6edf: $02
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    ld [bc], a                                    ; $6ee3: $02
    ld [bc], a                                    ; $6ee4: $02
    ld [bc], a                                    ; $6ee5: $02
    ld [bc], a                                    ; $6ee6: $02
    ld [bc], a                                    ; $6ee7: $02
    ld [bc], a                                    ; $6ee8: $02
    ld [bc], a                                    ; $6ee9: $02
    ld [bc], a                                    ; $6eea: $02
    ld [bc], a                                    ; $6eeb: $02
    ld [bc], a                                    ; $6eec: $02
    sub $d7                                       ; $6eed: $d6 $d7
    call nc, $da69                                ; $6eef: $d4 $69 $da
    ld [c], a                                     ; $6ef2: $e2
    ret c                                         ; $6ef3: $d8

    sub $de                                       ; $6ef4: $d6 $de
    db $e3                                        ; $6ef6: $e3
    db $e4                                        ; $6ef7: $e4
    db $db                                        ; $6ef8: $db
    sbc $e5                                       ; $6ef9: $de $e5
    ld l, d                                       ; $6efb: $6a
    ldh [rP1], a                                  ; $6efc: $e0 $00
    nop                                           ; $6efe: $00
    ld [bc], a                                    ; $6eff: $02
    nop                                           ; $6f00: $00
    ld [bc], a                                    ; $6f01: $02
    ld [bc], a                                    ; $6f02: $02
    ld [bc], a                                    ; $6f03: $02
    nop                                           ; $6f04: $00
    ld [bc], a                                    ; $6f05: $02
    ld [bc], a                                    ; $6f06: $02
    ld [bc], a                                    ; $6f07: $02
    ld [bc], a                                    ; $6f08: $02
    ld [bc], a                                    ; $6f09: $02
    ld [bc], a                                    ; $6f0a: $02
    ld [bc], a                                    ; $6f0b: $02
    ld [bc], a                                    ; $6f0c: $02
    ld a, [de]                                    ; $6f0d: $1a
    ld h, d                                       ; $6f0e: $62
    ld b, l                                       ; $6f0f: $45
    ld b, [hl]                                    ; $6f10: $46
    ld d, $1a                                     ; $6f11: $16 $1a
    ld b, [hl]                                    ; $6f13: $46
    jp hl                                         ; $6f14: $e9


    jp hl                                         ; $6f15: $e9


    ld [$6465], a                                 ; $6f16: $ea $65 $64
    ld h, d                                       ; $6f19: $62
    ld b, l                                       ; $6f1a: $45
    ld b, [hl]                                    ; $6f1b: $46
    jp hl                                         ; $6f1c: $e9


    inc bc                                        ; $6f1d: $03
    inc bc                                        ; $6f1e: $03
    inc bc                                        ; $6f1f: $03
    inc bc                                        ; $6f20: $03
    inc bc                                        ; $6f21: $03
    inc bc                                        ; $6f22: $03
    inc bc                                        ; $6f23: $03

jr_087_6f24:
    inc bc                                        ; $6f24: $03
    inc bc                                        ; $6f25: $03
    inc bc                                        ; $6f26: $03
    inc bc                                        ; $6f27: $03
    inc bc                                        ; $6f28: $03
    inc bc                                        ; $6f29: $03
    inc bc                                        ; $6f2a: $03
    inc bc                                        ; $6f2b: $03
    inc bc                                        ; $6f2c: $03
    jp hl                                         ; $6f2d: $e9


    ld [$6b14], a                                 ; $6f2e: $ea $14 $6b
    ld [$f265], a                                 ; $6f31: $ea $65 $f2
    ld l, h                                       ; $6f34: $6c
    dec d                                         ; $6f35: $15
    db $ed                                        ; $6f36: $ed
    add hl, de                                    ; $6f37: $19
    jr jr_087_6f24                                ; $6f38: $18 $ea

    ld h, l                                       ; $6f3a: $65
    inc e                                         ; $6f3b: $1c
    dec de                                        ; $6f3c: $1b
    inc bc                                        ; $6f3d: $03
    inc bc                                        ; $6f3e: $03
    inc hl                                        ; $6f3f: $23
    ld [bc], a                                    ; $6f40: $02
    inc bc                                        ; $6f41: $03
    inc bc                                        ; $6f42: $03
    inc hl                                        ; $6f43: $23
    dec b                                         ; $6f44: $05
    inc bc                                        ; $6f45: $03
    inc bc                                        ; $6f46: $03
    inc hl                                        ; $6f47: $23
    inc hl                                        ; $6f48: $23
    inc bc                                        ; $6f49: $03
    inc bc                                        ; $6f4a: $03
    inc hl                                        ; $6f4b: $23
    inc hl                                        ; $6f4c: $23
    or $f7                                        ; $6f4d: $f6 $f7
    ld l, l                                       ; $6f4f: $6d
    ld hl, sp+$6e                                 ; $6f50: $f8 $6e
    ld [$4c09], sp                                ; $6f52: $08 $09 $4c
    ld l, a                                       ; $6f55: $6f
    inc c                                         ; $6f56: $0c
    dec c                                         ; $6f57: $0d
    ld c, l                                       ; $6f58: $4d
    ld [hl], b                                    ; $6f59: $70
    db $10                                        ; $6f5a: $10
    ld de, $0271                                  ; $6f5b: $11 $71 $02
    ld [bc], a                                    ; $6f5e: $02
    ld [bc], a                                    ; $6f5f: $02
    ld [bc], a                                    ; $6f60: $02
    dec b                                         ; $6f61: $05
    dec b                                         ; $6f62: $05
    dec b                                         ; $6f63: $05
    dec b                                         ; $6f64: $05
    ld bc, $0701                                  ; $6f65: $01 $01 $07
    ld bc, $0106                                  ; $6f68: $01 $06 $01
    rlca                                          ; $6f6b: $07
    rlca                                          ; $6f6c: $07
    ld sp, hl                                     ; $6f6d: $f9
    ld b, $f6                                     ; $6f6e: $06 $f6
    rst $30                                       ; $6f70: $f7
    ld a, [$fcfb]                                 ; $6f71: $fa $fb $fc
    db $fd                                        ; $6f74: $fd
    cp $ff                                        ; $6f75: $fe $ff
    nop                                           ; $6f77: $00
    ld bc, $0302                                  ; $6f78: $01 $02 $03
    inc b                                         ; $6f7b: $04
    dec b                                         ; $6f7c: $05
    ld [bc], a                                    ; $6f7d: $02
    ld [bc], a                                    ; $6f7e: $02
    ld [bc], a                                    ; $6f7f: $02
    ld [bc], a                                    ; $6f80: $02
    dec b                                         ; $6f81: $05
    dec b                                         ; $6f82: $05
    dec b                                         ; $6f83: $05
    dec b                                         ; $6f84: $05
    ld bc, $0606                                  ; $6f85: $01 $06 $06
    dec b                                         ; $6f88: $05
    ld bc, $0601                                  ; $6f89: $01 $01 $06
    dec b                                         ; $6f8c: $05
    xor $62                                       ; $6f8d: $ee $62
    ld b, l                                       ; $6f8f: $45
    ld b, [hl]                                    ; $6f90: $46
    jp hl                                         ; $6f91: $e9


    ld [$1665], a                                 ; $6f92: $ea $65 $16
    ld d, $1a                                     ; $6f95: $16 $1a
    ld d, $1a                                     ; $6f97: $16 $1a
    xor $16                                       ; $6f99: $ee $16
    ld a, [de]                                    ; $6f9b: $1a
    ld d, $03                                     ; $6f9c: $16 $03
    inc bc                                        ; $6f9e: $03
    inc bc                                        ; $6f9f: $03
    inc bc                                        ; $6fa0: $03
    inc bc                                        ; $6fa1: $03
    inc bc                                        ; $6fa2: $03
    inc bc                                        ; $6fa3: $03
    inc bc                                        ; $6fa4: $03
    inc bc                                        ; $6fa5: $03
    inc bc                                        ; $6fa6: $03
    inc bc                                        ; $6fa7: $03
    inc bc                                        ; $6fa8: $03
    inc bc                                        ; $6fa9: $03
    inc bc                                        ; $6faa: $03
    inc bc                                        ; $6fab: $03
    inc bc                                        ; $6fac: $03
    jp hl                                         ; $6fad: $e9


    ld d, $42                                     ; $6fae: $16 $42
    ld b, c                                       ; $6fb0: $41
    ld a, [de]                                    ; $6fb1: $1a
    db $ed                                        ; $6fb2: $ed
    ld b, h                                       ; $6fb3: $44
    ld b, e                                       ; $6fb4: $43
    ld [$6465], a                                 ; $6fb5: $ea $65 $64
    ld b, a                                       ; $6fb8: $47
    ld a, [de]                                    ; $6fb9: $1a
    ld [$4865], a                                 ; $6fba: $ea $65 $48
    inc bc                                        ; $6fbd: $03
    inc bc                                        ; $6fbe: $03
    inc hl                                        ; $6fbf: $23
    inc hl                                        ; $6fc0: $23
    inc bc                                        ; $6fc1: $03
    inc bc                                        ; $6fc2: $03
    inc hl                                        ; $6fc3: $23
    inc hl                                        ; $6fc4: $23
    inc bc                                        ; $6fc5: $03
    inc bc                                        ; $6fc6: $03
    inc bc                                        ; $6fc7: $03
    inc hl                                        ; $6fc8: $23
    inc bc                                        ; $6fc9: $03
    inc bc                                        ; $6fca: $03
    inc bc                                        ; $6fcb: $03
    inc hl                                        ; $6fcc: $23
    ld [hl], d                                    ; $6fcd: $72
    ld [hl-], a                                   ; $6fce: $32
    inc sp                                        ; $6fcf: $33
    ld [hl], e                                    ; $6fd0: $73
    ld [hl], h                                    ; $6fd1: $74
    ld [hl], $75                                  ; $6fd2: $36 $75
    halt                                          ; $6fd4: $76
    inc a                                         ; $6fd5: $3c
    ld [hl], a                                    ; $6fd6: $77
    ld a, b                                       ; $6fd7: $78
    ld a, c                                       ; $6fd8: $79
    ld b, b                                       ; $6fd9: $40
    ld a, $7a                                     ; $6fda: $3e $7a
    ld a, e                                       ; $6fdc: $7b
    ld b, $06                                     ; $6fdd: $06 $06
    ld bc, $0107                                  ; $6fdf: $01 $07 $01
    ld b, $07                                     ; $6fe2: $06 $07
    ld bc, $0123                                  ; $6fe4: $01 $23 $01
    rlca                                          ; $6fe7: $07
    ld bc, $0123                                  ; $6fe8: $01 $23 $01
    rlca                                          ; $6feb: $07
    rlca                                          ; $6fec: $07
    ld hl, $2322                                  ; $6fed: $21 $22 $23
    inc h                                         ; $6ff0: $24
    dec h                                         ; $6ff1: $25
    ld h, $27                                     ; $6ff2: $26 $27
    jr z, jr_087_701f                             ; $6ff4: $28 $29

    ld a, [hl+]                                   ; $6ff6: $2a
    dec hl                                        ; $6ff7: $2b
    inc l                                         ; $6ff8: $2c
    dec l                                         ; $6ff9: $2d
    ld l, $2f                                     ; $6ffa: $2e $2f
    jr nc, jr_087_7005                            ; $6ffc: $30 $07

    ld bc, $0501                                  ; $6ffe: $01 $01 $05
    ld bc, $0101                                  ; $7001: $01 $01 $01
    dec b                                         ; $7004: $05

jr_087_7005:
    ld bc, $0107                                  ; $7005: $01 $07 $01
    dec b                                         ; $7008: $05
    rlca                                          ; $7009: $07
    ld bc, $0506                                  ; $700a: $01 $06 $05
    ld d, $1a                                     ; $700d: $16 $1a
    ld [$1a65], a                                 ; $700f: $ea $65 $1a
    ld h, l                                       ; $7012: $65
    ld h, h                                       ; $7013: $64
    dec d                                         ; $7014: $15
    dec d                                         ; $7015: $15
    db $ed                                        ; $7016: $ed
    xor $62                                       ; $7017: $ee $62
    ld d, $1a                                     ; $7019: $16 $1a
    ld b, [hl]                                    ; $701b: $46
    ld d, $03                                     ; $701c: $16 $03
    inc bc                                        ; $701e: $03

jr_087_701f:
    inc bc                                        ; $701f: $03
    inc bc                                        ; $7020: $03
    inc bc                                        ; $7021: $03
    inc bc                                        ; $7022: $03
    inc bc                                        ; $7023: $03
    inc bc                                        ; $7024: $03
    inc bc                                        ; $7025: $03
    inc bc                                        ; $7026: $03
    inc bc                                        ; $7027: $03
    inc bc                                        ; $7028: $03
    inc bc                                        ; $7029: $03
    inc bc                                        ; $702a: $03
    inc bc                                        ; $702b: $03
    inc bc                                        ; $702c: $03
    ld h, h                                       ; $702d: $64
    dec d                                         ; $702e: $15
    ld d, $61                                     ; $702f: $16 $61
    ld d, $16                                     ; $7031: $16 $16
    ld a, [de]                                    ; $7033: $1a
    ld h, e                                       ; $7034: $63
    ld d, $1a                                     ; $7035: $16 $1a
    jp hl                                         ; $7037: $e9


    ld [$651a], a                                 ; $7038: $ea $1a $65
    ld d, $1a                                     ; $703b: $16 $1a
    inc bc                                        ; $703d: $03
    inc bc                                        ; $703e: $03
    inc bc                                        ; $703f: $03
    inc hl                                        ; $7040: $23
    inc bc                                        ; $7041: $03
    inc bc                                        ; $7042: $03
    inc bc                                        ; $7043: $03
    inc hl                                        ; $7044: $23
    inc bc                                        ; $7045: $03
    inc bc                                        ; $7046: $03
    inc bc                                        ; $7047: $03
    inc bc                                        ; $7048: $03
    inc bc                                        ; $7049: $03
    inc bc                                        ; $704a: $03
    inc bc                                        ; $704b: $03
    inc bc                                        ; $704c: $03
    ld d, a                                       ; $704d: $57
    ld d, l                                       ; $704e: $55
    ld a, h                                       ; $704f: $7c
    ld a, l                                       ; $7050: $7d
    ld e, c                                       ; $7051: $59
    ld a, [hl]                                    ; $7052: $7e
    ld a, a                                       ; $7053: $7f
    add b                                         ; $7054: $80
    ld e, h                                       ; $7055: $5c
    ld e, e                                       ; $7056: $5b
    ld e, d                                       ; $7057: $5a
    add c                                         ; $7058: $81
    ld h, b                                       ; $7059: $60
    ld e, a                                       ; $705a: $5f
    ld e, [hl]                                    ; $705b: $5e
    add d                                         ; $705c: $82
    inc hl                                        ; $705d: $23
    ld bc, $0106                                  ; $705e: $01 $06 $01
    inc hl                                        ; $7061: $23
    add e                                         ; $7062: $83
    ld b, $0e                                     ; $7063: $06 $0e
    inc hl                                        ; $7065: $23
    and e                                         ; $7066: $a3
    and e                                         ; $7067: $a3
    add hl, bc                                    ; $7068: $09
    inc hl                                        ; $7069: $23
    inc hl                                        ; $706a: $23
    and e                                         ; $706b: $a3
    add hl, bc                                    ; $706c: $09
    ld d, b                                       ; $706d: $50
    ld d, c                                       ; $706e: $51
    ld d, d                                       ; $706f: $52
    ld d, e                                       ; $7070: $53
    ld a, [$fcfb]                                 ; $7071: $fa $fb $fc
    db $fd                                        ; $7074: $fd
    cp $ff                                        ; $7075: $fe $ff
    nop                                           ; $7077: $00
    ld bc, $0302                                  ; $7078: $01 $02 $03
    inc b                                         ; $707b: $04
    dec b                                         ; $707c: $05
    ld bc, $0106                                  ; $707d: $01 $06 $01
    dec b                                         ; $7080: $05
    ld bc, $0101                                  ; $7081: $01 $01 $01
    dec b                                         ; $7084: $05
    ld bc, $0107                                  ; $7085: $01 $07 $01
    dec b                                         ; $7088: $05
    rlca                                          ; $7089: $07
    rlca                                          ; $708a: $07
    ld bc, $d205                                  ; $708b: $01 $05 $d2
    pop de                                        ; $708e: $d1
    pop de                                        ; $708f: $d1
    pop de                                        ; $7090: $d1
    jp nc, $d1d1                                  ; $7091: $d2 $d1 $d1

    pop de                                        ; $7094: $d1
    jp nc, $d1d1                                  ; $7095: $d2 $d1 $d1

    pop de                                        ; $7098: $d1
    jp nc, $d1d1                                  ; $7099: $d2 $d1 $d1

    pop de                                        ; $709c: $d1
    add d                                         ; $709d: $82
    add d                                         ; $709e: $82
    add d                                         ; $709f: $82
    add d                                         ; $70a0: $82
    add d                                         ; $70a1: $82
    add d                                         ; $70a2: $82
    add d                                         ; $70a3: $82
    add d                                         ; $70a4: $82
    add d                                         ; $70a5: $82
    add d                                         ; $70a6: $82
    add d                                         ; $70a7: $82
    add d                                         ; $70a8: $82
    add d                                         ; $70a9: $82
    add d                                         ; $70aa: $82
    add d                                         ; $70ab: $82
    add d                                         ; $70ac: $82
    ld hl, $2322                                  ; $70ad: $21 $22 $23
    inc h                                         ; $70b0: $24
    dec h                                         ; $70b1: $25
    ld h, $27                                     ; $70b2: $26 $27
    jr z, jr_087_70df                             ; $70b4: $28 $29

    ld a, [hl+]                                   ; $70b6: $2a
    dec hl                                        ; $70b7: $2b
    inc l                                         ; $70b8: $2c
    dec l                                         ; $70b9: $2d
    ld l, $2f                                     ; $70ba: $2e $2f
    jr nc, @+$03                                  ; $70bc: $30 $01

    ld bc, $0101                                  ; $70be: $01 $01 $01
    dec b                                         ; $70c1: $05
    ld bc, $0106                                  ; $70c2: $01 $06 $01
    dec b                                         ; $70c5: $05
    ld b, $06                                     ; $70c6: $06 $06
    ld bc, $0605                                  ; $70c8: $01 $05 $06
    ld bc, $8307                                  ; $70cb: $01 $07 $83
    add h                                         ; $70ce: $84
    add l                                         ; $70cf: $85
    ld b, l                                       ; $70d0: $45
    add [hl]                                      ; $70d1: $86
    add a                                         ; $70d2: $87
    ld [hl], l                                    ; $70d3: $75
    halt                                          ; $70d4: $76
    add hl, sp                                    ; $70d5: $39
    ld a, [hl-]                                   ; $70d6: $3a
    ld a, b                                       ; $70d7: $78
    ld a, c                                       ; $70d8: $79
    dec a                                         ; $70d9: $3d
    ld a, $7a                                     ; $70da: $3e $7a
    ld a, e                                       ; $70dc: $7b
    add hl, bc                                    ; $70dd: $09
    dec bc                                        ; $70de: $0b

jr_087_70df:
    dec bc                                        ; $70df: $0b
    inc bc                                        ; $70e0: $03
    add hl, bc                                    ; $70e1: $09
    dec c                                         ; $70e2: $0d
    dec b                                         ; $70e3: $05
    dec b                                         ; $70e4: $05
    rlca                                          ; $70e5: $07
    rlca                                          ; $70e6: $07
    ld b, $01                                     ; $70e7: $06 $01
    rlca                                          ; $70e9: $07
    ld bc, $0606                                  ; $70ea: $01 $06 $06
    ld d, $1a                                     ; $70ed: $16 $1a
    ld [$2565], a                                 ; $70ef: $ea $65 $25
    ld h, $27                                     ; $70f2: $26 $27
    jr z, jr_087_711f                             ; $70f4: $28 $29

    ld a, [hl+]                                   ; $70f6: $2a
    dec hl                                        ; $70f7: $2b
    inc l                                         ; $70f8: $2c
    dec l                                         ; $70f9: $2d
    ld l, $2f                                     ; $70fa: $2e $2f
    jr nc, jr_087_7101                            ; $70fc: $30 $03

    inc bc                                        ; $70fe: $03
    inc bc                                        ; $70ff: $03
    inc bc                                        ; $7100: $03

jr_087_7101:
    dec b                                         ; $7101: $05
    dec b                                         ; $7102: $05
    dec b                                         ; $7103: $05
    dec b                                         ; $7104: $05
    ld b, $01                                     ; $7105: $06 $01
    ld bc, $0606                                  ; $7107: $01 $06 $06
    rlca                                          ; $710a: $07
    rlca                                          ; $710b: $07
    ld b, $d1                                     ; $710c: $06 $d1
    di                                            ; $710e: $f3
    db $f4                                        ; $710f: $f4
    push af                                       ; $7110: $f5
    pop de                                        ; $7111: $d1
    jp nc, $d4d3                                  ; $7112: $d2 $d3 $d4

    pop de                                        ; $7115: $d1
    dec e                                         ; $7116: $1d
    rst $10                                       ; $7117: $d7
    ret c                                         ; $7118: $d8

    pop de                                        ; $7119: $d1
    dec e                                         ; $711a: $1d
    db $db                                        ; $711b: $db
    ld e, $82                                     ; $711c: $1e $82
    add d                                         ; $711e: $82

jr_087_711f:
    add d                                         ; $711f: $82
    add d                                         ; $7120: $82
    add d                                         ; $7121: $82
    add d                                         ; $7122: $82
    nop                                           ; $7123: $00
    ld [bc], a                                    ; $7124: $02
    add d                                         ; $7125: $82
    add d                                         ; $7126: $82
    nop                                           ; $7127: $00
    ld [bc], a                                    ; $7128: $02
    add d                                         ; $7129: $82
    add d                                         ; $712a: $82
    ld [hl+], a                                   ; $712b: $22
    ld [bc], a                                    ; $712c: $02
    ld d, b                                       ; $712d: $50
    ld d, c                                       ; $712e: $51
    ld d, d                                       ; $712f: $52
    ld d, e                                       ; $7130: $53
    ld a, [$fcfb]                                 ; $7131: $fa $fb $fc
    db $fd                                        ; $7134: $fd
    cp $ff                                        ; $7135: $fe $ff
    nop                                           ; $7137: $00
    ld bc, $0302                                  ; $7138: $01 $02 $03
    inc b                                         ; $713b: $04
    dec b                                         ; $713c: $05
    dec b                                         ; $713d: $05
    ld bc, $0607                                  ; $713e: $01 $07 $06
    dec b                                         ; $7141: $05
    ld bc, $0606                                  ; $7142: $01 $06 $06
    dec b                                         ; $7145: $05
    ld b, $06                                     ; $7146: $06 $06
    ld bc, $0605                                  ; $7148: $01 $05 $06
    ld b, $01                                     ; $714b: $06 $01
    ld d, h                                       ; $714d: $54
    ld d, l                                       ; $714e: $55
    adc b                                         ; $714f: $88
    ld a, l                                       ; $7150: $7d
    rlca                                          ; $7151: $07
    ld [$4c09], sp                                ; $7152: $08 $09 $4c
    dec bc                                        ; $7155: $0b
    inc c                                         ; $7156: $0c
    dec c                                         ; $7157: $0d
    ld c, l                                       ; $7158: $4d
    rrca                                          ; $7159: $0f
    db $10                                        ; $715a: $10
    ld de, $0671                                  ; $715b: $11 $71 $06
    ld b, $09                                     ; $715e: $06 $09
    ld bc, $0101                                  ; $7160: $01 $01 $01

jr_087_7163:
    ld bc, $0707                                  ; $7163: $01 $07 $07
    rlca                                          ; $7166: $07
    ld bc, $0101                                  ; $7167: $01 $01 $01
    ld b, $01                                     ; $716a: $06 $01
    ld b, $50                                     ; $716c: $06 $50
    ld d, c                                       ; $716e: $51
    ld d, d                                       ; $716f: $52
    ld d, e                                       ; $7170: $53
    ld a, [$fcfb]                                 ; $7171: $fa $fb $fc
    db $fd                                        ; $7174: $fd
    cp $ff                                        ; $7175: $fe $ff
    nop                                           ; $7177: $00
    ld bc, $0302                                  ; $7178: $01 $02 $03
    inc b                                         ; $717b: $04
    dec b                                         ; $717c: $05
    rlca                                          ; $717d: $07
    ld bc, $0101                                  ; $717e: $01 $01 $01
    ld bc, $0101                                  ; $7181: $01 $01 $01
    ld bc, $0606                                  ; $7184: $01 $06 $06
    ld bc, $0601                                  ; $7187: $01 $01 $06
    rlca                                          ; $718a: $07
    ld bc, $d106                                  ; $718b: $01 $06 $d1
    dec e                                         ; $718e: $1d
    rra                                           ; $718f: $1f
    jr nz, jr_087_7163                            ; $7190: $20 $d1

    dec e                                         ; $7192: $1d
    ld c, c                                       ; $7193: $49
    ld c, d                                       ; $7194: $4a
    ld c, e                                       ; $7195: $4b
    dec e                                         ; $7196: $1d
    ld a, b                                       ; $7197: $78
    ld a, c                                       ; $7198: $79
    ld c, e                                       ; $7199: $4b
    jp nc, Jump_087_7b7a                          ; $719a: $d2 $7a $7b

    add d                                         ; $719d: $82
    add d                                         ; $719e: $82
    ld [bc], a                                    ; $719f: $02
    ld [bc], a                                    ; $71a0: $02
    add d                                         ; $71a1: $82
    add d                                         ; $71a2: $82
    ld [bc], a                                    ; $71a3: $02
    ld [bc], a                                    ; $71a4: $02
    add d                                         ; $71a5: $82
    add d                                         ; $71a6: $82
    dec b                                         ; $71a7: $05
    dec b                                         ; $71a8: $05
    add d                                         ; $71a9: $82
    add d                                         ; $71aa: $82
    dec b                                         ; $71ab: $05
    ld bc, $2221                                  ; $71ac: $01 $21 $22
    inc hl                                        ; $71af: $23
    inc h                                         ; $71b0: $24
    dec h                                         ; $71b1: $25
    ld h, $27                                     ; $71b2: $26 $27
    jr z, jr_087_71df                             ; $71b4: $28 $29

    ld a, [hl+]                                   ; $71b6: $2a
    dec hl                                        ; $71b7: $2b
    inc l                                         ; $71b8: $2c
    dec l                                         ; $71b9: $2d
    ld l, $2f                                     ; $71ba: $2e $2f
    jr nc, @+$07                                  ; $71bc: $30 $05

    ld bc, $0101                                  ; $71be: $01 $01 $01
    dec b                                         ; $71c1: $05
    ld bc, $0601                                  ; $71c2: $01 $01 $06
    dec b                                         ; $71c5: $05
    ld bc, $0606                                  ; $71c6: $01 $06 $06
    ld bc, $0701                                  ; $71c9: $01 $01 $07
    ld b, $31                                     ; $71cc: $06 $31
    ld [hl-], a                                   ; $71ce: $32
    inc sp                                        ; $71cf: $33
    ld [hl], e                                    ; $71d0: $73
    dec [hl]                                      ; $71d1: $35
    ld [hl], $75                                  ; $71d2: $36 $75
    halt                                          ; $71d4: $76
    add hl, sp                                    ; $71d5: $39
    ld a, [hl-]                                   ; $71d6: $3a
    ld a, b                                       ; $71d7: $78
    ld a, c                                       ; $71d8: $79
    dec a                                         ; $71d9: $3d
    ld a, $7a                                     ; $71da: $3e $7a
    ld a, e                                       ; $71dc: $7b
    ld b, $06                                     ; $71dd: $06 $06

jr_087_71df:
    ld b, $06                                     ; $71df: $06 $06
    ld bc, $0101                                  ; $71e1: $01 $01 $01
    ld bc, $0101                                  ; $71e4: $01 $01 $01
    ld bc, $0607                                  ; $71e7: $01 $07 $06
    ld b, $07                                     ; $71ea: $06 $07
    rlca                                          ; $71ec: $07
    ld hl, $2322                                  ; $71ed: $21 $22 $23
    inc h                                         ; $71f0: $24
    dec h                                         ; $71f1: $25
    ld h, $27                                     ; $71f2: $26 $27
    jr z, jr_087_721f                             ; $71f4: $28 $29

    ld a, [hl+]                                   ; $71f6: $2a
    dec hl                                        ; $71f7: $2b
    inc l                                         ; $71f8: $2c
    adc c                                         ; $71f9: $89
    adc d                                         ; $71fa: $8a
    adc e                                         ; $71fb: $8b
    jr nc, @+$03                                  ; $71fc: $30 $01

    ld bc, $0701                                  ; $71fe: $01 $01 $07
    ld bc, $0106                                  ; $7201: $01 $06 $01
    ld bc, $0601                                  ; $7204: $01 $01 $06
    ld b, $06                                     ; $7207: $06 $06
    ld c, $09                                     ; $7209: $0e $09
    add hl, bc                                    ; $720b: $09
    ld b, $4b                                     ; $720c: $06 $4b
    ld c, [hl]                                    ; $720e: $4e
    db $f4                                        ; $720f: $f4
    ld c, a                                       ; $7210: $4f
    pop de                                        ; $7211: $d1
    pop de                                        ; $7212: $d1
    pop de                                        ; $7213: $d1
    jp nc, $d1d1                                  ; $7214: $d2 $d1 $d1

    pop de                                        ; $7217: $d1
    jp nc, $d1d1                                  ; $7218: $d2 $d1 $d1

    pop de                                        ; $721b: $d1
    jp nc, $8282                                  ; $721c: $d2 $82 $82

jr_087_721f:
    add d                                         ; $721f: $82
    add d                                         ; $7220: $82
    add d                                         ; $7221: $82
    add d                                         ; $7222: $82
    add d                                         ; $7223: $82
    add d                                         ; $7224: $82
    add d                                         ; $7225: $82
    add d                                         ; $7226: $82
    add d                                         ; $7227: $82
    add d                                         ; $7228: $82
    add d                                         ; $7229: $82
    add d                                         ; $722a: $82
    add d                                         ; $722b: $82
    add d                                         ; $722c: $82
    ld d, b                                       ; $722d: $50
    ld d, c                                       ; $722e: $51
    ld d, d                                       ; $722f: $52
    ld d, e                                       ; $7230: $53
    ld a, [$fcfb]                                 ; $7231: $fa $fb $fc
    db $fd                                        ; $7234: $fd
    cp $ff                                        ; $7235: $fe $ff
    nop                                           ; $7237: $00
    ld bc, $0302                                  ; $7238: $01 $02 $03
    inc b                                         ; $723b: $04
    dec b                                         ; $723c: $05
    rlca                                          ; $723d: $07
    rlca                                          ; $723e: $07
    ld b, $01                                     ; $723f: $06 $01
    ld bc, $0601                                  ; $7241: $01 $01 $06
    ld b, $05                                     ; $7244: $06 $05
    ld bc, $0106                                  ; $7246: $01 $06 $01
    dec b                                         ; $7249: $05
    ld bc, $0607                                  ; $724a: $01 $07 $06
    ld d, h                                       ; $724d: $54
    ld d, l                                       ; $724e: $55
    adc b                                         ; $724f: $88
    ld a, l                                       ; $7250: $7d
    rlca                                          ; $7251: $07
    ld [$4c09], sp                                ; $7252: $08 $09 $4c
    dec bc                                        ; $7255: $0b
    inc c                                         ; $7256: $0c
    dec c                                         ; $7257: $0d
    ld c, l                                       ; $7258: $4d
    rrca                                          ; $7259: $0f
    db $10                                        ; $725a: $10
    ld de, $0171                                  ; $725b: $11 $71 $01
    ld b, $0e                                     ; $725e: $06 $0e
    ld bc, $0106                                  ; $7260: $01 $06 $01
    ld bc, $0106                                  ; $7263: $01 $06 $01
    rlca                                          ; $7266: $07
    ld bc, $0101                                  ; $7267: $01 $01 $01
    ld b, $06                                     ; $726a: $06 $06
    ld bc, $5150                                  ; $726c: $01 $50 $51
    adc h                                         ; $726f: $8c
    adc l                                         ; $7270: $8d
    ld a, [$8f8e]                                 ; $7271: $fa $8e $8f
    sub b                                         ; $7274: $90
    sub c                                         ; $7275: $91
    sub d                                         ; $7276: $92
    sub e                                         ; $7277: $93
    sub h                                         ; $7278: $94
    sub l                                         ; $7279: $95
    sub [hl]                                      ; $727a: $96
    sub a                                         ; $727b: $97
    sbc b                                         ; $727c: $98
    ld b, $06                                     ; $727d: $06 $06
    add hl, bc                                    ; $727f: $09
    add hl, bc                                    ; $7280: $09
    ld b, $0e                                     ; $7281: $06 $0e
    ld c, $0e                                     ; $7283: $0e $0e
    add hl, bc                                    ; $7285: $09
    add hl, bc                                    ; $7286: $09
    ld c, $0e                                     ; $7287: $0e $0e
    rrca                                          ; $7289: $0f
    add hl, bc                                    ; $728a: $09
    ld c, $0e                                     ; $728b: $0e $0e
    ld h, h                                       ; $728d: $64
    dec d                                         ; $728e: $15
    ld d, $1a                                     ; $728f: $16 $1a
    dec [hl]                                      ; $7291: $35
    ld [hl], $75                                  ; $7292: $36 $75
    halt                                          ; $7294: $76
    add hl, sp                                    ; $7295: $39
    ld a, [hl-]                                   ; $7296: $3a
    ld a, b                                       ; $7297: $78
    ld a, c                                       ; $7298: $79
    dec a                                         ; $7299: $3d
    ld a, $7a                                     ; $729a: $3e $7a
    ld a, e                                       ; $729c: $7b
    inc bc                                        ; $729d: $03
    inc bc                                        ; $729e: $03
    inc bc                                        ; $729f: $03
    inc bc                                        ; $72a0: $03
    dec b                                         ; $72a1: $05
    dec b                                         ; $72a2: $05
    dec b                                         ; $72a3: $05
    dec b                                         ; $72a4: $05
    ld bc, $0601                                  ; $72a5: $01 $01 $06
    ld b, $01                                     ; $72a8: $06 $01
    rlca                                          ; $72aa: $07
    ld b, $06                                     ; $72ab: $06 $06
    ld h, d                                       ; $72ad: $62
    ld b, l                                       ; $72ae: $45
    ld b, [hl]                                    ; $72af: $46
    jp hl                                         ; $72b0: $e9


    dec h                                         ; $72b1: $25
    ld h, $27                                     ; $72b2: $26 $27
    jr z, jr_087_72df                             ; $72b4: $28 $29

    ld a, [hl+]                                   ; $72b6: $2a
    dec hl                                        ; $72b7: $2b
    inc l                                         ; $72b8: $2c
    dec l                                         ; $72b9: $2d
    ld l, $2f                                     ; $72ba: $2e $2f
    jr nc, jr_087_72c1                            ; $72bc: $30 $03

    inc bc                                        ; $72be: $03
    inc bc                                        ; $72bf: $03
    inc bc                                        ; $72c0: $03

jr_087_72c1:
    dec b                                         ; $72c1: $05
    dec b                                         ; $72c2: $05
    dec b                                         ; $72c3: $05
    dec b                                         ; $72c4: $05
    ld bc, $0101                                  ; $72c5: $01 $01 $01
    ld bc, $0606                                  ; $72c8: $01 $06 $06
    ld bc, $ea07                                  ; $72cb: $01 $07 $ea
    add l                                         ; $72ce: $85
    add h                                         ; $72cf: $84
    ld [hl], e                                    ; $72d0: $73
    dec [hl]                                      ; $72d1: $35
    ld [hl], $75                                  ; $72d2: $36 $75
    halt                                          ; $72d4: $76
    add hl, sp                                    ; $72d5: $39
    ld a, [hl-]                                   ; $72d6: $3a
    ld a, b                                       ; $72d7: $78
    ld a, c                                       ; $72d8: $79
    dec a                                         ; $72d9: $3d
    ld a, $7a                                     ; $72da: $3e $7a
    ld a, e                                       ; $72dc: $7b
    inc bc                                        ; $72dd: $03
    dec hl                                        ; $72de: $2b

jr_087_72df:
    dec hl                                        ; $72df: $2b
    ld bc, $0505                                  ; $72e0: $01 $05 $05
    dec b                                         ; $72e3: $05
    ld bc, $0101                                  ; $72e4: $01 $01 $01
    ld bc, $0106                                  ; $72e7: $01 $06 $01
    ld b, $06                                     ; $72ea: $06 $06
    rlca                                          ; $72ec: $07
    ld hl, $2322                                  ; $72ed: $21 $22 $23
    inc h                                         ; $72f0: $24
    dec h                                         ; $72f1: $25
    ld h, $27                                     ; $72f2: $26 $27
    jr z, @+$2b                                   ; $72f4: $28 $29

    ld a, [hl+]                                   ; $72f6: $2a
    dec hl                                        ; $72f7: $2b
    inc l                                         ; $72f8: $2c
    dec l                                         ; $72f9: $2d
    ld l, $2f                                     ; $72fa: $2e $2f
    jr nc, @+$03                                  ; $72fc: $30 $01

    ld bc, $0501                                  ; $72fe: $01 $01 $05
    ld bc, $0107                                  ; $7301: $01 $07 $01
    dec b                                         ; $7304: $05
    rlca                                          ; $7305: $07
    rlca                                          ; $7306: $07
    ld bc, $0105                                  ; $7307: $01 $05 $01
    ld bc, $0506                                  ; $730a: $01 $06 $05
    ld d, h                                       ; $730d: $54
    ld d, l                                       ; $730e: $55
    adc b                                         ; $730f: $88
    ld a, l                                       ; $7310: $7d
    rlca                                          ; $7311: $07
    ld [$4c09], sp                                ; $7312: $08 $09 $4c
    dec bc                                        ; $7315: $0b
    inc c                                         ; $7316: $0c
    dec c                                         ; $7317: $0d
    ld c, l                                       ; $7318: $4d
    rrca                                          ; $7319: $0f
    db $10                                        ; $731a: $10
    ld de, $0671                                  ; $731b: $11 $71 $06
    ld b, $09                                     ; $731e: $06 $09
    ld bc, $0601                                  ; $7320: $01 $01 $06
    ld b, $06                                     ; $7323: $06 $06
    ld b, $07                                     ; $7325: $06 $07
    ld bc, $0706                                  ; $7327: $01 $06 $07
    ld bc, $0106                                  ; $732a: $01 $06 $01
    ld d, b                                       ; $732d: $50
    ld d, c                                       ; $732e: $51
    ld d, d                                       ; $732f: $52
    ld d, e                                       ; $7330: $53
    ld a, [$fcfb]                                 ; $7331: $fa $fb $fc
    db $fd                                        ; $7334: $fd
    cp $ff                                        ; $7335: $fe $ff
    nop                                           ; $7337: $00
    ld bc, $0302                                  ; $7338: $01 $02 $03
    inc b                                         ; $733b: $04
    dec b                                         ; $733c: $05
    ld b, $07                                     ; $733d: $06 $07
    ld bc, $0701                                  ; $733f: $01 $01 $07
    ld b, $01                                     ; $7342: $06 $01
    ld b, $01                                     ; $7344: $06 $01
    ld bc, $0601                                  ; $7346: $01 $01 $06
    ld bc, $0606                                  ; $7349: $01 $06 $06
    ld bc, $5554                                  ; $734c: $01 $54 $55
    adc b                                         ; $734f: $88
    ld a, l                                       ; $7350: $7d
    rlca                                          ; $7351: $07
    ld [$4c09], sp                                ; $7352: $08 $09 $4c
    dec bc                                        ; $7355: $0b
    inc c                                         ; $7356: $0c
    dec c                                         ; $7357: $0d
    ld c, l                                       ; $7358: $4d
    rrca                                          ; $7359: $0f
    db $10                                        ; $735a: $10
    ld de, $0171                                  ; $735b: $11 $71 $01
    rlca                                          ; $735e: $07
    rrca                                          ; $735f: $0f
    rlca                                          ; $7360: $07
    ld bc, $0701                                  ; $7361: $01 $01 $07
    ld bc, $0101                                  ; $7364: $01 $01 $01
    ld bc, $0701                                  ; $7367: $01 $01 $07
    ld bc, $0601                                  ; $736a: $01 $01 $06
    ld d, b                                       ; $736d: $50
    ld d, c                                       ; $736e: $51
    ld d, d                                       ; $736f: $52
    ld d, e                                       ; $7370: $53
    ld a, [$fcfb]                                 ; $7371: $fa $fb $fc
    db $fd                                        ; $7374: $fd
    cp $ff                                        ; $7375: $fe $ff
    nop                                           ; $7377: $00
    ld bc, $9902                                  ; $7378: $01 $02 $99
    sbc d                                         ; $737b: $9a
    sbc e                                         ; $737c: $9b
    ld bc, $0601                                  ; $737d: $01 $01 $06
    dec b                                         ; $7380: $05
    ld bc, $0101                                  ; $7381: $01 $01 $01
    dec b                                         ; $7384: $05
    ld bc, $0101                                  ; $7385: $01 $01 $01
    dec b                                         ; $7388: $05
    ld b, $09                                     ; $7389: $06 $09
    add hl, bc                                    ; $738b: $09
    dec c                                         ; $738c: $0d
    ld sp, $3332                                  ; $738d: $31 $32 $33
    ld [hl], e                                    ; $7390: $73
    dec [hl]                                      ; $7391: $35
    ld [hl], $75                                  ; $7392: $36 $75
    halt                                          ; $7394: $76
    add hl, sp                                    ; $7395: $39
    ld a, [hl-]                                   ; $7396: $3a
    ld a, b                                       ; $7397: $78
    ld a, c                                       ; $7398: $79
    sbc h                                         ; $7399: $9c
    ld a, $7a                                     ; $739a: $3e $7a
    ld a, e                                       ; $739c: $7b
    ld b, $06                                     ; $739d: $06 $06
    ld bc, $0101                                  ; $739f: $01 $01 $01
    ld bc, $0606                                  ; $73a2: $01 $06 $06
    ld bc, $0707                                  ; $73a5: $01 $07 $07
    ld bc, $010e                                  ; $73a8: $01 $0e $01
    rlca                                          ; $73ab: $07
    rlca                                          ; $73ac: $07
    ld hl, $2322                                  ; $73ad: $21 $22 $23
    inc h                                         ; $73b0: $24
    dec h                                         ; $73b1: $25
    ld h, $27                                     ; $73b2: $26 $27
    jr z, @+$2b                                   ; $73b4: $28 $29

    ld a, [hl+]                                   ; $73b6: $2a
    dec hl                                        ; $73b7: $2b
    inc l                                         ; $73b8: $2c
    sbc l                                         ; $73b9: $9d
    adc d                                         ; $73ba: $8a
    sbc [hl]                                      ; $73bb: $9e
    jr nc, @+$08                                  ; $73bc: $30 $06

    ld bc, $0107                                  ; $73be: $01 $07 $01
    ld b, $06                                     ; $73c1: $06 $06
    ld bc, $0701                                  ; $73c3: $01 $01 $07
    ld b, $01                                     ; $73c6: $06 $01
    rlca                                          ; $73c8: $07
    ld c, $0e                                     ; $73c9: $0e $0e
    rrca                                          ; $73cb: $0f
    ld bc, $3231                                  ; $73cc: $01 $31 $32
    inc sp                                        ; $73cf: $33
    sbc a                                         ; $73d0: $9f
    dec [hl]                                      ; $73d1: $35
    ld [hl], $75                                  ; $73d2: $36 $75
    and b                                         ; $73d4: $a0
    add hl, sp                                    ; $73d5: $39
    ld a, [hl-]                                   ; $73d6: $3a
    ld a, b                                       ; $73d7: $78
    and c                                         ; $73d8: $a1
    dec a                                         ; $73d9: $3d
    ld a, $7a                                     ; $73da: $3e $7a
    and d                                         ; $73dc: $a2
    ld bc, $0106                                  ; $73dd: $01 $06 $01
    add hl, bc                                    ; $73e0: $09
    ld bc, $0107                                  ; $73e1: $01 $07 $01
    add hl, bc                                    ; $73e4: $09
    rlca                                          ; $73e5: $07
    ld b, $01                                     ; $73e6: $06 $01
    add hl, bc                                    ; $73e8: $09
    ld b, $06                                     ; $73e9: $06 $06
    rlca                                          ; $73eb: $07
    add hl, bc                                    ; $73ec: $09
    and e                                         ; $73ed: $a3
    and h                                         ; $73ee: $a4
    and l                                         ; $73ef: $a5
    and [hl]                                      ; $73f0: $a6
    and a                                         ; $73f1: $a7
    xor b                                         ; $73f2: $a8
    xor c                                         ; $73f3: $a9
    xor d                                         ; $73f4: $aa
    xor e                                         ; $73f5: $ab
    xor h                                         ; $73f6: $ac
    xor l                                         ; $73f7: $ad
    xor [hl]                                      ; $73f8: $ae
    xor a                                         ; $73f9: $af
    or b                                          ; $73fa: $b0
    or c                                          ; $73fb: $b1
    jr nc, jr_087_7407                            ; $73fc: $30 $09

    adc h                                         ; $73fe: $8c
    adc h                                         ; $73ff: $8c
    dec c                                         ; $7400: $0d
    adc h                                         ; $7401: $8c
    adc h                                         ; $7402: $8c
    adc h                                         ; $7403: $8c
    dec c                                         ; $7404: $0d
    adc h                                         ; $7405: $8c
    adc h                                         ; $7406: $8c

jr_087_7407:
    inc c                                         ; $7407: $0c
    dec c                                         ; $7408: $0d
    inc c                                         ; $7409: $0c
    inc c                                         ; $740a: $0c
    inc c                                         ; $740b: $0c
    dec b                                         ; $740c: $05
    or d                                          ; $740d: $b2
    ld d, l                                       ; $740e: $55
    adc b                                         ; $740f: $88
    or e                                          ; $7410: $b3
    or h                                          ; $7411: $b4
    or l                                          ; $7412: $b5
    or [hl]                                       ; $7413: $b6
    or a                                          ; $7414: $b7
    cp b                                          ; $7415: $b8
    cp c                                          ; $7416: $b9
    cp d                                          ; $7417: $ba
    cp e                                          ; $7418: $bb
    cp h                                          ; $7419: $bc
    cp l                                          ; $741a: $bd
    cp [hl]                                       ; $741b: $be
    cp a                                          ; $741c: $bf
    ld c, $06                                     ; $741d: $0e $06
    add hl, bc                                    ; $741f: $09
    rrca                                          ; $7420: $0f
    ld c, $0e                                     ; $7421: $0e $0e
    ld c, $0e                                     ; $7423: $0e $0e
    ld c, $0e                                     ; $7425: $0e $0e
    ld c, $0e                                     ; $7427: $0e $0e
    ld c, $0e                                     ; $7429: $0e $0e
    ld c, $0e                                     ; $742b: $0e $0e
    ret nz                                        ; $742d: $c0

    pop bc                                        ; $742e: $c1
    ld d, d                                       ; $742f: $52
    ld d, e                                       ; $7430: $53
    jp nz, $c4c3                                  ; $7431: $c2 $c3 $c4

    db $fd                                        ; $7434: $fd
    push bc                                       ; $7435: $c5
    add $c7                                       ; $7436: $c6 $c7
    ld bc, $c9c8                                  ; $7438: $01 $c8 $c9
    jp z, Jump_000_0e05                           ; $743b: $ca $05 $0e

    ld c, $07                                     ; $743e: $0e $07
    ld bc, $0e0e                                  ; $7440: $01 $0e $0e
    add hl, bc                                    ; $7443: $09
    ld bc, $0e0e                                  ; $7444: $01 $0e $0e
    add hl, bc                                    ; $7447: $09
    ld bc, $0e0e                                  ; $7448: $01 $0e $0e
    add hl, bc                                    ; $744b: $09
    ld bc, $5554                                  ; $744c: $01 $54 $55
    adc b                                         ; $744f: $88
    rlc a                                         ; $7450: $cb $07
    ld [$cc09], sp                                ; $7452: $08 $09 $cc
    dec bc                                        ; $7455: $0b
    inc c                                         ; $7456: $0c
    dec c                                         ; $7457: $0d
    ld c, l                                       ; $7458: $4d
    rrca                                          ; $7459: $0f
    db $10                                        ; $745a: $10
    ld de, $0171                                  ; $745b: $11 $71 $01
    ld b, $09                                     ; $745e: $06 $09
    add hl, bc                                    ; $7460: $09
    ld b, $06                                     ; $7461: $06 $06
    ld bc, $0609                                  ; $7463: $01 $09 $06
    ld bc, $0107                                  ; $7466: $01 $07 $01
    ld bc, $0601                                  ; $7469: $01 $01 $06
    ld bc, $cecd                                  ; $746c: $01 $cd $ce
    rst $08                                       ; $746f: $cf
    ld d, e                                       ; $7470: $53
    ret nc                                        ; $7471: $d0

    rst $08                                       ; $7472: $cf
    pop de                                        ; $7473: $d1
    db $fd                                        ; $7474: $fd
    cp $d2                                        ; $7475: $fe $d2
    nop                                           ; $7477: $00
    ld bc, $0302                                  ; $7478: $01 $02 $03
    inc b                                         ; $747b: $04
    dec b                                         ; $747c: $05
    inc c                                         ; $747d: $0c
    inc c                                         ; $747e: $0c
    inc c                                         ; $747f: $0c
    dec b                                         ; $7480: $05
    inc c                                         ; $7481: $0c
    inc c                                         ; $7482: $0c
    add hl, bc                                    ; $7483: $09
    dec b                                         ; $7484: $05
    ld bc, $0609                                  ; $7485: $01 $09 $06
    dec b                                         ; $7488: $05
    ld bc, $0606                                  ; $7489: $01 $06 $06
    ld bc, $f44e                                  ; $748c: $01 $4e $f4
    ld c, a                                       ; $748f: $4f
    pop de                                        ; $7490: $d1
    call nc, $d2d3                                ; $7491: $d4 $d3 $d2
    pop de                                        ; $7494: $d1
    ret c                                         ; $7495: $d8

    rst $10                                       ; $7496: $d7
    dec e                                         ; $7497: $1d
    pop de                                        ; $7498: $d1
    db $d3                                        ; $7499: $d3
    call nc, $d11d                                ; $749a: $d4 $1d $d1
    add d                                         ; $749d: $82
    add d                                         ; $749e: $82
    add d                                         ; $749f: $82
    add d                                         ; $74a0: $82
    ld [bc], a                                    ; $74a1: $02
    jr nz, @-$7c                                  ; $74a2: $20 $82

    add d                                         ; $74a4: $82
    ld [bc], a                                    ; $74a5: $02
    jr nz, @-$7c                                  ; $74a6: $20 $82

    add d                                         ; $74a8: $82
    ld a, [bc]                                    ; $74a9: $0a
    ld a, [bc]                                    ; $74aa: $0a
    add d                                         ; $74ab: $82
    add d                                         ; $74ac: $82
    rra                                           ; $74ad: $1f
    jr nz, jr_087_74cd                            ; $74ae: $20 $1d

    pop de                                        ; $74b0: $d1
    ld c, c                                       ; $74b1: $49
    ld c, d                                       ; $74b2: $4a
    dec e                                         ; $74b3: $1d
    pop de                                        ; $74b4: $d1
    dec bc                                        ; $74b5: $0b
    inc c                                         ; $74b6: $0c
    dec e                                         ; $74b7: $1d
    ld c, e                                       ; $74b8: $4b
    rrca                                          ; $74b9: $0f
    db $10                                        ; $74ba: $10
    dec e                                         ; $74bb: $1d
    ld c, e                                       ; $74bc: $4b
    ld [bc], a                                    ; $74bd: $02
    ld [bc], a                                    ; $74be: $02
    add d                                         ; $74bf: $82
    add d                                         ; $74c0: $82
    ld [bc], a                                    ; $74c1: $02
    ld [bc], a                                    ; $74c2: $02
    add d                                         ; $74c3: $82
    add d                                         ; $74c4: $82
    dec b                                         ; $74c5: $05
    dec b                                         ; $74c6: $05
    add d                                         ; $74c7: $82
    and d                                         ; $74c8: $a2
    ld b, $05                                     ; $74c9: $06 $05
    add d                                         ; $74cb: $82
    and d                                         ; $74cc: $a2

jr_087_74cd:
    ld hl, $2322                                  ; $74cd: $21 $22 $23
    inc h                                         ; $74d0: $24
    dec h                                         ; $74d1: $25
    ld h, $27                                     ; $74d2: $26 $27
    jr z, @+$2b                                   ; $74d4: $28 $29

    ld a, [hl+]                                   ; $74d6: $2a
    dec hl                                        ; $74d7: $2b
    inc l                                         ; $74d8: $2c
    dec l                                         ; $74d9: $2d
    ld l, $2f                                     ; $74da: $2e $2f
    jr nc, @+$07                                  ; $74dc: $30 $05

    ld bc, $0101                                  ; $74de: $01 $01 $01
    dec b                                         ; $74e1: $05
    ld b, $01                                     ; $74e2: $06 $01
    ld b, $05                                     ; $74e4: $06 $05
    ld bc, $0606                                  ; $74e6: $01 $06 $06
    dec b                                         ; $74e9: $05
    ld bc, $0707                                  ; $74ea: $01 $07 $07
    ld sp, $3332                                  ; $74ed: $31 $32 $33
    ld [hl], e                                    ; $74f0: $73
    dec [hl]                                      ; $74f1: $35
    ld [hl], $75                                  ; $74f2: $36 $75
    halt                                          ; $74f4: $76
    add hl, sp                                    ; $74f5: $39
    ld a, [hl-]                                   ; $74f6: $3a
    ld a, b                                       ; $74f7: $78
    ld a, c                                       ; $74f8: $79
    dec a                                         ; $74f9: $3d
    ld a, $7a                                     ; $74fa: $3e $7a
    ld a, e                                       ; $74fc: $7b
    ld bc, $0101                                  ; $74fd: $01 $01 $01
    rlca                                          ; $7500: $07
    ld b, $07                                     ; $7501: $06 $07
    ld b, $06                                     ; $7503: $06 $06
    rlca                                          ; $7505: $07
    ld b, $01                                     ; $7506: $06 $01
    rlca                                          ; $7508: $07
    ld bc, $0601                                  ; $7509: $01 $01 $06
    rlca                                          ; $750c: $07
    ld hl, $d6d5                                  ; $750d: $21 $d5 $d6
    rst $10                                       ; $7510: $d7
    dec h                                         ; $7511: $25
    ret c                                         ; $7512: $d8

    reti                                          ; $7513: $d9


    jp c, $dcdb                                   ; $7514: $da $db $dc

    db $dd                                        ; $7517: $dd
    sbc $df                                       ; $7518: $de $df
    ldh [$e1], a                                  ; $751a: $e0 $e1
    ld [c], a                                     ; $751c: $e2
    ld bc, $0e09                                  ; $751d: $01 $09 $0e
    ld c, $07                                     ; $7520: $0e $07
    rrca                                          ; $7522: $0f
    ld c, $0e                                     ; $7523: $0e $0e
    add hl, bc                                    ; $7525: $09
    ld c, $0e                                     ; $7526: $0e $0e
    ld c, $0f                                     ; $7528: $0e $0f
    ld c, $0e                                     ; $752a: $0e $0e
    ld c, $50                                     ; $752c: $0e $50
    ld d, c                                       ; $752e: $51
    ld d, d                                       ; $752f: $52
    ld d, e                                       ; $7530: $53
    ld a, [$fcfb]                                 ; $7531: $fa $fb $fc
    db $fd                                        ; $7534: $fd
    cp $ff                                        ; $7535: $fe $ff
    nop                                           ; $7537: $00
    ld bc, $0302                                  ; $7538: $01 $02 $03
    inc b                                         ; $753b: $04
    dec b                                         ; $753c: $05
    dec b                                         ; $753d: $05
    ld bc, $0101                                  ; $753e: $01 $01 $01
    dec b                                         ; $7541: $05
    ld bc, $0701                                  ; $7542: $01 $01 $07
    dec b                                         ; $7545: $05
    ld bc, $0701                                  ; $7546: $01 $01 $07
    dec b                                         ; $7549: $05
    ld b, $01                                     ; $754a: $06 $01
    ld bc, $5554                                  ; $754c: $01 $54 $55
    adc b                                         ; $754f: $88
    ld a, l                                       ; $7550: $7d
    rlca                                          ; $7551: $07
    ld [$4c09], sp                                ; $7552: $08 $09 $4c
    dec bc                                        ; $7555: $0b
    inc c                                         ; $7556: $0c
    dec c                                         ; $7557: $0d
    ld c, l                                       ; $7558: $4d
    rrca                                          ; $7559: $0f
    db $10                                        ; $755a: $10
    ld de, $0771                                  ; $755b: $11 $71 $07
    ld b, $0e                                     ; $755e: $06 $0e
    ld bc, $0107                                  ; $7560: $01 $07 $01
    ld bc, $0101                                  ; $7563: $01 $01 $01
    rlca                                          ; $7566: $07
    ld bc, $0606                                  ; $7567: $01 $06 $06
    ld bc, $0106                                  ; $756a: $01 $06 $01
    db $e3                                        ; $756d: $e3
    db $e4                                        ; $756e: $e4
    push hl                                       ; $756f: $e5
    and $fa                                       ; $7570: $e6 $fa
    rst $20                                       ; $7572: $e7
    add sp, -$17                                  ; $7573: $e8 $e9
    cp $ff                                        ; $7575: $fe $ff
    nop                                           ; $7577: $00
    ld [$0302], a                                 ; $7578: $ea $02 $03
    inc b                                         ; $757b: $04
    dec b                                         ; $757c: $05
    add hl, bc                                    ; $757d: $09
    add hl, bc                                    ; $757e: $09
    ld c, $0e                                     ; $757f: $0e $0e
    ld bc, $090f                                  ; $7581: $01 $0f $09
    ld c, $01                                     ; $7584: $0e $01
    ld bc, $0901                                  ; $7586: $01 $01 $09
    ld bc, $0101                                  ; $7589: $01 $01 $01
    ld bc, $d1d1                                  ; $758c: $01 $d1 $d1
    pop de                                        ; $758f: $d1
    jp nc, $d1d1                                  ; $7590: $d2 $d1 $d1

    pop de                                        ; $7593: $d1
    jp nc, $f3d1                                  ; $7594: $d2 $d1 $f3

    db $f4                                        ; $7597: $f4
    push af                                       ; $7598: $f5
    pop de                                        ; $7599: $d1
    jp nc, $d4d3                                  ; $759a: $d2 $d3 $d4

    add d                                         ; $759d: $82
    add d                                         ; $759e: $82
    add d                                         ; $759f: $82
    add d                                         ; $75a0: $82
    add d                                         ; $75a1: $82
    add d                                         ; $75a2: $82
    add d                                         ; $75a3: $82
    add d                                         ; $75a4: $82
    add d                                         ; $75a5: $82
    add d                                         ; $75a6: $82
    add d                                         ; $75a7: $82
    add d                                         ; $75a8: $82
    add d                                         ; $75a9: $82
    add d                                         ; $75aa: $82
    nop                                           ; $75ab: $00
    ld [bc], a                                    ; $75ac: $02
    ld hl, $2322                                  ; $75ad: $21 $22 $23
    inc h                                         ; $75b0: $24
    db $eb                                        ; $75b1: $eb
    db $ec                                        ; $75b2: $ec
    db $ed                                        ; $75b3: $ed
    xor d                                         ; $75b4: $aa
    xor $ef                                       ; $75b5: $ee $ef
    ldh a, [$f1]                                  ; $75b7: $f0 $f1
    ld a, [c]                                     ; $75b9: $f2
    di                                            ; $75ba: $f3
    db $f4                                        ; $75bb: $f4
    push af                                       ; $75bc: $f5
    dec b                                         ; $75bd: $05
    ld bc, $0106                                  ; $75be: $01 $06 $01
    dec c                                         ; $75c1: $0d
    add hl, bc                                    ; $75c2: $09
    add hl, bc                                    ; $75c3: $09
    rrca                                          ; $75c4: $0f
    dec c                                         ; $75c5: $0d
    adc e                                         ; $75c6: $8b
    adc e                                         ; $75c7: $8b
    adc e                                         ; $75c8: $8b
    dec c                                         ; $75c9: $0d
    adc e                                         ; $75ca: $8b
    adc e                                         ; $75cb: $8b
    adc e                                         ; $75cc: $8b
    ld sp, $3332                                  ; $75cd: $31 $32 $33
    ld [hl], e                                    ; $75d0: $73
    dec [hl]                                      ; $75d1: $35
    ld [hl], $75                                  ; $75d2: $36 $75
    halt                                          ; $75d4: $76
    or $3a                                        ; $75d5: $f6 $3a
    ld a, b                                       ; $75d7: $78
    ld a, c                                       ; $75d8: $79
    dec a                                         ; $75d9: $3d
    ld a, $7a                                     ; $75da: $3e $7a
    ld a, e                                       ; $75dc: $7b
    ld bc, $0107                                  ; $75dd: $01 $07 $01
    rlca                                          ; $75e0: $07
    ld bc, $0107                                  ; $75e1: $01 $07 $01
    ld b, $09                                     ; $75e4: $06 $09
    rlca                                          ; $75e6: $07
    rlca                                          ; $75e7: $07
    ld b, $01                                     ; $75e8: $06 $01
    ld bc, $0101                                  ; $75ea: $01 $01 $01
    ld hl, $2322                                  ; $75ed: $21 $22 $23
    inc h                                         ; $75f0: $24
    dec h                                         ; $75f1: $25
    ld h, $27                                     ; $75f2: $26 $27
    jr z, jr_087_761f                             ; $75f4: $28 $29

    ld a, [hl+]                                   ; $75f6: $2a
    dec hl                                        ; $75f7: $2b
    inc l                                         ; $75f8: $2c
    dec l                                         ; $75f9: $2d
    ld l, $2f                                     ; $75fa: $2e $2f
    jr nc, @+$03                                  ; $75fc: $30 $01

    ld bc, $0101                                  ; $75fe: $01 $01 $01
    ld b, $07                                     ; $7601: $06 $07
    rlca                                          ; $7603: $07
    ld bc, $0101                                  ; $7604: $01 $01 $01
    ld bc, $0101                                  ; $7607: $01 $01 $01
    rlca                                          ; $760a: $07
    ld bc, $d101                                  ; $760b: $01 $01 $d1
    dec e                                         ; $760e: $1d
    rst $10                                       ; $760f: $d7
    ret c                                         ; $7610: $d8

    pop de                                        ; $7611: $d1
    dec e                                         ; $7612: $1d
    db $db                                        ; $7613: $db
    ld e, $d1                                     ; $7614: $1e $d1
    dec e                                         ; $7616: $1d
    rra                                           ; $7617: $1f
    jr nz, @-$2d                                  ; $7618: $20 $d1

    dec e                                         ; $761a: $1d
    ld c, c                                       ; $761b: $49
    ld c, d                                       ; $761c: $4a
    add d                                         ; $761d: $82
    add d                                         ; $761e: $82

jr_087_761f:
    nop                                           ; $761f: $00
    ld [bc], a                                    ; $7620: $02
    add d                                         ; $7621: $82
    add d                                         ; $7622: $82
    ld [hl+], a                                   ; $7623: $22
    ld [bc], a                                    ; $7624: $02
    add d                                         ; $7625: $82
    add d                                         ; $7626: $82
    ld [bc], a                                    ; $7627: $02
    ld [bc], a                                    ; $7628: $02
    add d                                         ; $7629: $82
    add d                                         ; $762a: $82
    ld [bc], a                                    ; $762b: $02
    ld [bc], a                                    ; $762c: $02
    ld d, b                                       ; $762d: $50
    rst $30                                       ; $762e: $f7
    ld hl, sp-$07                                 ; $762f: $f8 $f9
    ld a, [$fbfa]                                 ; $7631: $fa $fa $fb
    db $fc                                        ; $7634: $fc
    cp $fd                                        ; $7635: $fe $fd
    cp $ff                                        ; $7637: $fe $ff
    ld [bc], a                                    ; $7639: $02
    inc bc                                        ; $763a: $03
    inc b                                         ; $763b: $04
    dec b                                         ; $763c: $05
    dec b                                         ; $763d: $05
    dec bc                                        ; $763e: $0b
    dec bc                                        ; $763f: $0b
    dec bc                                        ; $7640: $0b
    dec b                                         ; $7641: $05
    dec bc                                        ; $7642: $0b
    dec bc                                        ; $7643: $0b
    dec bc                                        ; $7644: $0b
    dec b                                         ; $7645: $05
    dec bc                                        ; $7646: $0b
    dec bc                                        ; $7647: $0b
    dec bc                                        ; $7648: $0b
    dec b                                         ; $7649: $05
    rlca                                          ; $764a: $07
    ld bc, $5406                                  ; $764b: $01 $06 $54
    ld d, l                                       ; $764e: $55
    adc b                                         ; $764f: $88
    ld a, l                                       ; $7650: $7d
    rlca                                          ; $7651: $07
    ld [$4c09], sp                                ; $7652: $08 $09 $4c
    dec bc                                        ; $7655: $0b
    inc c                                         ; $7656: $0c
    dec c                                         ; $7657: $0d
    ld c, l                                       ; $7658: $4d
    rrca                                          ; $7659: $0f
    db $10                                        ; $765a: $10
    ld de, $0671                                  ; $765b: $11 $71 $06
    ld b, $0e                                     ; $765e: $06 $0e
    ld bc, $0101                                  ; $7660: $01 $01 $01
    ld bc, $0107                                  ; $7663: $01 $07 $01
    ld bc, $0101                                  ; $7666: $01 $01 $01
    rlca                                          ; $7669: $07
    ld bc, $0101                                  ; $766a: $01 $01 $01
    ld d, b                                       ; $766d: $50
    ld d, c                                       ; $766e: $51
    ld d, d                                       ; $766f: $52
    ld d, e                                       ; $7670: $53
    ld a, [$fcfb]                                 ; $7671: $fa $fb $fc
    db $fd                                        ; $7674: $fd

Jump_087_7675:
    cp $ff                                        ; $7675: $fe $ff
    nop                                           ; $7677: $00
    ld bc, $0302                                  ; $7678: $01 $02 $03
    inc b                                         ; $767b: $04
    dec b                                         ; $767c: $05
    rlca                                          ; $767d: $07
    rlca                                          ; $767e: $07
    ld bc, $0701                                  ; $767f: $01 $01 $07
    ld bc, $0101                                  ; $7682: $01 $01 $01
    ld bc, $0101                                  ; $7685: $01 $01 $01
    rlca                                          ; $7688: $07
    rlca                                          ; $7689: $07
    rlca                                          ; $768a: $07
    ld bc, $0007                                  ; $768b: $01 $07 $00
    ld bc, $0302                                  ; $768e: $01 $02 $03
    inc b                                         ; $7691: $04
    dec b                                         ; $7692: $05
    ld b, $07                                     ; $7693: $06 $07
    ld [$0a09], sp                                ; $7695: $08 $09 $0a
    dec bc                                        ; $7698: $0b
    inc c                                         ; $7699: $0c
    dec c                                         ; $769a: $0d
    ld c, $0f                                     ; $769b: $0e $0f
    ld c, $0e                                     ; $769d: $0e $0e
    ld c, $0e                                     ; $769f: $0e $0e
    ld c, $0e                                     ; $76a1: $0e $0e
    ld c, $0e                                     ; $76a3: $0e $0e
    ld c, $0e                                     ; $76a5: $0e $0e
    ld c, $0e                                     ; $76a7: $0e $0e
    ld c, $0e                                     ; $76a9: $0e $0e
    ld c, $0e                                     ; $76ab: $0e $0e
    db $10                                        ; $76ad: $10
    ld de, $2423                                  ; $76ae: $11 $23 $24
    ld [de], a                                    ; $76b1: $12
    inc de                                        ; $76b2: $13
    daa                                           ; $76b3: $27
    jr z, @+$16                                   ; $76b4: $28 $14

    dec d                                         ; $76b6: $15
    ld d, $2c                                     ; $76b7: $16 $2c
    rla                                           ; $76b9: $17
    jr jr_087_76d5                                ; $76ba: $18 $19

    ld a, [de]                                    ; $76bc: $1a
    ld c, $09                                     ; $76bd: $0e $09
    ld bc, $0e07                                  ; $76bf: $01 $07 $0e
    ld c, $01                                     ; $76c2: $0e $01
    ld bc, $0e0e                                  ; $76c4: $01 $0e $0e
    add hl, bc                                    ; $76c7: $09
    ld bc, $0e0e                                  ; $76c8: $01 $0e $0e
    ld c, $0f                                     ; $76cb: $0e $0f
    ld sp, $3332                                  ; $76cd: $31 $32 $33
    ld [hl], e                                    ; $76d0: $73
    dec [hl]                                      ; $76d1: $35
    ld [hl], $75                                  ; $76d2: $36 $75
    halt                                          ; $76d4: $76

jr_087_76d5:
    add hl, sp                                    ; $76d5: $39
    ld a, [hl-]                                   ; $76d6: $3a
    ld a, b                                       ; $76d7: $78
    ld a, c                                       ; $76d8: $79
    dec a                                         ; $76d9: $3d
    ld a, $7a                                     ; $76da: $3e $7a
    ld a, e                                       ; $76dc: $7b
    rlca                                          ; $76dd: $07
    ld b, $06                                     ; $76de: $06 $06
    ld b, $01                                     ; $76e0: $06 $01
    ld b, $01                                     ; $76e2: $06 $01
    rlca                                          ; $76e4: $07
    ld bc, $0101                                  ; $76e5: $01 $01 $01
    ld b, $01                                     ; $76e8: $06 $01
    ld b, $06                                     ; $76ea: $06 $06
    ld bc, $2221                                  ; $76ec: $01 $21 $22
    inc hl                                        ; $76ef: $23
    inc h                                         ; $76f0: $24
    dec h                                         ; $76f1: $25
    ld h, $27                                     ; $76f2: $26 $27
    jr z, jr_087_771f                             ; $76f4: $28 $29

    ld a, [hl+]                                   ; $76f6: $2a
    dec hl                                        ; $76f7: $2b
    inc l                                         ; $76f8: $2c
    dec l                                         ; $76f9: $2d
    ld l, $2f                                     ; $76fa: $2e $2f
    jr nc, jr_087_7704                            ; $76fc: $30 $06

    ld bc, $0606                                  ; $76fe: $01 $06 $06
    ld bc, $0701                                  ; $7701: $01 $01 $07

jr_087_7704:
    rlca                                          ; $7704: $07
    ld b, $01                                     ; $7705: $06 $01
    rlca                                          ; $7707: $07
    ld bc, $0701                                  ; $7708: $01 $01 $07
    rlca                                          ; $770b: $07
    rlca                                          ; $770c: $07
    dec de                                        ; $770d: $1b
    inc e                                         ; $770e: $1c
    dec e                                         ; $770f: $1d
    ld e, $1f                                     ; $7710: $1e $1f
    jr nz, jr_087_7735                            ; $7712: $20 $21

    ld [hl+], a                                   ; $7714: $22
    inc hl                                        ; $7715: $23
    inc h                                         ; $7716: $24
    dec h                                         ; $7717: $25
    ld h, $0f                                     ; $7718: $26 $0f
    daa                                           ; $771a: $27
    jr z, @+$73                                   ; $771b: $28 $71

    ld c, $0e                                     ; $771d: $0e $0e

jr_087_771f:
    ld c, $0e                                     ; $771f: $0e $0e
    ld c, $0e                                     ; $7721: $0e $0e
    ld c, $0e                                     ; $7723: $0e $0e

jr_087_7725:
    ld c, $0e                                     ; $7725: $0e $0e
    ld c, $09                                     ; $7727: $0e $09
    rlca                                          ; $7729: $07
    add hl, bc                                    ; $772a: $09
    add hl, bc                                    ; $772b: $09
    ld b, $29                                     ; $772c: $06 $29
    ld a, [hl+]                                   ; $772e: $2a
    dec hl                                        ; $772f: $2b
    ld d, e                                       ; $7730: $53
    inc l                                         ; $7731: $2c
    dec l                                         ; $7732: $2d
    ld l, $fd                                     ; $7733: $2e $fd

jr_087_7735:
    cpl                                           ; $7735: $2f
    rst $38                                       ; $7736: $ff
    nop                                           ; $7737: $00
    ld bc, $0302                                  ; $7738: $01 $02 $03
    inc b                                         ; $773b: $04
    dec b                                         ; $773c: $05
    ld c, $0e                                     ; $773d: $0e $0e
    rrca                                          ; $773f: $0f
    ld bc, $090e                                  ; $7740: $01 $0e $09
    add hl, bc                                    ; $7743: $09
    ld b, $0e                                     ; $7744: $06 $0e
    ld b, $06                                     ; $7746: $06 $06
    rlca                                          ; $7748: $07
    ld bc, $0101                                  ; $7749: $01 $01 $01
    ld bc, $5554                                  ; $774c: $01 $54 $55
    adc b                                         ; $774f: $88
    rlc a                                         ; $7750: $cb $07
    ld [$3009], sp                                ; $7752: $08 $09 $30
    dec bc                                        ; $7755: $0b
    inc c                                         ; $7756: $0c
    dec c                                         ; $7757: $0d
    ld sp, $100f                                  ; $7758: $31 $0f $10
    ld de, $0112                                  ; $775b: $11 $12 $01
    ld bc, $090f                                  ; $775e: $01 $0f $09
    ld bc, $0107                                  ; $7761: $01 $07 $01
    add hl, bc                                    ; $7764: $09
    rlca                                          ; $7765: $07
    ld bc, $0901                                  ; $7766: $01 $01 $09
    ld bc, $0606                                  ; $7769: $01 $06 $06
    ld bc, $3332                                  ; $776c: $01 $32 $33
    inc [hl]                                      ; $776f: $34
    ld d, e                                       ; $7770: $53
    and h                                         ; $7771: $a4
    and l                                         ; $7772: $a5
    pop de                                        ; $7773: $d1
    dec [hl]                                      ; $7774: $35
    xor e                                         ; $7775: $ab
    ld [hl], $a5                                  ; $7776: $36 $a5
    scf                                           ; $7778: $37
    xor a                                         ; $7779: $af
    jr c, jr_087_7725                             ; $777a: $38 $a9

    add hl, sp                                    ; $777c: $39
    add hl, bc                                    ; $777d: $09
    add hl, bc                                    ; $777e: $09
    add hl, bc                                    ; $777f: $09
    ld bc, $8c8c                                  ; $7780: $01 $8c $8c
    add hl, bc                                    ; $7783: $09
    add hl, bc                                    ; $7784: $09
    adc h                                         ; $7785: $8c
    adc h                                         ; $7786: $8c
    adc h                                         ; $7787: $8c
    add hl, bc                                    ; $7788: $09
    inc c                                         ; $7789: $0c
    adc h                                         ; $778a: $8c
    inc c                                         ; $778b: $0c
    dec c                                         ; $778c: $0d
    ld sp, $3332                                  ; $778d: $31 $32 $33
    ld [hl], e                                    ; $7790: $73
    dec [hl]                                      ; $7791: $35
    ld [hl], $75                                  ; $7792: $36 $75
    halt                                          ; $7794: $76
    add hl, sp                                    ; $7795: $39
    ld a, [hl-]                                   ; $7796: $3a
    ld a, b                                       ; $7797: $78
    ld a, c                                       ; $7798: $79
    dec a                                         ; $7799: $3d
    ld a, $7a                                     ; $779a: $3e $7a
    ld a, e                                       ; $779c: $7b
    ld bc, $0107                                  ; $779d: $01 $07 $01
    ld bc, $0601                                  ; $77a0: $01 $01 $06
    rlca                                          ; $77a3: $07
    ld bc, $0106                                  ; $77a4: $01 $06 $01
    ld bc, $0107                                  ; $77a7: $01 $07 $01
    ld b, $01                                     ; $77aa: $06 $01
    ld bc, $2221                                  ; $77ac: $01 $21 $22
    inc hl                                        ; $77af: $23
    inc h                                         ; $77b0: $24
    dec h                                         ; $77b1: $25
    ld h, $27                                     ; $77b2: $26 $27
    jr z, jr_087_77df                             ; $77b4: $28 $29

    ld a, [hl+]                                   ; $77b6: $2a
    dec hl                                        ; $77b7: $2b
    inc l                                         ; $77b8: $2c
    dec l                                         ; $77b9: $2d
    ld l, $2f                                     ; $77ba: $2e $2f
    jr nc, @+$03                                  ; $77bc: $30 $01

    ld bc, $0101                                  ; $77be: $01 $01 $01
    ld bc, $0101                                  ; $77c1: $01 $01 $01
    rlca                                          ; $77c4: $07
    rlca                                          ; $77c5: $07
    ld bc, $0701                                  ; $77c6: $01 $01 $07
    rlca                                          ; $77c9: $07
    ld bc, $0101                                  ; $77ca: $01 $01 $01
    ld sp, $3332                                  ; $77cd: $31 $32 $33
    sbc a                                         ; $77d0: $9f
    dec [hl]                                      ; $77d1: $35
    ld [hl], $75                                  ; $77d2: $36 $75
    ld a, [hl-]                                   ; $77d4: $3a
    add hl, sp                                    ; $77d5: $39
    ld a, [hl-]                                   ; $77d6: $3a
    ld a, b                                       ; $77d7: $78
    dec sp                                        ; $77d8: $3b
    dec a                                         ; $77d9: $3d
    ld a, $7a                                     ; $77da: $3e $7a
    ld a, e                                       ; $77dc: $7b
    ld b, $07                                     ; $77dd: $06 $07

jr_087_77df:
    ld b, $09                                     ; $77df: $06 $09
    rlca                                          ; $77e1: $07
    ld bc, $0901                                  ; $77e2: $01 $01 $09
    rlca                                          ; $77e5: $07
    ld bc, $0f01                                  ; $77e6: $01 $01 $0f
    ld bc, $0601                                  ; $77e9: $01 $01 $06
    ld b, $cd                                     ; $77ec: $06 $cd
    inc a                                         ; $77ee: $3c
    xor l                                         ; $77ef: $ad
    dec a                                         ; $77f0: $3d
    ret nc                                        ; $77f1: $d0

    ld a, $b1                                     ; $77f2: $3e $b1
    xor d                                         ; $77f4: $aa
    ccf                                           ; $77f5: $3f
    ret nc                                        ; $77f6: $d0

    rst $08                                       ; $77f7: $cf
    xor [hl]                                      ; $77f8: $ae
    ld b, b                                       ; $77f9: $40
    ld b, c                                       ; $77fa: $41
    ld b, d                                       ; $77fb: $42
    jr nc, @+$0e                                  ; $77fc: $30 $0c

    inc c                                         ; $77fe: $0c
    inc c                                         ; $77ff: $0c
    dec c                                         ; $7800: $0d
    inc c                                         ; $7801: $0c
    inc c                                         ; $7802: $0c
    inc c                                         ; $7803: $0c
    dec c                                         ; $7804: $0d
    add hl, bc                                    ; $7805: $09
    inc c                                         ; $7806: $0c
    inc c                                         ; $7807: $0c
    dec c                                         ; $7808: $0d
    ld c, $09                                     ; $7809: $0e $09
    add hl, bc                                    ; $780b: $09
    dec b                                         ; $780c: $05
    ld d, h                                       ; $780d: $54
    ld d, l                                       ; $780e: $55
    adc b                                         ; $780f: $88
    ld a, l                                       ; $7810: $7d
    rlca                                          ; $7811: $07
    ld [$4c09], sp                                ; $7812: $08 $09 $4c
    dec bc                                        ; $7815: $0b
    inc c                                         ; $7816: $0c
    dec c                                         ; $7817: $0d
    ld c, l                                       ; $7818: $4d
    rrca                                          ; $7819: $0f
    db $10                                        ; $781a: $10
    ld de, $0171                                  ; $781b: $11 $71 $01
    ld b, $09                                     ; $781e: $06 $09
    rlca                                          ; $7820: $07
    ld b, $01                                     ; $7821: $06 $01
    rlca                                          ; $7823: $07
    ld bc, $0707                                  ; $7824: $01 $07 $07
    ld bc, $0106                                  ; $7827: $01 $06 $01
    ld b, $06                                     ; $782a: $06 $06
    ld bc, $5150                                  ; $782c: $01 $50 $51
    ld d, d                                       ; $782f: $52
    ld d, e                                       ; $7830: $53
    ld a, [$fcfb]                                 ; $7831: $fa $fb $fc
    db $fd                                        ; $7834: $fd
    cp $ff                                        ; $7835: $fe $ff
    nop                                           ; $7837: $00
    ld bc, $0302                                  ; $7838: $01 $02 $03
    inc b                                         ; $783b: $04
    dec b                                         ; $783c: $05
    rlca                                          ; $783d: $07
    ld bc, $0101                                  ; $783e: $01 $01 $01
    ld bc, $0106                                  ; $7841: $01 $06 $01
    rlca                                          ; $7844: $07
    ld b, $06                                     ; $7845: $06 $06
    ld bc, $0101                                  ; $7847: $01 $01 $01
    rlca                                          ; $784a: $07
    ld bc, $5401                                  ; $784b: $01 $01 $54
    ld d, l                                       ; $784e: $55
    adc b                                         ; $784f: $88
    ld a, l                                       ; $7850: $7d
    rlca                                          ; $7851: $07
    ld [$4c09], sp                                ; $7852: $08 $09 $4c
    dec bc                                        ; $7855: $0b
    inc c                                         ; $7856: $0c
    dec c                                         ; $7857: $0d
    ld c, l                                       ; $7858: $4d
    rrca                                          ; $7859: $0f
    db $10                                        ; $785a: $10
    ld de, $0771                                  ; $785b: $11 $71 $07
    rlca                                          ; $785e: $07
    add hl, bc                                    ; $785f: $09
    ld bc, $0101                                  ; $7860: $01 $01 $01
    ld bc, $0101                                  ; $7863: $01 $01 $01
    ld bc, $0101                                  ; $7866: $01 $01 $01
    rlca                                          ; $7869: $07
    ld b, $06                                     ; $786a: $06 $06
    ld bc, $5150                                  ; $786c: $01 $50 $51
    ld d, d                                       ; $786f: $52
    ld d, e                                       ; $7870: $53
    ld a, [$fcfb]                                 ; $7871: $fa $fb $fc
    db $fd                                        ; $7874: $fd
    cp $ff                                        ; $7875: $fe $ff
    nop                                           ; $7877: $00
    ld bc, $0302                                  ; $7878: $01 $02 $03
    inc b                                         ; $787b: $04
    dec b                                         ; $787c: $05
    ld b, $01                                     ; $787d: $06 $01
    ld bc, $0605                                  ; $787f: $01 $05 $06
    ld bc, $0501                                  ; $7882: $01 $01 $05
    ld bc, $0101                                  ; $7885: $01 $01 $01
    dec b                                         ; $7888: $05
    rlca                                          ; $7889: $07
    ld b, $01                                     ; $788a: $06 $01
    dec b                                         ; $788c: $05
    ld sp, $1d32                                  ; $788d: $31 $32 $1d
    ld c, e                                       ; $7890: $4b
    dec [hl]                                      ; $7891: $35
    ld [hl], $1d                                  ; $7892: $36 $1d
    ld c, e                                       ; $7894: $4b
    add hl, sp                                    ; $7895: $39
    ld a, [hl-]                                   ; $7896: $3a
    dec e                                         ; $7897: $1d
    ld c, e                                       ; $7898: $4b
    dec a                                         ; $7899: $3d
    ld a, $1d                                     ; $789a: $3e $1d
    ld c, e                                       ; $789c: $4b
    ld bc, $8205                                  ; $789d: $01 $05 $82
    and d                                         ; $78a0: $a2
    ld bc, $8205                                  ; $78a1: $01 $05 $82
    and d                                         ; $78a4: $a2
    rlca                                          ; $78a5: $07
    dec b                                         ; $78a6: $05
    add d                                         ; $78a7: $82
    and d                                         ; $78a8: $a2
    rlca                                          ; $78a9: $07
    dec b                                         ; $78aa: $05
    add d                                         ; $78ab: $82
    and d                                         ; $78ac: $a2
    ld d, h                                       ; $78ad: $54
    ld d, l                                       ; $78ae: $55
    jp nc, $f34b                                  ; $78af: $d2 $4b $f3

    db $f4                                        ; $78b2: $f4
    push af                                       ; $78b3: $f5
    ld c, e                                       ; $78b4: $4b
    jp nc, $d1d1                                  ; $78b5: $d2 $d1 $d1

    pop de                                        ; $78b8: $d1
    jp nc, $d1d1                                  ; $78b9: $d2 $d1 $d1

    pop de                                        ; $78bc: $d1
    ld bc, $8205                                  ; $78bd: $01 $05 $82
    and d                                         ; $78c0: $a2
    add d                                         ; $78c1: $82
    add d                                         ; $78c2: $82
    add d                                         ; $78c3: $82
    and d                                         ; $78c4: $a2
    add d                                         ; $78c5: $82
    add d                                         ; $78c6: $82
    add d                                         ; $78c7: $82
    add d                                         ; $78c8: $82
    add d                                         ; $78c9: $82
    add d                                         ; $78ca: $82
    add d                                         ; $78cb: $82
    add d                                         ; $78cc: $82
    ld c, e                                       ; $78cd: $4b
    dec e                                         ; $78ce: $1d
    inc sp                                        ; $78cf: $33
    ld [hl], e                                    ; $78d0: $73
    ld c, e                                       ; $78d1: $4b
    jp nc, Jump_087_7675                          ; $78d2: $d2 $75 $76

    ld c, e                                       ; $78d5: $4b
    ld c, [hl]                                    ; $78d6: $4e
    db $f4                                        ; $78d7: $f4
    ld c, a                                       ; $78d8: $4f
    pop de                                        ; $78d9: $d1
    pop de                                        ; $78da: $d1
    pop de                                        ; $78db: $d1
    jp nc, $8282                                  ; $78dc: $d2 $82 $82

    dec b                                         ; $78df: $05
    dec b                                         ; $78e0: $05
    add d                                         ; $78e1: $82
    add d                                         ; $78e2: $82
    dec b                                         ; $78e3: $05
    ld bc, $8282                                  ; $78e4: $01 $82 $82
    add d                                         ; $78e7: $82
    add d                                         ; $78e8: $82
    add d                                         ; $78e9: $82
    add d                                         ; $78ea: $82
    add d                                         ; $78eb: $82
    add d                                         ; $78ec: $82
    ld hl, $2322                                  ; $78ed: $21 $22 $23
    inc h                                         ; $78f0: $24
    db $eb                                        ; $78f1: $eb
    db $ec                                        ; $78f2: $ec
    db $ed                                        ; $78f3: $ed
    xor d                                         ; $78f4: $aa
    xor $ef                                       ; $78f5: $ee $ef
    ldh a, [$f1]                                  ; $78f7: $f0 $f1
    ld a, [c]                                     ; $78f9: $f2
    di                                            ; $78fa: $f3
    db $f4                                        ; $78fb: $f4
    push af                                       ; $78fc: $f5
    dec b                                         ; $78fd: $05
    ld bc, $0101                                  ; $78fe: $01 $01 $01
    add hl, bc                                    ; $7901: $09
    add hl, bc                                    ; $7902: $09
    rrca                                          ; $7903: $0f
    add hl, bc                                    ; $7904: $09
    add hl, bc                                    ; $7905: $09
    adc e                                         ; $7906: $8b
    adc e                                         ; $7907: $8b
    adc e                                         ; $7908: $8b
    add hl, bc                                    ; $7909: $09
    adc e                                         ; $790a: $8b
    adc e                                         ; $790b: $8b
    adc e                                         ; $790c: $8b
    ld sp, $3332                                  ; $790d: $31 $32 $33
    ld [hl], e                                    ; $7910: $73
    dec [hl]                                      ; $7911: $35
    ld [hl], $75                                  ; $7912: $36 $75
    halt                                          ; $7914: $76
    or $3a                                        ; $7915: $f6 $3a
    ld a, b                                       ; $7917: $78
    ld a, c                                       ; $7918: $79
    dec a                                         ; $7919: $3d
    ld a, $7a                                     ; $791a: $3e $7a
    ld a, e                                       ; $791c: $7b
    ld bc, $0107                                  ; $791d: $01 $07 $01
    ld bc, $0101                                  ; $7920: $01 $01 $01
    rlca                                          ; $7923: $07
    ld bc, $0109                                  ; $7924: $01 $09 $01
    ld bc, $0601                                  ; $7927: $01 $01 $06
    ld bc, $0707                                  ; $792a: $01 $07 $07
    ld hl, $2322                                  ; $792d: $21 $22 $23
    inc h                                         ; $7930: $24
    dec h                                         ; $7931: $25
    ld h, $27                                     ; $7932: $26 $27
    jr z, jr_087_795f                             ; $7934: $28 $29

    ld a, [hl+]                                   ; $7936: $2a
    dec hl                                        ; $7937: $2b
    inc l                                         ; $7938: $2c
    dec l                                         ; $7939: $2d
    ld l, $2f                                     ; $793a: $2e $2f
    jr nc, @+$03                                  ; $793c: $30 $01

    ld bc, $0107                                  ; $793e: $01 $07 $01
    ld bc, $0101                                  ; $7941: $01 $01 $01
    ld b, $01                                     ; $7944: $06 $01
    ld bc, $0101                                  ; $7946: $01 $01 $01
    ld bc, $0107                                  ; $7949: $01 $07 $01
    rlca                                          ; $794c: $07
    ld d, b                                       ; $794d: $50
    rst $30                                       ; $794e: $f7
    ld hl, sp-$07                                 ; $794f: $f8 $f9
    ld a, [$fbfa]                                 ; $7951: $fa $fa $fb
    db $fc                                        ; $7954: $fc
    cp $fd                                        ; $7955: $fe $fd
    cp $ff                                        ; $7957: $fe $ff
    ld [bc], a                                    ; $7959: $02
    inc bc                                        ; $795a: $03
    inc b                                         ; $795b: $04
    dec b                                         ; $795c: $05
    dec b                                         ; $795d: $05
    dec bc                                        ; $795e: $0b

jr_087_795f:
    dec bc                                        ; $795f: $0b
    dec bc                                        ; $7960: $0b
    dec b                                         ; $7961: $05
    dec bc                                        ; $7962: $0b
    dec bc                                        ; $7963: $0b
    dec bc                                        ; $7964: $0b
    dec b                                         ; $7965: $05
    dec bc                                        ; $7966: $0b
    dec bc                                        ; $7967: $0b
    dec bc                                        ; $7968: $0b
    dec b                                         ; $7969: $05
    ld bc, $0607                                  ; $796a: $01 $07 $06
    ld d, h                                       ; $796d: $54
    ld d, l                                       ; $796e: $55
    adc b                                         ; $796f: $88
    ld a, l                                       ; $7970: $7d
    rlca                                          ; $7971: $07
    ld [$4c09], sp                                ; $7972: $08 $09 $4c
    dec bc                                        ; $7975: $0b
    inc c                                         ; $7976: $0c
    dec c                                         ; $7977: $0d
    ld c, l                                       ; $7978: $4d
    rrca                                          ; $7979: $0f
    db $10                                        ; $797a: $10
    ld de, $0671                                  ; $797b: $11 $71 $06
    ld bc, $010f                                  ; $797e: $01 $0f $01
    rlca                                          ; $7981: $07
    ld b, $01                                     ; $7982: $06 $01
    ld b, $01                                     ; $7984: $06 $01
    rlca                                          ; $7986: $07
    ld b, $06                                     ; $7987: $06 $06
    ld bc, $0707                                  ; $7989: $01 $07 $07
    ld bc, $5150                                  ; $798c: $01 $50 $51
    ld d, d                                       ; $798f: $52
    ld d, e                                       ; $7990: $53
    ld a, [$fcfb]                                 ; $7991: $fa $fb $fc
    db $fd                                        ; $7994: $fd
    cp $ff                                        ; $7995: $fe $ff
    nop                                           ; $7997: $00
    ld bc, $0302                                  ; $7998: $01 $02 $03
    inc b                                         ; $799b: $04
    dec b                                         ; $799c: $05
    ld bc, $0706                                  ; $799d: $01 $06 $07
    ld b, $06                                     ; $79a0: $06 $06
    ld bc, $0707                                  ; $79a2: $01 $07 $07
    rlca                                          ; $79a5: $07
    ld bc, $0101                                  ; $79a6: $01 $01 $01
    rlca                                          ; $79a9: $07
    rlca                                          ; $79aa: $07
    ld b, $06                                     ; $79ab: $06 $06
    ld hl, $2322                                  ; $79ad: $21 $22 $23
    inc h                                         ; $79b0: $24
    dec h                                         ; $79b1: $25
    ld h, $27                                     ; $79b2: $26 $27
    jr z, jr_087_79df                             ; $79b4: $28 $29

    ld a, [hl+]                                   ; $79b6: $2a
    dec hl                                        ; $79b7: $2b
    inc l                                         ; $79b8: $2c
    dec l                                         ; $79b9: $2d
    ld l, $2f                                     ; $79ba: $2e $2f
    jr nc, @+$07                                  ; $79bc: $30 $05

    ld bc, $0606                                  ; $79be: $01 $06 $06
    dec b                                         ; $79c1: $05
    ld bc, $0107                                  ; $79c2: $01 $07 $01
    dec b                                         ; $79c5: $05
    ld b, $06                                     ; $79c6: $06 $06
    rlca                                          ; $79c8: $07
    dec b                                         ; $79c9: $05
    ld b, $01                                     ; $79ca: $06 $01
    rlca                                          ; $79cc: $07
    ld sp, $3332                                  ; $79cd: $31 $32 $33
    ld [hl], e                                    ; $79d0: $73
    dec [hl]                                      ; $79d1: $35
    ld [hl], $75                                  ; $79d2: $36 $75
    halt                                          ; $79d4: $76
    add hl, sp                                    ; $79d5: $39
    ld a, [hl-]                                   ; $79d6: $3a
    ld a, b                                       ; $79d7: $78
    ld a, c                                       ; $79d8: $79
    dec a                                         ; $79d9: $3d
    ld a, $7a                                     ; $79da: $3e $7a
    ld a, e                                       ; $79dc: $7b
    ld b, $01                                     ; $79dd: $06 $01

jr_087_79df:
    ld bc, $0601                                  ; $79df: $01 $01 $06
    rlca                                          ; $79e2: $07
    rlca                                          ; $79e3: $07
    ld b, $01                                     ; $79e4: $06 $01
    ld bc, $0601                                  ; $79e6: $01 $01 $06
    rlca                                          ; $79e9: $07
    ld bc, $0101                                  ; $79ea: $01 $01 $01
    ld hl, $2322                                  ; $79ed: $21 $22 $23
    inc h                                         ; $79f0: $24
    dec h                                         ; $79f1: $25
    ld h, $27                                     ; $79f2: $26 $27
    jr z, jr_087_7a1f                             ; $79f4: $28 $29

    ld a, [hl+]                                   ; $79f6: $2a
    dec hl                                        ; $79f7: $2b
    inc l                                         ; $79f8: $2c
    dec l                                         ; $79f9: $2d
    ld l, $2f                                     ; $79fa: $2e $2f
    jr nc, @+$03                                  ; $79fc: $30 $01

    ld b, $01                                     ; $79fe: $06 $01
    ld b, $01                                     ; $7a00: $06 $01
    ld bc, $0607                                  ; $7a02: $01 $07 $06
    ld bc, $0601                                  ; $7a05: $01 $01 $06
    ld bc, $0107                                  ; $7a08: $01 $07 $01
    ld b, $07                                     ; $7a0b: $06 $07
    pop de                                        ; $7a0d: $d1
    pop de                                        ; $7a0e: $d1
    pop de                                        ; $7a0f: $d1
    ld c, [hl]                                    ; $7a10: $4e
    pop de                                        ; $7a11: $d1
    pop de                                        ; $7a12: $d1
    pop de                                        ; $7a13: $d1
    pop de                                        ; $7a14: $d1
    pop de                                        ; $7a15: $d1
    pop de                                        ; $7a16: $d1
    pop de                                        ; $7a17: $d1
    pop de                                        ; $7a18: $d1
    pop de                                        ; $7a19: $d1
    pop de                                        ; $7a1a: $d1
    pop de                                        ; $7a1b: $d1
    pop de                                        ; $7a1c: $d1
    add d                                         ; $7a1d: $82
    add d                                         ; $7a1e: $82

jr_087_7a1f:
    add d                                         ; $7a1f: $82
    add d                                         ; $7a20: $82
    add d                                         ; $7a21: $82
    add d                                         ; $7a22: $82
    add d                                         ; $7a23: $82
    add d                                         ; $7a24: $82
    add d                                         ; $7a25: $82
    add d                                         ; $7a26: $82
    add d                                         ; $7a27: $82
    add d                                         ; $7a28: $82
    add d                                         ; $7a29: $82
    add d                                         ; $7a2a: $82
    add d                                         ; $7a2b: $82
    add d                                         ; $7a2c: $82
    db $f4                                        ; $7a2d: $f4
    db $f4                                        ; $7a2e: $f4
    db $f4                                        ; $7a2f: $f4
    db $f4                                        ; $7a30: $f4
    pop de                                        ; $7a31: $d1
    pop de                                        ; $7a32: $d1
    pop de                                        ; $7a33: $d1
    pop de                                        ; $7a34: $d1
    pop de                                        ; $7a35: $d1
    pop de                                        ; $7a36: $d1
    pop de                                        ; $7a37: $d1
    pop de                                        ; $7a38: $d1
    pop de                                        ; $7a39: $d1
    pop de                                        ; $7a3a: $d1
    pop de                                        ; $7a3b: $d1
    pop de                                        ; $7a3c: $d1
    add d                                         ; $7a3d: $82
    add d                                         ; $7a3e: $82
    add d                                         ; $7a3f: $82
    add d                                         ; $7a40: $82
    add d                                         ; $7a41: $82
    add d                                         ; $7a42: $82
    add d                                         ; $7a43: $82
    add d                                         ; $7a44: $82
    add d                                         ; $7a45: $82
    add d                                         ; $7a46: $82
    add d                                         ; $7a47: $82
    add d                                         ; $7a48: $82
    add d                                         ; $7a49: $82
    add d                                         ; $7a4a: $82
    add d                                         ; $7a4b: $82
    add d                                         ; $7a4c: $82
    db $f4                                        ; $7a4d: $f4
    ld c, a                                       ; $7a4e: $4f
    ld d, d                                       ; $7a4f: $52
    ld d, e                                       ; $7a50: $53
    pop de                                        ; $7a51: $d1
    ld c, [hl]                                    ; $7a52: $4e
    db $f4                                        ; $7a53: $f4
    ld b, e                                       ; $7a54: $43
    pop de                                        ; $7a55: $d1
    pop de                                        ; $7a56: $d1
    ld b, h                                       ; $7a57: $44
    ld b, h                                       ; $7a58: $44
    pop de                                        ; $7a59: $d1
    pop de                                        ; $7a5a: $d1
    pop de                                        ; $7a5b: $d1
    pop de                                        ; $7a5c: $d1
    add d                                         ; $7a5d: $82
    add d                                         ; $7a5e: $82
    ld b, $06                                     ; $7a5f: $06 $06
    add d                                         ; $7a61: $82
    add d                                         ; $7a62: $82
    add d                                         ; $7a63: $82
    adc d                                         ; $7a64: $8a
    add d                                         ; $7a65: $82
    add d                                         ; $7a66: $82
    adc d                                         ; $7a67: $8a
    adc d                                         ; $7a68: $8a
    add d                                         ; $7a69: $82
    add d                                         ; $7a6a: $82
    add d                                         ; $7a6b: $82
    add d                                         ; $7a6c: $82
    ld sp, $3332                                  ; $7a6d: $31 $32 $33
    ld [hl], e                                    ; $7a70: $73
    dec [hl]                                      ; $7a71: $35
    ld [hl], $75                                  ; $7a72: $36 $75
    halt                                          ; $7a74: $76
    add hl, sp                                    ; $7a75: $39
    ld a, [hl-]                                   ; $7a76: $3a
    ld a, b                                       ; $7a77: $78
    ld a, c                                       ; $7a78: $79
    dec a                                         ; $7a79: $3d
    ld a, $7a                                     ; $7a7a: $3e $7a
    ld a, e                                       ; $7a7c: $7b
    ld b, $01                                     ; $7a7d: $06 $01
    ld bc, $0607                                  ; $7a7f: $01 $07 $06
    ld bc, $0101                                  ; $7a82: $01 $01 $01
    ld bc, $0107                                  ; $7a85: $01 $07 $01
    ld b, $01                                     ; $7a88: $06 $01
    ld b, $07                                     ; $7a8a: $06 $07
    ld bc, $2221                                  ; $7a8c: $01 $21 $22
    inc hl                                        ; $7a8f: $23
    inc h                                         ; $7a90: $24
    dec h                                         ; $7a91: $25
    ld h, $27                                     ; $7a92: $26 $27
    jr z, @+$2b                                   ; $7a94: $28 $29

    ld a, [hl+]                                   ; $7a96: $2a
    dec hl                                        ; $7a97: $2b
    inc l                                         ; $7a98: $2c
    dec l                                         ; $7a99: $2d
    ld l, $2f                                     ; $7a9a: $2e $2f
    jr nc, @+$09                                  ; $7a9c: $30 $07

    ld bc, $0707                                  ; $7a9e: $01 $07 $07
    ld bc, $0107                                  ; $7aa1: $01 $07 $01
    ld bc, $0101                                  ; $7aa4: $01 $01 $01
    ld b, $01                                     ; $7aa7: $06 $01
    ld bc, $0601                                  ; $7aa9: $01 $01 $06
    ld bc, $3231                                  ; $7aac: $01 $31 $32
    inc sp                                        ; $7aaf: $33
    ld [hl], e                                    ; $7ab0: $73
    dec [hl]                                      ; $7ab1: $35
    ld [hl], $75                                  ; $7ab2: $36 $75
    halt                                          ; $7ab4: $76
    add hl, sp                                    ; $7ab5: $39
    ld a, [hl-]                                   ; $7ab6: $3a
    ld a, b                                       ; $7ab7: $78
    ld a, c                                       ; $7ab8: $79
    dec a                                         ; $7ab9: $3d
    ld a, $7a                                     ; $7aba: $3e $7a
    ld a, e                                       ; $7abc: $7b
    rlca                                          ; $7abd: $07
    ld bc, $0601                                  ; $7abe: $01 $01 $06
    ld bc, $0701                                  ; $7ac1: $01 $01 $07
    ld bc, $0101                                  ; $7ac4: $01 $01 $01
    ld bc, $0701                                  ; $7ac7: $01 $01 $07
    ld bc, $0106                                  ; $7aca: $01 $06 $01
    ld hl, $2322                                  ; $7acd: $21 $22 $23
    inc h                                         ; $7ad0: $24
    dec h                                         ; $7ad1: $25
    ld h, $27                                     ; $7ad2: $26 $27
    jr z, @+$2b                                   ; $7ad4: $28 $29

    ld a, [hl+]                                   ; $7ad6: $2a
    dec hl                                        ; $7ad7: $2b
    inc l                                         ; $7ad8: $2c
    dec l                                         ; $7ad9: $2d
    ld l, $2f                                     ; $7ada: $2e $2f
    jr nc, jr_087_7ae4                            ; $7adc: $30 $06

    ld bc, $0501                                  ; $7ade: $01 $01 $05
    ld bc, $0101                                  ; $7ae1: $01 $01 $01

jr_087_7ae4:
    dec b                                         ; $7ae4: $05
    ld bc, $0101                                  ; $7ae5: $01 $01 $01
    dec b                                         ; $7ae8: $05
    rlca                                          ; $7ae9: $07
    ld bc, $0506                                  ; $7aea: $01 $06 $05
    ld d, h                                       ; $7aed: $54
    ld d, l                                       ; $7aee: $55
    adc b                                         ; $7aef: $88
    ld a, l                                       ; $7af0: $7d
    rlca                                          ; $7af1: $07
    ld [$4c09], sp                                ; $7af2: $08 $09 $4c
    dec bc                                        ; $7af5: $0b
    inc c                                         ; $7af6: $0c
    dec c                                         ; $7af7: $0d
    ld c, l                                       ; $7af8: $4d
    rrca                                          ; $7af9: $0f
    db $10                                        ; $7afa: $10
    ld de, $0771                                  ; $7afb: $11 $71 $07
    ld b, $09                                     ; $7afe: $06 $09
    ld bc, $0707                                  ; $7b00: $01 $07 $07
    ld bc, $0701                                  ; $7b03: $01 $01 $07
    rlca                                          ; $7b06: $07
    ld bc, $0607                                  ; $7b07: $01 $07 $06
    ld bc, $0606                                  ; $7b0a: $01 $06 $06
    ld d, b                                       ; $7b0d: $50
    ld d, c                                       ; $7b0e: $51
    ld d, d                                       ; $7b0f: $52
    ld d, e                                       ; $7b10: $53
    ld a, [$fcfb]                                 ; $7b11: $fa $fb $fc
    db $fd                                        ; $7b14: $fd
    cp $ff                                        ; $7b15: $fe $ff
    nop                                           ; $7b17: $00
    ld bc, $0302                                  ; $7b18: $01 $02 $03
    inc b                                         ; $7b1b: $04
    dec b                                         ; $7b1c: $05
    ld bc, $0601                                  ; $7b1d: $01 $01 $06
    ld b, $07                                     ; $7b20: $06 $07
    rlca                                          ; $7b22: $07
    ld bc, $0607                                  ; $7b23: $01 $07 $06
    ld b, $01                                     ; $7b26: $06 $01
    ld bc, $0701                                  ; $7b28: $01 $01 $07
    ld bc, $5401                                  ; $7b2b: $01 $01 $54
    ld d, l                                       ; $7b2e: $55
    adc b                                         ; $7b2f: $88
    ld a, l                                       ; $7b30: $7d
    rlca                                          ; $7b31: $07
    ld [$4c09], sp                                ; $7b32: $08 $09 $4c
    dec bc                                        ; $7b35: $0b
    inc c                                         ; $7b36: $0c
    dec c                                         ; $7b37: $0d
    ld c, l                                       ; $7b38: $4d
    rrca                                          ; $7b39: $0f
    db $10                                        ; $7b3a: $10
    ld de, $0771                                  ; $7b3b: $11 $71 $07
    ld bc, $0609                                  ; $7b3e: $01 $09 $06
    ld bc, $0701                                  ; $7b41: $01 $01 $07
    ld b, $01                                     ; $7b44: $06 $01
    ld bc, $0107                                  ; $7b46: $01 $07 $01
    rlca                                          ; $7b49: $07
    ld b, $06                                     ; $7b4a: $06 $06
    ld b, $50                                     ; $7b4c: $06 $50
    ld d, c                                       ; $7b4e: $51
    ld d, d                                       ; $7b4f: $52
    ld d, e                                       ; $7b50: $53
    ld a, [$fcfb]                                 ; $7b51: $fa $fb $fc
    db $fd                                        ; $7b54: $fd
    cp $ff                                        ; $7b55: $fe $ff
    nop                                           ; $7b57: $00
    ld bc, $0302                                  ; $7b58: $01 $02 $03
    inc b                                         ; $7b5b: $04
    dec b                                         ; $7b5c: $05
    rlca                                          ; $7b5d: $07
    ld bc, $0506                                  ; $7b5e: $01 $06 $05
    ld bc, $0101                                  ; $7b61: $01 $01 $01
    dec b                                         ; $7b64: $05
    ld bc, $0101                                  ; $7b65: $01 $01 $01
    dec b                                         ; $7b68: $05
    ld bc, $0101                                  ; $7b69: $01 $01 $01
    dec b                                         ; $7b6c: $05
    ld sp, $3332                                  ; $7b6d: $31 $32 $33
    ld [hl], e                                    ; $7b70: $73
    dec [hl]                                      ; $7b71: $35
    ld [hl], $75                                  ; $7b72: $36 $75
    halt                                          ; $7b74: $76
    add hl, sp                                    ; $7b75: $39
    ld a, [hl-]                                   ; $7b76: $3a
    ld a, b                                       ; $7b77: $78
    ld a, c                                       ; $7b78: $79
    dec a                                         ; $7b79: $3d

Jump_087_7b7a:
    ld a, $7a                                     ; $7b7a: $3e $7a
    ld a, e                                       ; $7b7c: $7b
    ld bc, $0101                                  ; $7b7d: $01 $01 $01
    rlca                                          ; $7b80: $07
    ld bc, $0607                                  ; $7b81: $01 $07 $06
    ld bc, $0107                                  ; $7b84: $01 $07 $01
    ld b, $06                                     ; $7b87: $06 $06
    ld bc, $0707                                  ; $7b89: $01 $07 $07
    ld b, $21                                     ; $7b8c: $06 $21
    ld [hl+], a                                   ; $7b8e: $22
    inc hl                                        ; $7b8f: $23
    inc h                                         ; $7b90: $24
    dec h                                         ; $7b91: $25
    ld h, $27                                     ; $7b92: $26 $27
    jr z, @+$2b                                   ; $7b94: $28 $29

    ld a, [hl+]                                   ; $7b96: $2a
    dec hl                                        ; $7b97: $2b
    inc l                                         ; $7b98: $2c
    dec l                                         ; $7b99: $2d
    ld l, $2f                                     ; $7b9a: $2e $2f
    jr nc, @+$09                                  ; $7b9c: $30 $07

    ld bc, $0707                                  ; $7b9e: $01 $07 $07
    ld b, $01                                     ; $7ba1: $06 $01
    rlca                                          ; $7ba3: $07
    ld bc, $0706                                  ; $7ba4: $01 $06 $07
    ld bc, $0601                                  ; $7ba7: $01 $01 $06
    ld b, $01                                     ; $7baa: $06 $01
    ld b, $31                                     ; $7bac: $06 $31
    ld [hl-], a                                   ; $7bae: $32
    inc sp                                        ; $7baf: $33
    ld [hl], e                                    ; $7bb0: $73
    dec [hl]                                      ; $7bb1: $35
    ld [hl], $75                                  ; $7bb2: $36 $75
    halt                                          ; $7bb4: $76
    add hl, sp                                    ; $7bb5: $39
    ld a, [hl-]                                   ; $7bb6: $3a
    ld a, b                                       ; $7bb7: $78
    ld a, c                                       ; $7bb8: $79
    dec a                                         ; $7bb9: $3d
    ld a, $7a                                     ; $7bba: $3e $7a
    ld a, e                                       ; $7bbc: $7b
    rlca                                          ; $7bbd: $07
    ld bc, $0101                                  ; $7bbe: $01 $01 $01
    ld bc, $0101                                  ; $7bc1: $01 $01 $01
    ld bc, $0606                                  ; $7bc4: $01 $06 $06
    rlca                                          ; $7bc7: $07
    ld b, $06                                     ; $7bc8: $06 $06
    ld b, $01                                     ; $7bca: $06 $01
    ld bc, $2221                                  ; $7bcc: $01 $21 $22
    inc hl                                        ; $7bcf: $23
    inc h                                         ; $7bd0: $24
    dec h                                         ; $7bd1: $25
    ld h, $27                                     ; $7bd2: $26 $27
    jr z, jr_087_7bff                             ; $7bd4: $28 $29

    ld a, [hl+]                                   ; $7bd6: $2a
    dec hl                                        ; $7bd7: $2b
    inc l                                         ; $7bd8: $2c
    dec l                                         ; $7bd9: $2d
    ld l, $2f                                     ; $7bda: $2e $2f
    jr nc, jr_087_7be4                            ; $7bdc: $30 $06

    rlca                                          ; $7bde: $07
    ld bc, $0605                                  ; $7bdf: $01 $05 $06
    ld b, $01                                     ; $7be2: $06 $01

jr_087_7be4:
    dec b                                         ; $7be4: $05
    ld bc, $0706                                  ; $7be5: $01 $06 $07
    dec b                                         ; $7be8: $05
    ld bc, $0107                                  ; $7be9: $01 $07 $01
    dec b                                         ; $7bec: $05
    ld d, h                                       ; $7bed: $54
    ld d, l                                       ; $7bee: $55
    adc b                                         ; $7bef: $88
    ld a, l                                       ; $7bf0: $7d
    ld b, e                                       ; $7bf1: $43
    ld b, e                                       ; $7bf2: $43
    ld b, e                                       ; $7bf3: $43
    ld b, e                                       ; $7bf4: $43
    ld b, h                                       ; $7bf5: $44
    ld b, h                                       ; $7bf6: $44
    ld b, h                                       ; $7bf7: $44
    ld b, h                                       ; $7bf8: $44
    pop de                                        ; $7bf9: $d1
    pop de                                        ; $7bfa: $d1
    pop de                                        ; $7bfb: $d1
    pop de                                        ; $7bfc: $d1
    rlca                                          ; $7bfd: $07
    rlca                                          ; $7bfe: $07

jr_087_7bff:
    add hl, bc                                    ; $7bff: $09
    ld b, $8a                                     ; $7c00: $06 $8a
    adc d                                         ; $7c02: $8a
    adc d                                         ; $7c03: $8a
    adc d                                         ; $7c04: $8a
    adc d                                         ; $7c05: $8a
    adc d                                         ; $7c06: $8a
    adc d                                         ; $7c07: $8a
    adc d                                         ; $7c08: $8a
    add d                                         ; $7c09: $82
    add d                                         ; $7c0a: $82
    add d                                         ; $7c0b: $82
    add d                                         ; $7c0c: $82
    ld d, b                                       ; $7c0d: $50
    ld d, c                                       ; $7c0e: $51
    di                                            ; $7c0f: $f3
    db $f4                                        ; $7c10: $f4
    ld b, e                                       ; $7c11: $43
    db $f4                                        ; $7c12: $f4
    push af                                       ; $7c13: $f5
    pop de                                        ; $7c14: $d1
    ld b, h                                       ; $7c15: $44
    ld b, h                                       ; $7c16: $44
    pop de                                        ; $7c17: $d1
    pop de                                        ; $7c18: $d1
    pop de                                        ; $7c19: $d1
    pop de                                        ; $7c1a: $d1
    pop de                                        ; $7c1b: $d1
    pop de                                        ; $7c1c: $d1
    rlca                                          ; $7c1d: $07
    ld bc, $8282                                  ; $7c1e: $01 $82 $82
    adc d                                         ; $7c21: $8a
    add d                                         ; $7c22: $82
    add d                                         ; $7c23: $82
    add d                                         ; $7c24: $82
    adc d                                         ; $7c25: $8a
    adc d                                         ; $7c26: $8a
    add d                                         ; $7c27: $82
    add d                                         ; $7c28: $82
    add d                                         ; $7c29: $82
    add d                                         ; $7c2a: $82
    add d                                         ; $7c2b: $82
    add d                                         ; $7c2c: $82
    push af                                       ; $7c2d: $f5
    pop de                                        ; $7c2e: $d1
    pop de                                        ; $7c2f: $d1
    pop de                                        ; $7c30: $d1
    pop de                                        ; $7c31: $d1
    pop de                                        ; $7c32: $d1
    pop de                                        ; $7c33: $d1
    pop de                                        ; $7c34: $d1
    pop de                                        ; $7c35: $d1
    pop de                                        ; $7c36: $d1
    pop de                                        ; $7c37: $d1
    pop de                                        ; $7c38: $d1
    pop de                                        ; $7c39: $d1
    pop de                                        ; $7c3a: $d1
    pop de                                        ; $7c3b: $d1
    pop de                                        ; $7c3c: $d1
    add d                                         ; $7c3d: $82
    add d                                         ; $7c3e: $82
    add d                                         ; $7c3f: $82
    add d                                         ; $7c40: $82
    add d                                         ; $7c41: $82
    add d                                         ; $7c42: $82
    add d                                         ; $7c43: $82
    add d                                         ; $7c44: $82
    add d                                         ; $7c45: $82
    add d                                         ; $7c46: $82
    add d                                         ; $7c47: $82
    add d                                         ; $7c48: $82
    add d                                         ; $7c49: $82
    add d                                         ; $7c4a: $82
    add d                                         ; $7c4b: $82
    add d                                         ; $7c4c: $82
    ld d, b                                       ; $7c4d: $50
    ld b, l                                       ; $7c4e: $45
    ld b, [hl]                                    ; $7c4f: $46
    ld b, a                                       ; $7c50: $47
    ld a, [$fbfa]                                 ; $7c51: $fa $fa $fb
    db $fc                                        ; $7c54: $fc
    cp $fd                                        ; $7c55: $fe $fd
    cp $ff                                        ; $7c57: $fe $ff
    ld [bc], a                                    ; $7c59: $02
    inc bc                                        ; $7c5a: $03
    inc b                                         ; $7c5b: $04
    dec b                                         ; $7c5c: $05
    dec b                                         ; $7c5d: $05
    dec bc                                        ; $7c5e: $0b
    dec bc                                        ; $7c5f: $0b
    dec bc                                        ; $7c60: $0b
    dec b                                         ; $7c61: $05
    dec bc                                        ; $7c62: $0b
    dec bc                                        ; $7c63: $0b
    dec bc                                        ; $7c64: $0b
    dec b                                         ; $7c65: $05
    dec bc                                        ; $7c66: $0b
    dec bc                                        ; $7c67: $0b
    dec bc                                        ; $7c68: $0b
    dec b                                         ; $7c69: $05
    rlca                                          ; $7c6a: $07
    ld bc, $5006                                  ; $7c6b: $01 $06 $50
    ld c, b                                       ; $7c6e: $48
    ld c, c                                       ; $7c6f: $49
    ld c, d                                       ; $7c70: $4a
    ld a, [$fbfa]                                 ; $7c71: $fa $fa $fb
    db $fc                                        ; $7c74: $fc
    cp $fd                                        ; $7c75: $fe $fd
    cp $ff                                        ; $7c77: $fe $ff
    ld [bc], a                                    ; $7c79: $02
    inc bc                                        ; $7c7a: $03
    inc b                                         ; $7c7b: $04
    dec b                                         ; $7c7c: $05
    dec b                                         ; $7c7d: $05
    dec bc                                        ; $7c7e: $0b
    dec bc                                        ; $7c7f: $0b
    dec bc                                        ; $7c80: $0b
    dec b                                         ; $7c81: $05
    dec bc                                        ; $7c82: $0b
    dec bc                                        ; $7c83: $0b
    dec bc                                        ; $7c84: $0b
    dec b                                         ; $7c85: $05
    dec bc                                        ; $7c86: $0b
    dec bc                                        ; $7c87: $0b
    dec bc                                        ; $7c88: $0b
    dec b                                         ; $7c89: $05
    rlca                                          ; $7c8a: $07
    ld bc, $5006                                  ; $7c8b: $01 $06 $50
    ld c, e                                       ; $7c8e: $4b
    ld c, h                                       ; $7c8f: $4c
    ld c, l                                       ; $7c90: $4d
    ld a, [$fbfa]                                 ; $7c91: $fa $fa $fb
    db $fc                                        ; $7c94: $fc
    cp $fd                                        ; $7c95: $fe $fd
    cp $ff                                        ; $7c97: $fe $ff
    ld [bc], a                                    ; $7c99: $02
    inc bc                                        ; $7c9a: $03
    inc b                                         ; $7c9b: $04
    dec b                                         ; $7c9c: $05
    dec b                                         ; $7c9d: $05
    dec bc                                        ; $7c9e: $0b
    dec bc                                        ; $7c9f: $0b
    dec bc                                        ; $7ca0: $0b
    dec b                                         ; $7ca1: $05
    dec bc                                        ; $7ca2: $0b
    dec bc                                        ; $7ca3: $0b
    dec bc                                        ; $7ca4: $0b
    dec b                                         ; $7ca5: $05
    dec bc                                        ; $7ca6: $0b
    dec bc                                        ; $7ca7: $0b
    dec bc                                        ; $7ca8: $0b
    dec b                                         ; $7ca9: $05
    rlca                                          ; $7caa: $07
    ld bc, $2106                                  ; $7cab: $01 $06 $21
    ld [hl+], a                                   ; $7cae: $22
    inc hl                                        ; $7caf: $23
    inc h                                         ; $7cb0: $24
    db $eb                                        ; $7cb1: $eb
    db $ec                                        ; $7cb2: $ec
    db $ed                                        ; $7cb3: $ed
    xor d                                         ; $7cb4: $aa
    xor $ef                                       ; $7cb5: $ee $ef
    ldh a, [$f1]                                  ; $7cb7: $f0 $f1
    ld a, [c]                                     ; $7cb9: $f2
    ld c, [hl]                                    ; $7cba: $4e
    db $f4                                        ; $7cbb: $f4
    ld c, a                                       ; $7cbc: $4f
    dec b                                         ; $7cbd: $05
    ld bc, $0106                                  ; $7cbe: $01 $06 $01
    dec c                                         ; $7cc1: $0d
    add hl, bc                                    ; $7cc2: $09
    add hl, bc                                    ; $7cc3: $09
    rrca                                          ; $7cc4: $0f
    dec c                                         ; $7cc5: $0d
    adc e                                         ; $7cc6: $8b
    adc e                                         ; $7cc7: $8b
    adc e                                         ; $7cc8: $8b
    dec c                                         ; $7cc9: $0d
    adc e                                         ; $7cca: $8b
    adc e                                         ; $7ccb: $8b
    adc e                                         ; $7ccc: $8b
    ld hl, $2322                                  ; $7ccd: $21 $22 $23
    inc h                                         ; $7cd0: $24
    db $eb                                        ; $7cd1: $eb
    db $ec                                        ; $7cd2: $ec
    db $ed                                        ; $7cd3: $ed
    xor d                                         ; $7cd4: $aa
    xor $ef                                       ; $7cd5: $ee $ef
    ld d, b                                       ; $7cd7: $50
    ld d, c                                       ; $7cd8: $51
    ld a, [c]                                     ; $7cd9: $f2
    di                                            ; $7cda: $f3
    ld d, d                                       ; $7cdb: $52
    ld d, e                                       ; $7cdc: $53
    dec b                                         ; $7cdd: $05
    ld bc, $0106                                  ; $7cde: $01 $06 $01
    dec c                                         ; $7ce1: $0d
    add hl, bc                                    ; $7ce2: $09
    add hl, bc                                    ; $7ce3: $09
    rrca                                          ; $7ce4: $0f
    dec c                                         ; $7ce5: $0d
    adc e                                         ; $7ce6: $8b
    adc e                                         ; $7ce7: $8b
    adc e                                         ; $7ce8: $8b
    dec c                                         ; $7ce9: $0d
    adc e                                         ; $7cea: $8b
    adc e                                         ; $7ceb: $8b
    adc e                                         ; $7cec: $8b
    ld hl, $2322                                  ; $7ced: $21 $22 $23
    inc h                                         ; $7cf0: $24
    db $eb                                        ; $7cf1: $eb
    db $ec                                        ; $7cf2: $ec
    db $ed                                        ; $7cf3: $ed
    xor d                                         ; $7cf4: $aa
    xor $ef                                       ; $7cf5: $ee $ef
    ld d, h                                       ; $7cf7: $54
    pop af                                        ; $7cf8: $f1
    ld a, [c]                                     ; $7cf9: $f2
    di                                            ; $7cfa: $f3
    ld d, l                                       ; $7cfb: $55
    ld d, [hl]                                    ; $7cfc: $56
    dec b                                         ; $7cfd: $05
    ld bc, $0106                                  ; $7cfe: $01 $06 $01
    dec c                                         ; $7d01: $0d
    add hl, bc                                    ; $7d02: $09
    add hl, bc                                    ; $7d03: $09
    rrca                                          ; $7d04: $0f
    dec c                                         ; $7d05: $0d
    adc e                                         ; $7d06: $8b
    adc e                                         ; $7d07: $8b
    adc e                                         ; $7d08: $8b
    dec c                                         ; $7d09: $0d
    adc e                                         ; $7d0a: $8b
    adc e                                         ; $7d0b: $8b
    adc e                                         ; $7d0c: $8b
    ld d, b                                       ; $7d0d: $50
    ld d, a                                       ; $7d0e: $57
    ld e, b                                       ; $7d0f: $58
    ld sp, hl                                     ; $7d10: $f9
    ld a, [$5a59]                                 ; $7d11: $fa $59 $5a
    db $fc                                        ; $7d14: $fc
    cp $fd                                        ; $7d15: $fe $fd
    cp $ff                                        ; $7d17: $fe $ff
    ld [bc], a                                    ; $7d19: $02
    inc bc                                        ; $7d1a: $03
    inc b                                         ; $7d1b: $04
    dec b                                         ; $7d1c: $05
    dec b                                         ; $7d1d: $05
    dec bc                                        ; $7d1e: $0b
    dec bc                                        ; $7d1f: $0b
    dec bc                                        ; $7d20: $0b
    dec b                                         ; $7d21: $05
    dec bc                                        ; $7d22: $0b
    dec bc                                        ; $7d23: $0b
    dec bc                                        ; $7d24: $0b
    dec b                                         ; $7d25: $05
    dec bc                                        ; $7d26: $0b
    dec bc                                        ; $7d27: $0b
    dec bc                                        ; $7d28: $0b
    dec b                                         ; $7d29: $05
    rlca                                          ; $7d2a: $07
    ld bc, $2106                                  ; $7d2b: $01 $06 $21
    ld [hl+], a                                   ; $7d2e: $22
    inc hl                                        ; $7d2f: $23
    inc h                                         ; $7d30: $24
    db $eb                                        ; $7d31: $eb
    db $ec                                        ; $7d32: $ec
    db $ed                                        ; $7d33: $ed
    xor d                                         ; $7d34: $aa
    xor $5b                                       ; $7d35: $ee $5b
    ld e, h                                       ; $7d37: $5c
    ld e, l                                       ; $7d38: $5d
    ld a, [c]                                     ; $7d39: $f2
    ld e, [hl]                                    ; $7d3a: $5e
    ld e, a                                       ; $7d3b: $5f
    ld h, b                                       ; $7d3c: $60
    dec b                                         ; $7d3d: $05
    ld bc, $0106                                  ; $7d3e: $01 $06 $01
    dec c                                         ; $7d41: $0d
    add hl, bc                                    ; $7d42: $09
    add hl, bc                                    ; $7d43: $09
    rrca                                          ; $7d44: $0f
    dec c                                         ; $7d45: $0d
    adc e                                         ; $7d46: $8b
    adc e                                         ; $7d47: $8b
    adc e                                         ; $7d48: $8b
    dec c                                         ; $7d49: $0d
    adc e                                         ; $7d4a: $8b
    adc e                                         ; $7d4b: $8b
    adc e                                         ; $7d4c: $8b
    ld d, b                                       ; $7d4d: $50
    ld b, l                                       ; $7d4e: $45
    ld b, [hl]                                    ; $7d4f: $46
    ld b, a                                       ; $7d50: $47
    ld a, [$fbfa]                                 ; $7d51: $fa $fa $fb
    db $fc                                        ; $7d54: $fc
    cp $fd                                        ; $7d55: $fe $fd
    cp $ff                                        ; $7d57: $fe $ff
    ld [bc], a                                    ; $7d59: $02
    inc bc                                        ; $7d5a: $03
    inc b                                         ; $7d5b: $04
    dec b                                         ; $7d5c: $05
    dec b                                         ; $7d5d: $05
    dec bc                                        ; $7d5e: $0b
    dec bc                                        ; $7d5f: $0b
    dec bc                                        ; $7d60: $0b
    dec b                                         ; $7d61: $05
    dec bc                                        ; $7d62: $0b
    dec bc                                        ; $7d63: $0b
    dec bc                                        ; $7d64: $0b
    dec b                                         ; $7d65: $05
    dec bc                                        ; $7d66: $0b
    dec bc                                        ; $7d67: $0b
    dec bc                                        ; $7d68: $0b
    dec b                                         ; $7d69: $05
    ld bc, $0607                                  ; $7d6a: $01 $07 $06
    ld d, b                                       ; $7d6d: $50
    ld c, b                                       ; $7d6e: $48
    ld c, c                                       ; $7d6f: $49
    ld c, d                                       ; $7d70: $4a
    ld a, [$fbfa]                                 ; $7d71: $fa $fa $fb
    db $fc                                        ; $7d74: $fc
    cp $fd                                        ; $7d75: $fe $fd
    cp $ff                                        ; $7d77: $fe $ff
    ld [bc], a                                    ; $7d79: $02
    inc bc                                        ; $7d7a: $03
    inc b                                         ; $7d7b: $04
    dec b                                         ; $7d7c: $05
    dec b                                         ; $7d7d: $05
    dec bc                                        ; $7d7e: $0b
    dec bc                                        ; $7d7f: $0b
    dec bc                                        ; $7d80: $0b
    dec b                                         ; $7d81: $05
    dec bc                                        ; $7d82: $0b
    dec bc                                        ; $7d83: $0b
    dec bc                                        ; $7d84: $0b
    dec b                                         ; $7d85: $05
    dec bc                                        ; $7d86: $0b
    dec bc                                        ; $7d87: $0b
    dec bc                                        ; $7d88: $0b
    dec b                                         ; $7d89: $05
    ld bc, $0607                                  ; $7d8a: $01 $07 $06
    ld d, b                                       ; $7d8d: $50
    ld c, e                                       ; $7d8e: $4b
    ld c, h                                       ; $7d8f: $4c
    ld c, l                                       ; $7d90: $4d
    ld a, [$fbfa]                                 ; $7d91: $fa $fa $fb
    db $fc                                        ; $7d94: $fc
    cp $fd                                        ; $7d95: $fe $fd
    cp $ff                                        ; $7d97: $fe $ff
    ld [bc], a                                    ; $7d99: $02
    inc bc                                        ; $7d9a: $03
    inc b                                         ; $7d9b: $04
    dec b                                         ; $7d9c: $05
    dec b                                         ; $7d9d: $05
    dec bc                                        ; $7d9e: $0b
    dec bc                                        ; $7d9f: $0b
    dec bc                                        ; $7da0: $0b
    dec b                                         ; $7da1: $05
    dec bc                                        ; $7da2: $0b
    dec bc                                        ; $7da3: $0b
    dec bc                                        ; $7da4: $0b
    dec b                                         ; $7da5: $05
    dec bc                                        ; $7da6: $0b
    dec bc                                        ; $7da7: $0b
    dec bc                                        ; $7da8: $0b
    dec b                                         ; $7da9: $05
    ld bc, $0607                                  ; $7daa: $01 $07 $06
    ld hl, $2322                                  ; $7dad: $21 $22 $23
    inc h                                         ; $7db0: $24
    db $eb                                        ; $7db1: $eb
    db $ec                                        ; $7db2: $ec
    db $ed                                        ; $7db3: $ed
    xor d                                         ; $7db4: $aa
    xor $ef                                       ; $7db5: $ee $ef
    ldh a, [$f1]                                  ; $7db7: $f0 $f1
    ld a, [c]                                     ; $7db9: $f2
    ld c, [hl]                                    ; $7dba: $4e
    db $f4                                        ; $7dbb: $f4
    ld c, a                                       ; $7dbc: $4f
    dec b                                         ; $7dbd: $05
    ld bc, $0101                                  ; $7dbe: $01 $01 $01
    add hl, bc                                    ; $7dc1: $09
    add hl, bc                                    ; $7dc2: $09
    rrca                                          ; $7dc3: $0f
    add hl, bc                                    ; $7dc4: $09
    add hl, bc                                    ; $7dc5: $09
    adc e                                         ; $7dc6: $8b
    adc e                                         ; $7dc7: $8b
    adc e                                         ; $7dc8: $8b
    add hl, bc                                    ; $7dc9: $09
    adc e                                         ; $7dca: $8b
    adc e                                         ; $7dcb: $8b
    adc e                                         ; $7dcc: $8b
    ld hl, $2322                                  ; $7dcd: $21 $22 $23
    inc h                                         ; $7dd0: $24
    db $eb                                        ; $7dd1: $eb
    db $ec                                        ; $7dd2: $ec
    db $ed                                        ; $7dd3: $ed
    xor d                                         ; $7dd4: $aa
    xor $ef                                       ; $7dd5: $ee $ef
    ld d, b                                       ; $7dd7: $50
    ld d, c                                       ; $7dd8: $51
    ld a, [c]                                     ; $7dd9: $f2
    di                                            ; $7dda: $f3
    ld d, d                                       ; $7ddb: $52
    ld d, e                                       ; $7ddc: $53
    dec b                                         ; $7ddd: $05
    ld bc, $0101                                  ; $7dde: $01 $01 $01
    add hl, bc                                    ; $7de1: $09
    add hl, bc                                    ; $7de2: $09
    rrca                                          ; $7de3: $0f
    add hl, bc                                    ; $7de4: $09
    add hl, bc                                    ; $7de5: $09
    adc e                                         ; $7de6: $8b
    adc e                                         ; $7de7: $8b
    adc e                                         ; $7de8: $8b
    add hl, bc                                    ; $7de9: $09
    adc e                                         ; $7dea: $8b
    adc e                                         ; $7deb: $8b
    adc e                                         ; $7dec: $8b
    ld hl, $2322                                  ; $7ded: $21 $22 $23
    inc h                                         ; $7df0: $24
    db $eb                                        ; $7df1: $eb
    db $ec                                        ; $7df2: $ec
    db $ed                                        ; $7df3: $ed
    xor d                                         ; $7df4: $aa
    xor $ef                                       ; $7df5: $ee $ef
    ld d, h                                       ; $7df7: $54
    pop af                                        ; $7df8: $f1
    ld a, [c]                                     ; $7df9: $f2
    di                                            ; $7dfa: $f3
    ld d, l                                       ; $7dfb: $55
    ld d, [hl]                                    ; $7dfc: $56
    dec b                                         ; $7dfd: $05
    ld bc, $0101                                  ; $7dfe: $01 $01 $01
    add hl, bc                                    ; $7e01: $09
    add hl, bc                                    ; $7e02: $09
    rrca                                          ; $7e03: $0f
    add hl, bc                                    ; $7e04: $09
    add hl, bc                                    ; $7e05: $09
    adc e                                         ; $7e06: $8b
    adc e                                         ; $7e07: $8b
    adc e                                         ; $7e08: $8b
    add hl, bc                                    ; $7e09: $09
    adc e                                         ; $7e0a: $8b
    adc e                                         ; $7e0b: $8b
    adc e                                         ; $7e0c: $8b
    ld d, b                                       ; $7e0d: $50
    ld d, a                                       ; $7e0e: $57
    ld e, b                                       ; $7e0f: $58
    ld sp, hl                                     ; $7e10: $f9
    ld a, [$5a59]                                 ; $7e11: $fa $59 $5a
    db $fc                                        ; $7e14: $fc
    cp $fd                                        ; $7e15: $fe $fd
    cp $ff                                        ; $7e17: $fe $ff
    ld [bc], a                                    ; $7e19: $02
    inc bc                                        ; $7e1a: $03
    inc b                                         ; $7e1b: $04
    dec b                                         ; $7e1c: $05
    dec b                                         ; $7e1d: $05
    dec bc                                        ; $7e1e: $0b
    dec bc                                        ; $7e1f: $0b
    dec bc                                        ; $7e20: $0b
    dec b                                         ; $7e21: $05
    dec bc                                        ; $7e22: $0b
    dec bc                                        ; $7e23: $0b
    dec bc                                        ; $7e24: $0b
    dec b                                         ; $7e25: $05
    dec bc                                        ; $7e26: $0b
    dec bc                                        ; $7e27: $0b
    dec bc                                        ; $7e28: $0b
    dec b                                         ; $7e29: $05
    ld bc, $0607                                  ; $7e2a: $01 $07 $06
    ld hl, $2322                                  ; $7e2d: $21 $22 $23
    inc h                                         ; $7e30: $24
    db $eb                                        ; $7e31: $eb
    db $ec                                        ; $7e32: $ec
    db $ed                                        ; $7e33: $ed
    xor d                                         ; $7e34: $aa
    xor $5b                                       ; $7e35: $ee $5b
    ld e, h                                       ; $7e37: $5c
    ld e, l                                       ; $7e38: $5d
    ld a, [c]                                     ; $7e39: $f2
    ld e, [hl]                                    ; $7e3a: $5e
    ld e, a                                       ; $7e3b: $5f
    ld h, b                                       ; $7e3c: $60
    dec b                                         ; $7e3d: $05
    ld bc, $0101                                  ; $7e3e: $01 $01 $01
    add hl, bc                                    ; $7e41: $09
    add hl, bc                                    ; $7e42: $09
    rrca                                          ; $7e43: $0f
    add hl, bc                                    ; $7e44: $09
    add hl, bc                                    ; $7e45: $09
    adc e                                         ; $7e46: $8b
    adc e                                         ; $7e47: $8b
    adc e                                         ; $7e48: $8b
    add hl, bc                                    ; $7e49: $09
    adc e                                         ; $7e4a: $8b
    adc e                                         ; $7e4b: $8b
    adc e                                         ; $7e4c: $8b
    ld hl, sp+$00                                 ; $7e4d: $f8 $00
    inc b                                         ; $7e4f: $04
    nop                                           ; $7e50: $00
    nop                                           ; $7e51: $00
    ld bc, $0200                                  ; $7e52: $01 $00 $02
    ld [bc], a                                    ; $7e55: $02
    ld h, b                                       ; $7e56: $60
    dec de                                        ; $7e57: $1b
    nop                                           ; $7e58: $00
    nop                                           ; $7e59: $00
    inc e                                         ; $7e5a: $1c
    nop                                           ; $7e5b: $00
    inc bc                                        ; $7e5c: $03
    nop                                           ; $7e5d: $00
    inc b                                         ; $7e5e: $04
    nop                                           ; $7e5f: $00
    dec b                                         ; $7e60: $05
    nop                                           ; $7e61: $00
    nop                                           ; $7e62: $00
    ld b, $00                                     ; $7e63: $06 $00
    rrca                                          ; $7e65: $0f
    nop                                           ; $7e66: $00
    stop                                          ; $7e67: $10 $00
    ld de, $0000                                  ; $7e69: $11 $00 $00
    ld [de], a                                    ; $7e6c: $12
    nop                                           ; $7e6d: $00
    dec e                                         ; $7e6e: $1d
    nop                                           ; $7e6f: $00
    ld e, $00                                     ; $7e70: $1e $00
    rra                                           ; $7e72: $1f
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    jr nz, jr_087_7e77                            ; $7e75: $20 $00

jr_087_7e77:
    rlca                                          ; $7e77: $07
    nop                                           ; $7e78: $00
    ld [$0900], sp                                ; $7e79: $08 $00 $09
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    ld a, [bc]                                    ; $7e7e: $0a
    nop                                           ; $7e7f: $00
    inc de                                        ; $7e80: $13
    nop                                           ; $7e81: $00
    inc d                                         ; $7e82: $14
    nop                                           ; $7e83: $00
    dec d                                         ; $7e84: $15
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00
    ld d, $00                                     ; $7e87: $16 $00
    ld hl, $2200                                  ; $7e89: $21 $00 $22
    nop                                           ; $7e8c: $00
    inc hl                                        ; $7e8d: $23
    nop                                           ; $7e8e: $00
    nop                                           ; $7e8f: $00
    inc h                                         ; $7e90: $24
    nop                                           ; $7e91: $00
    dec bc                                        ; $7e92: $0b
    nop                                           ; $7e93: $00
    inc c                                         ; $7e94: $0c
    nop                                           ; $7e95: $00
    dec c                                         ; $7e96: $0d
    nop                                           ; $7e97: $00
    nop                                           ; $7e98: $00
    ld c, $00                                     ; $7e99: $0e $00
    rla                                           ; $7e9b: $17
    nop                                           ; $7e9c: $00
    jr jr_087_7e9f                                ; $7e9d: $18 $00

jr_087_7e9f:
    add hl, de                                    ; $7e9f: $19
    nop                                           ; $7ea0: $00
    nop                                           ; $7ea1: $00
    ld a, [de]                                    ; $7ea2: $1a
    nop                                           ; $7ea3: $00
    dec h                                         ; $7ea4: $25
    nop                                           ; $7ea5: $00
    ld h, $00                                     ; $7ea6: $26 $00
    daa                                           ; $7ea8: $27
    nop                                           ; $7ea9: $00
    nop                                           ; $7eaa: $00
    jr z, jr_087_7ead                             ; $7eab: $28 $00

jr_087_7ead:
    add hl, hl                                    ; $7ead: $29
    nop                                           ; $7eae: $00
    ld a, [hl+]                                   ; $7eaf: $2a
    nop                                           ; $7eb0: $00
    dec hl                                        ; $7eb1: $2b
    nop                                           ; $7eb2: $00
    nop                                           ; $7eb3: $00
    inc l                                         ; $7eb4: $2c
    nop                                           ; $7eb5: $00
    add hl, sp                                    ; $7eb6: $39
    nop                                           ; $7eb7: $00
    ld a, [hl-]                                   ; $7eb8: $3a
    nop                                           ; $7eb9: $00
    dec sp                                        ; $7eba: $3b
    nop                                           ; $7ebb: $00
    nop                                           ; $7ebc: $00
    inc a                                         ; $7ebd: $3c
    nop                                           ; $7ebe: $00
    ld c, c                                       ; $7ebf: $49
    nop                                           ; $7ec0: $00
    ld c, d                                       ; $7ec1: $4a
    nop                                           ; $7ec2: $00
    ld c, e                                       ; $7ec3: $4b
    nop                                           ; $7ec4: $00
    nop                                           ; $7ec5: $00
    ld c, h                                       ; $7ec6: $4c
    nop                                           ; $7ec7: $00
    dec l                                         ; $7ec8: $2d
    nop                                           ; $7ec9: $00
    ld l, $00                                     ; $7eca: $2e $00
    cpl                                           ; $7ecc: $2f
    nop                                           ; $7ecd: $00
    nop                                           ; $7ece: $00
    jr nc, jr_087_7ed1                            ; $7ecf: $30 $00

jr_087_7ed1:
    dec a                                         ; $7ed1: $3d
    nop                                           ; $7ed2: $00
    ld a, $00                                     ; $7ed3: $3e $00
    ccf                                           ; $7ed5: $3f
    nop                                           ; $7ed6: $00
    nop                                           ; $7ed7: $00
    ld b, b                                       ; $7ed8: $40
    nop                                           ; $7ed9: $00
    ld c, l                                       ; $7eda: $4d
    nop                                           ; $7edb: $00
    ld c, [hl]                                    ; $7edc: $4e
    nop                                           ; $7edd: $00
    ld c, a                                       ; $7ede: $4f
    nop                                           ; $7edf: $00
    nop                                           ; $7ee0: $00
    ld d, b                                       ; $7ee1: $50
    nop                                           ; $7ee2: $00
    ld sp, $3200                                  ; $7ee3: $31 $00 $32
    nop                                           ; $7ee6: $00
    inc sp                                        ; $7ee7: $33
    nop                                           ; $7ee8: $00
    nop                                           ; $7ee9: $00
    inc [hl]                                      ; $7eea: $34
    nop                                           ; $7eeb: $00
    ld b, c                                       ; $7eec: $41
    nop                                           ; $7eed: $00
    ld b, d                                       ; $7eee: $42
    nop                                           ; $7eef: $00
    ld b, e                                       ; $7ef0: $43
    nop                                           ; $7ef1: $00
    nop                                           ; $7ef2: $00
    ld b, h                                       ; $7ef3: $44
    nop                                           ; $7ef4: $00
    ld d, c                                       ; $7ef5: $51
    nop                                           ; $7ef6: $00
    ld d, d                                       ; $7ef7: $52
    nop                                           ; $7ef8: $00
    ld d, e                                       ; $7ef9: $53
    nop                                           ; $7efa: $00
    nop                                           ; $7efb: $00
    ld d, h                                       ; $7efc: $54
    nop                                           ; $7efd: $00
    dec [hl]                                      ; $7efe: $35
    nop                                           ; $7eff: $00
    ld [hl], $00                                  ; $7f00: $36 $00
    scf                                           ; $7f02: $37
    nop                                           ; $7f03: $00
    nop                                           ; $7f04: $00
    jr c, jr_087_7f07                             ; $7f05: $38 $00

jr_087_7f07:
    ld b, l                                       ; $7f07: $45
    nop                                           ; $7f08: $00
    ld b, [hl]                                    ; $7f09: $46
    nop                                           ; $7f0a: $00
    ld b, a                                       ; $7f0b: $47
    nop                                           ; $7f0c: $00
    nop                                           ; $7f0d: $00
    ld c, b                                       ; $7f0e: $48
    nop                                           ; $7f0f: $00
    ld d, l                                       ; $7f10: $55
    nop                                           ; $7f11: $00
    ld d, [hl]                                    ; $7f12: $56
    nop                                           ; $7f13: $00
    ld d, a                                       ; $7f14: $57
    nop                                           ; $7f15: $00
    ld b, b                                       ; $7f16: $40
    ld e, b                                       ; $7f17: $58
    ld c, b                                       ; $7f18: $48
    nop                                           ; $7f19: $00
    ld e, c                                       ; $7f1a: $59
    nop                                           ; $7f1b: $00
    ld e, d                                       ; $7f1c: $5a
    nop                                           ; $7f1d: $00
    ld e, e                                       ; $7f1e: $5b
    nop                                           ; $7f1f: $00
    nop                                           ; $7f20: $00
    ld h, h                                       ; $7f21: $64
    nop                                           ; $7f22: $00
    ld h, l                                       ; $7f23: $65
    nop                                           ; $7f24: $00
    ld h, [hl]                                    ; $7f25: $66
    nop                                           ; $7f26: $00
    ld h, a                                       ; $7f27: $67
    nop                                           ; $7f28: $00
    nop                                           ; $7f29: $00
    ld [hl], b                                    ; $7f2a: $70
    nop                                           ; $7f2b: $00
    ld [hl], c                                    ; $7f2c: $71
    nop                                           ; $7f2d: $00
    ld [hl], d                                    ; $7f2e: $72
    nop                                           ; $7f2f: $00
    ld [hl], e                                    ; $7f30: $73
    nop                                           ; $7f31: $00
    nop                                           ; $7f32: $00
    ld e, h                                       ; $7f33: $5c
    nop                                           ; $7f34: $00
    ld e, l                                       ; $7f35: $5d
    nop                                           ; $7f36: $00
    ld e, [hl]                                    ; $7f37: $5e
    nop                                           ; $7f38: $00
    ld e, a                                       ; $7f39: $5f
    nop                                           ; $7f3a: $00
    nop                                           ; $7f3b: $00
    ld l, b                                       ; $7f3c: $68
    nop                                           ; $7f3d: $00
    ld l, c                                       ; $7f3e: $69
    nop                                           ; $7f3f: $00
    ld l, d                                       ; $7f40: $6a
    nop                                           ; $7f41: $00
    ld l, e                                       ; $7f42: $6b
    nop                                           ; $7f43: $00
    nop                                           ; $7f44: $00
    ld [hl], h                                    ; $7f45: $74
    nop                                           ; $7f46: $00
    ld [hl], l                                    ; $7f47: $75
    nop                                           ; $7f48: $00
    halt                                          ; $7f49: $76
    nop                                           ; $7f4a: $00
    ld [hl], a                                    ; $7f4b: $77
    nop                                           ; $7f4c: $00
    nop                                           ; $7f4d: $00
    ld h, b                                       ; $7f4e: $60
    nop                                           ; $7f4f: $00
    ld h, c                                       ; $7f50: $61
    nop                                           ; $7f51: $00
    ld h, d                                       ; $7f52: $62
    nop                                           ; $7f53: $00
    ld h, e                                       ; $7f54: $63
    nop                                           ; $7f55: $00
    nop                                           ; $7f56: $00
    ld l, h                                       ; $7f57: $6c
    nop                                           ; $7f58: $00
    ld l, l                                       ; $7f59: $6d
    nop                                           ; $7f5a: $00
    ld l, [hl]                                    ; $7f5b: $6e
    nop                                           ; $7f5c: $00
    ld l, a                                       ; $7f5d: $6f
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    ld a, b                                       ; $7f60: $78
    nop                                           ; $7f61: $00
    ld a, c                                       ; $7f62: $79
    nop                                           ; $7f63: $00
    ld a, d                                       ; $7f64: $7a
    nop                                           ; $7f65: $00
    ld a, e                                       ; $7f66: $7b
    nop                                           ; $7f67: $00
    ld [hl], e                                    ; $7f68: $73
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    nop                                           ; $7f6b: $00
    nop                                           ; $7f6c: $00
    ld bc, $0200                                  ; $7f6d: $01 $00 $02
    nop                                           ; $7f70: $00
    inc bc                                        ; $7f71: $03
    nop                                           ; $7f72: $00
    nop                                           ; $7f73: $00
    dec c                                         ; $7f74: $0d
    nop                                           ; $7f75: $00
    ld c, $00                                     ; $7f76: $0e $00
    rrca                                          ; $7f78: $0f
    nop                                           ; $7f79: $00
    stop                                          ; $7f7a: $10 $00
    nop                                           ; $7f7c: $00
    dec e                                         ; $7f7d: $1d
    nop                                           ; $7f7e: $00
    nop                                           ; $7f7f: $00
    nop                                           ; $7f80: $00
    inc b                                         ; $7f81: $04
    nop                                           ; $7f82: $00
    dec b                                         ; $7f83: $05
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    ld b, $00                                     ; $7f86: $06 $00
    ld de, $1200                                  ; $7f88: $11 $00 $12
    nop                                           ; $7f8b: $00
    inc de                                        ; $7f8c: $13
    nop                                           ; $7f8d: $00
    db $10                                        ; $7f8e: $10
    inc d                                         ; $7f8f: $14
    nop                                           ; $7f90: $00
    ld e, $12                                     ; $7f91: $1e $12
    nop                                           ; $7f93: $00
    rlca                                          ; $7f94: $07
    nop                                           ; $7f95: $00
    ld [$0000], sp                                ; $7f96: $08 $00 $00
    add hl, bc                                    ; $7f99: $09
    nop                                           ; $7f9a: $00
    dec d                                         ; $7f9b: $15
    nop                                           ; $7f9c: $00
    ld d, $00                                     ; $7f9d: $16 $00
    rla                                           ; $7f9f: $17
    nop                                           ; $7fa0: $00
    db $10                                        ; $7fa1: $10
    jr jr_087_7fa4                                ; $7fa2: $18 $00

jr_087_7fa4:
    rra                                           ; $7fa4: $1f
    inc h                                         ; $7fa5: $24
    nop                                           ; $7fa6: $00
    ld a, [bc]                                    ; $7fa7: $0a
    nop                                           ; $7fa8: $00
    dec bc                                        ; $7fa9: $0b
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    inc c                                         ; $7fac: $0c
    nop                                           ; $7fad: $00
    add hl, de                                    ; $7fae: $19
    nop                                           ; $7faf: $00
    ld a, [de]                                    ; $7fb0: $1a
    nop                                           ; $7fb1: $00
    dec de                                        ; $7fb2: $1b
    nop                                           ; $7fb3: $00
    ld b, b                                       ; $7fb4: $40
    inc e                                         ; $7fb5: $1c
    inc [hl]                                      ; $7fb6: $34
    nop                                           ; $7fb7: $00
    nop                                           ; $7fb8: $00
    nop                                           ; $7fb9: $00
    jr nz, jr_087_7fbc                            ; $7fba: $20 $00

jr_087_7fbc:
    ld hl, $5000                                  ; $7fbc: $21 $00 $50
    ld [hl+], a                                   ; $7fbf: $22
    inc d                                         ; $7fc0: $14
    db $10                                        ; $7fc1: $10
    ld l, $12                                     ; $7fc2: $2e $12
    db $10                                        ; $7fc4: $10
    inc hl                                        ; $7fc5: $23
    nop                                           ; $7fc6: $00
    inc h                                         ; $7fc7: $24
    nop                                           ; $7fc8: $00
    ld l, b                                       ; $7fc9: $68
    dec h                                         ; $7fca: $25
    jr nz, jr_087_7fcd                            ; $7fcb: $20 $00

jr_087_7fcd:
    inc d                                         ; $7fcd: $14
    ld [$242f], sp                                ; $7fce: $08 $2f $24
    db $10                                        ; $7fd1: $10
    ld h, $00                                     ; $7fd2: $26 $00
    daa                                           ; $7fd4: $27
    nop                                           ; $7fd5: $00
    nop                                           ; $7fd6: $00
    jr z, jr_087_7fd9                             ; $7fd7: $28 $00

jr_087_7fd9:
    add hl, hl                                    ; $7fd9: $29
    nop                                           ; $7fda: $00
    jr nc, jr_087_7fdd                            ; $7fdb: $30 $00

jr_087_7fdd:
    ld sp, $0020                                  ; $7fdd: $31 $20 $00
    ld [hl-], a                                   ; $7fe0: $32
    ld [hl], $10                                  ; $7fe1: $36 $10
    ld a, [hl+]                                   ; $7fe3: $2a
    nop                                           ; $7fe4: $00
    dec hl                                        ; $7fe5: $2b
    nop                                           ; $7fe6: $00
    inc l                                         ; $7fe7: $2c
    nop                                           ; $7fe8: $00
    nop                                           ; $7fe9: $00
    dec l                                         ; $7fea: $2d
    nop                                           ; $7feb: $00
    inc sp                                        ; $7fec: $33
    nop                                           ; $7fed: $00
    inc [hl]                                      ; $7fee: $34
    nop                                           ; $7fef: $00
    dec [hl]                                      ; $7ff0: $35
    jr nz, jr_087_7ff3                            ; $7ff1: $20 $00

jr_087_7ff3:
    ld [hl], $7c                                  ; $7ff3: $36 $7c
    nop                                           ; $7ff5: $00
    nop                                           ; $7ff6: $00
    jr c, @+$72                                   ; $7ff7: $38 $70

    ld bc, $61ea                                  ; $7ff9: $01 $ea $61
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
