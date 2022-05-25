; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ad", ROMX[$4000], BANK[$ad]

    db $ad

    db $10                                        ; $4001: $10
    inc bc                                        ; $4002: $03
    ld l, e                                       ; $4003: $6b
    ld [bc], a                                    ; $4004: $02
    ld b, b                                       ; $4005: $40
    nop                                           ; $4006: $00
    ld bc, $17d8                                  ; $4007: $01 $d8 $17
    nop                                           ; $400a: $00
    nop                                           ; $400b: $00

Call_0ad_400c:
    ld b, b                                       ; $400c: $40
    jr nz, jr_0ad_402f                            ; $400d: $20 $20

    nop                                           ; $400f: $00
    db $10                                        ; $4010: $10
    db $10                                        ; $4011: $10
    ld [$0101], sp                                ; $4012: $08 $01 $01
    db $fc                                        ; $4015: $fc
    ld sp, hl                                     ; $4016: $f9
    ld [c], a                                     ; $4017: $e2
    nop                                           ; $4018: $00

Call_0ad_4019:
    ldh [$d9], a                                  ; $4019: $e0 $d9
    jp $8088                                      ; $401b: $c3 $88 $80


    ld d, l                                       ; $401e: $55
    ld c, c                                       ; $401f: $49
    inc a                                         ; $4020: $3c
    nop                                           ; $4021: $00
    inc e                                         ; $4022: $1c
    ld b, b                                       ; $4023: $40
    ld [$8c14], sp                                ; $4024: $08 $14 $8c
    nop                                           ; $4027: $00
    inc e                                         ; $4028: $1c
    ld b, c                                       ; $4029: $41
    nop                                           ; $402a: $00
    ld d, l                                       ; $402b: $55
    ld c, e                                       ; $402c: $4b
    ld b, c                                       ; $402d: $41
    add b                                         ; $402e: $80

jr_0ad_402f:
    nop                                           ; $402f: $00
    ld bc, $fb02                                  ; $4030: $01 $02 $fb
    nop                                           ; $4033: $00
    db $fd                                        ; $4034: $fd
    ld [hl], a                                    ; $4035: $77
    ld a, e                                       ; $4036: $7b
    add b                                         ; $4037: $80
    add b                                         ; $4038: $80
    sub b                                         ; $4039: $90
    ret nz                                        ; $403a: $c0

    jr nz, jr_0ad_4051                            ; $403b: $20 $14

    nop                                           ; $403d: $00
    ld h, e                                       ; $403e: $63
    ld l, b                                       ; $403f: $68
    ld d, b                                       ; $4040: $50
    ld e, b                                       ; $4041: $58
    db $f4                                        ; $4042: $f4
    ld e, a                                       ; $4043: $5f
    ret nc                                        ; $4044: $d0

Call_0ad_4045:
    inc bc                                        ; $4045: $03
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    inc bc                                        ; $4048: $03
    dec c                                         ; $4049: $0d
    dec bc                                        ; $404a: $0b
    nop                                           ; $404b: $00
    ld hl, sp-$02                                 ; $404c: $f8 $fe
    db $fd                                        ; $404e: $fd
    db $fc                                        ; $404f: $fc
    nop                                           ; $4050: $00

jr_0ad_4051:
    inc bc                                        ; $4051: $03
    ldh a, [$0e]                                  ; $4052: $f0 $0e
    ldh [$d8], a                                  ; $4054: $e0 $d8
    pop bc                                        ; $4056: $c1
    jr nc, jr_0ad_4060                            ; $4057: $30 $07

    nop                                           ; $4059: $00
    ldh [$8f], a                                  ; $405a: $e0 $8f
    nop                                           ; $405c: $00
    pop af                                        ; $405d: $f1
    ld h, d                                       ; $405e: $62
    ld l, h                                       ; $405f: $6c

jr_0ad_4060:
    ret nz                                        ; $4060: $c0

    sbc $00                                       ; $4061: $de $00
    inc c                                         ; $4063: $0c
    inc [hl]                                      ; $4064: $34
    dec de                                        ; $4065: $1b
    xor $33                                       ; $4066: $ee $33
    jp c, $f507                                   ; $4068: $da $07 $f5

    nop                                           ; $406b: $00
    inc b                                         ; $406c: $04
    add sp, $14                                   ; $406d: $e8 $14
    nop                                           ; $406f: $00
    pop bc                                        ; $4070: $c1
    ret                                           ; $4071: $c9


    ld [hl+], a                                   ; $4072: $22
    jp hl                                         ; $4073: $e9


    nop                                           ; $4074: $00
    db $e3                                        ; $4075: $e3
    nop                                           ; $4076: $00
    ld b, l                                       ; $4077: $45
    daa                                           ; $4078: $27
    ld a, [bc]                                    ; $4079: $0a
    ld b, b                                       ; $407a: $40
    ld e, l                                       ; $407b: $5d
    ld [$4300], sp                                ; $407c: $08 $00 $43
    inc [hl]                                      ; $407f: $34
    ld b, a                                       ; $4080: $47
    ld [$86a6], sp                                ; $4081: $08 $a6 $86
    add e                                         ; $4084: $83
    dec sp                                        ; $4085: $3b
    nop                                           ; $4086: $00
    adc b                                         ; $4087: $88
    inc [hl]                                      ; $4088: $34
    ld c, h                                       ; $4089: $4c
    dec de                                        ; $408a: $1b
    ld h, [hl]                                    ; $408b: $66
    dec l                                         ; $408c: $2d
    ld [hl], b                                    ; $408d: $70
    ld d, a                                       ; $408e: $57
    nop                                           ; $408f: $00
    jr jr_0ad_409d                                ; $4090: $18 $0b

    rst $28                                       ; $4092: $ef
    rla                                           ; $4093: $17
    rra                                           ; $4094: $1f
    ld a, a                                       ; $4095: $7f
    add b                                         ; $4096: $80
    ccf                                           ; $4097: $3f
    nop                                           ; $4098: $00
    ret nz                                        ; $4099: $c0

    rrca                                          ; $409a: $0f
    ld [hl], a                                    ; $409b: $77

jr_0ad_409c:
    rlca                                          ; $409c: $07

jr_0ad_409d:
    dec de                                        ; $409d: $1b
    add e                                         ; $409e: $83
    ld l, h                                       ; $409f: $6c
    ldh [rNR41], a                                ; $40a0: $e0 $20
    rlca                                          ; $40a2: $07
    ldh a, [$d0]                                  ; $40a3: $f0 $d0
    ld d, b                                       ; $40a5: $50
    ld h, b                                       ; $40a6: $60
    ld h, b                                       ; $40a7: $60
    ret c                                         ; $40a8: $d8

    ld c, $35                                     ; $40a9: $0e $35
    nop                                           ; $40ab: $00
    jr c, jr_0ad_4120                             ; $40ac: $38 $72

    jr c, jr_0ad_409c                             ; $40ae: $38 $ec

    ld [$f296], a                                 ; $40b0: $ea $96 $f2
    adc [hl]                                      ; $40b3: $8e
    nop                                           ; $40b4: $00
    ld a, h                                       ; $40b5: $7c
    ld b, b                                       ; $40b6: $40
    ccf                                           ; $40b7: $3f
    ld h, c                                       ; $40b8: $61
    ld [hl+], a                                   ; $40b9: $22
    dec a                                         ; $40ba: $3d
    nop                                           ; $40bb: $00
    rra                                           ; $40bc: $1f
    inc d                                         ; $40bd: $14
    ld a, a                                       ; $40be: $7f
    nop                                           ; $40bf: $00
    rst $38                                       ; $40c0: $ff
    push af                                       ; $40c1: $f5
    db $10                                        ; $40c2: $10
    ld b, d                                       ; $40c3: $42
    jr c, jr_0ad_40ce                             ; $40c4: $38 $08

    rra                                           ; $40c6: $1f
    dec b                                         ; $40c7: $05
    nop                                           ; $40c8: $00
    jp hl                                         ; $40c9: $e9


    inc bc                                        ; $40ca: $03
    ld [c], a                                     ; $40cb: $e2
    rrca                                          ; $40cc: $0f
    db $e4                                        ; $40cd: $e4

jr_0ad_40ce:
    ld c, $c7                                     ; $40ce: $0e $c7
    inc b                                         ; $40d0: $04
    nop                                           ; $40d1: $00
    db $e4                                        ; $40d2: $e4
    dec c                                         ; $40d3: $0d
    push hl                                       ; $40d4: $e5
    dec c                                         ; $40d5: $0d
    db $e4                                        ; $40d6: $e4
    add hl, bc                                    ; $40d7: $09
    call z, Call_000_00eb                         ; $40d8: $cc $eb $00
    nop                                           ; $40db: $00
    db $e3                                        ; $40dc: $e3
    ld e, l                                       ; $40dd: $5d
    add b                                         ; $40de: $80
    nop                                           ; $40df: $00
    inc e                                         ; $40e0: $1c
    ld a, a                                       ; $40e1: $7f
    adc h                                         ; $40e2: $8c
    nop                                           ; $40e3: $00
    pop de                                        ; $40e4: $d1
    sbc h                                         ; $40e5: $9c
    db $eb                                        ; $40e6: $eb
    adc b                                         ; $40e7: $88

Jump_0ad_40e8:
    inc e                                         ; $40e8: $1c
    ld a, $dd                                     ; $40e9: $3e $dd
    ld e, l                                       ; $40eb: $5d
    nop                                           ; $40ec: $00
    sub l                                         ; $40ed: $95
    dec b                                         ; $40ee: $05
    push bc                                       ; $40ef: $c5
    dec bc                                        ; $40f0: $0b
    db $e3                                        ; $40f1: $e3
    ld c, c                                       ; $40f2: $49
    ld sp, $0083                                  ; $40f3: $31 $83 $00
    inc de                                        ; $40f6: $13
    db $db                                        ; $40f7: $db
    add e                                         ; $40f8: $83
    sub e                                         ; $40f9: $93
    ld c, e                                       ; $40fa: $4b
    ld d, c                                       ; $40fb: $51
    adc c                                         ; $40fc: $89
    pop bc                                        ; $40fd: $c1
    db $10                                        ; $40fe: $10
    ld hl, sp+$00                                 ; $40ff: $f8 $00
    cp $34                                        ; $4101: $fe $34

Jump_0ad_4103:
    ld de, $68ff                                  ; $4103: $11 $ff $68
    sub [hl]                                      ; $4106: $96
    ld bc, $fd00                                  ; $4107: $01 $00 $fd
    ld bc, $38f8                                  ; $410a: $01 $f8 $38
    ld bc, $828e                                  ; $410d: $01 $8e $82
    ld c, [hl]                                    ; $4110: $4e
    nop                                           ; $4111: $00

jr_0ad_4112:
    ld d, e                                       ; $4112: $53
    ld e, $b5                                     ; $4113: $1e $b5
    ld bc, $501e                                  ; $4115: $01 $1e $50
    ld c, $b8                                     ; $4118: $0e $b8
    nop                                           ; $411a: $00
    add $a0                                       ; $411b: $c6 $a0
    call c, Call_000_2f24                         ; $411d: $dc $24 $2f

jr_0ad_4120:
    ld a, [bc]                                    ; $4120: $0a
    inc a                                         ; $4121: $3c
    ld d, $00                                     ; $4122: $16 $00
    inc d                                         ; $4124: $14
    db $10                                        ; $4125: $10
    ret nc                                        ; $4126: $d0

    inc de                                        ; $4127: $13
    ret nc                                        ; $4128: $d0

    inc bc                                        ; $4129: $03
    ldh [rTAC], a                                 ; $412a: $e0 $07
    ld bc, $e3e4                                  ; $412c: $01 $e4 $e3
    db $e4                                        ; $412f: $e4
    ldh [$27], a                                  ; $4130: $e0 $27
    ldh [rNR44], a                                ; $4132: $e0 $23
    ld [$0000], a                                 ; $4134: $ea $00 $00
    add c                                         ; $4137: $81
    add hl, de                                    ; $4138: $19
    dec c                                         ; $4139: $0d
    ld c, $1e                                     ; $413a: $0e $1e
    ld e, $0f                                     ; $413c: $1e $0f
    rra                                           ; $413e: $1f
    nop                                           ; $413f: $00
    ld bc, $e005                                  ; $4140: $01 $05 $e0
    ld hl, sp+$02                                 ; $4143: $f8 $02
    db $fc                                        ; $4145: $fc
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    jr c, jr_0ad_4112                             ; $4149: $38 $c7

    jp $4360                                      ; $414b: $c3 $60 $43


    dec d                                         ; $414e: $15
    add hl, bc                                    ; $414f: $09
    ld c, $00                                     ; $4150: $0e $00
    ld [de], a                                    ; $4152: $12
    pop bc                                        ; $4153: $c1
    db $dd                                        ; $4154: $dd
    pop bc                                        ; $4155: $c1
    ld b, c                                       ; $4156: $41
    jp Jump_000_3e9e                              ; $4157: $c3 $9e $3e


    nop                                           ; $415a: $00
    inc e                                         ; $415b: $1c
    inc e                                         ; $415c: $1c
    ld [hl+], a                                   ; $415d: $22
    add b                                         ; $415e: $80
    rst $38                                       ; $415f: $ff
    ld a, [hl]                                    ; $4160: $7e
    cp a                                          ; $4161: $bf
    inc e                                         ; $4162: $1c
    nop                                           ; $4163: $00
    inc e                                         ; $4164: $1c
    ret nc                                        ; $4165: $d0

    inc de                                        ; $4166: $13
    and b                                         ; $4167: $a0
    cpl                                           ; $4168: $2f
    sbc a                                         ; $4169: $9f
    add b                                         ; $416a: $80
    inc c                                         ; $416b: $0c
    nop                                           ; $416c: $00
    ld bc, $e192                                  ; $416d: $01 $92 $e1
    inc bc                                        ; $4170: $03
    pop hl                                        ; $4171: $e1
    sbc b                                         ; $4172: $98
    ld c, h                                       ; $4173: $4c
    jr c, jr_0ad_4176                             ; $4174: $38 $00

jr_0ad_4176:
    jr jr_0ad_417b                                ; $4176: $18 $03

    pop af                                        ; $4178: $f1
    inc bc                                        ; $4179: $03
    ld [c], a                                     ; $417a: $e2

jr_0ad_417b:
    nop                                           ; $417b: $00
    nop                                           ; $417c: $00
    and b                                         ; $417d: $a0
    nop                                           ; $417e: $00
    ld h, b                                       ; $417f: $60
    ld d, h                                       ; $4180: $54
    adc h                                         ; $4181: $8c
    call nz, Call_0ad_44fc                        ; $4182: $c4 $fc $44
    inc a                                         ; $4185: $3c
    inc b                                         ; $4186: $04
    nop                                           ; $4187: $00
    ld a, b                                       ; $4188: $78
    ld bc, $8995                                  ; $4189: $01 $95 $89
    dec [hl]                                      ; $418c: $35
    jr nc, @+$15                                  ; $418d: $30 $13

    add b                                         ; $418f: $80
    nop                                           ; $4190: $00
    add e                                         ; $4191: $83
    ld h, b                                       ; $4192: $60

jr_0ad_4193:
    add e                                         ; $4193: $83

jr_0ad_4194:
    ld h, b                                       ; $4194: $60
    ld h, e                                       ; $4195: $63
    ld h, b                                       ; $4196: $60
    inc bc                                        ; $4197: $03
    ld [hl], b                                    ; $4198: $70
    nop                                           ; $4199: $00
    inc de                                        ; $419a: $13
    db $e3                                        ; $419b: $e3
    db $e4                                        ; $419c: $e4
    inc bc                                        ; $419d: $03
    ld c, $18                                     ; $419e: $0e $18
    ld a, [de]                                    ; $41a0: $1a
    jr jr_0ad_41a3                                ; $41a1: $18 $00

jr_0ad_41a3:
    dec c                                         ; $41a3: $0d
    dec c                                         ; $41a4: $0d
    jr jr_0ad_4194                                ; $41a5: $18 $ed

    ld [c], a                                     ; $41a7: $e2
    pop hl                                        ; $41a8: $e1
    ldh [$f0], a                                  ; $41a9: $e0 $f0
    nop                                           ; $41ab: $00
    ldh [$0e], a                                  ; $41ac: $e0 $0e
    dec e                                         ; $41ae: $1d
    ret nz                                        ; $41af: $c0

    ld b, b                                       ; $41b0: $40
    jr nz, jr_0ad_4193                            ; $41b1: $20 $e0

    pop bc                                        ; $41b3: $c1
    nop                                           ; $41b4: $00
    ld bc, $08c0                                  ; $41b5: $01 $c0 $08
    ldh a, [$96]                                  ; $41b8: $f0 $96
    add b                                         ; $41ba: $80
    ld l, h                                       ; $41bb: $6c
    nop                                           ; $41bc: $00
    db $10                                        ; $41bd: $10
    jr jr_0ad_41ce                                ; $41be: $18 $0e

    ld b, b                                       ; $41c0: $40
    dec d                                         ; $41c1: $15
    nop                                           ; $41c2: $00
    sub b                                         ; $41c3: $90
    nop                                           ; $41c4: $00
    cp $f0                                        ; $41c5: $fe $f0
    nop                                           ; $41c7: $00
    ld [hl], b                                    ; $41c8: $70
    adc e                                         ; $41c9: $8b
    add [hl]                                      ; $41ca: $86
    nop                                           ; $41cb: $00
    ld c, $1c                                     ; $41cc: $0e $1c

jr_0ad_41ce:
    ld c, $1c                                     ; $41ce: $0e $1c
    nop                                           ; $41d0: $00
    nop                                           ; $41d1: $00
    inc b                                         ; $41d2: $04
    inc e                                         ; $41d3: $1c
    set 4, e                                      ; $41d4: $cb $e3
    pop bc                                        ; $41d6: $c1
    db $e3                                        ; $41d7: $e3
    inc e                                         ; $41d8: $1c
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    jr jr_0ad_41f9                                ; $41db: $18 $1c

    ld b, d                                       ; $41dd: $42
    ld c, e                                       ; $41de: $4b
    inc e                                         ; $41df: $1c
    inc b                                         ; $41e0: $04
    jr c, jr_0ad_41e3                             ; $41e1: $38 $00

jr_0ad_41e3:
    ld a, e                                       ; $41e3: $7b
    rlca                                          ; $41e4: $07
    ld b, e                                       ; $41e5: $43
    add a                                         ; $41e6: $87
    add e                                         ; $41e7: $83
    add b                                         ; $41e8: $80
    rra                                           ; $41e9: $1f
    ld [$0f00], sp                                ; $41ea: $08 $00 $0f
    ld h, b                                       ; $41ed: $60
    db $10                                        ; $41ee: $10
    jr c, @+$72                                   ; $41ef: $38 $70

    jr c, jr_0ad_420f                             ; $41f1: $38 $1c

    ld e, h                                       ; $41f3: $5c
    nop                                           ; $41f4: $00
    inc h                                         ; $41f5: $24
    ld bc, $0281                                  ; $41f6: $01 $81 $02

jr_0ad_41f9:
    add c                                         ; $41f9: $81
    ret nz                                        ; $41fa: $c0

    ld b, c                                       ; $41fb: $41
    add c                                         ; $41fc: $81
    nop                                           ; $41fd: $00
    add hl, bc                                    ; $41fe: $09
    add l                                         ; $41ff: $85
    rst $00                                       ; $4200: $c7
    ld a, [de]                                    ; $4201: $1a
    inc bc                                        ; $4202: $03
    inc e                                         ; $4203: $1c
    nop                                           ; $4204: $00
    ld h, e                                       ; $4205: $63
    nop                                           ; $4206: $00
    inc bc                                        ; $4207: $03
    ld h, e                                       ; $4208: $63
    adc e                                         ; $4209: $8b
    adc h                                         ; $420a: $8c
    sbc b                                         ; $420b: $98
    sbc b                                         ; $420c: $98

jr_0ad_420d:
    adc h                                         ; $420d: $8c
    sbc e                                         ; $420e: $9b

jr_0ad_420f:
    nop                                           ; $420f: $00
    ld b, e                                       ; $4210: $43
    db $db                                        ; $4211: $db

jr_0ad_4212:
    inc hl                                        ; $4212: $23
    ret z                                         ; $4213: $c8

    rrca                                          ; $4214: $0f
    nop                                           ; $4215: $00
    rlca                                          ; $4216: $07
    ldh a, [rSC]                                  ; $4217: $f0 $02
    ld hl, sp-$07                                 ; $4219: $f8 $f9
    db $fc                                        ; $421b: $fc
    cp $fe                                        ; $421c: $fe $fe
    cp $05                                        ; $421e: $fe $05
    ld bc, $80fe                                  ; $4220: $01 $fe $80
    ld c, b                                       ; $4223: $48
    ld de, $4830                                  ; $4224: $11 $30 $48
    add b                                         ; $4227: $80
    cp b                                          ; $4228: $b8
    add e                                         ; $4229: $83
    or c                                          ; $422a: $b1
    add a                                         ; $422b: $87
    nop                                           ; $422c: $00
    or e                                          ; $422d: $b3
    add a                                         ; $422e: $87
    or a                                          ; $422f: $b7
    rst $10                                       ; $4230: $d7
    db $10                                        ; $4231: $10
    ld d, [hl]                                    ; $4232: $56
    ld de, $0044                                  ; $4233: $11 $44 $00
    ld d, b                                       ; $4236: $50
    ld bc, $2223                                  ; $4237: $01 $23 $22
    pop hl                                        ; $423a: $e1
    ld [bc], a                                    ; $423b: $02
    pop bc                                        ; $423c: $c1
    ld b, d                                       ; $423d: $42

jr_0ad_423e:
    nop                                           ; $423e: $00
    add c                                         ; $423f: $81
    ld b, h                                       ; $4240: $44
    call nz, $dc60                                ; $4241: $c4 $60 $dc
    ld b, b                                       ; $4244: $40
    inc a                                         ; $4245: $3c
    ld b, d                                       ; $4246: $42
    nop                                           ; $4247: $00
    ld a, h                                       ; $4248: $7c
    jr c, jr_0ad_423e                             ; $4249: $38 $f3

    inc b                                         ; $424b: $04
    rst $20                                       ; $424c: $e7
    jr z, jr_0ad_4212                             ; $424d: $28 $c3

    jr jr_0ad_4251                                ; $424f: $18 $00

jr_0ad_4251:
    ei                                            ; $4251: $fb
    ld [hl], $2a                                  ; $4252: $36 $2a
    ld c, b                                       ; $4254: $48
    ld b, b                                       ; $4255: $40
    jr @+$0e                                      ; $4256: $18 $0c

    inc e                                         ; $4258: $1c
    nop                                           ; $4259: $00
    jr @+$04                                      ; $425a: $18 $02

    jp nz, $e122                                  ; $425c: $c2 $22 $e1

    pop bc                                        ; $425f: $c1
    jr nz, @-$1d                                  ; $4260: $20 $e1

    nop                                           ; $4262: $00
    jr nz, jr_0ad_4295                            ; $4263: $20 $30

    ld sp, $1d03                                  ; $4265: $31 $03 $1d
    ld e, $20                                     ; $4268: $1e $20
    ld a, $00                                     ; $426a: $3e $00
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    ld c, $81                                     ; $426e: $0e $81
    dec c                                         ; $4270: $0d
    call $f52c                                    ; $4271: $cd $2c $f5
    nop                                           ; $4274: $00
    inc b                                         ; $4275: $04
    pop af                                        ; $4276: $f1
    push af                                       ; $4277: $f5
    di                                            ; $4278: $f3
    db $e3                                        ; $4279: $e3
    ld b, b                                       ; $427a: $40
    ld [hl-], a                                   ; $427b: $32
    jr nc, @+$10                                  ; $427c: $30 $0e

    ld [hl+], a                                   ; $427e: $22
    rlca                                          ; $427f: $07
    rrca                                          ; $4280: $0f
    adc a                                         ; $4281: $8f
    and d                                         ; $4282: $a2
    ld bc, $1802                                  ; $4283: $01 $02 $18
    sbc h                                         ; $4286: $9c
    adc d                                         ; $4287: $8a
    ld h, b                                       ; $4288: $60
    nop                                           ; $4289: $00
    ld h, b                                       ; $428a: $60
    jr nz, jr_0ad_420d                            ; $428b: $20 $80

    ld hl, $b181                                  ; $428d: $21 $81 $b1
    add d                                         ; $4290: $82
    ret nc                                        ; $4291: $d0

    nop                                           ; $4292: $00
    ret nz                                        ; $4293: $c0

    rra                                           ; $4294: $1f

jr_0ad_4295:
    ret nz                                        ; $4295: $c0

    nop                                           ; $4296: $00
    ret nz                                        ; $4297: $c0

    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    dec c                                         ; $429a: $0d
    ld bc, $013c                                  ; $429b: $01 $3c $01
    ld b, b                                       ; $429e: $40
    pop bc                                        ; $429f: $c1
    ld bc, $60a0                                  ; $42a0: $01 $a0 $60
    sub c                                         ; $42a3: $91
    ld bc, $cb80                                  ; $42a4: $01 $80 $cb
    ld a, [de]                                    ; $42a7: $1a
    jp $e9c3                                      ; $42a8: $c3 $c3 $e9


    db $e3                                        ; $42ab: $e3
    ret                                           ; $42ac: $c9


    ld b, c                                       ; $42ad: $41
    adc d                                         ; $42ae: $8a
    add b                                         ; $42af: $80
    db $10                                        ; $42b0: $10
    jr @+$01                                      ; $42b1: $18 $ff

    nop                                           ; $42b3: $00
    adc $d8                                       ; $42b4: $ce $d8
    ret nz                                        ; $42b6: $c0

    nop                                           ; $42b7: $00
    add c                                         ; $42b8: $81
    db $10                                        ; $42b9: $10
    add c                                         ; $42ba: $81
    ld bc, $1082                                  ; $42bb: $01 $82 $10
    jr z, jr_0ad_42c6                             ; $42be: $28 $06

    nop                                           ; $42c0: $00
    inc b                                         ; $42c1: $04

Jump_0ad_42c2:
    ld bc, $8400                                  ; $42c2: $01 $00 $84
    dec b                                         ; $42c5: $05

jr_0ad_42c6:
    call z, $082d                                 ; $42c6: $cc $2d $08
    inc bc                                        ; $42c9: $03
    ld hl, sp+$03                                 ; $42ca: $f8 $03
    ld h, b                                       ; $42cc: $60
    inc bc                                        ; $42cd: $03
    inc [hl]                                      ; $42ce: $34
    jr z, jr_0ad_42d6                             ; $42cf: $28 $05

    ld b, e                                       ; $42d1: $43
    db $10                                        ; $42d2: $10
    inc bc                                        ; $42d3: $03
    adc $02                                       ; $42d4: $ce $02

jr_0ad_42d6:
    ld b, b                                       ; $42d6: $40
    nop                                           ; $42d7: $00
    ld bc, $0100                                  ; $42d8: $01 $00 $01
    nop                                           ; $42db: $00
    inc e                                         ; $42dc: $1c
    inc bc                                        ; $42dd: $03
    ld a, a                                       ; $42de: $7f
    nop                                           ; $42df: $00
    ld [bc], a                                    ; $42e0: $02
    ld b, c                                       ; $42e1: $41
    nop                                           ; $42e2: $00
    ld e, $09                                     ; $42e3: $1e $09
    rla                                           ; $42e5: $17
    ld a, [de]                                    ; $42e6: $1a
    db $10                                        ; $42e7: $10
    ld [$0000], sp                                ; $42e8: $08 $00 $00
    nop                                           ; $42eb: $00
    ldh a, [$0c]                                  ; $42ec: $f0 $0c
    ld b, $f9                                     ; $42ee: $06 $f9
    nop                                           ; $42f0: $00
    pop bc                                        ; $42f1: $c1
    ret nz                                        ; $42f2: $c0

    nop                                           ; $42f3: $00
    inc a                                         ; $42f4: $3c
    ret nz                                        ; $42f5: $c0

    ld [hl+], a                                   ; $42f6: $22
    nop                                           ; $42f7: $00
    nop                                           ; $42f8: $00
    cp $00                                        ; $42f9: $fe $00
    db $fc                                        ; $42fb: $fc
    nop                                           ; $42fc: $00
    ld bc, $f901                                  ; $42fd: $01 $01 $f9
    rlca                                          ; $4300: $07
    pop bc                                        ; $4301: $c1
    inc e                                         ; $4302: $1c
    add b                                         ; $4303: $80
    ld [de], a                                    ; $4304: $12
    nop                                           ; $4305: $00
    sub b                                         ; $4306: $90
    inc d                                         ; $4307: $14
    add b                                         ; $4308: $80
    ret nz                                        ; $4309: $c0

    nop                                           ; $430a: $00
    nop                                           ; $430b: $00
    db $10                                        ; $430c: $10
    rra                                           ; $430d: $1f
    nop                                           ; $430e: $00
    nop                                           ; $430f: $00
    ld e, $2a                                     ; $4310: $1e $2a
    call z, Call_000_185a                         ; $4312: $cc $5a $18
    cpl                                           ; $4315: $2f
    ld a, c                                       ; $4316: $79
    nop                                           ; $4317: $00
    ld hl, $b97f                                  ; $4318: $21 $7f $b9
    ld a, a                                       ; $431b: $7f
    nop                                           ; $431c: $00
    ld bc, $be80                                  ; $431d: $01 $80 $be
    nop                                           ; $4320: $00
    add h                                         ; $4321: $84
    nop                                           ; $4322: $00
    ld a, h                                       ; $4323: $7c
    inc de                                        ; $4324: $13
    sbc $1c                                       ; $4325: $de $1c
    sub d                                         ; $4327: $92
    and [hl]                                      ; $4328: $a6
    db $10                                        ; $4329: $10
    adc b                                         ; $432a: $88
    inc de                                        ; $432b: $13
    ld [hl], e                                    ; $432c: $73
    ld d, b                                       ; $432d: $50
    ld [$003f], sp                                ; $432e: $08 $3f $00
    rra                                           ; $4331: $1f
    ld b, b                                       ; $4332: $40
    nop                                           ; $4333: $00
    cpl                                           ; $4334: $2f
    ldh [$2f], a                                  ; $4335: $e0 $2f
    ldh [rP1], a                                  ; $4337: $e0 $00
    rlca                                          ; $4339: $07
    ldh a, [rNR13]                                ; $433a: $f0 $13
    ret nz                                        ; $433c: $c0

    ld d, b                                       ; $433d: $50
    jr jr_0ad_4346                                ; $433e: $18 $06

    jr c, jr_0ad_43b2                             ; $4340: $38 $70

    ld l, a                                       ; $4342: $6f
    rra                                           ; $4343: $1f
    db $10                                        ; $4344: $10
    ld a, c                                       ; $4345: $79

jr_0ad_4346:
    ld b, [hl]                                    ; $4346: $46
    nop                                           ; $4347: $00
    ccf                                           ; $4348: $3f
    jr nz, jr_0ad_437b                            ; $4349: $20 $30

    cpl                                           ; $434b: $2f
    rra                                           ; $434c: $1f
    jr jr_0ad_438b                                ; $434d: $18 $3c

jr_0ad_434f:
    inc sp                                        ; $434f: $33
    nop                                           ; $4350: $00
    rlca                                          ; $4351: $07
    dec de                                        ; $4352: $1b
    ldh [$de], a                                  ; $4353: $e0 $de
    pop bc                                        ; $4355: $c1
    ret nz                                        ; $4356: $c0

Jump_0ad_4357:
    ld [$00e9], a                                 ; $4357: $ea $e9 $00
    cp $f1                                        ; $435a: $fe $f1
    db $fc                                        ; $435c: $fc
    ld [c], a                                     ; $435d: $e2
    ret nz                                        ; $435e: $c0

    jr c, @-$1e                                   ; $435f: $38 $e0

    ldh a, [rP1]                                  ; $4361: $f0 $00
    ldh [$de], a                                  ; $4363: $e0 $de
    dec l                                         ; $4365: $2d
    and l                                         ; $4366: $a5
    ld l, h                                       ; $4367: $6c
    dec sp                                        ; $4368: $3b
    ld [hl], h                                    ; $4369: $74
    ld l, [hl]                                    ; $436a: $6e
    nop                                           ; $436b: $00
    ld c, h                                       ; $436c: $4c
    jr nz, jr_0ad_434f                            ; $436d: $20 $e0

    ld l, b                                       ; $436f: $68
    ld e, e                                       ; $4370: $5b
    pop de                                        ; $4371: $d1
    ld e, [hl]                                    ; $4372: $5e
    call z, Call_000_2400                         ; $4373: $cc $00 $24
    ld a, [c]                                     ; $4376: $f2
    adc h                                         ; $4377: $8c
    rst $30                                       ; $4378: $f7
    adc l                                         ; $4379: $8d
    ld e, b                                       ; $437a: $58

jr_0ad_437b:
    ld l, $b7                                     ; $437b: $2e $b7
    nop                                           ; $437d: $00
    ld e, c                                       ; $437e: $59
    cp [hl]                                       ; $437f: $be
    ld b, [hl]                                    ; $4380: $46
    db $e4                                        ; $4381: $e4
    ldh [$c1], a                                  ; $4382: $e0 $c1
    and $65                                       ; $4384: $e6 $65
    nop                                           ; $4386: $00
    ret                                           ; $4387: $c9


    add $c0                                       ; $4388: $c6 $c0
    rra                                           ; $438a: $1f

jr_0ad_438b:
    sbc h                                         ; $438b: $9c

jr_0ad_438c:
    ld e, e                                       ; $438c: $5b
    adc a                                         ; $438d: $8f
    inc b                                         ; $438e: $04
    nop                                           ; $438f: $00
    rlca                                          ; $4390: $07
    ld [hl], h                                    ; $4391: $74
    or b                                          ; $4392: $b0
    ld d, a                                       ; $4393: $57
    or c                                          ; $4394: $b1
    ld a, [c]                                     ; $4395: $f2
    ld a, c                                       ; $4396: $79
    rlc b                                         ; $4397: $cb $00
    ld [$05fb], sp                                ; $4399: $08 $fb $05
    pop af                                        ; $439c: $f1
    pop af                                        ; $439d: $f1
    add hl, bc                                    ; $439e: $09
    or [hl]                                       ; $439f: $b6
    inc a                                         ; $43a0: $3c
    nop                                           ; $43a1: $00
    jr nc, @-$42                                  ; $43a2: $30 $bc

    sbc h                                         ; $43a4: $9c
    cp [hl]                                       ; $43a5: $be
    ld e, $bc                                     ; $43a6: $1e $bc
    ld a, [hl+]                                   ; $43a8: $2a
    inc [hl]                                      ; $43a9: $34
    jr nc, jr_0ad_43ce                            ; $43aa: $30 $22

    ld d, $70                                     ; $43ac: $16 $70
    ld d, b                                       ; $43ae: $50
    xor [hl]                                      ; $43af: $ae
    nop                                           ; $43b0: $00
    rlca                                          ; $43b1: $07

jr_0ad_43b2:
    rra                                           ; $43b2: $1f
    inc [hl]                                      ; $43b3: $34
    dec sp                                        ; $43b4: $3b
    nop                                           ; $43b5: $00
    cpl                                           ; $43b6: $2f
    jr nc, jr_0ad_4408                            ; $43b7: $30 $4f

    ld [hl], $c7                                  ; $43b9: $36 $c7
    ld [hl], $e1                                  ; $43bb: $36 $e1
    add [hl]                                      ; $43bd: $86
    nop                                           ; $43be: $00
    db $e3                                        ; $43bf: $e3
    add a                                         ; $43c0: $87
    rrca                                          ; $43c1: $0f
    db $ec                                        ; $43c2: $ec
    and $da                                       ; $43c3: $e6 $da
    ld c, $f8                                     ; $43c5: $0e $f8
    nop                                           ; $43c7: $00
    ld e, $f8                                     ; $43c8: $1e $f8
    sbc [hl]                                      ; $43ca: $9e
    ldh [$3e], a                                  ; $43cb: $e0 $3e
    ret nz                                        ; $43cd: $c0

jr_0ad_43ce:
    add b                                         ; $43ce: $80
    rlca                                          ; $43cf: $07
    nop                                           ; $43d0: $00
    ldh [$c1], a                                  ; $43d1: $e0 $c1
    jr nc, jr_0ad_443d                            ; $43d3: $30 $68

    inc h                                         ; $43d5: $24
    ld a, [c]                                     ; $43d6: $f2
    nop                                           ; $43d7: $00
    ret nc                                        ; $43d8: $d0

    nop                                           ; $43d9: $00
    ld b, $8c                                     ; $43da: $06 $8c
    ld [$0c8e], sp                                ; $43dc: $08 $8e $0c
    ld a, [de]                                    ; $43df: $1a
    ld bc, $000c                                  ; $43e0: $01 $0c $00
    add c                                         ; $43e3: $81
    adc h                                         ; $43e4: $8c
    add d                                         ; $43e5: $82
    rrca                                          ; $43e6: $0f
    rrca                                          ; $43e7: $0f
    rst $00                                       ; $43e8: $c7
    rrca                                          ; $43e9: $0f
    rst $10                                       ; $43ea: $d7
    nop                                           ; $43eb: $00
    rla                                           ; $43ec: $17
    rrca                                          ; $43ed: $0f
    ld a, [bc]                                    ; $43ee: $0a
    inc e                                         ; $43ef: $1c
    nop                                           ; $43f0: $00
    ret nz                                        ; $43f1: $c0

    pop bc                                        ; $43f2: $c1
    add hl, sp                                    ; $43f3: $39
    nop                                           ; $43f4: $00
    sbc l                                         ; $43f5: $9d
    ld a, c                                       ; $43f6: $79
    db $fd                                        ; $43f7: $fd
    dec a                                         ; $43f8: $3d
    ld a, d                                       ; $43f9: $7a
    and d                                         ; $43fa: $a2
    ld l, b                                       ; $43fb: $68
    ret nc                                        ; $43fc: $d0

    nop                                           ; $43fd: $00
    ld hl, $0bf8                                  ; $43fe: $21 $f8 $0b
    ld bc, $05f3                                  ; $4401: $01 $f3 $05
    ld [bc], a                                    ; $4404: $02
    ei                                            ; $4405: $fb
    nop                                           ; $4406: $00
    ld c, b                                       ; $4407: $48

jr_0ad_4408:
    jr c, jr_0ad_438c                             ; $4408: $38 $82

    ldh [rTIMA], a                                ; $440a: $e0 $05
    inc h                                         ; $440c: $24
    add h                                         ; $440d: $84
    and h                                         ; $440e: $a4
    nop                                           ; $440f: $00
    adc l                                         ; $4410: $8d
    dec b                                         ; $4411: $05
    sbc c                                         ; $4412: $99
    ld a, [de]                                    ; $4413: $1a
    rlca                                          ; $4414: $07
    sub a                                         ; $4415: $97
    rlca                                          ; $4416: $07
    ld bc, $0700                                  ; $4417: $01 $00 $07
    nop                                           ; $441a: $00
    ld d, e                                       ; $441b: $53
    ret nz                                        ; $441c: $c0

    ldh [$80], a                                  ; $441d: $e0 $80
    ld h, b                                       ; $441f: $60
    ld hl, sp+$00                                 ; $4420: $f8 $00
    ld [hl], e                                    ; $4422: $73
    rrca                                          ; $4423: $0f
    ld de, $e80f                                  ; $4424: $11 $0f $e8
    ld h, a                                       ; $4427: $67
    ldh a, [rNR22]                                ; $4428: $f0 $17
    nop                                           ; $442a: $00
    db $f4                                        ; $442b: $f4
    inc de                                        ; $442c: $13
    db $f4                                        ; $442d: $f4
    inc de                                        ; $442e: $13
    rrca                                          ; $442f: $0f
    ld l, h                                       ; $4430: $6c
    inc sp                                        ; $4431: $33
    ld h, c                                       ; $4432: $61
    nop                                           ; $4433: $00
    ld [hl], e                                    ; $4434: $73
    ld h, c                                       ; $4435: $61
    ld d, $25                                     ; $4436: $16 $25
    dec de                                        ; $4438: $1b
    ld [hl+], a                                   ; $4439: $22
    jp nz, Jump_000_00f9                          ; $443a: $c2 $f9 $00

jr_0ad_443d:
    ld [c], a                                     ; $443d: $e2
    ld sp, hl                                     ; $443e: $f9
    add hl, de                                    ; $443f: $19
    ld [bc], a                                    ; $4440: $02
    inc c                                         ; $4441: $0c
    ld a, [de]                                    ; $4442: $1a
    rlca                                          ; $4443: $07
    jp nz, $0100                                  ; $4444: $c2 $00 $01

    ldh [$9c], a                                  ; $4447: $e0 $9c
    ld h, h                                       ; $4449: $64
    rst $00                                       ; $444a: $c7
    cp e                                          ; $444b: $bb
    ld a, a                                       ; $444c: $7f
    ld h, b                                       ; $444d: $60
    nop                                           ; $444e: $00
    rra                                           ; $444f: $1f
    sbc b                                         ; $4450: $98
    ret nz                                        ; $4451: $c0

    cp a                                          ; $4452: $bf
    add h                                         ; $4453: $84
    rrca                                          ; $4454: $0f
    adc a                                         ; $4455: $8f
    ld [$0100], sp                                ; $4456: $08 $00 $01
    pop bc                                        ; $4459: $c1
    sub c                                         ; $445a: $91
    ld [hl], c                                    ; $445b: $71
    db $e3                                        ; $445c: $e3
    inc de                                        ; $445d: $13
    ldh a, [$88]                                  ; $445e: $f0 $88
    nop                                           ; $4460: $00
    ld hl, sp-$20                                 ; $4461: $f8 $e0
    ld bc, $c1f1                                  ; $4463: $01 $f1 $c1
    ld a, h                                       ; $4466: $7c
    jp nz, Jump_000_00fe                          ; $4467: $c2 $fe $00

    ld e, $6f                                     ; $446a: $1e $6f
    rra                                           ; $446c: $1f
    ld l, a                                       ; $446d: $6f
    ld h, a                                       ; $446e: $67
    rra                                           ; $446f: $1f
    ld h, a                                       ; $4470: $67
    rra                                           ; $4471: $1f
    nop                                           ; $4472: $00
    ccf                                           ; $4473: $3f
    ld c, a                                       ; $4474: $4f
    rra                                           ; $4475: $1f
    and a                                         ; $4476: $a7
    add b                                         ; $4477: $80
    ld hl, sp-$0a                                 ; $4478: $f8 $f6
    ld [hl], h                                    ; $447a: $74
    nop                                           ; $447b: $00
    adc [hl]                                      ; $447c: $8e
    add b                                         ; $447d: $80
    db $fd                                        ; $447e: $fd
    ld [bc], a                                    ; $447f: $02
    or $e1                                        ; $4480: $f6 $e1
    ld hl, sp-$1e                                 ; $4482: $f8 $e2
    nop                                           ; $4484: $00
    ret nz                                        ; $4485: $c0

    cp a                                          ; $4486: $bf
    or e                                          ; $4487: $b3
    dec l                                         ; $4488: $2d
    sub b                                         ; $4489: $90
    add e                                         ; $448a: $83
    or [hl]                                       ; $448b: $b6
    and c                                         ; $448c: $a1
    nop                                           ; $448d: $00
    ret z                                         ; $448e: $c8

    rrca                                          ; $448f: $0f
    ld e, $1f                                     ; $4490: $1e $1f
    ld b, b                                       ; $4492: $40
    rra                                           ; $4493: $1f
    ret nz                                        ; $4494: $c0

    ld e, a                                       ; $4495: $5f
    nop                                           ; $4496: $00
    ccf                                           ; $4497: $3f
    add b                                         ; $4498: $80
    sbc a                                         ; $4499: $9f
    or b                                          ; $449a: $b0
    db $f4                                        ; $449b: $f4
    ld [de], a                                    ; $449c: $12
    ld l, h                                       ; $449d: $6c
    and d                                         ; $449e: $a2
    nop                                           ; $449f: $00
    adc $22                                       ; $44a0: $ce $22
    call z, $9c20                                 ; $44a2: $cc $20 $9c
    ld d, b                                       ; $44a5: $50
    sbc h                                         ; $44a6: $9c
    ld d, b                                       ; $44a7: $50
    ld b, b                                       ; $44a8: $40
    sbc b                                         ; $44a9: $98
    ld [bc], a                                    ; $44aa: $02
    nop                                           ; $44ab: $00
    inc e                                         ; $44ac: $1c
    dec b                                         ; $44ad: $05
    inc e                                         ; $44ae: $1c
    dec b                                         ; $44af: $05

jr_0ad_44b0:
    inc c                                         ; $44b0: $0c
    dec b                                         ; $44b1: $05
    jr nz, jr_0ad_44b0                            ; $44b2: $20 $fc

    ld a, [c]                                     ; $44b4: $f2
    ld [bc], a                                    ; $44b5: $02
    nop                                           ; $44b6: $00
    ld a, [$fbfc]                                 ; $44b7: $fa $fc $fb
    ld b, $03                                     ; $44ba: $06 $03
    nop                                           ; $44bc: $00
    ld [hl], b                                    ; $44bd: $70
    cpl                                           ; $44be: $2f
    ld e, e                                       ; $44bf: $5b
    ld h, a                                       ; $44c0: $67
    halt                                          ; $44c1: $76
    ld a, c                                       ; $44c2: $79
    call z, $00b0                                 ; $44c3: $cc $b0 $00
    ret nz                                        ; $44c6: $c0

    or b                                          ; $44c7: $b0
    ld h, b                                       ; $44c8: $60

jr_0ad_44c9:
    and b                                         ; $44c9: $a0
    nop                                           ; $44ca: $00

jr_0ad_44cb:
    ld c, a                                       ; $44cb: $4f
    dec de                                        ; $44cc: $1b
    rlca                                          ; $44cd: $07
    nop                                           ; $44ce: $00
    dec c                                         ; $44cf: $0d
    pop hl                                        ; $44d0: $e1
    ret                                           ; $44d1: $c9


    dec b                                         ; $44d2: $05
    jr jr_0ad_44eb                                ; $44d3: $18 $16

    jr jr_0ad_44e5                                ; $44d5: $18 $0e

    nop                                           ; $44d7: $00
    jr jr_0ad_44e9                                ; $44d8: $18 $0f

    inc e                                         ; $44da: $1c
    inc de                                        ; $44db: $13
    adc h                                         ; $44dc: $8c
    add e                                         ; $44dd: $83
    call z, $00c3                                 ; $44de: $cc $c3 $00
    adc a                                         ; $44e1: $8f
    ld d, e                                       ; $44e2: $53
    rst $00                                       ; $44e3: $c7
    xor b                                         ; $44e4: $a8

jr_0ad_44e5:
    or e                                          ; $44e5: $b3
    ld b, b                                       ; $44e6: $40
    ret                                           ; $44e7: $c9


    or c                                          ; $44e8: $b1

jr_0ad_44e9:
    nop                                           ; $44e9: $00
    inc a                                         ; $44ea: $3c

jr_0ad_44eb:
    ld b, d                                       ; $44eb: $42
    sbc a                                         ; $44ec: $9f
    and b                                         ; $44ed: $a0
    rrca                                          ; $44ee: $0f
    rst $00                                       ; $44ef: $c7
    rlca                                          ; $44f0: $07
    ld [c], a                                     ; $44f1: $e2
    nop                                           ; $44f2: $00
    ld h, c                                       ; $44f3: $61
    and b                                         ; $44f4: $a0
    ccf                                           ; $44f5: $3f
    call z, $3cfe                                 ; $44f6: $cc $fe $3c
    db $fc                                        ; $44f9: $fc
    add hl, de                                    ; $44fa: $19
    nop                                           ; $44fb: $00

Call_0ad_44fc:
    inc de                                        ; $44fc: $13
    ld a, b                                       ; $44fd: $78
    rlca                                          ; $44fe: $07
    inc b                                         ; $44ff: $04
    sub b                                         ; $4500: $90
    rla                                           ; $4501: $17
    and d                                         ; $4502: $a2
    sub c                                         ; $4503: $91
    nop                                           ; $4504: $00
    jr jr_0ad_4585                                ; $4505: $18 $7e

    ld c, $76                                     ; $4507: $0e $76
    db $fc                                        ; $4509: $fc
    jp nz, $f0fc                                  ; $450a: $c2 $fc $f0

    nop                                           ; $450d: $00
    add [hl]                                      ; $450e: $86
    ld a, d                                       ; $450f: $7a
    jp nz, $fc3e                                  ; $4510: $c2 $3e $fc

    ld hl, sp+$3c                                 ; $4513: $f8 $3c
    ld hl, sp+$00                                 ; $4515: $f8 $00
    jr c, jr_0ad_44c9                             ; $4517: $38 $b0

    jr c, jr_0ad_44cb                             ; $4519: $38 $b0

    jr nc, jr_0ad_452c                            ; $451b: $30 $0f

    ld [hl], b                                    ; $451d: $70
    ld c, a                                       ; $451e: $4f
    ld b, b                                       ; $451f: $40
    ccf                                           ; $4520: $3f
    ld [bc], a                                    ; $4521: $02
    nop                                           ; $4522: $00
    ld h, b                                       ; $4523: $60
    ret nz                                        ; $4524: $c0

    ld h, b                                       ; $4525: $60
    ret nz                                        ; $4526: $c0

    ld [bc], a                                    ; $4527: $02
    ld bc, $0306                                  ; $4528: $01 $06 $03
    inc bc                                        ; $452b: $03

jr_0ad_452c:
    ld bc, $0102                                  ; $452c: $01 $02 $01
    dec [hl]                                      ; $452f: $35
    ld [bc], a                                    ; $4530: $02
    inc b                                         ; $4531: $04
    ld [$0000], sp                                ; $4532: $08 $00 $00
    nop                                           ; $4535: $00
    rla                                           ; $4536: $17
    cpl                                           ; $4537: $2f
    ccf                                           ; $4538: $3f
    add b                                         ; $4539: $80
    ccf                                           ; $453a: $3f
    cp b                                          ; $453b: $b8
    adc a                                         ; $453c: $8f
    nop                                           ; $453d: $00
    ccf                                           ; $453e: $3f
    sub e                                         ; $453f: $93
    rra                                           ; $4540: $1f
    ret z                                         ; $4541: $c8

    rrca                                          ; $4542: $0f
    jp nz, Jump_0ad_4103                          ; $4543: $c2 $03 $41

    nop                                           ; $4546: $00
    add c                                         ; $4547: $81
    db $ec                                        ; $4548: $ec
    db $eb                                        ; $4549: $eb
    rst $00                                       ; $454a: $c7
    db $e4                                        ; $454b: $e4
    db $e3                                        ; $454c: $e3
    ld a, [c]                                     ; $454d: $f2
    ld hl, sp+$00                                 ; $454e: $f8 $00
    ld bc, $05fd                                  ; $4550: $01 $fd $05
    db $fc                                        ; $4553: $fc
    ld hl, sp+$7e                                 ; $4554: $f8 $7e
    db $fc                                        ; $4556: $fc
    db $fc                                        ; $4557: $fc
    nop                                           ; $4558: $00
    ccf                                           ; $4559: $3f
    dec bc                                        ; $455a: $0b
    ld a, [c]                                     ; $455b: $f2
    inc b                                         ; $455c: $04
    ld hl, sp-$02                                 ; $455d: $f8 $fe
    ld [bc], a                                    ; $455f: $02
    ld hl, sp+$00                                 ; $4560: $f8 $00
    add hl, bc                                    ; $4562: $09
    pop af                                        ; $4563: $f1
    ld [de], a                                    ; $4564: $12
    pop hl                                        ; $4565: $e1

jr_0ad_4566:
    add d                                         ; $4566: $82
    ld d, c                                       ; $4567: $51
    dec b                                         ; $4568: $05
    ld sp, $0100                                  ; $4569: $31 $00 $01
    ld hl, $6030                                  ; $456c: $21 $30 $60
    ld [hl], b                                    ; $456f: $70
    ld [hl], c                                    ; $4570: $71
    ld h, b                                       ; $4571: $60
    jr nc, jr_0ad_4574                            ; $4572: $30 $00

jr_0ad_4574:
    sub c                                         ; $4574: $91
    inc de                                        ; $4575: $13
    sub b                                         ; $4576: $90
    add e                                         ; $4577: $83
    add b                                         ; $4578: $80
    rlca                                          ; $4579: $07
    and h                                         ; $457a: $a4
    rlca                                          ; $457b: $07
    nop                                           ; $457c: $00
    inc h                                         ; $457d: $24
    ldh a, [$6c]                                  ; $457e: $f0 $6c
    ld sp, $0cd8                                  ; $4580: $31 $d8 $0c
    ld [hl], c                                    ; $4583: $71
    adc a                                         ; $4584: $8f

jr_0ad_4585:
    nop                                           ; $4585: $00
    add hl, sp                                    ; $4586: $39
    rst $18                                       ; $4587: $df
    add b                                         ; $4588: $80
    ret c                                         ; $4589: $d8

    rst $30                                       ; $458a: $f7
    ld l, c                                       ; $458b: $69
    ld d, [hl]                                    ; $458c: $56
    rst $18                                       ; $458d: $df
    nop                                           ; $458e: $00
    ret nc                                        ; $458f: $d0

    ldh [$9e], a                                  ; $4590: $e0 $9e
    ret nz                                        ; $4592: $c0

    cp a                                          ; $4593: $bf
    ret nz                                        ; $4594: $c0

    ccf                                           ; $4595: $3f
    ldh [rP1], a                                  ; $4596: $e0 $00
    ld a, [hl]                                    ; $4598: $7e
    ret nz                                        ; $4599: $c0

    cp h                                          ; $459a: $bc
    ret nz                                        ; $459b: $c0

    cp h                                          ; $459c: $bc
    ld a, [hl]                                    ; $459d: $7e
    sbc [hl]                                      ; $459e: $9e
    rst $38                                       ; $459f: $ff
    ld b, b                                       ; $45a0: $40
    ccf                                           ; $45a1: $3f
    ld b, b                                       ; $45a2: $40
    ld l, d                                       ; $45a3: $6a
    jr nz, jr_0ad_4566                            ; $45a4: $20 $c0

    adc b                                         ; $45a6: $88
    ld l, b                                       ; $45a7: $68
    ld c, h                                       ; $45a8: $4c
    inc l                                         ; $45a9: $2c
    nop                                           ; $45aa: $00
    rst $20                                       ; $45ab: $e7
    sub a                                         ; $45ac: $97
    ldh a, [$80]                                  ; $45ad: $f0 $80
    ld a, b                                       ; $45af: $78
    rra                                           ; $45b0: $1f
    ld a, $07                                     ; $45b1: $3e $07
    nop                                           ; $45b3: $00
    add hl, sp                                    ; $45b4: $39
    rlca                                          ; $45b5: $07
    ld a, [hl]                                    ; $45b6: $7e
    rra                                           ; $45b7: $1f
    cpl                                           ; $45b8: $2f
    jr c, jr_0ad_45d2                             ; $45b9: $38 $17

    inc e                                         ; $45bb: $1c
    nop                                           ; $45bc: $00
    dec bc                                        ; $45bd: $0b
    rlca                                          ; $45be: $07
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    ret nz                                        ; $45c1: $c0

    ld [hl], b                                    ; $45c2: $70
    ld hl, sp+$0f                                 ; $45c3: $f8 $0f
    nop                                           ; $45c5: $00
    rst $28                                       ; $45c6: $ef
    ldh a, [rNR10]                                ; $45c7: $f0 $10
    and b                                         ; $45c9: $a0
    ld b, $87                                     ; $45ca: $06 $87
    rlca                                          ; $45cc: $07
    jp nz, $0300                                  ; $45cd: $c2 $00 $03

    and $00                                       ; $45d0: $e6 $00

jr_0ad_45d2:
    nop                                           ; $45d2: $00
    sbc l                                         ; $45d3: $9d
    ld a, [hl]                                    ; $45d4: $7e
    ld h, e                                       ; $45d5: $63
    and d                                         ; $45d6: $a2
    add b                                         ; $45d7: $80
    ld [bc], a                                    ; $45d8: $02
    nop                                           ; $45d9: $00
    inc b                                         ; $45da: $04
    add d                                         ; $45db: $82
    and l                                         ; $45dc: $a5
    ld c, [hl]                                    ; $45dd: $4e
    ret z                                         ; $45de: $c8

    ld c, [hl]                                    ; $45df: $4e
    ld l, d                                       ; $45e0: $6a
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    ld sp, hl                                     ; $45e4: $f9
    rlca                                          ; $45e5: $07
    inc a                                         ; $45e6: $3c
    dec sp                                        ; $45e7: $3b
    inc a                                         ; $45e8: $3c
    dec sp                                        ; $45e9: $3b
    nop                                           ; $45ea: $00
    rlca                                          ; $45eb: $07
    sbc c                                         ; $45ec: $99
    rlca                                          ; $45ed: $07
    ld a, [de]                                    ; $45ee: $1a
    ld bc, $0307                                  ; $45ef: $01 $07 $03
    dec c                                         ; $45f2: $0d
    inc b                                         ; $45f3: $04
    ld b, $0e                                     ; $45f4: $06 $0e
    ld c, $fc                                     ; $45f6: $0e $fc
    inc a                                         ; $45f8: $3c
    ldh [rP1], a                                  ; $45f9: $e0 $00
    ccf                                           ; $45fb: $3f
    rst $08                                       ; $45fc: $cf
    nop                                           ; $45fd: $00
    ld a, a                                       ; $45fe: $7f
    adc a                                         ; $45ff: $8f
    ld hl, sp-$09                                 ; $4600: $f8 $f7
    db $fc                                        ; $4602: $fc
    jp $837f                                      ; $4603: $c3 $7f $83


    nop                                           ; $4606: $00
    ld a, a                                       ; $4607: $7f
    adc a                                         ; $4608: $8f
    ccf                                           ; $4609: $3f
    rst $00                                       ; $460a: $c7
    ld a, a                                       ; $460b: $7f
    adc a                                         ; $460c: $8f
    db $10                                        ; $460d: $10
    inc bc                                        ; $460e: $03
    ret z                                         ; $460f: $c8

    ld [bc], a                                    ; $4610: $02
    nop                                           ; $4611: $00
    ld bc, $0102                                  ; $4612: $01 $02 $01
    rlca                                          ; $4615: $07
    inc bc                                        ; $4616: $03
    dec b                                         ; $4617: $05
    inc b                                         ; $4618: $04
    inc bc                                        ; $4619: $03
    nop                                           ; $461a: $00
    rlca                                          ; $461b: $07
    nop                                           ; $461c: $00
    add hl, bc                                    ; $461d: $09
    ld c, $0b                                     ; $461e: $0e $0b
    inc c                                         ; $4620: $0c
    inc bc                                        ; $4621: $03
    rlca                                          ; $4622: $07
    nop                                           ; $4623: $00
    ld a, h                                       ; $4624: $7c
    call z, Call_0ad_5cc8                         ; $4625: $cc $c8 $5c
    ld c, h                                       ; $4628: $4c
    add h                                         ; $4629: $84
    adc $65                                       ; $462a: $ce $65
    nop                                           ; $462c: $00
    add e                                         ; $462d: $83
    ld b, l                                       ; $462e: $45
    add $c5                                       ; $462f: $c6 $c5
    add $45                                       ; $4631: $c6 $45
    add c                                         ; $4633: $81
    jp VBlankInterrupt                            ; $4634: $c3 $40 $00


    ld bc, $fe18                                  ; $4637: $01 $18 $fe
    ld bc, $7bfc                                  ; $463a: $01 $fc $7b
    ld a, b                                       ; $463d: $78
    ld h, $00                                     ; $463e: $26 $00
    and b                                         ; $4640: $a0
    pop bc                                        ; $4641: $c1
    ld e, l                                       ; $4642: $5d
    nop                                           ; $4643: $00
    rst $20                                       ; $4644: $e7
    add hl, de                                    ; $4645: $19
    jp Jump_000_003c                              ; $4646: $c3 $3c $00


    ccf                                           ; $4649: $3f
    ld h, l                                       ; $464a: $65
    ld h, [hl]                                    ; $464b: $66
    ret nz                                        ; $464c: $c0

    reti                                          ; $464d: $d9


    ld bc, $fc3c                                  ; $464e: $01 $3c $fc
    db $10                                        ; $4651: $10
    ld [bc], a                                    ; $4652: $02
    db $fc                                        ; $4653: $fc
    ld [bc], a                                    ; $4654: $02
    jr nz, jr_0ad_465f                            ; $4655: $20 $08

    ret nz                                        ; $4657: $c0

    nop                                           ; $4658: $00
    ld h, b                                       ; $4659: $60
    add b                                         ; $465a: $80
    nop                                           ; $465b: $00
    ret nz                                        ; $465c: $c0

    cp [hl]                                       ; $465d: $be
    add b                                         ; $465e: $80

jr_0ad_465f:
    ld a, a                                       ; $465f: $7f
    ld [c], a                                     ; $4660: $e2
    ld h, c                                       ; $4661: $61
    inc bc                                        ; $4662: $03
    sbc a                                         ; $4663: $9f
    add b                                         ; $4664: $80
    jr nc, jr_0ad_466f                            ; $4665: $30 $08

    jr nc, jr_0ad_4669                            ; $4667: $30 $00

jr_0ad_4669:
    jr z, jr_0ad_467b                             ; $4669: $28 $10

    jr jr_0ad_4699                                ; $466b: $18 $2c

    jr jr_0ad_466f                                ; $466d: $18 $00

jr_0ad_466f:
    or [hl]                                       ; $466f: $b6
    inc e                                         ; $4670: $1c
    call nc, $e20e                                ; $4671: $d4 $0e $e2
    stop                                          ; $4674: $10 $00
    stop                                          ; $4676: $10 $00
    nop                                           ; $4678: $00
    jr jr_0ad_468b                                ; $4679: $18 $10

jr_0ad_467b:
    ld [$1614], sp                                ; $467b: $08 $14 $16
    inc c                                         ; $467e: $0c
    ld d, $00                                     ; $467f: $16 $00
    inc c                                         ; $4681: $0c
    inc de                                        ; $4682: $13
    dec c                                         ; $4683: $0d
    inc de                                        ; $4684: $13
    inc c                                         ; $4685: $0c
    add hl, bc                                    ; $4686: $09
    rlca                                          ; $4687: $07
    ld b, $00                                     ; $4688: $06 $00
    dec c                                         ; $468a: $0d

jr_0ad_468b:
    rlca                                          ; $468b: $07
    ld [$020f], sp                                ; $468c: $08 $0f $02
    ld [$0907], sp                                ; $468f: $08 $07 $09
    nop                                           ; $4692: $00
    ld c, $13                                     ; $4693: $0e $13
    inc e                                         ; $4695: $1c
    ld [de], a                                    ; $4696: $12
    rrca                                          ; $4697: $0f
    add c                                         ; $4698: $81

jr_0ad_4699:
    ld b, e                                       ; $4699: $43
    ld a, a                                       ; $469a: $7f
    nop                                           ; $469b: $00
    add c                                         ; $469c: $81
    ld a, l                                       ; $469d: $7d
    add c                                         ; $469e: $81
    add e                                         ; $469f: $83
    pop af                                        ; $46a0: $f1
    adc [hl]                                      ; $46a1: $8e
    ldh [rNR23], a                                ; $46a2: $e0 $18
    nop                                           ; $46a4: $00
    ld bc, $86b0                                  ; $46a5: $01 $b0 $86
    ld h, c                                       ; $46a8: $61
    ld l, h                                       ; $46a9: $6c
    jp $a073                                      ; $46aa: $c3 $73 $a0


    nop                                           ; $46ad: $00
    cpl                                           ; $46ae: $2f
    add b                                         ; $46af: $80
    rra                                           ; $46b0: $1f
    or b                                          ; $46b1: $b0
    jr nc, jr_0ad_4703                            ; $46b2: $30 $4f

    ret nz                                        ; $46b4: $c0

    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    ccf                                           ; $46b7: $3f
    ld a, $df                                     ; $46b8: $3e $df
    ld b, c                                       ; $46ba: $41
    add b                                         ; $46bb: $80
    ret nz                                        ; $46bc: $c0

    ret nz                                        ; $46bd: $c0

    call nc, $c300                                ; $46be: $d4 $00 $c3
    ldh a, [$ec]                                  ; $46c1: $f0 $ec
    db $fd                                        ; $46c3: $fd
    ldh a, [$c3]                                  ; $46c4: $f0 $c3
    inc bc                                        ; $46c6: $03
    pop af                                        ; $46c7: $f1
    nop                                           ; $46c8: $00
    inc bc                                        ; $46c9: $03
    pop af                                        ; $46ca: $f1
    db $fc                                        ; $46cb: $fc
    ld h, e                                       ; $46cc: $63

jr_0ad_46cd:
    ld a, d                                       ; $46cd: $7a
    ld hl, sp+$00                                 ; $46ce: $f8 $00
    sbc a                                         ; $46d0: $9f
    nop                                           ; $46d1: $00
    db $fc                                        ; $46d2: $fc
    inc bc                                        ; $46d3: $03
    inc bc                                        ; $46d4: $03
    ld hl, sp+$01                                 ; $46d5: $f8 $01
    ld b, b                                       ; $46d7: $40
    and c                                         ; $46d8: $a1
    ld c, [hl]                                    ; $46d9: $4e
    nop                                           ; $46da: $00
    ld d, [hl]                                    ; $46db: $56
    ld a, c                                       ; $46dc: $79
    adc h                                         ; $46dd: $8c
    ld a, c                                       ; $46de: $79
    jr jr_0ad_46cd                                ; $46df: $18 $ec

    ld [c], a                                     ; $46e1: $e2
    ld e, h                                       ; $46e2: $5c
    nop                                           ; $46e3: $00
    ld b, d                                       ; $46e4: $42
    ld e, $82                                     ; $46e5: $1e $82
    inc a                                         ; $46e7: $3c
    inc b                                         ; $46e8: $04
    ld a, [$7406]                                 ; $46e9: $fa $06 $74
    nop                                           ; $46ec: $00
    adc h                                         ; $46ed: $8c
    ld a, h                                       ; $46ee: $7c
    ld [hl], b                                    ; $46ef: $70
    daa                                           ; $46f0: $27
    ld b, b                                       ; $46f1: $40
    ld de, $190e                                  ; $46f2: $11 $0e $19
    nop                                           ; $46f5: $00
    ld b, $19                                     ; $46f6: $06 $19
    ld b, $39                                     ; $46f8: $06 $39
    ld h, $0f                                     ; $46fa: $26 $0f
    halt                                          ; $46fc: $76
    cpl                                           ; $46fd: $2f
    nop                                           ; $46fe: $00
    ld e, h                                       ; $46ff: $5c
    ld [hl], e                                    ; $4700: $73
    ld c, h                                       ; $4701: $4c
    di                                            ; $4702: $f3

jr_0ad_4703:
    adc h                                         ; $4703: $8c
    rrca                                          ; $4704: $0f
    nop                                           ; $4705: $00
    ld bc, $0600                                  ; $4706: $01 $00 $06
    add hl, bc                                    ; $4709: $09
    ld c, $03                                     ; $470a: $0e $03
    jr jr_0ad_4711                                ; $470c: $18 $03

    ld [hl-], a                                   ; $470e: $32
    ld h, c                                       ; $470f: $61
    nop                                           ; $4710: $00

jr_0ad_4711:
    ld l, d                                       ; $4711: $6a
    ld h, c                                       ; $4712: $61
    ld l, d                                       ; $4713: $6a
    ld hl, $022c                                  ; $4714: $21 $2c $02
    add hl, de                                    ; $4717: $19
    ldh a, [rP1]                                  ; $4718: $f0 $00
    add h                                         ; $471a: $84
    rst $30                                       ; $471b: $f7
    add c                                         ; $471c: $81
    ld bc, $037c                                  ; $471d: $01 $7c $03
    ld a, c                                       ; $4720: $79
    ld hl, sp+$00                                 ; $4721: $f8 $00
    call z, $c87b                                 ; $4723: $cc $7b $c8
    add b                                         ; $4726: $80
    or a                                          ; $4727: $b7
    ccf                                           ; $4728: $3f
    ccf                                           ; $4729: $3f
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    ccf                                           ; $472c: $3f
    ccf                                           ; $472d: $3f
    cp $e0                                        ; $472e: $fe $e0
    pop hl                                        ; $4730: $e1
    ld e, $00                                     ; $4731: $1e $00
    ld a, $00                                     ; $4733: $3e $00
    ret nz                                        ; $4735: $c0

    ld a, a                                       ; $4736: $7f
    ret nz                                        ; $4737: $c0

    rst $20                                       ; $4738: $e7
    ld sp, hl                                     ; $4739: $f9
    inc hl                                        ; $473a: $23
    rra                                           ; $473b: $1f
    add b                                         ; $473c: $80
    nop                                           ; $473d: $00
    jr jr_0ad_477b                                ; $473e: $18 $3b

    ld hl, sp-$67                                 ; $4740: $f8 $99
    db $fc                                        ; $4742: $fc
    inc sp                                        ; $4743: $33
    ret                                           ; $4744: $c9


    jr jr_0ad_4747                                ; $4745: $18 $00

jr_0ad_4747:
    ld h, h                                       ; $4747: $64
    inc c                                         ; $4748: $0c
    or d                                          ; $4749: $b2
    push bc                                       ; $474a: $c5
    add hl, de                                    ; $474b: $19
    db $e3                                        ; $474c: $e3
    ld b, e                                       ; $474d: $43
    add c                                         ; $474e: $81
    nop                                           ; $474f: $00
    db $dd                                        ; $4750: $dd
    ld bc, $03f8                                  ; $4751: $01 $f8 $03
    ret nc                                        ; $4754: $d0

    ccf                                           ; $4755: $3f
    ld d, b                                       ; $4756: $50
    cp $00                                        ; $4757: $fe $00
    nop                                           ; $4759: $00
    add b                                         ; $475a: $80
    pop bc                                        ; $475b: $c1
    jr c, jr_0ad_4761                             ; $475c: $38 $03

    ret c                                         ; $475e: $d8

    xor c                                         ; $475f: $a9
    db $fc                                        ; $4760: $fc

jr_0ad_4761:
    nop                                           ; $4761: $00
    call nz, $b081                                ; $4762: $c4 $81 $b0
    add e                                         ; $4765: $83
    add b                                         ; $4766: $80
    ld c, $46                                     ; $4767: $0e $46
    dec e                                         ; $4769: $1d
    nop                                           ; $476a: $00
    call c, $c053                                 ; $476b: $dc $53 $c0
    rlca                                          ; $476e: $07
    add b                                         ; $476f: $80
    or a                                          ; $4770: $b7
    ret z                                         ; $4771: $c8

    ld a, a                                       ; $4772: $7f
    nop                                           ; $4773: $00
    and c                                         ; $4774: $a1
    cp [hl]                                       ; $4775: $be
    db $fd                                        ; $4776: $fd
    ld a, [hl]                                    ; $4777: $7e
    cp l                                          ; $4778: $bd
    ld hl, sp+$00                                 ; $4779: $f8 $00

jr_0ad_477b:
    ldh a, [rP1]                                  ; $477b: $f0 $00
    ld [bc], a                                    ; $477d: $02
    jp nz, $84f8                                  ; $477e: $c2 $f8 $84

    ldh a, [rNR42]                                ; $4781: $f0 $21
    inc l                                         ; $4783: $2c
    or b                                          ; $4784: $b0
    nop                                           ; $4785: $00
    add l                                         ; $4786: $85
    ret nc                                        ; $4787: $d0

    add $d0                                       ; $4788: $c6 $d0
    add $d8                                       ; $478a: $c6 $d8
    jp nz, Jump_0ad_40e8                          ; $478c: $c2 $e8 $40

    db $e3                                        ; $478f: $e3
    ld [bc], a                                    ; $4790: $02
    ld [$3f81], sp                                ; $4791: $08 $81 $3f
    add c                                         ; $4794: $81
    sbc [hl]                                      ; $4795: $9e
    add c                                         ; $4796: $81
    sbc $00                                       ; $4797: $de $00
    jp nz, $e01e                                  ; $4799: $c2 $1e $e0

    xor h                                         ; $479c: $ac
    ld h, b                                       ; $479d: $60
    dec c                                         ; $479e: $0d
    ld [hl], b                                    ; $479f: $70
    ld b, a                                       ; $47a0: $47
    nop                                           ; $47a1: $00
    jr c, jr_0ad_4747                             ; $47a2: $38 $a3

    ret nz                                        ; $47a4: $c0

    pop hl                                        ; $47a5: $e1
    ld e, [hl]                                    ; $47a6: $5e
    ret nz                                        ; $47a7: $c0

    cp a                                          ; $47a8: $bf
    add b                                         ; $47a9: $80
    nop                                           ; $47aa: $00
    ld a, a                                       ; $47ab: $7f
    ccf                                           ; $47ac: $3f
    rst $18                                       ; $47ad: $df
    rst $38                                       ; $47ae: $ff
    ld h, b                                       ; $47af: $60
    rst $08                                       ; $47b0: $cf
    jr nz, @-$70                                  ; $47b1: $20 $8e

    jr nz, jr_0ad_47f6                            ; $47b3: $20 $41

    ld e, b                                       ; $47b5: $58
    ld l, h                                       ; $47b6: $6c
    nop                                           ; $47b7: $00
    ld hl, sp+$21                                 ; $47b8: $f8 $21
    ld h, b                                       ; $47ba: $60
    ld [bc], a                                    ; $47bb: $02
    and b                                         ; $47bc: $a0
    nop                                           ; $47bd: $00
    inc bc                                        ; $47be: $03
    ld [c], a                                     ; $47bf: $e2
    ld b, $64                                     ; $47c0: $06 $64
    ld b, l                                       ; $47c2: $45
    ld c, b                                       ; $47c3: $48
    ld b, [hl]                                    ; $47c4: $46
    ld c, c                                       ; $47c5: $49
    nop                                           ; $47c6: $00
    inc bc                                        ; $47c7: $03
    dec sp                                        ; $47c8: $3b
    jr z, jr_0ad_47db                             ; $47c9: $28 $10

    inc bc                                        ; $47cb: $03
    ld b, e                                       ; $47cc: $43
    add a                                         ; $47cd: $87
    or h                                          ; $47ce: $b4
    nop                                           ; $47cf: $00
    rla                                           ; $47d0: $17
    ld [hl], b                                    ; $47d1: $70
    rrca                                          ; $47d2: $0f
    ldh [$d8], a                                  ; $47d3: $e0 $d8
    inc e                                         ; $47d5: $1c
    or b                                          ; $47d6: $b0
    jr c, jr_0ad_47d9                             ; $47d7: $38 $00

jr_0ad_47d9:
    ld c, $1d                                     ; $47d9: $0e $1d

jr_0ad_47db:
    inc a                                         ; $47db: $3c
    ei                                            ; $47dc: $fb
    inc e                                         ; $47dd: $1c
    db $e4                                        ; $47de: $e4
    jr nc, @-$2d                                  ; $47df: $30 $d1

    nop                                           ; $47e1: $00
    jp Jump_000_073b                              ; $47e2: $c3 $3b $07


    rst $20                                       ; $47e5: $e7
    dec de                                        ; $47e6: $1b
    ld a, $7b                                     ; $47e7: $3e $7b

jr_0ad_47e9:
    rst $38                                       ; $47e9: $ff
    nop                                           ; $47ea: $00
    db $e4                                        ; $47eb: $e4
    pop hl                                        ; $47ec: $e1
    call z, Call_000_08c1                         ; $47ed: $cc $c1 $08
    dec bc                                        ; $47f0: $0b
    ret nz                                        ; $47f1: $c0

    inc bc                                        ; $47f2: $03
    nop                                           ; $47f3: $00
    ld hl, sp+$09                                 ; $47f4: $f8 $09

jr_0ad_47f6:
    ld hl, sp+$01                                 ; $47f6: $f8 $01
    ret nz                                        ; $47f8: $c0

    inc a                                         ; $47f9: $3c
    ld [c], a                                     ; $47fa: $e2
    inc d                                         ; $47fb: $14
    nop                                           ; $47fc: $00
    db $ec                                        ; $47fd: $ec
    pop hl                                        ; $47fe: $e1
    db $f4                                        ; $47ff: $f4
    pop af                                        ; $4800: $f1
    db $f4                                        ; $4801: $f4
    pop af                                        ; $4802: $f1
    ld b, $f0                                     ; $4803: $06 $f0
    ld [$f802], sp                                ; $4805: $08 $02 $f8
    ld [bc], a                                    ; $4808: $02
    ld hl, sp+$17                                 ; $4809: $f8 $17
    ld bc, $1cfc                                  ; $480b: $01 $fc $1c
    ret nc                                        ; $480e: $d0

    nop                                           ; $480f: $00
    rrca                                          ; $4810: $0f
    db $ec                                        ; $4811: $ec
    ld bc, $f2f1                                  ; $4812: $01 $f1 $f2
    db $f4                                        ; $4815: $f4
    ld a, [c]                                     ; $4816: $f2
    db $f4                                        ; $4817: $f4
    nop                                           ; $4818: $00
    db $f4                                        ; $4819: $f4
    ei                                            ; $481a: $fb
    ld h, b                                       ; $481b: $60
    ld h, b                                       ; $481c: $60

Jump_0ad_481d:
    ld c, [hl]                                    ; $481d: $4e
    ld c, $86                                     ; $481e: $0e $86
    pop de                                        ; $4820: $d1
    nop                                           ; $4821: $00
    and c                                         ; $4822: $a1
    xor h                                         ; $4823: $ac
    ld h, c                                       ; $4824: $61
    ld l, b                                       ; $4825: $68
    rr d                                          ; $4826: $cb $1a
    sbc e                                         ; $4828: $9b
    ld a, [hl-]                                   ; $4829: $3a
    nop                                           ; $482a: $00
    ld b, e                                       ; $482b: $43
    halt                                          ; $482c: $76
    inc bc                                        ; $482d: $03
    ld [hl], $c3                                  ; $482e: $36 $c3
    inc de                                        ; $4830: $13
    jp nc, Jump_000_00c9                          ; $4831: $d2 $c9 $00

    sub b                                         ; $4834: $90
    add a                                         ; $4835: $87
    ld [hl], $a4                                  ; $4836: $36 $a4
    ld [hl], $a4                                  ; $4838: $36 $a4
    inc a                                         ; $483a: $3c
    and c                                         ; $483b: $a1
    nop                                           ; $483c: $00
    jr z, jr_0ad_47e9                             ; $483d: $28 $aa

    ld [hl], $86                                  ; $483f: $36 $86
    inc b                                         ; $4841: $04
    call nz, $89f8                                ; $4842: $c4 $f8 $89
    nop                                           ; $4845: $00
    ldh a, [$93]                                  ; $4846: $f0 $93
    add $07                                       ; $4848: $c6 $07
    adc h                                         ; $484a: $8c
    rrca                                          ; $484b: $0f
    sbc h                                         ; $484c: $9c
    add e                                         ; $484d: $83
    nop                                           ; $484e: $00
    jr c, jr_0ad_4858                             ; $484f: $38 $07

    ld a, b                                       ; $4851: $78
    rrca                                          ; $4852: $0f
    nop                                           ; $4853: $00
    ld [$fae9], sp                                ; $4854: $08 $e9 $fa
    nop                                           ; $4857: $00

jr_0ad_4858:
    jp $c3ba                                      ; $4858: $c3 $ba $c3


    ld [hl+], a                                   ; $485b: $22
    add e                                         ; $485c: $83
    halt                                          ; $485d: $76
    ld [hl], $f1                                  ; $485e: $36 $f1
    nop                                           ; $4860: $00
    ld b, [hl]                                    ; $4861: $46
    pop bc                                        ; $4862: $c1
    adc c                                         ; $4863: $89
    add [hl]                                      ; $4864: $86
    ld bc, $f20e                                  ; $4865: $01 $0e $f2
    ld b, $00                                     ; $4868: $06 $00
    ld a, [$ea0e]                                 ; $486a: $fa $0e $ea
    inc b                                         ; $486d: $04
    ret z                                         ; $486e: $c8

    inc b                                         ; $486f: $04
    call c, Call_000_0005                         ; $4870: $dc $05 $00
    cp h                                          ; $4873: $bc
    ld bc, $093c                                  ; $4874: $01 $3c $09
    ld a, b                                       ; $4877: $78
    add hl, de                                    ; $4878: $19
    ld bc, $02fc                                  ; $4879: $01 $fc $02
    ld bc, $00fc                                  ; $487c: $01 $fc $00
    cp $fe                                        ; $487f: $fe $fe
    nop                                           ; $4881: $00
    ld [bc], a                                    ; $4882: $02
    ld [$80ff], sp                                ; $4883: $08 $ff $80
    dec e                                         ; $4886: $1d
    ld [bc], a                                    ; $4887: $02
    db $10                                        ; $4888: $10
    ld e, $3f                                     ; $4889: $1e $3f
    cp h                                          ; $488b: $bc
    ld a, $9c                                     ; $488c: $3e $9c
    ccf                                           ; $488e: $3f
    nop                                           ; $488f: $00
    add b                                         ; $4890: $80
    ccf                                           ; $4891: $3f
    and c                                         ; $4892: $a1
    db $10                                        ; $4893: $10
    adc $1e                                       ; $4894: $ce $1e

jr_0ad_4896:
    ld d, h                                       ; $4896: $54
    ld b, b                                       ; $4897: $40
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    ld b, h                                       ; $489a: $44
    inc b                                         ; $489b: $04
    ld b, a                                       ; $489c: $47
    ld bc, $8307                                  ; $489d: $01 $07 $83
    ld b, $04                                     ; $48a0: $06 $04
    inc b                                         ; $48a2: $04
    rlca                                          ; $48a3: $07
    ld h, b                                       ; $48a4: $60
    ld [hl], b                                    ; $48a5: $70
    ld h, e                                       ; $48a6: $63
    ld [bc], a                                    ; $48a7: $02
    nop                                           ; $48a8: $00
    ld h, a                                       ; $48a9: $67
    ret                                           ; $48aa: $c9


    nop                                           ; $48ab: $00
    inc bc                                        ; $48ac: $03
    inc hl                                        ; $48ad: $23
    add e                                         ; $48ae: $83
    add a                                         ; $48af: $87
    or b                                          ; $48b0: $b0
    rlca                                          ; $48b1: $07
    jr nc, jr_0ad_48c3                            ; $48b2: $30 $0f

    nop                                           ; $48b4: $00
    adc [hl]                                      ; $48b5: $8e
    nop                                           ; $48b6: $00
    sub e                                         ; $48b7: $93
    cp a                                          ; $48b8: $bf
    rst $38                                       ; $48b9: $ff
    ccf                                           ; $48ba: $3f
    ld b, b                                       ; $48bb: $40
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    add b                                         ; $48be: $80
    cp $3f                                        ; $48bf: $fe $3f
    ld hl, sp-$1a                                 ; $48c1: $f8 $e6

jr_0ad_48c3:
    ret nz                                        ; $48c3: $c0

    cp h                                          ; $48c4: $bc
    ld a, h                                       ; $48c5: $7c
    nop                                           ; $48c6: $00

jr_0ad_48c7:
    ldh a, [$f0]                                  ; $48c7: $f0 $f0
    ldh [rNR34], a                                ; $48c9: $e0 $1e
    ld [c], a                                     ; $48cb: $e2
    ld a, h                                       ; $48cc: $7c
    add h                                         ; $48cd: $84
    ld c, $00                                     ; $48ce: $0e $00
    dec e                                         ; $48d0: $1d
    ld e, $1d                                     ; $48d1: $1e $1d
    rlca                                          ; $48d3: $07
    inc e                                         ; $48d4: $1c
    rlca                                          ; $48d5: $07
    inc a                                         ; $48d6: $3c
    scf                                           ; $48d7: $37
    nop                                           ; $48d8: $00
    jr c, jr_0ad_490a                             ; $48d9: $38 $2f

    ld [hl], b                                    ; $48db: $70
    ld [hl], b                                    ; $48dc: $70
    ccf                                           ; $48dd: $3f
    ret nz                                        ; $48de: $c0

    ld a, a                                       ; $48df: $7f
    db $e3                                        ; $48e0: $e3
    ld b, b                                       ; $48e1: $40
    dec de                                        ; $48e2: $1b
    ld [bc], a                                    ; $48e3: $02
    jr jr_0ad_48c7                                ; $48e4: $18 $e1

    add hl, de                                    ; $48e6: $19
    call $8d31                                    ; $48e7: $cd $31 $8d
    ld h, c                                       ; $48ea: $61
    jr nc, jr_0ad_48f6                            ; $48eb: $30 $09

    pop bc                                        ; $48ed: $c1
    add b                                         ; $48ee: $80
    ld [hl+], a                                   ; $48ef: $22
    rlca                                          ; $48f0: $07
    jr nc, @+$66                                  ; $48f1: $30 $64

    ld b, $22                                     ; $48f3: $06 $22
    inc h                                         ; $48f5: $24

jr_0ad_48f6:
    nop                                           ; $48f6: $00
    ld [hl+], a                                   ; $48f7: $22
    inc l                                         ; $48f8: $2c
    or b                                          ; $48f9: $b0
    add h                                         ; $48fa: $84
    ret nc                                        ; $48fb: $d0

    ret nz                                        ; $48fc: $c0

    rra                                           ; $48fd: $1f
    ret nz                                        ; $48fe: $c0

    and b                                         ; $48ff: $a0
    ld a, c                                       ; $4900: $79
    ld [bc], a                                    ; $4901: $02
    nop                                           ; $4902: $00
    ld h, [hl]                                    ; $4903: $66
    nop                                           ; $4904: $00
    ld h, b                                       ; $4905: $60
    ld [hl], b                                    ; $4906: $70
    ld b, h                                       ; $4907: $44
    ld [hl], b                                    ; $4908: $70
    ld b, a                                       ; $4909: $47

jr_0ad_490a:
    ld b, b                                       ; $490a: $40
    nop                                           ; $490b: $00
    adc [hl]                                      ; $490c: $8e
    stop                                          ; $490d: $10 $00
    nop                                           ; $490f: $00
    ld b, b                                       ; $4910: $40
    ld a, a                                       ; $4911: $7f
    ccf                                           ; $4912: $3f
    nop                                           ; $4913: $00
    jr jr_0ad_4896                                ; $4914: $18 $80

    add b                                         ; $4916: $80
    db $ec                                        ; $4917: $ec
    adc b                                         ; $4918: $88
    ld [bc], a                                    ; $4919: $02
    sbc [hl]                                      ; $491a: $9e
    ld [$00ff], sp                                ; $491b: $08 $ff $00
    rst $38                                       ; $491e: $ff
    ld bc, $841f                                  ; $491f: $01 $1f $84
    inc bc                                        ; $4922: $03
    rst $30                                       ; $4923: $f7
    ldh a, [rIF]                                  ; $4924: $f0 $0f
    ldh [rNR10], a                                ; $4926: $e0 $10
    jr z, jr_0ad_492a                             ; $4928: $28 $00

jr_0ad_492a:
    cp $81                                        ; $492a: $fe $81
    ld hl, $7fdc                                  ; $492c: $21 $dc $7f
    and h                                         ; $492f: $a4
    db $e3                                        ; $4930: $e3
    nop                                           ; $4931: $00
    inc b                                         ; $4932: $04
    ld [$f800], sp                                ; $4933: $08 $00 $f8
    inc bc                                        ; $4936: $03
    inc bc                                        ; $4937: $03
    jp nz, $1800                                  ; $4938: $c2 $00 $18

    inc de                                        ; $493b: $13
    ld bc, $e3f0                                  ; $493c: $01 $f0 $e3
    ldh [$cf], a                                  ; $493f: $e0 $cf
    add b                                         ; $4941: $80
    rrca                                          ; $4942: $0f
    ccf                                           ; $4943: $3f
    ld b, b                                       ; $4944: $40
    jr nz, @+$12                                  ; $4945: $20 $10

    inc bc                                        ; $4947: $03
    add b                                         ; $4948: $80
    ld [bc], a                                    ; $4949: $02
    ld h, b                                       ; $494a: $60
    nop                                           ; $494b: $00
    ld bc, $23f8                                  ; $494c: $01 $f8 $23
    ld [$0703], sp                                ; $494f: $08 $03 $07
    ld bc, $f0ff                                  ; $4952: $01 $ff $f0
    nop                                           ; $4955: $00
    ldh a, [$ce]                                  ; $4956: $f0 $ce
    ld [hl], c                                    ; $4958: $71
    dec c                                         ; $4959: $0d
    jr nz, jr_0ad_4960                            ; $495a: $20 $04

    ld l, b                                       ; $495c: $68
    inc c                                         ; $495d: $0c
    nop                                           ; $495e: $00
    push bc                                       ; $495f: $c5

jr_0ad_4960:
    inc e                                         ; $4960: $1c
    add l                                         ; $4961: $85
    inc a                                         ; $4962: $3c
    add hl, de                                    ; $4963: $19
    ld a, b                                       ; $4964: $78
    jr nc, jr_0ad_4997                            ; $4965: $30 $30

    ld [$8300], sp                                ; $4967: $08 $00 $83
    or e                                          ; $496a: $b3
    xor e                                         ; $496b: $ab
    ld b, b                                       ; $496c: $40
    jr jr_0ad_49af                                ; $496d: $18 $40

    add b                                         ; $496f: $80
    ret nz                                        ; $4970: $c0

    ld bc, $3020                                  ; $4971: $01 $20 $30
    ret nc                                        ; $4974: $d0

    ld a, h                                       ; $4975: $7c
    ld h, h                                       ; $4976: $64
    inc c                                         ; $4977: $0c
    ld a, $50                                     ; $4978: $3e $50
    ld hl, sp-$7c                                 ; $497a: $f8 $84
    ld [hl], d                                    ; $497c: $72
    jr c, jr_0ad_4980                             ; $497d: $38 $01

    nop                                           ; $497f: $00

jr_0ad_4980:
    inc bc                                        ; $4980: $03
    inc bc                                        ; $4981: $03
    ld e, e                                       ; $4982: $5b
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    ld b, $00                                     ; $4985: $06 $00
    rlca                                          ; $4987: $07
    inc e                                         ; $4988: $1c
    rlca                                          ; $4989: $07
    jr c, @+$10                                   ; $498a: $38 $0e

    ld h, c                                       ; $498c: $61
    ld a, c                                       ; $498d: $79
    rst $00                                       ; $498e: $c7
    nop                                           ; $498f: $00
    ld [hl], a                                    ; $4990: $77
    rst $08                                       ; $4991: $cf
    cpl                                           ; $4992: $2f
    jp nz, $8a33                                  ; $4993: $c2 $33 $8a

    ld h, d                                       ; $4996: $62

jr_0ad_4997:
    ld a, [de]                                    ; $4997: $1a
    nop                                           ; $4998: $00
    jp nz, Jump_000_3903                          ; $4999: $c2 $03 $39

    nop                                           ; $499c: $00
    db $fc                                        ; $499d: $fc
    ld hl, sp+$02                                 ; $499e: $f8 $02
    ld a, [c]                                     ; $49a0: $f2
    nop                                           ; $49a1: $00
    ld [bc], a                                    ; $49a2: $02
    inc b                                         ; $49a3: $04
    ldh [$83], a                                  ; $49a4: $e0 $83
    ld a, [hl+]                                   ; $49a6: $2a

jr_0ad_49a7:
    rst $08                                       ; $49a7: $cf
    ld [bc], a                                    ; $49a8: $02
    cp a                                          ; $49a9: $bf
    nop                                           ; $49aa: $00
    jr nc, jr_0ad_49c9                            ; $49ab: $30 $1c

    dec c                                         ; $49ad: $0d
    dec c                                         ; $49ae: $0d

jr_0ad_49af:
    jr nc, jr_0ad_49b5                            ; $49af: $30 $04

    dec b                                         ; $49b1: $05
    ld b, h                                       ; $49b2: $44
    nop                                           ; $49b3: $00
    and h                                         ; $49b4: $a4

jr_0ad_49b5:
    ld h, b                                       ; $49b5: $60
    ld d, b                                       ; $49b6: $50
    ld [bc], a                                    ; $49b7: $02
    dec c                                         ; $49b8: $0d
    ret nc                                        ; $49b9: $d0

    rst $00                                       ; $49ba: $c7
    dec de                                        ; $49bb: $1b
    nop                                           ; $49bc: $00
    pop bc                                        ; $49bd: $c1
    inc e                                         ; $49be: $1c
    ret nz                                        ; $49bf: $c0

    sbc a                                         ; $49c0: $9f
    add b                                         ; $49c1: $80
    rra                                           ; $49c2: $1f
    add b                                         ; $49c3: $80
    add b                                         ; $49c4: $80
    nop                                           ; $49c5: $00
    ccf                                           ; $49c6: $3f
    add b                                         ; $49c7: $80
    sbc a                                         ; $49c8: $9f

jr_0ad_49c9:
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    add b                                         ; $49cb: $80
    ld b, b                                       ; $49cc: $40
    ld b, b                                       ; $49cd: $40
    nop                                           ; $49ce: $00
    ldh [$90], a                                  ; $49cf: $e0 $90
    add sp, $4b                                   ; $49d1: $e8 $4b
    scf                                           ; $49d3: $37
    add l                                         ; $49d4: $85
    dec de                                        ; $49d5: $1b
    db $e3                                        ; $49d6: $e3
    db $10                                        ; $49d7: $10
    ld c, $f1                                     ; $49d8: $0e $f1
    rlca                                          ; $49da: $07
    ret nc                                        ; $49db: $d0

    ld d, b                                       ; $49dc: $50
    add b                                         ; $49dd: $80
    ret nz                                        ; $49de: $c0

    ld b, b                                       ; $49df: $40
    ld b, $00                                     ; $49e0: $06 $00
    ld bc, $1e19                                  ; $49e2: $01 $19 $1e
    ld a, [hl-]                                   ; $49e5: $3a
    inc [hl]                                      ; $49e6: $34
    add hl, de                                    ; $49e7: $19
    ld [hl], c                                    ; $49e8: $71
    rla                                           ; $49e9: $17
    nop                                           ; $49ea: $00
    rst $30                                       ; $49eb: $f7
    rst $08                                       ; $49ec: $cf
    ldh [$ef], a                                  ; $49ed: $e0 $ef
    ret nz                                        ; $49ef: $c0

    cpl                                           ; $49f0: $2f
    ret nz                                        ; $49f1: $c0

    sbc a                                         ; $49f2: $9f
    nop                                           ; $49f3: $00
    rra                                           ; $49f4: $1f
    nop                                           ; $49f5: $00
    ld a, a                                       ; $49f6: $7f
    rst $38                                       ; $49f7: $ff
    nop                                           ; $49f8: $00
    rst $38                                       ; $49f9: $ff
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    nop                                           ; $49fc: $00
    ret z                                         ; $49fd: $c8

    cp $01                                        ; $49fe: $fe $01
    db $fc                                        ; $4a00: $fc
    ld [bc], a                                    ; $4a01: $02
    db $fc                                        ; $4a02: $fc
    dec b                                         ; $4a03: $05
    rra                                           ; $4a04: $1f
    nop                                           ; $4a05: $00
    jp $c0d0                                      ; $4a06: $c3 $d0 $c0


    ret nz                                        ; $4a09: $c0

    rst $00                                       ; $4a0a: $c7
    and e                                         ; $4a0b: $a3
    ccf                                           ; $4a0c: $3f
    ld b, d                                       ; $4a0d: $42
    nop                                           ; $4a0e: $00
    ld a, [hl]                                    ; $4a0f: $7e
    sbc l                                         ; $4a10: $9d
    pop hl                                        ; $4a11: $e1
    ld a, [hl-]                                   ; $4a12: $3a

jr_0ad_4a13:
    jp nz, $e015                                  ; $4a13: $c2 $15 $e0

    inc bc                                        ; $4a16: $03
    nop                                           ; $4a17: $00
    nop                                           ; $4a18: $00
    and b                                         ; $4a19: $a0
    sub h                                         ; $4a1a: $94
    ld d, a                                       ; $4a1b: $57
    push de                                       ; $4a1c: $d5
    ld a, a                                       ; $4a1d: $7f
    rst $38                                       ; $4a1e: $ff
    sbc c                                         ; $4a1f: $99
    nop                                           ; $4a20: $00
    ld bc, $6001                                  ; $4a21: $01 $01 $60
    ret nz                                        ; $4a24: $c0

    jr nc, jr_0ad_49a7                            ; $4a25: $30 $80

    ret nz                                        ; $4a27: $c0

    rrca                                          ; $4a28: $0f
    nop                                           ; $4a29: $00
    ldh [$2f], a                                  ; $4a2a: $e0 $2f
    ldh [rIF], a                                  ; $4a2c: $e0 $0f
    nop                                           ; $4a2e: $00
    sbc a                                         ; $4a2f: $9f
    ldh a, [$c7]                                  ; $4a30: $f0 $c7
    nop                                           ; $4a32: $00
    ret nc                                        ; $4a33: $d0

    ld h, e                                       ; $4a34: $63
    add sp, $6c                                   ; $4a35: $e8 $6c
    dec c                                         ; $4a37: $0d
    ld [hl], $06                                  ; $4a38: $36 $06
    ld hl, sp+$22                                 ; $4a3a: $f8 $22
    add hl, hl                                    ; $4a3c: $29
    cp $33                                        ; $4a3d: $fe $33
    ld de, $6996                                  ; $4a3f: $11 $96 $69
    nop                                           ; $4a42: $00
    ld b, [hl]                                    ; $4a43: $46
    ld [$0000], sp                                ; $4a44: $08 $00 $00
    ld b, b                                       ; $4a47: $40
    and b                                         ; $4a48: $a0
    jr c, jr_0ad_4a13                             ; $4a49: $38 $c8

    scf                                           ; $4a4b: $37
    ld e, e                                       ; $4a4c: $5b
    add hl, de                                    ; $4a4d: $19
    add a                                         ; $4a4e: $87
    nop                                           ; $4a4f: $00
    db $ec                                        ; $4a50: $ec
    dec bc                                        ; $4a51: $0b
    db $f4                                        ; $4a52: $f4
    inc bc                                        ; $4a53: $03
    db $f4                                        ; $4a54: $f4
    inc bc                                        ; $4a55: $03
    or $05                                        ; $4a56: $f6 $05
    nop                                           ; $4a58: $00
    xor a                                         ; $4a59: $af
    ret nz                                        ; $4a5a: $c0

    ld h, a                                       ; $4a5b: $67
    ld d, b                                       ; $4a5c: $50
    ld h, a                                       ; $4a5d: $67
    ld d, b                                       ; $4a5e: $50
    nop                                           ; $4a5f: $00
    jr nc, jr_0ad_4a62                            ; $4a60: $30 $00

jr_0ad_4a62:
    rlca                                          ; $4a62: $07
    inc [hl]                                      ; $4a63: $34
    jr nz, jr_0ad_4a92                            ; $4a64: $20 $2c

    ld [bc], a                                    ; $4a66: $02
    inc e                                         ; $4a67: $1c
    inc a                                         ; $4a68: $3c
    inc bc                                        ; $4a69: $03
    nop                                           ; $4a6a: $00
    db $fc                                        ; $4a6b: $fc
    rlca                                          ; $4a6c: $07
    db $f4                                        ; $4a6d: $f4
    rlca                                          ; $4a6e: $07
    ldh [rTAC], a                                 ; $4a6f: $e0 $07
    rrca                                          ; $4a71: $0f
    ld b, $00                                     ; $4a72: $06 $00
    rrca                                          ; $4a74: $0f
    db $ec                                        ; $4a75: $ec
    add $da                                       ; $4a76: $c6 $da
    ld d, $05                                     ; $4a78: $16 $05
    rrca                                          ; $4a7a: $0f
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    dec b                                         ; $4a7d: $05
    pop bc                                        ; $4a7e: $c1
    adc b                                         ; $4a7f: $88
    add hl, bc                                    ; $4a80: $09
    and d                                         ; $4a81: $a2
    dec hl                                        ; $4a82: $2b
    ld de, $003a                                  ; $4a83: $11 $3a $00
    ld b, c                                       ; $4a86: $41
    ld l, d                                       ; $4a87: $6a
    ld b, c                                       ; $4a88: $41
    dec hl                                        ; $4a89: $2b
    ld bc, $416b                                  ; $4a8a: $01 $6b $41
    ld l, d                                       ; $4a8d: $6a
    nop                                           ; $4a8e: $00
    sub c                                         ; $4a8f: $91
    ld c, $01                                     ; $4a90: $0e $01

jr_0ad_4a92:
    inc bc                                        ; $4a92: $03
    ld b, b                                       ; $4a93: $40
    inc a                                         ; $4a94: $3c
    ld a, [hl]                                    ; $4a95: $7e
    ld [bc], a                                    ; $4a96: $02
    nop                                           ; $4a97: $00
    ld h, b                                       ; $4a98: $60
    ld h, d                                       ; $4a99: $62
    ld c, d                                       ; $4a9a: $4a
    ld d, d                                       ; $4a9b: $52
    ld h, $1b                                     ; $4a9c: $26 $1b
    ld a, [hl]                                    ; $4a9e: $7e
    ld a, [hl]                                    ; $4a9f: $7e
    nop                                           ; $4aa0: $00
    add [hl]                                      ; $4aa1: $86
    ld d, b                                       ; $4aa2: $50
    rlca                                          ; $4aa3: $07
    sbc h                                         ; $4aa4: $9c
    inc bc                                        ; $4aa5: $03
    add hl, de                                    ; $4aa6: $19
    inc bc                                        ; $4aa7: $03
    jr jr_0ad_4aaa                                ; $4aa8: $18 $00

jr_0ad_4aaa:
    add hl, bc                                    ; $4aaa: $09
    ld a, [bc]                                    ; $4aab: $0a
    ld [$c909], sp                                ; $4aac: $08 $09 $c9
    jp $e308                                      ; $4aaf: $c3 $08 $e3


    nop                                           ; $4ab2: $00
    rst $38                                       ; $4ab3: $ff
    nop                                           ; $4ab4: $00
    ld a, a                                       ; $4ab5: $7f
    nop                                           ; $4ab6: $00
    jr c, @-$7e                                   ; $4ab7: $38 $80

    inc bc                                        ; $4ab9: $03
    add a                                         ; $4aba: $87
    nop                                           ; $4abb: $00
    pop de                                        ; $4abc: $d1
    rra                                           ; $4abd: $1f
    ret c                                         ; $4abe: $d8

    jr jr_0ad_4ac1                                ; $4abf: $18 $00

jr_0ad_4ac1:
    ld bc, $0781                                  ; $4ac1: $01 $81 $07
    nop                                           ; $4ac4: $00
    di                                            ; $4ac5: $f3
    dec b                                         ; $4ac6: $05
    db $eb                                        ; $4ac7: $eb
    dec b                                         ; $4ac8: $05
    ld [$b00e], sp                                ; $4ac9: $08 $0e $b0
    inc [hl]                                      ; $4acc: $34
    nop                                           ; $4acd: $00
    inc bc                                        ; $4ace: $03
    dec sp                                        ; $4acf: $3b
    dec [hl]                                      ; $4ad0: $35
    ld c, c                                       ; $4ad1: $49
    ld a, $c2                                     ; $4ad2: $3e $c2
    cp $1e                                        ; $4ad4: $fe $1e
    nop                                           ; $4ad6: $00
    ld a, a                                       ; $4ad7: $7f
    ld [hl], b                                    ; $4ad8: $70
    ld a, a                                       ; $4ad9: $7f
    ld hl, sp+$00                                 ; $4ada: $f8 $00
    ldh [$0c], a                                  ; $4adc: $e0 $0c
    ld b, $00                                     ; $4ade: $06 $00
    inc c                                         ; $4ae0: $0c
    ld b, $04                                     ; $4ae1: $06 $04
    ld [bc], a                                    ; $4ae3: $02
    dec b                                         ; $4ae4: $05
    inc bc                                        ; $4ae5: $03
    ld b, $03                                     ; $4ae6: $06 $03
    nop                                           ; $4ae8: $00

jr_0ad_4ae9:
    ld e, $ee                                     ; $4ae9: $1e $ee
    db $e4                                        ; $4aeb: $e4
    jr jr_0ad_4af0                                ; $4aec: $18 $02

    ld [bc], a                                    ; $4aee: $02
    ld [hl], b                                    ; $4aef: $70

jr_0ad_4af0:
    ld e, $00                                     ; $4af0: $1e $00
    ldh [$be], a                                  ; $4af2: $e0 $be
    ld a, $c6                                     ; $4af4: $3e $c6
    ld a, h                                       ; $4af6: $7c
    inc c                                         ; $4af7: $0c
    ld h, b                                       ; $4af8: $60
    dec e                                         ; $4af9: $1d
    nop                                           ; $4afa: $00

jr_0ad_4afb:
    ld a, [hl+]                                   ; $4afb: $2a
    ld b, b                                       ; $4afc: $40
    ld b, c                                       ; $4afd: $41
    xor d                                         ; $4afe: $aa
    add c                                         ; $4aff: $81

Jump_0ad_4b00:
    ld l, c                                       ; $4b00: $69
    ld e, [hl]                                    ; $4b01: $5e
    ei                                            ; $4b02: $fb
    nop                                           ; $4b03: $00
    xor [hl]                                      ; $4b04: $ae
    ld c, $5e                                     ; $4b05: $0e $5e
    inc d                                         ; $4b07: $14
    jp z, Jump_000_1917                           ; $4b08: $ca $17 $19

    or h                                          ; $4b0b: $b4
    nop                                           ; $4b0c: $00
    ld b, e                                       ; $4b0d: $43
    inc a                                         ; $4b0e: $3c
    ld l, a                                       ; $4b0f: $6f
    ld d, e                                       ; $4b10: $53
    ld h, h                                       ; $4b11: $64

jr_0ad_4b12:
    rla                                           ; $4b12: $17
    xor h                                         ; $4b13: $ac
    sub a                                         ; $4b14: $97
    nop                                           ; $4b15: $00
    ccf                                           ; $4b16: $3f
    add a                                         ; $4b17: $87
    call c, $0cc3                                 ; $4b18: $dc $c3 $0c
    inc bc                                        ; $4b1b: $03
    ld h, b                                       ; $4b1c: $60
    ld h, b                                       ; $4b1d: $60
    nop                                           ; $4b1e: $00
    ld [$a8e0], sp                                ; $4b1f: $08 $e0 $a8
    ret nz                                        ; $4b22: $c0

    ldh [rBCPS], a                                ; $4b23: $e0 $68
    ld b, h                                       ; $4b25: $44
    push hl                                       ; $4b26: $e5
    nop                                           ; $4b27: $00
    sub [hl]                                      ; $4b28: $96
    ret nc                                        ; $4b29: $d0

    inc d                                         ; $4b2a: $14
    sub $92                                       ; $4b2b: $d6 $92
    ld de, $034a                                  ; $4b2d: $11 $4a $03
    nop                                           ; $4b30: $00
    inc a                                         ; $4b31: $3c
    ld a, e                                       ; $4b32: $7b
    nop                                           ; $4b33: $00
    ret nz                                        ; $4b34: $c0

    inc hl                                        ; $4b35: $23
    jr nz, jr_0ad_4afb                            ; $4b36: $20 $c3

    ld hl, sp+$00                                 ; $4b38: $f8 $00
    ld h, e                                       ; $4b3a: $63
    ld a, b                                       ; $4b3b: $78
    inc sp                                        ; $4b3c: $33
    jr c, jr_0ad_4b77                             ; $4b3d: $38 $38

    ld c, [hl]                                    ; $4b3f: $4e
    inc e                                         ; $4b40: $1c
    xor d                                         ; $4b41: $aa
    nop                                           ; $4b42: $00
    ld [$3807], sp                                ; $4b43: $08 $07 $38
    daa                                           ; $4b46: $27
    jr nc, jr_0ad_4ae9                            ; $4b47: $30 $a0

    ld [hl], b                                    ; $4b49: $70
    ld h, b                                       ; $4b4a: $60
    nop                                           ; $4b4b: $00
    ld h, b                                       ; $4b4c: $60
    ld e, a                                       ; $4b4d: $5f
    ld h, b                                       ; $4b4e: $60
    ld e, a                                       ; $4b4f: $5f
    jr nz, jr_0ad_4b12                            ; $4b50: $20 $c0

    ld h, b                                       ; $4b52: $60
    ret nz                                        ; $4b53: $c0

    nop                                           ; $4b54: $00
    ld [bc], a                                    ; $4b55: $02
    ld bc, $0102                                  ; $4b56: $01 $02 $01
    inc bc                                        ; $4b59: $03
    ld bc, $0100                                  ; $4b5a: $01 $00 $01
    ret nz                                        ; $4b5d: $c0

    inc bc                                        ; $4b5e: $03
    nop                                           ; $4b5f: $00
    ret nz                                        ; $4b60: $c0

    ld bc, $0000                                  ; $4b61: $01 $00 $00
    ld h, c                                       ; $4b64: $61
    add hl, de                                    ; $4b65: $19
    inc sp                                        ; $4b66: $33
    or c                                          ; $4b67: $b1
    nop                                           ; $4b68: $00
    daa                                           ; $4b69: $27
    and e                                         ; $4b6a: $a3
    adc d                                         ; $4b6b: $8a
    rrca                                          ; $4b6c: $0f
    ld a, [de]                                    ; $4b6d: $1a
    sbc [hl]                                      ; $4b6e: $9e
    ld e, $d0                                     ; $4b6f: $1e $d0
    nop                                           ; $4b71: $00
    inc e                                         ; $4b72: $1c
    ret c                                         ; $4b73: $d8

    add hl, de                                    ; $4b74: $19
    ret                                           ; $4b75: $c9


    add hl, sp                                    ; $4b76: $39

jr_0ad_4b77:
    jr c, jr_0ad_4be9                             ; $4b77: $38 $70

    add hl, sp                                    ; $4b79: $39
    nop                                           ; $4b7a: $00
    ld [hl], b                                    ; $4b7b: $70
    db $e3                                        ; $4b7c: $e3
    ldh [$57], a                                  ; $4b7d: $e0 $57
    ld h, d                                       ; $4b7f: $62
    rst $08                                       ; $4b80: $cf
    sbc h                                         ; $4b81: $9c
    ld e, d                                       ; $4b82: $5a
    nop                                           ; $4b83: $00
    cp d                                          ; $4b84: $ba
    inc b                                         ; $4b85: $04
    ld d, h                                       ; $4b86: $54
    ld a, h                                       ; $4b87: $7c
    ld d, [hl]                                    ; $4b88: $56
    ld c, d                                       ; $4b89: $4a
    ld h, $1a                                     ; $4b8a: $26 $1a
    nop                                           ; $4b8c: $00
    ld h, h                                       ; $4b8d: $64
    jr c, jr_0ad_4bf2                             ; $4b8e: $38 $62

    ld a, h                                       ; $4b90: $7c
    ld [bc], a                                    ; $4b91: $02
    ld a, h                                       ; $4b92: $7c
    add b                                         ; $4b93: $80
    cp $00                                        ; $4b94: $fe $00
    ld a, d                                       ; $4b96: $7a
    ld l, $7f                                     ; $4b97: $2e $7f
    ld h, $c9                                     ; $4b99: $26 $c9
    ret nz                                        ; $4b9b: $c0

    ld d, l                                       ; $4b9c: $55
    ld [hl], b                                    ; $4b9d: $70
    nop                                           ; $4b9e: $00
    rst $00                                       ; $4b9f: $c7
    or a                                          ; $4ba0: $b7
    ld c, d                                       ; $4ba1: $4a
    jr c, @+$4d                                   ; $4ba2: $38 $4b

    inc sp                                        ; $4ba4: $33
    ld c, e                                       ; $4ba5: $4b
    inc sp                                        ; $4ba6: $33
    nop                                           ; $4ba7: $00
    inc bc                                        ; $4ba8: $03
    jr c, jr_0ad_4bb6                             ; $4ba9: $38 $0b

    ld [hl-], a                                   ; $4bab: $32
    add b                                         ; $4bac: $80
    inc e                                         ; $4bad: $1c
    pop bc                                        ; $4bae: $c1
    dec c                                         ; $4baf: $0d
    nop                                           ; $4bb0: $00
    pop bc                                        ; $4bb1: $c1
    dec c                                         ; $4bb2: $0d
    pop hl                                        ; $4bb3: $e1
    dec c                                         ; $4bb4: $0d
    ld [hl], h                                    ; $4bb5: $74

jr_0ad_4bb6:
    dec b                                         ; $4bb6: $05
    jr nc, jr_0ad_4bbc                            ; $4bb7: $30 $03

    nop                                           ; $4bb9: $00
    or b                                          ; $4bba: $b0
    inc hl                                        ; $4bbb: $23

jr_0ad_4bbc:
    cp b                                          ; $4bbc: $b8
    inc sp                                        ; $4bbd: $33
    ret nz                                        ; $4bbe: $c0

    add b                                         ; $4bbf: $80
    ld b, b                                       ; $4bc0: $40
    add b                                         ; $4bc1: $80
    inc de                                        ; $4bc2: $13
    ld b, b                                       ; $4bc3: $40
    ret nz                                        ; $4bc4: $c0

    add b                                         ; $4bc5: $80
    rst $10                                       ; $4bc6: $d7
    ld bc, $0080                                  ; $4bc7: $01 $80 $00
    ld b, $00                                     ; $4bca: $06 $00
    sbc a                                         ; $4bcc: $9f
    ld a, d                                       ; $4bcd: $7a
    nop                                           ; $4bce: $00
    ldh [$e0], a                                  ; $4bcf: $e0 $e0
    ld c, $60                                     ; $4bd1: $0e $60
    ld c, l                                       ; $4bd3: $4d
    ldh a, [$85]                                  ; $4bd4: $f0 $85
    ldh a, [rP1]                                  ; $4bd6: $f0 $00
    add b                                         ; $4bd8: $80
    ld hl, $381e                                  ; $4bd9: $21 $1e $38
    daa                                           ; $4bdc: $27
    rrca                                          ; $4bdd: $0f
    inc sp                                        ; $4bde: $33
    adc l                                         ; $4bdf: $8d
    nop                                           ; $4be0: $00
    ld a, c                                       ; $4be1: $79
    pop hl                                        ; $4be2: $e1
    add hl, de                                    ; $4be3: $19
    jp $f03b                                      ; $4be4: $c3 $3b $f0


    scf                                           ; $4be7: $37
    nop                                           ; $4be8: $00

jr_0ad_4be9:
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    db $e3                                        ; $4beb: $e3
    inc hl                                        ; $4bec: $23
    ld sp, $0fc1                                  ; $4bed: $31 $c1 $0f
    pop af                                        ; $4bf0: $f1
    rst $38                                       ; $4bf1: $ff

jr_0ad_4bf2:
    nop                                           ; $4bf2: $00
    ld a, [hl]                                    ; $4bf3: $7e
    ld [hl], b                                    ; $4bf4: $70
    cp h                                          ; $4bf5: $bc
    ld [$21f8], sp                                ; $4bf6: $08 $f8 $21
    pop bc                                        ; $4bf9: $c1
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    pop hl                                        ; $4bfd: $e1
    ld a, a                                       ; $4bfe: $7f
    ldh a, [$cf]                                  ; $4bff: $f0 $cf
    inc e                                         ; $4c01: $1c
    inc de                                        ; $4c02: $13
    xor l                                         ; $4c03: $ad
    nop                                           ; $4c04: $00
    inc d                                         ; $4c05: $14
    ret                                           ; $4c06: $c9


    call z, Call_000_044a                         ; $4c07: $cc $4a $04
    adc d                                         ; $4c0a: $8a
    add h                                         ; $4c0b: $84
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    ld a, [hl]                                    ; $4c0f: $7e
    db $d3                                        ; $4c10: $d3
    add e                                         ; $4c11: $83
    ld b, h                                       ; $4c12: $44
    rst $00                                       ; $4c13: $c7
    jp hl                                         ; $4c14: $e9


    rlca                                          ; $4c15: $07
    nop                                           ; $4c16: $00
    add h                                         ; $4c17: $84
    rlca                                          ; $4c18: $07
    add b                                         ; $4c19: $80
    add c                                         ; $4c1a: $81
    rlca                                          ; $4c1b: $07
    ld bc, $030f                                  ; $4c1c: $01 $0f $03
    ld bc, $e70d                                  ; $4c1f: $01 $0d $e7
    dec de                                        ; $4c22: $1b
    inc c                                         ; $4c23: $0c
    ldh a, [rNR32]                                ; $4c24: $f0 $1c
    db $e4                                        ; $4c26: $e4
    nop                                           ; $4c27: $00
    ld l, e                                       ; $4c28: $6b
    db $10                                        ; $4c29: $10
    inc bc                                        ; $4c2a: $03
    sbc d                                         ; $4c2b: $9a
    ld [bc], a                                    ; $4c2c: $02
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    inc bc                                        ; $4c30: $03
    nop                                           ; $4c31: $00
    dec b                                         ; $4c32: $05
    inc bc                                        ; $4c33: $03
    inc bc                                        ; $4c34: $03
    ld b, $10                                     ; $4c35: $06 $10
    nop                                           ; $4c37: $00
    rlca                                          ; $4c38: $07
    nop                                           ; $4c39: $00
    ld bc, $1c10                                  ; $4c3a: $01 $10 $1c
    nop                                           ; $4c3d: $00
    ld bc, $0001                                  ; $4c3e: $01 $01 $00
    ld a, [c]                                     ; $4c41: $f2
    inc c                                         ; $4c42: $0c
    db $f4                                        ; $4c43: $f4
    adc c                                         ; $4c44: $89
    ld [hl], b                                    ; $4c45: $70
    ld h, $ee                                     ; $4c46: $26 $ee
    pop af                                        ; $4c48: $f1
    db $10                                        ; $4c49: $10
    ccf                                           ; $4c4a: $3f
    ccf                                           ; $4c4b: $3f
    ld bc, $0015                                  ; $4c4c: $01 $15 $00
    add b                                         ; $4c4f: $80
    ld a, a                                       ; $4c50: $7f
    and b                                         ; $4c51: $a0
    ccf                                           ; $4c52: $3f
    nop                                           ; $4c53: $00
    inc bc                                        ; $4c54: $03
    inc bc                                        ; $4c55: $03
    rlca                                          ; $4c56: $07
    sub b                                         ; $4c57: $90
    and a                                         ; $4c58: $a7
    ldh a, [$c2]                                  ; $4c59: $f0 $c2
    cp b                                          ; $4c5b: $b8
    nop                                           ; $4c5c: $00
    inc [hl]                                      ; $4c5d: $34
    ld e, b                                       ; $4c5e: $58
    inc c                                         ; $4c5f: $0c
    jr nz, jr_0ad_4c8d                            ; $4c60: $20 $2b

    ld h, h                                       ; $4c62: $64
    add a                                         ; $4c63: $87
    ld [hl], e                                    ; $4c64: $73
    inc b                                         ; $4c65: $04
    rst $20                                       ; $4c66: $e7
    ld bc, $c31b                                  ; $4c67: $01 $1b $c3
    inc a                                         ; $4c6a: $3c
    ld sp, $e018                                  ; $4c6b: $31 $18 $e0
    ret nz                                        ; $4c6e: $c0

    nop                                           ; $4c6f: $00
    or b                                          ; $4c70: $b0
    ret c                                         ; $4c71: $d8

    jr z, jr_0ad_4cdc                             ; $4c72: $28 $68

    ret c                                         ; $4c74: $d8

    ret nc                                        ; $4c75: $d0

    ld hl, sp+$78                                 ; $4c76: $f8 $78
    ld b, $10                                     ; $4c78: $06 $10
    jr z, @+$7a                                   ; $4c7a: $28 $78

    or b                                          ; $4c7c: $b0
    jr c, jr_0ad_4cc5                             ; $4c7d: $38 $46

    jr jr_0ad_4c87                                ; $4c7f: $18 $06

    add sp, -$02                                  ; $4c81: $e8 $fe
    nop                                           ; $4c83: $00
    ld bc, $01fc                                  ; $4c84: $01 $fc $01

jr_0ad_4c87:
    nop                                           ; $4c87: $00
    rrca                                          ; $4c88: $0f
    rrca                                          ; $4c89: $0f
    jr jr_0ad_4c93                                ; $4c8a: $18 $07

    nop                                           ; $4c8c: $00

jr_0ad_4c8d:
    inc e                                         ; $4c8d: $1c
    ld [bc], a                                    ; $4c8e: $02
    ld bc, $0708                                  ; $4c8f: $01 $08 $07
    ld [bc], a                                    ; $4c92: $02

jr_0ad_4c93:
    rst $38                                       ; $4c93: $ff
    or e                                          ; $4c94: $b3
    nop                                           ; $4c95: $00
    ld [hl+], a                                   ; $4c96: $22
    call Call_000_2335                            ; $4c97: $cd $35 $23
    ld d, [hl]                                    ; $4c9a: $56
    and $40                                       ; $4c9b: $e6 $40
    add c                                         ; $4c9d: $81
    nop                                           ; $4c9e: $00
    ret nz                                        ; $4c9f: $c0

    cp d                                          ; $4ca0: $ba
    ld h, $0a                                     ; $4ca1: $26 $0a
    ld e, $06                                     ; $4ca3: $1e $06
    dec c                                         ; $4ca5: $0d
    ld b, c                                       ; $4ca6: $41
    nop                                           ; $4ca7: $00
    db $e3                                        ; $4ca8: $e3
    or c                                          ; $4ca9: $b1
    ld [hl], c                                    ; $4caa: $71
    inc a                                         ; $4cab: $3c
    sub c                                         ; $4cac: $91
    nop                                           ; $4cad: $00
    ld [bc], a                                    ; $4cae: $02
    db $fd                                        ; $4caf: $fd
    nop                                           ; $4cb0: $00
    ld bc, $00f8                                  ; $4cb1: $01 $f8 $00
    ld [hl], c                                    ; $4cb4: $71
    inc bc                                        ; $4cb5: $03
    ld l, b                                       ; $4cb6: $68
    rlca                                          ; $4cb7: $07
    add hl, de                                    ; $4cb8: $19
    nop                                           ; $4cb9: $00
    add hl, de                                    ; $4cba: $19
    jr c, jr_0ad_4cc3                             ; $4cbb: $38 $06

    inc c                                         ; $4cbd: $0c
    inc b                                         ; $4cbe: $04
    inc bc                                        ; $4cbf: $03
    jr nz, @-$66                                  ; $4cc0: $20 $98

    nop                                           ; $4cc2: $00

jr_0ad_4cc3:
    ld c, h                                       ; $4cc3: $4c
    ret nz                                        ; $4cc4: $c0

jr_0ad_4cc5:
    inc e                                         ; $4cc5: $1c
    inc b                                         ; $4cc6: $04
    ld c, $d1                                     ; $4cc7: $0e $d1
    ld b, e                                       ; $4cc9: $43
    ld hl, sp+$01                                 ; $4cca: $f8 $01
    jp nz, $98e4                                  ; $4ccc: $c2 $e4 $98

    db $10                                        ; $4ccf: $10
    inc d                                         ; $4cd0: $14
    ld [de], a                                    ; $4cd1: $12
    ld c, d                                       ; $4cd2: $4a
    xor a                                         ; $4cd3: $af
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    ld b, b                                       ; $4cd7: $40
    add b                                         ; $4cd8: $80
    ldh [$80], a                                  ; $4cd9: $e0 $80
    cp b                                          ; $4cdb: $b8

jr_0ad_4cdc:
    ret nz                                        ; $4cdc: $c0

    ld e, h                                       ; $4cdd: $5c
    inc bc                                        ; $4cde: $03
    ld h, b                                       ; $4cdf: $60
    ld c, $10                                     ; $4ce0: $0e $10
    ld l, c                                       ; $4ce2: $69
    ld c, $74                                     ; $4ce3: $0e $74
    add $20                                       ; $4ce5: $c6 $20
    add [hl]                                      ; $4ce7: $86
    jr nz, jr_0ad_4cea                            ; $4ce8: $20 $00

jr_0ad_4cea:
    add b                                         ; $4cea: $80
    ret nz                                        ; $4ceb: $c0

    nop                                           ; $4cec: $00
    dec a                                         ; $4ced: $3d
    rrca                                          ; $4cee: $0f
    ld a, b                                       ; $4cef: $78
    ld b, [hl]                                    ; $4cf0: $46
    ld e, h                                       ; $4cf1: $5c
    ld bc, $0128                                  ; $4cf2: $01 $28 $01
    nop                                           ; $4cf5: $00
    add a                                         ; $4cf6: $87
    ldh a, [$e0]                                  ; $4cf7: $f0 $e0
    ld l, a                                       ; $4cf9: $6f
    ld [bc], a                                    ; $4cfa: $02
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    ld c, a                                       ; $4cfd: $4f
    ld e, $00                                     ; $4cfe: $1e $00
    ld a, a                                       ; $4d00: $7f
    ld bc, $07fe                                  ; $4d01: $01 $fe $07
    ld a, [$0300]                                 ; $4d04: $fa $00 $03
    pop af                                        ; $4d07: $f1
    ld bc, $03f9                                  ; $4d08: $01 $f9 $03
    ld a, [c]                                     ; $4d0b: $f2
    inc bc                                        ; $4d0c: $03
    ld a, [c]                                     ; $4d0d: $f2
    nop                                           ; $4d0e: $00
    ld b, $00                                     ; $4d0f: $06 $00
    ld bc, $9061                                  ; $4d11: $01 $61 $90
    ld [hl+], a                                   ; $4d14: $22
    add [hl]                                      ; $4d15: $86
    ret nc                                        ; $4d16: $d0

    nop                                           ; $4d17: $00
    ld b, [hl]                                    ; $4d18: $46
    or [hl]                                       ; $4d19: $b6
    add [hl]                                      ; $4d1a: $86
    ld [hl], b                                    ; $4d1b: $70
    ld b, $79                                     ; $4d1c: $06 $79
    ld bc, $00f0                                  ; $4d1e: $01 $f0 $00
    ld [bc], a                                    ; $4d21: $02
    jp c, Jump_000_2581                           ; $4d22: $da $81 $25

    ld h, e                                       ; $4d25: $63
    adc $03                                       ; $4d26: $ce $03
    inc b                                         ; $4d28: $04
    ld [bc], a                                    ; $4d29: $02
    ld [bc], a                                    ; $4d2a: $02
    pop hl                                        ; $4d2b: $e1
    xor b                                         ; $4d2c: $a8
    ld b, c                                       ; $4d2d: $41
    ld c, b                                       ; $4d2e: $48
    adc e                                         ; $4d2f: $8b
    ld [bc], a                                    ; $4d30: $02
    nop                                           ; $4d31: $00
    rst $00                                       ; $4d32: $c7
    nop                                           ; $4d33: $00
    inc bc                                        ; $4d34: $03
    ld a, [de]                                    ; $4d35: $1a
    ld [c], a                                     ; $4d36: $e2
    ld hl, sp+$1c                                 ; $4d37: $f8 $1c
    inc [hl]                                      ; $4d39: $34
    ld [hl-], a                                   ; $4d3a: $32
    push bc                                       ; $4d3b: $c5
    nop                                           ; $4d3c: $00
    call nc, Call_000_1081                        ; $4d3d: $d4 $81 $10
    call nz, $0930                                ; $4d40: $c4 $30 $09
    push hl                                       ; $4d43: $e5
    ld hl, sp+$14                                 ; $4d44: $f8 $14
    add c                                         ; $4d46: $81
    cp $80                                        ; $4d47: $fe $80
    ld a, [hl+]                                   ; $4d49: $2a
    add hl, bc                                    ; $4d4a: $09
    ld a, a                                       ; $4d4b: $7f
    ld [bc], a                                    ; $4d4c: $02
    nop                                           ; $4d4d: $00
    ccf                                           ; $4d4e: $3f
    add b                                         ; $4d4f: $80
    ld b, b                                       ; $4d50: $40
    cp a                                          ; $4d51: $bf
    ld a, h                                       ; $4d52: $7c
    nop                                           ; $4d53: $00
    ld h, b                                       ; $4d54: $60
    ld hl, sp+$70                                 ; $4d55: $f8 $70
    inc c                                         ; $4d57: $0c
    sub h                                         ; $4d58: $94
    ld c, $04                                     ; $4d59: $0e $04
    ld [$f207], a                                 ; $4d5b: $ea $07 $f2
    rlca                                          ; $4d5e: $07
    di                                            ; $4d5f: $f3
    inc b                                         ; $4d60: $04
    nop                                           ; $4d61: $00
    ld h, b                                       ; $4d62: $60
    ld c, a                                       ; $4d63: $4f
    nop                                           ; $4d64: $00
    ld d, a                                       ; $4d65: $57
    ld h, b                                       ; $4d66: $60
    rla                                           ; $4d67: $17
    ld h, b                                       ; $4d68: $60
    rla                                           ; $4d69: $17
    jr nc, jr_0ad_4d87                            ; $4d6a: $30 $1b

jr_0ad_4d6c:
    jr c, jr_0ad_4d6e                             ; $4d6c: $38 $00

jr_0ad_4d6e:
    jp $e3f8                                      ; $4d6e: $c3 $f8 $e3


    ld hl, sp-$06                                 ; $4d71: $f8 $fa
    ldh [$f3], a                                  ; $4d73: $e0 $f3
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    rst $38                                       ; $4d77: $ff
    nop                                           ; $4d78: $00
    ld hl, sp+$00                                 ; $4d79: $f8 $00
    push af                                       ; $4d7b: $f5
    rlca                                          ; $4d7c: $07
    ldh [$0c], a                                  ; $4d7d: $e0 $0c
    nop                                           ; $4d7f: $00
    ret                                           ; $4d80: $c9


    sub $c3                                       ; $4d81: $d6 $c3
    ret c                                         ; $4d83: $d8

    inc bc                                        ; $4d84: $03
    jr nc, jr_0ad_4d6c                            ; $4d85: $30 $e5

jr_0ad_4d87:
    rlca                                          ; $4d87: $07
    nop                                           ; $4d88: $00
    ld e, $1a                                     ; $4d89: $1e $1a
    db $dd                                        ; $4d8b: $dd
    jr nz, jr_0ad_4dbf                            ; $4d8c: $20 $31

    ldh a, [rNR11]                                ; $4d8e: $f0 $11
    inc e                                         ; $4d90: $1c
    nop                                           ; $4d91: $00
    ld d, c                                       ; $4d92: $51
    xor c                                         ; $4d93: $a9
    add c                                         ; $4d94: $81
    ldh [$0c], a                                  ; $4d95: $e0 $0c
    add [hl]                                      ; $4d97: $86
    jr c, @+$2d                                   ; $4d98: $38 $2b

    nop                                           ; $4d9a: $00
    ldh a, [$87]                                  ; $4d9b: $f0 $87
    or [hl]                                       ; $4d9d: $b6
    pop af                                        ; $4d9e: $f1
    ld d, a                                       ; $4d9f: $57
    ret nc                                        ; $4da0: $d0

    ldh [$c1], a                                  ; $4da1: $e0 $c1
    nop                                           ; $4da3: $00
    ldh [$e7], a                                  ; $4da4: $e0 $e7
    rla                                           ; $4da6: $17
    ld h, a                                       ; $4da7: $67
    ld c, e                                       ; $4da8: $4b
    inc sp                                        ; $4da9: $33
    ld bc, $00fa                                  ; $4daa: $01 $fa $00
    ld c, c                                       ; $4dad: $49
    ld hl, sp-$79                                 ; $4dae: $f8 $87
    dec [hl]                                      ; $4db0: $35
    rst $00                                       ; $4db1: $c7
    dec b                                         ; $4db2: $05
    db $e4                                        ; $4db3: $e4
    rlca                                          ; $4db4: $07

jr_0ad_4db5:
    nop                                           ; $4db5: $00
    add h                                         ; $4db6: $84
    inc c                                         ; $4db7: $0c
    inc b                                         ; $4db8: $04
    ret nz                                        ; $4db9: $c0

    dec bc                                        ; $4dba: $0b
    pop bc                                        ; $4dbb: $c1
    rra                                           ; $4dbc: $1f
    add b                                         ; $4dbd: $80
    nop                                           ; $4dbe: $00

jr_0ad_4dbf:
    ld h, a                                       ; $4dbf: $67
    ld h, b                                       ; $4dc0: $60
    ld a, b                                       ; $4dc1: $78
    inc sp                                        ; $4dc2: $33
    inc e                                         ; $4dc3: $1c
    ld bc, $0680                                  ; $4dc4: $01 $80 $06
    nop                                           ; $4dc7: $00
    or e                                          ; $4dc8: $b3
    dec b                                         ; $4dc9: $05
    db $d3                                        ; $4dca: $d3

jr_0ad_4dcb:
    daa                                           ; $4dcb: $27
    inc sp                                        ; $4dcc: $33
    ld hl, $06f2                                  ; $4dcd: $21 $f2 $06
    nop                                           ; $4dd0: $00
    ld [$e206], a                                 ; $4dd1: $ea $06 $e2
    ld c, $e0                                     ; $4dd4: $0e $e0
    inc c                                         ; $4dd6: $0c
    call z, Call_000_001c                         ; $4dd7: $cc $1c $00
    ld c, h                                       ; $4dda: $4c
    inc e                                         ; $4ddb: $1c
    ld c, a                                       ; $4ddc: $4f
    rla                                           ; $4ddd: $17
    ld c, a                                       ; $4dde: $4f
    rla                                           ; $4ddf: $17
    ld hl, sp-$1b                                 ; $4de0: $f8 $e5
    nop                                           ; $4de2: $00
    add hl, de                                    ; $4de3: $19
    dec b                                         ; $4de4: $05
    ld [$f104], sp                                ; $4de5: $08 $04 $f1
    db $fc                                        ; $4de8: $fc
    pop af                                        ; $4de9: $f1
    ld hl, sp+$00                                 ; $4dea: $f8 $00
    inc bc                                        ; $4dec: $03
    ld sp, hl                                     ; $4ded: $f9
    ld bc, $fcf8                                  ; $4dee: $01 $f8 $fc
    nop                                           ; $4df1: $00
    jp nz, Jump_000_00cd                          ; $4df2: $c2 $cd $00

    ld [de], a                                    ; $4df5: $12
    ld [c], a                                     ; $4df6: $e2
    ret nc                                        ; $4df7: $d0

    inc c                                         ; $4df8: $0c
    sbc h                                         ; $4df9: $9c
    ld e, c                                       ; $4dfa: $59

jr_0ad_4dfb:
    ret nz                                        ; $4dfb: $c0

    inc hl                                        ; $4dfc: $23
    nop                                           ; $4dfd: $00
    daa                                           ; $4dfe: $27
    pop bc                                        ; $4dff: $c1
    rla                                           ; $4e00: $17
    db $e3                                        ; $4e01: $e3
    ldh a, [$3b]                                  ; $4e02: $f0 $3b
    ld a, [hl-]                                   ; $4e04: $3a
    ld [hl], h                                    ; $4e05: $74
    nop                                           ; $4e06: $00
    call z, $037c                                 ; $4e07: $cc $7c $03
    nop                                           ; $4e0a: $00
    db $fc                                        ; $4e0b: $fc
    inc bc                                        ; $4e0c: $03
    nop                                           ; $4e0d: $00
    db $fd                                        ; $4e0e: $fd
    nop                                           ; $4e0f: $00
    ld a, [$0103]                                 ; $4e10: $fa $03 $01
    or $07                                        ; $4e13: $f6 $07
    ldh a, [$0b]                                  ; $4e15: $f0 $0b
    jr c, jr_0ad_4e19                             ; $4e17: $38 $00

jr_0ad_4e19:
    adc e                                         ; $4e19: $8b
    ld [$1398], sp                                ; $4e1a: $08 $98 $13
    sbc b                                         ; $4e1d: $98
    dec de                                        ; $4e1e: $1b
    db $10                                        ; $4e1f: $10
    add a                                         ; $4e20: $87
    nop                                           ; $4e21: $00
    jr nc, jr_0ad_4dcb                            ; $4e22: $30 $a7

    jr nz, jr_0ad_4db5                            ; $4e24: $20 $8f

    ld b, c                                       ; $4e26: $41
    rra                                           ; $4e27: $1f
    ret nz                                        ; $4e28: $c0

    ld [$5300], sp                                ; $4e29: $08 $00 $53
    adc e                                         ; $4e2c: $8b
    db $d3                                        ; $4e2d: $d3
    sbc b                                         ; $4e2e: $98
    ldh [$88], a                                  ; $4e2f: $e0 $88
    db $e3                                        ; $4e31: $e3
    ret z                                         ; $4e32: $c8

    nop                                           ; $4e33: $00
    ldh [$cc], a                                  ; $4e34: $e0 $cc
    rlca                                          ; $4e36: $07
    db $e4                                        ; $4e37: $e4
    rla                                           ; $4e38: $17
    db $e3                                        ; $4e39: $e3
    ld b, c                                       ; $4e3a: $41
    and h                                         ; $4e3b: $a4
    nop                                           ; $4e3c: $00
    add hl, hl                                    ; $4e3d: $29
    adc d                                         ; $4e3e: $8a
    jr nz, @+$2e                                  ; $4e3f: $20 $2c

    add hl, bc                                    ; $4e41: $09
    ld h, $8f                                     ; $4e42: $26 $8f
    xor h                                         ; $4e44: $ac
    nop                                           ; $4e45: $00
    inc hl                                        ; $4e46: $23
    ld h, b                                       ; $4e47: $60
    inc de                                        ; $4e48: $13
    ret nc                                        ; $4e49: $d0

    inc sp                                        ; $4e4a: $33
    jr nc, jr_0ad_4e5c                            ; $4e4b: $30 $0f

    scf                                           ; $4e4d: $37
    nop                                           ; $4e4e: $00
    rrca                                          ; $4e4f: $0f
    scf                                           ; $4e50: $37
    ccf                                           ; $4e51: $3f
    rrca                                          ; $4e52: $0f
    ccf                                           ; $4e53: $3f
    ld c, a                                       ; $4e54: $4f
    ld h, b                                       ; $4e55: $60
    ld [hl], b                                    ; $4e56: $70
    nop                                           ; $4e57: $00
    add b                                         ; $4e58: $80
    jr nz, jr_0ad_4dfb                            ; $4e59: $20 $a0

    sbc a                                         ; $4e5b: $9f

jr_0ad_4e5c:
    and b                                         ; $4e5c: $a0
    sbc a                                         ; $4e5d: $9f
    ld hl, sp+$03                                 ; $4e5e: $f8 $03
    nop                                           ; $4e60: $00
    inc bc                                        ; $4e61: $03
    ld sp, hl                                     ; $4e62: $f9
    inc bc                                        ; $4e63: $03
    ld hl, sp+$01                                 ; $4e64: $f8 $01
    db $fc                                        ; $4e66: $fc
    ld [bc], a                                    ; $4e67: $02
    cp $10                                        ; $4e68: $fe $10
    db $fc                                        ; $4e6a: $fc
    ld bc, $33fe                                  ; $4e6b: $01 $fe $33
    ld [bc], a                                    ; $4e6e: $02
    inc a                                         ; $4e6f: $3c
    dec e                                         ; $4e70: $1d
    sub b                                         ; $4e71: $90
    adc [hl]                                      ; $4e72: $8e
    nop                                           ; $4e73: $00
    ld l, h                                       ; $4e74: $6c
    xor e                                         ; $4e75: $ab
    sub e                                         ; $4e76: $93
    ld h, d                                       ; $4e77: $62
    rst $08                                       ; $4e78: $cf
    and e                                         ; $4e79: $a3
    inc de                                        ; $4e7a: $13
    inc sp                                        ; $4e7b: $33
    ld [$1cd6], sp                                ; $4e7c: $08 $d6 $1c
    inc bc                                        ; $4e7f: $03
    ld a, a                                       ; $4e80: $7f
    push bc                                       ; $4e81: $c5
    nop                                           ; $4e82: $00
    rla                                           ; $4e83: $17
    sbc b                                         ; $4e84: $98
    rlca                                          ; $4e85: $07
    nop                                           ; $4e86: $00
    ldh [$67], a                                  ; $4e87: $e0 $67
    cp b                                          ; $4e89: $b8
    db $10                                        ; $4e8a: $10
    ld bc, $03e9                                  ; $4e8b: $01 $e9 $03
    ld [hl-], a                                   ; $4e8e: $32
    nop                                           ; $4e8f: $00
    ld b, $c5                                     ; $4e90: $06 $c5
    add c                                         ; $4e92: $81
    cp [hl]                                       ; $4e93: $be
    ld b, $78                                     ; $4e94: $06 $78
    ldh a, [rP1]                                  ; $4e96: $f0 $00
    nop                                           ; $4e98: $00
    adc c                                         ; $4e99: $89
    rlca                                          ; $4e9a: $07
    jr jr_0ad_4ee1                                ; $4e9b: $18 $44

    or e                                          ; $4e9d: $b3
    dec bc                                        ; $4e9e: $0b
    jr nz, jr_0ad_4f04                            ; $4e9f: $20 $63

    nop                                           ; $4ea1: $00
    ld l, l                                       ; $4ea2: $6d
    ld b, b                                       ; $4ea3: $40
    add b                                         ; $4ea4: $80
    ld hl, sp-$02                                 ; $4ea5: $f8 $fe
    add c                                         ; $4ea7: $81
    ld bc, $0000                                  ; $4ea8: $01 $00 $00
    ld [hl], d                                    ; $4eab: $72
    ld h, [hl]                                    ; $4eac: $66
    add hl, de                                    ; $4ead: $19
    ld [hl+], a                                   ; $4eae: $22
    add h                                         ; $4eaf: $84
    sbc c                                         ; $4eb0: $99
    ld [bc], a                                    ; $4eb1: $02
    adc [hl]                                      ; $4eb2: $8e
    nop                                           ; $4eb3: $00
    inc hl                                        ; $4eb4: $23
    add l                                         ; $4eb5: $85
    rlca                                          ; $4eb6: $07
    ld h, c                                       ; $4eb7: $61
    ld c, $c2                                     ; $4eb8: $0e $c2
    inc c                                         ; $4eba: $0c
    inc [hl]                                      ; $4ebb: $34
    nop                                           ; $4ebc: $00
    add hl, sp                                    ; $4ebd: $39
    ld c, c                                       ; $4ebe: $49
    inc de                                        ; $4ebf: $13
    sub b                                         ; $4ec0: $90
    rlca                                          ; $4ec1: $07
    pop bc                                        ; $4ec2: $c1

Call_0ad_4ec3:
    adc a                                         ; $4ec3: $8f
    jp hl                                         ; $4ec4: $e9


    inc b                                         ; $4ec5: $04
    ld b, [hl]                                    ; $4ec6: $46
    ld [hl-], a                                   ; $4ec7: $32
    jr nz, jr_0ad_4f09                            ; $4ec8: $20 $3f

    ld b, b                                       ; $4eca: $40
    ld [bc], a                                    ; $4ecb: $02
    nop                                           ; $4ecc: $00
    ret nz                                        ; $4ecd: $c0

    cp a                                          ; $4ece: $bf
    inc l                                         ; $4ecf: $2c
    ret nz                                        ; $4ed0: $c0

    cp a                                          ; $4ed1: $bf
    ld h, e                                       ; $4ed2: $63
    ld bc, $6b80                                  ; $4ed3: $01 $80 $6b
    ld de, $59d3                                  ; $4ed6: $11 $d3 $59
    ld bc, $00e0                                  ; $4ed9: $01 $e0 $00
    ld l, b                                       ; $4edc: $68
    ld h, b                                       ; $4edd: $60
    cpl                                           ; $4ede: $2f
    ld h, e                                       ; $4edf: $63
    ld [hl], b                                    ; $4ee0: $70

jr_0ad_4ee1:
    ld [hl], b                                    ; $4ee1: $70
    ld [hl], b                                    ; $4ee2: $70
    ld a, b                                       ; $4ee3: $78
    nop                                           ; $4ee4: $00
    rra                                           ; $4ee5: $1f
    ld a, $07                                     ; $4ee6: $3e $07
    add hl, sp                                    ; $4ee8: $39
    rlca                                          ; $4ee9: $07
    inc c                                         ; $4eea: $0c
    jp z, Jump_000_0405                           ; $4eeb: $ca $05 $04

    add hl, de                                    ; $4eee: $19
    xor h                                         ; $4eef: $ac
    dec d                                         ; $4ef0: $15
    dec bc                                        ; $4ef1: $0b
    add hl, sp                                    ; $4ef2: $39

jr_0ad_4ef3:
    xor b                                         ; $4ef3: $a8
    ld [bc], a                                    ; $4ef4: $02
    ld [hl], b                                    ; $4ef5: $70
    ldh a, [rP1]                                  ; $4ef6: $f0 $00
    rst $28                                       ; $4ef8: $ef
    rra                                           ; $4ef9: $1f
    ld hl, sp+$50                                 ; $4efa: $f8 $50
    set 0, b                                      ; $4efc: $cb $c0
    add b                                         ; $4efe: $80
    xor h                                         ; $4eff: $ac
    nop                                           ; $4f00: $00
    sub b                                         ; $4f01: $90
    sbc c                                         ; $4f02: $99
    and c                                         ; $4f03: $a1

jr_0ad_4f04:
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    db $dd                                        ; $4f06: $dd
    ld a, $63                                     ; $4f07: $3e $63

jr_0ad_4f09:
    nop                                           ; $4f09: $00
    and d                                         ; $4f0a: $a2
    ld h, e                                       ; $4f0b: $63
    and d                                         ; $4f0c: $a2
    add [hl]                                      ; $4f0d: $86
    add l                                         ; $4f0e: $85
    ld h, e                                       ; $4f0f: $63
    ld [hl], b                                    ; $4f10: $70
    sbc c                                         ; $4f11: $99
    nop                                           ; $4f12: $00
    and c                                         ; $4f13: $a1
    adc b                                         ; $4f14: $88
    ld h, c                                       ; $4f15: $61
    nop                                           ; $4f16: $00
    nop                                           ; $4f17: $00
    ld sp, hl                                     ; $4f18: $f9
    rlca                                          ; $4f19: $07
    inc a                                         ; $4f1a: $3c
    nop                                           ; $4f1b: $00
    dec sp                                        ; $4f1c: $3b
    inc a                                         ; $4f1d: $3c
    dec sp                                        ; $4f1e: $3b
    jr jr_0ad_4f41                                ; $4f1f: $18 $20

    add c                                         ; $4f21: $81
    ld hl, $00c6                                  ; $4f22: $21 $c6 $00
    rla                                           ; $4f25: $17
    ld c, [hl]                                    ; $4f26: $4e
    adc h                                         ; $4f27: $8c
    ld b, $08                                     ; $4f28: $06 $08
    ld l, [hl]                                    ; $4f2a: $6e
    ldh a, [$3c]                                  ; $4f2b: $f0 $3c
    ret nz                                        ; $4f2d: $c0

    ld [bc], a                                    ; $4f2e: $02
    nop                                           ; $4f2f: $00
    or b                                          ; $4f30: $b0
    ld l, d                                       ; $4f31: $6a
    db $10                                        ; $4f32: $10
    inc bc                                        ; $4f33: $03
    and d                                         ; $4f34: $a2
    ld [bc], a                                    ; $4f35: $02
    ld b, b                                       ; $4f36: $40
    nop                                           ; $4f37: $00
    ld bc, $06e0                                  ; $4f38: $01 $e0 $06
    nop                                           ; $4f3b: $00
    nop                                           ; $4f3c: $00
    rra                                           ; $4f3d: $1f
    ld e, $23                                     ; $4f3e: $1e $23
    nop                                           ; $4f40: $00

jr_0ad_4f41:
    ld a, [bc]                                    ; $4f41: $0a
    ld [hl-], a                                   ; $4f42: $32
    ld hl, $520f                                  ; $4f43: $21 $0f $52
    inc e                                         ; $4f46: $1c
    jr nc, @+$42                                  ; $4f47: $30 $40

    nop                                           ; $4f49: $00
    ld hl, $3c38                                  ; $4f4a: $21 $38 $3c
    inc a                                         ; $4f4d: $3c
    ld h, d                                       ; $4f4e: $62
    ld a, h                                       ; $4f4f: $7c
    ld bc, $00fe                                  ; $4f50: $01 $fe $00
    rst $20                                       ; $4f53: $e7
    add b                                         ; $4f54: $80
    ld e, e                                       ; $4f55: $5b
    jr jr_0ad_4f88                                ; $4f56: $18 $30

    or h                                          ; $4f58: $b4
    and e                                         ; $4f59: $a3
    adc b                                         ; $4f5a: $88
    nop                                           ; $4f5b: $00
    rlca                                          ; $4f5c: $07
    nop                                           ; $4f5d: $00
    nop                                           ; $4f5e: $00
    rst $38                                       ; $4f5f: $ff
    ld [bc], a                                    ; $4f60: $02
    db $fc                                        ; $4f61: $fc
    ld hl, sp-$06                                 ; $4f62: $f8 $fa
    nop                                           ; $4f64: $00
    ld hl, sp+$7b                                 ; $4f65: $f8 $7b
    ldh [rNR52], a                                ; $4f67: $e0 $26
    ldh [$ed], a                                  ; $4f69: $e0 $ed
    add hl, de                                    ; $4f6b: $19
    ld [hl], b                                    ; $4f6c: $70
    dec l                                         ; $4f6d: $2d
    rra                                           ; $4f6e: $1f
    or a                                          ; $4f6f: $b7
    ld d, b                                       ; $4f70: $50
    jr c, jr_0ad_4ef3                             ; $4f71: $38 $80

    ld [bc], a                                    ; $4f73: $02
    db $10                                        ; $4f74: $10
    ld h, b                                       ; $4f75: $60
    ld e, b                                       ; $4f76: $58
    ld h, b                                       ; $4f77: $60
    ld l, a                                       ; $4f78: $6f
    ld d, b                                       ; $4f79: $50
    nop                                           ; $4f7a: $00
    ld bc, $0300                                  ; $4f7b: $01 $00 $03
    inc bc                                        ; $4f7e: $03
    nop                                           ; $4f7f: $00
    nop                                           ; $4f80: $00
    inc bc                                        ; $4f81: $03
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    ld b, $07                                     ; $4f84: $06 $07
    inc e                                         ; $4f86: $1c
    rlca                                          ; $4f87: $07

jr_0ad_4f88:
    jr c, jr_0ad_4f98                             ; $4f88: $38 $0e

    ld h, c                                       ; $4f8a: $61
    ld a, c                                       ; $4f8b: $79
    nop                                           ; $4f8c: $00
    rst $00                                       ; $4f8d: $c7
    ld [hl], a                                    ; $4f8e: $77
    rst $08                                       ; $4f8f: $cf
    inc bc                                        ; $4f90: $03
    jp nz, $e000                                  ; $4f91: $c2 $00 $e0

    ld l, [hl]                                    ; $4f94: $6e
    nop                                           ; $4f95: $00
    ret nz                                        ; $4f96: $c0

    rst $18                                       ; $4f97: $df

jr_0ad_4f98:
    ccf                                           ; $4f98: $3f
    ld bc, $03fe                                  ; $4f99: $01 $fe $03
    pop de                                        ; $4f9c: $d1
    ld bc, $0800                                  ; $4f9d: $01 $00 $08
    ld [bc], a                                    ; $4fa0: $02
    ld [$8f0a], sp                                ; $4fa1: $08 $0a $8f
    ret nz                                        ; $4fa4: $c0

    rlca                                          ; $4fa5: $07

jr_0ad_4fa6:
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    add e                                         ; $4fa8: $83
    inc bc                                        ; $4fa9: $03
    ld a, b                                       ; $4faa: $78
    ld b, e                                       ; $4fab: $43
    ld h, c                                       ; $4fac: $61
    dec e                                         ; $4fad: $1d
    ld b, h                                       ; $4fae: $44
    inc h                                         ; $4faf: $24
    nop                                           ; $4fb0: $00
    rst $00                                       ; $4fb1: $c7
    rrca                                          ; $4fb2: $0f
    add b                                         ; $4fb3: $80
    ld bc, $16d0                                  ; $4fb4: $01 $d0 $16
    db $f4                                        ; $4fb7: $f4
    inc [hl]                                      ; $4fb8: $34
    nop                                           ; $4fb9: $00
    jr jr_0ad_4fbd                                ; $4fba: $18 $01

    ld e, h                                       ; $4fbc: $5c

jr_0ad_4fbd:
    ret nz                                        ; $4fbd: $c0

    adc a                                         ; $4fbe: $8f
    ldh [rTAC], a                                 ; $4fbf: $e0 $07
    jr nc, jr_0ad_4fc3                            ; $4fc1: $30 $00

jr_0ad_4fc3:
    ld a, [bc]                                    ; $4fc3: $0a
    jr jr_0ad_4fa6                                ; $4fc4: $18 $e0

    ldh [$7c], a                                  ; $4fc6: $e0 $7c
    ld a, h                                       ; $4fc8: $7c
    dec sp                                        ; $4fc9: $3b
    ld a, b                                       ; $4fca: $78
    nop                                           ; $4fcb: $00
    ldh [$a3], a                                  ; $4fcc: $e0 $a3
    ld hl, sp+$6b                                 ; $4fce: $f8 $6b
    ld [hl], b                                    ; $4fd0: $70
    dec b                                         ; $4fd1: $05
    inc bc                                        ; $4fd2: $03
    rlca                                          ; $4fd3: $07
    nop                                           ; $4fd4: $00
    jr nz, @+$03                                  ; $4fd5: $20 $01

    call nc, Call_0ad_4045                        ; $4fd7: $d4 $45 $40
    ldh [$c0], a                                  ; $4fda: $e0 $c0
    ld h, b                                       ; $4fdc: $60
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    ccf                                           ; $4fdf: $3f
    ldh [$5f], a                                  ; $4fe0: $e0 $5f

jr_0ad_4fe2:
    ret nz                                        ; $4fe2: $c0

    rst $18                                       ; $4fe3: $df
    ld h, b                                       ; $4fe4: $60
    ld c, a                                       ; $4fe5: $4f

jr_0ad_4fe6:
    nop                                           ; $4fe6: $00
    ld h, b                                       ; $4fe7: $60
    ret nc                                        ; $4fe8: $d0

    and b                                         ; $4fe9: $a0
    ld d, b                                       ; $4fea: $50
    ld b, $01                                     ; $4feb: $06 $01
    jr jr_0ad_500d                                ; $4fed: $18 $1e

    nop                                           ; $4fef: $00
    ld a, [hl-]                                   ; $4ff0: $3a
    inc [hl]                                      ; $4ff1: $34
    jr jr_0ad_5064                                ; $4ff2: $18 $70

    ld d, $f6                                     ; $4ff4: $16 $f6
    ld l, $c0                                     ; $4ff6: $2e $c0
    nop                                           ; $4ff8: $00
    cpl                                           ; $4ff9: $2f
    pop bc                                        ; $4ffa: $c1
    ld l, $ce                                     ; $4ffb: $2e $ce
    ld [bc], a                                    ; $4ffd: $02
    ld [de], a                                    ; $4ffe: $12
    nop                                           ; $4fff: $00
    ret c                                         ; $5000: $d8

    nop                                           ; $5001: $00
    add hl, bc                                    ; $5002: $09
    ret c                                         ; $5003: $d8

    ld de, $13f0                                  ; $5004: $11 $f0 $13
    cp b                                          ; $5007: $b8
    rlca                                          ; $5008: $07
    sbc h                                         ; $5009: $9c
    nop                                           ; $500a: $00
    ld a, a                                       ; $500b: $7f
    reti                                          ; $500c: $d9


jr_0ad_500d:
    cp [hl]                                       ; $500d: $be
    add c                                         ; $500e: $81
    ld [$5506], sp                                ; $500f: $08 $06 $55
    ld b, h                                       ; $5012: $44
    nop                                           ; $5013: $00
    sub l                                         ; $5014: $95
    call nz, $5011                                ; $5015: $c4 $11 $50
    ld de, $0150                                  ; $5018: $11 $50 $01
    ret nz                                        ; $501b: $c0

    nop                                           ; $501c: $00
    add hl, bc                                    ; $501d: $09
    sbc b                                         ; $501e: $98
    dec hl                                        ; $501f: $2b
    jr c, jr_0ad_4fe2                             ; $5020: $38 $c0

    ld b, b                                       ; $5022: $40
    ret nz                                        ; $5023: $c0

    ld e, a                                       ; $5024: $5f
    nop                                           ; $5025: $00
    sbc a                                         ; $5026: $9f
    rra                                           ; $5027: $1f
    jr jr_0ad_4fe6                                ; $5028: $18 $bc

    ld b, $14                                     ; $502a: $06 $14
    rrca                                          ; $502c: $0f
    inc a                                         ; $502d: $3c
    nop                                           ; $502e: $00
    db $10                                        ; $502f: $10
    cpl                                           ; $5030: $2f
    rra                                           ; $5031: $1f
    inc l                                         ; $5032: $2c
    ret z                                         ; $5033: $c8

    or c                                          ; $5034: $b1
    inc h                                         ; $5035: $24
    add hl, hl                                    ; $5036: $29
    nop                                           ; $5037: $00
    add c                                         ; $5038: $81
    dec d                                         ; $5039: $15
    ld h, c                                       ; $503a: $61
    sbc l                                         ; $503b: $9d
    add c                                         ; $503c: $81
    ldh [rNR11], a                                ; $503d: $e0 $11
    ld [hl], b                                    ; $503f: $70
    nop                                           ; $5040: $00
    add c                                         ; $5041: $81
    ret nz                                        ; $5042: $c0

    ld bc, $7ad0                                  ; $5043: $01 $d0 $7a
    inc bc                                        ; $5046: $03
    ld a, a                                       ; $5047: $7f
    ld bc, $7f00                                  ; $5048: $01 $00 $7f
    ld bc, $801f                                  ; $504b: $01 $1f $80
    sub b                                         ; $504e: $90
    rra                                           ; $504f: $1f
    add b                                         ; $5050: $80
    xor a                                         ; $5051: $af
    nop                                           ; $5052: $00
    ld a, a                                       ; $5053: $7f
    db $10                                        ; $5054: $10
    ld [hl], a                                    ; $5055: $77
    jr jr_0ad_5078                                ; $5056: $18 $20

    rrca                                          ; $5058: $0f
    add b                                         ; $5059: $80
    adc a                                         ; $505a: $8f
    nop                                           ; $505b: $00
    inc e                                         ; $505c: $1c
    dec bc                                        ; $505d: $0b
    ld e, $07                                     ; $505e: $1e $07
    db $ec                                        ; $5060: $ec
    dec bc                                        ; $5061: $0b
    or $01                                        ; $5062: $f6 $01

jr_0ad_5064:
    nop                                           ; $5064: $00
    di                                            ; $5065: $f3
    dec b                                         ; $5066: $05
    di                                            ; $5067: $f3
    inc b                                         ; $5068: $04
    cpl                                           ; $5069: $2f
    ld c, a                                       ; $506a: $4f
    ld h, a                                       ; $506b: $67
    ld d, a                                       ; $506c: $57
    nop                                           ; $506d: $00
    ld h, a                                       ; $506e: $67
    ld d, a                                       ; $506f: $57
    ldh a, [$c7]                                  ; $5070: $f0 $c7
    ldh a, [$cb]                                  ; $5072: $f0 $cb
    inc sp                                        ; $5074: $33
    dec bc                                        ; $5075: $0b
    nop                                           ; $5076: $00
    inc de                                        ; $5077: $13

jr_0ad_5078:
    dec bc                                        ; $5078: $0b
    dec bc                                        ; $5079: $0b
    inc de                                        ; $507a: $13
    cp $01                                        ; $507b: $fe $01
    rst $38                                       ; $507d: $ff
    ld bc, $0000                                  ; $507e: $01 $00 $00
    db $fc                                        ; $5081: $fc
    db $fc                                        ; $5082: $fc
    db $fc                                        ; $5083: $fc
    ld sp, hl                                     ; $5084: $f9
    ld a, [$fa03]                                 ; $5085: $fa $03 $fa
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    ld hl, sp-$08                                 ; $508a: $f8 $f8
    inc b                                         ; $508c: $04
    ld d, b                                       ; $508d: $50
    ld [hl], b                                    ; $508e: $70
    pop hl                                        ; $508f: $e1
    ld sp, $8100                                  ; $5090: $31 $00 $81
    add d                                         ; $5093: $82
    ld l, e                                       ; $5094: $6b
    or b                                          ; $5095: $b0
    call c, $d234                                 ; $5096: $dc $34 $d2
    db $e4                                        ; $5099: $e4
    nop                                           ; $509a: $00
    jp nc, $0101                                  ; $509b: $d2 $01 $01

    nop                                           ; $509e: $00
    rra                                           ; $509f: $1f
    cpl                                           ; $50a0: $2f
    rra                                           ; $50a1: $1f
    cpl                                           ; $50a2: $2f
    nop                                           ; $50a3: $00
    sbc a                                         ; $50a4: $9f
    cp a                                          ; $50a5: $bf
    ld e, $bc                                     ; $50a6: $1e $bc
    ld sp, $192e                                  ; $50a8: $31 $2e $19
    ld d, $00                                     ; $50ab: $16 $00
    ld e, $99                                     ; $50ad: $1e $99
    ld b, c                                       ; $50af: $41
    add c                                         ; $50b0: $81
    ldh [rSCX], a                                 ; $50b1: $e0 $43
    add b                                         ; $50b3: $80
    ld [bc], a                                    ; $50b4: $02
    nop                                           ; $50b5: $00
    ld [c], a                                     ; $50b6: $e2
    ld [bc], a                                    ; $50b7: $02
    ldh [$0d], a                                  ; $50b8: $e0 $0d
    ld c, h                                       ; $50ba: $4c
    ld b, l                                       ; $50bb: $45
    add b                                         ; $50bc: $80
    adc l                                         ; $50bd: $8d
    nop                                           ; $50be: $00
    add b                                         ; $50bf: $80
    and c                                         ; $50c0: $a1
    ld [bc], a                                    ; $50c1: $02
    ld b, h                                       ; $50c2: $44
    ld [hl], c                                    ; $50c3: $71
    ld [bc], a                                    ; $50c4: $02
    pop bc                                        ; $50c5: $c1
    and h                                         ; $50c6: $a4
    nop                                           ; $50c7: $00
    pop bc                                        ; $50c8: $c1
    sub d                                         ; $50c9: $92
    rst $00                                       ; $50ca: $c7
    and b                                         ; $50cb: $a0
    ld [hl], e                                    ; $50cc: $73
    nop                                           ; $50cd: $00
    ld l, b                                       ; $50ce: $68
    inc c                                         ; $50cf: $0c

Call_0ad_50d0:
    nop                                           ; $50d0: $00
    ld h, b                                       ; $50d1: $60
    inc b                                         ; $50d2: $04
    db $e4                                        ; $50d3: $e4
    rrca                                          ; $50d4: $0f
    ld a, [c]                                     ; $50d5: $f2
    db $f4                                        ; $50d6: $f4
    ld [$00e4], a                                 ; $50d7: $ea $e4 $00
    jp hl                                         ; $50da: $e9


    rlca                                          ; $50db: $07
    db $eb                                        ; $50dc: $eb
    rlca                                          ; $50dd: $07
    inc c                                         ; $50de: $0c
    db $10                                        ; $50df: $10
    adc h                                         ; $50e0: $8c
    sub b                                         ; $50e1: $90
    nop                                           ; $50e2: $00
    ld e, b                                       ; $50e3: $58
    ret nz                                        ; $50e4: $c0

    ret c                                         ; $50e5: $d8

    ret nz                                        ; $50e6: $c0

    dec c                                         ; $50e7: $0d
    dec d                                         ; $50e8: $15
    ld hl, sp-$1b                                 ; $50e9: $f8 $e5
    nop                                           ; $50eb: $00
    ld hl, sp-$0b                                 ; $50ec: $f8 $f5
    inc c                                         ; $50ee: $0c
    ld b, $0c                                     ; $50ef: $06 $0c
    ld b, $04                                     ; $50f1: $06 $04
    ld [bc], a                                    ; $50f3: $02
    nop                                           ; $50f4: $00
    dec b                                         ; $50f5: $05

jr_0ad_50f6:
    inc bc                                        ; $50f6: $03
    ld b, $03                                     ; $50f7: $06 $03
    db $fc                                        ; $50f9: $fc

jr_0ad_50fa:
    nop                                           ; $50fa: $00
    cp $7e                                        ; $50fb: $fe $7e
    nop                                           ; $50fd: $00
    nop                                           ; $50fe: $00
    rra                                           ; $50ff: $1f
    ret nz                                        ; $5100: $c0

    rst $08                                       ; $5101: $cf
    ldh a, [rNR14]                                ; $5102: $f0 $14
    ld [hl], c                                    ; $5104: $71
    add hl, bc                                    ; $5105: $09
    nop                                           ; $5106: $00

jr_0ad_5107:
    dec de                                        ; $5107: $1b
    inc hl                                        ; $5108: $23
    inc e                                         ; $5109: $1c
    ld d, l                                       ; $510a: $55
    nop                                           ; $510b: $00
    ld bc, $3002                                  ; $510c: $01 $02 $30
    nop                                           ; $510f: $00
    add c                                         ; $5110: $81

jr_0ad_5111:
    cp b                                          ; $5111: $b8
    add h                                         ; $5112: $84
    sbc d                                         ; $5113: $9a
    ld [bc], a                                    ; $5114: $02
    ld c, $c6                                     ; $5115: $0e $c6
    push bc                                       ; $5117: $c5
    nop                                           ; $5118: $00
    ld a, [c]                                     ; $5119: $f2
    inc de                                        ; $511a: $13
    ldh [rHDMA1], a                               ; $511b: $e0 $51
    ld b, b                                       ; $511d: $40
    sbc b                                         ; $511e: $98
    ld e, h                                       ; $511f: $5c
    sbc [hl]                                      ; $5120: $9e
    nop                                           ; $5121: $00
    sub d                                         ; $5122: $92

jr_0ad_5123:
    ld e, [hl]                                    ; $5123: $5e
    ld [de], a                                    ; $5124: $12
    sbc $ce                                       ; $5125: $de $ce
    ld e, $0c                                     ; $5127: $1e $0c
    ld l, $00                                     ; $5129: $2e $00
    ld h, b                                       ; $512b: $60
    inc b                                         ; $512c: $04
    or c                                          ; $512d: $b1
    ret nz                                        ; $512e: $c0

    ld b, $00                                     ; $512f: $06 $00
    ld d, b                                       ; $5131: $50
    ld h, d                                       ; $5132: $62
    nop                                           ; $5133: $00
    ld bc, $0b18                                  ; $5134: $01 $18 $0b
    jr jr_0ad_5151                                ; $5137: $18 $18

    ld b, b                                       ; $5139: $40
    add b                                         ; $513a: $80
    ret nz                                        ; $513b: $c0

    nop                                           ; $513c: $00
    jr jr_0ad_5107                                ; $513d: $18 $c8

    jr c, jr_0ad_5111                             ; $513f: $38 $d0

    jp z, $c31e                                   ; $5141: $ca $1e $c3

jr_0ad_5144:
    rlca                                          ; $5144: $07
    nop                                           ; $5145: $00
    jp z, $c61e                                   ; $5146: $ca $1e $c6

    ld b, $6c                                     ; $5149: $06 $6c
    inc c                                         ; $514b: $0c
    inc sp                                        ; $514c: $33
    add b                                         ; $514d: $80
    nop                                           ; $514e: $00
    ret nz                                        ; $514f: $c0

    sbc [hl]                                      ; $5150: $9e

jr_0ad_5151:
    ld b, b                                       ; $5151: $40
    ld l, [hl]                                    ; $5152: $6e
    and b                                         ; $5153: $a0
    jr c, jr_0ad_50f6                             ; $5154: $38 $a0

    jr c, jr_0ad_5158                             ; $5156: $38 $00

jr_0ad_5158:
    jr nc, jr_0ad_50fa                            ; $5158: $30 $a0

    ld [hl], b                                    ; $515a: $70
    ld h, b                                       ; $515b: $60
    ld h, b                                       ; $515c: $60
    ld e, a                                       ; $515d: $5f
    ld h, b                                       ; $515e: $60
    ld e, a                                       ; $515f: $5f
    nop                                           ; $5160: $00
    jr nz, jr_0ad_5123                            ; $5161: $20 $c0

    ld h, b                                       ; $5163: $60
    ret nz                                        ; $5164: $c0

    ld [bc], a                                    ; $5165: $02
    ld bc, $0102                                  ; $5166: $01 $02 $01
    jr jr_0ad_516e                                ; $5169: $18 $03

    ld bc, $ba00                                  ; $516b: $01 $00 $ba

jr_0ad_516e:
    nop                                           ; $516e: $00
    ld [bc], a                                    ; $516f: $02
    ld [$0000], sp                                ; $5170: $08 $00 $00
    inc c                                         ; $5173: $0c
    nop                                           ; $5174: $00
    ld h, c                                       ; $5175: $61
    add h                                         ; $5176: $84
    or e                                          ; $5177: $b3
    add b                                         ; $5178: $80
    or b                                          ; $5179: $b0
    or d                                          ; $517a: $b2
    ld sp, $00b2                                  ; $517b: $31 $b2 $00
    ld sp, $11c1                                  ; $517e: $31 $c1 $11
    ret nz                                        ; $5181: $c0

    jr jr_0ad_5144                                ; $5182: $18 $c0

    sbc b                                         ; $5184: $98
    ldh a, [rP1]                                  ; $5185: $f0 $00
    ld c, c                                       ; $5187: $49
    dec e                                         ; $5188: $1d
    push hl                                       ; $5189: $e5
    add [hl]                                      ; $518a: $86
    ld a, d                                       ; $518b: $7a
    add $ba                                       ; $518c: $c6 $ba
    ld b, $00                                     ; $518e: $06 $00
    cp b                                          ; $5190: $b8
    inc a                                         ; $5191: $3c
    ld a, e                                       ; $5192: $7b
    inc a                                         ; $5193: $3c
    ld e, e                                       ; $5194: $5b
    ld h, a                                       ; $5195: $67
    add hl, de                                    ; $5196: $19
    push hl                                       ; $5197: $e5
    nop                                           ; $5198: $00
    sbc l                                         ; $5199: $9d
    push af                                       ; $519a: $f5
    db $dd                                        ; $519b: $dd
    inc [hl]                                      ; $519c: $34
    add hl, de                                    ; $519d: $19
    inc e                                         ; $519e: $1c
    add hl, sp                                    ; $519f: $39
    ld [hl], a                                    ; $51a0: $77
    nop                                           ; $51a1: $00
    ld l, e                                       ; $51a2: $6b
    scf                                           ; $51a3: $37
    add hl, hl                                    ; $51a4: $29
    ld sp, $112f                                  ; $51a5: $31 $2f $11
    rrca                                          ; $51a8: $0f
    ld b, d                                       ; $51a9: $42
    nop                                           ; $51aa: $00
    ld [hl], d                                    ; $51ab: $72
    rst $10                                       ; $51ac: $d7
    and c                                         ; $51ad: $a1
    adc d                                         ; $51ae: $8a
    ld l, [hl]                                    ; $51af: $6e
    jp nz, $c20e                                  ; $51b0: $c2 $0e $c2

    nop                                           ; $51b3: $00
    ld e, h                                       ; $51b4: $5c
    jp nz, $e65e                                  ; $51b5: $c2 $5e $e6

    ld a, b                                       ; $51b8: $78
    jp nz, Jump_000_3040                          ; $51b9: $c2 $40 $30

    nop                                           ; $51bc: $00
    ld h, $30                                     ; $51bd: $26 $30
    ld hl, $152d                                  ; $51bf: $21 $2d $15
    ld bc, $210d                                  ; $51c2: $01 $0d $21
    nop                                           ; $51c5: $00
    nop                                           ; $51c6: $00
    ld b, e                                       ; $51c7: $43
    ld [hl], b                                    ; $51c8: $70
    inc bc                                        ; $51c9: $03
    ld [hl], d                                    ; $51ca: $72
    inc bc                                        ; $51cb: $03
    ld bc, $05c0                                  ; $51cc: $01 $c0 $05
    add b                                         ; $51cf: $80
    ld b, b                                       ; $51d0: $40
    add b                                         ; $51d1: $80
    ld b, b                                       ; $51d2: $40
    ret nz                                        ; $51d3: $c0

    jr c, @+$04                                   ; $51d4: $38 $02

    add b                                         ; $51d6: $80
    ld a, $7a                                     ; $51d7: $3e $7a
    add b                                         ; $51d9: $80
    xor h                                         ; $51da: $ac
    ld a, [bc]                                    ; $51db: $0a
    ldh [$c8], a                                  ; $51dc: $e0 $c8
    ldh [$0c], a                                  ; $51de: $e0 $0c
    ld h, b                                       ; $51e0: $60
    ld c, h                                       ; $51e1: $4c
    ldh a, [rP1]                                  ; $51e2: $f0 $00
    add h                                         ; $51e4: $84
    ldh a, [$80]                                  ; $51e5: $f0 $80
    ld hl, $381e                                  ; $51e7: $21 $1e $38
    daa                                           ; $51ea: $27
    rrca                                          ; $51eb: $0f
    nop                                           ; $51ec: $00
    inc sp                                        ; $51ed: $33
    ld a, [hl]                                    ; $51ee: $7e
    ld b, b                                       ; $51ef: $40
    ld a, $be                                     ; $51f0: $3e $be
    sbc [hl]                                      ; $51f2: $9e
    ld e, [hl]                                    ; $51f3: $5e
    add $00                                       ; $51f4: $c6 $00
    ld e, $00                                     ; $51f6: $1e $00
    nop                                           ; $51f8: $00
    db $e3                                        ; $51f9: $e3
    inc hl                                        ; $51fa: $23
    ld sp, $0fc1                                  ; $51fb: $31 $c1 $0f
    nop                                           ; $51fe: $00
    pop af                                        ; $51ff: $f1
    ld b, b                                       ; $5200: $40
    ld c, $e0                                     ; $5201: $0e $e0
    add b                                         ; $5203: $80
    rra                                           ; $5204: $1f
    ld [hl], e                                    ; $5205: $73
    rra                                           ; $5206: $1f
    nop                                           ; $5207: $00
    inc e                                         ; $5208: $1c
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    pop hl                                        ; $520b: $e1
    ld a, a                                       ; $520c: $7f
    ldh a, [$cf]                                  ; $520d: $f0 $cf
    inc e                                         ; $520f: $1c
    nop                                           ; $5210: $00
    inc de                                        ; $5211: $13
    jr z, jr_0ad_5220                             ; $5212: $28 $0c

    inc l                                         ; $5214: $2c
    inc c                                         ; $5215: $0c
    dec bc                                        ; $5216: $0b
    add sp, $67                                   ; $5217: $e8 $67
    nop                                           ; $5219: $00
    db $e4                                        ; $521a: $e4
    nop                                           ; $521b: $00
    nop                                           ; $521c: $00
    ld a, [hl]                                    ; $521d: $7e
    db $d3                                        ; $521e: $d3
    add e                                         ; $521f: $83

jr_0ad_5220:
    ld b, h                                       ; $5220: $44
    rst $00                                       ; $5221: $c7
    nop                                           ; $5222: $00
    jp hl                                         ; $5223: $e9


    inc bc                                        ; $5224: $03
    dec b                                         ; $5225: $05
    rlca                                          ; $5226: $07
    inc bc                                        ; $5227: $03
    ld b, $92                                     ; $5228: $06 $92
    ld c, $00                                     ; $522a: $0e $00
    add [hl]                                      ; $522c: $86
    inc bc                                        ; $522d: $03
    dec c                                         ; $522e: $0d
    rst $20                                       ; $522f: $e7
    dec de                                        ; $5230: $1b
    inc c                                         ; $5231: $0c
    ldh a, [rNR32]                                ; $5232: $f0 $1c
    ret nz                                        ; $5234: $c0

    jr jr_0ad_5237                                ; $5235: $18 $00

jr_0ad_5237:
    ld [bc], a                                    ; $5237: $02
    ld e, e                                       ; $5238: $5b

    db $10, $03, $9a, $02, $18, $00, $00, $fe, $02, $00, $01, $38, $2f, $4f, $2f, $00
    db $cf, $c3, $03, $38, $20, $00, $f8, $01, $04, $02, $01, $03, $00, $fc, $1b, $18
    db $fe, $00, $00, $3c, $00, $1a, $98, $46, $60, $04, $c4, $00, $e5, $e5, $d4, $c2
    db $30, $34, $40, $00, $00, $38, $db, $dc, $1c, $1f, $00, $8f, $c0, $00, $ff, $00
    db $0f, $00, $30, $50, $70, $10, $00, $80, $8f, $c0, $9f, $40, $20, $88, $b0, $80
    db $4b, $08, $ff, $00, $f8, $00, $01, $06, $07, $05, $01, $00, $38, $02, $fd, $5b
    db $28, $7f, $02, $00, $80, $67, $20, $e7, $18, $c8, $2c, $34, $18, $00, $20, $04
    db $e3, $29, $00, $fe, $07, $fc, $80, $80, $00, $1d, $3c, $03, $00, $01, $0d, $d8
    db $c1, $00, $31, $00, $06, $e3, $31, $b0, $01, $40, $00, $84, $9e, $1f, $3b, $75
    db $78, $80, $62, $00, $e0, $31, $86, $e4, $20, $e0, $27, $a3, $00, $48, $26, $5f
    db $36, $b6, $a6, $65, $54, $00, $23, $0f, $90, $38, $0c, $01, $20, $20, $00, $72
    db $78, $46, $70, $00, $78, $e7, $3c, $04, $c5, $bc, $9a, $04, $ff, $5a, $00, $3f
    db $bf, $00, $8f, $4f, $00, $00, $98, $83, $8c, $a0, $20, $47, $10, $80, $18, $cf
    db $00, $30, $17, $20, $20, $87, $cf, $76, $00, $01, $fc, $03, $f0, $0e, $00, $e0
    db $01, $19, $02, $34, $66, $02, $60, $00, $09, $a0, $8f, $0c, $85, $02, $70, $07
    db $00, $63, $0f, $e5, $0e, $de, $1c, $ce, $1d, $00, $c9, $29, $8d, $02, $00, $f0
    db $7b, $d0, $00, $b9, $08, $ba, $cb, $3b, $30, $8a, $b3, $00, $4b, $92, $12, $46
    db $80, $30, $7f, $01, $00, $7e, $00, $7e, $81, $c0, $af, $4f, $e8, $00, $85, $f0
    db $80, $47, $5e, $33, $8b, $83, $00, $06, $07, $0f, $e8, $04, $31, $03, $82, $00
    db $80, $1c, $fc, $e1, $09, $e0, $86, $e3, $00, $9b, $b7, $97, $b0, $97, $50, $33
    db $00, $00, $70, $15, $f9, $80, $3f, $c0, $0f, $70, $00, $07, $98, $83, $0c, $e0
    db $06, $f0, $06, $00, $f0, $05, $71, $a0, $8f, $b0, $87, $d0, $01, $c7, $d0, $c7
    db $d8, $c3, $e8, $e3, $02, $08, $00, $61, $77, $6c, $0f, $94, $9f, $1b, $d6, $00
    db $1b, $b0, $af, $92, $a0, $99, $39, $9b, $00, $5a, $72, $d3, $4a, $0b, $13, $75
    db $39, $00, $61, $d1, $40, $cd, $6e, $e4, $c0, $02, $00, $3f, $de, $3f, $5e, $01
    db $ff, $03, $0e, $00, $1f, $6c, $fe, $f1, $07, $f9, $60, $60, $00, $c9, $57, $c0
    db $5e, $c9, $54, $c1, $54, $00, $15, $94, $15, $0c, $09, $1b, $0b, $58, $00, $68
    db $9d, $20, $11, $b4, $85, $bc, $89, $00, $34, $3c, $35, $3b, $7c, $39, $7c, $78
    db $00, $b0, $01, $c8, $09, $c4, $1c, $d8, $18, $08, $03, $43, $17, $47, $02, $00
    db $c7, $ec, $e1, $00, $04, $f4, $05, $f4, $06, $f0, $02, $f8, $00, $02, $f8, $03
    db $f8, $01, $fc, $39, $9e, $00, $1a, $3f, $84, $26, $20, $20, $44, $0b, $00, $99
    db $8f, $01, $18, $0f, $0e, $98, $95, $00, $20, $39, $01, $1c, $14, $3a, $3e, $32
    db $00, $0e, $b3, $03, $18, $13, $51, $0c, $92, $00, $fe, $f8, $fc, $f0, $f8, $f1
    db $22, $c1, $00, $4e, $4d, $38, $28, $06, $01, $0b, $1a, $00, $42, $a7, $e2, $64
    db $0a, $84, $8f, $cc, $00, $9c, $1e, $78, $3c, $fc, $f9, $48, $05, $00, $78, $33
    db $48, $43, $38, $23, $b8, $93, $00, $88, $cb, $28, $88, $24, $94, $37, $87, $00
    db $2f, $8f, $2f, $8f, $6f, $0f, $40, $1f, $00, $40, $1f, $c0, $1f, $80, $3f, $01
    db $fc, $0a, $01, $fc, $00, $fe, $34, $0a, $fe, $e8, $01, $00, $00, $00, $28, $47
    db $2c, $a3, $2b, $a8, $03, $00, $82, $0a, $8b, $c9, $d2, $50, $4b, $08, $00, $50
    db $82, $d4, $47, $c4, $f6, $77, $f3, $00, $83, $64, $d4, $69, $f4, $36, $28, $06
    db $00, $38, $e0, $3f, $7f, $7f, $1f, $86, $00, $00, $00, $8c, $c2, $d8, $ee, $f5
    db $89, $7d, $00, $30, $f9, $fb, $f3, $19, $72, $97, $76, $00, $32, $81, $f0, $74
    db $3d, $9c, $1c, $81, $00, $43, $04, $b0, $50, $61, $48, $61, $e4, $00, $69, $d0
    db $09, $a8, $3b, $32, $12, $32, $07, $42, $80, $3f, $80, $3f, $2c, $0a, $30, $42
    db $08, $50, $00, $02, $6e, $8d, $a1, $8d, $a5, $31, $83, $00, $10, $c0, $1f, $c0
    db $00, $c0, $00, $00, $00, $0c, $a4, $81, $09, $e3, $02, $9e, $4c, $c0, $76, $0a
    db $c0, $12, $4e, $25, $05, $00, $88, $9b, $60, $9a, $10, $18, $9e, $02, $ce, $1f
    db $4e, $1f, $04, $20, $1f, $c4, $10, $28, $f0, $b6, $f0, $e4, $b0, $00, $84, $a0
    db $8c, $08, $03, $f8, $03, $03, $c0, $34, $20, $69, $48

    db $10                                        ; $5544: $10
    inc bc                                        ; $5545: $03
    sub e                                         ; $5546: $93
    ld [bc], a                                    ; $5547: $02
    ld b, b                                       ; $5548: $40
    nop                                           ; $5549: $00
    ld bc, $fef0                                  ; $554a: $01 $f0 $fe
    nop                                           ; $554d: $00
    ld hl, sp+$01                                 ; $554e: $f8 $01
    inc b                                         ; $5550: $04
    rlca                                          ; $5551: $07
    nop                                           ; $5552: $00
    ld [$0707], sp                                ; $5553: $08 $07 $07
    dec de                                        ; $5556: $1b
    inc c                                         ; $5557: $0c
    ld [bc], a                                    ; $5558: $02
    rra                                           ; $5559: $1f
    ld b, l                                       ; $555a: $45
    nop                                           ; $555b: $00
    inc a                                         ; $555c: $3c
    rst $38                                       ; $555d: $ff
    ld b, $05                                     ; $555e: $06 $05
    ld bc, $f8f9                                  ; $5560: $01 $f9 $f8
    inc b                                         ; $5563: $04
    nop                                           ; $5564: $00
    ld a, [de]                                    ; $5565: $1a
    ld c, $0f                                     ; $5566: $0e $0f
    rst $30                                       ; $5568: $f7
    ld [hl-], a                                   ; $5569: $32
    jr c, @-$30                                   ; $556a: $38 $ce

    ld a, b                                       ; $556c: $78
    nop                                           ; $556d: $00
    rst $38                                       ; $556e: $ff
    nop                                           ; $556f: $00
    ldh a, [rP1]                                  ; $5570: $f0 $00
    rlca                                          ; $5572: $07
    rrca                                          ; $5573: $0f
    ld b, $4b                                     ; $5574: $06 $4b
    nop                                           ; $5576: $00
    inc l                                         ; $5577: $2c
    adc [hl]                                      ; $5578: $8e
    adc b                                         ; $5579: $88
    call z, $80c0                                 ; $557a: $cc $c0 $80
    ld h, d                                       ; $557d: $62
    ld hl, $ff00                                  ; $557e: $21 $00 $ff
    nop                                           ; $5581: $00
    ld a, a                                       ; $5582: $7f
    nop                                           ; $5583: $00
    ccf                                           ; $5584: $3f
    add b                                         ; $5585: $80
    ccf                                           ; $5586: $3f
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    rst $38                                       ; $5589: $ff
    nop                                           ; $558a: $00
    ccf                                           ; $558b: $3f
    nop                                           ; $558c: $00
    add b                                         ; $558d: $80
    ccf                                           ; $558e: $3f
    add b                                         ; $558f: $80
    cp a                                          ; $5590: $bf
    add b                                         ; $5591: $80
    ld h, b                                       ; $5592: $60
    ret z                                         ; $5593: $c8

    ld bc, $0300                                  ; $5594: $01 $00 $03
    inc bc                                        ; $5597: $03
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    inc bc                                        ; $559a: $03
    nop                                           ; $559b: $00
    db $fc                                        ; $559c: $fc
    ld b, $fe                                     ; $559d: $06 $fe
    db $fc                                        ; $559f: $fc
    pop hl                                        ; $55a0: $e1
    ld hl, sp-$3e                                 ; $55a1: $f8 $c2
    ld [hl], e                                    ; $55a3: $73
    nop                                           ; $55a4: $00
    ld b, $e4                                     ; $55a5: $06 $e4
    adc l                                         ; $55a7: $8d
    ret                                           ; $55a8: $c9


    dec de                                        ; $55a9: $1b
    rrca                                          ; $55aa: $0f
    ret                                           ; $55ab: $c9


    ld [$0400], sp                                ; $55ac: $08 $00 $04
    ld h, e                                       ; $55af: $63
    jp $cf0c                                      ; $55b0: $c3 $0c $cf


    ld c, $c3                                     ; $55b3: $0e $c3
    add l                                         ; $55b5: $85
    nop                                           ; $55b6: $00
    ld h, [hl]                                    ; $55b7: $66
    inc bc                                        ; $55b8: $03
    xor h                                         ; $55b9: $ac
    ld h, h                                       ; $55ba: $64
    cpl                                           ; $55bb: $2f
    cp c                                          ; $55bc: $b9
    jr nc, jr_0ad_55cd                            ; $55bd: $30 $0e

    nop                                           ; $55bf: $00
    adc b                                         ; $55c0: $88
    jp nz, $80f0                                  ; $55c1: $c2 $f0 $80

    db $fc                                        ; $55c4: $fc
    cp l                                          ; $55c5: $bd
    add l                                         ; $55c6: $85
    add l                                         ; $55c7: $85
    nop                                           ; $55c8: $00
    sbc h                                         ; $55c9: $9c
    cp c                                          ; $55ca: $b9
    ld a, h                                       ; $55cb: $7c
    pop bc                                        ; $55cc: $c1

jr_0ad_55cd:
    cp h                                          ; $55cd: $bc
    inc bc                                        ; $55ce: $03
    sub l                                         ; $55cf: $95
    ld bc, $8300                                  ; $55d0: $01 $00 $83
    ld a, [de]                                    ; $55d3: $1a
    inc c                                         ; $55d4: $0c
    ld c, h                                       ; $55d5: $4c
    ld b, a                                       ; $55d6: $47
    and a                                         ; $55d7: $a7
    add a                                         ; $55d8: $87
    ld l, $04                                     ; $55d9: $2e $04
    add e                                         ; $55db: $83
    rst $20                                       ; $55dc: $e7
    ld l, [hl]                                    ; $55dd: $6e
    add l                                         ; $55de: $85
    ld c, a                                       ; $55df: $4f
    ld l, e                                       ; $55e0: $6b
    nop                                           ; $55e1: $00
    ccf                                           ; $55e2: $3f
    rra                                           ; $55e3: $1f
    nop                                           ; $55e4: $00
    ccf                                           ; $55e5: $3f
    sub a                                         ; $55e6: $97
    cpl                                           ; $55e7: $2f
    call nc, Call_0ad_6a5c                        ; $55e8: $d4 $5c $6a
    ld l, $b4                                     ; $55eb: $2e $b4
    db $10                                        ; $55ed: $10
    sub a                                         ; $55ee: $97
    sbc d                                         ; $55ef: $9a
    adc e                                         ; $55f0: $8b
    ret nc                                        ; $55f1: $d0

    ld d, b                                       ; $55f2: $50
    add b                                         ; $55f3: $80
    ret nz                                        ; $55f4: $c0

    ld b, b                                       ; $55f5: $40
    ld b, $00                                     ; $55f6: $06 $00
    ld bc, $1e19                                  ; $55f8: $01 $19 $1e
    ld a, [hl-]                                   ; $55fb: $3a
    inc [hl]                                      ; $55fc: $34
    ld l, c                                       ; $55fd: $69
    ld [hl], b                                    ; $55fe: $70
    rst $30                                       ; $55ff: $f7
    nop                                           ; $5600: $00
    ldh [$e0], a                                  ; $5601: $e0 $e0
    rst $08                                       ; $5603: $cf
    ldh [$cf], a                                  ; $5604: $e0 $cf
    rst $08                                       ; $5606: $cf
    ldh [$92], a                                  ; $5607: $e0 $92
    nop                                           ; $5609: $00
    inc d                                         ; $560a: $14
    ld hl, $802c                                  ; $560b: $21 $2c $80
    add hl, bc                                    ; $560e: $09
    ret                                           ; $560f: $c9


    dec de                                        ; $5610: $1b
    pop bc                                        ; $5611: $c1
    nop                                           ; $5612: $00
    inc de                                        ; $5613: $13
    ret                                           ; $5614: $c9


    inc bc                                        ; $5615: $03
    call nc, $f002                                ; $5616: $d4 $02 $f0
    nop                                           ; $5619: $00
    push hl                                       ; $561a: $e5
    nop                                           ; $561b: $00
    ld l, $8c                                     ; $561c: $2e $8c
    rrc a                                         ; $561e: $cb $0f
    rst $00                                       ; $5620: $c7
    rst $00                                       ; $5621: $c7
    ret nz                                        ; $5622: $c0

    add h                                         ; $5623: $84
    nop                                           ; $5624: $00
    add e                                         ; $5625: $83
    ret z                                         ; $5626: $c8

    rst $08                                       ; $5627: $cf
    jr nc, jr_0ad_562a                            ; $5628: $30 $00

jr_0ad_562a:
    ld h, e                                       ; $562a: $63
    rst $00                                       ; $562b: $c7
    ld b, c                                       ; $562c: $41
    nop                                           ; $562d: $00
    ld a, h                                       ; $562e: $7c

jr_0ad_562f:
    ld bc, $03fc                                  ; $562f: $01 $fc $03
    db $fd                                        ; $5632: $fd
    ld [c], a                                     ; $5633: $e2
    inc c                                         ; $5634: $0c
    sbc h                                         ; $5635: $9c
    nop                                           ; $5636: $00
    ld e, [hl]                                    ; $5637: $5e
    inc a                                         ; $5638: $3c
    cp [hl]                                       ; $5639: $be
    dec b                                         ; $563a: $05
    ld a, b                                       ; $563b: $78
    db $eb                                        ; $563c: $eb
    ldh a, [$86]                                  ; $563d: $f0 $86
    nop                                           ; $563f: $00
    ld e, l                                       ; $5640: $5d
    ld b, $1a                                     ; $5641: $06 $1a
    inc c                                         ; $5643: $0c
    ld a, [bc]                                    ; $5644: $0a
    dec c                                         ; $5645: $0d
    ld a, [bc]                                    ; $5646: $0a
    inc bc                                        ; $5647: $03
    nop                                           ; $5648: $00
    dec e                                         ; $5649: $1d
    dec bc                                        ; $564a: $0b
    inc de                                        ; $564b: $13
    inc bc                                        ; $564c: $03
    dec de                                        ; $564d: $1b
    ld h, e                                       ; $564e: $63
    rlca                                          ; $564f: $07
    ret                                           ; $5650: $c9


    nop                                           ; $5651: $00
    ld c, l                                       ; $5652: $4d
    call nz, $914c                                ; $5653: $c4 $4c $91

jr_0ad_5656:
    call nz, Call_0ad_4019                        ; $5656: $c4 $19 $40
    dec e                                         ; $5659: $1d
    nop                                           ; $565a: $00
    ld b, b                                       ; $565b: $40
    ld e, l                                       ; $565c: $5d
    ld b, b                                       ; $565d: $40
    ld b, b                                       ; $565e: $40
    rra                                           ; $565f: $1f
    ld b, b                                       ; $5660: $40
    ld e, a                                       ; $5661: $5f
    ld b, b                                       ; $5662: $40
    nop                                           ; $5663: $00
    and b                                         ; $5664: $a0
    jr c, jr_0ad_562f                             ; $5665: $38 $c8

    scf                                           ; $5667: $37
    ld c, e                                       ; $5668: $4b
    sbc c                                         ; $5669: $99
    rlca                                          ; $566a: $07
    db $ec                                        ; $566b: $ec
    db $10                                        ; $566c: $10
    dec bc                                        ; $566d: $0b
    db $f4                                        ; $566e: $f4
    inc bc                                        ; $566f: $03
    ld [bc], a                                    ; $5670: $02
    nop                                           ; $5671: $00
    rlca                                          ; $5672: $07
    ld c, a                                       ; $5673: $4f
    ld h, b                                       ; $5674: $60
    scf                                           ; $5675: $37
    nop                                           ; $5676: $00
    ld b, a                                       ; $5677: $47
    scf                                           ; $5678: $37
    ld b, a                                       ; $5679: $47
    rlca                                          ; $567a: $07
    jr nc, jr_0ad_5688                            ; $567b: $30 $0b

    jr c, jr_0ad_56b2                             ; $567d: $38 $33

    nop                                           ; $567f: $00
    dec bc                                        ; $5680: $0b
    inc de                                        ; $5681: $13
    dec bc                                        ; $5682: $0b
    ld [de], a                                    ; $5683: $12
    ld [$03e6], sp                                ; $5684: $08 $e6 $03
    ld sp, hl                                     ; $5687: $f9

jr_0ad_5688:
    nop                                           ; $5688: $00
    ld bc, $02f8                                  ; $5689: $01 $f8 $02
    ld sp, hl                                     ; $568c: $f9
    inc bc                                        ; $568d: $03
    ldh [rP1], a                                  ; $568e: $e0 $00
    rrca                                          ; $5690: $0f
    nop                                           ; $5691: $00
    sub a                                         ; $5692: $97
    ccf                                           ; $5693: $3f
    ld c, a                                       ; $5694: $4f
    ldh a, [$7f]                                  ; $5695: $f0 $7f
    jp $60a0                                      ; $5697: $c3 $a0 $60


    nop                                           ; $569a: $00
    ret nz                                        ; $569b: $c0

    sub e                                         ; $569c: $93
    ldh [$38], a                                  ; $569d: $e0 $38
    dec d                                         ; $569f: $15
    inc c                                         ; $56a0: $0c
    ld a, [de]                                    ; $56a1: $1a
    pop bc                                        ; $56a2: $c1
    nop                                           ; $56a3: $00
    ld b, [hl]                                    ; $56a4: $46
    ld [bc], a                                    ; $56a5: $02
    pop hl                                        ; $56a6: $e1
    add c                                         ; $56a7: $81
    ldh a, [rPCM12]                               ; $56a8: $f0 $76
    pop hl                                        ; $56aa: $e1

jr_0ad_56ab:
    dec c                                         ; $56ab: $0d
    nop                                           ; $56ac: $00
    inc bc                                        ; $56ad: $03
    rlca                                          ; $56ae: $07
    inc bc                                        ; $56af: $03
    rrca                                          ; $56b0: $0f
    rst $30                                       ; $56b1: $f7

jr_0ad_56b2:
    ldh a, [$8f]                                  ; $56b2: $f0 $8f
    jr nc, jr_0ad_56b6                            ; $56b4: $30 $00

jr_0ad_56b6:
    rrca                                          ; $56b6: $0f
    sub b                                         ; $56b7: $90
    rrca                                          ; $56b8: $0f

jr_0ad_56b9:
    ret nz                                        ; $56b9: $c0

    adc a                                         ; $56ba: $8f
    sub e                                         ; $56bb: $93
    jr c, jr_0ad_5656                             ; $56bc: $38 $98

    nop                                           ; $56be: $00
    adc b                                         ; $56bf: $88
    inc bc                                        ; $56c0: $03
    adc b                                         ; $56c1: $88
    dec bc                                        ; $56c2: $0b
    adc b                                         ; $56c3: $88
    ld [$0688], sp                                ; $56c4: $08 $88 $06
    ld bc, $b290                                  ; $56c7: $01 $90 $b2
    inc d                                         ; $56ca: $14
    ld [hl-], a                                   ; $56cb: $32
    ld d, c                                       ; $56cc: $51
    nop                                           ; $56cd: $00
    ccf                                           ; $56ce: $3f
    ld b, e                                       ; $56cf: $43
    add hl, de                                    ; $56d0: $19
    nop                                           ; $56d1: $00
    ld a, a                                       ; $56d2: $7f
    ld [hl], a                                    ; $56d3: $77
    ccf                                           ; $56d4: $3f
    add b                                         ; $56d5: $80
    db $db                                        ; $56d6: $db
    add b                                         ; $56d7: $80
    ld d, c                                       ; $56d8: $51
    ld b, h                                       ; $56d9: $44
    nop                                           ; $56da: $00
    db $f4                                        ; $56db: $f4
    ld a, [c]                                     ; $56dc: $f2
    db $e4                                        ; $56dd: $e4
    ld [$e8e6], a                                 ; $56de: $ea $e6 $e8
    db $e4                                        ; $56e1: $e4
    add sp, $04                                   ; $56e2: $e8 $04
    call nc, $d418                                ; $56e4: $d4 $18 $d4
    jr jr_0ad_56b9                                ; $56e7: $18 $d0

    ld [bc], a                                    ; $56e9: $02
    nop                                           ; $56ea: $00
    ld de, $000d                                  ; $56eb: $11 $0d $00
    dec b                                         ; $56ee: $05
    inc e                                         ; $56ef: $1c
    dec b                                         ; $56f0: $05
    inc c                                         ; $56f1: $0c
    inc c                                         ; $56f2: $0c
    ld b, $0c                                     ; $56f3: $06 $0c
    ld b, $00                                     ; $56f5: $06 $00
    inc b                                         ; $56f7: $04
    ld [bc], a                                    ; $56f8: $02
    dec b                                         ; $56f9: $05
    inc bc                                        ; $56fa: $03
    ld b, $03                                     ; $56fb: $06 $03
    pop af                                        ; $56fd: $f1

jr_0ad_56fe:
    ld sp, $e000                                  ; $56fe: $31 $00 $e0
    jr nz, jr_0ad_5703                            ; $5701: $20 $00

jr_0ad_5703:
    add [hl]                                      ; $5703: $86
    inc e                                         ; $5704: $1c
    inc de                                        ; $5705: $13
    jr nc, jr_0ad_5737                            ; $5706: $30 $2f

    nop                                           ; $5708: $00
    rra                                           ; $5709: $1f
    ld [hl+], a                                   ; $570a: $22
    rra                                           ; $570b: $1f
    cpl                                           ; $570c: $2f
    jr nc, jr_0ad_572e                            ; $570d: $30 $1f

    ret nz                                        ; $570f: $c0

    ld hl, sp+$00                                 ; $5710: $f8 $00
    sbc h                                         ; $5712: $9c
    ldh [$2c], a                                  ; $5713: $e0 $2c
    jr nc, jr_0ad_56ab                            ; $5715: $30 $94

    sbc c                                         ; $5717: $99
    adc $4f                                       ; $5718: $ce $4f
    nop                                           ; $571a: $00
    ld [c], a                                     ; $571b: $e2
    ld hl, $13f0                                  ; $571c: $21 $f0 $13
    db $f4                                        ; $571f: $f4
    inc de                                        ; $5720: $13
    xor b                                         ; $5721: $a8
    ld c, a                                       ; $5722: $4f
    nop                                           ; $5723: $00
    ld d, h                                       ; $5724: $54
    daa                                           ; $5725: $27
    ld a, [bc]                                    ; $5726: $0a

jr_0ad_5727:
    ld sp, $1d04                                  ; $5727: $31 $04 $1d
    add h                                         ; $572a: $84
    adc b                                         ; $572b: $88
    nop                                           ; $572c: $00
    xor d                                         ; $572d: $aa

jr_0ad_572e:
    and h                                         ; $572e: $a4
    ld b, $a7                                     ; $572f: $06 $a7
    ld [bc], a                                    ; $5731: $02
    ld sp, $3271                                  ; $5732: $31 $71 $32
    nop                                           ; $5735: $00
    ld [hl], c                                    ; $5736: $71

jr_0ad_5737:
    ld [hl+], a                                   ; $5737: $22
    ld b, d                                       ; $5738: $42
    ld h, c                                       ; $5739: $61
    ld h, c                                       ; $573a: $61
    ld h, b                                       ; $573b: $60
    ld a, b                                       ; $573c: $78
    stop                                          ; $573d: $10 $00
    ld b, [hl]                                    ; $573f: $46
    dec bc                                        ; $5740: $0b
    dec de                                        ; $5741: $1b
    ld [$784b], sp                                ; $5742: $08 $4b $78
    ld h, h                                       ; $5745: $64
    dec c                                         ; $5746: $0d
    nop                                           ; $5747: $00
    inc c                                         ; $5748: $0c
    ld h, l                                       ; $5749: $65
    ld c, h                                       ; $574a: $4c
    dec c                                         ; $574b: $0d
    inc c                                         ; $574c: $0c
    dec c                                         ; $574d: $0d
    inc b                                         ; $574e: $04
    call $1600                                    ; $574f: $cd $00 $16
    sub h                                         ; $5752: $94
    adc d                                         ; $5753: $8a
    ld [hl], d                                    ; $5754: $72
    ld [bc], a                                    ; $5755: $02
    ld a, [$a038]                                 ; $5756: $fa $38 $a0
    nop                                           ; $5759: $00
    jr c, @-$5e                                   ; $575a: $38 $a0

    jr nc, jr_0ad_56fe                            ; $575c: $30 $a0

    ld [hl], b                                    ; $575e: $70
    ld h, b                                       ; $575f: $60
    ld h, b                                       ; $5760: $60
    ld e, a                                       ; $5761: $5f
    nop                                           ; $5762: $00
    ld h, b                                       ; $5763: $60
    ld e, a                                       ; $5764: $5f
    jr nz, jr_0ad_5727                            ; $5765: $20 $c0

    ld h, b                                       ; $5767: $60
    ret nz                                        ; $5768: $c0

    ld [bc], a                                    ; $5769: $02
    ld bc, $0203                                  ; $576a: $01 $03 $02
    ld bc, $0103                                  ; $576d: $01 $03 $01
    nop                                           ; $5770: $00
    ld bc, $0003                                  ; $5771: $01 $03 $00
    ret nz                                        ; $5774: $c0

    ld bc, $0000                                  ; $5775: $01 $00 $00
    nop                                           ; $5778: $00
    jr nc, jr_0ad_5792                            ; $5779: $30 $17

    scf                                           ; $577b: $37
    sub b                                         ; $577c: $90
    cpl                                           ; $577d: $2f
    and b                                         ; $577e: $a0
    nop                                           ; $577f: $00
    rra                                           ; $5780: $1f
    sub b                                         ; $5781: $90
    ccf                                           ; $5782: $3f
    and b                                         ; $5783: $a0
    ret nz                                        ; $5784: $c0

    ld e, h                                       ; $5785: $5c
    ret nz                                        ; $5786: $c0

    add e                                         ; $5787: $83
    nop                                           ; $5788: $00
    sbc a                                         ; $5789: $9f
    ret nz                                        ; $578a: $c0

    db $e3                                        ; $578b: $e3
    dec b                                         ; $578c: $05
    dec bc                                        ; $578d: $0b
    ld [$e406], a                                 ; $578e: $ea $06 $e4
    nop                                           ; $5791: $00

jr_0ad_5792:
    ld b, $cc                                     ; $5792: $06 $cc
    dec c                                         ; $5794: $0d
    push bc                                       ; $5795: $c5
    ld d, $09                                     ; $5796: $16 $09
    and h                                         ; $5798: $a4
    cp e                                          ; $5799: $bb
    nop                                           ; $579a: $00
    ccf                                           ; $579b: $3f
    ld b, $83                                     ; $579c: $06 $83
    sub l                                         ; $579e: $95
    ld b, e                                       ; $579f: $43
    rst $10                                       ; $57a0: $d7
    adc b                                         ; $57a1: $88
    ld l, b                                       ; $57a2: $68
    nop                                           ; $57a3: $00
    inc d                                         ; $57a4: $14
    db $e4                                        ; $57a5: $e4
    ldh a, [$86]                                  ; $57a6: $f0 $86
    ldh a, [rSC]                                  ; $57a8: $f0 $02
    ldh a, [$e2]                                  ; $57aa: $f0 $e2
    nop                                           ; $57ac: $00
    ldh a, [$e5]                                  ; $57ad: $f0 $e5
    rla                                           ; $57af: $17
    rst $20                                       ; $57b0: $e7
    rst $00                                       ; $57b1: $c7
    rlca                                          ; $57b2: $07
    rlca                                          ; $57b3: $07
    inc de                                        ; $57b4: $13
    nop                                           ; $57b5: $00
    add a                                         ; $57b6: $87
    inc de                                        ; $57b7: $13
    ret nz                                        ; $57b8: $c0

    inc de                                        ; $57b9: $13
    ld e, b                                       ; $57ba: $58
    add hl, bc                                    ; $57bb: $09
    jr jr_0ad_57f7                                ; $57bc: $18 $39

    ld bc, $79f0                                  ; $57be: $01 $f0 $79
    ld a, [bc]                                    ; $57c1: $0a
    ld a, [$fc05]                                 ; $57c2: $fa $05 $fc
    dec c                                         ; $57c5: $0d
    ld [bc], a                                    ; $57c6: $02
    nop                                           ; $57c7: $00
    add b                                         ; $57c8: $80
    halt                                          ; $57c9: $76
    ld bc, $f8f9                                  ; $57ca: $01 $f9 $f8
    dec sp                                        ; $57cd: $3b
    ld hl, sp+$1b                                 ; $57ce: $f8 $1b
    ret nz                                        ; $57d0: $c0

    add b                                         ; $57d1: $80
    inc b                                         ; $57d2: $04
    ld b, b                                       ; $57d3: $40
    add b                                         ; $57d4: $80
    ld b, b                                       ; $57d5: $40
    ret nz                                        ; $57d6: $c0

    add b                                         ; $57d7: $80
    cp h                                          ; $57d8: $bc
    ld bc, $0080                                  ; $57d9: $01 $80 $00
    ret nz                                        ; $57dc: $c0

    ld b, $00                                     ; $57dd: $06 $00
    sbc a                                         ; $57df: $9f
    ld [hl], d                                    ; $57e0: $72
    ret nz                                        ; $57e1: $c0

    ldh [$e0], a                                  ; $57e2: $e0 $e0
    nop                                           ; $57e4: $00
    ld h, b                                       ; $57e5: $60
    ld c, c                                       ; $57e6: $49
    nop                                           ; $57e7: $00
    inc bc                                        ; $57e8: $03
    ld [hl], d                                    ; $57e9: $72
    nop                                           ; $57ea: $00
    ld [hl], b                                    ; $57eb: $70
    ld hl, $381e                                  ; $57ec: $21 $1e $38
    daa                                           ; $57ef: $27
    nop                                           ; $57f0: $00
    rrca                                          ; $57f1: $0f
    inc sp                                        ; $57f2: $33
    ccf                                           ; $57f3: $3f
    ld b, b                                       ; $57f4: $40
    ld h, b                                       ; $57f5: $60
    ccf                                           ; $57f6: $3f

jr_0ad_57f7:
    push bc                                       ; $57f7: $c5
    ld a, a                                       ; $57f8: $7f
    nop                                           ; $57f9: $00
    db $fc                                        ; $57fa: $fc
    ei                                            ; $57fb: $fb
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    db $e3                                        ; $57fe: $e3
    inc hl                                        ; $57ff: $23
    ld sp, $00c1                                  ; $5800: $31 $c1 $00
    rrca                                          ; $5803: $0f
    pop af                                        ; $5804: $f1
    inc d                                         ; $5805: $14
    push hl                                       ; $5806: $e5
    ld [hl], $c6                                  ; $5807: $36 $c6
    ldh [$f7], a                                  ; $5809: $e0 $f7
    nop                                           ; $580b: $00
    ret nz                                        ; $580c: $c0

    rlca                                          ; $580d: $07
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    pop hl                                        ; $5810: $e1
    ld a, a                                       ; $5811: $7f
    ldh a, [$cf]                                  ; $5812: $f0 $cf
    nop                                           ; $5814: $00
    inc e                                         ; $5815: $1c
    inc de                                        ; $5816: $13
    ldh [$c4], a                                  ; $5817: $e0 $c4
    ld [$2c04], sp                                ; $5819: $08 $04 $2c
    ld h, d                                       ; $581c: $62
    nop                                           ; $581d: $00
    ld l, $a3                                     ; $581e: $2e $a3
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    ld a, [hl]                                    ; $5822: $7e
    db $d3                                        ; $5823: $d3
    add e                                         ; $5824: $83
    ld b, h                                       ; $5825: $44
    nop                                           ; $5826: $00
    rst $00                                       ; $5827: $c7
    jp hl                                         ; $5828: $e9


    add a                                         ; $5829: $87
    db $f4                                        ; $582a: $f4
    rlca                                          ; $582b: $07
    ld [hl], b                                    ; $582c: $70
    ld b, $32                                     ; $582d: $06 $32
    nop                                           ; $582f: $00
    ld c, $26                                     ; $5830: $0e $26
    inc bc                                        ; $5832: $03
    dec c                                         ; $5833: $0d
    rst $20                                       ; $5834: $e7
    dec de                                        ; $5835: $1b
    inc c                                         ; $5836: $0c
    ldh a, [rNR41]                                ; $5837: $f0 $20
    inc e                                         ; $5839: $1c
    db $e4                                        ; $583a: $e4
    nop                                           ; $583b: $00
    ld l, e                                       ; $583c: $6b
    db $10                                        ; $583d: $10
    inc bc                                        ; $583e: $03
    ld h, e                                       ; $583f: $63
    ld [bc], a                                    ; $5840: $02
    ld h, b                                       ; $5841: $60
    nop                                           ; $5842: $00
    ld bc, $23f8                                  ; $5843: $01 $f8 $23
    ld [$01fe], sp                                ; $5846: $08 $fe $01
    db $fc                                        ; $5849: $fc
    inc bc                                        ; $584a: $03
    ld hl, sp+$00                                 ; $584b: $f8 $00
    ld b, $e0                                     ; $584d: $06 $e0
    pop bc                                        ; $584f: $c1
    call c, $e700                                 ; $5850: $dc $00 $e7
    jr @-$3b                                      ; $5853: $18 $c3

    add hl, bc                                    ; $5855: $09
    inc a                                         ; $5856: $3c
    add c                                         ; $5857: $81
    ld h, [hl]                                    ; $5858: $66
    nop                                           ; $5859: $00
    ld b, $00                                     ; $585a: $06 $00
    nop                                           ; $585c: $00
    rst $28                                       ; $585d: $ef
    dec a                                         ; $585e: $3d
    jr nz, jr_0ad_5861                            ; $585f: $20 $00

jr_0ad_5861:
    rst $38                                       ; $5861: $ff
    nop                                           ; $5862: $00
    ld a, a                                       ; $5863: $7f

jr_0ad_5864:
    nop                                           ; $5864: $00
    add b                                         ; $5865: $80
    ccf                                           ; $5866: $3f
    ret nz                                        ; $5867: $c0

    rra                                           ; $5868: $1f
    ld [$0760], sp                                ; $5869: $08 $60 $07
    cp b                                          ; $586c: $b8
    add e                                         ; $586d: $83
    ld d, b                                       ; $586e: $50
    jr nc, jr_0ad_5864                            ; $586f: $30 $f3

    inc c                                         ; $5871: $0c
    db $e4                                        ; $5872: $e4
    ld [$e1e8], sp                                ; $5873: $08 $e8 $e1
    jp hl                                         ; $5876: $e9


    ldh [$60], a                                  ; $5877: $e0 $60
    jr z, jr_0ad_58ba                             ; $5879: $28 $3f

    ccf                                           ; $587b: $3f
    ld e, a                                       ; $587c: $5f
    ld b, $9f                                     ; $587d: $06 $9f
    add b                                         ; $587f: $80
    adc a                                         ; $5880: $8f
    jr nc, @+$09                                  ; $5881: $30 $07

    ld e, b                                       ; $5883: $58
    ld l, b                                       ; $5884: $68
    ld e, h                                       ; $5885: $5c
    jr nz, @-$0e                                  ; $5886: $20 $f0

    nop                                           ; $5888: $00
    ld c, $e0                                     ; $5889: $0e $e0
    pop bc                                        ; $588b: $c1
    ret c                                         ; $588c: $d8

    ld b, $30                                     ; $588d: $06 $30
    dec c                                         ; $588f: $0d
    pop hl                                        ; $5890: $e1
    nop                                           ; $5891: $00
    add e                                         ; $5892: $83
    or b                                          ; $5893: $b0
    dec b                                         ; $5894: $05
    ld h, h                                       ; $5895: $64
    ld b, $c6                                     ; $5896: $06 $c6
    ld [bc], a                                    ; $5898: $02
    ld [hl-], a                                   ; $5899: $32
    nop                                           ; $589a: $00
    rrca                                          ; $589b: $0f
    db $e4                                        ; $589c: $e4
    pop hl                                        ; $589d: $e1
    rlca                                          ; $589e: $07
    ld [hl-], a                                   ; $589f: $32
    ld b, $cc                                     ; $58a0: $06 $cc
    ld [$c600], sp                                ; $58a2: $08 $00 $c6
    add $8c                                       ; $58a5: $c6 $8c
    add hl, bc                                    ; $58a7: $09
    dec e                                         ; $58a8: $1d
    ld b, c                                       ; $58a9: $41
    sub c                                         ; $58aa: $91
    jp $6c00                                      ; $58ab: $c3 $00 $6c


    add [hl]                                      ; $58ae: $86
    and h                                         ; $58af: $a4
    sbc h                                         ; $58b0: $9c
    jr c, jr_0ad_58e3                             ; $58b1: $38 $30

    ld l, [hl]                                    ; $58b3: $6e
    dec b                                         ; $58b4: $05
    inc b                                         ; $58b5: $04
    inc c                                         ; $58b6: $0c
    inc c                                         ; $58b7: $0c
    ld d, $c6                                     ; $58b8: $16 $c6

jr_0ad_58ba:
    ret c                                         ; $58ba: $d8

    ld a, h                                       ; $58bb: $7c
    nop                                           ; $58bc: $00
    ld [bc], a                                    ; $58bd: $02
    ldh a, [rP1]                                  ; $58be: $f0 $00
    ld a, [bc]                                    ; $58c0: $0a
    jp nz, Jump_0ad_680e                          ; $58c1: $c2 $0e $68

    adc a                                         ; $58c4: $8f
    inc bc                                        ; $58c5: $03
    ld bc, $000a                                  ; $58c6: $01 $0a $00
    ld h, l                                       ; $58c9: $65
    dec bc                                        ; $58ca: $0b
    ld d, a                                       ; $58cb: $57
    jr nz, jr_0ad_58fd                            ; $58cc: $20 $2f

    or [hl]                                       ; $58ce: $b6
    inc de                                        ; $58cf: $13
    ld e, [hl]                                    ; $58d0: $5e
    nop                                           ; $58d1: $00
    add a                                         ; $58d2: $87
    rlca                                          ; $58d3: $07
    ld hl, $d903                                  ; $58d4: $21 $03 $d9
    pop bc                                        ; $58d7: $c1
    ld h, b                                       ; $58d8: $60
    ld h, a                                       ; $58d9: $67
    nop                                           ; $58da: $00
    ret nz                                        ; $58db: $c0

    add a                                         ; $58dc: $87
    ld c, b                                       ; $58dd: $48
    or b                                          ; $58de: $b0
    ld d, b                                       ; $58df: $50
    or b                                          ; $58e0: $b0
    add b                                         ; $58e1: $80
    rrca                                          ; $58e2: $0f

jr_0ad_58e3:
    ld [bc], a                                    ; $58e3: $02
    ret nz                                        ; $58e4: $c0

    ld e, a                                       ; $58e5: $5f
    add b                                         ; $58e6: $80
    sbc a                                         ; $58e7: $9f
    add b                                         ; $58e8: $80
    rra                                           ; $58e9: $1f
    ld e, h                                       ; $58ea: $5c
    jr z, jr_0ad_58f4                             ; $58eb: $28 $07

    nop                                           ; $58ed: $00
    jr nc, @+$11                                  ; $58ee: $30 $0f

    ld h, b                                       ; $58f0: $60
    rrca                                          ; $58f1: $0f
    ld h, b                                       ; $58f2: $60
    adc a                                         ; $58f3: $8f

jr_0ad_58f4:
    and b                                         ; $58f4: $a0
    dec de                                        ; $58f5: $1b
    db $10                                        ; $58f6: $10
    add b                                         ; $58f7: $80
    ld a, b                                       ; $58f8: $78
    ld a, a                                       ; $58f9: $7f
    call $0100                                    ; $58fa: $cd $00 $01

jr_0ad_58fd:
    db $fd                                        ; $58fd: $fd
    ld bc, $80fc                                  ; $58fe: $01 $fc $80
    cp b                                          ; $5901: $b8
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    ld [$1ef0], sp                                ; $5905: $08 $f0 $1e
    inc bc                                        ; $5908: $03
    dec e                                         ; $5909: $1d
    nop                                           ; $590a: $00
    ld c, $bb                                     ; $590b: $0e $bb
    inc [hl]                                      ; $590d: $34
    inc hl                                        ; $590e: $23
    dec l                                         ; $590f: $2d
    rrca                                          ; $5910: $0f
    add [hl]                                      ; $5911: $86
    inc de                                        ; $5912: $13
    nop                                           ; $5913: $00
    sub b                                         ; $5914: $90
    inc b                                         ; $5915: $04
    ld l, $fe                                     ; $5916: $2e $fe
    push bc                                       ; $5918: $c5
    xor e                                         ; $5919: $ab
    ret z                                         ; $591a: $c8

    call z, $8400                                 ; $591b: $cc $00 $84
    ld a, [de]                                    ; $591e: $1a
    add hl, de                                    ; $591f: $19
    inc bc                                        ; $5920: $03
    add $33                                       ; $5921: $c6 $33
    cp a                                          ; $5923: $bf
    stop                                          ; $5924: $10 $00
    ld l, e                                       ; $5926: $6b
    and l                                         ; $5927: $a5
    ld l, c                                       ; $5928: $69
    call z, $a135                                 ; $5929: $cc $35 $a1
    ld b, c                                       ; $592c: $41
    ld bc, $0100                                  ; $592d: $01 $00 $01
    add d                                         ; $5930: $82
    ld b, a                                       ; $5931: $47
    ld b, h                                       ; $5932: $44
    ld [c], a                                     ; $5933: $e2
    ld b, c                                       ; $5934: $41
    ld l, h                                       ; $5935: $6c
    inc bc                                        ; $5936: $03
    nop                                           ; $5937: $00
    ret nz                                        ; $5938: $c0

    rst $00                                       ; $5939: $c7
    ldh a, [$0d]                                  ; $593a: $f0 $0d
    pop bc                                        ; $593c: $c1
    dec e                                         ; $593d: $1d
    pop bc                                        ; $593e: $c1
    cp h                                          ; $593f: $bc
    nop                                           ; $5940: $00
    add c                                         ; $5941: $81
    inc a                                         ; $5942: $3c
    ld bc, $c11e                                  ; $5943: $01 $1e $c1
    ld e, [hl]                                    ; $5946: $5e
    ld b, c                                       ; $5947: $41
    rra                                           ; $5948: $1f
    nop                                           ; $5949: $00
    ld b, c                                       ; $594a: $41
    sbc [hl]                                      ; $594b: $9e
    nop                                           ; $594c: $00
    sbc a                                         ; $594d: $9f
    ld e, a                                       ; $594e: $5f
    rst $08                                       ; $594f: $cf
    rrca                                          ; $5950: $0f
    rst $00                                       ; $5951: $c7
    nop                                           ; $5952: $00
    daa                                           ; $5953: $27
    db $eb                                        ; $5954: $eb
    inc bc                                        ; $5955: $03
    ldh a, [rDIV]                                 ; $5956: $f0 $04
    ldh a, [rTMA]                                 ; $5958: $f0 $06
    adc b                                         ; $595a: $88
    nop                                           ; $595b: $00
    ld [hl], d                                    ; $595c: $72
    adc c                                         ; $595d: $89
    ld [hl], c                                    ; $595e: $71
    adc l                                         ; $595f: $8d
    and b                                         ; $5960: $a0
    add b                                         ; $5961: $80
    or b                                          ; $5962: $b0
    add $00                                       ; $5963: $c6 $00
    ret nc                                        ; $5965: $d0

    inc hl                                        ; $5966: $23
    jr nz, jr_0ad_5999                            ; $5967: $20 $30

    ld bc, $dcc5                                  ; $5969: $01 $c5 $dc
    add sp, $00                                   ; $596c: $e8 $00
    rst $20                                       ; $596e: $e7
    ld b, $05                                     ; $596f: $06 $05
    reti                                          ; $5971: $d9


    ld [hl], b                                    ; $5972: $70
    ld a, [$f802]                                 ; $5973: $fa $02 $f8
    nop                                           ; $5976: $00
    inc bc                                        ; $5977: $03
    ld a, [hl]                                    ; $5978: $7e
    ld [bc], a                                    ; $5979: $02
    rlca                                          ; $597a: $07
    add c                                         ; $597b: $81
    ld a, [hl+]                                   ; $597c: $2a
    cp b                                          ; $597d: $b8
    add $00                                       ; $597e: $c6 $00
    ldh [$ae], a                                  ; $5980: $e0 $ae
    ldh [$8c], a                                  ; $5982: $e0 $8c
    add hl, sp                                    ; $5984: $39
    or h                                          ; $5985: $b4
    inc a                                         ; $5986: $3c
    inc hl                                        ; $5987: $23
    nop                                           ; $5988: $00
    dec sp                                        ; $5989: $3b
    ld a, [$f3e9]                                 ; $598a: $fa $e9 $f3
    ld [hl], d                                    ; $598d: $72
    ld d, $d0                                     ; $598e: $16 $d0
    adc a                                         ; $5990: $8f
    nop                                           ; $5991: $00
    add b                                         ; $5992: $80
    ld e, e                                       ; $5993: $5b
    sbc e                                         ; $5994: $9b
    ld a, d                                       ; $5995: $7a
    ld l, a                                       ; $5996: $6f
    jr c, @-$08                                   ; $5997: $38 $f6

jr_0ad_5999:
    ld b, l                                       ; $5999: $45
    nop                                           ; $599a: $00
    adc l                                         ; $599b: $8d
    ld a, h                                       ; $599c: $7c
    inc b                                         ; $599d: $04
    ld h, e                                       ; $599e: $63
    sbc $b1                                       ; $599f: $de $b1
    xor a                                         ; $59a1: $af
    ret c                                         ; $59a2: $d8

    nop                                           ; $59a3: $00
    rra                                           ; $59a4: $1f
    db $e3                                        ; $59a5: $e3
    inc bc                                        ; $59a6: $03
    ld [hl], b                                    ; $59a7: $70
    ld [hl], a                                    ; $59a8: $77
    or b                                          ; $59a9: $b0
    ld h, $24                                     ; $59aa: $26 $24
    nop                                           ; $59ac: $00
    inc e                                         ; $59ad: $1c
    dec l                                         ; $59ae: $2d
    adc h                                         ; $59af: $8c
    and c                                         ; $59b0: $a1
    ld d, d                                       ; $59b1: $52
    ld l, [hl]                                    ; $59b2: $6e
    jp hl                                         ; $59b3: $e9


    inc bc                                        ; $59b4: $03
    nop                                           ; $59b5: $00
    ret c                                         ; $59b6: $d8

    ld bc, $b6a1                                  ; $59b7: $01 $a1 $b6
    ld b, b                                       ; $59ba: $40
    jp c, Jump_000_2c08                           ; $59bb: $da $08 $2c

    nop                                           ; $59be: $00
    inc l                                         ; $59bf: $2c
    ld c, [hl]                                    ; $59c0: $4e
    jr nz, @+$26                                  ; $59c1: $20 $24

    adc h                                         ; $59c3: $8c
    adc d                                         ; $59c4: $8a
    ld c, $01                                     ; $59c5: $0e $01
    nop                                           ; $59c7: $00
    jp $c938                                      ; $59c8: $c3 $38 $c9


    add c                                         ; $59cb: $81
    ld a, c                                       ; $59cc: $79
    add c                                         ; $59cd: $81
    ld a, c                                       ; $59ce: $79
    add e                                         ; $59cf: $83
    nop                                           ; $59d0: $00
    ld a, e                                       ; $59d1: $7b
    db $c3, $33, $28                              ; $59d2: $c3 $33 $28


    dec bc                                        ; $59d5: $0b
    nop                                           ; $59d6: $00
    rlca                                          ; $59d7: $07
    rlca                                          ; $59d8: $07
    nop                                           ; $59d9: $00
    rlca                                          ; $59da: $07
    rst $00                                       ; $59db: $c7
    rla                                           ; $59dc: $17
    ld l, l                                       ; $59dd: $6d
    inc de                                        ; $59de: $13
    ccf                                           ; $59df: $3f
    ld e, c                                       ; $59e0: $59
    dec de                                        ; $59e1: $1b
    nop                                           ; $59e2: $00
    dec d                                         ; $59e3: $15
    ret z                                         ; $59e4: $c8

    jp nc, $d0c3                                  ; $59e5: $d2 $c3 $d0

    ld de, $0190                                  ; $59e8: $11 $90 $01
    nop                                           ; $59eb: $00
    ret nz                                        ; $59ec: $c0

    db $fc                                        ; $59ed: $fc
    ld bc, $c09e                                  ; $59ee: $01 $9e $c0
    ret nz                                        ; $59f1: $c0

    ld e, a                                       ; $59f2: $5f
    ret nz                                        ; $59f3: $c0

    db $10                                        ; $59f4: $10
    rst $18                                       ; $59f5: $df
    ret nz                                        ; $59f6: $c0

    rra                                           ; $59f7: $1f
    ld b, $00                                     ; $59f8: $06 $00
    ld e, a                                       ; $59fa: $5f
    ldh [$2f], a                                  ; $59fb: $e0 $2f
    rla                                           ; $59fd: $17
    nop                                           ; $59fe: $00
    rst $20                                       ; $59ff: $e7
    ld a, b                                       ; $5a00: $78
    ld a, b                                       ; $5a01: $78
    ld [c], a                                     ; $5a02: $e2
    ld bc, $1fde                                  ; $5a03: $01 $de $1f
    db $e3                                        ; $5a06: $e3
    nop                                           ; $5a07: $00
    rlca                                          ; $5a08: $07

jr_0ad_5a09:
    ldh [rTAC], a                                 ; $5a09: $e0 $07
    ret nz                                        ; $5a0b: $c0

    ld [de], a                                    ; $5a0c: $12
    jp nz, $a013                                  ; $5a0d: $c2 $13 $a0

    nop                                           ; $5a10: $00
    daa                                           ; $5a11: $27
    call nz, $4807                                ; $5a12: $c4 $07 $48
    dec de                                        ; $5a15: $1b

jr_0ad_5a16:
    or b                                          ; $5a16: $b0
    ld sp, $0034                                  ; $5a17: $31 $34 $00
    ld hl, $090c                                  ; $5a1a: $21 $0c $09
    inc l                                         ; $5a1d: $2c
    inc b                                         ; $5a1e: $04
    add hl, hl                                    ; $5a1f: $29
    ld h, d                                       ; $5a20: $62
    add h                                         ; $5a21: $84
    nop                                           ; $5a22: $00
    ld h, c                                       ; $5a23: $61
    pop af                                        ; $5a24: $f1
    ld h, e                                       ; $5a25: $63
    ld hl, sp+$79                                 ; $5a26: $f8 $79
    add c                                         ; $5a28: $81
    ld a, l                                       ; $5a29: $7d
    add e                                         ; $5a2a: $83
    nop                                           ; $5a2b: $00
    ld a, [hl-]                                   ; $5a2c: $3a
    jr c, jr_0ad_5a4a                             ; $5a2d: $38 $1b

    jr jr_0ad_5a52                                ; $5a2f: $18 $21

    ld bc, $d185                                  ; $5a31: $01 $85 $d1
    nop                                           ; $5a34: $00
    ld h, h                                       ; $5a35: $64
    ld h, c                                       ; $5a36: $61
    or d                                          ; $5a37: $b2
    ld c, l                                       ; $5a38: $4d
    add d                                         ; $5a39: $82
    daa                                           ; $5a3a: $27
    jp nz, Jump_000_0013                          ; $5a3b: $c2 $13 $00

    db $e3                                        ; $5a3e: $e3
    add sp, $0b                                   ; $5a3f: $e8 $0b
    add b                                         ; $5a41: $80
    rla                                           ; $5a42: $17
    xor d                                         ; $5a43: $aa
    ld [hl+], a                                   ; $5a44: $22
    or h                                          ; $5a45: $b4
    db $10                                        ; $5a46: $10
    jr z, jr_0ad_5a09                             ; $5a47: $28 $c0

    add a                                         ; $5a49: $87

jr_0ad_5a4a:
    ld c, d                                       ; $5a4a: $4a
    ld bc, $c00f                                  ; $5a4b: $01 $0f $c0
    adc a                                         ; $5a4e: $8f
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    rra                                           ; $5a51: $1f

jr_0ad_5a52:
    ld b, b                                       ; $5a52: $40
    rra                                           ; $5a53: $1f
    ret nz                                        ; $5a54: $c0

    rra                                           ; $5a55: $1f
    add b                                         ; $5a56: $80
    ccf                                           ; $5a57: $3f
    db $fc                                        ; $5a58: $fc
    jr c, jr_0ad_5a5b                             ; $5a59: $38 $00

jr_0ad_5a5b:
    db $fc                                        ; $5a5b: $fc
    or l                                          ; $5a5c: $b5
    ld bc, $1802                                  ; $5a5d: $01 $02 $18
    ld b, b                                       ; $5a60: $40
    ld bc, $8b00                                  ; $5a61: $01 $00 $8b
    ld [hl], e                                    ; $5a64: $73
    nop                                           ; $5a65: $00
    inc b                                         ; $5a66: $04
    ld a, b                                       ; $5a67: $78
    ld b, d                                       ; $5a68: $42
    ld a, $b2                                     ; $5a69: $3e $b2
    adc h                                         ; $5a6b: $8c
    or b                                          ; $5a6c: $b0
    adc [hl]                                      ; $5a6d: $8e
    nop                                           ; $5a6e: $00
    call c, Call_0ad_4ec3                         ; $5a6f: $dc $c3 $4e
    ld b, c                                       ; $5a72: $41
    rrca                                          ; $5a73: $0f
    ld c, b                                       ; $5a74: $48
    sub e                                         ; $5a75: $93
    ld b, $00                                     ; $5a76: $06 $00
    ld d, c                                       ; $5a78: $51
    jr nz, jr_0ad_5a16                            ; $5a79: $20 $9b

    ld l, d                                       ; $5a7b: $6a
    sbc c                                         ; $5a7c: $99
    ld h, b                                       ; $5a7d: $60
    add hl, sp                                    ; $5a7e: $39
    ret                                           ; $5a7f: $c9


    nop                                           ; $5a80: $00
    ldh a, [$c0]                                  ; $5a81: $f0 $c0
    ret nz                                        ; $5a83: $c0

    and l                                         ; $5a84: $a5
    ld c, a                                       ; $5a85: $4f
    ret nz                                        ; $5a86: $c0

    push hl                                       ; $5a87: $e5
    ld d, b                                       ; $5a88: $50
    nop                                           ; $5a89: $00
    di                                            ; $5a8a: $f3
    ld h, a                                       ; $5a8b: $67
    ld b, c                                       ; $5a8c: $41
    add c                                         ; $5a8d: $81
    ld e, [hl]                                    ; $5a8e: $5e
    add b                                         ; $5a8f: $80
    sbc $9c                                       ; $5a90: $de $9c
    nop                                           ; $5a92: $00
    ld b, e                                       ; $5a93: $43
    ld c, h                                       ; $5a94: $4c
    ld [de], a                                    ; $5a95: $12
    ld b, $72                                     ; $5a96: $06 $72
    rlca                                          ; $5a98: $07
    dec h                                         ; $5a99: $25
    pop bc                                        ; $5a9a: $c1
    nop                                           ; $5a9b: $00
    add e                                         ; $5a9c: $83
    pop af                                        ; $5a9d: $f1
    ld hl, sp-$25                                 ; $5a9e: $f8 $db
    jr jr_0ad_5aba                                ; $5aa0: $18 $18

    jp $009c                                      ; $5aa2: $c3 $9c $00


    reti                                          ; $5aa5: $d9


    ld b, e                                       ; $5aa6: $43
    ld b, b                                       ; $5aa7: $40
    add e                                         ; $5aa8: $83
    pop hl                                        ; $5aa9: $e1
    dec c                                         ; $5aaa: $0d
    inc e                                         ; $5aab: $1c
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    ret z                                         ; $5aae: $c8

    pop bc                                        ; $5aaf: $c1
    add hl, bc                                    ; $5ab0: $09
    sub l                                         ; $5ab1: $95
    dec c                                         ; $5ab2: $0d
    dec [hl]                                      ; $5ab3: $35
    ld hl, $003c                                  ; $5ab4: $21 $3c $00
    add e                                         ; $5ab7: $83
    sbc b                                         ; $5ab8: $98
    sbc b                                         ; $5ab9: $98

jr_0ad_5aba:
    ld [de], a                                    ; $5aba: $12
    ld [$808a], sp                                ; $5abb: $08 $8a $80
    ccf                                           ; $5abe: $3f
    inc e                                         ; $5abf: $1c
    add b                                         ; $5ac0: $80
    ccf                                           ; $5ac1: $3f
    ld a, a                                       ; $5ac2: $7f
    ld d, b                                       ; $5ac3: $50
    ld [bc], a                                    ; $5ac4: $02
    inc b                                         ; $5ac5: $04
    ld [$8a9c], sp                                ; $5ac6: $08 $9c $8a
    rlca                                          ; $5ac9: $07
    ld h, a                                       ; $5aca: $67
    ld bc, $88a0                                  ; $5acb: $01 $a0 $88
    and b                                         ; $5ace: $a0
    adc a                                         ; $5acf: $8f
    or b                                          ; $5ad0: $b0
    add a                                         ; $5ad1: $87
    ret nc                                        ; $5ad2: $d0

    db $e3                                        ; $5ad3: $e3
    nop                                           ; $5ad4: $00
    dec b                                         ; $5ad5: $05
    nop                                           ; $5ad6: $00
    ret nz                                        ; $5ad7: $c0

    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    rra                                           ; $5ada: $1f
    ld a, h                                       ; $5adb: $7c
    ld [bc], a                                    ; $5adc: $02
    rst $38                                       ; $5add: $ff
    adc d                                         ; $5ade: $8a
    db $10                                        ; $5adf: $10
    add c                                         ; $5ae0: $81
    adc [hl]                                      ; $5ae1: $8e
    ld [$0000], sp                                ; $5ae2: $08 $00 $00
    pop af                                        ; $5ae5: $f1
    rlca                                          ; $5ae6: $07
    ld sp, hl                                     ; $5ae7: $f9
    ld bc, $08a0                                  ; $5ae8: $01 $a0 $08
    add b                                         ; $5aeb: $80
    db $10                                        ; $5aec: $10
    jr @+$01                                      ; $5aed: $18 $ff

    nop                                           ; $5aef: $00
    ld hl, sp+$11                                 ; $5af0: $f8 $11
    sbc $22                                       ; $5af2: $de $22
    ld c, h                                       ; $5af4: $4c

jr_0ad_5af5:
    db $10                                        ; $5af5: $10
    ldh a, [rNR34]                                ; $5af6: $f0 $1e
    push hl                                       ; $5af8: $e5
    db $10                                        ; $5af9: $10
    jr z, @-$3e                                   ; $5afa: $28 $c0

    ld b, $b0                                     ; $5afc: $06 $b0
    ld d, h                                       ; $5afe: $54
    nop                                           ; $5aff: $00
    ld [hl], b                                    ; $5b00: $70
    inc d                                         ; $5b01: $14
    ld h, b                                       ; $5b02: $60
    inc c                                         ; $5b03: $0c
    ld [$f803], sp                                ; $5b04: $08 $03 $f8

Call_0ad_5b07:
    inc bc                                        ; $5b07: $03
    ld h, b                                       ; $5b08: $60
    inc bc                                        ; $5b09: $03
    inc [hl]                                      ; $5b0a: $34
    jr nz, jr_0ad_5b11                            ; $5b0b: $20 $04

    ld c, e                                       ; $5b0d: $4b
    db $10                                        ; $5b0e: $10
    inc bc                                        ; $5b0f: $03
    ld l, e                                       ; $5b10: $6b

jr_0ad_5b11:
    ld [bc], a                                    ; $5b11: $02
    ld b, d                                       ; $5b12: $42
    nop                                           ; $5b13: $00
    ld bc, $01c0                                  ; $5b14: $01 $c0 $01
    nop                                           ; $5b17: $00
    inc bc                                        ; $5b18: $03
    ld [bc], a                                    ; $5b19: $02
    jr nz, @+$22                                  ; $5b1a: $20 $20

    cp $00                                        ; $5b1c: $fe $00
    ld sp, $03fc                                  ; $5b1e: $31 $fc $03
    jr nc, jr_0ad_5b53                            ; $5b21: $30 $30

    ld hl, sp-$68                                 ; $5b23: $f8 $98
    add sp, $00                                   ; $5b25: $e8 $00
    nop                                           ; $5b27: $00
    rst $20                                       ; $5b28: $e7
    jr @-$3b                                      ; $5b29: $18 $c3

    inc a                                         ; $5b2b: $3c
    add c                                         ; $5b2c: $81
    ld h, [hl]                                    ; $5b2d: $66
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    jr jr_0ad_5af5                                ; $5b30: $18 $c3

    db $fc                                        ; $5b32: $fc
    ldh [rIF], a                                  ; $5b33: $e0 $0f
    rrca                                          ; $5b35: $0f
    daa                                           ; $5b36: $27
    rst $00                                       ; $5b37: $c7
    add b                                         ; $5b38: $80
    ld b, b                                       ; $5b39: $40
    ld [$00ff], sp                                ; $5b3a: $08 $ff $00
    ld a, a                                       ; $5b3d: $7f
    nop                                           ; $5b3e: $00
    add b                                         ; $5b3f: $80
    ccf                                           ; $5b40: $3f
    ret nz                                        ; $5b41: $c0

    ld b, $1f                                     ; $5b42: $06 $1f
    ld h, a                                       ; $5b44: $67
    rlca                                          ; $5b45: $07
    dec sp                                        ; $5b46: $3b
    add e                                         ; $5b47: $83
    ld d, b                                       ; $5b48: $50
    ret z                                         ; $5b49: $c8

    ld l, h                                       ; $5b4a: $6c
    add b                                         ; $5b4b: $80
    cp $00                                        ; $5b4c: $fe $00
    ld b, $05                                     ; $5b4e: $06 $05
    ld bc, $0303                                  ; $5b50: $01 $03 $03

jr_0ad_5b53:
    dec c                                         ; $5b53: $0d
    dec c                                         ; $5b54: $0d
    ld a, [bc]                                    ; $5b55: $0a
    nop                                           ; $5b56: $00
    add hl, de                                    ; $5b57: $19
    ld e, $f9                                     ; $5b58: $1e $f9
    rst $30                                       ; $5b5a: $f7
    ld [hl-], a                                   ; $5b5b: $32
    inc a                                         ; $5b5c: $3c
    ret                                           ; $5b5d: $c9


    adc $00                                       ; $5b5e: $ce $00
    ld a, [hl-]                                   ; $5b60: $3a
    jp $cd85                                      ; $5b61: $c3 $85 $cd


    and b                                         ; $5b64: $a0
    ld b, l                                       ; $5b65: $45
    ret nz                                        ; $5b66: $c0

    add hl, de                                    ; $5b67: $19
    nop                                           ; $5b68: $00
    call nz, $8e54                                ; $5b69: $c4 $54 $8e
    ld c, a                                       ; $5b6c: $4f
    sub c                                         ; $5b6d: $91
    pop de                                        ; $5b6e: $d1
    ld c, c                                       ; $5b6f: $49
    ld c, $00                                     ; $5b70: $0e $00
    inc de                                        ; $5b72: $13
    ldh a, [$c3]                                  ; $5b73: $f0 $c3
    ld [hl], b                                    ; $5b75: $70
    inc hl                                        ; $5b76: $23
    inc de                                        ; $5b77: $13
    dec hl                                        ; $5b78: $2b
    inc de                                        ; $5b79: $13
    nop                                           ; $5b7a: $00
    ret c                                         ; $5b7b: $d8

    ld h, c                                       ; $5b7c: $61
    add sp, $31                                   ; $5b7d: $e8 $31
    ld a, [hl-]                                   ; $5b7f: $3a
    rst $30                                       ; $5b80: $f7
    sbc e                                         ; $5b81: $9b
    dec [hl]                                      ; $5b82: $35
    nop                                           ; $5b83: $00
    pop bc                                        ; $5b84: $c1
    dec c                                         ; $5b85: $0d
    ldh a, [rTMA]                                 ; $5b86: $f0 $06
    ld hl, sp-$05                                 ; $5b88: $f8 $fb
    db $fc                                        ; $5b8a: $fc
    nop                                           ; $5b8b: $00
    nop                                           ; $5b8c: $00
    ld a, [bc]                                    ; $5b8d: $0a
    ld bc, $0800                                  ; $5b8e: $01 $00 $08
    ld a, [bc]                                    ; $5b91: $0a
    push af                                       ; $5b92: $f5
    add [hl]                                      ; $5b93: $86
    ld hl, sp-$80                                 ; $5b94: $f8 $80
    ld a, h                                       ; $5b96: $7c
    ld [$3fbf], sp                                ; $5b97: $08 $bf $3f
    rst $00                                       ; $5b9a: $c7
    rrca                                          ; $5b9b: $0f
    ld [hl], b                                    ; $5b9c: $70
    ld a, b                                       ; $5b9d: $78
    sbc b                                         ; $5b9e: $98
    ld b, $90                                     ; $5b9f: $06 $90
    or d                                          ; $5ba1: $b2
    inc e                                         ; $5ba2: $1c
    db $fc                                        ; $5ba3: $fc
    rst $30                                       ; $5ba4: $f7
    ret nc                                        ; $5ba5: $d0

    ld c, b                                       ; $5ba6: $48
    sbc b                                         ; $5ba7: $98
    ld [$0001], sp                                ; $5ba8: $08 $01 $00
    db $fc                                        ; $5bab: $fc
    inc bc                                        ; $5bac: $03
    ldh a, [$0e]                                  ; $5bad: $f0 $0e
    ldh [$d9], a                                  ; $5baf: $e0 $d9
    pop bc                                        ; $5bb1: $c1
    inc sp                                        ; $5bb2: $33
    nop                                           ; $5bb3: $00
    rlca                                          ; $5bb4: $07
    ld h, [hl]                                    ; $5bb5: $66
    rrca                                          ; $5bb6: $0f
    ld l, l                                       ; $5bb7: $6d
    ld c, $bb                                     ; $5bb8: $0e $bb
    sbc h                                         ; $5bba: $9c
    adc c                                         ; $5bbb: $89
    nop                                           ; $5bbc: $00
    sbc h                                         ; $5bbd: $9c
    inc e                                         ; $5bbe: $1c
    dec [hl]                                      ; $5bbf: $35
    ld sp, $2319                                  ; $5bc0: $31 $19 $23
    ld a, e                                       ; $5bc3: $7b
    ld l, a                                       ; $5bc4: $6f
    nop                                           ; $5bc5: $00
    or $ee                                        ; $5bc6: $f6 $ee
    call $da8c                                    ; $5bc8: $cd $8c $da
    sbc h                                         ; $5bcb: $9c
    ld a, d                                       ; $5bcc: $7a
    ld d, c                                       ; $5bcd: $51
    nop                                           ; $5bce: $00
    inc c                                         ; $5bcf: $0c
    cp e                                          ; $5bd0: $bb
    ccf                                           ; $5bd1: $3f
    and a                                         ; $5bd2: $a7
    ccf                                           ; $5bd3: $3f
    ld a, a                                       ; $5bd4: $7f
    jr @+$79                                      ; $5bd5: $18 $77

    nop                                           ; $5bd7: $00
    rra                                           ; $5bd8: $1f
    daa                                           ; $5bd9: $27
    ld e, a                                       ; $5bda: $5f
    db $10                                        ; $5bdb: $10
    add hl, hl                                    ; $5bdc: $29
    add hl, sp                                    ; $5bdd: $39
    daa                                           ; $5bde: $27
    ld a, [hl+]                                   ; $5bdf: $2a
    nop                                           ; $5be0: $00
    dec [hl]                                      ; $5be1: $35
    ld [c], a                                     ; $5be2: $e2
    cp l                                          ; $5be3: $bd
    dec d                                         ; $5be4: $15
    ld b, d                                       ; $5be5: $42
    or h                                          ; $5be6: $b4
    inc hl                                        ; $5be7: $23
    add e                                         ; $5be8: $83
    nop                                           ; $5be9: $00
    dec a                                         ; $5bea: $3d
    ld hl, $6e0f                                  ; $5beb: $21 $0f $6e
    dec l                                         ; $5bee: $2d
    xor $2d                                       ; $5bef: $ee $2d
    ld [hl], d                                    ; $5bf1: $72
    nop                                           ; $5bf2: $00
    ld e, l                                       ; $5bf3: $5d
    ld a, $31                                     ; $5bf4: $3e $31
    rra                                           ; $5bf6: $1f
    pop af                                        ; $5bf7: $f1
    ld a, [de]                                    ; $5bf8: $1a
    ld [c], a                                     ; $5bf9: $e2
    sbc l                                         ; $5bfa: $9d
    nop                                           ; $5bfb: $00
    sub e                                         ; $5bfc: $93
    cp [hl]                                       ; $5bfd: $be
    add l                                         ; $5bfe: $85
    adc a                                         ; $5bff: $8f
    pop hl                                        ; $5c00: $e1
    add c                                         ; $5c01: $81
    db $fc                                        ; $5c02: $fc
    pop af                                        ; $5c03: $f1
    nop                                           ; $5c04: $00
    ld c, l                                       ; $5c05: $4d
    cp [hl]                                       ; $5c06: $be
    ldh a, [$fe]                                  ; $5c07: $f0 $fe
    pop af                                        ; $5c09: $f1
    inc h                                         ; $5c0a: $24
    inc hl                                        ; $5c0b: $23
    rrca                                          ; $5c0c: $0f
    nop                                           ; $5c0d: $00
    or c                                          ; $5c0e: $b1
    inc d                                         ; $5c0f: $14
    xor c                                         ; $5c10: $a9
    sbc d                                         ; $5c11: $9a
    ld h, h                                       ; $5c12: $64
    cp b                                          ; $5c13: $b8
    ld d, b                                       ; $5c14: $50
    add b                                         ; $5c15: $80
    nop                                           ; $5c16: $00
    cp a                                          ; $5c17: $bf
    ret nz                                        ; $5c18: $c0

    ld c, a                                       ; $5c19: $4f
    ld [hl], a                                    ; $5c1a: $77
    rlca                                          ; $5c1b: $07
    dec de                                        ; $5c1c: $1b
    add e                                         ; $5c1d: $83
    call z, $2c00                                 ; $5c1e: $cc $00 $2c
    ld b, $f6                                     ; $5c21: $06 $f6
    ldh a, [rTMA]                                 ; $5c23: $f0 $06
    pop af                                        ; $5c25: $f1
    dec b                                         ; $5c26: $05
    or [hl]                                       ; $5c27: $b6
    nop                                           ; $5c28: $00
    sbc c                                         ; $5c29: $99
    add hl, bc                                    ; $5c2a: $09
    rlca                                          ; $5c2b: $07
    ld [bc], a                                    ; $5c2c: $02
    inc c                                         ; $5c2d: $0c
    inc c                                         ; $5c2e: $0c
    dec bc                                        ; $5c2f: $0b
    dec c                                         ; $5c30: $0d
    nop                                           ; $5c31: $00
    ld a, [de]                                    ; $5c32: $1a
    dec d                                         ; $5c33: $15
    add hl, bc                                    ; $5c34: $09
    dec b                                         ; $5c35: $05
    add hl, de                                    ; $5c36: $19
    inc e                                         ; $5c37: $1c
    add hl, de                                    ; $5c38: $19
    jr nc, jr_0ad_5c3b                            ; $5c39: $30 $00

jr_0ad_5c3b:
    cp $23                                        ; $5c3b: $fe $23
    ld e, e                                       ; $5c3d: $5b
    ld h, [hl]                                    ; $5c3e: $66
    add a                                         ; $5c3f: $87
    inc sp                                        ; $5c40: $33
    ldh a, [rPCM34]                               ; $5c41: $f0 $77
    nop                                           ; $5c43: $00
    ldh a, [$90]                                  ; $5c44: $f0 $90
    rra                                           ; $5c46: $1f
    sub b                                         ; $5c47: $90
    rra                                           ; $5c48: $1f
    rra                                           ; $5c49: $1f
    sub b                                         ; $5c4a: $90
    rlca                                          ; $5c4b: $07
    nop                                           ; $5c4c: $00
    ld b, $84                                     ; $5c4d: $06 $84
    ld a, h                                       ; $5c4f: $7c
    ret nz                                        ; $5c50: $c0

    ccf                                           ; $5c51: $3f
    rlca                                          ; $5c52: $07
    ld a, b                                       ; $5c53: $78
    nop                                           ; $5c54: $00
    nop                                           ; $5c55: $00
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    nop                                           ; $5c58: $00
    ld b, a                                       ; $5c59: $47
    ld a, b                                       ; $5c5a: $78
    rrca                                          ; $5c5b: $0f
    or b                                          ; $5c5c: $b0
    add e                                         ; $5c5d: $83
    nop                                           ; $5c5e: $00
    ld e, l                                       ; $5c5f: $5d
    ld b, $39                                     ; $5c60: $06 $39
    cp h                                          ; $5c62: $bc
    ld a, h                                       ; $5c63: $7c
    rst $38                                       ; $5c64: $ff
    rlca                                          ; $5c65: $07
    ret nz                                        ; $5c66: $c0

    nop                                           ; $5c67: $00
    inc sp                                        ; $5c68: $33
    push af                                       ; $5c69: $f5
    inc de                                        ; $5c6a: $13
    ld a, [bc]                                    ; $5c6b: $0a
    and $ee                                       ; $5c6c: $e6 $ee
    ld c, $05                                     ; $5c6e: $0e $05
    nop                                           ; $5c70: $00
    ld a, $05                                     ; $5c71: $3e $05
    ld a, d                                       ; $5c73: $7a
    ld a, [$7ff7]                                 ; $5c74: $fa $f7 $7f
    ld h, b                                       ; $5c77: $60

Call_0ad_5c78:
    add b                                         ; $5c78: $80
    nop                                           ; $5c79: $00
    add a                                         ; $5c7a: $87
    jr c, jr_0ad_5ca3                             ; $5c7b: $38 $26

    ld [hl], b                                    ; $5c7d: $70
    ld l, a                                       ; $5c7e: $6f
    cp a                                          ; $5c7f: $bf
    add b                                         ; $5c80: $80
    or [hl]                                       ; $5c81: $b6
    nop                                           ; $5c82: $00
    cp e                                          ; $5c83: $bb
    ld b, b                                       ; $5c84: $40
    cp a                                          ; $5c85: $bf
    rst $18                                       ; $5c86: $df
    rst $38                                       ; $5c87: $ff
    jr nz, jr_0ad_5c8a                            ; $5c88: $20 $00

jr_0ad_5c8a:
    rst $18                                       ; $5c8a: $df
    nop                                           ; $5c8b: $00
    jr nz, jr_0ad_5c8e                            ; $5c8c: $20 $00

jr_0ad_5c8e:
    nop                                           ; $5c8e: $00
    rra                                           ; $5c8f: $1f
    ldh [$fb], a                                  ; $5c90: $e0 $fb
    ei                                            ; $5c92: $fb
    dec b                                         ; $5c93: $05
    nop                                           ; $5c94: $00
    pop af                                        ; $5c95: $f1
    dec c                                         ; $5c96: $0d
    pop hl                                        ; $5c97: $e1
    dec bc                                        ; $5c98: $0b
    db $e3                                        ; $5c99: $e3
    dec bc                                        ; $5c9a: $0b
    db $e3                                        ; $5c9b: $e3
    dec de                                        ; $5c9c: $1b
    nop                                           ; $5c9d: $00
    jp $c717                                      ; $5c9e: $c3 $17 $c7


    rlca                                          ; $5ca1: $07
    rst $10                                       ; $5ca2: $d7

jr_0ad_5ca3:
    rst $00                                       ; $5ca3: $c7
    rla                                           ; $5ca4: $17
    dec c                                         ; $5ca5: $0d
    nop                                           ; $5ca6: $00
    jr @+$15                                      ; $5ca7: $18 $13

    dec e                                         ; $5ca9: $1d
    dec de                                        ; $5caa: $1b
    dec d                                         ; $5cab: $15
    ld a, [bc]                                    ; $5cac: $0a
    inc c                                         ; $5cad: $0c
    add hl, bc                                    ; $5cae: $09
    nop                                           ; $5caf: $00
    ld c, $07                                     ; $5cb0: $0e $07
    ld b, $03                                     ; $5cb2: $06 $03
    rlca                                          ; $5cb4: $07
    ld b, $05                                     ; $5cb5: $06 $05
    rra                                           ; $5cb7: $1f
    nop                                           ; $5cb8: $00
    sbc b                                         ; $5cb9: $98
    ld h, a                                       ; $5cba: $67
    ldh [$67], a                                  ; $5cbb: $e0 $67
    ldh [$83], a                                  ; $5cbd: $e0 $83
    ldh [rSCX], a                                 ; $5cbf: $e0 $43
    nop                                           ; $5cc1: $00
    ldh [rIF], a                                  ; $5cc2: $e0 $0f
    db $ec                                        ; $5cc4: $ec
    rrca                                          ; $5cc5: $0f
    xor [hl]                                      ; $5cc6: $ae
    ld b, c                                       ; $5cc7: $41

Call_0ad_5cc8:
    and c                                         ; $5cc8: $a1
    add b                                         ; $5cc9: $80
    nop                                           ; $5cca: $00
    adc a                                         ; $5ccb: $8f
    add b                                         ; $5ccc: $80
    ld b, b                                       ; $5ccd: $40
    ldh a, [$3e]                                  ; $5cce: $f0 $3e
    inc c                                         ; $5cd0: $0c
    ld hl, sp+$01                                 ; $5cd1: $f8 $01
    nop                                           ; $5cd3: $00
    rst $38                                       ; $5cd4: $ff
    nop                                           ; $5cd5: $00
    rst $38                                       ; $5cd6: $ff
    add [hl]                                      ; $5cd7: $86
    ld a, d                                       ; $5cd8: $7a
    inc bc                                        ; $5cd9: $03
    db $fd                                        ; $5cda: $fd
    pop hl                                        ; $5cdb: $e1
    nop                                           ; $5cdc: $00
    rrca                                          ; $5cdd: $0f
    xor $e0                                       ; $5cde: $ee $e0
    ld b, $1e                                     ; $5ce0: $06 $1e
    ldh [$a7], a                                  ; $5ce2: $e0 $a7
    add b                                         ; $5ce4: $80
    nop                                           ; $5ce5: $00
    ld [hl], b                                    ; $5ce6: $70
    jp $e03b                                      ; $5ce7: $c3 $3b $e0


    db $e3                                        ; $5cea: $e3
    add $c1                                       ; $5ceb: $c6 $c1
    ret c                                         ; $5ced: $d8

    nop                                           ; $5cee: $00
    rlca                                          ; $5cef: $07
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    ld a, a                                       ; $5cf2: $7f
    add b                                         ; $5cf3: $80
    ld bc, $68c1                                  ; $5cf4: $01 $c1 $68
    nop                                           ; $5cf7: $00
    ld c, c                                       ; $5cf8: $49
    jr nc, jr_0ad_5d2e                            ; $5cf9: $30 $33

    add a                                         ; $5cfb: $87
    ld b, a                                       ; $5cfc: $47
    rst $00                                       ; $5cfd: $c7
    daa                                           ; $5cfe: $27
    rrca                                          ; $5cff: $0f
    ld bc, $f0f0                                  ; $5d00: $01 $f0 $f0
    ldh a, [rIF]                                  ; $5d03: $f0 $0f
    ld bc, $01fe                                  ; $5d05: $01 $fe $01
    sub [hl]                                      ; $5d08: $96
    ld bc, $0500                                  ; $5d09: $01 $00 $05
    ld [bc], a                                    ; $5d0c: $02
    cp $06                                        ; $5d0d: $fe $06
    ld a, [$8737]                                 ; $5d0f: $fa $37 $87
    cpl                                           ; $5d12: $2f
    nop                                           ; $5d13: $00

jr_0ad_5d14:
    adc a                                         ; $5d14: $8f
    and b                                         ; $5d15: $a0
    cpl                                           ; $5d16: $2f
    ld h, b                                       ; $5d17: $60
    ld l, a                                       ; $5d18: $6f
    ld b, b                                       ; $5d19: $40
    rra                                           ; $5d1a: $1f
    ld b, b                                       ; $5d1b: $40
    nop                                           ; $5d1c: $00
    rra                                           ; $5d1d: $1f
    ret nz                                        ; $5d1e: $c0

    rra                                           ; $5d1f: $1f
    add b                                         ; $5d20: $80
    ccf                                           ; $5d21: $3f
    rlca                                          ; $5d22: $07
    ld b, $fc                                     ; $5d23: $06 $fc
    inc d                                         ; $5d25: $14
    ld bc, $00fe                                  ; $5d26: $01 $fe $00
    ld [bc], a                                    ; $5d29: $02
    jr @+$01                                      ; $5d2a: $18 $ff

    dec a                                         ; $5d2c: $3d
    ld [bc], a                                    ; $5d2d: $02

jr_0ad_5d2e:
    ld h, b                                       ; $5d2e: $60
    sub b                                         ; $5d2f: $90
    nop                                           ; $5d30: $00
    add sp, -$28                                  ; $5d31: $e8 $d8
    ld h, h                                       ; $5d33: $64
    db $fc                                        ; $5d34: $fc
    adc h                                         ; $5d35: $8c
    cp [hl]                                       ; $5d36: $be
    ld h, $9f                                     ; $5d37: $26 $9f
    nop                                           ; $5d39: $00
    inc b                                         ; $5d3a: $04
    call c, Call_0ad_5b07                         ; $5d3b: $dc $07 $5b
    rla                                           ; $5d3e: $17
    ld e, e                                       ; $5d3f: $5b
    add e                                         ; $5d40: $83
    ld e, l                                       ; $5d41: $5d
    nop                                           ; $5d42: $00
    rst $28                                       ; $5d43: $ef
    and c                                         ; $5d44: $a1

jr_0ad_5d45:
    rst $00                                       ; $5d45: $c7
    ret nc                                        ; $5d46: $d0

    ld d, a                                       ; $5d47: $57
    ld h, b                                       ; $5d48: $60
    cpl                                           ; $5d49: $2f
    add sp, $00                                   ; $5d4a: $e8 $00

jr_0ad_5d4c:
    add a                                         ; $5d4c: $87
    sbc b                                         ; $5d4d: $98
    rlca                                          ; $5d4e: $07
    jr jr_0ad_5d14                                ; $5d4f: $18 $c3

    call nz, $e1e6                                ; $5d51: $c4 $e6 $e1
    nop                                           ; $5d54: $00
    adc a                                         ; $5d55: $8f
    add b                                         ; $5d56: $80
    ret nz                                        ; $5d57: $c0

    rra                                           ; $5d58: $1f
    ldh [$87], a                                  ; $5d59: $e0 $87
    ret nz                                        ; $5d5b: $c0

    jr c, jr_0ad_5d5e                             ; $5d5c: $38 $00

jr_0ad_5d5e:
    db $e4                                        ; $5d5e: $e4
    inc d                                         ; $5d5f: $14
    ret z                                         ; $5d60: $c8

    cpl                                           ; $5d61: $2f
    sub b                                         ; $5d62: $90
    ld e, h                                       ; $5d63: $5c
    ldh [rSVBK], a                                ; $5d64: $e0 $70
    nop                                           ; $5d66: $00
    ld [hl], b                                    ; $5d67: $70
    add sp, $78                                   ; $5d68: $e8 $78
    or b                                          ; $5d6a: $b0
    jr c, jr_0ad_5d45                             ; $5d6b: $38 $d8

    jr c, jr_0ad_5d4c                             ; $5d6d: $38 $dd

    nop                                           ; $5d6f: $00
    jr c, @+$5f                                   ; $5d70: $38 $5d

    jr c, @+$5a                                   ; $5d72: $38 $58

    jr c, jr_0ad_5dce                             ; $5d74: $38 $58

    ld b, $f8                                     ; $5d76: $06 $f8
    nop                                           ; $5d78: $00
    dec c                                         ; $5d79: $0d
    pop af                                        ; $5d7a: $f1
    db $fc                                        ; $5d7b: $fc
    pop af                                        ; $5d7c: $f1
    db $fc                                        ; $5d7d: $fc
    pop hl                                        ; $5d7e: $e1
    db $fc                                        ; $5d7f: $fc
    pop hl                                        ; $5d80: $e1
    nop                                           ; $5d81: $00
    ld hl, sp-$3d                                 ; $5d82: $f8 $c3
    ld hl, sp-$3e                                 ; $5d84: $f8 $c2
    ld hl, sp-$3e                                 ; $5d86: $f8 $c2
    add b                                         ; $5d88: $80
    ccf                                           ; $5d89: $3f
    inc e                                         ; $5d8a: $1c
    add b                                         ; $5d8b: $80
    ccf                                           ; $5d8c: $3f
    ld a, a                                       ; $5d8d: $7f
    ld d, b                                       ; $5d8e: $50
    ld [bc], a                                    ; $5d8f: $02
    inc b                                         ; $5d90: $04
    ld [$8a9c], sp                                ; $5d91: $08 $9c $8a
    ld b, $68                                     ; $5d94: $06 $68
    nop                                           ; $5d96: $00
    inc hl                                        ; $5d97: $23
    inc l                                         ; $5d98: $2c
    add hl, hl                                    ; $5d99: $29
    ld h, $87                                     ; $5d9a: $26 $87
    or b                                          ; $5d9c: $b0
    ret nz                                        ; $5d9d: $c0

    ret nc                                        ; $5d9e: $d0

    nop                                           ; $5d9f: $00
    rra                                           ; $5da0: $1f
    ret nz                                        ; $5da1: $c0

    nop                                           ; $5da2: $00
    ret nz                                        ; $5da3: $c0

    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    ld b, b                                       ; $5da6: $40
    ld b, e                                       ; $5da7: $43
    inc bc                                        ; $5da8: $03
    ld h, b                                       ; $5da9: $60
    sub b                                         ; $5daa: $90
    ld h, b                                       ; $5dab: $60
    ret nc                                        ; $5dac: $d0

    ld [hl], b                                    ; $5dad: $70
    ld c, b                                       ; $5dae: $48
    add [hl]                                      ; $5daf: $86
    ld a, [bc]                                    ; $5db0: $0a
    call z, Call_000_000a                         ; $5db1: $cc $0a $00
    ld hl, $0399                                  ; $5db4: $21 $99 $03
    ld [hl], d                                    ; $5db7: $72
    inc bc                                        ; $5db8: $03
    ld b, h                                       ; $5db9: $44
    rla                                           ; $5dba: $17
    jr @-$7e                                      ; $5dbb: $18 $80

jr_0ad_5dbd:
    db $10                                        ; $5dbd: $10
    jr @+$01                                      ; $5dbe: $18 $ff

    nop                                           ; $5dc0: $00
    jr nc, jr_0ad_5e00                            ; $5dc1: $30 $3d

    and b                                         ; $5dc3: $a0
    ld a, e                                       ; $5dc4: $7b
    ld h, c                                       ; $5dc5: $61
    db $10                                        ; $5dc6: $10
    ret nz                                        ; $5dc7: $c0

    dec e                                         ; $5dc8: $1d
    ldh a, [rNR10]                                ; $5dc9: $f0 $10
    jr z, jr_0ad_5dbd                             ; $5dcb: $28 $f0

    add [hl]                                      ; $5dcd: $86

jr_0ad_5dce:
    ldh a, [$84]                                  ; $5dce: $f0 $84
    nop                                           ; $5dd0: $00
    ldh a, [$84]                                  ; $5dd1: $f0 $84
    ldh [$0c], a                                  ; $5dd3: $e0 $0c
    ld [$f803], sp                                ; $5dd5: $08 $03 $f8
    inc bc                                        ; $5dd8: $03
    ld h, b                                       ; $5dd9: $60
    inc bc                                        ; $5dda: $03
    inc [hl]                                      ; $5ddb: $34
    jr nz, jr_0ad_5de2                            ; $5ddc: $20 $04

    ld c, e                                       ; $5dde: $4b
    db $10                                        ; $5ddf: $10
    inc bc                                        ; $5de0: $03
    and e                                         ; $5de1: $a3

jr_0ad_5de2:
    ld [bc], a                                    ; $5de2: $02
    ld d, b                                       ; $5de3: $50
    nop                                           ; $5de4: $00
    ld bc, $ff50                                  ; $5de5: $01 $50 $ff
    rrca                                          ; $5de8: $0f
    ld c, b                                       ; $5de9: $48
    ld hl, sp+$03                                 ; $5dea: $f8 $03
    pop hl                                        ; $5dec: $e1
    ld bc, $0f40                                  ; $5ded: $01 $40 $0f
    jr nz, jr_0ad_5e0a                            ; $5df0: $20 $18

    cp $00                                        ; $5df2: $fe $00
    ret nz                                        ; $5df4: $c0

    inc b                                         ; $5df5: $04
    ld c, $10                                     ; $5df6: $0e $10
    nop                                           ; $5df8: $00
    ld l, b                                       ; $5df9: $68
    add hl, de                                    ; $5dfa: $19
    add d                                         ; $5dfb: $82
    inc bc                                        ; $5dfc: $03
    nop                                           ; $5dfd: $00
    add e                                         ; $5dfe: $83
    inc a                                         ; $5dff: $3c

jr_0ad_5e00:
    jr c, jr_0ad_5e02                             ; $5e00: $38 $00

jr_0ad_5e02:
    dec a                                         ; $5e02: $3d
    rlca                                          ; $5e03: $07
    ld e, $03                                     ; $5e04: $1e $03
    ld c, [hl]                                    ; $5e06: $4e
    sub [hl]                                      ; $5e07: $96
    and b                                         ; $5e08: $a0
    ld c, c                                       ; $5e09: $49

jr_0ad_5e0a:
    ld [$360c], sp                                ; $5e0a: $08 $0c $36
    rrca                                          ; $5e0d: $0f
    halt                                          ; $5e0e: $76
    ld b, b                                       ; $5e0f: $40
    ld [$007f], sp                                ; $5e10: $08 $7f $00
    cpl                                           ; $5e13: $2f
    nop                                           ; $5e14: $00
    and b                                         ; $5e15: $a0
    ldh [$c0], a                                  ; $5e16: $e0 $c0
    ld e, l                                       ; $5e18: $5d
    inc a                                         ; $5e19: $3c
    ld d, $15                                     ; $5e1a: $16 $15
    ld h, b                                       ; $5e1c: $60
    ld b, b                                       ; $5e1d: $40
    ld h, b                                       ; $5e1e: $60
    ld c, d                                       ; $5e1f: $4a
    jr c, jr_0ad_5ea1                             ; $5e20: $38 $7f

    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    rra                                           ; $5e24: $1f
    ret nz                                        ; $5e25: $c0

    add e                                         ; $5e26: $83
    ret nz                                        ; $5e27: $c0

    ld h, b                                       ; $5e28: $60
    ld e, b                                       ; $5e29: $58
    ld c, d                                       ; $5e2a: $4a
    ld [$fc00], sp                                ; $5e2b: $08 $00 $fc
    inc bc                                        ; $5e2e: $03
    ld a, [c]                                     ; $5e2f: $f2
    db $ec                                        ; $5e30: $ec
    ldh [$08], a                                  ; $5e31: $e0 $08
    add sp, -$1c                                  ; $5e33: $e8 $e4
    inc bc                                        ; $5e35: $03
    ld a, [c]                                     ; $5e36: $f2
    ld a, [bc]                                    ; $5e37: $0a
    nop                                           ; $5e38: $00
    inc bc                                        ; $5e39: $03
    ld [hl], b                                    ; $5e3a: $70
    ld h, b                                       ; $5e3b: $60
    nop                                           ; $5e3c: $00
    ldh [$af], a                                  ; $5e3d: $e0 $af
    inc e                                         ; $5e3f: $1c
    inc bc                                        ; $5e40: $03
    ld b, c                                       ; $5e41: $41
    cp [hl]                                       ; $5e42: $be
    dec a                                         ; $5e43: $3d
    ld [de], a                                    ; $5e44: $12
    nop                                           ; $5e45: $00
    ret nz                                        ; $5e46: $c0

    ld e, a                                       ; $5e47: $5f
    sbc $5f                                       ; $5e48: $de $5f
    ld c, a                                       ; $5e4a: $4f
    ld c, [hl]                                    ; $5e4b: $4e
    add hl, de                                    ; $5e4c: $19
    ld l, d                                       ; $5e4d: $6a
    nop                                           ; $5e4e: $00
    ld a, [c]                                     ; $5e4f: $f2
    ld sp, hl                                     ; $5e50: $f9
    inc sp                                        ; $5e51: $33
    ld hl, sp-$08                                 ; $5e52: $f8 $f8
    ld hl, sp-$0d                                 ; $5e54: $f8 $f3
    db $f4                                        ; $5e56: $f4
    nop                                           ; $5e57: $00
    add sp, -$11                                  ; $5e58: $e8 $ef
    reti                                          ; $5e5a: $d9


    sub $1f                                       ; $5e5b: $d6 $1f
    adc $3e                                       ; $5e5d: $ce $3e
    ld sp, $fe00                                  ; $5e5f: $31 $00 $fe
    pop af                                        ; $5e62: $f1
    ld hl, $111f                                  ; $5e63: $21 $1f $11
    rrca                                          ; $5e66: $0f
    rlca                                          ; $5e67: $07
    db $e4                                        ; $5e68: $e4
    nop                                           ; $5e69: $00
    nop                                           ; $5e6a: $00

jr_0ad_5e6b:
    ld hl, sp-$0e                                 ; $5e6b: $f8 $f2
    inc l                                         ; $5e6d: $2c
    dec b                                         ; $5e6e: $05
    ld [bc], a                                    ; $5e6f: $02

jr_0ad_5e70:
    cp h                                          ; $5e70: $bc
    jr nc, jr_0ad_5e73                            ; $5e71: $30 $00

jr_0ad_5e73:
    ccf                                           ; $5e73: $3f
    sbc a                                         ; $5e74: $9f
    rst $18                                       ; $5e75: $df
    rra                                           ; $5e76: $1f
    call z, $271f                                 ; $5e77: $cc $1f $27
    and c                                         ; $5e7a: $a1
    nop                                           ; $5e7b: $00
    ld l, e                                       ; $5e7c: $6b
    ld d, c                                       ; $5e7d: $51
    cp e                                          ; $5e7e: $bb
    ld a, b                                       ; $5e7f: $78
    dec sp                                        ; $5e80: $3b
    ret nz                                        ; $5e81: $c0

    jr nc, @+$0a                                  ; $5e82: $30 $08

    nop                                           ; $5e84: $00
    adc h                                         ; $5e85: $8c
    ld [$d235], sp                                ; $5e86: $08 $35 $d2
    adc c                                         ; $5e89: $89
    ld a, b                                       ; $5e8a: $78
    jr c, jr_0ad_5e6b                             ; $5e8b: $38 $de

    jr jr_0ad_5ea7                                ; $5e8d: $18 $18

    xor $01                                       ; $5e8f: $ee $01
    ld e, d                                       ; $5e91: $5a
    nop                                           ; $5e92: $00
    ret nc                                        ; $5e93: $d0

    db $10                                        ; $5e94: $10
    ccf                                           ; $5e95: $3f
    add b                                         ; $5e96: $80
    rra                                           ; $5e97: $1f
    nop                                           ; $5e98: $00
    ld l, a                                       ; $5e99: $6f
    rrca                                          ; $5e9a: $0f
    sbc a                                         ; $5e9b: $9f
    ld e, a                                       ; $5e9c: $5f
    sbc a                                         ; $5e9d: $9f
    rra                                           ; $5e9e: $1f
    ccf                                           ; $5e9f: $3f
    ld a, a                                       ; $5ea0: $7f

jr_0ad_5ea1:
    nop                                           ; $5ea1: $00
    ld b, $01                                     ; $5ea2: $06 $01
    add hl, de                                    ; $5ea4: $19
    ld e, $3a                                     ; $5ea5: $1e $3a

jr_0ad_5ea7:
    inc [hl]                                      ; $5ea7: $34
    ld [hl], b                                    ; $5ea8: $70
    ld l, c                                       ; $5ea9: $69
    nop                                           ; $5eaa: $00
    ldh a, [$e7]                                  ; $5eab: $f0 $e7
    ldh [$cf], a                                  ; $5ead: $e0 $cf
    ldh [$cf], a                                  ; $5eaf: $e0 $cf
    rst $08                                       ; $5eb1: $cf
    ldh [rP1], a                                  ; $5eb2: $e0 $00
    scf                                           ; $5eb4: $37
    and a                                         ; $5eb5: $a7
    ld b, b                                       ; $5eb6: $40
    dec de                                        ; $5eb7: $1b
    add sp, $09                                   ; $5eb8: $e8 $09
    db $e4                                        ; $5eba: $e4
    inc b                                         ; $5ebb: $04
    nop                                           ; $5ebc: $00
    ldh a, [$03]                                  ; $5ebd: $f0 $03
    ld a, [$f803]                                 ; $5ebf: $fa $03 $f8
    nop                                           ; $5ec2: $00
    ld bc, $00fd                                  ; $5ec3: $01 $fd $00
    ld [$26d0], sp                                ; $5ec6: $08 $d0 $26
    pop hl                                        ; $5ec9: $e1
    dec l                                         ; $5eca: $2d
    add sp, $27                                   ; $5ecb: $e8 $27
    ld [c], a                                     ; $5ecd: $e2
    nop                                           ; $5ece: $00
    ld d, c                                       ; $5ecf: $51
    ld e, [hl]                                    ; $5ed0: $5e
    ld [de], a                                    ; $5ed1: $12
    dec hl                                        ; $5ed2: $2b
    scf                                           ; $5ed3: $37
    ld a, [c]                                     ; $5ed4: $f2
    ld h, l                                       ; $5ed5: $65
    sbc [hl]                                      ; $5ed6: $9e
    nop                                           ; $5ed7: $00
    db $db                                        ; $5ed8: $db
    inc bc                                        ; $5ed9: $03

jr_0ad_5eda:
    inc a                                         ; $5eda: $3c
    add b                                         ; $5edb: $80
    ld [bc], a                                    ; $5edc: $02
    add e                                         ; $5edd: $83
    ld a, [c]                                     ; $5ede: $f2
    rst $28                                       ; $5edf: $ef
    nop                                           ; $5ee0: $00
    jr jr_0ad_5e70                                ; $5ee1: $18 $8d

    nop                                           ; $5ee3: $00
    rst $38                                       ; $5ee4: $ff
    db $fd                                        ; $5ee5: $fd
    add d                                         ; $5ee6: $82
    ld d, h                                       ; $5ee7: $54
    db $fd                                        ; $5ee8: $fd
    nop                                           ; $5ee9: $00
    add h                                         ; $5eea: $84
    add e                                         ; $5eeb: $83
    ld h, b                                       ; $5eec: $60
    dec de                                        ; $5eed: $1b
    add a                                         ; $5eee: $87
    add h                                         ; $5eef: $84
    jp Jump_000_00a0                              ; $5ef0: $c3 $a0 $00


    ld c, a                                       ; $5ef3: $4f
    ld h, h                                       ; $5ef4: $64
    sbc [hl]                                      ; $5ef5: $9e
    ld a, d                                       ; $5ef6: $7a
    ld b, $a6                                     ; $5ef7: $06 $a6
    ld d, l                                       ; $5ef9: $55
    ld d, b                                       ; $5efa: $50
    nop                                           ; $5efb: $00
    add h                                         ; $5efc: $84
    ld [bc], a                                    ; $5efd: $02
    call z, Call_000_030c                         ; $5efe: $cc $0c $03
    sbc b                                         ; $5f01: $98
    daa                                           ; $5f02: $27
    or b                                          ; $5f03: $b0
    nop                                           ; $5f04: $00
    ld h, b                                       ; $5f05: $60
    cpl                                           ; $5f06: $2f
    ret nz                                        ; $5f07: $c0

    rra                                           ; $5f08: $1f
    ld e, a                                       ; $5f09: $5f
    ret nz                                        ; $5f0a: $c0

    cp a                                          ; $5f0b: $bf
    add b                                         ; $5f0c: $80
    nop                                           ; $5f0d: $00
    ld b, b                                       ; $5f0e: $40
    and b                                         ; $5f0f: $a0
    jr c, jr_0ad_5eda                             ; $5f10: $38 $c8

    scf                                           ; $5f12: $37
    ld c, e                                       ; $5f13: $4b
    sbc c                                         ; $5f14: $99
    rlca                                          ; $5f15: $07
    nop                                           ; $5f16: $00
    db $e4                                        ; $5f17: $e4
    rlca                                          ; $5f18: $07
    db $f4                                        ; $5f19: $f4
    rlca                                          ; $5f1a: $07
    db $f4                                        ; $5f1b: $f4
    inc bc                                        ; $5f1c: $03
    db $f4                                        ; $5f1d: $f4
    rlca                                          ; $5f1e: $07
    nop                                           ; $5f1f: $00
    ld c, a                                       ; $5f20: $4f
    ld h, b                                       ; $5f21: $60
    scf                                           ; $5f22: $37
    ld b, a                                       ; $5f23: $47
    scf                                           ; $5f24: $37
    ld b, a                                       ; $5f25: $47
    ldh a, [$c6]                                  ; $5f26: $f0 $c6
    nop                                           ; $5f28: $00
    ldh a, [$c8]                                  ; $5f29: $f0 $c8
    ld [bc], a                                    ; $5f2b: $02
    inc h                                         ; $5f2c: $24
    rrca                                          ; $5f2d: $0f
    rra                                           ; $5f2e: $1f
    jr nz, jr_0ad_5f70                            ; $5f2f: $20 $3f

    nop                                           ; $5f31: $00
    ld bc, $fcfc                                  ; $5f32: $01 $fc $fc
    ld bc, $01f9                                  ; $5f35: $01 $f9 $01
    nop                                           ; $5f38: $00
    ld [bc], a                                    ; $5f39: $02
    nop                                           ; $5f3a: $00
    ld e, $86                                     ; $5f3b: $1e $86
    ld e, c                                       ; $5f3d: $59
    ld c, $2c                                     ; $5f3e: $0e $2c
    rrca                                          ; $5f40: $0f
    or a                                          ; $5f41: $b7
    and a                                         ; $5f42: $a7
    nop                                           ; $5f43: $00
    ret                                           ; $5f44: $c9


    ld e, a                                       ; $5f45: $5f
    cp l                                          ; $5f46: $bd
    ld d, $51                                     ; $5f47: $16 $51
    ld d, $4e                                     ; $5f49: $16 $4e
    dec b                                         ; $5f4b: $05
    nop                                           ; $5f4c: $00
    inc c                                         ; $5f4d: $0c
    ld e, d                                       ; $5f4e: $5a
    inc e                                         ; $5f4f: $1c
    ld c, d                                       ; $5f50: $4a
    inc b                                         ; $5f51: $04
    ret nz                                        ; $5f52: $c0

    add b                                         ; $5f53: $80
    jr c, jr_0ad_5f56                             ; $5f54: $38 $00

jr_0ad_5f56:
    rra                                           ; $5f56: $1f
    ld a, b                                       ; $5f57: $78
    rla                                           ; $5f58: $17
    scf                                           ; $5f59: $37
    dec e                                         ; $5f5a: $1d
    xor [hl]                                      ; $5f5b: $ae
    dec e                                         ; $5f5c: $1d
    ld a, [hl+]                                   ; $5f5d: $2a
    nop                                           ; $5f5e: $00
    inc e                                         ; $5f5f: $1c
    ld l, l                                       ; $5f60: $6d
    inc c                                         ; $5f61: $0c
    halt                                          ; $5f62: $76
    ld e, $c4                                     ; $5f63: $1e $c4
    ld e, $a4                                     ; $5f65: $1e $a4
    nop                                           ; $5f67: $00
    or [hl]                                       ; $5f68: $b6
    inc bc                                        ; $5f69: $03
    rst $30                                       ; $5f6a: $f7
    add e                                         ; $5f6b: $83
    sub d                                         ; $5f6c: $92
    call nc, $d818                                ; $5f6d: $d4 $18 $d8

jr_0ad_5f70:
    nop                                           ; $5f70: $00
    ld c, h                                       ; $5f71: $4c
    add sp, $26                                   ; $5f72: $e8 $26
    xor d                                         ; $5f74: $aa
    ld [hl], $f2                                  ; $5f75: $36 $f2
    ld [hl-], a                                   ; $5f77: $32
    call c, $46c0                                 ; $5f78: $dc $c0 $46
    ld bc, $0149                                  ; $5f7b: $01 $49 $01
    rst $38                                       ; $5f7e: $ff
    nop                                           ; $5f7f: $00

jr_0ad_5f80:
    inc bc                                        ; $5f80: $03
    nop                                           ; $5f81: $00
    xor c                                         ; $5f82: $a9
    ldh [rP1], a                                  ; $5f83: $e0 $00
    ldh [$64], a                                  ; $5f85: $e0 $64
    ld [bc], a                                    ; $5f87: $02
    ld [hl], h                                    ; $5f88: $74
    ld b, $f2                                     ; $5f89: $06 $f2
    ld c, $ea                                     ; $5f8b: $0e $ea
    nop                                           ; $5f8d: $00
    and $e8                                       ; $5f8e: $e6 $e8
    db $e4                                        ; $5f90: $e4
    add sp, -$34                                  ; $5f91: $e8 $cc
    ret nc                                        ; $5f93: $d0

    call z, Call_000_00d0                         ; $5f94: $cc $d0 $00
    ld c, a                                       ; $5f97: $4f
    rla                                           ; $5f98: $17
    rrca                                          ; $5f99: $0f
    rla                                           ; $5f9a: $17
    ld b, e                                       ; $5f9b: $43
    ld a, [hl]                                    ; $5f9c: $7e
    rrca                                          ; $5f9d: $0f
    ld [hl], b                                    ; $5f9e: $70
    nop                                           ; $5f9f: $00
    ld h, b                                       ; $5fa0: $60
    ld h, b                                       ; $5fa1: $60
    add b                                         ; $5fa2: $80
    add b                                         ; $5fa3: $80
    db $fc                                        ; $5fa4: $fc
    ld a, [c]                                     ; $5fa5: $f2
    inc b                                         ; $5fa6: $04
    ld [bc], a                                    ; $5fa7: $02
    nop                                           ; $5fa8: $00
    dec b                                         ; $5fa9: $05
    inc bc                                        ; $5faa: $03
    ld b, $03                                     ; $5fab: $06 $03
    or b                                          ; $5fad: $b0
    rlca                                          ; $5fae: $07
    add a                                         ; $5faf: $87
    ld [hl], $00                                  ; $5fb0: $36 $00
    ld b, $95                                     ; $5fb2: $06 $95
    rlca                                          ; $5fb4: $07
    ld sp, $c602                                  ; $5fb5: $31 $02 $c6
    ld a, [hl]                                    ; $5fb8: $7e
    xor $00                                       ; $5fb9: $ee $00
    ld a, l                                       ; $5fbb: $7d
    ld b, e                                       ; $5fbc: $43
    ld h, [hl]                                    ; $5fbd: $66
    ld e, d                                       ; $5fbe: $5a
    ld c, $bc                                     ; $5fbf: $0e $bc

jr_0ad_5fc1:
    ld c, h                                       ; $5fc1: $4c

jr_0ad_5fc2:
    ld d, d                                       ; $5fc2: $52
    nop                                           ; $5fc3: $00
    jp nz, $d0e6                                  ; $5fc4: $c2 $e6 $d0

    jr nz, jr_0ad_5fe5                            ; $5fc7: $20 $1c

    db $e4                                        ; $5fc9: $e4
    ldh [$58], a                                  ; $5fca: $e0 $58
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    ld [$81c1], sp                                ; $5fce: $08 $c1 $81
    or d                                          ; $5fd1: $b2
    adc h                                         ; $5fd2: $8c
    inc hl                                        ; $5fd3: $23

jr_0ad_5fd4:
    ccf                                           ; $5fd4: $3f

jr_0ad_5fd5:
    nop                                           ; $5fd5: $00
    inc b                                         ; $5fd6: $04
    inc b                                         ; $5fd7: $04
    jr c, jr_0ad_5fc2                             ; $5fd8: $38 $e8

    ld a, b                                       ; $5fda: $78
    pop bc                                        ; $5fdb: $c1
    db $10                                        ; $5fdc: $10
    ld l, c                                       ; $5fdd: $69
    nop                                           ; $5fde: $00
    add h                                         ; $5fdf: $84
    nop                                           ; $5fe0: $00
    reti                                          ; $5fe1: $d9


    dec h                                         ; $5fe2: $25
    ld [hl-], a                                   ; $5fe3: $32
    ret c                                         ; $5fe4: $d8

jr_0ad_5fe5:
    jr nc, jr_0ad_5fc1                            ; $5fe5: $30 $da

    nop                                           ; $5fe7: $00
    inc c                                         ; $5fe8: $0c
    adc h                                         ; $5fe9: $8c
    ld b, l                                       ; $5fea: $45
    ld [hl], h                                    ; $5feb: $74
    ld sp, $7012                                  ; $5fec: $31 $12 $70
    or d                                          ; $5fef: $b2
    nop                                           ; $5ff0: $00
    add sp, -$40                                  ; $5ff1: $e8 $c0
    dec b                                         ; $5ff3: $05
    add hl, de                                    ; $5ff4: $19
    ld b, $70                                     ; $5ff5: $06 $70
    ld [hl-], a                                   ; $5ff7: $32
    jr nc, jr_0ad_5ffa                            ; $5ff8: $30 $00

jr_0ad_5ffa:
    sub b                                         ; $5ffa: $90
    ld b, [hl]                                    ; $5ffb: $46
    add b                                         ; $5ffc: $80
    push de                                       ; $5ffd: $d5
    jr nz, jr_0ad_5f80                            ; $5ffe: $20 $80

    ld [hl], e                                    ; $6000: $73
    inc bc                                        ; $6001: $03
    nop                                           ; $6002: $00

jr_0ad_6003:
    and d                                         ; $6003: $a2
    ld [hl], b                                    ; $6004: $70
    xor b                                         ; $6005: $a8
    ret c                                         ; $6006: $d8

    rra                                           ; $6007: $1f
    and a                                         ; $6008: $a7
    rra                                           ; $6009: $1f
    and a                                         ; $600a: $a7
    jr nz, jr_0ad_603d                            ; $600b: $20 $30

    and b                                         ; $600d: $a0
    ld h, e                                       ; $600e: $63
    nop                                           ; $600f: $00
    ld e, a                                       ; $6010: $5f
    ld h, b                                       ; $6011: $60
    ld e, a                                       ; $6012: $5f
    jr nz, jr_0ad_5fd5                            ; $6013: $20 $c0

    nop                                           ; $6015: $00
    ld h, b                                       ; $6016: $60
    ret nz                                        ; $6017: $c0

    ld [bc], a                                    ; $6018: $02
    ld bc, $0102                                  ; $6019: $01 $02 $01
    inc bc                                        ; $601c: $03
    ld bc, $0030                                  ; $601d: $01 $30 $00
    ld bc, $0003                                  ; $6020: $01 $03 $00
    ld [bc], a                                    ; $6023: $02
    nop                                           ; $6024: $00

jr_0ad_6025:
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    ld h, d                                       ; $6027: $62
    ld e, $08                                     ; $6028: $1e $08
    inc a                                         ; $602a: $3c
    sbc b                                         ; $602b: $98
    jr c, @-$66                                   ; $602c: $38 $98

    inc bc                                        ; $602e: $03
    nop                                           ; $602f: $00
    jr c, jr_0ad_6003                             ; $6030: $38 $d1

    ld de, $d100                                  ; $6032: $11 $00 $d1
    inc de                                        ; $6035: $13
    sub e                                         ; $6036: $93
    ret nz                                        ; $6037: $c0

    adc c                                         ; $6038: $89
    ld [hl], c                                    ; $6039: $71
    call z, $00b4                                 ; $603a: $cc $b4 $00

jr_0ad_603d:
    ld [$8010], sp                                ; $603d: $08 $10 $80
    ld b, b                                       ; $6040: $40
    ld de, $31e1                                  ; $6041: $11 $e1 $31
    pop bc                                        ; $6044: $c1
    nop                                           ; $6045: $00
    or b                                          ; $6046: $b0
    ld b, b                                       ; $6047: $40
    ld [de], a                                    ; $6048: $12
    ldh a, [$7c]                                  ; $6049: $f0 $7c
    adc l                                         ; $604b: $8d
    ld a, h                                       ; $604c: $7c
    sbc l                                         ; $604d: $9d
    nop                                           ; $604e: $00
    push de                                       ; $604f: $d5
    xor l                                         ; $6050: $ad
    ld h, b                                       ; $6051: $60
    jr nc, jr_0ad_5fd4                            ; $6052: $30 $80

    nop                                           ; $6054: $00
    sub c                                         ; $6055: $91
    ld h, c                                       ; $6056: $61
    nop                                           ; $6057: $00
    sub b                                         ; $6058: $90
    ld h, b                                       ; $6059: $60
    ldh [$e0], a                                  ; $605a: $e0 $e0
    add l                                         ; $605c: $85
    ld sp, hl                                     ; $605d: $f9
    push bc                                       ; $605e: $c5
    cp c                                          ; $605f: $b9
    nop                                           ; $6060: $00
    ld hl, sp+$78                                 ; $6061: $f8 $78
    jr nc, jr_0ad_6025                            ; $6063: $30 $c0

    ld bc, $c500                                  ; $6065: $01 $00 $c5
    dec a                                         ; $6068: $3d
    jr nz, @-$36                                  ; $6069: $20 $c8

    ld [hl], b                                    ; $606b: $70
    ld h, l                                       ; $606c: $65
    ld [bc], a                                    ; $606d: $02
    nop                                           ; $606e: $00
    ldh [$c1], a                                  ; $606f: $e0 $c1
    nop                                           ; $6071: $00
    ld bc, $e100                                  ; $6072: $01 $00 $e1
    ret c                                         ; $6075: $d8

    pop af                                        ; $6076: $f1
    ld a, b                                       ; $6077: $78
    ld [bc], a                                    ; $6078: $02
    pop hl                                        ; $6079: $e1

jr_0ad_607a:
    inc bc                                        ; $607a: $03
    ld a, [bc]                                    ; $607b: $0a
    nop                                           ; $607c: $00
    inc bc                                        ; $607d: $03
    add hl, sp                                    ; $607e: $39
    ret nz                                        ; $607f: $c0

    add b                                         ; $6080: $80
    ld b, b                                       ; $6081: $40
    add b                                         ; $6082: $80
    ld b, b                                       ; $6083: $40
    ret nz                                        ; $6084: $c0

    inc bc                                        ; $6085: $03
    add b                                         ; $6086: $80
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    add b                                         ; $6089: $80
    add b                                         ; $608a: $80
    nop                                           ; $608b: $00
    ld b, $00                                     ; $608c: $06 $00
    sbc a                                         ; $608e: $9f
    ld [hl+], a                                   ; $608f: $22
    ld b, b                                       ; $6090: $40
    cp a                                          ; $6091: $bf
    sbc d                                         ; $6092: $9a
    ld [hl-], a                                   ; $6093: $32
    jp $e0e0                                      ; $6094: $c3 $e0 $e0


    inc bc                                        ; $6097: $03
    ld h, b                                       ; $6098: $60
    ld b, e                                       ; $6099: $43
    nop                                           ; $609a: $00
    ldh a, [$83]                                  ; $609b: $f0 $83
    ldh a, [$80]                                  ; $609d: $f0 $80
    ld hl, $381e                                  ; $609f: $21 $1e $38
    daa                                           ; $60a2: $27
    nop                                           ; $60a3: $00
    rrca                                          ; $60a4: $0f
    inc sp                                        ; $60a5: $33
    rla                                           ; $60a6: $17
    ld a, [c]                                     ; $60a7: $f2
    dec h                                         ; $60a8: $25
    pop hl                                        ; $60a9: $e1
    daa                                           ; $60aa: $27
    ld [c], a                                     ; $60ab: $e2
    nop                                           ; $60ac: $00
    dec d                                         ; $60ad: $15
    or $00                                        ; $60ae: $f6 $00
    nop                                           ; $60b0: $00
    db $e3                                        ; $60b1: $e3
    inc hl                                        ; $60b2: $23
    ld sp, $00c1                                  ; $60b3: $31 $c1 $00
    rrca                                          ; $60b6: $0f
    pop af                                        ; $60b7: $f1
    jr nc, jr_0ad_607a                            ; $60b8: $30 $c0

    push af                                       ; $60ba: $f5
    dec c                                         ; $60bb: $0d
    ld a, b                                       ; $60bc: $78
    sbc c                                         ; $60bd: $99
    nop                                           ; $60be: $00
    ldh a, [$3d]                                  ; $60bf: $f0 $3d
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    pop hl                                        ; $60c3: $e1
    ld a, a                                       ; $60c4: $7f
    ldh a, [$cf]                                  ; $60c5: $f0 $cf
    nop                                           ; $60c7: $00
    inc e                                         ; $60c8: $1c
    inc de                                        ; $60c9: $13
    ld e, h                                       ; $60ca: $5c
    ld a, [hl-]                                   ; $60cb: $3a
    ld e, [hl]                                    ; $60cc: $5e
    xor b                                         ; $60cd: $a8
    sub b                                         ; $60ce: $90
    ld l, [hl]                                    ; $60cf: $6e
    nop                                           ; $60d0: $00
    ret nc                                        ; $60d1: $d0

    xor [hl]                                      ; $60d2: $ae
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    ld a, [hl]                                    ; $60d5: $7e
    db $d3                                        ; $60d6: $d3
    add e                                         ; $60d7: $83
    ld b, h                                       ; $60d8: $44
    nop                                           ; $60d9: $00
    rst $00                                       ; $60da: $c7
    jp hl                                         ; $60db: $e9


    rlca                                          ; $60dc: $07
    inc [hl]                                      ; $60dd: $34
    rlca                                          ; $60de: $07
    jr nc, jr_0ad_60e8                            ; $60df: $30 $07

    ld sp, $0f00                                  ; $60e1: $31 $00 $0f
    ld bc, $0d03                                  ; $60e4: $01 $03 $0d
    rst $20                                       ; $60e7: $e7

jr_0ad_60e8:
    dec de                                        ; $60e8: $1b
    inc c                                         ; $60e9: $0c
    ldh a, [rNR41]                                ; $60ea: $f0 $20
    inc e                                         ; $60ec: $1c
    db $e4                                        ; $60ed: $e4
    and b                                         ; $60ee: $a0
    ld l, d                                       ; $60ef: $6a
    db $10                                        ; $60f0: $10
    inc bc                                        ; $60f1: $03
    ld d, a                                       ; $60f2: $57
    ld [bc], a                                    ; $60f3: $02
    ld h, b                                       ; $60f4: $60
    nop                                           ; $60f5: $00
    ld bc, $23f8                                  ; $60f6: $01 $f8 $23
    nop                                           ; $60f9: $00

jr_0ad_60fa:
    cp $00                                        ; $60fa: $fe $00
    db $fc                                        ; $60fc: $fc
    ld bc, $0003                                  ; $60fd: $01 $03 $00
    ld hl, sp+$03                                 ; $6100: $f8 $03
    ld [c], a                                     ; $6102: $e2

Jump_0ad_6103:
    inc bc                                        ; $6103: $03
    jr jr_0ad_6106                                ; $6104: $18 $00

jr_0ad_6106:
    rst $20                                       ; $6106: $e7
    jr jr_0ad_6109                                ; $6107: $18 $00

jr_0ad_6109:
    jp $813c                                      ; $6109: $c3 $3c $81


    ld h, [hl]                                    ; $610c: $66
    nop                                           ; $610d: $00
    nop                                           ; $610e: $00
    ld bc, $041f                                  ; $610f: $01 $1f $04
    db $e3                                        ; $6112: $e3
    ld c, $fb                                     ; $6113: $0e $fb
    db $fc                                        ; $6115: $fc
    jr c, jr_0ad_6158                             ; $6116: $38 $40

    ld [$00ff], sp                                ; $6118: $08 $ff $00
    nop                                           ; $611b: $00
    ld a, a                                       ; $611c: $7f
    nop                                           ; $611d: $00
    add b                                         ; $611e: $80
    nop                                           ; $611f: $00
    jr jr_0ad_60fa                                ; $6120: $18 $d8

    add $0e                                       ; $6122: $c6 $0e
    jr c, @-$0d                                   ; $6124: $38 $f1

    dec e                                         ; $6126: $1d
    ld d, b                                       ; $6127: $50
    ld hl, sp+$59                                 ; $6128: $f8 $59
    ld h, b                                       ; $612a: $60
    ld e, l                                       ; $612b: $5d
    nop                                           ; $612c: $00
    ld bc, $03fc                                  ; $612d: $01 $fc $03
    nop                                           ; $6130: $00
    ldh a, [$0e]                                  ; $6131: $f0 $0e
    ldh [$d8], a                                  ; $6133: $e0 $d8
    pop bc                                        ; $6135: $c1
    jr nc, jr_0ad_613f                            ; $6136: $30 $07

    rst $28                                       ; $6138: $ef
    nop                                           ; $6139: $00
    rrca                                          ; $613a: $0f
    inc bc                                        ; $613b: $03
    ld [hl-], a                                   ; $613c: $32
    ld h, c                                       ; $613d: $61
    dec c                                         ; $613e: $0d

jr_0ad_613f:
    pop bc                                        ; $613f: $c1
    dec e                                         ; $6140: $1d
    ccf                                           ; $6141: $3f
    nop                                           ; $6142: $00
    ld bc, $03fd                                  ; $6143: $01 $fd $03
    nop                                           ; $6146: $00
    db $fc                                        ; $6147: $fc
    inc bc                                        ; $6148: $03
    ld a, [$0007]                                 ; $6149: $fa $07 $00
    rrca                                          ; $614c: $0f
    inc bc                                        ; $614d: $03
    db $fd                                        ; $614e: $fd
    ld e, $ee                                     ; $614f: $1e $ee
    ld hl, sp-$1a                                 ; $6151: $f8 $e6
    ldh a, [rP1]                                  ; $6153: $f0 $00
    inc c                                         ; $6155: $0c
    add a                                         ; $6156: $87
    ld a, c                                       ; $6157: $79

jr_0ad_6158:
    ldh a, [$90]                                  ; $6158: $f0 $90
    rra                                           ; $615a: $1f
    ld [bc], a                                    ; $615b: $02
    jr nc, jr_0ad_615e                            ; $615c: $30 $00

jr_0ad_615e:
    add [hl]                                      ; $615e: $86
    ld b, $ec                                     ; $615f: $06 $ec
    dec c                                         ; $6161: $0d
    sub h                                         ; $6162: $94
    rla                                           ; $6163: $17
    inc e                                         ; $6164: $1c
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    dec de                                        ; $6167: $1b
    dec de                                        ; $6168: $1b
    inc sp                                        ; $6169: $33
    ld sp, $f05e                                  ; $616a: $31 $5e $f0
    scf                                           ; $616d: $37
    ldh [rP1], a                                  ; $616e: $e0 $00
    pop bc                                        ; $6170: $c1
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    ret nz                                        ; $6173: $c0

    nop                                           ; $6174: $00
    ret nz                                        ; $6175: $c0

    ld e, a                                       ; $6176: $5f
    ret nz                                        ; $6177: $c0

    nop                                           ; $6178: $00
    rrca                                          ; $6179: $0f
    ret nz                                        ; $617a: $c0

    db $10                                        ; $617b: $10
    ret nz                                        ; $617c: $c0

    ret c                                         ; $617d: $d8

    nop                                           ; $617e: $00
    rra                                           ; $617f: $1f
    rra                                           ; $6180: $1f
    ld c, b                                       ; $6181: $48
    ld l, $d0                                     ; $6182: $2e $d0
    ld e, b                                       ; $6184: $58
    add b                                         ; $6185: $80
    nop                                           ; $6186: $00
    ld e, h                                       ; $6187: $5c
    jr c, jr_0ad_61f9                             ; $6188: $38 $6f

    rrca                                          ; $618a: $0f
    ld h, b                                       ; $618b: $60
    nop                                           ; $618c: $00
    rrca                                          ; $618d: $0f
    rrca                                          ; $618e: $0f
    jr nz, @-$7e                                  ; $618f: $20 $80

    rra                                           ; $6191: $1f
    ld h, e                                       ; $6192: $63
    inc e                                         ; $6193: $1c
    db $dd                                        ; $6194: $dd
    nop                                           ; $6195: $00
    ld a, $1c                                     ; $6196: $3e $1c
    sbc h                                         ; $6198: $9c
    inc e                                         ; $6199: $1c
    sub d                                         ; $619a: $92
    adc [hl]                                      ; $619b: $8e
    sub b                                         ; $619c: $90
    adc [hl]                                      ; $619d: $8e
    nop                                           ; $619e: $00
    sbc d                                         ; $619f: $9a
    inc bc                                        ; $61a0: $03
    ld a, [de]                                    ; $61a1: $1a
    rrca                                          ; $61a2: $0f
    db $10                                        ; $61a3: $10
    rra                                           ; $61a4: $1f
    jr c, jr_0ad_61b5                             ; $61a5: $38 $0e

    nop                                           ; $61a7: $00
    ld e, $80                                     ; $61a8: $1e $80
    ret nc                                        ; $61aa: $d0

    jp Jump_0ad_6f93                              ; $61ab: $c3 $93 $6f


    pop hl                                        ; $61ae: $e1
    xor $00                                       ; $61af: $ee $00
    ld h, d                                       ; $61b1: $62
    ld [hl], c                                    ; $61b2: $71
    ld [hl], c                                    ; $61b3: $71
    add [hl]                                      ; $61b4: $86

jr_0ad_61b5:
    ld b, b                                       ; $61b5: $40
    ld d, $90                                     ; $61b6: $16 $90
    ld h, $00                                     ; $61b8: $26 $00
    dec e                                         ; $61ba: $1d
    or a                                          ; $61bb: $b7
    adc h                                         ; $61bc: $8c
    ld [de], a                                    ; $61bd: $12
    dec bc                                        ; $61be: $0b
    daa                                           ; $61bf: $27
    daa                                           ; $61c0: $27
    ld e, c                                       ; $61c1: $59
    nop                                           ; $61c2: $00
    sub e                                         ; $61c3: $93
    sbc a                                         ; $61c4: $9f
    rst $08                                       ; $61c5: $cf
    stop                                          ; $61c6: $10 $00
    jp nz, Jump_0ad_75c9                          ; $61c8: $c2 $c9 $75

    nop                                           ; $61cb: $00
    ldh a, [$37]                                  ; $61cc: $f0 $37
    ldh a, [$6d]                                  ; $61ce: $f0 $6d
    ldh [$1f], a                                  ; $61d0: $e0 $1f
    ldh [$fa], a                                  ; $61d2: $e0 $fa
    nop                                           ; $61d4: $00
    ld a, [c]                                     ; $61d5: $f2
    or d                                          ; $61d6: $b2
    ld h, c                                       ; $61d7: $61
    ld b, b                                       ; $61d8: $40
    ccf                                           ; $61d9: $3f
    ld a, [hl]                                    ; $61da: $7e
    ccf                                           ; $61db: $3f
    db $e3                                        ; $61dc: $e3
    nop                                           ; $61dd: $00
    sbc h                                         ; $61de: $9c
    rrca                                          ; $61df: $0f
    add hl, bc                                    ; $61e0: $09
    ret nc                                        ; $61e1: $d0

    ld [hl], b                                    ; $61e2: $70
    inc h                                         ; $61e3: $24
    inc a                                         ; $61e4: $3c
    ld c, $00                                     ; $61e5: $0e $00
    rla                                           ; $61e7: $17
    rst $00                                       ; $61e8: $c7
    adc a                                         ; $61e9: $8f
    cp a                                          ; $61ea: $bf
    ld a, a                                       ; $61eb: $7f
    adc a                                         ; $61ec: $8f
    ld c, a                                       ; $61ed: $4f
    scf                                           ; $61ee: $37
    nop                                           ; $61ef: $00
    rst $00                                       ; $61f0: $c7
    dec de                                        ; $61f1: $1b
    add e                                         ; $61f2: $83
    ldh [$8c], a                                  ; $61f3: $e0 $8c
    ldh a, [$86]                                  ; $61f5: $f0 $86
    ld [hl], b                                    ; $61f7: $70
    nop                                           ; $61f8: $00

jr_0ad_61f9:
    ld b, $b1                                     ; $61f9: $06 $b1
    dec b                                         ; $61fb: $05
    rrca                                          ; $61fc: $0f
    ld hl, $0731                                  ; $61fd: $21 $31 $07
    ld de, $0700                                  ; $6200: $11 $00 $07
    ret nc                                        ; $6203: $d0

    rst $00                                       ; $6204: $c7
    ret c                                         ; $6205: $d8

    jp $e8e3                                      ; $6206: $c3 $e3 $e8


    db $e3                                        ; $6209: $e3
    nop                                           ; $620a: $00
    add sp, -$18                                  ; $620b: $e8 $e8
    db $e3                                        ; $620d: $e3
    dec bc                                        ; $620e: $0b
    ld [hl], b                                    ; $620f: $70
    jp nz, $835f                                  ; $6210: $c2 $5f $83

    nop                                           ; $6213: $00
    ld e, $7e                                     ; $6214: $1e $7e

jr_0ad_6216:
    jp $fe3c                                      ; $6216: $c3 $3c $fe


    jp nz, $ff3c                                  ; $6219: $c2 $3c $ff

    nop                                           ; $621c: $00
    ld bc, $01fd                                  ; $621d: $01 $fd $01
    ld e, d                                       ; $6220: $5a
    dec de                                        ; $6221: $1b
    rla                                           ; $6222: $17
    or h                                          ; $6223: $b4
    cpl                                           ; $6224: $2f
    nop                                           ; $6225: $00
    ret                                           ; $6226: $c9


    rla                                           ; $6227: $17
    add hl, bc                                    ; $6228: $09
    add [hl]                                      ; $6229: $86
    ld l, d                                       ; $622a: $6a
    adc b                                         ; $622b: $88
    add hl, bc                                    ; $622c: $09
    ld h, b                                       ; $622d: $60
    nop                                           ; $622e: $00
    inc hl                                        ; $622f: $23
    jp nc, Jump_0ad_6233                          ; $6230: $d2 $33 $62

Jump_0ad_6233:
    ld l, l                                       ; $6233: $6d
    ld c, b                                       ; $6234: $48
    ld b, a                                       ; $6235: $47
    call z, $db00                                 ; $6236: $cc $00 $db
    scf                                           ; $6239: $37
    ld b, a                                       ; $623a: $47
    pop hl                                        ; $623b: $e1
    ret                                           ; $623c: $c9


    jp nz, $9c83                                  ; $623d: $c2 $83 $9c

    nop                                           ; $6240: $00
    add e                                         ; $6241: $83
    sbc c                                         ; $6242: $99
    and [hl]                                      ; $6243: $a6
    ld h, b                                       ; $6244: $60
    jp nc, $a2c2                                  ; $6245: $d2 $c2 $a2

    add a                                         ; $6248: $87
    nop                                           ; $6249: $00
    ld b, a                                       ; $624a: $47
    ld [bc], a                                    ; $624b: $02
    ld [hl+], a                                   ; $624c: $22
    pop hl                                        ; $624d: $e1
    rst $00                                       ; $624e: $c7
    adc b                                         ; $624f: $88
    ld bc, $0065                                  ; $6250: $01 $65 $00
    add hl, de                                    ; $6253: $19
    jr jr_0ad_6216                                ; $6254: $18 $c0

    and a                                         ; $6256: $a7
    ld b, h                                       ; $6257: $44
    sub e                                         ; $6258: $93
    ld h, e                                       ; $6259: $63
    call z, $b400                                 ; $625a: $cc $00 $b4
    ld b, [hl]                                    ; $625d: $46
    ld a, [hl-]                                   ; $625e: $3a
    ld [hl-], a                                   ; $625f: $32
    inc c                                         ; $6260: $0c
    sbc b                                         ; $6261: $98
    add [hl]                                      ; $6262: $86
    add $00                                       ; $6263: $c6 $00
    rrca                                          ; $6265: $0f
    db $e3                                        ; $6266: $e3
    daa                                           ; $6267: $27
    ld sp, $2185                                  ; $6268: $31 $85 $21
    dec c                                         ; $626b: $0d
    dec bc                                        ; $626c: $0b
    nop                                           ; $626d: $00
    inc hl                                        ; $626e: $23
    dec bc                                        ; $626f: $0b
    inc hl                                        ; $6270: $23
    dec de                                        ; $6271: $1b
    ld b, e                                       ; $6272: $43
    rla                                           ; $6273: $17
    rst $00                                       ; $6274: $c7
    rla                                           ; $6275: $17
    nop                                           ; $6276: $00
    ld b, a                                       ; $6277: $47
    rla                                           ; $6278: $17
    ld b, a                                       ; $6279: $47
    db $ec                                        ; $627a: $ec

jr_0ad_627b:
    pop hl                                        ; $627b: $e1
    db $f4                                        ; $627c: $f4
    pop af                                        ; $627d: $f1
    db $f4                                        ; $627e: $f4
    nop                                           ; $627f: $00
    pop af                                        ; $6280: $f1
    ld b, $f0                                     ; $6281: $06 $f0
    ld [bc], a                                    ; $6283: $02
    ld hl, sp+$02                                 ; $6284: $f8 $02
    ld hl, sp+$03                                 ; $6286: $f8 $03
    nop                                           ; $6288: $00
    ld hl, sp+$01                                 ; $6289: $f8 $01
    db $fc                                        ; $628b: $fc
    db $fc                                        ; $628c: $fc
    ld bc, $01fc                                  ; $628d: $01 $fc $01
    rst $38                                       ; $6290: $ff
    db $10                                        ; $6291: $10
    ld bc, $01f9                                  ; $6292: $01 $f9 $01
    rrca                                          ; $6295: $0f
    nop                                           ; $6296: $00
    ld a, [bc]                                    ; $6297: $0a
    ld [hl], c                                    ; $6298: $71
    inc de                                        ; $6299: $13
    ld c, b                                       ; $629a: $48
    nop                                           ; $629b: $00
    dec bc                                        ; $629c: $0b
    ld a, b                                       ; $629d: $78
    ld c, l                                       ; $629e: $4d
    add sp, -$3b                                  ; $629f: $e8 $c5
    sbc [hl]                                      ; $62a1: $9e
    db $fc                                        ; $62a2: $fc
    add e                                         ; $62a3: $83
    nop                                           ; $62a4: $00
    ld a, d                                       ; $62a5: $7a
    adc d                                         ; $62a6: $8a
    ld l, h                                       ; $62a7: $6c
    pop hl                                        ; $62a8: $e1
    sbc [hl]                                      ; $62a9: $9e
    dec b                                         ; $62aa: $05
    inc [hl]                                      ; $62ab: $34
    sbc d                                         ; $62ac: $9a
    nop                                           ; $62ad: $00
    add l                                         ; $62ae: $85
    rra                                           ; $62af: $1f
    sub b                                         ; $62b0: $90
    rrca                                          ; $62b1: $0f
    adc [hl]                                      ; $62b2: $8e
    ld hl, $3e81                                  ; $62b3: $21 $81 $3e
    nop                                           ; $62b6: $00
    add b                                         ; $62b7: $80
    rrca                                          ; $62b8: $0f
    inc a                                         ; $62b9: $3c
    rra                                           ; $62ba: $1f
    jr c, jr_0ad_62cc                             ; $62bb: $38 $0f

    inc bc                                        ; $62bd: $03
    daa                                           ; $62be: $27
    nop                                           ; $62bf: $00
    ld b, b                                       ; $62c0: $40
    ld [hl], b                                    ; $62c1: $70
    xor b                                         ; $62c2: $a8
    ret nz                                        ; $62c3: $c0

    and b                                         ; $62c4: $a0
    ld [bc], a                                    ; $62c5: $02
    db $dd                                        ; $62c6: $dd
    ld a, $00                                     ; $62c7: $3e $00
    ld e, l                                       ; $62c9: $5d
    ldh [$5e], a                                  ; $62ca: $e0 $5e

jr_0ad_62cc:
    jr nc, @-$10                                  ; $62cc: $30 $ee

    sub $28                                       ; $62ce: $d6 $28
    db $f4                                        ; $62d0: $f4
    nop                                           ; $62d1: $00
    inc a                                         ; $62d2: $3c
    res 7, b                                      ; $62d3: $cb $b8
    ld h, l                                       ; $62d5: $65
    ld e, h                                       ; $62d6: $5c
    ld e, $22                                     ; $62d7: $1e $22
    xor h                                         ; $62d9: $ac
    nop                                           ; $62da: $00
    sub d                                         ; $62db: $92
    dec h                                         ; $62dc: $25
    jr c, jr_0ad_6310                             ; $62dd: $38 $31

    inc l                                         ; $62df: $2c
    ld a, b                                       ; $62e0: $78
    jr nz, jr_0ad_627b                            ; $62e1: $20 $98

    nop                                           ; $62e3: $00
    ld [c], a                                     ; $62e4: $e2
    scf                                           ; $62e5: $37
    add a                                         ; $62e6: $87
    xor a                                         ; $62e7: $af
    rrca                                          ; $62e8: $0f
    adc a                                         ; $62e9: $8f
    cpl                                           ; $62ea: $2f
    rrca                                          ; $62eb: $0f
    nop                                           ; $62ec: $00
    ld l, a                                       ; $62ed: $6f
    ld b, b                                       ; $62ee: $40
    rra                                           ; $62ef: $1f
    ld b, b                                       ; $62f0: $40
    rra                                           ; $62f1: $1f
    ret nz                                        ; $62f2: $c0

    rra                                           ; $62f3: $1f
    add b                                         ; $62f4: $80
    ld b, d                                       ; $62f5: $42
    ccf                                           ; $62f6: $3f

jr_0ad_62f7:
    ld e, a                                       ; $62f7: $5f
    nop                                           ; $62f8: $00
    db $fc                                        ; $62f9: $fc
    nop                                           ; $62fa: $00
    cp $fe                                        ; $62fb: $fe $fe
    ld [de], a                                    ; $62fd: $12
    ld [bc], a                                    ; $62fe: $02
    cp $80                                        ; $62ff: $fe $80
    ld hl, sp+$01                                 ; $6301: $f8 $01
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    inc e                                         ; $6305: $1c
    dec e                                         ; $6306: $1d
    ld c, $98                                     ; $6307: $0e $98
    ccf                                           ; $6309: $3f
    ld [bc], a                                    ; $630a: $02
    or b                                          ; $630b: $b0
    ccf                                           ; $630c: $3f
    or c                                          ; $630d: $b1
    ccf                                           ; $630e: $3f
    add b                                         ; $630f: $80

jr_0ad_6310:
    ret c                                         ; $6310: $d8

    ld [hl+], a                                   ; $6311: $22
    nop                                           ; $6312: $00
    ld e, [hl]                                    ; $6313: $5e
    nop                                           ; $6314: $00
    ld e, $c6                                     ; $6315: $1e $c6
    ret z                                         ; $6317: $c8

    inc c                                         ; $6318: $0c
    jp c, Jump_0ad_481d                           ; $6319: $da $1d $48

jr_0ad_631c:
    push bc                                       ; $631c: $c5
    nop                                           ; $631d: $00
    inc e                                         ; $631e: $1c
    xor e                                         ; $631f: $ab
    inc de                                        ; $6320: $13
    xor e                                         ; $6321: $ab
    dec de                                        ; $6322: $1b
    ld c, b                                       ; $6323: $48
    jr c, jr_0ad_631c                             ; $6324: $38 $f6

    ld bc, $7061                                  ; $6326: $01 $61 $70
    db $10                                        ; $6329: $10
    ldh [rNR32], a                                ; $632a: $e0 $1c
    rlca                                          ; $632c: $07

jr_0ad_632d:
    ld a, [hl-]                                   ; $632d: $3a
    inc h                                         ; $632e: $24
    ld [bc], a                                    ; $632f: $02
    nop                                           ; $6330: $00
    ld a, h                                       ; $6331: $7c
    nop                                           ; $6332: $00
    cp $f0                                        ; $6333: $fe $f0
    pop af                                        ; $6335: $f1
    rrca                                          ; $6336: $0f
    db $10                                        ; $6337: $10
    dec b                                         ; $6338: $05
    nop                                           ; $6339: $00
    inc e                                         ; $633a: $1c
    add hl, bc                                    ; $633b: $09
    inc d                                         ; $633c: $14
    sub l                                         ; $633d: $95
    add hl, bc                                    ; $633e: $09
    sbc h                                         ; $633f: $9c
    add b                                         ; $6340: $80
    add hl, bc                                    ; $6341: $09
    nop                                           ; $6342: $00
    sbc h                                         ; $6343: $9c

jr_0ad_6344:
    jr z, jr_0ad_63ae                             ; $6344: $28 $68

    inc e                                         ; $6346: $1c
    call nc, $801c                                ; $6347: $d4 $1c $80
    ld [bc], a                                    ; $634a: $02
    nop                                           ; $634b: $00
    ld hl, sp+$05                                 ; $634c: $f8 $05
    pop af                                        ; $634e: $f1
    add hl, bc                                    ; $634f: $09
    push hl                                       ; $6350: $e5
    ld bc, $f17d                                  ; $6351: $01 $7d $f1
    nop                                           ; $6354: $00
    db $fc                                        ; $6355: $fc
    ld a, e                                       ; $6356: $7b
    ld hl, sp+$22                                 ; $6357: $f8 $22
    ld e, d                                       ; $6359: $5a
    ld [hl-], a                                   ; $635a: $32
    jp z, Jump_000_0e80                           ; $635b: $ca $80 $0e

    ccf                                           ; $635e: $3f
    add b                                         ; $635f: $80
    ccf                                           ; $6360: $3f
    ld a, a                                       ; $6361: $7f
    ld d, b                                       ; $6362: $50
    ld [bc], a                                    ; $6363: $02
    inc b                                         ; $6364: $04
    ld [$8a9c], sp                                ; $6365: $08 $9c $8a
    ld l, h                                       ; $6368: $6c
    nop                                           ; $6369: $00
    dec c                                         ; $636a: $0d
    inc hl                                        ; $636b: $23
    jr z, jr_0ad_6395                             ; $636c: $28 $27

    jr nz, jr_0ad_62f7                            ; $636e: $20 $87

    or b                                          ; $6370: $b0
    ret nz                                        ; $6371: $c0

    jr nz, jr_0ad_6344                            ; $6372: $20 $d0

    rra                                           ; $6374: $1f
    ld sp, hl                                     ; $6375: $f9
    ld bc, $0000                                  ; $6376: $01 $00 $00
    pop hl                                        ; $6379: $e1
    or $e7                                        ; $637a: $f6 $e7
    ld b, $07                                     ; $637c: $06 $07
    rst $08                                       ; $637e: $cf
    cpl                                           ; $637f: $2f
    ccf                                           ; $6380: $3f
    db $d3                                        ; $6381: $d3
    add [hl]                                      ; $6382: $86
    ld a, [bc]                                    ; $6383: $0a
    xor d                                         ; $6384: $aa
    ld [de], a                                    ; $6385: $12
    pop af                                        ; $6386: $f1
    ld [bc], a                                    ; $6387: $02
    nop                                           ; $6388: $00
    db $fc                                        ; $6389: $fc
    add e                                         ; $638a: $83
    add b                                         ; $638b: $80
    ld e, $01                                     ; $638c: $1e $01
    db $10                                        ; $638e: $10
    jr @+$01                                      ; $638f: $18 $ff

    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    inc e                                         ; $6393: $1c
    ld c, b                                       ; $6394: $48

jr_0ad_6395:
    inc e                                         ; $6395: $1c
    ret z                                         ; $6396: $c8

    adc h                                         ; $6397: $8c
    ret nz                                        ; $6398: $c0

    inc c                                         ; $6399: $0c
    ld b, b                                       ; $639a: $40
    add b                                         ; $639b: $80
    db $10                                        ; $639c: $10
    jr z, jr_0ad_632d                             ; $639d: $28 $8e

    ld hl, sp-$7c                                 ; $639f: $f8 $84
    ldh a, [rTIMA]                                ; $63a1: $f0 $05
    ld [hl], c                                    ; $63a3: $71
    ld d, $0d                                     ; $63a4: $16 $0d
    ld hl, $cf08                                  ; $63a6: $21 $08 $cf
    ld [bc], a                                    ; $63a9: $02
    inc bc                                        ; $63aa: $03
    inc [hl]                                      ; $63ab: $34
    jr nz, jr_0ad_63b2                            ; $63ac: $20 $04

jr_0ad_63ae:
    ld c, e                                       ; $63ae: $4b
    db $10                                        ; $63af: $10
    inc bc                                        ; $63b0: $03
    ret nz                                        ; $63b1: $c0

jr_0ad_63b2:
    ld [bc], a                                    ; $63b2: $02
    ld b, b                                       ; $63b3: $40
    nop                                           ; $63b4: $00
    ld bc, $ff10                                  ; $63b5: $01 $10 $ff
    nop                                           ; $63b8: $00
    cp $00                                        ; $63b9: $fe $00
    ld bc, $08fc                                  ; $63bb: $01 $fc $08
    inc bc                                        ; $63be: $03
    ld sp, hl                                     ; $63bf: $f9
    ld hl, sp-$06                                 ; $63c0: $f8 $fa
    db $10                                        ; $63c2: $10
    jr z, @+$11                                   ; $63c3: $28 $0f

    nop                                           ; $63c5: $00
    ldh a, [rDIV]                                 ; $63c6: $f0 $04
    ld [hl], a                                    ; $63c8: $77
    ld [$f30b], sp                                ; $63c9: $08 $0b $f3
    inc b                                         ; $63cc: $04
    jr nz, jr_0ad_63e7                            ; $63cd: $20 $18

    nop                                           ; $63cf: $00
    inc bc                                        ; $63d0: $03
    nop                                           ; $63d1: $00
    rlca                                          ; $63d2: $07
    ld bc, $f0ff                                  ; $63d3: $01 $ff $f0
    ldh a, [$ce]                                  ; $63d6: $f0 $ce
    pop af                                        ; $63d8: $f1
    adc l                                         ; $63d9: $8d
    nop                                           ; $63da: $00
    inc a                                         ; $63db: $3c
    inc a                                         ; $63dc: $3c
    ld h, d                                       ; $63dd: $62
    ld a, h                                       ; $63de: $7c
    nop                                           ; $63df: $00
    ldh [$dc], a                                  ; $63e0: $e0 $dc
    dec d                                         ; $63e2: $15
    nop                                           ; $63e3: $00
    add a                                         ; $63e4: $87
    ld [bc], a                                    ; $63e5: $02
    add hl, bc                                    ; $63e6: $09

jr_0ad_63e7:
    ld a, b                                       ; $63e7: $78
    ld a, [hl]                                    ; $63e8: $7e
    sbc h                                         ; $63e9: $9c
    ld c, $9e                                     ; $63ea: $0e $9e
    add b                                         ; $63ec: $80
    ld b, b                                       ; $63ed: $40
    db $10                                        ; $63ee: $10
    ld a, a                                       ; $63ef: $7f
    add b                                         ; $63f0: $80
    rra                                           ; $63f1: $1f
    rst $20                                       ; $63f2: $e7
    daa                                           ; $63f3: $27
    ld h, e                                       ; $63f4: $63
    adc e                                         ; $63f5: $8b
    inc c                                         ; $63f6: $0c
    ret nz                                        ; $63f7: $c0

    jr z, @-$2a                                   ; $63f8: $28 $d4

    cp b                                          ; $63fa: $b8
    jr nc, jr_0ad_641d                            ; $63fb: $30 $20

    ld d, d                                       ; $63fd: $52
    jr nz, jr_0ad_6400                            ; $63fe: $20 $00

jr_0ad_6400:
    ld hl, sp-$80                                 ; $6400: $f8 $80
    db $10                                        ; $6402: $10

jr_0ad_6403:
    jr z, jr_0ad_6405                             ; $6403: $28 $00

jr_0ad_6405:
    rra                                           ; $6405: $1f
    ldh [rIF], a                                  ; $6406: $e0 $0f
    jr nz, jr_0ad_6439                            ; $6408: $20 $2f

    jr nz, jr_0ad_640c                            ; $640a: $20 $00

jr_0ad_640c:
    adc a                                         ; $640c: $8f
    or $f0                                        ; $640d: $f6 $f0
    inc b                                         ; $640f: $04
    pop af                                        ; $6410: $f1
    ld b, $f4                                     ; $6411: $06 $f4
    inc bc                                        ; $6413: $03
    ld b, b                                       ; $6414: $40
    ld sp, hl                                     ; $6415: $f9
    inc e                                         ; $6416: $1c
    nop                                           ; $6417: $00
    cp $01                                        ; $6418: $fe $01
    cp $03                                        ; $641a: $fe $03
    inc bc                                        ; $641c: $03

jr_0ad_641d:
    rst $38                                       ; $641d: $ff
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    inc bc                                        ; $6420: $03
    nop                                           ; $6421: $00
    ld b, $07                                     ; $6422: $06 $07
    inc e                                         ; $6424: $1c
    rlca                                          ; $6425: $07
    cp b                                          ; $6426: $b8
    nop                                           ; $6427: $00
    ld c, $01                                     ; $6428: $0e $01
    pop bc                                        ; $642a: $c1
    ld [$b170], sp                                ; $642b: $08 $70 $b1
    cpl                                           ; $642e: $2f
    pop bc                                        ; $642f: $c1
    nop                                           ; $6430: $00
    ld sp, $6ce1                                  ; $6431: $31 $e1 $6c
    jp Jump_000_31d0                              ; $6434: $c3 $d0 $31


    ld b, $f3                                     ; $6437: $06 $f3

jr_0ad_6439:
    nop                                           ; $6439: $00
    dec b                                         ; $643a: $05
    push af                                       ; $643b: $f5
    rlca                                          ; $643c: $07
    db $f4                                        ; $643d: $f4
    rlca                                          ; $643e: $07
    ld h, e                                       ; $643f: $63
    ld bc, $0047                                  ; $6440: $01 $47 $00
    ld l, $f0                                     ; $6443: $2e $f0
    ld hl, sp+$0f                                 ; $6445: $f8 $0f
    ret nz                                        ; $6447: $c0

    rra                                           ; $6448: $1f
    rrca                                          ; $6449: $0f
    rrca                                          ; $644a: $0f
    nop                                           ; $644b: $00
    inc hl                                        ; $644c: $23
    inc hl                                        ; $644d: $23
    ld h, b                                       ; $644e: $60
    or h                                          ; $644f: $b4
    add sp, -$4d                                  ; $6450: $e8 $b3
    ld [$0068], a                                 ; $6452: $ea $68 $00
    ld a, $2a                                     ; $6455: $3e $2a
    jp c, $a284                                   ; $6457: $da $84 $a2

jr_0ad_645a:
    ld e, [hl]                                    ; $645a: $5e
    ret c                                         ; $645b: $d8

    ld hl, sp+$00                                 ; $645c: $f8 $00
    ld sp, hl                                     ; $645e: $f9
    ld hl, sp+$45                                 ; $645f: $f8 $45
    inc bc                                        ; $6461: $03
    ld b, b                                       ; $6462: $40
    inc de                                        ; $6463: $13
    ret c                                         ; $6464: $d8

    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    add b                                         ; $6468: $80
    ld b, b                                       ; $6469: $40
    ld b, b                                       ; $646a: $40
    ldh [$90], a                                  ; $646b: $e0 $90
    add sp, $7c                                   ; $646d: $e8 $7c
    nop                                           ; $646f: $00
    inc [hl]                                      ; $6470: $34
    jr jr_0ad_640c                                ; $6471: $18 $99

    inc bc                                        ; $6473: $03
    pop hl                                        ; $6474: $e1
    ld c, $82                                     ; $6475: $0e $82
    jr nz, jr_0ad_6479                            ; $6477: $20 $00

jr_0ad_6479:
    or a                                          ; $6479: $b7
    jr nc, jr_0ad_6403                            ; $647a: $30 $87

    or a                                          ; $647c: $b7
    add a                                         ; $647d: $87
    ld d, a                                       ; $647e: $57
    scf                                           ; $647f: $37
    xor a                                         ; $6480: $af
    nop                                           ; $6481: $00
    ld l, a                                       ; $6482: $6f
    rra                                           ; $6483: $1f
    sbc a                                         ; $6484: $9f
    ld a, a                                       ; $6485: $7f
    ld a, a                                       ; $6486: $7f
    cp a                                          ; $6487: $bf
    ld a, a                                       ; $6488: $7f
    ld b, $00                                     ; $6489: $06 $00
    ld bc, $1e19                                  ; $648b: $01 $19 $1e
    ld a, [hl-]                                   ; $648e: $3a
    inc [hl]                                      ; $648f: $34
    ld [hl], b                                    ; $6490: $70
    ld l, c                                       ; $6491: $69
    ldh a, [rP1]                                  ; $6492: $f0 $00
    db $e4                                        ; $6494: $e4
    jr nz, jr_0ad_645a                            ; $6495: $20 $c3

    dec bc                                        ; $6497: $0b
    adc $9e                                       ; $6498: $ce $9e
    ld b, $8c                                     ; $649a: $06 $8c
    nop                                           ; $649c: $00
    inc bc                                        ; $649d: $03
    rlca                                          ; $649e: $07
    ld h, e                                       ; $649f: $63
    inc bc                                        ; $64a0: $03
    ldh [rNR24], a                                ; $64a1: $e0 $19
    jr jr_0ad_64c1                                ; $64a3: $18 $1c

    nop                                           ; $64a5: $00
    ldh [$e0], a                                  ; $64a6: $e0 $e0
    sbc [hl]                                      ; $64a8: $9e
    ldh [$9f], a                                  ; $64a9: $e0 $9f
    nop                                           ; $64ab: $00
    rlca                                          ; $64ac: $07
    add b                                         ; $64ad: $80
    nop                                           ; $64ae: $00
    sub h                                         ; $64af: $94
    ld [bc], a                                    ; $64b0: $02
    ld a, [c]                                     ; $64b1: $f2
    ldh a, [rP1]                                  ; $64b2: $f0 $00
    jp hl                                         ; $64b4: $e9


    dec c                                         ; $64b5: $0d
    ret nc                                        ; $64b6: $d0

    nop                                           ; $64b7: $00
    dec de                                        ; $64b8: $1b
    sub d                                         ; $64b9: $92
    and l                                         ; $64ba: $a5
    cpl                                           ; $64bb: $2f
    ld e, c                                       ; $64bc: $59
    or a                                          ; $64bd: $b7
    sbc c                                         ; $64be: $99
    and l                                         ; $64bf: $a5
    nop                                           ; $64c0: $00

jr_0ad_64c1:
    call c, $201f                                 ; $64c1: $dc $1f $20
    rra                                           ; $64c4: $1f
    ldh a, [$2d]                                  ; $64c5: $f0 $2d
    inc a                                         ; $64c7: $3c
    rst $00                                       ; $64c8: $c7
    nop                                           ; $64c9: $00
    add a                                         ; $64ca: $87
    ld hl, sp-$61                                 ; $64cb: $f8 $9f
    ld [hl], b                                    ; $64cd: $70
    rla                                           ; $64ce: $17
    ld a, a                                       ; $64cf: $7f
    ld c, a                                       ; $64d0: $4f
    adc b                                         ; $64d1: $88
    nop                                           ; $64d2: $00
    ld l, b                                       ; $64d3: $68
    ld [hl], e                                    ; $64d4: $73
    adc a                                         ; $64d5: $8f
    push bc                                       ; $64d6: $c5
    ld [hl-], a                                   ; $64d7: $32
    db $eb                                        ; $64d8: $eb
    ld c, e                                       ; $64d9: $4b
    stop                                          ; $64da: $10 $00
    ld l, l                                       ; $64dc: $6d
    add h                                         ; $64dd: $84
    add [hl]                                      ; $64de: $86
    ld b, [hl]                                    ; $64df: $46
    or [hl]                                       ; $64e0: $b6
    sub [hl]                                      ; $64e1: $96
    inc c                                         ; $64e2: $0c
    ld a, c                                       ; $64e3: $79
    nop                                           ; $64e4: $00
    add hl, sp                                    ; $64e5: $39
    ldh a, [$86]                                  ; $64e6: $f0 $86
    rst $28                                       ; $64e8: $ef

jr_0ad_64e9:
    ldh [$1f], a                                  ; $64e9: $e0 $1f
    ret nz                                        ; $64eb: $c0

    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    ld bc, $067e                                  ; $64ee: $01 $7e $06
    inc bc                                        ; $64f1: $03
    ld a, l                                       ; $64f2: $7d
    ld bc, $40fe                                  ; $64f3: $01 $fe $40
    nop                                           ; $64f6: $00
    and b                                         ; $64f7: $a0
    jr c, @-$36                                   ; $64f8: $38 $c8

    inc [hl]                                      ; $64fa: $34
    ld c, b                                       ; $64fb: $48
    sbc b                                         ; $64fc: $98
    add [hl]                                      ; $64fd: $86
    db $e3                                        ; $64fe: $e3
    nop                                           ; $64ff: $00
    rlca                                          ; $6500: $07
    ld [hl], c                                    ; $6501: $71
    rlca                                          ; $6502: $07
    inc d                                         ; $6503: $14
    add a                                         ; $6504: $87
    inc b                                         ; $6505: $04
    rst $20                                       ; $6506: $e7
    and b                                         ; $6507: $a0
    nop                                           ; $6508: $00
    add c                                         ; $6509: $81
    ld e, $46                                     ; $650a: $1e $46
    ld hl, $8000                                  ; $650c: $21 $00 $80
    add a                                         ; $650f: $87
    ld hl, sp+$00                                 ; $6510: $f8 $00

jr_0ad_6512:
    jp Jump_000_0b38                              ; $6512: $c3 $38 $0b


    jr jr_0ad_6522                                ; $6515: $18 $0b

    dec bc                                        ; $6517: $0b
    jr jr_0ad_6512                                ; $6518: $18 $f8

    nop                                           ; $651a: $00
    ld h, b                                       ; $651b: $60
    inc b                                         ; $651c: $04
    ld b, $18                                     ; $651d: $06 $18
    pop bc                                        ; $651f: $c1
    ld a, [de]                                    ; $6520: $1a
    and d                                         ; $6521: $a2

jr_0ad_6522:
    rlca                                          ; $6522: $07
    nop                                           ; $6523: $00
    ld [hl], a                                    ; $6524: $77
    rlca                                          ; $6525: $07
    ld l, [hl]                                    ; $6526: $6e
    ld c, $62                                     ; $6527: $0e $62
    ld c, $0c                                     ; $6529: $0e $0c
    dec [hl]                                      ; $652b: $35
    nop                                           ; $652c: $00
    sbc e                                         ; $652d: $9b
    inc h                                         ; $652e: $24
    jr @-$3a                                      ; $652f: $18 $c4

    ret c                                         ; $6531: $d8

    inc b                                         ; $6532: $04
    ld h, h                                       ; $6533: $64
    ld b, $00                                     ; $6534: $06 $00
    ld [hl+], a                                   ; $6536: $22
    ld b, c                                       ; $6537: $41
    inc bc                                        ; $6538: $03
    ldh [rDIV], a                                 ; $6539: $e0 $04
    inc c                                         ; $653b: $0c
    ldh [$3f], a                                  ; $653c: $e0 $3f
    nop                                           ; $653e: $00
    and [hl]                                      ; $653f: $a6
    ld c, $c0                                     ; $6540: $0e $c0
    dec c                                         ; $6542: $0d
    inc d                                         ; $6543: $14
    ld [$40dd], sp                                ; $6544: $08 $dd $40
    nop                                           ; $6547: $00
    adc b                                         ; $6548: $88
    ld h, h                                       ; $6549: $64
    scf                                           ; $654a: $37
    adc d                                         ; $654b: $8a
    or h                                          ; $654c: $b4
    add h                                         ; $654d: $84
    sbc b                                         ; $654e: $98
    ld d, $00                                     ; $654f: $16 $00
    jr z, jr_0ad_64e9                             ; $6551: $28 $96

    ldh [$92], a                                  ; $6553: $e0 $92
    and h                                         ; $6555: $a4
    ld c, d                                       ; $6556: $4a
    inc h                                         ; $6557: $24
    add h                                         ; $6558: $84
    nop                                           ; $6559: $00
    ld c, b                                       ; $655a: $48
    add hl, bc                                    ; $655b: $09
    ld de, $606b                                  ; $655c: $11 $6b $60
    ld d, c                                       ; $655f: $51
    call z, Call_000_007c                         ; $6560: $cc $7c $00
    ccf                                           ; $6563: $3f
    ld b, b                                       ; $6564: $40
    nop                                           ; $6565: $00
    ldh a, [$8f]                                  ; $6566: $f0 $8f
    pop bc                                        ; $6568: $c1
    ld b, b                                       ; $6569: $40
    ld b, $00                                     ; $656a: $06 $00
    ld [hl], b                                    ; $656c: $70
    adc e                                         ; $656d: $8b
    ld sp, $3bb8                                  ; $656e: $31 $b8 $3b
    sbc b                                         ; $6571: $98
    ld d, c                                       ; $6572: $51
    sub $00                                       ; $6573: $d6 $00
    inc h                                         ; $6575: $24
    ld [$2190], a                                 ; $6576: $ea $90 $21
    dec a                                         ; $6579: $3d
    pop hl                                        ; $657a: $e1
    dec b                                         ; $657b: $05
    jr jr_0ad_657e                                ; $657c: $18 $00

jr_0ad_657e:
    ld [bc], a                                    ; $657e: $02
    ld b, b                                       ; $657f: $40
    nop                                           ; $6580: $00
    ld b, a                                       ; $6581: $47
    rra                                           ; $6582: $1f
    ld b, a                                       ; $6583: $47
    rra                                           ; $6584: $1f
    dec c                                         ; $6585: $0d
    nop                                           ; $6586: $00
    inc e                                         ; $6587: $1c
    dec b                                         ; $6588: $05
    inc e                                         ; $6589: $1c
    dec b                                         ; $658a: $05
    inc c                                         ; $658b: $0c
    inc c                                         ; $658c: $0c
    ld b, $0c                                     ; $658d: $06 $0c
    nop                                           ; $658f: $00
    ld b, $04                                     ; $6590: $06 $04
    ld [bc], a                                    ; $6592: $02
    dec b                                         ; $6593: $05
    inc bc                                        ; $6594: $03
    ld b, $03                                     ; $6595: $06 $03
    dec c                                         ; $6597: $0d
    nop                                           ; $6598: $00
    adc h                                         ; $6599: $8c
    and b                                         ; $659a: $a0
    adc l                                         ; $659b: $8d
    or b                                          ; $659c: $b0
    add c                                         ; $659d: $81
    jr c, @-$76                                   ; $659e: $38 $88

    add hl, sp                                    ; $65a0: $39
    nop                                           ; $65a1: $00
    adc c                                         ; $65a2: $89
    jr jr_0ad_661e                                ; $65a3: $18 $79

    ld a, [hl-]                                   ; $65a5: $3a
    ld e, c                                       ; $65a6: $59
    ld a, d                                       ; $65a7: $7a
    add hl, sp                                    ; $65a8: $39
    sbc [hl]                                      ; $65a9: $9e
    nop                                           ; $65aa: $00
    jp nc, $c41e                                  ; $65ab: $d2 $1e $c4

    inc b                                         ; $65ae: $04
    adc [hl]                                      ; $65af: $8e
    pop bc                                        ; $65b0: $c1
    pop de                                        ; $65b1: $d1
    ld e, h                                       ; $65b2: $5c
    nop                                           ; $65b3: $00
    ld d, d                                       ; $65b4: $52
    rlca                                          ; $65b5: $07
    add c                                         ; $65b6: $81
    ld [hl], $a2                                  ; $65b7: $36 $a2
    ret nz                                        ; $65b9: $c0

    ld b, h                                       ; $65ba: $44
    inc de                                        ; $65bb: $13
    nop                                           ; $65bc: $00
    adc d                                         ; $65bd: $8a
    sbc d                                         ; $65be: $9a
    ld e, c                                       ; $65bf: $59
    jp nz, $0246                                  ; $65c0: $c2 $46 $02

    ld [hl], h                                    ; $65c3: $74
    ld h, b                                       ; $65c4: $60
    nop                                           ; $65c5: $00
    ld a, [$1170]                                 ; $65c6: $fa $70 $11
    ld h, e                                       ; $65c9: $63
    ldh a, [$03]                                  ; $65ca: $f0 $03
    ldh a, [$0e]                                  ; $65cc: $f0 $0e
    nop                                           ; $65ce: $00
    call z, $802e                                 ; $65cf: $cc $2e $80
    ld a, [bc]                                    ; $65d2: $0a
    ld l, [hl]                                    ; $65d3: $6e
    ld l, d                                       ; $65d4: $6a
    ld b, [hl]                                    ; $65d5: $46
    adc $00                                       ; $65d6: $ce $00
    ld c, b                                       ; $65d8: $48
    inc l                                         ; $65d9: $2c
    xor b                                         ; $65da: $a8
    inc bc                                        ; $65db: $03
    ld bc, $6307                                  ; $65dc: $01 $07 $63
    dec b                                         ; $65df: $05
    nop                                           ; $65e0: $00
    call c, $9cd4                                 ; $65e1: $dc $d4 $9c
    ld a, [bc]                                    ; $65e4: $0a
    ret c                                         ; $65e5: $d8

    ld b, $c0                                     ; $65e6: $06 $c0
    ld b, $00                                     ; $65e8: $06 $00
    dec bc                                        ; $65ea: $0b
    ld b, $8b                                     ; $65eb: $06 $8b
    add d                                         ; $65ed: $82
    call nz, $c4c2                                ; $65ee: $c4 $c2 $c4
    ld [$3000], sp                                ; $65f1: $08 $00 $30
    adc b                                         ; $65f4: $88
    or b                                          ; $65f5: $b0
    and b                                         ; $65f6: $a0
    jr nc, @+$62                                  ; $65f7: $30 $60

    ld [hl], b                                    ; $65f9: $70
    ld h, b                                       ; $65fa: $60
    nop                                           ; $65fb: $00
    ld e, a                                       ; $65fc: $5f
    ld h, b                                       ; $65fd: $60
    ld e, a                                       ; $65fe: $5f
    jr nz, @-$3e                                  ; $65ff: $20 $c0

    ld h, b                                       ; $6601: $60
    ret nz                                        ; $6602: $c0

    ld [bc], a                                    ; $6603: $02
    ld bc, $0201                                  ; $6604: $01 $01 $02
    ld bc, $0103                                  ; $6607: $01 $03 $01
    nop                                           ; $660a: $00
    ld bc, $0003                                  ; $660b: $01 $03 $00
    add b                                         ; $660e: $80
    ld [bc], a                                    ; $660f: $02
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    ld [hl], b                                    ; $6613: $70
    ld [hl], e                                    ; $6614: $73
    dec b                                         ; $6615: $05
    add [hl]                                      ; $6616: $86
    adc c                                         ; $6617: $89
    nop                                           ; $6618: $00
    ld c, $8d                                     ; $6619: $0e $8d
    ld c, $8a                                     ; $661b: $0e $8a
    inc e                                         ; $661d: $1c

jr_0ad_661e:
    ld e, h                                       ; $661e: $5c
    rst $00                                       ; $661f: $c7
    sbc b                                         ; $6620: $98
    nop                                           ; $6621: $00
    rst $00                                       ; $6622: $c7
    ret c                                         ; $6623: $d8

    sub a                                         ; $6624: $97
    db $e4                                        ; $6625: $e4
    ld h, h                                       ; $6626: $64
    add sp, $08                                   ; $6627: $e8 $08
    add sp, $00                                   ; $6629: $e8 $00
    ld a, [hl+]                                   ; $662b: $2a
    call z, $ce01                                 ; $662c: $cc $01 $ce
    ld b, $06                                     ; $662f: $06 $06
    jp c, Jump_000_000f                           ; $6631: $da $0f $00

    sub [hl]                                      ; $6634: $96
    rra                                           ; $6635: $1f
    xor [hl]                                      ; $6636: $ae
    inc bc                                        ; $6637: $03
    ld [hl], d                                    ; $6638: $72
    ld [bc], a                                    ; $6639: $02
    ld h, b                                       ; $663a: $60
    ld b, $00                                     ; $663b: $06 $00
    ld [bc], a                                    ; $663d: $02
    ld a, [bc]                                    ; $663e: $0a
    inc c                                         ; $663f: $0c
    ret nc                                        ; $6640: $d0

    ld bc, $c760                                  ; $6641: $01 $60 $c7
    cpl                                           ; $6644: $2f
    nop                                           ; $6645: $00
    ld l, h                                       ; $6646: $6c
    rrca                                          ; $6647: $0f
    inc c                                         ; $6648: $0c
    ld e, h                                       ; $6649: $5c
    ld b, e                                       ; $664a: $43
    inc e                                         ; $664b: $1c
    inc bc                                        ; $664c: $03
    rlca                                          ; $664d: $07
    nop                                           ; $664e: $00
    db $db                                        ; $664f: $db
    rlca                                          ; $6650: $07
    db $db                                        ; $6651: $db
    add a                                         ; $6652: $87
    ld c, e                                       ; $6653: $4b
    add e                                         ; $6654: $83
    call Call_000_0081                            ; $6655: $cd $81 $00
    xor $c0                                       ; $6658: $ee $c0
    and a                                         ; $665a: $a7
    ret nz                                        ; $665b: $c0

    ld e, [hl]                                    ; $665c: $5e
    pop bc                                        ; $665d: $c1
    ld l, l                                       ; $665e: $6d
    add b                                         ; $665f: $80
    nop                                           ; $6660: $00
    ld h, c                                       ; $6661: $61
    pop bc                                        ; $6662: $c1
    ld h, c                                       ; $6663: $61
    pop bc                                        ; $6664: $c1
    ldh a, [$e3]                                  ; $6665: $f0 $e3
    ldh a, [$e3]                                  ; $6667: $f0 $e3
    nop                                           ; $6669: $00
    add hl, de                                    ; $666a: $19
    di                                            ; $666b: $f3
    ld a, [bc]                                    ; $666c: $0a
    ret nz                                        ; $666d: $c0

    add b                                         ; $666e: $80
    ld b, b                                       ; $666f: $40
    add b                                         ; $6670: $80
    ld b, b                                       ; $6671: $40
    ld h, $c0                                     ; $6672: $26 $c0
    add b                                         ; $6674: $80
    rst $10                                       ; $6675: $d7
    ld bc, $0080                                  ; $6676: $01 $80 $00
    ld b, $00                                     ; $6679: $06 $00
    ld [bc], a                                    ; $667b: $02
    ld [hl], b                                    ; $667c: $70
    ldh [rP1], a                                  ; $667d: $e0 $00
    rst $08                                       ; $667f: $cf
    ldh [$0e], a                                  ; $6680: $e0 $0e
    ld h, b                                       ; $6682: $60
    ld c, [hl]                                    ; $6683: $4e
    halt                                          ; $6684: $76
    add [hl]                                      ; $6685: $86
    ld [hl], b                                    ; $6686: $70
    nop                                           ; $6687: $00
    add b                                         ; $6688: $80
    ld hl, $381e                                  ; $6689: $21 $1e $38
    daa                                           ; $668c: $27
    rrca                                          ; $668d: $0f
    inc sp                                        ; $668e: $33
    rra                                           ; $668f: $1f
    nop                                           ; $6690: $00
    ld l, $61                                     ; $6691: $2e $61
    ld e, [hl]                                    ; $6693: $5e
    jp $83bc                                      ; $6694: $c3 $bc $83


    ld a, a                                       ; $6697: $7f
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    db $e3                                        ; $669b: $e3
    inc hl                                        ; $669c: $23
    ld sp, $0fc1                                  ; $669d: $31 $c1 $0f
    pop af                                        ; $66a0: $f1
    inc bc                                        ; $66a1: $03
    nop                                           ; $66a2: $00
    xor l                                         ; $66a3: $ad
    inc bc                                        ; $66a4: $03
    db $ed                                        ; $66a5: $ed
    inc bc                                        ; $66a6: $03
    db $ed                                        ; $66a7: $ed
    add e                                         ; $66a8: $83
    ld l, l                                       ; $66a9: $6d
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    nop                                           ; $66ac: $00
    pop hl                                        ; $66ad: $e1
    ld a, a                                       ; $66ae: $7f
    ldh a, [$cf]                                  ; $66af: $f0 $cf
    inc e                                         ; $66b1: $1c
    inc de                                        ; $66b2: $13
    ret nz                                        ; $66b3: $c0

    nop                                           ; $66b4: $00
    or a                                          ; $66b5: $b7
    ldh [$d3], a                                  ; $66b6: $e0 $d3
    add hl, sp                                    ; $66b8: $39
    reti                                          ; $66b9: $d9


    dec e                                         ; $66ba: $1d
    push hl                                       ; $66bb: $e5
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    ld a, [hl]                                    ; $66bf: $7e
    db $d3                                        ; $66c0: $d3
    add e                                         ; $66c1: $83
    ld b, h                                       ; $66c2: $44
    rst $00                                       ; $66c3: $c7
    jp hl                                         ; $66c4: $e9


    db $f4                                        ; $66c5: $f4
    nop                                           ; $66c6: $00
    ld [hl], e                                    ; $66c7: $73
    ldh a, [rPCM34]                               ; $66c8: $f0 $77
    ld d, $e6                                     ; $66ca: $16 $e6
    ld c, $ee                                     ; $66cc: $0e $ee
    inc bc                                        ; $66ce: $03
    ld bc, $e70d                                  ; $66cf: $01 $0d $e7
    dec de                                        ; $66d2: $1b
    inc c                                         ; $66d3: $0c
    ldh a, [rNR32]                                ; $66d4: $f0 $1c
    db $e4                                        ; $66d6: $e4
    ld h, e                                       ; $66d7: $63
    ld l, b                                       ; $66d8: $68
    db $10                                        ; $66d9: $10
    inc bc                                        ; $66da: $03
    xor c                                         ; $66db: $a9
    ld [bc], a                                    ; $66dc: $02
    ld d, b                                       ; $66dd: $50
    nop                                           ; $66de: $00
    ld bc, $0158                                  ; $66df: $01 $58 $01
    db $10                                        ; $66e2: $10
    ld c, b                                       ; $66e3: $48
    ld a, a                                       ; $66e4: $7f
    nop                                           ; $66e5: $00
    ld a, a                                       ; $66e6: $7f
    ld a, a                                       ; $66e7: $7f
    add b                                         ; $66e8: $80
    jr nz, jr_0ad_66f3                            ; $66e9: $20 $08

    ld [bc], a                                    ; $66eb: $02
    ld bc, $0701                                  ; $66ec: $01 $01 $07
    ld c, $03                                     ; $66ef: $0e $03
    dec e                                         ; $66f1: $1d
    nop                                           ; $66f2: $00

jr_0ad_66f3:
    rlca                                          ; $66f3: $07
    pop af                                        ; $66f4: $f1

jr_0ad_66f5:
    rst $38                                       ; $66f5: $ff
    ld hl, sp-$0c                                 ; $66f6: $f8 $f4
    ld b, b                                       ; $66f8: $40
    ld a, $fe                                     ; $66f9: $3e $fe
    nop                                           ; $66fb: $00
    ld a, a                                       ; $66fc: $7f
    nop                                           ; $66fd: $00
    add a                                         ; $66fe: $87
    ld h, e                                       ; $66ff: $63
    ld h, b                                       ; $6700: $60
    ld a, b                                       ; $6701: $78
    ldh [$f8], a                                  ; $6702: $e0 $f8
    nop                                           ; $6704: $00
    jp $cc0e                                      ; $6705: $c3 $0e $cc


    ccf                                           ; $6708: $3f
    rra                                           ; $6709: $1f
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    ld h, e                                       ; $670c: $63
    nop                                           ; $670d: $00
    ld a, h                                       ; $670e: $7c
    cp b                                          ; $670f: $b8
    ld a, b                                       ; $6710: $78
    ld h, b                                       ; $6711: $60
    ld l, a                                       ; $6712: $6f
    ret nc                                        ; $6713: $d0

    jr nc, jr_0ad_6716                            ; $6714: $30 $00

jr_0ad_6716:
    nop                                           ; $6716: $00
    ld hl, sp-$40                                 ; $6717: $f8 $c0
    ld hl, sp-$01                                 ; $6719: $f8 $ff
    ld bc, $ffff                                  ; $671b: $01 $ff $ff
    rst $20                                       ; $671e: $e7
    db $10                                        ; $671f: $10
    rrca                                          ; $6720: $0f
    inc e                                         ; $6721: $1c
    ldh a, [rOBP1]                                ; $6722: $f0 $49
    nop                                           ; $6724: $00
    ld bc, $0402                                  ; $6725: $01 $02 $04
    call nz, $f800                                ; $6728: $c4 $00 $f8
    jr c, jr_0ad_66f5                             ; $672b: $38 $c8

    rst $38                                       ; $672d: $ff
    nop                                           ; $672e: $00
    cp a                                          ; $672f: $bf
    nop                                           ; $6730: $00
    ld a, a                                       ; $6731: $7f
    ld [bc], a                                    ; $6732: $02
    ccf                                           ; $6733: $3f
    ld a, a                                       ; $6734: $7f
    rst $38                                       ; $6735: $ff
    ld a, a                                       ; $6736: $7f
    nop                                           ; $6737: $00
    rst $38                                       ; $6738: $ff
    ld l, e                                       ; $6739: $6b
    db $10                                        ; $673a: $10
    inc bc                                        ; $673b: $03
    nop                                           ; $673c: $00
    inc c                                         ; $673d: $0c
    ld c, $1d                                     ; $673e: $0e $1d
    dec de                                        ; $6740: $1b
    ccf                                           ; $6741: $3f
    scf                                           ; $6742: $37
    ld a, b                                       ; $6743: $78
    cpl                                           ; $6744: $2f
    nop                                           ; $6745: $00
    ld [hl], b                                    ; $6746: $70
    ld c, [hl]                                    ; $6747: $4e
    ld c, b                                       ; $6748: $48
    ld e, b                                       ; $6749: $58
    ld b, c                                       ; $674a: $41
    ld h, b                                       ; $674b: $60
    daa                                           ; $674c: $27
    pop bc                                        ; $674d: $c1
    nop                                           ; $674e: $00
    ldh a, [rSB]                                  ; $674f: $f0 $01
    ld a, $dc                                     ; $6751: $3e $dc
    ldh [$f0], a                                  ; $6753: $e0 $f0
    rst $38                                       ; $6755: $ff
    sbc [hl]                                      ; $6756: $9e
    nop                                           ; $6757: $00
    adc [hl]                                      ; $6758: $8e
    inc bc                                        ; $6759: $03
    inc bc                                        ; $675a: $03
    ld hl, sp+$02                                 ; $675b: $f8 $02
    ld [bc], a                                    ; $675d: $02
    ld [de], a                                    ; $675e: $12
    ldh [rP1], a                                  ; $675f: $e0 $00
    ld e, a                                       ; $6761: $5f
    rst $38                                       ; $6762: $ff
    ret nz                                        ; $6763: $c0

    ld e, $fe                                     ; $6764: $1e $fe
    add b                                         ; $6766: $80
    sbc a                                         ; $6767: $9f
    ldh [rP1], a                                  ; $6768: $e0 $00
    ld h, b                                       ; $676a: $60
    ccf                                           ; $676b: $3f
    rst $18                                       ; $676c: $df
    nop                                           ; $676d: $00
    ld a, a                                       ; $676e: $7f
    add b                                         ; $676f: $80
    nop                                           ; $6770: $00
    jr jr_0ad_6773                                ; $6771: $18 $00

jr_0ad_6773:
    rst $38                                       ; $6773: $ff
    db $d3                                        ; $6774: $d3
    dec e                                         ; $6775: $1d
    ld sp, $43bc                                  ; $6776: $31 $bc $43
    ld [hl], b                                    ; $6779: $70
    inc e                                         ; $677a: $1c
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    ldh [$e7], a                                  ; $677d: $e0 $e7
    rra                                           ; $677f: $1f
    ldh [$fe], a                                  ; $6780: $e0 $fe
    nop                                           ; $6782: $00
    db $ec                                        ; $6783: $ec
    nop                                           ; $6784: $00
    inc e                                         ; $6785: $1c
    ld [$e107], sp                                ; $6786: $08 $07 $e1
    rlca                                          ; $6789: $07
    ld hl, sp+$00                                 ; $678a: $f8 $00
    ld bc, $0f00                                  ; $678c: $01 $00 $0f
    ld [$00f7], sp                                ; $678f: $08 $f7 $00
    add b                                         ; $6792: $80
    ld a, a                                       ; $6793: $7f
    ld a, h                                       ; $6794: $7c
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    ret nz                                        ; $6797: $c0

    pop bc                                        ; $6798: $c1
    ld hl, $fec1                                  ; $6799: $21 $c1 $fe
    db $fc                                        ; $679c: $fc
    ld a, h                                       ; $679d: $7c
    inc bc                                        ; $679e: $03
    ld bc, $0403                                  ; $679f: $01 $03 $04
    adc b                                         ; $67a2: $88
    db $e4                                        ; $67a3: $e4
    rlca                                          ; $67a4: $07
    jr nc, jr_0ad_67a8                            ; $67a5: $30 $01

    ld l, h                                       ; $67a7: $6c

jr_0ad_67a8:
    ld [$ff00], sp                                ; $67a8: $08 $00 $ff
    cp a                                          ; $67ab: $bf
    ccf                                           ; $67ac: $3f
    ld a, a                                       ; $67ad: $7f
    ret nz                                        ; $67ae: $c0

    add b                                         ; $67af: $80
    jr nz, @-$3e                                  ; $67b0: $20 $c0

    nop                                           ; $67b2: $00
    ret nz                                        ; $67b3: $c0

    ret nz                                        ; $67b4: $c0

    ld h, b                                       ; $67b5: $60
    add b                                         ; $67b6: $80
    ld l, b                                       ; $67b7: $68
    ld [bc], a                                    ; $67b8: $02
    scf                                           ; $67b9: $37
    ld [hl], h                                    ; $67ba: $74
    nop                                           ; $67bb: $00
    add hl, de                                    ; $67bc: $19
    ld [hl-], a                                   ; $67bd: $32
    ld b, a                                       ; $67be: $47
    ccf                                           ; $67bf: $3f
    ld b, e                                       ; $67c0: $43
    rrca                                          ; $67c1: $0f
    jr c, @+$1b                                   ; $67c2: $38 $19

    nop                                           ; $67c4: $00
    ld a, h                                       ; $67c5: $7c
    inc b                                         ; $67c6: $04
    ld bc, $882c                                  ; $67c7: $01 $2c $88
    ld [hl], l                                    ; $67ca: $75
    ld hl, sp-$3a                                 ; $67cb: $f8 $c6
    nop                                           ; $67cd: $00
    ld hl, sp+$14                                 ; $67ce: $f8 $14
    db $fc                                        ; $67d0: $fc
    inc b                                         ; $67d1: $04
    adc l                                         ; $67d2: $8d
    ld a, l                                       ; $67d3: $7d
    ldh a, [$d0]                                  ; $67d4: $f0 $d0
    ld [$6f60], sp                                ; $67d6: $08 $60 $6f
    nop                                           ; $67d9: $00
    add b                                         ; $67da: $80
    sub [hl]                                      ; $67db: $96
    ld [$bb78], sp                                ; $67dc: $08 $78 $bb
    ld c, b                                       ; $67df: $48
    nop                                           ; $67e0: $00
    db $fc                                        ; $67e1: $fc
    add e                                         ; $67e2: $83
    ldh a, [rOBP1]                                ; $67e3: $f0 $49
    ld b, [hl]                                    ; $67e5: $46
    daa                                           ; $67e6: $27
    cp b                                          ; $67e7: $b8
    jr nc, jr_0ad_67ea                            ; $67e8: $30 $00

jr_0ad_67ea:
    ccf                                           ; $67ea: $3f
    ldh a, [$f0]                                  ; $67eb: $f0 $f0
    ld c, $01                                     ; $67ed: $0e $01
    ld b, a                                       ; $67ef: $47
    add hl, sp                                    ; $67f0: $39

jr_0ad_67f1:
    ccf                                           ; $67f1: $3f
    nop                                           ; $67f2: $00
    ld bc, $e040                                  ; $67f3: $01 $40 $e0
    ld e, h                                       ; $67f6: $5c
    ldh [$7e], a                                  ; $67f7: $e0 $7e
    ld sp, hl                                     ; $67f9: $f9
    ldh a, [rP1]                                  ; $67fa: $f0 $00
    ld l, h                                       ; $67fc: $6c
    nop                                           ; $67fd: $00
    rra                                           ; $67fe: $1f
    ld hl, sp-$40                                 ; $67ff: $f8 $c0
    ld [bc], a                                    ; $6801: $02
    cp $19                                        ; $6802: $fe $19
    nop                                           ; $6804: $00
    ld hl, sp-$20                                 ; $6805: $f8 $e0
    and a                                         ; $6807: $a7
    ld b, b                                       ; $6808: $40
    ld e, a                                       ; $6809: $5f
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    ld e, a                                       ; $680c: $5f
    nop                                           ; $680d: $00

Jump_0ad_680e:
    ret nz                                        ; $680e: $c0

    jr z, jr_0ad_67f1                             ; $680f: $28 $e0

    adc [hl]                                      ; $6811: $8e
    add b                                         ; $6812: $80
    ld bc, $006c                                  ; $6813: $01 $6c $00
    nop                                           ; $6816: $00
    ld sp, hl                                     ; $6817: $f9
    inc b                                         ; $6818: $04
    push af                                       ; $6819: $f5
    inc c                                         ; $681a: $0c
    pop hl                                        ; $681b: $e1
    jr jr_0ad_6821                                ; $681c: $18 $03

    adc b                                         ; $681e: $88
    nop                                           ; $681f: $00
    adc e                                         ; $6820: $8b

jr_0ad_6821:
    ld h, b                                       ; $6821: $60
    sbc b                                         ; $6822: $98
    ld l, h                                       ; $6823: $6c
    inc e                                         ; $6824: $1c
    ld a, [de]                                    ; $6825: $1a
    ld c, $0d                                     ; $6826: $0e $0d
    nop                                           ; $6828: $00
    add a                                         ; $6829: $87
    rlca                                          ; $682a: $07
    ld [c], a                                     ; $682b: $e2
    rlca                                          ; $682c: $07
    di                                            ; $682d: $f3
    di                                            ; $682e: $f3
    rlca                                          ; $682f: $07
    ld a, [c]                                     ; $6830: $f2
    nop                                           ; $6831: $00
    ld b, $03                                     ; $6832: $06 $03
    ccf                                           ; $6834: $3f
    rlca                                          ; $6835: $07
    inc h                                         ; $6836: $24
    ld bc, $d631                                  ; $6837: $01 $31 $d6

jr_0ad_683a:
    nop                                           ; $683a: $00
    ret nc                                        ; $683b: $d0

    ret z                                         ; $683c: $c8

    rst $00                                       ; $683d: $c7
    rrca                                          ; $683e: $0f
    inc de                                        ; $683f: $13
    rlca                                          ; $6840: $07
    dec de                                        ; $6841: $1b
    adc h                                         ; $6842: $8c
    nop                                           ; $6843: $00
    add e                                         ; $6844: $83
    sbc a                                         ; $6845: $9f
    ret nz                                        ; $6846: $c0

    ld c, $6e                                     ; $6847: $0e $6e
    ld b, $80                                     ; $6849: $06 $80
    ld a, [de]                                    ; $684b: $1a
    nop                                           ; $684c: $00
    dec de                                        ; $684d: $1b
    ldh [rP1], a                                  ; $684e: $e0 $00
    db $ec                                        ; $6850: $ec
    ld a, [de]                                    ; $6851: $1a
    rst $38                                       ; $6852: $ff
    inc [hl]                                      ; $6853: $34
    scf                                           ; $6854: $37
    nop                                           ; $6855: $00
    ldh [$60], a                                  ; $6856: $e0 $60
    rrca                                          ; $6858: $0f
    inc c                                         ; $6859: $0c
    db $fc                                        ; $685a: $fc
    ccf                                           ; $685b: $3f

jr_0ad_685c:
    jp Jump_000_00fc                              ; $685c: $c3 $fc $00


    ld [c], a                                     ; $685f: $e2
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    add hl, de                                    ; $6862: $19
    dec e                                         ; $6863: $1d
    pop bc                                        ; $6864: $c1
    rrca                                          ; $6865: $0f
    ldh [rP1], a                                  ; $6866: $e0 $00
    ld h, a                                       ; $6868: $67
    ldh a, [$c1]                                  ; $6869: $f0 $c1
    ret nz                                        ; $686b: $c0

    inc bc                                        ; $686c: $03
    ret nz                                        ; $686d: $c0

    rst $00                                       ; $686e: $c7
    jr nc, jr_0ad_6871                            ; $686f: $30 $00

jr_0ad_6871:
    ld bc, $fe00                                  ; $6871: $01 $00 $fe
    ccf                                           ; $6874: $3f
    nop                                           ; $6875: $00
    rlca                                          ; $6876: $07
    ret nz                                        ; $6877: $c0

    jr nz, jr_0ad_687a                            ; $6878: $20 $00

jr_0ad_687a:
    ldh a, [$e0]                                  ; $687a: $f0 $e0
    rst $18                                       ; $687c: $df
    ldh [$0e], a                                  ; $687d: $e0 $0e
    inc e                                         ; $687f: $1c
    db $ed                                        ; $6880: $ed
    jr jr_0ad_68b3                                ; $6881: $18 $30

    rlc b                                         ; $6883: $cb $00
    jr nc, jr_0ad_6888                            ; $6885: $30 $01

    ld [hl-], a                                   ; $6887: $32

jr_0ad_6888:
    add hl, bc                                    ; $6888: $09
    ld h, a                                       ; $6889: $67
    ld [hl], b                                    ; $688a: $70
    xor a                                         ; $688b: $af
    ldh [rP1], a                                  ; $688c: $e0 $00
    rra                                           ; $688e: $1f
    rst $08                                       ; $688f: $cf
    ccf                                           ; $6890: $3f
    nop                                           ; $6891: $00
    cp $fe                                        ; $6892: $fe $fe
    ld bc, $00f8                                  ; $6894: $01 $f8 $00
    jp nz, $0106                                  ; $6897: $c2 $06 $01

    inc e                                         ; $689a: $1c
    ld [c], a                                     ; $689b: $e2
    ld c, $e2                                     ; $689c: $0e $e2
    ld c, $00                                     ; $689e: $0e $00
    db $e3                                        ; $68a0: $e3
    rrca                                          ; $68a1: $0f
    ld b, e                                       ; $68a2: $43
    rra                                           ; $68a3: $1f
    ld b, e                                       ; $68a4: $43
    rra                                           ; $68a5: $1f
    ld b, a                                       ; $68a6: $47
    rra                                           ; $68a7: $1f
    nop                                           ; $68a8: $00
    ret nc                                        ; $68a9: $d0

    jr jr_0ad_685c                                ; $68aa: $18 $b0

    jr c, jr_0ad_683a                             ; $68ac: $38 $8c

jr_0ad_68ae:
    add e                                         ; $68ae: $83
    rlca                                          ; $68af: $07
    add hl, hl                                    ; $68b0: $29
    nop                                           ; $68b1: $00
    rlca                                          ; $68b2: $07

jr_0ad_68b3:
    add hl, hl                                    ; $68b3: $29
    cpl                                           ; $68b4: $2f
    xor b                                         ; $68b5: $a8
    rla                                           ; $68b6: $17
    ret nc                                        ; $68b7: $d0

    rla                                           ; $68b8: $17

jr_0ad_68b9:
    jp Jump_000_1300                              ; $68b9: $c3 $00 $13


    pop bc                                        ; $68bc: $c1
    pop hl                                        ; $68bd: $e1
    dec bc                                        ; $68be: $0b
    ld e, c                                       ; $68bf: $59
    ldh a, [$98]                                  ; $68c0: $f0 $98
    ld l, h                                       ; $68c2: $6c
    nop                                           ; $68c3: $00
    adc $36                                       ; $68c4: $ce $36
    db $ec                                        ; $68c6: $ec
    inc bc                                        ; $68c7: $03
    xor $09                                       ; $68c8: $ee $09
    ld [hl], e                                    ; $68ca: $73
    or h                                          ; $68cb: $b4
    nop                                           ; $68cc: $00
    add hl, sp                                    ; $68cd: $39
    ld e, d                                       ; $68ce: $5a
    ld [hl], e                                    ; $68cf: $73
    ld l, a                                       ; $68d0: $6f
    ldh a, [$37]                                  ; $68d1: $f0 $37
    rst $00                                       ; $68d3: $c7
    ldh a, [rP1]                                  ; $68d4: $f0 $00
    ld [hl], a                                    ; $68d6: $77
    ld [hl], b                                    ; $68d7: $70
    and b                                         ; $68d8: $a0
    and e                                         ; $68d9: $a3
    ret nz                                        ; $68da: $c0

    ld bc, $e050                                  ; $68db: $01 $50 $e0
    nop                                           ; $68de: $00
    cp b                                          ; $68df: $b8
    ld [hl], b                                    ; $68e0: $70
    call nz, Call_0ad_5c78                        ; $68e1: $c4 $78 $5c
    ret nz                                        ; $68e4: $c0

    jr z, jr_0ad_68ae                             ; $68e5: $28 $c7

    nop                                           ; $68e7: $00
    sub [hl]                                      ; $68e8: $96
    ld h, l                                       ; $68e9: $65
    dec bc                                        ; $68ea: $0b
    ld a, [c]                                     ; $68eb: $f2
    db $fc                                        ; $68ec: $fc
    add l                                         ; $68ed: $85
    ld a, h                                       ; $68ee: $7c
    jp nz, Jump_000_1e00                          ; $68ef: $c2 $00 $1e

    ld l, [hl]                                    ; $68f2: $6e
    rrca                                          ; $68f3: $0f
    scf                                           ; $68f4: $37
    ld a, $5f                                     ; $68f5: $3e $5f
    add b                                         ; $68f7: $80
    ld b, $00                                     ; $68f8: $06 $00
    ld [$c0f0], sp                                ; $68fa: $08 $f0 $c0
    ld a, [hl]                                    ; $68fd: $7e
    ccf                                           ; $68fe: $3f
    ld b, a                                       ; $68ff: $47
    rlca                                          ; $6900: $07
    add hl, de                                    ; $6901: $19
    inc b                                         ; $6902: $04
    rrca                                          ; $6903: $0f
    ld [hl], c                                    ; $6904: $71
    ld bc, $73be                                  ; $6905: $01 $be $73
    ld [hl], b                                    ; $6908: $70
    nop                                           ; $6909: $00
    ld l, a                                       ; $690a: $6f
    ldh [rSC], a                                  ; $690b: $e0 $02
    rrca                                          ; $690d: $0f
    nop                                           ; $690e: $00
    add a                                         ; $690f: $87
    or b                                          ; $6910: $b0
    add d                                         ; $6911: $82
    cp b                                          ; $6912: $b8
    ld [bc], a                                    ; $6913: $02
    ld [$00a0], sp                                ; $6914: $08 $a0 $00
    jr c, jr_0ad_68b9                             ; $6917: $38 $a0

    jr nc, jr_0ad_695a                            ; $6919: $30 $3f

    ld c, a                                       ; $691b: $4f
    ccf                                           ; $691c: $3f
    ld c, a                                       ; $691d: $4f
    ld [hl], b                                    ; $691e: $70
    ld [$6040], sp                                ; $691f: $08 $40 $60
    ret nz                                        ; $6922: $c0

    and b                                         ; $6923: $a0
    ld d, b                                       ; $6924: $50
    ld bc, $03f0                                  ; $6925: $01 $f0 $03
    ld sp, hl                                     ; $6928: $f9
    ld b, $01                                     ; $6929: $06 $01
    db $fc                                        ; $692b: $fc
    ld bc, $00fe                                  ; $692c: $01 $fe $00
    ld [bc], a                                    ; $692f: $02
    ld [$09d2], sp                                ; $6930: $08 $d2 $09
    add hl, sp                                    ; $6933: $39
    nop                                           ; $6934: $00
    ld [hl], $78                                  ; $6935: $36 $78
    ld h, a                                       ; $6937: $67
    inc a                                         ; $6938: $3c
    inc sp                                        ; $6939: $33
    rra                                           ; $693a: $1f
    and a                                         ; $693b: $a7
    rlca                                          ; $693c: $07
    nop                                           ; $693d: $00
    ld e, e                                       ; $693e: $5b
    inc bc                                        ; $693f: $03
    dec l                                         ; $6940: $2d
    ld bc, $132f                                  ; $6941: $01 $2f $13
    inc b                                         ; $6944: $04
    ld a, [c]                                     ; $6945: $f2
    inc b                                         ; $6946: $04
    inc a                                         ; $6947: $3c
    ret z                                         ; $6948: $c8

    ld c, [hl]                                    ; $6949: $4e
    db $f4                                        ; $694a: $f4
    dec bc                                        ; $694b: $0b
    dec d                                         ; $694c: $15
    ld [bc], a                                    ; $694d: $02
    cp c                                          ; $694e: $b9
    rra                                           ; $694f: $1f
    nop                                           ; $6950: $00
    pop hl                                        ; $6951: $e1
    nop                                           ; $6952: $00
    ld hl, sp+$00                                 ; $6953: $f8 $00
    ldh [$38], a                                  ; $6955: $e0 $38
    scf                                           ; $6957: $37
    inc e                                         ; $6958: $1c
    nop                                           ; $6959: $00

jr_0ad_695a:
    dec de                                        ; $695a: $1b
    add b                                         ; $695b: $80
    rrca                                          ; $695c: $0f
    ret nz                                        ; $695d: $c0

    adc a                                         ; $695e: $8f
    ldh [$c0], a                                  ; $695f: $e0 $c0
    ld [hl], b                                    ; $6961: $70
    nop                                           ; $6962: $00
    inc b                                         ; $6963: $04
    nop                                           ; $6964: $00
    ld [bc], a                                    ; $6965: $02
    ld a, h                                       ; $6966: $7c
    ld l, h                                       ; $6967: $6c
    add b                                         ; $6968: $80
    ld e, a                                       ; $6969: $5f
    ldh [rP1], a                                  ; $696a: $e0 $00
    inc h                                         ; $696c: $24
    ldh a, [$61]                                  ; $696d: $f0 $61
    ld hl, sp+$39                                 ; $696f: $f8 $39
    inc a                                         ; $6971: $3c
    adc $1e                                       ; $6972: $ce $1e
    nop                                           ; $6974: $00
    xor $1e                                       ; $6975: $ee $1e
    and $06                                       ; $6977: $e6 $06
    ld a, [hl-]                                   ; $6979: $3a
    ld a, c                                       ; $697a: $79
    add hl, bc                                    ; $697b: $09
    add hl, de                                    ; $697c: $19
    nop                                           ; $697d: $00
    ld sp, hl                                     ; $697e: $f9
    dec b                                         ; $697f: $05
    ld sp, $c10d                                  ; $6980: $31 $0d $c1
    cp b                                          ; $6983: $b8
    add e                                         ; $6984: $83
    jr c, jr_0ad_6987                             ; $6985: $38 $00

jr_0ad_6987:
    inc bc                                        ; $6987: $03
    dec bc                                        ; $6988: $0b
    jp $f706                                      ; $6989: $c3 $06 $f7


    ld b, b                                       ; $698c: $40
    add b                                         ; $698d: $80
    ret nz                                        ; $698e: $c0

    ld c, $80                                     ; $698f: $0e $80
    add b                                         ; $6991: $80
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    inc b                                         ; $6994: $04
    nop                                           ; $6995: $00
    ld b, $00                                     ; $6996: $06 $00
    ld [bc], a                                    ; $6998: $02
    add b                                         ; $6999: $80
    dec e                                         ; $699a: $1d
    nop                                           ; $699b: $00
    ld a, [de]                                    ; $699c: $1a
    add b                                         ; $699d: $80
    add h                                         ; $699e: $84
    add e                                         ; $699f: $83
    add b                                         ; $69a0: $80
    add b                                         ; $69a1: $80
    add [hl]                                      ; $69a2: $86
    add $00                                       ; $69a3: $c6 $00
    ret nz                                        ; $69a5: $c0

    inc bc                                        ; $69a6: $03
    jp nz, $c000                                  ; $69a7: $c2 $00 $c0

    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    ld e, $00                                     ; $69ac: $1e $00
    ld de, $067e                                  ; $69ae: $11 $7e $06
    ld [hl], b                                    ; $69b1: $70
    pop de                                        ; $69b2: $d1
    jp $e08d                                      ; $69b3: $c3 $8d $e0


    inc b                                         ; $69b6: $04
    ld h, b                                       ; $69b7: $60
    ret nz                                        ; $69b8: $c0

    add c                                         ; $69b9: $81
    ld b, $07                                     ; $69ba: $06 $07
    or h                                          ; $69bc: $b4
    ld [bc], a                                    ; $69bd: $02
    jp nz, Jump_000_0005                          ; $69be: $c2 $05 $00

    add l                                         ; $69c1: $85
    jp nz, $e05c                                  ; $69c2: $c2 $5c $e0

    ret nz                                        ; $69c5: $c0

    ld bc, $be06                                  ; $69c6: $01 $06 $be
    db $10                                        ; $69c9: $10
    pop bc                                        ; $69ca: $c1
    cp [hl]                                       ; $69cb: $be
    pop bc                                        ; $69cc: $c1
    adc b                                         ; $69cd: $88
    ld a, [bc]                                    ; $69ce: $0a
    ld b, b                                       ; $69cf: $40
    ld bc, $4207                                  ; $69d0: $01 $07 $42
    nop                                           ; $69d3: $00
    rrca                                          ; $69d4: $0f
    inc c                                         ; $69d5: $0c
    db $e4                                        ; $69d6: $e4
    rst $20                                       ; $69d7: $e7
    ld hl, sp+$03                                 ; $69d8: $f8 $03
    ldh a, [$0c]                                  ; $69da: $f0 $0c

jr_0ad_69dc:
    nop                                           ; $69dc: $00
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    push bc                                       ; $69df: $c5
    rst $30                                       ; $69e0: $f7
    ldh a, [rNR52]                                ; $69e1: $f0 $26
    ld [c], a                                     ; $69e3: $e2
    ld c, [hl]                                    ; $69e4: $4e
    nop                                           ; $69e5: $00
    add $0e                                       ; $69e6: $c6 $0e
    sub d                                         ; $69e8: $92
    inc e                                         ; $69e9: $1c
    inc c                                         ; $69ea: $0c
    jr nc, jr_0ad_6a09                            ; $69eb: $30 $1c

    ld a, b                                       ; $69ed: $78
    add b                                         ; $69ee: $80
    ld h, e                                       ; $69ef: $63
    ld a, b                                       ; $69f0: $78
    db $10                                        ; $69f1: $10
    inc bc                                        ; $69f2: $03

jr_0ad_69f3:
    sub [hl]                                      ; $69f3: $96
    ld [bc], a                                    ; $69f4: $02
    ld b, b                                       ; $69f5: $40
    nop                                           ; $69f6: $00
    ld bc, $fcb0                                  ; $69f7: $01 $b0 $fc
    cp $fd                                        ; $69fa: $fe $fd
    db $fc                                        ; $69fc: $fc
    ld sp, hl                                     ; $69fd: $f9
    ld a, [$2080]                                 ; $69fe: $fa $80 $20

jr_0ad_6a01:
    jr nz, @+$05                                  ; $6a01: $20 $03

    rlca                                          ; $6a03: $07
    ld bc, $000f                                  ; $6a04: $01 $0f $00
    ld e, $ce                                     ; $6a07: $1e $ce

jr_0ad_6a09:
    nop                                           ; $6a09: $00
    add b                                         ; $6a0a: $80
    db $ec                                        ; $6a0b: $ec
    inc a                                         ; $6a0c: $3c
    inc a                                         ; $6a0d: $3c
    ld h, d                                       ; $6a0e: $62
    ld a, h                                       ; $6a0f: $7c
    pop af                                        ; $6a10: $f1
    ldh a, [rP1]                                  ; $6a11: $f0 $00
    push hl                                       ; $6a13: $e5
    inc c                                         ; $6a14: $0c

jr_0ad_6a15:
    jr jr_0ad_69dc                                ; $6a15: $18 $c5

    ld [de], a                                    ; $6a17: $12
    ld a, [bc]                                    ; $6a18: $0a
    rlca                                          ; $6a19: $07
    ld bc, $0720                                  ; $6a1a: $01 $20 $07
    ld c, d                                       ; $6a1d: $4a
    ld b, b                                       ; $6a1e: $40
    jr @+$42                                      ; $6a1f: $18 $40

    add b                                         ; $6a21: $80
    ldh [rNR41], a                                ; $6a22: $e0 $20
    ld h, b                                       ; $6a24: $60
    inc b                                         ; $6a25: $04
    ld [hl], b                                    ; $6a26: $70
    ld a, h                                       ; $6a27: $7c
    nop                                           ; $6a28: $00
    adc h                                         ; $6a29: $8c
    or d                                          ; $6a2a: $b2
    ld d, b                                       ; $6a2b: $50
    jr nc, jr_0ad_6a15                            ; $6a2c: $30 $e7

    jr @+$06                                      ; $6a2e: $18 $04

    jp Jump_000_1038                              ; $6a30: $c3 $38 $10


    jr nc, @+$08                                  ; $6a33: $30 $06

    ld h, b                                       ; $6a35: $60
    cp b                                          ; $6a36: $b8
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    ld bc, $0300                                  ; $6a3a: $01 $00 $03
    inc bc                                        ; $6a3d: $03
    ld sp, hl                                     ; $6a3e: $f9
    ei                                            ; $6a3f: $fb
    inc bc                                        ; $6a40: $03
    ld sp, hl                                     ; $6a41: $f9
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    ld sp, hl                                     ; $6a44: $f9
    inc bc                                        ; $6a45: $03
    jr jr_0ad_6a55                                ; $6a46: $18 $0d

    inc a                                         ; $6a48: $3c
    ld a, b                                       ; $6a49: $78
    jr jr_0ad_6a4c                                ; $6a4a: $18 $00

jr_0ad_6a4c:
    ld [hl], b                                    ; $6a4c: $70
    or [hl]                                       ; $6a4d: $b6
    ldh [$2e], a                                  ; $6a4e: $e0 $2e
    ld h, b                                       ; $6a50: $60
    nop                                           ; $6a51: $00
    jr z, jr_0ad_6a6c                             ; $6a52: $28 $18

    nop                                           ; $6a54: $00

jr_0ad_6a55:
    add hl, de                                    ; $6a55: $19
    ld bc, $8680                                  ; $6a56: $01 $80 $86
    add l                                         ; $6a59: $85
    inc bc                                        ; $6a5a: $03
    ld h, c                                       ; $6a5b: $61

Call_0ad_6a5c:
    ld [bc], a                                    ; $6a5c: $02
    nop                                           ; $6a5d: $00
    ld h, c                                       ; $6a5e: $61
    ld hl, $8190                                  ; $6a5f: $21 $90 $81
    ld [hl], h                                    ; $6a62: $74
    ld a, b                                       ; $6a63: $78
    ld [$0070], sp                                ; $6a64: $08 $70 $00
    ld h, b                                       ; $6a67: $60
    rst $20                                       ; $6a68: $e7
    adc b                                         ; $6a69: $88
    inc d                                         ; $6a6a: $14
    ld [hl], b                                    ; $6a6b: $70

jr_0ad_6a6c:
    ld [hl], e                                    ; $6a6c: $73
    and a                                         ; $6a6d: $a7
    ld c, $00                                     ; $6a6e: $0e $00
    sbc b                                         ; $6a70: $98
    jr jr_0ad_69f3                                ; $6a71: $18 $80

    jr nc, jr_0ad_6a01                            ; $6a73: $30 $8c

    add b                                         ; $6a75: $80
    inc b                                         ; $6a76: $04
    add c                                         ; $6a77: $81
    nop                                           ; $6a78: $00
    ld bc, $7c82                                  ; $6a79: $01 $82 $7c
    ld a, a                                       ; $6a7c: $7f
    cp h                                          ; $6a7d: $bc
    ld a, h                                       ; $6a7e: $7c
    nop                                           ; $6a7f: $00
    or e                                          ; $6a80: $b3
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    ld c, d                                       ; $6a83: $4a
    dec e                                         ; $6a84: $1d
    and c                                         ; $6a85: $a1
    add b                                         ; $6a86: $80
    ld c, [hl]                                    ; $6a87: $4e
    ld c, [hl]                                    ; $6a88: $4e
    adc b                                         ; $6a89: $88
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    add d                                         ; $6a8c: $82
    inc c                                         ; $6a8d: $0c
    inc b                                         ; $6a8e: $04
    add b                                         ; $6a8f: $80
    sbc h                                         ; $6a90: $9c
    add c                                         ; $6a91: $81
    sbc b                                         ; $6a92: $98
    ld [$6203], sp                                ; $6a93: $08 $03 $62
    ld b, a                                       ; $6a96: $47
    db $e4                                        ; $6a97: $e4
    ret nc                                        ; $6a98: $d0

    jr z, @+$01                                   ; $6a99: $28 $ff

    nop                                           ; $6a9b: $00
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    ld a, a                                       ; $6aa0: $7f
    ld b, b                                       ; $6aa1: $40
    ccf                                           ; $6aa2: $3f
    ld b, $01                                     ; $6aa3: $06 $01
    add hl, de                                    ; $6aa5: $19
    nop                                           ; $6aa6: $00
    ld e, $3a                                     ; $6aa7: $1e $3a
    inc [hl]                                      ; $6aa9: $34
    ld [hl], b                                    ; $6aaa: $70
    ld l, c                                       ; $6aab: $69
    ldh a, [$e7]                                  ; $6aac: $f0 $e7
    ldh [rLCDC], a                                ; $6aae: $e0 $40
    rst $08                                       ; $6ab0: $cf
    ld [bc], a                                    ; $6ab1: $02
    ld [$1e80], sp                                ; $6ab2: $08 $80 $1e
    ld a, [hl]                                    ; $6ab5: $7e
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    cp $00                                        ; $6ab8: $fe $00
    cp $00                                        ; $6aba: $fe $00
    ld a, [$fdfe]                                 ; $6abc: $fa $fe $fd
    ld bc, $01fc                                  ; $6abf: $01 $fc $01
    nop                                           ; $6ac2: $00
    ld bc, $e0f8                                  ; $6ac3: $01 $f8 $e0
    call z, $a0c9                                 ; $6ac6: $cc $c9 $a0
    add c                                         ; $6ac9: $81
    jp nz, Jump_0ad_4b00                          ; $6aca: $c2 $00 $4b

    add b                                         ; $6acd: $80
    ld d, e                                       ; $6ace: $53
    adc e                                         ; $6acf: $8b
    ld e, b                                       ; $6ad0: $58
    jp nz, $c96a                                  ; $6ad1: $c2 $6a $c9

    nop                                           ; $6ad4: $00
    ld l, b                                       ; $6ad5: $68
    adc e                                         ; $6ad6: $8b
    ld h, c                                       ; $6ad7: $61
    ld b, c                                       ; $6ad8: $41
    sub b                                         ; $6ad9: $90
    inc e                                         ; $6ada: $1c
    ld l, [hl]                                    ; $6adb: $6e
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    ld h, b                                       ; $6ade: $60
    cp $40                                        ; $6adf: $fe $40
    cp [hl]                                       ; $6ae1: $be
    db $f4                                        ; $6ae2: $f4
    sub [hl]                                      ; $6ae3: $96
    cp $fc                                        ; $6ae4: $fe $fc
    nop                                           ; $6ae6: $00
    ld a, $5c                                     ; $6ae7: $3e $5c
    ld sp, $6031                                  ; $6ae9: $31 $31 $60
    inc c                                         ; $6aec: $0c
    ld e, l                                       ; $6aed: $5d
    inc c                                         ; $6aee: $0c
    nop                                           ; $6aef: $00
    dec e                                         ; $6af0: $1d
    ret nc                                        ; $6af1: $d0

    ret                                           ; $6af2: $c9


    ret nc                                        ; $6af3: $d0

    sub c                                         ; $6af4: $91
    jr nz, @+$63                                  ; $6af5: $20 $61

    ldh [rP1], a                                  ; $6af7: $e0 $00
    ld h, e                                       ; $6af9: $63
    ld [c], a                                     ; $6afa: $e2
    inc bc                                        ; $6afb: $03
    rrca                                          ; $6afc: $0f
    scf                                           ; $6afd: $37
    dec sp                                        ; $6afe: $3b
    rst $30                                       ; $6aff: $f7
    adc h                                         ; $6b00: $8c
    ld [$3873], sp                                ; $6b01: $08 $73 $38
    db $d3                                        ; $6b04: $d3
    adc b                                         ; $6b05: $88
    ld [bc], a                                    ; $6b06: $02
    jr @+$61                                      ; $6b07: $18 $5f

    ccf                                           ; $6b09: $3f
    ccf                                           ; $6b0a: $3f
    nop                                           ; $6b0b: $00
    ld b, a                                       ; $6b0c: $47
    scf                                           ; $6b0d: $37
    ld c, e                                       ; $6b0e: $4b
    add hl, de                                    ; $6b0f: $19
    rlca                                          ; $6b10: $07
    rlca                                          ; $6b11: $07
    ld h, e                                       ; $6b12: $63
    rlca                                          ; $6b13: $07
    nop                                           ; $6b14: $00
    or c                                          ; $6b15: $b1
    or h                                          ; $6b16: $b4
    add e                                         ; $6b17: $83
    or b                                          ; $6b18: $b0
    add e                                         ; $6b19: $83
    ld h, b                                       ; $6b1a: $60
    ld c, a                                       ; $6b1b: $4f
    rla                                           ; $6b1c: $17
    nop                                           ; $6b1d: $00
    ld h, a                                       ; $6b1e: $67
    rla                                           ; $6b1f: $17
    ld h, a                                       ; $6b20: $67
    jr nc, jr_0ad_6b2a                            ; $6b21: $30 $07

    jr c, jr_0ad_6b30                             ; $6b23: $38 $0b

    jr c, jr_0ad_6b27                             ; $6b25: $38 $00

jr_0ad_6b27:
    dec bc                                        ; $6b27: $0b
    jr @+$0d                                      ; $6b28: $18 $0b

jr_0ad_6b2a:
    inc de                                        ; $6b2a: $13
    dec bc                                        ; $6b2b: $0b
    inc bc                                        ; $6b2c: $03
    ld sp, hl                                     ; $6b2d: $f9
    inc bc                                        ; $6b2e: $03
    nop                                           ; $6b2f: $00

jr_0ad_6b30:
    rst $30                                       ; $6b30: $f7
    rlca                                          ; $6b31: $07
    push af                                       ; $6b32: $f5
    jp hl                                         ; $6b33: $e9


    and $d9                                       ; $6b34: $e6 $d9
    add $16                                       ; $6b36: $c6 $16
    nop                                           ; $6b38: $00
    and l                                         ; $6b39: $a5
    ld c, $bc                                     ; $6b3a: $0e $bc
    inc e                                         ; $6b3c: $1c

jr_0ad_6b3d:
    adc c                                         ; $6b3d: $89
    call nz, $212d                                ; $6b3e: $c4 $2d $21
    nop                                           ; $6b41: $00
    db $e4                                        ; $6b42: $e4
    inc [hl]                                      ; $6b43: $34
    or $48                                        ; $6b44: $f6 $48
    ld a, b                                       ; $6b46: $78
    adc a                                         ; $6b47: $8f
    dec b                                         ; $6b48: $05
    ld [hl], b                                    ; $6b49: $70
    nop                                           ; $6b4a: $00
    jr nc, @-$78                                  ; $6b4b: $30 $86

    ld a, [hl]                                    ; $6b4d: $7e
    ld bc, $42fd                                  ; $6b4e: $01 $fd $42
    cp h                                          ; $6b51: $bc
    ld b, $00                                     ; $6b52: $06 $00
    ld a, [$e0fc]                                 ; $6b54: $fa $fc $e0
    jr jr_0ad_6b3d                                ; $6b57: $18 $e4

    jr nc, jr_0ad_6b5d                            ; $6b59: $30 $02

    ld b, $00                                     ; $6b5b: $06 $00

jr_0ad_6b5d:
    ld c, b                                       ; $6b5d: $48
    ld a, [hl]                                    ; $6b5e: $7e
    nop                                           ; $6b5f: $00
    ld h, d                                       ; $6b60: $62
    inc e                                         ; $6b61: $1c
    and c                                         ; $6b62: $a1
    inc hl                                        ; $6b63: $23
    pop bc                                        ; $6b64: $c1
    nop                                           ; $6b65: $00
    jp Jump_0ad_7bd9                              ; $6b66: $c3 $d9 $7b


    ld d, c                                       ; $6b69: $51
    halt                                          ; $6b6a: $76
    adc a                                         ; $6b6b: $8f
    ld b, $4f                                     ; $6b6c: $06 $4f
    nop                                           ; $6b6e: $00
    halt                                          ; $6b6f: $76
    add hl, bc                                    ; $6b70: $09
    ld d, $53                                     ; $6b71: $16 $53
    ld [de], a                                    ; $6b73: $12
    db $d3                                        ; $6b74: $d3
    dec de                                        ; $6b75: $1b
    sub e                                         ; $6b76: $93
    nop                                           ; $6b77: $00
    dec de                                        ; $6b78: $1b
    dec de                                        ; $6b79: $1b
    ret z                                         ; $6b7a: $c8

    add hl, de                                    ; $6b7b: $19
    jp z, $2f76                                   ; $6b7c: $ca $76 $2f

    ld [hl], b                                    ; $6b7f: $70
    nop                                           ; $6b80: $00
    dec l                                         ; $6b81: $2d
    ld hl, sp-$5b                                 ; $6b82: $f8 $a5
    ld a, b                                       ; $6b84: $78
    and l                                         ; $6b85: $a5
    ld b, $b4                                     ; $6b86: $06 $b4
    ld c, $00                                     ; $6b88: $0e $00
    call nz, $c6c8                                ; $6b8a: $c4 $c8 $c6
    ret z                                         ; $6b8d: $c8

    call nz, $a44c                                ; $6b8e: $c4 $4c $a4
    ld b, h                                       ; $6b91: $44
    nop                                           ; $6b92: $00
    and b                                         ; $6b93: $a0
    ld b, b                                       ; $6b94: $40
    or b                                          ; $6b95: $b0
    jr nc, @-$2e                                  ; $6b96: $30 $d0

    ld de, $190d                                  ; $6b98: $11 $0d $19
    nop                                           ; $6b9b: $00
    dec b                                         ; $6b9c: $05
    add hl, bc                                    ; $6b9d: $09
    dec b                                         ; $6b9e: $05
    inc c                                         ; $6b9f: $0c
    ld b, $0c                                     ; $6ba0: $06 $0c
    ld b, $04                                     ; $6ba2: $06 $04
    nop                                           ; $6ba4: $00
    ld [bc], a                                    ; $6ba5: $02
    dec b                                         ; $6ba6: $05
    inc bc                                        ; $6ba7: $03
    ld b, $03                                     ; $6ba8: $06 $03
    dec sp                                        ; $6baa: $3b
    or c                                          ; $6bab: $b1
    halt                                          ; $6bac: $76
    nop                                           ; $6bad: $00
    dec b                                         ; $6bae: $05
    ld h, [hl]                                    ; $6baf: $66
    ld [de], a                                    ; $6bb0: $12
    and b                                         ; $6bb1: $a0
    inc c                                         ; $6bb2: $0c
    call nc, $c11d                                ; $6bb3: $d4 $1d $c1
    nop                                           ; $6bb6: $00
    ret c                                         ; $6bb7: $d8

    ld b, c                                       ; $6bb8: $41
    ld e, d                                       ; $6bb9: $5a
    inc bc                                        ; $6bba: $03
    ld b, c                                       ; $6bbb: $41
    inc bc                                        ; $6bbc: $03
    ld a, [$0079]                                 ; $6bbd: $fa $79 $00
    inc bc                                        ; $6bc0: $03
    pop af                                        ; $6bc1: $f1
    daa                                           ; $6bc2: $27
    db $d3                                        ; $6bc3: $d3
    dec d                                         ; $6bc4: $15
    ret nz                                        ; $6bc5: $c0

    ld b, $c0                                     ; $6bc6: $06 $c0
    nop                                           ; $6bc8: $00
    inc bc                                        ; $6bc9: $03
    call z, Call_000_0e0c                         ; $6bca: $cc $0c $0e
    sub d                                         ; $6bcd: $92
    jp $c2bd                                      ; $6bce: $c3 $bd $c2


    nop                                           ; $6bd1: $00
    cp h                                          ; $6bd2: $bc
    add [hl]                                      ; $6bd3: $86
    ld a, d                                       ; $6bd4: $7a
    adc h                                         ; $6bd5: $8c
    pop af                                        ; $6bd6: $f1
    ld a, [c]                                     ; $6bd7: $f2
    inc bc                                        ; $6bd8: $03
    ld b, $00                                     ; $6bd9: $06 $00
    ld b, $05                                     ; $6bdb: $06 $05
    ld sp, hl                                     ; $6bdd: $f9
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    ld b, h                                       ; $6be0: $44
    inc c                                         ; $6be1: $0c
    push bc                                       ; $6be2: $c5
    nop                                           ; $6be3: $00
    rrca                                          ; $6be4: $0f
    sub b                                         ; $6be5: $90
    rrca                                          ; $6be6: $0f
    ld c, b                                       ; $6be7: $48
    ld d, a                                       ; $6be8: $57
    dec h                                         ; $6be9: $25
    dec b                                         ; $6bea: $05
    add hl, hl                                    ; $6beb: $29
    nop                                           ; $6bec: $00
    adc l                                         ; $6bed: $8d
    add hl, bc                                    ; $6bee: $09
    ld e, h                                       ; $6bef: $5c
    add hl, de                                    ; $6bf0: $19
    ld b, h                                       ; $6bf1: $44

jr_0ad_6bf2:
    dec bc                                        ; $6bf2: $0b
    inc c                                         ; $6bf3: $0c
    inc d                                         ; $6bf4: $14
    nop                                           ; $6bf5: $00
    rst $20                                       ; $6bf6: $e7
    ld a, b                                       ; $6bf7: $78
    sub e                                         ; $6bf8: $93
    db $f4                                        ; $6bf9: $f4
    dec b                                         ; $6bfa: $05
    sbc c                                         ; $6bfb: $99
    ld sp, $0099                                  ; $6bfc: $31 $99 $00
    call $ccc9                                    ; $6bff: $cd $c9 $cc
    pop bc                                        ; $6c02: $c1
    call z, $d727                                 ; $6c03: $cc $27 $d7
    daa                                           ; $6c06: $27
    nop                                           ; $6c07: $00
    rst $10                                       ; $6c08: $d7
    ldh [$8f], a                                  ; $6c09: $e0 $8f
    ldh [$87], a                                  ; $6c0b: $e0 $87
    sub b                                         ; $6c0d: $90
    ldh [$d0], a                                  ; $6c0e: $e0 $d0
    jr nz, jr_0ad_6bf2                            ; $6c10: $20 $e0

    ld d, b                                       ; $6c12: $50
    ld [bc], a                                    ; $6c13: $02
    nop                                           ; $6c14: $00
    ld [bc], a                                    ; $6c15: $02
    ld bc, $0102                                  ; $6c16: $01 $02 $01
    inc bc                                        ; $6c19: $03
    jr jr_0ad_6c1d                                ; $6c1a: $18 $01

    nop                                           ; $6c1c: $00

jr_0ad_6c1d:
    ld bc, $0003                                  ; $6c1d: $01 $03 $00
    ret nz                                        ; $6c20: $c0

    ld bc, $0000                                  ; $6c21: $01 $00 $00
    rlca                                          ; $6c24: $07
    nop                                           ; $6c25: $00
    ld h, c                                       ; $6c26: $61
    and b                                         ; $6c27: $a0
    add a                                         ; $6c28: $87
    or b                                          ; $6c29: $b0
    add [hl]                                      ; $6c2a: $86
    add [hl]                                      ; $6c2b: $86
    ld [hl], $80                                  ; $6c2c: $36 $80
    nop                                           ; $6c2e: $00
    jr nz, jr_0ad_6c3f                            ; $6c2f: $20 $0e

    add $0f                                       ; $6c31: $c6 $0f
    pop bc                                        ; $6c33: $c1
    rra                                           ; $6c34: $1f
    db $db                                        ; $6c35: $db
    rrca                                          ; $6c36: $0f
    nop                                           ; $6c37: $00
    inc sp                                        ; $6c38: $33
    rrca                                          ; $6c39: $0f
    ld [hl], e                                    ; $6c3a: $73
    adc a                                         ; $6c3b: $8f
    di                                            ; $6c3c: $f3
    ld a, l                                       ; $6c3d: $7d
    ld a, [c]                                     ; $6c3e: $f2

jr_0ad_6c3f:
    ld a, a                                       ; $6c3f: $7f
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    ld a, [hl]                                    ; $6c42: $7e
    inc a                                         ; $6c43: $3c
    nop                                           ; $6c44: $00
    add b                                         ; $6c45: $80
    ret nz                                        ; $6c46: $c0

    add b                                         ; $6c47: $80
    halt                                          ; $6c48: $76
    nop                                           ; $6c49: $00
    ld c, b                                       ; $6c4a: $48
    add b                                         ; $6c4b: $80
    rst $38                                       ; $6c4c: $ff
    ld a, [hl]                                    ; $6c4d: $7e
    dec a                                         ; $6c4e: $3d
    ld a, $18                                     ; $6c4f: $3e $18
    ld a, [hl]                                    ; $6c51: $7e
    nop                                           ; $6c52: $00
    dec a                                         ; $6c53: $3d
    nop                                           ; $6c54: $00
    jr jr_0ad_6cd6                                ; $6c55: $18 $7f

    cp a                                          ; $6c57: $bf
    ld e, $21                                     ; $6c58: $1e $21
    inc h                                         ; $6c5a: $24
    nop                                           ; $6c5b: $00
    dec e                                         ; $6c5c: $1d
    ld [hl+], a                                   ; $6c5d: $22
    dec de                                        ; $6c5e: $1b
    cp c                                          ; $6c5f: $b9
    add hl, de                                    ; $6c60: $19
    add hl, sp                                    ; $6c61: $39
    sbc c                                         ; $6c62: $99
    dec sp                                        ; $6c63: $3b
    nop                                           ; $6c64: $00
    and d                                         ; $6c65: $a2
    ccf                                           ; $6c66: $3f
    and [hl]                                      ; $6c67: $a6
    add h                                         ; $6c68: $84
    sbc c                                         ; $6c69: $99
    ld bc, $ec0c                                  ; $6c6a: $01 $0c $ec
    nop                                           ; $6c6d: $00
    push bc                                       ; $6c6e: $c5
    db $e4                                        ; $6c6f: $e4
    call $c1e4                                    ; $6c70: $cd $e4 $c1
    db $e4                                        ; $6c73: $e4
    ldh [$c4], a                                  ; $6c74: $e0 $c4
    nop                                           ; $6c76: $00
    pop hl                                        ; $6c77: $e1
    pop bc                                        ; $6c78: $c1
    ld [c], a                                     ; $6c79: $e2
    inc bc                                        ; $6c7a: $03
    ld [c], a                                     ; $6c7b: $e2
    inc bc                                        ; $6c7c: $03
    pop hl                                        ; $6c7d: $e1
    ld c, a                                       ; $6c7e: $4f
    nop                                           ; $6c7f: $00
    xor a                                         ; $6c80: $af
    ld e, a                                       ; $6c81: $5f
    sbc a                                         ; $6c82: $9f
    sbc a                                         ; $6c83: $9f
    ccf                                           ; $6c84: $3f
    ld a, a                                       ; $6c85: $7f
    ld a, a                                       ; $6c86: $7f
    nop                                           ; $6c87: $00
    ld [$8080], sp                                ; $6c88: $08 $80 $80
    nop                                           ; $6c8b: $00
    add b                                         ; $6c8c: $80
    sbc l                                         ; $6c8d: $9d
    add d                                         ; $6c8e: $82
    add hl, bc                                    ; $6c8f: $09
    add sp, $0f                                   ; $6c90: $e8 $0f
    nop                                           ; $6c92: $00
    db $e3                                        ; $6c93: $e3
    rlca                                          ; $6c94: $07
    ld l, b                                       ; $6c95: $68
    rlca                                          ; $6c96: $07
    ld [hl], c                                    ; $6c97: $71
    nop                                           ; $6c98: $00
    ld [hl], b                                    ; $6c99: $70
    ld hl, $1e00                                  ; $6c9a: $21 $00 $1e
    jr c, jr_0ad_6cc6                             ; $6c9d: $38 $27

    rrca                                          ; $6c9f: $0f
    inc sp                                        ; $6ca0: $33
    ret nz                                        ; $6ca1: $c0

    sbc a                                         ; $6ca2: $9f
    adc a                                         ; $6ca3: $8f
    nop                                           ; $6ca4: $00
    sub b                                         ; $6ca5: $90
    rrca                                          ; $6ca6: $0f
    db $10                                        ; $6ca7: $10
    rrca                                          ; $6ca8: $0f
    rla                                           ; $6ca9: $17
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    db $e3                                        ; $6cac: $e3
    nop                                           ; $6cad: $00
    inc hl                                        ; $6cae: $23
    ld sp, $0fc1                                  ; $6caf: $31 $c1 $0f
    pop af                                        ; $6cb2: $f1
    add b                                         ; $6cb3: $80
    nop                                           ; $6cb4: $00
    sbc a                                         ; $6cb5: $9f
    nop                                           ; $6cb6: $00
    ldh [$6e], a                                  ; $6cb7: $e0 $6e
    ldh a, [$6f]                                  ; $6cb9: $f0 $6f
    ldh a, [rP1]                                  ; $6cbb: $f0 $00
    nop                                           ; $6cbd: $00
    pop hl                                        ; $6cbe: $e1
    nop                                           ; $6cbf: $00
    ld a, a                                       ; $6cc0: $7f
    ldh a, [$cf]                                  ; $6cc1: $f0 $cf
    inc e                                         ; $6cc3: $1c
    inc de                                        ; $6cc4: $13
    inc b                                         ; $6cc5: $04

jr_0ad_6cc6:
    db $10                                        ; $6cc6: $10
    add b                                         ; $6cc7: $80
    nop                                           ; $6cc8: $00
    sbc e                                         ; $6cc9: $9b
    call c, $d0c3                                 ; $6cca: $dc $c3 $d0
    rst $08                                       ; $6ccd: $cf
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    ld a, [hl]                                    ; $6cd0: $7e
    nop                                           ; $6cd1: $00
    db $d3                                        ; $6cd2: $d3
    add e                                         ; $6cd3: $83
    ld b, h                                       ; $6cd4: $44
    rst $00                                       ; $6cd5: $c7

jr_0ad_6cd6:
    jp hl                                         ; $6cd6: $e9


    inc bc                                        ; $6cd7: $03
    ld b, h                                       ; $6cd8: $44
    rla                                           ; $6cd9: $17
    nop                                           ; $6cda: $00
    db $10                                        ; $6cdb: $10
    ld b, $f0                                     ; $6cdc: $06 $f0
    adc [hl]                                      ; $6cde: $8e
    ld [c], a                                     ; $6cdf: $e2
    inc bc                                        ; $6ce0: $03
    dec c                                         ; $6ce1: $0d
    rst $20                                       ; $6ce2: $e7
    inc c                                         ; $6ce3: $0c
    dec de                                        ; $6ce4: $1b
    inc c                                         ; $6ce5: $0c
    ldh a, [rNR32]                                ; $6ce6: $f0 $1c
    jr nc, @+$34                                  ; $6ce8: $30 $32

    ld [$102b], sp                                ; $6cea: $08 $2b $10
    inc bc                                        ; $6ced: $03
    add [hl]                                      ; $6cee: $86
    ld [bc], a                                    ; $6cef: $02
    ld b, b                                       ; $6cf0: $40
    nop                                           ; $6cf1: $00
    ld bc, $01f0                                  ; $6cf2: $01 $f0 $01
    cp $00                                        ; $6cf5: $fe $00
    cp $fc                                        ; $6cf7: $fe $fc
    cp $00                                        ; $6cf9: $fe $00
    cp $f8                                        ; $6cfb: $fe $f8
    cp $f0                                        ; $6cfd: $fe $f0
    ldh a, [$c6]                                  ; $6cff: $f0 $c6
    ld h, b                                       ; $6d01: $60
    ld [$c700], sp                                ; $6d02: $08 $00 $c7
    db $d3                                        ; $6d05: $d3
    dec bc                                        ; $6d06: $0b
    ld de, $4b1a                                  ; $6d07: $11 $1a $4b
    ret c                                         ; $6d0a: $d8

    inc bc                                        ; $6d0b: $03
    nop                                           ; $6d0c: $00
    db $eb                                        ; $6d0d: $eb
    inc hl                                        ; $6d0e: $23
    ret z                                         ; $6d0f: $c8

    inc h                                         ; $6d10: $24
    xor c                                         ; $6d11: $a9
    ld b, l                                       ; $6d12: $45
    and [hl]                                      ; $6d13: $a6
    ld b, b                                       ; $6d14: $40
    add b                                         ; $6d15: $80
    ld b, b                                       ; $6d16: $40
    jr jr_0ad_6d59                                ; $6d17: $18 $40

    add b                                         ; $6d19: $80
    ret nz                                        ; $6d1a: $c0

    jr nz, @+$32                                  ; $6d1b: $20 $30

    ret nc                                        ; $6d1d: $d0

    ld a, h                                       ; $6d1e: $7c
    jr jr_0ad_6d21                                ; $6d1f: $18 $00

jr_0ad_6d21:
    adc h                                         ; $6d21: $8c
    or d                                          ; $6d22: $b2
    ld d, b                                       ; $6d23: $50
    ld hl, sp+$5a                                 ; $6d24: $f8 $5a
    ld b, b                                       ; $6d26: $40
    nop                                           ; $6d27: $00
    inc bc                                        ; $6d28: $03
    inc bc                                        ; $6d29: $03
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    inc bc                                        ; $6d2d: $03
    nop                                           ; $6d2e: $00
    ld b, $07                                     ; $6d2f: $06 $07
    inc e                                         ; $6d31: $1c
    rlca                                          ; $6d32: $07
    nop                                           ; $6d33: $00
    jr c, jr_0ad_6d44                             ; $6d34: $38 $0e

    ld a, b                                       ; $6d36: $78
    add hl, de                                    ; $6d37: $19

jr_0ad_6d38:
    ld [hl], b                                    ; $6d38: $70
    or [hl]                                       ; $6d39: $b6
    ret                                           ; $6d3a: $c9


    jr z, jr_0ad_6d3d                             ; $6d3b: $28 $00

jr_0ad_6d3d:
    jp z, $c11e                                   ; $6d3d: $ca $1e $c1

    rrca                                          ; $6d40: $0f
    add e                                         ; $6d41: $83
    rlca                                          ; $6d42: $07
    inc l                                         ; $6d43: $2c

jr_0ad_6d44:
    jr c, jr_0ad_6d46                             ; $6d44: $38 $00

jr_0ad_6d46:
    sub c                                         ; $6d46: $91
    adc b                                         ; $6d47: $88
    add h                                         ; $6d48: $84
    ld c, $00                                     ; $6d49: $0e $00
    nop                                           ; $6d4b: $00
    ldh a, [rNR41]                                ; $6d4c: $f0 $20
    nop                                           ; $6d4e: $00
    ld hl, sp+$02                                 ; $6d4f: $f8 $02
    ld [hl+], a                                   ; $6d51: $22
    ld [bc], a                                    ; $6d52: $02
    ld c, [hl]                                    ; $6d53: $4e
    sbc l                                         ; $6d54: $9d
    ret nz                                        ; $6d55: $c0

    ld e, [hl]                                    ; $6d56: $5e
    nop                                           ; $6d57: $00
    ld h, c                                       ; $6d58: $61

jr_0ad_6d59:
    nop                                           ; $6d59: $00
    ld h, $15                                     ; $6d5a: $26 $15
    sub [hl]                                      ; $6d5c: $96
    adc b                                         ; $6d5d: $88
    ld bc, $0000                                  ; $6d5e: $01 $00 $00
    rrca                                          ; $6d61: $0f
    call $0707                                    ; $6d62: $cd $07 $07
    ld [hl], b                                    ; $6d65: $70
    inc de                                        ; $6d66: $13
    db $f4                                        ; $6d67: $f4
    inc d                                         ; $6d68: $14
    nop                                           ; $6d69: $00
    add b                                         ; $6d6a: $80
    rlca                                          ; $6d6b: $07
    ld a, b                                       ; $6d6c: $78
    inc hl                                        ; $6d6d: $23
    add hl, bc                                    ; $6d6e: $09
    jr c, jr_0ad_6d38                             ; $6d6f: $38 $c7

    ret nz                                        ; $6d71: $c0

    nop                                           ; $6d72: $00
    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    add b                                         ; $6d75: $80
    ld b, b                                       ; $6d76: $40
    ld b, b                                       ; $6d77: $40
    ldh [$90], a                                  ; $6d78: $e0 $90
    add sp, $00                                   ; $6d7a: $e8 $00
    ld a, h                                       ; $6d7c: $7c
    inc [hl]                                      ; $6d7d: $34
    ld e, $9a                                     ; $6d7e: $1e $9a
    db $e3                                        ; $6d80: $e3
    db $ec                                        ; $6d81: $ec
    pop af                                        ; $6d82: $f1
    or $80                                        ; $6d83: $f6 $80
    ret nc                                        ; $6d85: $d0

    ld d, b                                       ; $6d86: $50
    add b                                         ; $6d87: $80
    ret nz                                        ; $6d88: $c0

    ld b, b                                       ; $6d89: $40
    ld b, $01                                     ; $6d8a: $06 $01
    add hl, de                                    ; $6d8c: $19
    ld e, $00                                     ; $6d8d: $1e $00
    jr c, @+$36                                   ; $6d8f: $38 $34

    ld [hl], e                                    ; $6d91: $73
    ld l, b                                       ; $6d92: $68
    ldh a, [$e6]                                  ; $6d93: $f0 $e6
    ldh [$c0], a                                  ; $6d95: $e0 $c0
    nop                                           ; $6d97: $00
    ldh [$ce], a                                  ; $6d98: $e0 $ce
    ldh [$cf], a                                  ; $6d9a: $e0 $cf
    add b                                         ; $6d9c: $80
    rlca                                          ; $6d9d: $07
    ld a, $1d                                     ; $6d9e: $3e $1d
    nop                                           ; $6da0: $00
    ldh [$50], a                                  ; $6da1: $e0 $50
    add h                                         ; $6da3: $84
    add b                                         ; $6da4: $80
    ld a, b                                       ; $6da5: $78
    ld [bc], a                                    ; $6da6: $02
    ldh a, [$e6]                                  ; $6da7: $f0 $e6
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    inc c                                         ; $6dab: $0c
    inc d                                         ; $6dac: $14
    nop                                           ; $6dad: $00
    jp $fc3c                                      ; $6dae: $c3 $3c $fc


    ld hl, sp+$00                                 ; $6db1: $f8 $00
    nop                                           ; $6db3: $00
    inc bc                                        ; $6db4: $03
    ld bc, $070e                                  ; $6db5: $01 $0e $07
    add hl, bc                                    ; $6db8: $09
    ld bc, $0201                                  ; $6db9: $01 $01 $02
    ld h, h                                       ; $6dbc: $64
    ld b, $c3                                     ; $6dbd: $06 $c3

jr_0ad_6dbf:
    call nz, Call_0ad_7ff0                        ; $6dbf: $c4 $f0 $7f
    db $f4                                        ; $6dc2: $f4
    db $10                                        ; $6dc3: $10

jr_0ad_6dc4:
    ldh [rP1], a                                  ; $6dc4: $e0 $00
    cp $f8                                        ; $6dc6: $fe $f8
    ld hl, $d6c0                                  ; $6dc8: $21 $c0 $d6
    inc e                                         ; $6dcb: $1c
    ld [hl], d                                    ; $6dcc: $72
    ld d, $00                                     ; $6dcd: $16 $00
    add hl, de                                    ; $6dcf: $19
    jp hl                                         ; $6dd0: $e9


    jp nz, $0c3c                                  ; $6dd1: $c2 $3c $0c

    dec bc                                        ; $6dd4: $0b
    ret nz                                        ; $6dd5: $c0

    ret nz                                        ; $6dd6: $c0

    nop                                           ; $6dd7: $00
    ld l, b                                       ; $6dd8: $68
    or b                                          ; $6dd9: $b0
    jr nz, jr_0ad_6dc4                            ; $6dda: $20 $e8

    ld b, c                                       ; $6ddc: $41
    add hl, hl                                    ; $6ddd: $29
    add h                                         ; $6dde: $84
    ld h, h                                       ; $6ddf: $64
    nop                                           ; $6de0: $00
    ld bc, $80f8                                  ; $6de1: $01 $f8 $80
    cp $80                                        ; $6de4: $fe $80
    rra                                           ; $6de6: $1f
    ldh [$87], a                                  ; $6de7: $e0 $87
    nop                                           ; $6de9: $00
    jr c, jr_0ad_6dff                             ; $6dea: $38 $13

    inc c                                         ; $6dec: $0c
    inc b                                         ; $6ded: $04
    inc bc                                        ; $6dee: $03
    add $01                                       ; $6def: $c6 $01
    ld a, b                                       ; $6df1: $78
    nop                                           ; $6df2: $00
    ld b, b                                       ; $6df3: $40
    and b                                         ; $6df4: $a0
    jr c, jr_0ad_6dbf                             ; $6df5: $38 $c8

    inc [hl]                                      ; $6df7: $34
    ld a, h                                       ; $6df8: $7c
    sbc b                                         ; $6df9: $98
    ld e, $00                                     ; $6dfa: $1e $00
    rlca                                          ; $6dfc: $07
    db $e3                                        ; $6dfd: $e3
    rlca                                          ; $6dfe: $07

jr_0ad_6dff:
    pop af                                        ; $6dff: $f1
    ld [hl], h                                    ; $6e00: $74
    inc bc                                        ; $6e01: $03
    inc d                                         ; $6e02: $14
    add a                                         ; $6e03: $87
    nop                                           ; $6e04: $00
    ld h, b                                       ; $6e05: $60
    ld c, a                                       ; $6e06: $4f
    ld d, a                                       ; $6e07: $57
    ld h, b                                       ; $6e08: $60
    ld d, a                                       ; $6e09: $57
    ld h, b                                       ; $6e0a: $60
    jr nc, jr_0ad_6e14                            ; $6e0b: $30 $07

    nop                                           ; $6e0d: $00
    jr c, jr_0ad_6e1b                             ; $6e0e: $38 $0b

    jr c, jr_0ad_6e1d                             ; $6e10: $38 $0b

    jr jr_0ad_6e1f                                ; $6e12: $18 $0b

jr_0ad_6e14:
    inc de                                        ; $6e14: $13
    dec bc                                        ; $6e15: $0b
    nop                                           ; $6e16: $00
    db $db                                        ; $6e17: $db
    inc h                                         ; $6e18: $24
    cp $00                                        ; $6e19: $fe $00

jr_0ad_6e1b:
    db $fc                                        ; $6e1b: $fc
    db $fd                                        ; $6e1c: $fd

jr_0ad_6e1d:
    inc bc                                        ; $6e1d: $03
    ld sp, hl                                     ; $6e1e: $f9

jr_0ad_6e1f:
    nop                                           ; $6e1f: $00
    inc bc                                        ; $6e20: $03
    or $f0                                        ; $6e21: $f6 $f0
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    rst $38                                       ; $6e25: $ff
    db $fc                                        ; $6e26: $fc
    nop                                           ; $6e27: $00

jr_0ad_6e28:
    nop                                           ; $6e28: $00
    jr nc, jr_0ad_6e2b                            ; $6e29: $30 $00

jr_0ad_6e2b:
    ldh [$a2], a                                  ; $6e2b: $e0 $a2
    ld h, h                                       ; $6e2d: $64
    and e                                         ; $6e2e: $a3
    ld [hl], d                                    ; $6e2f: $72
    add d                                         ; $6e30: $82
    nop                                           ; $6e31: $00
    add hl, de                                    ; $6e32: $19
    pop hl                                        ; $6e33: $e1
    dec h                                         ; $6e34: $25
    add hl, de                                    ; $6e35: $19

jr_0ad_6e36:
    adc d                                         ; $6e36: $8a
    inc b                                         ; $6e37: $04
    inc bc                                        ; $6e38: $03
    ld [hl], b                                    ; $6e39: $70
    nop                                           ; $6e3a: $00
    ld bc, $cee0                                  ; $6e3b: $01 $e0 $ce
    or b                                          ; $6e3e: $b0
    rst $38                                       ; $6e3f: $ff
    nop                                           ; $6e40: $00
    rrca                                          ; $6e41: $0f
    and $00                                       ; $6e42: $e6 $00
    rra                                           ; $6e44: $1f
    pop hl                                        ; $6e45: $e1
    cp $02                                        ; $6e46: $fe $02
    adc l                                         ; $6e48: $8d
    ld [hl], c                                    ; $6e49: $71
    ld a, e                                       ; $6e4a: $7b
    inc bc                                        ; $6e4b: $03
    nop                                           ; $6e4c: $00
    daa                                           ; $6e4d: $27

jr_0ad_6e4e:
    call nz, $c106                                ; $6e4e: $c4 $06 $c1

jr_0ad_6e51:
    add a                                         ; $6e51: $87
    adc $19                                       ; $6e52: $ce $19
    adc l                                         ; $6e54: $8d
    nop                                           ; $6e55: $00
    add hl, hl                                    ; $6e56: $29
    ld [de], a                                    ; $6e57: $12
    ld [hl], d                                    ; $6e58: $72
    ld c, [hl]                                    ; $6e59: $4e
    jr c, jr_0ad_6e28                             ; $6e5a: $38 $cc

    jr nc, jr_0ad_6e36                            ; $6e5c: $30 $d8

    nop                                           ; $6e5e: $00
    ld b, $be                                     ; $6e5f: $06 $be
    pop bc                                        ; $6e61: $c1
    ld bc, $4ee0                                  ; $6e62: $01 $e0 $4e

jr_0ad_6e65:
    add b                                         ; $6e65: $80
    ld b, a                                       ; $6e66: $47
    nop                                           ; $6e67: $00
    inc de                                        ; $6e68: $13
    jr jr_0ad_6e4e                                ; $6e69: $18 $e3

    ld [$0073], sp                                ; $6e6b: $08 $73 $00
    ld e, e                                       ; $6e6e: $5b
    ret nz                                        ; $6e6f: $c0

    nop                                           ; $6e70: $00
    dec h                                         ; $6e71: $25
    ld b, e                                       ; $6e72: $43
    sub l                                         ; $6e73: $95
    and e                                         ; $6e74: $a3
    rlca                                          ; $6e75: $07
    ld bc, $e30f                                  ; $6e76: $01 $0f $e3
    nop                                           ; $6e79: $00

jr_0ad_6e7a:
    call nc, $d018                                ; $6e7a: $d4 $18 $d0
    inc e                                         ; $6e7d: $1c
    ret nc                                        ; $6e7e: $d0

    jr jr_0ad_6e51                                ; $6e7f: $18 $d0

    jr jr_0ad_6e83                                ; $6e81: $18 $00

jr_0ad_6e83:
    ld de, $190d                                  ; $6e83: $11 $0d $19
    dec b                                         ; $6e86: $05
    add hl, bc                                    ; $6e87: $09
    dec b                                         ; $6e88: $05
    inc c                                         ; $6e89: $0c
    ld b, $00                                     ; $6e8a: $06 $00
    inc c                                         ; $6e8c: $0c
    ld b, $04                                     ; $6e8d: $06 $04
    db $fc                                        ; $6e8f: $fc
    inc bc                                        ; $6e90: $03
    ld hl, sp-$07                                 ; $6e91: $f8 $f9
    ld a, [$f200]                                 ; $6e93: $fa $00 $f2
    inc bc                                        ; $6e96: $03
    ld b, $e6                                     ; $6e97: $06 $e6
    ld e, $c0                                     ; $6e99: $1e $c0
    rlca                                          ; $6e9b: $07
    cp c                                          ; $6e9c: $b9
    nop                                           ; $6e9d: $00
    rlca                                          ; $6e9e: $07
    ld e, c                                       ; $6e9f: $59
    inc e                                         ; $6ea0: $1c
    sbc e                                         ; $6ea1: $9b
    ld a, h                                       ; $6ea2: $7c
    dec sp                                        ; $6ea3: $3b
    ld b, e                                       ; $6ea4: $43
    ld a, h                                       ; $6ea5: $7c
    nop                                           ; $6ea6: $00
    ld b, c                                       ; $6ea7: $41
    ld a, h                                       ; $6ea8: $7c
    ld a, $58                                     ; $6ea9: $3e $58
    cpl                                           ; $6eab: $2f
    ld c, [hl]                                    ; $6eac: $4e
    rrca                                          ; $6ead: $0f
    ld h, e                                       ; $6eae: $63
    nop                                           ; $6eaf: $00
    ld [$7078], sp                                ; $6eb0: $08 $78 $70
    ld d, [hl]                                    ; $6eb3: $56
    jr nz, jr_0ad_6e65                            ; $6eb4: $20 $af

    add [hl]                                      ; $6eb6: $86
    reti                                          ; $6eb7: $d9


    nop                                           ; $6eb8: $00
    add b                                         ; $6eb9: $80
    inc bc                                        ; $6eba: $03
    ret nz                                        ; $6ebb: $c0

    ld b, e                                       ; $6ebc: $43
    ld d, a                                       ; $6ebd: $57

jr_0ad_6ebe:
    inc d                                         ; $6ebe: $14
    scf                                           ; $6ebf: $37
    or b                                          ; $6ec0: $b0
    nop                                           ; $6ec1: $00
    ret nz                                        ; $6ec2: $c0

    add a                                         ; $6ec3: $87
    ret z                                         ; $6ec4: $c8

    ld c, a                                       ; $6ec5: $4f
    jr z, jr_0ad_6ed4                             ; $6ec6: $28 $0c

    inc hl                                        ; $6ec8: $23
    and d                                         ; $6ec9: $a2
    nop                                           ; $6eca: $00
    ldh a, [$96]                                  ; $6ecb: $f0 $96
    ldh [$af], a                                  ; $6ecd: $e0 $af
    rst $00                                       ; $6ecf: $c7
    ret c                                         ; $6ed0: $d8

    add e                                         ; $6ed1: $83
    cp h                                          ; $6ed2: $bc
    nop                                           ; $6ed3: $00

jr_0ad_6ed4:
    ld b, b                                       ; $6ed4: $40
    ld b, c                                       ; $6ed5: $41
    ld a, $00                                     ; $6ed6: $3e $00
    ld h, e                                       ; $6ed8: $63
    rra                                           ; $6ed9: $1f
    dec bc                                        ; $6eda: $0b
    rlca                                          ; $6edb: $07
    nop                                           ; $6edc: $00
    rlca                                          ; $6edd: $07
    ld h, a                                       ; $6ede: $67
    inc sp                                        ; $6edf: $33
    ld b, e                                       ; $6ee0: $43
    jr c, jr_0ad_6f2b                             ; $6ee1: $38 $48

    jr c, jr_0ad_6f3f                             ; $6ee3: $38 $5a

    nop                                           ; $6ee5: $00
    ld [hl], b                                    ; $6ee6: $70
    ld c, d                                       ; $6ee7: $4a
    ld h, b                                       ; $6ee8: $60
    ld [de], a                                    ; $6ee9: $12
    ld b, h                                       ; $6eea: $44
    inc h                                         ; $6eeb: $24
    adc b                                         ; $6eec: $88
    ld c, b                                       ; $6eed: $48
    nop                                           ; $6eee: $00
    adc b                                         ; $6eef: $88
    jr c, jr_0ad_6e7a                             ; $6ef0: $38 $88

    jr c, @-$6e                                   ; $6ef2: $38 $90

    jr nc, jr_0ad_6f06                            ; $6ef4: $30 $10

    ld [hl], b                                    ; $6ef6: $70
    nop                                           ; $6ef7: $00
    ld h, b                                       ; $6ef8: $60
    ld e, a                                       ; $6ef9: $5f
    ld h, b                                       ; $6efa: $60
    ld e, a                                       ; $6efb: $5f
    jr nz, jr_0ad_6ebe                            ; $6efc: $20 $c0

    ld h, b                                       ; $6efe: $60
    ret nz                                        ; $6eff: $c0

    nop                                           ; $6f00: $00
    ld a, [$f9f9]                                 ; $6f01: $fa $f9 $f9
    ld hl, sp-$04                                 ; $6f04: $f8 $fc

jr_0ad_6f06:
    cp $00                                        ; $6f06: $fe $00
    ld bc, $0150                                  ; $6f08: $01 $50 $01
    cp [hl]                                       ; $6f0b: $be
    ld bc, $3d01                                  ; $6f0c: $01 $01 $3d
    ld [bc], a                                    ; $6f0f: $02
    ld h, e                                       ; $6f10: $63
    inc a                                         ; $6f11: $3c
    rra                                           ; $6f12: $1f
    sbc b                                         ; $6f13: $98
    nop                                           ; $6f14: $00
    rlca                                          ; $6f15: $07
    add $21                                       ; $6f16: $c6 $21
    ld [hl], b                                    ; $6f18: $70
    add b                                         ; $6f19: $80
    inc a                                         ; $6f1a: $3c
    ret nz                                        ; $6f1b: $c0

    ld b, a                                       ; $6f1c: $47
    nop                                           ; $6f1d: $00
    ret nc                                        ; $6f1e: $d0

    add b                                         ; $6f1f: $80
    ld e, b                                       ; $6f20: $58
    sbc b                                         ; $6f21: $98
    rst $08                                       ; $6f22: $cf
    cp $f8                                        ; $6f23: $fe $f8
    add h                                         ; $6f25: $84
    nop                                           ; $6f26: $00
    pop af                                        ; $6f27: $f1
    jp z, $c63f                                   ; $6f28: $ca $3f $c6

jr_0ad_6f2b:
    ld e, $1e                                     ; $6f2b: $1e $1e
    ld h, b                                       ; $6f2d: $60
    ret nz                                        ; $6f2e: $c0

    nop                                           ; $6f2f: $00
    add e                                         ; $6f30: $83
    cp $00                                        ; $6f31: $fe $00
    inc bc                                        ; $6f33: $03
    ld e, $26                                     ; $6f34: $1e $26
    nop                                           ; $6f36: $00
    inc c                                         ; $6f37: $0c
    nop                                           ; $6f38: $00
    inc c                                         ; $6f39: $0c
    and l                                         ; $6f3a: $a5
    ld b, c                                       ; $6f3b: $41
    nop                                           ; $6f3c: $00
    add b                                         ; $6f3d: $80
    sbc h                                         ; $6f3e: $9c

jr_0ad_6f3f:
    inc c                                         ; $6f3f: $0c
    ld [hl-], a                                   ; $6f40: $32
    nop                                           ; $6f41: $00
    call z, $22cc                                 ; $6f42: $cc $cc $22

jr_0ad_6f45:
    ld de, $f907                                  ; $6f45: $11 $07 $f9
    rra                                           ; $6f48: $1f
    ld [hl+], a                                   ; $6f49: $22
    nop                                           ; $6f4a: $00
    db $fc                                        ; $6f4b: $fc
    inc c                                         ; $6f4c: $0c
    ldh a, [$73]                                  ; $6f4d: $f0 $73
    inc c                                         ; $6f4f: $0c
    ret nz                                        ; $6f50: $c0

    add hl, sp                                    ; $6f51: $39
    ld bc, $6100                                  ; $6f52: $01 $00 $61
    ld h, [hl]                                    ; $6f55: $66
    add hl, bc                                    ; $6f56: $09
    ld b, $80                                     ; $6f57: $06 $80
    db $10                                        ; $6f59: $10
    ld b, c                                       ; $6f5a: $41
    ld h, b                                       ; $6f5b: $60
    nop                                           ; $6f5c: $00
    ld b, c                                       ; $6f5d: $41
    ret nz                                        ; $6f5e: $c0

    add hl, de                                    ; $6f5f: $19
    nop                                           ; $6f60: $00
    sub h                                         ; $6f61: $94
    adc l                                         ; $6f62: $8d
    sbc c                                         ; $6f63: $99
    sub d                                         ; $6f64: $92
    nop                                           ; $6f65: $00
    sbc c                                         ; $6f66: $99

jr_0ad_6f67:
    sub d                                         ; $6f67: $92
    sbc d                                         ; $6f68: $9a
    sbc c                                         ; $6f69: $99
    ret nz                                        ; $6f6a: $c0

    add b                                         ; $6f6b: $80
    ld b, b                                       ; $6f6c: $40
    add b                                         ; $6f6d: $80
    inc de                                        ; $6f6e: $13
    ld b, b                                       ; $6f6f: $40
    ret nz                                        ; $6f70: $c0

    add b                                         ; $6f71: $80
    rst $10                                       ; $6f72: $d7
    ld bc, $0080                                  ; $6f73: $01 $80 $00
    ld b, $00                                     ; $6f76: $06 $00
    sbc a                                         ; $6f78: $9f
    ld [hl], d                                    ; $6f79: $72
    nop                                           ; $6f7a: $00
    jr z, jr_0ad_6f45                             ; $6f7b: $28 $c8

    db $ec                                        ; $6f7d: $ec
    inc c                                         ; $6f7e: $0c
    xor h                                         ; $6f7f: $ac
    call z, $a070                                 ; $6f80: $cc $70 $a0
    nop                                           ; $6f83: $00
    ld [hl], b                                    ; $6f84: $70
    sub b                                         ; $6f85: $90
    ld hl, $381e                                  ; $6f86: $21 $1e $38
    daa                                           ; $6f89: $27
    rrca                                          ; $6f8a: $0f
    inc sp                                        ; $6f8b: $33
    nop                                           ; $6f8c: $00
    jr c, jr_0ad_6f67                             ; $6f8d: $38 $d8

    ld e, $2f                                     ; $6f8f: $1e $2f
    ld e, $2d                                     ; $6f91: $1e $2d

Jump_0ad_6f93:
    ld a, $cd                                     ; $6f93: $3e $cd
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    db $e3                                        ; $6f98: $e3
    inc hl                                        ; $6f99: $23
    ld sp, $0fc1                                  ; $6f9a: $31 $c1 $0f
    pop af                                        ; $6f9d: $f1
    nop                                           ; $6f9e: $00
    ld [bc], a                                    ; $6f9f: $02
    ld sp, $2021                                  ; $6fa0: $31 $21 $20
    call z, $c4d2                                 ; $6fa3: $cc $d2 $c4
    jp c, RST_00                                  ; $6fa6: $da $00 $00

    nop                                           ; $6fa9: $00
    pop hl                                        ; $6faa: $e1
    ld a, a                                       ; $6fab: $7f
    ldh a, [$cf]                                  ; $6fac: $f0 $cf
    inc e                                         ; $6fae: $1c
    inc de                                        ; $6faf: $13
    ld [$1619], sp                                ; $6fb0: $08 $19 $16
    add hl, sp                                    ; $6fb3: $39
    ld [hl], $02                                  ; $6fb4: $36 $02
    ld [$0000], sp                                ; $6fb6: $08 $00 $00
    ld a, [hl]                                    ; $6fb9: $7e
    nop                                           ; $6fba: $00
    db $d3                                        ; $6fbb: $d3
    add e                                         ; $6fbc: $83
    ld b, h                                       ; $6fbd: $44

jr_0ad_6fbe:
    rst $00                                       ; $6fbe: $c7
    jp hl                                         ; $6fbf: $e9


    inc bc                                        ; $6fc0: $03
    dec b                                         ; $6fc1: $05
    rlca                                          ; $6fc2: $07
    nop                                           ; $6fc3: $00
    inc bc                                        ; $6fc4: $03
    dec b                                         ; $6fc5: $05
    inc bc                                        ; $6fc6: $03
    add hl, bc                                    ; $6fc7: $09
    rlca                                          ; $6fc8: $07
    inc bc                                        ; $6fc9: $03
    dec c                                         ; $6fca: $0d
    rst $20                                       ; $6fcb: $e7
    inc b                                         ; $6fcc: $04
    dec de                                        ; $6fcd: $1b
    inc c                                         ; $6fce: $0c
    ldh a, [rNR32]                                ; $6fcf: $f0 $1c
    db $e4                                        ; $6fd1: $e4
    nop                                           ; $6fd2: $00
    ld l, e                                       ; $6fd3: $6b
    db $10                                        ; $6fd4: $10
    inc bc                                        ; $6fd5: $03
    ld e, d                                       ; $6fd6: $5a
    ld [bc], a                                    ; $6fd7: $02
    ld b, b                                       ; $6fd8: $40
    nop                                           ; $6fd9: $00
    ld bc, $ff90                                  ; $6fda: $01 $90 $ff
    nop                                           ; $6fdd: $00
    cp $00                                        ; $6fde: $fe $00
    ld bc, $08fd                                  ; $6fe0: $01 $fd $08
    inc bc                                        ; $6fe3: $03
    ld a, [$faf9]                                 ; $6fe4: $fa $f9 $fa
    inc c                                         ; $6fe7: $0c
    ld [$00c1], sp                                ; $6fe8: $08 $c1 $00
    nop                                           ; $6feb: $00
    nop                                           ; $6fec: $00
    inc a                                         ; $6fed: $3c
    ld a, a                                       ; $6fee: $7f
    cp $c3                                        ; $6fef: $fe $c3
    ld b, d                                       ; $6ff1: $42
    and d                                         ; $6ff2: $a2
    sbc [hl]                                      ; $6ff3: $9e
    ld a, l                                       ; $6ff4: $7d
    nop                                           ; $6ff5: $00
    ld b, a                                       ; $6ff6: $47
    nop                                           ; $6ff7: $00
    rst $20                                       ; $6ff8: $e7
    jr jr_0ad_6fbe                                ; $6ff9: $18 $c3

    inc a                                         ; $6ffb: $3c
    add c                                         ; $6ffc: $81
    ld b, $00                                     ; $6ffd: $06 $00
    nop                                           ; $6fff: $00
    inc de                                        ; $7000: $13
    ld h, e                                       ; $7001: $63
    xor b                                         ; $7002: $a8
    db $10                                        ; $7003: $10
    push de                                       ; $7004: $d5
    call c, Call_0ad_400c                         ; $7005: $dc $0c $40
    inc c                                         ; $7008: $0c
    ld l, $18                                     ; $7009: $2e $18
    ld a, a                                       ; $700b: $7f
    nop                                           ; $700c: $00
    add b                                         ; $700d: $80
    ccf                                           ; $700e: $3f
    ret nz                                        ; $700f: $c0

    rra                                           ; $7010: $1f
    inc c                                         ; $7011: $0c
    ld h, a                                       ; $7012: $67
    rlca                                          ; $7013: $07
    dec sp                                        ; $7014: $3b
    add e                                         ; $7015: $83
    ld d, b                                       ; $7016: $50
    sbc b                                         ; $7017: $98
    ld d, $b0                                     ; $7018: $16 $b0
    cp $f8                                        ; $701a: $fe $f8
    nop                                           ; $701c: $00
    ld a, [$fa02]                                 ; $701d: $fa $02 $fa
    ld [bc], a                                    ; $7020: $02
    ld hl, sp-$0e                                 ; $7021: $f8 $f2
    ldh a, [$e2]                                  ; $7023: $f0 $e2
    nop                                           ; $7025: $00
    add sp, $01                                   ; $7026: $e8 $01
    jr @+$06                                      ; $7028: $18 $04

    inc [hl]                                      ; $702a: $34
    xor $0e                                       ; $702b: $ee $0e
    jr nc, jr_0ad_702f                            ; $702d: $30 $00

jr_0ad_702f:
    ld [hl], $fd                                  ; $702f: $36 $fd
    db $ec                                        ; $7031: $ec
    ld [de], a                                    ; $7032: $12
    inc d                                         ; $7033: $14
    ld [hl], c                                    ; $7034: $71
    ld b, [hl]                                    ; $7035: $46
    rrca                                          ; $7036: $0f
    nop                                           ; $7037: $00
    ld h, b                                       ; $7038: $60
    ld sp, $ac7e                                  ; $7039: $31 $7e $ac
    add hl, sp                                    ; $703c: $39
    adc $c4                                       ; $703d: $ce $c4
    or d                                          ; $703f: $b2
    nop                                           ; $7040: $00
    adc d                                         ; $7041: $8a
    pop af                                        ; $7042: $f1
    call $f098                                    ; $7043: $cd $98 $f0
    and b                                         ; $7046: $a0
    pop de                                        ; $7047: $d1
    add c                                         ; $7048: $81
    nop                                           ; $7049: $00
    add b                                         ; $704a: $80
    ret nz                                        ; $704b: $c0

    call z, Call_000_26ea                         ; $704c: $cc $ea $26
    db $eb                                        ; $704f: $eb
    daa                                           ; $7050: $27
    dec c                                         ; $7051: $0d
    nop                                           ; $7052: $00
    pop bc                                        ; $7053: $c1
    ld b, $70                                     ; $7054: $06 $70
    inc bc                                        ; $7056: $03
    ld a, b                                       ; $7057: $78
    ret nz                                        ; $7058: $c0

    ld a, h                                       ; $7059: $7c
    ret nz                                        ; $705a: $c0

    ld bc, $409f                                  ; $705b: $01 $9f $40
    sbc a                                         ; $705e: $9f
    rrca                                          ; $705f: $0f
    cpl                                           ; $7060: $2f
    adc a                                         ; $7061: $8f
    cpl                                           ; $7062: $2f
    ld a, h                                       ; $7063: $7c
    jr nz, jr_0ad_7066                            ; $7064: $20 $00

jr_0ad_7066:
    rrca                                          ; $7066: $0f
    ld [hl], a                                    ; $7067: $77
    rlca                                          ; $7068: $07
    dec de                                        ; $7069: $1b
    add e                                         ; $706a: $83
    inc c                                         ; $706b: $0c
    ldh [$f7], a                                  ; $706c: $e0 $f7
    ld b, b                                       ; $706e: $40
    ldh a, [$c6]                                  ; $706f: $f0 $c6
    ld e, b                                       ; $7071: $58
    ld a, a                                       ; $7072: $7f
    nop                                           ; $7073: $00
    ld bc, $03fc                                  ; $7074: $01 $fc $03
    ldh a, [rP1]                                  ; $7077: $f0 $00
    ld c, $e0                                     ; $7079: $0e $e0
    ret c                                         ; $707b: $d8

    pop bc                                        ; $707c: $c1
    jr nc, jr_0ad_7086                            ; $707d: $30 $07

    ld h, b                                       ; $707f: $60
    rrca                                          ; $7080: $0f
    nop                                           ; $7081: $00
    ld h, b                                       ; $7082: $60
    rrca                                          ; $7083: $0f
    adc a                                         ; $7084: $8f
    and b                                         ; $7085: $a0

jr_0ad_7086:
    sbc [hl]                                      ; $7086: $9e
    rra                                           ; $7087: $1f
    nop                                           ; $7088: $00
    ld a, [hl]                                    ; $7089: $7e
    nop                                           ; $708a: $00
    db $fd                                        ; $708b: $fd
    db $fc                                        ; $708c: $fc
    ei                                            ; $708d: $fb
    inc bc                                        ; $708e: $03
    db $f4                                        ; $708f: $f4
    rlca                                          ; $7090: $07
    call nz, $00c3                                ; $7091: $c4 $c3 $00
    sub c                                         ; $7094: $91
    and d                                         ; $7095: $a2
    ld b, l                                       ; $7096: $45
    daa                                           ; $7097: $27
    add [hl]                                      ; $7098: $86
    ld c, [hl]                                    ; $7099: $4e
    or [hl]                                       ; $709a: $b6
    or b                                          ; $709b: $b0
    nop                                           ; $709c: $00
    halt                                          ; $709d: $76
    db $f4                                        ; $709e: $f4
    inc bc                                        ; $709f: $03
    ld d, b                                       ; $70a0: $50
    sbc c                                         ; $70a1: $99
    sbc c                                         ; $70a2: $99
    add d                                         ; $70a3: $82
    add c                                         ; $70a4: $81
    nop                                           ; $70a5: $00
    rlca                                          ; $70a6: $07
    inc b                                         ; $70a7: $04
    inc [hl]                                      ; $70a8: $34
    and b                                         ; $70a9: $a0
    inc c                                         ; $70aa: $0c
    pop bc                                        ; $70ab: $c1
    inc c                                         ; $70ac: $0c
    add hl, de                                    ; $70ad: $19
    nop                                           ; $70ae: $00
    dec d                                         ; $70af: $15
    inc c                                         ; $70b0: $0c
    ld a, [hl+]                                   ; $70b1: $2a
    inc sp                                        ; $70b2: $33
    inc sp                                        ; $70b3: $33
    ld sp, $7423                                  ; $70b4: $31 $23 $74
    nop                                           ; $70b7: $00
    ld b, b                                       ; $70b8: $40
    xor h                                         ; $70b9: $ac
    add c                                         ; $70ba: $81
    jp $dc40                                      ; $70bb: $c3 $40 $dc


    ld b, c                                       ; $70be: $41
    ret z                                         ; $70bf: $c8

    nop                                           ; $70c0: $00
    add c                                         ; $70c1: $81
    ld b, e                                       ; $70c2: $43

jr_0ad_70c3:
    add h                                         ; $70c3: $84
    ld b, l                                       ; $70c4: $45
    jp nz, Jump_0ad_6103                          ; $70c5: $c2 $03 $61

    sbc c                                         ; $70c8: $99
    nop                                           ; $70c9: $00
    ld a, b                                       ; $70ca: $78
    add hl, bc                                    ; $70cb: $09
    db $fc                                        ; $70cc: $fc
    dec c                                         ; $70cd: $0d
    ld a, b                                       ; $70ce: $78
    ld a, c                                       ; $70cf: $79
    cp [hl]                                       ; $70d0: $be
    ld a, $00                                     ; $70d1: $3e $00
    cp a                                          ; $70d3: $bf
    ccf                                           ; $70d4: $3f
    rra                                           ; $70d5: $1f
    rst $18                                       ; $70d6: $df
    ccf                                           ; $70d7: $3f
    add b                                         ; $70d8: $80
    ld a, a                                       ; $70d9: $7f
    nop                                           ; $70da: $00
    ld [$80bf], sp                                ; $70db: $08 $bf $80
    ccf                                           ; $70de: $3f
    add b                                         ; $70df: $80
    ld a, h                                       ; $70e0: $7c
    jr z, jr_0ad_70c3                             ; $70e1: $28 $e0

    inc c                                         ; $70e3: $0c
    ldh a, [rP1]                                  ; $70e4: $f0 $00
    ld b, $f0                                     ; $70e6: $06 $f0
    ld b, $f1                                     ; $70e8: $06 $f1
    dec b                                         ; $70ea: $05
    adc [hl]                                      ; $70eb: $8e
    and b                                         ; $70ec: $a0
    ld [hl], $00                                  ; $70ed: $36 $00
    ld b, $14                                     ; $70ef: $06 $14
    dec b                                         ; $70f1: $05
    ld de, $1914                                  ; $70f2: $11 $14 $19
    jr jr_0ad_70fa                                ; $70f5: $18 $03

    nop                                           ; $70f7: $00
    ld a, [bc]                                    ; $70f8: $0a
    inc bc                                        ; $70f9: $03

jr_0ad_70fa:
    ld a, [bc]                                    ; $70fa: $0a
    add sp, -$1f                                  ; $70fb: $e8 $e1
    jp z, $e03d                                   ; $70fd: $ca $3d $e0

    nop                                           ; $7100: $00
    inc c                                         ; $7101: $0c
    db $e4                                        ; $7102: $e4
    inc c                                         ; $7103: $0c
    ret z                                         ; $7104: $c8

    inc c                                         ; $7105: $0c
    db $dd                                        ; $7106: $dd
    inc b                                         ; $7107: $04
    ld sp, hl                                     ; $7108: $f9
    nop                                           ; $7109: $00
    ret                                           ; $710a: $c9


    jp z, Jump_000_1bb1                           ; $710b: $ca $b1 $1b

    sbc d                                         ; $710e: $9a
    ld [hl], b                                    ; $710f: $70
    cp b                                          ; $7110: $b8
    ldh a, [rP1]                                  ; $7111: $f0 $00
    ret nz                                        ; $7113: $c0

    sub b                                         ; $7114: $90
    rst $20                                       ; $7115: $e7
    xor a                                         ; $7116: $af
    and b                                         ; $7117: $a0
    rra                                           ; $7118: $1f
    ret nz                                        ; $7119: $c0

    rst $18                                       ; $711a: $df
    nop                                           ; $711b: $00
    ret nz                                        ; $711c: $c0

    rra                                           ; $711d: $1f
    ret nz                                        ; $711e: $c0

    rra                                           ; $711f: $1f
    rst $18                                       ; $7120: $df
    adc [hl]                                      ; $7121: $8e
    adc c                                         ; $7122: $89
    cp c                                          ; $7123: $b9
    nop                                           ; $7124: $00
    xor b                                         ; $7125: $a8
    adc h                                         ; $7126: $8c
    ld d, d                                       ; $7127: $52
    and $c6                                       ; $7128: $e6 $c6
    inc b                                         ; $712a: $04
    rst $30                                       ; $712b: $f7
    ld [$f300], sp                                ; $712c: $08 $00 $f3
    ld a, [bc]                                    ; $712f: $0a
    ld sp, hl                                     ; $7130: $f9
    dec b                                         ; $7131: $05
    cp $85                                        ; $7132: $fe $85
    db $fc                                        ; $7134: $fc
    add hl, bc                                    ; $7135: $09
    nop                                           ; $7136: $00
    db $fc                                        ; $7137: $fc
    ld hl, sp+$7c                                 ; $7138: $f8 $7c
    ld a, b                                       ; $713a: $78
    db $f4                                        ; $713b: $f4
    pop af                                        ; $713c: $f1
    ld l, h                                       ; $713d: $6c
    ldh [rP1], a                                  ; $713e: $e0 $00
    ld hl, sp+$2a                                 ; $7140: $f8 $2a
    jp z, $f436                                   ; $7142: $ca $36 $f4

    cp a                                          ; $7145: $bf
    add b                                         ; $7146: $80
    jr nz, jr_0ad_7149                            ; $7147: $20 $00

jr_0ad_7149:
    add b                                         ; $7149: $80
    sbc [hl]                                      ; $714a: $9e
    sbc $16                                       ; $714b: $de $16
    ret c                                         ; $714d: $d8

    sbc l                                         ; $714e: $9d
    add c                                         ; $714f: $81
    ld e, $00                                     ; $7150: $1e $00
    sub d                                         ; $7152: $92
    jp Jump_0ad_4357                              ; $7153: $c3 $57 $43


    push hl                                       ; $7156: $e5
    pop af                                        ; $7157: $f1
    dec b                                         ; $7158: $05
    ld de, $0d00                                  ; $7159: $11 $00 $0d
    ldh [$c8], a                                  ; $715c: $e0 $c8
    ldh [rOBP0], a                                ; $715e: $e0 $48
    dec de                                        ; $7160: $1b
    add e                                         ; $7161: $83
    rla                                           ; $7162: $17
    nop                                           ; $7163: $00
    add a                                         ; $7164: $87
    rla                                           ; $7165: $17
    ld b, a                                       ; $7166: $47
    rla                                           ; $7167: $17
    ld b, a                                       ; $7168: $47
    db $ec                                        ; $7169: $ec
    pop hl                                        ; $716a: $e1
    db $f4                                        ; $716b: $f4
    nop                                           ; $716c: $00
    pop af                                        ; $716d: $f1
    db $f4                                        ; $716e: $f4
    pop af                                        ; $716f: $f1
    ld b, $f0                                     ; $7170: $06 $f0
    ld [bc], a                                    ; $7172: $02
    ld hl, sp+$02                                 ; $7173: $f8 $02
    nop                                           ; $7175: $00
    ld hl, sp+$03                                 ; $7176: $f8 $03
    ld hl, sp+$01                                 ; $7178: $f8 $01
    db $fc                                        ; $717a: $fc
    ld a, [hl-]                                   ; $717b: $3a
    sbc e                                         ; $717c: $9b
    and b                                         ; $717d: $a0
    nop                                           ; $717e: $00
    rrca                                          ; $717f: $0f
    ld [hl], e                                    ; $7180: $73
    ld sp, $7b7a                                  ; $7181: $31 $7a $7b
    inc sp                                        ; $7184: $33
    nop                                           ; $7185: $00
    dec sp                                        ; $7186: $3b
    nop                                           ; $7187: $00
    ld a, [de]                                    ; $7188: $1a
    ld a, $1b                                     ; $7189: $3e $1b
    ld e, h                                       ; $718b: $5c
    ld a, a                                       ; $718c: $7f
    sbc a                                         ; $718d: $9f
    ld e, a                                       ; $718e: $5f
    ccf                                           ; $718f: $3f
    nop                                           ; $7190: $00
    sbc a                                         ; $7191: $9f
    cp a                                          ; $7192: $bf
    rra                                           ; $7193: $1f
    or b                                          ; $7194: $b0
    rrca                                          ; $7195: $0f
    cp b                                          ; $7196: $b8
    add a                                         ; $7197: $87
    ccf                                           ; $7198: $3f
    nop                                           ; $7199: $00
    add a                                         ; $719a: $87
    ccf                                           ; $719b: $3f
    rlca                                          ; $719c: $07
    ccf                                           ; $719d: $3f
    add b                                         ; $719e: $80
    ldh a, [$08]                                  ; $719f: $f0 $08
    ldh a, [rP1]                                  ; $71a1: $f0 $00
    cp $1e                                        ; $71a3: $fe $1e
    ld [c], a                                     ; $71a5: $e2
    ld e, $e2                                     ; $71a6: $1e $e2
    inc bc                                        ; $71a8: $03
    db $fd                                        ; $71a9: $fd
    cp $00                                        ; $71aa: $fe $00
    add [hl]                                      ; $71ac: $86
    db $fc                                        ; $71ad: $fc
    ld a, [$f800]                                 ; $71ae: $fa $00 $f8
    ld [hl], $f0                                  ; $71b1: $36 $f0
    ld a, $00                                     ; $71b3: $3e $00
    ld hl, sp+$0e                                 ; $71b5: $f8 $0e
    ret z                                         ; $71b7: $c8

    rrca                                          ; $71b8: $0f
    pop bc                                        ; $71b9: $c1
    rrca                                          ; $71ba: $0f
    call nz, Call_000_000f                        ; $71bb: $c4 $0f $00
    call nz, $c7cc                                ; $71be: $c4 $cc $c7
    call z, $e6c7                                 ; $71c1: $cc $c7 $e6
    inc h                                         ; $71c4: $24
    ld h, [hl]                                    ; $71c5: $66
    nop                                           ; $71c6: $00
    ld [hl], h                                    ; $71c7: $74
    jr nc, jr_0ad_71e4                            ; $71c8: $30 $1a

    inc h                                         ; $71ca: $24
    inc e                                         ; $71cb: $1c
    ld a, [hl-]                                   ; $71cc: $3a
    inc b                                         ; $71cd: $04
    dec e                                         ; $71ce: $1d
    ld bc, $0001                                  ; $71cf: $01 $01 $00
    jr @-$78                                      ; $71d2: $18 $86

    ld a, [de]                                    ; $71d4: $1a
    scf                                           ; $71d5: $37
    add a                                         ; $71d6: $87
    ld h, l                                       ; $71d7: $65
    ld bc, $8f00                                  ; $71d8: $01 $00 $8f
    ld l, a                                       ; $71db: $6f
    rrca                                          ; $71dc: $0f
    ld b, b                                       ; $71dd: $40
    ld e, a                                       ; $71de: $5f
    add b                                         ; $71df: $80
    rra                                           ; $71e0: $1f
    ret nz                                        ; $71e1: $c0

    nop                                           ; $71e2: $00
    ld e, a                                       ; $71e3: $5f

jr_0ad_71e4:
    nop                                           ; $71e4: $00
    ccf                                           ; $71e5: $3f
    ld bc, $01fc                                  ; $71e6: $01 $fc $01
    db $fc                                        ; $71e9: $fc
    nop                                           ; $71ea: $00

jr_0ad_71eb:
    jr z, jr_0ad_71eb                             ; $71eb: $28 $fe

    cp $20                                        ; $71ed: $fe $20
    ld [bc], a                                    ; $71ef: $02
    cp $26                                        ; $71f0: $fe $26
    ld [bc], a                                    ; $71f2: $02
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    ld a, e                                       ; $71f5: $7b
    nop                                           ; $71f6: $00
    ld b, e                                       ; $71f7: $43
    add c                                         ; $71f8: $81
    add b                                         ; $71f9: $80
    add d                                         ; $71fa: $82
    cp b                                          ; $71fb: $b8
    and b                                         ; $71fc: $a0
    dec a                                         ; $71fd: $3d
    or e                                          ; $71fe: $b3
    ld bc, $d83f                                  ; $71ff: $01 $3f $d8
    add hl, de                                    ; $7202: $19
    ld b, c                                       ; $7203: $41
    dec c                                         ; $7204: $0d
    ld c, b                                       ; $7205: $48
    ld d, b                                       ; $7206: $50
    inc d                                         ; $7207: $14
    ld bc, $9f00                                  ; $7208: $01 $00 $9f
    ccf                                           ; $720b: $3f
    rra                                           ; $720c: $1f
    ccf                                           ; $720d: $3f
    add b                                         ; $720e: $80
    sbc a                                         ; $720f: $9f
    add b                                         ; $7210: $80
    rra                                           ; $7211: $1f
    nop                                           ; $7212: $00
    rrca                                          ; $7213: $0f
    rra                                           ; $7214: $1f
    add e                                         ; $7215: $83
    rst $08                                       ; $7216: $cf
    inc c                                         ; $7217: $0c
    db $fc                                        ; $7218: $fc
    di                                            ; $7219: $f3
    nop                                           ; $721a: $00
    ld b, b                                       ; $721b: $40
    add b                                         ; $721c: $80
    sub b                                         ; $721d: $90
    ld c, c                                       ; $721e: $49
    rst $00                                       ; $721f: $c7
    ld c, b                                       ; $7220: $48
    rst $00                                       ; $7221: $c7
    ld l, b                                       ; $7222: $68
    rst $20                                       ; $7223: $e7
    rlc b                                         ; $7224: $cb $00
    rst $20                                       ; $7226: $e7
    db $eb                                        ; $7227: $eb
    db $e3                                        ; $7228: $e3
    ld h, $e3                                     ; $7229: $26 $e3
    inc [hl]                                      ; $722b: $34
    pop af                                        ; $722c: $f1
    di                                            ; $722d: $f3
    nop                                           ; $722e: $00
    pop af                                        ; $722f: $f1
    ld a, [$0381]                                 ; $7230: $fa $81 $03
    adc e                                         ; $7233: $8b
    inc b                                         ; $7234: $04
    call nz, $0046                                ; $7235: $c4 $46 $00
    jp nc, $e01a                                  ; $7238: $d2 $1a $e0

    inc l                                         ; $723b: $2c
    add sp, $2c                                   ; $723c: $e8 $2c
    inc d                                         ; $723e: $14

jr_0ad_723f:
    ldh a, [rTAC]                                 ; $723f: $f0 $07
    nop                                           ; $7241: $00
    ldh a, [$3f]                                  ; $7242: $f0 $3f
    add b                                         ; $7244: $80
    ccf                                           ; $7245: $3f
    ld c, [hl]                                    ; $7246: $4e
    ld [bc], a                                    ; $7247: $02
    ld [bc], a                                    ; $7248: $02
    jr @-$62                                      ; $7249: $18 $9c

    adc d                                         ; $724b: $8a
    nop                                           ; $724c: $00
    ld h, b                                       ; $724d: $60
    ld l, [hl]                                    ; $724e: $6e
    ld h, $8e                                     ; $724f: $26 $8e
    ld [hl+], a                                   ; $7251: $22
    adc [hl]                                      ; $7252: $8e
    ld [hl-], a                                   ; $7253: $32
    add [hl]                                      ; $7254: $86
    ld b, b                                       ; $7255: $40
    db $10                                        ; $7256: $10
    ld a, $01                                     ; $7257: $3e $01
    nop                                           ; $7259: $00
    ret nz                                        ; $725a: $c0

    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    ld b, a                                       ; $725d: $47
    add a                                         ; $725e: $87
    inc bc                                        ; $725f: $03
    inc bc                                        ; $7260: $03
    di                                            ; $7261: $f3
    ld b, b                                       ; $7262: $40
    or b                                          ; $7263: $b0
    ret nc                                        ; $7264: $d0

    and b                                         ; $7265: $a0
    or h                                          ; $7266: $b4
    ld a, [bc]                                    ; $7267: $0a
    cp d                                          ; $7268: $ba
    ld [de], a                                    ; $7269: $12
    ld bc, $003f                                  ; $726a: $01 $3f $00
    rrca                                          ; $726d: $0f
    add b                                         ; $726e: $80
    ld a, a                                       ; $726f: $7f
    ld [hl], b                                    ; $7270: $70
    ld l, a                                       ; $7271: $6f
    db $10                                        ; $7272: $10
    jr jr_0ad_7275                                ; $7273: $18 $00

jr_0ad_7275:
    rst $38                                       ; $7275: $ff
    nop                                           ; $7276: $00
    ei                                            ; $7277: $fb
    ld hl, sp+$0d                                 ; $7278: $f8 $0d
    ld hl, sp-$07                                 ; $727a: $f8 $f9
    db $fc                                        ; $727c: $fc
    jr nz, jr_0ad_723f                            ; $727d: $20 $c0

    ld a, $10                                     ; $727f: $3e $10
    jr z, @-$08                                   ; $7281: $28 $f6

    ldh a, [$74]                                  ; $7283: $f0 $74
    ldh a, [rTIMA]                                ; $7285: $f0 $05
    nop                                           ; $7287: $00
    pop af                                        ; $7288: $f1
    dec c                                         ; $7289: $0d
    ld h, c                                       ; $728a: $61
    ld [$f803], sp                                ; $728b: $08 $03 $f8
    inc bc                                        ; $728e: $03
    inc bc                                        ; $728f: $03
    ret nz                                        ; $7290: $c0

    inc [hl]                                      ; $7291: $34
    jr nz, jr_0ad_7298                            ; $7292: $20 $04

    ld c, e                                       ; $7294: $4b
    db $10                                        ; $7295: $10
    inc bc                                        ; $7296: $03
    ld e, l                                       ; $7297: $5d

jr_0ad_7298:
    ld [bc], a                                    ; $7298: $02
    ld h, b                                       ; $7299: $60
    nop                                           ; $729a: $00
    ld bc, $23f8                                  ; $729b: $01 $f8 $23
    nop                                           ; $729e: $00
    cp $00                                        ; $729f: $fe $00
    db $fc                                        ; $72a1: $fc
    ld bc, $00fa                                  ; $72a2: $01 $fa $00
    ld hl, sp-$1c                                 ; $72a5: $f8 $e4
    pop hl                                        ; $72a7: $e1
    ret c                                         ; $72a8: $d8

    pop bc                                        ; $72a9: $c1
    nop                                           ; $72aa: $00
    rst $20                                       ; $72ab: $e7
    jr jr_0ad_72ae                                ; $72ac: $18 $00

jr_0ad_72ae:
    jp $ff7f                                      ; $72ae: $c3 $7f $ff


    ld a, a                                       ; $72b1: $7f
    nop                                           ; $72b2: $00
    ld l, a                                       ; $72b3: $6f
    inc a                                         ; $72b4: $3c
    ld b, b                                       ; $72b5: $40
    inc b                                         ; $72b6: $04

jr_0ad_72b7:
    ld a, a                                       ; $72b7: $7f
    ld [hl], c                                    ; $72b8: $71
    add hl, sp                                    ; $72b9: $39
    ld h, b                                       ; $72ba: $60
    pop hl                                        ; $72bb: $e1
    ld b, b                                       ; $72bc: $40
    db $10                                        ; $72bd: $10
    ret nz                                        ; $72be: $c0

    ret nz                                        ; $72bf: $c0

    nop                                           ; $72c0: $00
    ld a, b                                       ; $72c1: $78
    ld a, h                                       ; $72c2: $7c
    add h                                         ; $72c3: $84
    ld b, $fa                                     ; $72c4: $06 $fa
    db $fc                                        ; $72c6: $fc
    ld a, [c]                                     ; $72c7: $f2
    cp $58                                        ; $72c8: $fe $58
    dec a                                         ; $72ca: $3d
    ld d, b                                       ; $72cb: $50
    ld e, b                                       ; $72cc: $58
    add b                                         ; $72cd: $80
    ld e, c                                       ; $72ce: $59
    ld hl, sp+$5d                                 ; $72cf: $f8 $5d
    nop                                           ; $72d1: $00
    ld bc, $03fc                                  ; $72d2: $01 $fc $03
    nop                                           ; $72d5: $00
    ldh a, [$0e]                                  ; $72d6: $f0 $0e
    ldh [$c0], a                                  ; $72d8: $e0 $c0
    ret c                                         ; $72da: $d8

    rlca                                          ; $72db: $07
    jr nc, @+$11                                  ; $72dc: $30 $0f

    nop                                           ; $72de: $00
    ldh [$b0], a                                  ; $72df: $e0 $b0
    add e                                         ; $72e1: $83
    ld h, b                                       ; $72e2: $60
    rrca                                          ; $72e3: $0f
    call z, $3c15                                 ; $72e4: $cc $15 $3c
    nop                                           ; $72e7: $00
    add hl, hl                                    ; $72e8: $29
    ld h, b                                       ; $72e9: $60
    ld d, c                                       ; $72ea: $51
    call nz, Call_000_2ccc                        ; $72eb: $c4 $cc $2c
    ld c, $1e                                     ; $72ee: $0e $1e
    nop                                           ; $72f0: $00
    call nz, Call_000_38d8                        ; $72f1: $c4 $d8 $38
    ret nz                                        ; $72f4: $c0

    jr nz, jr_0ad_72b7                            ; $72f5: $20 $c0

    ld h, b                                       ; $72f7: $60
    ld b, b                                       ; $72f8: $40
    nop                                           ; $72f9: $00
    ld h, b                                       ; $72fa: $60
    rra                                           ; $72fb: $1f
    ld h, b                                       ; $72fc: $60
    ld e, a                                       ; $72fd: $5f
    ld hl, $e13e                                  ; $72fe: $21 $3e $e1
    inc a                                         ; $7301: $3c
    nop                                           ; $7302: $00
    ld b, e                                       ; $7303: $43
    inc hl                                        ; $7304: $23
    dec a                                         ; $7305: $3d
    ld sp, $072e                                  ; $7306: $31 $2e $07
    db $ec                                        ; $7309: $ec
    inc bc                                        ; $730a: $03
    nop                                           ; $730b: $00
    ld hl, sp+$03                                 ; $730c: $f8 $03
    rst $30                                       ; $730e: $f7
    ld bc, $83e0                                  ; $730f: $01 $e0 $83
    ld [hl], l                                    ; $7312: $75
    inc bc                                        ; $7313: $03
    nop                                           ; $7314: $00
    db $ed                                        ; $7315: $ed
    add b                                         ; $7316: $80
    ld b, b                                       ; $7317: $40
    add b                                         ; $7318: $80
    ret nz                                        ; $7319: $c0

    add b                                         ; $731a: $80
    ccf                                           ; $731b: $3f
    ret nz                                        ; $731c: $c0

    nop                                           ; $731d: $00
    adc a                                         ; $731e: $8f
    ret nz                                        ; $731f: $c0

    ret nc                                        ; $7320: $d0

    ret nc                                        ; $7321: $d0

    ret z                                         ; $7322: $c8

    adc d                                         ; $7323: $8a
    jp nz, Jump_0ad_42c2                          ; $7324: $c2 $c2 $42

    ld [c], a                                     ; $7327: $e2
    ret nc                                        ; $7328: $d0

    ld c, b                                       ; $7329: $48
    rst $38                                       ; $732a: $ff
    nop                                           ; $732b: $00
    ld a, a                                       ; $732c: $7f
    nop                                           ; $732d: $00
    ld e, h                                       ; $732e: $5c
    jr @-$3d                                      ; $732f: $18 $c1

    add b                                         ; $7331: $80
    ld e, h                                       ; $7332: $5c
    ld [$0f60], sp                                ; $7333: $08 $60 $0f
    ld h, b                                       ; $7336: $60
    adc a                                         ; $7337: $8f
    and b                                         ; $7338: $a0
    rra                                           ; $7339: $1f
    add c                                         ; $733a: $81
    nop                                           ; $733b: $00
    ld a, a                                       ; $733c: $7f
    ld bc, $03fe                                  ; $733d: $01 $fe $03
    db $fc                                        ; $7340: $fc
    ld bc, $03ff                                  ; $7341: $01 $ff $03
    nop                                           ; $7344: $00
    ld bc, $00fe                                  ; $7345: $01 $fe $00
    cp $8e                                        ; $7348: $fe $8e
    nop                                           ; $734a: $00
    ld a, l                                       ; $734b: $7d
    dec a                                         ; $734c: $3d
    nop                                           ; $734d: $00
    ld [hl], b                                    ; $734e: $70
    di                                            ; $734f: $f3
    adc h                                         ; $7350: $8c
    add b                                         ; $7351: $80
    rra                                           ; $7352: $1f
    pop hl                                        ; $7353: $e1
    ret nz                                        ; $7354: $c0

    inc bc                                        ; $7355: $03
    nop                                           ; $7356: $00
    add h                                         ; $7357: $84
    cp b                                          ; $7358: $b8
    dec e                                         ; $7359: $1d
    ld h, b                                       ; $735a: $60
    ld h, h                                       ; $735b: $64
    ld e, c                                       ; $735c: $59
    inc hl                                        ; $735d: $23
    inc e                                         ; $735e: $1c
    nop                                           ; $735f: $00
    sub a                                         ; $7360: $97
    adc b                                         ; $7361: $88
    ret nz                                        ; $7362: $c0

    sub e                                         ; $7363: $93
    nop                                           ; $7364: $00
    ld a, h                                       ; $7365: $7c
    inc b                                         ; $7366: $04
    db $fc                                        ; $7367: $fc
    nop                                           ; $7368: $00
    ld a, h                                       ; $7369: $7c
    add [hl]                                      ; $736a: $86
    or e                                          ; $736b: $b3
    ld c, l                                       ; $736c: $4d
    db $dd                                        ; $736d: $dd
    inc bc                                        ; $736e: $03
    sbc $d1                                       ; $736f: $de $d1
    nop                                           ; $7371: $00
    cp a                                          ; $7372: $bf
    and b                                         ; $7373: $a0
    jr nz, jr_0ad_7395                            ; $7374: $20 $1f

    ld [hl+], a                                   ; $7376: $22
    rra                                           ; $7377: $1f
    ld [hl-], a                                   ; $7378: $32
    rrca                                          ; $7379: $0f
    nop                                           ; $737a: $00
    or c                                          ; $737b: $b1
    adc h                                         ; $737c: $8c
    or c                                          ; $737d: $b1
    adc l                                         ; $737e: $8d
    pop de                                        ; $737f: $d1
    call $e2d4                                    ; $7380: $cd $d4 $e2
    nop                                           ; $7383: $00
    ld a, [hl-]                                   ; $7384: $3a
    or $de                                        ; $7385: $f6 $de
    ld b, b                                       ; $7387: $40
    add sp, $61                                   ; $7388: $e8 $61
    inc sp                                        ; $738a: $33
    ldh a, [rSC]                                  ; $738b: $f0 $02
    rla                                           ; $738d: $17
    ldh a, [rTAC]                                 ; $738e: $f0 $07
    di                                            ; $7390: $f3
    inc bc                                        ; $7391: $03
    di                                            ; $7392: $f3
    ld a, h                                       ; $7393: $7c
    nop                                           ; $7394: $00

jr_0ad_7395:
    rrca                                          ; $7395: $0f
    nop                                           ; $7396: $00
    ld [hl], a                                    ; $7397: $77
    rlca                                          ; $7398: $07
    dec de                                        ; $7399: $1b
    add e                                         ; $739a: $83
    ldh [$0c], a                                  ; $739b: $e0 $0c
    ldh a, [rTMA]                                 ; $739d: $f0 $06
    nop                                           ; $739f: $00
    ldh a, [rTMA]                                 ; $73a0: $f0 $06
    pop af                                        ; $73a2: $f1
    dec b                                         ; $73a3: $05
    adc a                                         ; $73a4: $8f
    and b                                         ; $73a5: $a0
    add a                                         ; $73a6: $87
    or b                                          ; $73a7: $b0
    nop                                           ; $73a8: $00
    rst $00                                       ; $73a9: $c7
    ret nc                                        ; $73aa: $d0

    add $d0                                       ; $73ab: $c6 $d0
    jp nz, $e2d8                                  ; $73ad: $c2 $d8 $e2

    add sp, $00                                   ; $73b0: $e8 $00
    ld [c], a                                     ; $73b2: $e2
    add sp, -$1d                                  ; $73b3: $e8 $e3
    add sp, $01                                   ; $73b5: $e8 $01
    ld [hl], c                                    ; $73b7: $71
    db $10                                        ; $73b8: $10
    ld l, h                                       ; $73b9: $6c
    nop                                           ; $73ba: $00
    inc e                                         ; $73bb: $1c
    ld l, [hl]                                    ; $73bc: $6e
    and b                                         ; $73bd: $a0
    jp nz, $c9b8                                  ; $73be: $c2 $b8 $c9

    ld a, b                                       ; $73c1: $78
    call nz, Call_000_3c00                        ; $73c2: $c4 $00 $3c
    jp nz, Jump_0ad_7e0f                          ; $73c5: $c2 $0f $7e

    push hl                                       ; $73c8: $e5
    jp nz, $c1a6                                  ; $73c9: $c2 $a6 $c1

    nop                                           ; $73cc: $00
    add e                                         ; $73cd: $83
    ld b, b                                       ; $73ce: $40
    ret c                                         ; $73cf: $d8

    pop de                                        ; $73d0: $d1
    ld a, a                                       ; $73d1: $7f
    ld h, b                                       ; $73d2: $60
    ld h, $59                                     ; $73d3: $26 $59
    nop                                           ; $73d5: $00
    sub [hl]                                      ; $73d6: $96
    add hl, sp                                    ; $73d7: $39
    ld [hl], $29                                  ; $73d8: $36 $29
    adc a                                         ; $73da: $8f
    inc de                                        ; $73db: $13
    rlca                                          ; $73dc: $07
    cp c                                          ; $73dd: $b9
    nop                                           ; $73de: $00
    rra                                           ; $73df: $1f
    jr @+$11                                      ; $73e0: $18 $0f

    call z, Call_000_07e0                         ; $73e2: $cc $e0 $07
    ldh a, [$e1]                                  ; $73e5: $f0 $e1
    nop                                           ; $73e7: $00
    call z, $65f0                                 ; $73e8: $cc $f0 $65
    ld [hl], b                                    ; $73eb: $70
    sbc h                                         ; $73ec: $9c
    inc c                                         ; $73ed: $0c
    ld c, [hl]                                    ; $73ee: $4e
    adc [hl]                                      ; $73ef: $8e
    jr nz, jr_0ad_7440                            ; $73f0: $20 $4e

    add [hl]                                      ; $73f2: $86
    ld [bc], a                                    ; $73f3: $02
    nop                                           ; $73f4: $00
    adc b                                         ; $73f5: $88
    adc [hl]                                      ; $73f6: $8e
    ld c, b                                       ; $73f7: $48
    ret nz                                        ; $73f8: $c0

    ld hl, $5300                                  ; $73f9: $21 $00 $53

jr_0ad_73fc:
    inc hl                                        ; $73fc: $23
    dec bc                                        ; $73fd: $0b
    ld a, b                                       ; $73fe: $78
    dec bc                                        ; $73ff: $0b
    ld a, b                                       ; $7400: $78
    ld a, h                                       ; $7401: $7c
    add hl, bc                                    ; $7402: $09
    nop                                           ; $7403: $00
    inc a                                         ; $7404: $3c
    dec c                                         ; $7405: $0d
    ld bc, $0e00                                  ; $7406: $01 $00 $0e
    ld a, $1c                                     ; $7409: $3e $1c
    db $e3                                        ; $740b: $e3
    nop                                           ; $740c: $00
    ld e, h                                       ; $740d: $5c
    jp $05f1                                      ; $740e: $c3 $f1 $05


    pop hl                                        ; $7411: $e1
    dec c                                         ; $7412: $0d
    db $e3                                        ; $7413: $e3
    dec bc                                        ; $7414: $0b
    ld bc, $0be3                                  ; $7415: $01 $e3 $0b
    jp $c71b                                      ; $7418: $c3 $1b $c7


    rla                                           ; $741b: $17
    ld b, a                                       ; $741c: $47
    ld [bc], a                                    ; $741d: $02
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    pop hl                                        ; $7420: $e1
    db $ec                                        ; $7421: $ec
    pop af                                        ; $7422: $f1
    db $f4                                        ; $7423: $f4
    pop af                                        ; $7424: $f1
    db $f4                                        ; $7425: $f4
    ld b, $f0                                     ; $7426: $06 $f0
    nop                                           ; $7428: $00
    ld [bc], a                                    ; $7429: $02
    ld hl, sp+$02                                 ; $742a: $f8 $02
    ld hl, sp+$03                                 ; $742c: $f8 $03
    ld hl, sp+$01                                 ; $742e: $f8 $01
    db $fc                                        ; $7430: $fc
    nop                                           ; $7431: $00
    rlca                                          ; $7432: $07
    ld a, a                                       ; $7433: $7f
    scf                                           ; $7434: $37
    or h                                          ; $7435: $b4
    dec de                                        ; $7436: $1b
    sbc b                                         ; $7437: $98
    jp c, $001b                                   ; $7438: $da $1b $00

    call c, $c11d                                 ; $743b: $dc $1d $c1
    dec c                                         ; $743e: $0d
    ld h, c                                       ; $743f: $61

jr_0ad_7440:
    dec c                                         ; $7440: $0d
    ld [hl], d                                    ; $7441: $72
    rra                                           ; $7442: $1f
    nop                                           ; $7443: $00
    and [hl]                                      ; $7444: $a6
    cp b                                          ; $7445: $b8
    add [hl]                                      ; $7446: $86
    ld d, [hl]                                    ; $7447: $56
    adc e                                         ; $7448: $8b
    ld l, c                                       ; $7449: $69
    rrca                                          ; $744a: $0f
    add b                                         ; $744b: $80
    nop                                           ; $744c: $00
    rrca                                          ; $744d: $0f
    rst $28                                       ; $744e: $ef
    add $07                                       ; $744f: $c6 $07
    or b                                          ; $7451: $b0
    rlca                                          ; $7452: $07
    jr nc, jr_0ad_73fc                            ; $7453: $30 $a7

    nop                                           ; $7455: $00
    dec l                                         ; $7456: $2d
    ld a, $1f                                     ; $7457: $3e $1f
    ld [$3afc], sp                                ; $7459: $08 $fc $3a
    ld hl, sp-$0c                                 ; $745c: $f8 $f4
    nop                                           ; $745e: $00
    pop af                                        ; $745f: $f1
    add hl, bc                                    ; $7460: $09
    pop hl                                        ; $7461: $e1
    inc de                                        ; $7462: $13
    jp $072a                                      ; $7463: $c3 $2a $07


    sub h                                         ; $7466: $94
    nop                                           ; $7467: $00
    db $10                                        ; $7468: $10
    and a                                         ; $7469: $a7
    ld [hl], $26                                  ; $746a: $36 $26
    ld [hl], h                                    ; $746c: $74
    and h                                         ; $746d: $a4
    ldh a, [$60]                                  ; $746e: $f0 $60
    nop                                           ; $7470: $00
    ld sp, $63e1                                  ; $7471: $31 $e1 $63
    jp $c7c0                                      ; $7474: $c3 $c0 $c7


    add b                                         ; $7477: $80
    rrca                                          ; $7478: $0f
    nop                                           ; $7479: $00
    cp h                                          ; $747a: $bc
    add e                                         ; $747b: $83
    ld a, c                                       ; $747c: $79
    ld b, [hl]                                    ; $747d: $46
    ld c, $72                                     ; $747e: $0e $72
    inc e                                         ; $7480: $1c
    ldh a, [rP1]                                  ; $7481: $f0 $00
    add $3e                                       ; $7483: $c6 $3e
    adc $36                                       ; $7485: $ce $36
    ldh a, [$6c]                                  ; $7487: $f0 $6c
    ret nz                                        ; $7489: $c0

    ld hl, sp+$00                                 ; $748a: $f8 $00
    scf                                           ; $748c: $37
    add a                                         ; $748d: $87
    cpl                                           ; $748e: $2f
    adc a                                         ; $748f: $8f
    and b                                         ; $7490: $a0
    adc a                                         ; $7491: $8f
    ld h, b                                       ; $7492: $60
    rrca                                          ; $7493: $0f
    nop                                           ; $7494: $00
    ld b, b                                       ; $7495: $40
    ld e, a                                       ; $7496: $5f
    ld c, b                                       ; $7497: $48
    ld b, e                                       ; $7498: $43
    ret nc                                        ; $7499: $d0

    ret z                                         ; $749a: $c8

    jr nz, jr_0ad_74b5                            ; $749b: $20 $18

    inc bc                                        ; $749d: $03
    ld bc, $01fc                                  ; $749e: $01 $fc $01
    db $fc                                        ; $74a1: $fc
    nop                                           ; $74a2: $00
    cp $3b                                        ; $74a3: $fe $3b
    ld bc, $0214                                  ; $74a5: $01 $14 $02
    ld b, b                                       ; $74a8: $40
    rst $38                                       ; $74a9: $ff
    dec a                                         ; $74aa: $3d
    ld [bc], a                                    ; $74ab: $02
    ld a, c                                       ; $74ac: $79
    rra                                           ; $74ad: $1f
    ld [hl], $86                                  ; $74ae: $36 $86
    dec sp                                        ; $74b0: $3b
    adc e                                         ; $74b1: $8b
    nop                                           ; $74b2: $00
    inc sp                                        ; $74b3: $33
    add e                                         ; $74b4: $83

jr_0ad_74b5:
    ld a, [hl-]                                   ; $74b5: $3a
    add d                                         ; $74b6: $82
    add hl, de                                    ; $74b7: $19
    pop bc                                        ; $74b8: $c1
    dec de                                        ; $74b9: $1b
    ld b, e                                       ; $74ba: $43
    nop                                           ; $74bb: $00
    ld b, a                                       ; $74bc: $47
    rla                                           ; $74bd: $17
    ld h, b                                       ; $74be: $60
    nop                                           ; $74bf: $00
    dec de                                        ; $74c0: $1b
    jr @-$4c                                      ; $74c1: $18 $b2

    or l                                          ; $74c3: $b5
    nop                                           ; $74c4: $00
    dec bc                                        ; $74c5: $0b
    inc b                                         ; $74c6: $04
    inc c                                         ; $74c7: $0c
    dec b                                         ; $74c8: $05
    add hl, bc                                    ; $74c9: $09
    inc de                                        ; $74ca: $13
    dec de                                        ; $74cb: $1b
    jr nz, jr_0ad_74ce                            ; $74cc: $20 $00

jr_0ad_74ce:
    ld a, $20                                     ; $74ce: $3e $20
    ld [hl-], a                                   ; $74d0: $32
    ld d, l                                       ; $74d1: $55
    ldh a, [rBCPS]                                ; $74d2: $f0 $68
    rlca                                          ; $74d4: $07
    ldh [rP1], a                                  ; $74d5: $e0 $00
    call z, Call_000_19c0                         ; $74d7: $cc $c0 $19
    db $10                                        ; $74da: $10
    ld d, a                                       ; $74db: $57
    ld hl, $432c                                  ; $74dc: $21 $2c $43
    nop                                           ; $74df: $00
    inc b                                         ; $74e0: $04
    rlca                                          ; $74e1: $07
    rra                                           ; $74e2: $1f
    nop                                           ; $74e3: $00
    cp [hl]                                       ; $74e4: $be
    ld hl, $437c                                  ; $74e5: $21 $7c $43
    nop                                           ; $74e8: $00
    pop af                                        ; $74e9: $f1
    adc a                                         ; $74ea: $8f
    db $fc                                        ; $74eb: $fc
    ld a, [c]                                     ; $74ec: $f2
    ld hl, sp-$1c                                 ; $74ed: $f8 $e4
    xor $16                                       ; $74ef: $ee $16
    nop                                           ; $74f1: $00
    call z, $f83c                                 ; $74f2: $cc $3c $f8
    dec sp                                        ; $74f5: $3b
    ldh a, [$73]                                  ; $74f6: $f0 $73
    rlca                                          ; $74f8: $07
    ret nz                                        ; $74f9: $c0

    nop                                           ; $74fa: $00
    rlca                                          ; $74fb: $07
    add a                                         ; $74fc: $87
    add b                                         ; $74fd: $80
    sub b                                         ; $74fe: $90
    add e                                         ; $74ff: $83
    or b                                          ; $7500: $b0

jr_0ad_7501:
    jr nc, jr_0ad_7515                            ; $7501: $30 $12

    dec b                                         ; $7503: $05
    ld a, b                                       ; $7504: $78
    ld c, d                                       ; $7505: $4a
    ret nc                                        ; $7506: $d0

    ldh [rNR41], a                                ; $7507: $e0 $20
    pop af                                        ; $7509: $f1
    ld bc, $bae0                                  ; $750a: $01 $e0 $ba
    ld bc, $7f40                                  ; $750d: $01 $40 $7f
    sbc e                                         ; $7510: $9b
    sub d                                         ; $7511: $92
    ld h, [hl]                                    ; $7512: $66
    ld b, $2e                                     ; $7513: $06 $2e

jr_0ad_7515:
    rrca                                          ; $7515: $0f
    inc l                                         ; $7516: $2c
    rrca                                          ; $7517: $0f
    nop                                           ; $7518: $00
    ld sp, $1032                                  ; $7519: $31 $32 $10
    db $10                                        ; $751c: $10

jr_0ad_751d:
    rra                                           ; $751d: $1f
    ret nz                                        ; $751e: $c0

    nop                                           ; $751f: $00
    ret nz                                        ; $7520: $c0

    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    sub b                                         ; $7524: $90
    pop bc                                        ; $7525: $c1
    rst $28                                       ; $7526: $ef
    add hl, bc                                    ; $7527: $09
    ld a, l                                       ; $7528: $7d
    or d                                          ; $7529: $b2
    jr nc, jr_0ad_751d                            ; $752a: $30 $f1

    ld c, [hl]                                    ; $752c: $4e
    xor $09                                       ; $752d: $ee $09
    call z, $070a                                 ; $752f: $cc $0a $07
    inc hl                                        ; $7532: $23
    inc bc                                        ; $7533: $03
    ld [hl], a                                    ; $7534: $77
    ld [$4774], sp                                ; $7535: $08 $74 $47
    ld [hl], e                                    ; $7538: $73
    ld [bc], a                                    ; $7539: $02
    db $10                                        ; $753a: $10
    jr @+$01                                      ; $753b: $18 $ff

    nop                                           ; $753d: $00
    ld e, h                                       ; $753e: $5c
    inc bc                                        ; $753f: $03
    or h                                          ; $7540: $b4
    ld l, b                                       ; $7541: $68
    add b                                         ; $7542: $80
    inc bc                                        ; $7543: $03
    pop de                                        ; $7544: $d1
    rlca                                          ; $7545: $07
    ld a, [hl+]                                   ; $7546: $2a
    nop                                           ; $7547: $00
    db $10                                        ; $7548: $10
    jr jr_0ad_754b                                ; $7549: $18 $00

jr_0ad_754b:
    ld a, b                                       ; $754b: $78
    inc a                                         ; $754c: $3c
    cp h                                          ; $754d: $bc
    adc [hl]                                      ; $754e: $8e
    pop bc                                        ; $754f: $c1
    ld b, a                                       ; $7550: $47
    ld h, b                                       ; $7551: $60
    and b                                         ; $7552: $a0
    ld e, b                                       ; $7553: $58
    ld [$0243], sp                                ; $7554: $08 $43 $02
    inc bc                                        ; $7557: $03
    inc [hl]                                      ; $7558: $34

jr_0ad_7559:
    jr nz, jr_0ad_7501                            ; $7559: $20 $a6

    ld c, d                                       ; $755b: $4a
    db $10                                        ; $755c: $10
    inc bc                                        ; $755d: $03
    ld [hl], h                                    ; $755e: $74
    ld [bc], a                                    ; $755f: $02
    ld b, b                                       ; $7560: $40
    nop                                           ; $7561: $00
    ld bc, $06e0                                  ; $7562: $01 $e0 $06
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    rrca                                          ; $7567: $0f
    rrca                                          ; $7568: $0f
    ld de, $1000                                  ; $7569: $11 $00 $10
    ld h, $3c                                     ; $756c: $26 $3c
    ld [hl], d                                    ; $756e: $72
    ld l, h                                       ; $756f: $6c
    adc d                                         ; $7570: $8a
    ld b, b                                       ; $7571: $40
    xor [hl]                                      ; $7572: $ae
    nop                                           ; $7573: $00
    ld b, d                                       ; $7574: $42
    add e                                         ; $7575: $83
    nop                                           ; $7576: $00
    inc e                                         ; $7577: $1c
    inc e                                         ; $7578: $1c
    ld a, [c]                                     ; $7579: $f2
    or a                                          ; $757a: $b7
    ld bc, $2e00                                  ; $757b: $01 $00 $2e
    add hl, de                                    ; $757e: $19
    ld [de], a                                    ; $757f: $12
    ld bc, $020a                                  ; $7580: $01 $0a $02
    ld a, a                                       ; $7583: $7f
    ld a, [hl]                                    ; $7584: $7e
    jr nz, @-$77                                  ; $7585: $20 $87

    sbc c                                         ; $7587: $99
    ld b, b                                       ; $7588: $40
    ld [$0080], sp                                ; $7589: $08 $80 $00
    ld b, b                                       ; $758c: $40
    add b                                         ; $758d: $80
    ret nz                                        ; $758e: $c0

    ld bc, $41a3                                  ; $758f: $01 $a3 $41
    inc hl                                        ; $7592: $23
    ld a, [c]                                     ; $7593: $f2
    di                                            ; $7594: $f3
    ei                                            ; $7595: $fb
    di                                            ; $7596: $f3
    ld d, b                                       ; $7597: $50
    jr z, jr_0ad_759a                             ; $7598: $28 $00

jr_0ad_759a:
    ld a, a                                       ; $759a: $7f
    nop                                           ; $759b: $00
    ccf                                           ; $759c: $3f
    add b                                         ; $759d: $80
    rst $38                                       ; $759e: $ff
    ccf                                           ; $759f: $3f
    ld e, a                                       ; $75a0: $5f
    sbc a                                         ; $75a1: $9f
    and b                                         ; $75a2: $a0
    ld h, b                                       ; $75a3: $60
    ldh [$fe], a                                  ; $75a4: $e0 $fe
    inc b                                         ; $75a6: $04
    ld [$fc01], sp                                ; $75a7: $08 $01 $fc
    inc bc                                        ; $75aa: $03
    ldh a, [$0e]                                  ; $75ab: $f0 $0e
    nop                                           ; $75ad: $00
    ldh [$d8], a                                  ; $75ae: $e0 $d8
    pop bc                                        ; $75b0: $c1
    ld sp, $e304                                  ; $75b1: $31 $04 $e3
    ld a, [bc]                                    ; $75b4: $0a
    ld b, h                                       ; $75b5: $44
    nop                                           ; $75b6: $00
    and $33                                       ; $75b7: $e6 $33
    ld bc, $8006                                  ; $75b9: $01 $06 $80
    jr nc, jr_0ad_75de                            ; $75bc: $30 $20

    and [hl]                                      ; $75be: $a6
    nop                                           ; $75bf: $00
    rst $18                                       ; $75c0: $df
    cp b                                          ; $75c1: $b8
    jp nc, $a460                                  ; $75c2: $d2 $60 $a4

    ld d, $e7                                     ; $75c5: $16 $e7
    rlca                                          ; $75c7: $07
    nop                                           ; $75c8: $00

Jump_0ad_75c9:
    rst $38                                       ; $75c9: $ff
    sub b                                         ; $75ca: $90
    add b                                         ; $75cb: $80
    inc d                                         ; $75cc: $14
    inc de                                        ; $75cd: $13
    sub b                                         ; $75ce: $90
    ld d, e                                       ; $75cf: $53
    ret nz                                        ; $75d0: $c0

    nop                                           ; $75d1: $00
    ret c                                         ; $75d2: $d8

    ld bc, $0430                                  ; $75d3: $01 $30 $04
    ld b, [hl]                                    ; $75d6: $46
    jr jr_0ad_7559                                ; $75d7: $18 $80

    or c                                          ; $75d9: $b1
    nop                                           ; $75da: $00
    or h                                          ; $75db: $b4
    cp c                                          ; $75dc: $b9
    add c                                         ; $75dd: $81

jr_0ad_75de:
    rrca                                          ; $75de: $0f
    add b                                         ; $75df: $80
    ld [hl], a                                    ; $75e0: $77
    ld [hl], b                                    ; $75e1: $70
    adc e                                         ; $75e2: $8b
    nop                                           ; $75e3: $00
    or e                                          ; $75e4: $b3
    ld d, h                                       ; $75e5: $54
    ld [$551c], sp                                ; $75e6: $08 $1c $55

jr_0ad_75e9:
    dec a                                         ; $75e9: $3d
    ld [hl], $80                                  ; $75ea: $36 $80
    nop                                           ; $75ec: $00
    ld h, b                                       ; $75ed: $60
    add b                                         ; $75ee: $80
    ldh [$a0], a                                  ; $75ef: $e0 $a0
    ccf                                           ; $75f1: $3f
    ld b, b                                       ; $75f2: $40
    ld c, a                                       ; $75f3: $4f
    ld [hl], b                                    ; $75f4: $70
    ld bc, $1847                                  ; $75f5: $01 $47 $18
    inc bc                                        ; $75f8: $03
    inc c                                         ; $75f9: $0c
    ld l, h                                       ; $75fa: $6c
    add a                                         ; $75fb: $87
    scf                                           ; $75fc: $37
    ret nc                                        ; $75fd: $d0

    ld c, b                                       ; $75fe: $48
    ld h, b                                       ; $75ff: $60
    rst $38                                       ; $7600: $ff
    add [hl]                                      ; $7601: $86
    nop                                           ; $7602: $00
    ld e, h                                       ; $7603: $5c
    jr z, jr_0ad_7636                             ; $7604: $28 $30

    rlca                                          ; $7606: $07
    ld h, b                                       ; $7607: $60
    rrca                                          ; $7608: $0f
    ld h, c                                       ; $7609: $61
    nop                                           ; $760a: $00
    rrca                                          ; $760b: $0f
    and b                                         ; $760c: $a0
    adc [hl]                                      ; $760d: $8e
    add e                                         ; $760e: $83
    ld [de], a                                    ; $760f: $12
    dec bc                                        ; $7610: $0b
    ld l, c                                       ; $7611: $69
    dec de                                        ; $7612: $1b
    nop                                           ; $7613: $00
    sub $8c                                       ; $7614: $d6 $8c
    or e                                          ; $7616: $b3
    ld e, b                                       ; $7617: $58
    inc h                                         ; $7618: $24
    jr z, jr_0ad_768e                             ; $7619: $28 $73

    ld h, d                                       ; $761b: $62
    nop                                           ; $761c: $00
    pop hl                                        ; $761d: $e1
    adc a                                         ; $761e: $8f
    set 2, b                                      ; $761f: $cb $d0
    jr nz, jr_0ad_7687                            ; $7621: $20 $64

    pop hl                                        ; $7623: $e1
    ldh [rP1], a                                  ; $7624: $e0 $00
    db $e4                                        ; $7626: $e4
    jp Jump_000_048b                              ; $7627: $c3 $8b $04


    rla                                           ; $762a: $17
    ld [c], a                                     ; $762b: $e2
    db $ed                                        ; $762c: $ed
    ldh [rP1], a                                  ; $762d: $e0 $00
    rst $20                                       ; $762f: $e7
    ret nz                                        ; $7630: $c0

    rst $00                                       ; $7631: $c7
    inc bc                                        ; $7632: $03
    dec b                                         ; $7633: $05
    ret c                                         ; $7634: $d8

    ld e, a                                       ; $7635: $5f

jr_0ad_7636:
    dec l                                         ; $7636: $2d
    nop                                           ; $7637: $00
    ld a, [bc]                                    ; $7638: $0a
    ccf                                           ; $7639: $3f
    ret nz                                        ; $763a: $c0

    inc a                                         ; $763b: $3c
    and d                                         ; $763c: $a2
    dec e                                         ; $763d: $1d
    call c, Call_000_0083                         ; $763e: $dc $83 $00
    ld b, c                                       ; $7641: $41
    or d                                          ; $7642: $b2
    ld e, a                                       ; $7643: $5f
    ld c, e                                       ; $7644: $4b
    ld d, h                                       ; $7645: $54
    ret                                           ; $7646: $c9


    sub $91                                       ; $7647: $d6 $91
    nop                                           ; $7649: $00
    adc [hl]                                      ; $764a: $8e
    add e                                         ; $764b: $83
    ld bc, $e80c                                  ; $764c: $01 $0c $e8
    xor a                                         ; $764f: $af
    ld b, [hl]                                    ; $7650: $46
    adc a                                         ; $7651: $8f
    nop                                           ; $7652: $00
    ret nz                                        ; $7653: $c0

    add a                                         ; $7654: $87
    ldh a, [$c1]                                  ; $7655: $f0 $c1
    sbc c                                         ; $7657: $99
    ret nz                                        ; $7658: $c0

    ld e, $e0                                     ; $7659: $1e $e0
    nop                                           ; $765b: $00
    rst $28                                       ; $765c: $ef
    ldh [rPCM34], a                               ; $765d: $e0 $77
    ld l, b                                       ; $765f: $68
    dec sp                                        ; $7660: $3b
    inc c                                         ; $7661: $0c
    dec b                                         ; $7662: $05
    ldh [rP1], a                                  ; $7663: $e0 $00
    ld h, [hl]                                    ; $7665: $66
    pop hl                                        ; $7666: $e1
    jr nz, jr_0ad_75e9                            ; $7667: $20 $80

    ccf                                           ; $7669: $3f
    ret nz                                        ; $766a: $c0

    rrca                                          ; $766b: $0f
    ld [hl], b                                    ; $766c: $70
    nop                                           ; $766d: $00
    rlca                                          ; $766e: $07
    sbc b                                         ; $766f: $98
    add e                                         ; $7670: $83
    inc c                                         ; $7671: $0c
    ldh [rTMA], a                                 ; $7672: $e0 $06
    ldh a, [rTMA]                                 ; $7674: $f0 $06
    nop                                           ; $7676: $00
    ldh a, [rTIMA]                                ; $7677: $f0 $05
    ld [hl], c                                    ; $7679: $71
    and b                                         ; $767a: $a0
    adc [hl]                                      ; $767b: $8e
    or b                                          ; $767c: $b0
    add [hl]                                      ; $767d: $86
    ret nc                                        ; $767e: $d0

    nop                                           ; $767f: $00
    add $d0                                       ; $7680: $c6 $d0
    add $d8                                       ; $7682: $c6 $d8
    jp nz, $e2e8                                  ; $7684: $c2 $e8 $e2

jr_0ad_7687:
    add sp, $00                                   ; $7687: $e8 $00
    ld [c], a                                     ; $7689: $e2
    ld a, [bc]                                    ; $768a: $0a
    ld [c], a                                     ; $768b: $e2
    rra                                           ; $768c: $1f
    rst $08                                       ; $768d: $cf

jr_0ad_768e:
    rra                                           ; $768e: $1f
    ret z                                         ; $768f: $c8

    rra                                           ; $7690: $1f
    nop                                           ; $7691: $00
    sbc h                                         ; $7692: $9c
    inc e                                         ; $7693: $1c
    rrca                                          ; $7694: $0f
    ld d, d                                       ; $7695: $52
    ld e, a                                       ; $7696: $5f
    call nc, $a11b                                ; $7697: $d4 $1b $a1
    nop                                           ; $769a: $00
    adc a                                         ; $769b: $8f
    xor d                                         ; $769c: $aa
    rlca                                          ; $769d: $07
    jp nc, $81cd                                  ; $769e: $d2 $cd $81

    add [hl]                                      ; $76a1: $86
    or h                                          ; $76a2: $b4
    nop                                           ; $76a3: $00
    add e                                         ; $76a4: $83
    db $ec                                        ; $76a5: $ec
    rrca                                          ; $76a6: $0f
    call c, $e51f                                 ; $76a7: $dc $1f $e5
    rlca                                          ; $76aa: $07
    pop hl                                        ; $76ab: $e1
    nop                                           ; $76ac: $00
    rlca                                          ; $76ad: $07
    db $ec                                        ; $76ae: $ec
    ld b, e                                       ; $76af: $43
    ld h, d                                       ; $76b0: $62
    dec [hl]                                      ; $76b1: $35
    ld h, l                                       ; $76b2: $65
    jr nc, @-$4f                                  ; $76b3: $30 $af

    nop                                           ; $76b5: $00
    ld a, l                                       ; $76b6: $7d
    ld [hl], b                                    ; $76b7: $70
    rra                                           ; $76b8: $1f
    ld hl, $944f                                  ; $76b9: $21 $4f $94
    ld sp, hl                                     ; $76bc: $f9
    ld d, a                                       ; $76bd: $57
    nop                                           ; $76be: $00
    ldh a, [$e7]                                  ; $76bf: $f0 $e7
    dec d                                         ; $76c1: $15
    daa                                           ; $76c2: $27
    push de                                       ; $76c3: $d5
    daa                                           ; $76c4: $27
    jp $002f                                      ; $76c5: $c3 $2f $00


    jp $e313                                      ; $76c8: $c3 $13 $e3


    ld a, [$fa03]                                 ; $76cb: $fa $03 $fa
    inc bc                                        ; $76ce: $03
    rlca                                          ; $76cf: $07
    nop                                           ; $76d0: $00
    rst $20                                       ; $76d1: $e7
    rla                                           ; $76d2: $17
    rst $20                                       ; $76d3: $e7
    db $f4                                        ; $76d4: $f4
    db $fd                                        ; $76d5: $fd
    pop af                                        ; $76d6: $f1
    ldh a, [$f6]                                  ; $76d7: $f0 $f6
    nop                                           ; $76d9: $00
    ldh a, [$e9]                                  ; $76da: $f0 $e9
    db $e3                                        ; $76dc: $e3
    jp $d05f                                      ; $76dd: $c3 $5f $d0


    rra                                           ; $76e0: $1f
    xor h                                         ; $76e1: $ac
    nop                                           ; $76e2: $00
    or b                                          ; $76e3: $b0
    dec e                                         ; $76e4: $1d
    or c                                          ; $76e5: $b1
    dec b                                         ; $76e6: $05
    ld [hl], c                                    ; $76e7: $71
    dec c                                         ; $76e8: $0d
    ld h, c                                       ; $76e9: $61
    dec bc                                        ; $76ea: $0b
    nop                                           ; $76eb: $00
    ld h, e                                       ; $76ec: $63
    dec bc                                        ; $76ed: $0b
    ld h, e                                       ; $76ee: $63
    ld e, b                                       ; $76ef: $58
    ld b, e                                       ; $76f0: $43
    ld d, b                                       ; $76f1: $50
    ld b, a                                       ; $76f2: $47
    stop                                          ; $76f3: $10 $00
    rlca                                          ; $76f5: $07
    sub b                                         ; $76f6: $90
    add a                                         ; $76f7: $87
    inc c                                         ; $76f8: $0c
    ldh [rTIMA], a                                ; $76f9: $e0 $05
    pop af                                        ; $76fb: $f1
    dec b                                         ; $76fc: $05
    nop                                           ; $76fd: $00
    pop af                                        ; $76fe: $f1
    ld b, $f0                                     ; $76ff: $06 $f0
    ld [bc], a                                    ; $7701: $02
    ld hl, sp+$02                                 ; $7702: $f8 $02
    ld hl, sp+$03                                 ; $7704: $f8 $03
    nop                                           ; $7706: $00
    ld hl, sp+$01                                 ; $7707: $f8 $01
    db $fc                                        ; $7709: $fc
    ld [hl], $83                                  ; $770a: $36 $83
    and c                                         ; $770c: $a1
    ld [de], a                                    ; $770d: $12
    xor b                                         ; $770e: $a8
    nop                                           ; $770f: $00
    sub e                                         ; $7710: $93
    jr z, @+$13                                   ; $7711: $28 $11

    jr nc, jr_0ad_7736                            ; $7713: $30 $21

    ld a, [hl-]                                   ; $7715: $3a
    jr nc, jr_0ad_7740                            ; $7716: $30 $28

    nop                                           ; $7718: $00
    add hl, sp                                    ; $7719: $39
    jr nc, jr_0ad_7735                            ; $771a: $30 $19

    ldh [$67], a                                  ; $771c: $e0 $67
    add sp, -$19                                  ; $771e: $e8 $e7
    ldh a, [rP1]                                  ; $7720: $f0 $00
    di                                            ; $7722: $f3
    ldh a, [$a7]                                  ; $7723: $f0 $a7
    db $f4                                        ; $7725: $f4
    or c                                          ; $7726: $b1
    ld a, [hl-]                                   ; $7727: $3a
    ld sp, $00b8                                  ; $7728: $31 $b8 $00
    sbc e                                         ; $772b: $9b
    adc b                                         ; $772c: $88
    adc b                                         ; $772d: $88
    ld e, b                                       ; $772e: $58
    db $ed                                        ; $772f: $ed
    halt                                          ; $7730: $76
    rst $18                                       ; $7731: $df
    ld c, a                                       ; $7732: $4f
    nop                                           ; $7733: $00
    ld d, b                                       ; $7734: $50

jr_0ad_7735:
    sbc l                                         ; $7735: $9d

jr_0ad_7736:
    ld e, [hl]                                    ; $7736: $5e
    call z, $f40b                                 ; $7737: $cc $0b $f4
    rla                                           ; $773a: $17
    ld e, b                                       ; $773b: $58
    nop                                           ; $773c: $00
    or e                                          ; $773d: $b3
    push af                                       ; $773e: $f5
    sub c                                         ; $773f: $91

jr_0ad_7740:
    ld h, $e4                                     ; $7740: $26 $e4
    ld c, $e0                                     ; $7742: $0e $e0
    ld b, [hl]                                    ; $7744: $46
    nop                                           ; $7745: $00
    ldh [$0c], a                                  ; $7746: $e0 $0c
    add b                                         ; $7748: $80
    inc e                                         ; $7749: $1c
    call z, $993b                                 ; $774a: $cc $3b $99
    dec bc                                        ; $774d: $0b
    nop                                           ; $774e: $00
    or c                                          ; $774f: $b1
    scf                                           ; $7750: $37
    ld b, a                                       ; $7751: $47
    add hl, de                                    ; $7752: $19
    jr z, jr_0ad_778d                             ; $7753: $28 $38

    ld c, b                                       ; $7755: $48
    add hl, de                                    ; $7756: $19
    nop                                           ; $7757: $00
    ld e, b                                       ; $7758: $58
    ld a, [de]                                    ; $7759: $1a
    ld e, c                                       ; $775a: $59
    ld e, b                                       ; $775b: $58
    ld de, $1132                                  ; $775c: $11 $32 $11
    inc [hl]                                      ; $775f: $34

jr_0ad_7760:
    nop                                           ; $7760: $00
    ld b, $2c                                     ; $7761: $06 $2c
    ld [de], a                                    ; $7763: $12
    or b                                          ; $7764: $b0
    add a                                         ; $7765: $87
    jr nz, @+$11                                  ; $7766: $20 $0f

    and b                                         ; $7768: $a0
    nop                                           ; $7769: $00
    adc a                                         ; $776a: $8f
    ld h, b                                       ; $776b: $60
    rrca                                          ; $776c: $0f
    ld b, b                                       ; $776d: $40
    rra                                           ; $776e: $1f
    ld b, b                                       ; $776f: $40
    rra                                           ; $7770: $1f
    ret nz                                        ; $7771: $c0

    nop                                           ; $7772: $00
    rra                                           ; $7773: $1f
    add b                                         ; $7774: $80
    ccf                                           ; $7775: $3f
    ld bc, $01fc                                  ; $7776: $01 $fc $01
    db $fc                                        ; $7779: $fc
    nop                                           ; $777a: $00

jr_0ad_777b:
    jr z, jr_0ad_777b                             ; $777b: $28 $fe

    cp $b9                                        ; $777d: $fe $b9
    ld bc, $60fe                                  ; $777f: $01 $fe $60
    ld bc, $0000                                  ; $7782: $01 $00 $00
    jr nc, jr_0ad_7787                            ; $7785: $30 $00

jr_0ad_7787:
    ld a, c                                       ; $7787: $79
    ld a, e                                       ; $7788: $7b
    ld a, [bc]                                    ; $7789: $0a
    dec sp                                        ; $778a: $3b
    adc d                                         ; $778b: $8a
    and b                                         ; $778c: $a0

jr_0ad_778d:
    sbc c                                         ; $778d: $99
    add b                                         ; $778e: $80
    nop                                           ; $778f: $00
    cp b                                          ; $7790: $b8
    jp z, $421a                                   ; $7791: $ca $1a $42

    inc de                                        ; $7794: $13
    ld b, b                                       ; $7795: $40
    ld bc, $004a                                  ; $7796: $01 $4a $00
    inc l                                         ; $7799: $2c
    ld h, b                                       ; $779a: $60
    add b                                         ; $779b: $80
    ld l, c                                       ; $779c: $69
    xor l                                         ; $779d: $ad
    ld l, e                                       ; $779e: $6b
    adc a                                         ; $779f: $8f
    rst $28                                       ; $77a0: $ef
    nop                                           ; $77a1: $00
    ld c, b                                       ; $77a2: $48
    inc b                                         ; $77a3: $04
    ld c, e                                       ; $77a4: $4b
    rst $00                                       ; $77a5: $c7
    adc c                                         ; $77a6: $89
    ret                                           ; $77a7: $c9


    rst $00                                       ; $77a8: $c7
    and b                                         ; $77a9: $a0
    nop                                           ; $77aa: $00
    ld a, [hl]                                    ; $77ab: $7e
    ld d, b                                       ; $77ac: $50
    ld a, $78                                     ; $77ad: $3e $78
    db $10                                        ; $77af: $10
    jr nc, jr_0ad_77b3                            ; $77b0: $30 $01

    ld [hl], c                                    ; $77b2: $71

jr_0ad_77b3:
    nop                                           ; $77b3: $00
    add hl, sp                                    ; $77b4: $39
    dec bc                                        ; $77b5: $0b
    jr c, jr_0ad_7818                             ; $77b6: $38 $60

    jr nc, jr_0ad_77fa                            ; $77b8: $30 $40

    inc de                                        ; $77ba: $13
    ld b, [hl]                                    ; $77bb: $46
    nop                                           ; $77bc: $00
    ld b, c                                       ; $77bd: $41
    inc c                                         ; $77be: $0c
    rra                                           ; $77bf: $1f
    call c, $1494                                 ; $77c0: $dc $94 $14
    ret c                                         ; $77c3: $d8

    ret nz                                        ; $77c4: $c0

    nop                                           ; $77c5: $00
    db $10                                        ; $77c6: $10
    ret nc                                        ; $77c7: $d0

    sub b                                         ; $77c8: $90
    push af                                       ; $77c9: $f5
    dec b                                         ; $77ca: $05
    pop bc                                        ; $77cb: $c1
    rlca                                          ; $77cc: $07
    cp b                                          ; $77cd: $b8
    nop                                           ; $77ce: $00
    adc b                                         ; $77cf: $88
    db $f4                                        ; $77d0: $f4
    push bc                                       ; $77d1: $c5
    inc a                                         ; $77d2: $3c
    ld hl, $313c                                  ; $77d3: $21 $3c $31
    ld c, l                                       ; $77d6: $4d
    nop                                           ; $77d7: $00
    ld a, h                                       ; $77d8: $7c
    dec bc                                        ; $77d9: $0b
    ld a, b                                       ; $77da: $78
    ld [bc], a                                    ; $77db: $02
    ld [hl], b                                    ; $77dc: $70
    ld [hl-], a                                   ; $77dd: $32
    jr nc, jr_0ad_7760                            ; $77de: $30 $80

    ld c, $3f                                     ; $77e0: $0e $3f
    add b                                         ; $77e2: $80
    ccf                                           ; $77e3: $3f
    ld a, a                                       ; $77e4: $7f
    ld a, $02                                     ; $77e5: $3e $02
    inc b                                         ; $77e7: $04
    ld [$8a9c], sp                                ; $77e8: $08 $9c $8a
    ld h, h                                       ; $77eb: $64
    nop                                           ; $77ec: $00
    rlca                                          ; $77ed: $07
    ld hl, $2007                                  ; $77ee: $21 $07 $20
    ld b, $b0                                     ; $77f1: $06 $b0
    add a                                         ; $77f3: $87
    ret nc                                        ; $77f4: $d0

    nop                                           ; $77f5: $00
    ret nz                                        ; $77f6: $c0

    rra                                           ; $77f7: $1f
    ret nz                                        ; $77f8: $c0

    nop                                           ; $77f9: $00

jr_0ad_77fa:
    ret nz                                        ; $77fa: $c0

    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    add hl, bc                                    ; $77fd: $09
    ld bc, $1d87                                  ; $77fe: $01 $87 $1d
    sbc h                                         ; $7801: $9c
    rrca                                          ; $7802: $0f
    sub [hl]                                      ; $7803: $96
    cpl                                           ; $7804: $2f
    sbc b                                         ; $7805: $98
    xor $09                                       ; $7806: $ee $09
    add b                                         ; $7808: $80
    call z, Call_000_180a                         ; $7809: $cc $0a $18
    ld sp, $8118                                  ; $780c: $31 $18 $81
    xor h                                         ; $780f: $ac
    sub c                                         ; $7810: $91
    adc b                                         ; $7811: $88
    ld b, b                                       ; $7812: $40
    sub c                                         ; $7813: $91
    db $10                                        ; $7814: $10
    jr @+$01                                      ; $7815: $18 $ff

    nop                                           ; $7817: $00

jr_0ad_7818:
    ld b, d                                       ; $7818: $42
    add a                                         ; $7819: $87
    jp nz, $0822                                  ; $781a: $c2 $22 $08

    add $e2                                       ; $781d: $c6 $e2
    call nz, Call_000_106c                        ; $781f: $c4 $6c $10
    jr z, jr_0ad_7894                             ; $7822: $28 $70

    ld b, [hl]                                    ; $7824: $46
    ld [hl], b                                    ; $7825: $70
    nop                                           ; $7826: $00
    ld b, h                                       ; $7827: $44
    ld b, h                                       ; $7828: $44
    ldh a, [$6c]                                  ; $7829: $f0 $6c
    ldh [$08], a                                  ; $782b: $e0 $08
    inc bc                                        ; $782d: $03
    ld hl, sp+$30                                 ; $782e: $f8 $30
    inc bc                                        ; $7830: $03
    inc bc                                        ; $7831: $03
    inc [hl]                                      ; $7832: $34
    jr nz, jr_0ad_7839                            ; $7833: $20 $04

    ld c, e                                       ; $7835: $4b
    db $10                                        ; $7836: $10
    inc bc                                        ; $7837: $03
    ld a, [hl]                                    ; $7838: $7e

jr_0ad_7839:
    ld [bc], a                                    ; $7839: $02
    ld b, b                                       ; $783a: $40
    nop                                           ; $783b: $00
    ld bc, $c1e0                                  ; $783c: $01 $e0 $c1
    ldh [$c6], a                                  ; $783f: $e0 $c6
    pop bc                                        ; $7841: $c1
    add l                                         ; $7842: $85
    sub d                                         ; $7843: $92
    nop                                           ; $7844: $00
    add hl, de                                    ; $7845: $19
    dec c                                         ; $7846: $0d
    ld [$3638], sp                                ; $7847: $08 $38 $36
    ld b, $02                                     ; $784a: $06 $02
    rlca                                          ; $784c: $07
    nop                                           ; $784d: $00
    inc bc                                        ; $784e: $03
    dec bc                                        ; $784f: $0b

Call_0ad_7850:
    ld e, b                                       ; $7850: $58
    call nz, $eb92                                ; $7851: $c4 $92 $eb
    cp $7f                                        ; $7854: $fe $7f
    nop                                           ; $7856: $00
    ld b, l                                       ; $7857: $45
    ld de, $2a22                                  ; $7858: $11 $22 $2a
    sub b                                         ; $785b: $90
    ld [bc], a                                    ; $785c: $02
    or c                                          ; $785d: $b1
    and c                                         ; $785e: $a1
    nop                                           ; $785f: $00
    jp nz, $ffcb                                  ; $7860: $c2 $cb $ff

    rst $38                                       ; $7863: $ff
    sbc a                                         ; $7864: $9f
    ccf                                           ; $7865: $3f
    rra                                           ; $7866: $1f
    ccf                                           ; $7867: $3f
    nop                                           ; $7868: $00
    cp a                                          ; $7869: $bf
    ccf                                           ; $786a: $3f
    ret nz                                        ; $786b: $c0

    cp a                                          ; $786c: $bf
    nop                                           ; $786d: $00
    rra                                           ; $786e: $1f
    ld h, b                                       ; $786f: $60

jr_0ad_7870:
    rlca                                          ; $7870: $07
    ld sp, $0338                                  ; $7871: $31 $38 $03
    ld d, b                                       ; $7874: $50
    add sp, $70                                   ; $7875: $e8 $70
    jr c, @+$01                                   ; $7877: $38 $ff

    nop                                           ; $7879: $00
    cp $02                                        ; $787a: $fe $02
    nop                                           ; $787c: $00
    ld b, b                                       ; $787d: $40
    nop                                           ; $787e: $00
    ld b, $00                                     ; $787f: $06 $00
    ldh [rP1], a                                  ; $7881: $e0 $00
    rla                                           ; $7883: $17
    inc d                                         ; $7884: $14
    rrca                                          ; $7885: $0f
    jr c, jr_0ad_7888                             ; $7886: $38 $00

jr_0ad_7888:
    jr nc, jr_0ad_7891                            ; $7888: $30 $07

    ldh a, [$87]                                  ; $788a: $f0 $87
    rst $20                                       ; $788c: $e7
    rla                                           ; $788d: $17
    jr z, jr_0ad_789c                             ; $788e: $28 $0c

    nop                                           ; $7890: $00

jr_0ad_7891:
    ld h, h                                       ; $7891: $64
    dec hl                                        ; $7892: $2b
    nop                                           ; $7893: $00

jr_0ad_7894:
    nop                                           ; $7894: $00
    add hl, bc                                    ; $7895: $09
    adc l                                         ; $7896: $8d
    call nz, $0046                                ; $7897: $c4 $46 $00
    ret nz                                        ; $789a: $c0

    ld [hl], a                                    ; $789b: $77

jr_0ad_789c:
    add sp, $38                                   ; $789c: $e8 $38
    inc hl                                        ; $789e: $23
    pop bc                                        ; $789f: $c1
    add hl, bc                                    ; $78a0: $09
    inc [hl]                                      ; $78a1: $34
    nop                                           ; $78a2: $00
    ld [de], a                                    ; $78a3: $12
    ld [$0204], a                                 ; $78a4: $ea $04 $02
    db $fc                                        ; $78a7: $fc
    ld hl, sp-$07                                 ; $78a8: $f8 $f9
    dec b                                         ; $78aa: $05
    nop                                           ; $78ab: $00
    sbc b                                         ; $78ac: $98
    inc b                                         ; $78ad: $04
    inc bc                                        ; $78ae: $03
    ld a, [hl-]                                   ; $78af: $3a
    dec bc                                        ; $78b0: $0b
    ld [hl-], a                                   ; $78b1: $32
    ld c, h                                       ; $78b2: $4c
    ld b, c                                       ; $78b3: $41
    nop                                           ; $78b4: $00
    halt                                          ; $78b5: $76
    ld [hl], b                                    ; $78b6: $70
    adc b                                         ; $78b7: $88
    adc e                                         ; $78b8: $8b
    inc h                                         ; $78b9: $24
    inc b                                         ; $78ba: $04
    sub b                                         ; $78bb: $90
    and b                                         ; $78bc: $a0
    nop                                           ; $78bd: $00
    cp b                                          ; $78be: $b8
    xor b                                         ; $78bf: $a8
    dec bc                                        ; $78c0: $0b
    ld [hl], e                                    ; $78c1: $73
    ld b, e                                       ; $78c2: $43
    or e                                          ; $78c3: $b3
    rst $38                                       ; $78c4: $ff
    nop                                           ; $78c5: $00
    nop                                           ; $78c6: $00
    ld a, a                                       ; $78c7: $7f
    nop                                           ; $78c8: $00
    add b                                         ; $78c9: $80
    ccf                                           ; $78ca: $3f
    ret nz                                        ; $78cb: $c0

    rrca                                          ; $78cc: $0f
    ld [hl], b                                    ; $78cd: $70
    rlca                                          ; $78ce: $07
    ld [bc], a                                    ; $78cf: $02
    sbc b                                         ; $78d0: $98
    add e                                         ; $78d1: $83
    inc c                                         ; $78d2: $0c
    ldh [$f7], a                                  ; $78d3: $e0 $f7

jr_0ad_78d5:
    ldh a, [$d0]                                  ; $78d5: $f0 $d0
    ld e, b                                       ; $78d7: $58
    add sp, $00                                   ; $78d8: $e8 $00
    nop                                           ; $78da: $00
    db $fc                                        ; $78db: $fc
    nop                                           ; $78dc: $00
    ld [bc], a                                    ; $78dd: $02
    ldh a, [$0c]                                  ; $78de: $f0 $0c
    ldh [rNR24], a                                ; $78e0: $e0 $19
    nop                                           ; $78e2: $00
    ld bc, $0531                                  ; $78e3: $01 $31 $05
    dec c                                         ; $78e6: $0d
    ld h, c                                       ; $78e7: $61
    dec c                                         ; $78e8: $0d

jr_0ad_78e9:
    ld h, c                                       ; $78e9: $61
    adc h                                         ; $78ea: $8c
    nop                                           ; $78eb: $00
    and b                                         ; $78ec: $a0
    ret nc                                        ; $78ed: $d0

    jr nz, jr_0ad_7870                            ; $78ee: $20 $80

    ld h, d                                       ; $78f0: $62
    add a                                         ; $78f1: $87
    ld c, a                                       ; $78f2: $4f
    rrca                                          ; $78f3: $0f
    nop                                           ; $78f4: $00
    rla                                           ; $78f5: $17
    rra                                           ; $78f6: $1f
    adc a                                         ; $78f7: $8f
    and b                                         ; $78f8: $a0
    sbc a                                         ; $78f9: $9f
    jr nz, jr_0ad_791b                            ; $78fa: $20 $1f

    jr nz, jr_0ad_78fe                            ; $78fc: $20 $00

jr_0ad_78fe:
    rra                                           ; $78fe: $1f
    ld a, [bc]                                    ; $78ff: $0a
    ld l, c                                       ; $7900: $69
    inc e                                         ; $7901: $1c
    inc d                                         ; $7902: $14
    inc e                                         ; $7903: $1c
    sub d                                         ; $7904: $92
    adc $00                                       ; $7905: $ce $00
    jp $e1e7                                      ; $7907: $c3 $e7 $e1


    ld b, $e1                                     ; $790a: $06 $e1
    rlca                                          ; $790c: $07
    db $e4                                        ; $790d: $e4
    ldh [rP1], a                                  ; $790e: $e0 $00
    ldh a, [rNR13]                                ; $7910: $f0 $13
    ld h, e                                       ; $7912: $63
    jr z, jr_0ad_78d5                             ; $7913: $28 $c0

    dec de                                        ; $7915: $1b
    rlca                                          ; $7916: $07
    add hl, sp                                    ; $7917: $39
    nop                                           ; $7918: $00
    ld b, l                                       ; $7919: $45
    ld [hl], b                                    ; $791a: $70

jr_0ad_791b:
    inc a                                         ; $791b: $3c
    ld h, c                                       ; $791c: $61
    jr jr_0ad_791f                                ; $791d: $18 $00

jr_0ad_791f:
    ld b, b                                       ; $791f: $40
    ld e, $00                                     ; $7920: $1e $00
    nop                                           ; $7922: $00
    ldh [rNR44], a                                ; $7923: $e0 $23
    jr z, @+$65                                   ; $7925: $28 $63

    dec bc                                        ; $7927: $0b
    ld [$0003], sp                                ; $7928: $08 $03 $00
    ld e, b                                       ; $792b: $58
    sub e                                         ; $792c: $93
    db $10                                        ; $792d: $10
    dec de                                        ; $792e: $1b
    cp b                                          ; $792f: $b8
    or l                                          ; $7930: $b5
    adc b                                         ; $7931: $88
    add hl, sp                                    ; $7932: $39
    nop                                           ; $7933: $00
    inc b                                         ; $7934: $04
    ld sp, hl                                     ; $7935: $f9
    ld bc, $ff61                                  ; $7936: $01 $61 $ff
    jr nz, jr_0ad_78e9                            ; $7939: $20 $ae

    jr nc, jr_0ad_793d                            ; $793b: $30 $00

jr_0ad_793d:
    sub [hl]                                      ; $793d: $96
    push de                                       ; $793e: $d5
    db $10                                        ; $793f: $10
    ret z                                         ; $7940: $c8

    ld de, $0bd3                                  ; $7941: $11 $d3 $0b
    ret nc                                        ; $7944: $d0

    nop                                           ; $7945: $00
    dec c                                         ; $7946: $0d
    ld a, h                                       ; $7947: $7c
    cp h                                          ; $7948: $bc
    ld a, h                                       ; $7949: $7c
    or h                                          ; $794a: $b4
    ret c                                         ; $794b: $d8

    ld h, h                                       ; $794c: $64
    sub b                                         ; $794d: $90
    nop                                           ; $794e: $00
    cpl                                           ; $794f: $2f
    or b                                          ; $7950: $b0
    ld bc, $2362                                  ; $7951: $01 $62 $23
    ld [$a944], sp                                ; $7954: $08 $44 $a9
    nop                                           ; $7957: $00
    db $10                                        ; $7958: $10
    adc h                                         ; $7959: $8c
    and b                                         ; $795a: $a0
    dec b                                         ; $795b: $05
    ld sp, $1005                                  ; $795c: $31 $05 $10
    ld de, $1200                                  ; $795f: $11 $00 $12
    add hl, de                                    ; $7962: $19
    ld a, [de]                                    ; $7963: $1a
    dec bc                                        ; $7964: $0b
    ld [$0502], sp                                ; $7965: $08 $02 $05
    db $e4                                        ; $7968: $e4
    nop                                           ; $7969: $00
    db $e3                                        ; $796a: $e3
    ldh [$df], a                                  ; $796b: $e0 $df
    add b                                         ; $796d: $80
    rst $38                                       ; $796e: $ff
    ld b, a                                       ; $796f: $47
    sbc a                                         ; $7970: $9f
    cp h                                          ; $7971: $bc
    nop                                           ; $7972: $00
    sbc d                                         ; $7973: $9a
    ld a, $7c                                     ; $7974: $3e $7c
    dec a                                         ; $7976: $3d
    ld a, [hl]                                    ; $7977: $7e
    ld hl, sp+$7e                                 ; $7978: $f8 $7e
    sbc h                                         ; $797a: $9c
    nop                                           ; $797b: $00
    db $fc                                        ; $797c: $fc
    db $e3                                        ; $797d: $e3
    ret nc                                        ; $797e: $d0

    call nz, $04d2                                ; $797f: $c4 $d2 $04
    add d                                         ; $7982: $82
    inc c                                         ; $7983: $0c
    nop                                           ; $7984: $00
    ld [$410c], sp                                ; $7985: $08 $0c $41
    add hl, de                                    ; $7988: $19
    jr jr_0ad_79bd                                ; $7989: $18 $32

    ld sp, $00b4                                  ; $798b: $31 $b4 $00
    ld [hl], d                                    ; $798e: $72
    db $10                                        ; $798f: $10
    ld sp, $6124                                  ; $7990: $31 $24 $61
    ld c, b                                       ; $7993: $48
    jp nz, Jump_000_0014                          ; $7994: $c2 $14 $00

    add [hl]                                      ; $7997: $86
    or b                                          ; $7998: $b0
    add h                                         ; $7999: $84
    ld l, c                                       ; $799a: $69
    dec c                                         ; $799b: $0d
    ld b, c                                       ; $799c: $41
    ld c, b                                       ; $799d: $48
    ld d, b                                       ; $799e: $50
    nop                                           ; $799f: $00
    ld c, b                                       ; $79a0: $48
    jr c, jr_0ad_79a9                             ; $79a1: $38 $06

    ld a, b                                       ; $79a3: $78
    ld b, [hl]                                    ; $79a4: $46
    ld e, $62                                     ; $79a5: $1e $62
    inc e                                         ; $79a7: $1c
    nop                                           ; $79a8: $00

jr_0ad_79a9:
    ld b, h                                       ; $79a9: $44
    ld b, e                                       ; $79aa: $43
    jp nc, $c106                                  ; $79ab: $d2 $06 $c1

    add [hl]                                      ; $79ae: $86
    add hl, de                                    ; $79af: $19
    jr jr_0ad_79b2                                ; $79b0: $18 $00

jr_0ad_79b2:
    halt                                          ; $79b2: $76
    ret nz                                        ; $79b3: $c0

    dec e                                         ; $79b4: $1d
    add d                                         ; $79b5: $82
    rra                                           ; $79b6: $1f
    rra                                           ; $79b7: $1f
    ld c, a                                       ; $79b8: $4f
    rra                                           ; $79b9: $1f
    nop                                           ; $79ba: $00
    rst $00                                       ; $79bb: $c7
    ld c, [hl]                                    ; $79bc: $4e

jr_0ad_79bd:
    pop de                                        ; $79bd: $d1
    cp b                                          ; $79be: $b8
    add [hl]                                      ; $79bf: $86
    ld a, $47                                     ; $79c0: $3e $47
    ld a, h                                       ; $79c2: $7c
    nop                                           ; $79c3: $00
    add a                                         ; $79c4: $87
    sbc $79                                       ; $79c5: $de $79
    ret c                                         ; $79c7: $d8

    daa                                           ; $79c8: $27
    ret nz                                        ; $79c9: $c0

    add e                                         ; $79ca: $83
    xor b                                         ; $79cb: $a8
    inc b                                         ; $79cc: $04
    dec bc                                        ; $79cd: $0b
    ld b, e                                       ; $79ce: $43
    dec de                                        ; $79cf: $1b
    rst $00                                       ; $79d0: $c7
    rla                                           ; $79d1: $17
    ld [bc], a                                    ; $79d2: $02
    ld [$e4ea], sp                                ; $79d3: $08 $ea $e4
    nop                                           ; $79d6: $00
    ld d, $1b                                     ; $79d7: $16 $1b
    jr jr_0ad_79f2                                ; $79d9: $18 $17

    jr jr_0ad_79f4                                ; $79db: $18 $17

    dec e                                         ; $79dd: $1d
    dec de                                        ; $79de: $1b
    nop                                           ; $79df: $00
    ld b, $03                                     ; $79e0: $06 $03
    inc bc                                        ; $79e2: $03
    ld bc, $f4f0                                  ; $79e3: $01 $f0 $f4
    ld bc, $0000                                  ; $79e6: $01 $00 $00
    dec a                                         ; $79e9: $3d
    call nz, $08f6                                ; $79ea: $c4 $f6 $08
    ld a, [$7f87]                                 ; $79ed: $fa $87 $7f
    ld b, [hl]                                    ; $79f0: $46
    nop                                           ; $79f1: $00

jr_0ad_79f2:
    ld b, $f9                                     ; $79f2: $06 $f9

jr_0ad_79f4:
    pop af                                        ; $79f4: $f1
    ld de, $0000                                  ; $79f5: $11 $00 $00
    call nz, RST_00                               ; $79f8: $c4 $00 $00
    ret z                                         ; $79fb: $c8

    push hl                                       ; $79fc: $e5
    sub b                                         ; $79fd: $90
    ret                                           ; $79fe: $c9


    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    sbc e                                         ; $7a01: $9b
    ld a, h                                       ; $7a02: $7c
    nop                                           ; $7a03: $00
    cp l                                          ; $7a04: $bd
    ld hl, sp+$0a                                 ; $7a05: $f8 $0a
    ld sp, hl                                     ; $7a07: $f9
    ld h, [hl]                                    ; $7a08: $66
    db $fc                                        ; $7a09: $fc
    pop bc                                        ; $7a0a: $c1
    pop de                                        ; $7a0b: $d1
    nop                                           ; $7a0c: $00
    ld b, e                                       ; $7a0d: $43
    ld d, b                                       ; $7a0e: $50
    add c                                         ; $7a0f: $81
    adc [hl]                                      ; $7a10: $8e
    rlca                                          ; $7a11: $07
    dec a                                         ; $7a12: $3d
    inc e                                         ; $7a13: $1c
    inc sp                                        ; $7a14: $33

jr_0ad_7a15:
    nop                                           ; $7a15: $00
    or b                                          ; $7a16: $b0
    inc c                                         ; $7a17: $0c
    and b                                         ; $7a18: $a0
    jr c, @-$38                                   ; $7a19: $38 $c6

    ld b, $31                                     ; $7a1b: $06 $31
    ld hl, sp+$00                                 ; $7a1d: $f8 $00
    ld b, e                                       ; $7a1f: $43
    ld [hl], b                                    ; $7a20: $70
    add a                                         ; $7a21: $87
    ldh [rIF], a                                  ; $7a22: $e0 $0f
    ret nz                                        ; $7a24: $c0

    rrca                                          ; $7a25: $0f
    rra                                           ; $7a26: $1f
    nop                                           ; $7a27: $00
    rra                                           ; $7a28: $1f
    rrca                                          ; $7a29: $0f
    ld hl, sp-$19                                 ; $7a2a: $f8 $e7
    ld a, b                                       ; $7a2c: $78
    ld [hl], a                                    ; $7a2d: $77
    ldh a, [rNR13]                                ; $7a2e: $f0 $13
    nop                                           ; $7a30: $00
    ldh a, [$37]                                  ; $7a31: $f0 $37
    jr nc, jr_0ad_7a15                            ; $7a33: $30 $e0

    ld h, b                                       ; $7a35: $60
    ldh [$60], a                                  ; $7a36: $e0 $60
    ret nz                                        ; $7a38: $c0

    nop                                           ; $7a39: $00
    ld b, b                                       ; $7a3a: $40
    ret nz                                        ; $7a3b: $c0

    ret nz                                        ; $7a3c: $c0

    ld a, [hl]                                    ; $7a3d: $7e

jr_0ad_7a3e:
    add b                                         ; $7a3e: $80
    ld a, [hl]                                    ; $7a3f: $7e
    scf                                           ; $7a40: $37
    add a                                         ; $7a41: $87
    nop                                           ; $7a42: $00
    cpl                                           ; $7a43: $2f
    adc a                                         ; $7a44: $8f
    and b                                         ; $7a45: $a0
    adc a                                         ; $7a46: $8f
    ld h, b                                       ; $7a47: $60
    rrca                                          ; $7a48: $0f
    ld b, b                                       ; $7a49: $40
    rra                                           ; $7a4a: $1f
    nop                                           ; $7a4b: $00
    ld b, b                                       ; $7a4c: $40
    rra                                           ; $7a4d: $1f
    ret nz                                        ; $7a4e: $c0

    rra                                           ; $7a4f: $1f
    add b                                         ; $7a50: $80
    ccf                                           ; $7a51: $3f
    db $e3                                        ; $7a52: $e3
    and $01                                       ; $7a53: $e6 $01
    dec b                                         ; $7a55: $05
    inc c                                         ; $7a56: $0c
    inc bc                                        ; $7a57: $03
    ld [$ece7], sp                                ; $7a58: $08 $e7 $ec
    and $02                                       ; $7a5b: $e6 $02
    stop                                          ; $7a5d: $10 $00
    ld [$700d], sp                                ; $7a5f: $08 $0d $70
    xor h                                         ; $7a62: $ac
    ld bc, $4339                                  ; $7a63: $01 $39 $43
    inc bc                                        ; $7a66: $03
    nop                                           ; $7a67: $00
    ld b, c                                       ; $7a68: $41
    ld c, $87                                     ; $7a69: $0e $87
    reti                                          ; $7a6b: $d9


    ld e, h                                       ; $7a6c: $5c
    sub a                                         ; $7a6d: $97
    ld b, b                                       ; $7a6e: $40
    ld c, $00                                     ; $7a6f: $0e $00
    jr nz, @+$62                                  ; $7a71: $20 $60

    and c                                         ; $7a73: $a1
    ld [hl], d                                    ; $7a74: $72
    inc [hl]                                      ; $7a75: $34
    add hl, bc                                    ; $7a76: $09
    ld b, d                                       ; $7a77: $42
    rst $00                                       ; $7a78: $c7
    nop                                           ; $7a79: $00
    ret nz                                        ; $7a7a: $c0

    add [hl]                                      ; $7a7b: $86
    ret nz                                        ; $7a7c: $c0

    ld a, [bc]                                    ; $7a7d: $0a
    dec d                                         ; $7a7e: $15
    or b                                          ; $7a7f: $b0
    nop                                           ; $7a80: $00
    jr nc, jr_0ad_7a83                            ; $7a81: $30 $00

jr_0ad_7a83:
    inc bc                                        ; $7a83: $03
    inc b                                         ; $7a84: $04
    ld b, c                                       ; $7a85: $41
    inc bc                                        ; $7a86: $03
    ld c, b                                       ; $7a87: $48
    inc b                                         ; $7a88: $04
    ld [$00ac], sp                                ; $7a89: $08 $ac $00
    ld e, $9c                                     ; $7a8c: $1e $9c
    ld a, l                                       ; $7a8e: $7d
    ld b, c                                       ; $7a8f: $41
    add d                                         ; $7a90: $82
    inc bc                                        ; $7a91: $03
    cp [hl]                                       ; $7a92: $be
    ret nz                                        ; $7a93: $c0

    nop                                           ; $7a94: $00
    ret nz                                        ; $7a95: $c0

    ld bc, $810f                                  ; $7a96: $01 $0f $81
    adc h                                         ; $7a99: $8c
    ret nz                                        ; $7a9a: $c0

    ld b, e                                       ; $7a9b: $43
    add e                                         ; $7a9c: $83
    jr nz, jr_0ad_7a3e                            ; $7a9d: $20 $9f

    rra                                           ; $7a9f: $1f
    ld c, e                                       ; $7aa0: $4b
    nop                                           ; $7aa1: $00
    ccf                                           ; $7aa2: $3f
    ld e, a                                       ; $7aa3: $5f
    ld b, b                                       ; $7aa4: $40
    rrca                                          ; $7aa5: $0f
    ldh [rSB], a                                  ; $7aa6: $e0 $01
    add b                                         ; $7aa8: $80
    cp $01                                        ; $7aa9: $fe $01
    db $fc                                        ; $7aab: $fc
    ld bc, $fdfc                                  ; $7aac: $01 $fc $fd
    inc b                                         ; $7aaf: $04
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    ei                                            ; $7ab2: $fb
    ld hl, sp-$08                                 ; $7ab3: $f8 $f8
    ld [bc], a                                    ; $7ab5: $02
    ld hl, sp-$06                                 ; $7ab6: $f8 $fa
    add b                                         ; $7ab8: $80
    ccf                                           ; $7ab9: $3f
    inc e                                         ; $7aba: $1c
    add b                                         ; $7abb: $80
    ccf                                           ; $7abc: $3f
    ld a, a                                       ; $7abd: $7f
    call nc, Call_000_0401                        ; $7abe: $d4 $01 $04
    ld [$0a9c], sp                                ; $7ac1: $08 $9c $0a
    dec b                                         ; $7ac4: $05
    inc b                                         ; $7ac5: $04
    nop                                           ; $7ac6: $00
    dec b                                         ; $7ac7: $05
    inc b                                         ; $7ac8: $04
    inc b                                         ; $7ac9: $04
    ld b, $03                                     ; $7aca: $06 $03
    ld hl, sp+$00                                 ; $7acc: $f8 $00
    ld hl, sp-$80                                 ; $7ace: $f8 $80
    xor d                                         ; $7ad0: $aa
    ld a, [de]                                    ; $7ad1: $1a
    ld e, $25                                     ; $7ad2: $1e $25
    adc h                                         ; $7ad4: $8c
    ld [$0210], sp                                ; $7ad5: $08 $10 $02
    rra                                           ; $7ad8: $1f
    nop                                           ; $7ad9: $00
    and a                                         ; $7ada: $a7
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    rra                                           ; $7add: $1f
    ret nz                                        ; $7ade: $c0

    nop                                           ; $7adf: $00
    ret nz                                        ; $7ae0: $c0

    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    nop                                           ; $7ae3: $00
    inc h                                         ; $7ae4: $24
    ld l, b                                       ; $7ae5: $68
    ld h, c                                       ; $7ae6: $61
    jr c, jr_0ad_7aeb                             ; $7ae7: $38 $02

    db $10                                        ; $7ae9: $10
    ld b, h                                       ; $7aea: $44

jr_0ad_7aeb:
    ld h, b                                       ; $7aeb: $60
    inc h                                         ; $7aec: $24
    ld d, b                                       ; $7aed: $50
    ld a, [bc]                                    ; $7aee: $0a
    call z, Call_000_0f0a                         ; $7aef: $cc $0a $0f
    ccf                                           ; $7af2: $3f
    ld a, a                                       ; $7af3: $7f
    ld c, a                                       ; $7af4: $4f
    rrca                                          ; $7af5: $0f
    db $10                                        ; $7af6: $10
    di                                            ; $7af7: $f3
    ld [bc], a                                    ; $7af8: $02
    db $fc                                        ; $7af9: $fc

jr_0ad_7afa:
    db $10                                        ; $7afa: $10
    jr @+$01                                      ; $7afb: $18 $ff

    nop                                           ; $7afd: $00
    rst $00                                       ; $7afe: $c7
    ret nz                                        ; $7aff: $c0

jr_0ad_7b00:
    ld [bc], a                                    ; $7b00: $02
    add e                                         ; $7b01: $83
    cp b                                          ; $7b02: $b8
    ld a, h                                       ; $7b03: $7c
    dec e                                         ; $7b04: $1d
    cp $0e                                        ; $7b05: $fe $0e
    db $10                                        ; $7b07: $10
    jr z, jr_0ad_7afa                             ; $7b08: $28 $f0

    nop                                           ; $7b0a: $00
    ld b, $f1                                     ; $7b0b: $06 $f1
    dec b                                         ; $7b0d: $05
    pop af                                        ; $7b0e: $f1
    dec b                                         ; $7b0f: $05
    pop hl                                        ; $7b10: $e1
    dec c                                         ; $7b11: $0d
    ld [$030c], sp                                ; $7b12: $08 $0c $03
    ld hl, sp+$03                                 ; $7b15: $f8 $03
    inc bc                                        ; $7b17: $03
    inc [hl]                                      ; $7b18: $34
    jr nz, jr_0ad_7b1f                            ; $7b19: $20 $04

    ld c, e                                       ; $7b1b: $4b
    db $10                                        ; $7b1c: $10
    inc bc                                        ; $7b1d: $03
    sub d                                         ; $7b1e: $92

jr_0ad_7b1f:
    ld [bc], a                                    ; $7b1f: $02
    ld b, b                                       ; $7b20: $40
    nop                                           ; $7b21: $00
    ld bc, $f0d8                                  ; $7b22: $01 $d8 $f0
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    rst $38                                       ; $7b27: $ff
    nop                                           ; $7b28: $00
    ld hl, sp+$00                                 ; $7b29: $f8 $00
    nop                                           ; $7b2b: $00
    ld bc, $06f2                                  ; $7b2c: $01 $f2 $06
    ld [c], a                                     ; $7b2f: $e2
    inc c                                         ; $7b30: $0c
    ld bc, $0038                                  ; $7b31: $01 $38 $00
    ld a, [hl+]                                   ; $7b34: $2a
    ld h, b                                       ; $7b35: $60
    inc b                                         ; $7b36: $04
    sub c                                         ; $7b37: $91
    adc c                                         ; $7b38: $89
    inc b                                         ; $7b39: $04
    inc b                                         ; $7b3a: $04
    ld e, h                                       ; $7b3b: $5c
    nop                                           ; $7b3c: $00
    ld d, [hl]                                    ; $7b3d: $56
    ret z                                         ; $7b3e: $c8

    jp nz, $8087                                  ; $7b3f: $c2 $87 $80

    inc e                                         ; $7b42: $1c
    inc hl                                        ; $7b43: $23
    rlca                                          ; $7b44: $07
    db $10                                        ; $7b45: $10
    ld [hl], h                                    ; $7b46: $74
    cpl                                           ; $7b47: $2f
    ld h, c                                       ; $7b48: $61
    ld b, b                                       ; $7b49: $40
    ld [$00ff], sp                                ; $7b4a: $08 $ff $00

jr_0ad_7b4d:
    ccf                                           ; $7b4d: $3f
    nop                                           ; $7b4e: $00
    nop                                           ; $7b4f: $00
    sbc a                                         ; $7b50: $9f
    rra                                           ; $7b51: $1f
    rrca                                          ; $7b52: $0f
    rst $08                                       ; $7b53: $cf
    ldh [rTAC], a                                 ; $7b54: $e0 $07
    add d                                         ; $7b56: $82
    add c                                         ; $7b57: $81
    ret nc                                        ; $7b58: $d0

    ld d, b                                       ; $7b59: $50

jr_0ad_7b5a:
    ldh [$6f], a                                  ; $7b5a: $e0 $6f

jr_0ad_7b5c:
    jr nz, jr_0ad_7b5c                            ; $7b5c: $20 $fe

    ld d, h                                       ; $7b5e: $54
    nop                                           ; $7b5f: $00
    inc bc                                        ; $7b60: $03
    ldh a, [rTAC]                                 ; $7b61: $f0 $07
    rst $30                                       ; $7b63: $f7
    nop                                           ; $7b64: $00

jr_0ad_7b65:
    ldh a, [$f7]                                  ; $7b65: $f0 $f7
    inc bc                                        ; $7b67: $03
    jp nz, Jump_000_0609                          ; $7b68: $c2 $09 $06

    ld a, [hl-]                                   ; $7b6b: $3a
    inc a                                         ; $7b6c: $3c
    nop                                           ; $7b6d: $00
    ld e, b                                       ; $7b6e: $58
    jr nz, jr_0ad_7b8b                            ; $7b6f: $20 $1a

jr_0ad_7b71:
    jr jr_0ad_7b65                                ; $7b71: $18 $f2

    ld [bc], a                                    ; $7b73: $02
    ret nc                                        ; $7b74: $d0

    ld [hl+], a                                   ; $7b75: $22
    nop                                           ; $7b76: $00
    ld [hl], b                                    ; $7b77: $70
    sub d                                         ; $7b78: $92
    pop bc                                        ; $7b79: $c1
    add hl, de                                    ; $7b7a: $19
    jr nc, jr_0ad_7b00                            ; $7b7b: $30 $83

    ldh [rBGP], a                                 ; $7b7d: $e0 $47
    nop                                           ; $7b7f: $00
    add b                                         ; $7b80: $80
    rrca                                          ; $7b81: $0f
    nop                                           ; $7b82: $00
    add hl, sp                                    ; $7b83: $39
    ld [hl], e                                    ; $7b84: $73
    nop                                           ; $7b85: $00
    db $e3                                        ; $7b86: $e3
    ret                                           ; $7b87: $c9


    nop                                           ; $7b88: $00
    jr jr_0ad_7b4d                                ; $7b89: $18 $c2

jr_0ad_7b8b:
    ld a, [hl+]                                   ; $7b8b: $2a
    ld [hl-], a                                   ; $7b8c: $32
    ld h, c                                       ; $7b8d: $61
    ld b, [hl]                                    ; $7b8e: $46
    ld [$0040], sp                                ; $7b8f: $08 $40 $00
    inc e                                         ; $7b92: $1c
    ld [$0100], sp                                ; $7b93: $08 $00 $01
    ld a, $9c                                     ; $7b96: $3e $9c
    inc e                                         ; $7b98: $1c
    ld h, e                                       ; $7b99: $63
    nop                                           ; $7b9a: $00
    ccf                                           ; $7b9b: $3f
    cp $13                                        ; $7b9c: $fe $13
    jr nc, jr_0ad_7c1b                            ; $7b9e: $30 $7b

    ld a, b                                       ; $7ba0: $78
    ldh [rNR13], a                                ; $7ba1: $e0 $13
    nop                                           ; $7ba3: $00
    ldh a, [rNR10]                                ; $7ba4: $f0 $10
    jr jr_0ad_7b71                                ; $7ba6: $18 $c9

    inc c                                         ; $7ba8: $0c
    and h                                         ; $7ba9: $a4
    ld h, b                                       ; $7baa: $60
    ld b, l                                       ; $7bab: $45
    nop                                           ; $7bac: $00
    jr c, jr_0ad_7b5a                             ; $7bad: $38 $ab

    nop                                           ; $7baf: $00
    nop                                           ; $7bb0: $00
    ret nz                                        ; $7bb1: $c0

    nop                                           ; $7bb2: $00
    ldh [$80], a                                  ; $7bb3: $e0 $80
    nop                                           ; $7bb5: $00
    ld a, b                                       ; $7bb6: $78
    ret nz                                        ; $7bb7: $c0

    ld a, h                                       ; $7bb8: $7c
    ld h, b                                       ; $7bb9: $60
    ld e, $90                                     ; $7bba: $1e $90
    add a                                         ; $7bbc: $87
    ret z                                         ; $7bbd: $c8

    jr nz, jr_0ad_7c03                            ; $7bbe: $20 $43

    call nz, Call_0ad_50d0                        ; $7bc0: $c4 $d0 $50
    add b                                         ; $7bc3: $80
    ret nz                                        ; $7bc4: $c0

    nop                                           ; $7bc5: $00
    di                                            ; $7bc6: $f3
    db $f4                                        ; $7bc7: $f4
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    ld c, $1c                                     ; $7bcb: $0e $1c
    ld c, c                                       ; $7bcd: $49
    ld sp, $00c0                                  ; $7bce: $31 $c0 $00
    nop                                           ; $7bd1: $00
    sbc [hl]                                      ; $7bd2: $9e
    ld e, a                                       ; $7bd3: $5f
    and a                                         ; $7bd4: $a7
    ccf                                           ; $7bd5: $3f
    inc e                                         ; $7bd6: $1c
    and a                                         ; $7bd7: $a7
    adc d                                         ; $7bd8: $8a

Jump_0ad_7bd9:
    adc b                                         ; $7bd9: $88
    nop                                           ; $7bda: $00
    jr @+$04                                      ; $7bdb: $18 $02

    ld a, [$0303]                                 ; $7bdd: $fa $03 $03
    ld sp, hl                                     ; $7be0: $f9
    inc bc                                        ; $7be1: $03
    ld sp, hl                                     ; $7be2: $f9
    nop                                           ; $7be3: $00
    ld bc, $813a                                  ; $7be4: $01 $3a $81
    ret z                                         ; $7be7: $c8

    pop hl                                        ; $7be8: $e1
    ldh [rNR10], a                                ; $7be9: $e0 $10
    sub $00                                       ; $7beb: $d6 $00
    and l                                         ; $7bed: $a5
    sub h                                         ; $7bee: $94
    dec b                                         ; $7bef: $05
    inc [hl]                                      ; $7bf0: $34
    dec b                                         ; $7bf1: $05
    inc [hl]                                      ; $7bf2: $34
    ld bc, $0038                                  ; $7bf3: $01 $38 $00
    ld bc, $013c                                  ; $7bf6: $01 $3c $01
    dec a                                         ; $7bf9: $3d
    dec a                                         ; $7bfa: $3d
    ld bc, $41c0                                  ; $7bfb: $01 $c0 $41
    nop                                           ; $7bfe: $00
    ldh [rSVBK], a                                ; $7bff: $e0 $70
    add b                                         ; $7c01: $80
    ld h, b                                       ; $7c02: $60

jr_0ad_7c03:
    add a                                         ; $7c03: $87
    ld l, c                                       ; $7c04: $69
    pop de                                        ; $7c05: $d1
    ld e, [hl]                                    ; $7c06: $5e
    nop                                           ; $7c07: $00
    call c, $8a50                                 ; $7c08: $dc $50 $8a
    inc bc                                        ; $7c0b: $03
    sub b                                         ; $7c0c: $90
    ld bc, $c686                                  ; $7c0d: $01 $86 $c6
    nop                                           ; $7c10: $00
    inc l                                         ; $7c11: $2c
    ld c, b                                       ; $7c12: $48
    jr @+$3a                                      ; $7c13: $18 $38

    ld h, c                                       ; $7c15: $61
    add c                                         ; $7c16: $81
    cp $17                                        ; $7c17: $fe $17
    nop                                           ; $7c19: $00
    ld a, [bc]                                    ; $7c1a: $0a

jr_0ad_7c1b:
    dec de                                        ; $7c1b: $1b
    ld [hl-], a                                   ; $7c1c: $32
    or h                                          ; $7c1d: $b4
    inc [hl]                                      ; $7c1e: $34
    or b                                          ; $7c1f: $b0
    add c                                         ; $7c20: $81
    add hl, sp                                    ; $7c21: $39
    nop                                           ; $7c22: $00
    add b                                         ; $7c23: $80
    ld l, $11                                     ; $7c24: $2e $11
    add c                                         ; $7c26: $81
    ld b, $12                                     ; $7c27: $06 $12
    ld l, b                                       ; $7c29: $68

jr_0ad_7c2a:
    ld b, [hl]                                    ; $7c2a: $46
    nop                                           ; $7c2b: $00
    ld b, c                                       ; $7c2c: $41
    ld l, $90                                     ; $7c2d: $2e $90
    ld e, a                                       ; $7c2f: $5f
    ret c                                         ; $7c30: $d8

    rra                                           ; $7c31: $1f
    ldh [$80], a                                  ; $7c32: $e0 $80
    nop                                           ; $7c34: $00
    ld h, b                                       ; $7c35: $60
    ld hl, sp+$73                                 ; $7c36: $f8 $73
    rrca                                          ; $7c38: $0f
    sub c                                         ; $7c39: $91
    adc a                                         ; $7c3a: $8f
    rrca                                          ; $7c3b: $0f
    ld [c], a                                     ; $7c3c: $e2
    nop                                           ; $7c3d: $00
    rlca                                          ; $7c3e: $07
    ld [hl], d                                    ; $7c3f: $72
    rlca                                          ; $7c40: $07
    ld [hl], e                                    ; $7c41: $73
    rlca                                          ; $7c42: $07
    ld [hl], d                                    ; $7c43: $72
    ccf                                           ; $7c44: $3f
    jr nz, jr_0ad_7c47                            ; $7c45: $20 $00

jr_0ad_7c47:
    sbc a                                         ; $7c47: $9f
    and b                                         ; $7c48: $a0
    sbc a                                         ; $7c49: $9f
    and b                                         ; $7c4a: $a0

jr_0ad_7c4b:
    ccf                                           ; $7c4b: $3f
    jr c, jr_0ad_7c8a                             ; $7c4c: $38 $3c

    inc sp                                        ; $7c4e: $33
    nop                                           ; $7c4f: $00
    cpl                                           ; $7c50: $2f
    jr c, jr_0ad_7c62                             ; $7c51: $38 $0f

    jr jr_0ad_7c4b                                ; $7c53: $18 $f6

    add sp, $31                                   ; $7c55: $e8 $31
    ld hl, sp+$00                                 ; $7c57: $f8 $00
    pop hl                                        ; $7c59: $e1
    dec e                                         ; $7c5a: $1d
    pop af                                        ; $7c5b: $f1
    dec c                                         ; $7c5c: $0d
    ret nz                                        ; $7c5d: $c0

    inc a                                         ; $7c5e: $3c
    ldh a, [$cc]                                  ; $7c5f: $f0 $cc
    nop                                           ; $7c61: $00

jr_0ad_7c62:
    db $f4                                        ; $7c62: $f4
    inc c                                         ; $7c63: $0c
    db $fc                                        ; $7c64: $fc
    nop                                           ; $7c65: $00
    inc a                                         ; $7c66: $3c
    sbc b                                         ; $7c67: $98
    inc e                                         ; $7c68: $1c
    ld b, b                                       ; $7c69: $40
    nop                                           ; $7c6a: $00
    ld [$0264], sp                                ; $7c6b: $08 $64 $02
    ld a, [c]                                     ; $7c6e: $f2
    or l                                          ; $7c6f: $b5
    ld [hl-], a                                   ; $7c70: $32
    adc e                                         ; $7c71: $8b
    add h                                         ; $7c72: $84
    nop                                           ; $7c73: $00
    inc [hl]                                      ; $7c74: $34
    and e                                         ; $7c75: $a3
    jr c, jr_0ad_7c2a                             ; $7c76: $38 $b2

    and b                                         ; $7c78: $a0
    sbc h                                         ; $7c79: $9c
    inc e                                         ; $7c7a: $1c
    call nz, $5f00                                ; $7c7b: $c4 $00 $5f
    ret nz                                        ; $7c7e: $c0

    pop de                                        ; $7c7f: $d1
    adc [hl]                                      ; $7c80: $8e
    ld h, b                                       ; $7c81: $60
    ld c, [hl]                                    ; $7c82: $4e
    jr z, jr_0ad_7c8c                             ; $7c83: $28 $07

    nop                                           ; $7c85: $00
    jr nc, jr_0ad_7c9f                            ; $7c86: $30 $17

    inc h                                         ; $7c88: $24
    scf                                           ; $7c89: $37

jr_0ad_7c8a:
    sbc b                                         ; $7c8a: $98
    add b                                         ; $7c8b: $80

jr_0ad_7c8c:
    ld sp, $0070                                  ; $7c8c: $31 $70 $00
    ret                                           ; $7c8f: $c9


    ld a, [$cb33]                                 ; $7c90: $fa $33 $cb
    ld a, b                                       ; $7c93: $78
    nop                                           ; $7c94: $00
    ld l, b                                       ; $7c95: $68
    ld h, d                                       ; $7c96: $62
    nop                                           ; $7c97: $00
    halt                                          ; $7c98: $76
    add b                                         ; $7c99: $80
    ldh [$ee], a                                  ; $7c9a: $e0 $ee
    ld h, h                                       ; $7c9c: $64
    ret z                                         ; $7c9d: $c8

    inc e                                         ; $7c9e: $1c

jr_0ad_7c9f:
    sbc e                                         ; $7c9f: $9b
    nop                                           ; $7ca0: $00
    ld l, [hl]                                    ; $7ca1: $6e
    ld l, c                                       ; $7ca2: $69
    ld c, h                                       ; $7ca3: $4c
    dec bc                                        ; $7ca4: $0b
    adc h                                         ; $7ca5: $8c
    adc e                                         ; $7ca6: $8b
    rlca                                          ; $7ca7: $07
    ld hl, $0700                                  ; $7ca8: $21 $00 $07
    ld h, c                                       ; $7cab: $61
    rlca                                          ; $7cac: $07
    ld h, e                                       ; $7cad: $63
    ld b, $e2                                     ; $7cae: $06 $e2
    ld b, $72                                     ; $7cb0: $06 $72
    nop                                           ; $7cb2: $00
    ld c, $62                                     ; $7cb3: $0e $62
    rrca                                          ; $7cb5: $0f
    ld h, c                                       ; $7cb6: $61
    rrca                                          ; $7cb7: $0f
    ld h, e                                       ; $7cb8: $63
    inc e                                         ; $7cb9: $1c
    ld d, b                                       ; $7cba: $50
    nop                                           ; $7cbb: $00
    inc e                                         ; $7cbc: $1c
    ld d, b                                       ; $7cbd: $50
    rra                                           ; $7cbe: $1f
    ld b, a                                       ; $7cbf: $47
    rra                                           ; $7cc0: $1f
    rst $00                                       ; $7cc1: $c7
    db $e4                                        ; $7cc2: $e4
    add sp, $00                                   ; $7cc3: $e8 $00
    inc c                                         ; $7cc5: $0c
    db $f4                                        ; $7cc6: $f4
    ld b, $f4                                     ; $7cc7: $06 $f4
    push af                                       ; $7cc9: $f5
    ld a, [c]                                     ; $7cca: $f2
    ld hl, sp-$05                                 ; $7ccb: $f8 $fb
    nop                                           ; $7ccd: $00
    ld a, [$f9f9]                                 ; $7cce: $fa $f9 $f9
    ld hl, sp-$04                                 ; $7cd1: $f8 $fc
    cp $00                                        ; $7cd3: $fe $00
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    inc a                                         ; $7cd7: $3c
    add b                                         ; $7cd8: $80
    sbc [hl]                                      ; $7cd9: $9e
    add b                                         ; $7cda: $80
    ld e, $c0                                     ; $7cdb: $1e $c0
    adc $c0                                       ; $7cdd: $ce $c0

jr_0ad_7cdf:
    nop                                           ; $7cdf: $00
    ret nz                                        ; $7ce0: $c0

jr_0ad_7ce1:
    ld c, $e0                                     ; $7ce1: $0e $e0
    add l                                         ; $7ce3: $85
    pop bc                                        ; $7ce4: $c1
    dec [hl]                                      ; $7ce5: $35
    or b                                          ; $7ce6: $b0
    adc [hl]                                      ; $7ce7: $8e
    nop                                           ; $7ce8: $00
    rrca                                          ; $7ce9: $0f
    inc sp                                        ; $7cea: $33
    inc bc                                        ; $7ceb: $03
    dec e                                         ; $7cec: $1d
    adc [hl]                                      ; $7ced: $8e
    add c                                         ; $7cee: $81
    add a                                         ; $7cef: $87
    add h                                         ; $7cf0: $84
    nop                                           ; $7cf1: $00
    add hl, hl                                    ; $7cf2: $29
    ld de, $3c00                                  ; $7cf3: $11 $00 $3c
    jr nz, jr_0ad_7d15                            ; $7cf6: $20 $1d

    dec e                                         ; $7cf8: $1d
    ld d, $00                                     ; $7cf9: $16 $00
    ld a, [hl+]                                   ; $7cfb: $2a
    ld hl, $a1b4                                  ; $7cfc: $21 $b4 $a1
    ld c, c                                       ; $7cff: $49
    pop de                                        ; $7d00: $d1
    ld b, h                                       ; $7d01: $44
    ret z                                         ; $7d02: $c8

    nop                                           ; $7d03: $00
    xor h                                         ; $7d04: $ac
    ld h, [hl]                                    ; $7d05: $66
    ld d, e                                       ; $7d06: $53
    scf                                           ; $7d07: $37
    ld [hl-], a                                   ; $7d08: $32
    dec de                                        ; $7d09: $1b
    dec b                                         ; $7d0a: $05
    nop                                           ; $7d0b: $00
    nop                                           ; $7d0c: $00
    add c                                         ; $7d0d: $81
    sub b                                         ; $7d0e: $90
    call c, $ce55                                 ; $7d0f: $dc $55 $ce
    ld c, d                                       ; $7d12: $4a
    ld b, h                                       ; $7d13: $44
    add [hl]                                      ; $7d14: $86

jr_0ad_7d15:
    nop                                           ; $7d15: $00
    inc sp                                        ; $7d16: $33
    ld b, d                                       ; $7d17: $42
    ld c, c                                       ; $7d18: $49
    ld [hl], b                                    ; $7d19: $70
    ld [bc], a                                    ; $7d1a: $02
    ld a, [$e20e]                                 ; $7d1b: $fa $0e $e2
    add b                                         ; $7d1e: $80
    ld [bc], a                                    ; $7d1f: $02
    nop                                           ; $7d20: $00
    add $0c                                       ; $7d21: $c6 $0c
    push bc                                       ; $7d23: $c5
    ld b, l                                       ; $7d24: $45
    inc e                                         ; $7d25: $1c
    ld c, l                                       ; $7d26: $4d
    inc e                                         ; $7d27: $1c
    nop                                           ; $7d28: $00
    ld a, [bc]                                    ; $7d29: $0a
    jr c, @+$1c                                   ; $7d2a: $38 $1a

    cp b                                          ; $7d2c: $b8
    jr c, jr_0ad_7cdf                             ; $7d2d: $38 $b0

    jr c, jr_0ad_7ce1                             ; $7d2f: $38 $b0

    nop                                           ; $7d31: $00
    jr nc, @-$7e                                  ; $7d32: $30 $80

    ld [hl], b                                    ; $7d34: $70
    ld b, b                                       ; $7d35: $40
    ccf                                           ; $7d36: $3f
    ld c, a                                       ; $7d37: $4f
    ccf                                           ; $7d38: $3f
    ld c, a                                       ; $7d39: $4f
    nop                                           ; $7d3a: $00
    ld h, b                                       ; $7d3b: $60
    ret nz                                        ; $7d3c: $c0

    ld h, b                                       ; $7d3d: $60
    ret nz                                        ; $7d3e: $c0

    cp $fd                                        ; $7d3f: $fe $fd
    inc bc                                        ; $7d41: $03
    inc bc                                        ; $7d42: $03
    ld [bc], a                                    ; $7d43: $02
    ld bc, $0102                                  ; $7d44: $01 $02 $01
    nop                                           ; $7d47: $00
    nop                                           ; $7d48: $00
    ld bc, $0804                                  ; $7d49: $01 $04 $08
    nop                                           ; $7d4c: $00
    nop                                           ; $7d4d: $00
    nop                                           ; $7d4e: $00
    ld h, c                                       ; $7d4f: $61
    add hl, de                                    ; $7d50: $19
    add hl, de                                    ; $7d51: $19
    and c                                         ; $7d52: $a1
    xor b                                         ; $7d53: $a8
    ld de, $0092                                  ; $7d54: $11 $92 $00
    ld b, $87                                     ; $7d57: $06 $87
    cpl                                           ; $7d59: $2f
    rrca                                          ; $7d5a: $0f
    ret nz                                        ; $7d5b: $c0

    adc [hl]                                      ; $7d5c: $8e
    pop de                                        ; $7d5d: $d1
    add $00                                       ; $7d5e: $c6 $00
    sbc [hl]                                      ; $7d60: $9e
    inc hl                                        ; $7d61: $23
    ld e, $1c                                     ; $7d62: $1e $1c
    scf                                           ; $7d64: $37
    inc e                                         ; $7d65: $1c
    nop                                           ; $7d66: $00
    jr jr_0ad_7d69                                ; $7d67: $18 $00

jr_0ad_7d69:
    add hl, de                                    ; $7d69: $19
    ld e, b                                       ; $7d6a: $58
    inc bc                                        ; $7d6b: $03
    inc bc                                        ; $7d6c: $03
    nop                                           ; $7d6d: $00
    dec h                                         ; $7d6e: $25
    inc a                                         ; $7d6f: $3c
    ld hl, sp+$00                                 ; $7d70: $f8 $00
    ld a, [c]                                     ; $7d72: $f2
    sbc c                                         ; $7d73: $99
    xor l                                         ; $7d74: $ad
    inc c                                         ; $7d75: $0c
    dec d                                         ; $7d76: $15
    add sp, $0e                                   ; $7d77: $e8 $0e
    push af                                       ; $7d79: $f5
    nop                                           ; $7d7a: $00
    rlca                                          ; $7d7b: $07
    ld sp, hl                                     ; $7d7c: $f9
    ld bc, $01fc                                  ; $7d7d: $01 $fc $01
    or $fe                                        ; $7d80: $f6 $fe
    rrca                                          ; $7d82: $0f

jr_0ad_7d83:
    nop                                           ; $7d83: $00
    ldh a, [$c8]                                  ; $7d84: $f0 $c8
    db $fc                                        ; $7d86: $fc
    and c                                         ; $7d87: $a1
    ret c                                         ; $7d88: $d8

    ld h, l                                       ; $7d89: $65
    ld h, d                                       ; $7d8a: $62
    ld c, d                                       ; $7d8b: $4a
    nop                                           ; $7d8c: $00
    inc b                                         ; $7d8d: $04
    ld l, h                                       ; $7d8e: $6c
    ld bc, $83a9                                  ; $7d8f: $01 $a9 $83
    ld b, h                                       ; $7d92: $44
    add d                                         ; $7d93: $82
    add hl, hl                                    ; $7d94: $29
    nop                                           ; $7d95: $00
    ld b, l                                       ; $7d96: $45
    ld d, $70                                     ; $7d97: $16 $70
    inc l                                         ; $7d99: $2c
    ld h, c                                       ; $7d9a: $61
    ld b, h                                       ; $7d9b: $44
    ld b, c                                       ; $7d9c: $41
    ld d, b                                       ; $7d9d: $50
    nop                                           ; $7d9e: $00
    pop de                                        ; $7d9f: $d1
    xor b                                         ; $7da0: $a8
    adc c                                         ; $7da1: $89
    ld h, b                                       ; $7da2: $60
    inc bc                                        ; $7da3: $03
    add hl, bc                                    ; $7da4: $09
    ld [$000b], a                                 ; $7da5: $ea $0b $00
    add sp, $60                                   ; $7da8: $e8 $60
    ldh [rLCDC], a                                ; $7daa: $e0 $40
    add b                                         ; $7dac: $80
    ld b, b                                       ; $7dad: $40
    ret nz                                        ; $7dae: $c0

    add b                                         ; $7daf: $80
    jr c, jr_0ad_7db2                             ; $7db0: $38 $00

jr_0ad_7db2:
    add b                                         ; $7db2: $80
    cp [hl]                                       ; $7db3: $be
    ld bc, $0004                                  ; $7db4: $01 $04 $00
    sbc a                                         ; $7db7: $9f
    ld [hl], d                                    ; $7db8: $72
    db $e4                                        ; $7db9: $e4
    call z, Call_000_0009                         ; $7dba: $cc $09 $00
    push hl                                       ; $7dbd: $e5
    dec c                                         ; $7dbe: $0d
    ld h, c                                       ; $7dbf: $61
    ld [hl], c                                    ; $7dc0: $71
    dec d                                         ; $7dc1: $15
    ld [hl], b                                    ; $7dc2: $70
    nop                                           ; $7dc3: $00
    ld a, b                                       ; $7dc4: $78
    nop                                           ; $7dc5: $00
    rra                                           ; $7dc6: $1f
    ld a, $07                                     ; $7dc7: $3e $07
    add hl, sp                                    ; $7dc9: $39
    rlca                                          ; $7dca: $07
    xor d                                         ; $7dcb: $aa
    pop bc                                        ; $7dcc: $c1
    ld a, [de]                                    ; $7dcd: $1a
    ld [$0189], sp                                ; $7dce: $08 $89 $01
    db $fc                                        ; $7dd1: $fc
    call z, Call_000_02a8                         ; $7dd2: $cc $a8 $02
    add b                                         ; $7dd5: $80
    ld [hl], b                                    ; $7dd6: $70
    ldh a, [rP1]                                  ; $7dd7: $f0 $00
    rst $28                                       ; $7dd9: $ef
    rra                                           ; $7dda: $1f
    ld hl, sp+$03                                 ; $7ddb: $f8 $03
    ld a, h                                       ; $7ddd: $7c
    ld a, a                                       ; $7dde: $7f
    inc bc                                        ; $7ddf: $03
    ld e, $00                                     ; $7de0: $1e $00
    ld h, c                                       ; $7de2: $61
    ld a, l                                       ; $7de3: $7d
    ld b, e                                       ; $7de4: $43
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    db $dd                                        ; $7de7: $dd
    ld a, $63                                     ; $7de8: $3e $63
    nop                                           ; $7dea: $00
    and d                                         ; $7deb: $a2
    ld h, e                                       ; $7dec: $63
    and d                                         ; $7ded: $a2
    jr c, jr_0ad_7d83                             ; $7dee: $38 $93

    nop                                           ; $7df0: $00
    jp RST_00                                     ; $7df1: $c3 $00 $00


    sbc h                                         ; $7df4: $9c
    ld a, [hl]                                    ; $7df5: $7e
    ld b, b                                       ; $7df6: $40
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    ld sp, hl                                     ; $7df9: $f9
    rlca                                          ; $7dfa: $07
    inc a                                         ; $7dfb: $3c
    nop                                           ; $7dfc: $00
    dec sp                                        ; $7dfd: $3b
    inc a                                         ; $7dfe: $3c
    dec sp                                        ; $7dff: $3b
    rlca                                          ; $7e00: $07
    ld de, $1217                                  ; $7e01: $11 $17 $12
    ld b, b                                       ; $7e04: $40
    nop                                           ; $7e05: $00
    halt                                          ; $7e06: $76
    ld [bc], a                                    ; $7e07: $02
    ld l, h                                       ; $7e08: $6c
    ld b, $08                                     ; $7e09: $06 $08
    ld l, [hl]                                    ; $7e0b: $6e
    ldh a, [$3c]                                  ; $7e0c: $f0 $3c
    ret nz                                        ; $7e0e: $c0

Jump_0ad_7e0f:
    ld [bc], a                                    ; $7e0f: $02
    nop                                           ; $7e10: $00
    nop                                           ; $7e11: $00
    ld l, e                                       ; $7e12: $6b
    ldh a, [rP1]                                  ; $7e13: $f0 $00
    add [hl]                                      ; $7e15: $86
    nop                                           ; $7e16: $00
    ld d, b                                       ; $7e17: $50
    nop                                           ; $7e18: $00
    ld bc, $8080                                  ; $7e19: $01 $80 $80

jr_0ad_7e1c:
    ld [bc], a                                    ; $7e1c: $02
    ld [$c040], sp                                ; $7e1d: $08 $40 $c0
    nop                                           ; $7e20: $00
    ret nz                                        ; $7e21: $c0

    db $10                                        ; $7e22: $10
    ld hl, $8061                                  ; $7e23: $21 $61 $80

jr_0ad_7e26:
    jr nz, jr_0ad_7e30                            ; $7e26: $20 $08

    ld h, b                                       ; $7e28: $60
    db $10                                        ; $7e29: $10
    ld h, b                                       ; $7e2a: $60
    nop                                           ; $7e2b: $00
    nop                                           ; $7e2c: $00
    ld h, b                                       ; $7e2d: $60
    add b                                         ; $7e2e: $80
    and b                                         ; $7e2f: $a0

jr_0ad_7e30:
    ld d, c                                       ; $7e30: $51
    and b                                         ; $7e31: $a0
    db $10                                        ; $7e32: $10
    db $10                                        ; $7e33: $10
    and b                                         ; $7e34: $a0
    add b                                         ; $7e35: $80
    jr nc, @+$22                                  ; $7e36: $30 $20

    inc b                                         ; $7e38: $04
    inc b                                         ; $7e39: $04
    nop                                           ; $7e3a: $00
    db $fc                                        ; $7e3b: $fc
    ld bc, $0440                                  ; $7e3c: $01 $40 $04
    jr nz, @+$42                                  ; $7e3f: $20 $40

    db $10                                        ; $7e41: $10
    ld b, b                                       ; $7e42: $40
    jr c, jr_0ad_7e26                             ; $7e43: $38 $e1

    ld [de], a                                    ; $7e45: $12
    ld [hl], b                                    ; $7e46: $70
    add hl, bc                                    ; $7e47: $09
    ld e, b                                       ; $7e48: $58
    ld b, c                                       ; $7e49: $41
    inc h                                         ; $7e4a: $24
    ld d, b                                       ; $7e4b: $50
    jr c, jr_0ad_7e1c                             ; $7e4c: $38 $ce

    ld sp, $0a84                                  ; $7e4e: $31 $84 $0a
    add h                                         ; $7e51: $84
    ld e, a                                       ; $7e52: $5f
    ld b, b                                       ; $7e53: $40
    ld [$4830], sp                                ; $7e54: $08 $30 $48
    stop                                          ; $7e57: $10 $00
    cpl                                           ; $7e59: $2f
    jr jr_0ad_7e63                                ; $7e5a: $18 $07

    ld [$0003], sp                                ; $7e5c: $08 $03 $00
    inc b                                         ; $7e5f: $04
    dec b                                         ; $7e60: $05
    ld [bc], a                                    ; $7e61: $02
    inc b                                         ; $7e62: $04

jr_0ad_7e63:
    ld bc, $0804                                  ; $7e63: $01 $04 $08
    inc b                                         ; $7e66: $04
    ld b, b                                       ; $7e67: $40
    ld [$0003], sp                                ; $7e68: $08 $03 $00
    inc b                                         ; $7e6b: $04
    ld [$0800], sp                                ; $7e6c: $08 $00 $08
    db $10                                        ; $7e6f: $10
    jr @-$7e                                      ; $7e70: $18 $80

    ld a, [hl-]                                   ; $7e72: $3a
    jr nz, jr_0ad_7ee6                            ; $7e73: $20 $71

    ld [bc], a                                    ; $7e75: $02
    ld [hl-], a                                   ; $7e76: $32
    add hl, bc                                    ; $7e77: $09
    ld a, [de]                                    ; $7e78: $1a
    inc h                                         ; $7e79: $24
    inc e                                         ; $7e7a: $1c
    nop                                           ; $7e7b: $00
    ld [bc], a                                    ; $7e7c: $02
    inc c                                         ; $7e7d: $0c
    db $10                                        ; $7e7e: $10
    ld [$0004], sp                                ; $7e7f: $08 $04 $00
    ld [$1000], sp                                ; $7e82: $08 $00 $10
    nop                                           ; $7e85: $00
    db $10                                        ; $7e86: $10
    jr nz, @+$38                                  ; $7e87: $20 $36

    ld [$0010], sp                                ; $7e89: $08 $10 $00
    jr jr_0ad_7eaf                                ; $7e8c: $18 $21

    add b                                         ; $7e8e: $80
    xor d                                         ; $7e8f: $aa
    jr jr_0ad_7ee2                                ; $7e90: $18 $50

    jr nz, jr_0ad_7f04                            ; $7e92: $20 $70

    nop                                           ; $7e94: $00
    ld b, b                                       ; $7e95: $40
    db $10                                        ; $7e96: $10
    ld b, b                                       ; $7e97: $40
    stop                                          ; $7e98: $10 $00
    ld hl, sp+$05                                 ; $7e9a: $f8 $05
    cp d                                          ; $7e9c: $ba
    jr @+$4e                                      ; $7e9d: $18 $4c

    ld [de], a                                    ; $7e9f: $12
    ld b, [hl]                                    ; $7ea0: $46
    add hl, bc                                    ; $7ea1: $09
    dec b                                         ; $7ea2: $05
    ld b, e                                       ; $7ea3: $43
    inc b                                         ; $7ea4: $04
    ld b, c                                       ; $7ea5: $41
    add d                                         ; $7ea6: $82
    ret nz                                        ; $7ea7: $c0

    jr nz, jr_0ad_7eca                            ; $7ea8: $20 $20

jr_0ad_7eaa:
    add h                                         ; $7eaa: $84
    ld [bc], a                                    ; $7eab: $02
    ld [$0207], sp                                ; $7eac: $08 $07 $02

jr_0ad_7eaf:
    add [hl]                                      ; $7eaf: $86
    ld bc, $0483                                  ; $7eb0: $01 $83 $04
    rst $00                                       ; $7eb3: $c7
    nop                                           ; $7eb4: $00
    db $dd                                        ; $7eb5: $dd
    nop                                           ; $7eb6: $00
    ld a, $10                                     ; $7eb7: $3e $10
    inc b                                         ; $7eb9: $04
    jr nz, jr_0ad_7edc                            ; $7eba: $20 $20

    ld d, b                                       ; $7ebc: $50
    ret nz                                        ; $7ebd: $c0

    jr nz, jr_0ad_7eaa                            ; $7ebe: $20 $ea

    jr @-$0e                                      ; $7ec0: $18 $f0

    nop                                           ; $7ec2: $00
    adc h                                         ; $7ec3: $8c
    nop                                           ; $7ec4: $00
    ld d, b                                       ; $7ec5: $50
    nop                                           ; $7ec6: $00
    ld bc, $8080                                  ; $7ec7: $01 $80 $80

jr_0ad_7eca:
    ld [bc], a                                    ; $7eca: $02
    ld [$c040], sp                                ; $7ecb: $08 $40 $c0
    nop                                           ; $7ece: $00
    ret nz                                        ; $7ecf: $c0

    db $10                                        ; $7ed0: $10
    ld hl, $8061                                  ; $7ed1: $21 $61 $80

jr_0ad_7ed4:
    jr nz, jr_0ad_7ede                            ; $7ed4: $20 $08

    ld h, b                                       ; $7ed6: $60
    db $10                                        ; $7ed7: $10
    ld h, b                                       ; $7ed8: $60
    nop                                           ; $7ed9: $00
    nop                                           ; $7eda: $00
    ld h, b                                       ; $7edb: $60

jr_0ad_7edc:
    add b                                         ; $7edc: $80
    and b                                         ; $7edd: $a0

jr_0ad_7ede:
    ld d, c                                       ; $7ede: $51
    and b                                         ; $7edf: $a0
    db $10                                        ; $7ee0: $10
    db $10                                        ; $7ee1: $10

jr_0ad_7ee2:
    and b                                         ; $7ee2: $a0
    add b                                         ; $7ee3: $80
    jr nc, jr_0ad_7f06                            ; $7ee4: $30 $20

jr_0ad_7ee6:
    inc b                                         ; $7ee6: $04
    inc b                                         ; $7ee7: $04
    nop                                           ; $7ee8: $00
    db $fc                                        ; $7ee9: $fc
    ld bc, $0440                                  ; $7eea: $01 $40 $04
    jr nz, jr_0ad_7f2f                            ; $7eed: $20 $40

    db $10                                        ; $7eef: $10
    ld b, b                                       ; $7ef0: $40
    jr c, jr_0ad_7ed4                             ; $7ef1: $38 $e1

    ld [de], a                                    ; $7ef3: $12
    ld [hl], b                                    ; $7ef4: $70
    add hl, bc                                    ; $7ef5: $09
    ld e, b                                       ; $7ef6: $58
    ld d, b                                       ; $7ef7: $50
    inc h                                         ; $7ef8: $24
    ld d, b                                       ; $7ef9: $50
    ld [$5540], sp                                ; $7efa: $08 $40 $55
    db $10                                        ; $7efd: $10
    jr nc, jr_0ad_7f48                            ; $7efe: $30 $48

    stop                                          ; $7f00: $10 $00
    and b                                         ; $7f02: $a0
    rra                                           ; $7f03: $1f

jr_0ad_7f04:
    jr jr_0ad_7f08                                ; $7f04: $18 $02

jr_0ad_7f06:
    ld h, l                                       ; $7f06: $65
    db $10                                        ; $7f07: $10

jr_0ad_7f08:
    adc $31                                       ; $7f08: $ce $31
    add h                                         ; $7f0a: $84
    ld a, [bc]                                    ; $7f0b: $0a
    add h                                         ; $7f0c: $84
    add b                                         ; $7f0d: $80
    ld l, a                                       ; $7f0e: $6f
    db $10                                        ; $7f0f: $10
    rlca                                          ; $7f10: $07
    ld [$0403], sp                                ; $7f11: $08 $03 $04
    dec b                                         ; $7f14: $05
    ld [bc], a                                    ; $7f15: $02
    inc b                                         ; $7f16: $04
    inc b                                         ; $7f17: $04
    ld bc, $0804                                  ; $7f18: $01 $04 $08
    inc b                                         ; $7f1b: $04
    ld [$0003], sp                                ; $7f1c: $08 $03 $00
    inc b                                         ; $7f1f: $04
    ld [$0008], sp                                ; $7f20: $08 $08 $00
    ld [$1810], sp                                ; $7f23: $08 $10 $18
    ld a, [hl-]                                   ; $7f26: $3a
    stop                                          ; $7f27: $10 $00
    nop                                           ; $7f29: $00
    ld [hl], c                                    ; $7f2a: $71
    nop                                           ; $7f2b: $00
    ld [bc], a                                    ; $7f2c: $02
    ld [hl-], a                                   ; $7f2d: $32
    add hl, bc                                    ; $7f2e: $09

jr_0ad_7f2f:
    ld a, [de]                                    ; $7f2f: $1a
    inc h                                         ; $7f30: $24
    inc e                                         ; $7f31: $1c
    ld [bc], a                                    ; $7f32: $02
    inc c                                         ; $7f33: $0c
    nop                                           ; $7f34: $00
    db $10                                        ; $7f35: $10
    ld [$0004], sp                                ; $7f36: $08 $04 $00
    ld [$0000], sp                                ; $7f39: $08 $00 $00
    db $10                                        ; $7f3c: $10
    ld b, d                                       ; $7f3d: $42
    jr nz, @+$48                                  ; $7f3e: $20 $46

    ld [$0010], sp                                ; $7f40: $08 $10 $00
    jr jr_0ad_7f66                                ; $7f43: $18 $21

    xor d                                         ; $7f45: $aa
    jr jr_0ad_7f98                                ; $7f46: $18 $50

jr_0ad_7f48:
    nop                                           ; $7f48: $00
    jr nz, @+$72                                  ; $7f49: $20 $70

    nop                                           ; $7f4b: $00
    ld b, b                                       ; $7f4c: $40
    db $10                                        ; $7f4d: $10
    ld b, b                                       ; $7f4e: $40
    nop                                           ; $7f4f: $00
    ld hl, sp+$40                                 ; $7f50: $f8 $40
    dec b                                         ; $7f52: $05
    cp d                                          ; $7f53: $ba
    jr jr_0ad_7fa2                                ; $7f54: $18 $4c

    ld [de], a                                    ; $7f56: $12
    ld b, [hl]                                    ; $7f57: $46
    add hl, bc                                    ; $7f58: $09
    ld b, e                                       ; $7f59: $43
    inc b                                         ; $7f5a: $04
    inc d                                         ; $7f5b: $14
    ld b, c                                       ; $7f5c: $41
    add d                                         ; $7f5d: $82
    ret nz                                        ; $7f5e: $c0

    jr nz, jr_0ad_7f81                            ; $7f5f: $20 $20

jr_0ad_7f61:
    add h                                         ; $7f61: $84
    ld [bc], a                                    ; $7f62: $02
    ld [$8602], sp                                ; $7f63: $08 $02 $86

jr_0ad_7f66:
    inc e                                         ; $7f66: $1c
    ld bc, $0483                                  ; $7f67: $01 $83 $04
    rst $00                                       ; $7f6a: $c7
    nop                                           ; $7f6b: $00
    db $dd                                        ; $7f6c: $dd
    nop                                           ; $7f6d: $00
    ld a, $10                                     ; $7f6e: $3e $10
    jr nz, jr_0ad_7f92                            ; $7f70: $20 $20

    db $10                                        ; $7f72: $10
    ld d, b                                       ; $7f73: $50
    ret nz                                        ; $7f74: $c0

    jr nz, jr_0ad_7f61                            ; $7f75: $20 $ea

    jr @-$6e                                      ; $7f77: $18 $90

    ld bc, $0044                                  ; $7f79: $01 $44 $00
    ld e, d                                       ; $7f7c: $5a

jr_0ad_7f7d:
    nop                                           ; $7f7d: $00
    ld bc, $1e60                                  ; $7f7e: $01 $60 $1e

jr_0ad_7f81:
    ld [bc], a                                    ; $7f81: $02
    ld d, b                                       ; $7f82: $50
    ld e, $38                                     ; $7f83: $1e $38
    ldh a, [rSC]                                  ; $7f85: $f0 $02
    stop                                          ; $7f87: $10 $00
    jr z, jr_0ad_7f8b                             ; $7f89: $28 $00

jr_0ad_7f8b:
    add b                                         ; $7f8b: $80
    ld [bc], a                                    ; $7f8c: $02
    jr nz, @+$01                                  ; $7f8d: $20 $ff

    ld [bc], a                                    ; $7f8f: $02
    stop                                          ; $7f90: $10 $00

jr_0ad_7f92:
    nop                                           ; $7f92: $00
    rrca                                          ; $7f93: $0f

jr_0ad_7f94:
    or l                                          ; $7f94: $b5
    ld [bc], a                                    ; $7f95: $02
    ld h, b                                       ; $7f96: $60
    add e                                         ; $7f97: $83

jr_0ad_7f98:
    ld [bc], a                                    ; $7f98: $02
    jr nc, jr_0ad_7fbd                            ; $7f99: $30 $22

    jr jr_0ad_7f7d                                ; $7f9b: $18 $e0

    ld [bc], a                                    ; $7f9d: $02
    ld h, b                                       ; $7f9e: $60
    rra                                           ; $7f9f: $1f
    ld [bc], a                                    ; $7fa0: $02
    db $10                                        ; $7fa1: $10

jr_0ad_7fa2:
    db $dd                                        ; $7fa2: $dd
    ld h, [hl]                                    ; $7fa3: $66
    jr jr_0ad_7fb2                                ; $7fa4: $18 $0c

    ld [$02fe], sp                                ; $7fa6: $08 $fe $02
    db $10                                        ; $7fa9: $10
    add [hl]                                      ; $7faa: $86
    jr jr_0ad_7fb9                                ; $7fab: $18 $0c

jr_0ad_7fad:
    ld [$027f], sp                                ; $7fad: $08 $7f $02
    db $10                                        ; $7fb0: $10
    ld d, h                                       ; $7fb1: $54

jr_0ad_7fb2:
    ld a, h                                       ; $7fb2: $7c
    ld [bc], a                                    ; $7fb3: $02
    jr nz, @+$81                                  ; $7fb4: $20 $7f

    ld l, b                                       ; $7fb6: $68
    jr nz, jr_0ad_7fc0                            ; $7fb7: $20 $07

jr_0ad_7fb9:
    ld [bc], a                                    ; $7fb9: $02
    jr nz, @+$01                                  ; $7fba: $20 $ff

    nop                                           ; $7fbc: $00

jr_0ad_7fbd:
    ld a, a                                       ; $7fbd: $7f

jr_0ad_7fbe:
    ret nz                                        ; $7fbe: $c0

    ld [bc], a                                    ; $7fbf: $02

jr_0ad_7fc0:
    ld h, b                                       ; $7fc0: $60
    ld b, b                                       ; $7fc1: $40
    ld c, b                                       ; $7fc2: $48
    call z, $9808                                 ; $7fc3: $cc $08 $98
    jr @-$38                                      ; $7fc6: $18 $c6

    jr c, @+$72                                   ; $7fc8: $38 $70

    jr jr_0ad_7f94                                ; $7fca: $18 $c8

    ld a, b                                       ; $7fcc: $78
    sbc $30                                       ; $7fcd: $de $30
    ld e, b                                       ; $7fcf: $58
    sub $28                                       ; $7fd0: $d6 $28

jr_0ad_7fd2:
    add b                                         ; $7fd2: $80
    ld h, b                                       ; $7fd3: $60
    ld h, b                                       ; $7fd4: $60
    ldh [rBCPS], a                                ; $7fd5: $e0 $68
    ld h, b                                       ; $7fd7: $60
    jr jr_0ad_7fbe                                ; $7fd8: $18 $e4

    jr c, jr_0ad_7fdc                             ; $7fda: $38 $00

jr_0ad_7fdc:
    cp a                                          ; $7fdc: $bf
    ldh [$60], a                                  ; $7fdd: $e0 $60
    nop                                           ; $7fdf: $00
    call c, Call_0ad_7850                         ; $7fe0: $dc $50 $78
    ld [$48dc], sp                                ; $7fe3: $08 $dc $48
    add sp, $08                                   ; $7fe6: $e8 $08
    ldh [rNR23], a                                ; $7fe8: $e0 $18
    ld [c], a                                     ; $7fea: $e2
    jr z, jr_0ad_7fad                             ; $7feb: $28 $c0

    or b                                          ; $7fed: $b0
    jr z, jr_0ad_7fd2                             ; $7fee: $28 $e2

Call_0ad_7ff0:
    jr z, jr_0ad_7ff2                             ; $7ff0: $28 $00

jr_0ad_7ff2:
    nop                                           ; $7ff2: $00
    adc h                                         ; $7ff3: $8c
    ld sp, $034d                                  ; $7ff4: $31 $4d $03
    ret nz                                        ; $7ff7: $c0

    ld bc, $0002                                  ; $7ff8: $01 $02 $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
