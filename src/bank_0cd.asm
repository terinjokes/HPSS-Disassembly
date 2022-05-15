; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0cd", ROMX[$4000], BANK[$cd]

    db $cd

    add b                                         ; $4001: $80
    ld [bc], a                                    ; $4002: $02
    ld a, [hl]                                    ; $4003: $7e
    ld bc, $0054                                  ; $4004: $01 $54 $00
    ld bc, $ff60                                  ; $4007: $01 $60 $ff
    ld bc, $f950                                  ; $400a: $01 $50 $f9
    rrca                                          ; $400d: $0f
    db $30, $da                                   ; $400e: $30 $da
    rst $38                                       ; $4010: $ff
    nop                                           ; $4011: $00
    ld l, d                                       ; $4012: $6a
    rst $38                                       ; $4013: $ff
    xor d                                         ; $4014: $aa
    rst $38                                       ; $4015: $ff
    and c                                         ; $4016: $a1
    rst $38                                       ; $4017: $ff
    rst $38                                       ; $4018: $ff
    nop                                           ; $4019: $00
    ret nc                                        ; $401a: $d0

    ld [bc], a                                    ; $401b: $02
    ld e, b                                       ; $401c: $58
    ld b, b                                       ; $401d: $40
    ld h, b                                       ; $401e: $60
    ld b, $50                                     ; $401f: $06 $50
    jr nc, jr_0cd_4048                            ; $4021: $30 $25

    nop                                           ; $4023: $00
    sub l                                         ; $4024: $95
    nop                                           ; $4025: $00
    inc e                                         ; $4026: $1c
    ld d, l                                       ; $4027: $55
    nop                                           ; $4028: $00
    ld e, [hl]                                    ; $4029: $5e

jr_0cd_402a:
    cpl                                           ; $402a: $2f
    ld h, b                                       ; $402b: $60
    ld e, a                                       ; $402c: $5f
    ld e, b                                       ; $402d: $58
    ld l, l                                       ; $402e: $6d
    nop                                           ; $402f: $00
    cp $ff                                        ; $4030: $fe $ff
    inc b                                         ; $4032: $04
    di                                            ; $4033: $f3
    rst $38                                       ; $4034: $ff
    db $fc                                        ; $4035: $fc
    rst $38                                       ; $4036: $ff
    ldh [$08], a                                  ; $4037: $e0 $08
    nop                                           ; $4039: $00

jr_0cd_403a:
    db $fc                                        ; $403a: $fc
    rst $38                                       ; $403b: $ff
    nop                                           ; $403c: $00
    ldh a, [$fe]                                  ; $403d: $f0 $fe
    xor $ff                                       ; $403f: $ee $ff
    jr jr_0cd_402a                                ; $4041: $18 $e7

    ld a, [hl]                                    ; $4043: $7e
    add c                                         ; $4044: $81
    nop                                           ; $4045: $00
    ld b, d                                       ; $4046: $42
    add c                                         ; $4047: $81

jr_0cd_4048:
    cp l                                          ; $4048: $bd
    inc a                                         ; $4049: $3c
    cp l                                          ; $404a: $bd
    inc a                                         ; $404b: $3c
    ld b, d                                       ; $404c: $42
    add c                                         ; $404d: $81
    ld [$817e], sp                                ; $404e: $08 $7e $81
    jr jr_0cd_403a                                ; $4051: $18 $e7

    sub b                                         ; $4053: $90
    jr z, @-$04                                   ; $4054: $28 $fa

    rst $38                                       ; $4056: $ff
    db $fd                                        ; $4057: $fd
    ld [$ecff], sp                                ; $4058: $08 $ff $ec
    rst $38                                       ; $405b: $ff
    ld a, [c]                                     ; $405c: $f2
    sbc a                                         ; $405d: $9f
    nop                                           ; $405e: $00
    db $ed                                        ; $405f: $ed
    rst $38                                       ; $4060: $ff
    ld h, l                                       ; $4061: $65
    jr nz, @+$01                                  ; $4062: $20 $ff

    ld l, c                                       ; $4064: $69
    add a                                         ; $4065: $87
    nop                                           ; $4066: $00
    ld c, d                                       ; $4067: $4a
    or l                                          ; $4068: $b5
    or l                                          ; $4069: $b5
    ld c, d                                       ; $406a: $4a
    ld l, [hl]                                    ; $406b: $6e
    nop                                           ; $406c: $00
    sub c                                         ; $406d: $91
    nop                                           ; $406e: $00
    ld bc, $0c00                                  ; $406f: $01 $00 $0c
    nop                                           ; $4072: $00
    inc bc                                        ; $4073: $03
    nop                                           ; $4074: $00
    ld b, b                                       ; $4075: $40
    rra                                           ; $4076: $1f
    ld [$0300], sp                                ; $4077: $08 $00 $03
    nop                                           ; $407a: $00
    ld c, $00                                     ; $407b: $0e $00
    ld de, $00ca                                  ; $407d: $11 $ca $00
    db $fd                                        ; $4080: $fd
    pop af                                        ; $4081: $f1
    cp $a2                                        ; $4082: $fe $a2
    db $fd                                        ; $4084: $fd
    rst $30                                       ; $4085: $f7
    ld hl, sp-$3f                                 ; $4086: $f8 $c1
    nop                                           ; $4088: $00
    cp $fb                                        ; $4089: $fe $fb
    db $fc                                        ; $408b: $fc
    push af                                       ; $408c: $f5
    ld a, [$fea1]                                 ; $408d: $fa $a1 $fe
    rst $20                                       ; $4090: $e7
    ld [bc], a                                    ; $4091: $02
    nop                                           ; $4092: $00
    adc d                                         ; $4093: $8a
    nop                                           ; $4094: $00
    ld [hl+], a                                   ; $4095: $22
    nop                                           ; $4096: $00
    add l                                         ; $4097: $85
    daa                                           ; $4098: $27
    nop                                           ; $4099: $00
    jp nc, RST_08                                 ; $409a: $d2 $08 $00

    ld c, c                                       ; $409d: $49
    nop                                           ; $409e: $00
    or l                                          ; $409f: $b5
    ldh [rNR41], a                                ; $40a0: $e0 $20
    cp $ff                                        ; $40a2: $fe $ff
    xor $02                                       ; $40a4: $ee $02
    rst $38                                       ; $40a6: $ff
    rst $30                                       ; $40a7: $f7
    rst $38                                       ; $40a8: $ff
    or e                                          ; $40a9: $b3
    rst $38                                       ; $40aa: $ff
    reti                                          ; $40ab: $d9


    rst $28                                       ; $40ac: $ef
    db $10                                        ; $40ad: $10
    db $dd                                        ; $40ae: $dd
    adc d                                         ; $40af: $8a
    ld [bc], a                                    ; $40b0: $02
    nop                                           ; $40b1: $00
    db $ed                                        ; $40b2: $ed
    rst $38                                       ; $40b3: $ff
    ld l, l                                       ; $40b4: $6d
    ld e, b                                       ; $40b5: $58
    nop                                           ; $40b6: $00
    or h                                          ; $40b7: $b4
    pop de                                        ; $40b8: $d1
    jr jr_0cd_40ff                                ; $40b9: $18 $44

    xor h                                         ; $40bb: $ac
    ld [bc], a                                    ; $40bc: $02
    nop                                           ; $40bd: $00
    ld c, b                                       ; $40be: $48
    cpl                                           ; $40bf: $2f
    nop                                           ; $40c0: $00
    ld e, c                                       ; $40c1: $59
    dec [hl]                                      ; $40c2: $35
    nop                                           ; $40c3: $00
    ld hl, $8019                                  ; $40c4: $21 $19 $80
    nop                                           ; $40c7: $00
    nop                                           ; $40c8: $00
    adc b                                         ; $40c9: $88
    nop                                           ; $40ca: $00
    stop                                          ; $40cb: $10 $00
    ld [hl-], a                                   ; $40cd: $32
    nop                                           ; $40ce: $00
    ld h, h                                       ; $40cf: $64
    rst $38                                       ; $40d0: $ff
    dec bc                                        ; $40d1: $0b
    db $fc                                        ; $40d2: $fc
    add sp, -$01                                  ; $40d3: $e8 $ff
    pop af                                        ; $40d5: $f1
    ld a, $00                                     ; $40d6: $3e $00
    cp $90                                        ; $40d8: $fe $90
    nop                                           ; $40da: $00
    inc l                                         ; $40db: $2c
    add hl, bc                                    ; $40dc: $09
    ld a, b                                       ; $40dd: $78
    db $fd                                        ; $40de: $fd
    jp nz, Jump_000_3400                          ; $40df: $c2 $00 $34

    add hl, bc                                    ; $40e2: $09
    add $08                                       ; $40e3: $c6 $08
    ld a, [bc]                                    ; $40e5: $0a
    ld [$ffed], sp                                ; $40e6: $08 $ed $ff
    db $e4                                        ; $40e9: $e4
    nop                                           ; $40ea: $00
    rst $38                                       ; $40eb: $ff
    ld [hl-], a                                   ; $40ec: $32
    rst $38                                       ; $40ed: $ff
    sbc c                                         ; $40ee: $99
    rst $38                                       ; $40ef: $ff
    call $e4fe                                    ; $40f0: $cd $fe $e4
    nop                                           ; $40f3: $00
    rst $38                                       ; $40f4: $ff
    dec [hl]                                      ; $40f5: $35
    ld a, [$ed9a]                                 ; $40f6: $fa $9a $ed
    xor e                                         ; $40f9: $ab
    or $aa                                        ; $40fa: $f6 $aa
    nop                                           ; $40fc: $00
    db $dd                                        ; $40fd: $dd
    ld d, h                                       ; $40fe: $54

jr_0cd_40ff:
    db $eb                                        ; $40ff: $eb
    ld h, c                                       ; $4100: $61
    sbc [hl]                                      ; $4101: $9e
    dec d                                         ; $4102: $15
    ld [$00b7], a                                 ; $4103: $ea $b7 $00
    ld c, b                                       ; $4106: $48
    sbc l                                         ; $4107: $9d
    ld h, d                                       ; $4108: $62
    rst $38                                       ; $4109: $ff
    nop                                           ; $410a: $00
    sub b                                         ; $410b: $90
    ld a, [hl+]                                   ; $410c: $2a
    ld b, h                                       ; $410d: $44
    nop                                           ; $410e: $00
    xor d                                         ; $410f: $aa
    jr z, @-$29                                   ; $4110: $28 $d5

    add [hl]                                      ; $4112: $86
    ld a, c                                       ; $4113: $79
    xor b                                         ; $4114: $a8
    ld d, a                                       ; $4115: $57
    db $ed                                        ; $4116: $ed
    db $10                                        ; $4117: $10
    ld [de], a                                    ; $4118: $12
    cp c                                          ; $4119: $b9
    ld b, [hl]                                    ; $411a: $46
    ld b, b                                       ; $411b: $40
    ld bc, $0048                                  ; $411c: $01 $48 $00
    ret c                                         ; $411f: $d8

    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    or e                                          ; $4122: $b3
    nop                                           ; $4123: $00
    ld h, [hl]                                    ; $4124: $66
    add b                                         ; $4125: $80
    ld c, h                                       ; $4126: $4c
    nop                                           ; $4127: $00
    ret c                                         ; $4128: $d8

    and b                                         ; $4129: $a0
    ld b, $53                                     ; $412a: $06 $53
    ld c, b                                       ; $412c: $48
    and [hl]                                      ; $412d: $a6
    nop                                           ; $412e: $00
    ld b, b                                       ; $412f: $40
    ld l, h                                       ; $4130: $6c
    nop                                           ; $4131: $00
    sub l                                         ; $4132: $95
    add hl, bc                                    ; $4133: $09
    jr nc, @+$22                                  ; $4134: $30 $20

    nop                                           ; $4136: $00
    ret nz                                        ; $4137: $c0

    ld a, [bc]                                    ; $4138: $0a
    ld [$ff7f], sp                                ; $4139: $08 $7f $ff
    rst $08                                       ; $413c: $cf
    rst $38                                       ; $413d: $ff
    ccf                                           ; $413e: $3f
    ld [$07ff], sp                                ; $413f: $08 $ff $07
    rst $38                                       ; $4142: $ff
    ld a, a                                       ; $4143: $7f
    ld b, $00                                     ; $4144: $06 $00
    adc a                                         ; $4146: $8f
    ld a, a                                       ; $4147: $7f
    ld [hl], a                                    ; $4148: $77
    add b                                         ; $4149: $80
    ld [hl], c                                    ; $414a: $71
    add hl, sp                                    ; $414b: $39
    dec b                                         ; $414c: $05
    nop                                           ; $414d: $00
    ld [bc], a                                    ; $414e: $02
    nop                                           ; $414f: $00
    inc de                                        ; $4150: $13
    nop                                           ; $4151: $00
    dec c                                         ; $4152: $0d
    add d                                         ; $4153: $82
    ret nz                                        ; $4154: $c0

    ld bc, $0012                                  ; $4155: $01 $12 $00
    sbc d                                         ; $4158: $9a
    nop                                           ; $4159: $00
    sub [hl]                                      ; $415a: $96
    db $10                                        ; $415b: $10
    add hl, hl                                    ; $415c: $29
    db $e3                                        ; $415d: $e3
    add d                                         ; $415e: $82
    ld c, [hl]                                    ; $415f: $4e
    ld bc, $ffff                                  ; $4160: $01 $ff $ff
    rst $20                                       ; $4163: $e7
    rst $38                                       ; $4164: $ff
    ld hl, sp-$37                                 ; $4165: $f8 $c9
    ld bc, $80c0                                  ; $4167: $01 $c0 $80
    call $cd01                                    ; $416a: $cd $01 $cd
    ld a, [c]                                     ; $416d: $f2
    inc hl                                        ; $416e: $23
    db $fc                                        ; $416f: $fc
    sbc e                                         ; $4170: $9b
    db $e4                                        ; $4171: $e4
    and [hl]                                      ; $4172: $a6
    nop                                           ; $4173: $00
    ld sp, hl                                     ; $4174: $f9
    ld [hl], e                                    ; $4175: $73
    call z, $f807                                 ; $4176: $cc $07 $f8
    ld l, e                                       ; $4179: $6b
    call nc, Call_000_000f                        ; $417a: $d4 $0f $00
    ldh a, [$6d]                                  ; $417d: $f0 $6d
    nop                                           ; $417f: $00
    and l                                         ; $4180: $a5
    nop                                           ; $4181: $00
    sub c                                         ; $4182: $91
    ld bc, $004a                                  ; $4183: $01 $4a $00
    ld [bc], a                                    ; $4186: $02
    adc e                                         ; $4187: $8b
    dec bc                                        ; $4188: $0b
    and a                                         ; $4189: $a7
    rlca                                          ; $418a: $07
    rra                                           ; $418b: $1f
    rra                                           ; $418c: $1f
    xor a                                         ; $418d: $af
    nop                                           ; $418e: $00
    rrca                                          ; $418f: $0f
    or b                                          ; $4190: $b0
    ld c, h                                       ; $4191: $4c
    ret nz                                        ; $4192: $c0

    dec sp                                        ; $4193: $3b
    ret c                                         ; $4194: $d8

    ld h, $60                                     ; $4195: $26 $60
    nop                                           ; $4197: $00
    sbc d                                         ; $4198: $9a
    call z, $e031                                 ; $4199: $cc $31 $e0
    rra                                           ; $419c: $1f
    call nc, $f029                                ; $419d: $d4 $29 $f0
    db $10                                        ; $41a0: $10
    rrca                                          ; $41a1: $0f
    nop                                           ; $41a2: $00
    jr c, jr_0cd_421d                             ; $41a3: $38 $78

    nop                                           ; $41a5: $00
    nop                                           ; $41a6: $00
    nop                                           ; $41a7: $00
    jr jr_0cd_41aa                                ; $41a8: $18 $00

jr_0cd_41aa:
    ld b, b                                       ; $41aa: $40
    ldh [rNR30], a                                ; $41ab: $e0 $1a
    ld [bc], a                                    ; $41ad: $02
    db $fc                                        ; $41ae: $fc
    nop                                           ; $41af: $00
    nop                                           ; $41b0: $00
    and c                                         ; $41b1: $a1
    ld a, a                                       ; $41b2: $7f
    xor d                                         ; $41b3: $aa
    jr nc, jr_0cd_4235                            ; $41b4: $30 $7f

    ld l, d                                       ; $41b6: $6a
    cp $01                                        ; $41b7: $fe $01
    jr @+$2c                                      ; $41b9: $18 $2a

    ld [bc], a                                    ; $41bb: $02
    dec [hl]                                      ; $41bc: $35
    ld bc, $000e                                  ; $41bd: $01 $0e $00
    ld [bc], a                                    ; $41c0: $02
    ld e, l                                       ; $41c1: $5d

jr_0cd_41c2:
    rlca                                          ; $41c2: $07

jr_0cd_41c3:
    ld [$3e01], sp                                ; $41c3: $08 $01 $3e
    inc bc                                        ; $41c6: $03
    inc b                                         ; $41c7: $04
    nop                                           ; $41c8: $00
    dec b                                         ; $41c9: $05
    ld a, [bc]                                    ; $41ca: $0a
    ld bc, $035e                                  ; $41cb: $01 $5e $03
    nop                                           ; $41ce: $00
    nop                                           ; $41cf: $00
    rla                                           ; $41d0: $17

jr_0cd_41d1:
    ret c                                         ; $41d1: $d8

    ld a, b                                       ; $41d2: $78
    add hl, bc                                    ; $41d3: $09
    adc b                                         ; $41d4: $88
    ld bc, $4002                                  ; $41d5: $01 $02 $40
    ld c, d                                       ; $41d8: $4a
    jr nc, @+$0c                                  ; $41d9: $30 $0a

    ld a, [hl+]                                   ; $41db: $2a
    ld a, a                                       ; $41dc: $7f
    ld hl, $7f70                                  ; $41dd: $21 $70 $7f
    ldh [rOBP1], a                                ; $41e0: $e0 $49
    jr c, jr_0cd_41fd                             ; $41e2: $38 $19

    ldh a, [rOBP1]                                ; $41e4: $f0 $49
    ldh [$f1], a                                  ; $41e6: $e0 $f1

jr_0cd_41e8:
    jr nc, jr_0cd_41ee                            ; $41e8: $30 $04

    db $ed                                        ; $41ea: $ed
    ld [bc], a                                    ; $41eb: $02
    ld e, [hl]                                    ; $41ec: $5e
    nop                                           ; $41ed: $00

jr_0cd_41ee:
    ld bc, $ff60                                  ; $41ee: $01 $60 $ff
    ld [bc], a                                    ; $41f1: $02
    ld h, b                                       ; $41f2: $60
    ld de, $0168                                  ; $41f3: $11 $68 $01
    ld [hl], b                                    ; $41f6: $70
    ld [hl-], a                                   ; $41f7: $32
    db $10                                        ; $41f8: $10
    db $dd                                        ; $41f9: $dd
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    xor d                                         ; $41fc: $aa

jr_0cd_41fd:
    nop                                           ; $41fd: $00
    ld d, l                                       ; $41fe: $55
    nop                                           ; $41ff: $00
    adc b                                         ; $4200: $88
    nop                                           ; $4201: $00
    ld [hl+], a                                   ; $4202: $22
    ldh [rSTAT], a                                ; $4203: $e0 $41
    jr z, jr_0cd_4218                             ; $4205: $28 $11

    jr nc, @+$33                                  ; $4207: $30 $31

    jr jr_0cd_41e8                                ; $4209: $18 $dd

    db $dd                                        ; $420b: $dd
    xor d                                         ; $420c: $aa
    xor d                                         ; $420d: $aa
    ld d, l                                       ; $420e: $55
    db $10                                        ; $420f: $10
    ld d, l                                       ; $4210: $55
    adc b                                         ; $4211: $88
    adc b                                         ; $4212: $88
    ld l, [hl]                                    ; $4213: $6e
    jr nc, jr_0cd_4217                            ; $4214: $30 $01

    nop                                           ; $4216: $00

jr_0cd_4217:
    ld [bc], a                                    ; $4217: $02

jr_0cd_4218:
    nop                                           ; $4218: $00
    ld a, [de]                                    ; $4219: $1a
    dec b                                         ; $421a: $05
    nop                                           ; $421b: $00
    ld a, [bc]                                    ; $421c: $0a

jr_0cd_421d:
    inc b                                         ; $421d: $04
    nop                                           ; $421e: $00
    add c                                         ; $421f: $81
    jr jr_0cd_4272                                ; $4220: $18 $50

    ld b, c                                       ; $4222: $41
    ld [$3460], sp                                ; $4223: $08 $60 $34
    adc d                                         ; $4226: $8a
    ldh a, [rNR10]                                ; $4227: $f0 $10
    jr z, jr_0cd_41c2                             ; $4229: $28 $97

    jr jr_0cd_4282                                ; $422b: $18 $55

    ld d, a                                       ; $422d: $57
    nop                                           ; $422e: $00
    nop                                           ; $422f: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    inc d                                         ; $4232: $14
    nop                                           ; $4233: $00
    ld a, [hl+]                                   ; $4234: $2a

jr_0cd_4235:
    nop                                           ; $4235: $00
    ld d, l                                       ; $4236: $55
    inc e                                         ; $4237: $1c
    and d                                         ; $4238: $a2
    ld a, $04                                     ; $4239: $3e $04
    ld b, c                                       ; $423b: $41
    ld a, a                                       ; $423c: $7f
    sbc h                                         ; $423d: $9c
    rst $38                                       ; $423e: $ff
    ld a, $b0                                     ; $423f: $3e $b0
    jr nc, jr_0cd_41c3                            ; $4241: $30 $80

    nop                                           ; $4243: $00
    jr jr_0cd_4286                                ; $4244: $18 $40

    nop                                           ; $4246: $00
    and b                                         ; $4247: $a0
    inc b                                         ; $4248: $04
    nop                                           ; $4249: $00
    pop bc                                        ; $424a: $c1
    jr c, jr_0cd_429d                             ; $424b: $38 $50

    nop                                           ; $424d: $00
    xor b                                         ; $424e: $a8
    jr nz, jr_0cd_41d1                            ; $424f: $20 $80

    ld d, h                                       ; $4251: $54
    ld e, h                                       ; $4252: $5c
    jr nc, @+$04                                  ; $4253: $30 $02

    ld bc, $0114                                  ; $4255: $01 $14 $01

jr_0cd_4258:
    xor d                                         ; $4258: $aa
    jr nz, jr_0cd_425c                            ; $4259: $20 $01

    ld d, h                                       ; $425b: $54

jr_0cd_425c:
    inc a                                         ; $425c: $3c
    ld [$aa00], sp                                ; $425d: $08 $00 $aa
    inc a                                         ; $4260: $3c
    ld b, c                                       ; $4261: $41
    cp $00                                        ; $4262: $fe $00
    nop                                           ; $4264: $00
    cp $39                                        ; $4265: $fe $39
    rst $38                                       ; $4267: $ff
    ld a, h                                       ; $4268: $7c
    rst $38                                       ; $4269: $ff
    ld a, h                                       ; $426a: $7c
    ld bc, $8a00                                  ; $426b: $01 $00 $8a
    inc bc                                        ; $426e: $03
    ld d, h                                       ; $426f: $54
    inc bc                                        ; $4270: $03
    xor b                                         ; $4271: $a8

jr_0cd_4272:
    rlca                                          ; $4272: $07
    ld d, c                                       ; $4273: $51
    rra                                           ; $4274: $1f
    nop                                           ; $4275: $00
    and c                                         ; $4276: $a1
    ccf                                           ; $4277: $3f
    ld b, b                                       ; $4278: $40
    ld a, a                                       ; $4279: $7f
    sbc a                                         ; $427a: $9f
    ld a, a                                       ; $427b: $7f
    ld a, a                                       ; $427c: $7f
    ld hl, sp+$00                                 ; $427d: $f8 $00
    ld h, d                                       ; $427f: $62
    ld hl, sp-$0b                                 ; $4280: $f8 $f5

jr_0cd_4282:
    cp $f8                                        ; $4282: $fe $f8
    cp $f9                                        ; $4284: $fe $f9

jr_0cd_4286:
    cp $01                                        ; $4286: $fe $01
    ld hl, sp-$04                                 ; $4288: $f8 $fc
    pop af                                        ; $428a: $f1
    cp $f8                                        ; $428b: $fe $f8
    rst $38                                       ; $428d: $ff
    db $fc                                        ; $428e: $fc
    ld e, b                                       ; $428f: $58
    db $10                                        ; $4290: $10
    sub $04                                       ; $4291: $d6 $04
    jr @+$52                                      ; $4293: $18 $50

    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    ld d, b                                       ; $4297: $50
    ld [$6800], sp                                ; $4298: $08 $00 $68
    nop                                           ; $429b: $00
    inc c                                         ; $429c: $0c

jr_0cd_429d:
    db $10                                        ; $429d: $10
    ret nz                                        ; $429e: $c0

    ld b, d                                       ; $429f: $42
    ld a, [hl+]                                   ; $42a0: $2a
    and b                                         ; $42a1: $a0
    nop                                           ; $42a2: $00
    ld a, [hl+]                                   ; $42a3: $2a
    ld bc, $0754                                  ; $42a4: $01 $54 $07
    ld b, b                                       ; $42a7: $40
    ld [$00a2], sp                                ; $42a8: $08 $a2 $00
    ccf                                           ; $42ab: $3f
    ld b, e                                       ; $42ac: $43
    ld a, a                                       ; $42ad: $7f
    sbc a                                         ; $42ae: $9f
    rst $38                                       ; $42af: $ff
    cpl                                           ; $42b0: $2f
    nop                                           ; $42b1: $00
    ld d, l                                       ; $42b2: $55
    nop                                           ; $42b3: $00
    ldh [rNR30], a                                ; $42b4: $e0 $1a
    ld hl, sp+$05                                 ; $42b6: $f8 $05
    db $fc                                        ; $42b8: $fc
    ld [c], a                                     ; $42b9: $e2
    cp $d9                                        ; $42ba: $fe $d9
    nop                                           ; $42bc: $00
    rst $38                                       ; $42bd: $ff
    db $fc                                        ; $42be: $fc
    rst $38                                       ; $42bf: $ff
    cp $ff                                        ; $42c0: $fe $ff
    rst $38                                       ; $42c2: $ff
    ld a, a                                       ; $42c3: $7f
    ld e, $00                                     ; $42c4: $1e $00
    ccf                                           ; $42c6: $3f
    adc h                                         ; $42c7: $8c
    ld e, $40                                     ; $42c8: $1e $40
    rrca                                          ; $42ca: $0f
    and b                                         ; $42cb: $a0
    rra                                           ; $42cc: $1f
    ld b, b                                       ; $42cd: $40
    nop                                           ; $42ce: $00
    ccf                                           ; $42cf: $3f
    add e                                         ; $42d0: $83
    ld a, a                                       ; $42d1: $7f
    dec e                                         ; $42d2: $1d
    rst $38                                       ; $42d3: $ff
    ccf                                           ; $42d4: $3f
    add b                                         ; $42d5: $80
    jr nz, jr_0cd_4258                            ; $42d6: $20 $80

    sbc b                                         ; $42d8: $98
    jr @-$1e                                      ; $42d9: $18 $e0

    ld [$85f0], sp                                ; $42db: $08 $f0 $85
    ld hl, sp-$1e                                 ; $42de: $f8 $e2
    db $fc                                        ; $42e0: $fc
    nop                                           ; $42e1: $00
    pop af                                        ; $42e2: $f1
    inc bc                                        ; $42e3: $03
    jr z, jr_0cd_42ed                             ; $42e4: $28 $07

    ld d, c                                       ; $42e6: $51
    rrca                                          ; $42e7: $0f
    inc hl                                        ; $42e8: $23
    rrca                                          ; $42e9: $0f
    nop                                           ; $42ea: $00
    ld d, e                                       ; $42eb: $53
    rlca                                          ; $42ec: $07

jr_0cd_42ed:
    xor c                                         ; $42ed: $a9
    inc bc                                        ; $42ee: $03
    ld d, h                                       ; $42ef: $54
    ccf                                           ; $42f0: $3f
    add b                                         ; $42f1: $80
    rst $38                                       ; $42f2: $ff
    nop                                           ; $42f3: $00
    ld bc, $2ac0                                  ; $42f4: $01 $c0 $2a
    ldh [$94], a                                  ; $42f7: $e0 $94
    ldh a, [$ca]                                  ; $42f9: $f0 $ca
    ld hl, sp+$04                                 ; $42fb: $f8 $04
    push hl                                       ; $42fd: $e5
    ld hl, sp-$1e                                 ; $42fe: $f8 $e2
    rst $38                                       ; $4300: $ff
    ret nz                                        ; $4301: $c0

    ld a, h                                       ; $4302: $7c
    ld bc, $00f7                                  ; $4303: $01 $f7 $00
    dec b                                         ; $4306: $05
    xor d                                         ; $4307: $aa
    ret nz                                        ; $4308: $c0

    dec d                                         ; $4309: $15
    ld hl, sp+$02                                 ; $430a: $f8 $02

jr_0cd_430c:
    inc c                                         ; $430c: $0c
    nop                                           ; $430d: $00
    ld hl, sp+$6b                                 ; $430e: $f8 $6b
    ld hl, $1c01                                  ; $4310: $21 $01 $1c
    ccf                                           ; $4313: $3f
    ld c, l                                       ; $4314: $4d
    ld a, a                                       ; $4315: $7f
    adc l                                         ; $4316: $8d
    rst $38                                       ; $4317: $ff
    ccf                                           ; $4318: $3f
    ld [bc], a                                    ; $4319: $02
    nop                                           ; $431a: $00
    ld b, b                                       ; $431b: $40
    rra                                           ; $431c: $1f
    ld b, $00                                     ; $431d: $06 $00
    rst $38                                       ; $431f: $ff
    ld a, [$e9ff]                                 ; $4320: $fa $ff $e9
    cp $c6                                        ; $4323: $fe $c6
    nop                                           ; $4325: $00
    ld sp, hl                                     ; $4326: $f9
    cp c                                          ; $4327: $b9
    add $9c                                       ; $4328: $c6 $9c
    db $e3                                        ; $432a: $e3
    jr z, @-$27                                   ; $432b: $28 $d7

    xor e                                         ; $432d: $ab
    nop                                           ; $432e: $00
    rst $10                                       ; $432f: $d7
    ld b, a                                       ; $4330: $47
    cp a                                          ; $4331: $bf
    cpl                                           ; $4332: $2f
    rst $38                                       ; $4333: $ff
    rst $08                                       ; $4334: $cf
    ccf                                           ; $4335: $3f
    rst $20                                       ; $4336: $e7
    nop                                           ; $4337: $00
    rra                                           ; $4338: $1f
    inc d                                         ; $4339: $14
    rst $28                                       ; $433a: $ef
    jr nc, jr_0cd_430c                            ; $433b: $30 $cf

    adc $f1                                       ; $433d: $ce $f1
    sbc [hl]                                      ; $433f: $9e
    db $10                                        ; $4340: $10
    pop hl                                        ; $4341: $e1
    ret                                           ; $4342: $c9


    rst $30                                       ; $4343: $f7
    ld d, b                                       ; $4344: $50
    ld [$8ae0], sp                                ; $4345: $08 $e0 $8a
    ldh a, [$c4]                                  ; $4348: $f0 $c4
    nop                                           ; $434a: $00
    ldh a, [$ca]                                  ; $434b: $f0 $ca
    ldh a, [$84]                                  ; $434d: $f0 $84
    ldh a, [$ca]                                  ; $434f: $f0 $ca
    pop af                                        ; $4351: $f1
    call nz, $f802                                ; $4352: $c4 $02 $f8
    add d                                         ; $4355: $82
    db $fc                                        ; $4356: $fc
    pop hl                                        ; $4357: $e1
    cp $d0                                        ; $4358: $fe $d0
    ld c, [hl]                                    ; $435a: $4e
    nop                                           ; $435b: $00
    db $f4                                        ; $435c: $f4
    pop af                                        ; $435d: $f1
    cp e                                          ; $435e: $bb
    ld bc, $00a0                                  ; $435f: $01 $a0 $00
    db $10                                        ; $4362: $10
    add hl, de                                    ; $4363: $19
    and $01                                       ; $4364: $e6 $01
    ld bc, $dfff                                  ; $4366: $01 $ff $df
    call Call_000_0009                            ; $4369: $cd $09 $00
    ld a, d                                       ; $436c: $7a
    ld a, a                                       ; $436d: $7f
    jr nc, jr_0cd_43af                            ; $436e: $30 $3f

    dec e                                         ; $4370: $1d
    ld e, $f9                                     ; $4371: $1e $f9
    cp $00                                        ; $4373: $fe $00
    ei                                            ; $4375: $fb
    db $fc                                        ; $4376: $fc
    ld hl, sp-$01                                 ; $4377: $f8 $ff
    cp h                                          ; $4379: $bc

jr_0cd_437a:
    rst $38                                       ; $437a: $ff
    adc [hl]                                      ; $437b: $8e
    rst $38                                       ; $437c: $ff
    nop                                           ; $437d: $00
    ld hl, sp-$08                                 ; $437e: $f8 $f8
    jr jr_0cd_437a                                ; $4380: $18 $f8

    add hl, sp                                    ; $4382: $39
    ld sp, hl                                     ; $4383: $f9
    add hl, sp                                    ; $4384: $39
    ld sp, hl                                     ; $4385: $f9
    nop                                           ; $4386: $00
    sbc a                                         ; $4387: $9f
    ld a, a                                       ; $4388: $7f
    add [hl]                                      ; $4389: $86
    ld a, a                                       ; $438a: $7f
    ldh [$1f], a                                  ; $438b: $e0 $1f
    rst $38                                       ; $438d: $ff
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    dec sp                                        ; $4390: $3b
    ccf                                           ; $4391: $3f
    ld h, [hl]                                    ; $4392: $66
    ld a, a                                       ; $4393: $7f
    ldh a, [rIE]                                  ; $4394: $f0 $ff
    pop hl                                        ; $4396: $e1
    cp $00                                        ; $4397: $fe $00
    and $f9                                       ; $4399: $e6 $f9
    adc e                                         ; $439b: $8b
    db $f4                                        ; $439c: $f4
    daa                                           ; $439d: $27
    ret c                                         ; $439e: $d8

    rst $38                                       ; $439f: $ff
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    db $d3                                        ; $43a2: $d3
    rst $38                                       ; $43a3: $ff
    add l                                         ; $43a4: $85
    ei                                            ; $43a5: $fb
    sbc $e1                                       ; $43a6: $de $e1
    adc a                                         ; $43a8: $8f
    ldh a, [rP1]                                  ; $43a9: $f0 $00
    sbc h                                         ; $43ab: $9c
    db $e3                                        ; $43ac: $e3
    ld e, $e1                                     ; $43ad: $1e $e1

jr_0cd_43af:
    ld a, $c1                                     ; $43af: $3e $c1
    ld l, h                                       ; $43b1: $6c
    sub e                                         ; $43b2: $93
    nop                                           ; $43b3: $00
    ld l, l                                       ; $43b4: $6d
    sbc a                                         ; $43b5: $9f
    ld l, l                                       ; $43b6: $6d
    sbc a                                         ; $43b7: $9f
    rst $28                                       ; $43b8: $ef
    rra                                           ; $43b9: $1f
    ld c, a                                       ; $43ba: $4f
    cp a                                          ; $43bb: $bf
    nop                                           ; $43bc: $00
    inc l                                         ; $43bd: $2c
    call c, $fc0c                                 ; $43be: $dc $0c $fc
    sbc b                                         ; $43c1: $98
    ld hl, sp+$78                                 ; $43c2: $f8 $78
    ld hl, sp+$00                                 ; $43c4: $f8 $00
    reti                                          ; $43c6: $d9


    rst $20                                       ; $43c7: $e7
    or a                                          ; $43c8: $b7
    rst $08                                       ; $43c9: $cf
    sub b                                         ; $43ca: $90
    rst $28                                       ; $43cb: $ef
    db $dd                                        ; $43cc: $dd
    db $e3                                        ; $43cd: $e3
    nop                                           ; $43ce: $00
    reti                                          ; $43cf: $d9


    rst $20                                       ; $43d0: $e7
    rst $00                                       ; $43d1: $c7
    rst $38                                       ; $43d2: $ff
    rst $08                                       ; $43d3: $cf
    rst $38                                       ; $43d4: $ff
    sub a                                         ; $43d5: $97
    rst $28                                       ; $43d6: $ef
    nop                                           ; $43d7: $00
    ret nz                                        ; $43d8: $c0

    ret nz                                        ; $43d9: $c0

    pop bc                                        ; $43da: $c1
    pop bc                                        ; $43db: $c1
    rst $00                                       ; $43dc: $c7
    rst $00                                       ; $43dd: $c7
    adc [hl]                                      ; $43de: $8e
    adc a                                         ; $43df: $8f
    nop                                           ; $43e0: $00
    adc h                                         ; $43e1: $8c
    adc a                                         ; $43e2: $8f
    sbc h                                         ; $43e3: $9c
    sbc a                                         ; $43e4: $9f
    add hl, de                                    ; $43e5: $19
    ld e, $1b                                     ; $43e6: $1e $1b
    inc e                                         ; $43e8: $1c
    nop                                           ; $43e9: $00
    sbc e                                         ; $43ea: $9b
    rst $38                                       ; $43eb: $ff
    add hl, bc                                    ; $43ec: $09
    rst $38                                       ; $43ed: $ff
    db $f4                                        ; $43ee: $f4
    dec bc                                        ; $43ef: $0b
    ld a, [hl]                                    ; $43f0: $7e
    add c                                         ; $43f1: $81
    nop                                           ; $43f2: $00
    xor $11                                       ; $43f3: $ee $11
    db $f4                                        ; $43f5: $f4
    dec bc                                        ; $43f6: $0b
    or a                                          ; $43f7: $b7
    ld c, b                                       ; $43f8: $48
    cp $01                                        ; $43f9: $fe $01
    add d                                         ; $43fb: $82
    or $00                                        ; $43fc: $f6 $00
    pop bc                                        ; $43fe: $c1
    rst $38                                       ; $43ff: $ff

Jump_0cd_4400:
    rst $00                                       ; $4400: $c7

Call_0cd_4401:
    rst $38                                       ; $4401: $ff
    adc a                                         ; $4402: $8f
    ld [bc], a                                    ; $4403: $02
    nop                                           ; $4404: $00
    sbc a                                         ; $4405: $9f
    add b                                         ; $4406: $80
    ld [c], a                                     ; $4407: $e2
    nop                                           ; $4408: $00
    rra                                           ; $4409: $1f
    xor a                                         ; $440a: $af
    rst $38                                       ; $440b: $ff
    push af                                       ; $440c: $f5
    rrca                                          ; $440d: $0f
    ld [hl], c                                    ; $440e: $71
    adc a                                         ; $440f: $8f
    nop                                           ; $4410: $00
    cp b                                          ; $4411: $b8
    rst $00                                       ; $4412: $c7
    inc a                                         ; $4413: $3c
    jp $f0cf                                      ; $4414: $c3 $cf $f0


    and a                                         ; $4417: $a7
    ld hl, sp+$00                                 ; $4418: $f8 $00
    db $fc                                        ; $441a: $fc
    rst $38                                       ; $441b: $ff
    ret                                           ; $441c: $c9


    rst $38                                       ; $441d: $ff
    add a                                         ; $441e: $87
    ld hl, sp+$5f                                 ; $441f: $f8 $5f
    and b                                         ; $4421: $a0
    nop                                           ; $4422: $00
    ld a, [hl+]                                   ; $4423: $2a
    push de                                       ; $4424: $d5
    ld sp, hl                                     ; $4425: $f9
    ld b, $7e                                     ; $4426: $06 $7e
    add c                                         ; $4428: $81
    ld e, l                                       ; $4429: $5d
    and e                                         ; $442a: $a3
    nop                                           ; $442b: $00
    adc e                                         ; $442c: $8b
    rst $30                                       ; $442d: $f7
    rst $20                                       ; $442e: $e7
    rra                                           ; $442f: $1f
    ld a, [c]                                     ; $4430: $f2
    rrca                                          ; $4431: $0f
    ld [hl], h                                    ; $4432: $74
    adc e                                         ; $4433: $8b
    nop                                           ; $4434: $00
    ld a, e                                       ; $4435: $7b
    add h                                         ; $4436: $84
    cp $01                                        ; $4437: $fe $01
    ld [$8115], a                                 ; $4439: $ea $15 $81
    ld a, a                                       ; $443c: $7f
    nop                                           ; $443d: $00
    scf                                           ; $443e: $37
    rst $38                                       ; $443f: $ff
    ld a, a                                       ; $4440: $7f
    add b                                         ; $4441: $80
    rst $38                                       ; $4442: $ff
    nop                                           ; $4443: $00
    db $f4                                        ; $4444: $f4
    dec bc                                        ; $4445: $0b
    dec b                                         ; $4446: $05
    add sp, $17                                   ; $4447: $e8 $17
    add l                                         ; $4449: $85
    ld a, a                                       ; $444a: $7f
    dec sp                                        ; $444b: $3b
    ld hl, $2f01                                  ; $444c: $21 $01 $2f
    sub b                                         ; $444f: $90
    ld [de], a                                    ; $4450: $12
    nop                                           ; $4451: $00
    push de                                       ; $4452: $d5
    ld a, [hl+]                                   ; $4453: $2a
    ccf                                           ; $4454: $3f
    ret nz                                        ; $4455: $c0

    ccf                                           ; $4456: $3f
    ret nz                                        ; $4457: $c0

    dec c                                         ; $4458: $0d
    ld a, [c]                                     ; $4459: $f2
    nop                                           ; $445a: $00
    sub d                                         ; $445b: $92
    db $fd                                        ; $445c: $fd
    db $fc                                        ; $445d: $fc
    rst $38                                       ; $445e: $ff
    jr c, @+$01                                   ; $445f: $38 $ff

    ld l, a                                       ; $4461: $6f
    sub b                                         ; $4462: $90
    nop                                           ; $4463: $00
    ld a, d                                       ; $4464: $7a
    add l                                         ; $4465: $85
    adc h                                         ; $4466: $8c
    ld [hl], e                                    ; $4467: $73
    add c                                         ; $4468: $81
    ld a, a                                       ; $4469: $7f
    ld [hl], $ff                                  ; $446a: $36 $ff
    ld [$ff5f], sp                                ; $446c: $08 $5f $ff
    ld sp, hl                                     ; $446f: $f9
    ld sp, hl                                     ; $4470: $f9
    ldh [$0a], a                                  ; $4471: $e0 $0a
    pop bc                                        ; $4473: $c1
    ccf                                           ; $4474: $3f
    ld c, c                                       ; $4475: $49
    ld b, b                                       ; $4476: $40
    cp a                                          ; $4477: $bf
    ld c, l                                       ; $4478: $4d
    add hl, bc                                    ; $4479: $09
    pop af                                        ; $447a: $f1
    pop af                                        ; $447b: $f1
    nop                                           ; $447c: $00
    nop                                           ; $447d: $00
    sbc a                                         ; $447e: $9f
    ldh [rP1], a                                  ; $447f: $e0 $00
    ld a, c                                       ; $4481: $79
    add [hl]                                      ; $4482: $86
    cp [hl]                                       ; $4483: $be
    ld b, c                                       ; $4484: $41
    db $fd                                        ; $4485: $fd
    ld [bc], a                                    ; $4486: $02
    ret nz                                        ; $4487: $c0

    ccf                                           ; $4488: $3f
    nop                                           ; $4489: $00
    sbc c                                         ; $448a: $99
    ld a, a                                       ; $448b: $7f
    rra                                           ; $448c: $1f
    rst $38                                       ; $448d: $ff
    call z, $c4fc                                 ; $448e: $cc $fc $c4
    dec sp                                        ; $4491: $3b
    nop                                           ; $4492: $00
    pop de                                        ; $4493: $d1
    ccf                                           ; $4494: $3f
    jr @+$01                                      ; $4495: $18 $ff

    dec c                                         ; $4497: $0d
    rst $38                                       ; $4498: $ff
    ld d, a                                       ; $4499: $57
    rst $38                                       ; $449a: $ff
    nop                                           ; $449b: $00
    cp $fe                                        ; $449c: $fe $fe
    sbc b                                         ; $449e: $98
    sbc b                                         ; $449f: $98
    nop                                           ; $44a0: $00
    nop                                           ; $44a1: $00
    ei                                            ; $44a2: $fb
    db $f4                                        ; $44a3: $f4
    nop                                           ; $44a4: $00
    rst $38                                       ; $44a5: $ff
    pop hl                                        ; $44a6: $e1
    rst $30                                       ; $44a7: $f7
    ret                                           ; $44a8: $c9


    rst $20                                       ; $44a9: $e7
    sub c                                         ; $44aa: $91
    rst $00                                       ; $44ab: $c7
    jr z, jr_0cd_44b0                             ; $44ac: $28 $02

    add e                                         ; $44ae: $83
    ld d, l                                       ; $44af: $55

jr_0cd_44b0:
    inc bc                                        ; $44b0: $03
    xor b                                         ; $44b1: $a8
    inc bc                                        ; $44b2: $03
    ld d, h                                       ; $44b3: $54
    jr nz, @+$0d                                  ; $44b4: $20 $0b

    ld l, d                                       ; $44b6: $6a
    nop                                           ; $44b7: $00
    sub l                                         ; $44b8: $95
    rra                                           ; $44b9: $1f
    ldh [$9f], a                                  ; $44ba: $e0 $9f
    ldh [$86], a                                  ; $44bc: $e0 $86
    ld sp, hl                                     ; $44be: $f9
    pop bc                                        ; $44bf: $c1

jr_0cd_44c0:
    jr nz, jr_0cd_44c0                            ; $44c0: $20 $fe

    or b                                          ; $44c2: $b0
    pop af                                        ; $44c3: $f1
    ld bc, $3fff                                  ; $44c4: $01 $ff $3f
    ld a, a                                       ; $44c7: $7f
    xor a                                         ; $44c8: $af
    ccf                                           ; $44c9: $3f
    nop                                           ; $44ca: $00
    ld e, a                                       ; $44cb: $5f
    ccf                                           ; $44cc: $3f
    sbc a                                         ; $44cd: $9f
    rra                                           ; $44ce: $1f
    ld c, e                                       ; $44cf: $4b
    rra                                           ; $44d0: $1f
    and a                                         ; $44d1: $a7
    rrca                                          ; $44d2: $0f
    nop                                           ; $44d3: $00
    ld d, c                                       ; $44d4: $51
    ld a, [hl]                                    ; $44d5: $7e
    add c                                         ; $44d6: $81
    xor d                                         ; $44d7: $aa
    push de                                       ; $44d8: $d5
    sub c                                         ; $44d9: $91
    rst $28                                       ; $44da: $ef
    jp $ff24                                      ; $44db: $c3 $24 $ff


    rst $30                                       ; $44de: $f7
    ld a, [hl+]                                   ; $44df: $2a
    inc de                                        ; $44e0: $13
    sbc $de                                       ; $44e1: $de $de
    ld sp, $fd03                                  ; $44e3: $31 $03 $fd
    rst $38                                       ; $44e6: $ff
    db $10                                        ; $44e7: $10
    xor $ff                                       ; $44e8: $ee $ff
    ldh a, [$de]                                  ; $44ea: $f0 $de
    ld bc, $f9e0                                  ; $44ec: $01 $e0 $f9
    add d                                         ; $44ef: $82

jr_0cd_44f0:
    ldh [rNR10], a                                ; $44f0: $e0 $10
    dec d                                         ; $44f2: $15
    rst $38                                       ; $44f3: $ff
    di                                            ; $44f4: $f3
    ld [$e200], sp                                ; $44f5: $08 $00 $e2
    ldh a, [$c5]                                  ; $44f8: $f0 $c5
    ldh [rNR14], a                                ; $44fa: $e0 $14
    ld a, [bc]                                    ; $44fc: $0a
    ret nz                                        ; $44fd: $c0

    dec d                                         ; $44fe: $15
    dec [hl]                                      ; $44ff: $35
    inc bc                                        ; $4500: $03
    ld d, c                                       ; $4501: $51
    ld d, c                                       ; $4502: $51
    inc de                                        ; $4503: $13
    ld a, a                                       ; $4504: $7f
    rst $38                                       ; $4505: $ff
    nop                                           ; $4506: $00
    scf                                           ; $4507: $37
    ld a, a                                       ; $4508: $7f
    adc [hl]                                      ; $4509: $8e
    ccf                                           ; $450a: $3f
    ld b, b                                       ; $450b: $40
    ld c, $b0                                     ; $450c: $0e $b0
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    ld d, l                                       ; $4510: $55
    rst $38                                       ; $4511: $ff
    ldh [$f0], a                                  ; $4512: $e0 $f0
    push bc                                       ; $4514: $c5
    ldh a, [$ca]                                  ; $4515: $f0 $ca
    ldh [rDIV], a                                 ; $4517: $e0 $04
    sub l                                         ; $4519: $95
    pop bc                                        ; $451a: $c1
    ld a, [hl+]                                   ; $451b: $2a
    add c                                         ; $451c: $81
    ld d, h                                       ; $451d: $54
    ld d, l                                       ; $451e: $55
    dec bc                                        ; $451f: $0b
    pop af                                        ; $4520: $f1
    ld a, [bc]                                    ; $4521: $0a
    nop                                           ; $4522: $00
    jr nc, jr_0cd_456a                            ; $4523: $30 $45

    ld a, b                                       ; $4525: $78
    add d                                         ; $4526: $82
    db $fc                                        ; $4527: $fc
    ld sp, $78fe                                  ; $4528: $31 $fe $78
    nop                                           ; $452b: $00
    rst $38                                       ; $452c: $ff
    ld a, h                                       ; $452d: $7c
    cp $38                                        ; $452e: $fe $38
    ld a, h                                       ; $4530: $7c
    ld bc, $f8ff                                  ; $4531: $01 $ff $f8
    ld [bc], a                                    ; $4534: $02
    cp $c1                                        ; $4535: $fe $c1
    rst $38                                       ; $4537: $ff
    ldh [rIE], a                                  ; $4538: $e0 $ff
    and $5d                                       ; $453a: $e6 $5d
    ld bc, $020f                                  ; $453c: $01 $0f $02
    rst $18                                       ; $453f: $df
    ld h, $0f                                     ; $4540: $26 $0f
    ld d, b                                       ; $4542: $50
    ldh [$0a], a                                  ; $4543: $e0 $0a
    ld h, $0b                                     ; $4545: $26 $0b
    add b                                         ; $4547: $80
    nop                                           ; $4548: $00
    ld d, b                                       ; $4549: $50
    ret nz                                        ; $454a: $c0

    jr z, @-$3e                                   ; $454b: $28 $c0

    db $10                                        ; $454d: $10
    add b                                         ; $454e: $80
    jr z, jr_0cd_4551                             ; $454f: $28 $00

jr_0cd_4551:
    dec bc                                        ; $4551: $0b
    ld d, b                                       ; $4552: $50
    rlca                                          ; $4553: $07
    xor b                                         ; $4554: $a8
    ld bc, $0b30                                  ; $4555: $01 $30 $0b
    dec d                                         ; $4558: $15
    ld h, b                                       ; $4559: $60
    inc bc                                        ; $455a: $03
    ret nc                                        ; $455b: $d0

    inc hl                                        ; $455c: $23
    dec sp                                        ; $455d: $3b
    cp $01                                        ; $455e: $fe $01
    sbc l                                         ; $4560: $9d
    inc de                                        ; $4561: $13
    ld c, d                                       ; $4562: $4a
    dec bc                                        ; $4563: $0b
    db $ed                                        ; $4564: $ed
    dec bc                                        ; $4565: $0b
    and d                                         ; $4566: $a2
    ld a, h                                       ; $4567: $7c
    inc bc                                        ; $4568: $03
    push af                                       ; $4569: $f5

jr_0cd_456a:
    ld b, e                                       ; $456a: $43
    dec l                                         ; $456b: $2d
    jr c, jr_0cd_44f0                             ; $456c: $38 $82

    ld h, [hl]                                    ; $456e: $66
    inc de                                        ; $456f: $13
    db $10                                        ; $4570: $10
    ld d, a                                       ; $4571: $57
    inc sp                                        ; $4572: $33
    jr nc, @+$0d                                  ; $4573: $30 $0b

    xor b                                         ; $4575: $a8
    ld e, b                                       ; $4576: $58
    dec sp                                        ; $4577: $3b
    jr c, @+$08                                   ; $4578: $38 $06

    xor b                                         ; $457a: $a8
    reti                                          ; $457b: $d9


    inc bc                                        ; $457c: $03
    ld d, b                                       ; $457d: $50
    ld [$2429], sp                                ; $457e: $08 $29 $24
    ldh a, [rSC]                                  ; $4581: $f0 $02
    ld [hl], a                                    ; $4583: $77
    ld [bc], a                                    ; $4584: $02
    nop                                           ; $4585: $00
    add b                                         ; $4586: $80
    rst $38                                       ; $4587: $ff
    ld c, d                                       ; $4588: $4a
    rst $38                                       ; $4589: $ff
    and d                                         ; $458a: $a2
    rst $38                                       ; $458b: $ff
    ld d, b                                       ; $458c: $50
    rst $38                                       ; $458d: $ff
    nop                                           ; $458e: $00
    and h                                         ; $458f: $a4
    rst $38                                       ; $4590: $ff
    ld c, b                                       ; $4591: $48
    rst $38                                       ; $4592: $ff
    ld [hl+], a                                   ; $4593: $22
    rst $38                                       ; $4594: $ff
    sub h                                         ; $4595: $94
    rst $38                                       ; $4596: $ff
    nop                                           ; $4597: $00
    ld bc, $12fe                                  ; $4598: $01 $fe $12
    db $fc                                        ; $459b: $fc
    ld b, l                                       ; $459c: $45
    ld hl, sp-$71                                 ; $459d: $f8 $8f
    ldh a, [rP1]                                  ; $459f: $f0 $00
    ld e, h                                       ; $45a1: $5c
    db $e3                                        ; $45a2: $e3
    jr nc, @-$2f                                  ; $45a3: $30 $cf

    ld h, d                                       ; $45a5: $62
    sbc a                                         ; $45a6: $9f
    add l                                         ; $45a7: $85
    ld a, a                                       ; $45a8: $7f
    nop                                           ; $45a9: $00
    jr c, jr_0cd_45b3                             ; $45aa: $38 $07

    ld h, h                                       ; $45ac: $64
    rra                                           ; $45ad: $1f
    pop de                                        ; $45ae: $d1
    ld a, $03                                     ; $45af: $3e $03
    db $fc                                        ; $45b1: $fc
    nop                                           ; $45b2: $00

jr_0cd_45b3:
    xor l                                         ; $45b3: $ad
    ldh a, [rHDMA4]                               ; $45b4: $f0 $54
    ldh [rNR32], a                                ; $45b6: $e0 $1c
    ldh [rSVBK], a                                ; $45b8: $e0 $70
    add b                                         ; $45ba: $80
    nop                                           ; $45bb: $00
    ld d, b                                       ; $45bc: $50
    nop                                           ; $45bd: $00
    adc b                                         ; $45be: $88
    nop                                           ; $45bf: $00
    ld d, l                                       ; $45c0: $55
    nop                                           ; $45c1: $00
    and d                                         ; $45c2: $a2
    nop                                           ; $45c3: $00
    nop                                           ; $45c4: $00
    inc d                                         ; $45c5: $14
    nop                                           ; $45c6: $00
    xor d                                         ; $45c7: $aa
    nop                                           ; $45c8: $00
    ld b, b                                       ; $45c9: $40
    nop                                           ; $45ca: $00
    and b                                         ; $45cb: $a0
    nop                                           ; $45cc: $00
    dec b                                         ; $45cd: $05
    nop                                           ; $45ce: $00
    nop                                           ; $45cf: $00
    ld [bc], a                                    ; $45d0: $02
    nop                                           ; $45d1: $00
    dec b                                         ; $45d2: $05
    ld a, [bc]                                    ; $45d3: $0a
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00
    inc c                                         ; $45d6: $0c
    nop                                           ; $45d7: $00
    ld d, h                                       ; $45d8: $54
    ld b, d                                       ; $45d9: $42
    ld c, $00                                     ; $45da: $0e $00
    ld d, l                                       ; $45dc: $55
    jr jr_0cd_45df                                ; $45dd: $18 $00

jr_0cd_45df:
    dec b                                         ; $45df: $05
    inc d                                         ; $45e0: $14
    nop                                           ; $45e1: $00
    ld b, l                                       ; $45e2: $45
    nop                                           ; $45e3: $00
    db $10                                        ; $45e4: $10
    ld a, [hl+]                                   ; $45e5: $2a
    nop                                           ; $45e6: $00
    dec d                                         ; $45e7: $15
    inc h                                         ; $45e8: $24
    nop                                           ; $45e9: $00
    jr @+$09                                      ; $45ea: $18 $07

    ld [hl], b                                    ; $45ec: $70
    rrca                                          ; $45ed: $0f
    nop                                           ; $45ee: $00
    ld hl, $471e                                  ; $45ef: $21 $1e $47
    jr c, @-$70                                   ; $45f2: $38 $8e

    ld [hl], b                                    ; $45f4: $70
    sbc d                                         ; $45f5: $9a
    ld h, b                                       ; $45f6: $60
    jr jr_0cd_466d                                ; $45f7: $18 $74

    nop                                           ; $45f9: $00
    ld a, [bc]                                    ; $45fa: $0a
    jr nz, jr_0cd_460d                            ; $45fb: $20 $10

    inc b                                         ; $45fd: $04
    ld c, b                                       ; $45fe: $48
    jp z, $c53f                                   ; $45ff: $ca $3f $c5

    nop                                           ; $4602: $00
    ccf                                           ; $4603: $3f
    add d                                         ; $4604: $82
    ld a, a                                       ; $4605: $7f
    inc d                                         ; $4606: $14
    rst $38                                       ; $4607: $ff
    ld c, c                                       ; $4608: $49
    rst $38                                       ; $4609: $ff
    jr nz, jr_0cd_460e                            ; $460a: $20 $02

    rst $38                                       ; $460c: $ff

jr_0cd_460d:
    add hl, bc                                    ; $460d: $09

jr_0cd_460e:
    cp $27                                        ; $460e: $fe $27
    ld hl, sp+$50                                 ; $4610: $f8 $50
    ld [$0200], sp                                ; $4612: $08 $00 $02
    ld [bc], a                                    ; $4615: $02
    rst $38                                       ; $4616: $ff
    dec d                                         ; $4617: $15
    rst $28                                       ; $4618: $ef
    ld [hl+], a                                   ; $4619: $22
    rst $18                                       ; $461a: $df
    call RST_18                                   ; $461b: $cd $18 $00
    ld [$ff00], sp                                ; $461e: $08 $00 $ff
    ld l, e                                       ; $4621: $6b
    rst $38                                       ; $4622: $ff
    sbc $ff                                       ; $4623: $de $ff
    cp l                                          ; $4625: $bd

jr_0cd_4626:
    rst $38                                       ; $4626: $ff
    ld l, a                                       ; $4627: $6f
    nop                                           ; $4628: $00
    rst $38                                       ; $4629: $ff
    ei                                            ; $462a: $fb
    rst $38                                       ; $462b: $ff
    cp [hl]                                       ; $462c: $be
    rst $38                                       ; $462d: $ff
    set 7, a                                      ; $462e: $cb $ff
    ld h, a                                       ; $4630: $67
    jr nz, @+$01                                  ; $4631: $20 $ff

    ld l, d                                       ; $4633: $6a
    ld c, $00                                     ; $4634: $0e $00
    ld a, d                                       ; $4636: $7a
    rst $38                                       ; $4637: $ff
    adc a                                         ; $4638: $8f
    rst $38                                       ; $4639: $ff
    add hl, sp                                    ; $463a: $39
    nop                                           ; $463b: $00
    rst $38                                       ; $463c: $ff
    rst $18                                       ; $463d: $df
    rst $38                                       ; $463e: $ff
    ld a, [hl]                                    ; $463f: $7e
    rst $38                                       ; $4640: $ff
    rst $20                                       ; $4641: $e7
    rst $38                                       ; $4642: $ff
    ld [de], a                                    ; $4643: $12
    add b                                         ; $4644: $80
    cp b                                          ; $4645: $b8
    nop                                           ; $4646: $00
    sub b                                         ; $4647: $90
    rst $38                                       ; $4648: $ff
    ld b, c                                       ; $4649: $41
    cp $83                                        ; $464a: $fe $83
    db $fc                                        ; $464c: $fc
    inc b                                         ; $464d: $04
    nop                                           ; $464e: $00
    ld hl, sp+$0d                                 ; $464f: $f8 $0d
    ldh a, [rNR30]                                ; $4651: $f0 $1a
    pop hl                                        ; $4653: $e1
    pop af                                        ; $4654: $f1
    nop                                           ; $4655: $00
    jp z, $0100                                   ; $4656: $ca $00 $01

    sub h                                         ; $4659: $94
    inc bc                                        ; $465a: $03
    cp c                                          ; $465b: $b9
    ld b, $e3                                     ; $465c: $06 $e3

jr_0cd_465e:
    inc e                                         ; $465e: $1c
    add $00                                       ; $465f: $c6 $00
    jr c, @-$52                                   ; $4661: $38 $ac

    ld [hl], b                                    ; $4663: $70
    ld e, d                                       ; $4664: $5a
    ldh [$a8], a                                  ; $4665: $e0 $a8
    ld b, b                                       ; $4667: $40
    ld [hl], b                                    ; $4668: $70
    jr nz, @-$7e                                  ; $4669: $20 $80

    xor b                                         ; $466b: $a8
    xor d                                         ; $466c: $aa

jr_0cd_466d:
    nop                                           ; $466d: $00
    ld l, c                                       ; $466e: $69
    nop                                           ; $466f: $00
    add d                                         ; $4670: $82
    nop                                           ; $4671: $00
    ld c, d                                       ; $4672: $4a
    ld [$b500], sp                                ; $4673: $08 $00 $b5
    nop                                           ; $4676: $00
    push de                                       ; $4677: $d5
    add b                                         ; $4678: $80
    jr nc, jr_0cd_4626                            ; $4679: $30 $ab

    nop                                           ; $467b: $00
    ld d, a                                       ; $467c: $57
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    xor [hl]                                      ; $467f: $ae
    ld bc, $e01a                                  ; $4680: $01 $1a $e0
    adc h                                         ; $4683: $8c
    ldh a, [rDMA]                                 ; $4684: $f0 $46
    nop                                           ; $4686: $00
    ld hl, sp-$5d                                 ; $4687: $f8 $a3
    db $fc                                        ; $4689: $fc
    ld c, c                                       ; $468a: $49
    cp $90                                        ; $468b: $fe $90
    rst $38                                       ; $468d: $ff
    jr z, jr_0cd_4692                             ; $468e: $28 $02

    rst $38                                       ; $4690: $ff
    inc b                                         ; $4691: $04

jr_0cd_4692:
    rst $38                                       ; $4692: $ff
    ld b, b                                       ; $4693: $40
    nop                                           ; $4694: $00
    and c                                         ; $4695: $a1
    jr jr_0cd_4698                                ; $4696: $18 $00

jr_0cd_4698:
    cp b                                          ; $4698: $b8
    nop                                           ; $4699: $00
    rlca                                          ; $469a: $07
    pop af                                        ; $469b: $f1
    ld c, $c3                                     ; $469c: $0e $c3
    inc a                                         ; $469e: $3c
    add [hl]                                      ; $469f: $86
    ld a, b                                       ; $46a0: $78
    ld c, $08                                     ; $46a1: $0e $08
    ldh a, [rLCDC]                                ; $46a3: $f0 $40
    nop                                           ; $46a5: $00
    and l                                         ; $46a6: $a5
    jr c, jr_0cd_46a9                             ; $46a7: $38 $00

jr_0cd_46a9:
    sub l                                         ; $46a9: $95
    nop                                           ; $46aa: $00
    ld h, e                                       ; $46ab: $63
    nop                                           ; $46ac: $00
    nop                                           ; $46ad: $00
    adc [hl]                                      ; $46ae: $8e
    ld bc, $03ac                                  ; $46af: $01 $ac $03
    ld e, b                                       ; $46b2: $58
    rlca                                          ; $46b3: $07
    jr nz, jr_0cd_46b6                            ; $46b4: $20 $00

jr_0cd_46b6:
    nop                                           ; $46b6: $00
    ld d, h                                       ; $46b7: $54
    nop                                           ; $46b8: $00
    ld [$8c10], a                                 ; $46b9: $ea $10 $8c
    ld [hl], b                                    ; $46bc: $70
    inc d                                         ; $46bd: $14
    nop                                           ; $46be: $00
    ldh [$38], a                                  ; $46bf: $e0 $38
    ret nz                                        ; $46c1: $c0

    ld h, h                                       ; $46c2: $64
    add b                                         ; $46c3: $80
    ret z                                         ; $46c4: $c8

    nop                                           ; $46c5: $00
    ld c, $00                                     ; $46c6: $0e $00
    pop af                                        ; $46c8: $f1
    inc [hl]                                      ; $46c9: $34
    jp $8768                                      ; $46ca: $c3 $68 $87


    sub c                                         ; $46cd: $91
    ld c, $23                                     ; $46ce: $0e $23
    nop                                           ; $46d0: $00
    inc e                                         ; $46d1: $1c
    ld b, [hl]                                    ; $46d2: $46
    jr c, jr_0cd_465e                             ; $46d3: $38 $89

    ld [hl], b                                    ; $46d5: $70
    ld de, $4de0                                  ; $46d6: $11 $e0 $4d
    nop                                           ; $46d9: $00
    di                                            ; $46da: $f3
    ld a, [de]                                    ; $46db: $1a
    rst $20                                       ; $46dc: $e7
    ld [hl], b                                    ; $46dd: $70
    adc a                                         ; $46de: $8f
    pop hl                                        ; $46df: $e1
    ld e, $26                                     ; $46e0: $1e $26
    nop                                           ; $46e2: $00
    add hl, de                                    ; $46e3: $19
    inc a                                         ; $46e4: $3c
    inc bc                                        ; $46e5: $03
    ld d, b                                       ; $46e6: $50
    rrca                                          ; $46e7: $0f
    jr nz, jr_0cd_4709                            ; $46e8: $20 $1f

    add hl, bc                                    ; $46ea: $09
    nop                                           ; $46eb: $00
    rst $38                                       ; $46ec: $ff
    ld e, $ff                                     ; $46ed: $1e $ff
    dec hl                                        ; $46ef: $2b
    rst $38                                       ; $46f0: $ff
    ld e, l                                       ; $46f1: $5d
    rst $38                                       ; $46f2: $ff
    ld a, [hl+]                                   ; $46f3: $2a
    nop                                           ; $46f4: $00
    rst $38                                       ; $46f5: $ff
    sub l                                         ; $46f6: $95
    rst $38                                       ; $46f7: $ff
    ld b, d                                       ; $46f8: $42
    rst $38                                       ; $46f9: $ff
    add l                                         ; $46fa: $85
    rst $38                                       ; $46fb: $ff
    inc [hl]                                      ; $46fc: $34
    nop                                           ; $46fd: $00
    ret nz                                        ; $46fe: $c0

    ld l, d                                       ; $46ff: $6a
    add b                                         ; $4700: $80
    add l                                         ; $4701: $85
    nop                                           ; $4702: $00
    db $eb                                        ; $4703: $eb
    nop                                           ; $4704: $00
    ld b, e                                       ; $4705: $43
    add b                                         ; $4706: $80
    ld a, h                                       ; $4707: $7c
    nop                                           ; $4708: $00

jr_0cd_4709:
    call c, $f003                                 ; $4709: $dc $03 $f0
    rrca                                          ; $470c: $0f
    ld d, h                                       ; $470d: $54
    inc bc                                        ; $470e: $03
    cp b                                          ; $470f: $b8
    nop                                           ; $4710: $00
    rlca                                          ; $4711: $07
    ld d, d                                       ; $4712: $52
    rrca                                          ; $4713: $0f
    ret                                           ; $4714: $c9


    ld a, $93                                     ; $4715: $3e $93
    ld a, h                                       ; $4717: $7c
    ld b, $00                                     ; $4718: $06 $00
    ld hl, sp+$4d                                 ; $471a: $f8 $4d
    ldh a, [rNR30]                                ; $471c: $f0 $1a
    ldh [rNR33], a                                ; $471e: $e0 $1d
    ldh [$39], a                                  ; $4720: $e0 $39
    ld [$d4c0], sp                                ; $4722: $08 $c0 $d4
    nop                                           ; $4725: $00
    res 3, [hl]                                   ; $4726: $cb $9e
    nop                                           ; $4728: $00
    sub $01                                       ; $4729: $d6 $01
    inc a                                         ; $472b: $3c
    nop                                           ; $472c: $00
    inc bc                                        ; $472d: $03
    ret nc                                        ; $472e: $d0

    rrca                                          ; $472f: $0f
    or d                                          ; $4730: $b2
    rrca                                          ; $4731: $0f
    ld h, b                                       ; $4732: $60
    rra                                           ; $4733: $1f
    push bc                                       ; $4734: $c5
    nop                                           ; $4735: $00
    ld a, $91                                     ; $4736: $3e $91
    ld a, [hl]                                    ; $4738: $7e
    inc hl                                        ; $4739: $23
    db $fc                                        ; $473a: $fc
    ld h, [hl]                                    ; $473b: $66
    ld hl, sp-$73                                 ; $473c: $f8 $8d
    call nc, RST_20                               ; $473e: $d4 $20 $00
    ld l, b                                       ; $4741: $68
    add hl, bc                                    ; $4742: $09
    db $10                                        ; $4743: $10
    add b                                         ; $4744: $80
    ld bc, $8854                                  ; $4745: $01 $54 $88
    ld de, $00a8                                  ; $4748: $11 $a8 $00
    nop                                           ; $474b: $00
    inc sp                                        ; $474c: $33
    ret nz                                        ; $474d: $c0

    ld l, e                                       ; $474e: $6b
    add b                                         ; $474f: $80
    add $01                                       ; $4750: $c6 $01
    inc c                                         ; $4752: $0c
    inc bc                                        ; $4753: $03
    nop                                           ; $4754: $00
    ld e, c                                       ; $4755: $59
    rlca                                          ; $4756: $07
    ld [hl-], a                                   ; $4757: $32
    rrca                                          ; $4758: $0f
    ld b, h                                       ; $4759: $44
    ccf                                           ; $475a: $3f
    sub c                                         ; $475b: $91
    ld a, [hl]                                    ; $475c: $7e
    db $10                                        ; $475d: $10
    sub d                                         ; $475e: $92
    ld a, a                                       ; $475f: $7f
    jr z, jr_0cd_47ca                             ; $4760: $28 $68

    nop                                           ; $4762: $00
    ld [$25ff], sp                                ; $4763: $08 $ff $25
    sbc $00                                       ; $4766: $de $00
    ld h, e                                       ; $4768: $63
    sbc h                                         ; $4769: $9c
    db $d3                                        ; $476a: $d3
    inc a                                         ; $476b: $3c

jr_0cd_476c:
    add a                                         ; $476c: $87
    ld a, b                                       ; $476d: $78
    db $e4                                        ; $476e: $e4
    rra                                           ; $476f: $1f
    nop                                           ; $4770: $00
    adc b                                         ; $4771: $88
    ld a, a                                       ; $4772: $7f
    ld hl, $13fe                                  ; $4773: $21 $fe $13
    db $fc                                        ; $4776: $fc
    ld b, [hl]                                    ; $4777: $46
    ld hl, sp+$00                                 ; $4778: $f8 $00
    inc c                                         ; $477a: $0c
    ldh a, [$0a]                                  ; $477b: $f0 $0a
    ldh a, [rNR32]                                ; $477d: $f0 $1c
    ldh [$eb], a                                  ; $477f: $e0 $eb
    nop                                           ; $4781: $00
    db $10                                        ; $4782: $10
    sub [hl]                                      ; $4783: $96
    ld bc, $c88c                                  ; $4784: $01 $8c $c8
    nop                                           ; $4787: $00
    ld [hl], b                                    ; $4788: $70
    rrca                                          ; $4789: $0f
    ldh [$1f], a                                  ; $478a: $e0 $1f
    nop                                           ; $478c: $00
    ret nz                                        ; $478d: $c0

    ccf                                           ; $478e: $3f
    add b                                         ; $478f: $80
    ld a, a                                       ; $4790: $7f
    ccf                                           ; $4791: $3f
    nop                                           ; $4792: $00
    ld [hl], e                                    ; $4793: $73
    inc c                                         ; $4794: $0c
    inc d                                         ; $4795: $14
    jp nz, $853c                                  ; $4796: $c2 $3c $85

    ld [$0900], a                                 ; $4799: $ea $00 $09
    jr nz, jr_0cd_479e                            ; $479c: $20 $00

jr_0cd_479e:
    add hl, de                                    ; $479e: $19
    ldh [rLCDC], a                                ; $479f: $e0 $40
    inc d                                         ; $47a1: $14
    db $10                                        ; $47a2: $10
    ld [bc], a                                    ; $47a3: $02
    db $10                                        ; $47a4: $10
    rst $38                                       ; $47a5: $ff
    ld l, b                                       ; $47a6: $68
    rst $38                                       ; $47a7: $ff
    xor c                                         ; $47a8: $a9
    cp $40                                        ; $47a9: $fe $40
    ld b, c                                       ; $47ab: $41
    ld [hl], $00                                  ; $47ac: $36 $00
    add [hl]                                      ; $47ae: $86
    ld hl, sp-$22                                 ; $47af: $f8 $de
    jr nz, jr_0cd_476c                            ; $47b1: $20 $b9

    ld b, b                                       ; $47b3: $40
    inc d                                         ; $47b4: $14
    ld l, b                                       ; $47b5: $68
    add b                                         ; $47b6: $80
    call nc, Call_000_006a                        ; $47b7: $d4 $6a $00
    ret nz                                        ; $47ba: $c0

    call c, $0711                                 ; $47bb: $dc $11 $07
    ld hl, sp-$7e                                 ; $47be: $f8 $82
    ld a, [c]                                     ; $47c0: $f2
    ld [$07e8], sp                                ; $47c1: $08 $e8 $07
    adc c                                         ; $47c4: $89
    ld b, $ee                                     ; $47c5: $06 $ee
    adc $01                                       ; $47c7: $ce $01
    sub d                                         ; $47c9: $92

jr_0cd_47ca:
    nop                                           ; $47ca: $00
    nop                                           ; $47cb: $00
    ld c, $f0                                     ; $47cc: $0e $f0
    dec sp                                        ; $47ce: $3b
    ret nz                                        ; $47cf: $c0

    ld [hl], c                                    ; $47d0: $71
    add b                                         ; $47d1: $80
    db $db                                        ; $47d2: $db

jr_0cd_47d3:
    jr nz, jr_0cd_47d5                            ; $47d3: $20 $00

jr_0cd_47d5:
    jp z, Jump_000_0138                           ; $47d5: $ca $38 $01

    jp nz, $0100                                  ; $47d8: $c2 $00 $01

    nop                                           ; $47db: $00
    or d                                          ; $47dc: $b2
    ld [$900f], sp                                ; $47dd: $08 $0f $90
    rrca                                          ; $47e0: $0f
    ld [hl], c                                    ; $47e1: $71
    or [hl]                                       ; $47e2: $b6
    nop                                           ; $47e3: $00
    ld h, h                                       ; $47e4: $64
    rra                                           ; $47e5: $1f
    pop bc                                        ; $47e6: $c1
    jr nz, @+$41                                  ; $47e7: $20 $3f

    sub d                                         ; $47e9: $92
    ret nz                                        ; $47ea: $c0

    ld bc, $e31c                                  ; $47eb: $01 $1c $e3
    ld b, c                                       ; $47ee: $41
    cp $a3                                        ; $47ef: $fe $a3
    nop                                           ; $47f1: $00
    db $fc                                        ; $47f2: $fc
    ld b, h                                       ; $47f3: $44
    ld hl, sp-$74                                 ; $47f4: $f8 $8c
    ldh a, [$59]                                  ; $47f6: $f0 $59

jr_0cd_47f8:
    ldh [rNR24], a                                ; $47f8: $e0 $19
    nop                                           ; $47fa: $00
    ldh [rNR31], a                                ; $47fb: $e0 $1b
    ldh [$2b], a                                  ; $47fd: $e0 $2b
    ret nz                                        ; $47ff: $c0

    ld h, e                                       ; $4800: $63
    add b                                         ; $4801: $80
    and [hl]                                      ; $4802: $a6
    ld [$5c01], sp                                ; $4803: $08 $01 $5c
    inc bc                                        ; $4806: $03
    sbc c                                         ; $4807: $99
    jr @+$04                                      ; $4808: $18 $02

    jp nz, $953f                                  ; $480a: $c2 $3f $95

    nop                                           ; $480d: $00
    ld a, a                                       ; $480e: $7f
    rrca                                          ; $480f: $0f
    rst $38                                       ; $4810: $ff
    ld d, e                                       ; $4811: $53
    rst $38                                       ; $4812: $ff
    ld a, [bc]                                    ; $4813: $0a
    rst $38                                       ; $4814: $ff
    ld e, [hl]                                    ; $4815: $5e
    nop                                           ; $4816: $00
    rst $38                                       ; $4817: $ff
    ld sp, $54ff                                  ; $4818: $31 $ff $54
    rst $38                                       ; $481b: $ff
    and c                                         ; $481c: $a1
    cp $08                                        ; $481d: $fe $08
    jr nz, @+$01                                  ; $481f: $20 $ff

    inc c                                         ; $4821: $0c
    add h                                         ; $4822: $84
    nop                                           ; $4823: $00
    ld d, $e1                                     ; $4824: $16 $e1
    inc l                                         ; $4826: $2c
    jp $0059                                      ; $4827: $c3 $59 $00


    add [hl]                                      ; $482a: $86
    pop de                                        ; $482b: $d1
    ld c, $a2                                     ; $482c: $0e $a2
    inc e                                         ; $482e: $1c
    push bc                                       ; $482f: $c5
    jr c, jr_0cd_4842                             ; $4830: $38 $10

    nop                                           ; $4832: $00
    ldh [$2a], a                                  ; $4833: $e0 $2a
    ret nz                                        ; $4835: $c0

    dec [hl]                                      ; $4836: $35
    ret nz                                        ; $4837: $c0

    ld l, a                                       ; $4838: $6f
    add b                                         ; $4839: $80
    ld e, b                                       ; $483a: $58
    nop                                           ; $483b: $00
    add a                                         ; $483c: $87
    ld [hl], b                                    ; $483d: $70
    adc a                                         ; $483e: $8f
    ld b, c                                       ; $483f: $41
    cp [hl]                                       ; $4840: $be
    rlca                                          ; $4841: $07

jr_0cd_4842:
    ld hl, sp+$50                                 ; $4842: $f8 $50
    add b                                         ; $4844: $80
    ld e, b                                       ; $4845: $58
    ld [bc], a                                    ; $4846: $02
    db $e4                                        ; $4847: $e4
    nop                                           ; $4848: $00
    ld sp, $26c0                                  ; $4849: $31 $c0 $26
    pop bc                                        ; $484c: $c1
    ld l, h                                       ; $484d: $6c
    jr nc, jr_0cd_47d3                            ; $484e: $30 $83

    ret c                                         ; $4850: $d8

    and [hl]                                      ; $4851: $a6
    ld bc, $09b0                                  ; $4852: $01 $b0 $09
    ld d, [hl]                                    ; $4855: $56
    ld bc, $07b8                                  ; $4856: $01 $b8 $07
    nop                                           ; $4859: $00
    ldh a, [rIF]                                  ; $485a: $f0 $0f
    pop bc                                        ; $485c: $c1
    ld a, $82                                     ; $485d: $3e $82
    ld a, h                                       ; $485f: $7c
    ld c, $f0                                     ; $4860: $0e $f0
    jr z, jr_0cd_47f8                             ; $4862: $28 $94

    ld a, a                                       ; $4864: $7f
    ret nz                                        ; $4865: $c0

    ld e, b                                       ; $4866: $58
    nop                                           ; $4867: $00
    jp nc, Jump_000_0302                          ; $4868: $d2 $02 $03

    db $fc                                        ; $486b: $fc
    inc h                                         ; $486c: $24
    ld [$78fb], sp                                ; $486d: $08 $fb $78
    rst $30                                       ; $4870: $f7
    jr nz, @-$7a                                  ; $4871: $20 $84

    ld bc, $fff5                                  ; $4873: $01 $f5 $ff
    and b                                         ; $4876: $a0
    ld bc, $012f                                  ; $4877: $01 $2f $01
    ld [hl+], a                                   ; $487a: $22
    rst $38                                       ; $487b: $ff
    nop                                           ; $487c: $00
    ld [bc], a                                    ; $487d: $02
    ld b, b                                       ; $487e: $40
    ld bc, $02ff                                  ; $487f: $01 $ff $02
    inc b                                         ; $4882: $04
    nop                                           ; $4883: $00
    ld a, [bc]                                    ; $4884: $0a
    nop                                           ; $4885: $00
    rst $38                                       ; $4886: $ff
    daa                                           ; $4887: $27
    ld hl, sp+$5f                                 ; $4888: $f8 $5f
    ldh a, [$bd]                                  ; $488a: $f0 $bd
    add sp, $7a                                   ; $488c: $e8 $7a
    nop                                           ; $488e: $00
    ret nz                                        ; $488f: $c0

    ld [hl], l                                    ; $4890: $75
    and b                                         ; $4891: $a0
    add sp, $7f                                   ; $4892: $e8 $7f
    nop                                           ; $4894: $00
    xor a                                         ; $4895: $af
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    dec de                                        ; $4898: $1b
    nop                                           ; $4899: $00
    dec b                                         ; $489a: $05
    nop                                           ; $489b: $00
    ld b, d                                       ; $489c: $42
    nop                                           ; $489d: $00
    and c                                         ; $489e: $a1
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    ld d, c                                       ; $48a1: $51
    nop                                           ; $48a2: $00
    add sp, $40                                   ; $48a3: $e8 $40
    ld a, a                                       ; $48a5: $7f
    add b                                         ; $48a6: $80
    xor a                                         ; $48a7: $af
    ld d, b                                       ; $48a8: $50
    nop                                           ; $48a9: $00
    dec de                                        ; $48aa: $1b
    db $e4                                        ; $48ab: $e4
    dec b                                         ; $48ac: $05
    ld a, [$bd42]                                 ; $48ad: $fa $42 $bd
    and c                                         ; $48b0: $a1
    ld e, [hl]                                    ; $48b1: $5e
    ld [$ae51], sp                                ; $48b2: $08 $51 $ae
    xor b                                         ; $48b5: $a8
    rla                                           ; $48b6: $17
    ld b, b                                       ; $48b7: $40
    ld c, b                                       ; $48b8: $48
    ld a, a                                       ; $48b9: $7f
    add b                                         ; $48ba: $80
    cp a                                          ; $48bb: $bf
    ld h, b                                       ; $48bc: $60
    ld b, b                                       ; $48bd: $40
    ld d, b                                       ; $48be: $50
    ld d, b                                       ; $48bf: $50
    ld e, h                                       ; $48c0: $5c
    nop                                           ; $48c1: $00
    cp $00                                        ; $48c2: $fe $00
    push af                                       ; $48c4: $f5
    nop                                           ; $48c5: $00
    ret c                                         ; $48c6: $d8

    jr nz, jr_0cd_48c9                            ; $48c7: $20 $00

jr_0cd_48c9:
    and b                                         ; $48c9: $a0
    ld b, b                                       ; $48ca: $40
    nop                                           ; $48cb: $00
    add l                                         ; $48cc: $85
    nop                                           ; $48cd: $00
    adc e                                         ; $48ce: $8b
    ld bc, $0417                                  ; $48cf: $01 $17 $04
    ld [bc], a                                    ; $48d2: $02
    rst $38                                       ; $48d3: $ff
    dec b                                         ; $48d4: $05
    rst $38                                       ; $48d5: $ff
    inc bc                                        ; $48d6: $03
    inc b                                         ; $48d7: $04
    db $10                                        ; $48d8: $10
    rlca                                          ; $48d9: $07
    cp $00                                        ; $48da: $fe $00
    dec bc                                        ; $48dc: $0b
    cp $07                                        ; $48dd: $fe $07
    rst $38                                       ; $48df: $ff
    inc bc                                        ; $48e0: $03
    add b                                         ; $48e1: $80
    ret nc                                        ; $48e2: $d0

    ld b, c                                       ; $48e3: $41
    nop                                           ; $48e4: $00
    ldh [$82], a                                  ; $48e5: $e0 $82
    ret nz                                        ; $48e7: $c0

    ld bc, $02a0                                  ; $48e8: $01 $a0 $02
    ret nz                                        ; $48eb: $c0

    rlca                                          ; $48ec: $07
    nop                                           ; $48ed: $00
    add b                                         ; $48ee: $80
    ld [bc], a                                    ; $48ef: $02
    ld b, b                                       ; $48f0: $40
    nop                                           ; $48f1: $00
    add b                                         ; $48f2: $80
    ld bc, $820b                                  ; $48f3: $01 $0b $82
    nop                                           ; $48f6: $00
    rlca                                          ; $48f7: $07
    pop bc                                        ; $48f8: $c1
    inc bc                                        ; $48f9: $03
    and b                                         ; $48fa: $a0
    dec b                                         ; $48fb: $05
    ldh a, [$03]                                  ; $48fc: $f0 $03
    ld h, b                                       ; $48fe: $60
    nop                                           ; $48ff: $00
    ld bc, $02f0                                  ; $4900: $01 $f0 $02
    add sp, $01                                   ; $4903: $e8 $01
    db $f4                                        ; $4905: $f4
    and b                                         ; $4906: $a0
    ld hl, sp+$00                                 ; $4907: $f8 $00
    ret nz                                        ; $4909: $c0

    db $fc                                        ; $490a: $fc
    and b                                         ; $490b: $a0
    ld a, [$fcc0]                                 ; $490c: $fa $c0 $fc
    ldh [$7e], a                                  ; $490f: $e0 $7e
    nop                                           ; $4911: $00
    ret nc                                        ; $4912: $d0

    ld a, l                                       ; $4913: $7d
    ldh [$fe], a                                  ; $4914: $e0 $fe
    ret nz                                        ; $4916: $c0

    ld d, h                                       ; $4917: $54
    dec bc                                        ; $4918: $0b
    jr c, jr_0cd_491b                             ; $4919: $38 $00

jr_0cd_491b:
    rlca                                          ; $491b: $07
    ld e, h                                       ; $491c: $5c
    inc bc                                        ; $491d: $03
    ld a, [hl-]                                   ; $491e: $3a
    dec b                                         ; $491f: $05
    inc e                                         ; $4920: $1c
    inc bc                                        ; $4921: $03
    ld l, $00                                     ; $4922: $2e $00
    ld bc, $021d                                  ; $4924: $01 $1d $02
    ld a, $01                                     ; $4927: $3e $01
    ld e, a                                       ; $4929: $5f
    and b                                         ; $492a: $a0
    ccf                                           ; $492b: $3f
    ld b, b                                       ; $492c: $40
    ret nz                                        ; $492d: $c0

    inc b                                         ; $492e: $04
    ld [$e01f], sp                                ; $492f: $08 $1f $e0
    cpl                                           ; $4932: $2f
    ret nc                                        ; $4933: $d0

    rra                                           ; $4934: $1f
    ldh [rP1], a                                  ; $4935: $e0 $00
    ccf                                           ; $4937: $3f
    ret nz                                        ; $4938: $c0

    ld bc, $0080                                  ; $4939: $01 $80 $00
    ld b, b                                       ; $493c: $40
    ld bc, $4080                                  ; $493d: $01 $80 $40
    ld [bc], a                                    ; $4940: $02
    ld d, d                                       ; $4941: $52
    nop                                           ; $4942: $00
    add b                                         ; $4943: $80
    ret nz                                        ; $4944: $c0

    ld b, b                                       ; $4945: $40
    ldh [$80], a                                  ; $4946: $e0 $80
    ret nc                                        ; $4948: $d0

    nop                                           ; $4949: $00
    ld [hl], b                                    ; $494a: $70
    ld bc, $02e0                                  ; $494b: $01 $e0 $02
    ldh a, [rSB]                                  ; $494e: $f0 $01
    and b                                         ; $4950: $a0
    inc bc                                        ; $4951: $03
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    dec b                                         ; $4954: $05
    ld bc, $0203                                  ; $4955: $01 $03 $02
    rlca                                          ; $4958: $07
    ld bc, $000b                                  ; $4959: $01 $0b $00
    cp $e0                                        ; $495c: $fe $e0
    ld a, l                                       ; $495e: $7d
    ldh a, [$7e]                                  ; $495f: $f0 $7e
    ldh a, [$fc]                                  ; $4961: $f0 $fc
    ldh [rNR10], a                                ; $4963: $e0 $10
    ld a, [$fce0]                                 ; $4965: $fa $e0 $fc
    ld e, d                                       ; $4968: $5a
    nop                                           ; $4969: $00
    db $f4                                        ; $496a: $f4
    and b                                         ; $496b: $a0
    rst $38                                       ; $496c: $ff
    ldh [rSC], a                                  ; $496d: $e0 $02
    ld a, a                                       ; $496f: $7f
    ldh a, [$7f]                                  ; $4970: $f0 $7f
    ldh a, [rIE]                                  ; $4972: $f0 $ff
    ldh [rSC], a                                  ; $4974: $e0 $02
    nop                                           ; $4976: $00
    and b                                         ; $4977: $a0
    nop                                           ; $4978: $00
    rst $38                                       ; $4979: $ff
    ret nz                                        ; $497a: $c0

    rst $38                                       ; $497b: $ff
    and b                                         ; $497c: $a0
    and b                                         ; $497d: $a0
    add sp, $40                                   ; $497e: $e8 $40
    push af                                       ; $4980: $f5
    nop                                           ; $4981: $00
    add sp, $7a                                   ; $4982: $e8 $7a
    ldh a, [$bd]                                  ; $4984: $f0 $bd
    ld hl, sp+$5f                                 ; $4986: $f8 $5f
    rst $30                                       ; $4988: $f7
    cpl                                           ; $4989: $2f
    add l                                         ; $498a: $85
    ld a, [bc]                                    ; $498b: $0a
    ld bc, $e801                                  ; $498c: $01 $01 $e8
    ld b, b                                       ; $498f: $40
    ld d, b                                       ; $4990: $50
    ld a, [$4200]                                 ; $4991: $fa $00 $42
    ld [bc], a                                    ; $4994: $02
    ld bc, $0b40                                  ; $4995: $01 $40 $0b
    ld a, [bc]                                    ; $4998: $0a
    ld bc, $007f                                  ; $4999: $01 $7f $00
    xor b                                         ; $499c: $a8
    rla                                           ; $499d: $17
    ld d, b                                       ; $499e: $50
    xor a                                         ; $499f: $af
    nop                                           ; $49a0: $00
    and c                                         ; $49a1: $a1
    ld e, [hl]                                    ; $49a2: $5e
    ld b, d                                       ; $49a3: $42
    cp l                                          ; $49a4: $bd
    dec b                                         ; $49a5: $05
    ld a, [$f40b]                                 ; $49a6: $fa $0b $f4
    nop                                           ; $49a9: $00
    xor a                                         ; $49aa: $af
    ld d, b                                       ; $49ab: $50
    ld a, a                                       ; $49ac: $7f
    add b                                         ; $49ad: $80
    rla                                           ; $49ae: $17
    ld [bc], a                                    ; $49af: $02
    dec bc                                        ; $49b0: $0b
    ld bc, $8545                                  ; $49b1: $01 $45 $85
    ld e, $01                                     ; $49b4: $1e $01
    and b                                         ; $49b6: $a0
    nop                                           ; $49b7: $00
    ret nc                                        ; $49b8: $d0

    ld [$fe00], a                                 ; $49b9: $ea $00 $fe
    ld [hl+], a                                   ; $49bc: $22
    nop                                           ; $49bd: $00
    add b                                         ; $49be: $80
    jr nc, jr_0cd_49fa                            ; $49bf: $30 $39

    pop de                                        ; $49c1: $d1
    ret nz                                        ; $49c2: $c0

    add sp, $40                                   ; $49c3: $e8 $40
    add sp, $40                                   ; $49c5: $e8 $40
    ret nc                                        ; $49c7: $d0

    ld b, b                                       ; $49c8: $40
    ret nz                                        ; $49c9: $c0

    ld b, b                                       ; $49ca: $40
    ld c, b                                       ; $49cb: $48
    rst $38                                       ; $49cc: $ff
    add b                                         ; $49cd: $80
    rst $38                                       ; $49ce: $ff
    ld d, b                                       ; $49cf: $50
    rst $38                                       ; $49d0: $ff
    db $e4                                        ; $49d1: $e4
    nop                                           ; $49d2: $00
    rra                                           ; $49d3: $1f
    ld a, [$bd0f]                                 ; $49d4: $fa $0f $bd
    rla                                           ; $49d7: $17
    ld e, [hl]                                    ; $49d8: $5e
    inc bc                                        ; $49d9: $03
    xor a                                         ; $49da: $af
    ld a, [hl-]                                   ; $49db: $3a
    dec b                                         ; $49dc: $05
    rla                                           ; $49dd: $17
    ld h, b                                       ; $49de: $60
    ld d, c                                       ; $49df: $51
    ld l, $00                                     ; $49e0: $2e $00
    ld [hl], b                                    ; $49e2: $70
    nop                                           ; $49e3: $00
    ld b, b                                       ; $49e4: $40
    ld [hl], b                                    ; $49e5: $70
    ld c, b                                       ; $49e6: $48
    and b                                         ; $49e7: $a0
    ld [bc], a                                    ; $49e8: $02
    rra                                           ; $49e9: $1f
    ld bc, $5700                                  ; $49ea: $01 $00 $57
    ld d, a                                       ; $49ed: $57
    ld d, e                                       ; $49ee: $53
    ld d, e                                       ; $49ef: $53
    rst $10                                       ; $49f0: $d7
    rst $10                                       ; $49f1: $d7
    ld [hl], a                                    ; $49f2: $77
    ld [hl], a                                    ; $49f3: $77
    nop                                           ; $49f4: $00
    ld d, d                                       ; $49f5: $52
    ld d, d                                       ; $49f6: $52
    ld b, a                                       ; $49f7: $47
    ld b, a                                       ; $49f8: $47
    inc d                                         ; $49f9: $14

jr_0cd_49fa:
    inc d                                         ; $49fa: $14
    ld b, b                                       ; $49fb: $40
    ld b, b                                       ; $49fc: $40
    ld h, b                                       ; $49fd: $60
    ld a, a                                       ; $49fe: $7f
    ld bc, $1000                                  ; $49ff: $01 $00 $10
    ld [$5656], sp                                ; $4a02: $08 $56 $56
    ld d, a                                       ; $4a05: $57
    ld d, a                                       ; $4a06: $57
    dec d                                         ; $4a07: $15
    inc b                                         ; $4a08: $04
    dec d                                         ; $4a09: $15
    ld b, b                                       ; $4a0a: $40
    ld b, b                                       ; $4a0b: $40
    rst $38                                       ; $4a0c: $ff
    rst $38                                       ; $4a0d: $ff
    db $10                                        ; $4a0e: $10
    jr jr_0cd_4a63                                ; $4a0f: $18 $52

    ld d, d                                       ; $4a11: $52
    ld [bc], a                                    ; $4a12: $02
    ld d, [hl]                                    ; $4a13: $56
    ld d, [hl]                                    ; $4a14: $56
    inc d                                         ; $4a15: $14
    inc d                                         ; $4a16: $14
    ld b, h                                       ; $4a17: $44
    ld b, h                                       ; $4a18: $44
    db $10                                        ; $4a19: $10
    jr jr_0cd_4a9b                                ; $4a1a: $18 $7f

    ld de, $db7f                                  ; $4a1c: $11 $7f $db
    db $db                                        ; $4a1f: $db
    db $10                                        ; $4a20: $10
    ld [$4d4d], sp                                ; $4a21: $08 $4d $4d
    rst $38                                       ; $4a24: $ff
    ld bc, $3030                                  ; $4a25: $01 $30 $30
    rst $18                                       ; $4a28: $df
    rst $18                                       ; $4a29: $df
    inc b                                         ; $4a2a: $04
    jr jr_0cd_4a2f                                ; $4a2b: $18 $02

    ld e, b                                       ; $4a2d: $58
    and d                                         ; $4a2e: $a2

jr_0cd_4a2f:
    and d                                         ; $4a2f: $a2
    add b                                         ; $4a30: $80
    add b                                         ; $4a31: $80
    inc b                                         ; $4a32: $04
    jr nz, jr_0cd_4a55                            ; $4a33: $20 $20

    add b                                         ; $4a35: $80
    add b                                         ; $4a36: $80
    nop                                           ; $4a37: $00
    ld bc, $0220                                  ; $4a38: $01 $20 $02
    ld [bc], a                                    ; $4a3b: $02
    db $ed                                        ; $4a3c: $ed
    ld a, [bc]                                    ; $4a3d: $0a
    jr z, @+$0a                                   ; $4a3e: $28 $08

    ld hl, sp+$2a                                 ; $4a40: $f8 $2a
    ld e, b                                       ; $4a42: $58
    db $10                                        ; $4a43: $10
    ld b, e                                       ; $4a44: $43
    nop                                           ; $4a45: $00
    ld b, a                                       ; $4a46: $47
    jr z, jr_0cd_4a4a                             ; $4a47: $28 $01

    ld c, d                                       ; $4a49: $4a

jr_0cd_4a4a:
    ld [$0000], sp                                ; $4a4a: $08 $00 $00
    ld [$2200], sp                                ; $4a4d: $08 $00 $22
    nop                                           ; $4a50: $00
    inc b                                         ; $4a51: $04
    nop                                           ; $4a52: $00
    jr nz, @-$7e                                  ; $4a53: $20 $80

jr_0cd_4a55:
    inc b                                         ; $4a55: $04
    nop                                           ; $4a56: $00
    and l                                         ; $4a57: $a5
    nop                                           ; $4a58: $00
    or a                                          ; $4a59: $b7
    nop                                           ; $4a5a: $00
    ld l, e                                       ; $4a5b: $6b
    nop                                           ; $4a5c: $00
    ld e, e                                       ; $4a5d: $5b
    jr nz, jr_0cd_4a60                            ; $4a5e: $20 $00

jr_0cd_4a60:
    db $db                                        ; $4a60: $db
    db $10                                        ; $4a61: $10
    db $10                                        ; $4a62: $10

jr_0cd_4a63:
    inc [hl]                                      ; $4a63: $34
    nop                                           ; $4a64: $00
    or l                                          ; $4a65: $b5
    nop                                           ; $4a66: $00
    or [hl]                                       ; $4a67: $b6
    add b                                         ; $4a68: $80
    stop                                          ; $4a69: $10 $00
    ld a, a                                       ; $4a6b: $7f
    nop                                           ; $4a6c: $00
    ei                                            ; $4a6d: $fb
    nop                                           ; $4a6e: $00
    dec d                                         ; $4a6f: $15
    nop                                           ; $4a70: $00
    cp b                                          ; $4a71: $b8
    ld [bc], a                                    ; $4a72: $02
    nop                                           ; $4a73: $00
    adc h                                         ; $4a74: $8c
    nop                                           ; $4a75: $00
    xor l                                         ; $4a76: $ad
    nop                                           ; $4a77: $00
    cp a                                          ; $4a78: $bf
    jr nz, jr_0cd_4a7b                            ; $4a79: $20 $00

jr_0cd_4a7b:
    ld e, a                                       ; $4a7b: $5f
    add b                                         ; $4a7c: $80
    stop                                          ; $4a7d: $10 $00
    ld a, [hl+]                                   ; $4a7f: $2a
    nop                                           ; $4a80: $00
    adc a                                         ; $4a81: $8f
    nop                                           ; $4a82: $00
    and a                                         ; $4a83: $a7
    nop                                           ; $4a84: $00
    ld l, l                                       ; $4a85: $6d
    xor e                                         ; $4a86: $ab
    ld [bc], a                                    ; $4a87: $02
    nop                                           ; $4a88: $00
    sbc $1e                                       ; $4a89: $de $1e
    nop                                           ; $4a8b: $00
    rst $38                                       ; $4a8c: $ff
    inc h                                         ; $4a8d: $24
    nop                                           ; $4a8e: $00
    rst $18                                       ; $4a8f: $df
    ld b, $00                                     ; $4a90: $06 $00

jr_0cd_4a92:
    ld [bc], a                                    ; $4a92: $02
    jr c, jr_0cd_4af9                             ; $4a93: $38 $64

    ld a, a                                       ; $4a95: $7f
    ld c, $50                                     ; $4a96: $0e $50
    inc c                                         ; $4a98: $0c
    add sp, -$09                                  ; $4a99: $e8 $f7

jr_0cd_4a9b:
    ld [$283c], sp                                ; $4a9b: $08 $3c $28
    cp $01                                        ; $4a9e: $fe $01
    ld [bc], a                                    ; $4aa0: $02
    ld a, [$bf05]                                 ; $4aa1: $fa $05 $bf
    ld b, b                                       ; $4aa4: $40
    db $fc                                        ; $4aa5: $fc
    inc bc                                        ; $4aa6: $03
    inc d                                         ; $4aa7: $14
    ld [$00fd], sp                                ; $4aa8: $08 $fd $00
    ld [bc], a                                    ; $4aab: $02
    or a                                          ; $4aac: $b7
    ld c, b                                       ; $4aad: $48
    ld d, l                                       ; $4aae: $55
    xor d                                         ; $4aaf: $aa
    ret nc                                        ; $4ab0: $d0

    cpl                                           ; $4ab1: $2f
    sub l                                         ; $4ab2: $95
    db $10                                        ; $4ab3: $10
    ld l, d                                       ; $4ab4: $6a
    push de                                       ; $4ab5: $d5
    ld a, [hl+]                                   ; $4ab6: $2a
    db $10                                        ; $4ab7: $10
    jr @+$79                                      ; $4ab8: $18 $77

    adc b                                         ; $4aba: $88
    push de                                       ; $4abb: $d5
    ld a, [hl+]                                   ; $4abc: $2a
    add b                                         ; $4abd: $80
    db $10                                        ; $4abe: $10
    ld [$6f90], sp                                ; $4abf: $08 $90 $6f
    rst $30                                       ; $4ac2: $f7
    ld [$08f7], sp                                ; $4ac3: $08 $f7 $08
    cp l                                          ; $4ac6: $bd
    db $10                                        ; $4ac7: $10
    ld b, d                                       ; $4ac8: $42
    or a                                          ; $4ac9: $b7
    ld c, b                                       ; $4aca: $48
    db $10                                        ; $4acb: $10
    jr @-$6d                                      ; $4acc: $18 $91

    ld l, [hl]                                    ; $4ace: $6e
    or l                                          ; $4acf: $b5
    ld c, d                                       ; $4ad0: $4a
    nop                                           ; $4ad1: $00
    or [hl]                                       ; $4ad2: $b6
    ld c, c                                       ; $4ad3: $49
    sbc h                                         ; $4ad4: $9c
    ld h, e                                       ; $4ad5: $63
    sub a                                         ; $4ad6: $97
    ld l, b                                       ; $4ad7: $68
    sub l                                         ; $4ad8: $95
    ld l, d                                       ; $4ad9: $6a
    nop                                           ; $4ada: $00
    pop de                                        ; $4adb: $d1
    ld l, $05                                     ; $4adc: $2e $05
    ld a, [$ef10]                                 ; $4ade: $fa $10 $ef
    add c                                         ; $4ae1: $81
    ld a, [hl]                                    ; $4ae2: $7e
    ld [bc], a                                    ; $4ae3: $02
    sub c                                         ; $4ae4: $91
    ld l, [hl]                                    ; $4ae5: $6e
    nop                                           ; $4ae6: $00
    rst $38                                       ; $4ae7: $ff
    add c                                         ; $4ae8: $81
    ld a, [hl]                                    ; $4ae9: $7e
    sub l                                         ; $4aea: $95
    jr z, jr_0cd_4b0f                             ; $4aeb: $28 $22

    ld [hl+], a                                   ; $4aed: $22
    db $dd                                        ; $4aee: $dd
    jr nz, jr_0cd_4a92                            ; $4aef: $20 $a1

    ld e, b                                       ; $4af1: $58
    rst $38                                       ; $4af2: $ff
    ld de, $b1ee                                  ; $4af3: $11 $ee $b1
    ld c, b                                       ; $4af6: $48
    db $10                                        ; $4af7: $10
    ld l, e                                       ; $4af8: $6b

jr_0cd_4af9:
    rst $28                                       ; $4af9: $ef
    or c                                          ; $4afa: $b1
    ld hl, sp-$1f                                 ; $4afb: $f8 $e1
    jr c, jr_0cd_4b00                             ; $4afd: $38 $01

    db $dd                                        ; $4aff: $dd

jr_0cd_4b00:
    ld d, b                                       ; $4b00: $50
    ld [$0002], sp                                ; $4b01: $08 $02 $00
    rst $28                                       ; $4b04: $ef
    ld e, b                                       ; $4b05: $58
    ld e, b                                       ; $4b06: $58
    add hl, bc                                    ; $4b07: $09
    dec bc                                        ; $4b08: $0b
    ld b, c                                       ; $4b09: $41
    ld hl, $002e                                  ; $4b0a: $21 $2e $00
    cp a                                          ; $4b0d: $bf
    nop                                           ; $4b0e: $00

jr_0cd_4b0f:
    rst $38                                       ; $4b0f: $ff
    sub c                                         ; $4b10: $91
    rst $38                                       ; $4b11: $ff
    ld bc, $ffd5                                  ; $4b12: $01 $d5 $ff
    rlca                                          ; $4b15: $07
    rst $38                                       ; $4b16: $ff
    ld d, l                                       ; $4b17: $55
    rst $38                                       ; $4b18: $ff
    sub a                                         ; $4b19: $97
    ld [$4100], sp                                ; $4b1a: $08 $00 $41
    rst $18                                       ; $4b1d: $df
    dec hl                                        ; $4b1e: $2b
    ld bc, $ff0a                                  ; $4b1f: $01 $0a $ff
    dec hl                                        ; $4b22: $2b
    rst $38                                       ; $4b23: $ff
    ld l, c                                       ; $4b24: $69
    inc b                                         ; $4b25: $04
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    xor l                                         ; $4b28: $ad
    rst $38                                       ; $4b29: $ff
    ld l, l                                       ; $4b2a: $6d
    rst $38                                       ; $4b2b: $ff
    db $fd                                        ; $4b2c: $fd
    rst $38                                       ; $4b2d: $ff
    ld b, c                                       ; $4b2e: $41
    rst $38                                       ; $4b2f: $ff
    ld bc, $ff4b                                  ; $4b30: $01 $4b $ff
    xor e                                         ; $4b33: $ab
    rst $38                                       ; $4b34: $ff
    db $eb                                        ; $4b35: $eb
    rst $38                                       ; $4b36: $ff
    cp e                                          ; $4b37: $bb
    stop                                          ; $4b38: $10 $00
    inc b                                         ; $4b3a: $04
    cp l                                          ; $4b3b: $bd
    rst $38                                       ; $4b3c: $ff
    cp a                                          ; $4b3d: $bf
    rst $38                                       ; $4b3e: $ff
    inc hl                                        ; $4b3f: $23
    inc [hl]                                      ; $4b40: $34
    nop                                           ; $4b41: $00
    xor e                                         ; $4b42: $ab
    rst $38                                       ; $4b43: $ff
    ld d, b                                       ; $4b44: $50
    jp hl                                         ; $4b45: $e9


    stop                                          ; $4b46: $10 $00
    db $ed                                        ; $4b48: $ed
    ld [bc], a                                    ; $4b49: $02
    nop                                           ; $4b4a: $00
    cp a                                          ; $4b4b: $bf
    rst $38                                       ; $4b4c: $ff
    or a                                          ; $4b4d: $b7
    rst $38                                       ; $4b4e: $ff
    ld [de], a                                    ; $4b4f: $12
    ld [hl], a                                    ; $4b50: $77
    rst $38                                       ; $4b51: $ff
    ld a, a                                       ; $4b52: $7f
    ld e, $0a                                     ; $4b53: $1e $0a
    rst $38                                       ; $4b55: $ff
    ld e, a                                       ; $4b56: $5f

jr_0cd_4b57:
    dec hl                                        ; $4b57: $2b
    ld [de], a                                    ; $4b58: $12
    db $ed                                        ; $4b59: $ed
    xor [hl]                                      ; $4b5a: $ae
    ld c, $00                                     ; $4b5b: $0e $00
    db $fd                                        ; $4b5d: $fd
    dec h                                         ; $4b5e: $25
    ld b, d                                       ; $4b5f: $42
    rst $28                                       ; $4b60: $ef
    ld sp, $1c62                                  ; $4b61: $31 $62 $1c
    ld c, b                                       ; $4b64: $48
    ld e, h                                       ; $4b65: $5c
    ld a, [bc]                                    ; $4b66: $0a
    or b                                          ; $4b67: $b0
    inc bc                                        ; $4b68: $03
    call nz, Call_0cd_5101                        ; $4b69: $c4 $01 $51
    nop                                           ; $4b6c: $00
    ld bc, $2090                                  ; $4b6d: $01 $90 $20
    ld bc, $0000                                  ; $4b70: $01 $00 $00
    nop                                           ; $4b73: $00
    inc b                                         ; $4b74: $04
    ld bc, $b600                                  ; $4b75: $01 $00 $b6
    jr nz, jr_0cd_4bb2                            ; $4b78: $20 $38

    db $10                                        ; $4b7a: $10
    ld bc, $1c00                                  ; $4b7b: $01 $00 $1c
    jr c, @+$0a                                   ; $4b7e: $38 $08

    ld bc, $3c00                                  ; $4b80: $01 $00 $3c
    ld [$00ff], sp                                ; $4b83: $08 $ff $00
    ld bc, $62ff                                  ; $4b86: $01 $ff $62
    rst $38                                       ; $4b89: $ff
    dec de                                        ; $4b8a: $1b
    rst $38                                       ; $4b8b: $ff
    dec l                                         ; $4b8c: $2d
    rst $38                                       ; $4b8d: $ff
    dec b                                         ; $4b8e: $05
    rrca                                          ; $4b8f: $0f
    rst $38                                       ; $4b90: $ff
    inc e                                         ; $4b91: $1c
    rst $38                                       ; $4b92: $ff
    ld b, b                                       ; $4b93: $40
    ld [bc], a                                    ; $4b94: $02
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    ld [bc], a                                    ; $4b97: $02
    db $10                                        ; $4b98: $10
    ld b, b                                       ; $4b99: $40
    inc b                                         ; $4b9a: $04
    ld [bc], a                                    ; $4b9b: $02
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    rst $38                                       ; $4b9e: $ff
    ld d, b                                       ; $4b9f: $50
    rst $38                                       ; $4ba0: $ff
    sub b                                         ; $4ba1: $90
    rst $38                                       ; $4ba2: $ff
    ld d, b                                       ; $4ba3: $50
    jr nz, jr_0cd_4ba8                            ; $4ba4: $20 $02

    nop                                           ; $4ba6: $00
    ld [bc], a                                    ; $4ba7: $02

jr_0cd_4ba8:
    ld [bc], a                                    ; $4ba8: $02
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    rst $38                                       ; $4bab: $ff
    ld [$16ff], sp                                ; $4bac: $08 $ff $16
    jr @+$01                                      ; $4baf: $18 $ff

    ret nc                                        ; $4bb1: $d0

jr_0cd_4bb2:
    jr nz, @+$12                                  ; $4bb2: $20 $10

    db $10                                        ; $4bb4: $10
    ld [bc], a                                    ; $4bb5: $02
    nop                                           ; $4bb6: $00
    inc d                                         ; $4bb7: $14
    ld [$2a0c], sp                                ; $4bb8: $08 $0c $2a
    rst $38                                       ; $4bbb: $ff
    inc [hl]                                      ; $4bbc: $34
    ld b, b                                       ; $4bbd: $40
    nop                                           ; $4bbe: $00
    ld [bc], a                                    ; $4bbf: $02
    ld b, b                                       ; $4bc0: $40
    ld d, b                                       ; $4bc1: $50
    add d                                         ; $4bc2: $82
    ld l, $00                                     ; $4bc3: $2e $00
    add $0f                                       ; $4bc5: $c6 $0f
    rst $38                                       ; $4bc7: $ff
    inc bc                                        ; $4bc8: $03
    rst $38                                       ; $4bc9: $ff
    ld a, [bc]                                    ; $4bca: $0a
    ld b, b                                       ; $4bcb: $40
    jr nz, jr_0cd_4c1c                            ; $4bcc: $20 $4e

    jr c, jr_0cd_4c10                             ; $4bce: $38 $40

    jr c, jr_0cd_4c36                             ; $4bd0: $38 $64

    ld [$40ae], sp                                ; $4bd2: $08 $ae $40
    jr z, jr_0cd_4b57                             ; $4bd5: $28 $80

    jr nc, jr_0cd_4be9                            ; $4bd7: $30 $10

    dec b                                         ; $4bd9: $05
    ld h, d                                       ; $4bda: $62
    db $10                                        ; $4bdb: $10
    jr nc, @+$2a                                  ; $4bdc: $30 $28

    add h                                         ; $4bde: $84
    jr jr_0cd_4bf1                                ; $4bdf: $18 $10

    and e                                         ; $4be1: $a3
    ld [hl], b                                    ; $4be2: $70
    nop                                           ; $4be3: $00
    dec bc                                        ; $4be4: $0b
    halt                                          ; $4be5: $76
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    rst $38                                       ; $4be8: $ff

jr_0cd_4be9:
    inc d                                         ; $4be9: $14
    ld a, h                                       ; $4bea: $7c
    nop                                           ; $4beb: $00
    ld [hl], b                                    ; $4bec: $70
    jr z, jr_0cd_4bff                             ; $4bed: $28 $10

    dec e                                         ; $4bef: $1d
    rst $38                                       ; $4bf0: $ff

jr_0cd_4bf1:
    inc sp                                        ; $4bf1: $33
    ld e, [hl]                                    ; $4bf2: $5e
    nop                                           ; $4bf3: $00
    pop bc                                        ; $4bf4: $c1
    rst $38                                       ; $4bf5: $ff
    and c                                         ; $4bf6: $a1
    rst $38                                       ; $4bf7: $ff
    nop                                           ; $4bf8: $00
    push bc                                       ; $4bf9: $c5
    rst $38                                       ; $4bfa: $ff
    ld [hl-], a                                   ; $4bfb: $32
    rst $38                                       ; $4bfc: $ff
    add c                                         ; $4bfd: $81
    rst $38                                       ; $4bfe: $ff

jr_0cd_4bff:
    ret nz                                        ; $4bff: $c0

    rst $38                                       ; $4c00: $ff
    dec d                                         ; $4c01: $15
    pop de                                        ; $4c02: $d1
    rst $38                                       ; $4c03: $ff
    call c, Call_000_0006                         ; $4c04: $dc $06 $00
    pop bc                                        ; $4c07: $c1
    inc d                                         ; $4c08: $14
    nop                                           ; $4c09: $00
    db $ec                                        ; $4c0a: $ec
    jr jr_0cd_4c0d                                ; $4c0b: $18 $00

jr_0cd_4c0d:
    nop                                           ; $4c0d: $00
    ld a, b                                       ; $4c0e: $78
    rst $38                                       ; $4c0f: $ff

jr_0cd_4c10:
    ld [hl], b                                    ; $4c10: $70
    rst $38                                       ; $4c11: $ff
    db $f4                                        ; $4c12: $f4
    rst $38                                       ; $4c13: $ff
    inc l                                         ; $4c14: $2c
    rst $38                                       ; $4c15: $ff
    db $10                                        ; $4c16: $10
    inc de                                        ; $4c17: $13
    rst $38                                       ; $4c18: $ff
    ld h, a                                       ; $4c19: $67
    ret c                                         ; $4c1a: $d8

    nop                                           ; $4c1b: $00

jr_0cd_4c1c:
    rst $08                                       ; $4c1c: $cf
    rst $38                                       ; $4c1d: $ff
    ld l, $ff                                     ; $4c1e: $2e $ff
    nop                                           ; $4c20: $00
    ld a, h                                       ; $4c21: $7c
    rst $38                                       ; $4c22: $ff
    inc a                                         ; $4c23: $3c
    rst $38                                       ; $4c24: $ff
    sbc [hl]                                      ; $4c25: $9e
    rst $38                                       ; $4c26: $ff
    ld [de], a                                    ; $4c27: $12
    rst $38                                       ; $4c28: $ff
    nop                                           ; $4c29: $00
    or a                                          ; $4c2a: $b7
    rst $38                                       ; $4c2b: $ff
    add a                                         ; $4c2c: $87
    rst $38                                       ; $4c2d: $ff
    ld a, [bc]                                    ; $4c2e: $0a
    ld d, [hl]                                    ; $4c2f: $56
    rst $38                                       ; $4c30: $ff
    ld e, d                                       ; $4c31: $5a
    nop                                           ; $4c32: $00
    rst $38                                       ; $4c33: $ff
    ld hl, sp-$01                                 ; $4c34: $f8 $ff

jr_0cd_4c36:
    ld a, e                                       ; $4c36: $7b
    rst $38                                       ; $4c37: $ff
    dec a                                         ; $4c38: $3d
    rst $38                                       ; $4c39: $ff
    db $fc                                        ; $4c3a: $fc
    ld a, [bc]                                    ; $4c3b: $0a
    rst $38                                       ; $4c3c: $ff
    db $fd                                        ; $4c3d: $fd
    rst $38                                       ; $4c3e: $ff
    cp e                                          ; $4c3f: $bb
    ld e, e                                       ; $4c40: $5b
    nop                                           ; $4c41: $00
    ld b, h                                       ; $4c42: $44
    ld c, l                                       ; $4c43: $4d
    nop                                           ; $4c44: $00
    and e                                         ; $4c45: $a3
    add d                                         ; $4c46: $82
    ld c, l                                       ; $4c47: $4d
    nop                                           ; $4c48: $00
    or e                                          ; $4c49: $b3
    rst $38                                       ; $4c4a: $ff
    sub a                                         ; $4c4b: $97
    rst $38                                       ; $4c4c: $ff
    rst $38                                       ; $4c4d: $ff
    ld sp, $f700                                  ; $4c4e: $31 $00 $f7
    adc b                                         ; $4c51: $88
    dec [hl]                                      ; $4c52: $35
    nop                                           ; $4c53: $00
    rst $00                                       ; $4c54: $c7
    rst $38                                       ; $4c55: $ff

jr_0cd_4c56:
    and a                                         ; $4c56: $a7
    dec l                                         ; $4c57: $2d
    nop                                           ; $4c58: $00
    ei                                            ; $4c59: $fb
    rst $38                                       ; $4c5a: $ff
    rst $18                                       ; $4c5b: $df
    nop                                           ; $4c5c: $00
    rst $38                                       ; $4c5d: $ff
    inc h                                         ; $4c5e: $24
    rst $38                                       ; $4c5f: $ff
    jp z, $c2ff                                   ; $4c60: $ca $ff $c2

    rst $38                                       ; $4c63: $ff
    add l                                         ; $4c64: $85
    adc b                                         ; $4c65: $88
    ld c, c                                       ; $4c66: $49

jr_0cd_4c67:
    nop                                           ; $4c67: $00
    add [hl]                                      ; $4c68: $86
    rst $38                                       ; $4c69: $ff
    ld l, [hl]                                    ; $4c6a: $6e
    jr nz, jr_0cd_4c6d                            ; $4c6b: $20 $00

jr_0cd_4c6d:
    inc h                                         ; $4c6d: $24
    rst $38                                       ; $4c6e: $ff
    ld d, e                                       ; $4c6f: $53
    jr nz, @+$01                                  ; $4c70: $20 $ff

    ld b, e                                       ; $4c72: $43
    ld a, l                                       ; $4c73: $7d
    nop                                           ; $4c74: $00
    di                                            ; $4c75: $f3
    rst $38                                       ; $4c76: $ff
    pop hl                                        ; $4c77: $e1
    rst $38                                       ; $4c78: $ff
    or $ab                                        ; $4c79: $f6 $ab
    jr nc, jr_0cd_4c7d                            ; $4c7b: $30 $00

jr_0cd_4c7d:
    ld sp, hl                                     ; $4c7d: $f9
    inc [hl]                                      ; $4c7e: $34
    nop                                           ; $4c7f: $00
    rst $20                                       ; $4c80: $e7
    jr c, jr_0cd_4c83                             ; $4c81: $38 $00

jr_0cd_4c83:
    rst $30                                       ; $4c83: $f7
    inc a                                         ; $4c84: $3c
    nop                                           ; $4c85: $00
    inc bc                                        ; $4c86: $03
    jr jr_0cd_4ce0                                ; $4c87: $18 $57

    di                                            ; $4c89: $f3
    ld b, [hl]                                    ; $4c8a: $46
    nop                                           ; $4c8b: $00
    rst $18                                       ; $4c8c: $df
    ld c, $30                                     ; $4c8d: $0e $30
    rst $18                                       ; $4c8f: $df
    ld d, b                                       ; $4c90: $50
    nop                                           ; $4c91: $00
    inc e                                         ; $4c92: $1c
    jr c, @+$22                                   ; $4c93: $38 $20

    jr z, jr_0cd_4cd7                             ; $4c95: $28 $40

    sbc $2e                                       ; $4c97: $de $2e
    jr nc, jr_0cd_4c56                            ; $4c99: $30 $bb

    cp e                                          ; $4c9b: $bb
    rst $38                                       ; $4c9c: $ff
    rst $38                                       ; $4c9d: $ff
    xor $ee                                       ; $4c9e: $ee $ee
    add c                                         ; $4ca0: $81
    ld [$ee08], sp                                ; $4ca1: $08 $08 $ee
    xor $55                                       ; $4ca4: $ee $55
    ld d, l                                       ; $4ca6: $55
    xor d                                         ; $4ca7: $aa
    xor d                                         ; $4ca8: $aa

jr_0cd_4ca9:
    jr jr_0cd_4d13                                ; $4ca9: $18 $68

    add c                                         ; $4cab: $81
    inc d                                         ; $4cac: $14
    ld [$5555], sp                                ; $4cad: $08 $55 $55
    ld [hl+], a                                   ; $4cb0: $22
    ld [hl+], a                                   ; $4cb1: $22
    adc b                                         ; $4cb2: $88
    adc b                                         ; $4cb3: $88
    sub $09                                       ; $4cb4: $d6 $09
    ccf                                           ; $4cb6: $3f
    nop                                           ; $4cb7: $00
    nop                                           ; $4cb8: $00
    jr z, jr_0cd_4ce3                             ; $4cb9: $28 $28

    jr jr_0cd_4ce5                                ; $4cbb: $18 $28

    nop                                           ; $4cbd: $00
    ld c, d                                       ; $4cbe: $4a
    rst $18                                       ; $4cbf: $df
    add hl, bc                                    ; $4cc0: $09
    jr z, jr_0cd_4ceb                             ; $4cc1: $28 $28

    db $10                                        ; $4cc3: $10
    adc b                                         ; $4cc4: $88
    push de                                       ; $4cc5: $d5
    inc l                                         ; $4cc6: $2c
    ld a, [bc]                                    ; $4cc7: $0a
    jr nz, jr_0cd_4d12                            ; $4cc8: $20 $48

    ld [bc], a                                    ; $4cca: $02
    jr nc, jr_0cd_4d2d                            ; $4ccb: $30 $60

    ld b, b                                       ; $4ccd: $40
    ld c, l                                       ; $4cce: $4d
    ld [hl-], a                                   ; $4ccf: $32
    ld h, b                                       ; $4cd0: $60
    ld [bc], a                                    ; $4cd1: $02
    nop                                           ; $4cd2: $00
    and b                                         ; $4cd3: $a0
    ld e, $08                                     ; $4cd4: $1e $08
    inc de                                        ; $4cd6: $13

jr_0cd_4cd7:
    ld e, a                                       ; $4cd7: $5f
    ld [hl-], a                                   ; $4cd8: $32
    ld hl, $3100                                  ; $4cd9: $21 $00 $31
    nop                                           ; $4cdc: $00
    jr nc, jr_0cd_4c67                            ; $4cdd: $30 $88

    ld l, l                                       ; $4cdf: $6d

jr_0cd_4ce0:
    ld [hl-], a                                   ; $4ce0: $32
    inc b                                         ; $4ce1: $04
    nop                                           ; $4ce2: $00

jr_0cd_4ce3:
    add b                                         ; $4ce3: $80
    ld [bc], a                                    ; $4ce4: $02

jr_0cd_4ce5:
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00

jr_0cd_4ce8:
    jr jr_0cd_4ca9                                ; $4ce8: $18 $bf

    ld a, a                                       ; $4cea: $7f

jr_0cd_4ceb:
    ld [hl+], a                                   ; $4ceb: $22
    jr nc, @+$1e                                  ; $4cec: $30 $1c

    jr nz, jr_0cd_4d42                            ; $4cee: $20 $52

    ld [$0a65], sp                                ; $4cf0: $08 $65 $0a
    jr nz, jr_0cd_4d4d                            ; $4cf3: $20 $58

    adc a                                         ; $4cf5: $8f
    ld [$2840], sp                                ; $4cf6: $08 $40 $28
    ld b, h                                       ; $4cf9: $44
    inc bc                                        ; $4cfa: $03
    ld e, [hl]                                    ; $4cfb: $5e
    db $10                                        ; $4cfc: $10
    jr nz, jr_0cd_4cff                            ; $4cfd: $20 $00

jr_0cd_4cff:
    inc sp                                        ; $4cff: $33
    ld l, b                                       ; $4d00: $68
    ld [bc], a                                    ; $4d01: $02
    sbc l                                         ; $4d02: $9d
    nop                                           ; $4d03: $00
    ld b, b                                       ; $4d04: $40
    sbc a                                         ; $4d05: $9f
    cp a                                          ; $4d06: $bf
    ld [bc], a                                    ; $4d07: $02
    ld [$0100], sp                                ; $4d08: $08 $00 $01
    nop                                           ; $4d0b: $00
    pop bc                                        ; $4d0c: $c1
    nop                                           ; $4d0d: $00
    inc d                                         ; $4d0e: $14
    di                                            ; $4d0f: $f3
    nop                                           ; $4d10: $00
    sbc [hl]                                      ; $4d11: $9e

jr_0cd_4d12:
    ld [bc], a                                    ; $4d12: $02

jr_0cd_4d13:
    nop                                           ; $4d13: $00
    rst $30                                       ; $4d14: $f7
    ld d, d                                       ; $4d15: $52
    db $10                                        ; $4d16: $10
    add b                                         ; $4d17: $80
    nop                                           ; $4d18: $00
    ld b, $81                                     ; $4d19: $06 $81
    nop                                           ; $4d1b: $00
    reti                                          ; $4d1c: $d9


    nop                                           ; $4d1d: $00
    ld sp, hl                                     ; $4d1e: $f9
    adc d                                         ; $4d1f: $8a
    ld [de], a                                    ; $4d20: $12
    ld a, $08                                     ; $4d21: $3e $08
    ld b, $00                                     ; $4d23: $06 $00
    nop                                           ; $4d25: $00
    add [hl]                                      ; $4d26: $86
    nop                                           ; $4d27: $00
    rst $08                                       ; $4d28: $cf
    nop                                           ; $4d29: $00
    db $fd                                        ; $4d2a: $fd
    nop                                           ; $4d2b: $00
    ccf                                           ; $4d2c: $3f

jr_0cd_4d2d:
    jr z, jr_0cd_4d2f                             ; $4d2d: $28 $00

jr_0cd_4d2f:
    add hl, sp                                    ; $4d2f: $39
    sbc [hl]                                      ; $4d30: $9e
    ld [bc], a                                    ; $4d31: $02
    rst $30                                       ; $4d32: $f7
    ld [de], a                                    ; $4d33: $12
    ld a, [bc]                                    ; $4d34: $0a
    nop                                           ; $4d35: $00
    rst $08                                       ; $4d36: $cf
    jr nc, jr_0cd_4d5b                            ; $4d37: $30 $22

    rst $08                                       ; $4d39: $cf
    jr nc, jr_0cd_4ce8                            ; $4d3a: $30 $ac

    ld a, [de]                                    ; $4d3c: $1a
    db $fd                                        ; $4d3d: $fd
    ld [bc], a                                    ; $4d3e: $02
    ld a, a                                       ; $4d3f: $7f
    or h                                          ; $4d40: $b4
    ld [bc], a                                    ; $4d41: $02

jr_0cd_4d42:
    rst $20                                       ; $4d42: $e7
    nop                                           ; $4d43: $00
    jr jr_0cd_4d2d                                ; $4d44: $18 $e7

    jr jr_0cd_4d87                                ; $4d46: $18 $3f

    ret nz                                        ; $4d48: $c0

    ccf                                           ; $4d49: $3f
    ret nz                                        ; $4d4a: $c0

    di                                            ; $4d4b: $f3
    add b                                         ; $4d4c: $80

jr_0cd_4d4d:
    ld c, d                                       ; $4d4d: $4a
    nop                                           ; $4d4e: $00
    rst $38                                       ; $4d4f: $ff
    nop                                           ; $4d50: $00
    rst $18                                       ; $4d51: $df
    nop                                           ; $4d52: $00
    cp $01                                        ; $4d53: $fe $01
    rst $38                                       ; $4d55: $ff
    inc b                                         ; $4d56: $04
    nop                                           ; $4d57: $00
    di                                            ; $4d58: $f3
    inc c                                         ; $4d59: $0c
    or e                                          ; $4d5a: $b3

jr_0cd_4d5b:
    ld c, h                                       ; $4d5b: $4c
    ld b, [hl]                                    ; $4d5c: $46
    ld [$01be], sp                                ; $4d5d: $08 $be $01
    ret nz                                        ; $4d60: $c0

    ld e, $08                                     ; $4d61: $1e $08
    ld [hl], $18                                  ; $4d63: $36 $18
    di                                            ; $4d65: $f3
    inc c                                         ; $4d66: $0c
    ld [hl], e                                    ; $4d67: $73
    adc h                                         ; $4d68: $8c
    inc a                                         ; $4d69: $3c
    jp $3c20                                      ; $4d6a: $c3 $20 $3c


    jp Jump_000_2812                              ; $4d6d: $c3 $12 $28


    ld sp, hl                                     ; $4d70: $f9
    ld b, $f9                                     ; $4d71: $06 $f9
    ld b, $ef                                     ; $4d73: $06 $ef
    db $10                                        ; $4d75: $10
    db $10                                        ; $4d76: $10
    rst $28                                       ; $4d77: $ef
    db $10                                        ; $4d78: $10
    ld hl, sp+$0a                                 ; $4d79: $f8 $0a
    call z, $cc33                                 ; $4d7b: $cc $33 $cc

jr_0cd_4d7e:
    inc sp                                        ; $4d7e: $33
    add b                                         ; $4d7f: $80
    ld [$9b48], sp                                ; $4d80: $08 $48 $9b
    ld h, h                                       ; $4d83: $64
    sbc a                                         ; $4d84: $9f
    ld h, b                                       ; $4d85: $60
    rst $08                                       ; $4d86: $cf

jr_0cd_4d87:
    jr nc, jr_0cd_4d87                            ; $4d87: $30 $fe

    nop                                           ; $4d89: $00
    ld bc, $01fe                                  ; $4d8a: $01 $fe $01
    sbc a                                         ; $4d8d: $9f
    ld h, b                                       ; $4d8e: $60
    sbc c                                         ; $4d8f: $99
    ld h, [hl]                                    ; $4d90: $66
    ld sp, hl                                     ; $4d91: $f9
    ld b, b                                       ; $4d92: $40
    ld b, $1c                                     ; $4d93: $06 $1c
    dec bc                                        ; $4d95: $0b
    scf                                           ; $4d96: $37
    ret z                                         ; $4d97: $c8

jr_0cd_4d98:
    inc a                                         ; $4d98: $3c
    jp Jump_000_03fc                              ; $4d99: $c3 $fc $03


    inc bc                                        ; $4d9c: $03
    ret z                                         ; $4d9d: $c8

    scf                                           ; $4d9e: $37
    rst $08                                       ; $4d9f: $cf
    jr nc, jr_0cd_4db0                            ; $4da0: $30 $0e

    pop af                                        ; $4da2: $f1
    dec hl                                        ; $4da3: $2b
    dec bc                                        ; $4da4: $0b
    ld l, h                                       ; $4da5: $6c
    nop                                           ; $4da6: $00
    nop                                           ; $4da7: $00

jr_0cd_4da8:
    jr nz, jr_0cd_4e23                            ; $4da8: $20 $79

    add [hl]                                      ; $4daa: $86
    ld sp, hl                                     ; $4dab: $f9
    ld b, $9f                                     ; $4dac: $06 $9f
    ld h, b                                       ; $4dae: $60
    add hl, bc                                    ; $4daf: $09

jr_0cd_4db0:
    ld b, b                                       ; $4db0: $40
    or $3b                                        ; $4db1: $f6 $3b
    dec bc                                        ; $4db3: $0b
    rst $00                                       ; $4db4: $c7
    jr c, jr_0cd_4d7e                             ; $4db5: $38 $c7

    jr c, jr_0cd_4d87                             ; $4db7: $38 $ce

    ld sp, $fc02                                  ; $4db9: $31 $02 $fc
    inc bc                                        ; $4dbc: $03
    ld a, b                                       ; $4dbd: $78
    add a                                         ; $4dbe: $87
    jr jr_0cd_4da8                                ; $4dbf: $18 $e7

    ld c, e                                       ; $4dc1: $4b
    dec bc                                        ; $4dc2: $0b
    call Call_000_3200                            ; $4dc3: $cd $00 $32
    adc h                                         ; $4dc6: $8c
    ld [hl], e                                    ; $4dc7: $73
    sbc a                                         ; $4dc8: $9f
    ld h, b                                       ; $4dc9: $60
    cp $01                                        ; $4dca: $fe $01
    and $10                                       ; $4dcc: $e6 $10
    add hl, de                                    ; $4dce: $19
    jr c, jr_0cd_4d98                             ; $4dcf: $38 $c7

    ld e, e                                       ; $4dd1: $5b
    dec bc                                        ; $4dd2: $0b

jr_0cd_4dd3:
    ret nz                                        ; $4dd3: $c0

    inc bc                                        ; $4dd4: $03
    sbc h                                         ; $4dd5: $9c
    ld [bc], a                                    ; $4dd6: $02
    jr nz, jr_0cd_4dd9                            ; $4dd7: $20 $00

jr_0cd_4dd9:
    rst $38                                       ; $4dd9: $ff
    ld [bc], a                                    ; $4dda: $02
    ld [$f708], sp                                ; $4ddb: $08 $08 $f7
    nop                                           ; $4dde: $00
    rst $38                                       ; $4ddf: $ff
    ld b, d                                       ; $4de0: $42
    inc b                                         ; $4de1: $04
    cp l                                          ; $4de2: $bd
    nop                                           ; $4de3: $00
    rst $38                                       ; $4de4: $ff
    ld h, $d9                                     ; $4de5: $26 $d9
    db $10                                        ; $4de7: $10
    jr @+$03                                      ; $4de8: $18 $01

    cp $00                                        ; $4dea: $fe $00
    db $10                                        ; $4dec: $10
    rst $28                                       ; $4ded: $ef
    ld [bc], a                                    ; $4dee: $02
    db $fd                                        ; $4def: $fd
    ld h, b                                       ; $4df0: $60
    sbc a                                         ; $4df1: $9f
    jr nz, jr_0cd_4dd3                            ; $4df2: $20 $df

    nop                                           ; $4df4: $00
    or $f1                                        ; $4df5: $f6 $f1
    db $ed                                        ; $4df7: $ed
    ld [c], a                                     ; $4df8: $e2
    add sp, -$19                                  ; $4df9: $e8 $e7
    db $f4                                        ; $4dfb: $f4
    di                                            ; $4dfc: $f3
    nop                                           ; $4dfd: $00
    db $ec                                        ; $4dfe: $ec
    db $e3                                        ; $4dff: $e3
    and $e1                                       ; $4e00: $e6 $e1
    ld a, [c]                                     ; $4e02: $f2
    pop af                                        ; $4e03: $f1
    ld sp, hl                                     ; $4e04: $f9
    ld hl, sp+$00                                 ; $4e05: $f8 $00
    ccf                                           ; $4e07: $3f
    rst $08                                       ; $4e08: $cf
    ld a, a                                       ; $4e09: $7f
    adc a                                         ; $4e0a: $8f
    ccf                                           ; $4e0b: $3f
    rst $18                                       ; $4e0c: $df
    ld e, a                                       ; $4e0d: $5f
    xor a                                         ; $4e0e: $af
    nop                                           ; $4e0f: $00
    ccf                                           ; $4e10: $3f
    rst $08                                       ; $4e11: $cf
    cp a                                          ; $4e12: $bf
    ld e, a                                       ; $4e13: $5f
    ld a, a                                       ; $4e14: $7f
    adc a                                         ; $4e15: $8f
    rst $38                                       ; $4e16: $ff
    ld e, a                                       ; $4e17: $5f
    nop                                           ; $4e18: $00
    rst $10                                       ; $4e19: $d7
    set 4, a                                      ; $4e1a: $cb $e7
    db $db                                        ; $4e1c: $db
    rst $20                                       ; $4e1d: $e7
    db $db                                        ; $4e1e: $db
    rst $18                                       ; $4e1f: $df
    jp $ff40                                      ; $4e20: $c3 $40 $ff


jr_0cd_4e23:
    ld bc, $fe60                                  ; $4e23: $01 $60 $fe
    cp $fc                                        ; $4e26: $fe $fc
    db $fc                                        ; $4e28: $fc
    db $fd                                        ; $4e29: $fd

jr_0cd_4e2a:
    db $fc                                        ; $4e2a: $fc
    inc l                                         ; $4e2b: $2c
    rst $38                                       ; $4e2c: $ff
    cp $18                                        ; $4e2d: $fe $18
    ld b, b                                       ; $4e2f: $40
    ld a, a                                       ; $4e30: $7f
    inc b                                         ; $4e31: $04
    jr nz, jr_0cd_4e5f                            ; $4e32: $20 $2b

    nop                                           ; $4e34: $00
    rst $28                                       ; $4e35: $ef
    rst $28                                       ; $4e36: $ef
    nop                                           ; $4e37: $00
    rst $28                                       ; $4e38: $ef
    rst $20                                       ; $4e39: $e7
    rst $28                                       ; $4e3a: $ef
    rst $20                                       ; $4e3b: $e7
    rst $18                                       ; $4e3c: $df
    rst $00                                       ; $4e3d: $c7
    rst $38                                       ; $4e3e: $ff
    db $e3                                        ; $4e3f: $e3
    nop                                           ; $4e40: $00
    ld bc, $ccfe                                  ; $4e41: $01 $fe $cc
    inc sp                                        ; $4e44: $33

jr_0cd_4e45:
    ld c, h                                       ; $4e45: $4c
    or e                                          ; $4e46: $b3
    and h                                         ; $4e47: $a4
    ld e, e                                       ; $4e48: $5b
    nop                                           ; $4e49: $00
    ld e, b                                       ; $4e4a: $58
    and a                                         ; $4e4b: $a7
    ret z                                         ; $4e4c: $c8

    scf                                           ; $4e4d: $37
    ld [hl], $c9                                  ; $4e4e: $36 $c9
    add hl, bc                                    ; $4e50: $09
    or $00                                        ; $4e51: $f6 $00
    db $10                                        ; $4e53: $10
    rst $28                                       ; $4e54: $ef
    ld sp, $50ce                                  ; $4e55: $31 $ce $50
    xor a                                         ; $4e58: $af
    ld b, b                                       ; $4e59: $40
    cp a                                          ; $4e5a: $bf
    nop                                           ; $4e5b: $00
    jr jr_0cd_4e45                                ; $4e5c: $18 $e7

    ld b, e                                       ; $4e5e: $43

jr_0cd_4e5f:
    cp h                                          ; $4e5f: $bc
    ld c, e                                       ; $4e60: $4b
    or h                                          ; $4e61: $b4
    add d                                         ; $4e62: $82
    ld a, l                                       ; $4e63: $7d
    nop                                           ; $4e64: $00
    db $fd                                        ; $4e65: $fd
    db $fc                                        ; $4e66: $fc
    inc sp                                        ; $4e67: $33
    cp $b1                                        ; $4e68: $fe $b1
    db $fc                                        ; $4e6a: $fc
    ld e, c                                       ; $4e6b: $59
    ld hl, sp+$00                                 ; $4e6c: $f8 $00
    and a                                         ; $4e6e: $a7
    ldh a, [$37]                                  ; $4e6f: $f0 $37
    ldh a, [$cb]                                  ; $4e71: $f0 $cb
    ld hl, sp-$0d                                 ; $4e73: $f8 $f3
    ldh a, [rP1]                                  ; $4e75: $f0 $00
    ld l, a                                       ; $4e77: $6f
    ld a, a                                       ; $4e78: $7f
    adc [hl]                                      ; $4e79: $8e
    cp a                                          ; $4e7a: $bf
    xor a                                         ; $4e7b: $af
    ccf                                           ; $4e7c: $3f
    cp a                                          ; $4e7d: $bf
    ccf                                           ; $4e7e: $3f
    nop                                           ; $4e7f: $00
    rst $20                                       ; $4e80: $e7
    ld a, a                                       ; $4e81: $7f
    cp h                                          ; $4e82: $bc
    ccf                                           ; $4e83: $3f
    db $f4                                        ; $4e84: $f4
    rra                                           ; $4e85: $1f
    db $fd                                        ; $4e86: $fd
    rra                                           ; $4e87: $1f
    nop                                           ; $4e88: $00
    or c                                          ; $4e89: $b1
    ld c, [hl]                                    ; $4e8a: $4e
    pop bc                                        ; $4e8b: $c1
    ld a, $44                                     ; $4e8c: $3e $44
    cp e                                          ; $4e8e: $bb
    jp nz, $003d                                  ; $4e8f: $c2 $3d $00

    add d                                         ; $4e92: $82

jr_0cd_4e93:
    ld a, l                                       ; $4e93: $7d
    sub h                                         ; $4e94: $94
    ld l, e                                       ; $4e95: $6b
    dec d                                         ; $4e96: $15
    ld [$11ee], a                                 ; $4e97: $ea $ee $11
    nop                                           ; $4e9a: $00
    jp nz, $643d                                  ; $4e9b: $c2 $3d $64

    sbc e                                         ; $4e9e: $9b
    ld b, b                                       ; $4e9f: $40
    cp a                                          ; $4ea0: $bf
    adc l                                         ; $4ea1: $8d
    ld [hl], d                                    ; $4ea2: $72
    nop                                           ; $4ea3: $00
    rst $18                                       ; $4ea4: $df
    jr nz, jr_0cd_4e2a                            ; $4ea5: $20 $83

    ld a, h                                       ; $4ea7: $7c
    ld [bc], a                                    ; $4ea8: $02
    db $fd                                        ; $4ea9: $fd
    add sp, $17                                   ; $4eaa: $e8 $17
    nop                                           ; $4eac: $00
    ld c, [hl]                                    ; $4ead: $4e
    rst $38                                       ; $4eae: $ff
    ld a, $ff                                     ; $4eaf: $3e $ff
    cp e                                          ; $4eb1: $bb
    rst $38                                       ; $4eb2: $ff
    dec a                                         ; $4eb3: $3d
    rst $38                                       ; $4eb4: $ff
    nop                                           ; $4eb5: $00
    ld a, h                                       ; $4eb6: $7c
    cp $68                                        ; $4eb7: $fe $68
    db $fc                                        ; $4eb9: $fc
    jp hl                                         ; $4eba: $e9


    db $fc                                        ; $4ebb: $fc
    ld de, $00fe                                  ; $4ebc: $11 $fe $00
    dec a                                         ; $4ebf: $3d
    rst $38                                       ; $4ec0: $ff
    sbc e                                         ; $4ec1: $9b
    rst $38                                       ; $4ec2: $ff
    cp a                                          ; $4ec3: $bf
    rst $38                                       ; $4ec4: $ff
    ld [hl], d                                    ; $4ec5: $72
    rst $38                                       ; $4ec6: $ff
    nop                                           ; $4ec7: $00
    jr nz, @+$01                                  ; $4ec8: $20 $ff

    db $fc                                        ; $4eca: $fc
    ld a, a                                       ; $4ecb: $7f
    db $fd                                        ; $4ecc: $fd
    rst $38                                       ; $4ecd: $ff
    sub a                                         ; $4ece: $97
    ld a, a                                       ; $4ecf: $7f
    nop                                           ; $4ed0: $00
    ld [hl], d                                    ; $4ed1: $72
    rst $38                                       ; $4ed2: $ff
    ld a, h                                       ; $4ed3: $7c
    rst $38                                       ; $4ed4: $ff
    db $dd                                        ; $4ed5: $dd
    rst $38                                       ; $4ed6: $ff
    xor h                                         ; $4ed7: $ac
    rst $28                                       ; $4ed8: $ef
    nop                                           ; $4ed9: $00
    xor [hl]                                      ; $4eda: $ae
    rst $20                                       ; $4edb: $e7
    adc $e7                                       ; $4edc: $ce $e7
    ld e, a                                       ; $4ede: $5f
    rst $00                                       ; $4edf: $c7
    sbc h                                         ; $4ee0: $9c
    db $e3                                        ; $4ee1: $e3
    nop                                           ; $4ee2: $00
    reti                                          ; $4ee3: $d9


jr_0cd_4ee4:
    ld h, $ff                                     ; $4ee4: $26 $ff
    nop                                           ; $4ee6: $00
    cp l                                          ; $4ee7: $bd
    ld b, d                                       ; $4ee8: $42
    rst $38                                       ; $4ee9: $ff
    nop                                           ; $4eea: $00
    jr nz, jr_0cd_4ee4                            ; $4eeb: $20 $f7

    ld [$1119], sp                                ; $4eed: $08 $19 $11
    nop                                           ; $4ef0: $00
    rst $18                                       ; $4ef1: $df
    jr nz, jr_0cd_4e93                            ; $4ef2: $20 $9f

    ld h, b                                       ; $4ef4: $60
    ld [bc], a                                    ; $4ef5: $02
    db $fd                                        ; $4ef6: $fd
    ld [bc], a                                    ; $4ef7: $02
    rst $28                                       ; $4ef8: $ef
    db $10                                        ; $4ef9: $10
    cp $01                                        ; $4efa: $fe $01
    db $10                                        ; $4efc: $10
    jr jr_0cd_4f64                                ; $4efd: $18 $65

    nop                                           ; $4eff: $00
    db $fc                                        ; $4f00: $fc
    ld bc, $41fe                                  ; $4f01: $01 $fe $41
    db $fc                                        ; $4f04: $fc
    ld bc, $17f8                                  ; $4f05: $01 $f8 $17
    nop                                           ; $4f08: $00
    ldh a, [rTAC]                                 ; $4f09: $f0 $07
    ldh a, [$03]                                  ; $4f0b: $f0 $03
    ld hl, sp+$03                                 ; $4f0d: $f8 $03
    ldh a, [$84]                                  ; $4f0f: $f0 $84
    nop                                           ; $4f11: $00
    ld a, a                                       ; $4f12: $7f
    ld b, [hl]                                    ; $4f13: $46
    cp a                                          ; $4f14: $bf
    ret nz                                        ; $4f15: $c0

    ccf                                           ; $4f16: $3f
    ret z                                         ; $4f17: $c8

    ccf                                           ; $4f18: $3f
    add b                                         ; $4f19: $80
    ld bc, $c07f                                  ; $4f1a: $01 $7f $c0
    ccf                                           ; $4f1d: $3f
    ldh [$1f], a                                  ; $4f1e: $e0 $1f
    ldh [$1f], a                                  ; $4f20: $e0 $1f
    ld [hl], $18                                  ; $4f22: $36 $18
    ret nz                                        ; $4f24: $c0

    ld b, $38                                     ; $4f25: $06 $38
    inc b                                         ; $4f27: $04
    add hl, bc                                    ; $4f28: $09
    db $fd                                        ; $4f29: $fd
    db $fc                                        ; $4f2a: $fc
    ld sp, hl                                     ; $4f2b: $f9
    ld hl, sp-$0a                                 ; $4f2c: $f8 $f6
    pop af                                        ; $4f2e: $f1
    ld [bc], a                                    ; $4f2f: $02
    or $f1                                        ; $4f30: $f6 $f1
    ld a, [$f3f9]                                 ; $4f32: $fa $f9 $f3
    ldh a, [rTMA]                                 ; $4f35: $f0 $06
    ld bc, $08bf                                  ; $4f37: $01 $bf $08
    rst $38                                       ; $4f3a: $ff
    ccf                                           ; $4f3b: $3f
    ld a, a                                       ; $4f3c: $7f
    cp a                                          ; $4f3d: $bf
    ld c, $01                                     ; $4f3e: $0e $01
    ccf                                           ; $4f40: $3f
    ld a, a                                       ; $4f41: $7f
    sbc a                                         ; $4f42: $9f
    dec [hl]                                      ; $4f43: $35
    ccf                                           ; $4f44: $3f
    rst $18                                       ; $4f45: $df
    ld h, [hl]                                    ; $4f46: $66
    jr @+$81                                      ; $4f47: $18 $7f

    ld bc, $7f00                                  ; $4f49: $01 $00 $7f
    ld bc, $7f00                                  ; $4f4c: $01 $00 $7f
    ld hl, $0000                                  ; $4f4f: $21 $00 $00
    cp $00                                        ; $4f52: $fe $00
    rst $28                                       ; $4f54: $ef
    nop                                           ; $4f55: $00
    db $fd                                        ; $4f56: $fd
    nop                                           ; $4f57: $00
    sbc a                                         ; $4f58: $9f
    nop                                           ; $4f59: $00
    nop                                           ; $4f5a: $00
    rst $18                                       ; $4f5b: $df
    nop                                           ; $4f5c: $00
    xor $00                                       ; $4f5d: $ee $00
    dec d                                         ; $4f5f: $15
    nop                                           ; $4f60: $00
    sub h                                         ; $4f61: $94
    nop                                           ; $4f62: $00
    nop                                           ; $4f63: $00

jr_0cd_4f64:
    add d                                         ; $4f64: $82
    nop                                           ; $4f65: $00
    jp nz, Jump_0cd_4400                          ; $4f66: $c2 $00 $44

    nop                                           ; $4f69: $00
    pop bc                                        ; $4f6a: $c1
    nop                                           ; $4f6b: $00
    nop                                           ; $4f6c: $00
    or c                                          ; $4f6d: $b1
    nop                                           ; $4f6e: $00
    add sp, $00                                   ; $4f6f: $e8 $00
    ld [bc], a                                    ; $4f71: $02
    nop                                           ; $4f72: $00
    add e                                         ; $4f73: $83
    add d                                         ; $4f74: $82
    jr jr_0cd_4f77                                ; $4f75: $18 $00

jr_0cd_4f77:
    adc l                                         ; $4f77: $8d
    nop                                           ; $4f78: $00
    ld b, b                                       ; $4f79: $40
    nop                                           ; $4f7a: $00
    ld h, h                                       ; $4f7b: $64
    ld d, $00                                     ; $4f7c: $16 $00
    db $ed                                        ; $4f7e: $ed
    nop                                           ; $4f7f: $00
    db $fc                                        ; $4f80: $fc
    dec d                                         ; $4f81: $15
    cp $95                                        ; $4f82: $fe $95
    db $fc                                        ; $4f84: $fc
    add c                                         ; $4f85: $81
    ld hl, sp-$39                                 ; $4f86: $f8 $c7
    nop                                           ; $4f88: $00
    ldh a, [rBGP]                                 ; $4f89: $f0 $47
    ldh a, [$c3]                                  ; $4f8b: $f0 $c3
    ld hl, sp-$4d                                 ; $4f8d: $f8 $b3
    ldh a, [$e8]                                  ; $4f8f: $f0 $e8
    nop                                           ; $4f91: $00
    ld a, a                                       ; $4f92: $7f
    ld b, d                                       ; $4f93: $42
    cp a                                          ; $4f94: $bf
    jp $df3f                                      ; $4f95: $c3 $3f $df


    ccf                                           ; $4f98: $3f
    adc l                                         ; $4f99: $8d
    add l                                         ; $4f9a: $85
    sub b                                         ; $4f9b: $90
    nop                                           ; $4f9c: $00
    db $e4                                        ; $4f9d: $e4
    rra                                           ; $4f9e: $1f
    ld [c], a                                     ; $4f9f: $e2
    rra                                           ; $4fa0: $1f
    ld b, b                                       ; $4fa1: $40
    ld b, b                                       ; $4fa2: $40
    add b                                         ; $4fa3: $80
    ld b, b                                       ; $4fa4: $40
    ld [$1700], sp                                ; $4fa5: $08 $00 $17
    rst $38                                       ; $4fa8: $ff
    ld b, b                                       ; $4fa9: $40
    rst $38                                       ; $4faa: $ff
    pop bc                                        ; $4fab: $c1
    rst $38                                       ; $4fac: $ff
    db $e3                                        ; $4fad: $e3
    rst $28                                       ; $4fae: $ef
    nop                                           ; $4faf: $00
    xor c                                         ; $4fb0: $a9
    rst $20                                       ; $4fb1: $e7
    ld a, [bc]                                    ; $4fb2: $0a
    rst $20                                       ; $4fb3: $e7
    ld a, [de]                                    ; $4fb4: $1a
    rst $00                                       ; $4fb5: $c7
    ld e, l                                       ; $4fb6: $5d
    db $e3                                        ; $4fb7: $e3
    nop                                           ; $4fb8: $00
    db $dd                                        ; $4fb9: $dd
    jp $c3be                                      ; $4fba: $c3 $be $c3


    ld a, l                                       ; $4fbd: $7d
    jp $c75b                                      ; $4fbe: $c3 $5b $c7


    ld e, b                                       ; $4fc1: $58
    db $e4                                        ; $4fc2: $e4
    pop bc                                        ; $4fc3: $c1
    ld bc, $1a9d                                  ; $4fc4: $01 $9d $1a
    ld bc, $5820                                  ; $4fc7: $01 $20 $58
    ld e, a                                       ; $4fca: $5f
    db $e3                                        ; $4fcb: $e3
    add d                                         ; $4fcc: $82
    ld [bc], a                                    ; $4fcd: $02
    nop                                           ; $4fce: $00
    ld c, e                                       ; $4fcf: $4b
    nop                                           ; $4fd0: $00
    ld b, e                                       ; $4fd1: $43
    nop                                           ; $4fd2: $00
    jr @+$70                                      ; $4fd3: $18 $6e

    nop                                           ; $4fd5: $00
    ld d, b                                       ; $4fd6: $50
    nop                                           ; $4fd7: $00
    nop                                           ; $4fd8: $00
    ld sp, $1000                                  ; $4fd9: $31 $00 $10
    nop                                           ; $4fdc: $00
    sub b                                         ; $4fdd: $90
    nop                                           ; $4fde: $00
    ld l, h                                       ; $4fdf: $6c
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    inc de                                        ; $4fe2: $13
    nop                                           ; $4fe3: $00
    ld a, [de]                                    ; $4fe4: $1a
    nop                                           ; $4fe5: $00
    dec h                                         ; $4fe6: $25
    nop                                           ; $4fe7: $00
    ld [hl-], a                                   ; $4fe8: $32
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    inc sp                                        ; $4feb: $33
    nop                                           ; $4fec: $00
    add b                                         ; $4fed: $80
    nop                                           ; $4fee: $00
    ld [$07ff], a                                 ; $4fef: $ea $ff $07
    nop                                           ; $4ff2: $00
    rst $38                                       ; $4ff3: $ff
    cp c                                          ; $4ff4: $b9
    rst $38                                       ; $4ff5: $ff
    adc l                                         ; $4ff6: $8d
    rst $38                                       ; $4ff7: $ff
    ld d, [hl]                                    ; $4ff8: $56
    cp $b4                                        ; $4ff9: $fe $b4
    nop                                           ; $4ffb: $00
    db $fc                                        ; $4ffc: $fc
    and l                                         ; $4ffd: $a5
    db $fc                                        ; $4ffe: $fc
    adc e                                         ; $4fff: $8b
    cp $07                                        ; $5000: $fe $07
    rst $38                                       ; $5002: $ff
    or l                                          ; $5003: $b5
    ld [$6bff], sp                                ; $5004: $08 $ff $6b
    rst $38                                       ; $5007: $ff
    xor d                                         ; $5008: $aa
    ld h, h                                       ; $5009: $64
    ld bc, $7fef                                  ; $500a: $01 $ef $7f
    adc b                                         ; $500d: $88
    db $10                                        ; $500e: $10
    rst $38                                       ; $500f: $ff
    db $dd                                        ; $5010: $dd
    ld a, a                                       ; $5011: $7f
    ld h, b                                       ; $5012: $60
    ld e, b                                       ; $5013: $58
    cp [hl]                                       ; $5014: $be
    rst $38                                       ; $5015: $ff
    ret c                                         ; $5016: $d8

    rst $38                                       ; $5017: $ff
    nop                                           ; $5018: $00
    ld d, c                                       ; $5019: $51
    rst $38                                       ; $501a: $ff
    jr z, @+$01                                   ; $501b: $28 $ff

    dec d                                         ; $501d: $15
    rst $38                                       ; $501e: $ff
    and b                                         ; $501f: $a0
    cp $00                                        ; $5020: $fe $00
    db $10                                        ; $5022: $10
    db $fc                                        ; $5023: $fc
    sub l                                         ; $5024: $95
    db $fc                                        ; $5025: $fc
    ld b, c                                       ; $5026: $41
    cp $97                                        ; $5027: $fe $97
    rst $38                                       ; $5029: $ff
    nop                                           ; $502a: $00
    or e                                          ; $502b: $b3
    rst $38                                       ; $502c: $ff
    ld e, d                                       ; $502d: $5a
    rst $38                                       ; $502e: $ff
    rrca                                          ; $502f: $0f
    rst $38                                       ; $5030: $ff
    inc d                                         ; $5031: $14
    rst $38                                       ; $5032: $ff
    nop                                           ; $5033: $00
    and e                                         ; $5034: $a3
    ld a, a                                       ; $5035: $7f
    inc de                                        ; $5036: $13
    rst $38                                       ; $5037: $ff
    adc e                                         ; $5038: $8b
    ld a, a                                       ; $5039: $7f
    jr nz, jr_0cd_503c                            ; $503a: $20 $00

jr_0cd_503c:
    ld b, d                                       ; $503c: $42
    ld h, b                                       ; $503d: $60
    ld [c], a                                     ; $503e: $e2
    nop                                           ; $503f: $00
    stop                                          ; $5040: $10 $00
    ld bc, $0100                                  ; $5042: $01 $00 $01
    jr jr_0cd_50ab                                ; $5045: $18 $64

    xor h                                         ; $5047: $ac
    ld [$4200], sp                                ; $5048: $08 $00 $42
    inc c                                         ; $504b: $0c
    nop                                           ; $504c: $00
    db $10                                        ; $504d: $10
    db $10                                        ; $504e: $10
    jr nz, @-$5e                                  ; $504f: $20 $a0

    ld [hl+], a                                   ; $5051: $22
    rst $38                                       ; $5052: $ff
    db $10                                        ; $5053: $10
    dec c                                         ; $5054: $0d
    rst $38                                       ; $5055: $ff
    ld [bc], a                                    ; $5056: $02
    rst $38                                       ; $5057: $ff
    ld h, b                                       ; $5058: $60
    add $01                                       ; $5059: $c6 $01
    ret nz                                        ; $505b: $c0

    ld a, [de]                                    ; $505c: $1a
    db $10                                        ; $505d: $10
    add $02                                       ; $505e: $c6 $02
    sub b                                         ; $5060: $90
    or l                                          ; $5061: $b5
    ld bc, $64ff                                  ; $5062: $01 $ff $64
    ld a, a                                       ; $5065: $7f
    add hl, sp                                    ; $5066: $39
    cp $00                                        ; $5067: $fe $00
    db $fc                                        ; $5069: $fc
    add hl, bc                                    ; $506a: $09
    ret nz                                        ; $506b: $c0

    ld h, b                                       ; $506c: $60
    nop                                           ; $506d: $00
    adc a                                         ; $506e: $8f
    add hl, sp                                    ; $506f: $39
    add b                                         ; $5070: $80
    ld a, a                                       ; $5071: $7f
    jr nz, @+$01                                  ; $5072: $20 $ff

    and d                                         ; $5074: $a2
    ld a, a                                       ; $5075: $7f
    push bc                                       ; $5076: $c5
    ld b, a                                       ; $5077: $47
    jr z, jr_0cd_50c9                             ; $5078: $28 $4f

    jr z, @+$19                                   ; $507a: $28 $17

    rst $38                                       ; $507c: $ff
    db $fd                                        ; $507d: $fd
    ld [bc], a                                    ; $507e: $02
    ld [bc], a                                    ; $507f: $02
    jr nz, jr_0cd_5094                            ; $5080: $20 $12

    ld [bc], a                                    ; $5082: $02
    ld b, b                                       ; $5083: $40
    cp a                                          ; $5084: $bf
    ld a, [de]                                    ; $5085: $1a
    ld [bc], a                                    ; $5086: $02
    dec a                                         ; $5087: $3d
    rst $38                                       ; $5088: $ff
    adc b                                         ; $5089: $88
    rst $38                                       ; $508a: $ff
    ld d, a                                       ; $508b: $57
    rst $38                                       ; $508c: $ff
    ld d, a                                       ; $508d: $57
    sub $a8                                       ; $508e: $d6 $a8
    nop                                           ; $5090: $00
    cp h                                          ; $5091: $bc
    ld d, $02                                     ; $5092: $16 $02

jr_0cd_5094:
    ld a, h                                       ; $5094: $7c
    jr z, @+$04                                   ; $5095: $28 $02

    jp c, $0202                                   ; $5097: $da $02 $02

    nop                                           ; $509a: $00
    ld b, b                                       ; $509b: $40
    ld e, [hl]                                    ; $509c: $5e
    ldh [rSC], a                                  ; $509d: $e0 $02
    sub d                                         ; $509f: $92
    rst $38                                       ; $50a0: $ff
    ld l, $ff                                     ; $50a1: $2e $ff
    ld e, b                                       ; $50a3: $58
    rst $38                                       ; $50a4: $ff
    ld b, b                                       ; $50a5: $40
    add hl, hl                                    ; $50a6: $29
    nop                                           ; $50a7: $00
    ld [bc], a                                    ; $50a8: $02
    and c                                         ; $50a9: $a1
    db $fc                                        ; $50aa: $fc

jr_0cd_50ab:
    pop hl                                        ; $50ab: $e1
    ld hl, sp+$07                                 ; $50ac: $f8 $07
    ldh a, [rP1]                                  ; $50ae: $f0 $00
    ld d, a                                       ; $50b0: $57
    ldh a, [rHDMA3]                               ; $50b1: $f0 $53
    ld hl, sp+$73                                 ; $50b3: $f8 $73
    ldh a, [$90]                                  ; $50b5: $f0 $90
    ld a, a                                       ; $50b7: $7f
    nop                                           ; $50b8: $00
    call nz, $ccbf                                ; $50b9: $c4 $bf $cc
    ccf                                           ; $50bc: $3f
    ret nc                                        ; $50bd: $d0

    ccf                                           ; $50be: $3f
    sub l                                         ; $50bf: $95
    ld a, a                                       ; $50c0: $7f
    ld bc, $3fc4                                  ; $50c1: $01 $c4 $3f
    db $ec                                        ; $50c4: $ec
    rra                                           ; $50c5: $1f
    ld sp, hl                                     ; $50c6: $f9
    rra                                           ; $50c7: $1f
    and c                                         ; $50c8: $a1

jr_0cd_50c9:
    ld b, [hl]                                    ; $50c9: $46
    ld bc, $b401                                  ; $50ca: $01 $01 $b4
    rst $38                                       ; $50cd: $ff
    rst $08                                       ; $50ce: $cf
    rst $28                                       ; $50cf: $ef
    ret                                           ; $50d0: $c9


    rst $20                                       ; $50d1: $e7
    xor h                                         ; $50d2: $ac
    ldh [rSC], a                                  ; $50d3: $e0 $02

jr_0cd_50d5:
    jr nz, jr_0cd_50d5                            ; $50d5: $20 $fe

    db $e3                                        ; $50d7: $e3
    jr jr_0cd_5145                                ; $50d8: $18 $6b

    rst $30                                       ; $50da: $f7
    ldh a, [$ef]                                  ; $50db: $f0 $ef
    ldh [$ef], a                                  ; $50dd: $e0 $ef
    ld b, b                                       ; $50df: $40
    ldh [rTMA], a                                 ; $50e0: $e0 $06
    ld [$e0e7], sp                                ; $50e2: $08 $e7 $e0
    di                                            ; $50e5: $f3
    ldh a, [$f9]                                  ; $50e6: $f0 $f9
    ld hl, sp-$75                                 ; $50e8: $f8 $8b
    ei                                            ; $50ea: $fb
    nop                                           ; $50eb: $00
    rrca                                          ; $50ec: $0f
    rst $38                                       ; $50ed: $ff
    rra                                           ; $50ee: $1f
    ld b, $30                                     ; $50ef: $06 $30
    ld e, a                                       ; $50f1: $5f
    ld [hl], b                                    ; $50f2: $70
    jr jr_0cd_5145                                ; $50f3: $18 $50

    dec sp                                        ; $50f5: $3b
    add e                                         ; $50f6: $83
    ld b, b                                       ; $50f7: $40
    ld a, [hl+]                                   ; $50f8: $2a
    rst $30                                       ; $50f9: $f7
    ldh a, [$f7]                                  ; $50fa: $f0 $f7
    ldh a, [$fb]                                  ; $50fc: $f0 $fb
    nop                                           ; $50fe: $00
    inc bc                                        ; $50ff: $03
    ld b, b                                       ; $5100: $40

Call_0cd_5101:
    ld a, [de]                                    ; $5101: $1a
    ldh [rSC], a                                  ; $5102: $e0 $02
    nop                                           ; $5104: $00
    ld b, b                                       ; $5105: $40
    ld [bc], a                                    ; $5106: $02
    jr c, jr_0cd_5109                             ; $5107: $38 $00

jr_0cd_5109:
    rra                                           ; $5109: $1f
    ret nc                                        ; $510a: $d0

    ld [bc], a                                    ; $510b: $02
    ld h, b                                       ; $510c: $60
    ld [bc], a                                    ; $510d: $02
    nop                                           ; $510e: $00
    or a                                          ; $510f: $b7
    nop                                           ; $5110: $00

jr_0cd_5111:
    and c                                         ; $5111: $a1
    nop                                           ; $5112: $00
    ld a, [c]                                     ; $5113: $f2
    nop                                           ; $5114: $00
    inc a                                         ; $5115: $3c
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    ld a, [de]                                    ; $5118: $1a
    nop                                           ; $5119: $00
    ld [hl], c                                    ; $511a: $71
    nop                                           ; $511b: $00
    sub c                                         ; $511c: $91
    ld h, b                                       ; $511d: $60
    sbc [hl]                                      ; $511e: $9e
    ld h, c                                       ; $511f: $61
    nop                                           ; $5120: $00
    rst $18                                       ; $5121: $df
    nop                                           ; $5122: $00
    inc bc                                        ; $5123: $03
    nop                                           ; $5124: $00
    add b                                         ; $5125: $80
    nop                                           ; $5126: $00
    cp h                                          ; $5127: $bc
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    db $e4                                        ; $512a: $e4
    jr jr_0cd_5111                                ; $512b: $18 $e4

    jr jr_0cd_51ab                                ; $512d: $18 $7c

    add b                                         ; $512f: $80

jr_0cd_5130:
    nop                                           ; $5130: $00
    ldh [rP1], a                                  ; $5131: $e0 $00
    ret                                           ; $5133: $c9


    ld [hl], $7c                                  ; $5134: $36 $7c
    inc bc                                        ; $5136: $03
    inc d                                         ; $5137: $14
    inc bc                                        ; $5138: $03
    rst $20                                       ; $5139: $e7
    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    ld [hl+], a                                   ; $513c: $22
    pop bc                                        ; $513d: $c1
    ld [hl-], a                                   ; $513e: $32
    pop bc                                        ; $513f: $c1
    rst $20                                       ; $5140: $e7
    nop                                           ; $5141: $00
    cp b                                          ; $5142: $b8
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00

jr_0cd_5145:
    rra                                           ; $5145: $1f
    nop                                           ; $5146: $00
    inc sp                                        ; $5147: $33
    inc c                                         ; $5148: $0c
    ld [hl-], a                                   ; $5149: $32
    inc c                                         ; $514a: $0c
    ld e, $00                                     ; $514b: $1e $00
    nop                                           ; $514d: $00
    rlca                                          ; $514e: $07
    nop                                           ; $514f: $00
    add c                                         ; $5150: $81
    nop                                           ; $5151: $00
    ret c                                         ; $5152: $d8

    nop                                           ; $5153: $00
    db $fd                                        ; $5154: $fd
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    and $18                                       ; $5157: $e6 $18
    ld l, h                                       ; $5159: $6c
    db $10                                        ; $515a: $10
    sbc b                                         ; $515b: $98
    ld h, b                                       ; $515c: $60
    inc l                                         ; $515d: $2c
    ret nz                                        ; $515e: $c0

    nop                                           ; $515f: $00
    xor e                                         ; $5160: $ab
    ld b, h                                       ; $5161: $44
    rst $38                                       ; $5162: $ff
    nop                                           ; $5163: $00
    db $d3                                        ; $5164: $d3
    inc l                                         ; $5165: $2c
    push hl                                       ; $5166: $e5
    ld a, [de]                                    ; $5167: $1a
    nop                                           ; $5168: $00
    rst $20                                       ; $5169: $e7
    jr jr_0cd_5130                                ; $516a: $18 $c4

    dec sp                                        ; $516c: $3b
    call z, $f333                                 ; $516d: $cc $33 $f3
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    ld a, a                                       ; $5172: $7f
    add b                                         ; $5173: $80
    ld [hl], b                                    ; $5174: $70
    adc a                                         ; $5175: $8f
    ret nc                                        ; $5176: $d0

    rrca                                          ; $5177: $0f
    adc a                                         ; $5178: $8f
    nop                                           ; $5179: $00
    nop                                           ; $517a: $00
    ld e, a                                       ; $517b: $5f
    rst $38                                       ; $517c: $ff
    sbc a                                         ; $517d: $9f
    rst $38                                       ; $517e: $ff
    rlca                                          ; $517f: $07
    rst $38                                       ; $5180: $ff
    xor [hl]                                      ; $5181: $ae
    ld a, a                                       ; $5182: $7f
    nop                                           ; $5183: $00
    inc c                                         ; $5184: $0c
    rst $38                                       ; $5185: $ff
    ld h, e                                       ; $5186: $63
    sbc a                                         ; $5187: $9f
    xor e                                         ; $5188: $ab
    rra                                           ; $5189: $1f
    ld d, d                                       ; $518a: $52
    xor a                                         ; $518b: $af
    nop                                           ; $518c: $00
    inc bc                                        ; $518d: $03
    db $fc                                        ; $518e: $fc
    nop                                           ; $518f: $00
    rst $38                                       ; $5190: $ff
    ret nz                                        ; $5191: $c0

    ccf                                           ; $5192: $3f
    ld [bc], a                                    ; $5193: $02
    db $fd                                        ; $5194: $fd
    nop                                           ; $5195: $00
    ld bc, $0bfe                                  ; $5196: $01 $fe $0b
    db $f4                                        ; $5199: $f4
    nop                                           ; $519a: $00
    rst $38                                       ; $519b: $ff
    nop                                           ; $519c: $00
    rst $38                                       ; $519d: $ff
    nop                                           ; $519e: $00
    daa                                           ; $519f: $27
    ret c                                         ; $51a0: $d8

    ld hl, $79de                                  ; $51a1: $21 $de $79
    add [hl]                                      ; $51a4: $86
    db $e3                                        ; $51a5: $e3
    inc e                                         ; $51a6: $1c
    nop                                           ; $51a7: $00
    add c                                         ; $51a8: $81
    ld a, [hl]                                    ; $51a9: $7e
    rlca                                          ; $51aa: $07

jr_0cd_51ab:
    ld hl, sp+$3f                                 ; $51ab: $f8 $3f
    ret nz                                        ; $51ad: $c0

    inc h                                         ; $51ae: $24
    db $db                                        ; $51af: $db
    nop                                           ; $51b0: $00
    add d                                         ; $51b1: $82
    ld a, l                                       ; $51b2: $7d
    db $10                                        ; $51b3: $10

jr_0cd_51b4:
    rst $28                                       ; $51b4: $ef
    ld d, c                                       ; $51b5: $51
    xor [hl]                                      ; $51b6: $ae
    ld bc, $00fe                                  ; $51b7: $01 $fe $00
    ld [bc], a                                    ; $51ba: $02
    db $fd                                        ; $51bb: $fd
    nop                                           ; $51bc: $00
    rst $38                                       ; $51bd: $ff
    ld a, [bc]                                    ; $51be: $0a
    push af                                       ; $51bf: $f5
    dec h                                         ; $51c0: $25
    jp c, $e000                                   ; $51c1: $da $00 $e0

    nop                                           ; $51c4: $00
    ld bc, $8f00                                  ; $51c5: $01 $00 $8f
    nop                                           ; $51c8: $00
    ret nz                                        ; $51c9: $c0

    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    di                                            ; $51cc: $f3
    nop                                           ; $51cd: $00
    and b                                         ; $51ce: $a0
    nop                                           ; $51cf: $00
    jp nz, $ed00                                  ; $51d0: $c2 $00 $ed

jr_0cd_51d3:
    nop                                           ; $51d3: $00
    nop                                           ; $51d4: $00
    and c                                         ; $51d5: $a1
    ld e, $b9                                     ; $51d6: $1e $b9
    ld b, $c8                                     ; $51d8: $06 $c8
    rlca                                          ; $51da: $07
    ld b, [hl]                                    ; $51db: $46
    add c                                         ; $51dc: $81
    nop                                           ; $51dd: $00
    ld a, a                                       ; $51de: $7f
    add b                                         ; $51df: $80
    ret                                           ; $51e0: $c9


    ld [hl], $89                                  ; $51e1: $36 $89
    halt                                          ; $51e3: $76
    sbc a                                         ; $51e4: $9f
    ld h, b                                       ; $51e5: $60
    ld bc, $08f7                                  ; $51e6: $01 $f7 $08
    sub d                                         ; $51e9: $92
    ld l, h                                       ; $51ea: $6c
    rst $18                                       ; $51eb: $df
    jr nz, jr_0cd_51d3                            ; $51ec: $20 $e5

    adc [hl]                                      ; $51ee: $8e
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    rlca                                          ; $51f1: $07
    nop                                           ; $51f2: $00
    pop hl                                        ; $51f3: $e1
    nop                                           ; $51f4: $00
    ld hl, sp+$00                                 ; $51f5: $f8 $00
    xor l                                         ; $51f7: $ad
    ld d, d                                       ; $51f8: $52
    nop                                           ; $51f9: $00
    ld sp, hl                                     ; $51fa: $f9
    ld b, $ca                                     ; $51fb: $06 $ca
    dec [hl]                                      ; $51fd: $35
    rst $20                                       ; $51fe: $e7
    jr jr_0cd_51b4                                ; $51ff: $18 $b3

    inc c                                         ; $5201: $0c
    nop                                           ; $5202: $00
    or d                                          ; $5203: $b2
    inc c                                         ; $5204: $0c
    rra                                           ; $5205: $1f
    nop                                           ; $5206: $00
    ret                                           ; $5207: $c9


    nop                                           ; $5208: $00
    add h                                         ; $5209: $84
    ld a, e                                       ; $520a: $7b
    nop                                           ; $520b: $00
    db $e4                                        ; $520c: $e4
    dec de                                        ; $520d: $1b
    rst $38                                       ; $520e: $ff
    nop                                           ; $520f: $00
    ld sp, hl                                     ; $5210: $f9
    ld b, $99                                     ; $5211: $06 $99
    ld h, [hl]                                    ; $5213: $66
    nop                                           ; $5214: $00
    sbc a                                         ; $5215: $9f
    ld h, b                                       ; $5216: $60
    ld a, c                                       ; $5217: $79
    add [hl]                                      ; $5218: $86
    ld [hl], c                                    ; $5219: $71
    adc [hl]                                      ; $521a: $8e
    inc a                                         ; $521b: $3c
    jp $d700                                      ; $521c: $c3 $00 $d7


    nop                                           ; $521f: $00
    call $8802                                    ; $5220: $cd $02 $88
    rlca                                          ; $5223: $07
    dec e                                         ; $5224: $1d
    ld [bc], a                                    ; $5225: $02
    ld b, b                                       ; $5226: $40
    add a                                         ; $5227: $87
    ld d, [hl]                                    ; $5228: $56
    nop                                           ; $5229: $00
    inc bc                                        ; $522a: $03
    nop                                           ; $522b: $00
    nop                                           ; $522c: $00
    rst $38                                       ; $522d: $ff
    ld h, h                                       ; $522e: $64
    sbc e                                         ; $522f: $9b
    inc c                                         ; $5230: $0c
    ld h, b                                       ; $5231: $60
    sbc a                                         ; $5232: $9f
    inc bc                                        ; $5233: $03
    db $fc                                        ; $5234: $fc
    sbc b                                         ; $5235: $98
    ld [$0890], sp                                ; $5236: $08 $90 $08
    inc b                                         ; $5239: $04
    ei                                            ; $523a: $fb
    nop                                           ; $523b: $00
    rrca                                          ; $523c: $0f
    ldh a, [rTAC]                                 ; $523d: $f0 $07
    ld hl, sp-$7f                                 ; $523f: $f8 $81
    ld a, [hl]                                    ; $5241: $7e
    db $e3                                        ; $5242: $e3
    inc e                                         ; $5243: $1c
    nop                                           ; $5244: $00
    ld a, c                                       ; $5245: $79
    add [hl]                                      ; $5246: $86
    ld hl, $27de                                  ; $5247: $21 $de $27
    ret c                                         ; $524a: $d8

    cp e                                          ; $524b: $bb
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    add hl, de                                    ; $524e: $19
    nop                                           ; $524f: $00
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    ld h, [hl]                                    ; $5252: $66
    nop                                           ; $5253: $00
    sbc c                                         ; $5254: $99
    ld h, b                                       ; $5255: $60
    nop                                           ; $5256: $00
    sbc c                                         ; $5257: $99
    ld h, b                                       ; $5258: $60
    ld h, a                                       ; $5259: $67
    sbc b                                         ; $525a: $98
    ld h, h                                       ; $525b: $64
    sbc e                                         ; $525c: $9b
    rst $38                                       ; $525d: $ff
    nop                                           ; $525e: $00
    inc b                                         ; $525f: $04
    adc l                                         ; $5260: $8d
    nop                                           ; $5261: $00
    jp $6700                                      ; $5262: $c3 $00 $67


    inc d                                         ; $5265: $14
    nop                                           ; $5266: $00
    add c                                         ; $5267: $81
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    db $e3                                        ; $526a: $e3
    nop                                           ; $526b: $00
    inc sp                                        ; $526c: $33
    nop                                           ; $526d: $00
    sbc a                                         ; $526e: $9f
    rst $38                                       ; $526f: $ff
    add hl, sp                                    ; $5270: $39

jr_0cd_5271:
    rst $38                                       ; $5271: $ff
    nop                                           ; $5272: $00
    jr @+$01                                      ; $5273: $18 $ff

    and e                                         ; $5275: $a3
    ld a, a                                       ; $5276: $7f
    dec bc                                        ; $5277: $0b
    rst $30                                       ; $5278: $f7
    xor d                                         ; $5279: $aa
    ld d, a                                       ; $527a: $57
    nop                                           ; $527b: $00
    or h                                          ; $527c: $b4

jr_0cd_527d:
    ld c, a                                       ; $527d: $4f
    push af                                       ; $527e: $f5
    dec bc                                        ; $527f: $0b
    ld l, a                                       ; $5280: $6f
    add b                                         ; $5281: $80
    ld e, e                                       ; $5282: $5b
    and h                                         ; $5283: $a4
    ld [bc], a                                    ; $5284: $02
    ld bc, $17fe                                  ; $5285: $01 $fe $17
    add sp, $01                                   ; $5288: $e8 $01
    cp $50                                        ; $528a: $fe $50
    jr z, @-$7a                                   ; $528c: $28 $84

    nop                                           ; $528e: $00
    ld a, e                                       ; $528f: $7b
    jr nz, jr_0cd_5271                            ; $5290: $20 $df

    sub l                                         ; $5292: $95
    ld l, d                                       ; $5293: $6a

jr_0cd_5294:
    jr jr_0cd_527d                                ; $5294: $18 $e7

    add b                                         ; $5296: $80
    ld b, b                                       ; $5297: $40
    ld a, a                                       ; $5298: $7f
    ldh a, [$08]                                  ; $5299: $f0 $08
    cp $01                                        ; $529b: $fe $01
    daa                                           ; $529d: $27
    ret nz                                        ; $529e: $c0

    ld sp, $00c0                                  ; $529f: $31 $c0 $00
    db $e3                                        ; $52a2: $e3
    nop                                           ; $52a3: $00
    inc b                                         ; $52a4: $04
    inc bc                                        ; $52a5: $03
    add [hl]                                      ; $52a6: $86
    ld bc, $0304                                  ; $52a7: $01 $04 $03
    nop                                           ; $52aa: $00
    add hl, sp                                    ; $52ab: $39
    ld [bc], a                                    ; $52ac: $02
    rst $20                                       ; $52ad: $e7
    jr jr_0cd_5325                                ; $52ae: $18 $75

    ld [$00b8], sp                                ; $52b0: $08 $b8 $00
    ld b, $5c                                     ; $52b3: $06 $5c
    nop                                           ; $52b5: $00
    dec bc                                        ; $52b6: $0b
    nop                                           ; $52b7: $00
    adc b                                         ; $52b8: $88
    sub b                                         ; $52b9: $90
    jr nz, @+$18                                  ; $52ba: $20 $16

    add hl, bc                                    ; $52bc: $09
    add b                                         ; $52bd: $80
    nop                                           ; $52be: $00
    ld a, a                                       ; $52bf: $7f
    ld l, b                                       ; $52c0: $68
    sub a                                         ; $52c1: $97
    nop                                           ; $52c2: $00
    rst $38                                       ; $52c3: $ff
    ld b, b                                       ; $52c4: $40
    cp a                                          ; $52c5: $bf
    nop                                           ; $52c6: $00
    nop                                           ; $52c7: $00
    rst $38                                       ; $52c8: $ff
    ret                                           ; $52c9: $c9


    ld b, $ed                                     ; $52ca: $06 $ed
    inc bc                                        ; $52cc: $03
    inc a                                         ; $52cd: $3c
    jp $0017                                      ; $52ce: $c3 $17 $00


    add sp, -$31                                  ; $52d1: $e8 $cf
    jr nc, jr_0cd_5294                            ; $52d3: $30 $bf

    ld b, b                                       ; $52d5: $40
    ld d, e                                       ; $52d6: $53
    db $ec                                        ; $52d7: $ec
    call z, $ff00                                 ; $52d8: $cc $00 $ff
    ld e, b                                       ; $52db: $58
    and a                                         ; $52dc: $a7
    ld d, $e9                                     ; $52dd: $16 $e9
    add $f9                                       ; $52df: $c6 $f9
    ret c                                         ; $52e1: $d8

    nop                                           ; $52e2: $00
    rst $20                                       ; $52e3: $e7
    ld de, $4aef                                  ; $52e4: $11 $ef $4a
    rst $38                                       ; $52e7: $ff
    ld a, $ff                                     ; $52e8: $3e $ff
    ld e, a                                       ; $52ea: $5f
    nop                                           ; $52eb: $00
    rst $38                                       ; $52ec: $ff
    ld b, d                                       ; $52ed: $42
    cp a                                          ; $52ee: $bf
    inc de                                        ; $52ef: $13
    rst $38                                       ; $52f0: $ff
    ld b, a                                       ; $52f1: $47
    rst $38                                       ; $52f2: $ff
    jr nc, jr_0cd_52f5                            ; $52f3: $30 $00

jr_0cd_52f5:
    rst $38                                       ; $52f5: $ff
    jr c, @+$01                                   ; $52f6: $38 $ff

    ld a, [de]                                    ; $52f8: $1a
    rst $38                                       ; $52f9: $ff
    db $f4                                        ; $52fa: $f4
    rst $38                                       ; $52fb: $ff
    cp $00                                        ; $52fc: $fe $00
    rst $38                                       ; $52fe: $ff
    pop af                                        ; $52ff: $f1
    nop                                           ; $5300: $00
    dec bc                                        ; $5301: $0b
    ldh a, [$0e]                                  ; $5302: $f0 $0e
    pop af                                        ; $5304: $f1
    cp $00                                        ; $5305: $fe $00
    ld bc, $00cf                                  ; $5307: $01 $cf $00
    inc sp                                        ; $530a: $33
    call z, $dca7                                 ; $530b: $cc $a7 $dc
    call z, $ff00                                 ; $530e: $cc $00 $ff
    ret nc                                        ; $5311: $d0

    cpl                                           ; $5312: $2f
    or b                                          ; $5313: $b0
    rrca                                          ; $5314: $0f
    ld d, l                                       ; $5315: $55
    xor d                                         ; $5316: $aa
    dec bc                                        ; $5317: $0b
    nop                                           ; $5318: $00
    ldh a, [$79]                                  ; $5319: $f0 $79
    add b                                         ; $531b: $80
    and $19                                       ; $531c: $e6 $19
    ld b, h                                       ; $531e: $44
    cp e                                          ; $531f: $bb
    ret c                                         ; $5320: $d8

    ld c, [hl]                                    ; $5321: $4e
    daa                                           ; $5322: $27
    and $18                                       ; $5323: $e6 $18

jr_0cd_5325:
    ld c, b                                       ; $5325: $48
    or a                                          ; $5326: $b7
    ld e, h                                       ; $5327: $5c
    ld [$0964], sp                                ; $5328: $08 $64 $09
    ld [bc], a                                    ; $532b: $02
    ld l, b                                       ; $532c: $68
    add b                                         ; $532d: $80
    add b                                         ; $532e: $80
    sub h                                         ; $532f: $94
    ld bc, $ffcc                                  ; $5330: $01 $cc $ff
    sub b                                         ; $5333: $90
    rst $38                                       ; $5334: $ff
    and e                                         ; $5335: $a3
    rst $38                                       ; $5336: $ff
    or b                                          ; $5337: $b0
    jr nz, @+$01                                  ; $5338: $20 $ff

    or $02                                        ; $533a: $f6 $02
    nop                                           ; $533c: $00
    ccf                                           ; $533d: $3f
    ret nz                                        ; $533e: $c0

jr_0cd_533f:
    ld e, a                                       ; $533f: $5f
    and b                                         ; $5340: $a0
    add hl, bc                                    ; $5341: $09
    db $10                                        ; $5342: $10
    or $16                                        ; $5343: $f6 $16
    jp hl                                         ; $5345: $e9


    ret nc                                        ; $5346: $d0

    jr z, @+$01                                   ; $5347: $28 $ff

    nop                                           ; $5349: $00
    ld l, e                                       ; $534a: $6b

jr_0cd_534b:
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    add a                                         ; $534d: $87
    nop                                           ; $534e: $00
    inc c                                         ; $534f: $0c
    inc bc                                        ; $5350: $03
    ld h, $01                                     ; $5351: $26 $01
    rlca                                          ; $5353: $07
    nop                                           ; $5354: $00

jr_0cd_5355:
    nop                                           ; $5355: $00
    sbc e                                         ; $5356: $9b
    nop                                           ; $5357: $00
    ld a, l                                       ; $5358: $7d
    ld [bc], a                                    ; $5359: $02
    inc d                                         ; $535a: $14
    db $eb                                        ; $535b: $eb
    db $10                                        ; $535c: $10
    rst $28                                       ; $535d: $ef
    nop                                           ; $535e: $00

jr_0cd_535f:
    add b                                         ; $535f: $80
    ld a, a                                       ; $5360: $7f
    ld e, a                                       ; $5361: $5f
    jr nz, jr_0cd_53ac                            ; $5362: $20 $48

    scf                                           ; $5364: $37
    sbc b                                         ; $5365: $98
    ld h, a                                       ; $5366: $67
    ld [$7c83], sp                                ; $5367: $08 $83 $7c
    jr nz, jr_0cd_534b                            ; $536a: $20 $df

    ld b, [hl]                                    ; $536c: $46
    add hl, de                                    ; $536d: $19
    ld [bc], a                                    ; $536e: $02
    db $fd                                        ; $536f: $fd
    ret nz                                        ; $5370: $c0

    nop                                           ; $5371: $00
    ccf                                           ; $5372: $3f
    ld c, b                                       ; $5373: $48
    or a                                          ; $5374: $b7
    ld [$00f7], sp                                ; $5375: $08 $f7 $00
    rst $38                                       ; $5378: $ff
    pop de                                        ; $5379: $d1
    nop                                           ; $537a: $00
    ld l, $20                                     ; $537b: $2e $20
    rst $18                                       ; $537d: $df
    jr nz, jr_0cd_535f                            ; $537e: $20 $df

    add [hl]                                      ; $5380: $86
    ld a, c                                       ; $5381: $79
    dec b                                         ; $5382: $05
    ld b, b                                       ; $5383: $40
    ld a, [$08d6]                                 ; $5384: $fa $d6 $08
    inc h                                         ; $5387: $24
    db $db                                        ; $5388: $db
    ld h, e                                       ; $5389: $63

jr_0cd_538a:
    sbc h                                         ; $538a: $9c
    ld [hl], d                                    ; $538b: $72
    adc l                                         ; $538c: $8d
    dec b                                         ; $538d: $05
    rst $30                                       ; $538e: $f7
    ld [$00bd], sp                                ; $538f: $08 $bd $00
    ld de, $0266                                  ; $5392: $11 $66 $02
    adc h                                         ; $5395: $8c
    ret nc                                        ; $5396: $d0

    ld bc, $b040                                  ; $5397: $01 $40 $b0
    ld a, b                                       ; $539a: $78
    ld [bc], a                                    ; $539b: $02
    ld l, e                                       ; $539c: $6b
    db $10                                        ; $539d: $10
    push bc                                       ; $539e: $c5
    jr c, jr_0cd_5355                             ; $539f: $38 $b4

    ld c, b                                       ; $53a1: $48
    nop                                           ; $53a2: $00
    db $dd                                        ; $53a3: $dd
    jr nz, jr_0cd_533f                            ; $53a4: $20 $99

    ld h, b                                       ; $53a6: $60
    push hl                                       ; $53a7: $e5
    nop                                           ; $53a8: $00
    db $10                                        ; $53a9: $10
    rst $28                                       ; $53aa: $ef
    ld [hl-], a                                   ; $53ab: $32

jr_0cd_53ac:
    inc c                                         ; $53ac: $0c
    di                                            ; $53ad: $f3
    sub [hl]                                      ; $53ae: $96
    ld c, b                                       ; $53af: $48
    ret nc                                        ; $53b0: $d0

    ld c, b                                       ; $53b1: $48
    inc hl                                        ; $53b2: $23
    call c, Call_000_0a32                         ; $53b3: $dc $32 $0a
    ret z                                         ; $53b6: $c8

    nop                                           ; $53b7: $00
    scf                                           ; $53b8: $37
    db $fd                                        ; $53b9: $fd
    ld [bc], a                                    ; $53ba: $02
    di                                            ; $53bb: $f3
    inc c                                         ; $53bc: $0c
    add sp, $17                                   ; $53bd: $e8 $17
    inc a                                         ; $53bf: $3c
    ld [bc], a                                    ; $53c0: $02
    jp $c037                                      ; $53c1: $c3 $37 $c0


    sub e                                         ; $53c4: $93
    ld h, b                                       ; $53c5: $60
    rst $38                                       ; $53c6: $ff
    ld l, d                                       ; $53c7: $6a
    ld [bc], a                                    ; $53c8: $02
    dec d                                         ; $53c9: $15
    ld b, b                                       ; $53ca: $40
    ld [$0970], a                                 ; $53cb: $ea $70 $09
    inc bc                                        ; $53ce: $03
    db $fc                                        ; $53cf: $fc
    ld b, $f9                                     ; $53d0: $06 $f9
    nop                                           ; $53d2: $00
    rst $38                                       ; $53d3: $ff
    ldh a, [$03]                                  ; $53d4: $f0 $03
    db $fc                                        ; $53d6: $fc
    ld [bc], a                                    ; $53d7: $02
    ld b, b                                       ; $53d8: $40
    nop                                           ; $53d9: $00
    ld bc, $0310                                  ; $53da: $01 $10 $03
    nop                                           ; $53dd: $00
    inc b                                         ; $53de: $04
    inc bc                                        ; $53df: $03
    add hl, bc                                    ; $53e0: $09
    ld b, $08                                     ; $53e1: $06 $08
    inc de                                        ; $53e3: $13
    inc c                                         ; $53e4: $0c
    ld d, $09                                     ; $53e5: $16 $09
    db $10                                        ; $53e7: $10
    jr jr_0cd_538a                                ; $53e8: $18 $a0

    ld b, b                                       ; $53ea: $40
    nop                                           ; $53eb: $00
    ld bc, $f0f0                                  ; $53ec: $01 $f0 $f0
    ld [$04f8], sp                                ; $53ef: $08 $f8 $04
    cp b                                          ; $53f2: $b8
    ld b, h                                       ; $53f3: $44
    jr nz, @+$1a                                  ; $53f4: $20 $18

    add b                                         ; $53f6: $80
    ld b, $60                                     ; $53f7: $06 $60
    inc e                                         ; $53f9: $1c
    inc e                                         ; $53fa: $1c
    ld [hl+], a                                   ; $53fb: $22
    inc d                                         ; $53fc: $14
    ld a, [hl+]                                   ; $53fd: $2a
    ld [$0036], sp                                ; $53fe: $08 $36 $00
    nop                                           ; $5401: $00
    inc e                                         ; $5402: $1c
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00

jr_0cd_5405:
    dec d                                         ; $5405: $15
    ld a, [bc]                                    ; $5406: $0a
    db $10                                        ; $5407: $10
    rrca                                          ; $5408: $0f
    ld bc, $0f10                                  ; $5409: $01 $10 $0f
    ld [$0407], sp                                ; $540c: $08 $07 $04
    inc bc                                        ; $540f: $03
    inc bc                                        ; $5410: $03
    ld c, e                                       ; $5411: $4b
    stop                                          ; $5412: $10 $00
    ld d, b                                       ; $5414: $50
    xor h                                         ; $5415: $ac
    ld [$10f4], sp                                ; $5416: $08 $f4 $10
    db $ec                                        ; $5419: $ec
    nop                                           ; $541a: $00
    ld hl, sp+$30                                 ; $541b: $f8 $30
    nop                                           ; $541d: $00
    ldh a, [rLY]                                  ; $541e: $f0 $44

jr_0cd_5420:
    nop                                           ; $5420: $00
    ld e, l                                       ; $5421: $5d
    db $10                                        ; $5422: $10
    ld de, $0011                                  ; $5423: $11 $11 $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    ld b, h                                       ; $5428: $44
    ld b, h                                       ; $5429: $44
    xor d                                         ; $542a: $aa
    xor d                                         ; $542b: $aa
    ld d, l                                       ; $542c: $55
    ld d, l                                       ; $542d: $55
    cp e                                          ; $542e: $bb
    cp e                                          ; $542f: $bb
    jr nz, jr_0cd_5420                            ; $5430: $20 $ee

    xor $10                                       ; $5432: $ee $10
    db $10                                        ; $5434: $10
    inc e                                         ; $5435: $1c
    ld e, h                                       ; $5436: $5c
    ld h, d                                       ; $5437: $62
    sub h                                         ; $5438: $94
    xor d                                         ; $5439: $aa
    ld [bc], a                                    ; $543a: $02
    ld c, c                                       ; $543b: $49
    ld [hl], a                                    ; $543c: $77
    db $e3                                        ; $543d: $e3
    rst $38                                       ; $543e: $ff
    xor $ee                                       ; $543f: $ee $ee
    ld b, b                                       ; $5441: $40
    jr jr_0cd_548c                                ; $5442: $18 $48

    inc b                                         ; $5444: $04
    ld b, a                                       ; $5445: $47
    xor h                                         ; $5446: $ac
    xor e                                         ; $5447: $ab
    ld d, a                                       ; $5448: $57
    ld d, h                                       ; $5449: $54
    jr nz, @+$0a                                  ; $544a: $20 $08

    ld d, b                                       ; $544c: $50
    xor h                                         ; $544d: $ac
    nop                                           ; $544e: $00
    add hl, bc                                    ; $544f: $09
    push af                                       ; $5450: $f5
    db $10                                        ; $5451: $10
    db $ec                                        ; $5452: $ec
    ld bc, $0af9                                  ; $5453: $01 $f9 $0a
    ld a, [$b560]                                 ; $5456: $fa $60 $b5
    jr nc, @-$7e                                  ; $5459: $30 $80

    ld bc, $e398                                  ; $545b: $01 $98 $e3
    rst $38                                       ; $545e: $ff
    db $dd                                        ; $545f: $dd
    db $e3                                        ; $5460: $e3
    push de                                       ; $5461: $d5
    db $10                                        ; $5462: $10
    db $eb                                        ; $5463: $eb
    ret                                           ; $5464: $c9


    rst $30                                       ; $5465: $f7
    jr nz, jr_0cd_5480                            ; $5466: $20 $18

    xor $ee                                       ; $5468: $ee $ee
    rst $38                                       ; $546a: $ff
    rst $38                                       ; $546b: $ff
    nop                                           ; $546c: $00
    cp e                                          ; $546d: $bb
    cp e                                          ; $546e: $bb
    ld d, l                                       ; $546f: $55
    ld d, l                                       ; $5470: $55
    xor d                                         ; $5471: $aa
    xor d                                         ; $5472: $aa
    ld b, h                                       ; $5473: $44
    ld b, h                                       ; $5474: $44
    ret nz                                        ; $5475: $c0

    ld a, h                                       ; $5476: $7c
    ld [$18e2], sp                                ; $5477: $08 $e2 $18
    ld [bc], a                                    ; $547a: $02
    nop                                           ; $547b: $00
    rlca                                          ; $547c: $07
    nop                                           ; $547d: $00
    daa                                           ; $547e: $27
    nop                                           ; $547f: $00

jr_0cd_5480:
    ld d, d                                       ; $5480: $52
    rrca                                          ; $5481: $0f
    rst $08                                       ; $5482: $cf
    jr nc, jr_0cd_5405                            ; $5483: $30 $80

    inc b                                         ; $5485: $04
    db $10                                        ; $5486: $10
    ret nz                                        ; $5487: $c0

jr_0cd_5488:
    nop                                           ; $5488: $00
    ld d, e                                       ; $5489: $53
    jr nz, jr_0cd_5488                            ; $548a: $20 $fc

jr_0cd_548c:
    nop                                           ; $548c: $00
    db $fc                                        ; $548d: $fc
    ei                                            ; $548e: $fb
    ld sp, hl                                     ; $548f: $f9
    or $f3                                        ; $5490: $f6 $f3
    db $ec                                        ; $5492: $ec
    or $e9                                        ; $5493: $f6 $e9
    add b                                         ; $5495: $80
    ld h, e                                       ; $5496: $63
    jr @-$3f                                      ; $5497: $18 $bf

    ld e, a                                       ; $5499: $5f
    rrca                                          ; $549a: $0f
    rst $38                                       ; $549b: $ff
    rst $30                                       ; $549c: $f7
    rrca                                          ; $549d: $0f
    ei                                            ; $549e: $fb
    nop                                           ; $549f: $00
    rlca                                          ; $54a0: $07
    cp e                                          ; $54a1: $bb
    ld b, a                                       ; $54a2: $47
    inc [hl]                                      ; $54a3: $34
    dec bc                                        ; $54a4: $0b
    or h                                          ; $54a5: $b4
    dec bc                                        ; $54a6: $0b
    inc e                                         ; $54a7: $1c
    nop                                           ; $54a8: $00
    inc bc                                        ; $54a9: $03
    ld e, b                                       ; $54aa: $58
    rlca                                          ; $54ab: $07
    dec c                                         ; $54ac: $0d
    ld [bc], a                                    ; $54ad: $02
    ld a, a                                       ; $54ae: $7f
    nop                                           ; $54af: $00
    call nz, Call_000_3b00                        ; $54b0: $c4 $00 $3b
    add e                                         ; $54b3: $83
    ld a, h                                       ; $54b4: $7c
    ld l, h                                       ; $54b5: $6c
    sub b                                         ; $54b6: $90
    ld sp, $f0c0                                  ; $54b7: $31 $c0 $f0
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    ld h, h                                       ; $54bc: $64
    add b                                         ; $54bd: $80
    ldh a, [rP1]                                  ; $54be: $f0 $00
    sbc b                                         ; $54c0: $98
    ld h, b                                       ; $54c1: $60
    ld c, $02                                     ; $54c2: $0e $02
    ldh a, [$84]                                  ; $54c4: $f0 $84
    ld a, b                                       ; $54c6: $78
    inc de                                        ; $54c7: $13
    nop                                           ; $54c8: $00
    ld b, e                                       ; $54c9: $43
    ld b, e                                       ; $54ca: $43
    ld bc, $0082                                  ; $54cb: $01 $82 $00
    nop                                           ; $54ce: $00
    ld a, b                                       ; $54cf: $78
    nop                                           ; $54d0: $00
    db $ec                                        ; $54d1: $ec
    db $10                                        ; $54d2: $10
    adc [hl]                                      ; $54d3: $8e
    ld [hl], b                                    ; $54d4: $70
    jp nz, Jump_000_3c00                          ; $54d5: $c2 $00 $3c

    push af                                       ; $54d8: $f5
    ld [$eff0], a                                 ; $54d9: $ea $f0 $ef
    ldh a, [$ef]                                  ; $54dc: $f0 $ef
    ld hl, sp+$04                                 ; $54de: $f8 $04
    rst $30                                       ; $54e0: $f7
    db $fc                                        ; $54e1: $fc
    ei                                            ; $54e2: $fb
    rst $38                                       ; $54e3: $ff
    db $fc                                        ; $54e4: $fc
    xor a                                         ; $54e5: $af
    ld [$af53], sp                                ; $54e6: $08 $53 $af
    ld bc, $f70b                                  ; $54e9: $01 $0b $f7
    inc de                                        ; $54ec: $13
    rst $28                                       ; $54ed: $ef
    rlca                                          ; $54ee: $07
    rst $38                                       ; $54ef: $ff
    rrca                                          ; $54f0: $0f
    ld d, h                                       ; $54f1: $54
    nop                                           ; $54f2: $00
    adc b                                         ; $54f3: $88
    cp a                                          ; $54f4: $bf
    ld [$0030], sp                                ; $54f5: $08 $30 $00
    add [hl]                                      ; $54f8: $86
    ld [hl], e                                    ; $54f9: $73
    ld de, $002f                                  ; $54fa: $11 $2f $00
    add hl, de                                    ; $54fd: $19
    ld [bc], a                                    ; $54fe: $02
    ld b, $31                                     ; $54ff: $06 $31
    ld c, $a1                                     ; $5501: $0e $a1
    ld e, $0b                                     ; $5503: $1e $0b
    sub [hl]                                      ; $5505: $96
    db $10                                        ; $5506: $10
    or c                                          ; $5507: $b1
    nop                                           ; $5508: $00
    ld c, $31                                     ; $5509: $0e $31
    ld c, $f0                                     ; $550b: $0e $f0
    rrca                                          ; $550d: $0f
    ld hl, sp+$07                                 ; $550e: $f8 $07
    call z, Call_000_0308                         ; $5510: $cc $08 $03
    db $eb                                        ; $5513: $eb
    nop                                           ; $5514: $00
    di                                            ; $5515: $f3
    dec a                                         ; $5516: $3d
    ld bc, $e01d                                  ; $5517: $01 $1d $e0
    ld c, $00                                     ; $551a: $0e $00
    ldh a, [$08]                                  ; $551c: $f0 $08
    ldh a, [$0a]                                  ; $551e: $f0 $0a
    ldh a, [$38]                                  ; $5520: $f0 $38
    ret nz                                        ; $5522: $c0

    or h                                          ; $5523: $b4
    nop                                           ; $5524: $00
    ld a, [bc]                                    ; $5525: $0a
    jr c, jr_0cd_552e                             ; $5526: $38 $06

    ld e, h                                       ; $5528: $5c
    inc bc                                        ; $5529: $03
    inc e                                         ; $552a: $1c
    inc bc                                        ; $552b: $03
    adc e                                         ; $552c: $8b
    nop                                           ; $552d: $00

jr_0cd_552e:
    inc b                                         ; $552e: $04
    ld a, a                                       ; $552f: $7f
    nop                                           ; $5530: $00
    and $18                                       ; $5531: $e6 $18
    pop bc                                        ; $5533: $c1
    ld a, $1c                                     ; $5534: $3e $1c
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    ei                                            ; $5538: $fb
    nop                                           ; $5539: $00
    ld [hl], e                                    ; $553a: $73
    add b                                         ; $553b: $80
    sbc h                                         ; $553c: $9c
    ld h, b                                       ; $553d: $60
    ld e, $00                                     ; $553e: $1e $00
    ldh [$95], a                                  ; $5540: $e0 $95
    ld l, d                                       ; $5542: $6a
    ei                                            ; $5543: $fb
    inc b                                         ; $5544: $04
    adc $31                                       ; $5545: $ce $31
    jp Jump_000_3c00                              ; $5547: $c3 $00 $3c


    and c                                         ; $554a: $a1
    ld e, [hl]                                    ; $554b: $5e
    rst $30                                       ; $554c: $f7
    ld [$fc03], sp                                ; $554d: $08 $03 $fc
    ld bc, $fe00                                  ; $5550: $01 $00 $fe
    db $e3                                        ; $5553: $e3
    inc e                                         ; $5554: $1c
    ld e, e                                       ; $5555: $5b
    and h                                         ; $5556: $a4
    or $08                                        ; $5557: $f6 $08
    add h                                         ; $5559: $84
    ld bc, $8d78                                  ; $555a: $01 $78 $8d
    ld [hl], b                                    ; $555d: $70
    sbc b                                         ; $555e: $98
    ld h, b                                       ; $555f: $60
    ldh a, [rP1]                                  ; $5560: $f0 $00
    ld a, l                                       ; $5562: $7d
    add hl, bc                                    ; $5563: $09
    nop                                           ; $5564: $00
    stop                                          ; $5565: $10 $00
    inc c                                         ; $5567: $0c
    nop                                           ; $5568: $00
    ld [$6000], sp                                ; $5569: $08 $00 $60
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    ld e, d                                       ; $556e: $5a
    nop                                           ; $556f: $00
    jr jr_0cd_5572                                ; $5570: $18 $00

jr_0cd_5572:
    db $fd                                        ; $5572: $fd
    nop                                           ; $5573: $00
    ld a, [c]                                     ; $5574: $f2
    inc c                                         ; $5575: $0c
    dec b                                         ; $5576: $05
    jp $cf3c                                      ; $5577: $c3 $3c $cf


    jr nc, jr_0cd_557e                            ; $557a: $30 $02

    ld a, [de]                                    ; $557c: $1a
    nop                                           ; $557d: $00

jr_0cd_557e:
    ld a, [de]                                    ; $557e: $1a
    db $10                                        ; $557f: $10
    ld b, b                                       ; $5580: $40
    ld bc, $00c7                                  ; $5581: $01 $c7 $00
    db $eb                                        ; $5584: $eb
    nop                                           ; $5585: $00
    add c                                         ; $5586: $81
    nop                                           ; $5587: $00
    sub e                                         ; $5588: $93
    ld e, $01                                     ; $5589: $1e $01
    nop                                           ; $558b: $00
    adc a                                         ; $558c: $8f
    nop                                           ; $558d: $00
    ld l, $01                                     ; $558e: $2e $01
    ld c, $01                                     ; $5590: $0e $01
    dec e                                         ; $5592: $1d
    ld [c], a                                     ; $5593: $e2
    nop                                           ; $5594: $00
    db $e3                                        ; $5595: $e3
    inc e                                         ; $5596: $1c
    ld h, c                                       ; $5597: $61
    sbc [hl]                                      ; $5598: $9e
    pop bc                                        ; $5599: $c1
    ld a, $70                                     ; $559a: $3e $70
    adc a                                         ; $559c: $8f
    nop                                           ; $559d: $00
    ld b, c                                       ; $559e: $41
    cp [hl]                                       ; $559f: $be
    add b                                         ; $55a0: $80
    ld a, a                                       ; $55a1: $7f
    add c                                         ; $55a2: $81
    ld a, [hl]                                    ; $55a3: $7e
    ld l, b                                       ; $55a4: $68
    add b                                         ; $55a5: $80
    nop                                           ; $55a6: $00
    and c                                         ; $55a7: $a1
    ld b, b                                       ; $55a8: $40
    inc h                                         ; $55a9: $24
    ret nz                                        ; $55aa: $c0

    ldh [rP1], a                                  ; $55ab: $e0 $00
    call z, Call_000_1000                         ; $55ad: $cc $00 $10
    adc h                                         ; $55b0: $8c
    nop                                           ; $55b1: $00
    jr nz, jr_0cd_55fa                            ; $55b2: $20 $46

    ld bc, $002f                                  ; $55b4: $01 $2f $00
    ld a, b                                       ; $55b7: $78
    rlca                                          ; $55b8: $07
    db $10                                        ; $55b9: $10
    ld [hl], b                                    ; $55ba: $70
    rrca                                          ; $55bb: $0f
    jr nc, jr_0cd_55c0                            ; $55bc: $30 $02

    nop                                           ; $55be: $00
    ld e, b                                       ; $55bf: $58

jr_0cd_55c0:
    rlca                                          ; $55c0: $07
    rra                                           ; $55c1: $1f
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
    sbc [hl]                                      ; $55c4: $9e
    ld bc, $00c8                                  ; $55c5: $01 $c8 $00
    ld h, b                                       ; $55c8: $60
    add b                                         ; $55c9: $80

jr_0cd_55ca:
    cp b                                          ; $55ca: $b8
    ld b, b                                       ; $55cb: $40
    nop                                           ; $55cc: $00
    xor d                                         ; $55cd: $aa
    ld d, b                                       ; $55ce: $50
    ld d, $e0                                     ; $55cf: $16 $e0
    scf                                           ; $55d1: $37
    ret nz                                        ; $55d2: $c0

    ld d, b                                       ; $55d3: $50
    and b                                         ; $55d4: $a0
    ld bc, $00f4                                  ; $55d5: $01 $f4 $00
    ldh [rP1], a                                  ; $55d8: $e0 $00
    ldh a, [rP1]                                  ; $55da: $f0 $00
    ld [c], a                                     ; $55dc: $e2

jr_0cd_55dd:
    ld b, $00                                     ; $55dd: $06 $00
    and b                                         ; $55df: $a0
    jr nc, @+$0a                                  ; $55e0: $30 $08

    ld h, b                                       ; $55e2: $60
    ld e, l                                       ; $55e3: $5d
    ld [bc], a                                    ; $55e4: $02
    adc b                                         ; $55e5: $88
    nop                                           ; $55e6: $00
    pop bc                                        ; $55e7: $c1
    nop                                           ; $55e8: $00
    call nz, RST_00                               ; $55e9: $c4 $00 $00
    sbc c                                         ; $55ec: $99
    nop                                           ; $55ed: $00
    rra                                           ; $55ee: $1f
    nop                                           ; $55ef: $00
    ld c, a                                       ; $55f0: $4f
    nop                                           ; $55f1: $00
    rla                                           ; $55f2: $17
    add b                                         ; $55f3: $80
    inc b                                         ; $55f4: $04
    nop                                           ; $55f5: $00
    sbc d                                         ; $55f6: $9a
    dec b                                         ; $55f7: $05
    inc l                                         ; $55f8: $2c
    inc de                                        ; $55f9: $13

jr_0cd_55fa:
    ld hl, sp+$07                                 ; $55fa: $f8 $07
    rst $28                                       ; $55fc: $ef
    nop                                           ; $55fd: $00
    db $10                                        ; $55fe: $10
    cp [hl]                                       ; $55ff: $be
    ld b, c                                       ; $5600: $41
    pop de                                        ; $5601: $d1

Jump_0cd_5602:
    ld l, $21                                     ; $5602: $2e $21
    sbc $c1                                       ; $5604: $de $c1
    nop                                           ; $5606: $00
    ld a, $0b                                     ; $5607: $3e $0b
    db $f4                                        ; $5609: $f4
    ld a, [bc]                                    ; $560a: $0a
    push af                                       ; $560b: $f5
    rst $08                                       ; $560c: $cf
    jr nc, jr_0cd_55ca                            ; $560d: $30 $bb

    ld [hl+], a                                   ; $560f: $22
    ld b, h                                       ; $5610: $44
    ld hl, sp+$48                                 ; $5611: $f8 $48
    nop                                           ; $5613: $00
    and [hl]                                      ; $5614: $a6
    ld b, b                                       ; $5615: $40
    cp $39                                        ; $5616: $fe $39
    ld [bc], a                                    ; $5618: $02
    ei                                            ; $5619: $fb
    ld a, [bc]                                    ; $561a: $0a
    nop                                           ; $561b: $00
    jp nz, $9000                                  ; $561c: $c2 $00 $90

    sub a                                         ; $561f: $97
    ld [bc], a                                    ; $5620: $02
    ret z                                         ; $5621: $c8

    sbc [hl]                                      ; $5622: $9e
    ld bc, $2a20                                  ; $5623: $01 $20 $2a
    nop                                           ; $5626: $00
    add h                                         ; $5627: $84
    and h                                         ; $5628: $a4
    ld bc, $40c0                                  ; $5629: $01 $c0 $40
    db $10                                        ; $562c: $10
    cpl                                           ; $562d: $2f
    jp nz, $0f01                                  ; $562e: $c2 $01 $0f

    add b                                         ; $5631: $80
    adc b                                         ; $5632: $88
    nop                                           ; $5633: $00
    ret                                           ; $5634: $c9


    nop                                           ; $5635: $00
    db $e4                                        ; $5636: $e4
    nop                                           ; $5637: $00
    ld c, e                                       ; $5638: $4b
    nop                                           ; $5639: $00
    ld hl, $0000                                  ; $563a: $21 $00 $00
    ld a, c                                       ; $563d: $79
    nop                                           ; $563e: $00
    db $d3                                        ; $563f: $d3
    jr nz, jr_0cd_55dd                            ; $5640: $20 $9b

    ld h, b                                       ; $5642: $60
    rrca                                          ; $5643: $0f
    and b                                         ; $5644: $a0
    ld e, d                                       ; $5645: $5a
    nop                                           ; $5646: $00
    jr @+$2e                                      ; $5647: $18 $2c

jr_0cd_5649:
    nop                                           ; $5649: $00
    rst $08                                       ; $564a: $cf
    nop                                           ; $564b: $00
    rst $38                                       ; $564c: $ff
    nop                                           ; $564d: $00
    rst $20                                       ; $564e: $e7
    add b                                         ; $564f: $80
    ld [bc], a                                    ; $5650: $02
    nop                                           ; $5651: $00
    add c                                         ; $5652: $81
    ld a, [hl]                                    ; $5653: $7e
    ld bc, $c0fe                                  ; $5654: $01 $fe $c0
    ccf                                           ; $5657: $3f
    ret nz                                        ; $5658: $c0

    nop                                           ; $5659: $00
    ccf                                           ; $565a: $3f
    add b                                         ; $565b: $80
    ld a, a                                       ; $565c: $7f
    ret nz                                        ; $565d: $c0

    ccf                                           ; $565e: $3f
    nop                                           ; $565f: $00
    rst $38                                       ; $5660: $ff
    ld [$f700], sp                                ; $5661: $08 $00 $f7
    xor $10                                       ; $5664: $ee $10
    scf                                           ; $5666: $37
    ret z                                         ; $5667: $c8

    ld bc, $07fe                                  ; $5668: $01 $fe $07
    nop                                           ; $566b: $00
    ld hl, sp+$01                                 ; $566c: $f8 $01
    cp $c1                                        ; $566e: $fe $c1
    ld a, $f0                                     ; $5670: $3e $f0
    rrca                                          ; $5672: $0f
    inc l                                         ; $5673: $2c
    jr z, jr_0cd_5649                             ; $5674: $28 $d3

    ld d, $80                                     ; $5676: $16 $80
    ld bc, $082c                                  ; $5678: $01 $2c $08
    ld [bc], a                                    ; $567b: $02
    adc a                                         ; $567c: $8f
    nop                                           ; $567d: $00
    add a                                         ; $567e: $87
    jr z, jr_0cd_5681                             ; $567f: $28 $00

jr_0cd_5681:
    and a                                         ; $5681: $a7
    inc [hl]                                      ; $5682: $34
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    ld e, $11                                     ; $5685: $1e $11
    cp $00                                        ; $5687: $fe $00
    rst $18                                       ; $5689: $df
    nop                                           ; $568a: $00
    jr nz, jr_0cd_5704                            ; $568b: $20 $77

    adc b                                         ; $568d: $88
    cp $01                                        ; $568e: $fe $01
    dec de                                        ; $5690: $1b
    db $e4                                        ; $5691: $e4
    ld h, e                                       ; $5692: $63
    nop                                           ; $5693: $00
    inc c                                         ; $5694: $0c
    ld [hl], e                                    ; $5695: $73
    inc c                                         ; $5696: $0c
    ld a, $01                                     ; $5697: $3e $01
    ld a, a                                       ; $5699: $7f
    nop                                           ; $569a: $00
    db $e3                                        ; $569b: $e3
    nop                                           ; $569c: $00
    inc e                                         ; $569d: $1c
    pop bc                                        ; $569e: $c1
    ld a, $43                                     ; $569f: $3e $43
    cp h                                          ; $56a1: $bc
    rst $00                                       ; $56a2: $c7
    jr c, @+$01                                   ; $56a3: $38 $ff

    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    jp c, $bf25                                   ; $56a7: $da $25 $bf

    ld b, b                                       ; $56aa: $40
    call z, $8033                                 ; $56ab: $cc $33 $80
    ld b, b                                       ; $56ae: $40
    ld a, a                                       ; $56af: $7f
    ld h, c                                       ; $56b0: $61
    nop                                           ; $56b1: $00
    rst $38                                       ; $56b2: $ff
    inc e                                         ; $56b3: $1c
    db $e3                                        ; $56b4: $e3
    rst $00                                       ; $56b5: $c7
    jr c, @+$68                                   ; $56b6: $38 $66

    nop                                           ; $56b8: $00
    sbc c                                         ; $56b9: $99
    rst $38                                       ; $56ba: $ff
    nop                                           ; $56bb: $00
    adc c                                         ; $56bc: $89
    halt                                          ; $56bd: $76
    add a                                         ; $56be: $87
    ld a, b                                       ; $56bf: $78
    rst $00                                       ; $56c0: $c7
    nop                                           ; $56c1: $00
    jr c, @+$67                                   ; $56c2: $38 $65

    sbc d                                         ; $56c4: $9a
    rst $20                                       ; $56c5: $e7
    jr jr_0cd_56e7                                ; $56c6: $18 $1f

    ldh [rNR22], a                                ; $56c8: $e0 $17
    nop                                           ; $56ca: $00
    add sp, $1e                                   ; $56cb: $e8 $1e
    pop hl                                        ; $56cd: $e1
    jp $823c                                      ; $56ce: $c3 $3c $82


    ld a, l                                       ; $56d1: $7d
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    rst $38                                       ; $56d4: $ff
    ld bc, $06fe                                  ; $56d5: $01 $fe $06
    ld sp, hl                                     ; $56d8: $f9
    inc a                                         ; $56d9: $3c
    jp $c830                                      ; $56da: $c3 $30 $c8


    adc e                                         ; $56dd: $8b
    ld [$002c], sp                                ; $56de: $08 $2c $00
    ld [$32f7], sp                                ; $56e1: $08 $f7 $32
    ld [$817e], sp                                ; $56e4: $08 $7e $81

jr_0cd_56e7:
    or $10                                        ; $56e7: $f6 $10
    add hl, bc                                    ; $56e9: $09
    sbc h                                         ; $56ea: $9c
    ld h, e                                       ; $56eb: $63
    inc a                                         ; $56ec: $3c
    ld [$df20], sp                                ; $56ed: $08 $20 $df
    ld a, b                                       ; $56f0: $78
    add a                                         ; $56f1: $87
    ld [bc], a                                    ; $56f2: $02
    and c                                         ; $56f3: $a1
    ld e, [hl]                                    ; $56f4: $5e
    rrca                                          ; $56f5: $0f
    ldh a, [rTMA]                                 ; $56f6: $f0 $06
    ld sp, hl                                     ; $56f8: $f9
    ld c, d                                       ; $56f9: $4a
    ld [$40f0], sp                                ; $56fa: $08 $f0 $40
    rrca                                          ; $56fd: $0f
    ld [$8008], sp                                ; $56fe: $08 $08 $80
    ld a, a                                       ; $5701: $7f
    inc bc                                        ; $5702: $03
    db $fc                                        ; $5703: $fc

jr_0cd_5704:
    ld b, $f9                                     ; $5704: $06 $f9
    nop                                           ; $5706: $00

jr_0cd_5707:
    rrca                                          ; $5707: $0f
    ldh a, [rIF]                                  ; $5708: $f0 $0f
    ldh a, [$0b]                                  ; $570a: $f0 $0b
    db $f4                                        ; $570c: $f4
    rlca                                          ; $570d: $07
    ld hl, sp+$00                                 ; $570e: $f8 $00
    ld [bc], a                                    ; $5710: $02
    db $fd                                        ; $5711: $fd
    ld bc, $a7fe                                  ; $5712: $01 $fe $a7
    ld e, b                                       ; $5715: $58
    cp [hl]                                       ; $5716: $be
    ld b, c                                       ; $5717: $41
    nop                                           ; $5718: $00
    ld hl, sp+$07                                 ; $5719: $f8 $07
    ld h, b                                       ; $571b: $60
    sbc a                                         ; $571c: $9f
    ldh [$1f], a                                  ; $571d: $e0 $1f
    and b                                         ; $571f: $a0
    ld e, a                                       ; $5720: $5f
    nop                                           ; $5721: $00
    ldh [$1f], a                                  ; $5722: $e0 $1f
    ld hl, sp+$07                                 ; $5724: $f8 $07
    ret c                                         ; $5726: $d8

    daa                                           ; $5727: $27
    ld hl, sp+$07                                 ; $5728: $f8 $07
    nop                                           ; $572a: $00
    add sp, $17                                   ; $572b: $e8 $17
    ld hl, sp+$07                                 ; $572d: $f8 $07
    ld [hl], b                                    ; $572f: $70
    adc a                                         ; $5730: $8f
    ldh a, [rIF]                                  ; $5731: $f0 $0f
    nop                                           ; $5733: $00
    ld h, b                                       ; $5734: $60
    sbc a                                         ; $5735: $9f
    jr nc, jr_0cd_5707                            ; $5736: $30 $cf

    inc d                                         ; $5738: $14
    db $eb                                        ; $5739: $eb
    ccf                                           ; $573a: $3f
    ret nz                                        ; $573b: $c0

    nop                                           ; $573c: $00
    ld l, $d1                                     ; $573d: $2e $d1
    rra                                           ; $573f: $1f
    ldh [rNR31], a                                ; $5740: $e0 $1b
    db $e4                                        ; $5742: $e4
    ld [bc], a                                    ; $5743: $02
    db $fd                                        ; $5744: $fd
    inc bc                                        ; $5745: $03
    inc bc                                        ; $5746: $03
    db $fc                                        ; $5747: $fc
    nop                                           ; $5748: $00
    rst $38                                       ; $5749: $ff
    pop bc                                        ; $574a: $c1
    ld a, $f2                                     ; $574b: $3e $f2
    ld [$1860], sp                                ; $574d: $08 $60 $18
    nop                                           ; $5750: $00
    ld b, b                                       ; $5751: $40
    cp a                                          ; $5752: $bf
    ld bc, $62fe                                  ; $5753: $01 $fe $62
    sbc l                                         ; $5756: $9d
    pop hl                                        ; $5757: $e1
    ld e, $20                                     ; $5758: $1e $20
    add c                                         ; $575a: $81
    ld a, [hl]                                    ; $575b: $7e
    ld d, [hl]                                    ; $575c: $56
    ld [$1ce3], sp                                ; $575d: $08 $e3 $1c
    and e                                         ; $5760: $a3
    ld e, h                                       ; $5761: $5c
    di                                            ; $5762: $f3
    jr nz, jr_0cd_5771                            ; $5763: $20 $0c

    rst $38                                       ; $5765: $ff
    jp c, $be00                                   ; $5766: $da $00 $be

    ld b, c                                       ; $5769: $41
    rst $30                                       ; $576a: $f7
    ld [$10fd], sp                                ; $576b: $08 $fd $10
    ld [bc], a                                    ; $576e: $02
    ld b, b                                       ; $576f: $40
    cp a                                          ; $5770: $bf

jr_0cd_5771:
    ld d, $09                                     ; $5771: $16 $09
    add b                                         ; $5773: $80
    inc bc                                        ; $5774: $03
    add a                                         ; $5775: $87
    ld [bc], a                                    ; $5776: $02
    ld b, b                                       ; $5777: $40
    nop                                           ; $5778: $00
    ld bc, $0370                                  ; $5779: $01 $70 $03
    nop                                           ; $577c: $00
    rlca                                          ; $577d: $07
    nop                                           ; $577e: $00
    ld bc, $5000                                  ; $577f: $01 $00 $50
    dec c                                         ; $5782: $0d
    ld [$0400], sp                                ; $5783: $08 $00 $04
    inc c                                         ; $5786: $0c
    nop                                           ; $5787: $00
    ld hl, sp+$07                                 ; $5788: $f8 $07
    add b                                         ; $578a: $80
    ld a, a                                       ; $578b: $7f
    nop                                           ; $578c: $00
    ld sp, hl                                     ; $578d: $f9
    rlca                                          ; $578e: $07
    nop                                           ; $578f: $00
    rst $38                                       ; $5790: $ff
    db $f4                                        ; $5791: $f4
    dec bc                                        ; $5792: $0b
    nop                                           ; $5793: $00
    rst $38                                       ; $5794: $ff
    nop                                           ; $5795: $00
    add sp, $17                                   ; $5796: $e8 $17
    add b                                         ; $5798: $80
    ld a, a                                       ; $5799: $7f
    rst $08                                       ; $579a: $cf
    ccf                                           ; $579b: $3f
    add c                                         ; $579c: $81
    ld a, a                                       ; $579d: $7f
    nop                                           ; $579e: $00
    rrca                                          ; $579f: $0f
    rst $38                                       ; $57a0: $ff
    add h                                         ; $57a1: $84
    ld a, a                                       ; $57a2: $7f
    ld l, $ff                                     ; $57a3: $2e $ff
    inc c                                         ; $57a5: $0c
    rst $38                                       ; $57a6: $ff
    nop                                           ; $57a7: $00
    inc a                                         ; $57a8: $3c
    rst $38                                       ; $57a9: $ff
    rrca                                          ; $57aa: $0f
    rst $38                                       ; $57ab: $ff
    nop                                           ; $57ac: $00
    rst $38                                       ; $57ad: $ff
    ret nz                                        ; $57ae: $c0

    rst $38                                       ; $57af: $ff
    nop                                           ; $57b0: $00
    dec b                                         ; $57b1: $05
    ld a, [$c03f]                                 ; $57b2: $fa $3f $c0
    add d                                         ; $57b5: $82
    db $fd                                        ; $57b6: $fd
    inc bc                                        ; $57b7: $03
    db $fc                                        ; $57b8: $fc
    nop                                           ; $57b9: $00
    ld a, a                                       ; $57ba: $7f
    add b                                         ; $57bb: $80
    dec c                                         ; $57bc: $0d
    ld a, [c]                                     ; $57bd: $f2
    inc bc                                        ; $57be: $03
    rst $38                                       ; $57bf: $ff
    adc $3f                                       ; $57c0: $ce $3f
    nop                                           ; $57c2: $00
    daa                                           ; $57c3: $27
    rst $18                                       ; $57c4: $df
    add b                                         ; $57c5: $80
    ld a, a                                       ; $57c6: $7f
    di                                            ; $57c7: $f3
    rrca                                          ; $57c8: $0f

jr_0cd_57c9:
    add b                                         ; $57c9: $80
    ld a, a                                       ; $57ca: $7f
    nop                                           ; $57cb: $00
    pop af                                        ; $57cc: $f1
    rrca                                          ; $57cd: $0f
    ld b, b                                       ; $57ce: $40
    cp a                                          ; $57cf: $bf
    jp Jump_000_00fc                              ; $57d0: $c3 $fc $00


    rst $38                                       ; $57d3: $ff
    nop                                           ; $57d4: $00
    rst $20                                       ; $57d5: $e7
    ld hl, sp-$3f                                 ; $57d6: $f8 $c1
    cp $fb                                        ; $57d8: $fe $fb
    db $fc                                        ; $57da: $fc
    ld h, b                                       ; $57db: $60
    rst $38                                       ; $57dc: $ff
    nop                                           ; $57dd: $00
    ld sp, hl                                     ; $57de: $f9
    cp $20                                        ; $57df: $fe $20
    rst $38                                       ; $57e1: $ff
    jp Jump_000_003f                              ; $57e2: $c3 $3f $00


    rst $38                                       ; $57e5: $ff
    nop                                           ; $57e6: $00
    ld sp, hl                                     ; $57e7: $f9
    rlca                                          ; $57e8: $07
    ret nz                                        ; $57e9: $c0

    ccf                                           ; $57ea: $3f
    ldh a, [rIF]                                  ; $57eb: $f0 $0f
    inc bc                                        ; $57ed: $03
    rst $38                                       ; $57ee: $ff
    nop                                           ; $57ef: $00
    ret nc                                        ; $57f0: $d0

    cpl                                           ; $57f1: $2f
    nop                                           ; $57f2: $00
    rst $38                                       ; $57f3: $ff
    pop hl                                        ; $57f4: $e1
    cp $38                                        ; $57f5: $fe $38
    rst $38                                       ; $57f7: $ff
    inc b                                         ; $57f8: $04
    ldh [rIE], a                                  ; $57f9: $e0 $ff
    pop af                                        ; $57fb: $f1
    cp $78                                        ; $57fc: $fe $78
    ld b, $00                                     ; $57fe: $06 $00
    jp Jump_000_00fc                              ; $5800: $c3 $fc $00


    ldh a, [rIE]                                  ; $5803: $f0 $ff
    ld hl, sp+$00                                 ; $5805: $f8 $00
    jr nc, jr_0cd_57c9                            ; $5807: $30 $c0

    db $fc                                        ; $5809: $fc
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    ldh [rP1], a                                  ; $580c: $e0 $00
    ld a, b                                       ; $580e: $78
    add b                                         ; $580f: $80
    ldh [rP1], a                                  ; $5810: $e0 $00
    ret nz                                        ; $5812: $c0

    nop                                           ; $5813: $00
    inc b                                         ; $5814: $04
    ld h, b                                       ; $5815: $60
    add b                                         ; $5816: $80
    ldh a, [rP1]                                  ; $5817: $f0 $00
    db $fc                                        ; $5819: $fc
    ld b, $00                                     ; $581a: $06 $00
    db $f4                                        ; $581c: $f4
    nop                                           ; $581d: $00
    ld d, b                                       ; $581e: $50
    and b                                         ; $581f: $a0
    inc d                                         ; $5820: $14
    nop                                           ; $5821: $00
    ld b, b                                       ; $5822: $40
    ld c, $00                                     ; $5823: $0e $00
    rla                                           ; $5825: $17
    nop                                           ; $5826: $00
    ld a, $01                                     ; $5827: $3e $01
    nop                                           ; $5829: $00
    ld b, $01                                     ; $582a: $06 $01
    ld a, a                                       ; $582c: $7f
    nop                                           ; $582d: $00
    ld c, $01                                     ; $582e: $0e $01
    ld [$0007], sp                                ; $5830: $08 $07 $00
    rra                                           ; $5833: $1f
    nop                                           ; $5834: $00
    ld e, $01                                     ; $5835: $1e $01
    sbc h                                         ; $5837: $9c
    ld a, a                                       ; $5838: $7f
    rlca                                          ; $5839: $07
    rst $38                                       ; $583a: $ff
    nop                                           ; $583b: $00
    cp h                                          ; $583c: $bc
    ld a, a                                       ; $583d: $7f
    ld c, $ff                                     ; $583e: $0e $ff
    ld d, $ff                                     ; $5840: $16 $ff
    inc bc                                        ; $5842: $03
    rst $38                                       ; $5843: $ff
    ld b, b                                       ; $5844: $40
    sbc a                                         ; $5845: $9f
    ld [$0700], sp                                ; $5846: $08 $00 $07
    ld hl, sp+$3f                                 ; $5849: $f8 $3f
    ret nz                                        ; $584b: $c0

    ld [bc], a                                    ; $584c: $02
    db $fd                                        ; $584d: $fd
    nop                                           ; $584e: $00
    sub a                                         ; $584f: $97
    add sp, $0f                                   ; $5850: $e8 $0f
    ldh a, [$82]                                  ; $5852: $f0 $82
    db $fd                                        ; $5854: $fd
    rrca                                          ; $5855: $0f
    ldh a, [rNR41]                                ; $5856: $f0 $20
    nop                                           ; $5858: $00
    rst $38                                       ; $5859: $ff
    ret nz                                        ; $585a: $c0

    ld [$0ff3], sp                                ; $585b: $08 $f3 $0f
    ld b, c                                       ; $585e: $41
    cp a                                          ; $585f: $bf
    inc b                                         ; $5860: $04
    nop                                           ; $5861: $00
    rst $38                                       ; $5862: $ff
    di                                            ; $5863: $f3
    rrca                                          ; $5864: $0f
    ld b, a                                       ; $5865: $47
    cp a                                          ; $5866: $bf
    ld hl, $f8df                                  ; $5867: $21 $df $f8

jr_0cd_586a:
    ld [$70ff], sp                                ; $586a: $08 $ff $70
    rst $38                                       ; $586d: $ff
    db $e3                                        ; $586e: $e3
    ld l, b                                       ; $586f: $68
    nop                                           ; $5870: $00
    ld b, b                                       ; $5871: $40
    rst $38                                       ; $5872: $ff
    di                                            ; $5873: $f3
    nop                                           ; $5874: $00
    db $fc                                        ; $5875: $fc
    add b                                         ; $5876: $80
    rst $38                                       ; $5877: $ff
    rst $08                                       ; $5878: $cf
    ldh a, [$c0]                                  ; $5879: $f0 $c0
    nop                                           ; $587b: $00
    ld hl, sp+$22                                 ; $587c: $f8 $22
    nop                                           ; $587e: $00
    sub b                                         ; $587f: $90
    inc b                                         ; $5880: $04
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    ldh a, [$0b]                                  ; $5884: $f0 $0b
    ld bc, $00c0                                  ; $5886: $01 $c0 $00
    nop                                           ; $5889: $00
    ld a, a                                       ; $588a: $7f
    nop                                           ; $588b: $00
    jr c, jr_0cd_5895                             ; $588c: $38 $07

    ld e, $01                                     ; $588e: $1e $01
    rrca                                          ; $5890: $0f
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    inc e                                         ; $5893: $1c
    inc bc                                        ; $5894: $03

jr_0cd_5895:
    ld c, $01                                     ; $5895: $0e $01
    ccf                                           ; $5897: $3f
    nop                                           ; $5898: $00
    inc d                                         ; $5899: $14
    jr z, jr_0cd_58a7                             ; $589a: $28 $0b

    add b                                         ; $589c: $80
    add [hl]                                      ; $589d: $86
    nop                                           ; $589e: $00
    ld hl, sp+$7e                                 ; $589f: $f8 $7e
    nop                                           ; $58a1: $00
    ldh a, [rP1]                                  ; $58a2: $f0 $00
    add b                                         ; $58a4: $80
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00

jr_0cd_58a7:
    ld [hl], b                                    ; $58a7: $70
    add b                                         ; $58a8: $80
    ld h, b                                       ; $58a9: $60
    add b                                         ; $58aa: $80
    ccf                                           ; $58ab: $3f
    nop                                           ; $58ac: $00
    rrca                                          ; $58ad: $0f
    ld a, [bc]                                    ; $58ae: $0a
    nop                                           ; $58af: $00
    dec a                                         ; $58b0: $3d
    ld [bc], a                                    ; $58b1: $02
    rlca                                          ; $58b2: $07
    ld b, $00                                     ; $58b3: $06 $00
    daa                                           ; $58b5: $27
    ld a, [hl+]                                   ; $58b6: $2a
    ld bc, $940f                                  ; $58b7: $01 $0f $94
    ld a, $00                                     ; $58ba: $3e $00
    ld h, b                                       ; $58bc: $60
    add b                                         ; $58bd: $80
    inc h                                         ; $58be: $24
    ld [$b07c], sp                                ; $58bf: $08 $7c $b0
    db $10                                        ; $58c2: $10
    ld [hl], b                                    ; $58c3: $70
    add b                                         ; $58c4: $80
    inc d                                         ; $58c5: $14
    ld b, $01                                     ; $58c6: $06 $01
    cpl                                           ; $58c8: $2f
    ld b, d                                       ; $58c9: $42
    ld bc, $3c1e                                  ; $58ca: $01 $1e $3c
    nop                                           ; $58cd: $00
    dec c                                         ; $58ce: $0d
    ld [bc], a                                    ; $58cf: $02
    nop                                           ; $58d0: $00
    ld a, $01                                     ; $58d1: $3e $01
    db $10                                        ; $58d3: $10
    rrca                                          ; $58d4: $0f
    ld h, b                                       ; $58d5: $60
    sbc a                                         ; $58d6: $9f
    add e                                         ; $58d7: $83
    ld a, a                                       ; $58d8: $7f
    nop                                           ; $58d9: $00
    ldh [$1f], a                                  ; $58da: $e0 $1f
    nop                                           ; $58dc: $00
    rst $38                                       ; $58dd: $ff
    adc e                                         ; $58de: $8b
    ld a, a                                       ; $58df: $7f
    ld bc, $44ff                                  ; $58e0: $01 $ff $44
    dec e                                         ; $58e3: $1d
    and h                                         ; $58e4: $a4
    nop                                           ; $58e5: $00
    ld hl, sp-$01                                 ; $58e6: $f8 $ff
    jr nc, jr_0cd_586a                            ; $58e8: $30 $80

    nop                                           ; $58ea: $00
    ld hl, sp-$01                                 ; $58eb: $f8 $ff
    ld h, b                                       ; $58ed: $60
    dec l                                         ; $58ee: $2d
    ld a, [c]                                     ; $58ef: $f2
    nop                                           ; $58f0: $00
    db $fc                                        ; $58f1: $fc
    ld [$1fe7], sp                                ; $58f2: $08 $e7 $1f
    rrca                                          ; $58f5: $0f
    rst $38                                       ; $58f6: $ff
    add e                                         ; $58f7: $83
    and b                                         ; $58f8: $a0
    call nz, $9a00                                ; $58f9: $c4 $00 $9a
    ret z                                         ; $58fc: $c8

    nop                                           ; $58fd: $00
    sbc [hl]                                      ; $58fe: $9e
    ld a, a                                       ; $58ff: $7f
    add [hl]                                      ; $5900: $86
    ld a, a                                       ; $5901: $7f
    add b                                         ; $5902: $80
    nop                                           ; $5903: $00
    rst $38                                       ; $5904: $ff
    ld b, a                                       ; $5905: $47
    ld hl, sp+$03                                 ; $5906: $f8 $03
    db $fc                                        ; $5908: $fc
    call $07f2                                    ; $5909: $cd $f2 $07
    add [hl]                                      ; $590c: $86
    ld b, $00                                     ; $590d: $06 $00
    ld e, a                                       ; $590f: $5f
    and b                                         ; $5910: $a0
    inc bc                                        ; $5911: $03
    db $fc                                        ; $5912: $fc
    nop                                           ; $5913: $00
    add hl, bc                                    ; $5914: $09
    ld a, [hl]                                    ; $5915: $7e
    ld [$20fc], sp                                ; $5916: $08 $fc $20
    nop                                           ; $5919: $00
    jr nz, @-$7a                                  ; $591a: $20 $84

    db $10                                        ; $591c: $10
    ld a, [hl]                                    ; $591d: $7e
    ld bc, $0718                                  ; $591e: $01 $18 $07
    inc a                                         ; $5921: $3c
    nop                                           ; $5922: $00
    inc bc                                        ; $5923: $03
    ld a, a                                       ; $5924: $7f
    nop                                           ; $5925: $00
    jr nz, jr_0cd_5947                            ; $5926: $20 $1f

    jr jr_0cd_5931                                ; $5928: $18 $07

    ld c, $02                                     ; $592a: $0e $02
    ld bc, $031c                                  ; $592c: $01 $1c $03
    adc a                                         ; $592f: $8f
    ld a, a                                       ; $5930: $7f

jr_0cd_5931:
    ld [bc], a                                    ; $5931: $02
    add [hl]                                      ; $5932: $86
    ld bc, $8236                                  ; $5933: $01 $36 $82
    adc [hl]                                      ; $5936: $8e
    ld bc, $ff1f                                  ; $5937: $01 $1f $ff
    ld a, b                                       ; $593a: $78
    rst $38                                       ; $593b: $ff
    ld e, $4c                                     ; $593c: $1e $4c
    ld bc, $00f9                                  ; $593e: $01 $f9 $00
    cp $e3                                        ; $5941: $fe $e3
    db $fc                                        ; $5943: $fc
    add hl, sp                                    ; $5944: $39
    cp $d0                                        ; $5945: $fe $d0

jr_0cd_5947:
    rst $38                                       ; $5947: $ff
    add a                                         ; $5948: $87
    ld [$f2f8], sp                                ; $5949: $08 $f8 $f2
    db $fd                                        ; $594c: $fd
    add b                                         ; $594d: $80
    ld d, $00                                     ; $594e: $16 $00
    add a                                         ; $5950: $87
    ld a, a                                       ; $5951: $7f
    call z, Call_000_3f22                         ; $5952: $cc $22 $3f
    ld b, $1c                                     ; $5955: $06 $1c
    ld bc, $3fc7                                  ; $5957: $01 $c7 $3f
    ld bc, $000c                                  ; $595a: $01 $0c $00
    rlca                                          ; $595d: $07
    nop                                           ; $595e: $00
    ld hl, sp-$61                                 ; $595f: $f8 $9f
    ldh [$03], a                                  ; $5961: $e0 $03
    db $fc                                        ; $5963: $fc
    ld e, $e1                                     ; $5964: $1e $e1
    ret nz                                        ; $5966: $c0

    nop                                           ; $5967: $00
    rst $38                                       ; $5968: $ff
    dec bc                                        ; $5969: $0b
    db $f4                                        ; $596a: $f4
    nop                                           ; $596b: $00
    rst $38                                       ; $596c: $ff
    rst $00                                       ; $596d: $c7
    ld hl, sp+$60                                 ; $596e: $f8 $60
    ld hl, $3e1f                                  ; $5970: $21 $1f $3e
    ld d, d                                       ; $5973: $52
    nop                                           ; $5974: $00
    ld [hl], b                                    ; $5975: $70
    rrca                                          ; $5976: $0f
    inc a                                         ; $5977: $3c
    inc bc                                        ; $5978: $03
    ld d, b                                       ; $5979: $50
    ld [$3015], sp                                ; $597a: $08 $15 $30
    rrca                                          ; $597d: $0f
    jr c, @+$22                                   ; $597e: $38 $20

    ld bc, $a40e                                  ; $5980: $01 $0e $a4
    nop                                           ; $5983: $00
    db $fc                                        ; $5984: $fc
    ld b, $00                                     ; $5985: $06 $00
    ld h, d                                       ; $5987: $62
    ccf                                           ; $5988: $3f
    db $e4                                        ; $5989: $e4
    ld bc, $09c0                                  ; $598a: $01 $c0 $09
    add e                                         ; $598d: $83
    db $fc                                        ; $598e: $fc
    rra                                           ; $598f: $1f
    inc [hl]                                      ; $5990: $34
    nop                                           ; $5991: $00
    cpl                                           ; $5992: $2f
    db $10                                        ; $5993: $10
    ret nc                                        ; $5994: $d0

    ld a, a                                       ; $5995: $7f
    add b                                         ; $5996: $80
    sub [hl]                                      ; $5997: $96
    nop                                           ; $5998: $00
    rst $38                                       ; $5999: $ff
    call z, Call_000_033f                         ; $599a: $cc $3f $03
    ld [bc], a                                    ; $599d: $02
    rst $38                                       ; $599e: $ff
    ld bc, $e0ff                                  ; $599f: $01 $ff $e0
    rra                                           ; $59a2: $1f
    inc bc                                        ; $59a3: $03
    db $fc                                        ; $59a4: $fc
    ld bc, $02c1                                  ; $59a5: $01 $c1 $02
    ccf                                           ; $59a8: $3f
    add e                                         ; $59a9: $83
    db $fc                                        ; $59aa: $fc
    pop af                                        ; $59ab: $f1
    cp $c0                                        ; $59ac: $fe $c0
    sub $00                                       ; $59ae: $d6 $00
    ret nz                                        ; $59b0: $c0

    xor b                                         ; $59b1: $a8
    call nz, $e001                                ; $59b2: $c4 $01 $e0
    sbc $08                                       ; $59b5: $de $08
    ret nz                                        ; $59b7: $c0

    ld [de], a                                    ; $59b8: $12
    add hl, bc                                    ; $59b9: $09
    ldh [rP1], a                                  ; $59ba: $e0 $00
    ld l, b                                       ; $59bc: $68
    nop                                           ; $59bd: $00
    sub b                                         ; $59be: $90
    call z, Call_000_3020                         ; $59bf: $cc $20 $30
    ret nz                                        ; $59c2: $c0

    ld a, b                                       ; $59c3: $78
    add b                                         ; $59c4: $80
    ld a, [hl]                                    ; $59c5: $7e
    add c                                         ; $59c6: $81
    xor b                                         ; $59c7: $a8
    ld bc, $031c                                  ; $59c8: $01 $1c $03
    ld e, a                                       ; $59cb: $5f
    nop                                           ; $59cc: $00
    inc c                                         ; $59cd: $0c
    inc bc                                        ; $59ce: $03
    ld a, [hl-]                                   ; $59cf: $3a
    add hl, bc                                    ; $59d0: $09
    sub l                                         ; $59d1: $95
    ld a, [bc]                                    ; $59d2: $0a
    nop                                           ; $59d3: $00
    rst $38                                       ; $59d4: $ff
    ld b, $aa                                     ; $59d5: $06 $aa
    nop                                           ; $59d7: $00
    add [hl]                                      ; $59d8: $86
    ld b, h                                       ; $59d9: $44
    ld [bc], a                                    ; $59da: $02
    ld bc, $00fc                                  ; $59db: $01 $fc $00
    ld [$ff01], sp                                ; $59de: $08 $01 $ff
    rst $18                                       ; $59e1: $df
    jr nz, jr_0cd_5a1c                            ; $59e2: $20 $38

    ld a, [bc]                                    ; $59e4: $0a
    rlca                                          ; $59e5: $07
    ld hl, sp+$2f                                 ; $59e6: $f8 $2f
    nop                                           ; $59e8: $00
    ret nc                                        ; $59e9: $d0

    rlca                                          ; $59ea: $07
    ld hl, sp+$1f                                 ; $59eb: $f8 $1f
    ldh [rSB], a                                  ; $59ed: $e0 $01
    cp $f0                                        ; $59ef: $fe $f0
    ld [bc], a                                    ; $59f1: $02
    rrca                                          ; $59f2: $0f
    ld bc, $68ff                                  ; $59f3: $01 $ff $68
    sub a                                         ; $59f6: $97

jr_0cd_59f7:
    nop                                           ; $59f7: $00
    ld e, b                                       ; $59f8: $58
    ld [bc], a                                    ; $59f9: $02
    db $e3                                        ; $59fa: $e3
    nop                                           ; $59fb: $00
    rra                                           ; $59fc: $1f
    add b                                         ; $59fd: $80
    ld a, a                                       ; $59fe: $7f
    ld b, $ff                                     ; $59ff: $06 $ff
    jr nz, @+$01                                  ; $5a01: $20 $ff

    add sp, $2a                                   ; $5a03: $e8 $2a
    rst $38                                       ; $5a05: $ff
    ld a, h                                       ; $5a06: $7c
    inc [hl]                                      ; $5a07: $34
    ld bc, $3ec0                                  ; $5a08: $01 $c0 $3e
    ld [bc], a                                    ; $5a0b: $02
    ld h, b                                       ; $5a0c: $60
    ld a, $01                                     ; $5a0d: $3e $01
    ldh a, [$82]                                  ; $5a0f: $f0 $82
    jr nz, jr_0cd_5a15                            ; $5a11: $20 $02

    ldh [rP1], a                                  ; $5a13: $e0 $00

jr_0cd_5a15:
    jr jr_0cd_59f7                                ; $5a15: $18 $e0

    ld a, h                                       ; $5a17: $7c
    ld a, [de]                                    ; $5a18: $1a
    ld [bc], a                                    ; $5a19: $02
    jr c, jr_0cd_5a44                             ; $5a1a: $38 $28

jr_0cd_5a1c:
    ret nz                                        ; $5a1c: $c0

    ldh a, [$8e]                                  ; $5a1d: $f0 $8e
    ld bc, $b21f                                  ; $5a1f: $01 $1f $b2
    ld [bc], a                                    ; $5a22: $02
    ld c, $01                                     ; $5a23: $0e $01
    inc b                                         ; $5a25: $04
    ld [$0f03], sp                                ; $5a26: $08 $03 $0f
    nop                                           ; $5a29: $00
    ld d, $b2                                     ; $5a2a: $16 $b2
    ld bc, $e01f                                  ; $5a2c: $01 $1f $e0
    ld b, e                                       ; $5a2f: $43
    add d                                         ; $5a30: $82
    ret c                                         ; $5a31: $d8

    ld bc, $f00f                                  ; $5a32: $01 $0f $f0
    add b                                         ; $5a35: $80
    rst $38                                       ; $5a36: $ff
    and e                                         ; $5a37: $a3
    ld c, [hl]                                    ; $5a38: $4e
    ld [bc], a                                    ; $5a39: $02
    ret nz                                        ; $5a3a: $c0

    ld [hl+], a                                   ; $5a3b: $22
    rst $38                                       ; $5a3c: $ff
    cp $b6                                        ; $5a3d: $fe $b6
    ld bc, $00f0                                  ; $5a3f: $01 $f0 $00
    ld l, b                                       ; $5a42: $68
    ld c, b                                       ; $5a43: $48

jr_0cd_5a44:
    ld [bc], a                                    ; $5a44: $02
    ret c                                         ; $5a45: $d8

    xor h                                         ; $5a46: $ac
    ld [c], a                                     ; $5a47: $e2
    ld bc, $2ec0                                  ; $5a48: $01 $c0 $2e
    db $10                                        ; $5a4b: $10
    rra                                           ; $5a4c: $1f
    call nz, Call_0cd_4401                        ; $5a4d: $c4 $01 $44
    ld a, [bc]                                    ; $5a50: $0a
    rra                                           ; $5a51: $1f
    nop                                           ; $5a52: $00
    ld a, [hl+]                                   ; $5a53: $2a
    dec b                                         ; $5a54: $05
    ld [bc], a                                    ; $5a55: $02
    nop                                           ; $5a56: $00
    ld a, [bc]                                    ; $5a57: $0a
    ret nz                                        ; $5a58: $c0

    ld a, [$e011]                                 ; $5a59: $fa $11 $e0
    inc b                                         ; $5a5c: $04
    ld [de], a                                    ; $5a5d: $12
    inc bc                                        ; $5a5e: $03
    xor a                                         ; $5a5f: $af
    ld a, [de]                                    ; $5a60: $1a
    nop                                           ; $5a61: $00
    ccf                                           ; $5a62: $3f
    ld [bc], a                                    ; $5a63: $02
    inc bc                                        ; $5a64: $03
    ld c, $66                                     ; $5a65: $0e $66
    ld [bc], a                                    ; $5a67: $02
    ld e, d                                       ; $5a68: $5a
    ld [$081c], sp                                ; $5a69: $08 $1c $08
    adc d                                         ; $5a6c: $8a
    ld a, [bc]                                    ; $5a6d: $0a
    ld d, c                                       ; $5a6e: $51
    add b                                         ; $5a6f: $80
    jr z, jr_0cd_5a74                             ; $5a70: $28 $02

    ldh [$2c], a                                  ; $5a72: $e0 $2c

jr_0cd_5a74:
    ld [bc], a                                    ; $5a74: $02
    ld a, $01                                     ; $5a75: $3e $01
    rlca                                          ; $5a77: $07
    sbc $11                                       ; $5a78: $de $11
    ld b, l                                       ; $5a7a: $45
    inc c                                         ; $5a7b: $0c
    call nc, $0700                                ; $5a7c: $d4 $00 $07
    nop                                           ; $5a7f: $00
    ccf                                           ; $5a80: $3f
    ld [hl], $02                                  ; $5a81: $36 $02
    ldh [rNR23], a                                ; $5a83: $e0 $18
    ld [bc], a                                    ; $5a85: $02
    adc d                                         ; $5a86: $8a
    and h                                         ; $5a87: $a4
    ld a, [bc]                                    ; $5a88: $0a
    ld hl, sp+$00                                 ; $5a89: $f8 $00
    db $ec                                        ; $5a8b: $ec
    ld [hl+], a                                   ; $5a8c: $22
    ld [bc], a                                    ; $5a8d: $02
    inc hl                                        ; $5a8e: $23
    ld a, $03                                     ; $5a8f: $3e $03
    rra                                           ; $5a91: $1f
    xor b                                         ; $5a92: $a8
    ld a, $03                                     ; $5a93: $3e $03
    dec bc                                        ; $5a95: $0b
    ld c, b                                       ; $5a96: $48
    inc bc                                        ; $5a97: $03
    cpl                                           ; $5a98: $2f
    ld c, b                                       ; $5a99: $48
    inc bc                                        ; $5a9a: $03
    db $10                                        ; $5a9b: $10
    ldh [$fc], a                                  ; $5a9c: $e0 $fc
    ret nz                                        ; $5a9e: $c0

    jr c, @+$04                                   ; $5a9f: $38 $02

    add [hl]                                      ; $5aa1: $86
    ld [$40ba], sp                                ; $5aa2: $08 $ba $40
    ld [hl], b                                    ; $5aa5: $70
    add b                                         ; $5aa6: $80
    inc a                                         ; $5aa7: $3c
    ret nz                                        ; $5aa8: $c0

    ld e, b                                       ; $5aa9: $58
    dec b                                         ; $5aaa: $05
    or b                                          ; $5aab: $b0
    db $10                                        ; $5aac: $10
    rla                                           ; $5aad: $17
    ld b, [hl]                                    ; $5aae: $46
    ld [bc], a                                    ; $5aaf: $02
    or [hl]                                       ; $5ab0: $b6
    ld [$001f], sp                                ; $5ab1: $08 $1f $00
    and b                                         ; $5ab4: $a0
    ld [bc], a                                    ; $5ab5: $02
    dec hl                                        ; $5ab6: $2b
    ld [bc], a                                    ; $5ab7: $02
    nop                                           ; $5ab8: $00
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    stop                                          ; $5abb: $10 $00
    ld d, b                                       ; $5abd: $50
    nop                                           ; $5abe: $00
    db $d3                                        ; $5abf: $d3
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    ld e, a                                       ; $5ac2: $5f
    nop                                           ; $5ac3: $00
    ei                                            ; $5ac4: $fb
    inc b                                         ; $5ac5: $04
    ei                                            ; $5ac6: $fb
    inc b                                         ; $5ac7: $04
    sub d                                         ; $5ac8: $92
    ld l, l                                       ; $5ac9: $6d
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    add b                                         ; $5acd: $80
    nop                                           ; $5ace: $00
    jp nz, $eb00                                  ; $5acf: $c2 $00 $eb

    nop                                           ; $5ad2: $00
    ld [bc], a                                    ; $5ad3: $02
    cp $01                                        ; $5ad4: $fe $01
    cp a                                          ; $5ad6: $bf
    ld b, b                                       ; $5ad7: $40
    or [hl]                                       ; $5ad8: $b6
    ld c, c                                       ; $5ad9: $49
    db $10                                        ; $5ada: $10
    ld [$0000], sp                                ; $5adb: $08 $00 $00
    nop                                           ; $5ade: $00
    and h                                         ; $5adf: $a4
    nop                                           ; $5ae0: $00
    and b                                         ; $5ae1: $a0
    nop                                           ; $5ae2: $00
    jp hl                                         ; $5ae3: $e9


    nop                                           ; $5ae4: $00
    db $fd                                        ; $5ae5: $fd
    inc c                                         ; $5ae6: $0c
    nop                                           ; $5ae7: $00
    rst $18                                       ; $5ae8: $df
    jr nz, @+$01                                  ; $5ae9: $20 $ff

    rrca                                          ; $5aeb: $0f
    ld [$1004], sp                                ; $5aec: $08 $04 $10
    ld [$0400], sp                                ; $5aef: $08 $00 $04
    ld a, [hl+]                                   ; $5af2: $2a
    nop                                           ; $5af3: $00
    ld h, l                                       ; $5af4: $65
    nop                                           ; $5af5: $00
    ld a, l                                       ; $5af6: $7d
    db $10                                        ; $5af7: $10
    db $10                                        ; $5af8: $10
    ld c, d                                       ; $5af9: $4a
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    dec de                                        ; $5afc: $1b
    nop                                           ; $5afd: $00
    ld e, [hl]                                    ; $5afe: $5e
    ld bc, $01de                                  ; $5aff: $01 $de $01
    ld a, [$0005]                                 ; $5b02: $fa $05 $00
    ld l, h                                       ; $5b05: $6c
    sub e                                         ; $5b06: $93
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    sub b                                         ; $5b09: $90
    nop                                           ; $5b0a: $00
    cp b                                          ; $5b0b: $b8
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    push af                                       ; $5b0e: $f5
    ld [$08f7], sp                                ; $5b0f: $08 $f7 $08
    or e                                          ; $5b12: $b3
    ld c, h                                       ; $5b13: $4c
    sub d                                         ; $5b14: $92
    ld l, l                                       ; $5b15: $6d
    jr nz, jr_0cd_5b28                            ; $5b16: $20 $10

    rst $28                                       ; $5b18: $ef
    db $10                                        ; $5b19: $10
    ld [$00d9], sp                                ; $5b1a: $08 $d9 $00
    ld a, l                                       ; $5b1d: $7d
    add b                                         ; $5b1e: $80
    ld l, [hl]                                    ; $5b1f: $6e
    ld [bc], a                                    ; $5b20: $02
    sub c                                         ; $5b21: $91
    ld c, d                                       ; $5b22: $4a
    or l                                          ; $5b23: $b5
    ld b, d                                       ; $5b24: $42
    cp l                                          ; $5b25: $bd
    nop                                           ; $5b26: $00
    ld b, c                                       ; $5b27: $41

jr_0cd_5b28:
    nop                                           ; $5b28: $00
    sub b                                         ; $5b29: $90
    ld [$8400], sp                                ; $5b2a: $08 $00 $84
    nop                                           ; $5b2d: $00
    or l                                          ; $5b2e: $b5
    add hl, bc                                    ; $5b2f: $09
    nop                                           ; $5b30: $00
    cp a                                          ; $5b31: $bf
    ld b, b                                       ; $5b32: $40
    sub [hl]                                      ; $5b33: $96
    db $10                                        ; $5b34: $10
    ld l, c                                       ; $5b35: $69
    ld d, $e9                                     ; $5b36: $16 $e9
    ld h, b                                       ; $5b38: $60
    ld [$0001], sp                                ; $5b39: $08 $01 $00
    ld b, e                                       ; $5b3c: $43
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    push de                                       ; $5b3f: $d5
    nop                                           ; $5b40: $00
    rst $18                                       ; $5b41: $df
    nop                                           ; $5b42: $00
    rst $30                                       ; $5b43: $f7
    ld [$1ae5], sp                                ; $5b44: $08 $e5 $1a
    stop                                          ; $5b47: $10 $00
    nop                                           ; $5b49: $00
    inc b                                         ; $5b4a: $04
    ld [bc], a                                    ; $5b4b: $02
    nop                                           ; $5b4c: $00
    and [hl]                                      ; $5b4d: $a6
    nop                                           ; $5b4e: $00
    or [hl]                                       ; $5b4f: $b6
    nop                                           ; $5b50: $00
    ld c, b                                       ; $5b51: $48
    cp a                                          ; $5b52: $bf
    add h                                         ; $5b53: $84
    nop                                           ; $5b54: $00
    rst $30                                       ; $5b55: $f7
    ld [$0880], sp                                ; $5b56: $08 $80 $08
    jr nz, jr_0cd_5b5b                            ; $5b59: $20 $00

jr_0cd_5b5b:
    ld [hl+], a                                   ; $5b5b: $22
    and l                                         ; $5b5c: $a5
    ld l, [hl]                                    ; $5b5d: $6e
    nop                                           ; $5b5e: $00
    ld a, [hl]                                    ; $5b5f: $7e
    dec a                                         ; $5b60: $3d
    nop                                           ; $5b61: $00
    or e                                          ; $5b62: $b3
    ld c, h                                       ; $5b63: $4c
    jr nz, jr_0cd_5b6e                            ; $5b64: $20 $08

    sub c                                         ; $5b66: $91
    ld b, b                                       ; $5b67: $40
    nop                                           ; $5b68: $00
    add l                                         ; $5b69: $85
    ld c, e                                       ; $5b6a: $4b
    ld [$08f7], sp                                ; $5b6b: $08 $f7 $08

jr_0cd_5b6e:
    ld d, a                                       ; $5b6e: $57
    xor b                                         ; $5b6f: $a8
    and b                                         ; $5b70: $a0
    ld [$2282], sp                                ; $5b71: $08 $82 $22
    nop                                           ; $5b74: $00
    ld b, $3a                                     ; $5b75: $06 $3a
    nop                                           ; $5b77: $00
    ld [hl], d                                    ; $5b78: $72
    nop                                           ; $5b79: $00
    xor $5f                                       ; $5b7a: $ee $5f
    ld [$10a2], sp                                ; $5b7c: $08 $a2 $10
    ld d, c                                       ; $5b7f: $51
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    ld c, e                                       ; $5b82: $4b
    nop                                           ; $5b83: $00
    db $db                                        ; $5b84: $db
    nop                                           ; $5b85: $00
    ld a, a                                       ; $5b86: $7f
    nop                                           ; $5b87: $00
    db $fd                                        ; $5b88: $fd
    nop                                           ; $5b89: $00
    ld [bc], a                                    ; $5b8a: $02
    ret nc                                        ; $5b8b: $d0

    cpl                                           ; $5b8c: $2f
    add b                                         ; $5b8d: $80
    ld a, a                                       ; $5b8e: $7f
    ld a, [bc]                                    ; $5b8f: $0a
    rst $38                                       ; $5b90: $ff
    ld [bc], a                                    ; $5b91: $02
    nop                                           ; $5b92: $00
    rst $38                                       ; $5b93: $ff
    xor a                                         ; $5b94: $af
    rst $38                                       ; $5b95: $ff
    cp a                                          ; $5b96: $bf
    rst $38                                       ; $5b97: $ff
    xor c                                         ; $5b98: $a9
    rst $38                                       ; $5b99: $ff
    pop hl                                        ; $5b9a: $e1
    nop                                           ; $5b9b: $00
    rst $38                                       ; $5b9c: $ff
    and d                                         ; $5b9d: $a2
    ld e, l                                       ; $5b9e: $5d
    nop                                           ; $5b9f: $00
    rst $38                                       ; $5ba0: $ff
    jr nz, @+$01                                  ; $5ba1: $20 $ff

    xor d                                         ; $5ba3: $aa
    nop                                           ; $5ba4: $00
    rst $38                                       ; $5ba5: $ff
    or e                                          ; $5ba6: $b3
    rst $38                                       ; $5ba7: $ff
    ei                                            ; $5ba8: $fb
    rst $38                                       ; $5ba9: $ff
    ld e, a                                       ; $5baa: $5f
    rst $38                                       ; $5bab: $ff
    ld b, [hl]                                    ; $5bac: $46
    nop                                           ; $5bad: $00
    rst $38                                       ; $5bae: $ff
    ld e, [hl]                                    ; $5baf: $5e
    and c                                         ; $5bb0: $a1
    ld c, e                                       ; $5bb1: $4b
    or h                                          ; $5bb2: $b4
    ld a, [hl+]                                   ; $5bb3: $2a
    push de                                       ; $5bb4: $d5
    ld a, [bc]                                    ; $5bb5: $0a
    ld [bc], a                                    ; $5bb6: $02
    push af                                       ; $5bb7: $f5
    ld b, b                                       ; $5bb8: $40
    rst $38                                       ; $5bb9: $ff
    ld h, b                                       ; $5bba: $60
    rst $38                                       ; $5bbb: $ff
    add sp, $18                                   ; $5bbc: $e8 $18
    nop                                           ; $5bbe: $00
    db $eb                                        ; $5bbf: $eb
    nop                                           ; $5bc0: $00
    inc d                                         ; $5bc1: $14
    xor d                                         ; $5bc2: $aa
    ld d, l                                       ; $5bc3: $55
    xor d                                         ; $5bc4: $aa
    ld d, l                                       ; $5bc5: $55
    xor b                                         ; $5bc6: $a8
    ld d, a                                       ; $5bc7: $57
    and d                                         ; $5bc8: $a2
    db $10                                        ; $5bc9: $10
    ld e, l                                       ; $5bca: $5d
    ld [$2af7], sp                                ; $5bcb: $08 $f7 $2a
    ld [$9768], sp                                ; $5bce: $08 $68 $97
    and b                                         ; $5bd1: $a0
    ld e, a                                       ; $5bd2: $5f
    ld [$5fa0], sp                                ; $5bd3: $08 $a0 $5f
    ld [bc], a                                    ; $5bd6: $02
    rst $38                                       ; $5bd7: $ff
    ld b, h                                       ; $5bd8: $44
    ld [$ff49], sp                                ; $5bd9: $08 $49 $ff
    ld c, a                                       ; $5bdc: $4f
    nop                                           ; $5bdd: $00
    rst $38                                       ; $5bde: $ff
    add b                                         ; $5bdf: $80
    ld a, a                                       ; $5be0: $7f
    ld [bc], a                                    ; $5be1: $02
    rst $38                                       ; $5be2: $ff
    ld [de], a                                    ; $5be3: $12
    rst $38                                       ; $5be4: $ff
    rla                                           ; $5be5: $17
    add b                                         ; $5be6: $80
    ld d, b                                       ; $5be7: $50
    nop                                           ; $5be8: $00
    cp l                                          ; $5be9: $bd
    rst $38                                       ; $5bea: $ff
    push af                                       ; $5beb: $f5
    rst $38                                       ; $5bec: $ff
    and h                                         ; $5bed: $a4
    rst $38                                       ; $5bee: $ff
    ld [$ff08], sp                                ; $5bef: $08 $08 $ff
    ld c, b                                       ; $5bf2: $48
    rst $38                                       ; $5bf3: $ff
    jp c, $0002                                   ; $5bf4: $da $02 $00

    xor a                                         ; $5bf7: $af
    rst $38                                       ; $5bf8: $ff
    cpl                                           ; $5bf9: $2f
    jr nz, @+$01                                  ; $5bfa: $20 $ff

    ld h, $68                                     ; $5bfc: $26 $68
    nop                                           ; $5bfe: $00
    ld [de], a                                    ; $5bff: $12
    db $ed                                        ; $5c00: $ed
    add d                                         ; $5c01: $82
    db $fd                                        ; $5c02: $fd
    ld [bc], a                                    ; $5c03: $02
    ld [bc], a                                    ; $5c04: $02
    db $fd                                        ; $5c05: $fd
    and b                                         ; $5c06: $a0
    rst $38                                       ; $5c07: $ff
    xor b                                         ; $5c08: $a8
    rst $38                                       ; $5c09: $ff
    ld a, [$0002]                                 ; $5c0a: $fa $02 $00
    xor a                                         ; $5c0d: $af
    nop                                           ; $5c0e: $00
    rst $38                                       ; $5c0f: $ff
    ld h, c                                       ; $5c10: $61
    sbc [hl]                                      ; $5c11: $9e
    dec h                                         ; $5c12: $25
    jp c, $da25                                   ; $5c13: $da $25 $da

    ld bc, $fe00                                  ; $5c16: $01 $00 $fe
    inc b                                         ; $5c19: $04
    ei                                            ; $5c1a: $fb
    add b                                         ; $5c1b: $80
    rst $38                                       ; $5c1c: $ff
    and b                                         ; $5c1d: $a0
    rst $38                                       ; $5c1e: $ff
    ld [hl+], a                                   ; $5c1f: $22
    jr @+$01                                      ; $5c20: $18 $ff

    sub d                                         ; $5c22: $92
    ld l, l                                       ; $5c23: $6d
    ld d, $11                                     ; $5c24: $16 $11
    sub d                                         ; $5c26: $92
    nop                                           ; $5c27: $00
    ld [bc], a                                    ; $5c28: $02
    rst $38                                       ; $5c29: $ff
    dec h                                         ; $5c2a: $25
    nop                                           ; $5c2b: $00
    rst $38                                       ; $5c2c: $ff
    xor l                                         ; $5c2d: $ad
    rst $38                                       ; $5c2e: $ff
    or [hl]                                       ; $5c2f: $b6
    ld c, c                                       ; $5c30: $49
    inc h                                         ; $5c31: $24
    db $db                                        ; $5c32: $db
    nop                                           ; $5c33: $00
    ld [$11ff], sp                                ; $5c34: $08 $ff $11
    rst $38                                       ; $5c37: $ff
    dec d                                         ; $5c38: $15
    and b                                         ; $5c39: $a0
    nop                                           ; $5c3a: $00
    cp e                                          ; $5c3b: $bb
    rst $38                                       ; $5c3c: $ff
    di                                            ; $5c3d: $f3
    nop                                           ; $5c3e: $00
    rst $38                                       ; $5c3f: $ff
    push de                                       ; $5c40: $d5
    ld a, [hl+]                                   ; $5c41: $2a
    ld bc, $01fe                                  ; $5c42: $01 $fe $01
    cp $50                                        ; $5c45: $fe $50
    ld [bc], a                                    ; $5c47: $02
    rst $38                                       ; $5c48: $ff
    ld d, d                                       ; $5c49: $52
    rst $38                                       ; $5c4a: $ff
    db $eb                                        ; $5c4b: $eb
    rst $38                                       ; $5c4c: $ff

jr_0cd_5c4d:
    rst $38                                       ; $5c4d: $ff
    ld d, h                                       ; $5c4e: $54
    nop                                           ; $5c4f: $00
    ld e, l                                       ; $5c50: $5d
    nop                                           ; $5c51: $00
    and d                                         ; $5c52: $a2
    ld e, l                                       ; $5c53: $5d
    and d                                         ; $5c54: $a2
    inc d                                         ; $5c55: $14
    db $eb                                        ; $5c56: $eb
    ld d, h                                       ; $5c57: $54
    xor e                                         ; $5c58: $ab
    inc b                                         ; $5c59: $04
    ld [$00fb], sp                                ; $5c5a: $08 $fb $00
    rst $38                                       ; $5c5d: $ff
    ld hl, $0032                                  ; $5c5e: $21 $32 $00
    db $e4                                        ; $5c61: $e4
    dec de                                        ; $5c62: $1b
    or [hl]                                       ; $5c63: $b6
    inc b                                         ; $5c64: $04
    ld c, c                                       ; $5c65: $49
    and l                                         ; $5c66: $a5
    ld e, d                                       ; $5c67: $5a
    and h                                         ; $5c68: $a4
    ld e, e                                       ; $5c69: $5b
    sub $08                                       ; $5c6a: $d6 $08
    ld h, $ff                                     ; $5c6c: $26 $ff
    nop                                           ; $5c6e: $00
    scf                                           ; $5c6f: $37
    rst $38                                       ; $5c70: $ff
    or a                                          ; $5c71: $b7
    rst $38                                       ; $5c72: $ff
    db $fd                                        ; $5c73: $fd
    rst $38                                       ; $5c74: $ff
    db $f4                                        ; $5c75: $f4
    rst $38                                       ; $5c76: $ff
    jr jr_0cd_5c4d                                ; $5c77: $18 $d4

    rst $38                                       ; $5c79: $ff
    add c                                         ; $5c7a: $81
    ld [hl], $00                                  ; $5c7b: $36 $00
    ld l, d                                       ; $5c7d: $6a
    ld [$ff48], sp                                ; $5c7e: $08 $48 $ff
    ld b, d                                       ; $5c81: $42
    nop                                           ; $5c82: $00
    db $fd                                        ; $5c83: $fd
    ld [de], a                                    ; $5c84: $12
    db $ed                                        ; $5c85: $ed
    ld [de], a                                    ; $5c86: $12
    db $ed                                        ; $5c87: $ed
    inc de                                        ; $5c88: $13
    db $ec                                        ; $5c89: $ec
    inc sp                                        ; $5c8a: $33
    nop                                           ; $5c8b: $00
    call z, $e11e                                 ; $5c8c: $cc $1e $e1
    scf                                           ; $5c8f: $37
    ret z                                         ; $5c90: $c8

    inc d                                         ; $5c91: $14
    rst $38                                       ; $5c92: $ff
    nop                                           ; $5c93: $00
    nop                                           ; $5c94: $00
    rst $38                                       ; $5c95: $ff
    ld b, b                                       ; $5c96: $40
    cp a                                          ; $5c97: $bf
    ld d, b                                       ; $5c98: $50
    xor a                                         ; $5c99: $af
    ld c, d                                       ; $5c9a: $4a
    or l                                          ; $5c9b: $b5
    jp c, Jump_000_2500                           ; $5c9c: $da $00 $25

    cp $01                                        ; $5c9f: $fe $01
    jp c, $ba25                                   ; $5ca1: $da $25 $ba

    rst $38                                       ; $5ca4: $ff
    cp [hl]                                       ; $5ca5: $be
    and b                                         ; $5ca6: $a0
    xor d                                         ; $5ca7: $aa
    nop                                           ; $5ca8: $00
    ld a, [bc]                                    ; $5ca9: $0a
    ret nc                                        ; $5caa: $d0

    nop                                           ; $5cab: $00
    jr nz, @-$1f                                  ; $5cac: $20 $df

    xor b                                         ; $5cae: $a8
    ld d, a                                       ; $5caf: $57
    cp d                                          ; $5cb0: $ba
    ld [$b245], sp                                ; $5cb1: $08 $45 $b2
    rst $38                                       ; $5cb4: $ff
    or [hl]                                       ; $5cb5: $b6
    ld l, b                                       ; $5cb6: $68
    nop                                           ; $5cb7: $00
    push de                                       ; $5cb8: $d5
    rst $38                                       ; $5cb9: $ff
    sbc l                                         ; $5cba: $9d
    add b                                         ; $5cbb: $80
    jp z, Jump_000_2000                           ; $5cbc: $ca $00 $20

    rst $18                                       ; $5cbf: $df
    ld a, [hl+]                                   ; $5cc0: $2a
    push de                                       ; $5cc1: $d5
    rst $28                                       ; $5cc2: $ef
    rst $38                                       ; $5cc3: $ff

jr_0cd_5cc4:
    ld [$ff00], a                                 ; $5cc4: $ea $00 $ff
    ld a, [c]                                     ; $5cc7: $f2
    rst $38                                       ; $5cc8: $ff
    ld e, d                                       ; $5cc9: $5a
    rst $38                                       ; $5cca: $ff
    ld d, b                                       ; $5ccb: $50
    rst $38                                       ; $5ccc: $ff
    inc b                                         ; $5ccd: $04
    nop                                           ; $5cce: $00
    ei                                            ; $5ccf: $fb
    ld h, $d9                                     ; $5cd0: $26 $d9
    ld [hl], h                                    ; $5cd2: $74
    adc e                                         ; $5cd3: $8b
    and b                                         ; $5cd4: $a0
    rst $38                                       ; $5cd5: $ff
    add d                                         ; $5cd6: $82
    nop                                           ; $5cd7: $00
    db $fd                                        ; $5cd8: $fd
    ld b, $f9                                     ; $5cd9: $06 $f9
    ld [de], a                                    ; $5cdb: $12
    db $ed                                        ; $5cdc: $ed
    ld d, $e9                                     ; $5cdd: $16 $e9
    rla                                           ; $5cdf: $17
    nop                                           ; $5ce0: $00
    add sp, -$41                                  ; $5ce1: $e8 $bf
    ld b, b                                       ; $5ce3: $40
    cp a                                          ; $5ce4: $bf
    ld b, b                                       ; $5ce5: $40
    add b                                         ; $5ce6: $80
    ld a, a                                       ; $5ce7: $7f
    and b                                         ; $5ce8: $a0
    nop                                           ; $5ce9: $00
    ld e, a                                       ; $5cea: $5f
    jr z, jr_0cd_5cc4                             ; $5ceb: $28 $d7

    and d                                         ; $5ced: $a2
    ld e, l                                       ; $5cee: $5d
    xor d                                         ; $5cef: $aa
    ld d, l                                       ; $5cf0: $55
    cp [hl]                                       ; $5cf1: $be
    nop                                           ; $5cf2: $00
    ld b, c                                       ; $5cf3: $41
    cp $01                                        ; $5cf4: $fe $01
    rst $38                                       ; $5cf6: $ff
    nop                                           ; $5cf7: $00
    cpl                                           ; $5cf8: $2f
    rst $38                                       ; $5cf9: $ff

jr_0cd_5cfa:
    ld b, e                                       ; $5cfa: $43
    nop                                           ; $5cfb: $00
    rst $38                                       ; $5cfc: $ff
    ld b, $ff                                     ; $5cfd: $06 $ff
    add d                                         ; $5cff: $82
    ld a, a                                       ; $5d00: $7f
    sub b                                         ; $5d01: $90
    ld l, a                                       ; $5d02: $6f
    sub b                                         ; $5d03: $90
    nop                                           ; $5d04: $00
    ld l, a                                       ; $5d05: $6f
    call nc, $d42b                                ; $5d06: $d4 $2b $d4
    dec hl                                        ; $5d09: $2b
    or d                                          ; $5d0a: $b2
    rst $38                                       ; $5d0b: $ff
    or $00                                        ; $5d0c: $f6 $00
    rst $38                                       ; $5d0e: $ff
    rst $28                                       ; $5d0f: $ef
    rst $38                                       ; $5d10: $ff
    xor h                                         ; $5d11: $ac
    rst $38                                       ; $5d12: $ff
    and [hl]                                      ; $5d13: $a6
    rst $38                                       ; $5d14: $ff
    inc b                                         ; $5d15: $04
    add d                                         ; $5d16: $82
    ld a, d                                       ; $5d17: $7a
    nop                                           ; $5d18: $00
    jr nz, jr_0cd_5cfa                            ; $5d19: $20 $df

    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    cp $52                                        ; $5d1d: $fe $52
    nop                                           ; $5d1f: $00
    xor d                                         ; $5d20: $aa
    jr nz, @+$01                                  ; $5d21: $20 $ff

    adc b                                         ; $5d23: $88
    adc b                                         ; $5d24: $88
    nop                                           ; $5d25: $00
    ld bc, $23fe                                  ; $5d26: $01 $fe $23
    call c, Call_000_2092                         ; $5d29: $dc $92 $20
    rst $38                                       ; $5d2c: $ff
    sub b                                         ; $5d2d: $90
    sub d                                         ; $5d2e: $92
    nop                                           ; $5d2f: $00
    ld a, [bc]                                    ; $5d30: $0a
    push af                                       ; $5d31: $f5
    ld a, [hl+]                                   ; $5d32: $2a
    push de                                       ; $5d33: $d5
    adc e                                         ; $5d34: $8b
    nop                                           ; $5d35: $00
    ld [hl], h                                    ; $5d36: $74
    xor a                                         ; $5d37: $af
    ld d, b                                       ; $5d38: $50
    and a                                         ; $5d39: $a7
    ld e, b                                       ; $5d3a: $58
    add hl, bc                                    ; $5d3b: $09
    rst $38                                       ; $5d3c: $ff
    ld c, d                                       ; $5d3d: $4a
    ld b, b                                       ; $5d3e: $40
    cp a                                          ; $5d3f: $bf
    and d                                         ; $5d40: $a2
    ld [$b748], sp                                ; $5d41: $08 $48 $b7
    ld e, d                                       ; $5d44: $5a
    and l                                         ; $5d45: $a5
    or $09                                        ; $5d46: $f6 $09
    ld de, $01fe                                  ; $5d48: $11 $fe $01

jr_0cd_5d4b:
    db $ed                                        ; $5d4b: $ed
    ret nc                                        ; $5d4c: $d0

    nop                                           ; $5d4d: $00
    cp a                                          ; $5d4e: $bf
    rst $38                                       ; $5d4f: $ff
    sbc d                                         ; $5d50: $9a
    ld h, h                                       ; $5d51: $64
    ld bc, $b880                                  ; $5d52: $01 $80 $b8
    ld [$b649], sp                                ; $5d55: $08 $49 $b6
    ldh a, [rSC]                                  ; $5d58: $f0 $02
    ld [hl], a                                    ; $5d5a: $77
    ld [bc], a                                    ; $5d5b: $02
    nop                                           ; $5d5c: $00
    add b                                         ; $5d5d: $80
    rst $38                                       ; $5d5e: $ff
    ld c, d                                       ; $5d5f: $4a
    rst $38                                       ; $5d60: $ff
    and d                                         ; $5d61: $a2
    rst $38                                       ; $5d62: $ff
    ld d, b                                       ; $5d63: $50
    rst $38                                       ; $5d64: $ff
    nop                                           ; $5d65: $00
    and h                                         ; $5d66: $a4
    rst $38                                       ; $5d67: $ff
    ld c, b                                       ; $5d68: $48
    rst $38                                       ; $5d69: $ff
    ld [hl+], a                                   ; $5d6a: $22
    rst $38                                       ; $5d6b: $ff
    sub h                                         ; $5d6c: $94
    rst $38                                       ; $5d6d: $ff
    nop                                           ; $5d6e: $00
    ld bc, $12fe                                  ; $5d6f: $01 $fe $12
    db $fc                                        ; $5d72: $fc
    ld b, l                                       ; $5d73: $45
    ld hl, sp-$71                                 ; $5d74: $f8 $8f
    ldh a, [rP1]                                  ; $5d76: $f0 $00
    ld e, h                                       ; $5d78: $5c
    db $e3                                        ; $5d79: $e3
    jr nc, jr_0cd_5d4b                            ; $5d7a: $30 $cf

    ld h, d                                       ; $5d7c: $62
    sbc a                                         ; $5d7d: $9f
    add l                                         ; $5d7e: $85
    ld a, a                                       ; $5d7f: $7f
    nop                                           ; $5d80: $00
    jr c, jr_0cd_5d8a                             ; $5d81: $38 $07

    ld h, h                                       ; $5d83: $64
    rra                                           ; $5d84: $1f
    pop de                                        ; $5d85: $d1
    ld a, $03                                     ; $5d86: $3e $03
    db $fc                                        ; $5d88: $fc
    nop                                           ; $5d89: $00

jr_0cd_5d8a:
    xor l                                         ; $5d8a: $ad
    ldh a, [rHDMA4]                               ; $5d8b: $f0 $54
    ldh [rNR32], a                                ; $5d8d: $e0 $1c
    ldh [rSVBK], a                                ; $5d8f: $e0 $70
    add b                                         ; $5d91: $80
    nop                                           ; $5d92: $00
    ld d, b                                       ; $5d93: $50
    nop                                           ; $5d94: $00
    adc b                                         ; $5d95: $88
    nop                                           ; $5d96: $00
    ld d, l                                       ; $5d97: $55
    nop                                           ; $5d98: $00
    and d                                         ; $5d99: $a2
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    inc d                                         ; $5d9c: $14
    nop                                           ; $5d9d: $00
    xor d                                         ; $5d9e: $aa
    nop                                           ; $5d9f: $00
    ld b, b                                       ; $5da0: $40
    nop                                           ; $5da1: $00
    and b                                         ; $5da2: $a0
    nop                                           ; $5da3: $00
    dec b                                         ; $5da4: $05
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    ld [bc], a                                    ; $5da7: $02
    nop                                           ; $5da8: $00
    dec b                                         ; $5da9: $05
    ld a, [bc]                                    ; $5daa: $0a
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    inc c                                         ; $5dad: $0c
    nop                                           ; $5dae: $00
    ld d, h                                       ; $5daf: $54
    ld b, d                                       ; $5db0: $42
    ld c, $00                                     ; $5db1: $0e $00
    ld d, l                                       ; $5db3: $55
    jr jr_0cd_5db6                                ; $5db4: $18 $00

jr_0cd_5db6:
    dec b                                         ; $5db6: $05
    inc d                                         ; $5db7: $14
    nop                                           ; $5db8: $00
    ld b, l                                       ; $5db9: $45
    nop                                           ; $5dba: $00
    db $10                                        ; $5dbb: $10
    ld a, [hl+]                                   ; $5dbc: $2a
    nop                                           ; $5dbd: $00
    dec d                                         ; $5dbe: $15
    inc h                                         ; $5dbf: $24
    nop                                           ; $5dc0: $00
    jr @+$09                                      ; $5dc1: $18 $07

    ld [hl], b                                    ; $5dc3: $70
    rrca                                          ; $5dc4: $0f
    nop                                           ; $5dc5: $00
    ld hl, $471e                                  ; $5dc6: $21 $1e $47
    jr c, @-$70                                   ; $5dc9: $38 $8e

    ld [hl], b                                    ; $5dcb: $70
    sbc d                                         ; $5dcc: $9a
    ld h, b                                       ; $5dcd: $60
    jr jr_0cd_5e44                                ; $5dce: $18 $74

    nop                                           ; $5dd0: $00
    ld a, [bc]                                    ; $5dd1: $0a
    jr nz, jr_0cd_5de4                            ; $5dd2: $20 $10

    inc b                                         ; $5dd4: $04
    ld c, b                                       ; $5dd5: $48
    jp z, $c53f                                   ; $5dd6: $ca $3f $c5

    nop                                           ; $5dd9: $00
    ccf                                           ; $5dda: $3f
    add d                                         ; $5ddb: $82
    ld a, a                                       ; $5ddc: $7f
    inc d                                         ; $5ddd: $14
    rst $38                                       ; $5dde: $ff
    ld c, c                                       ; $5ddf: $49
    rst $38                                       ; $5de0: $ff
    jr nz, jr_0cd_5de5                            ; $5de1: $20 $02

    rst $38                                       ; $5de3: $ff

jr_0cd_5de4:
    add hl, bc                                    ; $5de4: $09

jr_0cd_5de5:
    cp $27                                        ; $5de5: $fe $27
    ld hl, sp+$50                                 ; $5de7: $f8 $50
    ld [$0200], sp                                ; $5de9: $08 $00 $02
    ld [bc], a                                    ; $5dec: $02
    rst $38                                       ; $5ded: $ff
    dec d                                         ; $5dee: $15
    rst $28                                       ; $5def: $ef
    ld [hl+], a                                   ; $5df0: $22
    rst $18                                       ; $5df1: $df
    call RST_18                                   ; $5df2: $cd $18 $00
    ld [$ff00], sp                                ; $5df5: $08 $00 $ff
    ld l, e                                       ; $5df8: $6b
    rst $38                                       ; $5df9: $ff
    sbc $ff                                       ; $5dfa: $de $ff
    cp l                                          ; $5dfc: $bd

jr_0cd_5dfd:
    rst $38                                       ; $5dfd: $ff
    ld l, a                                       ; $5dfe: $6f
    nop                                           ; $5dff: $00
    rst $38                                       ; $5e00: $ff
    ei                                            ; $5e01: $fb
    rst $38                                       ; $5e02: $ff
    cp [hl]                                       ; $5e03: $be
    rst $38                                       ; $5e04: $ff
    set 7, a                                      ; $5e05: $cb $ff
    ld h, a                                       ; $5e07: $67
    jr nz, @+$01                                  ; $5e08: $20 $ff

    ld l, d                                       ; $5e0a: $6a
    ld c, $00                                     ; $5e0b: $0e $00
    ld a, d                                       ; $5e0d: $7a
    rst $38                                       ; $5e0e: $ff
    adc a                                         ; $5e0f: $8f
    rst $38                                       ; $5e10: $ff
    add hl, sp                                    ; $5e11: $39
    nop                                           ; $5e12: $00
    rst $38                                       ; $5e13: $ff
    rst $18                                       ; $5e14: $df
    rst $38                                       ; $5e15: $ff
    ld a, [hl]                                    ; $5e16: $7e
    rst $38                                       ; $5e17: $ff
    rst $20                                       ; $5e18: $e7
    rst $38                                       ; $5e19: $ff
    ld [de], a                                    ; $5e1a: $12
    add b                                         ; $5e1b: $80
    cp b                                          ; $5e1c: $b8
    nop                                           ; $5e1d: $00
    sub b                                         ; $5e1e: $90
    rst $38                                       ; $5e1f: $ff
    ld b, c                                       ; $5e20: $41
    cp $83                                        ; $5e21: $fe $83
    db $fc                                        ; $5e23: $fc
    inc b                                         ; $5e24: $04
    nop                                           ; $5e25: $00
    ld hl, sp+$0d                                 ; $5e26: $f8 $0d
    ldh a, [rNR30]                                ; $5e28: $f0 $1a
    pop hl                                        ; $5e2a: $e1
    pop af                                        ; $5e2b: $f1
    nop                                           ; $5e2c: $00
    jp z, $0100                                   ; $5e2d: $ca $00 $01

    sub h                                         ; $5e30: $94
    inc bc                                        ; $5e31: $03
    cp c                                          ; $5e32: $b9
    ld b, $e3                                     ; $5e33: $06 $e3

jr_0cd_5e35:
    inc e                                         ; $5e35: $1c
    add $00                                       ; $5e36: $c6 $00
    jr c, @-$52                                   ; $5e38: $38 $ac

    ld [hl], b                                    ; $5e3a: $70
    ld e, d                                       ; $5e3b: $5a
    ldh [$a8], a                                  ; $5e3c: $e0 $a8
    ld b, b                                       ; $5e3e: $40
    ld [hl], b                                    ; $5e3f: $70
    jr nz, @-$7e                                  ; $5e40: $20 $80

    xor b                                         ; $5e42: $a8
    xor d                                         ; $5e43: $aa

jr_0cd_5e44:
    nop                                           ; $5e44: $00
    ld l, c                                       ; $5e45: $69
    nop                                           ; $5e46: $00
    add d                                         ; $5e47: $82
    nop                                           ; $5e48: $00
    ld c, d                                       ; $5e49: $4a
    ld [$b500], sp                                ; $5e4a: $08 $00 $b5
    nop                                           ; $5e4d: $00
    push de                                       ; $5e4e: $d5
    add b                                         ; $5e4f: $80
    jr nc, jr_0cd_5dfd                            ; $5e50: $30 $ab

    nop                                           ; $5e52: $00
    ld d, a                                       ; $5e53: $57
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    xor [hl]                                      ; $5e56: $ae
    ld bc, $e01a                                  ; $5e57: $01 $1a $e0
    adc h                                         ; $5e5a: $8c
    ldh a, [rDMA]                                 ; $5e5b: $f0 $46
    nop                                           ; $5e5d: $00

Jump_0cd_5e5e:
    ld hl, sp-$5d                                 ; $5e5e: $f8 $a3
    db $fc                                        ; $5e60: $fc
    ld c, c                                       ; $5e61: $49
    cp $90                                        ; $5e62: $fe $90
    rst $38                                       ; $5e64: $ff
    jr z, jr_0cd_5e69                             ; $5e65: $28 $02

    rst $38                                       ; $5e67: $ff
    inc b                                         ; $5e68: $04

jr_0cd_5e69:
    rst $38                                       ; $5e69: $ff
    ld b, b                                       ; $5e6a: $40
    nop                                           ; $5e6b: $00
    and c                                         ; $5e6c: $a1
    jr jr_0cd_5e6f                                ; $5e6d: $18 $00

jr_0cd_5e6f:
    cp b                                          ; $5e6f: $b8
    nop                                           ; $5e70: $00
    rlca                                          ; $5e71: $07
    pop af                                        ; $5e72: $f1
    ld c, $c3                                     ; $5e73: $0e $c3
    inc a                                         ; $5e75: $3c
    add [hl]                                      ; $5e76: $86
    ld a, b                                       ; $5e77: $78
    ld c, $08                                     ; $5e78: $0e $08
    ldh a, [rLCDC]                                ; $5e7a: $f0 $40
    nop                                           ; $5e7c: $00
    and l                                         ; $5e7d: $a5
    jr c, jr_0cd_5e80                             ; $5e7e: $38 $00

jr_0cd_5e80:
    sub l                                         ; $5e80: $95
    nop                                           ; $5e81: $00
    ld h, e                                       ; $5e82: $63
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    adc [hl]                                      ; $5e85: $8e
    ld bc, $03ac                                  ; $5e86: $01 $ac $03
    ld e, b                                       ; $5e89: $58
    rlca                                          ; $5e8a: $07
    jr nz, jr_0cd_5e8d                            ; $5e8b: $20 $00

jr_0cd_5e8d:
    nop                                           ; $5e8d: $00
    ld d, h                                       ; $5e8e: $54
    nop                                           ; $5e8f: $00
    ld [$8c10], a                                 ; $5e90: $ea $10 $8c
    ld [hl], b                                    ; $5e93: $70
    inc d                                         ; $5e94: $14
    nop                                           ; $5e95: $00
    ldh [$38], a                                  ; $5e96: $e0 $38
    ret nz                                        ; $5e98: $c0

    ld h, h                                       ; $5e99: $64
    add b                                         ; $5e9a: $80
    ret z                                         ; $5e9b: $c8

    nop                                           ; $5e9c: $00
    ld c, $00                                     ; $5e9d: $0e $00
    pop af                                        ; $5e9f: $f1
    inc [hl]                                      ; $5ea0: $34
    jp $8768                                      ; $5ea1: $c3 $68 $87


    sub c                                         ; $5ea4: $91
    ld c, $23                                     ; $5ea5: $0e $23
    nop                                           ; $5ea7: $00
    inc e                                         ; $5ea8: $1c
    ld b, [hl]                                    ; $5ea9: $46
    jr c, jr_0cd_5e35                             ; $5eaa: $38 $89

    ld [hl], b                                    ; $5eac: $70
    ld de, $4de0                                  ; $5ead: $11 $e0 $4d
    nop                                           ; $5eb0: $00
    di                                            ; $5eb1: $f3
    ld a, [de]                                    ; $5eb2: $1a
    rst $20                                       ; $5eb3: $e7
    ld [hl], b                                    ; $5eb4: $70
    adc a                                         ; $5eb5: $8f
    pop hl                                        ; $5eb6: $e1
    ld e, $26                                     ; $5eb7: $1e $26
    nop                                           ; $5eb9: $00
    add hl, de                                    ; $5eba: $19
    inc a                                         ; $5ebb: $3c
    inc bc                                        ; $5ebc: $03
    ld d, b                                       ; $5ebd: $50
    rrca                                          ; $5ebe: $0f
    jr nz, jr_0cd_5ee0                            ; $5ebf: $20 $1f

    add hl, bc                                    ; $5ec1: $09
    nop                                           ; $5ec2: $00
    rst $38                                       ; $5ec3: $ff
    ld e, $ff                                     ; $5ec4: $1e $ff
    dec hl                                        ; $5ec6: $2b
    rst $38                                       ; $5ec7: $ff
    ld e, l                                       ; $5ec8: $5d
    rst $38                                       ; $5ec9: $ff
    ld a, [hl+]                                   ; $5eca: $2a
    nop                                           ; $5ecb: $00
    rst $38                                       ; $5ecc: $ff
    sub l                                         ; $5ecd: $95
    rst $38                                       ; $5ece: $ff
    ld b, d                                       ; $5ecf: $42
    rst $38                                       ; $5ed0: $ff
    add l                                         ; $5ed1: $85
    rst $38                                       ; $5ed2: $ff
    inc [hl]                                      ; $5ed3: $34
    nop                                           ; $5ed4: $00
    ret nz                                        ; $5ed5: $c0

    ld l, d                                       ; $5ed6: $6a
    add b                                         ; $5ed7: $80
    add l                                         ; $5ed8: $85
    nop                                           ; $5ed9: $00
    db $eb                                        ; $5eda: $eb
    nop                                           ; $5edb: $00
    ld b, e                                       ; $5edc: $43
    add b                                         ; $5edd: $80
    ld a, h                                       ; $5ede: $7c
    nop                                           ; $5edf: $00

jr_0cd_5ee0:
    call c, $f003                                 ; $5ee0: $dc $03 $f0
    rrca                                          ; $5ee3: $0f
    ld d, h                                       ; $5ee4: $54
    inc bc                                        ; $5ee5: $03
    cp b                                          ; $5ee6: $b8
    nop                                           ; $5ee7: $00
    rlca                                          ; $5ee8: $07
    ld d, d                                       ; $5ee9: $52
    rrca                                          ; $5eea: $0f
    ret                                           ; $5eeb: $c9


    ld a, $93                                     ; $5eec: $3e $93
    ld a, h                                       ; $5eee: $7c
    ld b, $00                                     ; $5eef: $06 $00
    ld hl, sp+$4d                                 ; $5ef1: $f8 $4d
    ldh a, [rNR30]                                ; $5ef3: $f0 $1a
    ldh [rNR33], a                                ; $5ef5: $e0 $1d
    ldh [$39], a                                  ; $5ef7: $e0 $39
    ld [$d4c0], sp                                ; $5ef9: $08 $c0 $d4
    nop                                           ; $5efc: $00
    res 3, [hl]                                   ; $5efd: $cb $9e
    nop                                           ; $5eff: $00
    sub $01                                       ; $5f00: $d6 $01
    inc a                                         ; $5f02: $3c
    nop                                           ; $5f03: $00
    inc bc                                        ; $5f04: $03
    ret nc                                        ; $5f05: $d0

    rrca                                          ; $5f06: $0f
    or d                                          ; $5f07: $b2
    rrca                                          ; $5f08: $0f
    ld h, b                                       ; $5f09: $60
    rra                                           ; $5f0a: $1f
    push bc                                       ; $5f0b: $c5
    nop                                           ; $5f0c: $00
    ld a, $91                                     ; $5f0d: $3e $91
    ld a, [hl]                                    ; $5f0f: $7e
    inc hl                                        ; $5f10: $23
    db $fc                                        ; $5f11: $fc
    ld h, [hl]                                    ; $5f12: $66
    ld hl, sp-$73                                 ; $5f13: $f8 $8d
    call nc, RST_20                               ; $5f15: $d4 $20 $00
    ld l, b                                       ; $5f18: $68
    add hl, bc                                    ; $5f19: $09
    db $10                                        ; $5f1a: $10
    add b                                         ; $5f1b: $80
    ld bc, $8854                                  ; $5f1c: $01 $54 $88
    ld de, $00a8                                  ; $5f1f: $11 $a8 $00
    nop                                           ; $5f22: $00
    inc sp                                        ; $5f23: $33
    ret nz                                        ; $5f24: $c0

    ld l, e                                       ; $5f25: $6b
    add b                                         ; $5f26: $80
    add $01                                       ; $5f27: $c6 $01
    inc c                                         ; $5f29: $0c
    inc bc                                        ; $5f2a: $03
    nop                                           ; $5f2b: $00
    ld e, c                                       ; $5f2c: $59
    rlca                                          ; $5f2d: $07
    ld [hl-], a                                   ; $5f2e: $32
    rrca                                          ; $5f2f: $0f
    ld b, h                                       ; $5f30: $44
    ccf                                           ; $5f31: $3f
    sub c                                         ; $5f32: $91
    ld a, [hl]                                    ; $5f33: $7e
    db $10                                        ; $5f34: $10
    sub d                                         ; $5f35: $92
    ld a, a                                       ; $5f36: $7f
    jr z, jr_0cd_5fa1                             ; $5f37: $28 $68

    nop                                           ; $5f39: $00
    ld [$25ff], sp                                ; $5f3a: $08 $ff $25
    sbc $00                                       ; $5f3d: $de $00
    ld h, e                                       ; $5f3f: $63
    sbc h                                         ; $5f40: $9c
    db $d3                                        ; $5f41: $d3
    inc a                                         ; $5f42: $3c

jr_0cd_5f43:
    add a                                         ; $5f43: $87
    ld a, b                                       ; $5f44: $78
    db $e4                                        ; $5f45: $e4
    rra                                           ; $5f46: $1f
    nop                                           ; $5f47: $00
    adc b                                         ; $5f48: $88
    ld a, a                                       ; $5f49: $7f
    ld hl, $13fe                                  ; $5f4a: $21 $fe $13
    db $fc                                        ; $5f4d: $fc
    ld b, [hl]                                    ; $5f4e: $46
    ld hl, sp+$00                                 ; $5f4f: $f8 $00
    inc c                                         ; $5f51: $0c
    ldh a, [$0a]                                  ; $5f52: $f0 $0a
    ldh a, [rNR32]                                ; $5f54: $f0 $1c
    ldh [$eb], a                                  ; $5f56: $e0 $eb
    nop                                           ; $5f58: $00
    db $10                                        ; $5f59: $10
    sub [hl]                                      ; $5f5a: $96
    ld bc, $c88c                                  ; $5f5b: $01 $8c $c8
    nop                                           ; $5f5e: $00
    ld [hl], b                                    ; $5f5f: $70
    rrca                                          ; $5f60: $0f
    ldh [$1f], a                                  ; $5f61: $e0 $1f
    nop                                           ; $5f63: $00
    ret nz                                        ; $5f64: $c0

    ccf                                           ; $5f65: $3f
    add b                                         ; $5f66: $80
    ld a, a                                       ; $5f67: $7f
    ccf                                           ; $5f68: $3f
    nop                                           ; $5f69: $00
    ld [hl], e                                    ; $5f6a: $73
    inc c                                         ; $5f6b: $0c
    inc d                                         ; $5f6c: $14
    jp nz, $853c                                  ; $5f6d: $c2 $3c $85

    ld [$0900], a                                 ; $5f70: $ea $00 $09
    jr nz, jr_0cd_5f75                            ; $5f73: $20 $00

jr_0cd_5f75:
    add hl, de                                    ; $5f75: $19
    ldh [rLCDC], a                                ; $5f76: $e0 $40
    inc d                                         ; $5f78: $14
    db $10                                        ; $5f79: $10
    ld [bc], a                                    ; $5f7a: $02
    db $10                                        ; $5f7b: $10
    rst $38                                       ; $5f7c: $ff
    ld l, b                                       ; $5f7d: $68
    rst $38                                       ; $5f7e: $ff
    xor c                                         ; $5f7f: $a9
    cp $40                                        ; $5f80: $fe $40
    ld b, c                                       ; $5f82: $41
    ld [hl], $00                                  ; $5f83: $36 $00
    add [hl]                                      ; $5f85: $86
    ld hl, sp-$22                                 ; $5f86: $f8 $de
    jr nz, jr_0cd_5f43                            ; $5f88: $20 $b9

    ld b, b                                       ; $5f8a: $40
    inc d                                         ; $5f8b: $14
    ld l, b                                       ; $5f8c: $68
    add b                                         ; $5f8d: $80
    call nc, Call_000_006a                        ; $5f8e: $d4 $6a $00
    ret nz                                        ; $5f91: $c0

    call c, $0711                                 ; $5f92: $dc $11 $07
    ld hl, sp-$7e                                 ; $5f95: $f8 $82
    ld a, [c]                                     ; $5f97: $f2
    ld [$07e8], sp                                ; $5f98: $08 $e8 $07
    adc c                                         ; $5f9b: $89
    ld b, $ee                                     ; $5f9c: $06 $ee
    adc $01                                       ; $5f9e: $ce $01
    sub d                                         ; $5fa0: $92

jr_0cd_5fa1:
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    ld c, $f0                                     ; $5fa3: $0e $f0
    dec sp                                        ; $5fa5: $3b
    ret nz                                        ; $5fa6: $c0

    ld [hl], c                                    ; $5fa7: $71
    add b                                         ; $5fa8: $80
    db $db                                        ; $5fa9: $db

jr_0cd_5faa:
    jr nz, jr_0cd_5fac                            ; $5faa: $20 $00

jr_0cd_5fac:
    jp z, Jump_000_0138                           ; $5fac: $ca $38 $01

    jp nz, $0100                                  ; $5faf: $c2 $00 $01

    nop                                           ; $5fb2: $00
    or d                                          ; $5fb3: $b2
    ld [$900f], sp                                ; $5fb4: $08 $0f $90
    rrca                                          ; $5fb7: $0f
    ld [hl], c                                    ; $5fb8: $71
    or [hl]                                       ; $5fb9: $b6
    nop                                           ; $5fba: $00
    ld h, h                                       ; $5fbb: $64
    rra                                           ; $5fbc: $1f
    pop bc                                        ; $5fbd: $c1
    jr nz, @+$41                                  ; $5fbe: $20 $3f

    sub d                                         ; $5fc0: $92
    ret nz                                        ; $5fc1: $c0

    ld bc, $e31c                                  ; $5fc2: $01 $1c $e3
    ld b, c                                       ; $5fc5: $41
    cp $a3                                        ; $5fc6: $fe $a3
    nop                                           ; $5fc8: $00
    db $fc                                        ; $5fc9: $fc
    ld b, h                                       ; $5fca: $44
    ld hl, sp-$74                                 ; $5fcb: $f8 $8c
    ldh a, [$59]                                  ; $5fcd: $f0 $59

jr_0cd_5fcf:
    ldh [rNR24], a                                ; $5fcf: $e0 $19
    nop                                           ; $5fd1: $00
    ldh [rNR31], a                                ; $5fd2: $e0 $1b
    ldh [$2b], a                                  ; $5fd4: $e0 $2b
    ret nz                                        ; $5fd6: $c0

    ld h, e                                       ; $5fd7: $63
    add b                                         ; $5fd8: $80
    and [hl]                                      ; $5fd9: $a6
    ld [$5c01], sp                                ; $5fda: $08 $01 $5c
    inc bc                                        ; $5fdd: $03
    sbc c                                         ; $5fde: $99
    jr @+$04                                      ; $5fdf: $18 $02

    jp nz, $953f                                  ; $5fe1: $c2 $3f $95

    nop                                           ; $5fe4: $00
    ld a, a                                       ; $5fe5: $7f
    rrca                                          ; $5fe6: $0f
    rst $38                                       ; $5fe7: $ff
    ld d, e                                       ; $5fe8: $53
    rst $38                                       ; $5fe9: $ff
    ld a, [bc]                                    ; $5fea: $0a
    rst $38                                       ; $5feb: $ff
    ld e, [hl]                                    ; $5fec: $5e
    nop                                           ; $5fed: $00
    rst $38                                       ; $5fee: $ff
    ld sp, $54ff                                  ; $5fef: $31 $ff $54
    rst $38                                       ; $5ff2: $ff
    and c                                         ; $5ff3: $a1
    cp $08                                        ; $5ff4: $fe $08
    jr nz, @+$01                                  ; $5ff6: $20 $ff

    inc c                                         ; $5ff8: $0c
    add h                                         ; $5ff9: $84
    nop                                           ; $5ffa: $00
    ld d, $e1                                     ; $5ffb: $16 $e1
    inc l                                         ; $5ffd: $2c
    jp $0059                                      ; $5ffe: $c3 $59 $00


    add [hl]                                      ; $6001: $86
    pop de                                        ; $6002: $d1
    ld c, $a2                                     ; $6003: $0e $a2
    inc e                                         ; $6005: $1c
    push bc                                       ; $6006: $c5
    jr c, jr_0cd_6019                             ; $6007: $38 $10

    nop                                           ; $6009: $00
    ldh [$2a], a                                  ; $600a: $e0 $2a
    ret nz                                        ; $600c: $c0

    dec [hl]                                      ; $600d: $35
    ret nz                                        ; $600e: $c0

    ld l, a                                       ; $600f: $6f
    add b                                         ; $6010: $80
    ld e, b                                       ; $6011: $58
    nop                                           ; $6012: $00
    add a                                         ; $6013: $87
    ld [hl], b                                    ; $6014: $70
    adc a                                         ; $6015: $8f
    ld b, c                                       ; $6016: $41
    cp [hl]                                       ; $6017: $be
    rlca                                          ; $6018: $07

jr_0cd_6019:
    ld hl, sp+$50                                 ; $6019: $f8 $50
    add b                                         ; $601b: $80
    ld e, b                                       ; $601c: $58
    ld [bc], a                                    ; $601d: $02
    db $e4                                        ; $601e: $e4
    nop                                           ; $601f: $00
    ld sp, $26c0                                  ; $6020: $31 $c0 $26
    pop bc                                        ; $6023: $c1
    ld l, h                                       ; $6024: $6c
    jr nc, jr_0cd_5faa                            ; $6025: $30 $83

    ret c                                         ; $6027: $d8

    and [hl]                                      ; $6028: $a6
    ld bc, $09b0                                  ; $6029: $01 $b0 $09
    ld d, [hl]                                    ; $602c: $56
    ld bc, $07b8                                  ; $602d: $01 $b8 $07
    nop                                           ; $6030: $00
    ldh a, [rIF]                                  ; $6031: $f0 $0f
    pop bc                                        ; $6033: $c1
    ld a, $82                                     ; $6034: $3e $82
    ld a, h                                       ; $6036: $7c
    ld c, $f0                                     ; $6037: $0e $f0
    jr z, jr_0cd_5fcf                             ; $6039: $28 $94

    ld a, a                                       ; $603b: $7f
    ret nz                                        ; $603c: $c0

    ld e, b                                       ; $603d: $58
    nop                                           ; $603e: $00
    jp nc, Jump_000_0302                          ; $603f: $d2 $02 $03

    db $fc                                        ; $6042: $fc
    inc h                                         ; $6043: $24
    ld [$78fb], sp                                ; $6044: $08 $fb $78
    rst $30                                       ; $6047: $f7
    jr nz, @-$7a                                  ; $6048: $20 $84

    ld bc, $fff5                                  ; $604a: $01 $f5 $ff
    ldh a, [$03]                                  ; $604d: $f0 $03
    ld a, h                                       ; $604f: $7c
    ld bc, $aa00                                  ; $6050: $01 $00 $aa
    ld d, l                                       ; $6053: $55
    rst $10                                       ; $6054: $d7
    jr z, @-$0f                                   ; $6055: $28 $ef

    db $10                                        ; $6057: $10
    rst $30                                       ; $6058: $f7
    ld [$4f00], sp                                ; $6059: $08 $00 $4f
    or b                                          ; $605c: $b0
    cp a                                          ; $605d: $bf
    ld b, b                                       ; $605e: $40
    ld l, a                                       ; $605f: $6f
    sub b                                         ; $6060: $90
    rst $18                                       ; $6061: $df
    jr nz, jr_0cd_608e                            ; $6062: $20 $2a

jr_0cd_6064:
    cp $00                                        ; $6064: $fe $00
    ld [bc], a                                    ; $6066: $02
    jr c, jr_0cd_6064                             ; $6067: $38 $fb

    ld [bc], a                                    ; $6069: $02

jr_0cd_606a:
    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff
    ld [bc], a                                    ; $606c: $02
    db $10                                        ; $606d: $10
    ld a, a                                       ; $606e: $7f
    add b                                         ; $606f: $80
    ld [bc], a                                    ; $6070: $02
    jr nz, @-$3f                                  ; $6071: $20 $bf

    nop                                           ; $6073: $00
    push de                                       ; $6074: $d5
    ld a, [hl+]                                   ; $6075: $2a
    or a                                          ; $6076: $b7
    ld c, b                                       ; $6077: $48
    jp hl                                         ; $6078: $e9


    db $10                                        ; $6079: $10
    ld d, $f4                                     ; $607a: $16 $f4
    dec bc                                        ; $607c: $0b
    inc b                                         ; $607d: $04
    ld [$05fa], sp                                ; $607e: $08 $fa $05
    ld hl, sp+$07                                 ; $6081: $f8 $07
    cp d                                          ; $6083: $ba
    jr nz, jr_0cd_609e                            ; $6084: $20 $18

    cp $28                                        ; $6086: $fe $28
    db $10                                        ; $6088: $10
    jr nc, jr_0cd_6093                            ; $6089: $30 $08

    ld a, [hl+]                                   ; $608b: $2a
    jr z, @+$41                                   ; $608c: $28 $3f

jr_0cd_608e:
    ld [bc], a                                    ; $608e: $02
    db $10                                        ; $608f: $10
    cp a                                          ; $6090: $bf
    ld hl, sp+$40                                 ; $6091: $f8 $40

jr_0cd_6093:
    jr nz, jr_0cd_60b7                            ; $6093: $20 $22

    ld [$185a], sp                                ; $6095: $08 $5a $18
    ld e, $28                                     ; $6098: $1e $28
    ld d, d                                       ; $609a: $52
    ld [$006f], sp                                ; $609b: $08 $6f $00

jr_0cd_609e:
    rst $28                                       ; $609e: $ef

jr_0cd_609f:
    xor l                                         ; $609f: $ad
    ld l, [hl]                                    ; $60a0: $6e
    jr nz, jr_0cd_609f                            ; $60a1: $20 $fc

    ld [bc], a                                    ; $60a3: $02
    db $10                                        ; $60a4: $10
    db $fd                                        ; $60a5: $fd
    ld [hl], b                                    ; $60a6: $70
    jr nc, jr_0cd_611f                            ; $60a7: $30 $76

    jr jr_0cd_606a                                ; $60a9: $18 $bf

    ld [hl], b                                    ; $60ab: $70
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    cpl                                           ; $60ae: $2f
    ret nc                                        ; $60af: $d0

    rra                                           ; $60b0: $1f
    ldh [$2f], a                                  ; $60b1: $e0 $2f
    ret nc                                        ; $60b3: $d0

    rst $18                                       ; $60b4: $df
    jr nz, @+$2c                                  ; $60b5: $20 $2a

jr_0cd_60b7:
    ld a, a                                       ; $60b7: $7f
    add b                                         ; $60b8: $80
    stop                                          ; $60b9: $10 $00
    ld b, b                                       ; $60bb: $40
    ld h, h                                       ; $60bc: $64
    ld [$2efd], sp                                ; $60bd: $08 $fd $2e
    nop                                           ; $60c0: $00
    cp $2d                                        ; $60c1: $fe $2d
    nop                                           ; $60c3: $00
    rst $30                                       ; $60c4: $f7
    ld [hl], $10                                  ; $60c5: $36 $10
    db $fd                                        ; $60c7: $fd
    sub d                                         ; $60c8: $92
    nop                                           ; $60c9: $00
    ld c, h                                       ; $60ca: $4c
    ld [$a26f], sp                                ; $60cb: $08 $6f $a2
    nop                                           ; $60ce: $00
    ld b, b                                       ; $60cf: $40
    rst $18                                       ; $60d0: $df
    ld [bc], a                                    ; $60d1: $02
    db $10                                        ; $60d2: $10
    db $fd                                        ; $60d3: $fd
    ld [bc], a                                    ; $60d4: $02
    cp $01                                        ; $60d5: $fe $01
    db $fd                                        ; $60d7: $fd
    ld [bc], a                                    ; $60d8: $02
    inc [hl]                                      ; $60d9: $34
    ld a, [$0805]                                 ; $60da: $fa $05 $08
    ld [$0098], sp                                ; $60dd: $08 $98 $00

jr_0cd_60e0:
    ld bc, $2830                                  ; $60e0: $01 $30 $28
    rst $18                                       ; $60e3: $df
    nop                                           ; $60e4: $00
    inc b                                         ; $60e5: $04
    or $00                                        ; $60e6: $f6 $00
    db $f4                                        ; $60e8: $f4
    nop                                           ; $60e9: $00
    ld sp, hl                                     ; $60ea: $f9
    jr nc, jr_0cd_612d                            ; $60eb: $30 $40

    db $dd                                        ; $60ed: $dd
    nop                                           ; $60ee: $00
    ld [hl], l                                    ; $60ef: $75
    sbc $02                                       ; $60f0: $de $02
    nop                                           ; $60f2: $00
    ldh a, [$08]                                  ; $60f3: $f0 $08
    cp d                                          ; $60f5: $ba
    ld [$10ff], sp                                ; $60f6: $08 $ff $10
    nop                                           ; $60f9: $00
    cp l                                          ; $60fa: $bd
    ld [bc], a                                    ; $60fb: $02
    nop                                           ; $60fc: $00
    inc b                                         ; $60fd: $04
    rst $28                                       ; $60fe: $ef
    nop                                           ; $60ff: $00
    ld e, a                                       ; $6100: $5f
    nop                                           ; $6101: $00
    rra                                           ; $6102: $1f
    cp [hl]                                       ; $6103: $be
    nop                                           ; $6104: $00
    ld a, l                                       ; $6105: $7d
    nop                                           ; $6106: $00
    inc b                                         ; $6107: $04
    or a                                          ; $6108: $b7
    nop                                           ; $6109: $00
    sub a                                         ; $610a: $97
    nop                                           ; $610b: $00
    rst $08                                       ; $610c: $cf
    ld [hl], $00                                  ; $610d: $36 $00
    xor $00                                       ; $610f: $ee $00
    dec b                                         ; $6111: $05
    db $ed                                        ; $6112: $ed
    nop                                           ; $6113: $00
    jp hl                                         ; $6114: $e9


    nop                                           ; $6115: $00
    di                                            ; $6116: $f3
    inc a                                         ; $6117: $3c
    nop                                           ; $6118: $00
    ld sp, hl                                     ; $6119: $f9
    xor b                                         ; $611a: $a8
    nop                                           ; $611b: $00
    ld e, l                                       ; $611c: $5d
    ld a, a                                       ; $611d: $7f
    sbc b                                         ; $611e: $98

jr_0cd_611f:
    jr nz, jr_0cd_60e0                            ; $611f: $20 $bf

    ld a, [bc]                                    ; $6121: $0a
    db $10                                        ; $6122: $10
    db $f4                                        ; $6123: $f4
    ld [$0816], sp                                ; $6124: $08 $16 $08
    db $ec                                        ; $6127: $ec
    cp h                                          ; $6128: $bc
    nop                                           ; $6129: $00
    ld e, d                                       ; $612a: $5a
    or $62                                        ; $612b: $f6 $62

jr_0cd_612d:
    nop                                           ; $612d: $00
    rst $30                                       ; $612e: $f7
    jr jr_0cd_6141                                ; $612f: $18 $10

    inc h                                         ; $6131: $24
    ld [$36df], sp                                ; $6132: $08 $df $36
    ld hl, $06bf                                  ; $6135: $21 $bf $06
    ld b, b                                       ; $6138: $40
    ld e, a                                       ; $6139: $5f
    and b                                         ; $613a: $a0
    xor a                                         ; $613b: $af
    ld d, b                                       ; $613c: $50
    cp [hl]                                       ; $613d: $be
    ld [$08c2], sp                                ; $613e: $08 $c2 $08

jr_0cd_6141:
    rst $38                                       ; $6141: $ff
    adc d                                         ; $6142: $8a
    ld c, [hl]                                    ; $6143: $4e
    nop                                           ; $6144: $00
    db $f4                                        ; $6145: $f4
    nop                                           ; $6146: $00
    ld hl, sp+$32                                 ; $6147: $f8 $32
    db $10                                        ; $6149: $10
    or $5c                                        ; $614a: $f6 $5c
    ld bc, $acfd                                  ; $614c: $01 $fd $ac
    ld e, d                                       ; $614f: $5a
    ld hl, $76df                                  ; $6150: $21 $df $76
    nop                                           ; $6153: $00
    ld e, a                                       ; $6154: $5f
    inc [hl]                                      ; $6155: $34
    ld de, $08b4                                  ; $6156: $11 $b4 $08
    db $fd                                        ; $6159: $fd
    ld [bc], a                                    ; $615a: $02
    push af                                       ; $615b: $f5

jr_0cd_615c:
    ld b, $18                                     ; $615c: $06 $18
    jp nz, $1a08                                  ; $615e: $c2 $08 $1a

    add hl, bc                                    ; $6161: $09
    and h                                         ; $6162: $a4
    jr jr_0cd_615c                                ; $6163: $18 $f7

    adc h                                         ; $6165: $8c
    ld bc, $52f6                                  ; $6166: $01 $f6 $52
    ld de, $771a                                  ; $6169: $11 $1a $77
    nop                                           ; $616c: $00
    cpl                                           ; $616d: $2f
    ld [bc], a                                    ; $616e: $02
    nop                                           ; $616f: $00

jr_0cd_6170:
    and [hl]                                      ; $6170: $a6
    ld [$1a3f], sp                                ; $6171: $08 $3f $1a
    jr nz, jr_0cd_6170                            ; $6174: $20 $fa

    jp c, $0002                                   ; $6176: $da $02 $00

    jr z, jr_0cd_6193                             ; $6179: $28 $18

    sbc a                                         ; $617b: $9f
    ld [bc], a                                    ; $617c: $02
    nop                                           ; $617d: $00
    ld a, h                                       ; $617e: $7c
    add hl, bc                                    ; $617f: $09
    ld a, a                                       ; $6180: $7f
    ld h, $00                                     ; $6181: $26 $00
    ld a, a                                       ; $6183: $7f
    ld a, [bc]                                    ; $6184: $0a
    nop                                           ; $6185: $00
    scf                                           ; $6186: $37
    nop                                           ; $6187: $00
    pop af                                        ; $6188: $f1
    or [hl]                                       ; $6189: $b6
    db $10                                        ; $618a: $10
    db $fc                                        ; $618b: $fc
    xor $00                                       ; $618c: $ee $00
    db $fd                                        ; $618e: $fd
    ld [$00ca], a                                 ; $618f: $ea $ca $00
    ld [hl], h                                    ; $6192: $74

jr_0cd_6193:
    ld [$089a], sp                                ; $6193: $08 $9a $08
    ld l, a                                       ; $6196: $6f
    ld b, d                                       ; $6197: $42
    nop                                           ; $6198: $00
    dec de                                        ; $6199: $1b
    add [hl]                                      ; $619a: $86
    ld de, $88fa                                  ; $619b: $11 $fa $88
    ldh a, [rSB]                                  ; $619e: $f0 $01
    db $ec                                        ; $61a0: $ec
    nop                                           ; $61a1: $00
    ret c                                         ; $61a2: $d8

    ld a, [de]                                    ; $61a3: $1a
    ld bc, $00f0                                  ; $61a4: $01 $f0 $00
    add sp, $3d                                   ; $61a7: $e8 $3d
    nop                                           ; $61a9: $00
    call c, Call_000_21e6                         ; $61aa: $dc $e6 $21
    ld a, d                                       ; $61ad: $7a
    add hl, bc                                    ; $61ae: $09
    adc d                                         ; $61af: $8a
    ld c, c                                       ; $61b0: $49
    sub [hl]                                      ; $61b1: $96
    add hl, sp                                    ; $61b2: $39
    rst $30                                       ; $61b3: $f7
    ld d, $12                                     ; $61b4: $16 $12
    and e                                         ; $61b6: $a3
    ld l, [hl]                                    ; $61b7: $6e
    ld [$f6ee], sp                                ; $61b8: $08 $ee $f6
    ld de, $003b                                  ; $61bb: $11 $3b $00
    cp e                                          ; $61be: $bb
    ld d, $02                                     ; $61bf: $16 $02
    jp z, $bd09                                   ; $61c1: $ca $09 $bd

    ld a, [hl-]                                   ; $61c4: $3a
    add hl, bc                                    ; $61c5: $09
    dec de                                        ; $61c6: $1b
    ld l, $01                                     ; $61c7: $2e $01
    jr jr_0cd_61d3                                ; $61c9: $18 $08

    ld a, [hl-]                                   ; $61cb: $3a
    ld a, [bc]                                    ; $61cc: $0a
    xor d                                         ; $61cd: $aa
    add hl, bc                                    ; $61ce: $09
    db $ec                                        ; $61cf: $ec
    xor h                                         ; $61d0: $ac
    nop                                           ; $61d1: $00
    xor e                                         ; $61d2: $ab

jr_0cd_61d3:
    ld a, [de]                                    ; $61d3: $1a
    ld [$982f], sp                                ; $61d4: $08 $2f $98
    nop                                           ; $61d7: $00
    cp e                                          ; $61d8: $bb
    or $11                                        ; $61d9: $f6 $11
    call c, $014e                                 ; $61db: $dc $4e $01
    ld e, b                                       ; $61de: $58
    ld a, [bc]                                    ; $61df: $0a
    ld l, e                                       ; $61e0: $6b
    ld sp, hl                                     ; $61e1: $f9
    adc [hl]                                      ; $61e2: $8e
    ld bc, $0802                                  ; $61e3: $01 $02 $08
    rst $38                                       ; $61e6: $ff
    ld l, b                                       ; $61e7: $68
    ld bc, $36b7                                  ; $61e8: $01 $b7 $36
    ld sp, $08e6                                  ; $61eb: $31 $e6 $08
    ld [hl], l                                    ; $61ee: $75
    rst $30                                       ; $61ef: $f7
    xor d                                         ; $61f0: $aa
    ld bc, $09e2                                  ; $61f1: $01 $e2 $09
    sbc h                                         ; $61f4: $9c
    add hl, bc                                    ; $61f5: $09
    db $fc                                        ; $61f6: $fc
    ld c, b                                       ; $61f7: $48
    ld [de], a                                    ; $61f8: $12
    ld [hl], a                                    ; $61f9: $77
    ld a, [c]                                     ; $61fa: $f2
    nop                                           ; $61fb: $00
    ld d, a                                       ; $61fc: $57
    ccf                                           ; $61fd: $3f
    ld [hl+], a                                   ; $61fe: $22
    ld de, $2a7f                                  ; $61ff: $11 $7f $2a
    ld [bc], a                                    ; $6202: $02
    jp hl                                         ; $6203: $e9


    adc d                                         ; $6204: $8a
    ld de, $098c                                  ; $6205: $11 $8c $09
    sbc h                                         ; $6208: $9c
    ld a, [de]                                    ; $6209: $1a
    ld e, a                                       ; $620a: $5f
    rst $28                                       ; $620b: $ef
    ld a, [$cf11]                                 ; $620c: $fa $11 $cf
    ld d, $01                                     ; $620f: $16 $01
    sub $08                                       ; $6211: $d6 $08
    ld a, b                                       ; $6213: $78
    jr jr_0cd_624a                                ; $6214: $18 $34

    add hl, de                                    ; $6216: $19
    cp [hl]                                       ; $6217: $be
    ld a, [bc]                                    ; $6218: $0a
    ld d, h                                       ; $6219: $54
    dec a                                         ; $621a: $3d
    and d                                         ; $621b: $a2
    nop                                           ; $621c: $00
    scf                                           ; $621d: $37
    ld [$7701], sp                                ; $621e: $08 $01 $77
    inc c                                         ; $6221: $0c
    ld bc, $002f                                  ; $6222: $01 $2f $00
    ld [hl], l                                    ; $6225: $75
    adc a                                         ; $6226: $8f
    db $f4                                        ; $6227: $f4
    ld bc, $0906                                  ; $6228: $01 $06 $09
    xor d                                         ; $622b: $aa
    add hl, bc                                    ; $622c: $09
    or $36                                        ; $622d: $f6 $36
    ld bc, $84f8                                  ; $622f: $01 $f8 $84
    ld [bc], a                                    ; $6232: $02
    ld e, [hl]                                    ; $6233: $5e
    ld l, a                                       ; $6234: $6f
    ld a, [c]                                     ; $6235: $f2
    ld hl, $903f                                  ; $6236: $21 $3f $90
    ld [bc], a                                    ; $6239: $02
    ld h, d                                       ; $623a: $62
    add hl, bc                                    ; $623b: $09
    jp z, $9408                                   ; $623c: $ca $08 $94

    ld a, [de]                                    ; $623f: $1a
    ld hl, sp-$0f                                 ; $6240: $f8 $f1
    jr nc, @+$04                                  ; $6242: $30 $02

    jp z, Jump_0cd_780a                           ; $6244: $ca $0a $78

    ld [$2916], sp                                ; $6247: $08 $16 $29

jr_0cd_624a:
    cp $00                                        ; $624a: $fe $00
    db $db                                        ; $624c: $db
    ld [bc], a                                    ; $624d: $02
    nop                                           ; $624e: $00
    push af                                       ; $624f: $f5
    ld h, h                                       ; $6250: $64
    jr c, jr_0cd_62c9                             ; $6251: $38 $76

    ld [$0aa8], sp                                ; $6253: $08 $a8 $0a
    and b                                         ; $6256: $a0
    jr jr_0cd_62b8                                ; $6257: $18 $5f

    ld b, $13                                     ; $6259: $06 $13
    db $fd                                        ; $625b: $fd
    jp z, Jump_0cd_5602                           ; $625c: $ca $02 $56

    ld sp, hl                                     ; $625f: $f9
    ld a, [hl+]                                   ; $6260: $2a
    ld de, $90fa                                  ; $6261: $11 $fa $90
    ld bc, $46cb                                  ; $6264: $01 $cb $46
    ld [bc], a                                    ; $6267: $02
    ld [bc], a                                    ; $6268: $02
    ld [$d51f], sp                                ; $6269: $08 $1f $d5
    ld b, [hl]                                    ; $626c: $46
    inc de                                        ; $626d: $13
    ld b, [hl]                                    ; $626e: $46
    ld a, [bc]                                    ; $626f: $0a
    call c, $0168                                 ; $6270: $dc $68 $01
    ld hl, sp+$00                                 ; $6273: $f8 $00
    ld de, $b6fc                                  ; $6275: $11 $fc $b6
    ld [hl+], a                                   ; $6278: $22
    rst $18                                       ; $6279: $df
    ld d, [hl]                                    ; $627a: $56
    ld a, [bc]                                    ; $627b: $0a
    ldh [$09], a                                  ; $627c: $e0 $09
    ld a, a                                       ; $627e: $7f
    inc e                                         ; $627f: $1c
    ld [de], a                                    ; $6280: $12
    add h                                         ; $6281: $84
    dec bc                                        ; $6282: $0b
    ld e, [hl]                                    ; $6283: $5e
    add hl, bc                                    ; $6284: $09
    ld l, h                                       ; $6285: $6c
    add hl, bc                                    ; $6286: $09
    ldh [$08], a                                  ; $6287: $e0 $08
    adc a                                         ; $6289: $8f
    ret z                                         ; $628a: $c8

    add hl, bc                                    ; $628b: $09
    sub a                                         ; $628c: $97
    nop                                           ; $628d: $00
    adc l                                         ; $628e: $8d
    sbc b                                         ; $628f: $98
    ld [de], a                                    ; $6290: $12
    ld l, d                                       ; $6291: $6a
    dec bc                                        ; $6292: $0b
    jr z, jr_0cd_62a0                             ; $6293: $28 $0b

    sbc h                                         ; $6295: $9c
    dec bc                                        ; $6296: $0b
    db $db                                        ; $6297: $db
    jr c, jr_0cd_62a5                             ; $6298: $38 $0b

    ld l, d                                       ; $629a: $6a
    dec de                                        ; $629b: $1b
    sbc a                                         ; $629c: $9f
    ld [de], a                                    ; $629d: $12
    ld [bc], a                                    ; $629e: $02
    ld c, [hl]                                    ; $629f: $4e

jr_0cd_62a0:
    dec bc                                        ; $62a0: $0b
    rst $18                                       ; $62a1: $df
    jr nc, @+$24                                  ; $62a2: $30 $22

    ld c, d                                       ; $62a4: $4a

jr_0cd_62a5:
    add hl, hl                                    ; $62a5: $29
    ld d, b                                       ; $62a6: $50
    ei                                            ; $62a7: $fb
    ld e, d                                       ; $62a8: $5a
    ld b, d                                       ; $62a9: $42
    xor a                                         ; $62aa: $af
    ld a, [de]                                    ; $62ab: $1a
    ld [de], a                                    ; $62ac: $12
    ldh a, [$03]                                  ; $62ad: $f0 $03
    inc de                                        ; $62af: $13
    inc bc                                        ; $62b0: $03
    inc [hl]                                      ; $62b1: $34
    rst $38                                       ; $62b2: $ff
    nop                                           ; $62b3: $00
    ld [bc], a                                    ; $62b4: $02
    ld e, b                                       ; $62b5: $58
    rrca                                          ; $62b6: $0f
    ld h, b                                       ; $62b7: $60

jr_0cd_62b8:
    rst $38                                       ; $62b8: $ff
    ld bc, $fb68                                  ; $62b9: $01 $68 $fb
    ei                                            ; $62bc: $fb
    nop                                           ; $62bd: $00
    ld a, [c]                                     ; $62be: $f2
    ld a, [c]                                     ; $62bf: $f2
    call nc, $f0d4                                ; $62c0: $d4 $d4 $f0
    ldh a, [$fa]                                  ; $62c3: $f0 $fa
    ld a, [$ff00]                                 ; $62c5: $fa $00 $ff
    rst $38                                       ; $62c8: $ff

jr_0cd_62c9:
    rst $28                                       ; $62c9: $ef
    rst $28                                       ; $62ca: $ef
    and $e6                                       ; $62cb: $e6 $e6
    add c                                         ; $62cd: $81
    add b                                         ; $62ce: $80
    nop                                           ; $62cf: $00
    inc de                                        ; $62d0: $13
    db $10                                        ; $62d1: $10
    ld b, b                                       ; $62d2: $40
    ld b, b                                       ; $62d3: $40
    add hl, bc                                    ; $62d4: $09
    nop                                           ; $62d5: $00
    inc bc                                        ; $62d6: $03
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    add c                                         ; $62d9: $81
    add b                                         ; $62da: $80
    jr z, jr_0cd_62fd                             ; $62db: $28 $20

    ld b, b                                       ; $62dd: $40
    ld b, b                                       ; $62de: $40
    db $db                                        ; $62df: $db
    inc b                                         ; $62e0: $04
    nop                                           ; $62e1: $00
    ld a, $01                                     ; $62e2: $3e $01
    ld a, [$7f05]                                 ; $62e4: $fa $05 $7f
    nop                                           ; $62e7: $00
    and $19                                       ; $62e8: $e6 $19
    nop                                           ; $62ea: $00
    ld a, $01                                     ; $62eb: $3e $01
    ld a, l                                       ; $62ed: $7d
    ld [bc], a                                    ; $62ee: $02
    cp c                                          ; $62ef: $b9
    ld b, $fe                                     ; $62f0: $06 $fe
    ld bc, $ee00                                  ; $62f2: $01 $00 $ee
    ld de, $7f80                                  ; $62f5: $11 $80 $7f
    jp hl                                         ; $62f8: $e9


    ld d, $81                                     ; $62f9: $16 $81
    ld a, [hl]                                    ; $62fb: $7e
    nop                                           ; $62fc: $00

jr_0cd_62fd:
    add b                                         ; $62fd: $80
    ld a, a                                       ; $62fe: $7f
    sbc b                                         ; $62ff: $98
    ld h, a                                       ; $6300: $67
    ld hl, sp+$07                                 ; $6301: $f8 $07
    ld [hl], b                                    ; $6303: $70
    adc a                                         ; $6304: $8f
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    rst $38                                       ; $6307: $ff
    ld bc, $03ff                                  ; $6308: $01 $ff $03
    rst $38                                       ; $630b: $ff
    pop bc                                        ; $630c: $c1

jr_0cd_630d:
    ccf                                           ; $630d: $3f
    nop                                           ; $630e: $00
    ldh a, [rIF]                                  ; $630f: $f0 $0f
    ld hl, sp+$07                                 ; $6311: $f8 $07
    ld hl, sp+$07                                 ; $6313: $f8 $07
    and a                                         ; $6315: $a7
    ld hl, sp+$00                                 ; $6316: $f8 $00
    sub b                                         ; $6318: $90
    rst $28                                       ; $6319: $ef
    push bc                                       ; $631a: $c5
    ld a, [$fba4]                                 ; $631b: $fa $a4 $fb
    sub d                                         ; $631e: $92
    rst $38                                       ; $631f: $ff
    nop                                           ; $6320: $00
    pop de                                        ; $6321: $d1
    xor $85                                       ; $6322: $ee $85
    cp $58                                        ; $6324: $fe $58
    rst $20                                       ; $6326: $e7
    ret z                                         ; $6327: $c8

    scf                                           ; $6328: $37
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    rst $38                                       ; $632b: $ff
    inc bc                                        ; $632c: $03
    db $fc                                        ; $632d: $fc
    rra                                           ; $632e: $1f
    ldh [rIF], a                                  ; $632f: $e0 $0f
    ldh a, [$03]                                  ; $6331: $f0 $03
    ld d, $e9                                     ; $6333: $16 $e9
    ret nz                                        ; $6335: $c0

    ccf                                           ; $6336: $3f
    ld b, b                                       ; $6337: $40
    cp a                                          ; $6338: $bf
    sbc a                                         ; $6339: $9f
    ld [$0830], sp                                ; $633a: $08 $30 $08
    db $10                                        ; $633d: $10
    add hl, bc                                    ; $633e: $09
    rst $38                                       ; $633f: $ff
    inc e                                         ; $6340: $1c
    ld [bc], a                                    ; $6341: $02
    nop                                           ; $6342: $00
    ld [$b3ff], sp                                ; $6343: $08 $ff $b3
    ld c, h                                       ; $6346: $4c
    nop                                           ; $6347: $00
    rst $00                                       ; $6348: $c7
    jr c, @-$37                                   ; $6349: $38 $c7

    jr c, jr_0cd_630d                             ; $634b: $38 $c0

    ccf                                           ; $634d: $3f
    sbc b                                         ; $634e: $98
    ld h, a                                       ; $634f: $67
    nop                                           ; $6350: $00
    sbc b                                         ; $6351: $98
    ld h, a                                       ; $6352: $67
    db $fc                                        ; $6353: $fc
    inc bc                                        ; $6354: $03
    ldh a, [rIF]                                  ; $6355: $f0 $0f
    add a                                         ; $6357: $87
    ld a, a                                       ; $6358: $7f
    nop                                           ; $6359: $00
    rrca                                          ; $635a: $0f
    rst $38                                       ; $635b: $ff
    inc h                                         ; $635c: $24
    rst $18                                       ; $635d: $df
    ld h, b                                       ; $635e: $60
    sbc a                                         ; $635f: $9f
    ld c, $f1                                     ; $6360: $0e $f1
    nop                                           ; $6362: $00
    rrca                                          ; $6363: $0f
    ldh a, [$1f]                                  ; $6364: $f0 $1f
    ldh [rNR34], a                                ; $6366: $e0 $1e
    pop hl                                        ; $6368: $e1
    ldh a, [rIE]                                  ; $6369: $f0 $ff
    ld bc, $ffa8                                  ; $636b: $01 $a8 $ff
    ld e, h                                       ; $636e: $5c
    rst $38                                       ; $636f: $ff
    add sp, -$01                                  ; $6370: $e8 $ff
    ld b, b                                       ; $6372: $40
    reti                                          ; $6373: $d9


    ld d, b                                       ; $6374: $50
    nop                                           ; $6375: $00
    inc b                                         ; $6376: $04
    rst $38                                       ; $6377: $ff
    ld e, $ff                                     ; $6378: $1e $ff
    inc a                                         ; $637a: $3c
    rst $38                                       ; $637b: $ff
    ld a, $ff                                     ; $637c: $3e $ff
    ld b, b                                       ; $637e: $40
    ld [hl], h                                    ; $637f: $74
    ld e, h                                       ; $6380: $5c
    nop                                           ; $6381: $00
    inc bc                                        ; $6382: $03
    db $fc                                        ; $6383: $fc
    inc b                                         ; $6384: $04
    ei                                            ; $6385: $fb
    rrca                                          ; $6386: $0f
    ldh a, [$28]                                  ; $6387: $f0 $28
    rrca                                          ; $6389: $0f
    ldh a, [$f9]                                  ; $638a: $f0 $f9
    jr c, jr_0cd_63ce                             ; $638c: $38 $40

    jr nc, jr_0cd_6390                            ; $638e: $30 $00

jr_0cd_6390:
    ld e, h                                       ; $6390: $5c
    rst $38                                       ; $6391: $ff
    jr jr_0cd_6394                                ; $6392: $18 $00

jr_0cd_6394:
    rst $38                                       ; $6394: $ff
    add hl, sp                                    ; $6395: $39
    rst $38                                       ; $6396: $ff
    inc d                                         ; $6397: $14
    rst $38                                       ; $6398: $ff
    ld hl, sp+$07                                 ; $6399: $f8 $07
    db $fc                                        ; $639b: $fc
    nop                                           ; $639c: $00
    inc bc                                        ; $639d: $03
    ld hl, sp+$07                                 ; $639e: $f8 $07
    ldh [$1f], a                                  ; $63a0: $e0 $1f
    ld a, b                                       ; $63a2: $78
    add a                                         ; $63a3: $87
    ldh a, [rP1]                                  ; $63a4: $f0 $00
    rrca                                          ; $63a6: $0f
    jr nz, @-$1f                                  ; $63a7: $20 $df

jr_0cd_63a9:
    nop                                           ; $63a9: $00
    rst $38                                       ; $63aa: $ff
    ld a, d                                       ; $63ab: $7a
    dec b                                         ; $63ac: $05
    ld e, $00                                     ; $63ad: $1e $00
    ld bc, $04fb                                  ; $63af: $01 $fb $04
    rst $18                                       ; $63b2: $df
    jr nz, @-$0e                                  ; $63b3: $20 $f0

    rrca                                          ; $63b5: $0f
    ld a, [$0501]                                 ; $63b6: $fa $01 $05
    rst $08                                       ; $63b9: $cf
    jr nc, jr_0cd_63a9                            ; $63ba: $30 $ed

    ld [de], a                                    ; $63bc: $12
    ld e, $e1                                     ; $63bd: $1e $e1
    sbc h                                         ; $63bf: $9c
    ld [$8e00], sp                                ; $63c0: $08 $00 $8e
    pop af                                        ; $63c3: $f1
    ld h, b                                       ; $63c4: $60
    sbc a                                         ; $63c5: $9f
    ld hl, $03df                                  ; $63c6: $21 $df $03
    rst $38                                       ; $63c9: $ff
    nop                                           ; $63ca: $00
    add l                                         ; $63cb: $85
    ld a, a                                       ; $63cc: $7f
    sub b                                         ; $63cd: $90

jr_0cd_63ce:
    nop                                           ; $63ce: $00
    ld hl, sp+$00                                 ; $63cf: $f8 $00
    ld a, [c]                                     ; $63d1: $f2
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    ld a, b                                       ; $63d4: $78
    add b                                         ; $63d5: $80
    ldh [rP1], a                                  ; $63d6: $e0 $00
    cp d                                          ; $63d8: $ba
    ld b, b                                       ; $63d9: $40
    cpl                                           ; $63da: $2f
    ret nc                                        ; $63db: $d0

    nop                                           ; $63dc: $00
    or $00                                        ; $63dd: $f6 $00
    cp [hl]                                       ; $63df: $be
    cp [hl]                                       ; $63e0: $be
    ld d, $16                                     ; $63e1: $16 $16
    ld hl, $0001                                  ; $63e3: $21 $01 $00
    add h                                         ; $63e6: $84
    inc b                                         ; $63e7: $04
    ld b, c                                       ; $63e8: $41
    ld bc, $0058                                  ; $63e9: $01 $58 $00
    add c                                         ; $63ec: $81
    ld bc, $8b00                                  ; $63ed: $01 $00 $8b
    dec bc                                        ; $63f0: $0b
    db $e4                                        ; $63f1: $e4
    db $e4                                        ; $63f2: $e4
    push de                                       ; $63f3: $d5
    push de                                       ; $63f4: $d5
    call z, Call_000_00cc                         ; $63f5: $cc $cc $00
    xor h                                         ; $63f8: $ac
    xor h                                         ; $63f9: $ac
    rst $00                                       ; $63fa: $c7
    rst $00                                       ; $63fb: $c7
    ld d, [hl]                                    ; $63fc: $56
    ld d, [hl]                                    ; $63fd: $56
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    xor b                                         ; $6401: $a8
    xor b                                         ; $6402: $a8
    inc bc                                        ; $6403: $03
    nop                                           ; $6404: $00
    jr nz, jr_0cd_6407                            ; $6405: $20 $00

jr_0cd_6407:
    add hl, bc                                    ; $6407: $09
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    dec b                                         ; $640a: $05
    nop                                           ; $640b: $00
    rra                                           ; $640c: $1f
    nop                                           ; $640d: $00
    rlca                                          ; $640e: $07
    nop                                           ; $640f: $00
    ld sp, $2000                                  ; $6410: $31 $00 $20
    add l                                         ; $6413: $85
    add b                                         ; $6414: $80
    ld [hl], b                                    ; $6415: $70
    ld [$03fc], sp                                ; $6416: $08 $fc $03
    ld a, [$fa05]                                 ; $6419: $fa $05 $fa
    nop                                           ; $641c: $00
    dec b                                         ; $641d: $05
    ldh [$1f], a                                  ; $641e: $e0 $1f
    ldh [$1f], a                                  ; $6420: $e0 $1f
    ldh a, [rIF]                                  ; $6422: $f0 $0f
    ldh [rDIV], a                                 ; $6424: $e0 $04
    rra                                           ; $6426: $1f
    ld [$a0f7], sp                                ; $6427: $08 $f7 $a0
    ld e, a                                       ; $642a: $5f
    ld a, d                                       ; $642b: $7a
    ld [$7788], sp                                ; $642c: $08 $88 $77
    ld [$7f80], sp                                ; $642f: $08 $80 $7f
    jr @-$17                                      ; $6432: $18 $e7

    sbc a                                         ; $6434: $9f
    add hl, hl                                    ; $6435: $29
    ld a, [bc]                                    ; $6436: $0a
    rst $38                                       ; $6437: $ff
    rra                                           ; $6438: $1f
    ret nz                                        ; $6439: $c0

    inc b                                         ; $643a: $04
    nop                                           ; $643b: $00
    sub $08                                       ; $643c: $d6 $08
    inc c                                         ; $643e: $0c
    di                                            ; $643f: $f3
    inc a                                         ; $6440: $3c
    jp $a45b                                      ; $6441: $c3 $5b $a4


    nop                                           ; $6444: $00
    ld sp, hl                                     ; $6445: $f9
    ld b, $fd                                     ; $6446: $06 $fd
    ld [bc], a                                    ; $6448: $02
    inc a                                         ; $6449: $3c
    jp $a659                                      ; $644a: $c3 $59 $a6


    jr nz, @+$05                                  ; $644d: $20 $03

    db $fc                                        ; $644f: $fc
    call z, $9c08                                 ; $6450: $cc $08 $9c
    ld h, e                                       ; $6453: $63
    rst $08                                       ; $6454: $cf
    jr nc, @+$81                                  ; $6455: $30 $7f

    ld b, b                                       ; $6457: $40
    add b                                         ; $6458: $80
    call z, Call_000_0e09                         ; $6459: $cc $09 $0e
    rst $38                                       ; $645c: $ff
    inc c                                         ; $645d: $0c
    rst $38                                       ; $645e: $ff
    call c, $01ff                                 ; $645f: $dc $ff $01
    ld a, [$7fff]                                 ; $6462: $fa $ff $7f
    rst $38                                       ; $6465: $ff
    ld d, d                                       ; $6466: $52
    rst $38                                       ; $6467: $ff
    ldh [rTMA], a                                 ; $6468: $e0 $06
    ld bc, $4900                                  ; $646a: $01 $00 $49
    ld bc, $0072                                  ; $646d: $01 $72 $00
    ret z                                         ; $6470: $c8

    nop                                           ; $6471: $00
    cp h                                          ; $6472: $bc
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    ld [c], a                                     ; $6475: $e2
    nop                                           ; $6476: $00
    inc d                                         ; $6477: $14
    nop                                           ; $6478: $00
    ld b, b                                       ; $6479: $40
    nop                                           ; $647a: $00
    ld c, b                                       ; $647b: $48
    ld bc, $ff00                                  ; $647c: $01 $00 $ff
    rst $38                                       ; $647f: $ff
    cp a                                          ; $6480: $bf
    cp a                                          ; $6481: $bf
    rst $20                                       ; $6482: $e7
    rst $20                                       ; $6483: $e7
    dec b                                         ; $6484: $05
    dec b                                         ; $6485: $05
    nop                                           ; $6486: $00
    rrca                                          ; $6487: $0f
    rrca                                          ; $6488: $0f
    add e                                         ; $6489: $83
    add e                                         ; $648a: $83
    sub e                                         ; $648b: $93
    sub e                                         ; $648c: $93
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    nop                                           ; $648f: $00
    ld hl, sp-$08                                 ; $6490: $f8 $f8

jr_0cd_6492:
    db $fd                                        ; $6492: $fd
    db $fd                                        ; $6493: $fd
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    ccf                                           ; $6496: $3f
    ccf                                           ; $6497: $3f
    nop                                           ; $6498: $00
    dec d                                         ; $6499: $15
    dec d                                         ; $649a: $15
    add e                                         ; $649b: $83
    add e                                         ; $649c: $83
    jp $ffc3                                      ; $649d: $c3 $c3 $ff


    rst $38                                       ; $64a0: $ff
    db $10                                        ; $64a1: $10
    add a                                         ; $64a2: $87
    add b                                         ; $64a3: $80
    ldh [rSB], a                                  ; $64a4: $e0 $01
    nop                                           ; $64a6: $00
    add b                                         ; $64a7: $80
    add b                                         ; $64a8: $80
    and [hl]                                      ; $64a9: $a6
    and b                                         ; $64aa: $a0
    ld b, b                                       ; $64ab: $40
    ld [c], a                                     ; $64ac: $e2
    ld b, $00                                     ; $64ad: $06 $00
    ret nz                                        ; $64af: $c0

    ret nz                                        ; $64b0: $c0

    dec [hl]                                      ; $64b1: $35
    ld a, [bc]                                    ; $64b2: $0a
    rst $18                                       ; $64b3: $df
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    inc b                                         ; $64b6: $04
    inc bc                                        ; $64b7: $03
    ld l, $01                                     ; $64b8: $2e $01
    inc bc                                        ; $64ba: $03
    nop                                           ; $64bb: $00
    ld b, a                                       ; $64bc: $47
    nop                                           ; $64bd: $00
    ld c, c                                       ; $64be: $49
    ld de, $00b8                                  ; $64bf: $11 $b8 $00
    ldh a, [rIF]                                  ; $64c2: $f0 $0f
    sub h                                         ; $64c4: $94
    add hl, bc                                    ; $64c5: $09
    ld [hl+], a                                   ; $64c6: $22
    db $dd                                        ; $64c7: $dd
    cp e                                          ; $64c8: $bb
    ld bc, $f810                                  ; $64c9: $01 $10 $f8
    ccf                                           ; $64cc: $3f
    ret nz                                        ; $64cd: $c0

    jr nc, jr_0cd_64ea                            ; $64ce: $30 $1a

    ld [hl], c                                    ; $64d0: $71
    adc a                                         ; $64d1: $8f
    ld [hl], b                                    ; $64d2: $70
    adc a                                         ; $64d3: $8f
    db $10                                        ; $64d4: $10
    ldh [$1f], a                                  ; $64d5: $e0 $1f
    ld sp, hl                                     ; $64d7: $f9
    inc de                                        ; $64d8: $13
    ld [$6907], sp                                ; $64d9: $08 $07 $69
    rst $38                                       ; $64dc: $ff
    db $fc                                        ; $64dd: $fc
    add b                                         ; $64de: $80
    ld a, [hl]                                    ; $64df: $7e
    nop                                           ; $64e0: $00
    cp b                                          ; $64e1: $b8
    rst $38                                       ; $64e2: $ff
    sbc h                                         ; $64e3: $9c
    rst $38                                       ; $64e4: $ff
    jp z, $80ff                                   ; $64e5: $ca $ff $80

    ret nz                                        ; $64e8: $c0

    ld d, b                                       ; $64e9: $50

jr_0cd_64ea:
    ld bc, $1998                                  ; $64ea: $01 $98 $19
    ccf                                           ; $64ed: $3f

jr_0cd_64ee:
    ret nz                                        ; $64ee: $c0

    ccf                                           ; $64ef: $3f
    ret nz                                        ; $64f0: $c0

    inc e                                         ; $64f1: $1c
    db $e3                                        ; $64f2: $e3
    sbc b                                         ; $64f3: $98
    adc $09                                       ; $64f4: $ce $09
    ld hl, sp+$07                                 ; $64f6: $f8 $07
    db $e4                                        ; $64f8: $e4
    ld [$08e8], sp                                ; $64f9: $08 $e8 $08
    ld b, $f9                                     ; $64fc: $06 $f9
    rst $18                                       ; $64fe: $df
    inc b                                         ; $64ff: $04
    jr nz, @+$01                                  ; $6500: $20 $ff

    nop                                           ; $6502: $00
    inc bc                                        ; $6503: $03
    db $fc                                        ; $6504: $fc
    dec de                                        ; $6505: $1b
    nop                                           ; $6506: $00
    ccf                                           ; $6507: $3f
    jp Jump_000_3c04                              ; $6508: $c3 $04 $3c


    rst $18                                       ; $650b: $df
    jr nz, jr_0cd_6492                            ; $650c: $20 $84

    ld a, e                                       ; $650e: $7b
    ld a, [de]                                    ; $650f: $1a
    ld [bc], a                                    ; $6510: $02
    cp $00                                        ; $6511: $fe $00
    inc b                                         ; $6513: $04
    rst $38                                       ; $6514: $ff
    jr z, jr_0cd_64ee                             ; $6515: $28 $d7

    call nz, $0c3b                                ; $6517: $c4 $3b $0c
    add hl, bc                                    ; $651a: $09
    jp z, Jump_000_0035                           ; $651b: $ca $35 $00

    sbc b                                         ; $651e: $98
    ld h, a                                       ; $651f: $67

jr_0cd_6520:
    jr nz, @-$1f                                  ; $6520: $20 $df

    xor h                                         ; $6522: $ac
    ld d, b                                       ; $6523: $50
    add sp, $10                                   ; $6524: $e8 $10
    nop                                           ; $6526: $00
    ld a, [$4800]                                 ; $6527: $fa $00 $48
    or b                                          ; $652a: $b0
    db $dd                                        ; $652b: $dd

jr_0cd_652c:
    jr nz, jr_0cd_652c                            ; $652c: $20 $fe

    nop                                           ; $652e: $00
    ld h, $bb                                     ; $652f: $26 $bb
    ld b, h                                       ; $6531: $44
    or [hl]                                       ; $6532: $b6
    ld bc, $0001                                  ; $6533: $01 $01 $00
    ld bc, $0818                                  ; $6536: $01 $18 $08
    db $10                                        ; $6539: $10
    jp nz, RST_00                                 ; $653a: $c2 $00 $00

    ld hl, sp-$08                                 ; $653d: $f8 $f8
    xor $ee                                       ; $653f: $ee $ee
    db $fc                                        ; $6541: $fc
    db $fc                                        ; $6542: $fc
    cp [hl]                                       ; $6543: $be
    nop                                           ; $6544: $00
    cp [hl]                                       ; $6545: $be
    ld [hl], h                                    ; $6546: $74
    ld [hl], h                                    ; $6547: $74
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    sbc d                                         ; $654a: $9a
    sbc d                                         ; $654b: $9a
    ld d, a                                       ; $654c: $57
    inc b                                         ; $654d: $04
    ld d, a                                       ; $654e: $57
    call c, Call_000_1c23                         ; $654f: $dc $23 $1c
    db $e3                                        ; $6552: $e3
    db $d3                                        ; $6553: $d3
    ld a, [bc]                                    ; $6554: $0a
    ret nz                                        ; $6555: $c0

    ccf                                           ; $6556: $3f
    jr nz, jr_0cd_6520                            ; $6557: $20 $c7

    jr c, jr_0cd_65d3                             ; $6559: $38 $78

    ld [$f1ce], sp                                ; $655b: $08 $ce $f1
    ldh [rIE], a                                  ; $655e: $e0 $ff
    ret nz                                        ; $6560: $c0

    add d                                         ; $6561: $82
    adc d                                         ; $6562: $8a
    nop                                           ; $6563: $00
    ld b, e                                       ; $6564: $43
    db $fc                                        ; $6565: $fc
    rst $28                                       ; $6566: $ef
    ldh a, [$5f]                                  ; $6567: $f0 $5f
    ld h, e                                       ; $6569: $63
    ld bc, $1908                                  ; $656a: $01 $08 $19
    rst $30                                       ; $656d: $f7
    inc c                                         ; $656e: $0c
    di                                            ; $656f: $f3
    ld l, c                                       ; $6570: $69
    ld bc, $0260                                  ; $6571: $01 $60 $02
    add [hl]                                      ; $6574: $86
    ld a, c                                       ; $6575: $79
    ld a, d                                       ; $6576: $7a
    ld [$7281], sp                                ; $6577: $08 $81 $72
    ld [$fb04], sp                                ; $657a: $08 $04 $fb
    ld b, $f9                                     ; $657d: $06 $f9
    ld [hl], b                                    ; $657f: $70
    adc a                                         ; $6580: $8f
    sub b                                         ; $6581: $90
    ld a, [bc]                                    ; $6582: $0a
    nop                                           ; $6583: $00
    ld a, b                                       ; $6584: $78
    add a                                         ; $6585: $87
    scf                                           ; $6586: $37
    ret z                                         ; $6587: $c8

    sub a                                         ; $6588: $97
    ld l, b                                       ; $6589: $68
    rst $38                                       ; $658a: $ff
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    cp e                                          ; $658d: $bb
    ld b, b                                       ; $658e: $40
    rst $28                                       ; $658f: $ef
    db $10                                        ; $6590: $10
    ld a, a                                       ; $6591: $7f
    add b                                         ; $6592: $80
    scf                                           ; $6593: $37
    ret z                                         ; $6594: $c8

    nop                                           ; $6595: $00
    dec hl                                        ; $6596: $2b
    call nc, Call_000_00c0                        ; $6597: $d4 $c0 $00
    db $e4                                        ; $659a: $e4
    ld bc, $01d8                                  ; $659b: $01 $d8 $01
    db $10                                        ; $659e: $10
    ld a, [c]                                     ; $659f: $f2
    nop                                           ; $65a0: $00
    pop af                                        ; $65a1: $f1
    ld b, d                                       ; $65a2: $42
    ld bc, $00e0                                  ; $65a3: $01 $e0 $00
    ret nc                                        ; $65a6: $d0

    nop                                           ; $65a7: $00
    nop                                           ; $65a8: $00
    sub $d6                                       ; $65a9: $d6 $d6
    add b                                         ; $65ab: $80
    add b                                         ; $65ac: $80
    ret z                                         ; $65ad: $c8

    ret z                                         ; $65ae: $c8

    ldh [$e0], a                                  ; $65af: $e0 $e0
    nop                                           ; $65b1: $00
    db $fc                                        ; $65b2: $fc
    db $fc                                        ; $65b3: $fc
    ld hl, sp-$08                                 ; $65b4: $f8 $f8
    ld b, h                                       ; $65b6: $44
    ld b, h                                       ; $65b7: $44
    jr nz, jr_0cd_65da                            ; $65b8: $20 $20

    db $10                                        ; $65ba: $10
    dec c                                         ; $65bb: $0d
    ld [bc], a                                    ; $65bc: $02
    ld d, [hl]                                    ; $65bd: $56
    inc e                                         ; $65be: $1c
    ld bc, $0003                                  ; $65bf: $01 $03 $00
    ld e, [hl]                                    ; $65c2: $5e
    ld bc, $0d00                                  ; $65c3: $01 $00 $0d
    ld [bc], a                                    ; $65c6: $02
    rlca                                          ; $65c7: $07
    nop                                           ; $65c8: $00
    dec e                                         ; $65c9: $1d
    ld [bc], a                                    ; $65ca: $02
    push de                                       ; $65cb: $d5
    ld a, [hl+]                                   ; $65cc: $2a
    nop                                           ; $65cd: $00
    ldh a, [rIF]                                  ; $65ce: $f0 $0f
    cp $01                                        ; $65d0: $fe $01
    cp d                                          ; $65d2: $ba

jr_0cd_65d3:
    ld b, l                                       ; $65d3: $45
    ldh a, [rIF]                                  ; $65d4: $f0 $0f
    ld [$16e9], sp                                ; $65d6: $08 $e9 $16

jr_0cd_65d9:
    db $f4                                        ; $65d9: $f4

jr_0cd_65da:
    dec bc                                        ; $65da: $0b
    ld d, b                                       ; $65db: $50
    dec bc                                        ; $65dc: $0b
    ld bc, $0bfe                                  ; $65dd: $01 $fe $0b
    nop                                           ; $65e0: $00
    db $f4                                        ; $65e1: $f4
    ld b, a                                       ; $65e2: $47
    cp b                                          ; $65e3: $b8
    rst $20                                       ; $65e4: $e7
    jr jr_0cd_65d9                                ; $65e5: $18 $f2

    dec c                                         ; $65e7: $0d
    ld [hl], b                                    ; $65e8: $70
    ld l, h                                       ; $65e9: $6c
    adc a                                         ; $65ea: $8f
    ld d, d                                       ; $65eb: $52
    ld [bc], a                                    ; $65ec: $02
    cp a                                          ; $65ed: $bf
    nop                                           ; $65ee: $00
    inc c                                         ; $65ef: $0c
    jp Jump_0cd_6810                              ; $65f0: $c3 $10 $68


    add hl, de                                    ; $65f3: $19
    rra                                           ; $65f4: $1f
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    dec a                                         ; $65f7: $3d
    ld [bc], a                                    ; $65f8: $02
    adc l                                         ; $65f9: $8d
    ld [bc], a                                    ; $65fa: $02
    adc a                                         ; $65fb: $8f
    nop                                           ; $65fc: $00
    ld e, $01                                     ; $65fd: $1e $01
    nop                                           ; $65ff: $00
    inc a                                         ; $6600: $3c
    inc bc                                        ; $6601: $03
    rst $30                                       ; $6602: $f7
    ld [$2857], sp                                ; $6603: $08 $57 $28
    ld b, b                                       ; $6606: $40
    nop                                           ; $6607: $00
    db $10                                        ; $6608: $10
    jr z, jr_0cd_660b                             ; $6609: $28 $00

jr_0cd_660b:
    add c                                         ; $660b: $81
    ld c, [hl]                                    ; $660c: $4e
    inc bc                                        ; $660d: $03
    add hl, bc                                    ; $660e: $09
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    ld b, b                                       ; $6611: $40
    nop                                           ; $6612: $00
    inc bc                                        ; $6613: $03

jr_0cd_6614:
    db $10                                        ; $6614: $10
    ld bc, $1680                                  ; $6615: $01 $80 $16
    jp hl                                         ; $6618: $e9


    adc l                                         ; $6619: $8d
    ld [hl], d                                    ; $661a: $72
    nop                                           ; $661b: $00
    db $fd                                        ; $661c: $fd
    ld [bc], a                                    ; $661d: $02
    ld a, a                                       ; $661e: $7f
    add b                                         ; $661f: $80
    jp nc, $702d                                  ; $6620: $d2 $2d $70

    adc a                                         ; $6623: $8f
    add b                                         ; $6624: $80
    db $f4                                        ; $6625: $f4
    ld a, [bc]                                    ; $6626: $0a
    rst $18                                       ; $6627: $df
    rst $18                                       ; $6628: $df
    db $fd                                        ; $6629: $fd
    db $fd                                        ; $662a: $fd
    dec d                                         ; $662b: $15
    dec d                                         ; $662c: $15
    ld b, a                                       ; $662d: $47
    nop                                           ; $662e: $00
    ld b, a                                       ; $662f: $47
    ld b, $06                                     ; $6630: $06 $06
    rrca                                          ; $6632: $0f
    rrca                                          ; $6633: $0f
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    cp b                                          ; $6636: $b8
    ld [bc], a                                    ; $6637: $02
    cp b                                          ; $6638: $b8
    rra                                           ; $6639: $1f
    nop                                           ; $663a: $00
    sbc a                                         ; $663b: $9f
    nop                                           ; $663c: $00
    ccf                                           ; $663d: $3f
    call nz, Call_0cd_7e03                        ; $663e: $c4 $03 $7e
    ld [bc], a                                    ; $6641: $02
    ld bc, $053a                                  ; $6642: $01 $3a $05
    ld a, $01                                     ; $6645: $3e $01
    ld a, a                                       ; $6647: $7f
    dec e                                         ; $6648: $1d
    ld bc, $001f                                  ; $6649: $01 $1f $00
    rra                                           ; $664c: $1f
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    sbc a                                         ; $664f: $9f
    sbc a                                         ; $6650: $9f
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    jr nz, @+$52                                  ; $6653: $20 $50

    jr nz, jr_0cd_6614                            ; $6655: $20 $bd

    dec bc                                        ; $6657: $0b
    ld [$02f8], sp                                ; $6658: $08 $f8 $02
    ld a, b                                       ; $665b: $78
    rst $38                                       ; $665c: $ff
    jr c, @+$01                                   ; $665d: $38 $ff

    ld h, b                                       ; $665f: $60
    db $10                                        ; $6660: $10
    adc [hl]                                      ; $6661: $8e
    ld bc, $0908                                  ; $6662: $01 $08 $09
    jr nz, jr_0cd_6667                            ; $6665: $20 $00

jr_0cd_6667:
    dec c                                         ; $6667: $0d
    nop                                           ; $6668: $00
    xor $00                                       ; $6669: $ee $00
    rla                                           ; $666b: $17
    ld b, b                                       ; $666c: $40
    ld b, c                                       ; $666d: $41
    ld b, d                                       ; $666e: $42
    ld bc, $4300                                  ; $666f: $01 $00 $43
    dec b                                         ; $6672: $05
    ld [$0009], sp                                ; $6673: $08 $09 $00
    ld c, $18                                     ; $6676: $0e $18
    and a                                         ; $6678: $a7
    dec c                                         ; $6679: $0d
    jr nz, jr_0cd_66bf                            ; $667a: $20 $43

    inc e                                         ; $667c: $1c
    ld [$4544], sp                                ; $667d: $08 $44 $45
    ld d, $30                                     ; $6680: $16 $30
    stop                                          ; $6682: $10 $00
    ld c, $08                                     ; $6684: $0e $08
    ret nz                                        ; $6686: $c0

    add hl, de                                    ; $6687: $19
    jr nz, jr_0cd_66c1                            ; $6688: $20 $37

    nop                                           ; $668a: $00
    ld b, h                                       ; $668b: $44
    ld b, l                                       ; $668c: $45
    ld b, b                                       ; $668d: $40
    ld b, c                                       ; $668e: $41
    ld b, [hl]                                    ; $668f: $46
    ld b, [hl]                                    ; $6690: $46
    nop                                           ; $6691: $00
    ld b, a                                       ; $6692: $47
    ld b, [hl]                                    ; $6693: $46
    ld c, b                                       ; $6694: $48
    ld c, c                                       ; $6695: $49
    ld b, [hl]                                    ; $6696: $46
    ld b, [hl]                                    ; $6697: $46
    ld c, d                                       ; $6698: $4a
    ld b, [hl]                                    ; $6699: $46
    ld [hl], l                                    ; $669a: $75
    ld b, [hl]                                    ; $669b: $46
    ld [$0210], sp                                ; $669c: $08 $10 $02
    db $10                                        ; $669f: $10
    add hl, bc                                    ; $66a0: $09
    ld b, b                                       ; $66a1: $40
    ld c, e                                       ; $66a2: $4b
    ld bc, $4c48                                  ; $66a3: $01 $48 $4c
    dec b                                         ; $66a6: $05
    jr nc, @-$76                                  ; $66a7: $30 $88

    ld b, $20                                     ; $66a9: $06 $20
    ld c, e                                       ; $66ab: $4b
    ld c, e                                       ; $66ac: $4b
    ld c, l                                       ; $66ad: $4d
    ld bc, $42e0                                  ; $66ae: $01 $e0 $42
    ld c, [hl]                                    ; $66b1: $4e
    ld c, a                                       ; $66b2: $4f
    ld h, l                                       ; $66b3: $65
    ld c, h                                       ; $66b4: $4c
    and d                                         ; $66b5: $a2
    ld [$2805], sp                                ; $66b6: $08 $05 $28
    ld d, b                                       ; $66b9: $50
    ld d, c                                       ; $66ba: $51
    xor e                                         ; $66bb: $ab
    jr jr_0cd_670a                                ; $66bc: $18 $4c

    add hl, bc                                    ; $66be: $09

jr_0cd_66bf:
    db $10                                        ; $66bf: $10
    inc b                                         ; $66c0: $04

jr_0cd_66c1:
    ld c, h                                       ; $66c1: $4c
    ld b, d                                       ; $66c2: $42
    ld c, h                                       ; $66c3: $4c
    ld d, d                                       ; $66c4: $52
    ld d, e                                       ; $66c5: $53
    dec d                                         ; $66c6: $15
    jr @+$4e                                      ; $66c7: $18 $4c

    ld b, d                                       ; $66c9: $42
    ld b, b                                       ; $66ca: $40
    ld d, h                                       ; $66cb: $54
    daa                                           ; $66cc: $27
    ld [$5655], sp                                ; $66cd: $08 $55 $56
    ld d, a                                       ; $66d0: $57
    ld e, b                                       ; $66d1: $58
    ld e, c                                       ; $66d2: $59
    ld b, d                                       ; $66d3: $42
    inc b                                         ; $66d4: $04
    ld e, d                                       ; $66d5: $5a
    ld d, a                                       ; $66d6: $57
    ld b, d                                       ; $66d7: $42
    ld d, l                                       ; $66d8: $55
    ld d, [hl]                                    ; $66d9: $56
    ld b, $08                                     ; $66da: $06 $08
    ld b, d                                       ; $66dc: $42
    ld e, e                                       ; $66dd: $5b
    add hl, de                                    ; $66de: $19
    ld e, h                                       ; $66df: $5c
    ld e, l                                       ; $66e0: $5d
    ld e, [hl]                                    ; $66e1: $5e
    dec d                                         ; $66e2: $15
    nop                                           ; $66e3: $00
    push hl                                       ; $66e4: $e5
    ld [$5f54], sp                                ; $66e5: $08 $54 $5f
    ld c, d                                       ; $66e8: $4a
    db $10                                        ; $66e9: $10
    inc bc                                        ; $66ea: $03
    ld d, a                                       ; $66eb: $57
    ld h, b                                       ; $66ec: $60
    ld h, c                                       ; $66ed: $61
    ld e, e                                       ; $66ee: $5b
    ld e, h                                       ; $66ef: $5c
    ld d, a                                       ; $66f0: $57
    ld d, l                                       ; $66f1: $55
    nop                                           ; $66f2: $00
    ld b, $00                                     ; $66f3: $06 $00
    ld bc, $4c5f                                  ; $66f5: $01 $5f $4c
    ld e, d                                       ; $66f8: $5a
    ld h, d                                       ; $66f9: $62
    ld h, e                                       ; $66fa: $63
    ld h, c                                       ; $66fb: $61
    ld h, h                                       ; $66fc: $64
    inc sp                                        ; $66fd: $33
    ld [$4222], sp                                ; $66fe: $08 $22 $42
    ld e, e                                       ; $6701: $5b
    add hl, bc                                    ; $6702: $09
    jr jr_0cd_6751                                ; $6703: $18 $4c

    ld e, d                                       ; $6705: $5a
    ld h, l                                       ; $6706: $65
    add hl, bc                                    ; $6707: $09
    ld c, b                                       ; $6708: $48
    ld e, h                                       ; $6709: $5c

jr_0cd_670a:
    add hl, bc                                    ; $670a: $09
    ld h, [hl]                                    ; $670b: $66
    ld h, a                                       ; $670c: $67
    ld l, b                                       ; $670d: $68
    ld l, c                                       ; $670e: $69
    inc sp                                        ; $670f: $33
    ld [$5a42], sp                                ; $6710: $08 $42 $5a
    add hl, bc                                    ; $6713: $09
    jr nz, jr_0cd_6736                            ; $6714: $20 $20

    ld e, h                                       ; $6716: $5c
    ld l, d                                       ; $6717: $6a
    add hl, bc                                    ; $6718: $09
    ld c, b                                       ; $6719: $48
    ld l, e                                       ; $671a: $6b
    ld l, h                                       ; $671b: $6c
    ld l, l                                       ; $671c: $6d
    ld l, [hl]                                    ; $671d: $6e
    ld l, a                                       ; $671e: $6f
    ld [$7170], sp                                ; $671f: $08 $70 $71
    ld [hl], d                                    ; $6722: $72
    ld [hl], e                                    ; $6723: $73
    add hl, bc                                    ; $6724: $09
    and b                                         ; $6725: $a0
    ld [hl], h                                    ; $6726: $74
    ld [hl], d                                    ; $6727: $72
    ld [hl], d                                    ; $6728: $72
    ld [bc], a                                    ; $6729: $02
    ld [hl], l                                    ; $672a: $75
    halt                                          ; $672b: $76
    ld [hl], a                                    ; $672c: $77
    ld [hl], l                                    ; $672d: $75
    ld a, b                                       ; $672e: $78
    ld a, c                                       ; $672f: $79
    add hl, bc                                    ; $6730: $09
    and b                                         ; $6731: $a0
    ld l, l                                       ; $6732: $6d
    nop                                           ; $6733: $00
    ld a, d                                       ; $6734: $7a
    ld a, e                                       ; $6735: $7b

jr_0cd_6736:
    ld l, l                                       ; $6736: $6d
    ld a, h                                       ; $6737: $7c
    ld a, l                                       ; $6738: $7d
    ld a, [hl]                                    ; $6739: $7e
    ld [hl], l                                    ; $673a: $75
    ld a, h                                       ; $673b: $7c
    cp d                                          ; $673c: $ba
    add hl, bc                                    ; $673d: $09
    and b                                         ; $673e: $a0
    inc c                                         ; $673f: $0c
    ld bc, $23f8                                  ; $6740: $01 $f8 $23
    ld hl, sp+$45                                 ; $6743: $f8 $45
    ret nz                                        ; $6745: $c0

    ld [$4801], sp                                ; $6746: $08 $01 $48
    ld a, [bc]                                    ; $6749: $0a
    ret c                                         ; $674a: $d8

    dec b                                         ; $674b: $05
    jr nc, jr_0cd_6759                            ; $674c: $30 $0b

    ld [$0d0d], sp                                ; $674e: $08 $0d $0d

jr_0cd_6751:
    jr nc, jr_0cd_6758                            ; $6751: $30 $05

    ret z                                         ; $6753: $c8

    dec c                                         ; $6754: $0d
    dec c                                         ; $6755: $0d
    add hl, bc                                    ; $6756: $09
    db $dd                                        ; $6757: $dd

jr_0cd_6758:
    ld b, h                                       ; $6758: $44

jr_0cd_6759:
    ld [$2805], sp                                ; $6759: $08 $05 $28
    add hl, bc                                    ; $675c: $09
    ld c, $10                                     ; $675d: $0e $10
    ld [$1708], sp                                ; $675f: $08 $08 $17
    ld [$1809], sp                                ; $6762: $08 $09 $18
    nop                                           ; $6765: $00
    call $0047                                    ; $6766: $cd $47 $00
    dec d                                         ; $6769: $15
    ld [$0d09], sp                                ; $676a: $08 $09 $0d
    ld d, b                                       ; $676d: $50
    ld [$0017], sp                                ; $676e: $08 $17 $00
    dec c                                         ; $6771: $0d
    add hl, bc                                    ; $6772: $09
    nop                                           ; $6773: $00
    daa                                           ; $6774: $27
    dec c                                         ; $6775: $0d
    dec l                                         ; $6776: $2d
    add hl, hl                                    ; $6777: $29
    ld [$280d], sp                                ; $6778: $08 $0d $28
    ccf                                           ; $677b: $3f
    ld [$0041], sp                                ; $677c: $08 $41 $00
    dec [hl]                                      ; $677f: $35
    jr jr_0cd_67d5                                ; $6780: $18 $53

    ld c, l                                       ; $6782: $4d
    ld c, d                                       ; $6783: $4a
    jr @+$4f                                      ; $6784: $18 $4d

    rra                                           ; $6786: $1f
    nop                                           ; $6787: $00
    ld [$556d], sp                                ; $6788: $08 $6d $55
    nop                                           ; $678b: $00
    ld b, $00                                     ; $678c: $06 $00
    adc a                                         ; $678e: $8f
    ld e, h                                       ; $678f: $5c
    nop                                           ; $6790: $00
    dec c                                         ; $6791: $0d
    dec c                                         ; $6792: $0d
    ld c, b                                       ; $6793: $48
    inc h                                         ; $6794: $24
    ld [$088f], sp                                ; $6795: $08 $8f $08
    add hl, bc                                    ; $6798: $09
    db $10                                        ; $6799: $10
    ld b, b                                       ; $679a: $40
    ld [$4d5f], sp                                ; $679b: $08 $5f $4d
    add hl, bc                                    ; $679e: $09
    jr z, jr_0cd_67e9                             ; $679f: $28 $48

    ld c, e                                       ; $67a1: $4b
    nop                                           ; $67a2: $00
    ld c, [hl]                                    ; $67a3: $4e
    nop                                           ; $67a4: $00
    inc sp                                        ; $67a5: $33
    ld [$0856], sp                                ; $67a6: $08 $56 $08
    add hl, bc                                    ; $67a9: $09
    db $10                                        ; $67aa: $10
    rst $38                                       ; $67ab: $ff
    cp b                                          ; $67ac: $b8
    ld [$2809], sp                                ; $67ad: $08 $09 $28
    ld a, [hl-]                                   ; $67b0: $3a
    jr nz, @-$34                                  ; $67b1: $20 $ca

    ld [$1020], sp                                ; $67b3: $08 $20 $10
    ld c, $28                                     ; $67b6: $0e $28
    ld l, $18                                     ; $67b8: $2e $18
    ld d, l                                       ; $67ba: $55
    db $10                                        ; $67bb: $10
    ld e, a                                       ; $67bc: $5f
    dec l                                         ; $67bd: $2d
    sub b                                         ; $67be: $90
    ld [$c748], sp                                ; $67bf: $08 $48 $c7
    nop                                           ; $67c2: $00
    adc l                                         ; $67c3: $8d
    db $10                                        ; $67c4: $10
    add hl, bc                                    ; $67c5: $09
    jr jr_0cd_6822                                ; $67c6: $18 $5a

    ld [$0119], sp                                ; $67c8: $08 $19 $01
    ld [hl], h                                    ; $67cb: $74
    dec l                                         ; $67cc: $2d
    inc b                                         ; $67cd: $04
    ld bc, $00a3                                  ; $67ce: $01 $a3 $00
    inc hl                                        ; $67d1: $23
    ld de, $0948                                  ; $67d2: $11 $48 $09

jr_0cd_67d5:
    and b                                         ; $67d5: $a0
    jr nz, jr_0cd_67d8                            ; $67d6: $20 $00

jr_0cd_67d8:
    dec c                                         ; $67d8: $0d
    nop                                           ; $67d9: $00
    sbc e                                         ; $67da: $9b
    ld [bc], a                                    ; $67db: $02
    nop                                           ; $67dc: $00
    ld b, b                                       ; $67dd: $40
    ld b, c                                       ; $67de: $41
    ld b, d                                       ; $67df: $42
    ld b, e                                       ; $67e0: $43
    ld b, h                                       ; $67e1: $44
    ld b, c                                       ; $67e2: $41
    ld b, l                                       ; $67e3: $45
    ld b, h                                       ; $67e4: $44
    nop                                           ; $67e5: $00
    ld b, [hl]                                    ; $67e6: $46
    ld b, a                                       ; $67e7: $47
    ld c, b                                       ; $67e8: $48

jr_0cd_67e9:
    ld c, b                                       ; $67e9: $48
    ld c, c                                       ; $67ea: $49
    ld c, d                                       ; $67eb: $4a
    ld c, e                                       ; $67ec: $4b
    ld c, h                                       ; $67ed: $4c
    nop                                           ; $67ee: $00
    ld c, l                                       ; $67ef: $4d
    ld c, [hl]                                    ; $67f0: $4e
    ld c, l                                       ; $67f1: $4d
    ld c, a                                       ; $67f2: $4f
    ld c, c                                       ; $67f3: $49
    ld d, b                                       ; $67f4: $50
    ld c, e                                       ; $67f5: $4b
    ld d, c                                       ; $67f6: $51
    nop                                           ; $67f7: $00
    ld b, a                                       ; $67f8: $47
    ld b, [hl]                                    ; $67f9: $46
    ld b, h                                       ; $67fa: $44
    ld b, c                                       ; $67fb: $41
    ld d, d                                       ; $67fc: $52
    ld b, b                                       ; $67fd: $40
    ld b, e                                       ; $67fe: $43
    ld d, e                                       ; $67ff: $53

Call_0cd_6800:
    nop                                           ; $6800: $00
    ld d, e                                       ; $6801: $53
    ld b, h                                       ; $6802: $44
    ld d, e                                       ; $6803: $53
    ld d, e                                       ; $6804: $53
    ld b, l                                       ; $6805: $45
    ld b, e                                       ; $6806: $43
    ld b, e                                       ; $6807: $43
    ld b, d                                       ; $6808: $42
    nop                                           ; $6809: $00
    ld b, h                                       ; $680a: $44
    ld d, h                                       ; $680b: $54
    ld d, l                                       ; $680c: $55
    ld d, [hl]                                    ; $680d: $56
    ld c, e                                       ; $680e: $4b
    ld c, b                                       ; $680f: $48

Jump_0cd_6810:
    ld c, b                                       ; $6810: $48
    ld c, l                                       ; $6811: $4d
    nop                                           ; $6812: $00
    ld d, a                                       ; $6813: $57
    ld e, b                                       ; $6814: $58
    ld c, h                                       ; $6815: $4c
    ld d, a                                       ; $6816: $57
    ld c, h                                       ; $6817: $4c
    ld e, b                                       ; $6818: $58
    ld b, a                                       ; $6819: $47
    ld c, l                                       ; $681a: $4d
    nop                                           ; $681b: $00
    ld b, a                                       ; $681c: $47
    ld e, c                                       ; $681d: $59
    ld d, h                                       ; $681e: $54
    ld e, d                                       ; $681f: $5a
    ld e, e                                       ; $6820: $5b
    ld e, h                                       ; $6821: $5c

jr_0cd_6822:
    ld e, l                                       ; $6822: $5d
    ld b, d                                       ; $6823: $42
    nop                                           ; $6824: $00
    ld b, e                                       ; $6825: $43
    ld b, e                                       ; $6826: $43
    ld b, h                                       ; $6827: $44
    ld b, b                                       ; $6828: $40
    ld d, e                                       ; $6829: $53
    ld b, h                                       ; $682a: $44
    ld b, e                                       ; $682b: $43
    ld b, d                                       ; $682c: $42
    nop                                           ; $682d: $00
    ld b, b                                       ; $682e: $40
    ld b, h                                       ; $682f: $44
    ld d, h                                       ; $6830: $54
    ld d, h                                       ; $6831: $54
    ld e, h                                       ; $6832: $5c
    ld d, h                                       ; $6833: $54
    ld d, l                                       ; $6834: $55
    ld b, a                                       ; $6835: $47
    nop                                           ; $6836: $00
    ld d, l                                       ; $6837: $55
    ld c, d                                       ; $6838: $4a
    ld c, l                                       ; $6839: $4d
    ld c, a                                       ; $683a: $4f
    ld c, l                                       ; $683b: $4d
    ld c, e                                       ; $683c: $4b
    ld c, c                                       ; $683d: $49
    ld c, d                                       ; $683e: $4a
    nop                                           ; $683f: $00
    ld c, c                                       ; $6840: $49
    ld e, [hl]                                    ; $6841: $5e
    ld d, [hl]                                    ; $6842: $56
    ld e, a                                       ; $6843: $5f
    ld h, b                                       ; $6844: $60
    ld d, [hl]                                    ; $6845: $56
    ld h, b                                       ; $6846: $60
    ld h, c                                       ; $6847: $61
    inc c                                         ; $6848: $0c
    ld d, h                                       ; $6849: $54
    ld b, l                                       ; $684a: $45
    ld b, e                                       ; $684b: $43
    ld b, c                                       ; $684c: $41
    ld b, [hl]                                    ; $684d: $46
    ld [$0022], sp                                ; $684e: $08 $22 $00
    ld b, d                                       ; $6851: $42
    ld d, e                                       ; $6852: $53
    nop                                           ; $6853: $00
    ld b, h                                       ; $6854: $44
    ld e, d                                       ; $6855: $5a
    ld e, e                                       ; $6856: $5b
    ld d, h                                       ; $6857: $54
    ld h, d                                       ; $6858: $62
    ld d, c                                       ; $6859: $51
    ld c, e                                       ; $685a: $4b
    ld c, b                                       ; $685b: $48
    nop                                           ; $685c: $00
    ld c, d                                       ; $685d: $4a
    ld c, e                                       ; $685e: $4b
    ld c, b                                       ; $685f: $48
    ld c, h                                       ; $6860: $4c
    ld h, e                                       ; $6861: $63
    ld b, a                                       ; $6862: $47
    ld c, l                                       ; $6863: $4d
    ld h, h                                       ; $6864: $64
    ld bc, $4847                                  ; $6865: $01 $47 $48
    ld h, l                                       ; $6868: $65
    ld d, [hl]                                    ; $6869: $56
    ld e, h                                       ; $686a: $5c
    ld d, h                                       ; $686b: $54
    ld b, [hl]                                    ; $686c: $46
    ld b, d                                       ; $686d: $42
    nop                                           ; $686e: $00
    ret z                                         ; $686f: $c8

    ld h, a                                       ; $6870: $67
    ld [$1070], sp                                ; $6871: $08 $70 $10
    ld b, d                                       ; $6874: $42
    ld b, [hl]                                    ; $6875: $46
    ld l, c                                       ; $6876: $69
    nop                                           ; $6877: $00
    ld d, l                                       ; $6878: $55
    ld d, a                                       ; $6879: $57
    ld c, e                                       ; $687a: $4b
    nop                                           ; $687b: $00
    ld c, d                                       ; $687c: $4a
    ld h, [hl]                                    ; $687d: $66
    ld c, c                                       ; $687e: $49
    ld d, a                                       ; $687f: $57
    ld c, a                                       ; $6880: $4f
    ld c, l                                       ; $6881: $4d
    ld d, b                                       ; $6882: $50
    ld c, e                                       ; $6883: $4b
    ld a, [hl+]                                   ; $6884: $2a
    ld c, l                                       ; $6885: $4d
    ld c, [hl]                                    ; $6886: $4e
    ld l, d                                       ; $6887: $6a
    nop                                           ; $6888: $00
    ld b, e                                       ; $6889: $43
    ld h, a                                       ; $688a: $67
    nop                                           ; $688b: $00
    ld b, e                                       ; $688c: $43
    add [hl]                                      ; $688d: $86
    nop                                           ; $688e: $00
    ld b, h                                       ; $688f: $44
    ld a, [bc]                                    ; $6890: $0a
    ld b, h                                       ; $6891: $44
    ld d, e                                       ; $6892: $53
    ld b, d                                       ; $6893: $42
    ld b, l                                       ; $6894: $45
    ld l, c                                       ; $6895: $69
    nop                                           ; $6896: $00
    ld h, b                                       ; $6897: $60
    adc c                                         ; $6898: $89
    nop                                           ; $6899: $00
    ld h, a                                       ; $689a: $67
    nop                                           ; $689b: $00
    ld c, h                                       ; $689c: $4c
    ld e, b                                       ; $689d: $58
    ld l, b                                       ; $689e: $68
    ld c, h                                       ; $689f: $4c
    ld c, e                                       ; $68a0: $4b
    ld l, c                                       ; $68a1: $69
    ld c, h                                       ; $68a2: $4c
    ld e, b                                       ; $68a3: $58
    inc bc                                        ; $68a4: $03
    ld c, e                                       ; $68a5: $4b
    ld c, a                                       ; $68a6: $4f
    ld b, a                                       ; $68a7: $47
    ld e, h                                       ; $68a8: $5c
    ld b, l                                       ; $68a9: $45
    ld d, e                                       ; $68aa: $53
    xor c                                         ; $68ab: $a9
    nop                                           ; $68ac: $00
    jp z, $0800                                   ; $68ad: $ca $00 $08

    ld b, e                                       ; $68b0: $43
    ld b, d                                       ; $68b1: $42
    ld d, e                                       ; $68b2: $53
    ld b, e                                       ; $68b3: $43
    ld [hl+], a                                   ; $68b4: $22
    nop                                           ; $68b5: $00
    ld b, [hl]                                    ; $68b6: $46
    ld h, b                                       ; $68b7: $60
    ld d, l                                       ; $68b8: $55
    ld b, b                                       ; $68b9: $40
    ld h, l                                       ; $68ba: $65
    adc c                                         ; $68bb: $89
    nop                                           ; $68bc: $00
    ld c, d                                       ; $68bd: $4a
    ld c, e                                       ; $68be: $4b
    ld d, a                                       ; $68bf: $57
    ld c, c                                       ; $68c0: $49
    ld c, d                                       ; $68c1: $4a
    ld c, d                                       ; $68c2: $4a
    nop                                           ; $68c3: $00
    ld c, h                                       ; $68c4: $4c
    ld d, a                                       ; $68c5: $57
    ld c, l                                       ; $68c6: $4d
    ld d, [hl]                                    ; $68c7: $56
    ld b, [hl]                                    ; $68c8: $46
    ld l, d                                       ; $68c9: $6a
    ld b, d                                       ; $68ca: $42
    ld e, h                                       ; $68cb: $5c
    dec d                                         ; $68cc: $15
    ld b, h                                       ; $68cd: $44
    ld b, c                                       ; $68ce: $41
    ld d, e                                       ; $68cf: $53
    xor e                                         ; $68d0: $ab
    ld [$2244], sp                                ; $68d1: $08 $44 $22
    nop                                           ; $68d4: $00
    ld l, d                                       ; $68d5: $6a
    ld [hl], l                                    ; $68d6: $75
    nop                                           ; $68d7: $00
    add b                                         ; $68d8: $80
    adc c                                         ; $68d9: $89
    nop                                           ; $68da: $00
    ld c, a                                       ; $68db: $4f
    ld c, l                                       ; $68dc: $4d
    ld e, b                                       ; $68dd: $58
    ld c, e                                       ; $68de: $4b
    ld d, l                                       ; $68df: $55
    ld c, b                                       ; $68e0: $48
    ld c, l                                       ; $68e1: $4d
    nop                                           ; $68e2: $00
    ld c, l                                       ; $68e3: $4d
    ld c, [hl]                                    ; $68e4: $4e
    ld c, c                                       ; $68e5: $49
    ld b, a                                       ; $68e6: $47
    ld d, h                                       ; $68e7: $54
    ld b, [hl]                                    ; $68e8: $46
    ld d, [hl]                                    ; $68e9: $56
    ld e, h                                       ; $68ea: $5c
    jr jr_0cd_6932                                ; $68eb: $18 $45

    ld b, b                                       ; $68ed: $40
    ld b, c                                       ; $68ee: $41
    ld h, a                                       ; $68ef: $67
    nop                                           ; $68f0: $00
    ld l, d                                       ; $68f1: $6a
    nop                                           ; $68f2: $00
    ld b, d                                       ; $68f3: $42
    ld b, b                                       ; $68f4: $40
    ld l, e                                       ; $68f5: $6b
    nop                                           ; $68f6: $00
    ld d, d                                       ; $68f7: $52
    ld l, e                                       ; $68f8: $6b
    ld b, d                                       ; $68f9: $42
    ld e, d                                       ; $68fa: $5a
    ld d, h                                       ; $68fb: $54
    ld l, h                                       ; $68fc: $6c
    ld h, d                                       ; $68fd: $62
    ld c, l                                       ; $68fe: $4d
    ld de, $594d                                  ; $68ff: $11 $4d $59
    ld d, l                                       ; $6902: $55
    push af                                       ; $6903: $f5
    nop                                           ; $6904: $00
    ld c, h                                       ; $6905: $4c
    ld c, c                                       ; $6906: $49
    ld c, b                                       ; $6907: $48
    rra                                           ; $6908: $1f
    ld bc, $5432                                  ; $6909: $01 $32 $54
    ld e, h                                       ; $690c: $5c
    inc d                                         ; $690d: $14
    ld bc, $1112                                  ; $690e: $01 $12 $11
    ld b, e                                       ; $6911: $43
    ld b, e                                       ; $6912: $43
    scf                                           ; $6913: $37
    ld bc, $0445                                  ; $6914: $01 $45 $04
    ld l, d                                       ; $6917: $6a

Jump_0cd_6918:
    ld e, e                                       ; $6918: $5b
    ld d, h                                       ; $6919: $54
    ld d, c                                       ; $691a: $51
    ld h, l                                       ; $691b: $65
    db $f4                                        ; $691c: $f4
    nop                                           ; $691d: $00
    ld d, l                                       ; $691e: $55
    ld c, b                                       ; $691f: $48
    ld [de], a                                    ; $6920: $12
    ld c, d                                       ; $6921: $4a
    ld c, l                                       ; $6922: $4d
    ld c, e                                       ; $6923: $4b
    scf                                           ; $6924: $37
    ld bc, $5565                                  ; $6925: $01 $65 $55
    inc d                                         ; $6928: $14
    ld bc, $056a                                  ; $6929: $01 $6a $05
    ld b, d                                       ; $692c: $42
    ld b, b                                       ; $692d: $40
    ld b, c                                       ; $692e: $41
    ld b, c                                       ; $692f: $41
    ld b, c                                       ; $6930: $41
    db $eb                                        ; $6931: $eb

jr_0cd_6932:
    nop                                           ; $6932: $00
    ld d, e                                       ; $6933: $53
    inc h                                         ; $6934: $24
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    ld d, d                                       ; $6937: $52
    ld e, d                                       ; $6938: $5a
    ld d, h                                       ; $6939: $54
    ld b, e                                       ; $693a: $43
    ld b, e                                       ; $693b: $43
    ld e, d                                       ; $693c: $5a
    ld d, h                                       ; $693d: $54
    ld b, a                                       ; $693e: $47
    ld de, $574d                                  ; $693f: $11 $4d $57
    ld c, e                                       ; $6942: $4b
    scf                                           ; $6943: $37
    ld bc, $484d                                  ; $6944: $01 $4d $48
    ld d, c                                       ; $6947: $51
    ld [hl], $01                                  ; $6948: $36 $01
    ld [$5446], sp                                ; $694a: $08 $46 $54
    ld b, [hl]                                    ; $694d: $46
    ld b, l                                       ; $694e: $45
    ld b, d                                       ; $694f: $42
    ld [$4245], sp                                ; $6950: $08 $45 $42
    ld b, c                                       ; $6953: $41
    adc h                                         ; $6954: $8c
    ld [hl], $09                                  ; $6955: $36 $09
    ld l, d                                       ; $6957: $6a
    ld b, b                                       ; $6958: $40
    ld b, c                                       ; $6959: $41
    ld a, h                                       ; $695a: $7c
    ld bc, $0843                                  ; $695b: $01 $43 $08
    ld c, a                                       ; $695e: $4f
    ld c, h                                       ; $695f: $4c
    nop                                           ; $6960: $00
    ld c, l                                       ; $6961: $4d
    ld c, l                                       ; $6962: $4d
    ld b, a                                       ; $6963: $47
    ld e, [hl]                                    ; $6964: $5e
    ld d, [hl]                                    ; $6965: $56
    ld d, l                                       ; $6966: $55
    ld d, [hl]                                    ; $6967: $56
    ld h, b                                       ; $6968: $60
    ld [bc], a                                    ; $6969: $02
    ld e, h                                       ; $696a: $5c
    ld b, d                                       ; $696b: $42
    ld l, e                                       ; $696c: $6b
    ld b, e                                       ; $696d: $43
    ld b, c                                       ; $696e: $41
    ld d, d                                       ; $696f: $52
    inc bc                                        ; $6970: $03
    nop                                           ; $6971: $00
    ld b, b                                       ; $6972: $40
    nop                                           ; $6973: $00
    ld d, e                                       ; $6974: $53
    ld b, c                                       ; $6975: $41
    dec bc                                        ; $6976: $0b
    inc c                                         ; $6977: $0c
    inc c                                         ; $6978: $0c
    inc c                                         ; $6979: $0c
    dec c                                         ; $697a: $0d
    ld l, h                                       ; $697b: $6c
    ld bc, $4d0b                                  ; $697c: $01 $0b $4d
    inc c                                         ; $697f: $0c
    add hl, bc                                    ; $6980: $09
    ld [$0849], sp                                ; $6981: $08 $49 $08
    ld bc, $1000                                  ; $6984: $01 $00 $10
    add hl, bc                                    ; $6987: $09
    ld [$070a], sp                                ; $6988: $08 $0a $07
    nop                                           ; $698b: $00
    ld a, [bc]                                    ; $698c: $0a
    add hl, bc                                    ; $698d: $09
    ld l, c                                       ; $698e: $69
    ld l, l                                       ; $698f: $6d
    nop                                           ; $6990: $00
    dec bc                                        ; $6991: $0b
    inc l                                         ; $6992: $2c
    dec c                                         ; $6993: $0d
    dec hl                                        ; $6994: $2b
    ld l, e                                       ; $6995: $6b
    inc c                                         ; $6996: $0c
    ld l, h                                       ; $6997: $6c
    inc c                                         ; $6998: $0c
    nop                                           ; $6999: $00
    ld l, l                                       ; $699a: $6d
    inc l                                         ; $699b: $2c
    inc c                                         ; $699c: $0c
    ld l, l                                       ; $699d: $6d
    dec bc                                        ; $699e: $0b
    inc c                                         ; $699f: $0c
    ld c, e                                       ; $69a0: $4b
    dec c                                         ; $69a1: $0d
    nop                                           ; $69a2: $00
    add hl, bc                                    ; $69a3: $09
    add hl, bc                                    ; $69a4: $09
    ld c, b                                       ; $69a5: $48
    ld c, b                                       ; $69a6: $48
    ld c, d                                       ; $69a7: $4a
    ld l, d                                       ; $69a8: $6a
    ld a, [bc]                                    ; $69a9: $0a
    ld a, [bc]                                    ; $69aa: $0a
    nop                                           ; $69ab: $00
    ld a, [bc]                                    ; $69ac: $0a
    ld a, [hl+]                                   ; $69ad: $2a
    ld a, [bc]                                    ; $69ae: $0a
    ld [$0968], sp                                ; $69af: $08 $68 $09
    ld l, b                                       ; $69b2: $68
    ld [$6d00], sp                                ; $69b3: $08 $00 $6d
    dec c                                         ; $69b6: $0d
    dec bc                                        ; $69b7: $0b
    dec bc                                        ; $69b8: $0b
    dec c                                         ; $69b9: $0d
    ld l, e                                       ; $69ba: $6b
    dec bc                                        ; $69bb: $0b
    ld l, l                                       ; $69bc: $6d
    nop                                           ; $69bd: $00
    ld c, e                                       ; $69be: $4b
    ld c, h                                       ; $69bf: $4c
    ld l, e                                       ; $69c0: $6b
    inc c                                         ; $69c1: $0c
    ld c, h                                       ; $69c2: $4c
    dec bc                                        ; $69c3: $0b
    ld c, l                                       ; $69c4: $4d
    ld l, e                                       ; $69c5: $6b
    ld [$0c0d], sp                                ; $69c6: $08 $0d $0c
    ld l, e                                       ; $69c9: $6b
    dec c                                         ; $69ca: $0d
    dec a                                         ; $69cb: $3d
    ld [$4848], sp                                ; $69cc: $08 $48 $48
    ld l, d                                       ; $69cf: $6a
    and b                                         ; $69d0: $a0
    ld b, h                                       ; $69d1: $44
    nop                                           ; $69d2: $00
    jr z, jr_0cd_6a24                             ; $69d3: $28 $4f

    ld [$0949], sp                                ; $69d5: $08 $49 $09
    dec c                                         ; $69d8: $0d
    ld l, l                                       ; $69d9: $6d
    ld l, e                                       ; $69da: $6b
    nop                                           ; $69db: $00
    ld c, h                                       ; $69dc: $4c
    dec hl                                        ; $69dd: $2b
    ld l, l                                       ; $69de: $6d
    inc c                                         ; $69df: $0c
    dec l                                         ; $69e0: $2d
    ld c, h                                       ; $69e1: $4c
    dec bc                                        ; $69e2: $0b
    dec c                                         ; $69e3: $0d
    nop                                           ; $69e4: $00
    dec bc                                        ; $69e5: $0b
    inc c                                         ; $69e6: $0c
    dec hl                                        ; $69e7: $2b
    ld c, e                                       ; $69e8: $4b
    ld c, l                                       ; $69e9: $4d
    ld c, l                                       ; $69ea: $4d
    dec c                                         ; $69eb: $0d
    ld [$4800], sp                                ; $69ec: $08 $00 $48
    ld c, d                                       ; $69ef: $4a
    ld c, b                                       ; $69f0: $48
    ld l, d                                       ; $69f1: $6a
    ld c, b                                       ; $69f2: $48
    ld c, c                                       ; $69f3: $49
    ld a, [bc]                                    ; $69f4: $0a
    ld [$6900], sp                                ; $69f5: $08 $00 $69
    ld [$6808], sp                                ; $69f8: $08 $08 $68
    ld c, b                                       ; $69fb: $48
    ld [$2d49], sp                                ; $69fc: $08 $49 $2d
    inc b                                         ; $69ff: $04
    ld c, h                                       ; $6a00: $4c
    ld l, l                                       ; $6a01: $6d
    dec bc                                        ; $6a02: $0b
    dec bc                                        ; $6a03: $0b
    inc l                                         ; $6a04: $2c
    ld l, c                                       ; $6a05: $69
    nop                                           ; $6a06: $00
    ld l, e                                       ; $6a07: $6b
    inc l                                         ; $6a08: $2c
    inc c                                         ; $6a09: $0c
    dec bc                                        ; $6a0a: $0b
    dec l                                         ; $6a0b: $2d
    ld l, h                                       ; $6a0c: $6c
    dec bc                                        ; $6a0d: $0b
    ld bc, $8700                                  ; $6a0e: $01 $00 $87
    nop                                           ; $6a11: $00
    ld a, [hl+]                                   ; $6a12: $2a
    ld c, b                                       ; $6a13: $48
    ld [hl], b                                    ; $6a14: $70
    ld a, [hl+]                                   ; $6a15: $2a
    dec b                                         ; $6a16: $05
    nop                                           ; $6a17: $00
    adc e                                         ; $6a18: $8b
    nop                                           ; $6a19: $00
    adc l                                         ; $6a1a: $8d
    nop                                           ; $6a1b: $00
    add hl, hl                                    ; $6a1c: $29
    add hl, bc                                    ; $6a1d: $09
    ld l, h                                       ; $6a1e: $6c
    dec bc                                        ; $6a1f: $0b
    nop                                           ; $6a20: $00
    dec l                                         ; $6a21: $2d
    inc l                                         ; $6a22: $2c
    ld l, e                                       ; $6a23: $6b

jr_0cd_6a24:
    ld c, l                                       ; $6a24: $4d
    ld c, h                                       ; $6a25: $4c
    dec c                                         ; $6a26: $0d
    dec l                                         ; $6a27: $2d
    ld c, l                                       ; $6a28: $4d
    ld bc, $0c4b                                  ; $6a29: $01 $4b $0c
    dec c                                         ; $6a2c: $0d
    dec bc                                        ; $6a2d: $0b
    ld l, e                                       ; $6a2e: $6b
    dec c                                         ; $6a2f: $0d
    dec c                                         ; $6a30: $0d
    ld h, l                                       ; $6a31: $65
    ld [$0944], sp                                ; $6a32: $08 $44 $09
    dec e                                         ; $6a35: $1d
    ld [$0948], sp                                ; $6a36: $08 $48 $09
    ld c, d                                       ; $6a39: $4a
    adc h                                         ; $6a3a: $8c
    ld [$4b2d], sp                                ; $6a3b: $08 $2d $4b
    nop                                           ; $6a3e: $00
    inc c                                         ; $6a3f: $0c
    dec bc                                        ; $6a40: $0b
    dec l                                         ; $6a41: $2d
    dec l                                         ; $6a42: $2d
    inc c                                         ; $6a43: $0c
    inc c                                         ; $6a44: $0c
    dec l                                         ; $6a45: $2d
    ld c, l                                       ; $6a46: $4d
    ld b, h                                       ; $6a47: $44
    ld l, l                                       ; $6a48: $6d
    ld b, d                                       ; $6a49: $42
    nop                                           ; $6a4a: $00
    inc c                                         ; $6a4b: $0c
    ld l, e                                       ; $6a4c: $6b
    inc c                                         ; $6a4d: $0c
    xor h                                         ; $6a4e: $ac
    nop                                           ; $6a4f: $00
    ld [$0809], sp                                ; $6a50: $08 $09 $08
    ld c, b                                       ; $6a53: $48
    jr z, @+$4b                                   ; $6a54: $28 $49

    ld a, [hl+]                                   ; $6a56: $2a
    ld h, [hl]                                    ; $6a57: $66
    nop                                           ; $6a58: $00
    ld a, [bc]                                    ; $6a59: $0a
    jr z, jr_0cd_6a84                             ; $6a5a: $28 $28

    nop                                           ; $6a5c: $00
    ld c, c                                       ; $6a5d: $49
    ld l, l                                       ; $6a5e: $6d
    dec bc                                        ; $6a5f: $0b
    ld l, h                                       ; $6a60: $6c
    dec hl                                        ; $6a61: $2b
    ld c, e                                       ; $6a62: $4b
    dec hl                                        ; $6a63: $2b
    ld l, l                                       ; $6a64: $6d
    inc b                                         ; $6a65: $04
    ld c, l                                       ; $6a66: $4d
    ld c, l                                       ; $6a67: $4d
    ld l, h                                       ; $6a68: $6c

jr_0cd_6a69:
    dec l                                         ; $6a69: $2d
    inc c                                         ; $6a6a: $0c
    ld h, h                                       ; $6a6b: $64
    nop                                           ; $6a6c: $00
    ld l, e                                       ; $6a6d: $6b
    ld l, l                                       ; $6a6e: $6d
    ld de, $2b2d                                  ; $6a6f: $11 $2d $2b
    inc c                                         ; $6a72: $0c
    xor c                                         ; $6a73: $a9
    nop                                           ; $6a74: $00
    ld c, b                                       ; $6a75: $48
    ld a, [bc]                                    ; $6a76: $0a
    ld c, d                                       ; $6a77: $4a
    or b                                          ; $6a78: $b0
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    ld l, d                                       ; $6a7b: $6a
    ld l, b                                       ; $6a7c: $68
    ld [$6d68], sp                                ; $6a7d: $08 $68 $6d
    ld c, l                                       ; $6a80: $4d
    ld c, c                                       ; $6a81: $49
    dec hl                                        ; $6a82: $2b
    nop                                           ; $6a83: $00

jr_0cd_6a84:
    ld c, h                                       ; $6a84: $4c
    dec hl                                        ; $6a85: $2b
    ld c, e                                       ; $6a86: $4b
    ld c, e                                       ; $6a87: $4b
    dec bc                                        ; $6a88: $0b
    ld l, l                                       ; $6a89: $6d
    ld l, h                                       ; $6a8a: $6c
    ld c, l                                       ; $6a8b: $4d
    inc bc                                        ; $6a8c: $03
    inc l                                         ; $6a8d: $2c
    dec c                                         ; $6a8e: $0d
    ld c, h                                       ; $6a8f: $4c
    dec bc                                        ; $6a90: $0b
    dec bc                                        ; $6a91: $0b
    dec hl                                        ; $6a92: $2b
    adc $08                                       ; $6a93: $ce $08
    call z, Call_000_1010                         ; $6a95: $cc $10 $10
    ld [$6949], sp                                ; $6a98: $08 $49 $69
    inc de                                        ; $6a9b: $13
    add hl, bc                                    ; $6a9c: $09
    ld [$6b48], sp                                ; $6a9d: $08 $48 $6b
    inc l                                         ; $6aa0: $2c
    db $10                                        ; $6aa1: $10
    ld l, e                                       ; $6aa2: $6b
    dec c                                         ; $6aa3: $0d
    dec l                                         ; $6aa4: $2d
    inc bc                                        ; $6aa5: $03
    nop                                           ; $6aa6: $00
    ld c, h                                       ; $6aa7: $4c
    ld l, h                                       ; $6aa8: $6c
    dec c                                         ; $6aa9: $0d
    inc l                                         ; $6aaa: $2c
    ld [hl+], a                                   ; $6aab: $22
    inc c                                         ; $6aac: $0c
    dec bc                                        ; $6aad: $0b
    rst $28                                       ; $6aae: $ef
    nop                                           ; $6aaf: $00
    ld l, e                                       ; $6ab0: $6b
    dec c                                         ; $6ab1: $0d
    ld c, b                                       ; $6ab2: $48
    ld e, d                                       ; $6ab3: $5a
    nop                                           ; $6ab4: $00
    ld a, [bc]                                    ; $6ab5: $0a
    ld h, d                                       ; $6ab6: $62
    jr z, jr_0cd_6a69                             ; $6ab7: $28 $b0

    nop                                           ; $6ab9: $00
    ld c, b                                       ; $6aba: $48
    nop                                           ; $6abb: $00
    add hl, bc                                    ; $6abc: $09
    jr z, jr_0cd_6b29                             ; $6abd: $28 $6a

    ld l, b                                       ; $6abf: $68
    nop                                           ; $6ac0: $00
    dec bc                                        ; $6ac1: $0b
    nop                                           ; $6ac2: $00
    ld l, e                                       ; $6ac3: $6b
    ld c, h                                       ; $6ac4: $4c
    ld c, e                                       ; $6ac5: $4b
    dec l                                         ; $6ac6: $2d
    inc c                                         ; $6ac7: $0c
    dec bc                                        ; $6ac8: $0b
    ld l, h                                       ; $6ac9: $6c
    inc c                                         ; $6aca: $0c
    nop                                           ; $6acb: $00
    ld l, h                                       ; $6acc: $6c
    dec c                                         ; $6acd: $0d
    ld c, h                                       ; $6ace: $4c
    ld l, e                                       ; $6acf: $6b
    ld c, l                                       ; $6ad0: $4d
    ld l, l                                       ; $6ad1: $6d
    dec bc                                        ; $6ad2: $0b
    dec hl                                        ; $6ad3: $2b
    nop                                           ; $6ad4: $00
    ld l, e                                       ; $6ad5: $6b
    ld l, l                                       ; $6ad6: $6d
    dec c                                         ; $6ad7: $0d
    ld [$0a68], sp                                ; $6ad8: $08 $68 $0a
    jr z, jr_0cd_6ae7                             ; $6adb: $28 $0a

    or b                                          ; $6add: $b0
    add a                                         ; $6ade: $87
    nop                                           ; $6adf: $00
    jr z, @+$3a                                   ; $6ae0: $28 $38

    ld bc, $0084                                  ; $6ae2: $01 $84 $00
    ld l, l                                       ; $6ae5: $6d
    ld c, e                                       ; $6ae6: $4b

jr_0cd_6ae7:
    ld c, e                                       ; $6ae7: $4b
    ld l, h                                       ; $6ae8: $6c
    sub b                                         ; $6ae9: $90
    ld [hl], e                                    ; $6aea: $73
    ld bc, $2b0c                                  ; $6aeb: $01 $0c $2b
    call $2d00                                    ; $6aee: $cd $00 $2d
    dec c                                         ; $6af1: $0d
    inc l                                         ; $6af2: $2c
    ld c, e                                       ; $6af3: $4b
    ld [$0d6b], sp                                ; $6af4: $08 $6b $0d
    add hl, bc                                    ; $6af7: $09
    ld [$015d], sp                                ; $6af8: $08 $5d $01
    ld c, d                                       ; $6afb: $4a
    ld c, c                                       ; $6afc: $49
    ld c, b                                       ; $6afd: $48
    nop                                           ; $6afe: $00
    ld [$0868], sp                                ; $6aff: $08 $68 $08
    ld c, b                                       ; $6b02: $48
    ld l, b                                       ; $6b03: $68
    ld c, c                                       ; $6b04: $49
    add hl, bc                                    ; $6b05: $09
    dec hl                                        ; $6b06: $2b
    nop                                           ; $6b07: $00
    ld l, e                                       ; $6b08: $6b
    ld c, l                                       ; $6b09: $4d
    dec hl                                        ; $6b0a: $2b
    inc l                                         ; $6b0b: $2c
    inc c                                         ; $6b0c: $0c
    dec hl                                        ; $6b0d: $2b
    dec l                                         ; $6b0e: $2d
    inc c                                         ; $6b0f: $0c
    nop                                           ; $6b10: $00
    inc l                                         ; $6b11: $2c
    ld l, l                                       ; $6b12: $6d
    inc c                                         ; $6b13: $0c
    jr nz, jr_0cd_6b16                            ; $6b14: $20 $00

jr_0cd_6b16:
    ld c, $00                                     ; $6b16: $0e $00
    jp z, Jump_000_0001                           ; $6b18: $ca $01 $00

    ld b, b                                       ; $6b1b: $40
    ld b, c                                       ; $6b1c: $41
    ld b, d                                       ; $6b1d: $42
    ld b, e                                       ; $6b1e: $43
    ld b, h                                       ; $6b1f: $44
    ld b, l                                       ; $6b20: $45
    ld b, [hl]                                    ; $6b21: $46
    ld b, a                                       ; $6b22: $47
    nop                                           ; $6b23: $00
    ld b, l                                       ; $6b24: $45
    ld c, b                                       ; $6b25: $48
    ld c, c                                       ; $6b26: $49
    ld c, d                                       ; $6b27: $4a
    ld b, [hl]                                    ; $6b28: $46

jr_0cd_6b29:
    ld c, e                                       ; $6b29: $4b
    ld b, h                                       ; $6b2a: $44
    ld b, [hl]                                    ; $6b2b: $46
    nop                                           ; $6b2c: $00
    ld b, [hl]                                    ; $6b2d: $46
    ld b, h                                       ; $6b2e: $44
    ld c, e                                       ; $6b2f: $4b
    ld b, [hl]                                    ; $6b30: $46
    ld c, d                                       ; $6b31: $4a
    ld c, c                                       ; $6b32: $49
    ld c, b                                       ; $6b33: $48
    ld b, l                                       ; $6b34: $45
    nop                                           ; $6b35: $00
    ld b, a                                       ; $6b36: $47
    ld b, [hl]                                    ; $6b37: $46
    ld b, l                                       ; $6b38: $45
    ld b, h                                       ; $6b39: $44
    ld b, e                                       ; $6b3a: $43
    ld b, d                                       ; $6b3b: $42
    ld b, c                                       ; $6b3c: $41
    ld b, b                                       ; $6b3d: $40
    nop                                           ; $6b3e: $00
    ld b, a                                       ; $6b3f: $47
    ld c, e                                       ; $6b40: $4b
    ld c, h                                       ; $6b41: $4c
    ld b, [hl]                                    ; $6b42: $46
    ld c, l                                       ; $6b43: $4d
    ld c, [hl]                                    ; $6b44: $4e
    ld b, h                                       ; $6b45: $44
    ld c, a                                       ; $6b46: $4f
    nop                                           ; $6b47: $00
    ld b, b                                       ; $6b48: $40
    ld b, [hl]                                    ; $6b49: $46
    ld b, h                                       ; $6b4a: $44
    ld c, l                                       ; $6b4b: $4d
    ld b, d                                       ; $6b4c: $42
    ld b, c                                       ; $6b4d: $41
    ld c, h                                       ; $6b4e: $4c
    ld c, b                                       ; $6b4f: $48
    nop                                           ; $6b50: $00
    ld c, b                                       ; $6b51: $48
    ld c, h                                       ; $6b52: $4c
    ld b, c                                       ; $6b53: $41
    ld b, d                                       ; $6b54: $42
    ld c, l                                       ; $6b55: $4d
    ld b, h                                       ; $6b56: $44
    ld b, [hl]                                    ; $6b57: $46
    ld b, b                                       ; $6b58: $40
    nop                                           ; $6b59: $00
    ld c, a                                       ; $6b5a: $4f
    ld b, h                                       ; $6b5b: $44
    ld c, [hl]                                    ; $6b5c: $4e
    ld c, l                                       ; $6b5d: $4d
    ld b, [hl]                                    ; $6b5e: $46
    ld c, h                                       ; $6b5f: $4c
    ld c, e                                       ; $6b60: $4b
    ld b, a                                       ; $6b61: $47
    ret nz                                        ; $6b62: $c0

    ld [$4408], sp                                ; $6b63: $08 $08 $44
    ld [$4748], sp                                ; $6b66: $08 $48 $47
    ld c, b                                       ; $6b69: $48
    ld c, c                                       ; $6b6a: $49
    ld d, b                                       ; $6b6b: $50
    ld d, c                                       ; $6b6c: $51
    ld bc, $5352                                  ; $6b6d: $01 $52 $53
    ld d, e                                       ; $6b70: $53
    ld d, d                                       ; $6b71: $52
    ld d, c                                       ; $6b72: $51
    ld d, b                                       ; $6b73: $50
    ld c, c                                       ; $6b74: $49
    dec c                                         ; $6b75: $0d
    nop                                           ; $6b76: $00
    ld hl, sp+$3c                                 ; $6b77: $f8 $3c
    ld [$0838], sp                                ; $6b79: $08 $38 $08
    ld c, h                                       ; $6b7c: $4c
    db $10                                        ; $6b7d: $10
    ld b, h                                       ; $6b7e: $44
    nop                                           ; $6b7f: $00
    inc e                                         ; $6b80: $1c
    ld [$5554], sp                                ; $6b81: $08 $54 $55
    ld d, [hl]                                    ; $6b84: $56
    rlca                                          ; $6b85: $07
    ld d, a                                       ; $6b86: $57
    ld d, a                                       ; $6b87: $57
    ld d, [hl]                                    ; $6b88: $56
    ld d, l                                       ; $6b89: $55
    ld d, h                                       ; $6b8a: $54
    inc h                                         ; $6b8b: $24
    ld [$083c], sp                                ; $6b8c: $08 $3c $08
    ld [hl], h                                    ; $6b8f: $74
    ld [$5808], sp                                ; $6b90: $08 $08 $58
    ld e, c                                       ; $6b93: $59
    ld e, d                                       ; $6b94: $5a
    ld e, e                                       ; $6b95: $5b
    inc e                                         ; $6b96: $1c
    jr z, jr_0cd_6bf5                             ; $6b97: $28 $5c

    ld e, l                                       ; $6b99: $5d
    ld e, [hl]                                    ; $6b9a: $5e
    inc b                                         ; $6b9b: $04
    ld e, a                                       ; $6b9c: $5f
    ld e, a                                       ; $6b9d: $5f
    ld e, [hl]                                    ; $6b9e: $5e
    ld e, l                                       ; $6b9f: $5d
    ld e, h                                       ; $6ba0: $5c
    inc h                                         ; $6ba1: $24
    jr z, @+$5d                                   ; $6ba2: $28 $5b

    ld e, d                                       ; $6ba4: $5a
    jr nz, jr_0cd_6c00                            ; $6ba5: $20 $59

    ld e, b                                       ; $6ba7: $58
    ld c, a                                       ; $6ba8: $4f
    nop                                           ; $6ba9: $00
    ld d, e                                       ; $6baa: $53
    ld h, b                                       ; $6bab: $60
    ld h, c                                       ; $6bac: $61
    ld h, d                                       ; $6bad: $62
    ld h, e                                       ; $6bae: $63
    inc bc                                        ; $6baf: $03
    ld e, h                                       ; $6bb0: $5c
    ld h, h                                       ; $6bb1: $64
    ld e, [hl]                                    ; $6bb2: $5e
    ld e, a                                       ; $6bb3: $5f
    ld h, l                                       ; $6bb4: $65
    ld h, [hl]                                    ; $6bb5: $66
    ld [bc], a                                    ; $6bb6: $02
    nop                                           ; $6bb7: $00
    dec b                                         ; $6bb8: $05
    nop                                           ; $6bb9: $00
    nop                                           ; $6bba: $00
    ld e, a                                       ; $6bbb: $5f
    ld e, [hl]                                    ; $6bbc: $5e
    ld h, h                                       ; $6bbd: $64
    ld e, h                                       ; $6bbe: $5c
    ld h, e                                       ; $6bbf: $63
    ld h, d                                       ; $6bc0: $62
    ld h, c                                       ; $6bc1: $61
    ld h, b                                       ; $6bc2: $60
    ld h, b                                       ; $6bc3: $60
    ld d, e                                       ; $6bc4: $53
    ld [hl], c                                    ; $6bc5: $71
    nop                                           ; $6bc6: $00
    inc e                                         ; $6bc7: $1c
    ld [$6867], sp                                ; $6bc8: $08 $67 $68
    ld l, c                                       ; $6bcb: $69
    ld l, d                                       ; $6bcc: $6a
    ld l, e                                       ; $6bcd: $6b
    nop                                           ; $6bce: $00
    ld l, h                                       ; $6bcf: $6c
    ld l, l                                       ; $6bd0: $6d
    ld l, [hl]                                    ; $6bd1: $6e
    ld l, a                                       ; $6bd2: $6f
    ld [hl], b                                    ; $6bd3: $70
    ld [hl], c                                    ; $6bd4: $71
    ld [hl], d                                    ; $6bd5: $72
    ld [hl], d                                    ; $6bd6: $72
    nop                                           ; $6bd7: $00
    ld [hl], c                                    ; $6bd8: $71
    ld [hl], b                                    ; $6bd9: $70
    ld l, a                                       ; $6bda: $6f
    ld l, [hl]                                    ; $6bdb: $6e
    ld l, l                                       ; $6bdc: $6d
    ld l, h                                       ; $6bdd: $6c
    ld l, e                                       ; $6bde: $6b
    ld l, d                                       ; $6bdf: $6a
    inc e                                         ; $6be0: $1c
    ld l, c                                       ; $6be1: $69
    ld l, b                                       ; $6be2: $68
    ld h, a                                       ; $6be3: $67
    inc h                                         ; $6be4: $24
    ld [$0870], sp                                ; $6be5: $08 $70 $08
    jr nc, jr_0cd_6bea                            ; $6be8: $30 $00

jr_0cd_6bea:
    ld [hl], e                                    ; $6bea: $73
    ld [hl], h                                    ; $6beb: $74
    nop                                           ; $6bec: $00
    ld [hl], l                                    ; $6bed: $75
    halt                                          ; $6bee: $76
    ld [hl], a                                    ; $6bef: $77
    ld a, b                                       ; $6bf0: $78
    ld a, c                                       ; $6bf1: $79
    ld a, d                                       ; $6bf2: $7a
    ld a, e                                       ; $6bf3: $7b
    ld a, e                                       ; $6bf4: $7b

jr_0cd_6bf5:
    nop                                           ; $6bf5: $00
    ld a, d                                       ; $6bf6: $7a
    ld a, c                                       ; $6bf7: $79
    ld a, b                                       ; $6bf8: $78
    ld [hl], a                                    ; $6bf9: $77
    ld a, h                                       ; $6bfa: $7c
    ld [hl], l                                    ; $6bfb: $75
    ld [hl], h                                    ; $6bfc: $74
    ld [hl], e                                    ; $6bfd: $73
    ldh a, [$50]                                  ; $6bfe: $f0 $50

jr_0cd_6c00:
    nop                                           ; $6c00: $00
    sub b                                         ; $6c01: $90
    ld [$0844], sp                                ; $6c02: $08 $44 $08
    sub h                                         ; $6c05: $94
    ld [$7e7d], sp                                ; $6c06: $08 $7d $7e
    ld e, l                                       ; $6c09: $5d
    ld e, h                                       ; $6c0a: $5c
    rst $00                                       ; $6c0b: $c7
    ld e, h                                       ; $6c0c: $5c
    ld [$1062], sp                                ; $6c0d: $08 $62 $10
    ld e, l                                       ; $6c10: $5d
    ld a, [hl]                                    ; $6c11: $7e
    ld a, l                                       ; $6c12: $7d
    xor h                                         ; $6c13: $ac
    ld [$087c], sp                                ; $6c14: $08 $7c $08
    add h                                         ; $6c17: $84
    ld [$d4cf], sp                                ; $6c18: $08 $cf $d4
    ld [$1848], sp                                ; $6c1b: $08 $48 $18
    ld e, l                                       ; $6c1e: $5d
    ld e, h                                       ; $6c1f: $5c
    and h                                         ; $6c20: $a4
    ld [$08c8], sp                                ; $6c21: $08 $c8 $08
    db $ec                                        ; $6c24: $ec
    ld [$08bc], sp                                ; $6c25: $08 $bc $08
    rst $38                                       ; $6c28: $ff
    jr c, jr_0cd_6c3c                             ; $6c29: $38 $11

    ld [$2401], sp                                ; $6c2b: $08 $01 $24
    jr z, jr_0cd_6c4c                             ; $6c2e: $28 $1c

    jr z, jr_0cd_6c6a                             ; $6c30: $28 $38

    add hl, bc                                    ; $6c32: $09
    ld c, b                                       ; $6c33: $48
    add hl, bc                                    ; $6c34: $09
    inc a                                         ; $6c35: $3c
    add hl, bc                                    ; $6c36: $09
    ld c, b                                       ; $6c37: $48
    add hl, bc                                    ; $6c38: $09
    rst $38                                       ; $6c39: $ff
    inc d                                         ; $6c3a: $14
    add hl, bc                                    ; $6c3b: $09

jr_0cd_6c3c:
    inc e                                         ; $6c3c: $1c
    add hl, bc                                    ; $6c3d: $09
    inc h                                         ; $6c3e: $24
    add hl, bc                                    ; $6c3f: $09
    inc l                                         ; $6c40: $2c
    add hl, bc                                    ; $6c41: $09
    ld a, b                                       ; $6c42: $78
    add hl, bc                                    ; $6c43: $09
    ld b, h                                       ; $6c44: $44
    ld c, c                                       ; $6c45: $49
    ld d, h                                       ; $6c46: $54
    add hl, bc                                    ; $6c47: $09
    ld e, h                                       ; $6c48: $5c
    add hl, bc                                    ; $6c49: $09
    rst $38                                       ; $6c4a: $ff
    ld h, h                                       ; $6c4b: $64

jr_0cd_6c4c:
    add hl, bc                                    ; $6c4c: $09
    ld l, h                                       ; $6c4d: $6c
    add hl, bc                                    ; $6c4e: $09
    ld [hl], h                                    ; $6c4f: $74
    add hl, bc                                    ; $6c50: $09
    ld a, h                                       ; $6c51: $7c
    add hl, bc                                    ; $6c52: $09
    add h                                         ; $6c53: $84
    ld de, $018c                                  ; $6c54: $11 $8c $01
    sub h                                         ; $6c57: $94
    add hl, bc                                    ; $6c58: $09
    sbc h                                         ; $6c59: $9c
    add hl, bc                                    ; $6c5a: $09
    pop af                                        ; $6c5b: $f1
    and h                                         ; $6c5c: $a4
    add hl, bc                                    ; $6c5d: $09
    xor h                                         ; $6c5e: $ac
    add hl, bc                                    ; $6c5f: $09
    or h                                          ; $6c60: $b4
    add hl, bc                                    ; $6c61: $09
    cp h                                          ; $6c62: $bc
    add hl, bc                                    ; $6c63: $09
    ld [$080a], sp                                ; $6c64: $08 $0a $08
    inc bc                                        ; $6c67: $03
    nop                                           ; $6c68: $00
    inc b                                         ; $6c69: $04

jr_0cd_6c6a:
    ld a, [bc]                                    ; $6c6a: $0a
    ld [$086a], sp                                ; $6c6b: $08 $6a $08
    ld a, [bc]                                    ; $6c6e: $0a
    ld a, [bc]                                    ; $6c6f: $0a
    nop                                           ; $6c70: $00
    ld c, d                                       ; $6c71: $4a
    ld l, d                                       ; $6c72: $6a
    nop                                           ; $6c73: $00
    ld c, b                                       ; $6c74: $48
    ld l, d                                       ; $6c75: $6a
    jr z, jr_0cd_6ca0                             ; $6c76: $28 $28

    ld a, [hl+]                                   ; $6c78: $2a
    jr z, jr_0cd_6ca5                             ; $6c79: $28 $2a

    ld c, d                                       ; $6c7b: $4a
    sub h                                         ; $6c7c: $94
    inc b                                         ; $6c7d: $04
    nop                                           ; $6c7e: $00
    ld a, [hl+]                                   ; $6c7f: $2a
    ld a, [hl+]                                   ; $6c80: $2a
    dec bc                                        ; $6c81: $0b
    nop                                           ; $6c82: $00
    ld [$081f], sp                                ; $6c83: $08 $1f $08
    dec bc                                        ; $6c86: $0b
    ld a, [hl+]                                   ; $6c87: $2a
    inc b                                         ; $6c88: $04
    dec bc                                        ; $6c89: $0b
    ld l, b                                       ; $6c8a: $68
    ld a, [bc]                                    ; $6c8b: $0a
    jr z, @+$2d                                   ; $6c8c: $28 $2b

    inc l                                         ; $6c8e: $2c
    nop                                           ; $6c8f: $00
    ld c, e                                       ; $6c90: $4b
    ld l, b                                       ; $6c91: $68
    add c                                         ; $6c92: $81
    dec d                                         ; $6c93: $15
    nop                                           ; $6c94: $00
    dec bc                                        ; $6c95: $0b
    ld a, [bc]                                    ; $6c96: $0a
    dec hl                                        ; $6c97: $2b
    ld c, b                                       ; $6c98: $48
    jr z, jr_0cd_6ca5                             ; $6c99: $28 $0a

    ld e, $08                                     ; $6c9b: $1e $08
    nop                                           ; $6c9d: $00
    jr z, jr_0cd_6cc8                             ; $6c9e: $28 $28

jr_0cd_6ca0:
    ld l, b                                       ; $6ca0: $68
    ld c, d                                       ; $6ca1: $4a
    ld l, e                                       ; $6ca2: $6b
    ld l, b                                       ; $6ca3: $68
    ld l, b                                       ; $6ca4: $68

jr_0cd_6ca5:
    ld c, d                                       ; $6ca5: $4a
    ld [$6828], sp                                ; $6ca6: $08 $28 $68
    jr z, jr_0cd_6cb6                             ; $6ca9: $28 $0b

    ld a, [hl+]                                   ; $6cab: $2a
    db $10                                        ; $6cac: $10
    ld [$2b28], sp                                ; $6cad: $08 $28 $2b
    add b                                         ; $6cb0: $80
    ld [hl], $00                                  ; $6cb1: $36 $00
    dec hl                                        ; $6cb3: $2b
    ld a, [hl+]                                   ; $6cb4: $2a
    ld a, [bc]                                    ; $6cb5: $0a

jr_0cd_6cb6:
    ld c, b                                       ; $6cb6: $48
    ld [$4b6a], sp                                ; $6cb7: $08 $6a $4b
    nop                                           ; $6cba: $00
    ld c, b                                       ; $6cbb: $48
    ld c, e                                       ; $6cbc: $4b
    ld l, d                                       ; $6cbd: $6a
    ld c, b                                       ; $6cbe: $48
    ld l, b                                       ; $6cbf: $68
    ld l, e                                       ; $6cc0: $6b
    ld l, b                                       ; $6cc1: $68
    dec bc                                        ; $6cc2: $0b
    nop                                           ; $6cc3: $00
    ld c, b                                       ; $6cc4: $48
    ld l, b                                       ; $6cc5: $68
    dec hl                                        ; $6cc6: $2b
    ld l, b                                       ; $6cc7: $68

jr_0cd_6cc8:
    ld [$0b0a], sp                                ; $6cc8: $08 $0a $0b
    ld [$0958], sp                                ; $6ccb: $08 $58 $09
    ld bc, $2900                                  ; $6cce: $01 $00 $29
    ld bc, $6200                                  ; $6cd1: $01 $00 $62
    nop                                           ; $6cd4: $00
    dec hl                                        ; $6cd5: $2b
    ld c, d                                       ; $6cd6: $4a
    ld a, [bc]                                    ; $6cd7: $0a
    nop                                           ; $6cd8: $00
    ld c, b                                       ; $6cd9: $48
    ld l, e                                       ; $6cda: $6b
    jr z, @+$4a                                   ; $6cdb: $28 $48

    ld c, b                                       ; $6cdd: $48
    ld c, e                                       ; $6cde: $4b
    ld [$7c08], sp                                ; $6cdf: $08 $08 $7c
    dec bc                                        ; $6ce2: $0b
    dec de                                        ; $6ce3: $1b
    ld [$101c], sp                                ; $6ce4: $08 $1c $10
    jr nz, jr_0cd_6d11                            ; $6ce7: $20 $28

    inc h                                         ; $6ce9: $24
    jr nz, @+$28                                  ; $6cea: $20 $26

    nop                                           ; $6cec: $00
    jr z, jr_0cd_6d17                             ; $6ced: $28 $28

    rrca                                          ; $6cef: $0f
    ld a, [bc]                                    ; $6cf0: $0a
    jr z, jr_0cd_6d1b                             ; $6cf1: $28 $28

    jr z, jr_0cd_6d11                             ; $6cf3: $28 $1c

    jr z, jr_0cd_6d1b                             ; $6cf5: $28 $24

    ld l, b                                       ; $6cf7: $68
    cp h                                          ; $6cf8: $bc
    nop                                           ; $6cf9: $00
    inc e                                         ; $6cfa: $1c
    or b                                          ; $6cfb: $b0
    cp d                                          ; $6cfc: $ba
    ld c, b                                       ; $6cfd: $48
    jr z, jr_0cd_6d69                             ; $6cfe: $28 $69

    ld bc, $3c18                                  ; $6d00: $01 $18 $3c
    ld e, b                                       ; $6d03: $58
    add [hl]                                      ; $6d04: $86
    ld [HeaderRAMSize], sp                        ; $6d05: $08 $49 $01
    jr jr_0cd_6d52                                ; $6d08: $18 $48

    ld a, [de]                                    ; $6d0a: $1a
    ld c, b                                       ; $6d0b: $48
    ld c, b                                       ; $6d0c: $48
    ld l, b                                       ; $6d0d: $68
    ld hl, $2518                                  ; $6d0e: $21 $18 $25

jr_0cd_6d11:
    ld [$0349], sp                                ; $6d11: $08 $49 $03
    jr @+$4b                                      ; $6d14: $18 $49

    sbc [hl]                                      ; $6d16: $9e

jr_0cd_6d17:
    rra                                           ; $6d17: $1f
    jr @+$4a                                      ; $6d18: $18 $48

    ld l, b                                       ; $6d1a: $68

jr_0cd_6d1b:
    ld bc, $e008                                  ; $6d1b: $01 $08 $e0
    nop                                           ; $6d1e: $00
    ld [$4800], sp                                ; $6d1f: $08 $00 $48
    jr nz, jr_0cd_6d8d                            ; $6d22: $20 $69

    jp nc, Jump_000_2037                          ; $6d24: $d2 $37 $20

    jr c, jr_0cd_6d31                             ; $6d27: $38 $08

    ld c, d                                       ; $6d29: $4a
    ld bc, $4800                                  ; $6d2a: $01 $00 $48
    ld l, d                                       ; $6d2d: $6a
    ld hl, $0801                                  ; $6d2e: $21 $01 $08

jr_0cd_6d31:
    ld a, [de]                                    ; $6d31: $1a
    ld c, e                                       ; $6d32: $4b
    ld a, [bc]                                    ; $6d33: $0a
    dec hl                                        ; $6d34: $2b
    inc h                                         ; $6d35: $24
    jr z, jr_0cd_6d8f                             ; $6d36: $28 $57

    ld [$1b4a], sp                                ; $6d38: $08 $4a $1b
    nop                                           ; $6d3b: $00
    ld a, [bc]                                    ; $6d3c: $0a
    ld hl, $6b28                                  ; $6d3d: $21 $28 $6b
    cp d                                          ; $6d40: $ba
    nop                                           ; $6d41: $00
    jr z, jr_0cd_6d8e                             ; $6d42: $28 $4a

    ld [$430a], sp                                ; $6d44: $08 $0a $43
    ld bc, $4a00                                  ; $6d47: $01 $00 $4a
    jr z, @+$0d                                   ; $6d4a: $28 $0b

    ld l, b                                       ; $6d4c: $68
    ld l, d                                       ; $6d4d: $6a
    ld l, e                                       ; $6d4e: $6b
    ld c, d                                       ; $6d4f: $4a
    ld l, b                                       ; $6d50: $68
    inc d                                         ; $6d51: $14

jr_0cd_6d52:
    ld l, d                                       ; $6d52: $6a
    ld l, b                                       ; $6d53: $68
    ld l, d                                       ; $6d54: $6a
    scf                                           ; $6d55: $37
    ld [$7568], sp                                ; $6d56: $08 $68 $75
    nop                                           ; $6d59: $00
    dec hl                                        ; $6d5a: $2b
    ld [$6980], sp                                ; $6d5b: $08 $80 $69
    ld bc, $2a08                                  ; $6d5e: $01 $08 $2a
    jr z, jr_0cd_6dcd                             ; $6d61: $28 $6a

    ld l, e                                       ; $6d63: $6b
    ld l, d                                       ; $6d64: $6a
    ld l, e                                       ; $6d65: $6b
    ld h, h                                       ; $6d66: $64
    ld l, b                                       ; $6d67: $68
    ld a, [de]                                    ; $6d68: $1a

jr_0cd_6d69:
    nop                                           ; $6d69: $00
    inc l                                         ; $6d6a: $2c
    ld bc, $280b                                  ; $6d6b: $01 $0b $28
    ld hl, $4a00                                  ; $6d6e: $21 $00 $4a
    ld c, e                                       ; $6d71: $4b
    ld a, [bc]                                    ; $6d72: $0a
    ld c, b                                       ; $6d73: $48
    dec bc                                        ; $6d74: $0b
    ld a, [hl+]                                   ; $6d75: $2a
    ld c, b                                       ; $6d76: $48
    jr z, jr_0cd_6d79                             ; $6d77: $28 $00

jr_0cd_6d79:
    ld c, d                                       ; $6d79: $4a
    dec bc                                        ; $6d7a: $0b
    ld [$a14b], sp                                ; $6d7b: $08 $4b $a1
    ld a, [bc]                                    ; $6d7e: $0a
    nop                                           ; $6d7f: $00
    ld l, b                                       ; $6d80: $68
    scf                                           ; $6d81: $37
    nop                                           ; $6d82: $00
    ld l, e                                       ; $6d83: $6b
    ld l, b                                       ; $6d84: $68
    ld l, e                                       ; $6d85: $6b
    ld l, d                                       ; $6d86: $6a
    ld b, e                                       ; $6d87: $43
    ld bc, $2a06                                  ; $6d88: $01 $06 $2a
    ld l, e                                       ; $6d8b: $6b
    ld l, b                                       ; $6d8c: $68

jr_0cd_6d8d:
    ld c, b                                       ; $6d8d: $48

jr_0cd_6d8e:
    ld c, e                                       ; $6d8e: $4b

jr_0cd_6d8f:
    ld [de], a                                    ; $6d8f: $12
    ld bc, $0078                                  ; $6d90: $01 $78 $00
    ld c, e                                       ; $6d93: $4b
    ret nz                                        ; $6d94: $c0

    add c                                         ; $6d95: $81
    ld [$0084], sp                                ; $6d96: $08 $84 $00
    inc d                                         ; $6d99: $14
    nop                                           ; $6d9a: $00
    dec c                                         ; $6d9b: $0d
    nop                                           ; $6d9c: $00
    cp $00                                        ; $6d9d: $fe $00
    nop                                           ; $6d9f: $00
    ld b, b                                       ; $6da0: $40
    ld b, c                                       ; $6da1: $41
    ld b, d                                       ; $6da2: $42
    ld b, e                                       ; $6da3: $43
    ld b, h                                       ; $6da4: $44
    ld b, b                                       ; $6da5: $40
    ld b, l                                       ; $6da6: $45
    ld b, [hl]                                    ; $6da7: $46
    jr nc, jr_0cd_6dee                            ; $6da8: $30 $44

    ld b, e                                       ; $6daa: $43
    inc b                                         ; $6dab: $04
    nop                                           ; $6dac: $00
    ld bc, $4000                                  ; $6dad: $01 $00 $40
    ld b, a                                       ; $6db0: $47
    ld c, b                                       ; $6db1: $48
    ld b, e                                       ; $6db2: $43
    nop                                           ; $6db3: $00
    ld c, c                                       ; $6db4: $49
    ld c, d                                       ; $6db5: $4a
    ld c, e                                       ; $6db6: $4b
    ld c, h                                       ; $6db7: $4c
    ld c, l                                       ; $6db8: $4d
    ld c, [hl]                                    ; $6db9: $4e
    ld c, a                                       ; $6dba: $4f
    ld d, b                                       ; $6dbb: $50
    db $10                                        ; $6dbc: $10
    ld c, c                                       ; $6dbd: $49
    ld c, h                                       ; $6dbe: $4c
    ld c, d                                       ; $6dbf: $4a
    inc b                                         ; $6dc0: $04
    nop                                           ; $6dc1: $00
    ld c, l                                       ; $6dc2: $4d
    ld c, [hl]                                    ; $6dc3: $4e
    ld c, l                                       ; $6dc4: $4d
    ld c, d                                       ; $6dc5: $4a
    nop                                           ; $6dc6: $00
    ld d, c                                       ; $6dc7: $51
    ld c, l                                       ; $6dc8: $4d
    ld d, d                                       ; $6dc9: $52
    ld d, e                                       ; $6dca: $53
    ld d, h                                       ; $6dcb: $54
    ld d, l                                       ; $6dcc: $55

jr_0cd_6dcd:
    ld d, [hl]                                    ; $6dcd: $56
    ld d, a                                       ; $6dce: $57
    ld [$5453], sp                                ; $6dcf: $08 $53 $54
    ld d, d                                       ; $6dd2: $52
    ld d, l                                       ; $6dd3: $55
    inc b                                         ; $6dd4: $04
    ld [$5756], sp                                ; $6dd5: $08 $56 $57
    ld d, [hl]                                    ; $6dd8: $56
    nop                                           ; $6dd9: $00
    ld d, e                                       ; $6dda: $53
    ld d, h                                       ; $6ddb: $54
    ld d, [hl]                                    ; $6ddc: $56
    ld e, b                                       ; $6ddd: $58
    ld e, c                                       ; $6dde: $59
    ld e, d                                       ; $6ddf: $5a
    ld e, e                                       ; $6de0: $5b
    ld e, h                                       ; $6de1: $5c
    ld [$595d], sp                                ; $6de2: $08 $5d $59
    ld e, d                                       ; $6de5: $5a
    ld e, [hl]                                    ; $6de6: $5e
    inc b                                         ; $6de7: $04
    nop                                           ; $6de8: $00
    ld e, h                                       ; $6de9: $5c
    ld e, a                                       ; $6dea: $5f
    ld e, [hl]                                    ; $6deb: $5e
    jr nz, jr_0cd_6e4c                            ; $6dec: $20 $5e

jr_0cd_6dee:
    ld h, b                                       ; $6dee: $60
    stop                                          ; $6def: $10 $00
    ld e, a                                       ; $6df1: $5f
    ld h, c                                       ; $6df2: $61
    ld e, h                                       ; $6df3: $5c
    ld e, b                                       ; $6df4: $58
    ld h, d                                       ; $6df5: $62
    ld [bc], a                                    ; $6df6: $02
    ld h, e                                       ; $6df7: $63
    ld e, l                                       ; $6df8: $5d
    ld e, l                                       ; $6df9: $5d
    ld h, d                                       ; $6dfa: $62
    ld h, e                                       ; $6dfb: $63
    ld e, a                                       ; $6dfc: $5f
    ld [$5e08], sp                                ; $6dfd: $08 $08 $5e
    jr jr_0cd_6e61                                ; $6e00: $18 $5f

    ld h, h                                       ; $6e02: $64
    ld h, l                                       ; $6e03: $65
    ld a, [de]                                    ; $6e04: $1a
    nop                                           ; $6e05: $00
    dec de                                        ; $6e06: $1b
    db $10                                        ; $6e07: $10
    ld h, h                                       ; $6e08: $64
    ld e, c                                       ; $6e09: $59
    ld e, d                                       ; $6e0a: $5a
    ld b, b                                       ; $6e0b: $40
    ld e, l                                       ; $6e0c: $5d
    inc hl                                        ; $6e0d: $23
    ld [$5e5e], sp                                ; $6e0e: $08 $5e $5e
    ld h, [hl]                                    ; $6e11: $66
    ld h, a                                       ; $6e12: $67
    ld e, [hl]                                    ; $6e13: $5e
    ld e, [hl]                                    ; $6e14: $5e
    inc d                                         ; $6e15: $14
    ld l, b                                       ; $6e16: $68
    ld l, c                                       ; $6e17: $69
    ld l, d                                       ; $6e18: $6a
    dec de                                        ; $6e19: $1b
    ld [$395c], sp                                ; $6e1a: $08 $5c $39
    nop                                           ; $6e1d: $00
    ld h, h                                       ; $6e1e: $64
    ld h, l                                       ; $6e1f: $65
    add c                                         ; $6e20: $81
    rrca                                          ; $6e21: $0f
    nop                                           ; $6e22: $00
    ld l, e                                       ; $6e23: $6b
    ld l, c                                       ; $6e24: $69
    ld l, d                                       ; $6e25: $6a
    ld e, [hl]                                    ; $6e26: $5e
    ld e, l                                       ; $6e27: $5d
    ld l, h                                       ; $6e28: $6c
    dec e                                         ; $6e29: $1d
    nop                                           ; $6e2a: $00
    ld b, b                                       ; $6e2b: $40
    ld e, [hl]                                    ; $6e2c: $5e
    jr c, jr_0cd_6e3f                             ; $6e2d: $38 $10

    ld h, d                                       ; $6e2f: $62
    ld h, e                                       ; $6e30: $63
    ld e, [hl]                                    ; $6e31: $5e
    ld l, l                                       ; $6e32: $6d
    ld e, l                                       ; $6e33: $5d
    ld l, [hl]                                    ; $6e34: $6e
    xor h                                         ; $6e35: $ac
    stop                                          ; $6e36: $10 $00
    ld l, a                                       ; $6e38: $6f
    ld b, b                                       ; $6e39: $40
    db $10                                        ; $6e3a: $10
    ld e, e                                       ; $6e3b: $5b
    ld h, d                                       ; $6e3c: $62
    nop                                           ; $6e3d: $00
    ld l, d                                       ; $6e3e: $6a

jr_0cd_6e3f:
    nop                                           ; $6e3f: $00
    ld e, e                                       ; $6e40: $5b
    ld e, [hl]                                    ; $6e41: $5e
    jr nc, jr_0cd_6e9f                            ; $6e42: $30 $5b

    ld e, l                                       ; $6e44: $5d
    dec [hl]                                      ; $6e45: $35
    ld [$006d], sp                                ; $6e46: $08 $6d $00
    ld e, a                                       ; $6e49: $5f
    ld h, c                                       ; $6e4a: $61
    ld e, a                                       ; $6e4b: $5f

jr_0cd_6e4c:
    ld h, c                                       ; $6e4c: $61
    add a                                         ; $6e4d: $87
    ld l, d                                       ; $6e4e: $6a
    ld [$6f65], sp                                ; $6e4f: $08 $65 $6f
    ld e, [hl]                                    ; $6e52: $5e
    ld h, c                                       ; $6e53: $61
    ld a, l                                       ; $6e54: $7d
    nop                                           ; $6e55: $00
    ld l, l                                       ; $6e56: $6d
    db $10                                        ; $6e57: $10
    ld a, d                                       ; $6e58: $7a
    nop                                           ; $6e59: $00
    ld a, b                                       ; $6e5a: $78
    ld e, a                                       ; $6e5b: $5f
    ld h, d                                       ; $6e5c: $62
    jr jr_0cd_6ea4                                ; $6e5d: $18 $45

    db $10                                        ; $6e5f: $10
    ld l, l                                       ; $6e60: $6d

jr_0cd_6e61:
    db $10                                        ; $6e61: $10
    ld a, [hl-]                                   ; $6e62: $3a
    nop                                           ; $6e63: $00
    ld e, l                                       ; $6e64: $5d
    ld e, a                                       ; $6e65: $5f
    ld h, h                                       ; $6e66: $64
    cp $9f                                        ; $6e67: $fe $9f
    ld [$18a0], sp                                ; $6e69: $08 $a0 $18
    sub b                                         ; $6e6c: $90
    ld [$00a5], sp                                ; $6e6d: $08 $a5 $00
    sub l                                         ; $6e70: $95
    ld [$0803], sp                                ; $6e71: $08 $03 $08
    and b                                         ; $6e74: $a0
    ld [$b90a], sp                                ; $6e75: $08 $0a $b9
    ld bc, $2a20                                  ; $6e78: $01 $20 $2a
    add hl, bc                                    ; $6e7b: $09
    jr z, jr_0cd_6e86                             ; $6e7c: $28 $08

    ld c, b                                       ; $6e7e: $48
    dec d                                         ; $6e7f: $15
    ld c, b                                       ; $6e80: $48
    ld [$0508], sp                                ; $6e81: $08 $08 $05
    jr @+$62                                      ; $6e84: $18 $60

jr_0cd_6e86:
    ld a, [hl+]                                   ; $6e86: $2a
    add hl, bc                                    ; $6e87: $09
    db $10                                        ; $6e88: $10
    db $10                                        ; $6e89: $10
    db $10                                        ; $6e8a: $10
    add hl, bc                                    ; $6e8b: $09
    inc c                                         ; $6e8c: $0c
    dec c                                         ; $6e8d: $0d
    add hl, bc                                    ; $6e8e: $09
    add hl, bc                                    ; $6e8f: $09
    ld [bc], a                                    ; $6e90: $02
    inc c                                         ; $6e91: $0c
    add hl, bc                                    ; $6e92: $09
    dec c                                         ; $6e93: $0d
    dec bc                                        ; $6e94: $0b
    add hl, bc                                    ; $6e95: $09
    add hl, bc                                    ; $6e96: $09
    add hl, bc                                    ; $6e97: $09
    nop                                           ; $6e98: $00
    dec bc                                        ; $6e99: $0b
    ld b, b                                       ; $6e9a: $40
    dec bc                                        ; $6e9b: $0b
    db $10                                        ; $6e9c: $10
    db $10                                        ; $6e9d: $10
    add hl, bc                                    ; $6e9e: $09

jr_0cd_6e9f:
    ld c, c                                       ; $6e9f: $49
    inc c                                         ; $6ea0: $0c
    add hl, bc                                    ; $6ea1: $09
    inc c                                         ; $6ea2: $0c
    inc l                                         ; $6ea3: $2c

jr_0cd_6ea4:
    ld l, a                                       ; $6ea4: $6f
    inc c                                         ; $6ea5: $0c
    add hl, bc                                    ; $6ea6: $09
    nop                                           ; $6ea7: $00
    rra                                           ; $6ea8: $1f
    nop                                           ; $6ea9: $00
    add hl, hl                                    ; $6eaa: $29
    dec de                                        ; $6eab: $1b
    nop                                           ; $6eac: $00
    ld a, [de]                                    ; $6ead: $1a
    ld [$181b], sp                                ; $6eae: $08 $1b $18
    stop                                          ; $6eb1: $10 $00
    add l                                         ; $6eb3: $85
    inc sp                                        ; $6eb4: $33
    ld [$0b0b], sp                                ; $6eb5: $08 $0b $0b
    inc c                                         ; $6eb8: $0c
    inc c                                         ; $6eb9: $0c
    inc b                                         ; $6eba: $04
    nop                                           ; $6ebb: $00
    dec c                                         ; $6ebc: $0d
    inc h                                         ; $6ebd: $24
    ld [$0b18], sp                                ; $6ebe: $08 $18 $0b
    add hl, bc                                    ; $6ec1: $09
    ld c, h                                       ; $6ec2: $4c
    inc b                                         ; $6ec3: $04
    nop                                           ; $6ec4: $00
    inc de                                        ; $6ec5: $13
    ld [$0d09], sp                                ; $6ec6: $08 $09 $0d
    inc c                                         ; $6ec9: $0c
    jp $0041                                      ; $6eca: $c3 $41 $00


    inc l                                         ; $6ecd: $2c
    db $10                                        ; $6ece: $10
    add hl, bc                                    ; $6ecf: $09
    add hl, bc                                    ; $6ed0: $09
    inc l                                         ; $6ed1: $2c
    dec bc                                        ; $6ed2: $0b
    ld d, [hl]                                    ; $6ed3: $56
    nop                                           ; $6ed4: $00
    ld c, b                                       ; $6ed5: $48
    nop                                           ; $6ed6: $00
    ret nc                                        ; $6ed7: $d0

    stop                                          ; $6ed8: $10 $00
    ld b, b                                       ; $6eda: $40
    jr jr_0cd_6f06                                ; $6edb: $18 $29

    ld b, b                                       ; $6edd: $40
    jr jr_0cd_6ee9                                ; $6ede: $18 $09

    dec bc                                        ; $6ee0: $0b
    add hl, hl                                    ; $6ee1: $29
    inc l                                         ; $6ee2: $2c
    pop de                                        ; $6ee3: $d1
    dec [hl]                                      ; $6ee4: $35
    ld [$086d], sp                                ; $6ee5: $08 $6d $08

jr_0cd_6ee8:
    ld c, c                                       ; $6ee8: $49

jr_0cd_6ee9:
    ld h, d                                       ; $6ee9: $62
    ld [$2c0c], sp                                ; $6eea: $08 $0c $2c
    add hl, bc                                    ; $6eed: $09
    ld h, h                                       ; $6eee: $64
    db $10                                        ; $6eef: $10
    cp [hl]                                       ; $6ef0: $be
    dec sp                                        ; $6ef1: $3b
    ld [$5829], sp                                ; $6ef2: $08 $29 $58
    nop                                           ; $6ef5: $00
    inc d                                         ; $6ef6: $14
    db $10                                        ; $6ef7: $10
    ld [hl], c                                    ; $6ef8: $71
    jr nz, jr_0cd_6f68                            ; $6ef9: $20 $6d

    jr jr_0cd_6f37                                ; $6efb: $18 $3a

    nop                                           ; $6efd: $00
    add hl, hl                                    ; $6efe: $29
    db $fc                                        ; $6eff: $fc
    sub l                                         ; $6f00: $95
    nop                                           ; $6f01: $00
    add l                                         ; $6f02: $85
    jr nc, @+$77                                  ; $6f03: $30 $75

    db $10                                        ; $6f05: $10

jr_0cd_6f06:
    db $10                                        ; $6f06: $10
    jr jr_0cd_6f0c                                ; $6f07: $18 $03

    ld [$08c1], sp                                ; $6f09: $08 $c1 $08

jr_0cd_6f0c:
    jr nz, jr_0cd_6f0e                            ; $6f0c: $20 $00

jr_0cd_6f0e:
    jr nz, jr_0cd_6f10                            ; $6f0e: $20 $00

jr_0cd_6f10:
    ld c, $01                                     ; $6f10: $0e $01
    ld d, d                                       ; $6f12: $52

jr_0cd_6f13:
    ld b, b                                       ; $6f13: $40
    ld bc, $4100                                  ; $6f14: $01 $00 $41
    inc b                                         ; $6f17: $04
    jr nz, @+$44                                  ; $6f18: $20 $42

    ld b, e                                       ; $6f1a: $43
    ld c, $08                                     ; $6f1b: $0e $08
    ld b, h                                       ; $6f1d: $44
    jp nc, Jump_000_0813                          ; $6f1e: $d2 $13 $08

    rlca                                          ; $6f21: $07
    jr @+$43                                      ; $6f22: $18 $41

    dec c                                         ; $6f24: $0d
    ld [$4645], sp                                ; $6f25: $08 $45 $46
    ld a, [de]                                    ; $6f28: $1a
    jr z, @+$49                                   ; $6f29: $28 $47

    ld e, [hl]                                    ; $6f2b: $5e
    ld c, b                                       ; $6f2c: $48
    ld l, $00                                     ; $6f2d: $2e $00
    ld c, c                                       ; $6f2f: $49
    inc hl                                        ; $6f30: $23
    jr jr_0cd_6f3a                                ; $6f31: $18 $07

    nop                                           ; $6f33: $00
    cpl                                           ; $6f34: $2f
    nop                                           ; $6f35: $00
    dec c                                         ; $6f36: $0d

jr_0cd_6f37:
    ld [$ff4a], sp                                ; $6f37: $08 $4a $ff

jr_0cd_6f3a:
    ld d, $00                                     ; $6f3a: $16 $00
    ld a, [de]                                    ; $6f3c: $1a
    db $10                                        ; $6f3d: $10
    inc bc                                        ; $6f3e: $03
    jr nc, jr_0cd_6f64                            ; $6f3f: $30 $23

    nop                                           ; $6f41: $00
    ld d, e                                       ; $6f42: $53
    ld [$5815], sp                                ; $6f43: $08 $15 $58
    ld h, a                                       ; $6f46: $67
    db $10                                        ; $6f47: $10

jr_0cd_6f48:
    ld d, l                                       ; $6f48: $55
    jr @+$01                                      ; $6f49: $18 $ff

    ld d, e                                       ; $6f4b: $53
    db $10                                        ; $6f4c: $10
    inc de                                        ; $6f4d: $13
    jr z, jr_0cd_6fbe                             ; $6f4e: $28 $6e

    jr z, jr_0cd_6fb9                             ; $6f50: $28 $67

    ld [$1855], sp                                ; $6f52: $08 $55 $18
    ld d, e                                       ; $6f55: $53
    jr jr_0cd_6ee8                                ; $6f56: $18 $90

jr_0cd_6f58:
    jr nc, @-$5e                                  ; $6f58: $30 $a0

    ld [$75de], sp                                ; $6f5a: $08 $de $75
    nop                                           ; $6f5d: $00
    inc d                                         ; $6f5e: $14
    db $10                                        ; $6f5f: $10
    ld b, h                                       ; $6f60: $44

jr_0cd_6f61:
    ld l, d                                       ; $6f61: $6a
    jr nc, @-$58                                  ; $6f62: $30 $a6

jr_0cd_6f64:
    ld [$0090], sp                                ; $6f64: $08 $90 $00
    ld c, l                                       ; $6f67: $4d

jr_0cd_6f68:
    ld c, b                                       ; $6f68: $48
    ld b, b                                       ; $6f69: $40
    ld a, a                                       ; $6f6a: $7f
    ld b, c                                       ; $6f6b: $41
    sbc h                                         ; $6f6c: $9c
    jr nz, jr_0cd_6f79                            ; $6f6d: $20 $0a

    jr nz, jr_0cd_6fd9                            ; $6f6f: $20 $68

    jr nz, jr_0cd_6f13                            ; $6f71: $20 $a0

    ld [$08d4], sp                                ; $6f73: $08 $d4 $08
    sbc $18                                       ; $6f76: $de $18
    cp a                                          ; $6f78: $bf

jr_0cd_6f79:
    ld [$7fff], sp                                ; $6f79: $08 $ff $7f
    db $10                                        ; $6f7c: $10
    push af                                       ; $6f7d: $f5
    ld [$2068], sp                                ; $6f7e: $08 $68 $20
    or c                                          ; $6f81: $b1
    jr jr_0cd_6f48                                ; $6f82: $18 $c4

    jr c, jr_0cd_6f58                             ; $6f84: $38 $d2

    nop                                           ; $6f86: $00
    ld a, e                                       ; $6f87: $7b
    jr z, jr_0cd_6f61                             ; $6f88: $28 $d7

    jr nz, @-$01                                  ; $6f8a: $20 $fd

    or c                                          ; $6f8c: $b1
    jr z, @+$1e                                   ; $6f8d: $28 $1c

    ld bc, $18b3                                  ; $6f8f: $01 $b3 $18
    pop af                                        ; $6f92: $f1
    jr z, jr_0cd_6fb7                             ; $6f93: $28 $22

    ld de, $30b1                                  ; $6f95: $11 $b1 $30
    ld c, c                                       ; $6f98: $49
    dec l                                         ; $6f99: $2d
    ld de, $41f5                                  ; $6f9a: $11 $f5 $41
    add hl, de                                    ; $6f9d: $19
    dec hl                                        ; $6f9e: $2b
    ld [$2122], sp                                ; $6f9f: $08 $22 $21
    jp hl                                         ; $6fa2: $e9


    jr nc, jr_0cd_6fe6                            ; $6fa3: $30 $41

    dec l                                         ; $6fa5: $2d
    add hl, bc                                    ; $6fa6: $09
    ld c, c                                       ; $6fa7: $49
    ld [hl], b                                    ; $6fa8: $70
    ld de, $2bdf                                  ; $6fa9: $11 $df $2b
    db $10                                        ; $6fac: $10
    scf                                           ; $6fad: $37
    add hl, de                                    ; $6fae: $19
    ld b, c                                       ; $6faf: $41
    ld a, c                                       ; $6fb0: $79
    ld de, $1902                                  ; $6fb1: $11 $02 $19
    or l                                          ; $6fb4: $b5
    jr nz, @-$7a                                  ; $6fb5: $20 $84

jr_0cd_6fb7:
    add hl, bc                                    ; $6fb7: $09
    dec b                                         ; $6fb8: $05

jr_0cd_6fb9:
    ld hl, $7fff                                  ; $6fb9: $21 $ff $7f
    add hl, bc                                    ; $6fbc: $09
    ld a, c                                       ; $6fbd: $79

jr_0cd_6fbe:
    ld bc, $2102                                  ; $6fbe: $01 $02 $21
    sbc l                                         ; $6fc1: $9d
    ld bc, $1043                                  ; $6fc2: $01 $43 $10
    and e                                         ; $6fc5: $a3
    ld sp, $30c4                                  ; $6fc6: $31 $c4 $30
    ld a, d                                       ; $6fc9: $7a
    add hl, hl                                    ; $6fca: $29

jr_0cd_6fcb:
    rst $38                                       ; $6fcb: $ff
    ld l, l                                       ; $6fcc: $6d
    add hl, sp                                    ; $6fcd: $39
    xor d                                         ; $6fce: $aa
    ld bc, $1969                                  ; $6fcf: $01 $69 $19
    sub c                                         ; $6fd2: $91
    jr nc, jr_0cd_7046                            ; $6fd3: $30 $71

    ld hl, $306b                                  ; $6fd5: $21 $6b $30
    ld l, c                                       ; $6fd8: $69

jr_0cd_6fd9:
    add hl, de                                    ; $6fd9: $19
    jp nc, $f719                                  ; $6fda: $d2 $19 $f7

    add hl, de                                    ; $6fdd: $19
    ld hl, $19db                                  ; $6fde: $21 $db $19
    ld l, l                                       ; $6fe1: $6d
    ld hl, $5858                                  ; $6fe2: $21 $58 $58
    ld b, h                                       ; $6fe5: $44

jr_0cd_6fe6:
    db $eb                                        ; $6fe6: $eb
    ld bc, $21db                                  ; $6fe7: $01 $db $21
    ld l, h                                       ; $6fea: $6c
    ld [hl], b                                    ; $6feb: $70
    call c, Call_000_307c                         ; $6fec: $dc $7c $30
    db $db                                        ; $6fef: $db
    ld hl, $ee44                                  ; $6ff0: $21 $44 $ee
    ld hl, $31ed                                  ; $6ff3: $21 $ed $31
    ld [hl], d                                    ; $6ff6: $72
    ld b, b                                       ; $6ff7: $40
    ld b, h                                       ; $6ff8: $44
    ld b, b                                       ; $6ff9: $40
    dec a                                         ; $6ffa: $3d
    ld b, h                                       ; $6ffb: $44
    ld c, c                                       ; $6ffc: $49
    ld l, e                                       ; $6ffd: $6b
    ld a, [bc]                                    ; $6ffe: $0a
    ld l, $19                                     ; $6fff: $2e $19
    ld [de], a                                    ; $7001: $12
    jr jr_0cd_6fcb                                ; $7002: $18 $c7

    ld b, b                                       ; $7004: $40
    ld c, c                                       ; $7005: $49
    ld h, e                                       ; $7006: $63
    ld a, [bc]                                    ; $7007: $0a
    rst $38                                       ; $7008: $ff
    ld d, c                                       ; $7009: $51
    ld a, [de]                                    ; $700a: $1a
    ld [$fe12], sp                                ; $700b: $08 $12 $fe
    ld de, $0aa3                                  ; $700e: $11 $a3 $0a
    sbc c                                         ; $7011: $99
    ld [bc], a                                    ; $7012: $02
    call nz, Call_0cd_7038                        ; $7013: $c4 $38 $70
    ld a, [hl+]                                   ; $7016: $2a
    or h                                          ; $7017: $b4
    ld [de], a                                    ; $7018: $12
    rst $38                                       ; $7019: $ff
    ld d, b                                       ; $701a: $50
    ld [de], a                                    ; $701b: $12
    sbc c                                         ; $701c: $99
    ld [bc], a                                    ; $701d: $02
    db $dd                                        ; $701e: $dd
    ld sp, $0ac4                                  ; $701f: $31 $c4 $0a
    add hl, bc                                    ; $7022: $09
    ld a, [de]                                    ; $7023: $1a
    or h                                          ; $7024: $b4
    ld [de], a                                    ; $7025: $12
    add sp, $29                                   ; $7026: $e8 $29
    db $f4                                        ; $7028: $f4
    add hl, hl                                    ; $7029: $29
    rst $38                                       ; $702a: $ff
    call nz, Call_000_090a                        ; $702b: $c4 $0a $09
    ld [hl-], a                                   ; $702e: $32
    ld c, e                                       ; $702f: $4b
    ld e, b                                       ; $7030: $58
    ld e, d                                       ; $7031: $5a
    ld b, c                                       ; $7032: $41
    xor [hl]                                      ; $7033: $ae
    ld de, $330a                                  ; $7034: $11 $0a $33
    rst $38                                       ; $7037: $ff

Call_0cd_7038:
    ld [de], a                                    ; $7038: $12
    sub d                                         ; $7039: $92
    ld [hl+], a                                   ; $703a: $22
    rst $38                                       ; $703b: $ff
    inc b                                         ; $703c: $04
    dec bc                                        ; $703d: $0b
    ld [hl+], a                                   ; $703e: $22
    ld [hl-], a                                   ; $703f: $32
    or l                                          ; $7040: $b5
    ld [hl+], a                                   ; $7041: $22
    scf                                           ; $7042: $37
    inc de                                        ; $7043: $13
    ld [hl+], a                                   ; $7044: $22
    inc de                                        ; $7045: $13

jr_0cd_7046:
    xor b                                         ; $7046: $a8
    jr jr_0cd_705c                                ; $7047: $18 $13

    dec de                                        ; $7049: $1b
    ld sp, $ff1a                                  ; $704a: $31 $1a $ff
    ret nz                                        ; $704d: $c0

    add hl, de                                    ; $704e: $19
    and l                                         ; $704f: $a5
    ld a, [hl-]                                   ; $7050: $3a
    and a                                         ; $7051: $a7
    ld sp, $2103                                  ; $7052: $31 $03 $21
    halt                                          ; $7055: $76
    jr c, jr_0cd_70c1                             ; $7056: $38 $69

jr_0cd_7058:
    ld b, d                                       ; $7058: $42
    inc [hl]                                      ; $7059: $34
    dec de                                        ; $705a: $1b
    rst $18                                       ; $705b: $df

jr_0cd_705c:
    ld sp, $05ff                                  ; $705c: $31 $ff $05
    inc de                                        ; $705f: $13
    dec l                                         ; $7060: $2d
    ld hl, $1a56                                  ; $7061: $21 $56 $1a
    jr c, jr_0cd_7080                             ; $7064: $38 $1a

    jr c, jr_0cd_70c0                             ; $7066: $38 $58

    inc bc                                        ; $7068: $03
    ld a, [hl-]                                   ; $7069: $3a
    jr c, jr_0cd_708e                             ; $706a: $38 $22

    or d                                          ; $706c: $b2

jr_0cd_706d:
    inc hl                                        ; $706d: $23
    push bc                                       ; $706e: $c5
    ld h, $52                                     ; $706f: $26 $52
    ei                                            ; $7071: $fb
    add hl, sp                                    ; $7072: $39
    ld b, b                                       ; $7073: $40
    ld b, b                                       ; $7074: $40
    ld [$0001], sp                                ; $7075: $08 $01 $00
    add hl, bc                                    ; $7078: $09
    inc b                                         ; $7079: $04
    jr z, @+$01                                   ; $707a: $28 $ff

    add hl, bc                                    ; $707c: $09
    ld [$100e], sp                                ; $707d: $08 $0e $10

jr_0cd_7080:
    dec d                                         ; $7080: $15
    jr nc, jr_0cd_709e                            ; $7081: $30 $1b

    nop                                           ; $7083: $00
    ld d, $08                                     ; $7084: $16 $08
    ld a, [de]                                    ; $7086: $1a
    jr jr_0cd_70a4                                ; $7087: $18 $1b

    jr z, @+$25                                   ; $7089: $28 $23

    jr nz, @+$01                                  ; $708b: $20 $ff

    dec d                                         ; $708d: $15

jr_0cd_708e:
    jr nz, @+$41                                  ; $708e: $20 $3f

jr_0cd_7090:
    jr nc, jr_0cd_7095                            ; $7090: $30 $03

    ld c, b                                       ; $7092: $48
    ld c, d                                       ; $7093: $4a
    ld c, b                                       ; $7094: $48

jr_0cd_7095:
    inc d                                         ; $7095: $14
    ld b, b                                       ; $7096: $40
    ld l, d                                       ; $7097: $6a
    jr nz, jr_0cd_70d4                            ; $7098: $20 $3a

    jr z, jr_0cd_70d3                             ; $709a: $28 $37

    jr c, @+$01                                   ; $709c: $38 $ff

jr_0cd_709e:
    ld l, d                                       ; $709e: $6a
    nop                                           ; $709f: $00
    ld d, l                                       ; $70a0: $55
    ld c, b                                       ; $70a1: $48
    ld h, c                                       ; $70a2: $61
    ld a, b                                       ; $70a3: $78

jr_0cd_70a4:
    inc a                                         ; $70a4: $3c
    jr c, @+$63                                   ; $70a5: $38 $61

    ld d, b                                       ; $70a7: $50
    ld c, l                                       ; $70a8: $4d
    ld c, b                                       ; $70a9: $48
    ld [hl], l                                    ; $70aa: $75
    ld b, b                                       ; $70ab: $40
    call nz, $ff28                                ; $70ac: $c4 $28 $ff
    pop de                                        ; $70af: $d1
    jr z, jr_0cd_7090                             ; $70b0: $28 $de

    jr c, jr_0cd_706d                             ; $70b2: $38 $b9

    jr nc, jr_0cd_7058                            ; $70b4: $30 $a2

    ld h, b                                       ; $70b6: $60
    ld e, d                                       ; $70b7: $5a
    jr c, @-$70                                   ; $70b8: $38 $8e

    ld d, b                                       ; $70ba: $50
    ld [hl-], a                                   ; $70bb: $32
    ld c, b                                       ; $70bc: $48
    add b                                         ; $70bd: $80
    ld a, b                                       ; $70be: $78
    rst $28                                       ; $70bf: $ef

jr_0cd_70c0:
    ld [hl+], a                                   ; $70c0: $22

jr_0cd_70c1:
    ld hl, $6029                                  ; $70c1: $21 $29 $60
    inc l                                         ; $70c4: $2c
    ld sp, $9b09                                  ; $70c5: $31 $09 $9b
    ld h, b                                       ; $70c8: $60
    ld [bc], a                                    ; $70c9: $02
    ld b, c                                       ; $70ca: $41
    dec hl                                        ; $70cb: $2b
    ld c, b                                       ; $70cc: $48
    db $fc                                        ; $70cd: $fc
    jr @+$01                                      ; $70ce: $18 $ff

    ld [bc], a                                    ; $70d0: $02
    ld d, c                                       ; $70d1: $51
    dec b                                         ; $70d2: $05

jr_0cd_70d3:
    ld l, c                                       ; $70d3: $69

jr_0cd_70d4:
    ccf                                           ; $70d4: $3f
    add b                                         ; $70d5: $80
    jr jr_0cd_7129                                ; $70d6: $18 $51

    inc bc                                        ; $70d8: $03
    ld a, b                                       ; $70d9: $78
    ld c, [hl]                                    ; $70da: $4e
    add c                                         ; $70db: $81
    scf                                           ; $70dc: $37
    ld c, c                                       ; $70dd: $49
    add c                                         ; $70de: $81
    ld l, c                                       ; $70df: $69
    rst $38                                       ; $70e0: $ff
    jp nc, $d431                                  ; $70e1: $d2 $31 $d4

    reti                                          ; $70e4: $d9


    db $eb                                        ; $70e5: $eb
    adc c                                         ; $70e6: $89
    db $fd                                        ; $70e7: $fd
    ld e, c                                       ; $70e8: $59
    ld a, [hl+]                                   ; $70e9: $2a
    ld [hl-], a                                   ; $70ea: $32
    xor $19                                       ; $70eb: $ee $19
    inc a                                         ; $70ed: $3c
    ld [hl-], a                                   ; $70ee: $32
    di                                            ; $70ef: $f3
    ld b, c                                       ; $70f0: $41
    rst $38                                       ; $70f1: $ff
    ld [bc], a                                    ; $70f2: $02
    db $10                                        ; $70f3: $10
    dec d                                         ; $70f4: $15
    ld b, b                                       ; $70f5: $40
    ld b, h                                       ; $70f6: $44
    add hl, de                                    ; $70f7: $19
    dec l                                         ; $70f8: $2d
    ld a, d                                       ; $70f9: $7a
    ld e, e                                       ; $70fa: $5b
    ld c, d                                       ; $70fb: $4a
    db $fd                                        ; $70fc: $fd
    ld c, c                                       ; $70fd: $49
    ld l, h                                       ; $70fe: $6c
    ld d, d                                       ; $70ff: $52
    call z, $ff19                                 ; $7100: $cc $19 $ff
    ld a, a                                       ; $7103: $7f
    ld b, d                                       ; $7104: $42
    db $dd                                        ; $7105: $dd
    ld sp, $405c                                  ; $7106: $31 $5c $40
    dec [hl]                                      ; $7109: $35
    ld h, d                                       ; $710a: $62
    xor l                                         ; $710b: $ad
    ld l, b                                       ; $710c: $68
    ld c, $78                                     ; $710d: $0e $78
    jr c, jr_0cd_715b                             ; $710f: $38 $4a

    ld c, l                                       ; $7111: $4d
    ld d, b                                       ; $7112: $50
    rst $38                                       ; $7113: $ff
    ld sp, $7442                                  ; $7114: $31 $42 $74
    ld h, b                                       ; $7117: $60
    and l                                         ; $7118: $a5
    ld [hl], d                                    ; $7119: $72
    ld a, h                                       ; $711a: $7c
    ld d, d                                       ; $711b: $52
    dec l                                         ; $711c: $2d
    sbc c                                         ; $711d: $99
    cp e                                          ; $711e: $bb
    ld l, b                                       ; $711f: $68
    di                                            ; $7120: $f3
    ld l, d                                       ; $7121: $6a
    ld h, b                                       ; $7122: $60
    ld a, [hl-]                                   ; $7123: $3a
    db $fc                                        ; $7124: $fc
    ld [hl], c                                    ; $7125: $71
    ld [hl], d                                    ; $7126: $72
    and [hl]                                      ; $7127: $a6
    ld h, d                                       ; $7128: $62

jr_0cd_7129:
    jp z, Jump_000_3858                           ; $7129: $ca $58 $38

    ld h, d                                       ; $712c: $62
    ld h, $9a                                     ; $712d: $26 $9a
    add sp, $1b                                   ; $712f: $e8 $1b
    inc d                                         ; $7131: $14
    nop                                           ; $7132: $00
    dec c                                         ; $7133: $0d
    nop                                           ; $7134: $00
    dec d                                         ; $7135: $15
    ld bc, $4048                                  ; $7136: $01 $48 $40
    ld bc, $4110                                  ; $7139: $01 $10 $41
    ld b, d                                       ; $713c: $42
    rlca                                          ; $713d: $07
    ld c, b                                       ; $713e: $48
    ld b, b                                       ; $713f: $40
    ld b, e                                       ; $7140: $43
    ld b, c                                       ; $7141: $41
    ld b, $42                                     ; $7142: $06 $42
    ld b, h                                       ; $7144: $44
    ld b, b                                       ; $7145: $40
    ld b, b                                       ; $7146: $40
    ld b, l                                       ; $7147: $45
    inc e                                         ; $7148: $1c
    ld [$0005], sp                                ; $7149: $08 $05 $00
    ld b, h                                       ; $714c: $44
    nop                                           ; $714d: $00
    ld b, c                                       ; $714e: $41
    ld b, d                                       ; $714f: $42
    ld b, e                                       ; $7150: $43
    ld b, b                                       ; $7151: $40
    ld b, b                                       ; $7152: $40
    ld b, [hl]                                    ; $7153: $46
    ld b, b                                       ; $7154: $40
    ld b, b                                       ; $7155: $40
    ld a, [bc]                                    ; $7156: $0a
    ld b, a                                       ; $7157: $47
    ld b, b                                       ; $7158: $40
    ld b, b                                       ; $7159: $40
    ld c, b                                       ; $715a: $48

jr_0cd_715b:
    dec hl                                        ; $715b: $2b
    ld [$0b48], sp                                ; $715c: $08 $48 $0b
    db $10                                        ; $715f: $10
    ld b, [hl]                                    ; $7160: $46
    nop                                           ; $7161: $00
    ld b, b                                       ; $7162: $40
    ld c, c                                       ; $7163: $49
    ld c, d                                       ; $7164: $4a
    ld c, c                                       ; $7165: $49
    ld c, c                                       ; $7166: $49
    ld c, e                                       ; $7167: $4b
    ld c, c                                       ; $7168: $49
    ld c, c                                       ; $7169: $49
    jr c, @+$4e                                   ; $716a: $38 $4c

    ld c, c                                       ; $716c: $49
    ld bc, $0500                                  ; $716d: $01 $00 $05
    nop                                           ; $7170: $00
    dec bc                                        ; $7171: $0b
    nop                                           ; $7172: $00
    ld c, d                                       ; $7173: $4a
    ld c, c                                       ; $7174: $49
    ld b, b                                       ; $7175: $40
    ld bc, $404d                                  ; $7176: $01 $4d $40
    ld b, b                                       ; $7179: $40
    ld c, [hl]                                    ; $717a: $4e
    ld b, b                                       ; $717b: $40
    ld b, b                                       ; $717c: $40
    ld c, a                                       ; $717d: $4f
    ld e, b                                       ; $717e: $58
    ld [$4f04], sp                                ; $717f: $08 $04 $4f
    ld b, b                                       ; $7182: $40
    ld b, c                                       ; $7183: $41
    ld c, [hl]                                    ; $7184: $4e
    ld b, d                                       ; $7185: $42
    ld de, $4100                                  ; $7186: $11 $00 $41
    ld d, b                                       ; $7189: $50
    nop                                           ; $718a: $00
    ld d, c                                       ; $718b: $51
    ld d, d                                       ; $718c: $52
    ld d, e                                       ; $718d: $53
    ld d, h                                       ; $718e: $54
    ld d, l                                       ; $718f: $55
    ld d, [hl]                                    ; $7190: $56
    ld d, a                                       ; $7191: $57
    ld e, b                                       ; $7192: $58
    nop                                           ; $7193: $00
    ld e, b                                       ; $7194: $58
    ld d, a                                       ; $7195: $57
    ld d, [hl]                                    ; $7196: $56
    ld d, l                                       ; $7197: $55
    ld d, h                                       ; $7198: $54
    ld d, e                                       ; $7199: $53
    ld d, d                                       ; $719a: $52
    ld d, c                                       ; $719b: $51
    nop                                           ; $719c: $00
    ld d, b                                       ; $719d: $50
    ld b, b                                       ; $719e: $40
    ld e, c                                       ; $719f: $59
    ld e, d                                       ; $71a0: $5a
    ld e, e                                       ; $71a1: $5b
    ld e, h                                       ; $71a2: $5c
    ld e, l                                       ; $71a3: $5d
    ld e, [hl]                                    ; $71a4: $5e
    nop                                           ; $71a5: $00

jr_0cd_71a6:
    ld e, a                                       ; $71a6: $5f
    ld h, b                                       ; $71a7: $60
    ld h, b                                       ; $71a8: $60
    ld h, c                                       ; $71a9: $61
    ld h, c                                       ; $71aa: $61
    ld h, b                                       ; $71ab: $60
    ld h, b                                       ; $71ac: $60
    ld e, a                                       ; $71ad: $5f
    ld bc, $5d5e                                  ; $71ae: $01 $5e $5d
    ld e, h                                       ; $71b1: $5c
    ld e, e                                       ; $71b2: $5b
    ld e, d                                       ; $71b3: $5a
    ld e, c                                       ; $71b4: $59
    ld h, d                                       ; $71b5: $62
    ld bc, $2080                                  ; $71b6: $01 $80 $20
    ld h, e                                       ; $71b9: $63
    ld h, h                                       ; $71ba: $64
    ld d, $68                                     ; $71bb: $16 $68
    ld h, h                                       ; $71bd: $64
    ld h, e                                       ; $71be: $63
    ld h, l                                       ; $71bf: $65
    ld h, [hl]                                    ; $71c0: $66
    ld h, a                                       ; $71c1: $67
    nop                                           ; $71c2: $00
    ld l, b                                       ; $71c3: $68
    ld l, c                                       ; $71c4: $69
    ld l, d                                       ; $71c5: $6a
    ld l, b                                       ; $71c6: $68
    ld h, a                                       ; $71c7: $67
    ld l, c                                       ; $71c8: $69
    ld h, a                                       ; $71c9: $67
    ld l, c                                       ; $71ca: $69
    nop                                           ; $71cb: $00
    ld l, d                                       ; $71cc: $6a
    ld h, a                                       ; $71cd: $67
    ld l, b                                       ; $71ce: $68
    ld l, d                                       ; $71cf: $6a
    ld l, c                                       ; $71d0: $69
    ld l, b                                       ; $71d1: $68
    ld h, a                                       ; $71d2: $67
    ld h, [hl]                                    ; $71d3: $66
    nop                                           ; $71d4: $00
    ld h, l                                       ; $71d5: $65
    ld h, l                                       ; $71d6: $65
    ld [hl], b                                    ; $71d7: $70
    ld l, e                                       ; $71d8: $6b
    ld l, h                                       ; $71d9: $6c
    ld l, l                                       ; $71da: $6d
    ld l, [hl]                                    ; $71db: $6e
    ld l, h                                       ; $71dc: $6c
    nop                                           ; $71dd: $00
    ld l, l                                       ; $71de: $6d
    ld l, e                                       ; $71df: $6b
    ld h, l                                       ; $71e0: $65
    ld l, e                                       ; $71e1: $6b
    ld l, [hl]                                    ; $71e2: $6e
    ld h, l                                       ; $71e3: $65
    ld l, h                                       ; $71e4: $6c
    ld l, [hl]                                    ; $71e5: $6e
    nop                                           ; $71e6: $00
    ld l, e                                       ; $71e7: $6b
    ld l, h                                       ; $71e8: $6c
    ld h, l                                       ; $71e9: $65
    ld h, l                                       ; $71ea: $65
    ld l, a                                       ; $71eb: $6f
    ld [hl], b                                    ; $71ec: $70
    ld [hl], c                                    ; $71ed: $71
    ld [hl], d                                    ; $71ee: $72
    ld [bc], a                                    ; $71ef: $02
    ld [hl], d                                    ; $71f0: $72
    ld [hl], b                                    ; $71f1: $70
    ld h, l                                       ; $71f2: $65
    ld [hl], d                                    ; $71f3: $72
    ld h, l                                       ; $71f4: $65
    ld l, a                                       ; $71f5: $6f
    ld b, $00                                     ; $71f6: $06 $00
    ld h, l                                       ; $71f8: $65
    nop                                           ; $71f9: $00
    ld h, l                                       ; $71fa: $65
    ld [hl], h                                    ; $71fb: $74
    ld [hl], b                                    ; $71fc: $70
    ld [hl], l                                    ; $71fd: $75
    ld [hl], d                                    ; $71fe: $72
    ld h, l                                       ; $71ff: $65
    ld [hl], b                                    ; $7200: $70
    ld [hl], e                                    ; $7201: $73
    adc b                                         ; $7202: $88
    ld [de], a                                    ; $7203: $12
    nop                                           ; $7204: $00
    ld [hl], e                                    ; $7205: $73
    ld [hl], l                                    ; $7206: $75
    ld [hl], b                                    ; $7207: $70
    jr jr_0cd_720a                                ; $7208: $18 $00

jr_0cd_720a:
    ld [hl], b                                    ; $720a: $70
    ld h, l                                       ; $720b: $65
    ld [hl], l                                    ; $720c: $75
    nop                                           ; $720d: $00
    ld h, l                                       ; $720e: $65
    ld [hl], c                                    ; $720f: $71
    ld [hl], d                                    ; $7210: $72
    ld l, a                                       ; $7211: $6f
    ld h, l                                       ; $7212: $65
    ld [hl], l                                    ; $7213: $75
    ld [hl], e                                    ; $7214: $73
    dec c                                         ; $7215: $0d
    sub c                                         ; $7216: $91
    ld bc, $4d90                                  ; $7217: $01 $90 $4d
    ld c, l                                       ; $721a: $4d
    jr jr_0cd_7285                                ; $721b: $18 $68

    add hl, bc                                    ; $721d: $09
    dec bc                                        ; $721e: $0b
    add hl, bc                                    ; $721f: $09
    inc bc                                        ; $7220: $03
    jr nz, jr_0cd_71a6                            ; $7221: $20 $83

    ld [$0b28], sp                                ; $7223: $08 $28 $0b
    add hl, bc                                    ; $7226: $09
    inc c                                         ; $7227: $0c
    dec bc                                        ; $7228: $0b
    inc c                                         ; $7229: $0c
    inc bc                                        ; $722a: $03
    jr nz, @+$0a                                  ; $722b: $20 $08

    jr z, @+$13                                   ; $722d: $28 $11

    dec bc                                        ; $722f: $0b
    inc c                                         ; $7230: $0c
    ld [$d801], sp                                ; $7231: $08 $01 $d8
    jr z, jr_0cd_723e                             ; $7234: $28 $08

    jr z, jr_0cd_723b                             ; $7236: $28 $03

    db $10                                        ; $7238: $10
    db $e4                                        ; $7239: $e4
    inc d                                         ; $723a: $14

jr_0cd_723b:
    adc b                                         ; $723b: $88
    ld d, $58                                     ; $723c: $16 $58

jr_0cd_723e:
    ld c, c                                       ; $723e: $49
    jr nz, jr_0cd_7250                            ; $723f: $20 $0f

    ld a, [bc]                                    ; $7241: $0a
    ld d, d                                       ; $7242: $52
    ld l, b                                       ; $7243: $68
    ld a, [hl+]                                   ; $7244: $2a
    cpl                                           ; $7245: $2f
    inc h                                         ; $7246: $24
    ld a, [bc]                                    ; $7247: $0a
    rrca                                          ; $7248: $0f
    ld [bc], a                                    ; $7249: $02
    ld [$0a0f], sp                                ; $724a: $08 $0f $0a
    ld [$2f08], sp                                ; $724d: $08 $08 $2f

jr_0cd_7250:
    ld a, [hl+]                                   ; $7250: $2a
    db $10                                        ; $7251: $10
    cpl                                           ; $7252: $2f
    ld a, [hl+]                                   ; $7253: $2a
    ld a, [hl+]                                   ; $7254: $2a
    inc b                                         ; $7255: $04
    nop                                           ; $7256: $00
    cpl                                           ; $7257: $2f
    rrca                                          ; $7258: $0f
    ld c, $0f                                     ; $7259: $0e $0f
    ld b, b                                       ; $725b: $40
    ld c, $19                                     ; $725c: $0e $19
    nop                                           ; $725e: $00
    ld l, $2f                                     ; $725f: $2e $2f
    ld l, $0f                                     ; $7261: $2e $0f
    ld a, [bc]                                    ; $7263: $0a
    ld a, [hl+]                                   ; $7264: $2a
    nop                                           ; $7265: $00
    cpl                                           ; $7266: $2f
    ld c, $2f                                     ; $7267: $0e $2f
    ld a, [bc]                                    ; $7269: $0a
    cpl                                           ; $726a: $2f
    ld c, $0a                                     ; $726b: $0e $0a
    ld c, $89                                     ; $726d: $0e $89
    inc h                                         ; $726f: $24
    nop                                           ; $7270: $00
    cpl                                           ; $7271: $2f
    rrca                                          ; $7272: $0f
    ld a, [hl+]                                   ; $7273: $2a
    rlca                                          ; $7274: $07
    nop                                           ; $7275: $00
    rrca                                          ; $7276: $0f
    ld a, [hl+]                                   ; $7277: $2a
    inc [hl]                                      ; $7278: $34
    ld [$2f00], sp                                ; $7279: $08 $00 $2f
    cpl                                           ; $727c: $2f
    ld l, a                                       ; $727d: $6f
    ld a, [bc]                                    ; $727e: $0a
    rrca                                          ; $727f: $0f
    ld c, $2e                                     ; $7280: $0e $2e
    ld a, [bc]                                    ; $7282: $0a
    ld b, b                                       ; $7283: $40
    ld l, [hl]                                    ; $7284: $6e

jr_0cd_7285:
    rra                                           ; $7285: $1f
    nop                                           ; $7286: $00
    ld l, $0a                                     ; $7287: $2e $0a
    ld l, $0e                                     ; $7289: $2e $0e
    ld a, [hl+]                                   ; $728b: $2a
    ld c, $00                                     ; $728c: $0e $00
    cpl                                           ; $728e: $2f
    ld c, $2e                                     ; $728f: $0e $2e
    ld c, $0e                                     ; $7291: $0e $0e
    jr nz, jr_0cd_7295                            ; $7293: $20 $00

jr_0cd_7295:
    jr nz, jr_0cd_7297                            ; $7295: $20 $00

jr_0cd_7297:
    ld l, d                                       ; $7297: $6a
    nop                                           ; $7298: $00
    ld a, a                                       ; $7299: $7f
    ld b, b                                       ; $729a: $40
    ld bc, $23f8                                  ; $729b: $01 $f8 $23
    ld hl, sp+$45                                 ; $729e: $f8 $45
    ld hl, sp+$67                                 ; $72a0: $f8 $67
    ld hl, sp-$77                                 ; $72a2: $f8 $89
    ld hl, sp-$55                                 ; $72a4: $f8 $ab
    ld hl, sp-$33                                 ; $72a6: $f8 $cd
    ld hl, sp-$0e                                 ; $72a8: $f8 $f2
    rst $28                                       ; $72aa: $ef
    ld hl, sp+$11                                 ; $72ab: $f8 $11
    ld sp, hl                                     ; $72ad: $f9
    inc sp                                        ; $72ae: $33
    ld sp, hl                                     ; $72af: $f9
    ld d, l                                       ; $72b0: $55
    add c                                         ; $72b1: $81
    ld b, c                                       ; $72b2: $41
    ld b, c                                       ; $72b3: $41
    ld l, d                                       ; $72b4: $6a
    pop de                                        ; $72b5: $d1
    ld b, d                                       ; $72b6: $42
    db $10                                        ; $72b7: $10
    ld b, e                                       ; $72b8: $43
    ld b, h                                       ; $72b9: $44
    ld b, d                                       ; $72ba: $42
    adc e                                         ; $72bb: $8b
    ret                                           ; $72bc: $c9


    ld b, l                                       ; $72bd: $45
    ld b, [hl]                                    ; $72be: $46
    ld b, a                                       ; $72bf: $47
    ld c, b                                       ; $72c0: $48
    add c                                         ; $72c1: $81
    xor e                                         ; $72c2: $ab
    pop bc                                        ; $72c3: $c1
    ld c, c                                       ; $72c4: $49
    ld c, d                                       ; $72c5: $4a
    ld c, e                                       ; $72c6: $4b
    ld c, h                                       ; $72c7: $4c
    ld c, l                                       ; $72c8: $4d
    ld c, c                                       ; $72c9: $49
    call z, $02b9                                 ; $72ca: $cc $b9 $02
    ld c, [hl]                                    ; $72cd: $4e
    ld c, a                                       ; $72ce: $4f
    ld d, b                                       ; $72cf: $50
    ld d, c                                       ; $72d0: $51
    ld d, d                                       ; $72d1: $52
    ld c, [hl]                                    ; $72d2: $4e
    ccf                                           ; $72d3: $3f
    cp b                                          ; $72d4: $b8
    ld d, e                                       ; $72d5: $53
    inc b                                         ; $72d6: $04
    ld d, h                                       ; $72d7: $54
    ld d, l                                       ; $72d8: $55
    ld d, [hl]                                    ; $72d9: $56
    ld d, a                                       ; $72da: $57
    ld d, e                                       ; $72db: $53
    ld b, c                                       ; $72dc: $41
    cp b                                          ; $72dd: $b8
    ld e, b                                       ; $72de: $58
    ld e, c                                       ; $72df: $59
    add hl, bc                                    ; $72e0: $09
    ld e, d                                       ; $72e1: $5a
    ld e, e                                       ; $72e2: $5b
    ld e, h                                       ; $72e3: $5c
    ld e, l                                       ; $72e4: $5d
    inc l                                         ; $72e5: $2c
    jp z, Jump_0cd_5e5e                           ; $72e6: $ca $5e $5e

    ld c, d                                       ; $72e9: $4a
    ld a, [$6cff]                                 ; $72ea: $fa $ff $6c
    ld a, [$fa8e]                                 ; $72ed: $fa $8e $fa
    or b                                          ; $72f0: $b0
    ld a, [$fad2]                                 ; $72f1: $fa $d2 $fa
    db $f4                                        ; $72f4: $f4

jr_0cd_72f5:
    ld a, [$fb16]                                 ; $72f5: $fa $16 $fb
    jr c, jr_0cd_72f5                             ; $72f8: $38 $fb

    ld e, d                                       ; $72fa: $5a
    ei                                            ; $72fb: $fb
    rst $30                                       ; $72fc: $f7
    ld a, h                                       ; $72fd: $7c
    ei                                            ; $72fe: $fb
    sbc [hl]                                      ; $72ff: $9e
    ei                                            ; $7300: $fb
    ret nz                                        ; $7301: $c0

    ei                                            ; $7302: $fb
    ld [c], a                                     ; $7303: $e2
    db $db                                        ; $7304: $db
    rrca                                          ; $7305: $0f
    ld bc, $23f8                                  ; $7306: $01 $f8 $23
    ld hl, sp+$45                                 ; $7309: $f8 $45
    ld hl, sp-$01                                 ; $730b: $f8 $ff
    ld h, a                                       ; $730d: $67
    ld hl, sp-$77                                 ; $730e: $f8 $89
    ld hl, sp-$55                                 ; $7310: $f8 $ab
    ld hl, sp-$33                                 ; $7312: $f8 $cd
    ld hl, sp-$11                                 ; $7314: $f8 $ef
    ld hl, sp+$11                                 ; $7316: $f8 $11
    ld sp, hl                                     ; $7318: $f9
    inc sp                                        ; $7319: $33
    ld sp, hl                                     ; $731a: $f9
    ld d, l                                       ; $731b: $55
    adc c                                         ; $731c: $89
    ld h, a                                       ; $731d: $67
    cpl                                           ; $731e: $2f
    ld hl, $8cf8                                  ; $731f: $21 $f8 $8c
    ret                                           ; $7322: $c9


    ld c, $0e                                     ; $7323: $0e $0e
    xor d                                         ; $7325: $aa
    reti                                          ; $7326: $d9


    jr nz, jr_0cd_7329                            ; $7327: $20 $00

jr_0cd_7329:
    ld h, d                                       ; $7329: $62
    ret z                                         ; $732a: $c8

    ld a, a                                       ; $732b: $7f
    ld c, $01                                     ; $732c: $0e $01
    nop                                           ; $732e: $00
    jr nz, @-$0e                                  ; $732f: $20 $f0

    and e                                         ; $7331: $a3
    ldh a, [$e0]                                  ; $7332: $f0 $e0
    ld hl, sp+$4f                                 ; $7334: $f8 $4f
    ld a, [$fa71]                                 ; $7336: $fa $71 $fa
    sub e                                         ; $7339: $93
    ld a, [$b5ff]                                 ; $733a: $fa $ff $b5
    ld a, [$fad7]                                 ; $733d: $fa $d7 $fa
    ld sp, hl                                     ; $7340: $f9
    ld a, [$fb1b]                                 ; $7341: $fa $1b $fb
    dec a                                         ; $7344: $3d
    ei                                            ; $7345: $fb
    ld e, a                                       ; $7346: $5f
    ei                                            ; $7347: $fb
    add c                                         ; $7348: $81
    ei                                            ; $7349: $fb
    and e                                         ; $734a: $a3
    ei                                            ; $734b: $fb
    ret nz                                        ; $734c: $c0

    push bc                                       ; $734d: $c5
    ei                                            ; $734e: $fb
    rst $20                                       ; $734f: $e7
    or e                                          ; $7350: $b3
    jr nz, jr_0cd_7353                            ; $7351: $20 $00

jr_0cd_7353:
    dec c                                         ; $7353: $0d
    nop                                           ; $7354: $00
    adc h                                         ; $7355: $8c
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    ld b, b                                       ; $7358: $40
    ld b, b                                       ; $7359: $40
    ld b, c                                       ; $735a: $41
    ld b, d                                       ; $735b: $42
    ld b, b                                       ; $735c: $40
    ld b, b                                       ; $735d: $40
    ld b, e                                       ; $735e: $43
    ld b, h                                       ; $735f: $44
    sbc h                                         ; $7360: $9c
    rlca                                          ; $7361: $07
    db $10                                        ; $7362: $10
    ld b, l                                       ; $7363: $45
    ld b, [hl]                                    ; $7364: $46
    rrca                                          ; $7365: $0f
    jr jr_0cd_7378                                ; $7366: $18 $10

    ld [$2011], sp                                ; $7368: $08 $11 $20
    ld b, a                                       ; $736b: $47
    ld b, b                                       ; $736c: $40
    ld [bc], a                                    ; $736d: $02
    ld c, b                                       ; $736e: $48
    ld c, c                                       ; $736f: $49
    ld b, b                                       ; $7370: $40
    ld b, b                                       ; $7371: $40
    ld c, d                                       ; $7372: $4a
    ld c, e                                       ; $7373: $4b
    rlca                                          ; $7374: $07
    db $10                                        ; $7375: $10
    ld c, h                                       ; $7376: $4c
    dec d                                         ; $7377: $15

jr_0cd_7378:
    ld c, l                                       ; $7378: $4d
    ld b, b                                       ; $7379: $40
    ld b, a                                       ; $737a: $47
    rrca                                          ; $737b: $0f
    nop                                           ; $737c: $00
    ld c, [hl]                                    ; $737d: $4e
    stop                                          ; $737e: $10 $00
    ld c, a                                       ; $7380: $4f
    jr jr_0cd_7383                                ; $7381: $18 $00

jr_0cd_7383:
    ld a, d                                       ; $7383: $7a
    ld c, [hl]                                    ; $7384: $4e
    ld de, $0108                                  ; $7385: $11 $08 $01
    ld c, b                                       ; $7388: $48
    scf                                           ; $7389: $37
    jr c, @+$59                                   ; $738a: $38 $57

    jr nc, jr_0cd_73ce                            ; $738c: $30 $40

    ld l, $00                                     ; $738e: $2e $00
    ld b, b                                       ; $7390: $40
    inc hl                                        ; $7391: $23
    ld b, b                                       ; $7392: $40
    ld c, a                                       ; $7393: $4f
    ld [$4a18], sp                                ; $7394: $08 $18 $4a
    ld d, b                                       ; $7397: $50
    ld b, b                                       ; $7398: $40
    ld c, b                                       ; $7399: $48
    jr z, jr_0cd_73f3                             ; $739a: $28 $57

    jr jr_0cd_741b                                ; $739c: $18 $7d

    ld d, b                                       ; $739e: $50
    dec hl                                        ; $739f: $2b
    ld e, b                                       ; $73a0: $58
    ld c, e                                       ; $73a1: $4b
    add b                                         ; $73a2: $80
    ld [hl], e                                    ; $73a3: $73
    jr nz, @-$7c                                  ; $73a4: $20 $82

    ld [$286b], sp                                ; $73a6: $08 $6b $28
    ld b, a                                       ; $73a9: $47
    ld d, l                                       ; $73aa: $55
    ld [$92bf], sp                                ; $73ab: $08 $bf $92
    nop                                           ; $73ae: $00
    ld c, a                                       ; $73af: $4f
    adc e                                         ; $73b0: $8b
    ld [$1063], sp                                ; $73b1: $08 $63 $10
    cp h                                          ; $73b4: $bc
    ld b, b                                       ; $73b5: $40
    add e                                         ; $73b6: $83
    ld l, b                                       ; $73b7: $68
    jr c, jr_0cd_73ca                             ; $73b8: $38 $10

    ld [hl], h                                    ; $73ba: $74
    ld b, b                                       ; $73bb: $40
    rst $38                                       ; $73bc: $ff
    ld c, b                                       ; $73bd: $48
    ld [$4883], sp                                ; $73be: $08 $83 $48
    sbc l                                         ; $73c1: $9d
    jr c, jr_0cd_741c                             ; $73c2: $38 $58

    db $10                                        ; $73c4: $10
    rst $08                                       ; $73c5: $cf
    ld c, b                                       ; $73c6: $48
    ld l, b                                       ; $73c7: $68
    db $10                                        ; $73c8: $10
    sbc h                                         ; $73c9: $9c

jr_0cd_73ca:
    ret z                                         ; $73ca: $c8

    cpl                                           ; $73cb: $2f
    add hl, bc                                    ; $73cc: $09
    ret nz                                        ; $73cd: $c0

jr_0cd_73ce:
    sbc h                                         ; $73ce: $9c
    jr c, jr_0cd_7405                             ; $73cf: $38 $34

    add hl, sp                                    ; $73d1: $39
    ld c, d                                       ; $73d2: $4a
    ld c, e                                       ; $73d3: $4b
    ld b, c                                       ; $73d4: $41
    ld b, d                                       ; $73d5: $42
    ld c, b                                       ; $73d6: $48
    ld c, c                                       ; $73d7: $49
    ccf                                           ; $73d8: $3f
    ld b, e                                       ; $73d9: $43
    ld b, h                                       ; $73da: $44
    ld e, $19                                     ; $73db: $1e $19
    adc d                                         ; $73dd: $8a
    ld c, b                                       ; $73de: $48
    db $fd                                        ; $73df: $fd
    ld d, b                                       ; $73e0: $50
    jp nc, $e200                                  ; $73e1: $d2 $00 $e2

    jr nz, jr_0cd_744a                            ; $73e4: $20 $64

jr_0cd_73e6:
    add hl, bc                                    ; $73e6: $09
    call nz, Call_000_10d6                        ; $73e7: $c4 $d6 $10
    adc [hl]                                      ; $73ea: $8e
    ld l, b                                       ; $73eb: $68
    ld c, b                                       ; $73ec: $48
    ld c, c                                       ; $73ed: $49
    ld [$1001], sp                                ; $73ee: $08 $01 $10
    rrca                                          ; $73f1: $0f
    rrca                                          ; $73f2: $0f

jr_0cd_73f3:
    db $fc                                        ; $73f3: $fc
    inc bc                                        ; $73f4: $03
    ld [$3004], sp                                ; $73f5: $08 $04 $30
    dec b                                         ; $73f8: $05
    jr jr_0cd_73fe                                ; $73f9: $18 $03

    ld b, b                                       ; $73fb: $40
    jr nz, jr_0cd_73e6                            ; $73fc: $20 $e8

jr_0cd_73fe:
    ld c, $b8                                     ; $73fe: $0e $b8
    add hl, bc                                    ; $7400: $09
    add hl, bc                                    ; $7401: $09
    ld [hl], a                                    ; $7402: $77
    dec c                                         ; $7403: $0d
    inc bc                                        ; $7404: $03

jr_0cd_7405:
    nop                                           ; $7405: $00
    inc b                                         ; $7406: $04
    jr nz, jr_0cd_740b                            ; $7407: $20 $02

    ld [hl], b                                    ; $7409: $70
    dec c                                         ; $740a: $0d

jr_0cd_740b:
    dec de                                        ; $740b: $1b
    jr nc, jr_0cd_742d                            ; $740c: $30 $1f

    adc b                                         ; $740e: $88
    inc e                                         ; $740f: $1c
    ld c, b                                       ; $7410: $48

jr_0cd_7411:
    ret nc                                        ; $7411: $d0

    ccf                                           ; $7412: $3f
    ld h, b                                       ; $7413: $60
    ld c, l                                       ; $7414: $4d
    ld [$570d], sp                                ; $7415: $08 $0d $57
    ld [$0e0e], sp                                ; $7418: $08 $0e $0e

jr_0cd_741b:
    ld a, [bc]                                    ; $741b: $0a

jr_0cd_741c:
    ld a, [bc]                                    ; $741c: $0a
    ld a, a                                       ; $741d: $7f
    ld a, [bc]                                    ; $741e: $0a
    dec b                                         ; $741f: $05
    ld [$2004], sp                                ; $7420: $08 $04 $20
    db $10                                        ; $7423: $10
    db $10                                        ; $7424: $10
    inc bc                                        ; $7425: $03
    ld b, b                                       ; $7426: $40
    jr nz, jr_0cd_7411                            ; $7427: $20 $e8

    ld a, $08                                     ; $7429: $3e $08
    inc b                                         ; $742b: $04
    ld b, b                                       ; $742c: $40

jr_0cd_742d:
    db $d3                                        ; $742d: $d3
    inc e                                         ; $742e: $1c
    adc b                                         ; $742f: $88
    inc bc                                        ; $7430: $03
    ret nc                                        ; $7431: $d0

    dec bc                                        ; $7432: $0b
    ld bc, $0c30                                  ; $7433: $01 $30 $0c
    inc c                                         ; $7436: $0c
    inc b                                         ; $7437: $04
    ld a, b                                       ; $7438: $78
    jr @-$56                                      ; $7439: $18 $a8

    ret nz                                        ; $743b: $c0

    inc l                                         ; $743c: $2c
    xor b                                         ; $743d: $a8
    ld b, $68                                     ; $743e: $06 $68
    inc c                                         ; $7440: $0c
    inc c                                         ; $7441: $0c
    jr nz, jr_0cd_7444                            ; $7442: $20 $00

jr_0cd_7444:
    ld c, $00                                     ; $7444: $0e $00
    ld c, b                                       ; $7446: $48
    ld bc, $4000                                  ; $7447: $01 $00 $40

jr_0cd_744a:
    ld b, c                                       ; $744a: $41
    ld b, b                                       ; $744b: $40
    ld b, c                                       ; $744c: $41
    ld b, d                                       ; $744d: $42
    ld b, e                                       ; $744e: $43
    ld b, b                                       ; $744f: $40
    ld b, h                                       ; $7450: $44
    dec l                                         ; $7451: $2d
    ld b, l                                       ; $7452: $45
    ld b, [hl]                                    ; $7453: $46
    ld a, [bc]                                    ; $7454: $0a
    ld [$0247], sp                                ; $7455: $08 $47 $02
    nop                                           ; $7458: $00
    ld [de], a                                    ; $7459: $12
    jr nz, jr_0cd_749d                            ; $745a: $20 $41

    ld [de], a                                    ; $745c: $12
    jr jr_0cd_747f                                ; $745d: $18 $20

    ld c, b                                       ; $745f: $48
    ld c, c                                       ; $7460: $49
    ld [bc], a                                    ; $7461: $02
    jr jr_0cd_74ae                                ; $7462: $18 $4a

    ld c, e                                       ; $7464: $4b
    ld c, b                                       ; $7465: $48
    ld b, a                                       ; $7466: $47
    ld c, b                                       ; $7467: $48
    add hl, sp                                    ; $7468: $39
    ld c, c                                       ; $7469: $49
    ld b, h                                       ; $746a: $44
    ld [bc], a                                    ; $746b: $02
    nop                                           ; $746c: $00
    ld [de], a                                    ; $746d: $12
    ld b, b                                       ; $746e: $40
    inc e                                         ; $746f: $1c
    nop                                           ; $7470: $00
    ld c, h                                       ; $7471: $4c
    ld c, l                                       ; $7472: $4d
    ld [bc], a                                    ; $7473: $02
    jr jr_0cd_7478                                ; $7474: $18 $02

    ld b, d                                       ; $7476: $42
    ld b, e                                       ; $7477: $43

jr_0cd_7478:
    ld c, h                                       ; $7478: $4c
    ld b, h                                       ; $7479: $44
    ld c, [hl]                                    ; $747a: $4e
    ld c, a                                       ; $747b: $4f
    ld c, $08                                     ; $747c: $0e $08
    ld d, b                                       ; $747e: $50

jr_0cd_747f:
    pop bc                                        ; $747f: $c1
    ld [bc], a                                    ; $7480: $02
    nop                                           ; $7481: $00
    ld [de], a                                    ; $7482: $12
    jr nz, @+$4f                                  ; $7483: $20 $4d

    ld c, [hl]                                    ; $7485: $4e
    ld c, a                                       ; $7486: $4f
    ld d, c                                       ; $7487: $51
    ld d, d                                       ; $7488: $52
    ld [bc], a                                    ; $7489: $02
    jr c, jr_0cd_748d                             ; $748a: $38 $01

    ld d, e                                       ; $748c: $53

jr_0cd_748d:
    ld d, h                                       ; $748d: $54
    ld d, c                                       ; $748e: $51
    ld b, a                                       ; $748f: $47
    ld d, c                                       ; $7490: $51
    ld d, d                                       ; $7491: $52
    ld b, h                                       ; $7492: $44
    ld [bc], a                                    ; $7493: $02
    nop                                           ; $7494: $00
    add d                                         ; $7495: $82
    ld [de], a                                    ; $7496: $12
    jr c, jr_0cd_74ee                             ; $7497: $38 $55

    ld d, l                                       ; $7499: $55
    ld b, l                                       ; $749a: $45
    ld b, [hl]                                    ; $749b: $46
    ld d, l                                       ; $749c: $55

jr_0cd_749d:
    ld bc, $4220                                  ; $749d: $01 $20 $42
    ld [hl], $43                                  ; $74a0: $36 $43
    ld d, l                                       ; $74a2: $55
    adc b                                         ; $74a3: $88
    nop                                           ; $74a4: $00
    ld c, $08                                     ; $74a5: $0e $08
    ld b, a                                       ; $74a7: $47
    ld [bc], a                                    ; $74a8: $02
    nop                                           ; $74a9: $00
    ld [de], a                                    ; $74aa: $12
    jr nz, @+$57                                  ; $74ab: $20 $55

    dec a                                         ; $74ad: $3d

jr_0cd_74ae:
    ld d, [hl]                                    ; $74ae: $56
    ld d, a                                       ; $74af: $57
    jr nz, jr_0cd_74da                            ; $74b0: $20 $28

    jr z, jr_0cd_74bc                             ; $74b2: $28 $08

    ld c, $00                                     ; $74b4: $0e $00
    dec de                                        ; $74b6: $1b
    nop                                           ; $74b7: $00
    ld b, h                                       ; $74b8: $44
    ld [bc], a                                    ; $74b9: $02
    nop                                           ; $74ba: $00
    add b                                         ; $74bb: $80

jr_0cd_74bc:
    ld [hl], $18                                  ; $74bc: $36 $18
    ld e, b                                       ; $74be: $58
    ld e, c                                       ; $74bf: $59
    ld b, d                                       ; $74c0: $42
    ld b, e                                       ; $74c1: $43
    ld e, b                                       ; $74c2: $58
    ld e, c                                       ; $74c3: $59
    ld b, l                                       ; $74c4: $45
    ld e, $46                                     ; $74c5: $1e $46
    ld e, b                                       ; $74c7: $58
    ld e, c                                       ; $74c8: $59
    ld [bc], a                                    ; $74c9: $02
    jr jr_0cd_74da                                ; $74ca: $18 $0e

    nop                                           ; $74cc: $00
    call z, $0e00                                 ; $74cd: $cc $00 $0e
    ld [$8447], sp                                ; $74d0: $08 $47 $84
    ld [bc], a                                    ; $74d3: $02
    nop                                           ; $74d4: $00
    ld e, b                                       ; $74d5: $58
    ld e, c                                       ; $74d6: $59
    ld e, d                                       ; $74d7: $5a
    ld e, e                                       ; $74d8: $5b
    ld [bc], a                                    ; $74d9: $02

jr_0cd_74da:
    ld [$5d5c], sp                                ; $74da: $08 $5c $5d
    ld h, b                                       ; $74dd: $60
    ld e, [hl]                                    ; $74de: $5e
    ld [$0e10], sp                                ; $74df: $08 $10 $0e
    jr z, jr_0cd_753e                             ; $74e2: $28 $5a

    ld e, a                                       ; $74e4: $5f
    ld e, d                                       ; $74e5: $5a
    ld e, e                                       ; $74e6: $5b
    ld h, b                                       ; $74e7: $60
    add d                                         ; $74e8: $82
    ld [bc], a                                    ; $74e9: $02
    nop                                           ; $74ea: $00
    ld e, d                                       ; $74eb: $5a
    ld e, e                                       ; $74ec: $5b
    ld h, c                                       ; $74ed: $61

jr_0cd_74ee:
    ld h, d                                       ; $74ee: $62
    ld h, e                                       ; $74ef: $63
    ld [bc], a                                    ; $74f0: $02
    nop                                           ; $74f1: $00
    ld b, d                                       ; $74f2: $42
    ld b, $43                                     ; $74f3: $06 $43
    ld h, e                                       ; $74f5: $63
    ld h, d                                       ; $74f6: $62
    ld h, h                                       ; $74f7: $64
    ld h, l                                       ; $74f8: $65
    ld a, [bc]                                    ; $74f9: $0a
    ld [$200e], sp                                ; $74fa: $08 $0e $20
    ld h, [hl]                                    ; $74fd: $66
    jr nz, jr_0cd_7567                            ; $74fe: $20 $67

    ld l, b                                       ; $7500: $68
    jr @+$0a                                      ; $7501: $18 $08

    ld h, c                                       ; $7503: $61
    ld h, d                                       ; $7504: $62
    ld b, h                                       ; $7505: $44
    ld l, c                                       ; $7506: $69
    ld l, d                                       ; $7507: $6a
    sbc b                                         ; $7508: $98
    ld [bc], a                                    ; $7509: $02
    jr nz, jr_0cd_7562                            ; $750a: $20 $56

    ld d, a                                       ; $750c: $57
    ld a, [bc]                                    ; $750d: $0a
    jr z, jr_0cd_751e                             ; $750e: $28 $0e

    jr nz, jr_0cd_7573                            ; $7510: $20 $61

    ld l, d                                       ; $7512: $6a
    ld l, c                                       ; $7513: $69
    ld bc, $6944                                  ; $7514: $01 $44 $69
    ld l, e                                       ; $7517: $6b
    ld l, h                                       ; $7518: $6c
    ld b, a                                       ; $7519: $47
    ld l, h                                       ; $751a: $6c
    ld l, e                                       ; $751b: $6b
    ld [bc], a                                    ; $751c: $02
    nop                                           ; $751d: $00

jr_0cd_751e:
    nop                                           ; $751e: $00
    ld l, h                                       ; $751f: $6c
    ld l, e                                       ; $7520: $6b
    ld b, d                                       ; $7521: $42
    ld b, e                                       ; $7522: $43
    ld l, h                                       ; $7523: $6c
    ld l, e                                       ; $7524: $6b
    ld l, l                                       ; $7525: $6d
    ld l, [hl]                                    ; $7526: $6e
    ret nz                                        ; $7527: $c0

    dec c                                         ; $7528: $0d
    db $10                                        ; $7529: $10
    ld de, $4200                                  ; $752a: $11 $00 $42
    ld b, e                                       ; $752d: $43
    ld l, e                                       ; $752e: $6b
    ld b, h                                       ; $752f: $44
    ld l, l                                       ; $7530: $6d
    ld l, [hl]                                    ; $7531: $6e
    ld bc, $6f6b                                  ; $7532: $01 $6b $6f
    ld [hl], b                                    ; $7535: $70
    ld [hl], c                                    ; $7536: $71
    ld [hl], d                                    ; $7537: $72
    ld [hl], c                                    ; $7538: $71
    ld [hl], b                                    ; $7539: $70
    ld [bc], a                                    ; $753a: $02
    nop                                           ; $753b: $00
    adc l                                         ; $753c: $8d
    dec b                                         ; $753d: $05

jr_0cd_753e:
    db $10                                        ; $753e: $10
    ld [hl], b                                    ; $753f: $70
    ld [hl], e                                    ; $7540: $73
    ld [hl], h                                    ; $7541: $74
    ld [$1318], sp                                ; $7542: $08 $18 $13
    ld [$0e70], sp                                ; $7545: $08 $70 $0e
    nop                                           ; $7548: $00
    dec b                                         ; $7549: $05
    ld [hl], b                                    ; $754a: $70
    ld [hl], l                                    ; $754b: $75
    ld b, l                                       ; $754c: $45
    ld b, [hl]                                    ; $754d: $46
    halt                                          ; $754e: $76
    ld bc, $4700                                  ; $754f: $01 $00 $47
    ld [bc], a                                    ; $7552: $02
    nop                                           ; $7553: $00
    add [hl]                                      ; $7554: $86
    ld [$7708], sp                                ; $7555: $08 $08 $77
    ld a, b                                       ; $7558: $78
    halt                                          ; $7559: $76
    halt                                          ; $755a: $76
    ld [de], a                                    ; $755b: $12
    jr jr_0cd_756c                                ; $755c: $18 $0e

    jr nz, @+$7b                                  ; $755e: $20 $79

    cpl                                           ; $7560: $2f
    ld a, d                                       ; $7561: $7a

jr_0cd_7562:
    ld a, e                                       ; $7562: $7b
    dec de                                        ; $7563: $1b
    ld [$0279], sp                                ; $7564: $08 $79 $02

jr_0cd_7567:
    nop                                           ; $7567: $00
    ld d, $28                                     ; $7568: $16 $28
    ld [de], a                                    ; $756a: $12
    nop                                           ; $756b: $00

jr_0cd_756c:
    ld bc, $0240                                  ; $756c: $01 $40 $02
    dec bc                                        ; $756f: $0b
    dec bc                                        ; $7570: $0b
    dec hl                                        ; $7571: $2b
    dec hl                                        ; $7572: $2b

jr_0cd_7573:
    ld a, [bc]                                    ; $7573: $0a
    ld a, [bc]                                    ; $7574: $0a
    inc bc                                        ; $7575: $03
    nop                                           ; $7576: $00
    ld a, [bc]                                    ; $7577: $0a
    ld c, $2b                                     ; $7578: $0e $2b
    dec hl                                        ; $757a: $2b
    dec bc                                        ; $757b: $0b
    dec bc                                        ; $757c: $0b
    add hl, bc                                    ; $757d: $09
    nop                                           ; $757e: $00
    stop                                          ; $757f: $10 $00
    ld [$0a00], sp                                ; $7581: $08 $00 $0a
    rst $20                                       ; $7584: $e7
    inc b                                         ; $7585: $04
    jr jr_0cd_759c                                ; $7586: $18 $14

    ld [$1804], sp                                ; $7588: $08 $04 $18
    inc c                                         ; $758b: $0c
    inc c                                         ; $758c: $0c
    dec de                                        ; $758d: $1b
    nop                                           ; $758e: $00
    jr nz, jr_0cd_75c1                            ; $758f: $20 $30

    inc l                                         ; $7591: $2c
    ld [$0c3c], sp                                ; $7592: $08 $3c $0c
    inc c                                         ; $7595: $0c
    jr nz, @+$4a                                  ; $7596: $20 $48

    ld b, h                                       ; $7598: $44
    ld [$0024], sp                                ; $7599: $08 $24 $00

jr_0cd_759c:
    jr jr_0cd_75a6                                ; $759c: $18 $08

    dec hl                                        ; $759e: $2b
    inc c                                         ; $759f: $0c
    pop hl                                        ; $75a0: $e1
    ld b, h                                       ; $75a1: $44
    jr nc, jr_0cd_75c8                            ; $75a2: $30 $24

    ld e, b                                       ; $75a4: $58
    ld b, h                                       ; $75a5: $44

jr_0cd_75a6:
    nop                                           ; $75a6: $00
    add hl, bc                                    ; $75a7: $09
    dec bc                                        ; $75a8: $0b
    dec bc                                        ; $75a9: $0b
    add hl, bc                                    ; $75aa: $09
    dec b                                         ; $75ab: $05
    nop                                           ; $75ac: $00
    cp e                                          ; $75ad: $bb
    ld b, h                                       ; $75ae: $44
    ld c, b                                       ; $75af: $48
    add hl, bc                                    ; $75b0: $09
    inc d                                         ; $75b1: $14
    nop                                           ; $75b2: $00
    ld [bc], a                                    ; $75b3: $02
    jr jr_0cd_75c0                                ; $75b4: $18 $0a

    nop                                           ; $75b6: $00
    add hl, bc                                    ; $75b7: $09
    ld c, $18                                     ; $75b8: $0e $18
    add hl, bc                                    ; $75ba: $09
    nop                                           ; $75bb: $00
    db $fd                                        ; $75bc: $fd
    ld [de], a                                    ; $75bd: $12
    jr z, @+$22                                   ; $75be: $28 $20

jr_0cd_75c0:
    ld b, b                                       ; $75c0: $40

jr_0cd_75c1:
    inc h                                         ; $75c1: $24
    jr z, @+$22                                   ; $75c2: $28 $20

    jr c, jr_0cd_75ea                             ; $75c4: $38 $24

    ld c, b                                       ; $75c6: $48
    xor h                                         ; $75c7: $ac

jr_0cd_75c8:
    jr jr_0cd_75d3                                ; $75c8: $18 $09

    ld e, a                                       ; $75ca: $5f
    nop                                           ; $75cb: $00
    db $e4                                        ; $75cc: $e4
    inc b                                         ; $75cd: $04
    nop                                           ; $75ce: $00
    call z, Call_0cd_6800                         ; $75cf: $cc $00 $68
    ld c, b                                       ; $75d2: $48

jr_0cd_75d3:
    ld [$cc08], sp                                ; $75d3: $08 $08 $cc
    ld c, b                                       ; $75d6: $48
    ld [$7808], sp                                ; $75d7: $08 $08 $78
    dec hl                                        ; $75da: $2b
    stop                                          ; $75db: $10 $00
    dec b                                         ; $75dd: $05
    ld [$000c], sp                                ; $75de: $08 $0c $00
    push hl                                       ; $75e1: $e5
    db $10                                        ; $75e2: $10
    ld c, $0e                                     ; $75e3: $0e $0e
    dec hl                                        ; $75e5: $2b
    adc $24                                       ; $75e6: $ce $24
    nop                                           ; $75e8: $00
    db $ed                                        ; $75e9: $ed

jr_0cd_75ea:
    jr z, @+$10                                   ; $75ea: $28 $0e

    ld c, $31                                     ; $75ec: $0e $31
    nop                                           ; $75ee: $00
    dec e                                         ; $75ef: $1d
    ld [$0024], sp                                ; $75f0: $08 $24 $00
    ld c, $f8                                     ; $75f3: $0e $f8
    dec b                                         ; $75f5: $05
    ld sp, $0824                                  ; $75f6: $31 $24 $08
    ld de, $2439                                  ; $75f9: $11 $39 $24
    ld [$0038], sp                                ; $75fc: $08 $38 $00
    dec hl                                        ; $75ff: $2b
    rrca                                          ; $7600: $0f
    rrca                                          ; $7601: $0f
    ld de, $2f0e                                  ; $7602: $11 $0e $2f
    rrca                                          ; $7605: $0f
    ld [bc], a                                    ; $7606: $02
    nop                                           ; $7607: $00
    cpl                                           ; $7608: $2f
    rrca                                          ; $7609: $0f
    ld c, $09                                     ; $760a: $0e $09
    nop                                           ; $760c: $00
    ld h, c                                       ; $760d: $61
    rrca                                          ; $760e: $0f
    dec bc                                        ; $760f: $0b
    ld [$1004], sp                                ; $7610: $08 $04 $10
    ld c, $0e                                     ; $7613: $0e $0e
    rrca                                          ; $7615: $0f
    ld c, $0f                                     ; $7616: $0e $0f
    nop                                           ; $7618: $00
    ld a, a                                       ; $7619: $7f
    dec bc                                        ; $761a: $0b
    inc de                                        ; $761b: $13
    jr z, jr_0cd_7636                             ; $761c: $28 $18

    jr jr_0cd_7640                                ; $761e: $18 $20

    jr c, jr_0cd_764e                             ; $7620: $38 $2c

    ld [$1803], sp                                ; $7622: $08 $03 $18
    cp $08                                        ; $7625: $fe $08
    jr z, jr_0cd_7629                             ; $7627: $28 $00

jr_0cd_7629:
    rst $38                                       ; $7629: $ff
    dec b                                         ; $762a: $05
    ld de, $1831                                  ; $762b: $11 $31 $18
    db $10                                        ; $762e: $10
    add hl, hl                                    ; $762f: $29
    jr nz, @+$22                                  ; $7630: $20 $20

    ld [hl+], a                                   ; $7632: $22
    nop                                           ; $7633: $00
    jr nz, jr_0cd_765e                            ; $7634: $20 $28

jr_0cd_7636:
    inc h                                         ; $7636: $24
    jr nz, jr_0cd_764a                            ; $7637: $20 $11

    ld b, c                                       ; $7639: $41
    jr nz, jr_0cd_763c                            ; $763a: $20 $00

jr_0cd_763c:
    dec c                                         ; $763c: $0d
    nop                                           ; $763d: $00
    adc h                                         ; $763e: $8c
    nop                                           ; $763f: $00

jr_0cd_7640:
    nop                                           ; $7640: $00
    ld b, b                                       ; $7641: $40
    ld b, b                                       ; $7642: $40
    ld b, c                                       ; $7643: $41
    ld b, d                                       ; $7644: $42
    ld b, b                                       ; $7645: $40
    ld b, b                                       ; $7646: $40
    ld b, e                                       ; $7647: $43
    ld b, h                                       ; $7648: $44
    sbc h                                         ; $7649: $9c

jr_0cd_764a:
    rlca                                          ; $764a: $07
    db $10                                        ; $764b: $10
    ld b, l                                       ; $764c: $45
    ld b, [hl]                                    ; $764d: $46

jr_0cd_764e:
    rrca                                          ; $764e: $0f
    jr jr_0cd_7661                                ; $764f: $18 $10

    ld [$2011], sp                                ; $7651: $08 $11 $20
    ld c, b                                       ; $7654: $48
    ld b, b                                       ; $7655: $40
    ld [bc], a                                    ; $7656: $02
    ld c, c                                       ; $7657: $49
    ld c, d                                       ; $7658: $4a
    ld b, b                                       ; $7659: $40
    ld b, b                                       ; $765a: $40
    ld c, e                                       ; $765b: $4b
    ld c, h                                       ; $765c: $4c
    rlca                                          ; $765d: $07

jr_0cd_765e:
    db $10                                        ; $765e: $10
    ld c, l                                       ; $765f: $4d
    dec d                                         ; $7660: $15

jr_0cd_7661:
    ld c, [hl]                                    ; $7661: $4e
    ld b, b                                       ; $7662: $40
    ld c, b                                       ; $7663: $48
    rrca                                          ; $7664: $0f
    nop                                           ; $7665: $00
    ld c, a                                       ; $7666: $4f
    stop                                          ; $7667: $10 $00
    ld d, b                                       ; $7669: $50
    jr jr_0cd_766c                                ; $766a: $18 $00

jr_0cd_766c:
    ld a, d                                       ; $766c: $7a
    ld c, a                                       ; $766d: $4f
    ld de, $0108                                  ; $766e: $11 $08 $01
    ld c, b                                       ; $7671: $48
    scf                                           ; $7672: $37
    jr c, @+$59                                   ; $7673: $38 $57

    jr nc, jr_0cd_76b7                            ; $7675: $30 $40

    ld l, $00                                     ; $7677: $2e $00
    ld b, b                                       ; $7679: $40
    inc hl                                        ; $767a: $23
    ld b, b                                       ; $767b: $40
    ld d, b                                       ; $767c: $50
    ld [$4b18], sp                                ; $767d: $08 $18 $4b
    ld d, c                                       ; $7680: $51
    ld b, b                                       ; $7681: $40
    ld c, b                                       ; $7682: $48
    jr z, jr_0cd_76dc                             ; $7683: $28 $57

    jr jr_0cd_7704                                ; $7685: $18 $7d

    ld d, c                                       ; $7687: $51
    dec hl                                        ; $7688: $2b
    ld e, b                                       ; $7689: $58
    ld c, e                                       ; $768a: $4b
    add b                                         ; $768b: $80
    ld [hl], e                                    ; $768c: $73
    jr nz, @-$7c                                  ; $768d: $20 $82

    ld [$286b], sp                                ; $768f: $08 $6b $28
    ld c, b                                       ; $7692: $48
    ld d, l                                       ; $7693: $55
    ld [$92bf], sp                                ; $7694: $08 $bf $92
    nop                                           ; $7697: $00
    ld d, b                                       ; $7698: $50
    adc e                                         ; $7699: $8b
    ld [$1063], sp                                ; $769a: $08 $63 $10
    cp h                                          ; $769d: $bc
    ld b, b                                       ; $769e: $40
    add e                                         ; $769f: $83
    ld l, b                                       ; $76a0: $68
    jr c, jr_0cd_76b3                             ; $76a1: $38 $10

    ld [hl], h                                    ; $76a3: $74
    ld b, b                                       ; $76a4: $40
    rst $38                                       ; $76a5: $ff
    ld c, b                                       ; $76a6: $48
    ld [$4883], sp                                ; $76a7: $08 $83 $48
    sbc l                                         ; $76aa: $9d
    jr c, jr_0cd_7705                             ; $76ab: $38 $58

    db $10                                        ; $76ad: $10
    rst $08                                       ; $76ae: $cf
    ld c, b                                       ; $76af: $48
    ld l, b                                       ; $76b0: $68
    db $10                                        ; $76b1: $10
    sbc h                                         ; $76b2: $9c

jr_0cd_76b3:
    ret z                                         ; $76b3: $c8

    cpl                                           ; $76b4: $2f
    add hl, bc                                    ; $76b5: $09
    ret nz                                        ; $76b6: $c0

jr_0cd_76b7:
    sbc h                                         ; $76b7: $9c
    jr c, jr_0cd_76ee                             ; $76b8: $38 $34

    add hl, sp                                    ; $76ba: $39
    ld c, e                                       ; $76bb: $4b
    ld c, h                                       ; $76bc: $4c
    ld b, c                                       ; $76bd: $41
    ld b, d                                       ; $76be: $42
    ld c, c                                       ; $76bf: $49
    ld c, d                                       ; $76c0: $4a
    ccf                                           ; $76c1: $3f
    ld b, e                                       ; $76c2: $43
    ld b, h                                       ; $76c3: $44
    ld e, $19                                     ; $76c4: $1e $19
    adc d                                         ; $76c6: $8a
    ld c, b                                       ; $76c7: $48
    db $fd                                        ; $76c8: $fd
    ld d, b                                       ; $76c9: $50
    jp nc, $e200                                  ; $76ca: $d2 $00 $e2

    jr nz, jr_0cd_7733                            ; $76cd: $20 $64

jr_0cd_76cf:
    add hl, bc                                    ; $76cf: $09
    call nz, Call_000_10d6                        ; $76d0: $c4 $d6 $10
    adc [hl]                                      ; $76d3: $8e
    ld l, b                                       ; $76d4: $68
    ld c, c                                       ; $76d5: $49
    ld c, d                                       ; $76d6: $4a
    ld [$1001], sp                                ; $76d7: $08 $01 $10
    rrca                                          ; $76da: $0f
    rrca                                          ; $76db: $0f

jr_0cd_76dc:
    db $fc                                        ; $76dc: $fc
    inc bc                                        ; $76dd: $03
    ld [$3004], sp                                ; $76de: $08 $04 $30
    dec b                                         ; $76e1: $05
    jr jr_0cd_76e7                                ; $76e2: $18 $03

    ld b, b                                       ; $76e4: $40
    jr nz, jr_0cd_76cf                            ; $76e5: $20 $e8

jr_0cd_76e7:
    ld c, $b8                                     ; $76e7: $0e $b8
    add hl, bc                                    ; $76e9: $09
    add hl, bc                                    ; $76ea: $09
    ld [hl], a                                    ; $76eb: $77
    dec c                                         ; $76ec: $0d
    inc bc                                        ; $76ed: $03

jr_0cd_76ee:
    nop                                           ; $76ee: $00
    inc b                                         ; $76ef: $04
    jr nz, jr_0cd_76f4                            ; $76f0: $20 $02

    ld [hl], b                                    ; $76f2: $70
    dec c                                         ; $76f3: $0d

jr_0cd_76f4:
    dec de                                        ; $76f4: $1b
    jr nc, jr_0cd_7716                            ; $76f5: $30 $1f

    adc b                                         ; $76f7: $88
    inc e                                         ; $76f8: $1c
    ld c, b                                       ; $76f9: $48

jr_0cd_76fa:
    ret nc                                        ; $76fa: $d0

    ccf                                           ; $76fb: $3f
    ld h, b                                       ; $76fc: $60
    ld c, l                                       ; $76fd: $4d
    ld [$570d], sp                                ; $76fe: $08 $0d $57

jr_0cd_7701:
    ld [$0e0e], sp                                ; $7701: $08 $0e $0e

jr_0cd_7704:
    ld a, [bc]                                    ; $7704: $0a

jr_0cd_7705:
    ld a, [bc]                                    ; $7705: $0a
    ld a, a                                       ; $7706: $7f
    ld a, [bc]                                    ; $7707: $0a
    dec b                                         ; $7708: $05
    ld [$2004], sp                                ; $7709: $08 $04 $20
    db $10                                        ; $770c: $10
    db $10                                        ; $770d: $10
    inc bc                                        ; $770e: $03
    ld b, b                                       ; $770f: $40
    jr nz, jr_0cd_76fa                            ; $7710: $20 $e8

    ld a, $08                                     ; $7712: $3e $08
    inc b                                         ; $7714: $04
    ld b, b                                       ; $7715: $40

jr_0cd_7716:
    db $d3                                        ; $7716: $d3
    inc e                                         ; $7717: $1c
    adc b                                         ; $7718: $88
    inc bc                                        ; $7719: $03
    ret nc                                        ; $771a: $d0

    dec bc                                        ; $771b: $0b
    ld bc, $0c30                                  ; $771c: $01 $30 $0c
    inc c                                         ; $771f: $0c
    inc b                                         ; $7720: $04
    ld a, b                                       ; $7721: $78
    jr @-$56                                      ; $7722: $18 $a8

    ret nz                                        ; $7724: $c0

    inc l                                         ; $7725: $2c
    xor b                                         ; $7726: $a8
    ld b, $68                                     ; $7727: $06 $68
    inc c                                         ; $7729: $0c
    inc c                                         ; $772a: $0c
    jr nz, jr_0cd_772d                            ; $772b: $20 $00

jr_0cd_772d:
    rrca                                          ; $772d: $0f
    nop                                           ; $772e: $00
    ld d, $01                                     ; $772f: $16 $01
    ld b, c                                       ; $7731: $41
    ld b, b                                       ; $7732: $40

jr_0cd_7733:
    ld bc, $4110                                  ; $7733: $01 $10 $41
    ld b, d                                       ; $7736: $42
    ld b, d                                       ; $7737: $42
    ld b, d                                       ; $7738: $42
    ld b, c                                       ; $7739: $41
    dec bc                                        ; $773a: $0b
    jr jr_0cd_7701                                ; $773b: $18 $c4

    inc c                                         ; $773d: $0c
    ld d, b                                       ; $773e: $50
    ld e, $00                                     ; $773f: $1e $00
    ld b, e                                       ; $7741: $43
    ld b, h                                       ; $7742: $44
    ld b, l                                       ; $7743: $45
    rra                                           ; $7744: $1f
    nop                                           ; $7745: $00
    ld b, [hl]                                    ; $7746: $46
    ld b, a                                       ; $7747: $47
    ld h, h                                       ; $7748: $64
    ld c, b                                       ; $7749: $48
    ld hl, $0c00                                  ; $774a: $21 $00 $0c
    ld [hl], b                                    ; $774d: $70
    ld b, l                                       ; $774e: $45
    ld b, b                                       ; $774f: $40
    add hl, sp                                    ; $7750: $39
    nop                                           ; $7751: $00
    ld b, d                                       ; $7752: $42
    ld b, d                                       ; $7753: $42
    inc b                                         ; $7754: $04
    ld c, c                                       ; $7755: $49
    ld c, d                                       ; $7756: $4a
    ld c, e                                       ; $7757: $4b
    ld c, h                                       ; $7758: $4c
    ld c, l                                       ; $7759: $4d
    ld a, [bc]                                    ; $775a: $0a
    db $10                                        ; $775b: $10
    ld b, d                                       ; $775c: $42
    ld c, c                                       ; $775d: $49
    jr nz, jr_0cd_77a9                            ; $775e: $20 $49

    ld c, [hl]                                    ; $7760: $4e
    inc c                                         ; $7761: $0c
    jr nc, jr_0cd_77a6                            ; $7762: $30 $42

    ld b, [hl]                                    ; $7764: $46
    ld c, c                                       ; $7765: $49
    ld b, d                                       ; $7766: $42
    ld c, a                                       ; $7767: $4f
    nop                                           ; $7768: $00
    ld d, b                                       ; $7769: $50
    ld c, c                                       ; $776a: $49
    ld b, a                                       ; $776b: $47
    ld c, a                                       ; $776c: $4f
    ld c, h                                       ; $776d: $4c
    ld d, c                                       ; $776e: $51
    ld d, d                                       ; $776f: $52
    ld d, e                                       ; $7770: $53
    nop                                           ; $7771: $00
    ld d, h                                       ; $7772: $54
    ld b, d                                       ; $7773: $42
    ld d, b                                       ; $7774: $50
    ld c, a                                       ; $7775: $4f
    ld c, a                                       ; $7776: $4f
    ld c, c                                       ; $7777: $49
    ld b, a                                       ; $7778: $47
    ld c, h                                       ; $7779: $4c
    sub b                                         ; $777a: $90
    inc c                                         ; $777b: $0c
    db $10                                        ; $777c: $10
    ld c, c                                       ; $777d: $49
    ld d, b                                       ; $777e: $50
    jr jr_0cd_7799                                ; $777f: $18 $18

    ld c, h                                       ; $7781: $4c
    ld c, a                                       ; $7782: $4f
    ld d, l                                       ; $7783: $55
    ld c, h                                       ; $7784: $4c
    nop                                           ; $7785: $00
    ld c, h                                       ; $7786: $4c
    ld d, l                                       ; $7787: $55
    ld d, [hl]                                    ; $7788: $56
    ld d, d                                       ; $7789: $52
    ld d, a                                       ; $778a: $57
    ld e, b                                       ; $778b: $58
    ld e, c                                       ; $778c: $59
    ld e, d                                       ; $778d: $5a
    ret nz                                        ; $778e: $c0

    add hl, bc                                    ; $778f: $09
    nop                                           ; $7790: $00
    inc c                                         ; $7791: $0c
    ld [hl], b                                    ; $7792: $70
    ld d, l                                       ; $7793: $55
    ld d, l                                       ; $7794: $55
    ld e, c                                       ; $7795: $59
    ld e, e                                       ; $7796: $5b
    ld e, e                                       ; $7797: $5b
    ld e, c                                       ; $7798: $59

jr_0cd_7799:
    nop                                           ; $7799: $00
    ld e, h                                       ; $779a: $5c
    ld e, h                                       ; $779b: $5c
    ld e, l                                       ; $779c: $5d
    ld e, h                                       ; $779d: $5c
    ld e, [hl]                                    ; $779e: $5e
    ld c, h                                       ; $779f: $4c
    ld e, [hl]                                    ; $77a0: $5e
    ld e, h                                       ; $77a1: $5c
    sub c                                         ; $77a2: $91
    inc c                                         ; $77a3: $0c
    jr c, jr_0cd_77f2                             ; $77a4: $38 $4c

jr_0cd_77a6:
    ld e, [hl]                                    ; $77a6: $5e
    jr @+$1a                                      ; $77a7: $18 $18

jr_0cd_77a9:
    ld e, c                                       ; $77a9: $59
    ld e, c                                       ; $77aa: $59
    ld c, a                                       ; $77ab: $4f
    ld b, l                                       ; $77ac: $45
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    ld d, a                                       ; $77af: $57
    ld e, a                                       ; $77b0: $5f
    ld h, b                                       ; $77b1: $60
    ld h, b                                       ; $77b2: $60
    ld d, c                                       ; $77b3: $51
    ld c, h                                       ; $77b4: $4c
    ld h, b                                       ; $77b5: $60
    ld d, c                                       ; $77b6: $51
    xor h                                         ; $77b7: $ac
    inc c                                         ; $77b8: $0c
    db $10                                        ; $77b9: $10
    ld h, b                                       ; $77ba: $60
    add hl, bc                                    ; $77bb: $09
    nop                                           ; $77bc: $00
    ld c, h                                       ; $77bd: $4c
    ld e, c                                       ; $77be: $59
    nop                                           ; $77bf: $00
    jr jr_0cd_77d2                                ; $77c0: $18 $10

    ld c, h                                       ; $77c2: $4c
    ld c, a                                       ; $77c3: $4f
    ld hl, $6147                                  ; $77c4: $21 $47 $61
    ld l, e                                       ; $77c7: $6b
    nop                                           ; $77c8: $00
    ld c, d                                       ; $77c9: $4a
    ld c, h                                       ; $77ca: $4c
    ld c, h                                       ; $77cb: $4c
    ld c, d                                       ; $77cc: $4a
    ld [hl], d                                    ; $77cd: $72
    nop                                           ; $77ce: $00
    inc l                                         ; $77cf: $2c
    ld d, b                                       ; $77d0: $50
    ld b, [hl]                                    ; $77d1: $46

jr_0cd_77d2:
    dec b                                         ; $77d2: $05
    ld [$0c4f], sp                                ; $77d3: $08 $4f $0c
    ld [$2018], sp                                ; $77d6: $08 $18 $20
    ld c, a                                       ; $77d9: $4f
    ld b, [hl]                                    ; $77da: $46
    ld b, $5e                                     ; $77db: $06 $5e
    ld h, d                                       ; $77dd: $62
    ld h, e                                       ; $77de: $63
    ld b, [hl]                                    ; $77df: $46
    ld d, b                                       ; $77e0: $50
    sbc e                                         ; $77e1: $9b
    nop                                           ; $77e2: $00
    ld bc, $6401                                  ; $77e3: $01 $01 $64
    or b                                          ; $77e6: $b0
    inc c                                         ; $77e7: $0c
    jr jr_0cd_782c                                ; $77e8: $18 $42

    inc bc                                        ; $77ea: $03
    nop                                           ; $77eb: $00
    inc c                                         ; $77ec: $0c
    jr z, jr_0cd_7835                             ; $77ed: $28 $46

    ld c, h                                       ; $77ef: $4c
    ld e, c                                       ; $77f0: $59
    ld h, l                                       ; $77f1: $65

jr_0cd_77f2:
    db $10                                        ; $77f2: $10
    ld h, [hl]                                    ; $77f3: $66
    ld e, c                                       ; $77f4: $59
    ld h, a                                       ; $77f5: $67
    ld [de], a                                    ; $77f6: $12
    ld [$6846], sp                                ; $77f7: $08 $46 $68
    ld l, c                                       ; $77fa: $69
    ld d, a                                       ; $77fb: $57
    ret c                                         ; $77fc: $d8

    inc c                                         ; $77fd: $0c
    ld b, b                                       ; $77fe: $40
    jr jr_0cd_7811                                ; $77ff: $18 $10

    ld l, b                                       ; $7801: $68
    ld a, h                                       ; $7802: $7c
    nop                                           ; $7803: $00
    ld a, a                                       ; $7804: $7f
    ld [$6869], sp                                ; $7805: $08 $69 $68
    ld c, d                                       ; $7808: $4a
    rrca                                          ; $7809: $0f

Jump_0cd_780a:
    ld b, a                                       ; $780a: $47
    ld c, e                                       ; $780b: $4b
    ld d, c                                       ; $780c: $51
    ld h, b                                       ; $780d: $60
    ld [hl], a                                    ; $780e: $77
    nop                                           ; $780f: $00

Call_0cd_7810:
    inc c                                         ; $7810: $0c

jr_0cd_7811:
    jr nc, jr_0cd_782b                            ; $7811: $30 $18

    db $10                                        ; $7813: $10
    adc c                                         ; $7814: $89
    nop                                           ; $7815: $00
    jr jr_0cd_7882                                ; $7816: $18 $6a

    ld l, e                                       ; $7818: $6b
    ld l, h                                       ; $7819: $6c
    di                                            ; $781a: $f3
    nop                                           ; $781b: $00
    dec de                                        ; $781c: $1b
    nop                                           ; $781d: $00
    ld l, h                                       ; $781e: $6c
    ld l, e                                       ; $781f: $6b
    ld l, d                                       ; $7820: $6a
    ldh [$0c], a                                  ; $7821: $e0 $0c
    db $10                                        ; $7823: $10
    sbc [hl]                                      ; $7824: $9e
    ld [$280c], sp                                ; $7825: $08 $0c $28
    ld c, h                                       ; $7828: $4c
    ld l, h                                       ; $7829: $6c

jr_0cd_782a:
    ld l, l                                       ; $782a: $6d

jr_0cd_782b:
    ld l, [hl]                                    ; $782b: $6e

jr_0cd_782c:
    ld l, a                                       ; $782c: $6f
    db $10                                        ; $782d: $10
    ld [hl], b                                    ; $782e: $70
    ld l, l                                       ; $782f: $6d
    ld [hl], c                                    ; $7830: $71
    add hl, bc                                    ; $7831: $09
    jr @+$74                                      ; $7832: $18 $72

    ld [hl], d                                    ; $7834: $72

jr_0cd_7835:
    ld l, a                                       ; $7835: $6f
    ld l, [hl]                                    ; $7836: $6e
    inc [hl]                                      ; $7837: $34
    ld l, l                                       ; $7838: $6d
    ld [hl], e                                    ; $7839: $73
    inc c                                         ; $783a: $0c
    jr nz, @+$1a                                  ; $783b: $20 $18

    jr jr_0cd_78b3                                ; $783d: $18 $74

    sbc a                                         ; $783f: $9f
    add hl, de                                    ; $7840: $19
    ld [hl], l                                    ; $7841: $75
    ld [hl], l                                    ; $7842: $75
    sbc a                                         ; $7843: $9f
    sub b                                         ; $7844: $90
    ld sp, $4c74                                  ; $7845: $31 $74 $4c
    dec d                                         ; $7848: $15
    jr z, @+$1a                                   ; $7849: $28 $18

    ld [$39a7], sp                                ; $784b: $08 $a7 $39
    inc d                                         ; $784e: $14
    jr c, jr_0cd_7866                             ; $784f: $38 $15

    ld e, b                                       ; $7851: $58
    ld e, a                                       ; $7852: $5f
    ld [$3001], sp                                ; $7853: $08 $01 $30
    jr z, @+$0d                                   ; $7856: $28 $0b

    jr c, jr_0cd_7866                             ; $7858: $38 $0c

    ld d, b                                       ; $785a: $50

jr_0cd_785b:
    ld hl, $0cf8                                  ; $785b: $21 $f8 $0c
    cp b                                          ; $785e: $b8
    ld c, b                                       ; $785f: $48
    ld d, b                                       ; $7860: $50
    ld a, a                                       ; $7861: $7f
    jr z, jr_0cd_78c7                             ; $7862: $28 $63

    ld b, b                                       ; $7864: $40
    ld l, l                                       ; $7865: $6d

jr_0cd_7866:
    ld e, b                                       ; $7866: $58
    jr @+$4a                                      ; $7867: $18 $48

    inc c                                         ; $7869: $0c
    ld d, b                                       ; $786a: $50
    inc sp                                        ; $786b: $33
    ld [$2898], sp                                ; $786c: $08 $98 $28
    inc c                                         ; $786f: $0c
    ld c, b                                       ; $7870: $48
    pop bc                                        ; $7871: $c1
    ld a, [de]                                    ; $7872: $1a
    jr jr_0cd_782a                                ; $7873: $18 $b5

    ld [$6848], sp                                ; $7875: $08 $48 $68
    ld [$4808], sp                                ; $7878: $08 $08 $48
    cp l                                          ; $787b: $bd
    nop                                           ; $787c: $00
    ld a, h                                       ; $787d: $7c
    ld l, b                                       ; $787e: $68
    inc bc                                        ; $787f: $03
    nop                                           ; $7880: $00
    inc c                                         ; $7881: $0c

jr_0cd_7882:
    jr c, jr_0cd_7898                             ; $7882: $38 $14

    nop                                           ; $7884: $00
    jr jr_0cd_789f                                ; $7885: $18 $18

    dec de                                        ; $7887: $1b
    nop                                           ; $7888: $00
    ld l, b                                       ; $7889: $68
    ld c, b                                       ; $788a: $48
    ld l, b                                       ; $788b: $68
    ld c, b                                       ; $788c: $48
    ld b, $08                                     ; $788d: $06 $08
    rlca                                          ; $788f: $07
    nop                                           ; $7890: $00
    jr z, @+$25                                   ; $7891: $28 $23

    nop                                           ; $7893: $00
    ld c, b                                       ; $7894: $48
    ld l, b                                       ; $7895: $68
    ld c, b                                       ; $7896: $48

jr_0cd_7897:
    rst $18                                       ; $7897: $df

jr_0cd_7898:
    inc c                                         ; $7898: $0c
    db $10                                        ; $7899: $10
    jr jr_0cd_78b4                                ; $789a: $18 $18

    ld c, b                                       ; $789c: $48
    or $20                                        ; $789d: $f6 $20

jr_0cd_789f:
    dec d                                         ; $789f: $15
    nop                                           ; $78a0: $00
    ld [bc], a                                    ; $78a1: $02
    add hl, sp                                    ; $78a2: $39
    ccf                                           ; $78a3: $3f
    ld [$310e], sp                                ; $78a4: $08 $0e $31
    rst $30                                       ; $78a7: $f7
    ld e, a                                       ; $78a8: $5f
    nop                                           ; $78a9: $00
    db $10                                        ; $78aa: $10
    db $10                                        ; $78ab: $10
    inc c                                         ; $78ac: $0c
    xor b                                         ; $78ad: $a8
    ld h, h                                       ; $78ae: $64
    db $10                                        ; $78af: $10
    jr z, jr_0cd_785b                             ; $78b0: $28 $a9

    nop                                           ; $78b2: $00

jr_0cd_78b3:
    add [hl]                                      ; $78b3: $86

jr_0cd_78b4:
    ld [$400c], sp                                ; $78b4: $08 $0c $40
    rst $38                                       ; $78b7: $ff
    ld a, h                                       ; $78b8: $7c
    db $10                                        ; $78b9: $10
    ld a, [hl-]                                   ; $78ba: $3a
    jr z, jr_0cd_791b                             ; $78bb: $28 $5e

    ld [$1024], sp                                ; $78bd: $08 $24 $10
    ld h, a                                       ; $78c0: $67
    add hl, bc                                    ; $78c1: $09
    or c                                          ; $78c2: $b1
    nop                                           ; $78c3: $00
    inc c                                         ; $78c4: $0c
    jr z, jr_0cd_7897                             ; $78c5: $28 $d0

jr_0cd_78c7:
    ld b, b                                       ; $78c7: $40
    ldh a, [rNR42]                                ; $78c8: $f0 $21
    ld b, c                                       ; $78ca: $41
    ld a, l                                       ; $78cb: $7d
    add c                                         ; $78cc: $81
    add hl, sp                                    ; $78cd: $39
    sbc c                                         ; $78ce: $99
    and a                                         ; $78cf: $a7
    ld sp, hl                                     ; $78d0: $f9
    ld [$2008], sp                                ; $78d1: $08 $08 $20
    nop                                           ; $78d4: $00
    ld c, $00                                     ; $78d5: $0e $00
    adc e                                         ; $78d7: $8b
    nop                                           ; $78d8: $00
    inc b                                         ; $78d9: $04
    ld b, b                                       ; $78da: $40
    ld b, c                                       ; $78db: $41
    ld b, c                                       ; $78dc: $41
    ld b, d                                       ; $78dd: $42
    ld b, e                                       ; $78de: $43
    ld bc, $4418                                  ; $78df: $01 $18 $44
    ld b, l                                       ; $78e2: $45
    add b                                         ; $78e3: $80
    ld bc, $4620                                  ; $78e4: $01 $20 $46
    ld b, a                                       ; $78e7: $47
    ld b, a                                       ; $78e8: $47
    ld b, a                                       ; $78e9: $47
    ld c, b                                       ; $78ea: $48
    ld c, c                                       ; $78eb: $49
    ld c, d                                       ; $78ec: $4a
    ld a, e                                       ; $78ed: $7b
    ld c, e                                       ; $78ee: $4b
    db $10                                        ; $78ef: $10
    ld [$000b], sp                                ; $78f0: $08 $0b $00
    inc c                                         ; $78f3: $0c
    db $10                                        ; $78f4: $10
    inc de                                        ; $78f5: $13
    nop                                           ; $78f6: $00
    ld b, [hl]                                    ; $78f7: $46
    jr nz, @+$0a                                  ; $78f8: $20 $08

    jr nc, jr_0cd_7904                            ; $78fa: $30 $08

    ld a, a                                       ; $78fc: $7f
    ld b, h                                       ; $78fd: $44
    ld sp, $3020                                  ; $78fe: $31 $20 $30
    ld [$283c], sp                                ; $7901: $08 $3c $28

jr_0cd_7904:
    ld c, b                                       ; $7904: $48
    ld [$483c], sp                                ; $7905: $08 $3c $48
    jr c, jr_0cd_7912                             ; $7908: $38 $08

    ld e, h                                       ; $790a: $5c
    ld [$3c86], sp                                ; $790b: $08 $86 $3c
    xor b                                         ; $790e: $a8
    ld b, d                                       ; $790f: $42
    ld b, c                                       ; $7910: $41
    ld b, c                                       ; $7911: $41

jr_0cd_7912:
    ld b, b                                       ; $7912: $40
    ld e, h                                       ; $7913: $5c
    ld [$007c], sp                                ; $7914: $08 $7c $00
    ld c, h                                       ; $7917: $4c
    xor $3c                                       ; $7918: $ee $3c
    xor b                                         ; $791a: $a8

jr_0cd_791b:
    sbc b                                         ; $791b: $98
    ld [$8078], sp                                ; $791c: $08 $78 $80
    ld c, h                                       ; $791f: $4c
    inc a                                         ; $7920: $3c
    ld [$28a4], sp                                ; $7921: $08 $a4 $28
    ld a, b                                       ; $7924: $78
    add b                                         ; $7925: $80
    ld c, l                                       ; $7926: $4d
    xor $a4                                       ; $7927: $ee $a4
    ld b, b                                       ; $7929: $40
    call nc, Call_0cd_7810                        ; $792a: $d4 $10 $78
    ld l, b                                       ; $792d: $68
    ld c, l                                       ; $792e: $4d
    call nc, VBlankInterrupt                      ; $792f: $d4 $40 $00
    add hl, bc                                    ; $7932: $09
    or h                                          ; $7933: $b4
    ld l, b                                       ; $7934: $68
    ld c, h                                       ; $7935: $4c
    rst $38                                       ; $7936: $ff
    ld de, $1c21                                  ; $7937: $11 $21 $1c
    jr z, @-$0e                                   ; $793a: $28 $f0

    jr z, @+$2e                                   ; $793c: $28 $2c

    add hl, bc                                    ; $793e: $09
    db $10                                        ; $793f: $10
    ld b, c                                       ; $7940: $41
    ldh [rNR10], a                                ; $7941: $e0 $10
    inc c                                         ; $7943: $0c
    add hl, bc                                    ; $7944: $09
    inc l                                         ; $7945: $2c
    ld bc, $4e68                                  ; $7946: $01 $68 $4e
    jr z, jr_0cd_7954                             ; $7949: $28 $09

    inc l                                         ; $794b: $2c
    add hl, bc                                    ; $794c: $09
    ld c, a                                       ; $794d: $4f
    ld c, l                                       ; $794e: $4d
    ld hl, $5150                                  ; $794f: $21 $50 $51
    ld d, d                                       ; $7952: $52
    ld l, a                                       ; $7953: $6f

jr_0cd_7954:
    ld d, e                                       ; $7954: $53
    ld c, b                                       ; $7955: $48
    add hl, hl                                    ; $7956: $29
    ld h, b                                       ; $7957: $60
    ld bc, $684f                                  ; $7958: $01 $4f $68
    add hl, bc                                    ; $795b: $09
    inc e                                         ; $795c: $1c
    ld [$291c], sp                                ; $795d: $08 $1c $29
    add h                                         ; $7960: $84
    ld [$d0df], sp                                ; $7961: $08 $df $d0
    jr z, @+$3e                                   ; $7964: $28 $3c

    jr z, jr_0cd_79b6                             ; $7966: $28 $4e

    inc l                                         ; $7968: $2c
    jr jr_0cd_7987                                ; $7969: $18 $1c

    ld de, $0884                                  ; $796b: $11 $84 $08
    ret nc                                        ; $796e: $d0

    ld c, b                                       ; $796f: $48
    and h                                         ; $7970: $a4
    ld hl, $10ad                                  ; $7971: $21 $ad $10
    add hl, bc                                    ; $7974: $09
    ld b, a                                       ; $7975: $47
    xor b                                         ; $7976: $a8
    add hl, bc                                    ; $7977: $09
    ld d, h                                       ; $7978: $54
    ld bc, $b800                                  ; $7979: $01 $00 $b8
    add hl, bc                                    ; $797c: $09
    ld [$2001], sp                                ; $797d: $08 $01 $20
    jr @+$6a                                      ; $7980: $18 $68

    ld l, b                                       ; $7982: $68
    ld l, b                                       ; $7983: $68
    dec bc                                        ; $7984: $0b
    jr z, jr_0cd_798f                             ; $7985: $28 $08

jr_0cd_7987:
    sub b                                         ; $7987: $90
    ld c, b                                       ; $7988: $48
    ld c, b                                       ; $7989: $48
    ld c, b                                       ; $798a: $48
    db $fd                                        ; $798b: $fd
    ld hl, $2a30                                  ; $798c: $21 $30 $2a

jr_0cd_798f:
    ld [$0030], sp                                ; $798f: $08 $30 $00
    db $10                                        ; $7992: $10
    jr c, jr_0cd_79d1                             ; $7993: $38 $3c

    nop                                           ; $7995: $00
    jr nz, jr_0cd_7998                            ; $7996: $20 $00

jr_0cd_7998:
    ld c, b                                       ; $7998: $48
    ld b, c                                       ; $7999: $41
    ld c, b                                       ; $799a: $48
    rst $38                                       ; $799b: $ff
    jr nz, @+$4a                                  ; $799c: $20 $48

    inc a                                         ; $799e: $3c
    adc b                                         ; $799f: $88
    ld b, b                                       ; $79a0: $40
    jr z, @+$3e                                   ; $79a1: $28 $3c

    ld hl, sp+$78                                 ; $79a3: $f8 $78
    ld [hl], b                                    ; $79a5: $70
    ld e, h                                       ; $79a6: $5c
    ld l, b                                       ; $79a7: $68
    ld a, b                                       ; $79a8: $78
    ld l, b                                       ; $79a9: $68
    inc l                                         ; $79aa: $2c
    ld d, b                                       ; $79ab: $50
    rst $38                                       ; $79ac: $ff
    ld a, b                                       ; $79ad: $78
    adc b                                         ; $79ae: $88
    xor c                                         ; $79af: $a9
    jr z, @-$2a                                   ; $79b0: $28 $d4

    ld c, b                                       ; $79b2: $48
    or h                                          ; $79b3: $b4
    ld c, b                                       ; $79b4: $48
    ret                                           ; $79b5: $c9


jr_0cd_79b6:
    ld [$1028], sp                                ; $79b6: $08 $28 $10
    call nc, $f020                                ; $79b9: $d4 $20 $f0
    ld l, b                                       ; $79bc: $68
    rst $38                                       ; $79bd: $ff
    ldh [rOBP0], a                                ; $79be: $e0 $48
    ld [hl], $29                                  ; $79c0: $36 $29
    db $10                                        ; $79c2: $10
    ld h, c                                       ; $79c3: $61
    ld e, b                                       ; $79c4: $58
    sub b                                         ; $79c5: $90
    inc e                                         ; $79c6: $1c
    ld c, c                                       ; $79c7: $49
    ld h, h                                       ; $79c8: $64
    db $10                                        ; $79c9: $10
    ret nc                                        ; $79ca: $d0

    ld h, b                                       ; $79cb: $60
    and h                                         ; $79cc: $a4
    adc b                                         ; $79cd: $88
    ldh [$c4], a                                  ; $79ce: $e0 $c4
    ld d, b                                       ; $79d0: $50

jr_0cd_79d1:
    jr c, @+$43                                   ; $79d1: $38 $41

    ld h, h                                       ; $79d3: $64
    add hl, hl                                    ; $79d4: $29

    db $20, $00, $0d, $00, $cc, $00, $0e, $40, $41, $42, $41, $01, $48, $10, $28, $18
    db $28, $43, $00, $44, $45, $41, $46, $47, $48, $41, $49, $00, $4a, $4b, $41, $4c
    db $4d, $4e, $41, $4f, $02, $50, $45, $41, $51, $52, $53, $08, $30, $54, $46, $55
    db $3f, $18, $56, $56, $41, $0c, $10, $10, $08, $57, $20, $58, $59, $08, $30, $41
    db $41, $5a, $5b, $41, $01, $41, $5c, $5d, $41, $41, $5e, $5f, $0c, $18, $cc, $10
    db $08, $0c, $08, $60, $61, $1c, $18, $02, $d8, $62, $41, $09, $63, $64, $65, $66
    db $04, $30, $67, $68, $0c, $50, $30, $69, $6a, $40, $e8, $7a, $10, $5e, $41, $41
    db $5b, $58, $5a, $04, $18, $5f, $7a, $40, $9a, $08, $6b, $41, $41, $02, $6c, $6d
    db $41, $41, $6e, $6f, $08, $18, $70, $60, $71, $10, $38, $18, $09, $6b, $72, $41
    db $41, $73, $04, $74, $41, $41, $75, $76, $08, $18, $77, $78, $82, $10, $38, $79
    db $7a, $41, $41, $7b, $c0, $e8, $66, $00, $65, $64, $63, $41, $62, $6a, $69, $66
    db $1d, $68, $67, $63, $0c, $08, $04, $68, $00, $e9, $09, $01, $c0, $17, $0f, $0f
    db $0f, $04, $00, $09, $05, $08, $0b, $10, $0d, $10, $f3, $0e, $18, $18, $08, $21
    db $08, $3f, $00, $0c, $0c, $30, $48, $39, $20, $85, $10, $40, $0c, $0c, $0a, $0a
    db $24, $08, $0c, $01, $18, $ed, $08, $28, $0f, $28, $01, $e0, $0e, $01, $e0, $c0
    db $20, $0d, $01, $00, $b9, $cb, $10, $0b, $04, $20, $d8, $28, $19, $08, $0d, $2d
    db $03, $00, $e1, $04, $28, $11, $10, $05, $28, $09, $09, $0a, $0a, $03, $08, $f7
    db $04, $28, $aa, $00, $08, $28, $4f, $18, $2a, $1c, $00, $bd, $18, $c9, $10, $78
    db $09, $cc, $00, $d1, $30, $38, $10, $c0, $d8, $08, $08, $28, $f0, $01, $00, $05
    db $10, $04, $a0, $00, $e9

    inc d                                         ; $7b0a: $14
    nop                                           ; $7b0b: $00
    jr nz, jr_0cd_7b0e                            ; $7b0c: $20 $00

jr_0cd_7b0e:
    cp [hl]                                       ; $7b0e: $be
    ld bc, $406d                                  ; $7b0f: $01 $6d $40
    ld bc, $23f8                                  ; $7b12: $01 $f8 $23
    or b                                          ; $7b15: $b0
    ld b, c                                       ; $7b16: $41
    ld bc, $23f8                                  ; $7b17: $01 $f8 $23
    jr z, jr_0cd_7b5e                             ; $7b1a: $28 $42

    ld b, $40                                     ; $7b1c: $06 $40
    add h                                         ; $7b1e: $84
    scf                                           ; $7b1f: $37
    db $10                                        ; $7b20: $10
    ld b, e                                       ; $7b21: $43
    ld b, e                                       ; $7b22: $43
    ld b, e                                       ; $7b23: $43
    ld b, h                                       ; $7b24: $44
    inc b                                         ; $7b25: $04
    nop                                           ; $7b26: $00
    ld b, e                                       ; $7b27: $43
    ld b, e                                       ; $7b28: $43
    ld l, e                                       ; $7b29: $6b
    ld b, l                                       ; $7b2a: $45
    ld b, $10                                     ; $7b2b: $06 $10
    dec b                                         ; $7b2d: $05
    jr z, jr_0cd_7b76                             ; $7b2e: $28 $46

    ld b, $20                                     ; $7b30: $06 $20
    ld b, d                                       ; $7b32: $42
    inc e                                         ; $7b33: $1c
    ld [$2005], sp                                ; $7b34: $08 $05 $20
    ld b, h                                       ; $7b37: $44
    ld b, a                                       ; $7b38: $47
    ld a, [bc]                                    ; $7b39: $0a
    db $10                                        ; $7b3a: $10
    ld b, [hl]                                    ; $7b3b: $46
    ld b, e                                       ; $7b3c: $43
    ld c, b                                       ; $7b3d: $48
    ld hl, $4128                                  ; $7b3e: $21 $28 $41
    ld b, [hl]                                    ; $7b41: $46
    inc e                                         ; $7b42: $1c
    ld b, c                                       ; $7b43: $41
    ld c, c                                       ; $7b44: $49
    ld b, c                                       ; $7b45: $41
    dec b                                         ; $7b46: $05
    nop                                           ; $7b47: $00
    add b                                         ; $7b48: $80
    nop                                           ; $7b49: $00
    dec b                                         ; $7b4a: $05
    nop                                           ; $7b4b: $00
    ld b, d                                       ; $7b4c: $42
    ld b, c                                       ; $7b4d: $41
    ld b, e                                       ; $7b4e: $43
    ld b, a                                       ; $7b4f: $47
    adc c                                         ; $7b50: $89
    ld [$4147], sp                                ; $7b51: $08 $47 $41
    ld c, d                                       ; $7b54: $4a
    ld c, e                                       ; $7b55: $4b
    ld a, [bc]                                    ; $7b56: $0a
    jr jr_0cd_7b75                                ; $7b57: $18 $1c

    db $10                                        ; $7b59: $10
    ld d, a                                       ; $7b5a: $57
    ld c, h                                       ; $7b5b: $4c
    ld e, $18                                     ; $7b5c: $1e $18

jr_0cd_7b5e:
    ld c, l                                       ; $7b5e: $4d
    rrca                                          ; $7b5f: $0f
    nop                                           ; $7b60: $00
    ld c, e                                       ; $7b61: $4b
    xor b                                         ; $7b62: $a8
    nop                                           ; $7b63: $00
    ld [$2300], sp                                ; $7b64: $08 $00 $23
    ld [$8881], sp                                ; $7b67: $08 $81 $88
    nop                                           ; $7b6a: $00
    ld b, [hl]                                    ; $7b6b: $46
    ld b, d                                       ; $7b6c: $42
    ld c, h                                       ; $7b6d: $4c
    ld b, d                                       ; $7b6e: $42
    ld b, c                                       ; $7b6f: $41
    ld c, d                                       ; $7b70: $4a
    sub d                                         ; $7b71: $92
    ld [$05c3], sp                                ; $7b72: $08 $c3 $05

jr_0cd_7b75:
    nop                                           ; $7b75: $00

jr_0cd_7b76:
    dec l                                         ; $7b76: $2d
    jr nz, jr_0cd_7bba                            ; $7b77: $20 $41

    ld c, [hl]                                    ; $7b79: $4e
    ld c, a                                       ; $7b7a: $4f
    ld d, b                                       ; $7b7b: $50
    dec hl                                        ; $7b7c: $2b
    ld [$1030], sp                                ; $7b7d: $08 $30 $10
    push bc                                       ; $7b80: $c5
    ld e, $00                                     ; $7b81: $1e $00
    dec c                                         ; $7b83: $0d
    db $10                                        ; $7b84: $10
    ld d, c                                       ; $7b85: $51
    ld d, d                                       ; $7b86: $52
    ld d, e                                       ; $7b87: $53
    ld h, a                                       ; $7b88: $67
    ld [$4b4d], sp                                ; $7b89: $08 $4d $4b
    ld [$4610], sp                                ; $7b8c: $08 $10 $46
    ld b, c                                       ; $7b8f: $41
    ld c, a                                       ; $7b90: $4f
    dec c                                         ; $7b91: $0d
    ld [$5554], sp                                ; $7b92: $08 $54 $55
    ld d, [hl]                                    ; $7b95: $56
    ld d, a                                       ; $7b96: $57
    ld e, b                                       ; $7b97: $58
    ld d, h                                       ; $7b98: $54
    rrca                                          ; $7b99: $0f
    ld [$3054], sp                                ; $7b9a: $08 $54 $30
    nop                                           ; $7b9d: $00
    add l                                         ; $7b9e: $85
    nop                                           ; $7b9f: $00
    ld d, a                                       ; $7ba0: $57
    ld b, c                                       ; $7ba1: $41
    ld b, a                                       ; $7ba2: $47
    nop                                           ; $7ba3: $00
    ld b, d                                       ; $7ba4: $42
    ld e, b                                       ; $7ba5: $58
    ld e, c                                       ; $7ba6: $59
    ld e, d                                       ; $7ba7: $5a
    ld e, e                                       ; $7ba8: $5b
    ld e, b                                       ; $7ba9: $58
    ld c, a                                       ; $7baa: $4f
    ld c, [hl]                                    ; $7bab: $4e
    jr nc, jr_0cd_7bef                            ; $7bac: $30 $41

    ld b, d                                       ; $7bae: $42
    jr nc, jr_0cd_7bb9                            ; $7baf: $30 $08

    add hl, de                                    ; $7bb1: $19
    db $10                                        ; $7bb2: $10
    ld c, l                                       ; $7bb3: $4d
    ld c, b                                       ; $7bb4: $48
    ld e, h                                       ; $7bb5: $5c
    ld e, l                                       ; $7bb6: $5d
    nop                                           ; $7bb7: $00
    ld d, [hl]                                    ; $7bb8: $56

jr_0cd_7bb9:
    ld e, [hl]                                    ; $7bb9: $5e

jr_0cd_7bba:
    ld e, h                                       ; $7bba: $5c
    ld d, d                                       ; $7bbb: $52
    ld d, c                                       ; $7bbc: $51
    ld c, b                                       ; $7bbd: $48
    ld c, [hl]                                    ; $7bbe: $4e
    ld e, h                                       ; $7bbf: $5c
    nop                                           ; $7bc0: $00
    ld c, d                                       ; $7bc1: $4a
    ld d, c                                       ; $7bc2: $51
    ld c, b                                       ; $7bc3: $48
    ld d, b                                       ; $7bc4: $50
    ld d, c                                       ; $7bc5: $51
    ld e, c                                       ; $7bc6: $59
    ld e, a                                       ; $7bc7: $5f
    ld d, h                                       ; $7bc8: $54
    nop                                           ; $7bc9: $00
    ld b, [hl]                                    ; $7bca: $46
    ld h, b                                       ; $7bcb: $60
    ld e, [hl]                                    ; $7bcc: $5e
    ld d, d                                       ; $7bcd: $52
    ld h, c                                       ; $7bce: $61
    ld h, d                                       ; $7bcf: $62
    ld h, e                                       ; $7bd0: $63
    ld e, l                                       ; $7bd1: $5d
    nop                                           ; $7bd2: $00
    ld h, e                                       ; $7bd3: $63
    ld h, b                                       ; $7bd4: $60
    ld e, h                                       ; $7bd5: $5c
    ld h, c                                       ; $7bd6: $61
    ld h, h                                       ; $7bd7: $64
    ld d, l                                       ; $7bd8: $55
    ld h, b                                       ; $7bd9: $60
    ld e, e                                       ; $7bda: $5b
    nop                                           ; $7bdb: $00
    ld e, h                                       ; $7bdc: $5c
    ld e, l                                       ; $7bdd: $5d
    ld h, c                                       ; $7bde: $61
    ld d, c                                       ; $7bdf: $51
    ld b, d                                       ; $7be0: $42
    ld h, l                                       ; $7be1: $65
    ld h, d                                       ; $7be2: $62
    ld e, l                                       ; $7be3: $5d
    nop                                           ; $7be4: $00
    ld h, [hl]                                    ; $7be5: $66
    ld h, a                                       ; $7be6: $67
    ld h, a                                       ; $7be7: $67
    ld d, d                                       ; $7be8: $52
    ld h, a                                       ; $7be9: $67
    ld h, l                                       ; $7bea: $65
    ld l, b                                       ; $7beb: $68
    ld e, l                                       ; $7bec: $5d
    nop                                           ; $7bed: $00
    ld h, h                                       ; $7bee: $64

jr_0cd_7bef:
    ld h, h                                       ; $7bef: $64
    ld h, e                                       ; $7bf0: $63
    ld h, e                                       ; $7bf1: $63
    ld h, c                                       ; $7bf2: $61
    ld d, d                                       ; $7bf3: $52
    ld h, a                                       ; $7bf4: $67
    ld e, h                                       ; $7bf5: $5c
    nop                                           ; $7bf6: $00
    ld c, b                                       ; $7bf7: $48
    ld h, c                                       ; $7bf8: $61
    ld h, h                                       ; $7bf9: $64
    ld d, [hl]                                    ; $7bfa: $56
    ld h, [hl]                                    ; $7bfb: $66
    ld h, [hl]                                    ; $7bfc: $66
    ld h, a                                       ; $7bfd: $67
    ld e, l                                       ; $7bfe: $5d
    nop                                           ; $7bff: $00
    ld l, b                                       ; $7c00: $68
    ld h, h                                       ; $7c01: $64
    ld h, c                                       ; $7c02: $61
    ld h, [hl]                                    ; $7c03: $66
    ld h, c                                       ; $7c04: $61
    ld h, e                                       ; $7c05: $63
    ld h, a                                       ; $7c06: $67
    ld h, c                                       ; $7c07: $61
    nop                                           ; $7c08: $00
    ld h, c                                       ; $7c09: $61
    ld e, l                                       ; $7c0a: $5d
    ld h, [hl]                                    ; $7c0b: $66
    ld h, h                                       ; $7c0c: $64
    ld h, b                                       ; $7c0d: $60
    ld l, c                                       ; $7c0e: $69
    ld h, [hl]                                    ; $7c0f: $66
    ld l, d                                       ; $7c10: $6a
    db $10                                        ; $7c11: $10
    ld h, [hl]                                    ; $7c12: $66
    ld l, e                                       ; $7c13: $6b
    ld h, [hl]                                    ; $7c14: $66
    ld [de], a                                    ; $7c15: $12
    ld [$686b], sp                                ; $7c16: $08 $6b $68
    ld h, h                                       ; $7c19: $64
    ld h, h                                       ; $7c1a: $64
    ld b, b                                       ; $7c1b: $40
    ld h, c                                       ; $7c1c: $61
    dec c                                         ; $7c1d: $0d
    nop                                           ; $7c1e: $00
    ld l, h                                       ; $7c1f: $6c
    ld h, [hl]                                    ; $7c20: $66
    ld l, l                                       ; $7c21: $6d
    ld l, c                                       ; $7c22: $69
    ld l, h                                       ; $7c23: $6c
    ld l, [hl]                                    ; $7c24: $6e
    nop                                           ; $7c25: $00
    ld l, a                                       ; $7c26: $6f
    ld l, h                                       ; $7c27: $6c
    ld h, [hl]                                    ; $7c28: $66
    ld h, [hl]                                    ; $7c29: $66
    ld l, c                                       ; $7c2a: $69
    ld l, d                                       ; $7c2b: $6a
    ld l, [hl]                                    ; $7c2c: $6e
    ld h, [hl]                                    ; $7c2d: $66
    db $10                                        ; $7c2e: $10
    ld l, h                                       ; $7c2f: $6c
    ld h, [hl]                                    ; $7c30: $66
    ld l, d                                       ; $7c31: $6a
    dec c                                         ; $7c32: $0d
    nop                                           ; $7c33: $00
    ld l, a                                       ; $7c34: $6f
    ld l, c                                       ; $7c35: $69
    ld l, [hl]                                    ; $7c36: $6e
    ld l, a                                       ; $7c37: $6f
    ld [$7170], sp                                ; $7c38: $08 $70 $71
    ld [hl], d                                    ; $7c3b: $72
    ld l, a                                       ; $7c3c: $6f
    add hl, de                                    ; $7c3d: $19
    nop                                           ; $7c3e: $00
    ld [hl], c                                    ; $7c3f: $71
    ld l, a                                       ; $7c40: $6f
    ld l, e                                       ; $7c41: $6b
    nop                                           ; $7c42: $00
    ld l, h                                       ; $7c43: $6c
    ld l, [hl]                                    ; $7c44: $6e
    ld [hl], b                                    ; $7c45: $70
    ld l, a                                       ; $7c46: $6f
    ld [hl], c                                    ; $7c47: $71
    ld [hl], d                                    ; $7c48: $72
    ld [hl], b                                    ; $7c49: $70
    ld l, a                                       ; $7c4a: $6f
    ld [bc], a                                    ; $7c4b: $02
    ld [hl], e                                    ; $7c4c: $73
    ld [hl], d                                    ; $7c4d: $72
    ld [hl], h                                    ; $7c4e: $74
    ld [hl], e                                    ; $7c4f: $73
    ld [hl], h                                    ; $7c50: $74
    ld [hl], b                                    ; $7c51: $70
    add hl, de                                    ; $7c52: $19
    nop                                           ; $7c53: $00
    ld [hl], l                                    ; $7c54: $75
    nop                                           ; $7c55: $00
    ld [hl], d                                    ; $7c56: $72
    ld l, a                                       ; $7c57: $6f
    ld [hl], b                                    ; $7c58: $70
    ld [hl], l                                    ; $7c59: $75
    ld [hl], h                                    ; $7c5a: $74
    ld [hl], d                                    ; $7c5b: $72
    ld [hl], e                                    ; $7c5c: $73
    ld [hl], h                                    ; $7c5d: $74
    nop                                           ; $7c5e: $00
    ld [hl], h                                    ; $7c5f: $74
    ld [hl], d                                    ; $7c60: $72
    ld [hl], l                                    ; $7c61: $75
    ld [hl], h                                    ; $7c62: $74
    halt                                          ; $7c63: $76
    ld [hl], a                                    ; $7c64: $77
    ld a, b                                       ; $7c65: $78
    ld [hl], h                                    ; $7c66: $74
    add b                                         ; $7c67: $80
    add hl, de                                    ; $7c68: $19
    nop                                           ; $7c69: $00
    ld a, b                                       ; $7c6a: $78
    ld [hl], h                                    ; $7c6b: $74
    ld a, c                                       ; $7c6c: $79
    ld [hl], b                                    ; $7c6d: $70
    ld a, b                                       ; $7c6e: $78
    halt                                          ; $7c6f: $76
    ld [hl], h                                    ; $7c70: $74
    ld b, b                                       ; $7c71: $40
    ld [hl], a                                    ; $7c72: $77
    inc b                                         ; $7c73: $04
    nop                                           ; $7c74: $00
    ld a, d                                       ; $7c75: $7a
    ld a, b                                       ; $7c76: $78
    ld b, c                                       ; $7c77: $41
    ld a, e                                       ; $7c78: $7b
    ld a, h                                       ; $7c79: $7c
    halt                                          ; $7c7a: $76
    add b                                         ; $7c7b: $80
    add hl, de                                    ; $7c7c: $19
    nop                                           ; $7c7d: $00
    ld e, a                                       ; $7c7e: $5f
    ld a, b                                       ; $7c7f: $78
    ld b, c                                       ; $7c80: $41
    ld [hl], h                                    ; $7c81: $74
    ld e, a                                       ; $7c82: $5f
    ld b, c                                       ; $7c83: $41
    ld a, b                                       ; $7c84: $78
    nop                                           ; $7c85: $00
    ld a, e                                       ; $7c86: $7b
    ld a, h                                       ; $7c87: $7c
    ld b, c                                       ; $7c88: $41
    ld a, b                                       ; $7c89: $78
    ld e, a                                       ; $7c8a: $5f
    ld a, h                                       ; $7c8b: $7c
    ld b, c                                       ; $7c8c: $41
    ld a, l                                       ; $7c8d: $7d
    ld hl, $4179                                  ; $7c8e: $21 $79 $41
    add hl, de                                    ; $7c91: $19
    nop                                           ; $7c92: $00
    ld b, c                                       ; $7c93: $41
    ld a, h                                       ; $7c94: $7c
    ld b, c                                       ; $7c95: $41
    halt                                          ; $7c96: $76
    db $ed                                        ; $7c97: $ed
    ld bc, $0d81                                  ; $7c98: $01 $81 $0d
    nop                                           ; $7c9b: $00
    ld a, h                                       ; $7c9c: $7c
    ld b, c                                       ; $7c9d: $41
    ld a, c                                       ; $7c9e: $79
    ld b, c                                       ; $7c9f: $41
    ld a, [hl]                                    ; $7ca0: $7e
    ld b, c                                       ; $7ca1: $41

jr_0cd_7ca2:
    stop                                          ; $7ca2: $10 $00
    ld [hl], h                                    ; $7ca4: $74
    ld a, l                                       ; $7ca5: $7d
    add hl, bc                                    ; $7ca6: $09
    nop                                           ; $7ca7: $00
    push de                                       ; $7ca8: $d5
    add hl, bc                                    ; $7ca9: $09
    dec c                                         ; $7caa: $0d
    nop                                           ; $7cab: $00
    ld a, c                                       ; $7cac: $79
    call z, Call_0cd_7e01                         ; $7cad: $cc $01 $7e
    ld b, e                                       ; $7cb0: $43
    ccf                                           ; $7cb1: $3f
    ld b, e                                       ; $7cb2: $43
    ld a, c                                       ; $7cb3: $79
    dec b                                         ; $7cb4: $05
    ld [$11d3], sp                                ; $7cb5: $08 $d3 $11
    ld [$f908], sp                                ; $7cb8: $08 $08 $f9
    ld e, c                                       ; $7cbb: $59
    ei                                            ; $7cbc: $fb
    ld d, c                                       ; $7cbd: $51
    scf                                           ; $7cbe: $37
    ld d, d                                       ; $7cbf: $52
    halt                                          ; $7cc0: $76
    add hl, bc                                    ; $7cc1: $09
    ld bc, $23f8                                  ; $7cc2: $01 $f8 $23
    ld hl, sp+$45                                 ; $7cc5: $f8 $45
    ld hl, sp+$0f                                 ; $7cc7: $f8 $0f
    ld b, $40                                     ; $7cc9: $06 $40
    ld [hl], e                                    ; $7ccb: $73
    jr z, jr_0cd_7cdc                             ; $7ccc: $28 $0e

    push bc                                       ; $7cce: $c5
    ld b, $40                                     ; $7ccf: $06 $40
    inc d                                         ; $7cd1: $14
    ld e, b                                       ; $7cd2: $58
    ld c, [hl]                                    ; $7cd3: $4e
    add hl, bc                                    ; $7cd4: $09
    ld l, $21                                     ; $7cd5: $2e $21
    jr nc, @+$10                                  ; $7cd7: $30 $0e

    jr z, @+$0a                                   ; $7cd9: $28 $08

    or c                                          ; $7cdb: $b1

jr_0cd_7cdc:
    dec hl                                        ; $7cdc: $2b
    nop                                           ; $7cdd: $00
    ld c, [hl]                                    ; $7cde: $4e
    jr nc, @+$1a                                  ; $7cdf: $30 $18

    add hl, de                                    ; $7ce1: $19
    ld [$2808], sp                                ; $7ce2: $08 $08 $28
    ld [$0001], sp                                ; $7ce5: $08 $01 $00
    ld [$1005], a                                 ; $7ce8: $ea $05 $10
    inc b                                         ; $7ceb: $04
    db $10                                        ; $7cec: $10
    ld a, [bc]                                    ; $7ced: $0a
    jr nz, @+$0c                                  ; $7cee: $20 $0a

jr_0cd_7cf0:
    inc d                                         ; $7cf0: $14
    jr c, jr_0cd_7d5b                             ; $7cf1: $38 $68

    inc e                                         ; $7cf3: $1c
    jr jr_0cd_7d3e                                ; $7cf4: $18 $48

    rst $28                                       ; $7cf6: $ef

jr_0cd_7cf7:
    inc d                                         ; $7cf7: $14
    ld [$0017], sp                                ; $7cf8: $08 $17 $00
    dec l                                         ; $7cfb: $2d
    jr c, jr_0cd_7d26                             ; $7cfc: $38 $28

    inc d                                         ; $7cfe: $14
    nop                                           ; $7cff: $00
    ld a, $00                                     ; $7d00: $3e $00
    inc d                                         ; $7d02: $14
    db $10                                        ; $7d03: $10
    inc a                                         ; $7d04: $3c
    ld c, b                                       ; $7d05: $48
    or [hl]                                       ; $7d06: $b6
    ld c, c                                       ; $7d07: $49
    ld d, b                                       ; $7d08: $50
    ld a, [hl+]                                   ; $7d09: $2a
    ld d, b                                       ; $7d0a: $50
    jr nc, jr_0cd_7d6c                            ; $7d0b: $30 $5f

    jr z, jr_0cd_7d37                             ; $7d0d: $28 $28

    ld [hl-], a                                   ; $7d0f: $32
    jr z, jr_0cd_7d76                             ; $7d10: $28 $64

    jr jr_0cd_7d5c                                ; $7d12: $18 $48

    xor $5d                                       ; $7d14: $ee $5d
    jr nc, jr_0cd_7ca2                            ; $7d16: $30 $8a

    ld [$0864], sp                                ; $7d18: $08 $64 $08
    jr z, jr_0cd_7d90                             ; $7d1b: $28 $73

    nop                                           ; $7d1d: $00
    add b                                         ; $7d1e: $80
    nop                                           ; $7d1f: $00
    add hl, de                                    ; $7d20: $19
    db $10                                        ; $7d21: $10
    jr z, jr_0cd_7cf7                             ; $7d22: $28 $d3

    ld l, $00                                     ; $7d24: $2e $00

jr_0cd_7d26:
    ld b, e                                       ; $7d26: $43
    nop                                           ; $7d27: $00
    ld a, [bc]                                    ; $7d28: $0a
    ld [$0800], sp                                ; $7d29: $08 $00 $08
    ld a, [hl+]                                   ; $7d2c: $2a
    dec b                                         ; $7d2d: $05
    ld [$00ac], sp                                ; $7d2e: $08 $ac $00
    ld c, $68                                     ; $7d31: $0e $68
    ld [$0a28], sp                                ; $7d33: $08 $28 $0a
    adc h                                         ; $7d36: $8c

jr_0cd_7d37:
    jr nz, jr_0cd_7d41                            ; $7d37: $20 $08

    ld [$08ad], sp                                ; $7d39: $08 $ad $08
    jr z, jr_0cd_7cf0                             ; $7d3c: $28 $b2

jr_0cd_7d3e:
    adc d                                         ; $7d3e: $8a
    nop                                           ; $7d3f: $00
    ld a, [bc]                                    ; $7d40: $0a

jr_0cd_7d41:
    dec d                                         ; $7d41: $15
    nop                                           ; $7d42: $00
    inc d                                         ; $7d43: $14
    jr @+$2c                                      ; $7d44: $18 $2a

    jr z, @+$24                                   ; $7d46: $28 $22

    ld [$1b28], sp                                ; $7d48: $08 $28 $1b
    jr z, jr_0cd_7d77                             ; $7d4b: $28 $2a

    ld a, [hl+]                                   ; $7d4d: $2a
    ld [de], a                                    ; $7d4e: $12
    nop                                           ; $7d4f: $00
    rla                                           ; $7d50: $17
    nop                                           ; $7d51: $00
    jr z, jr_0cd_7d62                             ; $7d52: $28 $0e

    db $10                                        ; $7d54: $10
    ld hl, $df08                                  ; $7d55: $21 $08 $df
    ld a, a                                       ; $7d58: $7f
    db $10                                        ; $7d59: $10
    add c                                         ; $7d5a: $81

jr_0cd_7d5b:
    nop                                           ; $7d5b: $00

jr_0cd_7d5c:
    jr z, @+$0c                                   ; $7d5c: $28 $0a

    ld [$0051], sp                                ; $7d5e: $08 $51 $00
    ld e, l                                       ; $7d61: $5d

jr_0cd_7d62:
    db $10                                        ; $7d62: $10
    db $fd                                        ; $7d63: $fd
    jr @+$24                                      ; $7d64: $18 $22

    ld [$09ff], sp                                ; $7d66: $08 $ff $09
    ld bc, $1019                                  ; $7d69: $01 $19 $10

jr_0cd_7d6c:
    dec h                                         ; $7d6c: $25
    db $10                                        ; $7d6d: $10
    rlca                                          ; $7d6e: $07
    jr c, @-$28                                   ; $7d6f: $38 $d6

    ld h, b                                       ; $7d71: $60
    dec l                                         ; $7d72: $2d
    ld sp, $400d                                  ; $7d73: $31 $0d $40

jr_0cd_7d76:
    sbc e                                         ; $7d76: $9b

jr_0cd_7d77:
    db $10                                        ; $7d77: $10
    cp $2d                                        ; $7d78: $fe $2d
    ld h, b                                       ; $7d7a: $60
    jr nz, @+$0b                                  ; $7d7b: $20 $09

    sbc d                                         ; $7d7d: $9a
    ld [$4946], sp                                ; $7d7e: $08 $46 $49
    jr z, jr_0cd_7dfc                             ; $7d81: $28 $79

    ld a, d                                       ; $7d83: $7a
    ld hl, $2027                                  ; $7d84: $21 $27 $20
    ld [$ccec], sp                                ; $7d87: $08 $ec $cc
    add hl, de                                    ; $7d8a: $19
    xor c                                         ; $7d8b: $a9
    ld de, $71d3                                  ; $7d8c: $11 $d3 $71
    ld c, a                                       ; $7d8f: $4f

jr_0cd_7d90:
    ld [$7060], sp                                ; $7d90: $08 $60 $70
    ld l, d                                       ; $7d93: $6a
    jr nz, jr_0cd_7d96                            ; $7d94: $20 $00

jr_0cd_7d96:
    jr nz, jr_0cd_7d98                            ; $7d96: $20 $00

jr_0cd_7d98:
    ldh a, [rP1]                                  ; $7d98: $f0 $00
    inc bc                                        ; $7d9a: $03
    ld b, b                                       ; $7d9b: $40
    ld b, c                                       ; $7d9c: $41
    ld b, c                                       ; $7d9d: $41
    ld b, c                                       ; $7d9e: $41
    ld b, d                                       ; $7d9f: $42
    ld b, e                                       ; $7da0: $43
    dec b                                         ; $7da1: $05
    nop                                           ; $7da2: $00
    ld [$0c00], sp                                ; $7da3: $08 $00 $0c
    ld b, h                                       ; $7da6: $44
    ld b, c                                       ; $7da7: $41
    ld b, c                                       ; $7da8: $41
    ld b, l                                       ; $7da9: $45
    rrca                                          ; $7daa: $0f
    nop                                           ; $7dab: $00
    inc de                                        ; $7dac: $13
    ld h, b                                       ; $7dad: $60
    ld b, [hl]                                    ; $7dae: $46
    ld b, c                                       ; $7daf: $41
    ld [$4147], sp                                ; $7db0: $08 $47 $41
    ld b, c                                       ; $7db3: $41
    ld c, b                                       ; $7db4: $48
    ld [$4900], sp                                ; $7db5: $08 $00 $49
    ld c, d                                       ; $7db8: $4a
    ld b, c                                       ; $7db9: $41
    jr jr_0cd_7dfd                                ; $7dba: $18 $41

    ld c, e                                       ; $7dbc: $4b
    ld b, c                                       ; $7dbd: $41
    inc l                                         ; $7dbe: $2c
    ld [$4013], sp                                ; $7dbf: $08 $13 $40
    ld c, h                                       ; $7dc2: $4c
    ld c, l                                       ; $7dc3: $4d
    ld b, c                                       ; $7dc4: $41
    ld h, b                                       ; $7dc5: $60
    ld c, [hl]                                    ; $7dc6: $4e
    ld a, $08                                     ; $7dc7: $3e $08
    rla                                           ; $7dc9: $17
    jr jr_0cd_7e0d                                ; $7dca: $18 $41

jr_0cd_7dcc:
    ld c, a                                       ; $7dcc: $4f
    ld b, c                                       ; $7dcd: $41
    ld d, b                                       ; $7dce: $50
    ld b, c                                       ; $7dcf: $41
    or l                                          ; $7dd0: $b5
    inc de                                        ; $7dd1: $13
    ld e, b                                       ; $7dd2: $58
    ld d, c                                       ; $7dd3: $51
    ld e, h                                       ; $7dd4: $5c
    ld [$001a], sp                                ; $7dd5: $08 $1a $00
    ld b, c                                       ; $7dd8: $41
    jr z, jr_0cd_7ddb                             ; $7dd9: $28 $00

jr_0cd_7ddb:
    ld d, d                                       ; $7ddb: $52
    add hl, bc                                    ; $7ddc: $09
    jr jr_0cd_7dcc                                ; $7ddd: $18 $ed

    inc de                                        ; $7ddf: $13
    ld c, b                                       ; $7de0: $48
    ld a, a                                       ; $7de1: $7f
    nop                                           ; $7de2: $00
    ld e, h                                       ; $7de3: $5c
    nop                                           ; $7de4: $00
    ld d, e                                       ; $7de5: $53
    ld h, d                                       ; $7de6: $62
    db $10                                        ; $7de7: $10
    ld b, a                                       ; $7de8: $47
    jr @+$56                                      ; $7de9: $18 $54

    inc de                                        ; $7deb: $13
    ld d, b                                       ; $7dec: $50
    sbc e                                         ; $7ded: $9b
    sbc e                                         ; $7dee: $9b
    db $10                                        ; $7def: $10
    ld d, l                                       ; $7df0: $55
    ld d, [hl]                                    ; $7df1: $56
    jr z, jr_0cd_7e0c                             ; $7df2: $28 $18

    xor b                                         ; $7df4: $a8
    db $10                                        ; $7df5: $10
    ld d, a                                       ; $7df6: $57
    inc de                                        ; $7df7: $13
    ld d, b                                       ; $7df8: $50
    ld e, [hl]                                    ; $7df9: $5e
    jr z, jr_0cd_7e6f                             ; $7dfa: $28 $73

jr_0cd_7dfc:
    ld e, b                                       ; $7dfc: $58

jr_0cd_7dfd:
    jp Jump_0cd_6918                              ; $7dfd: $c3 $18 $69


    db $10                                        ; $7e00: $10

Call_0cd_7e01:
    inc de                                        ; $7e01: $13
    ld c, b                                       ; $7e02: $48

Call_0cd_7e03:
    ld e, c                                       ; $7e03: $59
    ld e, d                                       ; $7e04: $5a
    and b                                         ; $7e05: $a0
    ld [$10a3], sp                                ; $7e06: $08 $a3 $10
    jp nc, Jump_000_00a9                          ; $7e09: $d2 $a9 $00

jr_0cd_7e0c:
    adc l                                         ; $7e0c: $8d

jr_0cd_7e0d:
    nop                                           ; $7e0d: $00
    ld e, e                                       ; $7e0e: $5b
    inc de                                        ; $7e0f: $13
    ld e, b                                       ; $7e10: $58
    ld e, c                                       ; $7e11: $59
    ld e, c                                       ; $7e12: $59
    db $fc                                        ; $7e13: $fc
    jr jr_0cd_7e5e                                ; $7e14: $18 $48

    dec de                                        ; $7e16: $1b
    ld b, c                                       ; $7e17: $41
    ld e, h                                       ; $7e18: $5c
    ld e, l                                       ; $7e19: $5d
    dec bc                                        ; $7e1a: $0b
    ld bc, $00cf                                  ; $7e1b: $01 $cf $00

jr_0cd_7e1e:
    ld b, c                                       ; $7e1e: $41
    inc de                                        ; $7e1f: $13
    ld e, b                                       ; $7e20: $58
    ret nz                                        ; $7e21: $c0

    nop                                           ; $7e22: $00
    adc l                                         ; $7e23: $8d
    sbc e                                         ; $7e24: $9b
    ld [$4151], sp                                ; $7e25: $08 $51 $41
    ld e, [hl]                                    ; $7e28: $5e
    and e                                         ; $7e29: $a3
    jr nz, @+$15                                  ; $7e2a: $20 $13

    jr nc, jr_0cd_7e6f                            ; $7e2c: $30 $41

    inc de                                        ; $7e2e: $13
    jr c, jr_0cd_7e57                             ; $7e2f: $38 $26

    ld e, a                                       ; $7e31: $5f

jr_0cd_7e32:
    ld e, a                                       ; $7e32: $5f
    ld a, b                                       ; $7e33: $78
    jr nz, jr_0cd_7e77                            ; $7e34: $20 $41

    ld h, b                                       ; $7e36: $60
    dec hl                                        ; $7e37: $2b
    ld bc, $10f3                                  ; $7e38: $01 $f3 $10
    ld e, a                                       ; $7e3b: $5f
    ld h, d                                       ; $7e3c: $62
    ld e, a                                       ; $7e3d: $5f
    ld a, [$5a10]                                 ; $7e3e: $fa $10 $5a
    add hl, bc                                    ; $7e41: $09
    ld h, c                                       ; $7e42: $61
    ld b, c                                       ; $7e43: $41
    ld h, d                                       ; $7e44: $62
    jr nz, jr_0cd_7e47                            ; $7e45: $20 $00

jr_0cd_7e47:
    ld c, e                                       ; $7e47: $4b
    and h                                         ; $7e48: $a4
    dec h                                         ; $7e49: $25
    add hl, bc                                    ; $7e4a: $09
    ld h, e                                       ; $7e4b: $63
    inc de                                        ; $7e4c: $13
    ld l, b                                       ; $7e4d: $68
    ld b, c                                       ; $7e4e: $41
    ld h, h                                       ; $7e4f: $64
    ld a, h                                       ; $7e50: $7c
    add hl, de                                    ; $7e51: $19
    ld d, d                                       ; $7e52: $52
    ld b, c                                       ; $7e53: $41
    ld d, b                                       ; $7e54: $50
    ld h, l                                       ; $7e55: $65
    cp e                                          ; $7e56: $bb

jr_0cd_7e57:
    jr nz, jr_0cd_7ebf                            ; $7e57: $20 $66

    inc de                                        ; $7e59: $13
    ld d, b                                       ; $7e5a: $50
    ld h, a                                       ; $7e5b: $67
    ld l, b                                       ; $7e5c: $68
    ld b, [hl]                                    ; $7e5d: $46

jr_0cd_7e5e:
    ld d, c                                       ; $7e5e: $51
    add l                                         ; $7e5f: $85
    dec b                                         ; $7e60: $05
    add hl, de                                    ; $7e61: $19
    ld l, c                                       ; $7e62: $69
    ld l, d                                       ; $7e63: $6a
    ld c, h                                       ; $7e64: $4c
    ld c, l                                       ; $7e65: $4d
    ld l, b                                       ; $7e66: $68
    ld [$136b], sp                                ; $7e67: $08 $6b $13
    ld d, b                                       ; $7e6a: $50
    pop bc                                        ; $7e6b: $c1
    ld a, b                                       ; $7e6c: $78
    jr z, jr_0cd_7e32                             ; $7e6d: $28 $c3

jr_0cd_7e6f:
    add hl, de                                    ; $7e6f: $19
    ld l, h                                       ; $7e70: $6c
    ld e, a                                       ; $7e71: $5f
    ld l, l                                       ; $7e72: $6d
    ld l, [hl]                                    ; $7e73: $6e
    ld l, a                                       ; $7e74: $6f
    inc de                                        ; $7e75: $13
    ld e, b                                       ; $7e76: $58

jr_0cd_7e77:
    dec hl                                        ; $7e77: $2b
    ld b, c                                       ; $7e78: $41
    ld [hl], b                                    ; $7e79: $70
    jr z, jr_0cd_7ead                             ; $7e7a: $28 $31

    ld [hl], c                                    ; $7e7c: $71
    ret z                                         ; $7e7d: $c8

    add hl, bc                                    ; $7e7e: $09
    ld [hl], d                                    ; $7e7f: $72
    inc de                                        ; $7e80: $13
    jr c, jr_0cd_7e1e                             ; $7e81: $38 $9b

    ld bc, $716f                                  ; $7e83: $01 $6f $71
    nop                                           ; $7e86: $00
    ld a, [$4200]                                 ; $7e87: $fa $00 $42
    ld d, c                                       ; $7e8a: $51
    nop                                           ; $7e8b: $00
    ld a, [$fa00]                                 ; $7e8c: $fa $00 $fa
    nop                                           ; $7e8f: $00
    ld a, [$fa00]                                 ; $7e90: $fa $00 $fa
    rst $20                                       ; $7e93: $e7
    nop                                           ; $7e94: $00
    ld a, [$9a00]                                 ; $7e95: $fa $00 $9a
    xor e                                         ; $7e98: $ab
    ld [bc], a                                    ; $7e99: $02
    ld e, e                                       ; $7e9a: $5b
    ld d, c                                       ; $7e9b: $51
    nop                                           ; $7e9c: $00
    ld a, [$8200]                                 ; $7e9d: $fa $00 $82
    db $ed                                        ; $7ea0: $ed
    ld b, c                                       ; $7ea1: $41
    rst $38                                       ; $7ea2: $ff
    inc de                                        ; $7ea3: $13
    ld a, [de]                                    ; $7ea4: $1a
    or $0a                                        ; $7ea5: $f6 $0a
    nop                                           ; $7ea7: $00
    ld b, d                                       ; $7ea8: $42
    db $ed                                        ; $7ea9: $ed
    add hl, hl                                    ; $7eaa: $29
    nop                                           ; $7eab: $00
    ld a, [bc]                                    ; $7eac: $0a

jr_0cd_7ead:
    inc de                                        ; $7ead: $13
    ld h, b                                       ; $7eae: $60
    nop                                           ; $7eaf: $00
    jp nz, $031d                                  ; $7eb0: $c2 $1d $03

    db $fd                                        ; $7eb3: $fd
    nop                                           ; $7eb4: $00
    ld a, [$2305]                                 ; $7eb5: $fa $05 $23
    nop                                           ; $7eb8: $00
    ld a, [$fa00]                                 ; $7eb9: $fa $00 $fa
    nop                                           ; $7ebc: $00
    ld e, d                                       ; $7ebd: $5a
    inc de                                        ; $7ebe: $13

jr_0cd_7ebf:
    ld a, [bc]                                    ; $7ebf: $0a
    ld [$f001], sp                                ; $7ec0: $08 $01 $f0
    ld a, l                                       ; $7ec3: $7d
    add hl, bc                                    ; $7ec4: $09
    inc de                                        ; $7ec5: $13
    ld hl, sp+$26                                 ; $7ec6: $f8 $26
    ld hl, sp+$49                                 ; $7ec8: $f8 $49
    jr @+$4d                                      ; $7eca: $18 $4b

    ld [hl], b                                    ; $7ecc: $70
    ld e, h                                       ; $7ecd: $5c
    jr z, jr_0cd_7eda                             ; $7ece: $28 $0a

    add a                                         ; $7ed0: $87
    ld b, b                                       ; $7ed1: $40
    db $fc                                        ; $7ed2: $fc
    inc c                                         ; $7ed3: $0c
    jr nz, jr_0cd_7ee9                            ; $7ed4: $20 $13

    ld d, b                                       ; $7ed6: $50
    jr nz, jr_0cd_7f51                            ; $7ed7: $20 $78

    inc de                                        ; $7ed9: $13

jr_0cd_7eda:
    ld c, b                                       ; $7eda: $48
    and d                                         ; $7edb: $a2
    ld hl, sp-$31                                 ; $7edc: $f8 $cf
    cp b                                          ; $7ede: $b8
    ld c, b                                       ; $7edf: $48
    ld l, b                                       ; $7ee0: $68
    rst $20                                       ; $7ee1: $e7
    ld [bc], a                                    ; $7ee2: $02
    ld [hl], c                                    ; $7ee3: $71
    inc de                                        ; $7ee4: $13
    add b                                         ; $7ee5: $80
    ld h, $e9                                     ; $7ee6: $26 $e9
    ld a, [bc]                                    ; $7ee8: $0a

jr_0cd_7ee9:
    ld a, [hl+]                                   ; $7ee9: $2a
    ld l, $71                                     ; $7eea: $2e $71
    inc de                                        ; $7eec: $13
    jr c, @-$1e                                   ; $7eed: $38 $e0

    ld [$66be], sp                                ; $7eef: $08 $be $66
    nop                                           ; $7ef2: $00
    jr z, @+$35                                   ; $7ef3: $28 $33

    ld h, b                                       ; $7ef5: $60
    inc de                                        ; $7ef6: $13
    jr nz, @-$03                                  ; $7ef7: $20 $fb

    jr nz, jr_0cd_7f61                            ; $7ef9: $20 $66

    ld c, c                                       ; $7efb: $49
    inc de                                        ; $7efc: $13
    ld c, b                                       ; $7efd: $48
    ld a, [bc]                                    ; $7efe: $0a
    ld a, a                                       ; $7eff: $7f
    ld a, [bc]                                    ; $7f00: $0a
    add b                                         ; $7f01: $80
    add hl, sp                                    ; $7f02: $39
    rlca                                          ; $7f03: $07
    ld bc, $1032                                  ; $7f04: $01 $32 $10
    inc de                                        ; $7f07: $13
    ld c, b                                       ; $7f08: $48
    ret nz                                        ; $7f09: $c0

    ld h, c                                       ; $7f0a: $61
    cp e                                          ; $7f0b: $bb
    ld hl, sp-$0f                                 ; $7f0c: $f8 $f1
    ld sp, hl                                     ; $7f0e: $f9
    rst $38                                       ; $7f0f: $ff
    nop                                           ; $7f10: $00
    ld a, [$fa13]                                 ; $7f11: $fa $13 $fa
    nop                                           ; $7f14: $00
    ld a, [$fa00]                                 ; $7f15: $fa $00 $fa
    nop                                           ; $7f18: $00
    ld a, [$faa2]                                 ; $7f19: $fa $a2 $fa
    call z, Call_000_007a                         ; $7f1c: $cc $7a $00
    ld a, [$00ff]                                 ; $7f1f: $fa $ff $00
    ld a, [$7317]                                 ; $7f22: $fa $17 $73
    nop                                           ; $7f25: $00
    ld a, [$fa00]                                 ; $7f26: $fa $00 $fa
    nop                                           ; $7f29: $00
    ld a, [$fa00]                                 ; $7f2a: $fa $00 $fa
    nop                                           ; $7f2d: $00
    ld a, [$6bf0]                                 ; $7f2e: $fa $f0 $6b
    jr nz, jr_0cd_7f33                            ; $7f31: $20 $00

jr_0cd_7f33:
    ld c, $00                                     ; $7f33: $0e $00
    ld c, h                                       ; $7f35: $4c
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    ld b, b                                       ; $7f38: $40
    ld b, c                                       ; $7f39: $41
    ld b, d                                       ; $7f3a: $42
    ld b, e                                       ; $7f3b: $43
    ld b, h                                       ; $7f3c: $44
    ld b, l                                       ; $7f3d: $45
    ld b, [hl]                                    ; $7f3e: $46
    ld b, a                                       ; $7f3f: $47
    ld [bc], a                                    ; $7f40: $02
    ld c, b                                       ; $7f41: $48
    ld c, c                                       ; $7f42: $49
    ld c, d                                       ; $7f43: $4a
    ld c, e                                       ; $7f44: $4b
    ld c, h                                       ; $7f45: $4c
    ld c, l                                       ; $7f46: $4d
    ld c, $78                                     ; $7f47: $0e $78
    ld c, [hl]                                    ; $7f49: $4e
    nop                                           ; $7f4a: $00
    ld c, a                                       ; $7f4b: $4f
    ld d, b                                       ; $7f4c: $50
    ld d, c                                       ; $7f4d: $51
    ld d, d                                       ; $7f4e: $52
    ld d, e                                       ; $7f4f: $53
    ld d, h                                       ; $7f50: $54

jr_0cd_7f51:
    ld d, l                                       ; $7f51: $55
    ld d, [hl]                                    ; $7f52: $56
    rlca                                          ; $7f53: $07
    ld d, a                                       ; $7f54: $57

jr_0cd_7f55:
    ld e, b                                       ; $7f55: $58
    ld e, c                                       ; $7f56: $59
    ld e, d                                       ; $7f57: $5a
    ld e, e                                       ; $7f58: $5b
    ld c, $78                                     ; $7f59: $0e $78
    jr nz, jr_0cd_7f55                            ; $7f5b: $20 $f8

    ld b, b                                       ; $7f5d: $40

jr_0cd_7f5e:
    ret c                                         ; $7f5e: $d8

    ldh a, [rHDMA3]                               ; $7f5f: $f0 $53

jr_0cd_7f61:
    add b                                         ; $7f61: $80
    ld l, a                                       ; $7f62: $6f
    ld d, b                                       ; $7f63: $50
    jr nz, jr_0cd_7f5e                            ; $7f64: $20 $f8

    and c                                         ; $7f66: $a1
    ret c                                         ; $7f67: $d8

    ld e, h                                       ; $7f68: $5c
    ld e, l                                       ; $7f69: $5d
    ld e, [hl]                                    ; $7f6a: $5e
    ld e, a                                       ; $7f6b: $5f
    nop                                           ; $7f6c: $00
    ld h, b                                       ; $7f6d: $60
    ld h, c                                       ; $7f6e: $61
    ld h, d                                       ; $7f6f: $62
    ld h, e                                       ; $7f70: $63
    ld h, h                                       ; $7f71: $64
    ld h, l                                       ; $7f72: $65
    ld h, [hl]                                    ; $7f73: $66

jr_0cd_7f74:
    ld h, a                                       ; $7f74: $67
    ccf                                           ; $7f75: $3f
    ld l, b                                       ; $7f76: $68
    ld l, c                                       ; $7f77: $69
    ld c, $78                                     ; $7f78: $0e $78
    jr nz, jr_0cd_7f74                            ; $7f7a: $20 $f8

    ld b, b                                       ; $7f7c: $40
    ld hl, sp+$60                                 ; $7f7d: $f8 $60
    ld hl, sp-$80                                 ; $7f7f: $f8 $80
    cp b                                          ; $7f81: $b8
    ld h, b                                       ; $7f82: $60
    jp hl                                         ; $7f83: $e9


    cp e                                          ; $7f84: $bb
    and b                                         ; $7f85: $a0
    jp hl                                         ; $7f86: $e9


    ld [$f801], sp                                ; $7f87: $08 $01 $f8
    inc hl                                        ; $7f8a: $23
    ld hl, sp+$45                                 ; $7f8b: $f8 $45
    ret nz                                        ; $7f8d: $c0

    add hl, bc                                    ; $7f8e: $09
    ld bc, $23f8                                  ; $7f8f: $01 $f8 $23
    ret nc                                        ; $7f92: $d0

    ld e, a                                       ; $7f93: $5f
    ld a, [bc]                                    ; $7f94: $0a
    ld bc, $0be0                                  ; $7f95: $01 $e0 $0b
    ld bc, $23f8                                  ; $7f98: $01 $f8 $23
    ret nc                                        ; $7f9b: $d0

    ld h, b                                       ; $7f9c: $60
    add sp, -$40                                  ; $7f9d: $e8 $c0
    ld hl, sp-$1e                                 ; $7f9f: $f8 $e2
    ret c                                         ; $7fa1: $d8

    or b                                          ; $7fa2: $b0
    ld h, b                                       ; $7fa3: $60
    jp hl                                         ; $7fa4: $e9


    ld c, b                                       ; $7fa5: $48
    ld bc, $23f8                                  ; $7fa6: $01 $f8 $23
    ret nc                                        ; $7fa9: $d0

    xor l                                         ; $7faa: $ad
    halt                                          ; $7fab: $76
    add sp, $5d                                   ; $7fac: $e8 $5d
    ld b, [hl]                                    ; $7fae: $46
    ld b, l                                       ; $7faf: $45
    adc a                                         ; $7fb0: $8f
    ld d, d                                       ; $7fb1: $52
    call nc, $ef7e                                ; $7fb2: $d4 $7e $ef
    ld h, l                                       ; $7fb5: $65
    xor d                                         ; $7fb6: $aa
    ld d, b                                       ; $7fb7: $50
    adc a                                         ; $7fb8: $8f
    ld d, d                                       ; $7fb9: $52
    ld c, l                                       ; $7fba: $4d
    ld [hl], a                                    ; $7fbb: $77
    ld l, b                                       ; $7fbc: $68
    ld e, [hl]                                    ; $7fbd: $5e
    and l                                         ; $7fbe: $a5
    ld b, c                                       ; $7fbf: $41
    adc a                                         ; $7fc0: $8f
    ld d, d                                       ; $7fc1: $52
    db $db                                        ; $7fc2: $db
    ld a, e                                       ; $7fc3: $7b
    di                                            ; $7fc4: $f3
    ld h, [hl]                                    ; $7fc5: $66
    ld c, h                                       ; $7fc6: $4c
    ld d, d                                       ; $7fc7: $52
    ld b, [hl]                                    ; $7fc8: $46
    ld b, l                                       ; $7fc9: $45
    rst $18                                       ; $7fca: $df
    ld l, a                                       ; $7fcb: $6f
    rst $30                                       ; $7fcc: $f7
    ld c, d                                       ; $7fcd: $4a
    ld d, [hl]                                    ; $7fce: $56
    ld a, [hl+]                                   ; $7fcf: $2a
    ld b, [hl]                                    ; $7fd0: $46
    ld b, l                                       ; $7fd1: $45
    ei                                            ; $7fd2: $fb
    ld l, e                                       ; $7fd3: $6b
    sub a                                         ; $7fd4: $97
    ld c, a                                       ; $7fd5: $4f
    ld c, [hl]                                    ; $7fd6: $4e
    ld [hl+], a                                   ; $7fd7: $22
    ld b, [hl]                                    ; $7fd8: $46
    ld b, l                                       ; $7fd9: $45
    ldh [$03], a                                  ; $7fda: $e0 $03
    ret nz                                        ; $7fdc: $c0

    inc bc                                        ; $7fdd: $03
    add b                                         ; $7fde: $80
    inc bc                                        ; $7fdf: $03
    cp l                                          ; $7fe0: $bd
    ld [hl], a                                    ; $7fe1: $77
    cp l                                          ; $7fe2: $bd
    ld [hl], a                                    ; $7fe3: $77
    cp l                                          ; $7fe4: $bd
    ld [hl], a                                    ; $7fe5: $77
    cp l                                          ; $7fe6: $bd
    ld [hl], a                                    ; $7fe7: $77
    cp l                                          ; $7fe8: $bd
    ld [hl], a                                    ; $7fe9: $77
    rst $38                                       ; $7fea: $ff
    ld a, a                                       ; $7feb: $7f
    nop                                           ; $7fec: $00
    inc bc                                        ; $7fed: $03
    rst $28                                       ; $7fee: $ef
    inc b                                         ; $7fef: $04
    add e                                         ; $7ff0: $83
    db $10                                        ; $7ff1: $10
    rst $38                                       ; $7ff2: $ff
    ld a, a                                       ; $7ff3: $7f
    nop                                           ; $7ff4: $00
    inc bc                                        ; $7ff5: $03
    rst $28                                       ; $7ff6: $ef
    inc b                                         ; $7ff7: $04
    add e                                         ; $7ff8: $83
    db $10                                        ; $7ff9: $10
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
