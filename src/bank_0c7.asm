; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0c7", ROMX[$4000], BANK[$c7]

Jump_0c7_4000:
    rst $00                                       ; $4000: $c7
    ldh a, [$08]                                  ; $4001: $f0 $08
    db $eb                                        ; $4003: $eb
    rlca                                          ; $4004: $07
    nop                                           ; $4005: $00
    ld [hl], d                                    ; $4006: $72
    nop                                           ; $4007: $00

Call_0c7_4008:
    xor b                                         ; $4008: $a8
    nop                                           ; $4009: $00
    ld de, $a400                                  ; $400a: $11 $00 $a4
    nop                                           ; $400d: $00
    add b                                         ; $400e: $80
    ld bc, $e328                                  ; $400f: $01 $28 $e3
    cp a                                          ; $4012: $bf
    pop hl                                        ; $4013: $e1
    or l                                          ; $4014: $b5
    rst $20                                       ; $4015: $e7
    cp a                                          ; $4016: $bf
    rst $28                                       ; $4017: $ef
    nop                                           ; $4018: $00
    cp a                                          ; $4019: $bf
    xor $bb                                       ; $401a: $ee $bb
    db $eb                                        ; $401c: $eb
    cp a                                          ; $401d: $bf
    db $fd                                        ; $401e: $fd
    cp h                                          ; $401f: $bc
    push af                                       ; $4020: $f5
    nop                                           ; $4021: $00
    or c                                          ; $4022: $b1
    rst $38                                       ; $4023: $ff
    ret nz                                        ; $4024: $c0

    rst $18                                       ; $4025: $df
    rst $20                                       ; $4026: $e7
    ld l, a                                       ; $4027: $6f

Jump_0c7_4028:
    ei                                            ; $4028: $fb
    sbc a                                         ; $4029: $9f
    nop                                           ; $402a: $00
    db $fc                                        ; $402b: $fc
    ld a, $fb                                     ; $402c: $3e $fb
    ld a, e                                       ; $402e: $7b
    rst $38                                       ; $402f: $ff
    ld e, l                                       ; $4030: $5d
    ld h, d                                       ; $4031: $62
    rst $28                                       ; $4032: $ef
    nop                                           ; $4033: $00
    ldh a, [$6f]                                  ; $4034: $f0 $6f
    rst $30                                       ; $4036: $f7
    ld a, e                                       ; $4037: $7b
    rst $28                                       ; $4038: $ef
    ld sp, hl                                     ; $4039: $f9
    rst $28                                       ; $403a: $ef
    ld e, c                                       ; $403b: $59
    nop                                           ; $403c: $00
    cp a                                          ; $403d: $bf
    pop de                                        ; $403e: $d1
    ccf                                           ; $403f: $3f
    pop de                                        ; $4040: $d1
    rst $38                                       ; $4041: $ff
    pop af                                        ; $4042: $f1
    ccf                                           ; $4043: $3f
    push de                                       ; $4044: $d5
    nop                                           ; $4045: $00
    ccf                                           ; $4046: $3f
    rrca                                          ; $4047: $0f
    dec e                                         ; $4048: $1d
    rra                                           ; $4049: $1f
    ld a, l                                       ; $404a: $7d
    ld [hl], a                                    ; $404b: $77
    ld a, l                                       ; $404c: $7d

jr_0c7_404d:
    rst $00                                       ; $404d: $c7
    jr nz, jr_0c7_404d                            ; $404e: $20 $fd

    add a                                         ; $4050: $87
    ld [bc], a                                    ; $4051: $02
    db $20, $a2                                   ; $4052: $20 $a2
    nop                                           ; $4054: $00
    ld b, h                                       ; $4055: $44
    add b                                         ; $4056: $80
    sub b                                         ; $4057: $90
    inc c                                         ; $4058: $0c
    nop                                           ; $4059: $00
    and b                                         ; $405a: $a0
    nop                                           ; $405b: $00
    add b                                         ; $405c: $80
    ld [bc], a                                    ; $405d: $02
    jr nz, jr_0c7_4070                            ; $405e: $20 $10

    nop                                           ; $4060: $00
    nop                                           ; $4061: $00

jr_0c7_4062:
    db $10                                        ; $4062: $10
    jr nz, jr_0c7_4065                            ; $4063: $20 $00

jr_0c7_4065:
    jr nz, jr_0c7_40c7                            ; $4065: $20 $60

    jr nc, jr_0c7_4094                            ; $4067: $30 $2b

    nop                                           ; $4069: $00
    rla                                           ; $406a: $17
    nop                                           ; $406b: $00
    ld a, [bc]                                    ; $406c: $0a
    jr nz, jr_0c7_406f                            ; $406d: $20 $00

jr_0c7_406f:
    inc d                                         ; $406f: $14

jr_0c7_4070:
    db $10                                        ; $4070: $10
    ld b, b                                       ; $4071: $40
    ld d, $01                                     ; $4072: $16 $01
    dec bc                                        ; $4074: $0b
    nop                                           ; $4075: $00
    inc d                                         ; $4076: $14
    db $10                                        ; $4077: $10
    ld bc, $0001                                  ; $4078: $01 $01 $00
    ld [bc], a                                    ; $407b: $02
    jr jr_0c7_407e                                ; $407c: $18 $00

jr_0c7_407e:
    nop                                           ; $407e: $00
    inc h                                         ; $407f: $24
    inc h                                         ; $4080: $24
    nop                                           ; $4081: $00
    ld de, $0111                                  ; $4082: $11 $11 $01
    ld bc, $2020                                  ; $4085: $01 $20 $20
    ld a, a                                       ; $4088: $7f
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    ld a, a                                       ; $408b: $7f
    add b                                         ; $408c: $80
    nop                                           ; $408d: $00
    rst $38                                       ; $408e: $ff
    ld hl, $0221                                  ; $408f: $21 $21 $02
    ld [bc], a                                    ; $4092: $02
    nop                                           ; $4093: $00

jr_0c7_4094:
    ld [$9108], sp                                ; $4094: $08 $08 $91
    sub c                                         ; $4097: $91
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    jr nc, jr_0c7_40cc                            ; $409a: $30 $30

    ld bc, $ff00                                  ; $409c: $01 $00 $ff
    nop                                           ; $409f: $00
    rst $38                                       ; $40a0: $ff
    ld c, b                                       ; $40a1: $48
    ld c, b                                       ; $40a2: $48
    ld b, b                                       ; $40a3: $40
    ld bc, $1800                                  ; $40a4: $01 $00 $18
    ld h, b                                       ; $40a7: $60
    ld h, b                                       ; $40a8: $60
    jr nz, jr_0c7_40fe                            ; $40a9: $20 $53

    ld [$0010], sp                                ; $40ab: $08 $10 $00
    rst $18                                       ; $40ae: $df
    rst $18                                       ; $40af: $df
    cp b                                          ; $40b0: $b8
    ld b, d                                       ; $40b1: $42
    cp b                                          ; $40b2: $b8
    inc c                                         ; $40b3: $0c
    ld [$8484], sp                                ; $40b4: $08 $84 $84
    ld a, [bc]                                    ; $40b7: $0a
    ld a, [bc]                                    ; $40b8: $0a
    jr nz, jr_0c7_40c3                            ; $40b9: $20 $08

    ld c, c                                       ; $40bb: $49
    ld [bc], a                                    ; $40bc: $02
    ld c, c                                       ; $40bd: $49
    ld b, e                                       ; $40be: $43
    ld b, e                                       ; $40bf: $43
    rst $10                                       ; $40c0: $d7
    rst $10                                       ; $40c1: $d7
    ld b, h                                       ; $40c2: $44

jr_0c7_40c3:
    ld bc, $0800                                  ; $40c3: $01 $00 $08
    ld c, b                                       ; $40c6: $48

jr_0c7_40c7:
    ld [$0830], sp                                ; $40c7: $08 $30 $08
    ld [de], a                                    ; $40ca: $12
    ld [de], a                                    ; $40cb: $12

jr_0c7_40cc:
    db $db                                        ; $40cc: $db
    jr jr_0c7_4062                                ; $40cd: $18 $93

    sub e                                         ; $40cf: $93
    ldh [rP1], a                                  ; $40d0: $e0 $00
    nop                                           ; $40d2: $00
    ldh [$1f], a                                  ; $40d3: $e0 $1f
    nop                                           ; $40d5: $00
    rst $38                                       ; $40d6: $ff
    jr nz, @-$5e                                  ; $40d7: $20 $a0

    ld [bc], a                                    ; $40d9: $02
    ld b, e                                       ; $40da: $43
    add d                                         ; $40db: $82
    sbc l                                         ; $40dc: $9d
    jr jr_0c7_40e6                                ; $40dd: $18 $07

    add b                                         ; $40df: $80
    rlca                                          ; $40e0: $07
    ld hl, sp+$52                                 ; $40e1: $f8 $52
    nop                                           ; $40e3: $00
    sbc [hl]                                      ; $40e4: $9e
    nop                                           ; $40e5: $00

jr_0c7_40e6:
    nop                                           ; $40e6: $00
    ld [bc], a                                    ; $40e7: $02
    nop                                           ; $40e8: $00
    ld b, l                                       ; $40e9: $45
    nop                                           ; $40ea: $00

jr_0c7_40eb:
    adc [hl]                                      ; $40eb: $8e
    nop                                           ; $40ec: $00
    ld e, a                                       ; $40ed: $5f
    nop                                           ; $40ee: $00
    nop                                           ; $40ef: $00
    xor l                                         ; $40f0: $ad
    nop                                           ; $40f1: $00
    db $db                                        ; $40f2: $db
    inc b                                         ; $40f3: $04
    add sp, -$60                                  ; $40f4: $e8 $a0
    ldh [$a0], a                                  ; $40f6: $e0 $a0
    ld [bc], a                                    ; $40f8: $02
    ldh a, [$b0]                                  ; $40f9: $f0 $b0
    ldh a, [$bb]                                  ; $40fb: $f0 $bb
    rst $38                                       ; $40fd: $ff

jr_0c7_40fe:
    cp a                                          ; $40fe: $bf
    ld [bc], a                                    ; $40ff: $02
    nop                                           ; $4100: $00
    add b                                         ; $4101: $80
    nop                                           ; $4102: $00
    rst $38                                       ; $4103: $ff
    rst $38                                       ; $4104: $ff
    rra                                           ; $4105: $1f
    db $10                                        ; $4106: $10
    dec d                                         ; $4107: $15
    ld e, e                                       ; $4108: $5b
    ld a, [bc]                                    ; $4109: $0a
    cp a                                          ; $410a: $bf
    ld [bc], a                                    ; $410b: $02
    ld a, h                                       ; $410c: $7c
    rst $38                                       ; $410d: $ff
    ld [c], a                                     ; $410e: $e2
    db $fd                                        ; $410f: $fd
    rst $38                                       ; $4110: $ff
    rst $38                                       ; $4111: $ff
    ld a, a                                       ; $4112: $7f
    nop                                           ; $4113: $00
    rst $38                                       ; $4114: $ff
    nop                                           ; $4115: $00
    db $d3                                        ; $4116: $d3
    ccf                                           ; $4117: $3f
    db $f4                                        ; $4118: $f4
    ccf                                           ; $4119: $3f
    and d                                         ; $411a: $a2
    rst $38                                       ; $411b: $ff
    or $ff                                        ; $411c: $f6 $ff
    jr nz, jr_0c7_40c7                            ; $411e: $20 $a7

    ld a, a                                       ; $4120: $7f
    db $10                                        ; $4121: $10
    jr jr_0c7_40eb                                ; $4122: $18 $c7

    db $fd                                        ; $4124: $fd
    rst $00                                       ; $4125: $c7
    db $fd                                        ; $4126: $fd
    ld b, a                                       ; $4127: $47
    nop                                           ; $4128: $00
    db $fd                                        ; $4129: $fd
    ld h, a                                       ; $412a: $67
    db $fd                                        ; $412b: $fd
    scf                                           ; $412c: $37
    db $fd                                        ; $412d: $fd
    rst $38                                       ; $412e: $ff
    db $fd                                        ; $412f: $fd
    rst $38                                       ; $4130: $ff
    nop                                           ; $4131: $00
    ld bc, $ffff                                  ; $4132: $01 $ff $ff
    add b                                         ; $4135: $80
    nop                                           ; $4136: $00
    add c                                         ; $4137: $81
    nop                                           ; $4138: $00
    adc d                                         ; $4139: $8a
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    sub l                                         ; $413c: $95
    nop                                           ; $413d: $00
    ld a, [hl+]                                   ; $413e: $2a
    add b                                         ; $413f: $80
    db $dd                                        ; $4140: $dd
    nop                                           ; $4141: $00
    halt                                          ; $4142: $76
    ld [$7b80], sp                                ; $4143: $08 $80 $7b
    add b                                         ; $4146: $80
    nop                                           ; $4147: $00
    ret c                                         ; $4148: $d8

    nop                                           ; $4149: $00
    adc d                                         ; $414a: $8a
    nop                                           ; $414b: $00
    dec d                                         ; $414c: $15
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00
    xor d                                         ; $414f: $aa
    nop                                           ; $4150: $00
    ld e, l                                       ; $4151: $5d
    nop                                           ; $4152: $00
    or $00                                        ; $4153: $f6 $00
    ld a, e                                       ; $4155: $7b
    adc d                                         ; $4156: $8a
    ld l, b                                       ; $4157: $68
    ld de, $0022                                  ; $4158: $11 $22 $00
    ld c, b                                       ; $415b: $48
    ld [hl+], a                                   ; $415c: $22
    ld bc, $1455                                  ; $415d: $01 $55 $14
    nop                                           ; $4160: $00
    rst $38                                       ; $4161: $ff
    add d                                         ; $4162: $82
    or $10                                        ; $4163: $f6 $10
    inc hl                                        ; $4165: $23
    nop                                           ; $4166: $00
    ld c, c                                       ; $4167: $49
    nop                                           ; $4168: $00
    and c                                         ; $4169: $a1
    stop                                          ; $416a: $10 $00
    xor e                                         ; $416c: $ab
    add b                                         ; $416d: $80
    adc a                                         ; $416e: $8f
    ld [$6200], sp                                ; $416f: $08 $00 $62
    ld h, d                                       ; $4172: $62
    jr nz, jr_0c7_41a5                            ; $4173: $20 $30

    jp hl                                         ; $4175: $e9


    push bc                                       ; $4176: $c5
    nop                                           ; $4177: $00
    ld b, [hl]                                    ; $4178: $46
    adc c                                         ; $4179: $89
    adc l                                         ; $417a: $8d
    ld d, e                                       ; $417b: $53
    dec d                                         ; $417c: $15
    dec l                                         ; $417d: $2d
    db $10                                        ; $417e: $10
    stop                                          ; $417f: $10 $00
    or b                                          ; $4181: $b0
    ret nz                                        ; $4182: $c0

    inc c                                         ; $4183: $0c
    inc c                                         ; $4184: $0c
    dec hl                                        ; $4185: $2b
    dec hl                                        ; $4186: $2b
    ret nz                                        ; $4187: $c0

    ld b, b                                       ; $4188: $40
    nop                                           ; $4189: $00
    ld h, h                                       ; $418a: $64
    and c                                         ; $418b: $a1
    dec hl                                        ; $418c: $2b
    ld d, b                                       ; $418d: $50
    ld d, c                                       ; $418e: $51
    ld b, c                                       ; $418f: $41
    ld b, d                                       ; $4190: $42
    ld b, d                                       ; $4191: $42
    nop                                           ; $4192: $00
    ld d, $16                                     ; $4193: $16 $16
    inc [hl]                                      ; $4195: $34
    inc [hl]                                      ; $4196: $34
    add h                                         ; $4197: $84
    add h                                         ; $4198: $84
    add d                                         ; $4199: $82
    add c                                         ; $419a: $81
    nop                                           ; $419b: $00
    add hl, bc                                    ; $419c: $09
    ld a, [bc]                                    ; $419d: $0a
    add [hl]                                      ; $419e: $86
    add h                                         ; $419f: $84
    ld [$2808], sp                                ; $41a0: $08 $08 $28
    jr z, jr_0c7_41a5                             ; $41a3: $28 $00

jr_0c7_41a5:
    jr jr_0c7_41b7                                ; $41a5: $18 $10

    jr nc, jr_0c7_41c9                            ; $41a7: $30 $20

    inc h                                         ; $41a9: $24
    inc b                                         ; $41aa: $04
    ret nz                                        ; $41ab: $c0

    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    add hl, bc                                    ; $41ae: $09
    adc c                                         ; $41af: $89
    ld l, b                                       ; $41b0: $68
    ld l, b                                       ; $41b1: $68
    sbc a                                         ; $41b2: $9f
    sbc a                                         ; $41b3: $9f
    db $fc                                        ; $41b4: $fc
    db $fc                                        ; $41b5: $fc
    nop                                           ; $41b6: $00

jr_0c7_41b7:
    sub d                                         ; $41b7: $92
    sub e                                         ; $41b8: $93
    add c                                         ; $41b9: $81
    add b                                         ; $41ba: $80
    ld bc, $5800                                  ; $41bb: $01 $00 $58
    ld e, b                                       ; $41be: $58
    nop                                           ; $41bf: $00
    rst $38                                       ; $41c0: $ff
    nop                                           ; $41c1: $00
    ld d, a                                       ; $41c2: $57
    ld d, a                                       ; $41c3: $57
    ld de, $4011                                  ; $41c4: $11 $11 $40
    ld b, b                                       ; $41c7: $40
    nop                                           ; $41c8: $00

jr_0c7_41c9:
    jr nz, jr_0c7_41d3                            ; $41c9: $20 $08

    sbc b                                         ; $41cb: $98
    adc b                                         ; $41cc: $88
    adc d                                         ; $41cd: $8a
    add d                                         ; $41ce: $82
    ld d, $10                                     ; $41cf: $16 $10
    nop                                           ; $41d1: $00
    add d                                         ; $41d2: $82

jr_0c7_41d3:
    add e                                         ; $41d3: $83
    ld d, d                                       ; $41d4: $52
    ld d, d                                       ; $41d5: $52
    inc b                                         ; $41d6: $04
    inc b                                         ; $41d7: $04
    jr nz, jr_0c7_41fa                            ; $41d8: $20 $20

    nop                                           ; $41da: $00
    ld h, b                                       ; $41db: $60
    ldh [rBCPS], a                                ; $41dc: $e0 $68
    add sp, $0d                                   ; $41de: $e8 $0d
    adc l                                         ; $41e0: $8d
    db $10                                        ; $41e1: $10
    sub b                                         ; $41e2: $90
    nop                                           ; $41e3: $00
    inc b                                         ; $41e4: $04
    add h                                         ; $41e5: $84
    inc c                                         ; $41e6: $0c
    adc h                                         ; $41e7: $8c
    nop                                           ; $41e8: $00
    add b                                         ; $41e9: $80
    db $10                                        ; $41ea: $10
    sub b                                         ; $41eb: $90
    nop                                           ; $41ec: $00
    db $fd                                        ; $41ed: $fd
    ld [bc], a                                    ; $41ee: $02
    jp nc, $a12d                                  ; $41ef: $d2 $2d $a1

    ld e, [hl]                                    ; $41f2: $5e
    ld [$04f7], sp                                ; $41f3: $08 $f7 $04
    ld [hl+], a                                   ; $41f6: $22
    rst $38                                       ; $41f7: $ff
    ld b, l                                       ; $41f8: $45
    rst $38                                       ; $41f9: $ff

jr_0c7_41fa:
    xor $e3                                       ; $41fa: $ee $e3
    db $10                                        ; $41fc: $10
    push af                                       ; $41fd: $f5
    ld a, [bc]                                    ; $41fe: $0a
    ld bc, $bc43                                  ; $41ff: $01 $43 $bc
    nop                                           ; $4202: $00
    rst $38                                       ; $4203: $ff
    ld [hl+], a                                   ; $4204: $22
    rst $38                                       ; $4205: $ff
    ld b, h                                       ; $4206: $44
    stop                                          ; $4207: $10 $00
    ld b, b                                       ; $4209: $40
    rst $18                                       ; $420a: $df
    ld [hl], d                                    ; $420b: $72
    ld bc, $25da                                  ; $420c: $01 $da $25
    or l                                          ; $420f: $b5
    ld c, d                                       ; $4210: $4a
    ld c, b                                       ; $4211: $48
    or a                                          ; $4212: $b7

jr_0c7_4213:
    add hl, de                                    ; $4213: $19
    ld [bc], a                                    ; $4214: $02
    rst $38                                       ; $4215: $ff
    ld d, l                                       ; $4216: $55
    jr nz, jr_0c7_4239                            ; $4217: $20 $20

    jr nc, jr_0c7_4273                            ; $4219: $30 $58

    ld l, a                                       ; $421b: $6f
    sub b                                         ; $421c: $90
    jr nz, @+$5a                                  ; $421d: $20 $58

    inc h                                         ; $421f: $24
    rst $28                                       ; $4220: $ef
    db $10                                        ; $4221: $10
    jr nc, jr_0c7_427c                            ; $4222: $30 $58

    ld a, e                                       ; $4224: $7b
    add h                                         ; $4225: $84
    ld d, b                                       ; $4226: $50
    ld e, b                                       ; $4227: $58
    cp a                                          ; $4228: $bf
    ld a, a                                       ; $4229: $7f
    ccf                                           ; $422a: $3f
    ret nz                                        ; $422b: $c0

    ccf                                           ; $422c: $3f
    ld d, b                                       ; $422d: $50
    ld c, b                                       ; $422e: $48
    ld d, l                                       ; $422f: $55
    add hl, bc                                    ; $4230: $09
    add b                                         ; $4231: $80
    ld c, b                                       ; $4232: $48
    ld h, l                                       ; $4233: $65
    add hl, bc                                    ; $4234: $09
    add b                                         ; $4235: $80
    ld c, b                                       ; $4236: $48
    ld [hl], l                                    ; $4237: $75
    add hl, bc                                    ; $4238: $09

jr_0c7_4239:
    add b                                         ; $4239: $80
    add b                                         ; $423a: $80
    ld c, b                                       ; $423b: $48
    inc l                                         ; $423c: $2c
    pop bc                                        ; $423d: $c1
    ret c                                         ; $423e: $d8

    ld h, d                                       ; $423f: $62
    cp d                                          ; $4240: $ba
    jr nc, jr_0c7_4213                            ; $4241: $30 $d0

    nop                                           ; $4243: $00
    rrca                                          ; $4244: $0f
    ld e, $47                                     ; $4245: $1e $47
    dec d                                         ; $4247: $15
    inc hl                                        ; $4248: $23
    call z, $8d81                                 ; $4249: $cc $81 $8d
    nop                                           ; $424c: $00
    ld h, b                                       ; $424d: $60
    ld h, a                                       ; $424e: $67
    adc b                                         ; $424f: $88
    dec a                                         ; $4250: $3d
    ld b, b                                       ; $4251: $40
    ld a, [$57b1]                                 ; $4252: $fa $b1 $57
    nop                                           ; $4255: $00
    ld hl, sp+$27                                 ; $4256: $f8 $27
    ld a, h                                       ; $4258: $7c
    xor e                                         ; $4259: $ab
    jp c, $db65                                   ; $425a: $da $65 $db

    and $00                                       ; $425d: $e6 $00
    dec sp                                        ; $425f: $3b
    call nz, $8580                                ; $4260: $c4 $80 $85
    ld h, b                                       ; $4263: $60
    db $10                                        ; $4264: $10
    jr nc, jr_0c7_42bf                            ; $4265: $30 $58

    nop                                           ; $4267: $00
    inc c                                         ; $4268: $0c
    ld d, h                                       ; $4269: $54
    daa                                           ; $426a: $27
    jp $5211                                      ; $426b: $c3 $11 $52


    adc c                                         ; $426e: $89
    adc a                                         ; $426f: $8f
    nop                                           ; $4270: $00
    ldh [$bd], a                                  ; $4271: $e0 $bd

jr_0c7_4273:
    ret nz                                        ; $4273: $c0

    ld c, e                                       ; $4274: $4b
    ld h, b                                       ; $4275: $60
    ld [hl], $10                                  ; $4276: $36 $10
    ccf                                           ; $4278: $3f
    nop                                           ; $4279: $00
    add sp, -$5f                                  ; $427a: $e8 $a1

jr_0c7_427c:
    add [hl]                                      ; $427c: $86
    ld e, [hl]                                    ; $427d: $5e
    ld bc, $80bb                                  ; $427e: $01 $bb $80
    rlca                                          ; $4281: $07
    nop                                           ; $4282: $00
    ld h, b                                       ; $4283: $60
    ld b, b                                       ; $4284: $40
    db $db                                        ; $4285: $db
    ld h, a                                       ; $4286: $67
    ld a, [hl]                                    ; $4287: $7e
    add e                                         ; $4288: $83
    dec a                                         ; $4289: $3d
    jp c, $0d00                                   ; $428a: $da $00 $0d

    ld b, d                                       ; $428d: $42
    rlca                                          ; $428e: $07
    ld [c], a                                     ; $428f: $e2
    dec bc                                        ; $4290: $0b
    cp b                                          ; $4291: $b8
    add c                                         ; $4292: $81
    ld [hl], d                                    ; $4293: $72
    nop                                           ; $4294: $00
    ld b, h                                       ; $4295: $44
    ld c, b                                       ; $4296: $48
    add b                                         ; $4297: $80
    ld h, e                                       ; $4298: $63
    ldh [rSVBK], a                                ; $4299: $e0 $70
    or b                                          ; $429b: $b0
    ld a, b                                       ; $429c: $78
    nop                                           ; $429d: $00
    inc a                                         ; $429e: $3c
    call nc, $23f6                                ; $429f: $d4 $f6 $23
    ret                                           ; $42a2: $c9


    ld e, e                                       ; $42a3: $5b
    add b                                         ; $42a4: $80

Call_0c7_42a5:
    sbc e                                         ; $42a5: $9b
    nop                                           ; $42a6: $00
    ld h, b                                       ; $42a7: $60
    rst $38                                       ; $42a8: $ff
    add b                                         ; $42a9: $80
    dec h                                         ; $42aa: $25
    ld h, b                                       ; $42ab: $60
    cpl                                           ; $42ac: $2f
    sub b                                         ; $42ad: $90
    rrca                                          ; $42ae: $0f
    nop                                           ; $42af: $00

jr_0c7_42b0:
    ld [$0632], sp                                ; $42b0: $08 $32 $06
    inc de                                        ; $42b3: $13
    ld bc, $81c0                                  ; $42b4: $01 $c0 $81
    add a                                         ; $42b7: $87
    nop                                           ; $42b8: $00
    ld h, e                                       ; $42b9: $63
    ld l, a                                       ; $42ba: $6f
    add b                                         ; $42bb: $80
    adc l                                         ; $42bc: $8d
    ld h, b                                       ; $42bd: $60
    ld a, l                                       ; $42be: $7d

jr_0c7_42bf:
    db $10                                        ; $42bf: $10
    xor $00                                       ; $42c0: $ee $00
    ld [$06c1], sp                                ; $42c2: $08 $c1 $06
    ld c, h                                       ; $42c5: $4c
    inc bc                                        ; $42c6: $03
    cp a                                          ; $42c7: $bf
    add b                                         ; $42c8: $80
    ld c, b                                       ; $42c9: $48
    nop                                           ; $42ca: $00
    ld [c], a                                     ; $42cb: $e2
    inc bc                                        ; $42cc: $03
    ld [hl+], a                                   ; $42cd: $22
    adc c                                         ; $42ce: $89
    ld bc, $c084                                  ; $42cf: $01 $84 $c0
    ld [de], a                                    ; $42d2: $12
    nop                                           ; $42d3: $00
    ld h, b                                       ; $42d4: $60
    ld a, b                                       ; $42d5: $78
    db $10                                        ; $42d6: $10
    ret z                                         ; $42d7: $c8

    inc l                                         ; $42d8: $2c
    jp nz, $d606                                  ; $42d9: $c2 $06 $d6

    nop                                           ; $42dc: $00
    ld bc, $0247                                  ; $42dd: $01 $47 $02
    ld bc, $c389                                  ; $42e0: $01 $89 $c3
    ret nz                                        ; $42e3: $c0

jr_0c7_42e4:
    ld l, b                                       ; $42e4: $68

jr_0c7_42e5:
    nop                                           ; $42e5: $00
    ld h, a                                       ; $42e6: $67
    rla                                           ; $42e7: $17
    jr c, jr_0c7_42b0                             ; $42e8: $38 $c6

    ld [$1648], sp                                ; $42ea: $08 $48 $16
    stop                                          ; $42ed: $10 $00
    ld a, a                                       ; $42ef: $7f
    dec h                                         ; $42f0: $25
    ld [bc], a                                    ; $42f1: $02
    add c                                         ; $42f2: $81
    add hl, bc                                    ; $42f3: $09
    inc b                                         ; $42f4: $04
    ret nz                                        ; $42f5: $c0

    rst $20                                       ; $42f6: $e7
    nop                                           ; $42f7: $00
    jr nz, jr_0c7_4372                            ; $42f8: $20 $78

    db $10                                        ; $42fa: $10
    add sp, $0c                                   ; $42fb: $e8 $0c
    ret nz                                        ; $42fd: $c0

    ld b, $c7                                     ; $42fe: $06 $c7
    nop                                           ; $4300: $00
    ld de, $0206                                  ; $4301: $11 $06 $02
    add hl, bc                                    ; $4304: $09
    add c                                         ; $4305: $81
    jp Jump_0c7_6cc0                              ; $4306: $c3 $c0 $6c


    ld [bc], a                                    ; $4309: $02
    ld h, a                                       ; $430a: $67
    dec c                                         ; $430b: $0d
    jr nc, jr_0c7_42e4                            ; $430c: $30 $d6

    ld [$2049], sp                                ; $430e: $08 $49 $20
    nop                                           ; $4311: $00
    ld h, d                                       ; $4312: $62
    nop                                           ; $4313: $00
    sub $f7                                       ; $4314: $d6 $f7
    ld bc, $c02d                                  ; $4316: $01 $2d $c0
    jp hl                                         ; $4319: $e9


    inc h                                         ; $431a: $24
    sbc c                                         ; $431b: $99
    nop                                           ; $431c: $00
    jp nc, $0c03                                  ; $431d: $d2 $03 $0c

    jr nz, jr_0c7_4328                            ; $4320: $20 $06

    xor c                                         ; $4322: $a9
    ld bc, $00a2                                  ; $4323: $01 $a2 $00
    ld b, $db                                     ; $4326: $06 $db

jr_0c7_4328:
    ld bc, $c811                                  ; $4328: $01 $11 $c8
    db $f4                                        ; $432b: $f4
    jr nz, jr_0c7_43a9                            ; $432c: $20 $7b

    nop                                           ; $432e: $00
    db $10                                        ; $432f: $10
    cp a                                          ; $4330: $bf

jr_0c7_4331:
    add hl, bc                                    ; $4331: $09
    and d                                         ; $4332: $a2
    ld b, $9c                                     ; $4333: $06 $9c
    ld b, e                                       ; $4335: $43
    ld e, $02                                     ; $4336: $1e $02
    ret nz                                        ; $4338: $c0

    jr nc, @+$67                                  ; $4339: $30 $65

    and l                                         ; $433b: $a5
    ld a, [de]                                    ; $433c: $1a
    dec c                                         ; $433d: $0d
    add b                                         ; $433e: $80
    nop                                           ; $433f: $00
    stop                                          ; $4340: $10 $00
    inc bc                                        ; $4342: $03
    ret nc                                        ; $4343: $d0

    add c                                         ; $4344: $81
    add e                                         ; $4345: $83
    ld h, a                                       ; $4346: $67
    db $fd                                        ; $4347: $fd
    add b                                         ; $4348: $80
    adc b                                         ; $4349: $88
    jr nz, jr_0c7_43b1                            ; $434a: $20 $65

    ld a, c                                       ; $434c: $79
    add b                                         ; $434d: $80
    nop                                           ; $434e: $00
    ret                                           ; $434f: $c9


    ld b, $ce                                     ; $4350: $06 $ce
    ld bc, $007f                                  ; $4352: $01 $7f $00
    add b                                         ; $4355: $80
    ld a, d                                       ; $4356: $7a
    ret nz                                        ; $4357: $c0

    jr nz, jr_0c7_435d                            ; $4358: $20 $03

    ld [$8081], sp                                ; $435a: $08 $81 $80

jr_0c7_435d:
    nop                                           ; $435d: $00
    jp $277d                                      ; $435e: $c3 $7d $27


    add [hl]                                      ; $4361: $86
    jr jr_0c7_42e5                                ; $4362: $18 $81

    inc c                                         ; $4364: $0c
    scf                                           ; $4365: $37
    nop                                           ; $4366: $00
    ld [bc], a                                    ; $4367: $02
    ld hl, $d301                                  ; $4368: $21 $01 $d3
    ld a, [de]                                    ; $436b: $1a
    ld h, c                                       ; $436c: $61
    ld h, c                                       ; $436d: $61
    inc b                                         ; $436e: $04
    jr nz, jr_0c7_4331                            ; $436f: $20 $c0

    ld h, d                                       ; $4371: $62

jr_0c7_4372:
    ld [hl], b                                    ; $4372: $70
    nop                                           ; $4373: $00
    ld e, h                                       ; $4374: $5c
    ld [$16c2], sp                                ; $4375: $08 $c2 $16
    adc e                                         ; $4378: $8b
    nop                                           ; $4379: $00
    ld hl, $06b9                                  ; $437a: $21 $b9 $06
    or e                                          ; $437d: $b3
    ld bc, $c493                                  ; $437e: $01 $93 $c4
    ld [hl], l                                    ; $4381: $75
    nop                                           ; $4382: $00
    ld h, b                                       ; $4383: $60
    ld a, [de]                                    ; $4384: $1a
    pop af                                        ; $4385: $f1
    db $dd                                        ; $4386: $dd
    xor b                                         ; $4387: $a8
    inc bc                                        ; $4388: $03
    cp $1a                                        ; $4389: $fe $1a
    nop                                           ; $438b: $00
    rst $28                                       ; $438c: $ef
    xor l                                         ; $438d: $ad
    ld [bc], a                                    ; $438e: $02
    inc [hl]                                      ; $438f: $34
    add c                                         ; $4390: $81
    xor e                                         ; $4391: $ab
    ld b, b                                       ; $4392: $40
    ld d, a                                       ; $4393: $57
    nop                                           ; $4394: $00
    cpl                                           ; $4395: $2f
    sbc l                                         ; $4396: $9d
    ld e, $45                                     ; $4397: $1e $45
    ld c, $22                                     ; $4399: $0e $22
    inc bc                                        ; $439b: $03
    xor e                                         ; $439c: $ab
    nop                                           ; $439d: $00
    ld bc, $d01a                                  ; $439e: $01 $1a $d0

Jump_0c7_43a1:
    add hl, bc                                    ; $43a1: $09
    inc c                                         ; $43a2: $0c
    ld bc, $5206                                  ; $43a3: $01 $06 $52
    nop                                           ; $43a6: $00
    inc bc                                        ; $43a7: $03
    add b                                         ; $43a8: $80

jr_0c7_43a9:
    add b                                         ; $43a9: $80
    add h                                         ; $43aa: $84
    ldh [rNR42], a                                ; $43ab: $e0 $21
    ldh a, [$90]                                  ; $43ad: $f0 $90

jr_0c7_43af:
    nop                                           ; $43af: $00
    ld a, b                                       ; $43b0: $78

jr_0c7_43b1:
    pop de                                        ; $43b1: $d1
    dec a                                         ; $43b2: $3d
    ld b, h                                       ; $43b3: $44
    rra                                           ; $43b4: $1f

jr_0c7_43b5:
    ld [hl], a                                    ; $43b5: $77
    and [hl]                                      ; $43b6: $a6
    adc c                                         ; $43b7: $89
    nop                                           ; $43b8: $00
    ld b, e                                       ; $43b9: $43

jr_0c7_43ba:
    adc b                                         ; $43ba: $88
    add b                                         ; $43bb: $80
    ld l, d                                       ; $43bc: $6a
    ld b, b                                       ; $43bd: $40
    sub c                                         ; $43be: $91

jr_0c7_43bf:
    jr nc, @-$66                                  ; $43bf: $30 $98

    nop                                           ; $43c1: $00
    ld [$70ad], sp                                ; $43c2: $08 $ad $70
    ld d, $f8                                     ; $43c5: $16 $f8
    rst $10                                       ; $43c7: $d7
    xor h                                         ; $43c8: $ac
    dec de                                        ; $43c9: $1b
    nop                                           ; $43ca: $00
    and $d9                                       ; $43cb: $e6 $d9
    db $ed                                        ; $43cd: $ed
    jr nz, @+$81                                  ; $43ce: $20 $7f

    inc d                                         ; $43d0: $14
    dec sp                                        ; $43d1: $3b
    db $dd                                        ; $43d2: $dd

jr_0c7_43d3:
    nop                                           ; $43d3: $00
    rrca                                          ; $43d4: $0f
    dec de                                        ; $43d5: $1b
    jr nc, jr_0c7_43af                            ; $43d6: $30 $d7

    ld l, b                                       ; $43d8: $68
    db $f4                                        ; $43d9: $f4
    add [hl]                                      ; $43da: $86
    ld [hl], $00                                  ; $43db: $36 $00
    inc bc                                        ; $43dd: $03
    push hl                                       ; $43de: $e5
    sub b                                         ; $43df: $90
    db $e4                                        ; $43e0: $e4
    ret nz                                        ; $43e1: $c0

    and h                                         ; $43e2: $a4
    ld [hl], c                                    ; $43e3: $71
    reti                                          ; $43e4: $d9


    nop                                           ; $43e5: $00
    ld d, b                                       ; $43e6: $50
    ld [$2c32], sp                                ; $43e7: $08 $32 $2c
    jr jr_0c7_4400                                ; $43ea: $18 $14

    or $d1                                        ; $43ec: $f6 $d1
    nop                                           ; $43ee: $00
    inc bc                                        ; $43ef: $03
    sub h                                         ; $43f0: $94
    add b                                         ; $43f1: $80
    call nz, $a260                                ; $43f2: $c4 $60 $a2
    jr nc, jr_0c7_43bf                            ; $43f5: $30 $c8

    nop                                           ; $43f7: $00
    jr jr_0c7_43b5                                ; $43f8: $18 $bb

    jr nz, @-$70                                  ; $43fa: $20 $8e

    ld e, b                                       ; $43fc: $58
    ld hl, sp+$06                                 ; $43fd: $f8 $06
    push de                                       ; $43ff: $d5

jr_0c7_4400:
    nop                                           ; $4400: $00
    inc bc                                        ; $4401: $03
    call nc, $6b81                                ; $4402: $d4 $81 $6b
    ld b, b                                       ; $4405: $40
    sub l                                         ; $4406: $95
    ld [hl], $40                                  ; $4407: $36 $40
    nop                                           ; $4409: $00
    inc e                                         ; $440a: $1c
    ld c, b                                       ; $440b: $48
    ccf                                           ; $440c: $3f
    ld e, b                                       ; $440d: $58
    dec c                                         ; $440e: $0d
    inc [hl]                                      ; $440f: $34
    add a                                         ; $4410: $87
    ld c, l                                       ; $4411: $4d
    nop                                           ; $4412: $00
    inc hl                                        ; $4413: $23

Call_0c7_4414:
    ld e, b                                       ; $4414: $58
    add c                                         ; $4415: $81
    ld a, [$8b40]                                 ; $4416: $fa $40 $8b
    jr nc, jr_0c7_43ba                            ; $4419: $30 $9f

    nop                                           ; $441b: $00
    ld [$f037], sp                                ; $441c: $08 $37 $f0
    ld e, b                                       ; $441f: $58
    cp e                                          ; $4420: $bb
    call z, Call_0c7_4bbe                         ; $4421: $cc $be $4b
    nop                                           ; $4424: $00
    or [hl]                                       ; $4425: $b6
    ld e, b                                       ; $4426: $58
    rst $30                                       ; $4427: $f7
    ld [$106d], a                                 ; $4428: $ea $6d $10
    ccf                                           ; $442b: $3f
    ld l, e                                       ; $442c: $6b
    nop                                           ; $442d: $00
    ld a, l                                       ; $442e: $7d
    ld a, [de]                                    ; $442f: $1a
    ld a, l                                       ; $4430: $7d
    ld c, $e7                                     ; $4431: $0e $e7
    sub $03                                       ; $4433: $d6 $03
    dec e                                         ; $4435: $1d
    nop                                           ; $4436: $00
    add c                                         ; $4437: $81
    ld d, e                                       ; $4438: $53
    ret z                                         ; $4439: $c8

    ld [hl], $a0                                  ; $443a: $36 $a0
    inc b                                         ; $443c: $04
    add hl, de                                    ; $443d: $19
    ld c, e                                       ; $443e: $4b
    nop                                           ; $443f: $00
    inc c                                         ; $4440: $0c
    add a                                         ; $4441: $87
    jr jr_0c7_43d3                                ; $4442: $18 $8f

    inc b                                         ; $4444: $04
    ld [bc], a                                    ; $4445: $02
    ld d, e                                       ; $4446: $53
    ld bc, $8100                                  ; $4447: $01 $00 $81
    call z, Call_000_3240                         ; $444a: $cc $40 $32
    ld hl, $1658                                  ; $444d: $21 $58 $16
    ld c, b                                       ; $4450: $48
    nop                                           ; $4451: $00
    inc c                                         ; $4452: $0c
    ld [hl], d                                    ; $4453: $72
    ld e, l                                       ; $4454: $5d
    inc l                                         ; $4455: $2c
    rst $20                                       ; $4456: $e7
    sub a                                         ; $4457: $97
    inc bc                                        ; $4458: $03
    rst $18                                       ; $4459: $df
    nop                                           ; $445a: $00
    ld bc, $c07a                                  ; $445b: $01 $7a $c0
    ld [hl], $a0                                  ; $445e: $36 $a0
    dec c                                         ; $4460: $0d
    jr jr_0c7_44ae                                ; $4461: $18 $4b

    nop                                           ; $4463: $00
    inc c                                         ; $4464: $0c
    inc de                                        ; $4465: $13
    ld [$050e], sp                                ; $4466: $08 $0e $05
    ld b, d                                       ; $4469: $42
    inc de                                        ; $446a: $13
    dec b                                         ; $446b: $05
    ld [$c881], sp                                ; $446c: $08 $81 $c8
    ld b, b                                       ; $446f: $40
    ld [hl], d                                    ; $4470: $72
    jr nz, jr_0c7_4483                            ; $4471: $20 $10

    sub [hl]                                      ; $4473: $96
    inc e                                         ; $4474: $1c
    ld c, b                                       ; $4475: $48
    nop                                           ; $4476: $00
    inc b                                         ; $4477: $04
    inc bc                                        ; $4478: $03
    ld [bc], a                                    ; $4479: $02
    sub h                                         ; $447a: $94
    ld bc, $c048                                  ; $447b: $01 $48 $c0
    ld d, c                                       ; $447e: $51
    nop                                           ; $447f: $00
    ld h, b                                       ; $4480: $60
    jr c, jr_0c7_4493                             ; $4481: $38 $10

jr_0c7_4483:
    sub l                                         ; $4483: $95
    inc l                                         ; $4484: $2c
    and d                                         ; $4485: $a2
    jr jr_0c7_44b4                                ; $4486: $18 $2c

    nop                                           ; $4488: $00
    add h                                         ; $4489: $84
    ld a, a                                       ; $448a: $7f
    ld [bc], a                                    ; $448b: $02
    dec sp                                        ; $448c: $3b
    add c                                         ; $448d: $81
    ld [hl], c                                    ; $448e: $71
    call nz, Call_000_0097                        ; $448f: $c4 $97 $00
    ld h, b                                       ; $4492: $60

jr_0c7_4493:
    ld h, e                                       ; $4493: $63
    jr jr_0c7_44bf                                ; $4494: $18 $29

    adc h                                         ; $4496: $8c
    ld c, b                                       ; $4497: $48
    ccf                                           ; $4498: $3f
    ld [hl], h                                    ; $4499: $74
    nop                                           ; $449a: $00
    dec c                                         ; $449b: $0d
    inc l                                         ; $449c: $2c
    add a                                         ; $449d: $87
    call $4a23                                    ; $449e: $cd $23 $4a
    sub c                                         ; $44a1: $91
    dec sp                                        ; $44a2: $3b
    nop                                           ; $44a3: $00
    ret nz                                        ; $44a4: $c0

    adc e                                         ; $44a5: $8b
    jr nc, @-$63                                  ; $44a6: $30 $9b

    inc c                                         ; $44a8: $0c
    daa                                           ; $44a9: $27
    ldh a, [$59]                                  ; $44aa: $f0 $59

jr_0c7_44ac:
    nop                                           ; $44ac: $00
    cp e                                          ; $44ad: $bb

jr_0c7_44ae:
    ld c, h                                       ; $44ae: $4c
    cp [hl]                                       ; $44af: $be
    ld c, d                                       ; $44b0: $4a
    or a                                          ; $44b1: $b7
    ld b, b                                       ; $44b2: $40
    rst $38                                       ; $44b3: $ff

jr_0c7_44b4:
    ld [c], a                                     ; $44b4: $e2
    nop                                           ; $44b5: $00
    ld l, l                                       ; $44b6: $6d
    ld [de], a                                    ; $44b7: $12
    dec a                                         ; $44b8: $3d
    ld h, d                                       ; $44b9: $62
    ld a, l                                       ; $44ba: $7d
    cp l                                          ; $44bb: $bd
    ld d, b                                       ; $44bc: $50
    and $00                                       ; $44bd: $e6 $00

jr_0c7_44bf:
    sbc h                                         ; $44bf: $9c
    xor a                                         ; $44c0: $af
    ld a, d                                       ; $44c1: $7a
    db $eb                                        ; $44c2: $eb
    and c                                         ; $44c3: $a1
    rlca                                          ; $44c4: $07
    ret nz                                        ; $44c5: $c0

    ld sp, $2400                                  ; $44c6: $31 $00 $24
    rra                                           ; $44c9: $1f
    db $10                                        ; $44ca: $10
    add d                                         ; $44cb: $82
    inc c                                         ; $44cc: $0c
    ld e, b                                       ; $44cd: $58
    rra                                           ; $44ce: $1f
    and h                                         ; $44cf: $a4
    nop                                           ; $44d0: $00
    rlca                                          ; $44d1: $07

jr_0c7_44d2:
    inc de                                        ; $44d2: $13
    inc bc                                        ; $44d3: $03
    ld de, $4480                                  ; $44d4: $11 $80 $44
    ret nz                                        ; $44d7: $c0

    dec d                                         ; $44d8: $15
    nop                                           ; $44d9: $00
    ld h, b                                       ; $44da: $60
    and b                                         ; $44db: $a0
    jr jr_0c7_44de                                ; $44dc: $18 $00

jr_0c7_44de:
    adc h                                         ; $44de: $8c
    nop                                           ; $44df: $00

jr_0c7_44e0:
    sbc b                                         ; $44e0: $98
    inc d                                         ; $44e1: $14
    nop                                           ; $44e2: $00
    inc l                                         ; $44e3: $2c
    ld h, a                                       ; $44e4: $67
    jp nc, $8d21                                  ; $44e5: $d2 $21 $8d

    jr c, jr_0c7_44ac                             ; $44e8: $38 $c2

    ccf                                           ; $44ea: $3f
    nop                                           ; $44eb: $00
    ld h, b                                       ; $44ec: $60
    ld h, l                                       ; $44ed: $65
    jr jr_0c7_4542                                ; $44ee: $18 $52

    adc h                                         ; $44f0: $8c
    db $10                                        ; $44f1: $10
    ld hl, sp-$18                                 ; $44f2: $f8 $e8
    nop                                           ; $44f4: $00
    ld e, h                                       ; $44f5: $5c
    add d                                         ; $44f6: $82
    ld a, [hl]                                    ; $44f7: $7e
    add hl, hl                                    ; $44f8: $29
    rst $10                                       ; $44f9: $d7
    ld c, d                                       ; $44fa: $4a
    rst $30                                       ; $44fb: $f7

jr_0c7_44fc:
    xor a                                         ; $44fc: $af
    nop                                           ; $44fd: $00
    inc [hl]                                      ; $44fe: $34

Call_0c7_44ff:
    or e                                          ; $44ff: $b3
    jr jr_0c7_452c                                ; $4500: $18 $2a

    ld c, h                                       ; $4502: $4c
    ld [$825c], a                                 ; $4503: $ea $5c $82
    nop                                           ; $4506: $00
    ld a, a                                       ; $4507: $7f
    cp e                                          ; $4508: $bb
    push de                                       ; $4509: $d5
    xor [hl]                                      ; $450a: $ae
    ld [hl], a                                    ; $450b: $77
    cp a                                          ; $450c: $bf
    inc [hl]                                      ; $450d: $34
    ld [hl-], a                                   ; $450e: $32
    nop                                           ; $450f: $00
    jr jr_0c7_44fc                                ; $4510: $18 $ea

    inc c                                         ; $4512: $0c
    sub h                                         ; $4513: $94
    inc hl                                        ; $4514: $23
    ld c, d                                       ; $4515: $4a
    inc [hl]                                      ; $4516: $34
    ld [hl+], a                                   ; $4517: $22
    nop                                           ; $4518: $00
    jp $812c                                      ; $4519: $c3 $2c $81


    jr c, jr_0c7_44e0                             ; $451c: $38 $c2

    ld e, [hl]                                    ; $451e: $5e
    ld hl, $0264                                  ; $451f: $21 $64 $02
    jr jr_0c7_457a                                ; $4522: $18 $56

    adc h                                         ; $4524: $8c
    ld a, $03                                     ; $4525: $3e $03
    ld h, $4e                                     ; $4527: $26 $4e
    nop                                           ; $4529: $00
    add l                                         ; $452a: $85
    nop                                           ; $452b: $00

jr_0c7_452c:
    add b                                         ; $452c: $80
    ret nz                                        ; $452d: $c0

    ld b, b                                       ; $452e: $40
    ld [hl], l                                    ; $452f: $75
    jr nz, jr_0c7_44d2                            ; $4530: $20 $a0

    jr jr_0c7_454a                                ; $4532: $18 $16

    nop                                           ; $4534: $00
    adc h                                         ; $4535: $8c
    ld [bc], a                                    ; $4536: $02
    ld a, e                                       ; $4537: $7b
    adc h                                         ; $4538: $8c
    cp [hl]                                       ; $4539: $be
    ld a, [hl+]                                   ; $453a: $2a
    ei                                            ; $453b: $fb
    db $eb                                        ; $453c: $eb
    nop                                           ; $453d: $00
    and c                                         ; $453e: $a1
    and [hl]                                      ; $453f: $a6
    ld b, b                                       ; $4540: $40
    inc h                                         ; $4541: $24

jr_0c7_4542:
    ld sp, $1816                                  ; $4542: $31 $16 $18
    add [hl]                                      ; $4545: $86
    nop                                           ; $4546: $00
    inc b                                         ; $4547: $04
    nop                                           ; $4548: $00
    inc hl                                        ; $4549: $23

jr_0c7_454a:
    xor [hl]                                      ; $454a: $ae
    inc b                                         ; $454b: $04
    ld a, [$3a03]                                 ; $454c: $fa $03 $3a
    nop                                           ; $454f: $00
    add c                                         ; $4550: $81
    ld [hl], b                                    ; $4551: $70
    call nz, Call_000_3067                        ; $4552: $c4 $67 $30
    ld c, l                                       ; $4555: $4d
    jr @+$33                                      ; $4556: $18 $31

    nop                                           ; $4558: $00
    adc h                                         ; $4559: $8c
    ld c, $23                                     ; $455a: $0e $23
    ld b, d                                       ; $455c: $42
    inc b                                         ; $455d: $04
    ld b, d                                       ; $455e: $42
    inc bc                                        ; $455f: $03
    dec d                                         ; $4560: $15
    nop                                           ; $4561: $00
    add b                                         ; $4562: $80
    ld c, c                                       ; $4563: $49
    ret nz                                        ; $4564: $c0

    db $10                                        ; $4565: $10
    ld h, b                                       ; $4566: $60
    ld bc, $8e18                                  ; $4567: $01 $18 $8e
    nop                                           ; $456a: $00
    inc [hl]                                      ; $456b: $34
    halt                                          ; $456c: $76
    jp $0506                                      ; $456d: $c3 $06 $05


    ld d, c                                       ; $4570: $51
    inc bc                                        ; $4571: $03
    add h                                         ; $4572: $84
    nop                                           ; $4573: $00
    add c                                         ; $4574: $81
    jr z, jr_0c7_45b7                             ; $4575: $28 $40

    db $10                                        ; $4577: $10
    inc sp                                        ; $4578: $33

jr_0c7_4579:
    ld c, d                                       ; $4579: $4a

jr_0c7_457a:
    inc e                                         ; $457a: $1c
    ld c, h                                       ; $457b: $4c
    add b                                         ; $457c: $80
    ld [$8600], a                                 ; $457d: $ea $00 $86
    rst $20                                       ; $4580: $e7
    inc de                                        ; $4581: $13
    inc bc                                        ; $4582: $03
    ld e, a                                       ; $4583: $5f
    add c                                         ; $4584: $81
    ld a, d                                       ; $4585: $7a
    nop                                           ; $4586: $00
    ret nz                                        ; $4587: $c0

    ld h, $b0                                     ; $4588: $26 $b0
    ld e, l                                       ; $458a: $5d
    ld [$0608], sp                                ; $458b: $08 $08 $06
    jr nz, jr_0c7_4590                            ; $458e: $20 $00

jr_0c7_4590:
    inc bc                                        ; $4590: $03
    ld a, [hl-]                                   ; $4591: $3a
    ret nz                                        ; $4592: $c0

    ld h, $f0                                     ; $4593: $26 $f0
    ld d, c                                       ; $4595: $51
    cp e                                          ; $4596: $bb
    adc $00                                       ; $4597: $ce $00
    cp h                                          ; $4599: $bc
    ld l, e                                       ; $459a: $6b
    or [hl]                                       ; $459b: $b6
    sbc c                                         ; $459c: $99
    rst $30                                       ; $459d: $f7
    jp z, $746d                                   ; $459e: $ca $6d $74

    nop                                           ; $45a1: $00
    ccf                                           ; $45a2: $3f
    and a                                         ; $45a3: $a7
    ld b, c                                       ; $45a4: $41
    halt                                          ; $45a5: $76
    cpl                                           ; $45a6: $2f
    ld l, d                                       ; $45a7: $6a
    dec e                                         ; $45a8: $1d
    cp [hl]                                       ; $45a9: $be
    nop                                           ; $45aa: $00

jr_0c7_45ab:
    dec b                                         ; $45ab: $05
    db $ed                                        ; $45ac: $ed
    inc bc                                        ; $45ad: $03
    reti                                          ; $45ae: $d9


    ld bc, $ca10                                  ; $45af: $01 $10 $ca
    dec hl                                        ; $45b2: $2b
    nop                                           ; $45b3: $00
    or b                                          ; $45b4: $b0
    jr c, jr_0c7_4579                             ; $45b5: $38 $c2

jr_0c7_45b7:
    ld h, $f0                                     ; $45b7: $26 $f0

jr_0c7_45b9:
    ld d, b                                       ; $45b9: $50
    cp e                                          ; $45ba: $bb
    ld e, [hl]                                    ; $45bb: $5e
    nop                                           ; $45bc: $00
    xor h                                         ; $45bd: $ac
    ld c, e                                       ; $45be: $4b
    or [hl]                                       ; $45bf: $b6
    ld [$42f7], sp                                ; $45c0: $08 $f7 $42
    db $ed                                        ; $45c3: $ed
    ld [hl+], a                                   ; $45c4: $22
    nop                                           ; $45c5: $00
    dec a                                         ; $45c6: $3d
    push hl                                       ; $45c7: $e5
    ld b, e                                       ; $45c8: $43
    ld e, d                                       ; $45c9: $5a
    cpl                                           ; $45ca: $2f
    ld b, d                                       ; $45cb: $42
    dec e                                         ; $45cc: $1d
    inc a                                         ; $45cd: $3c
    add b                                         ; $45ce: $80
    sub d                                         ; $45cf: $92
    ld bc, $9149                                  ; $45d0: $01 $49 $91
    jp c, Jump_000_0b40                           ; $45d3: $da $40 $0b

    or b                                          ; $45d6: $b0
    inc sp                                        ; $45d7: $33
    nop                                           ; $45d8: $00
    ret z                                         ; $45d9: $c8

    and e                                         ; $45da: $a3
    jr nc, jr_0c7_45ab                            ; $45db: $30 $ce

    jr jr_0c7_45b9                                ; $45dd: $18 $da

    inc c                                         ; $45df: $0c
    push af                                       ; $45e0: $f5
    nop                                           ; $45e1: $00
    inc bc                                        ; $45e2: $03
    ld b, l                                       ; $45e3: $45
    sub c                                         ; $45e4: $91
    ld l, c                                       ; $45e5: $69
    ld b, b                                       ; $45e6: $40
    nop                                           ; $45e7: $00
    scf                                           ; $45e8: $37
    ld [hl], $00                                  ; $45e9: $36 $00
    ret nz                                        ; $45eb: $c0

    ld d, [hl]                                    ; $45ec: $56
    jr nz, @+$3a                                  ; $45ed: $20 $38

    ld [$7614], sp                                ; $45ef: $08 $14 $76
    inc bc                                        ; $45f2: $03
    nop                                           ; $45f3: $00
    jp nz, $8190                                  ; $45f4: $c2 $90 $81

    call nz, $70c0                                ; $45f7: $c4 $c0 $70
    jr nz, jr_0c7_45ff                            ; $45fa: $20 $03

    nop                                           ; $45fc: $00
    inc b                                         ; $45fd: $04
    ld b, c                                       ; $45fe: $41

jr_0c7_45ff:
    inc de                                        ; $45ff: $13
    add h                                         ; $4600: $84
    add c                                         ; $4601: $81
    ld l, b                                       ; $4602: $68
    ld b, b                                       ; $4603: $40
    inc h                                         ; $4604: $24
    nop                                           ; $4605: $00
    inc sp                                        ; $4606: $33
    ld a, [de]                                    ; $4607: $1a
    inc e                                         ; $4608: $1c
    ld c, d                                       ; $4609: $4a
    inc b                                         ; $460a: $04
    nop                                           ; $460b: $00
    inc bc                                        ; $460c: $03
    adc $00                                       ; $460d: $ce $00
    and a                                         ; $460f: $a7
    ld b, a                                       ; $4610: $47
    inc de                                        ; $4611: $13
    ld d, l                                       ; $4612: $55
    adc c                                         ; $4613: $89
    ld c, d                                       ; $4614: $4a
    ldh [rNR52], a                                ; $4615: $e0 $26
    nop                                           ; $4617: $00
    or b                                          ; $4618: $b0
    ld e, b                                       ; $4619: $58
    add hl, bc                                    ; $461a: $09

jr_0c7_461b:
    ld a, [bc]                                    ; $461b: $0a
    inc b                                         ; $461c: $04
    ld [bc], a                                    ; $461d: $02
    inc hl                                        ; $461e: $23
    ldh a, [rP1]                                  ; $461f: $f0 $00
    ld b, d                                       ; $4621: $42
    dec bc                                        ; $4622: $0b
    jr nc, jr_0c7_461b                            ; $4623: $30 $f6

    ld e, c                                       ; $4625: $59
    sbc $a4                                       ; $4626: $de $a4
    or a                                          ; $4628: $b7
    nop                                           ; $4629: $00
    ld [bc], a                                    ; $462a: $02
    halt                                          ; $462b: $76
    add c                                         ; $462c: $81
    db $f4                                        ; $462d: $f4
    ret nz                                        ; $462e: $c0

jr_0c7_462f:
    push af                                       ; $462f: $f5
    ld h, b                                       ; $4630: $60
    cp a                                          ; $4631: $bf
    nop                                           ; $4632: $00
    ret nz                                        ; $4633: $c0

    cp l                                          ; $4634: $bd
    ld h, b                                       ; $4635: $60
    ld hl, sp+$52                                 ; $4636: $f8 $52
    cp b                                          ; $4638: $b8
    xor l                                         ; $4639: $ad
    dec c                                         ; $463a: $0d
    nop                                           ; $463b: $00
    or $53                                        ; $463c: $f6 $53
    db $ed                                        ; $463e: $ed
    and d                                         ; $463f: $a2
    ld a, l                                       ; $4640: $7d
    ld [hl], $3b                                  ; $4641: $36 $3b
    or h                                          ; $4643: $b4
    nop                                           ; $4644: $00
    ld l, e                                       ; $4645: $6b
    inc sp                                        ; $4646: $33

jr_0c7_4647:
    cp l                                          ; $4647: $bd

jr_0c7_4648:
    ld d, d                                       ; $4648: $52
    dec e                                         ; $4649: $1d
    ld [hl], h                                    ; $464a: $74
    daa                                           ; $464b: $27
    inc bc                                        ; $464c: $03
    nop                                           ; $464d: $00
    jp $8188                                      ; $464e: $c3 $88 $81


    ld l, d                                       ; $4651: $6a
    ld b, b                                       ; $4652: $40
    ld bc, $8d30                                  ; $4653: $01 $30 $8d
    nop                                           ; $4656: $00
    ld h, b                                       ; $4657: $60
    xor b                                         ; $4658: $a8
    ld d, d                                       ; $4659: $52
    sub $08                                       ; $465a: $d6 $08
    dec bc                                        ; $465c: $0b
    inc b                                         ; $465d: $04
    ld b, d                                       ; $465e: $42
    nop                                           ; $465f: $00
    inc de                                        ; $4660: $13
    add c                                         ; $4661: $81
    add b                                         ; $4662: $80
    add h                                         ; $4663: $84
    ret nz                                        ; $4664: $c0

    jr nc, jr_0c7_4648                            ; $4665: $30 $e1

    ld [hl], b                                    ; $4667: $70
    nop                                           ; $4668: $00
    add l                                         ; $4669: $85
    and b                                         ; $466a: $a0
    ld c, e                                       ; $466b: $4b
    rlca                                          ; $466c: $07
    ccf                                           ; $466d: $3f
    sbc c                                         ; $466e: $99
    ld c, $4d                                     ; $466f: $0e $4d
    nop                                           ; $4671: $00
    ld b, $29                                     ; $4672: $06 $29
    inc bc                                        ; $4674: $03
    inc bc                                        ; $4675: $03
    add c                                         ; $4676: $81
    jr jr_0c7_4647                                ; $4677: $18 $ce

    or l                                          ; $4679: $b5
    nop                                           ; $467a: $00
    add c                                         ; $467b: $81
    sub $c0                                       ; $467c: $d6 $c0
    ld h, l                                       ; $467e: $65
    ld h, b                                       ; $467f: $60
    db $d3                                        ; $4680: $d3
    cp b                                          ; $4681: $b8
    jp hl                                         ; $4682: $e9


    nop                                           ; $4683: $00
    xor h                                         ; $4684: $ac
    add e                                         ; $4685: $83
    ld a, [hl]                                    ; $4686: $7e
    ld a, [$4caf]                                 ; $4687: $fa $af $4c
    di                                            ; $468a: $f3
    pop hl                                        ; $468b: $e1
    add b                                         ; $468c: $80
    adc $02                                       ; $468d: $ce $02
    ld [hl], b                                    ; $468f: $70
    ld [hl+], a                                   ; $4690: $22
    ldh a, [rNR23]                                ; $4691: $f0 $18
    ld c, b                                       ; $4693: $48
    inc c                                         ; $4694: $0c
    jp nc, $0600                                  ; $4695: $d2 $00 $06

    and c                                         ; $4698: $a1
    add hl, bc                                    ; $4699: $09
    or d                                          ; $469a: $b2
    ret nz                                        ; $469b: $c0

    adc b                                         ; $469c: $88
    add c                                         ; $469d: $81
    db $e3                                        ; $469e: $e3
    nop                                           ; $469f: $00

jr_0c7_46a0:
    ld b, e                                       ; $46a0: $43
    dec a                                         ; $46a1: $3d
    ld h, $05                                     ; $46a2: $26 $05
    jr jr_0c7_462f                                ; $46a4: $18 $89

    inc b                                         ; $46a6: $04
    inc hl                                        ; $46a7: $23
    nop                                           ; $46a8: $00
    ld [bc], a                                    ; $46a9: $02
    nop                                           ; $46aa: $00
    add c                                         ; $46ab: $81
    add h                                         ; $46ac: $84
    ret nz                                        ; $46ad: $c0

    ld c, e                                       ; $46ae: $4b
    sub c                                         ; $46af: $91
    ld de, $c800                                  ; $46b0: $11 $00 $c8
    ld [hl], d                                    ; $46b3: $72
    jr nz, jr_0c7_471c                            ; $46b4: $20 $66

    add hl, de                                    ; $46b6: $19
    ld a, [hl+]                                   ; $46b7: $2a
    adc l                                         ; $46b8: $8d
    ld h, [hl]                                    ; $46b9: $66
    nop                                           ; $46ba: $00
    ld [bc], a                                    ; $46bb: $02
    dec de                                        ; $46bc: $1b
    add c                                         ; $46bd: $81
    ldh a, [rOBP0]                                ; $46be: $f0 $48
    inc hl                                        ; $46c0: $23
    sub c                                         ; $46c1: $91
    xor c                                         ; $46c2: $a9
    ld [bc], a                                    ; $46c3: $02
    ld b, h                                       ; $46c4: $44
    rra                                           ; $46c5: $1f
    ldh [$92], a                                  ; $46c6: $e0 $92
    reti                                          ; $46c8: $d9


    ld c, $20                                     ; $46c9: $0e $20
    nop                                           ; $46cb: $00
    ld [$8100], sp                                ; $46cc: $08 $00 $81
    ret nz                                        ; $46cf: $c0

    ret nz                                        ; $46d0: $c0

    adc c                                         ; $46d1: $89
    add c                                         ; $46d2: $81
    ld b, h                                       ; $46d3: $44
    jp $0036                                      ; $46d4: $c3 $36 $00


    ld l, l                                       ; $46d7: $6d
    ld l, $10                                     ; $46d8: $2e $10
    ld e, d                                       ; $46da: $5a
    add h                                         ; $46db: $84
    ld b, l                                       ; $46dc: $45
    ld e, $22                                     ; $46dd: $1e $22
    nop                                           ; $46df: $00
    rst $38                                       ; $46e0: $ff
    call nc, Call_000_096b                        ; $46e1: $d4 $6b $09
    add c                                         ; $46e4: $81
    ld b, h                                       ; $46e5: $44
    ret nz                                        ; $46e6: $c0

    ld [hl-], a                                   ; $46e7: $32
    nop                                           ; $46e8: $00
    ld h, b                                       ; $46e9: $60
    ld [hl], b                                    ; $46ea: $70
    jr @-$3a                                      ; $46eb: $18 $c4

    inc l                                         ; $46ed: $2c
    jp nc, $ff06                                  ; $46ee: $d2 $06 $ff

    nop                                           ; $46f1: $00
    ld bc, $c823                                  ; $46f2: $01 $23 $c8
    ld l, b                                       ; $46f5: $68
    inc bc                                        ; $46f6: $03
    dec a                                         ; $46f7: $3d
    add b                                         ; $46f8: $80
    db $ed                                        ; $46f9: $ed
    nop                                           ; $46fa: $00
    ld b, b                                       ; $46fb: $40
    ld b, l                                       ; $46fc: $45
    jr nc, jr_0c7_477b                            ; $46fd: $30 $7c

    ld [$8e61], sp                                ; $46ff: $08 $61 $8e
    ld [$4300], sp                                ; $4702: $08 $00 $43
    inc c                                         ; $4705: $0c
    and c                                         ; $4706: $a1
    and c                                         ; $4707: $a1
    inc de                                        ; $4708: $13
    inc [hl]                                      ; $4709: $34
    pop bc                                        ; $470a: $c1
    ld bc, $6400                                  ; $470b: $01 $00 $64
    xor a                                         ; $470e: $af
    jr nc, jr_0c7_46a0                            ; $470f: $30 $8f

    ld [$2604], sp                                ; $4711: $08 $04 $26
    ld [de], a                                    ; $4714: $12
    ld [bc], a                                    ; $4715: $02
    inc bc                                        ; $4716: $03
    ret nz                                        ; $4717: $c0

    add c                                         ; $4718: $81
    jp hl                                         ; $4719: $e9


    ld [bc], a                                    ; $471a: $02
    ld a, l                                       ; $471b: $7d

jr_0c7_471c:
    jr nz, jr_0c7_471e                            ; $471c: $20 $00

jr_0c7_471e:
    dec c                                         ; $471e: $0d
    add b                                         ; $471f: $80
    jr nz, jr_0c7_4722                            ; $4720: $20 $00

jr_0c7_4722:
    db $e3                                        ; $4722: $e3
    inc c                                         ; $4723: $0c
    ret z                                         ; $4724: $c8

    inc bc                                        ; $4725: $03
    ld l, l                                       ; $4726: $6d
    add b                                         ; $4727: $80
    sub c                                         ; $4728: $91
    ld [bc], a                                    ; $4729: $02
    inc hl                                        ; $472a: $23
    add $91                                       ; $472b: $c6 $91
    jr nz, jr_0c7_4793                            ; $472d: $20 $64

    cpl                                           ; $472f: $2f
    jr nz, jr_0c7_4732                            ; $4730: $20 $00

jr_0c7_4732:
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    ld h, $13                                     ; $4734: $26 $13
    ld [bc], a                                    ; $4736: $02
    sub b                                         ; $4737: $90
    add c                                         ; $4738: $81
    ld a, [hl+]                                   ; $4739: $2a
    ld bc, $0041                                  ; $473a: $01 $41 $00
    adc b                                         ; $473d: $88
    ld b, d                                       ; $473e: $42
    ldh [$f2], a                                  ; $473f: $e0 $f2
    or b                                          ; $4741: $b0
    ld e, h                                       ; $4742: $5c
    jr c, jr_0c7_47c1                             ; $4743: $38 $7c

    nop                                           ; $4745: $00
    or $ec                                        ; $4746: $f6 $ec
    jp Jump_000_009b                              ; $4748: $c3 $9b $00


    or d                                          ; $474b: $b2
    rst $28                                       ; $474c: $ef
    ld c, c                                       ; $474d: $49
    nop                                           ; $474e: $00
    db $db                                        ; $474f: $db
    pop af                                        ; $4750: $f1
    ld a, [hl]                                    ; $4751: $7e
    and d                                         ; $4752: $a2
    dec a                                         ; $4753: $3d
    rst $38                                       ; $4754: $ff
    dec c                                         ; $4755: $0d
    ld b, d                                       ; $4756: $42
    nop                                           ; $4757: $00
    rrca                                          ; $4758: $0f
    ld l, [hl]                                    ; $4759: $6e
    inc bc                                        ; $475a: $03
    add sp, -$6f                                  ; $475b: $e8 $91
    adc b                                         ; $475d: $88
    add c                                         ; $475e: $81
    add $00                                       ; $475f: $c6 $00
    pop bc                                        ; $4761: $c1
    jr nc, jr_0c7_47d3                            ; $4762: $30 $6f

    ld h, [hl]                                    ; $4764: $66
    jr jr_0c7_47c1                                ; $4765: $18 $5a

jr_0c7_4767:
    add h                                         ; $4767: $84
    ld b, c                                       ; $4768: $41
    nop                                           ; $4769: $00
    ld e, $c2                                     ; $476a: $1e $c2
    ld a, a                                       ; $476c: $7f
    ld b, h                                       ; $476d: $44
    db $eb                                        ; $476e: $eb
    add hl, bc                                    ; $476f: $09
    add c                                         ; $4770: $81
    ret nz                                        ; $4771: $c0

    nop                                           ; $4772: $00
    ld b, h                                       ; $4773: $44
    ld a, [c]                                     ; $4774: $f2
    jr nz, @+$72                                  ; $4775: $20 $70

    jr @+$6a                                      ; $4777: $18 $68

    adc h                                         ; $4779: $8c
    pop de                                        ; $477a: $d1

jr_0c7_477b:
    nop                                           ; $477b: $00
    ld b, $be                                     ; $477c: $06 $be
    ld bc, $c02b                                  ; $477e: $01 $2b $c0
    ld a, d                                       ; $4781: $7a
    inc bc                                        ; $4782: $03
    ld hl, sp+$00                                 ; $4783: $f8 $00

jr_0c7_4785:
    add l                                         ; $4785: $85
    ld h, e                                       ; $4786: $63
    ld c, b                                       ; $4787: $48
    ld d, $30                                     ; $4788: $16 $30
    ld l, $78                                     ; $478a: $2e $78
    jp $ac00                                      ; $478c: $c3 $00 $ac


    ld c, h                                       ; $478f: $4c
    inc bc                                        ; $4790: $03
    ret z                                         ; $4791: $c8

    sub c                                         ; $4792: $91

jr_0c7_4793:
    ld a, [hl+]                                   ; $4793: $2a
    ld bc, $0084                                  ; $4794: $01 $84 $00
    add b                                         ; $4797: $80
    ldh [rLCDC], a                                ; $4798: $e0 $40
    ld d, l                                       ; $479a: $55
    jr nc, jr_0c7_4785                            ; $479b: $30 $e8

    jr jr_0c7_480e                                ; $479d: $18 $6f

    nop                                           ; $479f: $00
    inc b                                         ; $47a0: $04
    ld d, l                                       ; $47a1: $55
    inc bc                                        ; $47a2: $03
    ld e, d                                       ; $47a3: $5a
    add c                                         ; $47a4: $81
    xor b                                         ; $47a5: $a8
    inc bc                                        ; $47a6: $03
    xor e                                         ; $47a7: $ab
    nop                                           ; $47a8: $00
    add b                                         ; $47a9: $80
    xor c                                         ; $47aa: $a9
    ld b, h                                       ; $47ab: $44
    db $eb                                        ; $47ac: $eb
    jr nc, @-$63                                  ; $47ad: $30 $9b

    ldh a, [$9f]                                  ; $47af: $f0 $9f
    nop                                           ; $47b1: $00
    ld l, h                                       ; $47b2: $6c
    daa                                           ; $47b3: $27
    jp c, $dba4                                   ; $47b4: $da $a4 $db

    and d                                         ; $47b7: $a2
    ld b, e                                       ; $47b8: $43
    ld l, b                                       ; $47b9: $68
    nop                                           ; $47ba: $00
    add l                                         ; $47bb: $85
    adc $60                                       ; $47bc: $ce $60
    cp d                                          ; $47be: $ba
    jr nc, jr_0c7_4767                            ; $47bf: $30 $a6

jr_0c7_47c1:
    add hl, de                                    ; $47c1: $19
    ld e, $00                                     ; $47c2: $1e $00
    ld b, a                                       ; $47c4: $47
    ld d, e                                       ; $47c5: $53
    inc hl                                        ; $47c6: $23
    add sp, -$7b                                  ; $47c7: $e8 $85
    adc b                                         ; $47c9: $88
    ld [hl], b                                    ; $47ca: $70
    ld a, [hl+]                                   ; $47cb: $2a
    nop                                           ; $47cc: $00
    db $10                                        ; $47cd: $10
    xor b                                         ; $47ce: $a8
    inc c                                         ; $47cf: $0c
    pop af                                        ; $47d0: $f1
    ld b, $b7                                     ; $47d1: $06 $b7

jr_0c7_47d3:
    ld bc, $0076                                  ; $47d3: $01 $76 $00
    add b                                         ; $47d6: $80
    sub l                                         ; $47d7: $95
    ldh [$15], a                                  ; $47d8: $e0 $15
    or b                                          ; $47da: $b0
    ccf                                           ; $47db: $3f
    dec [hl]                                      ; $47dc: $35
    ld [$1f00], sp                                ; $47dd: $08 $00 $1f
    call z, Call_000_220f                         ; $47e0: $cc $0f $22
    rlca                                          ; $47e3: $07
    add c                                         ; $47e4: $81
    ld bc, $0090                                  ; $47e5: $01 $90 $00
    call nz, Call_0c7_60a1                        ; $47e8: $c4 $a1 $60
    add hl, sp                                    ; $47eb: $39
    db $10                                        ; $47ec: $10
    rst $30                                       ; $47ed: $f7
    ld h, b                                       ; $47ee: $60
    or d                                          ; $47ef: $b2
    nop                                           ; $47f0: $00
    cp b                                          ; $47f1: $b8

jr_0c7_47f2:
    ld l, c                                       ; $47f2: $69
    cp h                                          ; $47f3: $bc
    add [hl]                                      ; $47f4: $86
    ld a, [c]                                     ; $47f5: $f2
    or $01                                        ; $47f6: $f6 $01
    dec c                                         ; $47f8: $0d
    nop                                           ; $47f9: $00
    ret nz                                        ; $47fa: $c0

    ld [hl], l                                    ; $47fb: $75
    jr nz, jr_0c7_482a                            ; $47fc: $20 $2c

    ld de, $6015                                  ; $47fe: $11 $15 $60
    ld c, b                                       ; $4801: $48
    nop                                           ; $4802: $00
    db $10                                        ; $4803: $10
    ld [$f63c], sp                                ; $4804: $08 $3c $f6
    jp nc, $03f4                                  ; $4807: $d2 $f4 $03

    rlca                                          ; $480a: $07
    nop                                           ; $480b: $00
    ret nc                                        ; $480c: $d0

    push af                                       ; $480d: $f5

jr_0c7_480e:
    ld h, b                                       ; $480e: $60
    rst $08                                       ; $480f: $cf
    jr nc, jr_0c7_488a                            ; $4810: $30 $78

    ld hl, $001b                                  ; $4812: $21 $1b $00
    db $10                                        ; $4815: $10
    ld b, l                                       ; $4816: $45
    dec c                                         ; $4817: $0d
    daa                                           ; $4818: $27
    inc bc                                        ; $4819: $03
    sub c                                         ; $481a: $91
    ld bc, $0004                                  ; $481b: $01 $04 $00
    ret nz                                        ; $481e: $c0

    add d                                         ; $481f: $82
    ld h, b                                       ; $4820: $60
    sub c                                         ; $4821: $91
    jr nc, jr_0c7_4846                            ; $4822: $30 $22

    ld h, b                                       ; $4824: $60
    ld [hl], c                                    ; $4825: $71
    nop                                           ; $4826: $00
    jr jr_0c7_47f2                                ; $4827: $18 $c9

    ld a, h                                       ; $4829: $7c

jr_0c7_482a:
    ld [bc], a                                    ; $482a: $02
    cp $8a                                        ; $482b: $fe $8a
    or a                                          ; $482d: $b7
    ld b, a                                       ; $482e: $47
    nop                                           ; $482f: $00
    db $dd                                        ; $4830: $dd
    ld [hl+], a                                   ; $4831: $22
    ld a, l                                       ; $4832: $7d
    ld d, d                                       ; $4833: $52
    cp a                                          ; $4834: $bf
    jr c, @+$39                                   ; $4835: $38 $37

    dec de                                        ; $4837: $1b
    ld [$4c1d], sp                                ; $4838: $08 $1d $4c
    rrca                                          ; $483b: $0f
    ld [de], a                                    ; $483c: $12
    jr nz, jr_0c7_483f                            ; $483d: $20 $00

jr_0c7_483f:
    add c                                         ; $483f: $81
    ret nz                                        ; $4840: $c0

    ld c, b                                       ; $4841: $48
    nop                                           ; $4842: $00
    rst $28                                       ; $4843: $ef
    sub a                                         ; $4844: $97
    ld a, b                                       ; $4845: $78

jr_0c7_4846:
    ld [de], a                                    ; $4846: $12
    ldh [rNR12], a                                ; $4847: $e0 $12
    ld a, b                                       ; $4849: $78
    xor d                                         ; $484a: $aa
    nop                                           ; $484b: $00
    cp h                                          ; $484c: $bc
    ld c, a                                       ; $484d: $4f
    db $f4                                        ; $484e: $f4
    ld l, e                                       ; $484f: $6b
    sub a                                         ; $4850: $97
    pop bc                                        ; $4851: $c1
    rst $38                                       ; $4852: $ff
    inc h                                         ; $4853: $24
    nop                                           ; $4854: $00
    ld a, e                                       ; $4855: $7b
    ld [hl], e                                    ; $4856: $73
    ld e, $f5                                     ; $4857: $1e $f5
    ld [$06dd], sp                                ; $4859: $08 $dd $06
    adc b                                         ; $485c: $88
    nop                                           ; $485d: $00
    inc hl                                        ; $485e: $23
    dec sp                                        ; $485f: $3b
    ret nz                                        ; $4860: $c0

    ld a, d                                       ; $4861: $7a
    ret nz                                        ; $4862: $c0

    inc c                                         ; $4863: $0c
    or c                                          ; $4864: $b1
    ccf                                           ; $4865: $3f
    nop                                           ; $4866: $00
    ld [$0668], sp                                ; $4867: $08 $68 $06
    dec b                                         ; $486a: $05
    ld hl, sp+$34                                 ; $486b: $f8 $34
    xor $9b                                       ; $486d: $ee $9b
    nop                                           ; $486f: $00
    ei                                            ; $4870: $fb
    ld b, c                                       ; $4871: $41
    rst $28                                       ; $4872: $ef
    ret nc                                        ; $4873: $d0

    ld a, a                                       ; $4874: $7f
    ld b, e                                       ; $4875: $43
    ld a, $1f                                     ; $4876: $3e $1f
    nop                                           ; $4878: $00
    ld c, b                                       ; $4879: $48
    rst $18                                       ; $487a: $df
    inc b                                         ; $487b: $04
    ld d, l                                       ; $487c: $55
    adc b                                         ; $487d: $88
    add c                                         ; $487e: $81
    ld d, [hl]                                    ; $487f: $56
    xor d                                         ; $4880: $aa
    nop                                           ; $4881: $00
    ld bc, $c03a                                  ; $4882: $01 $3a $c0
    ld c, d                                       ; $4885: $4a
    ldh [$a5], a                                  ; $4886: $e0 $a5
    db $10                                        ; $4888: $10
    dec a                                         ; $4889: $3d

jr_0c7_488a:
    nop                                           ; $488a: $00
    ld [$0669], sp                                ; $488b: $08 $69 $06
    ld [bc], a                                    ; $488e: $02
    ld hl, sp+$36                                 ; $488f: $f8 $36
    db $ec                                        ; $4891: $ec
    inc de                                        ; $4892: $13
    nop                                           ; $4893: $00
    ei                                            ; $4894: $fb
    ld d, c                                       ; $4895: $51
    rst $28                                       ; $4896: $ef
    ld b, b                                       ; $4897: $40
    ld a, a                                       ; $4898: $7f
    inc sp                                        ; $4899: $33
    ld e, $b7                                     ; $489a: $1e $b7
    nop                                           ; $489c: $00
    ld c, b                                       ; $489d: $48
    sbc b                                         ; $489e: $98
    ld b, $df                                     ; $489f: $06 $df
    inc c                                         ; $48a1: $0c
    ld d, [hl]                                    ; $48a2: $56
    rlca                                          ; $48a3: $07
    ld [hl], c                                    ; $48a4: $71
    nop                                           ; $48a5: $00
    inc bc                                        ; $48a6: $03
    push bc                                       ; $48a7: $c5
    adc b                                         ; $48a8: $88
    dec a                                         ; $48a9: $3d
    ld h, b                                       ; $48aa: $60
    dec l                                         ; $48ab: $2d
    ret nc                                        ; $48ac: $d0

    ld b, c                                       ; $48ad: $41
    nop                                           ; $48ae: $00
    inc c                                         ; $48af: $0c
    ld b, l                                       ; $48b0: $45
    ld b, $dd                                     ; $48b1: $06 $dd
    dec bc                                        ; $48b3: $0b
    sub a                                         ; $48b4: $97
    inc h                                         ; $48b5: $24
    ld d, a                                       ; $48b6: $57
    nop                                           ; $48b7: $00
    ld bc, $94c1                                  ; $48b8: $01 $c1 $94

jr_0c7_48bb:
    rst $20                                       ; $48bb: $e7
    ld h, b                                       ; $48bc: $60
    or l                                          ; $48bd: $b5
    ld [hl], b                                    ; $48be: $70
    ret                                           ; $48bf: $c9


    adc d                                         ; $48c0: $8a
    cp b                                          ; $48c1: $b8
    ld [bc], a                                    ; $48c2: $02
    inc h                                         ; $48c3: $24
    dec sp                                        ; $48c4: $3b
    ld e, $80                                     ; $48c5: $1e $80
    db $10                                        ; $48c7: $10
    sub l                                         ; $48c8: $95
    add b                                         ; $48c9: $80
    nop                                           ; $48ca: $00
    ld b, b                                       ; $48cb: $40
    nop                                           ; $48cc: $00
    rst $28                                       ; $48cd: $ef
    add a                                         ; $48ce: $87
    ld a, b                                       ; $48cf: $78
    ld e, d                                       ; $48d0: $5a
    ldh [rNR44], a                                ; $48d1: $e0 $23
    ld a, b                                       ; $48d3: $78
    jp z, $bc00                                   ; $48d4: $ca $00 $bc

    ld c, h                                       ; $48d7: $4c
    or $e9                                        ; $48d8: $f6 $e9
    sub a                                         ; $48da: $97
    ret nz                                        ; $48db: $c0

    rst $38                                       ; $48dc: $ff
    ld h, $00                                     ; $48dd: $26 $00
    ld a, e                                       ; $48df: $7b

jr_0c7_48e0:
    ld a, c                                       ; $48e0: $79
    ld e, $b5                                     ; $48e1: $1e $b5
    ld [$560c], sp                                ; $48e3: $08 $0c $56
    db $eb                                        ; $48e6: $eb
    nop                                           ; $48e7: $00
    dec sp                                        ; $48e8: $3b
    pop hl                                        ; $48e9: $e1
    rst $38                                       ; $48ea: $ff

jr_0c7_48eb:
    ld [hl], h                                    ; $48eb: $74
    cpl                                           ; $48ec: $2f
    inc sp                                        ; $48ed: $33
    dec e                                         ; $48ee: $1d
    db $fd                                        ; $48ef: $fd
    nop                                           ; $48f0: $00
    ld l, [hl]                                    ; $48f1: $6e
    rst $30                                       ; $48f2: $f7
    add [hl]                                      ; $48f3: $86
    cpl                                           ; $48f4: $2f
    ld [$0247], sp                                ; $48f5: $08 $47 $02
    ld d, $00                                     ; $48f8: $16 $00
    ld bc, $c080                                  ; $48fa: $01 $80 $c0
    ld [hl+], a                                   ; $48fd: $22
    ld h, b                                       ; $48fe: $60
    sub d                                         ; $48ff: $92
    jr nc, jr_0c7_490e                            ; $4900: $30 $0c

    nop                                           ; $4902: $00
    ld [$0645], sp                                ; $4903: $08 $45 $06
    add hl, de                                    ; $4906: $19
    ld c, h                                       ; $4907: $4c
    ld c, [hl]                                    ; $4908: $4e
    ld h, $f5                                     ; $4909: $26 $f5
    nop                                           ; $490b: $00
    add hl, bc                                    ; $490c: $09
    or h                                          ; $490d: $b4

jr_0c7_490e:
    ret nc                                        ; $490e: $d0

    ld b, h                                       ; $490f: $44
    ld h, b                                       ; $4910: $60
    add c                                         ; $4911: $81
    jr nc, jr_0c7_48e0                            ; $4912: $30 $cc

    nop                                           ; $4914: $00
    jr jr_0c7_48bb                                ; $4915: $18 $a4

    ld b, $92                                     ; $4917: $06 $92
    inc c                                         ; $4919: $0c
    xor l                                         ; $491a: $ad
    ld b, $8a                                     ; $491b: $06 $8a
    nop                                           ; $491d: $00
    inc hl                                        ; $491e: $23
    ld e, c                                       ; $491f: $59
    add b                                         ; $4920: $80
    ld de, $1a64                                  ; $4921: $11 $64 $1a
    jr nc, jr_0c7_48eb                            ; $4924: $30 $c5

    nop                                           ; $4926: $00
    jr @+$64                                      ; $4927: $18 $62

    or [hl]                                       ; $4929: $b6
    sub b                                         ; $492a: $90
    rlca                                          ; $492b: $07
    ldh a, [rTMA]                                 ; $492c: $f0 $06
    nop                                           ; $492e: $00
    ld d, h                                       ; $492f: $54
    nop                                           ; $4930: $00
    db $eb                                        ; $4931: $eb
    nop                                           ; $4932: $00
    or [hl]                                       ; $4933: $b6
    nop                                           ; $4934: $00
    rst $18                                       ; $4935: $df
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    db $fd                                        ; $4938: $fd
    ld [bc], a                                    ; $4939: $02
    ld a, a                                       ; $493a: $7f
    add b                                         ; $493b: $80
    xor d                                         ; $493c: $aa
    ld d, l                                       ; $493d: $55
    inc d                                         ; $493e: $14
    db $eb                                        ; $493f: $eb
    nop                                           ; $4940: $00
    xor l                                         ; $4941: $ad
    nop                                           ; $4942: $00
    ld [hl], a                                    ; $4943: $77
    nop                                           ; $4944: $00
    rst $38                                       ; $4945: $ff
    nop                                           ; $4946: $00
    push af                                       ; $4947: $f5
    ld a, [bc]                                    ; $4948: $0a
    nop                                           ; $4949: $00
    xor c                                         ; $494a: $a9
    ld d, [hl]                                    ; $494b: $56
    ld d, e                                       ; $494c: $53
    xor h                                         ; $494d: $ac
    add l                                         ; $494e: $85
    ld a, d                                       ; $494f: $7a
    ld a, [bc]                                    ; $4950: $0a
    push af                                       ; $4951: $f5
    db $10                                        ; $4952: $10
    push af                                       ; $4953: $f5
    nop                                           ; $4954: $00
    cp [hl]                                       ; $4955: $be
    ld e, $00                                     ; $4956: $1e $00
    rst $30                                       ; $4958: $f7
    ld [$817e], sp                                ; $4959: $08 $7e $81
    ld bc, $629d                                  ; $495c: $01 $9d $62
    ld a, [hl+]                                   ; $495f: $2a
    push de                                       ; $4960: $d5
    ld b, b                                       ; $4961: $40
    cp a                                          ; $4962: $bf
    add l                                         ; $4963: $85
    jr nc, jr_0c7_4966                            ; $4964: $30 $00

jr_0c7_4966:
    nop                                           ; $4966: $00
    rst $18                                       ; $4967: $df
    nop                                           ; $4968: $00
    ei                                            ; $4969: $fb
    inc b                                         ; $496a: $04
    cp a                                          ; $496b: $bf
    ld b, b                                       ; $496c: $40
    dec e                                         ; $496d: $1d
    ld [c], a                                     ; $496e: $e2
    nop                                           ; $496f: $00
    daa                                           ; $4970: $27
    ret c                                         ; $4971: $d8

    ld c, d                                       ; $4972: $4a
    or l                                          ; $4973: $b5
    and e                                         ; $4974: $a3
    nop                                           ; $4975: $00
    db $dd                                        ; $4976: $dd
    nop                                           ; $4977: $00
    db $10                                        ; $4978: $10
    ld a, e                                       ; $4979: $7b
    nop                                           ; $497a: $00
    rst $28                                       ; $497b: $ef
    inc [hl]                                      ; $497c: $34
    nop                                           ; $497d: $00
    db $dd                                        ; $497e: $dd
    ld [hl+], a                                   ; $497f: $22
    ld [$0015], a                                 ; $4980: $ea $15 $00
    sub c                                         ; $4983: $91
    ld l, [hl]                                    ; $4984: $6e
    jr nz, jr_0c7_4966                            ; $4985: $20 $df

    nop                                           ; $4987: $00
    rst $38                                       ; $4988: $ff
    ld bc, $00ff                                  ; $4989: $01 $ff $00
    ld a, [bc]                                    ; $498c: $0a
    rst $38                                       ; $498d: $ff
    or l                                          ; $498e: $b5
    rst $38                                       ; $498f: $ff
    ld c, e                                       ; $4990: $4b
    rst $38                                       ; $4991: $ff
    or a                                          ; $4992: $b7
    rst $38                                       ; $4993: $ff
    db $10                                        ; $4994: $10
    rst $38                                       ; $4995: $ff
    rst $38                                       ; $4996: $ff
    db $10                                        ; $4997: $10
    dec de                                        ; $4998: $1b
    nop                                           ; $4999: $00
    ld [$a0ff], sp                                ; $499a: $08 $ff $a0
    rst $38                                       ; $499d: $ff
    inc b                                         ; $499e: $04
    ld b, c                                       ; $499f: $41
    rst $38                                       ; $49a0: $ff
    xor d                                         ; $49a1: $aa
    rst $38                                       ; $49a2: $ff
    rst $30                                       ; $49a3: $f7
    db $10                                        ; $49a4: $10
    db $10                                        ; $49a5: $10
    ld [$00ff], sp                                ; $49a6: $08 $ff $00
    db $10                                        ; $49a9: $10
    rst $38                                       ; $49aa: $ff
    add hl, hl                                    ; $49ab: $29
    rst $38                                       ; $49ac: $ff
    ld d, h                                       ; $49ad: $54
    rst $38                                       ; $49ae: $ff
    xor [hl]                                      ; $49af: $ae
    rst $38                                       ; $49b0: $ff
    ld b, b                                       ; $49b1: $40
    db $dd                                        ; $49b2: $dd
    jr nz, jr_0c7_49b5                            ; $49b3: $20 $00

jr_0c7_49b5:
    sub c                                         ; $49b5: $91
    ld l, [hl]                                    ; $49b6: $6e
    ld [bc], a                                    ; $49b7: $02
    db $fd                                        ; $49b8: $fd
    ld b, b                                       ; $49b9: $40
    rst $38                                       ; $49ba: $ff
    inc b                                         ; $49bb: $04
    nop                                           ; $49bc: $00
    rst $38                                       ; $49bd: $ff
    ld b, b                                       ; $49be: $40
    rst $38                                       ; $49bf: $ff
    add c                                         ; $49c0: $81
    ld [hl], $00                                  ; $49c1: $36 $00
    rst $10                                       ; $49c3: $d7
    rst $38                                       ; $49c4: $ff
    jr nc, jr_0c7_49c9                            ; $49c5: $30 $02

    db $fd                                        ; $49c7: $fd
    ld a, a                                       ; $49c8: $7f

jr_0c7_49c9:
    nop                                           ; $49c9: $00
    ld c, $00                                     ; $49ca: $0e $00
    ld [hl+], a                                   ; $49cc: $22
    rst $38                                       ; $49cd: $ff
    ld d, l                                       ; $49ce: $55
    rst $38                                       ; $49cf: $ff
    ld b, b                                       ; $49d0: $40
    db $eb                                        ; $49d1: $eb
    ld b, b                                       ; $49d2: $40
    nop                                           ; $49d3: $00
    xor d                                         ; $49d4: $aa
    nop                                           ; $49d5: $00
    nop                                           ; $49d6: $00
    rst $38                                       ; $49d7: $ff
    ld a, h                                       ; $49d8: $7c
    rst $38                                       ; $49d9: $ff
    jr nz, jr_0c7_4a20                            ; $49da: $20 $44

    cp a                                          ; $49dc: $bf
    ld [bc], a                                    ; $49dd: $02
    ld [$877c], sp                                ; $49de: $08 $7c $87
    nop                                           ; $49e1: $00
    rst $38                                       ; $49e2: $ff
    dec l                                         ; $49e3: $2d
    nop                                           ; $49e4: $00
    ld [hl], b                                    ; $49e5: $70
    dec e                                         ; $49e6: $1d
    add sp, $5e                                   ; $49e7: $e8 $5e
    pop hl                                        ; $49e9: $e1
    adc h                                         ; $49ea: $8c
    rst $38                                       ; $49eb: $ff
    ld a, [hl-]                                   ; $49ec: $3a
    nop                                           ; $49ed: $00
    ld bc, $41b6                                  ; $49ee: $01 $b6 $41
    adc [hl]                                      ; $49f1: $8e
    ld bc, $2ad5                                  ; $49f2: $01 $d5 $2a
    and a                                         ; $49f5: $a7
    nop                                           ; $49f6: $00
    ld b, b                                       ; $49f7: $40
    or a                                          ; $49f8: $b7
    ld c, b                                       ; $49f9: $48
    ld e, c                                       ; $49fa: $59
    and [hl]                                      ; $49fb: $a6
    cp h                                          ; $49fc: $bc

jr_0c7_49fd:
    rst $38                                       ; $49fd: $ff
    or h                                          ; $49fe: $b4
    nop                                           ; $49ff: $00
    dec bc                                        ; $4a00: $0b
    db $e3                                        ; $4a01: $e3
    ld b, b                                       ; $4a02: $40
    jp hl                                         ; $4a03: $e9


    ld d, $a9                                     ; $4a04: $16 $a9
    add b                                         ; $4a06: $80
    ld b, l                                       ; $4a07: $45
    nop                                           ; $4a08: $00
    jr nz, jr_0c7_49fd                            ; $4a09: $20 $f2

    inc b                                         ; $4a0b: $04
    rra                                           ; $4a0c: $1f
    ldh [$2c], a                                  ; $4a0d: $e0 $2c
    rst $38                                       ; $4a0f: $ff
    rst $10                                       ; $4a10: $d7
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    ld l, [hl]                                    ; $4a13: $6e
    nop                                           ; $4a14: $00
    pop hl                                        ; $4a15: $e1
    ld e, $5d                                     ; $4a16: $1e $5d
    nop                                           ; $4a18: $00
    ld d, e                                       ; $4a19: $53
    nop                                           ; $4a1a: $00
    xor b                                         ; $4a1b: $a8
    sbc d                                         ; $4a1c: $9a
    ld bc, $8976                                  ; $4a1d: $01 $76 $89

jr_0c7_4a20:
    xor [hl]                                      ; $4a20: $ae
    rst $38                                       ; $4a21: $ff
    ld a, [$0000]                                 ; $4a22: $fa $00 $00
    ld l, e                                       ; $4a25: $6b
    inc b                                         ; $4a26: $04
    sub l                                         ; $4a27: $95
    ld l, d                                       ; $4a28: $6a
    halt                                          ; $4a29: $76
    nop                                           ; $4a2a: $00
    or a                                          ; $4a2b: $b7
    nop                                           ; $4a2c: $00
    ld b, b                                       ; $4a2d: $40
    sbc e                                         ; $4a2e: $9b
    nop                                           ; $4a2f: $00
    pop de                                        ; $4a30: $d1
    ld l, $32                                     ; $4a31: $2e $32
    rst $38                                       ; $4a33: $ff
    cpl                                           ; $4a34: $2f
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00

jr_0c7_4a37:
    dec sp                                        ; $4a37: $3b
    call nz, $01de                                ; $4a38: $c4 $de $01
    sub $00                                       ; $4a3b: $d6 $00
    ld a, c                                       ; $4a3d: $79
    nop                                           ; $4a3e: $00
    add [hl]                                      ; $4a3f: $86
    db $fd                                        ; $4a40: $fd
    rlca                                          ; $4a41: $07
    ld l, d                                       ; $4a42: $6a
    sub l                                         ; $4a43: $95
    db $eb                                        ; $4a44: $eb
    rst $38                                       ; $4a45: $ff
    halt                                          ; $4a46: $76
    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    ld e, e                                       ; $4a49: $5b
    add b                                         ; $4a4a: $80
    and l                                         ; $4a4b: $a5
    ld e, d                                       ; $4a4c: $5a
    rlc b                                         ; $4a4d: $cb $00
    ld e, b                                       ; $4a4f: $58
    nop                                           ; $4a50: $00
    and a                                         ; $4a51: $a7
    inc de                                        ; $4a52: $13
    db $ec                                        ; $4a53: $ec
    ld h, b                                       ; $4a54: $60
    sbc a                                         ; $4a55: $9f
    db $db                                        ; $4a56: $db
    rst $38                                       ; $4a57: $ff
    jr z, jr_0c7_4a5a                             ; $4a58: $28 $00

jr_0c7_4a5a:
    inc de                                        ; $4a5a: $13
    ld c, [hl]                                    ; $4a5b: $4e
    or h                                          ; $4a5c: $b4
    adc [hl]                                      ; $4a5d: $8e
    ld [hl], b                                    ; $4a5e: $70
    ld c, h                                       ; $4a5f: $4c
    dec sp                                        ; $4a60: $3b
    ld h, $00                                     ; $4a61: $26 $00
    reti                                          ; $4a63: $d9


    inc b                                         ; $4a64: $04
    ei                                            ; $4a65: $fb
    jr nc, jr_0c7_4a37                            ; $4a66: $30 $cf

    ld [de], a                                    ; $4a68: $12
    rst $38                                       ; $4a69: $ff
    ld d, l                                       ; $4a6a: $55
    nop                                           ; $4a6b: $00
    and b                                         ; $4a6c: $a0
    rst $28                                       ; $4a6d: $ef
    nop                                           ; $4a6e: $00
    add hl, bc                                    ; $4a6f: $09
    ld [hl], h                                    ; $4a70: $74
    cp e                                          ; $4a71: $bb
    nop                                           ; $4a72: $00
    add hl, bc                                    ; $4a73: $09
    nop                                           ; $4a74: $00
    or $21                                        ; $4a75: $f6 $21
    sbc $0a                                       ; $4a77: $de $0a
    push af                                       ; $4a79: $f5
    ld [$a5ff], a                                 ; $4a7a: $ea $ff $a5
    add b                                         ; $4a7d: $80
    or $00                                        ; $4a7e: $f6 $00
    add hl, de                                    ; $4a80: $19
    ret nz                                        ; $4a81: $c0

    dec h                                         ; $4a82: $25
    ld a, [de]                                    ; $4a83: $1a
    jp nz, $003d                                  ; $4a84: $c2 $3d $00

    nop                                           ; $4a87: $00
    rst $38                                       ; $4a88: $ff
    ld h, d                                       ; $4a89: $62
    sbc l                                         ; $4a8a: $9d
    db $eb                                        ; $4a8b: $eb
    rst $38                                       ; $4a8c: $ff
    ld h, l                                       ; $4a8d: $65
    sbc d                                         ; $4a8e: $9a
    ei                                            ; $4a8f: $fb
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    and l                                         ; $4a92: $a5
    ld e, b                                       ; $4a93: $58
    ld [hl], a                                    ; $4a94: $77
    nop                                           ; $4a95: $00
    dec h                                         ; $4a96: $25
    ret c                                         ; $4a97: $d8

    stop                                          ; $4a98: $10 $00
    rst $28                                       ; $4a9a: $ef
    add c                                         ; $4a9b: $81
    ld a, [hl]                                    ; $4a9c: $7e
    cp e                                          ; $4a9d: $bb
    rst $38                                       ; $4a9e: $ff
    ld a, [hl-]                                   ; $4a9f: $3a
    nop                                           ; $4aa0: $00
    sbc $00                                       ; $4aa1: $de $00
    nop                                           ; $4aa3: $00
    ld sp, $37ce                                  ; $4aa4: $31 $ce $37
    nop                                           ; $4aa7: $00
    ld [hl], l                                    ; $4aa8: $75
    add d                                         ; $4aa9: $82
    rst $38                                       ; $4aaa: $ff
    nop                                           ; $4aab: $00
    ld [bc], a                                    ; $4aac: $02
    or l                                          ; $4aad: $b5
    ld c, d                                       ; $4aae: $4a
    jp hl                                         ; $4aaf: $e9


    rst $38                                       ; $4ab0: $ff
    cp a                                          ; $4ab1: $bf
    nop                                           ; $4ab2: $00
    ld h, [hl]                                    ; $4ab3: $66
    nop                                           ; $4ab4: $00
    nop                                           ; $4ab5: $00
    xor d                                         ; $4ab6: $aa
    ld d, l                                       ; $4ab7: $55
    and $00                                       ; $4ab8: $e6 $00
    ld d, [hl]                                    ; $4aba: $56
    add hl, hl                                    ; $4abb: $29
    di                                            ; $4abc: $f3
    nop                                           ; $4abd: $00
    add b                                         ; $4abe: $80
    add $38                                       ; $4abf: $c6 $38
    ld c, e                                       ; $4ac1: $4b
    rst $38                                       ; $4ac2: $ff
    and e                                         ; $4ac3: $a3
    nop                                           ; $4ac4: $00
    xor e                                         ; $4ac5: $ab
    nop                                           ; $4ac6: $00
    ld d, h                                       ; $4ac7: $54
    xor e                                         ; $4ac8: $ab
    ld b, b                                       ; $4ac9: $40
    cp [hl]                                       ; $4aca: $be
    nop                                           ; $4acb: $00
    ld c, c                                       ; $4acc: $49
    or [hl]                                       ; $4acd: $b6
    rst $38                                       ; $4ace: $ff
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    xor c                                         ; $4ad1: $a9
    nop                                           ; $4ad2: $00
    jp nz, Jump_0c7_77ff                          ; $4ad3: $c2 $ff $77

    nop                                           ; $4ad6: $00
    or [hl]                                       ; $4ad7: $b6
    nop                                           ; $4ad8: $00
    ld c, b                                       ; $4ad9: $48
    call nc, $bd2b                                ; $4ada: $d4 $2b $bd
    nop                                           ; $4add: $00
    di                                            ; $4ade: $f3
    inc c                                         ; $4adf: $0c
    db $dd                                        ; $4ae0: $dd
    add b                                         ; $4ae1: $80
    ld a, [de]                                    ; $4ae2: $1a
    nop                                           ; $4ae3: $00
    xor d                                         ; $4ae4: $aa
    rst $38                                       ; $4ae5: $ff
    ld h, d                                       ; $4ae6: $62
    ld bc, $0bb4                                  ; $4ae7: $01 $b4 $0b
    call nc, Call_000_2b00                        ; $4aea: $d4 $00 $2b
    or h                                          ; $4aed: $b4
    inc bc                                        ; $4aee: $03
    ccf                                           ; $4aef: $3f
    ret nz                                        ; $4af0: $c0

    ld b, d                                       ; $4af1: $42
    dec a                                         ; $4af2: $3d
    ld a, [$0000]                                 ; $4af3: $fa $00 $00
    and d                                         ; $4af6: $a2
    rst $38                                       ; $4af7: $ff
    add l                                         ; $4af8: $85
    ld a, [hl-]                                   ; $4af9: $3a
    ld [$c840], a                                 ; $4afa: $ea $40 $c8
    nop                                           ; $4afd: $00
    rlca                                          ; $4afe: $07
    res 6, b                                      ; $4aff: $cb $b0
    or [hl]                                       ; $4b01: $b6
    ld c, c                                       ; $4b02: $49
    db $fd                                        ; $4b03: $fd
    nop                                           ; $4b04: $00
    cp $00                                        ; $4b05: $fe $00
    ld bc, $ffa7                                  ; $4b07: $01 $a7 $ff
    ld e, d                                       ; $4b0a: $5a
    nop                                           ; $4b0b: $00
    or a                                          ; $4b0c: $b7
    nop                                           ; $4b0d: $00
    ld d, l                                       ; $4b0e: $55
    nop                                           ; $4b0f: $00
    adc b                                         ; $4b10: $88
    or e                                          ; $4b11: $b3
    nop                                           ; $4b12: $00
    call $ae30                                    ; $4b13: $cd $30 $ae
    ld a, b                                       ; $4b16: $78
    ld c, a                                       ; $4b17: $4f
    nop                                           ; $4b18: $00
    or b                                          ; $4b19: $b0
    ld c, d                                       ; $4b1a: $4a
    rst $38                                       ; $4b1b: $ff
    ld a, [hl-]                                   ; $4b1c: $3a
    dec b                                         ; $4b1d: $05
    ld a, e                                       ; $4b1e: $7b
    nop                                           ; $4b1f: $00
    sbc d                                         ; $4b20: $9a
    nop                                           ; $4b21: $00
    dec b                                         ; $4b22: $05

Call_0c7_4b23:
    ld d, $e0                                     ; $4b23: $16 $e0
    and l                                         ; $4b25: $a5
    ld b, b                                       ; $4b26: $40
    db $db                                        ; $4b27: $db
    inc h                                         ; $4b28: $24
    dec [hl]                                      ; $4b29: $35
    nop                                           ; $4b2a: $00
    jp z, $ff5e                                   ; $4b2b: $ca $5e $ff

    xor c                                         ; $4b2e: $a9
    ld d, b                                       ; $4b2f: $50
    ld e, a                                       ; $4b30: $5f
    nop                                           ; $4b31: $00
    sbc b                                         ; $4b32: $98
    nop                                           ; $4b33: $00
    ld b, [hl]                                    ; $4b34: $46
    db $eb                                        ; $4b35: $eb
    nop                                           ; $4b36: $00
    rst $10                                       ; $4b37: $d7
    jr nz, @-$24                                  ; $4b38: $20 $da

    ld bc, $000f                                  ; $4b3a: $01 $0f $00
    ldh a, [$15]                                  ; $4b3d: $f0 $15
    rst $38                                       ; $4b3f: $ff
    pop de                                        ; $4b40: $d1
    nop                                           ; $4b41: $00

jr_0c7_4b42:
    ld [hl], l                                    ; $4b42: $75
    ld [bc], a                                    ; $4b43: $02
    adc h                                         ; $4b44: $8c
    nop                                           ; $4b45: $00
    ld [hl], b                                    ; $4b46: $70
    xor d                                         ; $4b47: $aa
    ld bc, $58a5                                  ; $4b48: $01 $a5 $58
    ld c, e                                       ; $4b4b: $4b
    nop                                           ; $4b4c: $00
    db $db                                        ; $4b4d: $db
    nop                                           ; $4b4e: $00
    inc h                                         ; $4b4f: $24
    ld d, l                                       ; $4b50: $55
    rst $38                                       ; $4b51: $ff
    ld d, l                                       ; $4b52: $55
    ld [$1aa7], sp                                ; $4b53: $08 $a7 $1a
    ld h, a                                       ; $4b56: $67
    nop                                           ; $4b57: $00
    jr jr_0c7_4ba1                                ; $4b58: $18 $47

    cp d                                          ; $4b5a: $ba
    db $db                                        ; $4b5b: $db
    jr nz, jr_0c7_4bc5                            ; $4b5c: $20 $67

    add b                                         ; $4b5e: $80
    or h                                          ; $4b5f: $b4
    nop                                           ; $4b60: $00
    ld c, e                                       ; $4b61: $4b
    dec d                                         ; $4b62: $15
    rst $38                                       ; $4b63: $ff
    and a                                         ; $4b64: $a7
    ld e, b                                       ; $4b65: $58
    add hl, de                                    ; $4b66: $19
    nop                                           ; $4b67: $00
    ld c, a                                       ; $4b68: $4f
    nop                                           ; $4b69: $00
    or b                                          ; $4b6a: $b0
    and l                                         ; $4b6b: $a5
    nop                                           ; $4b6c: $00
    cp [hl]                                       ; $4b6d: $be
    ld b, c                                       ; $4b6e: $41
    rst $28                                       ; $4b6f: $ef
    nop                                           ; $4b70: $00
    ld h, e                                       ; $4b71: $63
    nop                                           ; $4b72: $00
    inc e                                         ; $4b73: $1c
    ld d, l                                       ; $4b74: $55
    rst $38                                       ; $4b75: $ff
    sub l                                         ; $4b76: $95
    nop                                           ; $4b77: $00
    push de                                       ; $4b78: $d5
    nop                                           ; $4b79: $00
    ld a, [hl+]                                   ; $4b7a: $2a
    jr nz, jr_0c7_4b42                            ; $4b7b: $20 $c5

    cp [hl]                                       ; $4b7d: $be
    and [hl]                                      ; $4b7e: $a6
    nop                                           ; $4b7f: $00
    xor c                                         ; $4b80: $a9
    ld b, $7e                                     ; $4b81: $06 $7e
    add b                                         ; $4b83: $80
    ld [hl], $00                                  ; $4b84: $36 $00
    rst $38                                       ; $4b86: $ff
    dec de                                        ; $4b87: $1b
    nop                                           ; $4b88: $00
    ld c, d                                       ; $4b89: $4a
    ld hl, $01c6                                  ; $4b8a: $21 $c6 $01
    and h                                         ; $4b8d: $a4
    nop                                           ; $4b8e: $00
    dec de                                        ; $4b8f: $1b
    ld a, [$5e05]                                 ; $4b90: $fa $05 $5e
    and b                                         ; $4b93: $a0
    ld d, a                                       ; $4b94: $57
    nop                                           ; $4b95: $00
    ld [hl-], a                                   ; $4b96: $32
    nop                                           ; $4b97: $00
    rst $38                                       ; $4b98: $ff
    xor c                                         ; $4b99: $a9
    ld d, [hl]                                    ; $4b9a: $56
    jr nz, @+$01                                  ; $4b9b: $20 $ff

    ld d, c                                       ; $4b9d: $51
    xor [hl]                                      ; $4b9e: $ae
    jr nz, jr_0c7_4ba1                            ; $4b9f: $20 $00

jr_0c7_4ba1:
    rst $38                                       ; $4ba1: $ff
    ld l, h                                       ; $4ba2: $6c
    sub e                                         ; $4ba3: $93
    or l                                          ; $4ba4: $b5
    ld c, $d1                                     ; $4ba5: $0e $d1
    ld l, $d8                                     ; $4ba7: $2e $d8
    nop                                           ; $4ba9: $00
    rst $38                                       ; $4baa: $ff
    ld h, $d9                                     ; $4bab: $26 $d9
    nop                                           ; $4bad: $00
    rst $38                                       ; $4bae: $ff
    call nc, $3123                                ; $4baf: $d4 $23 $31
    nop                                           ; $4bb2: $00
    adc $5a                                       ; $4bb3: $ce $5a
    inc b                                         ; $4bb5: $04
    jp nc, $ea84                                  ; $4bb6: $d2 $84 $ea

    dec d                                         ; $4bb9: $15
    add $00                                       ; $4bba: $c6 $00
    rst $38                                       ; $4bbc: $ff
    ld d, d                                       ; $4bbd: $52

Call_0c7_4bbe:
    xor l                                         ; $4bbe: $ad
    rlca                                          ; $4bbf: $07
    ld hl, sp-$18                                 ; $4bc0: $f8 $e8
    rla                                           ; $4bc2: $17
    ld d, h                                       ; $4bc3: $54
    nop                                           ; $4bc4: $00

jr_0c7_4bc5:
    and e                                         ; $4bc5: $a3
    ld e, l                                       ; $4bc6: $5d
    ld [bc], a                                    ; $4bc7: $02
    xor l                                         ; $4bc8: $ad
    ld b, b                                       ; $4bc9: $40
    ret z                                         ; $4bca: $c8

    scf                                           ; $4bcb: $37
    pop hl                                        ; $4bcc: $e1
    add b                                         ; $4bcd: $80
    ld [c], a                                     ; $4bce: $e2
    ld bc, $2d52                                  ; $4bcf: $01 $52 $2d
    and c                                         ; $4bd2: $a1
    ld e, $40                                     ; $4bd3: $1e $40
    cp a                                          ; $4bd5: $bf
    ld l, d                                       ; $4bd6: $6a
    nop                                           ; $4bd7: $00
    dec b                                         ; $4bd8: $05
    and h                                         ; $4bd9: $a4
    db $10                                        ; $4bda: $10
    db $fd                                        ; $4bdb: $fd
    ld [bc], a                                    ; $4bdc: $02
    ld d, h                                       ; $4bdd: $54
    rst $38                                       ; $4bde: $ff
    dec b                                         ; $4bdf: $05
    nop                                           ; $4be0: $00
    ld a, [$5ca3]                                 ; $4be1: $fa $a3 $5c
    ld [$00f7], sp                                ; $4be4: $08 $f7 $00
    rst $38                                       ; $4be7: $ff
    sub l                                         ; $4be8: $95
    ld [bc], a                                    ; $4be9: $02
    ld b, d                                       ; $4bea: $42
    xor d                                         ; $4beb: $aa
    inc b                                         ; $4bec: $04
    cp e                                          ; $4bed: $bb
    ld b, h                                       ; $4bee: $44
    ret c                                         ; $4bef: $d8

    ld [bc], a                                    ; $4bf0: $02
    ld [bc], a                                    ; $4bf1: $02
    ld [hl+], a                                   ; $4bf2: $22
    nop                                           ; $4bf3: $00
    rst $18                                       ; $4bf4: $df
    ld [$02f7], sp                                ; $4bf5: $08 $f7 $02
    rst $38                                       ; $4bf8: $ff
    ld [hl], h                                    ; $4bf9: $74
    ld [bc], a                                    ; $4bfa: $02
    ld l, e                                       ; $4bfb: $6b
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    adc c                                         ; $4bfe: $89
    halt                                          ; $4bff: $76
    set 7, a                                      ; $4c00: $cb $ff
    push bc                                       ; $4c02: $c5
    ld a, [hl-]                                   ; $4c03: $3a
    xor $00                                       ; $4c04: $ee $00
    add b                                         ; $4c06: $80
    ret nz                                        ; $4c07: $c0

    rlca                                          ; $4c08: $07
    rst $08                                       ; $4c09: $cf
    or b                                          ; $4c0a: $b0
    call nz, Call_0c7_7719                        ; $4c0b: $c4 $19 $77
    ld [bc], a                                    ; $4c0e: $02
    ld a, [de]                                    ; $4c0f: $1a
    add $39                                       ; $4c10: $c6 $39
    ld h, e                                       ; $4c12: $63
    rst $38                                       ; $4c13: $ff
    ld e, c                                       ; $4c14: $59
    ldh a, [rP1]                                  ; $4c15: $f0 $00
    or e                                          ; $4c17: $b3
    nop                                           ; $4c18: $00
    ld c, h                                       ; $4c19: $4c
    ld [hl], c                                    ; $4c1a: $71
    nop                                           ; $4c1b: $00
    reti                                          ; $4c1c: $d9


    ld h, $4f                                     ; $4c1d: $26 $4f
    nop                                           ; $4c1f: $00
    sbc d                                         ; $4c20: $9a
    nop                                           ; $4c21: $00
    ld h, b                                       ; $4c22: $60
    dec de                                        ; $4c23: $1b
    rst $38                                       ; $4c24: $ff
    dec hl                                        ; $4c25: $2b
    inc b                                         ; $4c26: $04
    ld e, e                                       ; $4c27: $5b
    nop                                           ; $4c28: $00
    adc l                                         ; $4c29: $8d
    nop                                           ; $4c2a: $00
    ld [bc], a                                    ; $4c2b: $02
    dec hl                                        ; $4c2c: $2b
    ret nc                                        ; $4c2d: $d0

    xor [hl]                                      ; $4c2e: $ae
    ld b, b                                       ; $4c2f: $40
    push bc                                       ; $4c30: $c5
    nop                                           ; $4c31: $00
    ld [hl], c                                    ; $4c32: $71
    nop                                           ; $4c33: $00
    adc [hl]                                      ; $4c34: $8e
    ld a, [hl+]                                   ; $4c35: $2a
    rst $38                                       ; $4c36: $ff
    ld d, e                                       ; $4c37: $53
    nop                                           ; $4c38: $00
    cp d                                          ; $4c39: $ba
    dec b                                         ; $4c3a: $05
    ld l, d                                       ; $4c3b: $6a
    nop                                           ; $4c3c: $00
    sub l                                         ; $4c3d: $95
    or h                                          ; $4c3e: $b4
    inc bc                                        ; $4c3f: $03
    cp d                                          ; $4c40: $ba
    ld b, c                                       ; $4c41: $41
    ld l, a                                       ; $4c42: $6f
    ld bc, $005a                                  ; $4c43: $01 $5a $00
    and l                                         ; $4c46: $a5
    ld [hl], h                                    ; $4c47: $74
    rst $38                                       ; $4c48: $ff
    ld a, d                                       ; $4c49: $7a
    add l                                         ; $4c4a: $85
    ld h, c                                       ; $4c4b: $61
    and b                                         ; $4c4c: $a0
    ld [hl], l                                    ; $4c4d: $75
    nop                                           ; $4c4e: $00
    adc d                                         ; $4c4f: $8a
    call nc, $b640                                ; $4c50: $d4 $40 $b6
    ld c, c                                       ; $4c53: $49
    ld b, b                                       ; $4c54: $40
    rst $38                                       ; $4c55: $ff
    sbc c                                         ; $4c56: $99
    ld [bc], a                                    ; $4c57: $02
    ld h, [hl]                                    ; $4c58: $66
    sub $ff                                       ; $4c59: $d6 $ff
    halt                                          ; $4c5b: $76
    add b                                         ; $4c5c: $80
    sbc e                                         ; $4c5d: $9b
    db $ec                                        ; $4c5e: $ec
    ld bc, $0067                                  ; $4c5f: $01 $67 $00
    nop                                           ; $4c62: $00
    inc c                                         ; $4c63: $0c
    di                                            ; $4c64: $f3
    ld h, b                                       ; $4c65: $60
    sbc a                                         ; $4c66: $9f
    inc b                                         ; $4c67: $04
    ld sp, hl                                     ; $4c68: $f9
    and d                                         ; $4c69: $a2
    nop                                           ; $4c6a: $00
    rst $38                                       ; $4c6b: $ff
    rst $38                                       ; $4c6c: $ff
    nop                                           ; $4c6d: $00
    adc c                                         ; $4c6e: $89
    nop                                           ; $4c6f: $00
    ld h, [hl]                                    ; $4c70: $66
    sbc c                                         ; $4c71: $99
    ld c, a                                       ; $4c72: $4f
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    ld c, c                                       ; $4c75: $49
    ld [hl], $a2                                  ; $4c76: $36 $a2
    ld e, l                                       ; $4c78: $5d
    nop                                           ; $4c79: $00
    rst $38                                       ; $4c7a: $ff
    ld e, e                                       ; $4c7b: $5b
    nop                                           ; $4c7c: $00
    rst $38                                       ; $4c7d: $ff
    ld b, l                                       ; $4c7e: $45
    nop                                           ; $4c7f: $00
    ld d, a                                       ; $4c80: $57
    xor b                                         ; $4c81: $a8
    xor e                                         ; $4c82: $ab
    ld b, b                                       ; $4c83: $40
    ld e, d                                       ; $4c84: $5a
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    adc h                                         ; $4c87: $8c
    ld h, e                                       ; $4c88: $63
    db $10                                        ; $4c89: $10
    rst $28                                       ; $4c8a: $ef
    jp nz, Jump_000_2e3d                          ; $4c8b: $c2 $3d $2e

    add b                                         ; $4c8e: $80
    ld b, b                                       ; $4c8f: $40
    ld [bc], a                                    ; $4c90: $02
    halt                                          ; $4c91: $76
    adc b                                         ; $4c92: $88
    ret z                                         ; $4c93: $c8

    scf                                           ; $4c94: $37
    cp h                                          ; $4c95: $bc
    nop                                           ; $4c96: $00
    inc sp                                        ; $4c97: $33
    nop                                           ; $4c98: $00
    call z, $bf40                                 ; $4c99: $cc $40 $bf
    inc d                                         ; $4c9c: $14
    db $eb                                        ; $4c9d: $eb
    or l                                          ; $4c9e: $b5
    rst $38                                       ; $4c9f: $ff
    ld h, e                                       ; $4ca0: $63
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    or [hl]                                       ; $4ca3: $b6
    add hl, bc                                    ; $4ca4: $09
    ld e, d                                       ; $4ca5: $5a
    and l                                         ; $4ca6: $a5
    or b                                          ; $4ca7: $b0
    inc bc                                        ; $4ca8: $03
    ld a, [bc]                                    ; $4ca9: $0a
    nop                                           ; $4caa: $00

jr_0c7_4cab:
    rst $20                                       ; $4cab: $e7
    ld b, b                                       ; $4cac: $40
    cp a                                          ; $4cad: $bf
    ld d, $eb                                     ; $4cae: $16 $eb
    call z, $39ff                                 ; $4cb0: $cc $ff $39
    nop                                           ; $4cb3: $00
    add [hl]                                      ; $4cb4: $86
    ld h, e                                       ; $4cb5: $63
    ret nz                                        ; $4cb6: $c0

    ld [hl], h                                    ; $4cb7: $74
    adc e                                         ; $4cb8: $8b
    call c, Call_0c7_5a40                         ; $4cb9: $dc $40 $5a
    nop                                           ; $4cbc: $00
    inc b                                         ; $4cbd: $04
    db $ed                                        ; $4cbe: $ed
    add d                                         ; $4cbf: $82
    di                                            ; $4cc0: $f3
    inc c                                         ; $4cc1: $0c
    and l                                         ; $4cc2: $a5
    rst $38                                       ; $4cc3: $ff
    ld a, d                                       ; $4cc4: $7a
    nop                                           ; $4cc5: $00
    add b                                         ; $4cc6: $80
    sbc l                                         ; $4cc7: $9d
    nop                                           ; $4cc8: $00
    pop af                                        ; $4cc9: $f1
    ld c, $57                                     ; $4cca: $0e $57
    nop                                           ; $4ccc: $00
    ld a, [hl-]                                   ; $4ccd: $3a
    ld [bc], a                                    ; $4cce: $02
    ld bc, $2057                                  ; $4ccf: $01 $57 $20
    ld d, h                                       ; $4cd2: $54
    xor e                                         ; $4cd3: $ab
    ld h, b                                       ; $4cd4: $60
    ld h, b                                       ; $4cd5: $60
    nop                                           ; $4cd6: $00
    sbc b                                         ; $4cd7: $98
    nop                                           ; $4cd8: $00
    ld bc, $a956                                  ; $4cd9: $01 $56 $a9
    rst $08                                       ; $4cdc: $cf
    nop                                           ; $4cdd: $00
    dec a                                         ; $4cde: $3d
    ld [bc], a                                    ; $4cdf: $02
    jp nc, Jump_000_3c80                          ; $4ce0: $d2 $80 $3c

    inc bc                                        ; $4ce3: $03
    xor d                                         ; $4ce4: $aa
    rst $38                                       ; $4ce5: $ff
    add [hl]                                      ; $4ce6: $86
    nop                                           ; $4ce7: $00
    rst $10                                       ; $4ce8: $d7
    jr z, jr_0c7_4d58                             ; $4ce9: $28 $6d

    nop                                           ; $4ceb: $00
    add b                                         ; $4cec: $80
    ld e, [hl]                                    ; $4ced: $5e
    nop                                           ; $4cee: $00
    ld l, h                                       ; $4cef: $6c
    sub e                                         ; $4cf0: $93
    jp c, $d107                                   ; $4cf1: $da $07 $d1

    db $10                                        ; $4cf4: $10
    ld l, $d4                                     ; $4cf5: $2e $d4
    rst $38                                       ; $4cf7: $ff
    halt                                          ; $4cf8: $76
    ld [$2354], sp                                ; $4cf9: $08 $54 $23
    or c                                          ; $4cfc: $b1
    ld c, [hl]                                    ; $4cfd: $4e
    ld bc, $14ab                                  ; $4cfe: $01 $ab $14
    ld sp, hl                                     ; $4d01: $f9
    ld b, b                                       ; $4d02: $40
    rst $10                                       ; $4d03: $d7
    jr z, jr_0c7_4cab                             ; $4d04: $28 $a5

    ld b, b                                       ; $4d06: $40
    ld [bc], a                                    ; $4d07: $02
    nop                                           ; $4d08: $00
    ld a, [bc]                                    ; $4d09: $0a
    db $f4                                        ; $4d0a: $f4
    ldh [$1f], a                                  ; $4d0b: $e0 $1f
    ld d, l                                       ; $4d0d: $55
    and d                                         ; $4d0e: $a2
    xor d                                         ; $4d0f: $aa
    ld d, l                                       ; $4d10: $55
    inc b                                         ; $4d11: $04
    ld a, a                                       ; $4d12: $7f
    nop                                           ; $4d13: $00
    ld d, h                                       ; $4d14: $54
    nop                                           ; $4d15: $00
    ld [hl], b                                    ; $4d16: $70
    ld [de], a                                    ; $4d17: $12
    inc bc                                        ; $4d18: $03
    xor c                                         ; $4d19: $a9
    ld d, $00                                     ; $4d1a: $16 $00
    ld d, b                                       ; $4d1c: $50
    adc a                                         ; $4d1d: $8f
    jr nz, @-$1f                                  ; $4d1e: $20 $df

    ld a, l                                       ; $4d20: $7d
    add d                                         ; $4d21: $82
    db $eb                                        ; $4d22: $eb
    nop                                           ; $4d23: $00
    db $10                                        ; $4d24: $10
    ld c, e                                       ; $4d25: $4b
    inc [hl]                                      ; $4d26: $34
    ld l, c                                       ; $4d27: $69
    jr nc, jr_0c7_4d2b                            ; $4d28: $30 $01

    ld b, c                                       ; $4d2a: $41

jr_0c7_4d2b:
    cp [hl]                                       ; $4d2b: $be
    and h                                         ; $4d2c: $a4
    ld e, e                                       ; $4d2d: $5b
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    rst $38                                       ; $4d30: $ff
    ld h, a                                       ; $4d31: $67
    sbc b                                         ; $4d32: $98
    xor b                                         ; $4d33: $a8
    rlca                                          ; $4d34: $07
    ld a, a                                       ; $4d35: $7f
    add b                                         ; $4d36: $80
    ld b, b                                       ; $4d37: $40
    ld d, [hl]                                    ; $4d38: $56
    ld [hl-], a                                   ; $4d39: $32
    inc bc                                        ; $4d3a: $03
    ld b, h                                       ; $4d3b: $44
    dec sp                                        ; $4d3c: $3b
    adc d                                         ; $4d3d: $8a
    ld [hl], l                                    ; $4d3e: $75
    nop                                           ; $4d3f: $00
    rst $38                                       ; $4d40: $ff
    nop                                           ; $4d41: $00
    ei                                            ; $4d42: $fb
    inc b                                         ; $4d43: $04
    sbc a                                         ; $4d44: $9f
    ld h, b                                       ; $4d45: $60
    ld e, a                                       ; $4d46: $5f
    nop                                           ; $4d47: $00
    ld a, [hl+]                                   ; $4d48: $2a
    rst $38                                       ; $4d49: $ff
    nop                                           ; $4d4a: $00
    add hl, hl                                    ; $4d4b: $29
    add $ba                                       ; $4d4c: $c6 $ba
    ldh [$31], a                                  ; $4d4e: $e0 $31
    ret nz                                        ; $4d50: $c0

    or e                                          ; $4d51: $b3
    db $ec                                        ; $4d52: $ec
    nop                                           ; $4d53: $00
    ld l, h                                       ; $4d54: $6c
    sub e                                         ; $4d55: $93
    sbc $03                                       ; $4d56: $de $03

jr_0c7_4d58:
    db $e4                                        ; $4d58: $e4
    dec de                                        ; $4d59: $1b
    ld l, h                                       ; $4d5a: $6c
    rst $38                                       ; $4d5b: $ff
    nop                                           ; $4d5c: $00
    xor e                                         ; $4d5d: $ab
    ld b, b                                       ; $4d5e: $40
    xor $00                                       ; $4d5f: $ee $00
    ld a, [bc]                                    ; $4d61: $0a
    pop af                                        ; $4d62: $f1
    halt                                          ; $4d63: $76
    nop                                           ; $4d64: $00
    add d                                         ; $4d65: $82
    ld h, b                                       ; $4d66: $60
    ld [$1ce3], sp                                ; $4d67: $08 $e3 $1c
    ld d, d                                       ; $4d6a: $52
    rst $38                                       ; $4d6b: $ff
    dec h                                         ; $4d6c: $25
    add sp, $03                                   ; $4d6d: $e8 $03
    ld [hl], c                                    ; $4d6f: $71
    nop                                           ; $4d70: $00
    add b                                         ; $4d71: $80
    ld h, l                                       ; $4d72: $65
    ld a, [de]                                    ; $4d73: $1a
    adc e                                         ; $4d74: $8b
    ld [hl], h                                    ; $4d75: $74
    ld a, a                                       ; $4d76: $7f
    nop                                           ; $4d77: $00
    xor d                                         ; $4d78: $aa
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    or b                                          ; $4d7b: $b0
    rst $38                                       ; $4d7c: $ff
    xor d                                         ; $4d7d: $aa
    ld d, l                                       ; $4d7e: $55
    push af                                       ; $4d7f: $f5
    nop                                           ; $4d80: $00
    xor d                                         ; $4d81: $aa
    nop                                           ; $4d82: $00
    ld d, h                                       ; $4d83: $54
    ld l, e                                       ; $4d84: $6b
    nop                                           ; $4d85: $00
    ld a, $c1                                     ; $4d86: $3e $c1
    db $eb                                        ; $4d88: $eb
    nop                                           ; $4d89: $00
    ld h, l                                       ; $4d8a: $65
    ld [$551a], sp                                ; $4d8b: $08 $1a $55
    rst $38                                       ; $4d8e: $ff
    sub a                                         ; $4d8f: $97
    ld [$9404], sp                                ; $4d90: $08 $04 $94
    ld h, e                                       ; $4d93: $63
    sbc l                                         ; $4d94: $9d
    ld [$6b00], sp                                ; $4d95: $08 $00 $6b
    sub h                                         ; $4d98: $94
    and b                                         ; $4d99: $a0
    ld h, b                                       ; $4d9a: $60
    nop                                           ; $4d9b: $00
    ld a, [hl+]                                   ; $4d9c: $2a
    rst $38                                       ; $4d9d: $ff
    ld c, $00                                     ; $4d9e: $0e $00
    nop                                           ; $4da0: $00
    xor e                                         ; $4da1: $ab
    db $10                                        ; $4da2: $10
    ld h, e                                       ; $4da3: $63
    add b                                         ; $4da4: $80
    ld e, b                                       ; $4da5: $58
    rlca                                          ; $4da6: $07
    inc b                                         ; $4da7: $04
    nop                                           ; $4da8: $00
    ei                                            ; $4da9: $fb
    ldh [$1f], a                                  ; $4daa: $e0 $1f
    ld b, h                                       ; $4dac: $44
    cp c                                          ; $4dad: $b9
    and c                                         ; $4dae: $a1
    rst $38                                       ; $4daf: $ff
    ld [$0000], a                                 ; $4db0: $ea $00 $00
    ld d, a                                       ; $4db3: $57
    nop                                           ; $4db4: $00
    adc l                                         ; $4db5: $8d
    ld [hl], d                                    ; $4db6: $72
    ld [hl], $00                                  ; $4db7: $36 $00
    and b                                         ; $4db9: $a0
    nop                                           ; $4dba: $00
    rra                                           ; $4dbb: $1f
    and h                                         ; $4dbc: $a4
    ld e, e                                       ; $4dbd: $5b
    ld [bc], a                                    ; $4dbe: $02
    db $fd                                        ; $4dbf: $fd
    ld c, l                                       ; $4dc0: $4d

jr_0c7_4dc1:
    rst $38                                       ; $4dc1: $ff
    ld l, e                                       ; $4dc2: $6b
    nop                                           ; $4dc3: $00
    db $10                                        ; $4dc4: $10
    ld c, [hl]                                    ; $4dc5: $4e
    or h                                          ; $4dc6: $b4
    ld c, a                                       ; $4dc7: $4f
    or b                                          ; $4dc8: $b0
    dec de                                        ; $4dc9: $1b
    ld l, b                                       ; $4dca: $68
    adc $00                                       ; $4dcb: $ce $00
    ld sp, $d728                                  ; $4dcd: $31 $28 $d7
    pop de                                        ; $4dd0: $d1
    ld l, $95                                     ; $4dd1: $2e $95

jr_0c7_4dd3:
    rst $38                                       ; $4dd3: $ff
    sub a                                         ; $4dd4: $97
    nop                                           ; $4dd5: $00
    ld l, b                                       ; $4dd6: $68
    add hl, sp                                    ; $4dd7: $39
    nop                                           ; $4dd8: $00
    cpl                                           ; $4dd9: $2f
    ret nc                                        ; $4dda: $d0

    ld c, d                                       ; $4ddb: $4a
    nop                                           ; $4ddc: $00
    adc b                                         ; $4ddd: $88
    nop                                           ; $4dde: $00
    ld [hl], a                                    ; $4ddf: $77
    jr nz, jr_0c7_4dc1                            ; $4de0: $20 $df

    ld a, [bc]                                    ; $4de2: $0a
    push af                                       ; $4de3: $f5
    ld c, l                                       ; $4de4: $4d
    rst $38                                       ; $4de5: $ff
    ld l, a                                       ; $4de6: $6f
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    cp b                                          ; $4de9: $b8
    nop                                           ; $4dea: $00
    sub [hl]                                      ; $4deb: $96
    ld l, c                                       ; $4dec: $69
    ld a, h                                       ; $4ded: $7c
    nop                                           ; $4dee: $00
    jp z, Jump_000_3100                           ; $4def: $ca $00 $31

    jr nz, jr_0c7_4dd3                            ; $4df2: $20 $df

    dec b                                         ; $4df4: $05
    ei                                            ; $4df5: $fb
    or e                                          ; $4df6: $b3
    rst $38                                       ; $4df7: $ff
    db $f4                                        ; $4df8: $f4
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    sub $09                                       ; $4dfb: $d6 $09
    xor e                                         ; $4dfd: $ab
    ld d, h                                       ; $4dfe: $54
    db $eb                                        ; $4dff: $eb
    nop                                           ; $4e00: $00
    or l                                          ; $4e01: $b5
    nop                                           ; $4e02: $00
    ret nz                                        ; $4e03: $c0

    ld a, e                                       ; $4e04: $7b
    and b                                         ; $4e05: $a0
    ld a, h                                       ; $4e06: $7c
    add e                                         ; $4e07: $83
    add hl, hl                                    ; $4e08: $29
    rst $38                                       ; $4e09: $ff
    ld [hl], $00                                  ; $4e0a: $36 $00
    nop                                           ; $4e0c: $00
    cp e                                          ; $4e0d: $bb
    ld b, h                                       ; $4e0e: $44
    ld e, [hl]                                    ; $4e0f: $5e
    ld bc, $00d5                                  ; $4e10: $01 $d5 $00
    ld c, e                                       ; $4e13: $4b
    nop                                           ; $4e14: $00
    add b                                         ; $4e15: $80
    ld d, a                                       ; $4e16: $57
    adc b                                         ; $4e17: $88
    jp c, Jump_0c7_5c25                           ; $4e18: $da $25 $5c

    rst $38                                       ; $4e1b: $ff
    cp d                                          ; $4e1c: $ba
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    xor l                                         ; $4e1f: $ad
    ld b, b                                       ; $4e20: $40
    ld d, e                                       ; $4e21: $53
    xor h                                         ; $4e22: $ac
    ld h, [hl]                                    ; $4e23: $66
    nop                                           ; $4e24: $00
    ld h, $00                                     ; $4e25: $26 $00
    ld b, b                                       ; $4e27: $40
    cp d                                          ; $4e28: $ba
    ld bc, $d02f                                  ; $4e29: $01 $2f $d0
    dec d                                         ; $4e2c: $15

Jump_0c7_4e2d:
    rst $38                                       ; $4e2d: $ff
    adc d                                         ; $4e2e: $8a
    nop                                           ; $4e2f: $00
    inc b                                         ; $4e30: $04
    db $db                                        ; $4e31: $db
    dec h                                         ; $4e32: $25
    ld l, e                                       ; $4e33: $6b
    sub h                                         ; $4e34: $94
    db $d3                                        ; $4e35: $d3
    dec c                                         ; $4e36: $0d
    xor d                                         ; $4e37: $aa
    jr nz, jr_0c7_4e8e                            ; $4e38: $20 $54

    ld b, l                                       ; $4e3a: $45
    ld e, d                                       ; $4e3b: $5a
    inc b                                         ; $4e3c: $04
    ld c, e                                       ; $4e3d: $4b
    rst $38                                       ; $4e3e: $ff
    jp hl                                         ; $4e3f: $e9


    ld d, $86                                     ; $4e40: $16 $86
    nop                                           ; $4e42: $00
    nop                                           ; $4e43: $00
    push de                                       ; $4e44: $d5
    ld a, [hl+]                                   ; $4e45: $2a

jr_0c7_4e46:
    ld l, c                                       ; $4e46: $69
    nop                                           ; $4e47: $00
    db $eb                                        ; $4e48: $eb
    db $10                                        ; $4e49: $10
    or c                                          ; $4e4a: $b1
    nop                                           ; $4e4b: $00
    ld b, b                                       ; $4e4c: $40
    call c, $8523                                 ; $4e4d: $dc $23 $85
    rst $38                                       ; $4e50: $ff
    push de                                       ; $4e51: $d5
    nop                                           ; $4e52: $00
    ld l, e                                       ; $4e53: $6b
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    ld [c], a                                     ; $4e56: $e2
    dec e                                         ; $4e57: $1d
    ld c, a                                       ; $4e58: $4f
    nop                                           ; $4e59: $00
    xor d                                         ; $4e5a: $aa
    db $10                                        ; $4e5b: $10
    ld e, l                                       ; $4e5c: $5d
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    ld d, [hl]                                    ; $4e5f: $56
    xor c                                         ; $4e60: $a9
    ld c, l                                       ; $4e61: $4d
    rst $38                                       ; $4e62: $ff
    cp $00                                        ; $4e63: $fe $00
    ld [hl-], a                                   ; $4e65: $32
    nop                                           ; $4e66: $00
    ld bc, $52ad                                  ; $4e67: $01 $ad $52
    sbc l                                         ; $4e6a: $9d
    nop                                           ; $4e6b: $00
    call $db32                                    ; $4e6c: $cd $32 $db
    adc b                                         ; $4e6f: $88
    call z, $9a04                                 ; $4e70: $cc $04 $9a
    rst $38                                       ; $4e73: $ff
    ld h, h                                       ; $4e74: $64
    add b                                         ; $4e75: $80
    inc bc                                        ; $4e76: $03
    ld d, [hl]                                    ; $4e77: $56
    jr nz, jr_0c7_4e46                            ; $4e78: $20 $cc

    nop                                           ; $4e7a: $00
    inc bc                                        ; $4e7b: $03
    sub l                                         ; $4e7c: $95
    ld h, d                                       ; $4e7d: $62
    sbc $68                                       ; $4e7e: $de $68
    dec e                                         ; $4e80: $1d
    ld [c], a                                     ; $4e81: $e2
    adc h                                         ; $4e82: $8c
    nop                                           ; $4e83: $00
    rst $38                                       ; $4e84: $ff
    ld d, [hl]                                    ; $4e85: $56
    add hl, bc                                    ; $4e86: $09
    cp a                                          ; $4e87: $bf
    nop                                           ; $4e88: $00
    ld a, [hl-]                                   ; $4e89: $3a
    dec b                                         ; $4e8a: $05
    and a                                         ; $4e8b: $a7

jr_0c7_4e8c:
    nop                                           ; $4e8c: $00
    ld b, b                                       ; $4e8d: $40

jr_0c7_4e8e:
    or d                                          ; $4e8e: $b2
    ld c, l                                       ; $4e8f: $4d
    sbc a                                         ; $4e90: $9f
    nop                                           ; $4e91: $00
    inc [hl]                                      ; $4e92: $34
    ret nz                                        ; $4e93: $c0

    ld d, a                                       ; $4e94: $57
    nop                                           ; $4e95: $00
    rst $38                                       ; $4e96: $ff
    xor l                                         ; $4e97: $ad
    ld d, b                                       ; $4e98: $50
    ld d, a                                       ; $4e99: $57
    nop                                           ; $4e9a: $00
    ld e, c                                       ; $4e9b: $59
    add [hl]                                      ; $4e9c: $86
    ld l, c                                       ; $4e9d: $69
    add b                                         ; $4e9e: $80
    ld d, h                                       ; $4e9f: $54
    ld [bc], a                                    ; $4ea0: $02
    cp $00                                        ; $4ea1: $fe $00
    and [hl]                                      ; $4ea3: $a6
    ld bc, $ff05                                  ; $4ea4: $01 $05 $ff
    ld l, b                                       ; $4ea7: $68
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    or l                                          ; $4eaa: $b5
    nop                                           ; $4eab: $00
    ld b, [hl]                                    ; $4eac: $46
    jr c, jr_0c7_4e8c                             ; $4ead: $38 $dd

    nop                                           ; $4eaf: $00
    ld [$1500], a                                 ; $4eb0: $ea $00 $15
    cp l                                          ; $4eb3: $bd
    nop                                           ; $4eb4: $00
    ld e, e                                       ; $4eb5: $5b
    and h                                         ; $4eb6: $a4
    ld d, d                                       ; $4eb7: $52
    rst $38                                       ; $4eb8: $ff
    halt                                          ; $4eb9: $76
    nop                                           ; $4eba: $00
    ld bc, $836c                                  ; $4ebb: $01 $6c $83
    inc e                                         ; $4ebe: $1c
    inc bc                                        ; $4ebf: $03
    sub h                                         ; $4ec0: $94
    ld l, e                                       ; $4ec1: $6b
    cp a                                          ; $4ec2: $bf
    nop                                           ; $4ec3: $00
    ld b, b                                       ; $4ec4: $40
    ld b, l                                       ; $4ec5: $45
    ld a, [hl-]                                   ; $4ec6: $3a
    ld sp, hl                                     ; $4ec7: $f9
    nop                                           ; $4ec8: $00
    or c                                          ; $4ec9: $b1
    rst $38                                       ; $4eca: $ff
    or c                                          ; $4ecb: $b1
    nop                                           ; $4ecc: $00
    ld c, [hl]                                    ; $4ecd: $4e
    ld b, b                                       ; $4ece: $40
    rst $38                                       ; $4ecf: $ff
    ld d, e                                       ; $4ed0: $53
    xor h                                         ; $4ed1: $ac
    add b                                         ; $4ed2: $80
    rst $38                                       ; $4ed3: $ff
    reti                                          ; $4ed4: $d9


    nop                                           ; $4ed5: $00
    ld h, $7b                                     ; $4ed6: $26 $7b
    add b                                         ; $4ed8: $80
    ld e, a                                       ; $4ed9: $5f
    nop                                           ; $4eda: $00
    ld c, c                                       ; $4edb: $49
    rst $38                                       ; $4edc: $ff
    ld b, [hl]                                    ; $4edd: $46
    ld b, b                                       ; $4ede: $40
    cp c                                          ; $4edf: $b9
    jp nc, $2502                                  ; $4ee0: $d2 $02 $25

    or c                                          ; $4ee3: $b1
    ld c, [hl]                                    ; $4ee4: $4e
    or d                                          ; $4ee5: $b2
    ld c, h                                       ; $4ee6: $4c
    ld l, e                                       ; $4ee7: $6b
    nop                                           ; $4ee8: $00
    dec e                                         ; $4ee9: $1d
    and e                                         ; $4eea: $a3
    ld e, h                                       ; $4eeb: $5c
    pop de                                        ; $4eec: $d1
    rst $38                                       ; $4eed: $ff
    ld d, l                                       ; $4eee: $55
    xor d                                         ; $4eef: $aa
    dec bc                                        ; $4ef0: $0b
    nop                                           ; $4ef1: $00
    db $f4                                        ; $4ef2: $f4
    db $e4                                        ; $4ef3: $e4
    dec de                                        ; $4ef4: $1b
    ld d, d                                       ; $4ef5: $52
    and c                                         ; $4ef6: $a1
    or [hl]                                       ; $4ef7: $b6
    ld c, c                                       ; $4ef8: $49
    push de                                       ; $4ef9: $d5
    ld [$a600], sp                                ; $4efa: $08 $00 $a6
    ld e, b                                       ; $4efd: $58
    ld c, d                                       ; $4efe: $4a
    jp nc, Jump_0c7_5404                          ; $4eff: $d2 $04 $54

    dec bc                                        ; $4f02: $0b
    jr nc, jr_0c7_4f05                            ; $4f03: $30 $00

jr_0c7_4f05:
    rst $08                                       ; $4f05: $cf
    add b                                         ; $4f06: $80
    ld a, a                                       ; $4f07: $7f
    ld d, [hl]                                    ; $4f08: $56
    xor c                                         ; $4f09: $a9
    rst $38                                       ; $4f0a: $ff
    nop                                           ; $4f0b: $00
    sub h                                         ; $4f0c: $94
    jr nz, jr_0c7_4f0f                            ; $4f0d: $20 $00

jr_0c7_4f0f:
    ldh [$d8], a                                  ; $4f0f: $e0 $d8
    inc b                                         ; $4f11: $04
    and h                                         ; $4f12: $a4
    ld e, e                                       ; $4f13: $5b
    ld d, b                                       ; $4f14: $50
    xor a                                         ; $4f15: $af
    nop                                           ; $4f16: $00
    nop                                           ; $4f17: $00
    rst $38                                       ; $4f18: $ff
    db $fd                                        ; $4f19: $fd
    ld [bc], a                                    ; $4f1a: $02
    rst $10                                       ; $4f1b: $d7
    nop                                           ; $4f1c: $00
    swap h                                        ; $4f1d: $cb $34
    xor c                                         ; $4f1f: $a9
    nop                                           ; $4f20: $00
    rst $38                                       ; $4f21: $ff
    ld b, b                                       ; $4f22: $40
    cp a                                          ; $4f23: $bf
    and l                                         ; $4f24: $a5
    ld a, [de]                                    ; $4f25: $1a
    ld b, d                                       ; $4f26: $42
    cp l                                          ; $4f27: $bd
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    rst $38                                       ; $4f2a: $ff
    ld [hl], h                                    ; $4f2b: $74
    ld [$00be], sp                                ; $4f2c: $08 $be $00
    and e                                         ; $4f2f: $a3
    ld e, h                                       ; $4f30: $5c
    dec b                                         ; $4f31: $05
    and b                                         ; $4f32: $a0
    sub b                                         ; $4f33: $90
    nop                                           ; $4f34: $00
    rst $20                                       ; $4f35: $e7
    ld a, h                                       ; $4f36: $7c
    inc bc                                        ; $4f37: $03
    dec d                                         ; $4f38: $15
    nop                                           ; $4f39: $00
    jp c, $a805                                   ; $4f3a: $da $05 $a8

    nop                                           ; $4f3d: $00
    ld b, b                                       ; $4f3e: $40
    ei                                            ; $4f3f: $fb
    inc b                                         ; $4f40: $04
    ld c, c                                       ; $4f41: $49
    rst $38                                       ; $4f42: $ff
    ld e, a                                       ; $4f43: $5f
    nop                                           ; $4f44: $00
    ld h, e                                       ; $4f45: $63
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    ld e, d                                       ; $4f48: $5a
    and l                                         ; $4f49: $a5
    jp hl                                         ; $4f4a: $e9


    nop                                           ; $4f4b: $00
    ld d, [hl]                                    ; $4f4c: $56
    add c                                         ; $4f4d: $81
    or [hl]                                       ; $4f4e: $b6
    nop                                           ; $4f4f: $00
    ld [$44bb], sp                                ; $4f50: $08 $bb $44
    ld d, b                                       ; $4f53: $50
    rst $38                                       ; $4f54: $ff
    ld hl, sp+$00                                 ; $4f55: $f8 $00
    dec l                                         ; $4f57: $2d
    nop                                           ; $4f58: $00
    ld [de], a                                    ; $4f59: $12
    sub $28                                       ; $4f5a: $d6 $28
    push de                                       ; $4f5c: $d5
    nop                                           ; $4f5d: $00
    xor d                                         ; $4f5e: $aa
    ld bc, $0035                                  ; $4f5f: $01 $35 $00
    nop                                           ; $4f62: $00
    and l                                         ; $4f63: $a5
    ld e, d                                       ; $4f64: $5a
    and h                                         ; $4f65: $a4
    rst $38                                       ; $4f66: $ff
    ld d, [hl]                                    ; $4f67: $56
    nop                                           ; $4f68: $00
    ld [hl], a                                    ; $4f69: $77
    nop                                           ; $4f6a: $00
    adc b                                         ; $4f6b: $88
    call c, $ea03                                 ; $4f6c: $dc $03 $ea
    nop                                           ; $4f6f: $00
    or h                                          ; $4f70: $b4
    inc bc                                        ; $4f71: $03
    db $fc                                        ; $4f72: $fc
    ld [$6907], sp                                ; $4f73: $08 $07 $69
    sub [hl]                                      ; $4f76: $96
    jp hl                                         ; $4f77: $e9


    ld b, b                                       ; $4f78: $40
    ld bc, $8055                                  ; $4f79: $01 $55 $80
    and e                                         ; $4f7c: $a3
    nop                                           ; $4f7d: $00
    ld e, h                                       ; $4f7e: $5c
    and $00                                       ; $4f7f: $e6 $00
    ld l, d                                       ; $4f81: $6a
    sub c                                         ; $4f82: $91
    add h                                         ; $4f83: $84
    ei                                            ; $4f84: $fb
    add hl, sp                                    ; $4f85: $39
    nop                                           ; $4f86: $00
    add $d7                                       ; $4f87: $c6 $d7
    rst $38                                       ; $4f89: $ff
    adc l                                         ; $4f8a: $8d
    ld [bc], a                                    ; $4f8b: $02
    db $d3                                        ; $4f8c: $d3
    dec l                                         ; $4f8d: $2d
    ld h, e                                       ; $4f8e: $63
    nop                                           ; $4f8f: $00
    sbc h                                         ; $4f90: $9c
    db $d3                                        ; $4f91: $d3
    dec c                                         ; $4f92: $0d
    inc b                                         ; $4f93: $04
    ei                                            ; $4f94: $fb
    ld h, b                                       ; $4f95: $60
    sbc a                                         ; $4f96: $9f
    dec b                                         ; $4f97: $05
    nop                                           ; $4f98: $00
    ld hl, sp+$61                                 ; $4f99: $f8 $61
    rst $38                                       ; $4f9b: $ff
    dec c                                         ; $4f9c: $0d
    ld [hl], d                                    ; $4f9d: $72
    sub $00                                       ; $4f9e: $d6 $00
    adc b                                         ; $4fa0: $88
    nop                                           ; $4fa1: $00
    rlca                                          ; $4fa2: $07
    sbc e                                         ; $4fa3: $9b
    ld h, b                                       ; $4fa4: $60
    and h                                         ; $4fa5: $a4
    dec de                                        ; $4fa6: $1b
    ld d, d                                       ; $4fa7: $52
    xor l                                         ; $4fa8: $ad
    ld bc, $fe00                                  ; $4fa9: $01 $00 $fe
    ld h, $ff                                     ; $4fac: $26 $ff
    ld c, h                                       ; $4fae: $4c
    nop                                           ; $4faf: $00
    cp a                                          ; $4fb0: $bf
    nop                                           ; $4fb1: $00
    xor d                                         ; $4fb2: $aa
    nop                                           ; $4fb3: $00
    ld b, h                                       ; $4fb4: $44
    ld e, c                                       ; $4fb5: $59
    nop                                           ; $4fb6: $00
    ld c, e                                       ; $4fb7: $4b
    or b                                          ; $4fb8: $b0
    inc d                                         ; $4fb9: $14
    db $eb                                        ; $4fba: $eb
    ld l, b                                       ; $4fbb: $68
    nop                                           ; $4fbc: $00
    sub a                                         ; $4fbd: $97
    jp z, $96ff                                   ; $4fbe: $ca $ff $96

    ld bc, $00ae                                  ; $4fc1: $01 $ae $00
    rst $00                                       ; $4fc4: $c7
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    sub h                                         ; $4fc7: $94
    ld l, b                                       ; $4fc8: $68
    ld b, [hl]                                    ; $4fc9: $46
    cp c                                          ; $4fca: $b9
    ld [$c2f7], sp                                ; $4fcb: $08 $f7 $c2
    nop                                           ; $4fce: $00
    dec a                                         ; $4fcf: $3d
    db $d3                                        ; $4fd0: $d3
    rst $38                                       ; $4fd1: $ff
    push de                                       ; $4fd2: $d5
    ld a, [hl+]                                   ; $4fd3: $2a
    db $eb                                        ; $4fd4: $eb
    nop                                           ; $4fd5: $00
    ld d, l                                       ; $4fd6: $55
    nop                                           ; $4fd7: $00
    xor b                                         ; $4fd8: $a8
    rst $10                                       ; $4fd9: $d7
    nop                                           ; $4fda: $00
    ld h, d                                       ; $4fdb: $62
    sbc h                                         ; $4fdc: $9c
    ld [$81f7], sp                                ; $4fdd: $08 $f7 $81
    nop                                           ; $4fe0: $00

Jump_0c7_4fe1:
    ld a, [hl]                                    ; $4fe1: $7e
    xor h                                         ; $4fe2: $ac
    rst $38                                       ; $4fe3: $ff
    dec l                                         ; $4fe4: $2d
    nop                                           ; $4fe5: $00
    sub $00                                       ; $4fe6: $d6 $00
    add hl, hl                                    ; $4fe8: $29
    nop                                           ; $4fe9: $00
    add $3b                                       ; $4fea: $c6 $3b
    nop                                           ; $4fec: $00
    jp z, $bf35                                   ; $4fed: $ca $35 $bf

    nop                                           ; $4ff0: $00
    jp nc, RST_08                                 ; $4ff1: $d2 $08 $00

    cp b                                          ; $4ff4: $b8
    rst $38                                       ; $4ff5: $ff
    xor l                                         ; $4ff6: $ad
    inc d                                         ; $4ff7: $14
    ld b, $5c                                     ; $4ff8: $06 $5c
    inc bc                                        ; $4ffa: $03
    ld d, l                                       ; $4ffb: $55
    nop                                           ; $4ffc: $00

jr_0c7_4ffd:
    nop                                           ; $4ffd: $00
    rst $08                                       ; $4ffe: $cf

jr_0c7_4fff:
    jr nc, jr_0c7_4fff                            ; $4fff: $30 $fe

    nop                                           ; $5001: $00
    adc c                                         ; $5002: $89
    ld b, $15                                     ; $5003: $06 $15
    jr nz, @+$01                                  ; $5005: $20 $ff

    ld a, d                                       ; $5007: $7a
    add b                                         ; $5008: $80
    db $10                                        ; $5009: $10
    call $ad00                                    ; $500a: $cd $00 $ad
    ld d, d                                       ; $500d: $52
    db $f4                                        ; $500e: $f4

Call_0c7_500f:
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    ld l, a                                       ; $5011: $6f
    sub b                                         ; $5012: $90
    ld h, $ff                                     ; $5013: $26 $ff
    adc h                                         ; $5015: $8c
    ld [bc], a                                    ; $5016: $02
    reti                                          ; $5017: $d9


    nop                                           ; $5018: $00
    daa                                           ; $5019: $27
    ld l, c                                       ; $501a: $69
    sub [hl]                                      ; $501b: $96
    sub e                                         ; $501c: $93
    dec c                                         ; $501d: $0d
    ld a, a                                       ; $501e: $7f
    add b                                         ; $501f: $80
    adc d                                         ; $5020: $8a
    jr z, @+$77                                   ; $5021: $28 $75

    ld a, [c]                                     ; $5023: $f2
    ldh [rDIV], a                                 ; $5024: $e0 $04
    adc l                                         ; $5026: $8d
    add b                                         ; $5027: $80
    jr nz, jr_0c7_4ffd                            ; $5028: $20 $d3

    inc l                                         ; $502a: $2c
    or $a0                                        ; $502b: $f6 $a0
    ld l, [hl]                                    ; $502d: $6e
    ld b, $93                                     ; $502e: $06 $93
    add b                                         ; $5030: $80
    nop                                           ; $5031: $00
    cp e                                          ; $5032: $bb
    nop                                           ; $5033: $00
    xor c                                         ; $5034: $a9
    ld b, [hl]                                    ; $5035: $46
    ld e, c                                       ; $5036: $59
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    ld [hl], d                                    ; $5039: $72
    adc h                                         ; $503a: $8c
    db $eb                                        ; $503b: $eb
    dec e                                         ; $503c: $1d
    ld d, e                                       ; $503d: $53
    xor h                                         ; $503e: $ac
    ld d, c                                       ; $503f: $51
    ld [$8bff], sp                                ; $5040: $08 $ff $8b
    nop                                           ; $5043: $00
    rst $10                                       ; $5044: $d7
    ld a, [c]                                     ; $5045: $f2
    nop                                           ; $5046: $00
    sub h                                         ; $5047: $94
    ld l, b                                       ; $5048: $68
    xor d                                         ; $5049: $aa
    ld [bc], a                                    ; $504a: $02
    inc b                                         ; $504b: $04
    push de                                       ; $504c: $d5
    ld [bc], a                                    ; $504d: $02
    db $eb                                        ; $504e: $eb
    inc d                                         ; $504f: $14
    ld c, d                                       ; $5050: $4a
    ld d, b                                       ; $5051: $50
    ld bc, $006a                                  ; $5052: $01 $6a $00
    nop                                           ; $5055: $00
    sub l                                         ; $5056: $95
    ld l, b                                       ; $5057: $68
    sub $00                                       ; $5058: $d6 $00
    ld e, d                                       ; $505a: $5a
    ld bc, $0236                                  ; $505b: $01 $36 $02
    ld b, b                                       ; $505e: $40
    ld d, h                                       ; $505f: $54
    xor e                                         ; $5060: $ab
    ldh [rIE], a                                  ; $5061: $e0 $ff
    sub [hl]                                      ; $5063: $96
    and b                                         ; $5064: $a0
    ld [hl+], a                                   ; $5065: $22
    sbc e                                         ; $5066: $9b
    jr z, jr_0c7_5069                             ; $5067: $28 $00

jr_0c7_5069:
    ld [$067c], a                                 ; $5069: $ea $7c $06
    ld d, h                                       ; $506c: $54
    ld d, b                                       ; $506d: $50
    inc bc                                        ; $506e: $03
    ld d, l                                       ; $506f: $55
    ld [$02b0], sp                                ; $5070: $08 $b0 $02
    ld b, b                                       ; $5073: $40
    xor h                                         ; $5074: $ac
    inc bc                                        ; $5075: $03
    ld d, l                                       ; $5076: $55
    xor b                                         ; $5077: $a8
    adc e                                         ; $5078: $8b
    ld c, d                                       ; $5079: $4a
    ld [bc], a                                    ; $507a: $02
    sub l                                         ; $507b: $95
    nop                                           ; $507c: $00
    rst $38                                       ; $507d: $ff
    or l                                          ; $507e: $b5
    ld [$1a67], sp                                ; $507f: $08 $67 $1a
    rst $20                                       ; $5082: $e7
    jr @-$57                                      ; $5083: $18 $a7

jr_0c7_5085:
    nop                                           ; $5085: $00
    ld e, d                                       ; $5086: $5a
    push de                                       ; $5087: $d5
    jr nz, jr_0c7_50ed                            ; $5088: $20 $63

    add b                                         ; $508a: $80
    cp d                                          ; $508b: $ba
    ld b, l                                       ; $508c: $45
    ld a, [bc]                                    ; $508d: $0a
    ld a, [bc]                                    ; $508e: $0a
    rst $38                                       ; $508f: $ff
    xor e                                         ; $5090: $ab
    ld d, h                                       ; $5091: $54
    inc e                                         ; $5092: $1c
    jp nc, $a203                                  ; $5093: $d2 $03 $a2

    call z, Call_000_1506                         ; $5096: $cc $06 $15
    jr nz, jr_0c7_5085                            ; $5099: $20 $ea

    push hl                                       ; $509b: $e5
    ld h, b                                       ; $509c: $60
    dec b                                         ; $509d: $05
    ld e, d                                       ; $509e: $5a
    dec b                                         ; $509f: $05
    ld h, d                                       ; $50a0: $62
    rra                                           ; $50a1: $1f
    push hl                                       ; $50a2: $e5
    nop                                           ; $50a3: $00
    ld a, [de]                                    ; $50a4: $1a
    and d                                         ; $50a5: $a2
    ld e, a                                       ; $50a6: $5f
    or e                                          ; $50a7: $b3
    ld c, h                                       ; $50a8: $4c
    or $00                                        ; $50a9: $f6 $00
    cp [hl]                                       ; $50ab: $be
    jr nz, jr_0c7_50af                            ; $50ac: $20 $01

    sub [hl]                                      ; $50ae: $96

jr_0c7_50af:
    ld h, b                                       ; $50af: $60
    inc b                                         ; $50b0: $04
    nop                                           ; $50b1: $00
    rst $38                                       ; $50b2: $ff
    ld c, l                                       ; $50b3: $4d
    or b                                          ; $50b4: $b0
    ld [bc], a                                    ; $50b5: $02
    ld b, b                                       ; $50b6: $40

jr_0c7_50b7:
    db $fd                                        ; $50b7: $fd
    add b                                         ; $50b8: $80
    ld [$58a7], sp                                ; $50b9: $08 $a7 $58
    and d                                         ; $50bc: $a2
    rst $38                                       ; $50bd: $ff
    add hl, de                                    ; $50be: $19
    and $02                                       ; $50bf: $e6 $02
    nop                                           ; $50c1: $00
    rst $38                                       ; $50c2: $ff
    ld d, l                                       ; $50c3: $55
    adc d                                         ; $50c4: $8a
    jp nz, $803d                                  ; $50c5: $c2 $3d $80

    ld [$20d6], sp                                ; $50c8: $08 $d6 $20
    add hl, hl                                    ; $50cb: $29
    adc d                                         ; $50cc: $8a
    jr nz, jr_0c7_50d2                            ; $50cd: $20 $03

    ld d, $e8                                     ; $50cf: $16 $e8
    ret z                                         ; $50d1: $c8

jr_0c7_50d2:
    scf                                           ; $50d2: $37
    and l                                         ; $50d3: $a5
    nop                                           ; $50d4: $00
    ld b, d                                       ; $50d5: $42
    ld l, $01                                     ; $50d6: $2e $01
    ld e, d                                       ; $50d8: $5a
    jr nz, jr_0c7_50af                            ; $50d9: $20 $d4

    dec hl                                        ; $50db: $2b
    ldh [$9c], a                                  ; $50dc: $e0 $9c
    and d                                         ; $50de: $a2
    ld b, $ac                                     ; $50df: $06 $ac
    inc de                                        ; $50e1: $13
    sub b                                         ; $50e2: $90
    dec bc                                        ; $50e3: $0b
    add b                                         ; $50e4: $80
    jr z, jr_0c7_50b7                             ; $50e5: $28 $d0

    add hl, bc                                    ; $50e7: $09
    ld d, c                                       ; $50e8: $51
    xor [hl]                                      ; $50e9: $ae
    sub b                                         ; $50ea: $90
    inc [hl]                                      ; $50eb: $34
    nop                                           ; $50ec: $00

jr_0c7_50ed:
    xor b                                         ; $50ed: $a8
    adc d                                         ; $50ee: $8a
    add b                                         ; $50ef: $80
    db $10                                        ; $50f0: $10
    and b                                         ; $50f1: $a0
    ld e, a                                       ; $50f2: $5f
    ld d, d                                       ; $50f3: $52
    adc l                                         ; $50f4: $8d
    inc b                                         ; $50f5: $04
    ld hl, $00de                                  ; $50f6: $21 $de $00
    rst $38                                       ; $50f9: $ff
    ld l, d                                       ; $50fa: $6a
    and b                                         ; $50fb: $a0
    ld [bc], a                                    ; $50fc: $02
    db $dd                                        ; $50fd: $dd
    ld [hl+], a                                   ; $50fe: $22
    nop                                           ; $50ff: $00
    add l                                         ; $5100: $85
    rst $38                                       ; $5101: $ff
    dec b                                         ; $5102: $05
    ld hl, sp-$69                                 ; $5103: $f8 $97
    ld a, d                                       ; $5105: $7a
    ld b, a                                       ; $5106: $47
    cp b                                          ; $5107: $b8
    nop                                           ; $5108: $00
    rla                                           ; $5109: $17
    ld a, [$08d5]                                 ; $510a: $fa $d5 $08
    xor [hl]                                      ; $510d: $ae
    nop                                           ; $510e: $00
    dec hl                                        ; $510f: $2b
    call nc, $2600                                ; $5110: $d4 $00 $26
    rst $38                                       ; $5113: $ff
    ld a, [de]                                    ; $5114: $1a
    db $e4                                        ; $5115: $e4
    xor l                                         ; $5116: $ad
    nop                                           ; $5117: $00
    ld de, $000e                                  ; $5118: $11 $0e $00
    ld [hl], $c0                                  ; $511b: $36 $c0
    and h                                         ; $511d: $a4
    add hl, de                                    ; $511e: $19
    rst $30                                       ; $511f: $f7
    ld a, [de]                                    ; $5120: $1a
    and [hl]                                      ; $5121: $a6
    ld e, c                                       ; $5122: $59
    db $10                                        ; $5123: $10
    and e                                         ; $5124: $a3
    rst $38                                       ; $5125: $ff
    sbc c                                         ; $5126: $99
    ld l, b                                       ; $5127: $68
    rlca                                          ; $5128: $07
    ld d, e                                       ; $5129: $53
    adc h                                         ; $512a: $8c
    or c                                          ; $512b: $b1
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    call c, Call_0c7_4b23                         ; $512e: $dc $23 $4b
    nop                                           ; $5131: $00
    sbc l                                         ; $5132: $9d
    ld h, b                                       ; $5133: $60
    dec d                                         ; $5134: $15
    rst $38                                       ; $5135: $ff
    nop                                           ; $5136: $00
    dec l                                         ; $5137: $2d
    ld [bc], a                                    ; $5138: $02
    ld e, l                                       ; $5139: $5d
    nop                                           ; $513a: $00

Call_0c7_513b:
    adc [hl]                                      ; $513b: $8e
    ld bc, $d029                                  ; $513c: $01 $29 $d0
    jr nc, jr_0c7_514c                            ; $513f: $30 $0b

    ld e, a                                       ; $5141: $5f
    add hl, bc                                    ; $5142: $09
    nop                                           ; $5143: $00
    rrca                                          ; $5144: $0f
    nop                                           ; $5145: $00
    rrca                                          ; $5146: $0f
    nop                                           ; $5147: $00
    and [hl]                                      ; $5148: $a6
    nop                                           ; $5149: $00
    ld d, l                                       ; $514a: $55
    nop                                           ; $514b: $00

jr_0c7_514c:
    nop                                           ; $514c: $00
    add hl, sp                                    ; $514d: $39
    nop                                           ; $514e: $00
    inc sp                                        ; $514f: $33
    nop                                           ; $5150: $00
    ld d, a                                       ; $5151: $57
    nop                                           ; $5152: $00
    and e                                         ; $5153: $a3
    nop                                           ; $5154: $00
    ld bc, $000b                                  ; $5155: $01 $0b $00
    add l                                         ; $5158: $85
    nop                                           ; $5159: $00
    ld h, e                                       ; $515a: $63
    nop                                           ; $515b: $00
    ret nz                                        ; $515c: $c0

    ld [$0000], sp                                ; $515d: $08 $00 $00
    ld l, $00                                     ; $5160: $2e $00
    ld e, l                                       ; $5162: $5d
    nop                                           ; $5163: $00
    cp e                                          ; $5164: $bb
    nop                                           ; $5165: $00
    rst $10                                       ; $5166: $d7
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    db $e3                                        ; $5169: $e3
    nop                                           ; $516a: $00
    add b                                         ; $516b: $80
    nop                                           ; $516c: $00
    add sp, $00                                   ; $516d: $e8 $00
    ld [hl], l                                    ; $516f: $75
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    dec sp                                        ; $5172: $3b
    nop                                           ; $5173: $00
    sbc [hl]                                      ; $5174: $9e
    nop                                           ; $5175: $00
    or h                                          ; $5176: $b4
    nop                                           ; $5177: $00
    ld c, $01                                     ; $5178: $0e $01
    nop                                           ; $517a: $00
    ld c, $01                                     ; $517b: $0e $01
    and [hl]                                      ; $517d: $a6
    ld bc, $0156                                  ; $517e: $01 $56 $01
    ld a, [hl-]                                   ; $5181: $3a
    ld bc, $3244                                  ; $5182: $01 $44 $32
    ld b, $00                                     ; $5185: $06 $00
    and d                                         ; $5187: $a2
    ld bc, $01ff                                  ; $5188: $01 $ff $01
    ld [$d5c1], sp                                ; $518b: $08 $c1 $d5

Jump_0c7_518e:
    ld hl, $fbc1                                  ; $518e: $21 $c1 $fb
    inc b                                         ; $5191: $04
    nop                                           ; $5192: $00
    db $eb                                        ; $5193: $eb
    pop bc                                        ; $5194: $c1
    push bc                                       ; $5195: $c5
    pop bc                                        ; $5196: $c1
    db $10                                        ; $5197: $10
    db $10                                        ; $5198: $10
    ld [$d581], sp                                ; $5199: $08 $81 $d5
    add c                                         ; $519c: $81
    ei                                            ; $519d: $fb
    inc b                                         ; $519e: $04
    nop                                           ; $519f: $00
    xor e                                         ; $51a0: $ab
    add c                                         ; $51a1: $81
    push bc                                       ; $51a2: $c5
    ld b, d                                       ; $51a3: $42
    add c                                         ; $51a4: $81
    jr nz, jr_0c7_51b7                            ; $51a5: $20 $10

    add e                                         ; $51a7: $83
    rst $10                                       ; $51a8: $d7
    add e                                         ; $51a9: $83
    ei                                            ; $51aa: $fb
    inc b                                         ; $51ab: $04
    nop                                           ; $51ac: $00
    xor e                                         ; $51ad: $ab
    nop                                           ; $51ae: $00
    add e                                         ; $51af: $83
    rst $00                                       ; $51b0: $c7
    add e                                         ; $51b1: $83
    ld l, c                                       ; $51b2: $69
    add b                                         ; $51b3: $80
    ld a, h                                       ; $51b4: $7c
    add b                                         ; $51b5: $80
    ld l, [hl]                                    ; $51b6: $6e

jr_0c7_51b7:
    nop                                           ; $51b7: $00
    add b                                         ; $51b8: $80
    ld c, h                                       ; $51b9: $4c
    add b                                         ; $51ba: $80
    ld h, b                                       ; $51bb: $60
    add b                                         ; $51bc: $80
    ld e, d                                       ; $51bd: $5a
    add b                                         ; $51be: $80
    ld l, h                                       ; $51bf: $6c
    inc b                                         ; $51c0: $04
    add b                                         ; $51c1: $80
    ld e, l                                       ; $51c2: $5d
    add b                                         ; $51c3: $80
    ld b, a                                       ; $51c4: $47
    ld d, h                                       ; $51c5: $54
    ld [bc], a                                    ; $51c6: $02
    jr jr_0c7_5209                                ; $51c7: $18 $40

    ld d, b                                       ; $51c9: $50
    nop                                           ; $51ca: $00
    ld b, b                                       ; $51cb: $40
    ld e, a                                       ; $51cc: $5f
    ld b, a                                       ; $51cd: $47
    ld d, a                                       ; $51ce: $57
    ld b, h                                       ; $51cf: $44
    ld d, h                                       ; $51d0: $54
    adc b                                         ; $51d1: $88
    xor l                                         ; $51d2: $ad
    ld [hl+], a                                   ; $51d3: $22
    ld hl, sp-$71                                 ; $51d4: $f8 $8f
    ld [bc], a                                    ; $51d6: $02
    ld [$0000], sp                                ; $51d7: $08 $00 $00
    nop                                           ; $51da: $00
    ld e, e                                       ; $51db: $5b
    nop                                           ; $51dc: $00
    ld a, h                                       ; $51dd: $7c
    ld b, $7f                                     ; $51de: $06 $7f
    db $fc                                        ; $51e0: $fc
    cp $87                                        ; $51e1: $fe $87
    add h                                         ; $51e3: $84
    ld [bc], a                                    ; $51e4: $02
    ld [$1810], sp                                ; $51e5: $08 $10 $18
    rst $38                                       ; $51e8: $ff
    ld [hl+], a                                   ; $51e9: $22
    cp $f9                                        ; $51ea: $fe $f9
    ld bc, $ff08                                  ; $51ec: $01 $08 $ff
    ld sp, hl                                     ; $51ef: $f9
    rst $38                                       ; $51f0: $ff
    jr nz, @+$1a                                  ; $51f1: $20 $18

    ld sp, hl                                     ; $51f3: $f9
    nop                                           ; $51f4: $00
    ld a, a                                       ; $51f5: $7f
    inc a                                         ; $51f6: $3c
    ld a, l                                       ; $51f7: $7d

Call_0c7_51f8:
jr_0c7_51f8:
    ccf                                           ; $51f8: $3f
    db $fc                                        ; $51f9: $fc
    daa                                           ; $51fa: $27
    db $e4                                        ; $51fb: $e4
    daa                                           ; $51fc: $27
    ld b, b                                       ; $51fd: $40
    db $e4                                        ; $51fe: $e4
    jr nc, jr_0c7_5219                            ; $51ff: $30 $18

    pop af                                        ; $5201: $f1
    rst $38                                       ; $5202: $ff
    sub $01                                       ; $5203: $d6 $01
    ld [c], a                                     ; $5205: $e2
    ld bc, $8204                                  ; $5206: $01 $04 $82

jr_0c7_5209:
    ld bc, $01ea                                  ; $5209: $01 $ea $01
    halt                                          ; $520c: $76
    and d                                         ; $520d: $a2
    nop                                           ; $520e: $00
    sbc [hl]                                      ; $520f: $9e
    ld bc, $b620                                  ; $5210: $01 $20 $b6
    ld bc, $0891                                  ; $5213: $01 $91 $08
    db $eb                                        ; $5216: $eb
    pop bc                                        ; $5217: $c1
    pop bc                                        ; $5218: $c1

jr_0c7_5219:
    pop bc                                        ; $5219: $c1
    db $e3                                        ; $521a: $e3
    ldh [rDIV], a                                 ; $521b: $e0 $04
    nop                                           ; $521d: $00
    sbc l                                         ; $521e: $9d
    ld [$0891], sp                                ; $521f: $08 $91 $08
    xor e                                         ; $5222: $ab
    add c                                         ; $5223: $81
    add c                                         ; $5224: $81
    add c                                         ; $5225: $81
    and e                                         ; $5226: $a3
    ret nc                                        ; $5227: $d0

    inc b                                         ; $5228: $04
    nop                                           ; $5229: $00
    sbc l                                         ; $522a: $9d
    ld [$1083], sp                                ; $522b: $08 $83 $10
    ld [$8383], sp                                ; $522e: $08 $83 $83
    add e                                         ; $5231: $83
    and e                                         ; $5232: $a3
    ret nz                                        ; $5233: $c0

    inc b                                         ; $5234: $04
    nop                                           ; $5235: $00
    inc c                                         ; $5236: $0c
    ld [$8068], sp                                ; $5237: $08 $68 $80
    ld e, c                                       ; $523a: $59
    add b                                         ; $523b: $80
    ld b, e                                       ; $523c: $43
    add b                                         ; $523d: $80
    nop                                           ; $523e: $00
    ld b, [hl]                                    ; $523f: $46
    add b                                         ; $5240: $80
    ld l, l                                       ; $5241: $6d
    add b                                         ; $5242: $80
    ld h, [hl]                                    ; $5243: $66
    add b                                         ; $5244: $80
    ld c, l                                       ; $5245: $4d
    add b                                         ; $5246: $80
    nop                                           ; $5247: $00
    ld h, h                                       ; $5248: $64
    add b                                         ; $5249: $80
    ld b, l                                       ; $524a: $45
    ld d, l                                       ; $524b: $55
    ld b, [hl]                                    ; $524c: $46
    ld d, [hl]                                    ; $524d: $56
    ld b, h                                       ; $524e: $44
    ld d, h                                       ; $524f: $54
    ret nz                                        ; $5250: $c0

    ld [bc], a                                    ; $5251: $02
    jr jr_0c7_51f8                                ; $5252: $18 $a4

    ld [$477c], sp                                ; $5254: $08 $7c $47
    call nz, Call_0c7_44ff                        ; $5257: $c4 $ff $44
    ld a, a                                       ; $525a: $7f

jr_0c7_525b:
    jr nc, jr_0c7_52d9                            ; $525b: $30 $7c

    ld b, a                                       ; $525d: $47
    ld [bc], a                                    ; $525e: $02
    ld [$08a4], sp                                ; $525f: $08 $a4 $08
    ld a, [c]                                     ; $5262: $f2
    di                                            ; $5263: $f3
    ld a, [c]                                     ; $5264: $f2
    di                                            ; $5265: $f3
    jr c, jr_0c7_525b                             ; $5266: $38 $f3

    cp $05                                        ; $5268: $fe $05
    nop                                           ; $526a: $00
    add hl, bc                                    ; $526b: $09
    nop                                           ; $526c: $00
    or h                                          ; $526d: $b4
    ld [$c979], sp                                ; $526e: $08 $79 $c9
    ld c, c                                       ; $5271: $49
    ld b, $e9                                     ; $5272: $06 $e9
    ret                                           ; $5274: $c9


    ld e, a                                       ; $5275: $5f
    ld sp, hl                                     ; $5276: $f9
    ld c, a                                       ; $5277: $4f
    ld [bc], a                                    ; $5278: $02
    ld [$08c4], sp                                ; $5279: $08 $c4 $08
    rla                                           ; $527c: $17
    ld bc, $f7f7                                  ; $527d: $01 $f7 $f7
    rla                                           ; $5280: $17
    pop af                                        ; $5281: $f1
    rra                                           ; $5282: $1f
    ld de, $02ff                                  ; $5283: $11 $ff $02
    ld [$d4c0], sp                                ; $5286: $08 $c0 $d4
    ld [$0960], sp                                ; $5289: $08 $60 $09
    add hl, de                                    ; $528c: $19
    nop                                           ; $528d: $00
    or l                                          ; $528e: $b5
    ld [$54ab], sp                                ; $528f: $08 $ab $54
    ld [bc], a                                    ; $5292: $02
    ld d, h                                       ; $5293: $54
    xor e                                         ; $5294: $ab
    adc b                                         ; $5295: $88
    ld [hl], a                                    ; $5296: $77
    dec h                                         ; $5297: $25
    rst $38                                       ; $5298: $ff
    ld h, b                                       ; $5299: $60
    add hl, bc                                    ; $529a: $09
    add a                                         ; $529b: $87
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00

jr_0c7_529e:
    ld l, l                                       ; $529e: $6d
    add b                                         ; $529f: $80
    xor a                                         ; $52a0: $af
    ld d, b                                       ; $52a1: $50
    ld d, h                                       ; $52a2: $54
    xor e                                         ; $52a3: $ab
    adc d                                         ; $52a4: $8a
    jr z, jr_0c7_529e                             ; $52a5: $28 $f7

    push de                                       ; $52a7: $d5
    jr nz, jr_0c7_52ba                            ; $52a8: $20 $10

    dec bc                                        ; $52aa: $0b
    halt                                          ; $52ab: $76
    ld bc, $aa55                                  ; $52ac: $01 $55 $aa
    xor b                                         ; $52af: $a8
    ld [$4557], sp                                ; $52b0: $08 $57 $45
    cp a                                          ; $52b3: $bf
    ld [hl-], a                                   ; $52b4: $32
    jr nc, jr_0c7_52c7                            ; $52b5: $30 $10

    ld a, d                                       ; $52b7: $7a
    nop                                           ; $52b8: $00
    rst $28                                       ; $52b9: $ef

jr_0c7_52ba:
    nop                                           ; $52ba: $00
    db $10                                        ; $52bb: $10
    ld b, l                                       ; $52bc: $45
    cp d                                          ; $52bd: $ba
    xor d                                         ; $52be: $aa
    ld e, l                                       ; $52bf: $5d
    inc c                                         ; $52c0: $0c
    rst $38                                       ; $52c1: $ff
    cp a                                          ; $52c2: $bf
    nop                                           ; $52c3: $00
    rst $38                                       ; $52c4: $ff
    ld l, a                                       ; $52c5: $6f
    nop                                           ; $52c6: $00

jr_0c7_52c7:
    ei                                            ; $52c7: $fb
    nop                                           ; $52c8: $00
    or $00                                        ; $52c9: $f6 $00
    cp a                                          ; $52cb: $bf
    nop                                           ; $52cc: $00
    ld b, b                                       ; $52cd: $40
    dec d                                         ; $52ce: $15
    ld [$d7a8], a                                 ; $52cf: $ea $a8 $d7
    add l                                         ; $52d2: $85
    rst $38                                       ; $52d3: $ff
    ld [$ff60], a                                 ; $52d4: $ea $60 $ff
    ld h, $01                                     ; $52d7: $26 $01

jr_0c7_52d9:
    ld b, b                                       ; $52d9: $40
    nop                                           ; $52da: $00
    ld e, l                                       ; $52db: $5d
    nop                                           ; $52dc: $00
    ld d, a                                       ; $52dd: $57
    xor b                                         ; $52de: $a8
    xor c                                         ; $52df: $a9
    ld [$1256], sp                                ; $52e0: $08 $56 $12
    rst $28                                       ; $52e3: $ef
    ld h, l                                       ; $52e4: $65
    db $10                                        ; $52e5: $10
    db $10                                        ; $52e6: $10
    jr nc, jr_0c7_52e9                            ; $52e7: $30 $00

jr_0c7_52e9:
    xor l                                         ; $52e9: $ad
    nop                                           ; $52ea: $00
    db $10                                        ; $52eb: $10
    ld [hl], l                                    ; $52ec: $75
    adc d                                         ; $52ed: $8a
    adc d                                         ; $52ee: $8a
    ld [hl], l                                    ; $52ef: $75
    ld de, $bafe                                  ; $52f0: $11 $fe $ba
    ld bc, $47ff                                  ; $52f3: $01 $ff $47
    ld d, a                                       ; $52f6: $57
    ld b, a                                       ; $52f7: $47

jr_0c7_52f8:
    ld d, h                                       ; $52f8: $54
    ld b, h                                       ; $52f9: $44
    ld d, l                                       ; $52fa: $55
    jp nz, Jump_0c7_4000                          ; $52fb: $c2 $00 $40

    ld d, l                                       ; $52fe: $55
    ld l, d                                       ; $52ff: $6a
    add hl, de                                    ; $5300: $19
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    db $fc                                        ; $5303: $fc
    ccf                                           ; $5304: $3f
    inc h                                         ; $5305: $24
    and a                                         ; $5306: $a7
    ld [bc], a                                    ; $5307: $02
    inc h                                         ; $5308: $24
    ld h, $3c                                     ; $5309: $26 $3c
    cp [hl]                                       ; $530b: $be
    db $fc                                        ; $530c: $fc
    ccf                                           ; $530d: $3f
    scf                                           ; $530e: $37
    ld bc, $8727                                  ; $530f: $01 $27 $87
    ret nz                                        ; $5312: $c0

    ld de, $9fff                                  ; $5313: $11 $ff $9f
    rst $38                                       ; $5316: $ff
    sbc a                                         ; $5317: $9f
    ld bc, $0808                                  ; $5318: $01 $08 $08
    nop                                           ; $531b: $00
    ret nc                                        ; $531c: $d0

    ld bc, $3f00                                  ; $531d: $01 $00 $3f
    pop hl                                        ; $5320: $e1
    ld hl, $a121                                  ; $5321: $21 $21 $a1
    ccf                                           ; $5324: $3f
    ld a, a                                       ; $5325: $7f
    pop hl                                        ; $5326: $e1
    ld b, b                                       ; $5327: $40
    ld hl, $0802                                  ; $5328: $21 $02 $08
    rst $38                                       ; $532b: $ff
    rst $38                                       ; $532c: $ff
    rra                                           ; $532d: $1f
    rst $38                                       ; $532e: $ff
    rra                                           ; $532f: $1f
    pop af                                        ; $5330: $f1
    ld [bc], a                                    ; $5331: $02
    ld de, $115b                                  ; $5332: $11 $5b $11
    or l                                          ; $5335: $b5
    rra                                           ; $5336: $1f
    pop af                                        ; $5337: $f1
    ld [bc], a                                    ; $5338: $02
    ld [$0075], sp                                ; $5339: $08 $75 $00
    nop                                           ; $533c: $00
    ld h, h                                       ; $533d: $64
    nop                                           ; $533e: $00
    db $eb                                        ; $533f: $eb
    nop                                           ; $5340: $00
    inc d                                         ; $5341: $14
    db $eb                                        ; $5342: $eb
    ld c, c                                       ; $5343: $49
    nop                                           ; $5344: $00
    ld [hl], $df                                  ; $5345: $36 $df
    jr nz, jr_0c7_52f8                            ; $5347: $20 $af

    ld b, b                                       ; $5349: $40
    cp b                                          ; $534a: $b8
    ld b, d                                       ; $534b: $42
    ld b, b                                       ; $534c: $40
    nop                                           ; $534d: $00
    ld a, [hl-]                                   ; $534e: $3a
    jp z, $8075                                   ; $534f: $ca $75 $80

    ld a, a                                       ; $5352: $7f
    rst $38                                       ; $5353: $ff
    ld a, a                                       ; $5354: $7f
    ld c, d                                       ; $5355: $4a
    nop                                           ; $5356: $00
    or l                                          ; $5357: $b5
    cp d                                          ; $5358: $ba
    ld bc, $53ac                                  ; $5359: $01 $ac $53
    db $dd                                        ; $535c: $dd
    inc bc                                        ; $535d: $03
    add b                                         ; $535e: $80
    ld [bc], a                                    ; $535f: $02
    ld [hl], a                                    ; $5360: $77
    inc de                                        ; $5361: $13
    xor $01                                       ; $5362: $ee $01
    cp $fe                                        ; $5364: $fe $fe
    sbc b                                         ; $5366: $98
    nop                                           ; $5367: $00
    sub h                                         ; $5368: $94
    ld [bc], a                                    ; $5369: $02
    db $eb                                        ; $536a: $eb
    dec l                                         ; $536b: $2d
    ret nz                                        ; $536c: $c0

    nop                                           ; $536d: $00
    rst $38                                       ; $536e: $ff
    db $dd                                        ; $536f: $dd
    ld b, h                                       ; $5370: $44
    ld [bc], a                                    ; $5371: $02
    ld c, d                                       ; $5372: $4a
    nop                                           ; $5373: $00
    or l                                          ; $5374: $b5
    or l                                          ; $5375: $b5
    rst $38                                       ; $5376: $ff
    dec b                                         ; $5377: $05
    ld hl, sp+$4c                                 ; $5378: $f8 $4c
    cp b                                          ; $537a: $b8
    ld b, d                                       ; $537b: $42
    nop                                           ; $537c: $00
    jr c, jr_0c7_5388                             ; $537d: $38 $09

    ld hl, sp-$30                                 ; $537f: $f8 $d0
    dec c                                         ; $5381: $0d
    and [hl]                                      ; $5382: $a6
    jr jr_0c7_53ca                                ; $5383: $18 $45

    nop                                           ; $5385: $00
    cp d                                          ; $5386: $ba
    or a                                          ; $5387: $b7

jr_0c7_5388:
    ld hl, sp-$4b                                 ; $5388: $f8 $b5
    ld a, [bc]                                    ; $538a: $0a
    rst $10                                       ; $538b: $d7
    ld [$002f], sp                                ; $538c: $08 $2f $00
    db $10                                        ; $538f: $10
    ld l, [hl]                                    ; $5390: $6e
    db $10                                        ; $5391: $10
    add c                                         ; $5392: $81
    ld a, [hl+]                                   ; $5393: $2a
    adc $10                                       ; $5394: $ce $10
    inc hl                                        ; $5396: $23
    nop                                           ; $5397: $00
    ld d, h                                       ; $5398: $54
    ld [hl], e                                    ; $5399: $73
    nop                                           ; $539a: $00
    ld a, [hl]                                    ; $539b: $7e
    nop                                           ; $539c: $00
    add d                                         ; $539d: $82
    ld d, h                                       ; $539e: $54
    rst $08                                       ; $539f: $cf
    ld [bc], a                                    ; $53a0: $02
    db $10                                        ; $53a1: $10
    ld l, l                                       ; $53a2: $6d
    sub b                                         ; $53a3: $90
    xor d                                         ; $53a4: $aa
    ld b, b                                       ; $53a5: $40
    ld b, c                                       ; $53a6: $41
    ld a, h                                       ; $53a7: $7c
    ld bc, $2052                                  ; $53a8: $01 $52 $20
    xor l                                         ; $53ab: $ad
    ld d, a                                       ; $53ac: $57
    ld a, [hl]                                    ; $53ad: $7e
    ld bc, $8051                                  ; $53ae: $01 $51 $80
    ld d, l                                       ; $53b1: $55
    add b                                         ; $53b2: $80
    and $20                                       ; $53b3: $e6 $20
    ld bc, $c6a3                                  ; $53b5: $01 $a3 $c6
    ld bc, $b54b                                  ; $53b8: $01 $4b $b5
    inc d                                         ; $53bb: $14
    db $eb                                        ; $53bc: $eb
    ld a, a                                       ; $53bd: $7f
    nop                                           ; $53be: $00
    add b                                         ; $53bf: $80
    halt                                          ; $53c0: $76
    add c                                         ; $53c1: $81
    ld l, e                                       ; $53c2: $6b
    add h                                         ; $53c3: $84
    ld b, l                                       ; $53c4: $45
    or d                                          ; $53c5: $b2
    add hl, hl                                    ; $53c6: $29
    ld b, b                                       ; $53c7: $40
    sub $1a                                       ; $53c8: $d6 $1a

jr_0c7_53ca:
    ld a, [bc]                                    ; $53ca: $0a
    xor b                                         ; $53cb: $a8
    ld d, a                                       ; $53cc: $57
    ld l, h                                       ; $53cd: $6c
    rlca                                          ; $53ce: $07
    sub c                                         ; $53cf: $91
    ld c, [hl]                                    ; $53d0: $4e
    nop                                           ; $53d1: $00
    ld h, h                                       ; $53d2: $64
    rrca                                          ; $53d3: $0f
    ld [bc], a                                    ; $53d4: $02
    cp h                                          ; $53d5: $bc
    ld d, a                                       ; $53d6: $57
    cp b                                          ; $53d7: $b8
    inc b                                         ; $53d8: $04
    ei                                            ; $53d9: $fb
    ld b, b                                       ; $53da: $40
    ei                                            ; $53db: $fb
    ld [$4801], sp                                ; $53dc: $08 $01 $48
    or a                                          ; $53df: $b7
    ld [hl], l                                    ; $53e0: $75
    add b                                         ; $53e1: $80
    nop                                           ; $53e2: $00
    rst $38                                       ; $53e3: $ff
    nop                                           ; $53e4: $00
    xor e                                         ; $53e5: $ab
    nop                                           ; $53e6: $00
    ld [$a500], a                                 ; $53e7: $ea $00 $a5
    ld e, d                                       ; $53ea: $5a
    ld e, d                                       ; $53eb: $5a
    rst $38                                       ; $53ec: $ff
    nop                                           ; $53ed: $00
    ld a, [de]                                    ; $53ee: $1a
    ldh [$b5], a                                  ; $53ef: $e0 $b5
    ld h, b                                       ; $53f1: $60
    inc d                                         ; $53f2: $14
    ldh [$35], a                                  ; $53f3: $e0 $35
    ldh [rP1], a                                  ; $53f5: $e0 $00

jr_0c7_53f7:
    sub h                                         ; $53f7: $94
    ld l, c                                       ; $53f8: $69

jr_0c7_53f9:
    cp e                                          ; $53f9: $bb
    ld b, b                                       ; $53fa: $40
    inc h                                         ; $53fb: $24
    ret                                           ; $53fc: $c9


    db $fd                                        ; $53fd: $fd
    ret nz                                        ; $53fe: $c0

Jump_0c7_53ff:
    nop                                           ; $53ff: $00
    or l                                          ; $5400: $b5
    ld c, b                                       ; $5401: $48
    ld l, $41                                     ; $5402: $2e $41

Jump_0c7_5404:
    ld e, l                                       ; $5404: $5d
    jr nz, jr_0c7_5461                            ; $5405: $20 $5a

    ld hl, $8500                                  ; $5407: $21 $00 $85
    ld d, d                                       ; $540a: $52
    cp l                                          ; $540b: $bd
    ld b, d                                       ; $540c: $42
    dec c                                         ; $540d: $0d
    ld d, d                                       ; $540e: $52
    ld c, l                                       ; $540f: $4d
    ld [bc], a                                    ; $5410: $02
    nop                                           ; $5411: $00
    db $fd                                        ; $5412: $fd
    ld [bc], a                                    ; $5413: $02
    adc l                                         ; $5414: $8d
    ld d, d                                       ; $5415: $52
    or l                                          ; $5416: $b5
    ld b, d                                       ; $5417: $42
    xor l                                         ; $5418: $ad
    ld b, d                                       ; $5419: $42
    db $10                                        ; $541a: $10
    ld d, [hl]                                    ; $541b: $56
    nop                                           ; $541c: $00
    ld b, $e4                                     ; $541d: $06 $e4
    ld [bc], a                                    ; $541f: $02

Jump_0c7_5420:
    jr z, jr_0c7_53f9                             ; $5420: $28 $d7

    ld l, l                                       ; $5422: $6d
    ld [bc], a                                    ; $5423: $02
    ld [bc], a                                    ; $5424: $02
    ld d, l                                       ; $5425: $55
    ld [bc], a                                    ; $5426: $02
    ld b, l                                       ; $5427: $45
    ld [bc], a                                    ; $5428: $02
    dec [hl]                                      ; $5429: $35
    ld [bc], a                                    ; $542a: $02
    adc b                                         ; $542b: $88
    ld a, [bc]                                    ; $542c: $0a
    ld b, b                                       ; $542d: $40
    nop                                           ; $542e: $00
    ld e, a                                       ; $542f: $5f
    ld l, d                                       ; $5430: $6a
    ld l, d                                       ; $5431: $6a
    ld b, b                                       ; $5432: $40
    ld a, a                                       ; $5433: $7f
    ld b, b                                       ; $5434: $40
    ld a, [hl]                                    ; $5435: $7e
    add e                                         ; $5436: $83
    db $10                                        ; $5437: $10
    cp e                                          ; $5438: $bb
    inc b                                         ; $5439: $04
    ld [hl], h                                    ; $543a: $74
    adc b                                         ; $543b: $88
    ld a, [bc]                                    ; $543c: $0a
    nop                                           ; $543d: $00
    rst $38                                       ; $543e: $ff
    xor d                                         ; $543f: $aa
    xor d                                         ; $5440: $aa
    ldh a, [rTMA]                                 ; $5441: $f0 $06
    nop                                           ; $5443: $00
    ld l, e                                       ; $5444: $6b
    add hl, bc                                    ; $5445: $09
    ld bc, $1008                                  ; $5446: $01 $08 $10
    jr z, jr_0c7_545a                             ; $5449: $28 $0f

    ld hl, sp-$05                                 ; $544b: $f8 $fb
    inc b                                         ; $544d: $04
    ld b, b                                       ; $544e: $40
    dec b                                         ; $544f: $05
    jr nz, @+$42                                  ; $5450: $20 $40

    ldh a, [$1f]                                  ; $5452: $f0 $1f
    rst $18                                       ; $5454: $df
    jr nz, jr_0c7_53f7                            ; $5455: $20 $a0

    and l                                         ; $5457: $a5
    nop                                           ; $5458: $00
    ld c, d                                       ; $5459: $4a

jr_0c7_545a:
    cp d                                          ; $545a: $ba
    ld b, b                                       ; $545b: $40
    and l                                         ; $545c: $a5
    ld c, d                                       ; $545d: $4a
    ld a, d                                       ; $545e: $7a
    add b                                         ; $545f: $80
    ld l, e                                       ; $5460: $6b

jr_0c7_5461:
    nop                                           ; $5461: $00
    sub b                                         ; $5462: $90
    db $dd                                        ; $5463: $dd
    add d                                         ; $5464: $82
    ld a, d                                       ; $5465: $7a
    add b                                         ; $5466: $80
    push af                                       ; $5467: $f5
    add d                                         ; $5468: $82
    inc c                                         ; $5469: $0c
    nop                                           ; $546a: $00
    ld d, e                                       ; $546b: $53
    cp l                                          ; $546c: $bd
    ld b, e                                       ; $546d: $43
    inc c                                         ; $546e: $0c
    ld d, e                                       ; $546f: $53
    sbc d                                         ; $5470: $9a
    rlca                                          ; $5471: $07
    ld hl, sp+$00                                 ; $5472: $f8 $00
    rlca                                          ; $5474: $07
    ld a, [de]                                    ; $5475: $1a
    and a                                         ; $5476: $a7
    ld l, c                                       ; $5477: $69
    add [hl]                                      ; $5478: $86
    ld e, d                                       ; $5479: $5a
    add a                                         ; $547a: $87
    call nc, $2900                                ; $547b: $d4 $00 $29
    ld [bc], a                                    ; $547e: $02
    db $fd                                        ; $547f: $fd
    pop de                                        ; $5480: $d1
    jr nz, @-$7e                                  ; $5481: $20 $80

    ld a, a                                       ; $5483: $7f
    ld l, c                                       ; $5484: $69
    nop                                           ; $5485: $00
    add [hl]                                      ; $5486: $86
    sub h                                         ; $5487: $94
    ld l, e                                       ; $5488: $6b
    ld h, d                                       ; $5489: $62
    sbc h                                         ; $548a: $9c
    ld a, [bc]                                    ; $548b: $0a
    pop af                                        ; $548c: $f1
    ld h, d                                       ; $548d: $62
    nop                                           ; $548e: $00
    sbc b                                         ; $548f: $98
    add hl, bc                                    ; $5490: $09
    ld hl, sp-$5e                                 ; $5491: $f8 $a2
    jr jr_0c7_54a9                                ; $5493: $18 $14

    ei                                            ; $5495: $fb
    ld b, c                                       ; $5496: $41
    nop                                           ; $5497: $00
    cp [hl]                                       ; $5498: $be

jr_0c7_5499:
    rla                                           ; $5499: $17
    ld hl, sp-$79                                 ; $549a: $f8 $87
    ld a, b                                       ; $549c: $78
    ld d, h                                       ; $549d: $54
    cp e                                          ; $549e: $bb
    ld l, e                                       ; $549f: $6b
    nop                                           ; $54a0: $00
    db $10                                        ; $54a1: $10
    ld a, [hl+]                                   ; $54a2: $2a
    db $10                                        ; $54a3: $10
    xor d                                         ; $54a4: $aa
    dec d                                         ; $54a5: $15
    cp d                                          ; $54a6: $ba
    ld e, a                                       ; $54a7: $5f
    ld d, d                                       ; $54a8: $52

jr_0c7_54a9:
    nop                                           ; $54a9: $00
    xor l                                         ; $54aa: $ad
    rst $38                                       ; $54ab: $ff
    nop                                           ; $54ac: $00
    ld e, [hl]                                    ; $54ad: $5e
    nop                                           ; $54ae: $00
    sub e                                         ; $54af: $93
    ld l, h                                       ; $54b0: $6c
    or a                                          ; $54b1: $b7
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    cp a                                          ; $54b4: $bf
    nop                                           ; $54b5: $00
    ld d, d                                       ; $54b6: $52
    xor l                                         ; $54b7: $ad
    or l                                          ; $54b8: $b5
    rst $38                                       ; $54b9: $ff
    or l                                          ; $54ba: $b5
    ld a, [bc]                                    ; $54bb: $0a
    ld b, b                                       ; $54bc: $40
    xor d                                         ; $54bd: $aa
    ld b, b                                       ; $54be: $40
    or b                                          ; $54bf: $b0
    inc b                                         ; $54c0: $04
    nop                                           ; $54c1: $00
    ld d, l                                       ; $54c2: $55
    ld d, $01                                     ; $54c3: $16 $01
    ld e, e                                       ; $54c5: $5b
    nop                                           ; $54c6: $00
    add b                                         ; $54c7: $80
    call nc, $00ab                                ; $54c8: $d4 $ab $00
    rst $38                                       ; $54cb: $ff
    xor c                                         ; $54cc: $a9
    rst $10                                       ; $54cd: $d7
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    rst $30                                       ; $54d0: $f7
    adc c                                         ; $54d1: $89
    rst $30                                       ; $54d2: $f7
    ld d, d                                       ; $54d3: $52
    and l                                         ; $54d4: $a5
    ld l, [hl]                                    ; $54d5: $6e
    add c                                         ; $54d6: $81
    ld d, d                                       ; $54d7: $52
    nop                                           ; $54d8: $00
    and l                                         ; $54d9: $a5
    push af                                       ; $54da: $f5
    nop                                           ; $54db: $00
    rst $10                                       ; $54dc: $d7
    jr nz, jr_0c7_5499                            ; $54dd: $20 $ba

    dec b                                         ; $54df: $05
    db $f4                                        ; $54e0: $f4
    nop                                           ; $54e1: $00
    ld bc, $05ea                                  ; $54e2: $01 $ea $05
    ld [de], a                                    ; $54e5: $12
    ld c, h                                       ; $54e6: $4c
    db $e4                                        ; $54e7: $e4
    rrca                                          ; $54e8: $0f
    ld [hl-], a                                   ; $54e9: $32

jr_0c7_54ea:
    nop                                           ; $54ea: $00
    ld c, h                                       ; $54eb: $4c
    dec [hl]                                      ; $54ec: $35
    ld c, $f0                                     ; $54ed: $0e $f0
    rrca                                          ; $54ef: $0f
    dec [hl]                                      ; $54f0: $35
    ld c, [hl]                                    ; $54f1: $4e
    jp nc, $0d00                                  ; $54f2: $d2 $00 $0d

    or h                                          ; $54f5: $b4
    rrca                                          ; $54f6: $0f
    sub h                                         ; $54f7: $94
    ld h, e                                       ; $54f8: $63
    ld a, [bc]                                    ; $54f9: $0a
    push af                                       ; $54fa: $f5
    add l                                         ; $54fb: $85
    nop                                           ; $54fc: $00
    ld b, b                                       ; $54fd: $40
    nop                                           ; $54fe: $00
    rst $38                                       ; $54ff: $ff

Jump_0c7_5500:
    db $d2, $0d, $28                              ; $5500: $d2 $0d $28

    rst $10                                       ; $5503: $d7
    push bc                                       ; $5504: $c5
    nop                                           ; $5505: $00
    jr c, jr_0c7_551c                             ; $5506: $38 $14

    db $e3                                        ; $5508: $e3
    sub l                                         ; $5509: $95
    ld h, b                                       ; $550a: $60
    inc [hl]                                      ; $550b: $34
    ldh [$96], a                                  ; $550c: $e0 $96
    nop                                           ; $550e: $00
    ld h, b                                       ; $550f: $60
    add hl, hl                                    ; $5510: $29
    or $82                                        ; $5511: $f6 $82
    ld a, l                                       ; $5513: $7d
    cpl                                           ; $5514: $2f
    ldh a, [$0e]                                  ; $5515: $f0 $0e
    nop                                           ; $5517: $00
    ldh a, [$a9]                                  ; $5518: $f0 $a9
    halt                                          ; $551a: $76
    ld c, l                                       ; $551b: $4d

jr_0c7_551c:
    jr nz, jr_0c7_5569                            ; $551c: $20 $4b

    jr nz, jr_0c7_54ea                            ; $551e: $20 $ca

    nop                                           ; $5520: $00
    dec [hl]                                      ; $5521: $35
    ld [hl], l                                    ; $5522: $75
    cp a                                          ; $5523: $bf
    and l                                         ; $5524: $a5
    ld e, d                                       ; $5525: $5a
    rst $38                                       ; $5526: $ff
    nop                                           ; $5527: $00
    cp l                                          ; $5528: $bd
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    daa                                           ; $552b: $27
    ret c                                         ; $552c: $d8

    push de                                       ; $552d: $d5
    ld [bc], a                                    ; $552e: $02
    push af                                       ; $552f: $f5
    ld [bc], a                                    ; $5530: $02

jr_0c7_5531:
    ld d, c                                       ; $5531: $51
    nop                                           ; $5532: $00
    xor [hl]                                      ; $5533: $ae
    ld l, e                                       ; $5534: $6b
    rst $38                                       ; $5535: $ff
    ld l, d                                       ; $5536: $6a
    add c                                         ; $5537: $81
    ld d, l                                       ; $5538: $55
    add c                                         ; $5539: $81
    ld h, b                                       ; $553a: $60
    add b                                         ; $553b: $80
    inc b                                         ; $553c: $04
    nop                                           ; $553d: $00
    ld d, l                                       ; $553e: $55
    ld [bc], a                                    ; $553f: $02
    dec h                                         ; $5540: $25
    ld [bc], a                                    ; $5541: $02
    ld e, l                                       ; $5542: $5d
    ld [bc], a                                    ; $5543: $02
    xor c                                         ; $5544: $a9
    nop                                           ; $5545: $00
    ld d, [hl]                                    ; $5546: $56
    ld bc, $53fe                                  ; $5547: $01 $fe $53
    xor [hl]                                      ; $554a: $ae
    ld bc, $13ee                                  ; $554b: $01 $ee $13
    nop                                           ; $554e: $00
    xor $b7                                       ; $554f: $ee $b7
    nop                                           ; $5551: $00
    xor a                                         ; $5552: $af
    nop                                           ; $5553: $00
    xor c                                         ; $5554: $a9
    ld d, [hl]                                    ; $5555: $56
    ld d, [hl]                                    ; $5556: $56
    ld [bc], a                                    ; $5557: $02
    rst $38                                       ; $5558: $ff
    ld d, h                                       ; $5559: $54
    inc bc                                        ; $555a: $03

jr_0c7_555b:
    ld d, a                                       ; $555b: $57
    ld [bc], a                                    ; $555c: $02
    add h                                         ; $555d: $84
    inc b                                         ; $555e: $04
    nop                                           ; $555f: $00
    ld d, d                                       ; $5560: $52
    ld [bc], a                                    ; $5561: $02
    inc c                                         ; $5562: $0c
    call nc, Call_0c7_500f                        ; $5563: $d4 $0f $50
    xor a                                         ; $5566: $af
    xor a                                         ; $5567: $af
    adc b                                         ; $5568: $88

jr_0c7_5569:
    ld [bc], a                                    ; $5569: $02
    ld d, d                                       ; $556a: $52
    nop                                           ; $556b: $00
    inc c                                         ; $556c: $0c
    nop                                           ; $556d: $00
    rst $38                                       ; $556e: $ff
    ld d, b                                       ; $556f: $50
    and a                                         ; $5570: $a7
    add b                                         ; $5571: $80
    ld a, a                                       ; $5572: $7f
    and l                                         ; $5573: $a5
    ld b, b                                       ; $5574: $40
    jr jr_0c7_5531                                ; $5575: $18 $ba

    dec bc                                        ; $5577: $0b
    ld [bc], a                                    ; $5578: $02
    db $fd                                        ; $5579: $fd
    sub a                                         ; $557a: $97
    ld a, b                                       ; $557b: $78
    and l                                         ; $557c: $a5
    jr jr_0c7_557f                                ; $557d: $18 $00

jr_0c7_557f:
    ld de, $0efe                                  ; $557f: $11 $fe $0e
    ldh a, [$6d]                                  ; $5582: $f0 $6d
    jr nc, jr_0c7_5594                            ; $5584: $30 $0e

    pop af                                        ; $5586: $f1
    nop                                           ; $5587: $00
    xor $f0                                       ; $5588: $ee $f0
    adc e                                         ; $558a: $8b
    ld [hl], b                                    ; $558b: $70
    rst $08                                       ; $558c: $cf
    jr nc, jr_0c7_555b                            ; $558d: $30 $cc

    jr nc, jr_0c7_5591                            ; $558f: $30 $00

jr_0c7_5591:
    ld b, l                                       ; $5591: $45
    cp d                                          ; $5592: $ba
    db $fd                                        ; $5593: $fd

jr_0c7_5594:
    nop                                           ; $5594: $00
    adc e                                         ; $5595: $8b
    nop                                           ; $5596: $00
    dec sp                                        ; $5597: $3b
    call nz, $f700                                ; $5598: $c4 $00 $f7
    nop                                           ; $559b: $00
    sbc e                                         ; $559c: $9b
    nop                                           ; $559d: $00
    call $9d32                                    ; $559e: $cd $32 $9d
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    ld c, e                                       ; $55a3: $4b
    sub b                                         ; $55a4: $90
    ld d, e                                       ; $55a5: $53
    add b                                         ; $55a6: $80
    ld c, c                                       ; $55a7: $49
    add b                                         ; $55a8: $80
    ld d, a                                       ; $55a9: $57
    add b                                         ; $55aa: $80
    nop                                           ; $55ab: $00
    add hl, hl                                    ; $55ac: $29
    sub $14                                       ; $55ad: $d6 $14
    db $eb                                        ; $55af: $eb
    ld a, $c1                                     ; $55b0: $3e $c1
    ld [hl], $c1                                  ; $55b2: $36 $c1
    nop                                           ; $55b4: $00
    ld a, [hl+]                                   ; $55b5: $2a
    push de                                       ; $55b6: $d5
    jr z, @-$27                                   ; $55b7: $28 $d7

    add d                                         ; $55b9: $82
    rst $38                                       ; $55ba: $ff
    ld [$04f7], sp                                ; $55bb: $08 $f7 $04
    and e                                         ; $55be: $a3
    rst $18                                       ; $55bf: $df
    ld bc, $93de                                  ; $55c0: $01 $de $93
    ld c, b                                       ; $55c3: $48
    ld [bc], a                                    ; $55c4: $02
    sub e                                         ; $55c5: $93
    xor $60                                       ; $55c6: $ee $60
    cp e                                          ; $55c8: $bb

jr_0c7_55c9:
    add h                                         ; $55c9: $84
    inc b                                         ; $55ca: $04
    ret nc                                        ; $55cb: $d0

    add hl, bc                                    ; $55cc: $09
    ld e, h                                       ; $55cd: $5c
    inc bc                                        ; $55ce: $03
    ld d, [hl]                                    ; $55cf: $56
    inc bc                                        ; $55d0: $03
    ld b, h                                       ; $55d1: $44
    add b                                         ; $55d2: $80
    inc b                                         ; $55d3: $04
    nop                                           ; $55d4: $00
    ld [hl], d                                    ; $55d5: $72
    inc c                                         ; $55d6: $0c
    db $f4                                        ; $55d7: $f4
    rrca                                          ; $55d8: $0f
    ld b, b                                       ; $55d9: $40
    cp a                                          ; $55da: $bf
    cp a                                          ; $55db: $bf
    add b                                         ; $55dc: $80
    ld hl, sp+$02                                 ; $55dd: $f8 $02
    push de                                       ; $55df: $d5
    ld a, [bc]                                    ; $55e0: $0a
    ld [bc], a                                    ; $55e1: $02
    db $fd                                        ; $55e2: $fd
    ld d, h                                       ; $55e3: $54
    and e                                         ; $55e4: $a3
    jr nz, jr_0c7_55f7                            ; $55e5: $20 $10

    rst $18                                       ; $55e7: $df
    push de                                       ; $55e8: $d5
    jr z, jr_0c7_565b                             ; $55e9: $28 $70

    jr z, jr_0c7_5614                             ; $55eb: $28 $27

    sbc b                                         ; $55ed: $98
    inc d                                         ; $55ee: $14
    ei                                            ; $55ef: $fb
    nop                                           ; $55f0: $00
    rrca                                          ; $55f1: $0f
    ldh a, [$ae]                                  ; $55f2: $f0 $ae
    ld [hl], b                                    ; $55f4: $70
    dec c                                         ; $55f5: $0d
    ld a, [c]                                     ; $55f6: $f2

jr_0c7_55f7:
    rst $28                                       ; $55f7: $ef
    ldh a, [rP1]                                  ; $55f8: $f0 $00
    ld c, d                                       ; $55fa: $4a
    or b                                          ; $55fb: $b0
    rst $08                                       ; $55fc: $cf
    jr nc, jr_0c7_55c9                            ; $55fd: $30 $ca

    jr nc, jr_0c7_564a                            ; $55ff: $30 $49

    or [hl]                                       ; $5601: $b6
    nop                                           ; $5602: $00

jr_0c7_5603:
    ld a, e                                       ; $5603: $7b
    nop                                           ; $5604: $00
    adc l                                         ; $5605: $8d
    nop                                           ; $5606: $00
    scf                                           ; $5607: $37
    ret z                                         ; $5608: $c8

    ld a, l                                       ; $5609: $7d
    nop                                           ; $560a: $00
    nop                                           ; $560b: $00
    sbc a                                         ; $560c: $9f
    nop                                           ; $560d: $00
    push de                                       ; $560e: $d5
    ld a, [hl+]                                   ; $560f: $2a
    sub a                                         ; $5610: $97
    nop                                           ; $5611: $00
    ld d, a                                       ; $5612: $57
    adc b                                         ; $5613: $88

jr_0c7_5614:
    add b                                         ; $5614: $80
    ld b, b                                       ; $5615: $40
    add hl, de                                    ; $5616: $19
    dec h                                         ; $5617: $25
    jp c, $f50a                                   ; $5618: $da $0a $f5

    ld a, $c1                                     ; $561b: $3e $c1
    ld a, $00                                     ; $561d: $3e $00
    pop bc                                        ; $561f: $c1
    ld [hl-], a                                   ; $5620: $32
    call $e708                                    ; $5621: $cd $08 $e7
    sub d                                         ; $5624: $92
    rst $28                                       ; $5625: $ef
    ld [$e700], sp                                ; $5626: $08 $00 $e7
    add e                                         ; $5629: $83
    rst $28                                       ; $562a: $ef
    ld bc, $a3ee                                  ; $562b: $01 $ee $a3
    sbc $01                                       ; $562e: $de $01
    nop                                           ; $5630: $00
    sbc $a3                                       ; $5631: $de $a3
    sbc $94                                       ; $5633: $de $94
    inc bc                                        ; $5635: $03
    ld b, [hl]                                    ; $5636: $46
    inc bc                                        ; $5637: $03
    ld e, b                                       ; $5638: $58
    nop                                           ; $5639: $00
    rlca                                          ; $563a: $07
    xor h                                         ; $563b: $ac
    ld d, a                                       ; $563c: $57
    ld d, b                                       ; $563d: $50
    xor [hl]                                      ; $563e: $ae
    db $f4                                        ; $563f: $f4
    rrca                                          ; $5640: $0f
    or c                                          ; $5641: $b1
    nop                                           ; $5642: $00
    ld c, $a8                                     ; $5643: $0e $a8
    ld e, a                                       ; $5645: $5f
    sub d                                         ; $5646: $92
    inc c                                         ; $5647: $0c
    ld c, c                                       ; $5648: $49
    or [hl]                                       ; $5649: $b6

jr_0c7_564a:
    ld c, e                                       ; $564a: $4b
    nop                                           ; $564b: $00
    or b                                          ; $564c: $b0
    nop                                           ; $564d: $00
    rst $38                                       ; $564e: $ff
    and c                                         ; $564f: $a1
    ld [bc], a                                    ; $5650: $02
    ld d, b                                       ; $5651: $50
    xor a                                         ; $5652: $af
    add hl, hl                                    ; $5653: $29
    nop                                           ; $5654: $00
    add $00                                       ; $5655: $c6 $00
    rst $38                                       ; $5657: $ff
    and e                                         ; $5658: $a3
    ld e, b                                       ; $5659: $58
    ld d, h                                       ; $565a: $54

jr_0c7_565b:
    cp b                                          ; $565b: $b8
    add hl, bc                                    ; $565c: $09
    nop                                           ; $565d: $00
    or $ab                                        ; $565e: $f6 $ab
    ld [hl], b                                    ; $5660: $70
    ld c, l                                       ; $5661: $4d
    jr nc, jr_0c7_5691                            ; $5662: $30 $2d

    ld a, [c]                                     ; $5664: $f2
    ld c, l                                       ; $5665: $4d
    nop                                           ; $5666: $00
    jr nc, @+$57                                  ; $5667: $30 $55

    add sp, -$36                                  ; $5669: $e8 $ca
    jr nc, @+$4f                                  ; $566b: $30 $4d

    jr nc, jr_0c7_5603                            ; $566d: $30 $94

    nop                                           ; $566f: $00
    ld l, e                                       ; $5670: $6b
    xor e                                         ; $5671: $ab
    ld a, a                                       ; $5672: $7f
    xor e                                         ; $5673: $ab
    ld b, b                                       ; $5674: $40
    and h                                         ; $5675: $a4
    ld b, b                                       ; $5676: $40
    xor [hl]                                      ; $5677: $ae
    nop                                           ; $5678: $00
    ld b, b                                       ; $5679: $40
    ld c, b                                       ; $567a: $48
    add b                                         ; $567b: $80
    push af                                       ; $567c: $f5
    nop                                           ; $567d: $00
    ld l, e                                       ; $567e: $6b
    nop                                           ; $567f: $00
    xor b                                         ; $5680: $a8
    nop                                           ; $5681: $00
    ld d, a                                       ; $5682: $57
    ld d, a                                       ; $5683: $57
    rst $38                                       ; $5684: $ff
    add b                                         ; $5685: $80
    ld a, a                                       ; $5686: $7f
    push de                                       ; $5687: $d5
    ld l, e                                       ; $5688: $6b
    add b                                         ; $5689: $80
    nop                                           ; $568a: $00
    ld a, a                                       ; $568b: $7f
    jp hl                                         ; $568c: $e9


    ld b, a                                       ; $568d: $47
    ld a, $c1                                     ; $568e: $3e $c1
    ld a, [hl+]                                   ; $5690: $2a

jr_0c7_5691:
    pop bc                                        ; $5691: $c1
    ld a, b                                       ; $5692: $78
    nop                                           ; $5693: $00
    add a                                         ; $5694: $87
    ld [hl], l                                    ; $5695: $75
    add e                                         ; $5696: $83
    ld e, b                                       ; $5697: $58
    add e                                         ; $5698: $83
    ld d, h                                       ; $5699: $54
    xor e                                         ; $569a: $ab
    ld d, h                                       ; $569b: $54
    inc b                                         ; $569c: $04
    add e                                         ; $569d: $83
    ld c, h                                       ; $569e: $4c
    sub e                                         ; $569f: $93
    ld bc, $d8ee                                  ; $56a0: $01 $ee $d8
    ld [$fffe], sp                                ; $56a3: $08 $fe $ff
    nop                                           ; $56a6: $00
    ld d, h                                       ; $56a7: $54
    xor e                                         ; $56a8: $ab
    rst $38                                       ; $56a9: $ff
    nop                                           ; $56aa: $00
    or a                                          ; $56ab: $b7
    nop                                           ; $56ac: $00
    db $e4                                        ; $56ad: $e4
    dec de                                        ; $56ae: $1b
    ld b, b                                       ; $56af: $40

jr_0c7_56b0:
    ld d, h                                       ; $56b0: $54
    ld [hl], b                                    ; $56b1: $70
    nop                                           ; $56b2: $00
    xor h                                         ; $56b3: $ac
    inc bc                                        ; $56b4: $03

jr_0c7_56b5:
    ld d, [hl]                                    ; $56b5: $56
    xor e                                         ; $56b6: $ab
    xor b                                         ; $56b7: $a8
    ld d, a                                       ; $56b8: $57
    jr nz, jr_0c7_56b5                            ; $56b9: $20 $fa

    rlca                                          ; $56bb: $07
    ld a, b                                       ; $56bc: $78
    ld [$8e11], sp                                ; $56bd: $08 $11 $8e
    ld c, d                                       ; $56c0: $4a
    or l                                          ; $56c1: $b5
    dec h                                         ; $56c2: $25
    ld b, b                                       ; $56c3: $40
    ret c                                         ; $56c4: $d8

    ld c, d                                       ; $56c5: $4a

jr_0c7_56c6:
    ld bc, $2801                                  ; $56c6: $01 $01 $28
    rst $10                                       ; $56c9: $d7
    sub h                                         ; $56ca: $94
    ld h, e                                       ; $56cb: $63
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    rst $38                                       ; $56ce: $ff
    and l                                         ; $56cf: $a5
    ld e, b                                       ; $56d0: $58
    ld d, [hl]                                    ; $56d1: $56
    cp b                                          ; $56d2: $b8
    add h                                         ; $56d3: $84
    ld a, e                                       ; $56d4: $7b
    ld d, l                                       ; $56d5: $55
    nop                                           ; $56d6: $00
    cp b                                          ; $56d7: $b8
    and [hl]                                      ; $56d8: $a6
    jr jr_0c7_56f1                                ; $56d9: $18 $16

    ld sp, hl                                     ; $56db: $f9
    and [hl]                                      ; $56dc: $a6
    jr jr_0c7_56f4                                ; $56dd: $18 $15

    nop                                           ; $56df: $00
    ld a, [$30ce]                                 ; $56e0: $fa $ce $30
    ld c, e                                       ; $56e3: $4b
    jr nc, jr_0c7_56b0                            ; $56e4: $30 $ca

    dec [hl]                                      ; $56e6: $35
    push de                                       ; $56e7: $d5
    ld [bc], a                                    ; $56e8: $02
    ccf                                           ; $56e9: $3f
    push de                                       ; $56ea: $d5
    jr nz, @-$2c                                  ; $56eb: $20 $d2

    jr nz, jr_0c7_56c6                            ; $56ed: $20 $d7

    inc b                                         ; $56ef: $04
    nop                                           ; $56f0: $00

jr_0c7_56f1:
    ei                                            ; $56f1: $fb
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00

jr_0c7_56f4:
    ld h, a                                       ; $56f4: $67
    nop                                           ; $56f5: $00
    ld d, h                                       ; $56f6: $54
    xor e                                         ; $56f7: $ab
    xor e                                         ; $56f8: $ab
    rst $38                                       ; $56f9: $ff
    ret nz                                        ; $56fa: $c0

    nop                                           ; $56fb: $00
    ccf                                           ; $56fc: $3f
    ld l, d                                       ; $56fd: $6a
    dec [hl]                                      ; $56fe: $35
    ld b, b                                       ; $56ff: $40
    ccf                                           ; $5700: $3f
    ld l, d                                       ; $5701: $6a
    ld sp, $003e                                  ; $5702: $31 $3e $00
    pop bc                                        ; $5705: $c1
    ld h, $c1                                     ; $5706: $26 $c1
    inc a                                         ; $5708: $3c
    jp $c1ba                                      ; $5709: $c3 $ba $c1


    inc l                                         ; $570c: $2c
    nop                                           ; $570d: $00
    pop bc                                        ; $570e: $c1
    xor d                                         ; $570f: $aa
    push de                                       ; $5710: $d5
    ld a, [hl+]                                   ; $5711: $2a
    pop bc                                        ; $5712: $c1
    ld l, e                                       ; $5713: $6b
    call nz, $1111                                ; $5714: $c4 $11 $11
    xor $83                                       ; $5717: $ee $83
    cp $4a                                        ; $5719: $fe $4a
    dec c                                         ; $571b: $0d
    ld a, [hl+]                                   ; $571c: $2a
    push de                                       ; $571d: $d5
    ld a, a                                       ; $571e: $7f
    jr c, jr_0c7_5723                             ; $571f: $38 $02

    nop                                           ; $5721: $00
    dec [hl]                                      ; $5722: $35

jr_0c7_5723:
    jp z, Jump_000_1ee0                           ; $5723: $ca $e0 $1e

    ld l, c                                       ; $5726: $69
    ld e, $e0                                     ; $5727: $1e $e0
    rra                                           ; $5729: $1f
    nop                                           ; $572a: $00
    rst $28                                       ; $572b: $ef
    rra                                           ; $572c: $1f
    ld b, h                                       ; $572d: $44
    dec sp                                        ; $572e: $3b
    rst $08                                       ; $572f: $cf
    jr nc, jr_0c7_5781                            ; $5730: $30 $4f

    jr nc, jr_0c7_5736                            ; $5732: $30 $02

    ld c, h                                       ; $5734: $4c
    or e                                          ; $5735: $b3

jr_0c7_5736:
    ld e, d                                       ; $5736: $5a
    ld bc, $d52a                                  ; $5737: $01 $2a $d5
    ld l, d                                       ; $573a: $6a
    dec c                                         ; $573b: $0d
    or l                                          ; $573c: $b5

Jump_0c7_573d:
    ld [$a240], sp                                ; $573d: $08 $40 $a2
    ld b, b                                       ; $5740: $40
    xor c                                         ; $5741: $a9
    inc b                                         ; $5742: $04
    nop                                           ; $5743: $00
    rra                                           ; $5744: $1f
    ldh [rRP], a                                  ; $5745: $e0 $56
    nop                                           ; $5747: $00
    ldh [$15], a                                  ; $5748: $e0 $15
    ld [$ffea], a                                 ; $574a: $ea $ea $ff
    dec d                                         ; $574d: $15
    ld l, d                                       ; $574e: $6a
    ccf                                           ; $574f: $3f
    nop                                           ; $5750: $00
    ld b, b                                       ; $5751: $40
    dec [hl]                                      ; $5752: $35
    ld b, b                                       ; $5753: $40
    ld a, [hl+]                                   ; $5754: $2a
    ld d, l                                       ; $5755: $55
    ld e, b                                       ; $5756: $58
    add b                                         ; $5757: $80
    ld c, d                                       ; $5758: $4a
    add b                                         ; $5759: $80
    add [hl]                                      ; $575a: $86
    inc bc                                        ; $575b: $03
    xor d                                         ; $575c: $aa
    push de                                       ; $575d: $d5
    ld d, d                                       ; $575e: $52
    xor l                                         ; $575f: $ad
    cp $01                                        ; $5760: $fe $01
    ld l, d                                       ; $5762: $6a
    nop                                           ; $5763: $00
    ld bc, $a956                                  ; $5764: $01 $56 $a9

jr_0c7_5767:
    and b                                         ; $5767: $a0
    ld e, a                                       ; $5768: $5f
    push de                                       ; $5769: $d5
    ld l, e                                       ; $576a: $6b
    adc b                                         ; $576b: $88
    nop                                           ; $576c: $00
    ld [hl], e                                    ; $576d: $73
    pop bc                                        ; $576e: $c1
    ld a, a                                       ; $576f: $7f
    ld hl, $93c2                                  ; $5770: $21 $c2 $93
    xor $29                                       ; $5773: $ee $29
    nop                                           ; $5775: $00
    add $83                                       ; $5776: $c6 $83
    cp $74                                        ; $5778: $fe $74
    add e                                         ; $577a: $83
    ld l, h                                       ; $577b: $6c
    add e                                         ; $577c: $83
    ld c, b                                       ; $577d: $48
    nop                                           ; $577e: $00
    or a                                          ; $577f: $b7
    or [hl]                                       ; $5780: $b6

jr_0c7_5781:
    rst $38                                       ; $5781: $ff
    xor d                                         ; $5782: $aa
    ld bc, $0112                                  ; $5783: $01 $12 $01
    ld c, d                                       ; $5786: $4a
    add b                                         ; $5787: $80
    inc b                                         ; $5788: $04
    nop                                           ; $5789: $00
    sbc $00                                       ; $578a: $de $00
    xor c                                         ; $578c: $a9
    nop                                           ; $578d: $00
    db $ec                                        ; $578e: $ec
    inc de                                        ; $578f: $13
    cp [hl]                                       ; $5790: $be
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    reti                                          ; $5793: $d9


    nop                                           ; $5794: $00
    ld l, e                                       ; $5795: $6b
    sub h                                         ; $5796: $94
    jp hl                                         ; $5797: $e9


    nop                                           ; $5798: $00
    xor d                                         ; $5799: $aa
    nop                                           ; $579a: $00
    ld de, $07b8                                  ; $579b: $11 $b8 $07
    ld e, l                                       ; $579e: $5d
    ld b, $b8                                     ; $579f: $06 $b8
    ld b, a                                       ; $57a1: $47
    cp a                                          ; $57a2: $bf
    nop                                           ; $57a3: $00
    rlca                                          ; $57a4: $07
    ld [hl], c                                    ; $57a5: $71
    ld c, $f3                                     ; $57a6: $0e $f3
    inc c                                         ; $57a8: $0c

jr_0c7_57a9:
    inc sp                                        ; $57a9: $33
    inc c                                         ; $57aa: $0c
    sub e                                         ; $57ab: $93
    inc b                                         ; $57ac: $04
    ld l, h                                       ; $57ad: $6c
    sub a                                         ; $57ae: $97
    nop                                           ; $57af: $00
    ld c, c                                       ; $57b0: $49
    or [hl]                                       ; $57b1: $b6
    jp c, $550d                                   ; $57b2: $da $0d $55

    xor b                                         ; $57b5: $a8
    nop                                           ; $57b6: $00
    db $f4                                        ; $57b7: $f4
    ld [$08b6], sp                                ; $57b8: $08 $b6 $08
    ld d, h                                       ; $57bb: $54
    xor b                                         ; $57bc: $a8
    ld b, a                                       ; $57bd: $47
    cp b                                          ; $57be: $b8
    jr nz, jr_0c7_57d6                            ; $57bf: $20 $15

    ld hl, sp-$40                                 ; $57c1: $f8 $c0
    dec bc                                        ; $57c3: $0b
    ld d, d                                       ; $57c4: $52
    dec c                                         ; $57c5: $0d
    sub a                                         ; $57c6: $97
    ld [$0057], sp                                ; $57c7: $08 $57 $00
    ld [$0b94], sp                                ; $57ca: $08 $94 $0b
    sub $20                                       ; $57cd: $d6 $20
    ld d, d                                       ; $57cf: $52
    jr nz, jr_0c7_5767                            ; $57d0: $20 $95

    nop                                           ; $57d2: $00
    ld h, b                                       ; $57d3: $60
    ld l, d                                       ; $57d4: $6a
    push af                                       ; $57d5: $f5

jr_0c7_57d6:
    ld d, l                                       ; $57d6: $55
    xor d                                         ; $57d7: $aa
    rst $38                                       ; $57d8: $ff
    nop                                           ; $57d9: $00
    ld e, e                                       ; $57da: $5b
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    sub l                                         ; $57dd: $95
    ld l, d                                       ; $57de: $6a
    ld c, b                                       ; $57df: $48
    scf                                           ; $57e0: $37
    push hl                                       ; $57e1: $e5
    ld a, [hl-]                                   ; $57e2: $3a
    jp nz, Jump_000_3c00                          ; $57e3: $c2 $00 $3c

    ld h, b                                       ; $57e6: $60
    cp a                                          ; $57e7: $bf
    ld [$a4f0], sp                                ; $57e8: $08 $f0 $a4
    ld a, e                                       ; $57eb: $7b
    ld a, [bc]                                    ; $57ec: $0a
    nop                                           ; $57ed: $00
    ld [hl], c                                    ; $57ee: $71
    and b                                         ; $57ef: $a0
    ld a, a                                       ; $57f0: $7f
    dec a                                         ; $57f1: $3d
    ret nz                                        ; $57f2: $c0

    ld [hl], e                                    ; $57f3: $73
    ret nz                                        ; $57f4: $c0

    ld a, [hl+]                                   ; $57f5: $2a
    nop                                           ; $57f6: $00
    push de                                       ; $57f7: $d5
    ld d, l                                       ; $57f8: $55
    rst $38                                       ; $57f9: $ff
    ld a, [hl-]                                   ; $57fa: $3a
    ret nz                                        ; $57fb: $c0

    ld h, h                                       ; $57fc: $64
    ret nz                                        ; $57fd: $c0

    ld a, [hl+]                                   ; $57fe: $2a
    add b                                         ; $57ff: $80
    inc b                                         ; $5800: $04
    nop                                           ; $5801: $00
    cpl                                           ; $5802: $2f
    ret nz                                        ; $5803: $c0

    inc [hl]                                      ; $5804: $34
    ret nz                                        ; $5805: $c0

    scf                                           ; $5806: $37
    ret z                                         ; $5807: $c8

    cp e                                          ; $5808: $bb
    nop                                           ; $5809: $00
    ret nz                                        ; $580a: $c0

    cp d                                          ; $580b: $ba
    ld b, b                                       ; $580c: $40
    xor h                                         ; $580d: $ac
    ld d, e                                       ; $580e: $53
    xor [hl]                                      ; $580f: $ae
    ld b, b                                       ; $5810: $40
    or h                                          ; $5811: $b4
    nop                                           ; $5812: $00
    ld b, d                                       ; $5813: $42
    rst $08                                       ; $5814: $cf
    jr nc, jr_0c7_57a9                            ; $5815: $30 $92

    ld h, b                                       ; $5817: $60
    ld e, $e1                                     ; $5818: $1e $e1
    db $dd                                        ; $581a: $dd
    nop                                           ; $581b: $00
    ldh [rNR21], a                                ; $581c: $e0 $16
    ldh [rHDMA5], a                               ; $581e: $e0 $55
    ld [$c02b], a                                 ; $5820: $ea $2b $c0
    xor e                                         ; $5823: $ab
    ld [$abc4], sp                                ; $5824: $08 $c4 $ab
    ld b, b                                       ; $5827: $40
    ld b, h                                       ; $5828: $44
    adc $05                                       ; $5829: $ce $05
    ld d, h                                       ; $582b: $54
    add b                                         ; $582c: $80
    ld b, d                                       ; $582d: $42
    and b                                         ; $582e: $a0
    inc b                                         ; $582f: $04
    nop                                           ; $5830: $00
    ld h, l                                       ; $5831: $65
    ld l, h                                       ; $5832: $6c
    ld [bc], a                                    ; $5833: $02
    ld a, [hl-]                                   ; $5834: $3a
    ld b, b                                       ; $5835: $40
    cp d                                          ; $5836: $ba
    ld b, b                                       ; $5837: $40
    or h                                          ; $5838: $b4
    jr nz, jr_0c7_5886                            ; $5839: $20 $4b

    cp l                                          ; $583b: $bd
    ld c, [hl]                                    ; $583c: $4e
    inc bc                                        ; $583d: $03
    cp a                                          ; $583e: $bf
    ld b, b                                       ; $583f: $40
    ld d, d                                       ; $5840: $52
    add b                                         ; $5841: $80
    ld d, l                                       ; $5842: $55
    nop                                           ; $5843: $00
    xor d                                         ; $5844: $aa
    cp $01                                        ; $5845: $fe $01
    ld a, [hl+]                                   ; $5847: $2a
    ld bc, $11ee                                  ; $5848: $01 $ee $11
    jp c, $0100                                   ; $584b: $da $00 $01

    ld l, [hl]                                    ; $584e: $6e
    ld bc, $a55a                                  ; $584f: $01 $5a $a5
    or l                                          ; $5852: $b5
    ld [bc], a                                    ; $5853: $02
    xor l                                         ; $5854: $ad
    nop                                           ; $5855: $00
    ld b, d                                       ; $5856: $42
    dec l                                         ; $5857: $2d
    jp nz, $d6ab                                  ; $5858: $c2 $ab $d6

    ld bc, $fffe                                  ; $585b: $01 $fe $ff

jr_0c7_585e:
    jr nz, jr_0c7_585e                            ; $585e: $20 $fe

    rst $10                                       ; $5860: $d7
    inc c                                         ; $5861: $0c
    rlca                                          ; $5862: $07
    ld c, d                                       ; $5863: $4a
    nop                                           ; $5864: $00
    ld [hl+], a                                   ; $5865: $22
    nop                                           ; $5866: $00
    ld e, d                                       ; $5867: $5a
    nop                                           ; $5868: $00
    ld bc, $0215                                  ; $5869: $01 $15 $02
    dec e                                         ; $586c: $1d
    ld [bc], a                                    ; $586d: $02
    ld d, [hl]                                    ; $586e: $56
    inc bc                                        ; $586f: $03
    inc c                                         ; $5870: $0c
    add b                                         ; $5871: $80
    add b                                         ; $5872: $80
    ld [bc], a                                    ; $5873: $02
    sub h                                         ; $5874: $94
    inc bc                                        ; $5875: $03
    ld h, $03                                     ; $5876: $26 $03
    rst $18                                       ; $5878: $df
    nop                                           ; $5879: $00
    and a                                         ; $587a: $a7
    adc b                                         ; $587b: $88
    ld [hl], b                                    ; $587c: $70
    ld de, $ff00                                  ; $587d: $11 $00 $ff
    ld b, $7c                                     ; $5880: $06 $7c
    dec b                                         ; $5882: $05
    inc c                                         ; $5883: $0c
    rst $38                                       ; $5884: $ff
    ld [hl], e                                    ; $5885: $73

jr_0c7_5886:
    nop                                           ; $5886: $00
    inc c                                         ; $5887: $0c
    ld d, d                                       ; $5888: $52
    inc c                                         ; $5889: $0c
    and e                                         ; $588a: $a3
    ld e, h                                       ; $588b: $5c
    ld e, e                                       ; $588c: $5b
    db $fc                                        ; $588d: $fc
    ld [bc], a                                    ; $588e: $02
    nop                                           ; $588f: $00
    db $fc                                        ; $5890: $fc
    xor d                                         ; $5891: $aa
    ld e, l                                       ; $5892: $5d
    ld [bc], a                                    ; $5893: $02
    ld a, h                                       ; $5894: $7c
    adc d                                         ; $5895: $8a
    ld a, h                                       ; $5896: $7c
    or $00                                        ; $5897: $f6 $00
    ld [$1048], sp                                ; $5899: $08 $48 $10
    ret z                                         ; $589c: $c8

    jr nc, @-$54                                  ; $589d: $30 $aa

    db $10                                        ; $589f: $10
    ret z                                         ; $58a0: $c8

    nop                                           ; $58a1: $00
    db $10                                        ; $58a2: $10
    xor d                                         ; $58a3: $aa
    ld d, b                                       ; $58a4: $50
    ld [$a810], a                                 ; $58a5: $ea $10 $a8
    ld d, b                                       ; $58a8: $50
    rst $10                                       ; $58a9: $d7
    nop                                           ; $58aa: $00
    ld [$0897], sp                                ; $58ab: $08 $97 $08
    sub $09                                       ; $58ae: $d6 $09

jr_0c7_58b0:
    sub a                                         ; $58b0: $97
    ld [$a055], sp                                ; $58b1: $08 $55 $a0
    ld [$5500], sp                                ; $58b4: $08 $00 $55
    ldh [rP1], a                                  ; $58b7: $e0 $00
    cp [hl]                                       ; $58b9: $be
    nop                                           ; $58ba: $00
    ld b, l                                       ; $58bb: $45
    nop                                           ; $58bc: $00
    sbc l                                         ; $58bd: $9d
    nop                                           ; $58be: $00
    ld h, d                                       ; $58bf: $62
    cp e                                          ; $58c0: $bb
    nop                                           ; $58c1: $00
    ld c, l                                       ; $58c2: $4d
    nop                                           ; $58c3: $00
    db $eb                                        ; $58c4: $eb
    inc d                                         ; $58c5: $14
    ld c, e                                       ; $58c6: $4b
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    xor d                                         ; $58c9: $aa
    ld b, h                                       ; $58ca: $44
    adc e                                         ; $58cb: $8b
    ld [hl], b                                    ; $58cc: $70
    ld d, l                                       ; $58cd: $55
    ld a, [hl-]                                   ; $58ce: $3a
    ret nz                                        ; $58cf: $c0

    nop                                           ; $58d0: $00
    ccf                                           ; $58d1: $3f
    ld e, a                                       ; $58d2: $5f
    ccf                                           ; $58d3: $3f
    jp c, Jump_0c7_5420                           ; $58d4: $da $20 $54

    and b                                         ; $58d7: $a0
    ld d, l                                       ; $58d8: $55
    nop                                           ; $58d9: $00
    jr nz, jr_0c7_58b0                            ; $58da: $20 $d4

    jr nz, jr_0c7_590c                            ; $58dc: $20 $2e

    ret nz                                        ; $58de: $c0

    ld h, d                                       ; $58df: $62
    ret nz                                        ; $58e0: $c0

jr_0c7_58e1:
    inc hl                                        ; $58e1: $23
    nop                                           ; $58e2: $00
    ret nz                                        ; $58e3: $c0

    ld [$e1c0], a                                 ; $58e4: $ea $c0 $e1
    nop                                           ; $58e7: $00
    ld l, d                                       ; $58e8: $6a
    nop                                           ; $58e9: $00
    ld l, c                                       ; $58ea: $69
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    ld h, d                                       ; $58ed: $62
    nop                                           ; $58ee: $00
    xor e                                         ; $58ef: $ab
    ld b, b                                       ; $58f0: $40
    or h                                          ; $58f1: $b4
    ld b, b                                       ; $58f2: $40
    xor d                                         ; $58f3: $aa
    ld b, b                                       ; $58f4: $40
    ld d, l                                       ; $58f5: $55
    cp l                                          ; $58f6: $bd
    ld bc, $c07f                                  ; $58f7: $01 $7f $c0
    ld a, a                                       ; $58fa: $7f
    ld b, b                                       ; $58fb: $40
    ccf                                           ; $58fc: $3f

jr_0c7_58fd:
    ld h, b                                       ; $58fd: $60
    inc c                                         ; $58fe: $0c
    ccf                                           ; $58ff: $3f
    dec a                                         ; $5900: $3d
    ret nz                                        ; $5901: $c0

    or e                                          ; $5902: $b3
    nop                                           ; $5903: $00
    ld bc, $0880                                  ; $5904: $01 $80 $08
    adc d                                         ; $5907: $8a
    push af                                       ; $5908: $f5
    nop                                           ; $5909: $00
    jr z, jr_0c7_58e1                             ; $590a: $28 $d5

jr_0c7_590c:
    add d                                         ; $590c: $82
    db $dd                                        ; $590d: $dd
    ld h, l                                       ; $590e: $65
    add b                                         ; $590f: $80
    ld b, c                                       ; $5910: $41
    add b                                         ; $5911: $80
    nop                                           ; $5912: $00
    ld l, e                                       ; $5913: $6b
    add b                                         ; $5914: $80
    ld d, e                                       ; $5915: $53
    xor l                                         ; $5916: $ad
    nop                                           ; $5917: $00
    rst $38                                       ; $5918: $ff
    sub d                                         ; $5919: $92
    ld l, a                                       ; $591a: $6f
    inc b                                         ; $591b: $04
    jr nz, jr_0c7_58fd                            ; $591c: $20 $df

    ld d, d                                       ; $591e: $52
    adc a                                         ; $591f: $8f
    ld l, e                                       ; $5920: $6b
    inc [hl]                                      ; $5921: $34
    dec b                                         ; $5922: $05
    ld d, l                                       ; $5923: $55
    xor d                                         ; $5924: $aa
    nop                                           ; $5925: $00
    ld d, l                                       ; $5926: $55
    rst $38                                       ; $5927: $ff
    ld d, l                                       ; $5928: $55
    xor d                                         ; $5929: $aa
    or l                                          ; $592a: $b5
    nop                                           ; $592b: $00
    rl h                                          ; $592c: $cb $14
    nop                                           ; $592e: $00
    or [hl]                                       ; $592f: $b6
    nop                                           ; $5930: $00
    push de                                       ; $5931: $d5
    ld [bc], a                                    ; $5932: $02
    xor l                                         ; $5933: $ad
    ld [bc], a                                    ; $5934: $02
    add hl, hl                                    ; $5935: $29
    sub $00                                       ; $5936: $d6 $00
    ld d, [hl]                                    ; $5938: $56
    cp $54                                        ; $5939: $fe $54
    xor d                                         ; $593b: $aa
    db $fc                                        ; $593c: $fc

jr_0c7_593d:
    ld [bc], a                                    ; $593d: $02
    or h                                          ; $593e: $b4
    ld [bc], a                                    ; $593f: $02
    ld de, $825c                                  ; $5940: $11 $5c $82
    ld l, d                                       ; $5943: $6a
    call nc, Call_0c7_6200                        ; $5944: $d4 $00 $62
    nop                                           ; $5947: $00
    ld d, l                                       ; $5948: $55
    cp h                                          ; $5949: $bc
    inc bc                                        ; $594a: $03
    xor b                                         ; $594b: $a8
    ret nc                                        ; $594c: $d0

    ld [$d446], sp                                ; $594d: $08 $46 $d4
    nop                                           ; $5950: $00
    ld b, $80                                     ; $5951: $06 $80
    ld [bc], a                                    ; $5953: $02
    ld d, a                                       ; $5954: $57
    xor e                                         ; $5955: $ab
    inc bc                                        ; $5956: $03
    db $10                                        ; $5957: $10
    db $fc                                        ; $5958: $fc
    ld b, $fc                                     ; $5959: $06 $fc
    inc b                                         ; $595b: $04
    ld [$fe01], sp                                ; $595c: $08 $01 $fe
    inc c                                         ; $595f: $0c
    rst $38                                       ; $5960: $ff
    nop                                           ; $5961: $00
    ld bc, $fcfe                                  ; $5962: $01 $fe $fc
    rst $38                                       ; $5965: $ff
    ld e, b                                       ; $5966: $58
    rlca                                          ; $5967: $07
    adc h                                         ; $5968: $8c
    rlca                                          ; $5969: $07
    ld b, b                                       ; $596a: $40
    jr z, jr_0c7_5971                             ; $596b: $28 $04

    nop                                           ; $596d: $00
    inc hl                                        ; $596e: $23
    ld e, h                                       ; $596f: $5c
    adc e                                         ; $5970: $8b

jr_0c7_5971:
    ld a, h                                       ; $5971: $7c
    ld [bc], a                                    ; $5972: $02
    ld a, l                                       ; $5973: $7d
    nop                                           ; $5974: $00
    dec l                                         ; $5975: $2d
    ld e, a                                       ; $5976: $5f
    nop                                           ; $5977: $00
    ld e, a                                       ; $5978: $5f
    xor h                                         ; $5979: $ac
    ld e, a                                       ; $597a: $5f
    nop                                           ; $597b: $00
    rst $18                                       ; $597c: $df
    nop                                           ; $597d: $00
    xor h                                         ; $597e: $ac
    ld e, a                                       ; $597f: $5f
    ld [$6810], a                                 ; $5980: $ea $10 $68
    db $10                                        ; $5983: $10
    adc d                                         ; $5984: $8a
    ld [hl], b                                    ; $5985: $70
    jr nz, jr_0c7_593d                            ; $5986: $20 $b5

    ld a, [$0480]                                 ; $5988: $fa $80 $04
    ld d, [hl]                                    ; $598b: $56
    add d                                         ; $598c: $82
    ld e, l                                       ; $598d: $5d
    dec h                                         ; $598e: $25
    ret c                                         ; $598f: $d8

    nop                                           ; $5990: $00
    ld d, a                                       ; $5991: $57
    ld [$0815], sp                                ; $5992: $08 $15 $08
    or h                                          ; $5995: $b4
    dec bc                                        ; $5996: $0b
    ld e, e                                       ; $5997: $5b
    xor a                                         ; $5998: $af
    nop                                           ; $5999: $00
    ld [bc], a                                    ; $599a: $02
    db $fd                                        ; $599b: $fd
    ld d, l                                       ; $599c: $55
    cp b                                          ; $599d: $b8
    ld b, $b9                                     ; $599e: $06 $b9
    ld d, l                                       ; $59a0: $55
    cp b                                          ; $59a1: $b8
    ld [bc], a                                    ; $59a2: $02
    ld a, l                                       ; $59a3: $7d
    nop                                           ; $59a4: $00
    or d                                          ; $59a5: $b2
    nop                                           ; $59a6: $00
    xor d                                         ; $59a7: $aa
    ld d, l                                       ; $59a8: $55
    add b                                         ; $59a9: $80
    ld [$045f], sp                                ; $59aa: $08 $5f $04
    nop                                           ; $59ad: $00
    cp e                                          ; $59ae: $bb
    ld b, b                                       ; $59af: $40
    ld h, l                                       ; $59b0: $65
    ld [$08d4], sp                                ; $59b1: $08 $d4 $08
    sub h                                         ; $59b4: $94
    ld h, b                                       ; $59b5: $60
    ld bc, $e073                                  ; $59b6: $01 $73 $e0
    ld d, h                                       ; $59b9: $54
    and b                                         ; $59ba: $a0
    db $d3                                        ; $59bb: $d3
    jr nz, jr_0c7_5a13                            ; $59bc: $20 $55

    or h                                          ; $59be: $b4
    ld [bc], a                                    ; $59bf: $02
    inc de                                        ; $59c0: $13
    ld l, c                                       ; $59c1: $69
    nop                                           ; $59c2: $00
    ld h, b                                       ; $59c3: $60
    jp c, Jump_0c7_5500                           ; $59c4: $da $00 $55

    ld a, [hl+]                                   ; $59c7: $2a
    call z, Call_000_0408                         ; $59c8: $cc $08 $04
    jr z, jr_0c7_59d7                             ; $59cb: $28 $0a

    ret nz                                        ; $59cd: $c0

    ccf                                           ; $59ce: $3f
    ld a, a                                       ; $59cf: $7f
    cp a                                          ; $59d0: $bf
    call z, $2909                                 ; $59d1: $cc $09 $29
    call nc, Call_000_0901                        ; $59d4: $d4 $01 $09

jr_0c7_59d7:
    nop                                           ; $59d7: $00
    or d                                          ; $59d8: $b2
    ld d, h                                       ; $59d9: $54
    xor e                                         ; $59da: $ab
    ld [$51a3], sp                                ; $59db: $08 $a3 $51
    xor d                                         ; $59de: $aa
    ld b, b                                       ; $59df: $40
    inc b                                         ; $59e0: $04
    cp d                                          ; $59e1: $ba
    ld a, [hl+]                                   ; $59e2: $2a
    push de                                       ; $59e3: $d5
    ld bc, $9cfc                                  ; $59e4: $01 $fc $9c
    ld [bc], a                                    ; $59e7: $02
    or a                                          ; $59e8: $b7
    ld l, d                                       ; $59e9: $6a
    nop                                           ; $59ea: $00
    sub a                                         ; $59eb: $97
    add b                                         ; $59ec: $80
    ld e, a                                       ; $59ed: $5f
    ld a, [hl+]                                   ; $59ee: $2a
    rst $10                                       ; $59ef: $d7
    sub b                                         ; $59f0: $90
    ld l, a                                       ; $59f1: $6f
    sub l                                         ; $59f2: $95
    nop                                           ; $59f3: $00
    ld l, [hl]                                    ; $59f4: $6e
    ld bc, $b56e                                  ; $59f5: $01 $6e $b5
    ld c, [hl]                                    ; $59f8: $4e
    jp nz, $b529                                  ; $59f9: $c2 $29 $b5

    ld [$c208], sp                                ; $59fc: $08 $08 $c2
    add hl, hl                                    ; $59ff: $29
    db $eb                                        ; $5a00: $eb
    ld d, $05                                     ; $5a01: $16 $05
    ld b, h                                       ; $5a03: $44
    add hl, hl                                    ; $5a04: $29
    or e                                          ; $5a05: $b3
    nop                                           ; $5a06: $00
    ld [$0956], sp                                ; $5a07: $08 $56 $09
    ld c, d                                       ; $5a0a: $4a
    inc h                                         ; $5a0b: $24
    cp d                                          ; $5a0c: $ba
    inc b                                         ; $5a0d: $04
    ld c, e                                       ; $5a0e: $4b
    nop                                           ; $5a0f: $00
    inc h                                         ; $5a10: $24
    ld a, d                                       ; $5a11: $7a
    dec b                                         ; $5a12: $05

jr_0c7_5a13:
    ld e, b                                       ; $5a13: $58
    daa                                           ; $5a14: $27
    di                                            ; $5a15: $f3
    inc c                                         ; $5a16: $0c
    ld [hl], d                                    ; $5a17: $72
    db $10                                        ; $5a18: $10
    inc c                                         ; $5a19: $0c
    or e                                          ; $5a1a: $b3
    inc c                                         ; $5a1b: $0c
    ret nc                                        ; $5a1c: $d0

    ld [$0354], sp                                ; $5a1d: $08 $54 $03
    xor e                                         ; $5a20: $ab
    ld d, a                                       ; $5a21: $57
    nop                                           ; $5a22: $00
    xor c                                         ; $5a23: $a9
    ld d, [hl]                                    ; $5a24: $56
    ld a, [$dd00]                                 ; $5a25: $fa $00 $dd
    ld [bc], a                                    ; $5a28: $02
    and [hl]                                      ; $5a29: $a6
    stop                                          ; $5a2a: $10 $00
    dec b                                         ; $5a2c: $05
    ld hl, sp+$0c                                 ; $5a2d: $f8 $0c
    ld hl, sp+$05                                 ; $5a2f: $f8 $05
    ld hl, sp-$04                                 ; $5a31: $f8 $fc
    ld hl, sp+$00                                 ; $5a33: $f8 $00
    ld d, l                                       ; $5a35: $55
    xor b                                         ; $5a36: $a8
    call nc, $3508                                ; $5a37: $d4 $08 $35
    adc b                                         ; $5a3a: $88
    call nc, Call_0c7_4008                        ; $5a3b: $d4 $08 $40
    xor b                                         ; $5a3e: $a8
    ret c                                         ; $5a3f: $d8

Call_0c7_5a40:
    nop                                           ; $5a40: $00
    adc b                                         ; $5a41: $88
    rlca                                          ; $5a42: $07
    xor a                                         ; $5a43: $af
    rlca                                          ; $5a44: $07
    dec c                                         ; $5a45: $0d

jr_0c7_5a46:
    nop                                           ; $5a46: $00
    db $10                                        ; $5a47: $10
    xor l                                         ; $5a48: $ad
    nop                                           ; $5a49: $00
    ld l, $1c                                     ; $5a4a: $2e $1c
    inc b                                         ; $5a4c: $04
    ld b, b                                       ; $5a4d: $40
    dec a                                         ; $5a4e: $3d
    sbc d                                         ; $5a4f: $9a
    ld a, l                                       ; $5a50: $7d
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    db $fd                                        ; $5a53: $fd
    ld a, [$52fd]                                 ; $5a54: $fa $fd $52
    dec c                                         ; $5a57: $0d
    ld e, b                                       ; $5a58: $58
    dec c                                         ; $5a59: $0d
    nop                                           ; $5a5a: $00
    ld [de], a                                    ; $5a5b: $12
    dec c                                         ; $5a5c: $0d
    ld e, b                                       ; $5a5d: $58
    rrca                                          ; $5a5e: $0f
    ld c, b                                       ; $5a5f: $48
    sub l                                         ; $5a60: $95
    and e                                         ; $5a61: $a3
    ld e, h                                       ; $5a62: $5c
    nop                                           ; $5a63: $00
    ld b, h                                       ; $5a64: $44
    ld a, [de]                                    ; $5a65: $1a

jr_0c7_5a66:
    adc c                                         ; $5a66: $89
    ld d, [hl]                                    ; $5a67: $56
    inc b                                         ; $5a68: $04
    db $d3                                        ; $5a69: $d3
    xor d                                         ; $5a6a: $aa
    ld d, l                                       ; $5a6b: $55

jr_0c7_5a6c:
    ld [$f104], sp                                ; $5a6c: $08 $04 $f1

jr_0c7_5a6f:
    xor d                                         ; $5a6f: $aa
    ld d, l                                       ; $5a70: $55

jr_0c7_5a71:
    call nc, Call_000_0608                        ; $5a71: $d4 $08 $06
    ld sp, hl                                     ; $5a74: $f9
    ld d, a                                       ; $5a75: $57
    nop                                           ; $5a76: $00
    cp b                                          ; $5a77: $b8
    add l                                         ; $5a78: $85
    ld a, b                                       ; $5a79: $78
    ld d, h                                       ; $5a7a: $54
    cp c                                          ; $5a7b: $b9
    rlca                                          ; $5a7c: $07
    cp b                                          ; $5a7d: $b8
    push de                                       ; $5a7e: $d5
    nop                                           ; $5a7f: $00
    jr c, jr_0c7_5a94                             ; $5a80: $38 $12

    ld c, c                                       ; $5a82: $49
    xor l                                         ; $5a83: $ad
    ld b, b                                       ; $5a84: $40
    ld [de], a                                    ; $5a85: $12
    ld c, c                                       ; $5a86: $49
    ld e, e                                       ; $5a87: $5b
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    ld a, [$2701]                                 ; $5a8a: $fa $01 $27
    ld c, b                                       ; $5a8d: $48
    sbc e                                         ; $5a8e: $9b
    ld b, b                                       ; $5a8f: $40
    or l                                          ; $5a90: $b5
    nop                                           ; $5a91: $00
    ld c, b                                       ; $5a92: $48
    ld d, h                                       ; $5a93: $54

jr_0c7_5a94:
    jr nz, jr_0c7_5a66                            ; $5a94: $20 $d0

    jr nz, jr_0c7_5af2                            ; $5a96: $20 $5a

    jr nz, jr_0c7_5a6f                            ; $5a98: $20 $d5

    nop                                           ; $5a9a: $00
    ld a, [hl+]                                   ; $5a9b: $2a
    push bc                                       ; $5a9c: $c5
    ld a, [hl-]                                   ; $5a9d: $3a
    ld c, a                                       ; $5a9e: $4f
    jr nc, jr_0c7_5a6c                            ; $5a9f: $30 $cb

    jr nc, jr_0c7_5a71                            ; $5aa1: $30 $ce

    nop                                           ; $5aa3: $00
    jr nc, jr_0c7_5a46                            ; $5aa4: $30 $a0

    rra                                           ; $5aa6: $1f
    jr nc, @+$21                                  ; $5aa7: $30 $1f

    and b                                         ; $5aa9: $a0
    rra                                           ; $5aaa: $1f
    ld e, a                                       ; $5aab: $5f
    nop                                           ; $5aac: $00
    cp a                                          ; $5aad: $bf
    ld c, d                                       ; $5aae: $4a
    or l                                          ; $5aaf: $b5
    db $eb                                        ; $5ab0: $eb
    nop                                           ; $5ab1: $00
    ld [hl], h                                    ; $5ab2: $74
    ld a, [bc]                                    ; $5ab3: $0a
    sbc e                                         ; $5ab4: $9b
    jr nz, @+$42                                  ; $5ab5: $20 $40

    dec l                                         ; $5ab7: $2d
    xor b                                         ; $5ab8: $a8
    ld [bc], a                                    ; $5ab9: $02
    inc l                                         ; $5aba: $2c
    ret nz                                        ; $5abb: $c0

    push hl                                       ; $5abc: $e5
    ret nz                                        ; $5abd: $c0

    xor b                                         ; $5abe: $a8
    jr nz, jr_0c7_5b01                            ; $5abf: $20 $40

    dec h                                         ; $5ac1: $25
    ld h, b                                       ; $5ac2: $60
    inc bc                                        ; $5ac3: $03
    inc h                                         ; $5ac4: $24
    ld b, b                                       ; $5ac5: $40
    dec b                                         ; $5ac6: $05
    jp nc, Jump_0c7_4028                          ; $5ac7: $d2 $28 $40

    rst $10                                       ; $5aca: $d7
    ret nz                                        ; $5acb: $c0

    ld c, $a0                                     ; $5acc: $0e $a0
    ld e, a                                       ; $5ace: $5f
    ld h, h                                       ; $5acf: $64
    rrca                                          ; $5ad0: $0f
    sub c                                         ; $5ad1: $91
    ld c, [hl]                                    ; $5ad2: $4e
    nop                                           ; $5ad3: $00
    call nc, $010f                                ; $5ad4: $d4 $0f $01
    sbc $a5                                       ; $5ad7: $de $a5
    ld e, [hl]                                    ; $5ad9: $5e
    ld [bc], a                                    ; $5ada: $02
    db $fd                                        ; $5adb: $fd
    ld b, l                                       ; $5adc: $45
    db $fd                                        ; $5add: $fd
    ret z                                         ; $5ade: $c8

    rlca                                          ; $5adf: $07
    ld d, h                                       ; $5ae0: $54
    xor e                                         ; $5ae1: $ab
    ld e, d                                       ; $5ae2: $5a
    ret nz                                        ; $5ae3: $c0

    ld b, $ad                                     ; $5ae4: $06 $ad
    add [hl]                                      ; $5ae6: $86
    dec b                                         ; $5ae7: $05
    add b                                         ; $5ae8: $80
    ld b, b                                       ; $5ae9: $40
    add hl, bc                                    ; $5aea: $09
    dec b                                         ; $5aeb: $05
    ld hl, sp-$54                                 ; $5aec: $f8 $ac
    ld e, b                                       ; $5aee: $58
    ld b, l                                       ; $5aef: $45
    jr c, @+$1b                                   ; $5af0: $38 $19

jr_0c7_5af2:
    ld d, b                                       ; $5af2: $50
    ldh a, [$d4]                                  ; $5af3: $f0 $d4
    ld [$60a2], sp                                ; $5af5: $08 $a2 $60
    ld [bc], a                                    ; $5af8: $02

jr_0c7_5af9:
    ld e, e                                       ; $5af9: $5b
    inc b                                         ; $5afa: $04
    xor d                                         ; $5afb: $aa
    inc b                                         ; $5afc: $04
    nop                                           ; $5afd: $00
    dec bc                                        ; $5afe: $0b
    inc b                                         ; $5aff: $04
    ld d, a                                       ; $5b00: $57

jr_0c7_5b01:
    ld [$9248], sp                                ; $5b01: $08 $48 $92
    or l                                          ; $5b04: $b5
    ld [bc], a                                    ; $5b05: $02
    nop                                           ; $5b06: $00
    ld c, b                                       ; $5b07: $48
    sub d                                         ; $5b08: $92
    jp c, Jump_0c7_5f00                           ; $5b09: $da $00 $5f

    add b                                         ; $5b0c: $80
    db $e4                                        ; $5b0d: $e4
    ld [de], a                                    ; $5b0e: $12
    ld [$02d9], sp                                ; $5b0f: $08 $d9 $02
    ld e, d                                       ; $5b12: $5a
    inc h                                         ; $5b13: $24
    call nc, Call_0c7_6d08                        ; $5b14: $d4 $08 $6d
    sub b                                         ; $5b17: $90
    ld l, d                                       ; $5b18: $6a
    nop                                           ; $5b19: $00
    dec d                                         ; $5b1a: $15
    ld [$6910], a                                 ; $5b1b: $ea $10 $69
    sub b                                         ; $5b1e: $90
    xor d                                         ; $5b1f: $aa
    db $10                                        ; $5b20: $10
    xor c                                         ; $5b21: $a9
    ld [bc], a                                    ; $5b22: $02
    db $10                                        ; $5b23: $10
    ld l, $00                                     ; $5b24: $2e $00
    dec c                                         ; $5b26: $0d
    nop                                           ; $5b27: $00
    ld e, d                                       ; $5b28: $5a
    ld [bc], a                                    ; $5b29: $02
    rlca                                          ; $5b2a: $07
    or d                                          ; $5b2b: $b2
    ld b, b                                       ; $5b2c: $40
    dec c                                         ; $5b2d: $0d
    sbc d                                         ; $5b2e: $9a
    add hl, bc                                    ; $5b2f: $09
    ld d, a                                       ; $5b30: $57
    ld [$0d52], sp                                ; $5b31: $08 $52 $0d
    jr jr_0c7_5b45                                ; $5b34: $18 $0f

    nop                                           ; $5b36: $00
    or b                                          ; $5b37: $b0
    rrca                                          ; $5b38: $0f
    ld e, a                                       ; $5b39: $5f
    xor a                                         ; $5b3a: $af
    xor d                                         ; $5b3b: $aa
    ld d, l                                       ; $5b3c: $55
    push af                                       ; $5b3d: $f5
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    cp d                                          ; $5b40: $ba
    dec b                                         ; $5b41: $05
    ld c, l                                       ; $5b42: $4d
    jr nz, jr_0c7_5b59                            ; $5b43: $20 $14

jr_0c7_5b45:
    ld c, e                                       ; $5b45: $4b
    and d                                         ; $5b46: $a2
    ld e, l                                       ; $5b47: $5d
    add b                                         ; $5b48: $80
    add b                                         ; $5b49: $80
    jr @-$56                                      ; $5b4a: $18 $a8

    rra                                           ; $5b4c: $1f
    ld h, d                                       ; $5b4d: $62
    dec e                                         ; $5b4e: $1d
    xor b                                         ; $5b4f: $a8
    rra                                           ; $5b50: $1f
    rlca                                          ; $5b51: $07
    ld de, $9778                                  ; $5b52: $11 $78 $97
    ld a, b                                       ; $5b55: $78
    ld b, b                                       ; $5b56: $40
    rra                                           ; $5b57: $1f
    xor b                                         ; $5b58: $a8

jr_0c7_5b59:
    ld d, a                                       ; $5b59: $57
    or l                                          ; $5b5a: $b5
    db $ec                                        ; $5b5b: $ec
    ld b, $11                                     ; $5b5c: $06 $11
    ld l, e                                       ; $5b5e: $6b
    nop                                           ; $5b5f: $00
    db $ed                                        ; $5b60: $ed
    ret nz                                        ; $5b61: $c0

    ld de, $e015                                  ; $5b62: $11 $15 $e0
    or d                                          ; $5b65: $b2
    ld b, b                                       ; $5b66: $40
    rlca                                          ; $5b67: $07
    nop                                           ; $5b68: $00
    ld [hl-], a                                   ; $5b69: $32
    ldh [rOBP1], a                                ; $5b6a: $e0 $49
    ld [hl-], a                                   ; $5b6c: $32
    ld c, [hl]                                    ; $5b6d: $4e
    jr nc, jr_0c7_5af9                            ; $5b6e: $30 $89

    ld [hl], d                                    ; $5b70: $72
    nop                                           ; $5b71: $00
    ld l, a                                       ; $5b72: $6f
    ldh a, [$6d]                                  ; $5b73: $f0 $6d
    ld [de], a                                    ; $5b75: $12
    xor e                                         ; $5b76: $ab
    db $10                                        ; $5b77: $10
    cpl                                           ; $5b78: $2f
    stop                                          ; $5b79: $10 $00
    xor [hl]                                      ; $5b7b: $ae
    db $10                                        ; $5b7c: $10
    jr nz, @+$4c                                  ; $5b7d: $20 $4a

    rst $10                                       ; $5b7f: $d7
    ld [$4a21], sp                                ; $5b80: $08 $21 $4a
    nop                                           ; $5b83: $00
    ld l, c                                       ; $5b84: $69
    nop                                           ; $5b85: $00
    ld a, a                                       ; $5b86: $7f
    nop                                           ; $5b87: $00
    sub c                                         ; $5b88: $91
    ld c, d                                       ; $5b89: $4a
    ld h, [hl]                                    ; $5b8a: $66
    ld [$b501], sp                                ; $5b8b: $08 $01 $b5
    ld c, b                                       ; $5b8e: $48
    xor c                                         ; $5b8f: $a9
    ld b, b                                       ; $5b90: $40
    jr nz, jr_0c7_5bd3                            ; $5b91: $20 $40

    jp c, $0100                                   ; $5b93: $da $00 $01

    ld d, b                                       ; $5b96: $50
    ld d, l                                       ; $5b97: $55
    cp b                                          ; $5b98: $b8
    inc bc                                        ; $5b99: $03
    call nc, Call_000_03bc                        ; $5b9a: $d4 $bc $03
    ld [hl-], a                                   ; $5b9d: $32
    adc h                                         ; $5b9e: $8c
    call nc, Call_000_000f                        ; $5b9f: $d4 $0f $00
    ld [hl], d                                    ; $5ba2: $72
    adc h                                         ; $5ba3: $8c
    ld [hl], l                                    ; $5ba4: $75
    ld c, $a1                                     ; $5ba5: $0e $a1
    ld e, $aa                                     ; $5ba7: $1e $aa
    dec e                                         ; $5ba9: $1d
    nop                                           ; $5baa: $00
    ld h, l                                       ; $5bab: $65
    ld a, [de]                                    ; $5bac: $1a
    xor b                                         ; $5bad: $a8
    rra                                           ; $5bae: $1f
    xor d                                         ; $5baf: $aa
    ld d, c                                       ; $5bb0: $51
    dec b                                         ; $5bb1: $05
    ld a, [$a240]                                 ; $5bb2: $fa $40 $a2
    add b                                         ; $5bb5: $80
    ld b, $52                                     ; $5bb6: $06 $52
    dec c                                         ; $5bb8: $0d
    xor c                                         ; $5bb9: $a9
    ld d, [hl]                                    ; $5bba: $56
    ld b, h                                       ; $5bbb: $44
    jr c, jr_0c7_5bbe                             ; $5bbc: $38 $00

jr_0c7_5bbe:
    dec d                                         ; $5bbe: $15
    ld [c], a                                     ; $5bbf: $e2
    ld c, d                                       ; $5bc0: $4a
    or b                                          ; $5bc1: $b0
    add hl, de                                    ; $5bc2: $19
    ldh a, [$ca]                                  ; $5bc3: $f0 $ca
    jr nc, jr_0c7_5bc7                            ; $5bc5: $30 $00

jr_0c7_5bc7:
    dec d                                         ; $5bc7: $15
    ld a, [$bd42]                                 ; $5bc8: $fa $42 $bd
    rla                                           ; $5bcb: $17
    ld hl, sp-$7a                                 ; $5bcc: $f8 $86
    ld a, b                                       ; $5bce: $78
    ld de, $ba55                                  ; $5bcf: $11 $55 $ba
    ld d, l                                       ; $5bd2: $55

jr_0c7_5bd3:
    ld b, b                                       ; $5bd3: $40
    ld [bc], a                                    ; $5bd4: $02
    or l                                          ; $5bd5: $b5
    ld a, [bc]                                    ; $5bd6: $0a
    ld e, d                                       ; $5bd7: $5a
    and b                                         ; $5bd8: $a0
    nop                                           ; $5bd9: $00
    ld b, b                                       ; $5bda: $40
    rst $38                                       ; $5bdb: $ff
    sub d                                         ; $5bdc: $92
    ld bc, $b54a                                  ; $5bdd: $01 $4a $b5
    xor l                                         ; $5be0: $ad
    nop                                           ; $5be1: $00
    ld l, a                                       ; $5be2: $6f
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    ld d, l                                       ; $5be5: $55
    xor d                                         ; $5be6: $aa
    xor d                                         ; $5be7: $aa
    rst $38                                       ; $5be8: $ff
    xor d                                         ; $5be9: $aa
    ld d, b                                       ; $5bea: $50
    jp hl                                         ; $5beb: $e9


    stop                                          ; $5bec: $10 $00
    xor d                                         ; $5bee: $aa
    db $10                                        ; $5bef: $10
    jp hl                                         ; $5bf0: $e9


    db $10                                        ; $5bf1: $10
    ld l, d                                       ; $5bf2: $6a
    db $10                                        ; $5bf3: $10
    ld l, c                                       ; $5bf4: $69
    stop                                          ; $5bf5: $10 $00
    ld c, d                                       ; $5bf7: $4a
    or b                                          ; $5bf8: $b0
    or l                                          ; $5bf9: $b5
    ld a, [$0fb0]                                 ; $5bfa: $fa $b0 $0f
    ld e, d                                       ; $5bfd: $5a
    dec c                                         ; $5bfe: $0d
    nop                                           ; $5bff: $00
    db $10                                        ; $5c00: $10
    rrca                                          ; $5c01: $0f
    ld e, b                                       ; $5c02: $58
    rrca                                          ; $5c03: $0f
    ld d, h                                       ; $5c04: $54
    add hl, bc                                    ; $5c05: $09
    rla                                           ; $5c06: $17
    ld [$b400], sp                                ; $5c07: $08 $00 $b4
    add hl, bc                                    ; $5c0a: $09
    ld d, a                                       ; $5c0b: $57
    xor b                                         ; $5c0c: $a8
    ld b, $f9                                     ; $5c0d: $06 $f9
    sub l                                         ; $5c0f: $95
    ld a, b                                       ; $5c10: $78
    add b                                         ; $5c11: $80
    cp h                                          ; $5c12: $bc
    ld [$2590], sp                                ; $5c13: $08 $90 $25

jr_0c7_5c16:
    ld l, e                                       ; $5c16: $6b
    inc b                                         ; $5c17: $04
    sub b                                         ; $5c18: $90
    dec h                                         ; $5c19: $25
    or h                                          ; $5c1a: $b4
    add b                                         ; $5c1b: $80
    ld h, $07                                     ; $5c1c: $26 $07
    ret z                                         ; $5c1e: $c8

    dec h                                         ; $5c1f: $25
    or e                                          ; $5c20: $b3
    inc b                                         ; $5c21: $04
    ld e, d                                       ; $5c22: $5a
    inc h                                         ; $5c23: $24
    ld h, l                                       ; $5c24: $65

Jump_0c7_5c25:
    ld bc, $a818                                  ; $5c25: $01 $18 $a8
    rra                                           ; $5c28: $1f
    push hl                                       ; $5c29: $e5
    jr jr_0c7_5c16                                ; $5c2a: $18 $ea

    dec e                                         ; $5c2c: $1d
    add b                                         ; $5c2d: $80
    jr z, jr_0c7_5c34                             ; $5c2e: $28 $04

    ld d, h                                       ; $5c30: $54
    and e                                         ; $5c31: $a3
    ld a, [bc]                                    ; $5c32: $0a
    push af                                       ; $5c33: $f5

jr_0c7_5c34:
    ld b, l                                       ; $5c34: $45
    ld e, b                                       ; $5c35: $58
    ld bc, $0d52                                  ; $5c36: $01 $52 $0d
    db $10                                        ; $5c39: $10
    xor b                                         ; $5c3a: $a8
    ld d, a                                       ; $5c3b: $57
    ld b, l                                       ; $5c3c: $45
    nop                                           ; $5c3d: $00
    rlca                                          ; $5c3e: $07
    sub h                                         ; $5c3f: $94
    ld h, b                                       ; $5c40: $60
    ld [hl-], a                                   ; $5c41: $32
    ldh [rP1], a                                  ; $5c42: $e0 $00
    sub l                                         ; $5c44: $95
    ld h, b                                       ; $5c45: $60
    ld a, [hl+]                                   ; $5c46: $2a
    push af                                       ; $5c47: $f5
    add l                                         ; $5c48: $85
    ld a, d                                       ; $5c49: $7a
    cpl                                           ; $5c4a: $2f
    ldh a, [rDIV]                                 ; $5c4b: $f0 $04
    dec c                                         ; $5c4d: $0d
    ldh a, [$aa]                                  ; $5c4e: $f0 $aa
    ld [hl], l                                    ; $5c50: $75
    xor e                                         ; $5c51: $ab
    ld [hl], b                                    ; $5c52: $70
    rlca                                          ; $5c53: $07
    ld l, d                                       ; $5c54: $6a
    dec d                                         ; $5c55: $15
    ld [hl+], a                                   ; $5c56: $22
    or l                                          ; $5c57: $b5
    ld e, a                                       ; $5c58: $5f
    ld [hl], b                                    ; $5c59: $70
    inc l                                         ; $5c5a: $2c
    ld e, d                                       ; $5c5b: $5a
    nop                                           ; $5c5c: $00
    sbc $c0                                       ; $5c5d: $de $c0
    ld a, [de]                                    ; $5c5f: $1a
    and b                                         ; $5c60: $a0
    ld d, $d2                                     ; $5c61: $16 $d2
    jr nz, jr_0c7_5cb9                            ; $5c63: $20 $54

    ld h, h                                       ; $5c65: $64
    dec b                                         ; $5c66: $05
    call nc, Call_000_0568                        ; $5c67: $d4 $68 $05
    sub b                                         ; $5c6a: $90
    inc c                                         ; $5c6b: $0c
    ld h, b                                       ; $5c6c: $60
    nop                                           ; $5c6d: $00
    rra                                           ; $5c6e: $1f
    or l                                          ; $5c6f: $b5
    ld a, [de]                                    ; $5c70: $1a
    jr nz, jr_0c7_5c91                            ; $5c71: $20 $1e

    or c                                          ; $5c73: $b1
    ld e, $70                                     ; $5c74: $1e $70
    ld a, [bc]                                    ; $5c76: $0a
    ld d, e                                       ; $5c77: $53
    add hl, bc                                    ; $5c78: $09
    nop                                           ; $5c79: $00
    add d                                         ; $5c7a: $82
    nop                                           ; $5c7b: $00
    ld [$4500], sp                                ; $5c7c: $08 $00 $45
    nop                                           ; $5c7f: $00
    xor l                                         ; $5c80: $ad
    nop                                           ; $5c81: $00
    ld b, b                                       ; $5c82: $40
    rst $20                                       ; $5c83: $e7
    inc b                                         ; $5c84: $04
    nop                                           ; $5c85: $00
    xor l                                         ; $5c86: $ad
    nop                                           ; $5c87: $00
    rst $38                                       ; $5c88: $ff
    nop                                           ; $5c89: $00
    db $f4                                        ; $5c8a: $f4
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    push de                                       ; $5c8d: $d5
    nop                                           ; $5c8e: $00
    rst $18                                       ; $5c8f: $df
    nop                                           ; $5c90: $00

jr_0c7_5c91:
    db $fd                                        ; $5c91: $fd
    nop                                           ; $5c92: $00
    ld d, l                                       ; $5c93: $55
    adc b                                         ; $5c94: $88
    nop                                           ; $5c95: $00
    rst $18                                       ; $5c96: $df
    nop                                           ; $5c97: $00
    ld [hl], l                                    ; $5c98: $75
    adc b                                         ; $5c99: $88
    ld d, a                                       ; $5c9a: $57
    adc b                                         ; $5c9b: $88
    adc b                                         ; $5c9c: $88
    nop                                           ; $5c9d: $00
    nop                                           ; $5c9e: $00
    pop de                                        ; $5c9f: $d1
    nop                                           ; $5ca0: $00
    ret c                                         ; $5ca1: $d8

    nop                                           ; $5ca2: $00
    ld a, c                                       ; $5ca3: $79
    add b                                         ; $5ca4: $80
    db $db                                        ; $5ca5: $db
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    ld a, a                                       ; $5ca8: $7f
    add b                                         ; $5ca9: $80
    ld a, e                                       ; $5caa: $7b
    add b                                         ; $5cab: $80
    ccf                                           ; $5cac: $3f
    ret nz                                        ; $5cad: $c0

    ld b, l                                       ; $5cae: $45
    nop                                           ; $5caf: $00
    ld bc, $0055                                  ; $5cb0: $01 $55 $00
    cpl                                           ; $5cb3: $2f
    nop                                           ; $5cb4: $00
    ld a, e                                       ; $5cb5: $7b
    nop                                           ; $5cb6: $00
    rst $28                                       ; $5cb7: $ef
    inc b                                         ; $5cb8: $04

jr_0c7_5cb9:
    nop                                           ; $5cb9: $00
    ld bc, $006f                                  ; $5cba: $01 $6f $00
    ld a, a                                       ; $5cbd: $7f
    nop                                           ; $5cbe: $00
    sbc e                                         ; $5cbf: $9b
    nop                                           ; $5cc0: $00
    jp c, Jump_000_0004                           ; $5cc1: $da $04 $00

    ld bc, $00de                                  ; $5cc4: $01 $de $00
    db $db                                        ; $5cc7: $db
    nop                                           ; $5cc8: $00
    ld e, [hl]                                    ; $5cc9: $5e
    add c                                         ; $5cca: $81
    ei                                            ; $5ccb: $fb
    inc b                                         ; $5ccc: $04
    nop                                           ; $5ccd: $00
    inc b                                         ; $5cce: $04
    or d                                          ; $5ccf: $b2
    nop                                           ; $5cd0: $00
    or h                                          ; $5cd1: $b4
    nop                                           ; $5cd2: $00
    and d                                         ; $5cd3: $a2
    ld b, [hl]                                    ; $5cd4: $46
    nop                                           ; $5cd5: $00
    rst $30                                       ; $5cd6: $f7
    nop                                           ; $5cd7: $00
    ld b, b                                       ; $5cd8: $40
    cp [hl]                                       ; $5cd9: $be
    inc b                                         ; $5cda: $04
    nop                                           ; $5cdb: $00
    db $dd                                        ; $5cdc: $dd
    jr nz, jr_0c7_5d35                            ; $5cdd: $20 $56

    inc b                                         ; $5cdf: $04
    halt                                          ; $5ce0: $76
    ld [hl-], a                                   ; $5ce1: $32
    nop                                           ; $5ce2: $00
    or c                                          ; $5ce3: $b1
    add hl, sp                                    ; $5ce4: $39
    reti                                          ; $5ce5: $d9


    ld c, c                                       ; $5ce6: $49
    cp a                                          ; $5ce7: $bf
    rra                                           ; $5ce8: $1f
    rst $20                                       ; $5ce9: $e7
    ld b, a                                       ; $5cea: $47
    nop                                           ; $5ceb: $00
    ld e, a                                       ; $5cec: $5f
    sbc a                                         ; $5ced: $9f
    ld e, a                                       ; $5cee: $5f
    sbc a                                         ; $5cef: $9f
    sub e                                         ; $5cf0: $93
    ld d, e                                       ; $5cf1: $53
    sbc b                                         ; $5cf2: $98
    ld e, b                                       ; $5cf3: $58
    nop                                           ; $5cf4: $00
    add l                                         ; $5cf5: $85
    ld b, l                                       ; $5cf6: $45
    sbc a                                         ; $5cf7: $9f
    ld e, a                                       ; $5cf8: $5f
    add c                                         ; $5cf9: $81
    ld b, c                                       ; $5cfa: $41
    add b                                         ; $5cfb: $80
    ld b, b                                       ; $5cfc: $40
    nop                                           ; $5cfd: $00
    xor c                                         ; $5cfe: $a9
    ld l, c                                       ; $5cff: $69
    cp [hl]                                       ; $5d00: $be

Jump_0c7_5d01:
    ld a, [hl]                                    ; $5d01: $7e
    ldh [$c0], a                                  ; $5d02: $e0 $c0
    sbc [hl]                                      ; $5d04: $9e
    adc [hl]                                      ; $5d05: $8e
    nop                                           ; $5d06: $00
    and d                                         ; $5d07: $a2
    xor d                                         ; $5d08: $aa
    dec b                                         ; $5d09: $05
    ld bc, $3033                                  ; $5d0a: $01 $33 $30
    adc d                                         ; $5d0d: $8a
    adc d                                         ; $5d0e: $8a
    nop                                           ; $5d0f: $00
    rst $38                                       ; $5d10: $ff
    nop                                           ; $5d11: $00
    nop                                           ; $5d12: $00
    rst $38                                       ; $5d13: $ff
    ld a, [hl-]                                   ; $5d14: $3a
    ld a, [$fafa]                                 ; $5d15: $fa $fa $fa
    nop                                           ; $5d18: $00
    ld sp, hl                                     ; $5d19: $f9
    ld sp, hl                                     ; $5d1a: $f9
    ei                                            ; $5d1b: $fb
    ei                                            ; $5d1c: $fb
    add sp, -$18                                  ; $5d1d: $e8 $e8
    pop hl                                        ; $5d1f: $e1
    pop hl                                        ; $5d20: $e1
    add b                                         ; $5d21: $80
    db $10                                        ; $5d22: $10
    ld [$bfde], sp                                ; $5d23: $08 $de $bf
    rst $38                                       ; $5d26: $ff
    ld a, [hl]                                    ; $5d27: $7e
    ld a, [$ea7a]                                 ; $5d28: $fa $7a $ea
    nop                                           ; $5d2b: $00
    ld l, d                                       ; $5d2c: $6a
    cp $7e                                        ; $5d2d: $fe $7e
    ld [hl], e                                    ; $5d2f: $73
    di                                            ; $5d30: $f3
    add d                                         ; $5d31: $82
    jp nz, Jump_000_00d4                          ; $5d32: $c2 $d4 $00

jr_0c7_5d35:
    sub h                                         ; $5d35: $94
    adc a                                         ; $5d36: $8f
    db $10                                        ; $5d37: $10
    scf                                           ; $5d38: $37
    cp b                                          ; $5d39: $b8
    add d                                         ; $5d3a: $82
    dec b                                         ; $5d3b: $05
    cp c                                          ; $5d3c: $b9
    inc b                                         ; $5d3d: $04
    ld a, [hl-]                                   ; $5d3e: $3a
    ld h, b                                       ; $5d3f: $60
    ld h, b                                       ; $5d40: $60
    jr jr_0c7_5d5b                                ; $5d41: $18 $18

    jr nc, jr_0c7_5d4d                            ; $5d43: $30 $08

    dec e                                         ; $5d45: $1d
    add l                                         ; $5d46: $85
    nop                                           ; $5d47: $00
    ld b, c                                       ; $5d48: $41
    ld bc, $4808                                  ; $5d49: $01 $08 $48
    ld b, b                                       ; $5d4c: $40

jr_0c7_5d4d:
    add b                                         ; $5d4d: $80
    nop                                           ; $5d4e: $00
    ld b, b                                       ; $5d4f: $40
    nop                                           ; $5d50: $00
    add d                                         ; $5d51: $82
    add d                                         ; $5d52: $82
    ld b, b                                       ; $5d53: $40
    ld b, b                                       ; $5d54: $40
    ld h, b                                       ; $5d55: $60
    sub b                                         ; $5d56: $90
    ld a, [hl-]                                   ; $5d57: $3a
    ld [hl], $00                                  ; $5d58: $36 $00
    adc d                                         ; $5d5a: $8a

jr_0c7_5d5b:
    adc b                                         ; $5d5b: $88
    add b                                         ; $5d5c: $80
    ld bc, $40c0                                  ; $5d5d: $01 $c0 $40
    adc b                                         ; $5d60: $88
    ld [$9c00], sp                                ; $5d61: $08 $00 $9c
    inc e                                         ; $5d64: $1c
    sub b                                         ; $5d65: $90
    db $10                                        ; $5d66: $10
    jp $0343                                      ; $5d67: $c3 $43 $03


    inc bc                                        ; $5d6a: $03
    nop                                           ; $5d6b: $00
    ld b, $06                                     ; $5d6c: $06 $06
    add [hl]                                      ; $5d6e: $86
    add [hl]                                      ; $5d6f: $86
    ld l, h                                       ; $5d70: $6c
    ld l, h                                       ; $5d71: $6c
    inc bc                                        ; $5d72: $03
    inc bc                                        ; $5d73: $03
    nop                                           ; $5d74: $00
    ld a, a                                       ; $5d75: $7f
    inc bc                                        ; $5d76: $03
    db $fc                                        ; $5d77: $fc
    inc bc                                        ; $5d78: $03
    nop                                           ; $5d79: $00
    rst $38                                       ; $5d7a: $ff
    db $fd                                        ; $5d7b: $fd
    cp $08                                        ; $5d7c: $fe $08
    cp l                                          ; $5d7e: $bd
    cp [hl]                                       ; $5d7f: $be
    db $fd                                        ; $5d80: $fd
    cp $02                                        ; $5d81: $fe $02
    ld [$faf9], sp                                ; $5d83: $08 $f9 $fa
    push af                                       ; $5d86: $f5
    nop                                           ; $5d87: $00
    or $e1                                        ; $5d88: $f6 $e1
    ld [c], a                                     ; $5d8a: $e2
    and a                                         ; $5d8b: $a7
    ld c, b                                       ; $5d8c: $48
    db $fd                                        ; $5d8d: $fd

jr_0c7_5d8e:
    nop                                           ; $5d8e: $00
    or a                                          ; $5d8f: $b7
    nop                                           ; $5d90: $00
    ld c, b                                       ; $5d91: $48
    scf                                           ; $5d92: $37
    ret z                                         ; $5d93: $c8

    and a                                         ; $5d94: $a7
    ld e, b                                       ; $5d95: $58
    ld d, $e9                                     ; $5d96: $16 $e9
    inc bc                                        ; $5d98: $03
    nop                                           ; $5d99: $00
    db $fc                                        ; $5d9a: $fc
    nop                                           ; $5d9b: $00
    rst $38                                       ; $5d9c: $ff
    rst $30                                       ; $5d9d: $f7
    ld [$9d62], sp                                ; $5d9e: $08 $62 $9d
    ld [hl], h                                    ; $5da1: $74
    nop                                           ; $5da2: $00
    adc e                                         ; $5da3: $8b
    ld h, c                                       ; $5da4: $61
    sbc [hl]                                      ; $5da5: $9e
    ld d, b                                       ; $5da6: $50
    xor a                                         ; $5da7: $af
    jr nz, @-$1f                                  ; $5da8: $20 $df

    ld d, h                                       ; $5daa: $54
    nop                                           ; $5dab: $00
    xor e                                         ; $5dac: $ab
    jr nz, jr_0c7_5d8e                            ; $5dad: $20 $df

    ld a, e                                       ; $5daf: $7b
    add b                                         ; $5db0: $80
    cpl                                           ; $5db1: $2f
    ret nc                                        ; $5db2: $d0

    rra                                           ; $5db3: $1f
    nop                                           ; $5db4: $00
    ldh [$0b], a                                  ; $5db5: $e0 $0b
    db $f4                                        ; $5db7: $f4
    ld b, l                                       ; $5db8: $45
    cp d                                          ; $5db9: $ba
    ld [bc], a                                    ; $5dba: $02
    db $fd                                        ; $5dbb: $fd
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    rst $38                                       ; $5dbe: $ff
    ld [$fdf7], sp                                ; $5dbf: $08 $f7 $fd
    ld [bc], a                                    ; $5dc2: $02
    ld a, a                                       ; $5dc3: $7f
    nop                                           ; $5dc4: $00
    rst $28                                       ; $5dc5: $ef
    nop                                           ; $5dc6: $00
    db $10                                        ; $5dc7: $10
    ei                                            ; $5dc8: $fb
    inc b                                         ; $5dc9: $04
    db $ed                                        ; $5dca: $ed
    ld [de], a                                    ; $5dcb: $12
    xor e                                         ; $5dcc: $ab
    ld d, h                                       ; $5dcd: $54
    ld c, l                                       ; $5dce: $4d
    nop                                           ; $5dcf: $00
    or d                                          ; $5dd0: $b2
    ld a, [hl+]                                   ; $5dd1: $2a
    push de                                       ; $5dd2: $d5
    cp $01                                        ; $5dd3: $fe $01
    ld a, d                                       ; $5dd5: $7a
    add l                                         ; $5dd6: $85
    ld [hl], h                                    ; $5dd7: $74
    nop                                           ; $5dd8: $00
    adc e                                         ; $5dd9: $8b
    ld l, b                                       ; $5dda: $68
    sub a                                         ; $5ddb: $97
    ld [hl], b                                    ; $5ddc: $70
    adc a                                         ; $5ddd: $8f
    ld h, b                                       ; $5dde: $60
    sbc a                                         ; $5ddf: $9f
    ld d, b                                       ; $5de0: $50
    nop                                           ; $5de1: $00
    xor a                                         ; $5de2: $af
    ld [hl+], a                                   ; $5de3: $22
    rst $18                                       ; $5de4: $df
    xor a                                         ; $5de5: $af
    ld d, b                                       ; $5de6: $50
    ld d, a                                       ; $5de7: $57
    xor b                                         ; $5de8: $a8
    adc a                                         ; $5de9: $8f
    nop                                           ; $5dea: $00
    ld [hl], b                                    ; $5deb: $70
    rlca                                          ; $5dec: $07
    ld hl, sp+$0b                                 ; $5ded: $f8 $0b
    db $f4                                        ; $5def: $f4
    dec d                                         ; $5df0: $15
    ld [$000a], a                                 ; $5df1: $ea $0a $00
    push af                                       ; $5df4: $f5
    ld bc, $8dfe                                  ; $5df5: $01 $fe $8d
    ld c, l                                       ; $5df8: $4d
    cp a                                          ; $5df9: $bf
    ld a, a                                       ; $5dfa: $7f
    sub a                                         ; $5dfb: $97
    ld bc, $9f57                                  ; $5dfc: $01 $57 $9f
    ld e, a                                       ; $5dff: $5f
    cp e                                          ; $5e00: $bb
    ld a, e                                       ; $5e01: $7b
    ccf                                           ; $5e02: $3f
    rst $38                                       ; $5e03: $ff
    ldh [$08], a                                  ; $5e04: $e0 $08
    nop                                           ; $5e06: $00
    ld h, b                                       ; $5e07: $60
    db $10                                        ; $5e08: $10
    add d                                         ; $5e09: $82
    ld b, d                                       ; $5e0a: $42
    add h                                         ; $5e0b: $84
    add h                                         ; $5e0c: $84
    inc b                                         ; $5e0d: $04
    inc b                                         ; $5e0e: $04
    ld [$0000], sp                                ; $5e0f: $08 $00 $00
    db $10                                        ; $5e12: $10
    db $10                                        ; $5e13: $10
    ldh a, [$08]                                  ; $5e14: $f0 $08
    nop                                           ; $5e16: $00
    nop                                           ; $5e17: $00
    ld hl, $2200                                  ; $5e18: $21 $00 $22
    ld e, b                                       ; $5e1b: $58
    and [hl]                                      ; $5e1c: $a6
    ret z                                         ; $5e1d: $c8

    ret z                                         ; $5e1e: $c8

    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    inc b                                         ; $5e21: $04
    ld b, b                                       ; $5e22: $40
    inc b                                         ; $5e23: $04
    nop                                           ; $5e24: $00
    add hl, bc                                    ; $5e25: $09
    add b                                         ; $5e26: $80
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    add b                                         ; $5e29: $80
    swap h                                        ; $5e2a: $cb $34
    ld [$8404], sp                                ; $5e2c: $08 $04 $84
    xor b                                         ; $5e2f: $a8
    jr z, @+$1f                                   ; $5e30: $28 $1d

    db $10                                        ; $5e32: $10
    rst $38                                       ; $5e33: $ff
    add hl, bc                                    ; $5e34: $09
    add hl, bc                                    ; $5e35: $09
    nop                                           ; $5e36: $00
    ld b, [hl]                                    ; $5e37: $46
    ld b, [hl]                                    ; $5e38: $46
    rlca                                          ; $5e39: $07
    rlca                                          ; $5e3a: $07
    ld e, e                                       ; $5e3b: $5b
    ld e, e                                       ; $5e3c: $5b
    ld e, $1e                                     ; $5e3d: $1e $1e
    nop                                           ; $5e3f: $00
    adc e                                         ; $5e40: $8b
    adc e                                         ; $5e41: $8b
    rla                                           ; $5e42: $17
    rla                                           ; $5e43: $17
    ccf                                           ; $5e44: $3f
    ccf                                           ; $5e45: $3f
    ld [bc], a                                    ; $5e46: $02
    ld [bc], a                                    ; $5e47: $02
    ld b, b                                       ; $5e48: $40
    nop                                           ; $5e49: $00
    ld bc, $0110                                  ; $5e4a: $01 $10 $01
    ld hl, $8040                                  ; $5e4d: $21 $40 $80
    db $10                                        ; $5e50: $10
    db $10                                        ; $5e51: $10
    ret nz                                        ; $5e52: $c0

    ld c, $28                                     ; $5e53: $0e $28
    inc d                                         ; $5e55: $14
    jr @+$04                                      ; $5e56: $18 $02

    ld bc, $100c                                  ; $5e58: $01 $0c $10
    add b                                         ; $5e5b: $80
    add b                                         ; $5e5c: $80
    nop                                           ; $5e5d: $00
    ld bc, $4001                                  ; $5e5e: $01 $01 $40
    ld b, b                                       ; $5e61: $40
    ld hl, $2421                                  ; $5e62: $21 $21 $24
    inc h                                         ; $5e65: $24
    inc c                                         ; $5e66: $0c
    add hl, bc                                    ; $5e67: $09
    add hl, bc                                    ; $5e68: $09
    ld [$5108], sp                                ; $5e69: $08 $08 $51
    ld bc, $3001                                  ; $5e6c: $01 $01 $30
    cp $fe                                        ; $5e6f: $fe $fe
    add b                                         ; $5e71: $80
    ld h, b                                       ; $5e72: $60
    add hl, bc                                    ; $5e73: $09
    push af                                       ; $5e74: $f5
    or $d5                                        ; $5e75: $f6 $d5
    sub $29                                       ; $5e77: $d6 $29
    ld a, [hl+]                                   ; $5e79: $2a
    pop af                                        ; $5e7a: $f1
    inc b                                         ; $5e7b: $04
    ld a, [c]                                     ; $5e7c: $f2
    add l                                         ; $5e7d: $85
    add [hl]                                      ; $5e7e: $86
    sub b                                         ; $5e7f: $90
    sub e                                         ; $5e80: $93
    ld [hl], b                                    ; $5e81: $70
    add hl, bc                                    ; $5e82: $09
    ld bc, $01fe                                  ; $5e83: $01 $fe $01
    nop                                           ; $5e86: $00
    rst $38                                       ; $5e87: $ff
    inc h                                         ; $5e88: $24
    rst $38                                       ; $5e89: $ff
    adc b                                         ; $5e8a: $88
    rst $38                                       ; $5e8b: $ff
    ld d, h                                       ; $5e8c: $54
    add hl, hl                                    ; $5e8d: $29
    nop                                           ; $5e8e: $00
    ld b, d                                       ; $5e8f: $42
    or [hl]                                       ; $5e90: $b6
    dec l                                         ; $5e91: $2d
    nop                                           ; $5e92: $00
    ld b, b                                       ; $5e93: $40
    cp a                                          ; $5e94: $bf
    ld [bc], a                                    ; $5e95: $02
    rst $38                                       ; $5e96: $ff
    adc c                                         ; $5e97: $89
    nop                                           ; $5e98: $00
    rst $38                                       ; $5e99: $ff
    inc b                                         ; $5e9a: $04
    xor l                                         ; $5e9b: $ad
    rst $38                                       ; $5e9c: $ff
    ld e, e                                       ; $5e9d: $5b
    rst $38                                       ; $5e9e: $ff
    sub a                                         ; $5e9f: $97
    dec a                                         ; $5ea0: $3d
    nop                                           ; $5ea1: $00
    nop                                           ; $5ea2: $00
    rst $38                                       ; $5ea3: $ff
    nop                                           ; $5ea4: $00
    db $10                                        ; $5ea5: $10
    rst $38                                       ; $5ea6: $ff
    ld [bc], a                                    ; $5ea7: $02
    rst $38                                       ; $5ea8: $ff
    and h                                         ; $5ea9: $a4
    rst $38                                       ; $5eaa: $ff
    add hl, bc                                    ; $5eab: $09
    rst $38                                       ; $5eac: $ff
    ld [de], a                                    ; $5ead: $12
    jp c, Jump_0c7_7fff                           ; $5eae: $da $ff $7f

    ld c, l                                       ; $5eb1: $4d
    nop                                           ; $5eb2: $00
    inc b                                         ; $5eb3: $04
    ei                                            ; $5eb4: $fb
    ld [de], a                                    ; $5eb5: $12
    jr jr_0c7_5f08                                ; $5eb6: $18 $50

    inc c                                         ; $5eb8: $0c
    rst $38                                       ; $5eb9: $ff
    push bc                                       ; $5eba: $c5
    rst $38                                       ; $5ebb: $ff
    or $30                                        ; $5ebc: $f6 $30
    db $10                                        ; $5ebe: $10
    ld l, $08                                     ; $5ebf: $2e $08
    ld [de], a                                    ; $5ec1: $12
    rst $38                                       ; $5ec2: $ff
    inc b                                         ; $5ec3: $04
    xor b                                         ; $5ec4: $a8
    rst $38                                       ; $5ec5: $ff
    ld e, a                                       ; $5ec6: $5f
    rst $38                                       ; $5ec7: $ff
    xor a                                         ; $5ec8: $af
    jr nc, @+$12                                  ; $5ec9: $30 $10

    jr nz, @+$01                                  ; $5ecb: $20 $ff

    ld b, l                                       ; $5ecd: $45
    add b                                         ; $5ece: $80
    inc [hl]                                      ; $5ecf: $34
    nop                                           ; $5ed0: $00
    xor c                                         ; $5ed1: $a9
    rst $38                                       ; $5ed2: $ff
    push de                                       ; $5ed3: $d5
    ld a, e                                       ; $5ed4: $7b
    jr nz, @+$4b                                  ; $5ed5: $20 $49

    jr nc, jr_0c7_5f29                            ; $5ed7: $30 $50

    ld de, $ffff                                  ; $5ed9: $11 $ff $ff
    ld b, l                                       ; $5edc: $45
    jr nc, jr_0c7_5f2f                            ; $5edd: $30 $50

    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    add hl, hl                                    ; $5ee1: $29
    jr nc, jr_0c7_5f34                            ; $5ee2: $30 $50

    nop                                           ; $5ee4: $00
    ld d, [hl]                                    ; $5ee5: $56
    add hl, hl                                    ; $5ee6: $29
    push de                                       ; $5ee7: $d5
    ld l, d                                       ; $5ee8: $6a
    add hl, hl                                    ; $5ee9: $29
    sub $c0                                       ; $5eea: $d6 $c0
    ld a, a                                       ; $5eec: $7f
    inc b                                         ; $5eed: $04
    ld d, c                                       ; $5eee: $51
    cp $e8                                        ; $5eef: $fe $e8
    ld a, a                                       ; $5ef1: $7f
    xor b                                         ; $5ef2: $a8
    ld h, d                                       ; $5ef3: $62
    nop                                           ; $5ef4: $00
    xor $11                                       ; $5ef5: $ee $11
    nop                                           ; $5ef7: $00
    db $f4                                        ; $5ef8: $f4
    dec bc                                        ; $5ef9: $0b
    ld c, c                                       ; $5efa: $49
    or a                                          ; $5efb: $b7
    add b                                         ; $5efc: $80
    ld a, a                                       ; $5efd: $7f
    ld b, l                                       ; $5efe: $45
    cp a                                          ; $5eff: $bf

Jump_0c7_5f00:
    nop                                           ; $5f00: $00
    ld a, [bc]                                    ; $5f01: $0a
    rst $38                                       ; $5f02: $ff
    ld e, l                                       ; $5f03: $5d
    cp $ae                                        ; $5f04: $fe $ae
    rst $38                                       ; $5f06: $ff
    xor l                                         ; $5f07: $ad

jr_0c7_5f08:
    jp Jump_0c7_6300                              ; $5f08: $c3 $00 $63


    adc a                                         ; $5f0b: $8f
    jp c, $6f07                                   ; $5f0c: $da $07 $6f

    add d                                         ; $5f0f: $82
    cp d                                          ; $5f10: $ba
    ld b, a                                       ; $5f11: $47
    nop                                           ; $5f12: $00
    dec [hl]                                      ; $5f13: $35
    jp z, $cf34                                   ; $5f14: $ca $34 $cf

    sub h                                         ; $5f17: $94
    ld a, a                                       ; $5f18: $7f
    xor a                                         ; $5f19: $af
    ldh a, [rP1]                                  ; $5f1a: $f0 $00
    jp c, Jump_0c7_4fe1                           ; $5f1c: $da $e1 $4f

    ldh a, [$5f]                                  ; $5f1f: $f0 $5f
    ldh [rRP], a                                  ; $5f21: $e0 $56
    jp hl                                         ; $5f23: $e9


    nop                                           ; $5f24: $00
    dec bc                                        ; $5f25: $0b
    db $f4                                        ; $5f26: $f4
    ld d, e                                       ; $5f27: $53
    db $ec                                        ; $5f28: $ec

jr_0c7_5f29:
    ld b, $f9                                     ; $5f29: $06 $f9
    rst $30                                       ; $5f2b: $f7
    inc b                                         ; $5f2c: $04
    nop                                           ; $5f2d: $00
    xor a                                         ; $5f2e: $af

jr_0c7_5f2f:
    inc b                                         ; $5f2f: $04
    ld sp, hl                                     ; $5f30: $f9
    ld b, $be                                     ; $5f31: $06 $be
    ld b, l                                       ; $5f33: $45

jr_0c7_5f34:
    db $fd                                        ; $5f34: $fd
    ld b, $00                                     ; $5f35: $06 $00
    xor $17                                       ; $5f37: $ee $17
    ld a, a                                       ; $5f39: $7f
    adc a                                         ; $5f3a: $8f
    ldh [$1f], a                                  ; $5f3b: $e0 $1f
    rst $30                                       ; $5f3d: $f7
    ccf                                           ; $5f3e: $3f
    nop                                           ; $5f3f: $00
    jp z, $d67f                                   ; $5f40: $ca $7f $d6

    ld h, c                                       ; $5f43: $61
    and e                                         ; $5f44: $a3
    ld b, b                                       ; $5f45: $40
    ld b, c                                       ; $5f46: $41
    ret nz                                        ; $5f47: $c0

    nop                                           ; $5f48: $00
    or b                                          ; $5f49: $b0
    ret nz                                        ; $5f4a: $c0

    db $ed                                        ; $5f4b: $ed
    add c                                         ; $5f4c: $81
    ld a, $c1                                     ; $5f4d: $3e $c1
    ld a, [$0081]                                 ; $5f4f: $fa $81 $00
    or $83                                        ; $5f52: $f6 $83
    add sp, -$79                                  ; $5f54: $e8 $87
    halt                                          ; $5f56: $76
    add e                                         ; $5f57: $83
    ei                                            ; $5f58: $fb
    add a                                         ; $5f59: $87
    nop                                           ; $5f5a: $00
    ld [hl], $c3                                  ; $5f5b: $36 $c3
    ld e, e                                       ; $5f5d: $5b
    and a                                         ; $5f5e: $a7
    and e                                         ; $5f5f: $a3
    ld e, a                                       ; $5f60: $5f
    dec sp                                        ; $5f61: $3b
    call nz, $4f00                                ; $5f62: $c4 $00 $4f
    or b                                          ; $5f65: $b0
    sub h                                         ; $5f66: $94
    ld l, e                                       ; $5f67: $6b
    ld a, [bc]                                    ; $5f68: $0a
    push af                                       ; $5f69: $f5
    ld d, h                                       ; $5f6a: $54
    db $eb                                        ; $5f6b: $eb
    nop                                           ; $5f6c: $00
    and b                                         ; $5f6d: $a0
    rst $38                                       ; $5f6e: $ff
    ld h, l                                       ; $5f6f: $65
    ei                                            ; $5f70: $fb
    sub $ff                                       ; $5f71: $d6 $ff
    ld [hl], l                                    ; $5f73: $75
    adc [hl]                                      ; $5f74: $8e
    nop                                           ; $5f75: $00
    jp nc, $a72c                                  ; $5f76: $d2 $2c $a7

    ld e, h                                       ; $5f79: $5c
    ld b, e                                       ; $5f7a: $43
    cp h                                          ; $5f7b: $bc
    dec d                                         ; $5f7c: $15
    cp $00                                        ; $5f7d: $fe $00
    ld a, [hl+]                                   ; $5f7f: $2a
    db $fd                                        ; $5f80: $fd
    ld e, l                                       ; $5f81: $5d
    ld a, [$fdaa]                                 ; $5f82: $fa $aa $fd
    push hl                                       ; $5f85: $e5
    rra                                           ; $5f86: $1f
    nop                                           ; $5f87: $00
    sbc a                                         ; $5f88: $9f
    ccf                                           ; $5f89: $3f
    ld c, c                                       ; $5f8a: $49
    ccf                                           ; $5f8b: $3f
    or l                                          ; $5f8c: $b5
    dec de                                        ; $5f8d: $1b
    reti                                          ; $5f8e: $d9


    scf                                           ; $5f8f: $37
    nop                                           ; $5f90: $00
    call nz, Call_0c7_513b                        ; $5f91: $c4 $3b $51
    cp a                                          ; $5f94: $bf
    jp nc, Jump_0c7_7f7d                          ; $5f95: $d2 $7d $7f

    add b                                         ; $5f98: $80
    nop                                           ; $5f99: $00
    and $08                                       ; $5f9a: $e6 $08
    cp a                                          ; $5f9c: $bf
    ld b, b                                       ; $5f9d: $40
    cp $01                                        ; $5f9e: $fe $01
    push de                                       ; $5fa0: $d5
    jr z, jr_0c7_5fa3                             ; $5fa1: $28 $00

jr_0c7_5fa3:
    ld l, a                                       ; $5fa3: $6f
    sub b                                         ; $5fa4: $90
    ld d, l                                       ; $5fa5: $55
    xor d                                         ; $5fa6: $aa
    dec hl                                        ; $5fa7: $2b
    db $d4, $bf, $11                              ; $5fa8: $d4 $bf $11
    nop                                           ; $5fab: $00
    rst $28                                       ; $5fac: $ef
    ld sp, $39c7                                  ; $5fad: $31 $c7 $39
    ld [$d535], a                                 ; $5fb0: $ea $35 $d5
    dec sp                                        ; $5fb3: $3b
    nop                                           ; $5fb4: $00
    sbc d                                         ; $5fb5: $9a
    ld a, a                                       ; $5fb6: $7f
    rst $38                                       ; $5fb7: $ff
    ccf                                           ; $5fb8: $3f
    pop bc                                        ; $5fb9: $c1
    ccf                                           ; $5fba: $3f
    call c, Call_000_0023                         ; $5fbb: $dc $23 $00
    ld a, [c]                                     ; $5fbe: $f2
    dec c                                         ; $5fbf: $0d
    add hl, hl                                    ; $5fc0: $29
    sub $50                                       ; $5fc1: $d6 $50
    xor a                                         ; $5fc3: $af
    ld a, [hl+]                                   ; $5fc4: $2a
    rst $10                                       ; $5fc5: $d7
    nop                                           ; $5fc6: $00
    dec b                                         ; $5fc7: $05
    rst $38                                       ; $5fc8: $ff
    and [hl]                                      ; $5fc9: $a6
    rst $18                                       ; $5fca: $df
    db $eb                                        ; $5fcb: $eb

jr_0c7_5fcc:
    rst $38                                       ; $5fcc: $ff
    cp $ff                                        ; $5fcd: $fe $ff
    nop                                           ; $5fcf: $00
    and a                                         ; $5fd0: $a7
    cp $d5                                        ; $5fd1: $fe $d5
    xor $c6                                       ; $5fd3: $ee $c6
    cp b                                          ; $5fd5: $b8
    dec de                                        ; $5fd6: $1b
    db $fc                                        ; $5fd7: $fc
    nop                                           ; $5fd8: $00
    ld c, [hl]                                    ; $5fd9: $4e
    cp b                                          ; $5fda: $b8
    rla                                           ; $5fdb: $17
    ld hl, sp-$21                                 ; $5fdc: $f8 $df
    ld hl, sp-$05                                 ; $5fde: $f8 $fb
    rst $38                                       ; $5fe0: $ff
    nop                                           ; $5fe1: $00
    jp z, Jump_000_2a3f                           ; $5fe2: $ca $3f $2a

    rra                                           ; $5fe5: $1f
    ld l, a                                       ; $5fe6: $6f
    jr jr_0c7_6016                                ; $5fe7: $18 $2d

    jr jr_0c7_5fec                                ; $5fe9: $18 $01

    and e                                         ; $5feb: $a3

jr_0c7_5fec:
    inc e                                         ; $5fec: $1c
    ld e, a                                       ; $5fed: $5f
    ld [$0db2], sp                                ; $5fee: $08 $b2 $0d
    jr z, jr_0c7_6015                             ; $5ff1: $28 $22

    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    and [hl]                                      ; $5ff5: $a6
    ld a, c                                       ; $5ff6: $79
    ld b, c                                       ; $5ff7: $41
    jr nz, jr_0c7_603a                            ; $5ff8: $20 $40

    jr nz, jr_0c7_5fcc                            ; $5ffa: $20 $d0

    jr nz, jr_0c7_5ffe                            ; $5ffc: $20 $00

jr_0c7_5ffe:
    jp z, $9520                                   ; $5ffe: $ca $20 $95

    ld h, b                                       ; $6001: $60
    ld d, e                                       ; $6002: $53
    db $ec                                        ; $6003: $ec
    ld h, l                                       ; $6004: $65
    ld a, [$d200]                                 ; $6005: $fa $00 $d2
    db $fd                                        ; $6008: $fd
    ret nc                                        ; $6009: $d0

    rst $38                                       ; $600a: $ff
    add sp, $7f                                   ; $600b: $e8 $7f
    ld a, $7f                                     ; $600d: $3e $7f
    nop                                           ; $600f: $00
    rst $00                                       ; $6010: $c7
    ld a, a                                       ; $6011: $7f
    sub l                                         ; $6012: $95
    ld h, e                                       ; $6013: $63
    adc e                                         ; $6014: $8b

jr_0c7_6015:
    ld a, h                                       ; $6015: $7c

jr_0c7_6016:
    ld b, h                                       ; $6016: $44
    cp a                                          ; $6017: $bf
    nop                                           ; $6018: $00
    adc l                                         ; $6019: $8d
    ld a, a                                       ; $601a: $7f
    adc l                                         ; $601b: $8d
    ld a, a                                       ; $601c: $7f
    rra                                           ; $601d: $1f
    rst $38                                       ; $601e: $ff
    xor d                                         ; $601f: $aa
    rst $38                                       ; $6020: $ff
    nop                                           ; $6021: $00
    cp $f3                                        ; $6022: $fe $f3
    ld a, [hl-]                                   ; $6024: $3a
    jp $a9d5                                      ; $6025: $c3 $d5 $a9


    xor d                                         ; $6028: $aa
    push de                                       ; $6029: $d5
    nop                                           ; $602a: $00
    db $d3                                        ; $602b: $d3
    db $fd                                        ; $602c: $fd
    rst $30                                       ; $602d: $f7
    rst $38                                       ; $602e: $ff

Call_0c7_602f:
    dec d                                         ; $602f: $15
    db $eb                                        ; $6030: $eb
    ld a, [hl]                                    ; $6031: $7e
    add c                                         ; $6032: $81
    nop                                           ; $6033: $00
    ld [c], a                                     ; $6034: $e2
    ld bc, $00e1                                  ; $6035: $01 $e1 $00
    ld b, e                                       ; $6038: $43
    cp a                                          ; $6039: $bf

jr_0c7_603a:
    rlca                                          ; $603a: $07
    rst $38                                       ; $603b: $ff
    nop                                           ; $603c: $00
    ld [hl+], a                                   ; $603d: $22
    rst $18                                       ; $603e: $df
    and a                                         ; $603f: $a7
    rst $18                                       ; $6040: $df
    xor d                                         ; $6041: $aa
    rst $38                                       ; $6042: $ff
    call nz, $00fb                                ; $6043: $c4 $fb $00
    and [hl]                                      ; $6046: $a6
    jp $8345                                      ; $6047: $c3 $45 $83


    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    ld e, e                                       ; $604c: $5b
    db $fc                                        ; $604d: $fc
    nop                                           ; $604e: $00
    sub [hl]                                      ; $604f: $96
    ld hl, sp-$74                                 ; $6050: $f8 $8c
    ld [hl], b                                    ; $6052: $70
    ld [hl], $f8                                  ; $6053: $36 $f8
    sbc l                                         ; $6055: $9d
    ld [hl], b                                    ; $6056: $70
    nop                                           ; $6057: $00
    ld l, $f0                                     ; $6058: $2e $f0
    cp a                                          ; $605a: $bf
    ldh a, [$fc]                                  ; $605b: $f0 $fc
    rst $38                                       ; $605d: $ff
    ld a, [hl+]                                   ; $605e: $2a
    rst $38                                       ; $605f: $ff
    nop                                           ; $6060: $00
    xor e                                         ; $6061: $ab
    ld a, h                                       ; $6062: $7c
    sbc $30                                       ; $6063: $de $30
    ld e, d                                       ; $6065: $5a
    jr nc, @+$49                                  ; $6066: $30 $47

    jr c, jr_0c7_606a                             ; $6068: $38 $00

jr_0c7_606a:
    cp a                                          ; $606a: $bf
    db $10                                        ; $606b: $10
    ld h, l                                       ; $606c: $65
    ld a, [de]                                    ; $606d: $1a
    ld h, c                                       ; $606e: $61
    rst $38                                       ; $606f: $ff
    ld sp, hl                                     ; $6070: $f9
    rst $38                                       ; $6071: $ff
    nop                                           ; $6072: $00
    ld e, c                                       ; $6073: $59
    rst $20                                       ; $6074: $e7
    add e                                         ; $6075: $83
    ld b, c                                       ; $6076: $41
    add c                                         ; $6077: $81
    ld b, b                                       ; $6078: $40
    and b                                         ; $6079: $a0
    ld b, b                                       ; $607a: $40
    nop                                           ; $607b: $00
    sub l                                         ; $607c: $95
    ld b, b                                       ; $607d: $40
    dec hl                                        ; $607e: $2b
    ret nz                                        ; $607f: $c0

    ld d, [hl]                                    ; $6080: $56
    xor c                                         ; $6081: $a9
    xor c                                         ; $6082: $a9
    sub $00                                       ; $6083: $d6 $00
    ld b, d                                       ; $6085: $42
    db $fd                                        ; $6086: $fd
    and c                                         ; $6087: $a1
    cp $d0                                        ; $6088: $fe $d0
    rst $38                                       ; $608a: $ff
    ld a, l                                       ; $608b: $7d
    rst $38                                       ; $608c: $ff
    nop                                           ; $608d: $00
    adc a                                         ; $608e: $8f
    rst $38                                       ; $608f: $ff
    ld a, [hl+]                                   ; $6090: $2a
    rst $00                                       ; $6091: $c7
    xor l                                         ; $6092: $ad
    ld [hl], e                                    ; $6093: $73
    ld d, d                                       ; $6094: $52
    cp a                                          ; $6095: $bf
    nop                                           ; $6096: $00
    or [hl]                                       ; $6097: $b6
    ld a, a                                       ; $6098: $7f
    dec de                                        ; $6099: $1b
    cp $3f                                        ; $609a: $fe $3f
    cp $55                                        ; $609c: $fe $55
    cp $00                                        ; $609e: $fe $00
    db $fd                                        ; $60a0: $fd

Call_0c7_60a1:
    and $75                                       ; $60a1: $e6 $75
    add [hl]                                      ; $60a3: $86
    ld c, e                                       ; $60a4: $4b
    db $f4                                        ; $60a5: $f4
    rst $30                                       ; $60a6: $f7
    ld hl, sp+$00                                 ; $60a7: $f8 $00
    adc e                                         ; $60a9: $8b
    ld [hl], h                                    ; $60aa: $74
    ld d, a                                       ; $60ab: $57
    jr c, jr_0c7_6117                             ; $60ac: $38 $69

    ld d, $63                                     ; $60ae: $16 $63
    inc a                                         ; $60b0: $3c
    nop                                           ; $60b1: $00
    and h                                         ; $60b2: $a4
    ld a, e                                       ; $60b3: $7b
    cp c                                          ; $60b4: $b9
    halt                                          ; $60b5: $76
    or d                                          ; $60b6: $b2
    dec e                                         ; $60b7: $1d
    ldh a, [$1f]                                  ; $60b8: $f0 $1f
    nop                                           ; $60ba: $00
    ld l, h                                       ; $60bb: $6c
    rra                                           ; $60bc: $1f
    jp c, $ef3f                                   ; $60bd: $da $3f $ef

    rra                                           ; $60c0: $1f
    or b                                          ; $60c1: $b0
    ld a, a                                       ; $60c2: $7f
    nop                                           ; $60c3: $00
    db $e3                                        ; $60c4: $e3
    inc a                                         ; $60c5: $3c
    add hl, hl                                    ; $60c6: $29
    or $2d                                        ; $60c7: $f6 $2d
    ret nc                                        ; $60c9: $d0

    ld c, e                                       ; $60ca: $4b
    db $f4                                        ; $60cb: $f4
    nop                                           ; $60cc: $00
    jp Jump_0c7_53ff                              ; $60cd: $c3 $ff $53


    db $fc                                        ; $60d0: $fc
    db $f4                                        ; $60d1: $f4
    ld hl, sp+$78                                 ; $60d2: $f8 $78
    ldh a, [rP1]                                  ; $60d4: $f0 $00
    ld a, [de]                                    ; $60d6: $1a
    ldh a, [$8d]                                  ; $60d7: $f0 $8d
    ld [hl], b                                    ; $60d9: $70
    db $e4                                        ; $60da: $e4
    ld b, e                                       ; $60db: $43
    ld e, d                                       ; $60dc: $5a
    rst $20                                       ; $60dd: $e7
    nop                                           ; $60de: $00
    ld [hl], l                                    ; $60df: $75
    rst $38                                       ; $60e0: $ff
    ei                                            ; $60e1: $fb
    rrca                                          ; $60e2: $0f
    sbc a                                         ; $60e3: $9f
    rlca                                          ; $60e4: $07
    dec c                                         ; $60e5: $0d
    ld c, $00                                     ; $60e6: $0e $00
    add d                                         ; $60e8: $82
    inc c                                         ; $60e9: $0c
    ld c, h                                       ; $60ea: $4c
    ld [$02d7], sp                                ; $60eb: $08 $d7 $02
    dec sp                                        ; $60ee: $3b
    add $00                                       ; $60ef: $c6 $00
    ld d, d                                       ; $60f1: $52
    xor a                                         ; $60f2: $af
    cp $ff                                        ; $60f3: $fe $ff
    sub $ff                                       ; $60f5: $d6 $ff
    and [hl]                                      ; $60f7: $a6
    ld e, a                                       ; $60f8: $5f
    nop                                           ; $60f9: $00
    db $10                                        ; $60fa: $10
    rrca                                          ; $60fb: $0f
    dec c                                         ; $60fc: $0d
    rlca                                          ; $60fd: $07
    ld d, d                                       ; $60fe: $52
    ld bc, $01e8                                  ; $60ff: $01 $e8 $01
    ld b, b                                       ; $6102: $40
    rst $30                                       ; $6103: $f7
    ld l, b                                       ; $6104: $68
    inc b                                         ; $6105: $04
    ld a, a                                       ; $6106: $7f
    add b                                         ; $6107: $80
    sub [hl]                                      ; $6108: $96
    ld l, c                                       ; $6109: $69
    ld [$00f7], sp                                ; $610a: $08 $f7 $00
    ld bc, $c5ff                                  ; $610d: $01 $ff $c5
    adc a                                         ; $6110: $8f
    cp a                                          ; $6111: $bf
    rst $08                                       ; $6112: $cf
    db $eb                                        ; $6113: $eb
    db $fc                                        ; $6114: $fc
    nop                                           ; $6115: $00
    inc c                                         ; $6116: $0c

jr_0c7_6117:
    ld hl, sp-$6f                                 ; $6117: $f8 $91
    ld hl, sp+$2e                                 ; $6119: $f8 $2e
    ldh a, [$8f]                                  ; $611b: $f0 $8f
    ldh a, [rP1]                                  ; $611d: $f0 $00
    dec sp                                        ; $611f: $3b
    db $f4                                        ; $6120: $f4
    ld b, a                                       ; $6121: $47
    ld hl, sp-$03                                 ; $6122: $f8 $fd
    ldh a, [$87]                                  ; $6124: $f0 $87
    ld a, b                                       ; $6126: $78
    nop                                           ; $6127: $00
    ld e, a                                       ; $6128: $5f
    jr nc, @+$67                                  ; $6129: $30 $65

    ld a, [de]                                    ; $612b: $1a
    db $e3                                        ; $612c: $e3
    inc a                                         ; $612d: $3c
    dec h                                         ; $612e: $25
    ld a, d                                       ; $612f: $7a
    nop                                           ; $6130: $00
    cp d                                          ; $6131: $ba
    ld [hl], l                                    ; $6132: $75
    and d                                         ; $6133: $a2
    dec a                                         ; $6134: $3d
    ldh [$3f], a                                  ; $6135: $e0 $3f
    ld d, h                                       ; $6137: $54
    ccf                                           ; $6138: $3f
    nop                                           ; $6139: $00
    ld a, [$df3f]                                 ; $613a: $fa $3f $df
    ccf                                           ; $613d: $3f
    or b                                          ; $613e: $b0
    ld a, a                                       ; $613f: $7f
    ld h, l                                       ; $6140: $65
    cp d                                          ; $6141: $ba
    nop                                           ; $6142: $00
    ld a, [hl+]                                   ; $6143: $2a
    push af                                       ; $6144: $f5
    ld e, l                                       ; $6145: $5d
    and b                                         ; $6146: $a0
    xor d                                         ; $6147: $aa
    push de                                       ; $6148: $d5
    add e                                         ; $6149: $83
    rst $38                                       ; $614a: $ff
    db $10                                        ; $614b: $10
    sub e                                         ; $614c: $93
    db $fc                                        ; $614d: $fc
    push af                                       ; $614e: $f5
    ld [hl], b                                    ; $614f: $70
    nop                                           ; $6150: $00
    dec e                                         ; $6151: $1d
    ldh a, [$8f]                                  ; $6152: $f0 $8f
    ld [hl], b                                    ; $6154: $70
    inc b                                         ; $6155: $04
    push bc                                       ; $6156: $c5
    add d                                         ; $6157: $82
    cp d                                          ; $6158: $ba
    rst $00                                       ; $6159: $c7
    or [hl]                                       ; $615a: $b6
    ld [hl], b                                    ; $615b: $70
    nop                                           ; $615c: $00
    rra                                           ; $615d: $1f
    rlca                                          ; $615e: $07
    nop                                           ; $615f: $00
    rrca                                          ; $6160: $0f
    ld b, $88                                     ; $6161: $06 $88
    ld b, $4e                                     ; $6163: $06 $4e
    inc b                                         ; $6165: $04
    ld e, a                                       ; $6166: $5f
    inc b                                         ; $6167: $04
    nop                                           ; $6168: $00
    or a                                          ; $6169: $b7
    ld c, h                                       ; $616a: $4c
    ld d, l                                       ; $616b: $55
    xor [hl]                                      ; $616c: $ae
    ld a, h                                       ; $616d: $7c
    rst $38                                       ; $616e: $ff
    db $dd                                        ; $616f: $dd
    cp $00                                        ; $6170: $fe $00
    xor d                                         ; $6172: $aa
    ld d, a                                       ; $6173: $57
    jr @+$09                                      ; $6174: $18 $07

    rlca                                          ; $6176: $07
    inc bc                                        ; $6177: $03
    ld h, h                                       ; $6178: $64
    ei                                            ; $6179: $fb
    db $10                                        ; $617a: $10
    or l                                          ; $617b: $b5
    cp $f0                                        ; $617c: $fe $f0
    cp d                                          ; $617e: $ba
    ld [bc], a                                    ; $617f: $02
    reti                                          ; $6180: $d9


    ccf                                           ; $6181: $3f
    pop hl                                        ; $6182: $e1
    stop                                          ; $6183: $10 $00
    call z, $2730                                 ; $6185: $cc $30 $27
    ld sp, hl                                     ; $6188: $f9
    and d                                         ; $6189: $a2
    ld a, l                                       ; $618a: $7d
    add hl, hl                                    ; $618b: $29
    cp $00                                        ; $618c: $fe $00
    pop bc                                        ; $618e: $c1
    cp $80                                        ; $618f: $fe $80
    rst $38                                       ; $6191: $ff
    adc d                                         ; $6192: $8a
    rst $38                                       ; $6193: $ff
    and b                                         ; $6194: $a0
    rst $38                                       ; $6195: $ff
    ld b, b                                       ; $6196: $40
    ret nz                                        ; $6197: $c0

    call nz, $d602                                ; $6198: $c4 $02 $d6
    jr c, @+$51                                   ; $619b: $38 $4f

    or b                                          ; $619d: $b0
    dec hl                                        ; $619e: $2b
    db $f4                                        ; $619f: $f4
    nop                                           ; $61a0: $00
    rlca                                          ; $61a1: $07
    ld hl, sp+$39                                 ; $61a2: $f8 $39
    or $a4                                        ; $61a4: $f6 $a4
    ei                                            ; $61a6: $fb
    dec [hl]                                      ; $61a7: $35
    cp $00                                        ; $61a8: $fe $00
    ld [hl], d                                    ; $61aa: $72
    db $fd                                        ; $61ab: $fd
    add $08                                       ; $61ac: $c6 $08
    xor e                                         ; $61ae: $ab
    inc c                                         ; $61af: $0c
    or c                                          ; $61b0: $b1
    ld c, $00                                     ; $61b1: $0e $00
    add sp, $1f                                   ; $61b3: $e8 $1f
    jp c, $a62f                                   ; $61b5: $da $2f $a6

    ld e, a                                       ; $61b8: $5f
    dec l                                         ; $61b9: $2d
    rst $38                                       ; $61ba: $ff
    nop                                           ; $61bb: $00
    ld hl, $baf8                                  ; $61bc: $21 $f8 $ba
    rlca                                          ; $61bf: $07
    db $fd                                        ; $61c0: $fd
    rlca                                          ; $61c1: $07
    ld h, e                                       ; $61c2: $63
    sbc a                                         ; $61c3: $9f
    nop                                           ; $61c4: $00
    add l                                         ; $61c5: $85
    ld a, [hl]                                    ; $61c6: $7e
    ld c, $fc                                     ; $61c7: $0e $fc
    sbc a                                         ; $61c9: $9f
    db $fc                                        ; $61ca: $fc
    cp $fd                                        ; $61cb: $fe $fd
    ld bc, $ff89                                  ; $61cd: $01 $89 $ff
    and e                                         ; $61d0: $a3
    rst $38                                       ; $61d1: $ff
    ld l, a                                       ; $61d2: $6f
    rst $38                                       ; $61d3: $ff
    ld d, a                                       ; $61d4: $57
    ld d, l                                       ; $61d5: $55
    inc bc                                        ; $61d6: $03
    nop                                           ; $61d7: $00
    db $e4                                        ; $61d8: $e4
    ld a, e                                       ; $61d9: $7b
    ld [hl], b                                    ; $61da: $70
    rst $38                                       ; $61db: $ff
    db $fd                                        ; $61dc: $fd
    rst $38                                       ; $61dd: $ff
    daa                                           ; $61de: $27
    rst $18                                       ; $61df: $df
    nop                                           ; $61e0: $00
    and l                                         ; $61e1: $a5
    ld a, [$fdb2]                                 ; $61e2: $fa $b2 $fd
    cp c                                          ; $61e5: $b9
    rst $38                                       ; $61e6: $ff
    rst $00                                       ; $61e7: $c7
    rst $38                                       ; $61e8: $ff
    nop                                           ; $61e9: $00
    and a                                         ; $61ea: $a7
    jp nz, $82c3                                  ; $61eb: $c2 $c3 $82

    ld b, b                                       ; $61ee: $40
    add e                                         ; $61ef: $83
    add d                                         ; $61f0: $82
    add a                                         ; $61f1: $87
    nop                                           ; $61f2: $00
    ld h, l                                       ; $61f3: $65
    ld a, [$ff74]                                 ; $61f4: $fa $74 $ff
    ld a, b                                       ; $61f7: $78
    rst $38                                       ; $61f8: $ff
    cp a                                          ; $61f9: $bf
    rst $38                                       ; $61fa: $ff
    nop                                           ; $61fb: $00

Jump_0c7_61fc:
    db $ec                                        ; $61fc: $ec
    rra                                           ; $61fd: $1f
    ldh a, [$08]                                  ; $61fe: $f0 $08

Call_0c7_6200:
    and $18                                       ; $6200: $e6 $18
    ld c, d                                       ; $6202: $4a
    cp h                                          ; $6203: $bc
    inc b                                         ; $6204: $04
    ld hl, $28fe                                  ; $6205: $21 $fe $28
    rst $38                                       ; $6208: $ff
    ld h, b                                       ; $6209: $60
    ld l, d                                       ; $620a: $6a
    db $10                                        ; $620b: $10
    ret nc                                        ; $620c: $d0

    ld a, a                                       ; $620d: $7f
    nop                                           ; $620e: $00
    ld h, b                                       ; $620f: $60
    ld a, a                                       ; $6210: $7f
    ld a, [c]                                     ; $6211: $f2
    ld a, a                                       ; $6212: $7f
    ld d, a                                       ; $6213: $57
    cp b                                          ; $6214: $b8
    ld c, a                                       ; $6215: $4f
    or b                                          ; $6216: $b0
    nop                                           ; $6217: $00
    sub l                                         ; $6218: $95
    ld a, d                                       ; $6219: $7a
    inc bc                                        ; $621a: $03
    db $fc                                        ; $621b: $fc
    inc e                                         ; $621c: $1c
    ei                                            ; $621d: $fb
    ld d, d                                       ; $621e: $52
    db $fd                                        ; $621f: $fd
    nop                                           ; $6220: $00
    ld a, [de]                                    ; $6221: $1a
    rst $38                                       ; $6222: $ff
    ld e, h                                       ; $6223: $5c
    rst $38                                       ; $6224: $ff
    jp z, $ad04                                   ; $6225: $ca $04 $ad

    ld b, $00                                     ; $6228: $06 $00
    ret c                                         ; $622a: $d8

    rlca                                          ; $622b: $07
    db $f4                                        ; $622c: $f4
    rrca                                          ; $622d: $0f
    db $ed                                        ; $622e: $ed
    rla                                           ; $622f: $17
    ld d, e                                       ; $6230: $53
    xor a                                         ; $6231: $af
    nop                                           ; $6232: $00
    sub [hl]                                      ; $6233: $96
    ld a, a                                       ; $6234: $7f
    ld c, b                                       ; $6235: $48
    cp [hl]                                       ; $6236: $be
    xor [hl]                                      ; $6237: $ae
    inc bc                                        ; $6238: $03
    rst $38                                       ; $6239: $ff
    inc bc                                        ; $623a: $03
    nop                                           ; $623b: $00
    or c                                          ; $623c: $b1
    ld c, a                                       ; $623d: $4f
    ld b, d                                       ; $623e: $42
    cp a                                          ; $623f: $bf
    rlca                                          ; $6240: $07
    cp $4f                                        ; $6241: $fe $4f
    cp $00                                        ; $6243: $fe $00
    rst $38                                       ; $6245: $ff
    cp $c2                                        ; $6246: $fe $c2
    ld a, a                                       ; $6248: $7f
    and [hl]                                      ; $6249: $a6
    ld e, a                                       ; $624a: $5f
    ld l, $ff                                     ; $624b: $2e $ff
    ld b, b                                       ; $624d: $40
    ld e, $6a                                     ; $624e: $1e $6a
    nop                                           ; $6250: $00
    scf                                           ; $6251: $37
    ld hl, sp-$11                                 ; $6252: $f8 $ef
    db $10                                        ; $6254: $10
    push hl                                       ; $6255: $e5
    ld a, [de]                                    ; $6256: $1a
    nop                                           ; $6257: $00
    jp nc, Jump_0c7_573d                          ; $6258: $d2 $3d $57

    rst $38                                       ; $625b: $ff
    cp h                                          ; $625c: $bc
    ld b, e                                       ; $625d: $43
    rst $38                                       ; $625e: $ff
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    add e                                         ; $6261: $83
    nop                                           ; $6262: $00
    inc bc                                        ; $6263: $03
    nop                                           ; $6264: $00
    and c                                         ; $6265: $a1
    nop                                           ; $6266: $00
    ld d, c                                       ; $6267: $51
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    xor c                                         ; $626a: $a9
    nop                                           ; $626b: $00
    and b                                         ; $626c: $a0
    rst $38                                       ; $626d: $ff
    ld d, l                                       ; $626e: $55
    rst $38                                       ; $626f: $ff
    ld l, e                                       ; $6270: $6b
    rst $38                                       ; $6271: $ff
    nop                                           ; $6272: $00
    di                                            ; $6273: $f3
    ld a, a                                       ; $6274: $7f
    ld e, d                                       ; $6275: $5a
    rst $20                                       ; $6276: $e7
    cp $43                                        ; $6277: $fe $43
    cp l                                          ; $6279: $bd
    ld b, d                                       ; $627a: $42
    nop                                           ; $627b: $00
    ld a, l                                       ; $627c: $7d
    jp nz, $ff6f                                  ; $627d: $c2 $6f $ff

    or [hl]                                       ; $6280: $b6
    rst $08                                       ; $6281: $cf
    res 0, [hl]                                   ; $6282: $cb $86
    nop                                           ; $6284: $00
    ld h, d                                       ; $6285: $62
    add a                                         ; $6286: $87
    push de                                       ; $6287: $d5
    ld c, $ee                                     ; $6288: $0e $ee
    rlca                                          ; $628a: $07
    rst $18                                       ; $628b: $df
    rlca                                          ; $628c: $07
    nop                                           ; $628d: $00
    db $ec                                        ; $628e: $ec
    rlca                                          ; $628f: $07
    ld [hl], h                                    ; $6290: $74
    ld hl, sp-$55                                 ; $6291: $f8 $ab
    inc e                                         ; $6293: $1c
    sbc h                                         ; $6294: $9c
    rrca                                          ; $6295: $0f
    nop                                           ; $6296: $00
    ld a, [c]                                     ; $6297: $f2
    rrca                                          ; $6298: $0f
    ld d, a                                       ; $6299: $57
    xor h                                         ; $629a: $ac
    and l                                         ; $629b: $a5
    sbc $2c                                       ; $629c: $de $2c
    rst $38                                       ; $629e: $ff
    nop                                           ; $629f: $00
    ld sp, hl                                     ; $62a0: $f9
    rlca                                          ; $62a1: $07
    ld c, $ff                                     ; $62a2: $0e $ff
    or d                                          ; $62a4: $b2
    rst $38                                       ; $62a5: $ff
    rst $10                                       ; $62a6: $d7
    ld [c], a                                     ; $62a7: $e2
    nop                                           ; $62a8: $00
    db $ec                                        ; $62a9: $ec
    inc bc                                        ; $62aa: $03
    ld d, h                                       ; $62ab: $54
    ld a, [bc]                                    ; $62ac: $0a
    xor c                                         ; $62ad: $a9
    ld d, [hl]                                    ; $62ae: $56
    ld d, e                                       ; $62af: $53
    xor [hl]                                      ; $62b0: $ae
    nop                                           ; $62b1: $00
    add a                                         ; $62b2: $87
    cp $78                                        ; $62b3: $fe $78
    add a                                         ; $62b5: $87
    add [hl]                                      ; $62b6: $86
    ld bc, $0013                                  ; $62b7: $01 $13 $00
    db $10                                        ; $62ba: $10
    or c                                          ; $62bb: $b1
    nop                                           ; $62bc: $00
    and e                                         ; $62bd: $a3
    ld hl, sp+$05                                 ; $62be: $f8 $05
    db $eb                                        ; $62c0: $eb
    nop                                           ; $62c1: $00
    push af                                       ; $62c2: $f5
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    ld c, a                                       ; $62c5: $4f
    add a                                         ; $62c6: $87
    xor h                                         ; $62c7: $ac
    add a                                         ; $62c8: $87
    ld d, c                                       ; $62c9: $51
    adc [hl]                                      ; $62ca: $8e
    ld [c], a                                     ; $62cb: $e2
    adc l                                         ; $62cc: $8d
    nop                                           ; $62cd: $00
    ld a, d                                       ; $62ce: $7a
    adc h                                         ; $62cf: $8c
    sbc l                                         ; $62d0: $9d
    add sp, -$06                                  ; $62d1: $e8 $fa
    db $fc                                        ; $62d3: $fc
    add a                                         ; $62d4: $87
    ld hl, sp+$00                                 ; $62d5: $f8 $00
    sub $ff                                       ; $62d7: $d6 $ff
    cpl                                           ; $62d9: $2f
    ret nc                                        ; $62da: $d0

    ld a, a                                       ; $62db: $7f
    add b                                         ; $62dc: $80
    pop hl                                        ; $62dd: $e1
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    add b                                         ; $62e0: $80
    nop                                           ; $62e1: $00
    jr z, jr_0c7_62e4                             ; $62e2: $28 $00

jr_0c7_62e4:
    inc [hl]                                      ; $62e4: $34
    nop                                           ; $62e5: $00
    ld l, d                                       ; $62e6: $6a
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    add sp, -$01                                  ; $62e9: $e8 $ff
    ld d, $ff                                     ; $62eb: $16 $ff
    db $db                                        ; $62ed: $db
    ccf                                           ; $62ee: $3f
    ld a, l                                       ; $62ef: $7d
    rra                                           ; $62f0: $1f
    nop                                           ; $62f1: $00
    xor d                                         ; $62f2: $aa
    dec e                                         ; $62f3: $1d
    ld a, a                                       ; $62f4: $7f
    ld [$0837], sp                                ; $62f5: $08 $37 $08
    cpl                                           ; $62f8: $2f
    jr jr_0c7_62fb                                ; $62f9: $18 $00

Call_0c7_62fb:
jr_0c7_62fb:
    dec de                                        ; $62fb: $1b
    rst $38                                       ; $62fc: $ff
    xor l                                         ; $62fd: $ad
    di                                            ; $62fe: $f3
    ld [hl], e                                    ; $62ff: $73

Jump_0c7_6300:
    pop hl                                        ; $6300: $e1
    reti                                          ; $6301: $d9


    pop hl                                        ; $6302: $e1
    nop                                           ; $6303: $00
    or e                                          ; $6304: $b3
    pop bc                                        ; $6305: $c1
    or l                                          ; $6306: $b5
    pop bc                                        ; $6307: $c1
    ld l, e                                       ; $6308: $6b
    add c                                         ; $6309: $81
    ld a, l                                       ; $630a: $7d
    add c                                         ; $630b: $81
    nop                                           ; $630c: $00
    sbc l                                         ; $630d: $9d
    cp $4a                                        ; $630e: $fe $4a
    add a                                         ; $6310: $87
    rst $00                                       ; $6311: $c7
    inc bc                                        ; $6312: $03
    ld a, h                                       ; $6313: $7c
    add e                                         ; $6314: $83
    nop                                           ; $6315: $00
    ld d, [hl]                                    ; $6316: $56
    xor c                                         ; $6317: $a9
    xor b                                         ; $6318: $a8
    rst $30                                       ; $6319: $f7
    jp z, Jump_000_3fff                           ; $631a: $ca $ff $3f

    ret nz                                        ; $631d: $c0

    nop                                           ; $631e: $00
    inc bc                                        ; $631f: $03
    ld a, a                                       ; $6320: $7f
    adc $7f                                       ; $6321: $ce $7f
    ld a, l                                       ; $6323: $7d
    cp $ef                                        ; $6324: $fe $ef
    add h                                         ; $6326: $84
    nop                                           ; $6327: $00
    push de                                       ; $6328: $d5
    add [hl]                                      ; $6329: $86
    xor [hl]                                      ; $632a: $ae
    call nc, $ec97                                ; $632b: $d4 $97 $ec
    ld l, e                                       ; $632e: $6b
    db $fc                                        ; $632f: $fc
    nop                                           ; $6330: $00
    ld l, e                                       ; $6331: $6b
    rst $38                                       ; $6332: $ff
    db $f4                                        ; $6333: $f4
    dec bc                                        ; $6334: $0b
    cp $01                                        ; $6335: $fe $01
    and a                                         ; $6337: $a7
    nop                                           ; $6338: $00
    ld bc, $0041                                  ; $6339: $01 $41 $00
    sub h                                         ; $633c: $94
    nop                                           ; $633d: $00
    xor b                                         ; $633e: $a8
    nop                                           ; $633f: $00
    sub $6e                                       ; $6340: $d6 $6e
    ld b, $08                                     ; $6342: $06 $08
    di                                            ; $6344: $f3
    nop                                           ; $6345: $00
    ld sp, hl                                     ; $6346: $f9
    nop                                           ; $6347: $00
    ld d, l                                       ; $6348: $55
    inc b                                         ; $6349: $04
    nop                                           ; $634a: $00
    push af                                       ; $634b: $f5
    ld [$fe00], sp                                ; $634c: $08 $00 $fe
    ld bc, $00ff                                  ; $634f: $01 $ff $00
    xor c                                         ; $6352: $a9
    ld d, [hl]                                    ; $6353: $56
    and c                                         ; $6354: $a1
    sbc $01                                       ; $6355: $de $01
    inc d                                         ; $6357: $14
    rst $28                                       ; $6358: $ef
    and l                                         ; $6359: $a5
    sbc $04                                       ; $635a: $de $04
    rst $38                                       ; $635c: $ff
    add [hl]                                      ; $635d: $86
    cp e                                          ; $635e: $bb
    inc b                                         ; $635f: $04
    nop                                           ; $6360: $00
    sbc c                                         ; $6361: $99
    rst $20                                       ; $6362: $e7
    db $fd                                        ; $6363: $fd
    ld b, $fe                                     ; $6364: $06 $fe
    ld [$48b4], sp                                ; $6366: $08 $b4 $48
    nop                                           ; $6369: $00
    ld c, l                                       ; $636a: $4d
    cp b                                          ; $636b: $b8
    adc [hl]                                      ; $636c: $8e
    ld a, b                                       ; $636d: $78
    rra                                           ; $636e: $1f
    ld hl, sp+$57                                 ; $636f: $f8 $57
    ld hl, sp+$00                                 ; $6371: $f8 $00
    or l                                          ; $6373: $b5
    ld hl, sp-$32                                 ; $6374: $f8 $ce
    ld bc, $0003                                  ; $6376: $01 $03 $00
    add c                                         ; $6379: $81
    nop                                           ; $637a: $00
    ld d, b                                       ; $637b: $50
    ld d, b                                       ; $637c: $50
    ld a, [$d400]                                 ; $637d: $fa $00 $d4
    xor [hl]                                      ; $6380: $ae
    nop                                           ; $6381: $00
    reti                                          ; $6382: $d9


    nop                                           ; $6383: $00
    ld c, e                                       ; $6384: $4b
    cp $00                                        ; $6385: $fe $00
    jp z, $b5fd                                   ; $6387: $ca $fd $b5

    adc $50                                       ; $638a: $ce $50
    adc a                                         ; $638c: $8f
    db $ec                                        ; $638d: $ec
    add a                                         ; $638e: $87
    nop                                           ; $638f: $00
    ld a, d                                       ; $6390: $7a
    add a                                         ; $6391: $87
    xor $87                                       ; $6392: $ee $87
    ccf                                           ; $6394: $3f
    rst $00                                       ; $6395: $c7
    cp $01                                        ; $6396: $fe $01
    nop                                           ; $6398: $00
    ld a, [$fc05]                                 ; $6399: $fa $05 $fc
    inc bc                                        ; $639c: $03
    and l                                         ; $639d: $a5
    ld e, a                                       ; $639e: $5f
    ld e, c                                       ; $639f: $59
    xor [hl]                                      ; $63a0: $ae
    nop                                           ; $63a1: $00
    and d                                         ; $63a2: $a2
    ld e, h                                       ; $63a3: $5c
    xor h                                         ; $63a4: $ac
    ld a, b                                       ; $63a5: $78
    ld e, h                                       ; $63a6: $5c
    ld hl, sp+$2f                                 ; $63a7: $f8 $2f
    ret c                                         ; $63a9: $d8

    nop                                           ; $63aa: $00
    add a                                         ; $63ab: $87
    ld hl, sp-$35                                 ; $63ac: $f8 $cb
    db $fc                                        ; $63ae: $fc
    cp a                                          ; $63af: $bf
    ld hl, sp-$2d                                 ; $63b0: $f8 $d3
    inc a                                         ; $63b2: $3c
    nop                                           ; $63b3: $00
    ld l, h                                       ; $63b4: $6c
    dec de                                        ; $63b5: $1b
    dec h                                         ; $63b6: $25
    ld a, [de]                                    ; $63b7: $1a
    sub e                                         ; $63b8: $93
    inc e                                         ; $63b9: $1c
    push af                                       ; $63ba: $f5
    nop                                           ; $63bb: $00
    ldh [$f1], a                                  ; $63bc: $e0 $f1
    inc b                                         ; $63be: $04
    ld [bc], a                                    ; $63bf: $02
    db $10                                        ; $63c0: $10
    ld l, [hl]                                    ; $63c1: $6e
    ld [$00ff], sp                                ; $63c2: $08 $ff $00
    ld [hl-], a                                   ; $63c5: $32
    dec c                                         ; $63c6: $0d
    ld [hl], h                                    ; $63c7: $74
    nop                                           ; $63c8: $00
    dec de                                        ; $63c9: $1b
    ld [hl+], a                                   ; $63ca: $22
    dec e                                         ; $63cb: $1d
    ld [hl], h                                    ; $63cc: $74
    dec de                                        ; $63cd: $1b
    ldh [$1f], a                                  ; $63ce: $e0 $1f
    or b                                          ; $63d0: $b0
    nop                                           ; $63d1: $00
    rra                                           ; $63d2: $1f
    db $db                                        ; $63d3: $db
    ccf                                           ; $63d4: $3f

Jump_0c7_63d5:
    di                                            ; $63d5: $f3
    inc e                                         ; $63d6: $1c
    ld [hl], a                                    ; $63d7: $77
    add c                                         ; $63d8: $81
    ccf                                           ; $63d9: $3f
    nop                                           ; $63da: $00
    pop bc                                        ; $63db: $c1
    sub [hl]                                      ; $63dc: $96
    jp hl                                         ; $63dd: $e9


    xor c                                         ; $63de: $a9
    rst $10                                       ; $63df: $d7
    sub c                                         ; $63e0: $91

jr_0c7_63e1:
    rst $28                                       ; $63e1: $ef
    jp $ff00                                      ; $63e2: $c3 $00 $ff


    push af                                       ; $63e5: $f5
    rst $38                                       ; $63e6: $ff
    sbc e                                         ; $63e7: $9b
    ld a, a                                       ; $63e8: $7f
    ld [hl], e                                    ; $63e9: $73
    add b                                         ; $63ea: $80
    ret nz                                        ; $63eb: $c0

    ld a, [bc]                                    ; $63ec: $0a
    nop                                           ; $63ed: $00
    sub b                                         ; $63ee: $90
    nop                                           ; $63ef: $00
    xor d                                         ; $63f0: $aa
    ld d, $07                                     ; $63f1: $16 $07
    ld a, [$06f4]                                 ; $63f3: $fa $f4 $06
    cp l                                          ; $63f6: $bd
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    sub a                                         ; $63f9: $97
    ld a, b                                       ; $63fa: $78
    ld a, e                                       ; $63fb: $7b
    inc e                                         ; $63fc: $1c
    scf                                           ; $63fd: $37
    jr jr_0c7_640b                                ; $63fe: $18 $0b

    nop                                           ; $6400: $00
    inc e                                         ; $6401: $1c
    dec [hl]                                      ; $6402: $35

jr_0c7_6403:
    ld a, [de]                                    ; $6403: $1a
    adc e                                         ; $6404: $8b
    inc e                                         ; $6405: $1c
    ld e, l                                       ; $6406: $5d
    ld a, [bc]                                    ; $6407: $0a
    sub e                                         ; $6408: $93
    jr c, jr_0c7_6417                             ; $6409: $38 $0c

jr_0c7_640b:
    xor a                                         ; $640b: $af
    ld c, [hl]                                    ; $640c: $4e
    jr nz, jr_0c7_63e1                            ; $640d: $20 $d2

    ld a, [bc]                                    ; $640f: $0a
    ld e, b                                       ; $6410: $58
    ld [$1b74], sp                                ; $6411: $08 $74 $1b
    pop hl                                        ; $6414: $e1
    nop                                           ; $6415: $00
    rra                                           ; $6416: $1f

jr_0c7_6417:
    ld d, e                                       ; $6417: $53
    ccf                                           ; $6418: $3f
    db $fd                                        ; $6419: $fd
    rra                                           ; $641a: $1f
    srl h                                         ; $641b: $cb $3c
    ld [hl], $00                                  ; $641d: $36 $00
    ret c                                         ; $641f: $d8

    and h                                         ; $6420: $a4
    ld e, b                                       ; $6421: $58
    ret                                           ; $6422: $c9


    jr c, jr_0c7_6403                             ; $6423: $38 $de

    ld hl, $00fa                                  ; $6425: $21 $fa $00
    dec b                                         ; $6428: $05
    ld d, h                                       ; $6429: $54
    xor e                                         ; $642a: $ab
    db $10                                        ; $642b: $10
    rst $28                                       ; $642c: $ef
    add l                                         ; $642d: $85
    ld a, a                                       ; $642e: $7f
    ld a, [bc]                                    ; $642f: $0a
    nop                                           ; $6430: $00
    rst $38                                       ; $6431: $ff
    ld d, [hl]                                    ; $6432: $56
    rst $38                                       ; $6433: $ff
    xor e                                         ; $6434: $ab
    rst $38                                       ; $6435: $ff
    xor h                                         ; $6436: $ac
    jp Jump_000_0031                              ; $6437: $c3 $31 $00


    rst $00                                       ; $643a: $c7
    db $ec                                        ; $643b: $ec
    add e                                         ; $643c: $83
    halt                                          ; $643d: $76
    add e                                         ; $643e: $83
    cp e                                          ; $643f: $bb
    ld b, [hl]                                    ; $6440: $46
    ld e, b                                       ; $6441: $58
    nop                                           ; $6442: $00
    and a                                         ; $6443: $a7
    xor d                                         ; $6444: $aa
    ld d, a                                       ; $6445: $57
    ld d, [hl]                                    ; $6446: $56
    xor a                                         ; $6447: $af
    rst $10                                       ; $6448: $d7
    ld hl, sp-$09                                 ; $6449: $f8 $f7
    nop                                           ; $644b: $00
    ld hl, sp-$6b                                 ; $644c: $f8 $95
    ld a, [$70af]                                 ; $644e: $fa $af $70
    dec l                                         ; $6451: $2d
    ld a, [c]                                     ; $6452: $f2
    add [hl]                                      ; $6453: $86
    nop                                           ; $6454: $00
    ld a, c                                       ; $6455: $79
    dec d                                         ; $6456: $15
    ld a, [$bd42]                                 ; $6457: $fa $42 $bd
    db $fd                                        ; $645a: $fd
    nop                                           ; $645b: $00
    or l                                          ; $645c: $b5
    nop                                           ; $645d: $00
    ld b, b                                       ; $645e: $40
    rst $38                                       ; $645f: $ff
    nop                                           ; $6460: $00
    rst $30                                       ; $6461: $f7
    add hl, bc                                    ; $6462: $09
    xor [hl]                                      ; $6463: $ae
    ld b, c                                       ; $6464: $41
    db $fc                                        ; $6465: $fc
    nop                                           ; $6466: $00
    inc bc                                        ; $6467: $03
    ld l, a                                       ; $6468: $6f
    sub c                                         ; $6469: $91
    call c, $fe23                                 ; $646a: $dc $23 $fe
    add a                                         ; $646d: $87
    cp h                                          ; $646e: $bc
    nop                                           ; $646f: $00
    rst $00                                       ; $6470: $c7
    inc e                                         ; $6471: $1c
    and $54                                       ; $6472: $e6 $54
    xor b                                         ; $6474: $a8
    xor b                                         ; $6475: $a8
    ret c                                         ; $6476: $d8

    push de                                       ; $6477: $d5
    nop                                           ; $6478: $00
    ld hl, sp-$02                                 ; $6479: $f8 $fe
    ld hl, sp+$03                                 ; $647b: $f8 $03
    db $fc                                        ; $647d: $fc
    rst $38                                       ; $647e: $ff
    ld hl, sp-$51                                 ; $647f: $f8 $af
    nop                                           ; $6481: $00
    ld hl, sp+$6b                                 ; $6482: $f8 $6b
    inc e                                         ; $6484: $1c
    scf                                           ; $6485: $37
    ld [$0c1b], sp                                ; $6486: $08 $1b $0c
    dec b                                         ; $6489: $05
    nop                                           ; $648a: $00
    ld a, [bc]                                    ; $648b: $0a
    xor c                                         ; $648c: $a9
    ld c, $d4                                     ; $648d: $0e $d4
    dec bc                                        ; $648f: $0b
    ld b, l                                       ; $6490: $45
    ld a, [de]                                    ; $6491: $1a
    or d                                          ; $6492: $b2
    ld a, [bc]                                    ; $6493: $0a
    dec e                                         ; $6494: $1d
    ld h, l                                       ; $6495: $65
    ld a, [de]                                    ; $6496: $1a
    ld [hl], b                                    ; $6497: $70
    sub d                                         ; $6498: $92
    inc bc                                        ; $6499: $03
    ld [hl], l                                    ; $649a: $75
    sub [hl]                                      ; $649b: $96
    inc bc                                        ; $649c: $03
    sbc a                                         ; $649d: $9f
    nop                                           ; $649e: $00
    ld a, a                                       ; $649f: $7f
    db $dd                                        ; $64a0: $dd
    ld [hl+], a                                   ; $64a1: $22
    cp a                                          ; $64a2: $bf
    ld b, b                                       ; $64a3: $40
    ld d, l                                       ; $64a4: $55
    xor d                                         ; $64a5: $aa
    jr z, jr_0c7_64a8                             ; $64a6: $28 $00

jr_0c7_64a8:
    rst $10                                       ; $64a8: $d7
    ld d, h                                       ; $64a9: $54
    xor e                                         ; $64aa: $ab
    nop                                           ; $64ab: $00
    rst $38                                       ; $64ac: $ff
    sub e                                         ; $64ad: $93
    rst $28                                       ; $64ae: $ef
    ld d, l                                       ; $64af: $55
    add b                                         ; $64b0: $80
    ldh [rSC], a                                  ; $64b1: $e0 $02

jr_0c7_64b3:
    add l                                         ; $64b3: $85
    ld a, b                                       ; $64b4: $78
    ld e, $f0                                     ; $64b5: $1e $f0
    rlca                                          ; $64b7: $07
    ld hl, sp+$5b                                 ; $64b8: $f8 $5b
    nop                                           ; $64ba: $00
    db $f4                                        ; $64bb: $f4
    and l                                         ; $64bc: $a5
    ld a, [$f56a]                                 ; $64bd: $fa $6a $f5
    or l                                          ; $64c0: $b5
    ld a, [$02cd]                                 ; $64c1: $fa $cd $02
    ccf                                           ; $64c4: $3f
    rra                                           ; $64c5: $1f
    ld a, a                                       ; $64c6: $7f
    ret                                           ; $64c7: $c9


    ccf                                           ; $64c8: $3f
    ld [hl], l                                    ; $64c9: $75
    ret nc                                        ; $64ca: $d0

    inc b                                         ; $64cb: $04
    and h                                         ; $64cc: $a4
    nop                                           ; $64cd: $00
    ld e, e                                       ; $64ce: $5b
    pop de                                        ; $64cf: $d1
    ccf                                           ; $64d0: $3f
    ld d, d                                       ; $64d1: $52
    db $fd                                        ; $64d2: $fd
    rst $38                                       ; $64d3: $ff
    nop                                           ; $64d4: $00
    db $eb                                        ; $64d5: $eb
    jr nz, @+$06                                  ; $64d6: $20 $04

    cp a                                          ; $64d8: $bf
    ld [hl], d                                    ; $64d9: $72
    nop                                           ; $64da: $00
    jp c, Jump_0c7_6f24                           ; $64db: $da $24 $6f

    sub b                                         ; $64de: $90
    ld d, [hl]                                    ; $64df: $56
    nop                                           ; $64e0: $00
    xor c                                         ; $64e1: $a9
    dec l                                         ; $64e2: $2d
    jp nc, Jump_000_0ed9                          ; $64e3: $d2 $d9 $0e

    ld e, d                                       ; $64e6: $5a
    dec c                                         ; $64e7: $0d
    push af                                       ; $64e8: $f5
    nop                                           ; $64e9: $00
    ld c, $7a                                     ; $64ea: $0e $7a
    adc a                                         ; $64ec: $8f
    push af                                       ; $64ed: $f5
    rrca                                          ; $64ee: $0f
    rst $10                                       ; $64ef: $d7
    cpl                                           ; $64f0: $2f
    rst $38                                       ; $64f1: $ff
    nop                                           ; $64f2: $00
    rrca                                          ; $64f3: $0f
    ldh [$1f], a                                  ; $64f4: $e0 $1f
    cp e                                          ; $64f6: $bb
    ld b, h                                       ; $64f7: $44
    db $fd                                        ; $64f8: $fd
    ld [bc], a                                    ; $64f9: $02
    ld a, [hl+]                                   ; $64fa: $2a
    nop                                           ; $64fb: $00

jr_0c7_64fc:
    push de                                       ; $64fc: $d5
    inc d                                         ; $64fd: $14
    db $eb                                        ; $64fe: $eb
    ld a, [hl+]                                   ; $64ff: $2a
    push de                                       ; $6500: $d5
    add b                                         ; $6501: $80
    rst $38                                       ; $6502: $ff
    reti                                          ; $6503: $d9


    nop                                           ; $6504: $00
    rst $30                                       ; $6505: $f7
    xor d                                         ; $6506: $aa
    rst $38                                       ; $6507: $ff
    ei                                            ; $6508: $fb
    rst $38                                       ; $6509: $ff
    sub d                                         ; $650a: $92
    ld a, a                                       ; $650b: $7f
    ld d, d                                       ; $650c: $52
    nop                                           ; $650d: $00
    ccf                                           ; $650e: $3f
    ld l, a                                       ; $650f: $6f
    inc e                                         ; $6510: $1c
    ld a, [hl+]                                   ; $6511: $2a
    inc e                                         ; $6512: $1c
    swap h                                        ; $6513: $cb $34
    or a                                          ; $6515: $b7
    ld [$ea18], sp                                ; $6516: $08 $18 $ea
    dec d                                         ; $6519: $15
    inc d                                         ; $651a: $14
    db $ec                                        ; $651b: $ec
    ld [bc], a                                    ; $651c: $02
    db $d3                                        ; $651d: $d3
    inc a                                         ; $651e: $3c
    xor b                                         ; $651f: $a8
    nop                                           ; $6520: $00
    db $10                                        ; $6521: $10
    and b                                         ; $6522: $a0
    db $10                                        ; $6523: $10
    ret z                                         ; $6524: $c8

    jr nz, jr_0c7_64fc                            ; $6525: $20 $d5

jr_0c7_6527:
    jr nz, jr_0c7_64b3                            ; $6527: $20 $8a

    nop                                           ; $6529: $00
    ld [hl], b                                    ; $652a: $70
    ld a, [hl+]                                   ; $652b: $2a
    push af                                       ; $652c: $f5
    dec [hl]                                      ; $652d: $35
    ld a, [$ff28]                                 ; $652e: $fa $28 $ff
    ld [hl], h                                    ; $6531: $74
    nop                                           ; $6532: $00
    ccf                                           ; $6533: $3f
    ld a, [hl-]                                   ; $6534: $3a
    rra                                           ; $6535: $1f
    rrca                                          ; $6536: $0f
    rra                                           ; $6537: $1f
    ld d, c                                       ; $6538: $51
    rra                                           ; $6539: $1f
    and l                                         ; $653a: $a5
    nop                                           ; $653b: $00
    jr jr_0c7_6527                                ; $653c: $18 $e9

    rla                                           ; $653e: $17
    ld d, h                                       ; $653f: $54
    xor e                                         ; $6540: $ab
    xor c                                         ; $6541: $a9
    ld d, a                                       ; $6542: $57
    ld d, c                                       ; $6543: $51
    nop                                           ; $6544: $00
    xor a                                         ; $6545: $af
    inc bc                                        ; $6546: $03
    rst $38                                       ; $6547: $ff
    ld l, d                                       ; $6548: $6a
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    db $fc                                        ; $654b: $fc
    xor l                                         ; $654c: $ad
    ld [$6c70], sp                                ; $654d: $08 $70 $6c
    sbc e                                         ; $6550: $9b
    adc c                                         ; $6551: $89
    add $05                                       ; $6552: $c6 $05
    rst $18                                       ; $6554: $df
    rst $38                                       ; $6555: $ff
    pop af                                        ; $6556: $f1
    nop                                           ; $6557: $00
    cp $4f                                        ; $6558: $fe $4f
    ldh a, [$dc]                                  ; $655a: $f0 $dc
    ld h, b                                       ; $655c: $60
    ld e, d                                       ; $655d: $5a

jr_0c7_655e:
    ld h, b                                       ; $655e: $60
    push de                                       ; $655f: $d5
    nop                                           ; $6560: $00
    ld a, [de]                                    ; $6561: $1a
    ld h, b                                       ; $6562: $60
    sbc a                                         ; $6563: $9f
    or d                                          ; $6564: $b2
    ld e, l                                       ; $6565: $5d
    ld a, c                                       ; $6566: $79
    cp $5d                                        ; $6567: $fe $5d
    nop                                           ; $6569: $00
    cp a                                          ; $656a: $bf
    xor $1f                                       ; $656b: $ee $1f
    dec h                                         ; $656d: $25
    ld e, $12                                     ; $656e: $1e $12
    inc c                                         ; $6570: $0c
    rra                                           ; $6571: $1f
    nop                                           ; $6572: $00
    rst $38                                       ; $6573: $ff
    cp d                                          ; $6574: $ba
    ld a, a                                       ; $6575: $7f
    dec d                                         ; $6576: $15
    cp $3a                                        ; $6577: $fe $3a
    db $fd                                        ; $6579: $fd
    ld d, h                                       ; $657a: $54
    nop                                           ; $657b: $00
    ei                                            ; $657c: $fb
    jr nz, jr_0c7_655e                            ; $657d: $20 $df

    ld sp, $2d1f                                  ; $657f: $31 $1f $2d
    rra                                           ; $6582: $1f
    rst $38                                       ; $6583: $ff
    nop                                           ; $6584: $00
    rst $38                                       ; $6585: $ff
    ld l, h                                       ; $6586: $6c
    di                                            ; $6587: $f3
    ld d, d                                       ; $6588: $52
    pop hl                                        ; $6589: $e1
    inc sp                                        ; $658a: $33
    ret nz                                        ; $658b: $c0

    reti                                          ; $658c: $d9


    nop                                           ; $658d: $00
    ldh [$f5], a                                  ; $658e: $e0 $f5
    add b                                         ; $6590: $80
    ld e, d                                       ; $6591: $5a
    add b                                         ; $6592: $80
    db $fd                                        ; $6593: $fd
    add b                                         ; $6594: $80
    ret c                                         ; $6595: $d8

    nop                                           ; $6596: $00
    rst $38                                       ; $6597: $ff
    sub l                                         ; $6598: $95
    rst $38                                       ; $6599: $ff
    sub [hl]                                      ; $659a: $96
    ld sp, hl                                     ; $659b: $f9
    ld a, l                                       ; $659c: $7d
    ldh [rHDMA5], a                               ; $659d: $e0 $55
    nop                                           ; $659f: $00
    ldh [$2f], a                                  ; $65a0: $e0 $2f
    ret nc                                        ; $65a2: $d0

    rst $18                                       ; $65a3: $df
    ld h, b                                       ; $65a4: $60
    xor d                                         ; $65a5: $aa
    ld d, l                                       ; $65a6: $55
    and c                                         ; $65a7: $a1
    add b                                         ; $65a8: $80
    ret nc                                        ; $65a9: $d0

    inc b                                         ; $65aa: $04
    sbc c                                         ; $65ab: $99
    rst $20                                       ; $65ac: $e7
    ld b, e                                       ; $65ad: $43
    add c                                         ; $65ae: $81
    ld bc, $2080                                  ; $65af: $01 $80 $20
    nop                                           ; $65b2: $00
    add b                                         ; $65b3: $80
    ld d, l                                       ; $65b4: $55
    add b                                         ; $65b5: $80
    dec hl                                        ; $65b6: $2b
    ret nz                                        ; $65b7: $c0

    ld d, a                                       ; $65b8: $57
    xor b                                         ; $65b9: $a8
    xor d                                         ; $65ba: $aa

jr_0c7_65bb:
    ld a, [bc]                                    ; $65bb: $0a
    push de                                       ; $65bc: $d5
    ld b, l                                       ; $65bd: $45
    ld a, [$42a2]                                 ; $65be: $fa $a2 $42
    dec b                                         ; $65c1: $05
    ld a, d                                       ; $65c2: $7a
    ret nc                                        ; $65c3: $d0

    inc b                                         ; $65c4: $04
    dec l                                         ; $65c5: $2d
    nop                                           ; $65c6: $00
    jp $bc4b                                      ; $65c7: $c3 $4b $bc


    and h                                         ; $65ca: $a4
    ld e, a                                       ; $65cb: $5f
    ld c, l                                       ; $65cc: $4d
    cp a                                          ; $65cd: $bf
    adc [hl]                                      ; $65ce: $8e
    nop                                           ; $65cf: $00
    ld a, a                                       ; $65d0: $7f
    ld e, $ff                                     ; $65d1: $1e $ff
    xor e                                         ; $65d3: $ab
    cp $f2                                        ; $65d4: $fe $f2
    rst $38                                       ; $65d6: $ff
    inc sp                                        ; $65d7: $33
    nop                                           ; $65d8: $00
    add $ff                                       ; $65d9: $c6 $ff
    rst $38                                       ; $65db: $ff
    ld [hl], $cf                                  ; $65dc: $36 $cf
    ld l, d                                       ; $65de: $6a
    add a                                         ; $65df: $87
    call z, $0300                                 ; $65e0: $cc $00 $03
    sbc e                                         ; $65e3: $9b
    rlca                                          ; $65e4: $07
    xor a                                         ; $65e5: $af
    ld bc, $015a                                  ; $65e6: $01 $5a $01
    cp a                                          ; $65e9: $bf
    db $10                                        ; $65ea: $10
    ld bc, $1eb1                                  ; $65eb: $01 $b1 $1e
    ret nc                                        ; $65ee: $d0

    inc l                                         ; $65ef: $2c
    ret c                                         ; $65f0: $d8

    ccf                                           ; $65f1: $3f
    ld [hl], l                                    ; $65f2: $75
    sbc d                                         ; $65f3: $9a
    nop                                           ; $65f4: $00
    ld a, [hl+]                                   ; $65f5: $2a
    push af                                       ; $65f6: $f5
    rla                                           ; $65f7: $17
    add sp, $2a                                   ; $65f8: $e8 $2a
    push af                                       ; $65fa: $f5
    pop bc                                        ; $65fb: $c1
    rst $38                                       ; $65fc: $ff
    nop                                           ; $65fd: $00
    ld c, c                                       ; $65fe: $49
    cp $fa                                        ; $65ff: $fe $fa
    db $fc                                        ; $6601: $fc
    inc a                                         ; $6602: $3c
    ld hl, sp-$72                                 ; $6603: $f8 $8e
    ld a, b                                       ; $6605: $78
    nop                                           ; $6606: $00
    rst $00                                       ; $6607: $c7

Call_0c7_6608:
    jr c, jr_0c7_6682                             ; $6608: $38 $78

    db $10                                        ; $660a: $10
    rst $10                                       ; $660b: $d7
    jr c, jr_0c7_65bb                             ; $660c: $38 $ad

    rst $38                                       ; $660e: $ff
    nop                                           ; $660f: $00
    cp $03                                        ; $6610: $fe $03
    ld b, a                                       ; $6612: $47
    ld bc, $0103                                  ; $6613: $01 $03 $01
    and d                                         ; $6616: $a2
    ld bc, $a700                                  ; $6617: $01 $00 $a7
    ld [bc], a                                    ; $661a: $02
    adc d                                         ; $661b: $8a
    ld h, b                                       ; $661c: $60
    ld d, a                                       ; $661d: $57
    add sp, $4a                                   ; $661e: $e8 $4a
    push af                                       ; $6620: $f5
    nop                                           ; $6621: $00
    rst $28                                       ; $6622: $ef
    rst $38                                       ; $6623: $ff
    ld a, [$b5ff]                                 ; $6624: $fa $ff $b5
    jp z, $8043                                   ; $6627: $ca $43 $80

    nop                                           ; $662a: $00
    ld bc, $f500                                  ; $662b: $01 $00 $f5
    ld b, b                                       ; $662e: $40
    ld a, [hl]                                    ; $662f: $7e
    ret nz                                        ; $6630: $c0

    ld e, a                                       ; $6631: $5f
    ldh [rDIV], a                                 ; $6632: $e0 $04
    rst $08                                       ; $6634: $cf
    ldh a, [$d7]                                  ; $6635: $f0 $d7
    add sp, $6a                                   ; $6637: $e8 $6a
    xor $07                                       ; $6639: $ee $07
    and b                                         ; $663b: $a0
    rst $38                                       ; $663c: $ff
    nop                                           ; $663d: $00
    ld d, $0c                                     ; $663e: $16 $0c
    add l                                         ; $6640: $85
    ld c, $7e                                     ; $6641: $0e $7e
    rrca                                          ; $6643: $0f
    ldh a, [rIF]                                  ; $6644: $f0 $0f

jr_0c7_6646:
    nop                                           ; $6646: $00
    ld sp, hl                                     ; $6647: $f9
    rrca                                          ; $6648: $0f
    and c                                         ; $6649: $a1
    ld e, a                                       ; $664a: $5f
    ld c, b                                       ; $664b: $48
    cp a                                          ; $664c: $bf
    ld de, $00ff                                  ; $664d: $11 $ff $00
    ld d, [hl]                                    ; $6650: $56
    ccf                                           ; $6651: $3f
    cp a                                          ; $6652: $bf
    ld a, a                                       ; $6653: $7f
    sbc h                                         ; $6654: $9c
    db $e3                                        ; $6655: $e3
    ld [c], a                                     ; $6656: $e2
    add c                                         ; $6657: $81
    nop                                           ; $6658: $00
    ld c, e                                       ; $6659: $4b
    add b                                         ; $665a: $80
    ld [hl], l                                    ; $665b: $75
    add b                                         ; $665c: $80
    ld a, d                                       ; $665d: $7a
    add c                                         ; $665e: $81
    sbc $a1                                       ; $665f: $de $a1
    ld bc, $a05e                                  ; $6661: $01 $5e $a0
    or a                                          ; $6664: $b7
    ret nz                                        ; $6665: $c0

    ld e, l                                       ; $6666: $5d
    and b                                         ; $6667: $a0
    cp a                                          ; $6668: $bf
    xor b                                         ; $6669: $a8
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    adc a                                         ; $666c: $8f
    ldh a, [$95]                                  ; $666d: $f0 $95
    ld [$d5ea], a                                 ; $666f: $ea $ea $d5
    call nz, Call_000_007b                        ; $6672: $c4 $7b $00
    ret nz                                        ; $6675: $c0

    ld a, a                                       ; $6676: $7f
    xor c                                         ; $6677: $a9
    ld a, a                                       ; $6678: $7f
    ld [hl], h                                    ; $6679: $74
    rst $38                                       ; $667a: $ff
    cp a                                          ; $667b: $bf
    ld a, a                                       ; $667c: $7f
    nop                                           ; $667d: $00
    ld h, b                                       ; $667e: $60
    rst $38                                       ; $667f: $ff
    bit 6, h                                      ; $6680: $cb $74

jr_0c7_6682:
    ld d, l                                       ; $6682: $55
    ld [$83c4], a                                 ; $6683: $ea $c4 $83
    ld de, $c7ba                                  ; $6686: $11 $ba $c7
    or l                                          ; $6689: $b5
    ret nc                                        ; $668a: $d0

    inc d                                         ; $668b: $14
    ld c, $07                                     ; $668c: $0e $07
    adc c                                         ; $668e: $89
    ret nc                                        ; $668f: $d0

    inc b                                         ; $6690: $04
    nop                                           ; $6691: $00
    xor a                                         ; $6692: $af
    ld [bc], a                                    ; $6693: $02
    ld e, a                                       ; $6694: $5f
    and d                                         ; $6695: $a2
    dec hl                                        ; $6696: $2b
    sub $bf                                       ; $6697: $d6 $bf
    cp $00                                        ; $6699: $fe $00
    ld [$d7ff], a                                 ; $669b: $ea $ff $d7
    ld a, [hl+]                                   ; $669e: $2a
    ld c, $03                                     ; $669f: $0e $03
    ld b, $03                                     ; $66a1: $06 $03
    jr z, jr_0c7_6646                             ; $66a3: $28 $a1

    ld a, [hl]                                    ; $66a5: $7e
    ld d, b                                       ; $66a6: $50
    inc e                                         ; $66a7: $1c
    adc c                                         ; $66a8: $89
    ret nz                                        ; $66a9: $c0

    inc d                                         ; $66aa: $14
    ld [c], a                                     ; $66ab: $e2
    rst $38                                       ; $66ac: $ff
    ld l, e                                       ; $66ad: $6b
    nop                                           ; $66ae: $00
    sbc h                                         ; $66af: $9c
    and a                                         ; $66b0: $a7
    ld e, b                                       ; $66b1: $58
    ld c, d                                       ; $66b2: $4a
    cp l                                          ; $66b3: $bd

Jump_0c7_66b4:
    ld bc, $1dfe                                  ; $66b4: $01 $fe $1d
    ld b, b                                       ; $66b7: $40
    ld a, [$1c50]                                 ; $66b8: $fa $50 $1c
    push hl                                       ; $66bb: $e5
    ld [bc], a                                    ; $66bc: $02
    sub $03                                       ; $66bd: $d6 $03
    db $ec                                        ; $66bf: $ec
    inc bc                                        ; $66c0: $03
    nop                                           ; $66c1: $00
    ld a, [$7607]                                 ; $66c2: $fa $07 $76
    adc e                                         ; $66c5: $8b
    xor c                                         ; $66c6: $a9
    ld d, a                                       ; $66c7: $57
    ld c, e                                       ; $66c8: $4b
    cp a                                          ; $66c9: $bf
    jr nz, @-$5a                                  ; $66ca: $20 $a4

    ld e, a                                       ; $66cc: $5f
    rlca                                          ; $66cd: $07
    ld [bc], a                                    ; $66ce: $02
    nop                                           ; $66cf: $00
    xor h                                         ; $66d0: $ac
    ld d, e                                       ; $66d1: $53
    ld d, b                                       ; $66d2: $50
    xor a                                         ; $66d3: $af
    ld de, $ff81                                  ; $66d4: $11 $81 $ff
    ld d, e                                       ; $66d7: $53
    ld h, h                                       ; $66d8: $64
    nop                                           ; $66d9: $00
    jr nc, jr_0c7_66fb                            ; $66da: $30 $1f

    ld d, h                                       ; $66dc: $54
    ld c, b                                       ; $66dd: $48
    ld b, $00                                     ; $66de: $06 $00
    ld [hl], l                                    ; $66e0: $75
    rst $38                                       ; $66e1: $ff
    cp a                                          ; $66e2: $bf
    rst $08                                       ; $66e3: $cf
    adc $87                                       ; $66e4: $ce $87
    rst $10                                       ; $66e6: $d7
    adc a                                         ; $66e7: $8f
    dec b                                         ; $66e8: $05
    rst $28                                       ; $66e9: $ef
    sbc a                                         ; $66ea: $9f
    sub d                                         ; $66eb: $92
    db $fd                                        ; $66ec: $fd
    add hl, sp                                    ; $66ed: $39
    jp nc, Jump_0c7_5d01                          ; $66ee: $d2 $01 $5d

    and [hl]                                      ; $66f1: $a6
    ld b, $00                                     ; $66f2: $06 $00
    ld d, l                                       ; $66f4: $55
    xor [hl]                                      ; $66f5: $ae
    ld b, $fc                                     ; $66f6: $06 $fc
    jp z, $bcfc                                   ; $66f8: $ca $fc $bc

jr_0c7_66fb:
    ld a, h                                       ; $66fb: $7c
    nop                                           ; $66fc: $00
    add hl, hl                                    ; $66fd: $29
    rst $10                                       ; $66fe: $d7
    sub d                                         ; $66ff: $92
    rst $28                                       ; $6700: $ef
    push bc                                       ; $6701: $c5

jr_0c7_6702:
    rst $38                                       ; $6702: $ff
    ld a, [hl-]                                   ; $6703: $3a
    rst $38                                       ; $6704: $ff
    nop                                           ; $6705: $00
    ccf                                           ; $6706: $3f
    db $10                                        ; $6707: $10
    rra                                           ; $6708: $1f
    db $10                                        ; $6709: $10
    rlca                                          ; $670a: $07
    jr jr_0c7_6716                                ; $670b: $18 $09

    ld e, $00                                     ; $670d: $1e $00
    sub l                                         ; $670f: $95
    ld [$fdd2], a                                 ; $6710: $ea $d2 $fd
    db $e4                                        ; $6713: $e4
    ei                                            ; $6714: $fb
    db $fd                                        ; $6715: $fd

jr_0c7_6716:
    rst $38                                       ; $6716: $ff
    nop                                           ; $6717: $00
    or c                                          ; $6718: $b1
    ld a, a                                       ; $6719: $7f
    pop bc                                        ; $671a: $c1
    jr nz, @-$66                                  ; $671b: $20 $98

    ld h, b                                       ; $671d: $60
    dec h                                         ; $671e: $25
    ld hl, sp+$06                                 ; $671f: $f8 $06
    ld b, d                                       ; $6721: $42
    db $fd                                        ; $6722: $fd
    ld d, c                                       ; $6723: $51
    cp $c0                                        ; $6724: $fe $c0
    ld [c], a                                     ; $6726: $e2
    rlca                                          ; $6727: $07
    add b                                         ; $6728: $80
    jr z, jr_0c7_6702                             ; $6729: $28 $d7

    jp nc, Jump_000_0540                          ; $672b: $d2 $40 $05

    ret nc                                        ; $672e: $d0

    ld c, h                                       ; $672f: $4c
    set 2, b                                      ; $6730: $cb $d0
    inc b                                         ; $6732: $04
    reti                                          ; $6733: $d9


    ld b, $d0                                     ; $6734: $06 $d0
    inc c                                         ; $6736: $0c
    ld d, d                                       ; $6737: $52
    nop                                           ; $6738: $00
    xor a                                         ; $6739: $af
    sub a                                         ; $673a: $97
    ld a, [hl]                                    ; $673b: $7e
    ld c, b                                       ; $673c: $48
    cp [hl]                                       ; $673d: $be
    ld e, [hl]                                    ; $673e: $5e
    inc bc                                        ; $673f: $03
    db $fd                                        ; $6740: $fd
    nop                                           ; $6741: $00
    inc bc                                        ; $6742: $03
    ld e, b                                       ; $6743: $58
    and a                                         ; $6744: $a7
    and c                                         ; $6745: $a1
    ld e, a                                       ; $6746: $5f
    inc bc                                        ; $6747: $03
    rst $38                                       ; $6748: $ff
    and a                                         ; $6749: $a7
    add b                                         ; $674a: $80
    add [hl]                                      ; $674b: $86
    dec b                                         ; $674c: $05
    ld h, c                                       ; $674d: $61
    ccf                                           ; $674e: $3f
    db $10                                        ; $674f: $10
    ld b, $be                                     ; $6750: $06 $be
    dec b                                         ; $6752: $05
    ld b, h                                       ; $6753: $44
    nop                                           ; $6754: $00
    ld bc, $4010                                  ; $6755: $01 $10 $40
    nop                                           ; $6758: $00
    ld [$0009], sp                                ; $6759: $08 $09 $00
    inc d                                         ; $675c: $14
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    ld l, d                                       ; $675f: $6a
    nop                                           ; $6760: $00
    ld [$1c1f], sp                                ; $6761: $08 $1f $1c
    rrca                                          ; $6764: $0f
    ld a, [bc]                                    ; $6765: $0a
    rrca                                          ; $6766: $0f
    nop                                           ; $6767: $00
    dec b                                         ; $6768: $05
    rrca                                          ; $6769: $0f
    ld c, [hl]                                    ; $676a: $4e
    rlca                                          ; $676b: $07
    dec h                                         ; $676c: $25
    rlca                                          ; $676d: $07
    ld c, e                                       ; $676e: $4b
    rlca                                          ; $676f: $07
    nop                                           ; $6770: $00
    sub e                                         ; $6771: $93
    inc bc                                        ; $6772: $03
    inc d                                         ; $6773: $14
    ld sp, hl                                     ; $6774: $f9
    ld [de], a                                    ; $6775: $12
    db $fd                                        ; $6776: $fd
    sbc h                                         ; $6777: $9c
    rst $38                                       ; $6778: $ff
    nop                                           ; $6779: $00
    inc c                                         ; $677a: $0c
    di                                            ; $677b: $f3
    ld [de], a                                    ; $677c: $12
    db $ed                                        ; $677d: $ed
    dec l                                         ; $677e: $2d
    sbc $40                                       ; $677f: $de $40
    and c                                         ; $6781: $a1
    nop                                           ; $6782: $00
    ld hl, $54d2                                  ; $6783: $21 $d2 $54
    rst $38                                       ; $6786: $ff
    dec l                                         ; $6787: $2d
    cp $14                                        ; $6788: $fe $14
    cp $00                                        ; $678a: $fe $00

jr_0c7_678c:
    jr z, jr_0c7_678c                             ; $678c: $28 $fe

jr_0c7_678e:
    ld a, [de]                                    ; $678e: $1a
    db $fc                                        ; $678f: $fc
    jr jr_0c7_678e                                ; $6790: $18 $fc

    sub b                                         ; $6792: $90
    ld a, h                                       ; $6793: $7c
    db $10                                        ; $6794: $10
    ld [hl], $f8                                  ; $6795: $36 $f8
    add b                                         ; $6797: $80
    ld b, c                                       ; $6798: $41
    jr jr_0c7_679b                                ; $6799: $18 $00

jr_0c7_679b:
    ld b, h                                       ; $679b: $44
    nop                                           ; $679c: $00
    ld hl, $000c                                  ; $679d: $21 $0c $00
    ld c, b                                       ; $67a0: $48
    nop                                           ; $67a1: $00
    sub d                                         ; $67a2: $92
    ld c, $20                                     ; $67a3: $0e $20
    ld d, [hl]                                    ; $67a5: $56
    ld [$0010], sp                                ; $67a6: $08 $10 $00
    nop                                           ; $67a9: $00
    inc h                                         ; $67aa: $24
    nop                                           ; $67ab: $00

Jump_0c7_67ac:
    ld e, d                                       ; $67ac: $5a
    nop                                           ; $67ad: $00
    inc c                                         ; $67ae: $0c
    rlca                                          ; $67af: $07
    ld b, $03                                     ; $67b0: $06 $03
    nop                                           ; $67b2: $00
    ld c, $05                                     ; $67b3: $0e $05
    inc c                                         ; $67b5: $0c
    dec bc                                        ; $67b6: $0b
    jr @+$11                                      ; $67b7: $18 $0f

    dec c                                         ; $67b9: $0d
    ld b, $00                                     ; $67ba: $06 $00
    ld c, [hl]                                    ; $67bc: $4e
    dec b                                         ; $67bd: $05
    and a                                         ; $67be: $a7
    ld [bc], a                                    ; $67bf: $02
    sbc d                                         ; $67c0: $9a
    db $e4                                        ; $67c1: $e4
    cp d                                          ; $67c2: $ba
    call nz, $ba00                                ; $67c3: $c4 $00 $ba
    call nz, $c7bb                                ; $67c6: $c4 $bb $c7
    db $d3                                        ; $67c9: $d3
    rst $28                                       ; $67ca: $ef
    ld e, b                                       ; $67cb: $58
    rst $20                                       ; $67cc: $e7
    nop                                           ; $67cd: $00
    ret nc                                        ; $67ce: $d0

    ld l, a                                       ; $67cf: $6f
    db $eb                                        ; $67d0: $eb
    ld [hl], a                                    ; $67d1: $77
    ld h, h                                       ; $67d2: $64
    sbc a                                         ; $67d3: $9f
    ld [hl], l                                    ; $67d4: $75
    adc a                                         ; $67d5: $8f
    nop                                           ; $67d6: $00
    ld [hl], l                                    ; $67d7: $75
    adc [hl]                                      ; $67d8: $8e
    ld [hl], h                                    ; $67d9: $74
    adc a                                         ; $67da: $8f
    dec l                                         ; $67db: $2d
    sbc $6a                                       ; $67dc: $de $6a
    sbc l                                         ; $67de: $9d
    nop                                           ; $67df: $00
    cpl                                           ; $67e0: $2f
    ret c                                         ; $67e1: $d8

    ld e, a                                       ; $67e2: $5f
    cp c                                          ; $67e3: $b9
    sub b                                         ; $67e4: $90
    ldh [rNR41], a                                ; $67e5: $e0 $20
    ret nz                                        ; $67e7: $c0

    nop                                           ; $67e8: $00
    ret nz                                        ; $67e9: $c0

    add b                                         ; $67ea: $80
    ldh [rLCDC], a                                ; $67eb: $e0 $40
    ret nc                                        ; $67ed: $d0

    ld h, b                                       ; $67ee: $60
    add b                                         ; $67ef: $80
    ldh [rP1], a                                  ; $67f0: $e0 $00
    or c                                          ; $67f2: $b1
    ret nz                                        ; $67f3: $c0

    ld [hl+], a                                   ; $67f4: $22
    ret nz                                        ; $67f5: $c0

    add hl, bc                                    ; $67f6: $09
    ld c, $0c                                     ; $67f7: $0e $0c
    rrca                                          ; $67f9: $0f
    ld [bc], a                                    ; $67fa: $02
    ld c, $07                                     ; $67fb: $0e $07
    rlca                                          ; $67fd: $07
    inc bc                                        ; $67fe: $03
    ld [bc], a                                    ; $67ff: $02
    ld bc, $08a2                                  ; $6800: $01 $a2 $08
    ld d, d                                       ; $6803: $52
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    ld bc, $83ff                                  ; $6806: $01 $ff $83
    rst $38                                       ; $6809: $ff
    ret                                           ; $680a: $c9


    rst $30                                       ; $680b: $f7
    and d                                         ; $680c: $a2
    nop                                           ; $680d: $00
    rst $30                                       ; $680e: $f7
    pop bc                                        ; $680f: $c1
    rst $30                                       ; $6810: $f7
    or b                                          ; $6811: $b0
    rst $20                                       ; $6812: $e7
    jp nc, $a8ec                                  ; $6813: $d2 $ec $a8

    nop                                           ; $6816: $00
    db $dd                                        ; $6817: $dd
    ld b, b                                       ; $6818: $40
    cp a                                          ; $6819: $bf
    nop                                           ; $681a: $00
    cp a                                          ; $681b: $bf
    inc h                                         ; $681c: $24
    sbc e                                         ; $681d: $9b
    ld d, b                                       ; $681e: $50
    nop                                           ; $681f: $00
    sbc e                                         ; $6820: $9b
    ldh [$fb], a                                  ; $6821: $e0 $fb

Jump_0c7_6823:
    ld [bc], a                                    ; $6823: $02
    ld sp, hl                                     ; $6824: $f9
    ld [de], a                                    ; $6825: $12
    dec c                                         ; $6826: $0d
    dec b                                         ; $6827: $05
    nop                                           ; $6828: $00
    xor $24                                       ; $6829: $ee $24
    sbc $4c                                       ; $682b: $de $4c
    cp $d8                                        ; $682d: $fe $d8
    cp $72                                        ; $682f: $fe $72
    nop                                           ; $6831: $00
    db $fc                                        ; $6832: $fc
    call nz, Call_0c7_51f8                        ; $6833: $c4 $f8 $51
    ldh [$d0], a                                  ; $6836: $e0 $d0
    ldh [$5a], a                                  ; $6838: $e0 $5a
    nop                                           ; $683a: $00
    ldh [$b5], a                                  ; $683b: $e0 $b5
    nop                                           ; $683d: $00
    ld a, a                                       ; $683e: $7f
    nop                                           ; $683f: $00
    sbc $00                                       ; $6840: $de $00
    or a                                          ; $6842: $b7
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    ld a, a                                       ; $6845: $7f
    add b                                         ; $6846: $80
    ei                                            ; $6847: $fb
    inc b                                         ; $6848: $04
    cp d                                          ; $6849: $ba
    ld b, l                                       ; $684a: $45
    rst $28                                       ; $684b: $ef
    nop                                           ; $684c: $00
    db $10                                        ; $684d: $10
    dec l                                         ; $684e: $2d
    inc bc                                        ; $684f: $03
    ld e, [hl]                                    ; $6850: $5e
    ld bc, $002d                                  ; $6851: $01 $2d $00
    rst $18                                       ; $6854: $df
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    cp [hl]                                       ; $6857: $be
    ld bc, $00f7                                  ; $6858: $01 $f7 $00
    push de                                       ; $685b: $d5
    ld a, [hl+]                                   ; $685c: $2a
    ld a, d                                       ; $685d: $7a

jr_0c7_685e:
    nop                                           ; $685e: $00
    add l                                         ; $685f: $85
    add b                                         ; $6860: $80
    rst $38                                       ; $6861: $ff
    sbc $ff                                       ; $6862: $de $ff
    ld h, c                                       ; $6864: $61
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    inc b                                         ; $6867: $04
    ccf                                           ; $6868: $3f
    xor h                                         ; $6869: $ac
    rra                                           ; $686a: $1f
    ld sp, hl                                     ; $686b: $f9
    ld b, $10                                     ; $686c: $06 $10
    ld [$f864], sp                                ; $686e: $08 $64 $f8
    nop                                           ; $6871: $00
    ret                                           ; $6872: $c9


    ldh a, [$9f]                                  ; $6873: $f0 $9f
    ldh [$37], a                                  ; $6875: $e0 $37
    ret nz                                        ; $6877: $c0

    ld a, l                                       ; $6878: $7d
    add d                                         ; $6879: $82
    nop                                           ; $687a: $00
    rst $28                                       ; $687b: $ef
    db $10                                        ; $687c: $10
    ld a, d                                       ; $687d: $7a
    add l                                         ; $687e: $85
    db $ed                                        ; $687f: $ed
    ld [de], a                                    ; $6880: $12

jr_0c7_6881:
    dec l                                         ; $6881: $2d
    nop                                           ; $6882: $00
    ld [hl+], a                                   ; $6883: $22
    ld e, [hl]                                    ; $6884: $5e
    nop                                           ; $6885: $00
    jr nc, jr_0c7_68d0                            ; $6886: $30 $48

    inc a                                         ; $6888: $3c
    nop                                           ; $6889: $00
    xor e                                         ; $688a: $ab
    ld a, $00                                     ; $688b: $3e $00
    rst $38                                       ; $688d: $ff
    add b                                         ; $688e: $80
    ld [bc], a                                    ; $688f: $02
    nop                                           ; $6890: $00
    ei                                            ; $6891: $fb
    inc b                                         ; $6892: $04
    rst $10                                       ; $6893: $d7
    jr z, jr_0c7_6881                             ; $6894: $28 $eb

    inc d                                         ; $6896: $14
    ld l, l                                       ; $6897: $6d
    nop                                           ; $6898: $00
    inc bc                                        ; $6899: $03
    db $db                                        ; $689a: $db
    ld bc, $01fe                                  ; $689b: $01 $fe $01
    ld d, a                                       ; $689e: $57
    jr nz, jr_0c7_685e                            ; $689f: $20 $bd

    ld b, b                                       ; $68a1: $40
    ld [bc], a                                    ; $68a2: $02
    jr nc, jr_0c7_68bd                            ; $68a3: $30 $18

    ld h, e                                       ; $68a5: $63
    ccf                                           ; $68a6: $3f
    xor a                                         ; $68a7: $af
    scf                                           ; $68a8: $37
    or a                                          ; $68a9: $b7
    cp a                                          ; $68aa: $bf
    nop                                           ; $68ab: $00
    di                                            ; $68ac: $f3
    sbc a                                         ; $68ad: $9f
    ld e, b                                       ; $68ae: $58
    rst $18                                       ; $68af: $df
    db $fc                                        ; $68b0: $fc
    ld c, a                                       ; $68b1: $4f
    xor a                                         ; $68b2: $af
    ld h, a                                       ; $68b3: $67
    nop                                           ; $68b4: $00
    ld d, h                                       ; $68b5: $54
    or e                                          ; $68b6: $b3
    ld d, $fb                                     ; $68b7: $16 $fb
    sub $b3                                       ; $68b9: $d6 $b3
    or h                                          ; $68bb: $b4
    rst $30                                       ; $68bc: $f7

jr_0c7_68bd:
    nop                                           ; $68bd: $00
    dec a                                         ; $68be: $3d
    and $69                                       ; $68bf: $e6 $69
    xor $fb                                       ; $68c1: $ee $fb
    call z, $9dd2                                 ; $68c3: $cc $d2 $9d
    nop                                           ; $68c6: $00
    and a                                         ; $68c7: $a7
    jr c, jr_0c7_691a                             ; $68c8: $38 $50

    add b                                         ; $68ca: $80
    xor d                                         ; $68cb: $aa
    nop                                           ; $68cc: $00
    rst $30                                       ; $68cd: $f7
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00

jr_0c7_68d0:
    cp [hl]                                       ; $68d0: $be
    nop                                           ; $68d1: $00
    cp e                                          ; $68d2: $bb
    ld b, h                                       ; $68d3: $44
    rst $30                                       ; $68d4: $f7
    ld [$54ab], sp                                ; $68d5: $08 $ab $54
    nop                                           ; $68d8: $00
    ld d, d                                       ; $68d9: $52
    xor l                                         ; $68da: $ad
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    adc d                                         ; $68dd: $8a
    nop                                           ; $68de: $00
    ld d, l                                       ; $68df: $55
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    ei                                            ; $68e2: $fb
    nop                                           ; $68e3: $00
    rla                                           ; $68e4: $17
    and b                                         ; $68e5: $a0
    rst $38                                       ; $68e6: $ff
    nop                                           ; $68e7: $00
    ld d, [hl]                                    ; $68e8: $56
    xor c                                         ; $68e9: $a9
    nop                                           ; $68ea: $00
    sbc l                                         ; $68eb: $9d
    ld h, d                                       ; $68ec: $62
    db $dd                                        ; $68ed: $dd
    ei                                            ; $68ee: $fb
    ld a, [c]                                     ; $68ef: $f2
    ld a, a                                       ; $68f0: $7f
    ld d, e                                       ; $68f1: $53
    dec a                                         ; $68f2: $3d
    nop                                           ; $68f3: $00
    reti                                          ; $68f4: $d9


    ld e, $bc                                     ; $68f5: $1e $bc
    rrca                                          ; $68f7: $0f
    rst $38                                       ; $68f8: $ff
    rlca                                          ; $68f9: $07
    rst $10                                       ; $68fa: $d7
    dec hl                                        ; $68fb: $2b
    nop                                           ; $68fc: $00
    ld a, d                                       ; $68fd: $7a
    add l                                         ; $68fe: $85
    xor $f7                                       ; $68ff: $ee $f7

jr_0c7_6901:
    db $d3                                        ; $6901: $d3
    ccf                                           ; $6902: $3f
    ld [c], a                                     ; $6903: $e2
    rst $28                                       ; $6904: $ef
    nop                                           ; $6905: $00
    ld b, $1f                                     ; $6906: $06 $1f
    inc c                                         ; $6908: $0c
    rst $38                                       ; $6909: $ff
    ld sp, hl                                     ; $690a: $f9
    cp $f2                                        ; $690b: $fe $f2
    db $fd                                        ; $690d: $fd
    nop                                           ; $690e: $00
    dec b                                         ; $690f: $05
    ld a, [$e0d5]                                 ; $6910: $fa $d5 $e0
    sbc a                                         ; $6913: $9f
    ldh [$3e], a                                  ; $6914: $e0 $3e
    ret nz                                        ; $6916: $c0

    nop                                           ; $6917: $00
    rst $28                                       ; $6918: $ef
    nop                                           ; $6919: $00

jr_0c7_691a:
    rst $30                                       ; $691a: $f7
    ld [$20dd], sp                                ; $691b: $08 $dd $20
    cp a                                          ; $691e: $bf
    ld b, b                                       ; $691f: $40
    nop                                           ; $6920: $00
    ld d, d                                       ; $6921: $52
    xor l                                         ; $6922: $ad
    ld a, h                                       ; $6923: $7c
    add e                                         ; $6924: $83

jr_0c7_6925:
    xor c                                         ; $6925: $a9

Call_0c7_6926:
    ld d, [hl]                                    ; $6926: $56
    ld d, [hl]                                    ; $6927: $56
    xor c                                         ; $6928: $a9
    nop                                           ; $6929: $00
    ld hl, $12df                                  ; $692a: $21 $df $12
    rst $38                                       ; $692d: $ff
    xor l                                         ; $692e: $ad
    rst $38                                       ; $692f: $ff
    ld a, d                                       ; $6930: $7a
    rst $38                                       ; $6931: $ff
    nop                                           ; $6932: $00
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    push de                                       ; $6935: $d5
    ld a, [hl+]                                   ; $6936: $2a
    and d                                         ; $6937: $a2
    ld e, l                                       ; $6938: $5d

jr_0c7_6939:
    ld d, h                                       ; $6939: $54
    xor e                                         ; $693a: $ab
    ld bc, $ff08                                  ; $693b: $01 $08 $ff
    ld [bc], a                                    ; $693e: $02
    rst $38                                       ; $693f: $ff
    xor e                                         ; $6940: $ab
    rst $38                                       ; $6941: $ff
    ld e, a                                       ; $6942: $5f
    stop                                          ; $6943: $10 $00
    nop                                           ; $6945: $00
    jp nc, $a42d                                  ; $6946: $d2 $2d $a4

    ld e, e                                       ; $6949: $5b
    add hl, bc                                    ; $694a: $09
    cp $60                                        ; $694b: $fe $60
    cp a                                          ; $694d: $bf
    inc b                                         ; $694e: $04
    ld a, [bc]                                    ; $694f: $0a
    rst $38                                       ; $6950: $ff
    ld d, l                                       ; $6951: $55
    rst $38                                       ; $6952: $ff
    cp a                                          ; $6953: $bf

jr_0c7_6954:
    jr nz, jr_0c7_6956                            ; $6954: $20 $00

jr_0c7_6956:
    and l                                         ; $6956: $a5
    ld e, d                                       ; $6957: $5a
    nop                                           ; $6958: $00
    ld c, e                                       ; $6959: $4b
    or h                                          ; $695a: $b4
    add c                                         ; $695b: $81
    ld a, [hl]                                    ; $695c: $7e
    nop                                           ; $695d: $00
    rst $38                                       ; $695e: $ff
    ld hl, $10ff                                  ; $695f: $21 $ff $10
    ld l, d                                       ; $6962: $6a
    rst $38                                       ; $6963: $ff
    push af                                       ; $6964: $f5
    jr nc, jr_0c7_6967                            ; $6965: $30 $00

jr_0c7_6967:
    jr c, jr_0c7_6939                             ; $6967: $38 $d0

    ld c, b                                       ; $6969: $48
    cp b                                          ; $696a: $b8
    nop                                           ; $696b: $00
    ld c, h                                       ; $696c: $4c
    cp b                                          ; $696d: $b8
    rrca                                          ; $696e: $0f
    rst $38                                       ; $696f: $ff
    ld d, b                                       ; $6970: $50
    rst $38                                       ; $6971: $ff
    xor b                                         ; $6972: $a8
    rst $38                                       ; $6973: $ff
    ld b, b                                       ; $6974: $40
    ld [hl], l                                    ; $6975: $75
    ld b, b                                       ; $6976: $40
    nop                                           ; $6977: $00
    ld l, h                                       ; $6978: $6c
    inc sp                                        ; $6979: $33
    ld c, c                                       ; $697a: $49
    halt                                          ; $697b: $76
    sub $69                                       ; $697c: $d6 $69
    jr nz, jr_0c7_6901                            ; $697e: $20 $81

    rst $38                                       ; $6980: $ff
    ld d, b                                       ; $6981: $50
    jr z, jr_0c7_6925                             ; $6982: $28 $a1

    ld e, [hl]                                    ; $6984: $5e
    ld a, [bc]                                    ; $6985: $0a
    push af                                       ; $6986: $f5
    add b                                         ; $6987: $80
    ld [bc], a                                    ; $6988: $02
    ld a, a                                       ; $6989: $7f
    ld h, $db                                     ; $698a: $26 $db
    ld b, h                                       ; $698c: $44
    rst $38                                       ; $698d: $ff
    xor a                                         ; $698e: $af
    ld a, [hl+]                                   ; $698f: $2a
    ld bc, $00ff                                  ; $6990: $01 $ff $00
    rst $38                                       ; $6993: $ff
    ld a, [hl+]                                   ; $6994: $2a
    push de                                       ; $6995: $d5
    db $10                                        ; $6996: $10
    rst $28                                       ; $6997: $ef
    or b                                          ; $6998: $b0
    ld c, a                                       ; $6999: $4f
    inc b                                         ; $699a: $04
    ret nz                                        ; $699b: $c0

    ld l, $00                                     ; $699c: $2e $00
    ld d, b                                       ; $699e: $50
    jr jr_0c7_69c5                                ; $699f: $18 $24

    db $db                                        ; $69a1: $db
    ld b, b                                       ; $69a2: $40
    cp a                                          ; $69a3: $bf
    ld c, d                                       ; $69a4: $4a
    or l                                          ; $69a5: $b5
    db $10                                        ; $69a6: $10
    inc c                                         ; $69a7: $0c
    ei                                            ; $69a8: $fb
    ld d, d                                       ; $69a9: $52
    ld b, b                                       ; $69aa: $40
    jr nz, jr_0c7_6954                            ; $69ab: $20 $a7

    ld a, a                                       ; $69ad: $7f
    pop de                                        ; $69ae: $d1
    rst $00                                       ; $69af: $c7
    nop                                           ; $69b0: $00
    or $81                                        ; $69b1: $f6 $81
    ld d, a                                       ; $69b3: $57
    jr nz, @+$37                                  ; $69b4: $20 $35

    ret z                                         ; $69b6: $c8

    ld c, h                                       ; $69b7: $4c
    pop af                                        ; $69b8: $f1
    nop                                           ; $69b9: $00
    ld b, b                                       ; $69ba: $40
    inc a                                         ; $69bb: $3c
    ld [hl], $07                                  ; $69bc: $36 $07
    cp $5b                                        ; $69be: $fe $5b
    ld h, $df                                     ; $69c0: $26 $df
    nop                                           ; $69c2: $00
    db $ec                                        ; $69c3: $ec
    ld a, a                                       ; $69c4: $7f

jr_0c7_69c5:
    db $d3                                        ; $69c5: $d3
    rra                                           ; $69c6: $1f
    adc l                                         ; $69c7: $8d
    inc bc                                        ; $69c8: $03
    adc b                                         ; $69c9: $88
    ld bc, $3100                                  ; $69ca: $01 $00 $31
    inc c                                         ; $69cd: $0c
    or c                                          ; $69ce: $b1
    inc b                                         ; $69cf: $04
    sub $1f                                       ; $69d0: $d6 $1f
    cp c                                          ; $69d2: $b9
    ld c, l                                       ; $69d3: $4d
    nop                                           ; $69d4: $00
    halt                                          ; $69d5: $76
    db $10                                        ; $69d6: $10
    jp hl                                         ; $69d7: $e9


    jr nz, @+$53                                  ; $69d8: $20 $51

    ret nz                                        ; $69da: $c0

    or d                                          ; $69db: $b2
    ldh [rP1], a                                  ; $69dc: $e0 $00
    ld d, d                                       ; $69de: $52
    db $fc                                        ; $69df: $fc
    ld c, [hl]                                    ; $69e0: $4e
    cp a                                          ; $69e1: $bf
    call nc, $b709                                ; $69e2: $d4 $09 $b7
    add b                                         ; $69e5: $80
    nop                                           ; $69e6: $00
    rst $38                                       ; $69e7: $ff
    ldh [$bd], a                                  ; $69e8: $e0 $bd
    jp c, $ff26                                   ; $69ea: $da $26 $ff

    ld e, l                                       ; $69ed: $5d
    db $eb                                        ; $69ee: $eb
    nop                                           ; $69ef: $00
    pop de                                        ; $69f0: $d1
    rst $38                                       ; $69f1: $ff
    db $e3                                        ; $69f2: $e3
    cp a                                          ; $69f3: $bf
    ld e, c                                       ; $69f4: $59
    cp $ef                                        ; $69f5: $fe $ef
    rst $10                                       ; $69f7: $d7
    nop                                           ; $69f8: $00
    add hl, de                                    ; $69f9: $19
    cp $d1                                        ; $69fa: $fe $d1
    ccf                                           ; $69fc: $3f
    ld bc, $48ff                                  ; $69fd: $01 $ff $48
    rst $38                                       ; $6a00: $ff
    nop                                           ; $6a01: $00
    sbc h                                         ; $6a02: $9c
    ld a, e                                       ; $6a03: $7b
    cpl                                           ; $6a04: $2f
    ld d, a                                       ; $6a05: $57
    ld [hl], a                                    ; $6a06: $77
    ret nz                                        ; $6a07: $c0

    dec de                                        ; $6a08: $1b
    ld [hl], b                                    ; $6a09: $70
    nop                                           ; $6a0a: $00
    adc [hl]                                      ; $6a0b: $8e

Call_0c7_6a0c:
    dec e                                         ; $6a0c: $1d
    dec e                                         ; $6a0d: $1d
    daa                                           ; $6a0e: $27
    rst $28                                       ; $6a0f: $ef
    db $10                                        ; $6a10: $10
    dec c                                         ; $6a11: $0d
    jr nz, jr_0c7_6a14                            ; $6a12: $20 $00

jr_0c7_6a14:
    ld h, e                                       ; $6a14: $63
    add h                                         ; $6a15: $84
    pop hl                                        ; $6a16: $e1
    ldh a, [$ad]                                  ; $6a17: $f0 $ad
    inc de                                        ; $6a19: $13
    sub [hl]                                      ; $6a1a: $96
    ld [$4300], sp                                ; $6a1b: $08 $00 $43
    inc d                                         ; $6a1e: $14
    ld [hl+], a                                   ; $6a1f: $22
    db $db                                        ; $6a20: $db
    rst $28                                       ; $6a21: $ef
    ld [hl], h                                    ; $6a22: $74
    scf                                           ; $6a23: $37
    inc e                                         ; $6a24: $1c
    nop                                           ; $6a25: $00
    dec h                                         ; $6a26: $25
    ld h, a                                       ; $6a27: $67
    inc e                                         ; $6a28: $1c
    ld b, c                                       ; $6a29: $41
    or $e9                                        ; $6a2a: $f6 $e9
    add hl, bc                                    ; $6a2c: $09
    cp $00                                        ; $6a2d: $fe $00
    ld [hl-], a                                   ; $6a2f: $32
    sbc a                                         ; $6a30: $9f
    db $fd                                        ; $6a31: $fd
    inc bc                                        ; $6a32: $03
    inc a                                         ; $6a33: $3c
    add c                                         ; $6a34: $81
    ld e, l                                       ; $6a35: $5d
    ld [bc], a                                    ; $6a36: $02
    nop                                           ; $6a37: $00
    ld sp, hl                                     ; $6a38: $f9
    ld b, $7f                                     ; $6a39: $06 $7f
    ld [c], a                                     ; $6a3b: $e2
    rst $30                                       ; $6a3c: $f7
    ld l, l                                       ; $6a3d: $6d
    dec bc                                        ; $6a3e: $0b
    db $fc                                        ; $6a3f: $fc
    nop                                           ; $6a40: $00
    and l                                         ; $6a41: $a5
    ld a, a                                       ; $6a42: $7f
    ld [hl], c                                    ; $6a43: $71
    rst $38                                       ; $6a44: $ff
    ld [hl], l                                    ; $6a45: $75
    xor $e3                                       ; $6a46: $ee $e3
    rra                                           ; $6a48: $1f
    nop                                           ; $6a49: $00
    rst $20                                       ; $6a4a: $e7
    ld b, $c0                                     ; $6a4b: $06 $c0
    inc hl                                        ; $6a4d: $23
    sbc l                                         ; $6a4e: $9d
    ret nz                                        ; $6a4f: $c0

    db $f4                                        ; $6a50: $f4
    ld hl, sp+$00                                 ; $6a51: $f8 $00
    rst $18                                       ; $6a53: $df
    xor [hl]                                      ; $6a54: $ae
    ld e, b                                       ; $6a55: $58
    rst $20                                       ; $6a56: $e7
    db $ec                                        ; $6a57: $ec
    sub e                                         ; $6a58: $93
    rla                                           ; $6a59: $17
    adc b                                         ; $6a5a: $88
    nop                                           ; $6a5b: $00
    jp c, Jump_0c7_43a1                           ; $6a5c: $da $a1 $43

    ldh a, [$f3]                                  ; $6a5f: $f0 $f3
    add hl, bc                                    ; $6a61: $09
    rla                                           ; $6a62: $17
    nop                                           ; $6a63: $00
    nop                                           ; $6a64: $00
    call c, $9303                                 ; $6a65: $dc $03 $93
    db $eb                                        ; $6a68: $eb
    db $ec                                        ; $6a69: $ec
    halt                                          ; $6a6a: $76
    cp c                                          ; $6a6b: $b9
    inc e                                         ; $6a6c: $1c
    nop                                           ; $6a6d: $00
    push de                                       ; $6a6e: $d5
    daa                                           ; $6a6f: $27
    call z, $4e11                                 ; $6a70: $cc $11 $4e
    pop af                                        ; $6a73: $f1
    ld [c], a                                     ; $6a74: $e2
    rst $38                                       ; $6a75: $ff
    nop                                           ; $6a76: $00
    ld a, l                                       ; $6a77: $7d
    ld a, [hl]                                    ; $6a78: $7e
    cp l                                          ; $6a79: $bd
    ld e, $a2                                     ; $6a7a: $1e $a2
    rlca                                          ; $6a7c: $07
    jp nz, $0089                                  ; $6a7d: $c2 $89 $00

    db $f4                                        ; $6a80: $f4
    nop                                           ; $6a81: $00
    rst $10                                       ; $6a82: $d7
    jr nz, jr_0c7_6af0                            ; $6a83: $20 $6b

    db $f4                                        ; $6a85: $f4
    ld sp, hl                                     ; $6a86: $f9
    sbc a                                         ; $6a87: $9f
    nop                                           ; $6a88: $00
    sbc $07                                       ; $6a89: $de $07
    ld a, [de]                                    ; $6a8b: $1a
    ld h, l                                       ; $6a8c: $65
    ld [hl], d                                    ; $6a8d: $72
    adc b                                         ; $6a8e: $88
    add $11                                       ; $6a8f: $c6 $11
    nop                                           ; $6a91: $00
    cp l                                          ; $6a92: $bd
    ret nz                                        ; $6a93: $c0

    ld d, [hl]                                    ; $6a94: $56
    ld sp, hl                                     ; $6a95: $f9
    rst $28                                       ; $6a96: $ef
    db $10                                        ; $6a97: $10
    sub a                                         ; $6a98: $97
    ld h, b                                       ; $6a99: $60
    nop                                           ; $6a9a: $00
    ld c, h                                       ; $6a9b: $4c
    add e                                         ; $6a9c: $83
    call c, Call_0c7_7de7                         ; $6a9d: $dc $e7 $7d
    ld a, [$fe15]                                 ; $6aa0: $fa $15 $fe
    nop                                           ; $6aa3: $00
    ld a, c                                       ; $6aa4: $79
    rst $38                                       ; $6aa5: $ff
    jp hl                                         ; $6aa6: $e9


    rst $10                                       ; $6aa7: $d7
    ld h, c                                       ; $6aa8: $61
    ld a, [c]                                     ; $6aa9: $f2
    call c, Call_000_10be                         ; $6aaa: $dc $be $10
    sbc $ff                                       ; $6aad: $de $ff
    ld c, l                                       ; $6aaf: $4d
    ld bc, $8b02                                  ; $6ab0: $01 $02 $8b
    ld a, [hl]                                    ; $6ab3: $7e
    db $fc                                        ; $6ab4: $fc
    db $e3                                        ; $6ab5: $e3
    nop                                           ; $6ab6: $00
    ld l, [hl]                                    ; $6ab7: $6e
    rst $38                                       ; $6ab8: $ff
    sub [hl]                                      ; $6ab9: $96
    nop                                           ; $6aba: $00
    ld l, c                                       ; $6abb: $69
    add h                                         ; $6abc: $84
    ld e, e                                       ; $6abd: $5b
    add e                                         ; $6abe: $83
    nop                                           ; $6abf: $00
    ld d, c                                       ; $6ac0: $51
    rst $20                                       ; $6ac1: $e7
    sbc $bd                                       ; $6ac2: $de $bd
    ld a, a                                       ; $6ac4: $7f
    add a                                         ; $6ac5: $87
    cp e                                          ; $6ac6: $bb
    ld b, c                                       ; $6ac7: $41
    nop                                           ; $6ac8: $00
    db $fc                                        ; $6ac9: $fc
    ld [bc], a                                    ; $6aca: $02
    ld l, e                                       ; $6acb: $6b
    ldh a, [$50]                                  ; $6acc: $f0 $50
    db $fd                                        ; $6ace: $fd
    sbc e                                         ; $6acf: $9b
    rst $28                                       ; $6ad0: $ef
    nop                                           ; $6ad1: $00
    ld h, a                                       ; $6ad2: $67
    db $fd                                        ; $6ad3: $fd
    ld h, e                                       ; $6ad4: $63
    cp $0b                                        ; $6ad5: $fe $0b
    rst $30                                       ; $6ad7: $f7
    sub a                                         ; $6ad8: $97
    or $00                                        ; $6ad9: $f6 $00
    and e                                         ; $6adb: $a3
    db $fc                                        ; $6adc: $fc
    db $ed                                        ; $6add: $ed
    di                                            ; $6ade: $f3
    db $eb                                        ; $6adf: $eb
    ld [hl], $e2                                  ; $6ae0: $36 $e2
    cp l                                          ; $6ae2: $bd
    nop                                           ; $6ae3: $00
    xor l                                         ; $6ae4: $ad
    ld [hl], a                                    ; $6ae5: $77
    ld e, h                                       ; $6ae6: $5c
    dec sp                                        ; $6ae7: $3b
    ld l, a                                       ; $6ae8: $6f
    ccf                                           ; $6ae9: $3f
    ld [hl], e                                    ; $6aea: $73
    rst $38                                       ; $6aeb: $ff
    nop                                           ; $6aec: $00
    pop hl                                        ; $6aed: $e1
    rst $38                                       ; $6aee: $ff
    push de                                       ; $6aef: $d5

jr_0c7_6af0:
    xor e                                         ; $6af0: $ab
    ld l, [hl]                                    ; $6af1: $6e
    ld a, [c]                                     ; $6af2: $f2
    call c, Call_000_003c                         ; $6af3: $dc $3c $00
    ld d, h                                       ; $6af6: $54
    xor a                                         ; $6af7: $af
    ld sp, hl                                     ; $6af8: $f9
    dec b                                         ; $6af9: $05
    db $ec                                        ; $6afa: $ec
    ld [de], a                                    ; $6afb: $12
    or a                                          ; $6afc: $b7
    ld b, b                                       ; $6afd: $40
    db $10                                        ; $6afe: $10
    sbc a                                         ; $6aff: $9f
    ldh [$28], a                                  ; $6b00: $e0 $28
    sbc d                                         ; $6b02: $9a
    nop                                           ; $6b03: $00
    inc de                                        ; $6b04: $13
    adc h                                         ; $6b05: $8c
    ld a, d                                       ; $6b06: $7a
    add c                                         ; $6b07: $81
    nop                                           ; $6b08: $00
    adc e                                         ; $6b09: $8b
    ldh a, [$7c]                                  ; $6b0a: $f0 $7c
    ld d, d                                       ; $6b0c: $52
    ld c, [hl]                                    ; $6b0d: $4e
    sub [hl]                                      ; $6b0e: $96
    db $dd                                        ; $6b0f: $dd
    daa                                           ; $6b10: $27
    nop                                           ; $6b11: $00
    ld [hl], a                                    ; $6b12: $77
    rst $38                                       ; $6b13: $ff
    ld l, h                                       ; $6b14: $6c
    rst $30                                       ; $6b15: $f7
    ret z                                         ; $6b16: $c8

    ccf                                           ; $6b17: $3f
    rst $18                                       ; $6b18: $df
    ld b, $00                                     ; $6b19: $06 $00
    add h                                         ; $6b1b: $84
    ld h, e                                       ; $6b1c: $63
    xor $01                                       ; $6b1d: $ee $01
    di                                            ; $6b1f: $f3
    inc c                                         ; $6b20: $0c
    ld a, [c]                                     ; $6b21: $f2
    add c                                         ; $6b22: $81
    nop                                           ; $6b23: $00
    ld [hl], e                                    ; $6b24: $73
    rlca                                          ; $6b25: $07
    inc a                                         ; $6b26: $3c
    add c                                         ; $6b27: $81
    ld e, a                                       ; $6b28: $5f
    nop                                           ; $6b29: $00
    ld l, c                                       ; $6b2a: $69
    ld b, $00                                     ; $6b2b: $06 $00
    sbc l                                         ; $6b2d: $9d
    ld [c], a                                     ; $6b2e: $e2
    ld sp, $957e                                  ; $6b2f: $31 $7e $95
    ld l, $0f                                     ; $6b32: $2e $0f
    ld b, a                                       ; $6b34: $47
    nop                                           ; $6b35: $00
    ldh [rNR31], a                                ; $6b36: $e0 $1b
    ld e, e                                       ; $6b38: $5b
    and $5d                                       ; $6b39: $e6 $5d
    inc a                                         ; $6b3b: $3c
    ld d, [hl]                                    ; $6b3c: $56
    daa                                           ; $6b3d: $27
    nop                                           ; $6b3e: $00
    add hl, bc                                    ; $6b3f: $09
    ld h, l                                       ; $6b40: $65
    ld d, d                                       ; $6b41: $52
    ld [$0a40], sp                                ; $6b42: $08 $40 $0a
    ld d, $c0                                     ; $6b45: $16 $c0
    nop                                           ; $6b47: $00
    rlca                                          ; $6b48: $07
    cpl                                           ; $6b49: $2f
    adc d                                         ; $6b4a: $8a
    dec d                                         ; $6b4b: $15
    dec c                                         ; $6b4c: $0d
    jr nc, @-$13                                  ; $6b4d: $30 $eb

    inc b                                         ; $6b4f: $04
    nop                                           ; $6b50: $00
    or l                                          ; $6b51: $b5
    ldh [$d2], a                                  ; $6b52: $e0 $d2
    ld a, b                                       ; $6b54: $78
    sbc $3c                                       ; $6b55: $de $3c
    ld [hl], b                                    ; $6b57: $70
    ld l, a                                       ; $6b58: $6f
    nop                                           ; $6b59: $00
    ccf                                           ; $6b5a: $3f
    add b                                         ; $6b5b: $80
    cp c                                          ; $6b5c: $b9
    ld b, d                                       ; $6b5d: $42
    ld [$e3d1], a                                 ; $6b5e: $ea $d1 $e3
    ld a, b                                       ; $6b61: $78
    nop                                           ; $6b62: $00
    sbc [hl]                                      ; $6b63: $9e
    ld e, [hl]                                    ; $6b64: $5e
    db $e4                                        ; $6b65: $e4
    dec bc                                        ; $6b66: $0b
    sbc d                                         ; $6b67: $9a
    ld bc, $0017                                  ; $6b68: $01 $17 $00
    nop                                           ; $6b6b: $00
    ld e, $78                                     ; $6b6c: $1e $78
    push de                                       ; $6b6e: $d5
    ld a, $75                                     ; $6b6f: $3e $75
    ld l, e                                       ; $6b71: $6b
    xor a                                         ; $6b72: $af
    ld a, [c]                                     ; $6b73: $f2
    nop                                           ; $6b74: $00
    ld l, c                                       ; $6b75: $69
    or [hl]                                       ; $6b76: $b6
    push bc                                       ; $6b77: $c5
    cp a                                          ; $6b78: $bf
    inc l                                         ; $6b79: $2c
    ld [hl], a                                    ; $6b7a: $77
    ld a, [hl]                                    ; $6b7b: $7e
    dec de                                        ; $6b7c: $1b
    nop                                           ; $6b7d: $00
    ld d, d                                       ; $6b7e: $52
    ld [$420c], sp                                ; $6b7f: $08 $0c $42
    or a                                          ; $6b82: $b7
    ret nz                                        ; $6b83: $c0

    ld h, e                                       ; $6b84: $63
    ld hl, sp+$00                                 ; $6b85: $f8 $00
    add e                                         ; $6b87: $83
    db $fd                                        ; $6b88: $fd
    add hl, sp                                    ; $6b89: $39
    rst $28                                       ; $6b8a: $ef
    ld [hl], c                                    ; $6b8b: $71
    cp $f3                                        ; $6b8c: $fe $f3
    ld l, [hl]                                    ; $6b8e: $6e
    nop                                           ; $6b8f: $00
    ld a, e                                       ; $6b90: $7b
    inc a                                         ; $6b91: $3c
    xor [hl]                                      ; $6b92: $ae
    ld b, a                                       ; $6b93: $47
    ld e, c                                       ; $6b94: $59
    rlca                                          ; $6b95: $07
    and h                                         ; $6b96: $a4
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    call z, $9301                                 ; $6b99: $cc $01 $93
    jp $f76c                                      ; $6b9c: $c3 $6c $f7


    ld hl, sp-$61                                 ; $6b9f: $f8 $9f
    nop                                           ; $6ba1: $00
    db $d3                                        ; $6ba2: $d3
    inc c                                         ; $6ba3: $0c
    push af                                       ; $6ba4: $f5
    ld a, [bc]                                    ; $6ba5: $0a
    or d                                          ; $6ba6: $b2
    pop bc                                        ; $6ba7: $c1
    inc a                                         ; $6ba8: $3c
    ld a, [c]                                     ; $6ba9: $f2
    ld b, b                                       ; $6baa: $40
    call Call_000_00e6                            ; $6bab: $cd $e6 $00
    dec b                                         ; $6bae: $05
    rst $38                                       ; $6baf: $ff
    adc d                                         ; $6bb0: $8a
    ld a, a                                       ; $6bb1: $7f
    sub b                                         ; $6bb2: $90
    ld e, [hl]                                    ; $6bb3: $5e
    nop                                           ; $6bb4: $00
    ld l, [hl]                                    ; $6bb5: $6e
    sub a                                         ; $6bb6: $97
    db $db                                        ; $6bb7: $db
    dec h                                         ; $6bb8: $25
    add $30                                       ; $6bb9: $c6 $30
    rst $38                                       ; $6bbb: $ff
    ld bc, $0e00                                  ; $6bbc: $01 $00 $0e
    jp $fde6                                      ; $6bbf: $c3 $e6 $fd


    ld e, l                                       ; $6bc2: $5d
    ld a, [$02fc]                                 ; $6bc3: $fa $fc $02
    nop                                           ; $6bc6: $00
    or a                                          ; $6bc7: $b7
    ld b, b                                       ; $6bc8: $40
    or e                                          ; $6bc9: $b3
    db $e4                                        ; $6bca: $e4
    or $f9                                        ; $6bcb: $f6 $f9
    ld c, a                                       ; $6bcd: $4f
    sbc a                                         ; $6bce: $9f
    nop                                           ; $6bcf: $00
    ld [hl], l                                    ; $6bd0: $75
    rlca                                          ; $6bd1: $07
    or a                                          ; $6bd2: $b7
    ld c, b                                       ; $6bd3: $48
    rst $38                                       ; $6bd4: $ff
    nop                                           ; $6bd5: $00
    rst $18                                       ; $6bd6: $df
    jr c, jr_0c7_6bd9                             ; $6bd7: $38 $00

jr_0c7_6bd9:
    and $17                                       ; $6bd9: $e6 $17
    ld a, b                                       ; $6bdb: $78
    rlca                                          ; $6bdc: $07
    add h                                         ; $6bdd: $84
    ld l, b                                       ; $6bde: $68
    dec [hl]                                      ; $6bdf: $35
    jp z, $dd00                                   ; $6be0: $ca $00 $dd

    add d                                         ; $6be3: $82
    call z, $8df0                                 ; $6be4: $cc $f0 $8d
    cp $34                                        ; $6be7: $fe $34
    and d                                         ; $6be9: $a2
    nop                                           ; $6bea: $00
    ld a, d                                       ; $6beb: $7a
    ld b, h                                       ; $6bec: $44
    jp nz, Jump_0c7_63d5                          ; $6bed: $c2 $d5 $63

    db $f4                                        ; $6bf0: $f4
    cp d                                          ; $6bf1: $ba
    sbc $00                                       ; $6bf2: $de $00
    cp l                                          ; $6bf4: $bd
    ld h, a                                       ; $6bf5: $67
    bit 7, h                                      ; $6bf6: $cb $7c
    ld [hl], b                                    ; $6bf8: $70
    xor a                                         ; $6bf9: $af
    ld [hl-], a                                   ; $6bfa: $32
    db $fc                                        ; $6bfb: $fc
    nop                                           ; $6bfc: $00
    dec [hl]                                      ; $6bfd: $35
    sbc $d9                                       ; $6bfe: $de $d9
    rst $30                                       ; $6c00: $f7

jr_0c7_6c01:
    rra                                           ; $6c01: $1f
    ld l, a                                       ; $6c02: $6f
    ld c, l                                       ; $6c03: $4d
    rst $30                                       ; $6c04: $f7
    nop                                           ; $6c05: $00
    adc [hl]                                      ; $6c06: $8e
    pop af                                        ; $6c07: $f1
    ld a, c                                       ; $6c08: $79
    xor $bc                                       ; $6c09: $ee $bc
    sbc a                                         ; $6c0b: $9f
    adc e                                         ; $6c0c: $8b
    ld h, a                                       ; $6c0d: $67
    nop                                           ; $6c0e: $00
    xor $1b                                       ; $6c0f: $ee $1b
    sbc d                                         ; $6c11: $9a
    rst $18                                       ; $6c12: $df
    ld hl, sp+$7f                                 ; $6c13: $f8 $7f
    add [hl]                                      ; $6c15: $86
    ld e, a                                       ; $6c16: $5f
    nop                                           ; $6c17: $00
    db $eb                                        ; $6c18: $eb
    rla                                           ; $6c19: $17
    or l                                          ; $6c1a: $b5
    ld [$0691], sp                                ; $6c1b: $08 $91 $06
    dec sp                                        ; $6c1e: $3b
    call c, $de00                                 ; $6c1f: $dc $00 $de
    rla                                           ; $6c22: $17
    ld [hl], e                                    ; $6c23: $73
    add hl, bc                                    ; $6c24: $09
    adc h                                         ; $6c25: $8c
    jr nc, jr_0c7_6c58                            ; $6c26: $30 $30

    adc [hl]                                      ; $6c28: $8e
    nop                                           ; $6c29: $00
    sub a                                         ; $6c2a: $97
    ret z                                         ; $6c2b: $c8

    pop hl                                        ; $6c2c: $e1
    ld [hl], d                                    ; $6c2d: $72
    sbc d                                         ; $6c2e: $9a
    dec e                                         ; $6c2f: $1d
    cp l                                          ; $6c30: $bd
    ld b, e                                       ; $6c31: $43
    nop                                           ; $6c32: $00
    rst $38                                       ; $6c33: $ff
    nop                                           ; $6c34: $00
    ld a, [c]                                     ; $6c35: $f2
    inc c                                         ; $6c36: $0c
    ld c, l                                       ; $6c37: $4d
    jp nc, $f827                                  ; $6c38: $d2 $27 $f8

    nop                                           ; $6c3b: $00
    rst $38                                       ; $6c3c: $ff
    inc e                                         ; $6c3d: $1c
    rst $18                                       ; $6c3e: $df
    daa                                           ; $6c3f: $27
    cp a                                          ; $6c40: $bf
    ld hl, $e4da                                  ; $6c41: $21 $da $e4
    nop                                           ; $6c44: $00
    ld a, b                                       ; $6c45: $78
    db $fc                                        ; $6c46: $fc
    rst $28                                       ; $6c47: $ef
    cp [hl]                                       ; $6c48: $be
    rst $30                                       ; $6c49: $f7
    call $f61f                                    ; $6c4a: $cd $1f $f6
    nop                                           ; $6c4d: $00
    xor e                                         ; $6c4e: $ab
    db $fc                                        ; $6c4f: $fc
    sbc [hl]                                      ; $6c50: $9e
    ld hl, sp+$7f                                 ; $6c51: $f8 $7f
    ldh a, [$5b]                                  ; $6c53: $f0 $5b
    rst $20                                       ; $6c55: $e7
    nop                                           ; $6c56: $00
    inc [hl]                                      ; $6c57: $34

jr_0c7_6c58:
    rst $38                                       ; $6c58: $ff
    jp nc, $c17d                                  ; $6c59: $d2 $7d $c1

    cp [hl]                                       ; $6c5c: $be
    ld sp, hl                                     ; $6c5d: $f9
    ld l, a                                       ; $6c5e: $6f
    nop                                           ; $6c5f: $00
    ld e, b                                       ; $6c60: $58
    rra                                           ; $6c61: $1f
    ld c, e                                       ; $6c62: $4b
    rlca                                          ; $6c63: $07
    ld e, c                                       ; $6c64: $59
    jr jr_0c7_6c01                                ; $6c65: $18 $9a

    db $fd                                        ; $6c67: $fd
    nop                                           ; $6c68: $00
    ld e, b                                       ; $6c69: $58
    ld a, a                                       ; $6c6a: $7f
    sub a                                         ; $6c6b: $97
    ld c, a                                       ; $6c6c: $4f
    ld de, $ac67                                  ; $6c6d: $11 $67 $ac
    ld bc, $d600                                  ; $6c70: $01 $00 $d6
    nop                                           ; $6c73: $00
    ld h, a                                       ; $6c74: $67
    sub b                                         ; $6c75: $90
    ret nz                                        ; $6c76: $c0

    ldh a, [rHDMA1]                               ; $6c77: $f0 $51
    add hl, bc                                    ; $6c79: $09
    nop                                           ; $6c7a: $00
    ld c, e                                       ; $6c7b: $4b
    jr nz, @-$28                                  ; $6c7c: $20 $d6

    nop                                           ; $6c7e: $00
    adc c                                         ; $6c7f: $89
    ret nz                                        ; $6c80: $c0

    push hl                                       ; $6c81: $e5
    ld [hl], b                                    ; $6c82: $70
    nop                                           ; $6c83: $00
    or [hl]                                       ; $6c84: $b6
    ld e, h                                       ; $6c85: $5c
    ld b, l                                       ; $6c86: $45
    cp a                                          ; $6c87: $bf
    db $ed                                        ; $6c88: $ed
    inc de                                        ; $6c89: $13
    sub [hl]                                      ; $6c8a: $96
    ret nz                                        ; $6c8b: $c0

    nop                                           ; $6c8c: $00
    ld h, [hl]                                    ; $6c8d: $66
    ld a, b                                       ; $6c8e: $78
    db $ed                                        ; $6c8f: $ed
    ld d, $af                                     ; $6c90: $16 $af
    ld b, c                                       ; $6c92: $41
    db $f4                                        ; $6c93: $f4
    ld bc, $3b00                                  ; $6c94: $01 $00 $3b
    inc b                                         ; $6c97: $04

jr_0c7_6c98:
    or c                                          ; $6c98: $b1
    nop                                           ; $6c99: $00
    push af                                       ; $6c9a: $f5
    ld [c], a                                     ; $6c9b: $e2
    xor [hl]                                      ; $6c9c: $ae
    rra                                           ; $6c9d: $1f
    nop                                           ; $6c9e: $00
    ld l, d                                       ; $6c9f: $6a
    add l                                         ; $6ca0: $85

jr_0c7_6ca1:
    or [hl]                                       ; $6ca1: $b6
    ld [$006d], sp                                ; $6ca2: $08 $6d $00
    dec d                                         ; $6ca5: $15
    add b                                         ; $6ca6: $80
    nop                                           ; $6ca7: $00
    ld c, e                                       ; $6ca8: $4b
    ldh a, [$f4]                                  ; $6ca9: $f0 $f4
    jr jr_0c7_6ca1                                ; $6cab: $18 $f4

    rrca                                          ; $6cad: $0f
    ld a, [bc]                                    ; $6cae: $0a
    jr nc, jr_0c7_6cb1                            ; $6caf: $30 $00

jr_0c7_6cb1:
    inc [hl]                                      ; $6cb1: $34
    ret nz                                        ; $6cb2: $c0

    bit 6, b                                      ; $6cb3: $cb $70
    ld a, [hl-]                                   ; $6cb5: $3a
    db $dd                                        ; $6cb6: $dd
    add l                                         ; $6cb7: $85
    cpl                                           ; $6cb8: $2f
    nop                                           ; $6cb9: $00
    ret z                                         ; $6cba: $c8

    add hl, de                                    ; $6cbb: $19
    db $e4                                        ; $6cbc: $e4
    add hl, de                                    ; $6cbd: $19
    cp $40                                        ; $6cbe: $fe $40

Jump_0c7_6cc0:
    db $ed                                        ; $6cc0: $ed
    ld e, $00                                     ; $6cc1: $1e $00
    ld a, l                                       ; $6cc3: $7d
    add a                                         ; $6cc4: $87
    ld a, $01                                     ; $6cc5: $3e $01
    ld [$3e15], a                                 ; $6cc7: $ea $15 $3e
    pop bc                                        ; $6cca: $c1
    nop                                           ; $6ccb: $00
    ld a, a                                       ; $6ccc: $7f
    ldh [$5e], a                                  ; $6ccd: $e0 $5e
    ld hl, sp+$37                                 ; $6ccf: $f8 $37
    cp $af                                        ; $6cd1: $fe $af
    ld a, a                                       ; $6cd3: $7f
    nop                                           ; $6cd4: $00
    ld [hl], e                                    ; $6cd5: $73
    rst $38                                       ; $6cd6: $ff
    inc sp                                        ; $6cd7: $33
    db $ed                                        ; $6cd8: $ed
    call nz, Call_0c7_62fb                        ; $6cd9: $c4 $fb $62
    rst $38                                       ; $6cdc: $ff
    nop                                           ; $6cdd: $00
    dec a                                         ; $6cde: $3d
    ld a, [hl]                                    ; $6cdf: $7e
    cp a                                          ; $6ce0: $bf
    ld d, $01                                     ; $6ce1: $16 $01
    add a                                         ; $6ce3: $87
    ld a, e                                       ; $6ce4: $7b
    sub a                                         ; $6ce5: $97
    nop                                           ; $6ce6: $00
    add l                                         ; $6ce7: $85
    or $3f                                        ; $6ce8: $f6 $3f
    ld hl, sp+$6f                                 ; $6cea: $f8 $6f
    sbc $dd                                       ; $6cec: $de $dd
    rst $30                                       ; $6cee: $f7
    nop                                           ; $6cef: $00
    add hl, sp                                    ; $6cf0: $39
    sbc $75                                       ; $6cf1: $de $75
    cp a                                          ; $6cf3: $bf
    ld c, d                                       ; $6cf4: $4a
    rst $38                                       ; $6cf5: $ff
    cp e                                          ; $6cf6: $bb
    ld b, a                                       ; $6cf7: $47
    nop                                           ; $6cf8: $00
    ei                                            ; $6cf9: $fb
    nop                                           ; $6cfa: $00
    or l                                          ; $6cfb: $b5
    ld c, d                                       ; $6cfc: $4a
    rst $18                                       ; $6cfd: $df
    nop                                           ; $6cfe: $00
    rst $30                                       ; $6cff: $f7
    add b                                         ; $6d00: $80
    nop                                           ; $6d01: $00
    rst $00                                       ; $6d02: $c7
    ld hl, sp-$65                                 ; $6d03: $f8 $9b
    cp $39                                        ; $6d05: $fe $39
    rst $28                                       ; $6d07: $ef

Call_0c7_6d08:
    inc bc                                        ; $6d08: $03
    cp $00                                        ; $6d09: $fe $00
    pop af                                        ; $6d0b: $f1
    rst $28                                       ; $6d0c: $ef
    sbc [hl]                                      ; $6d0d: $9e
    ld l, a                                       ; $6d0e: $6f
    rst $20                                       ; $6d0f: $e7
    rra                                           ; $6d10: $1f
    inc h                                         ; $6d11: $24
    ld e, c                                       ; $6d12: $59
    nop                                           ; $6d13: $00
    ld [bc], a                                    ; $6d14: $02
    jr nc, jr_0c7_6c98                            ; $6d15: $30 $81

    ld h, b                                       ; $6d17: $60
    ld d, e                                       ; $6d18: $53
    ret nz                                        ; $6d19: $c0

    ld d, h                                       ; $6d1a: $54
    rst $38                                       ; $6d1b: $ff
    nop                                           ; $6d1c: $00
    ld b, c                                       ; $6d1d: $41
    rst $38                                       ; $6d1e: $ff
    db $fc                                        ; $6d1f: $fc
    db $d3                                        ; $6d20: $d3
    ld a, [c]                                     ; $6d21: $f2
    ld e, a                                       ; $6d22: $5f
    and h                                         ; $6d23: $a4
    rst $38                                       ; $6d24: $ff
    nop                                           ; $6d25: $00
    ld e, c                                       ; $6d26: $59
    ld a, a                                       ; $6d27: $7f
    sub e                                         ; $6d28: $93
    rrca                                          ; $6d29: $0f
    add l                                         ; $6d2a: $85
    inc bc                                        ; $6d2b: $03
    ld l, [hl]                                    ; $6d2c: $6e
    sub c                                         ; $6d2d: $91
    nop                                           ; $6d2e: $00
    call c, $d7e0                                 ; $6d2f: $dc $e0 $d7
    ld a, c                                       ; $6d32: $79
    ld a, a                                       ; $6d33: $7f
    rst $20                                       ; $6d34: $e7
    rst $10                                       ; $6d35: $d7
    pop bc                                        ; $6d36: $c1
    nop                                           ; $6d37: $00
    ld e, a                                       ; $6d38: $5f
    and b                                         ; $6d39: $a0
    sub a                                         ; $6d3a: $97
    ld h, b                                       ; $6d3b: $60
    or l                                          ; $6d3c: $b5
    ret z                                         ; $6d3d: $c8

    cpl                                           ; $6d3e: $2f
    sub c                                         ; $6d3f: $91
    nop                                           ; $6d40: $00
    ld a, d                                       ; $6d41: $7a
    call nz, $e07e                                ; $6d42: $c4 $7e $e0
    rst $18                                       ; $6d45: $df
    inc a                                         ; $6d46: $3c
    ld a, [hl]                                    ; $6d47: $7e
    add a                                         ; $6d48: $87
    nop                                           ; $6d49: $00
    di                                            ; $6d4a: $f3
    add hl, bc                                    ; $6d4b: $09
    ld h, d                                       ; $6d4c: $62
    dec d                                         ; $6d4d: $15
    xor $0f                                       ; $6d4e: $ee $0f
    rst $10                                       ; $6d50: $d7
    inc e                                         ; $6d51: $1c
    nop                                           ; $6d52: $00
    ld c, c                                       ; $6d53: $49
    daa                                           ; $6d54: $27
    cp e                                          ; $6d55: $bb
    inc b                                         ; $6d56: $04
    or a                                          ; $6d57: $b7
    nop                                           ; $6d58: $00
    ld a, [hl-]                                   ; $6d59: $3a
    add b                                         ; $6d5a: $80
    nop                                           ; $6d5b: $00
    db $ec                                        ; $6d5c: $ec
    ld [hl], b                                    ; $6d5d: $70
    ld e, l                                       ; $6d5e: $5d
    jr c, jr_0c7_6daf                             ; $6d5f: $38 $4e

    rla                                           ; $6d61: $17
    ld l, $04                                     ; $6d62: $2e $04
    nop                                           ; $6d64: $00
    adc d                                         ; $6d65: $8a
    sbc b                                         ; $6d66: $98
    rst $18                                       ; $6d67: $df
    ld [hl], b                                    ; $6d68: $70
    cp c                                          ; $6d69: $b9
    ld e, $b1                                     ; $6d6a: $1e $b1
    rlca                                          ; $6d6c: $07
    nop                                           ; $6d6d: $00
    db $fd                                        ; $6d6e: $fd
    ld bc, $18f5                                  ; $6d6f: $01 $f5 $18
    ld a, d                                       ; $6d72: $7a
    nop                                           ; $6d73: $00
    and $79                                       ; $6d74: $e6 $79
    nop                                           ; $6d76: $00
    xor h                                         ; $6d77: $ac
    inc d                                         ; $6d78: $14
    inc sp                                        ; $6d79: $33
    rlca                                          ; $6d7a: $07
    ld d, e                                       ; $6d7b: $53
    and b                                         ; $6d7c: $a0
    add $50                                       ; $6d7d: $c6 $50
    nop                                           ; $6d7f: $00
    ld l, b                                       ; $6d80: $68
    nop                                           ; $6d81: $00
    ret nc                                        ; $6d82: $d0

    ret nz                                        ; $6d83: $c0

    ld [hl], $78                                  ; $6d84: $36 $78
    jr nz, jr_0c7_6d91                            ; $6d86: $20 $09

    nop                                           ; $6d88: $00
    ld hl, $211c                                  ; $6d89: $21 $1c $21
    add h                                         ; $6d8c: $84
    ld e, [hl]                                    ; $6d8d: $5e
    ldh [rHDMA4], a                               ; $6d8e: $e0 $54
    ld a, h                                       ; $6d90: $7c

jr_0c7_6d91:
    nop                                           ; $6d91: $00
    and [hl]                                      ; $6d92: $a6
    rrca                                          ; $6d93: $0f
    ld a, a                                       ; $6d94: $7f
    add c                                         ; $6d95: $81
    add l                                         ; $6d96: $85
    db $10                                        ; $6d97: $10
    and $f0                                       ; $6d98: $e6 $f0
    nop                                           ; $6d9a: $00
    ccf                                           ; $6d9b: $3f
    call c, $b7af                                 ; $6d9c: $dc $af $b7
    push bc                                       ; $6d9f: $c5
    ccf                                           ; $6da0: $3f
    ld [hl], l                                    ; $6da1: $75
    sbc [hl]                                      ; $6da2: $9e
    nop                                           ; $6da3: $00
    ld e, $f8                                     ; $6da4: $1e $f8
    ld d, l                                       ; $6da6: $55
    ldh a, [rHDMA2]                               ; $6da7: $f0 $52
    ld a, b                                       ; $6da9: $78
    ret                                           ; $6daa: $c9


    rst $38                                       ; $6dab: $ff
    nop                                           ; $6dac: $00
    pop af                                        ; $6dad: $f1
    rst $18                                       ; $6dae: $df

jr_0c7_6daf:
    and e                                         ; $6daf: $a3
    rst $38                                       ; $6db0: $ff
    ld [c], a                                     ; $6db1: $e2
    db $fd                                        ; $6db2: $fd
    rla                                           ; $6db3: $17
    ld a, l                                       ; $6db4: $7d
    nop                                           ; $6db5: $00
    ld l, a                                       ; $6db6: $6f
    sub [hl]                                      ; $6db7: $96
    ld a, l                                       ; $6db8: $7d
    add c                                         ; $6db9: $81
    sub [hl]                                      ; $6dba: $96
    ld c, c                                       ; $6dbb: $49
    ld a, [hl]                                    ; $6dbc: $7e
    ld sp, hl                                     ; $6dbd: $f9
    nop                                           ; $6dbe: $00
    ld a, h                                       ; $6dbf: $7c
    ld e, a                                       ; $6dc0: $5f
    cp l                                          ; $6dc1: $bd
    ld b, a                                       ; $6dc2: $47
    cp [hl]                                       ; $6dc3: $be
    ld bc, $8255                                  ; $6dc4: $01 $55 $82
    nop                                           ; $6dc7: $00
    ld a, a                                       ; $6dc8: $7f
    add b                                         ; $6dc9: $80
    sub l                                         ; $6dca: $95
    ldh [$b7], a                                  ; $6dcb: $e0 $b7
    ld a, b                                       ; $6dcd: $78
    ld a, e                                       ; $6dce: $7b
    add b                                         ; $6dcf: $80
    nop                                           ; $6dd0: $00
    push de                                       ; $6dd1: $d5
    jr nz, jr_0c7_6e32                            ; $6dd2: $20 $5e

    add b                                         ; $6dd4: $80
    ld b, d                                       ; $6dd5: $42
    db $f4                                        ; $6dd6: $f4
    add c                                         ; $6dd7: $81
    ld e, [hl]                                    ; $6dd8: $5e
    nop                                           ; $6dd9: $00
    adc a                                         ; $6dda: $8f
    rlca                                          ; $6ddb: $07
    inc de                                        ; $6ddc: $13
    dec h                                         ; $6ddd: $25
    add c                                         ; $6dde: $81
    ld b, $70                                     ; $6ddf: $06 $70
    dec b                                         ; $6de1: $05
    ld a, l                                       ; $6de2: $7d
    inc b                                         ; $6de3: $04
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    and l                                         ; $6de7: $a5
    nop                                           ; $6de8: $00
    ld c, d                                       ; $6de9: $4a
    nop                                           ; $6dea: $00
    push af                                       ; $6deb: $f5
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    rst $28                                       ; $6dee: $ef
    nop                                           ; $6def: $00
    cp e                                          ; $6df0: $bb
    ld b, b                                       ; $6df1: $40
    ld a, a                                       ; $6df2: $7f
    add b                                         ; $6df3: $80
    db $eb                                        ; $6df4: $eb
    inc b                                         ; $6df5: $04
    nop                                           ; $6df6: $00
    ld l, a                                       ; $6df7: $6f
    ld e, a                                       ; $6df8: $5f
    ld d, l                                       ; $6df9: $55
    ld l, a                                       ; $6dfa: $6f
    db $ed                                        ; $6dfb: $ed
    ld e, a                                       ; $6dfc: $5f
    ld b, a                                       ; $6dfd: $47
    ld a, l                                       ; $6dfe: $7d
    nop                                           ; $6dff: $00
    db $ec                                        ; $6e00: $ec
    ld e, a                                       ; $6e01: $5f
    sub $7d                                       ; $6e02: $d6 $7d
    db $ed                                        ; $6e04: $ed
    ld e, [hl]                                    ; $6e05: $5e
    sub $7d                                       ; $6e06: $d6 $7d
    nop                                           ; $6e08: $00
    inc d                                         ; $6e09: $14
    ret nz                                        ; $6e0a: $c0

    xor c                                         ; $6e0b: $a9
    ret nz                                        ; $6e0c: $c0

    cp $c0                                        ; $6e0d: $fe $c0
    rst $10                                       ; $6e0f: $d7
    ldh [rP1], a                                  ; $6e10: $e0 $00
    call $dfe2                                    ; $6e12: $cd $e2 $df
    ldh [$cb], a                                  ; $6e15: $e0 $cb
    db $f4                                        ; $6e17: $f4
    rst $08                                       ; $6e18: $cf
    ldh a, [rNR10]                                ; $6e19: $f0 $10
    dec l                                         ; $6e1b: $2d
    nop                                           ; $6e1c: $00
    ld d, [hl]                                    ; $6e1d: $56
    inc l                                         ; $6e1e: $2c
    nop                                           ; $6e1f: $00
    jp c, $bf04                                   ; $6e20: $da $04 $bf

    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    cp $00                                        ; $6e25: $fe $00
    rst $30                                       ; $6e27: $f7
    ld [$40bb], sp                                ; $6e28: $08 $bb $40
    ld l, $00                                     ; $6e2b: $2e $00
    nop                                           ; $6e2d: $00
    rla                                           ; $6e2e: $17
    nop                                           ; $6e2f: $00
    xor a                                         ; $6e30: $af
    nop                                           ; $6e31: $00

jr_0c7_6e32:
    ld [hl], a                                    ; $6e32: $77
    nop                                           ; $6e33: $00
    xor $00                                       ; $6e34: $ee $00
    nop                                           ; $6e36: $00
    db $fd                                        ; $6e37: $fd
    nop                                           ; $6e38: $00
    cp [hl]                                       ; $6e39: $be
    ld b, c                                       ; $6e3a: $41
    rst $38                                       ; $6e3b: $ff
    nop                                           ; $6e3c: $00
    call nc, RST_00                               ; $6e3d: $d4 $00 $00
    xor c                                         ; $6e40: $a9
    nop                                           ; $6e41: $00
    ld a, [hl]                                    ; $6e42: $7e
    nop                                           ; $6e43: $00
    rst $30                                       ; $6e44: $f7
    nop                                           ; $6e45: $00
    db $ed                                        ; $6e46: $ed
    ld [bc], a                                    ; $6e47: $02
    ld b, b                                       ; $6e48: $40
    ld e, a                                       ; $6e49: $5f
    ld c, [hl]                                    ; $6e4a: $4e
    nop                                           ; $6e4b: $00
    rst $38                                       ; $6e4c: $ff
    nop                                           ; $6e4d: $00
    inc l                                         ; $6e4e: $2c
    ld bc, $0156                                  ; $6e4f: $01 $56 $01
    nop                                           ; $6e52: $00
    xor $01                                       ; $6e53: $ee $01
    jp c, $be05                                   ; $6e55: $da $05 $be

    ld bc, $01ff                                  ; $6e58: $01 $ff $01
    inc b                                         ; $6e5b: $04
    or $09                                        ; $6e5c: $f6 $09
    cp e                                          ; $6e5e: $bb
    ld b, c                                       ; $6e5f: $41
    rst $38                                       ; $6e60: $ff
    ld bc, $7f10                                  ; $6e61: $01 $10 $7f
    ld a, a                                       ; $6e64: $7f
    nop                                           ; $6e65: $00
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $18                                       ; $6e68: $df
    rst $18                                       ; $6e69: $df
    cp a                                          ; $6e6a: $bf
    cp a                                          ; $6e6b: $bf
    ld d, h                                       ; $6e6c: $54
    ld d, h                                       ; $6e6d: $54
    nop                                           ; $6e6e: $00
    ei                                            ; $6e6f: $fb
    db $fc                                        ; $6e70: $fc
    or $f9                                        ; $6e71: $f6 $f9
    db $ec                                        ; $6e73: $ec
    di                                            ; $6e74: $f3
    jp c, $00e7                                   ; $6e75: $da $e7 $00

    or [hl]                                       ; $6e78: $b6
    adc $69                                       ; $6e79: $ce $69
    sbc c                                         ; $6e7b: $99
    ld b, a                                       ; $6e7c: $47
    and a                                         ; $6e7d: $a7
    sbc a                                         ; $6e7e: $9f
    ld e, a                                       ; $6e7f: $5f
    nop                                           ; $6e80: $00
    ld d, e                                       ; $6e81: $53
    sbc h                                         ; $6e82: $9c
    adc a                                         ; $6e83: $8f
    ld l, b                                       ; $6e84: $68
    inc hl                                        ; $6e85: $23
    db $ec                                        ; $6e86: $ec
    adc c                                         ; $6e87: $89
    adc [hl]                                      ; $6e88: $8e
    nop                                           ; $6e89: $00
    ld l, d                                       ; $6e8a: $6a
    ld l, l                                       ; $6e8b: $6d
    pop af                                        ; $6e8c: $f1
    or $f4                                        ; $6e8d: $f6 $f4
    rst $30                                       ; $6e8f: $f7
    ld a, [$00fb]                                 ; $6e90: $fa $fb $00
    cp l                                          ; $6e93: $bd
    ld a, a                                       ; $6e94: $7f
    ret nz                                        ; $6e95: $c0

    jr nz, @-$1f                                  ; $6e96: $20 $df

    ccf                                           ; $6e98: $3f
    rst $28                                       ; $6e99: $ef
    rra                                           ; $6e9a: $1f
    nop                                           ; $6e9b: $00
    rst $30                                       ; $6e9c: $f7
    rrca                                          ; $6e9d: $0f
    ld a, e                                       ; $6e9e: $7b
    add a                                         ; $6e9f: $87
    cp l                                          ; $6ea0: $bd
    ld b, e                                       ; $6ea1: $43
    ld e, [hl]                                    ; $6ea2: $5e
    and c                                         ; $6ea3: $a1
    nop                                           ; $6ea4: $00
    ld d, a                                       ; $6ea5: $57
    add sp, $6f                                   ; $6ea6: $e8 $6f
    ld [hl], b                                    ; $6ea8: $70
    sub a                                         ; $6ea9: $97
    sbc b                                         ; $6eaa: $98
    rst $30                                       ; $6eab: $f7
    ld hl, sp+$00                                 ; $6eac: $f8 $00
    rst $38                                       ; $6eae: $ff
    ldh a, [$ef]                                  ; $6eaf: $f0 $ef
    ldh a, [$9f]                                  ; $6eb1: $f0 $9f
    ldh [$7d], a                                  ; $6eb3: $e0 $7d
    add d                                         ; $6eb5: $82
    ld [bc], a                                    ; $6eb6: $02
    or b                                          ; $6eb7: $b0
    ld [hl], b                                    ; $6eb8: $70
    cp a                                          ; $6eb9: $bf
    ld a, a                                       ; $6eba: $7f
    sbc a                                         ; $6ebb: $9f
    ld a, a                                       ; $6ebc: $7f
    inc b                                         ; $6ebd: $04
    jr @+$61                                      ; $6ebe: $18 $5f

    nop                                           ; $6ec0: $00
    rst $18                                       ; $6ec1: $df
    rra                                           ; $6ec2: $1f
    rst $18                                       ; $6ec3: $df
    dec a                                         ; $6ec4: $3d
    ld b, d                                       ; $6ec5: $42
    inc l                                         ; $6ec6: $2c
    ld e, h                                       ; $6ec7: $5c
    sub b                                         ; $6ec8: $90
    nop                                           ; $6ec9: $00
    xor b                                         ; $6eca: $a8
    xor d                                         ; $6ecb: $aa
    or [hl]                                       ; $6ecc: $b6
    sub $d9                                       ; $6ecd: $d6 $d9
    db $eb                                        ; $6ecf: $eb
    db $ec                                        ; $6ed0: $ec
    ldh a, [rP1]                                  ; $6ed1: $f0 $00
    pop af                                        ; $6ed3: $f1
    cp $fe                                        ; $6ed4: $fe $fe
    ld hl, $01e0                                  ; $6ed6: $21 $e0 $01
    nop                                           ; $6ed9: $00
    ld c, $00                                     ; $6eda: $0e $00
    rrca                                          ; $6edc: $0f
    rlca                                          ; $6edd: $07
    rlca                                          ; $6ede: $07
    ld bc, $4001                                  ; $6edf: $01 $01 $40
    ret nz                                        ; $6ee2: $c0

    ret nc                                        ; $6ee3: $d0

    nop                                           ; $6ee4: $00
    jr nc, jr_0c7_6ef6                            ; $6ee5: $30 $0f

    jr nc, @+$79                                  ; $6ee7: $30 $77

    rst $28                                       ; $6ee9: $ef
    rst $38                                       ; $6eea: $ff
    rst $28                                       ; $6eeb: $ef
    rst $28                                       ; $6eec: $ef
    nop                                           ; $6eed: $00
    rst $38                                       ; $6eee: $ff
    cp $fe                                        ; $6eef: $fe $fe
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    ei                                            ; $6ef3: $fb
    ei                                            ; $6ef4: $fb
    ld a, l                                       ; $6ef5: $7d

jr_0c7_6ef6:
    ld bc, $2a7d                                  ; $6ef6: $01 $7d $2a
    ld a, [hl+]                                   ; $6ef9: $2a
    xor [hl]                                      ; $6efa: $ae
    nop                                           ; $6efb: $00
    rla                                           ; $6efc: $17
    add b                                         ; $6efd: $80
    ret nz                                        ; $6efe: $c0

    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    add b                                         ; $6f01: $80
    ld l, [hl]                                    ; $6f02: $6e
    add b                                         ; $6f03: $80
    ld a, l                                       ; $6f04: $7d
    add b                                         ; $6f05: $80
    ld a, $c1                                     ; $6f06: $3e $c1
    ld a, a                                       ; $6f08: $7f
    nop                                           ; $6f09: $00
    add b                                         ; $6f0a: $80
    db $dd                                        ; $6f0b: $dd
    nop                                           ; $6f0c: $00
    rst $38                                       ; $6f0d: $ff
    nop                                           ; $6f0e: $00
    ld [hl], a                                    ; $6f0f: $77
    ld [$00ed], sp                                ; $6f10: $08 $ed $00
    ld [de], a                                    ; $6f13: $12
    db $eb                                        ; $6f14: $eb
    inc d                                         ; $6f15: $14
    ld b, a                                       ; $6f16: $47
    cp b                                          ; $6f17: $b8
    adc l                                         ; $6f18: $8d
    ld [hl], b                                    ; $6f19: $70
    rla                                           ; $6f1a: $17
    nop                                           ; $6f1b: $00
    add sp, -$13                                  ; $6f1c: $e8 $ed
    sbc $d4                                       ; $6f1e: $de $d4
    rst $38                                       ; $6f20: $ff
    rst $08                                       ; $6f21: $cf
    cp $dc                                        ; $6f22: $fe $dc

Jump_0c7_6f24:
    ld [$deff], sp                                ; $6f24: $08 $ff $de
    rst $38                                       ; $6f27: $ff
    db $fc                                        ; $6f28: $fc
    inc b                                         ; $6f29: $04
    nop                                           ; $6f2a: $00
    cp $ff                                        ; $6f2b: $fe $ff
    ld c, a                                       ; $6f2d: $4f
    nop                                           ; $6f2e: $00
    ldh a, [$ce]                                  ; $6f2f: $f0 $ce
    pop af                                        ; $6f31: $f1
    ld c, l                                       ; $6f32: $4d
    ld a, [c]                                     ; $6f33: $f2
    add $f9                                       ; $6f34: $c6 $f9
    ld c, c                                       ; $6f36: $49
    nop                                           ; $6f37: $00
    or $c2                                        ; $6f38: $f6 $c2
    db $fd                                        ; $6f3a: $fd
    ld b, l                                       ; $6f3b: $45
    ld a, [$fdc2]                                 ; $6f3c: $fa $c2 $fd
    ld [hl], a                                    ; $6f3f: $77
    nop                                           ; $6f40: $00
    add b                                         ; $6f41: $80
    db $fd                                        ; $6f42: $fd
    ld [bc], a                                    ; $6f43: $02
    ld e, e                                       ; $6f44: $5b
    and h                                         ; $6f45: $a4
    rst $30                                       ; $6f46: $f7
    ld [$007b], sp                                ; $6f47: $08 $7b $00
    add h                                         ; $6f4a: $84
    rst $30                                       ; $6f4b: $f7
    ld [$a15e], sp                                ; $6f4c: $08 $5e $a1
    cp l                                          ; $6f4f: $bd
    ld b, d                                       ; $6f50: $42
    xor a                                         ; $6f51: $af
    nop                                           ; $6f52: $00
    db $10                                        ; $6f53: $10
    ld a, a                                       ; $6f54: $7f
    nop                                           ; $6f55: $00
    ei                                            ; $6f56: $fb
    inc b                                         ; $6f57: $04
    rst $30                                       ; $6f58: $f7
    ld [$006b], sp                                ; $6f59: $08 $6b $00
    inc d                                         ; $6f5c: $14
    rst $30                                       ; $6f5d: $f7
    ld [$10ef], sp                                ; $6f5e: $08 $ef $10
    sub $29                                       ; $6f61: $d6 $29
    ld a, a                                       ; $6f63: $7f
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    xor $11                                       ; $6f66: $ee $11
    db $fd                                        ; $6f68: $fd
    ld [bc], a                                    ; $6f69: $02
    or $09                                        ; $6f6a: $f6 $09
    jp hl                                         ; $6f6c: $e9


    nop                                           ; $6f6d: $00
    ld d, $52                                     ; $6f6e: $16 $52
    xor l                                         ; $6f70: $ad
    push hl                                       ; $6f71: $e5
    ld a, [de]                                    ; $6f72: $1a
    and d                                         ; $6f73: $a2
    ld e, l                                       ; $6f74: $5d
    halt                                          ; $6f75: $76
    nop                                           ; $6f76: $00
    add c                                         ; $6f77: $81
    db $fd                                        ; $6f78: $fd
    inc bc                                        ; $6f79: $03
    ld e, d                                       ; $6f7a: $5a
    and l                                         ; $6f7b: $a5
    rst $30                                       ; $6f7c: $f7
    add hl, bc                                    ; $6f7d: $09
    ld a, e                                       ; $6f7e: $7b
    nop                                           ; $6f7f: $00
    add l                                         ; $6f80: $85
    rst $30                                       ; $6f81: $f7
    add hl, bc                                    ; $6f82: $09
    ld e, a                                       ; $6f83: $5f
    and c                                         ; $6f84: $a1
    cp l                                          ; $6f85: $bd
    ld b, e                                       ; $6f86: $43
    cp $00                                        ; $6f87: $fe $00
    rst $38                                       ; $6f89: $ff
    ld d, h                                       ; $6f8a: $54
    ld d, l                                       ; $6f8b: $55
    xor b                                         ; $6f8c: $a8
    xor d                                         ; $6f8d: $aa
    dec d                                         ; $6f8e: $15
    dec d                                         ; $6f8f: $15
    xor d                                         ; $6f90: $aa
    nop                                           ; $6f91: $00
    xor d                                         ; $6f92: $aa
    ld bc, $2a01                                  ; $6f93: $01 $01 $2a
    ld a, [hl+]                                   ; $6f96: $2a
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    ccf                                           ; $6f99: $3f
    nop                                           ; $6f9a: $00
    cp a                                          ; $6f9b: $bf
    ld e, a                                       ; $6f9c: $5f
    ld e, a                                       ; $6f9d: $5f
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    ld d, l                                       ; $6fa0: $55
    ld d, l                                       ; $6fa1: $55
    xor a                                         ; $6fa2: $af
    nop                                           ; $6fa3: $00
    xor a                                         ; $6fa4: $af
    ld d, l                                       ; $6fa5: $55
    ld d, l                                       ; $6fa6: $55
    xor e                                         ; $6fa7: $ab
    xor e                                         ; $6fa8: $ab
    ld de, $fd11                                  ; $6fa9: $11 $11 $fd
    ld h, b                                       ; $6fac: $60
    db $fd                                        ; $6fad: $fd
    xor h                                         ; $6fae: $ac
    ld [$0930], sp                                ; $6faf: $08 $30 $09
    ld e, a                                       ; $6fb2: $5f
    ld e, a                                       ; $6fb3: $5f
    cp a                                          ; $6fb4: $bf
    cp a                                          ; $6fb5: $bf
    ld d, l                                       ; $6fb6: $55
    nop                                           ; $6fb7: $00
    ld d, l                                       ; $6fb8: $55
    dec hl                                        ; $6fb9: $2b
    call nc, $ea95                                ; $6fba: $d4 $95 $ea
    ld b, d                                       ; $6fbd: $42
    ld a, l                                       ; $6fbe: $7d
    xor b                                         ; $6fbf: $a8
    nop                                           ; $6fc0: $00
    cp a                                          ; $6fc1: $bf
    call $f3cf                                    ; $6fc2: $cd $cf $f3
    di                                            ; $6fc5: $f3
    db $fc                                        ; $6fc6: $fc
    db $fc                                        ; $6fc7: $fc
    rst $38                                       ; $6fc8: $ff
    nop                                           ; $6fc9: $00
    rst $38                                       ; $6fca: $ff
    ld a, [$5005]                                 ; $6fcb: $fa $05 $50
    xor a                                         ; $6fce: $af
    and c                                         ; $6fcf: $a1
    ld e, a                                       ; $6fd0: $5f
    dec bc                                        ; $6fd1: $0b
    ld bc, $56ff                                  ; $6fd2: $01 $ff $56
    cp $f1                                        ; $6fd5: $fe $f1
    pop af                                        ; $6fd7: $f1
    rrca                                          ; $6fd8: $0f
    rrca                                          ; $6fd9: $0f
    ld h, $00                                     ; $6fda: $26 $00
    sbc h                                         ; $6fdc: $9c
    ld d, [hl]                                    ; $6fdd: $56
    ld bc, $bfbf                                  ; $6fde: $01 $bf $bf
    ld h, b                                       ; $6fe1: $60
    add hl, bc                                    ; $6fe2: $09
    ld [bc], a                                    ; $6fe3: $02
    ld c, b                                       ; $6fe4: $48
    ldh a, [$08]                                  ; $6fe5: $f0 $08
    ld a, [$00fa]                                 ; $6fe7: $fa $fa $00
    db $fd                                        ; $6fea: $fd
    db $fd                                        ; $6feb: $fd
    xor d                                         ; $6fec: $aa
    xor d                                         ; $6fed: $aa
    ret nz                                        ; $6fee: $c0

    ret nz                                        ; $6fef: $c0

    ei                                            ; $6ff0: $fb
    ei                                            ; $6ff1: $fb
    nop                                           ; $6ff2: $00
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    xor d                                         ; $6ff5: $aa
    xor d                                         ; $6ff6: $aa
    push af                                       ; $6ff7: $f5
    push af                                       ; $6ff8: $f5
    xor d                                         ; $6ff9: $aa
    xor d                                         ; $6ffa: $aa
    ld [$d5d5], sp                                ; $6ffb: $08 $d5 $d5
    adc b                                         ; $6ffe: $88
    adc b                                         ; $6fff: $88
    inc c                                         ; $7000: $0c
    ld [$d5d5], sp                                ; $7001: $08 $d5 $d5
    xor b                                         ; $7004: $a8
    nop                                           ; $7005: $00
    xor b                                         ; $7006: $a8
    ld d, l                                       ; $7007: $55
    ld d, l                                       ; $7008: $55
    and b                                         ; $7009: $a0
    and b                                         ; $700a: $a0
    ld d, h                                       ; $700b: $54
    ld d, h                                       ; $700c: $54
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    cpl                                           ; $7010: $2f
    sub b                                         ; $7011: $90
    ld a, a                                       ; $7012: $7f
    add b                                         ; $7013: $80
    ei                                            ; $7014: $fb
    add h                                         ; $7015: $84
    ld [hl], a                                    ; $7016: $77
    nop                                           ; $7017: $00
    adc b                                         ; $7018: $88
    db $eb                                        ; $7019: $eb
    sub h                                         ; $701a: $94
    ld [hl], a                                    ; $701b: $77
    adc b                                         ; $701c: $88
    rst $28                                       ; $701d: $ef
    sub b                                         ; $701e: $90
    ld d, [hl]                                    ; $701f: $56
    nop                                           ; $7020: $00
    xor c                                         ; $7021: $a9
    rrca                                          ; $7022: $0f
    ldh a, [rNR33]                                ; $7023: $f0 $1d
    ld [c], a                                     ; $7025: $e2
    ld a, [hl+]                                   ; $7026: $2a
    push de                                       ; $7027: $d5
    sub l                                         ; $7028: $95
    nop                                           ; $7029: $00
    ld l, d                                       ; $702a: $6a
    nop                                           ; $702b: $00
    rst $38                                       ; $702c: $ff
    inc h                                         ; $702d: $24
    rst $38                                       ; $702e: $ff
    ld d, b                                       ; $702f: $50
    rst $38                                       ; $7030: $ff
    xor d                                         ; $7031: $aa
    ld sp, $dfff                                  ; $7032: $31 $ff $df
    inc b                                         ; $7035: $04
    ld bc, $19c3                                  ; $7036: $01 $c3 $19
    add hl, sp                                    ; $7039: $39
    rst $38                                       ; $703a: $ff
    ld b, b                                       ; $703b: $40
    stop                                          ; $703c: $10 $00
    nop                                           ; $703e: $00
    ret z                                         ; $703f: $c8

    rst $38                                       ; $7040: $ff
    call nz, $c8fb                                ; $7041: $c4 $fb $c8
    rst $30                                       ; $7044: $f7
    ret nc                                        ; $7045: $d0

jr_0c7_7046:
    rst $38                                       ; $7046: $ff
    inc b                                         ; $7047: $04
    pop hl                                        ; $7048: $e1
    rst $38                                       ; $7049: $ff
    ld [bc], a                                    ; $704a: $02
    rst $38                                       ; $704b: $ff
    dec d                                         ; $704c: $15
    jr nz, jr_0c7_704f                            ; $704d: $20 $00

jr_0c7_704f:
    ld e, b                                       ; $704f: $58
    and a                                         ; $7050: $a7
    nop                                           ; $7051: $00
    xor c                                         ; $7052: $a9
    ld d, [hl]                                    ; $7053: $56
    ld [de], a                                    ; $7054: $12
    db $ed                                        ; $7055: $ed
    nop                                           ; $7056: $00
    rst $38                                       ; $7057: $ff
    add hl, bc                                    ; $7058: $09
    cp $10                                        ; $7059: $fe $10
    jr nz, @+$01                                  ; $705b: $20 $ff

    ld bc, $0030                                  ; $705d: $01 $30 $00
    xor c                                         ; $7060: $a9
    ld d, [hl]                                    ; $7061: $56
    jp nz, $013d                                  ; $7062: $c2 $3d $01

    adc c                                         ; $7065: $89
    halt                                          ; $7066: $76
    ld b, b                                       ; $7067: $40
    cp a                                          ; $7068: $bf
    adc d                                         ; $7069: $8a
    ld a, l                                       ; $706a: $7d
    ld hl, $1030                                  ; $706b: $21 $30 $10
    nop                                           ; $706e: $00
    ld c, b                                       ; $706f: $48
    cp a                                          ; $7070: $bf
    add h                                         ; $7071: $84
    ld a, e                                       ; $7072: $7b
    ld c, b                                       ; $7073: $48
    or a                                          ; $7074: $b7
    sub b                                         ; $7075: $90
    ld a, a                                       ; $7076: $7f
    ld d, d                                       ; $7077: $52
    ld hl, $2030                                  ; $7078: $21 $30 $20
    ld e, c                                       ; $707b: $59
    jr nc, jr_0c7_70de                            ; $707c: $30 $60

    ld [$70ff], a                                 ; $707e: $ea $ff $70
    ld e, b                                       ; $7081: $58
    xor b                                         ; $7082: $a8
    ld c, e                                       ; $7083: $4b
    rst $38                                       ; $7084: $ff
    ld b, b                                       ; $7085: $40
    ld e, b                                       ; $7086: $58
    ld [$40ff], sp                                ; $7087: $08 $ff $40
    ld e, b                                       ; $708a: $58
    nop                                           ; $708b: $00
    ld h, d                                       ; $708c: $62
    nop                                           ; $708d: $00
    ld [hl], b                                    ; $708e: $70
    ld c, b                                       ; $708f: $48
    ld a, [hl+]                                   ; $7090: $2a
    ld a, [bc]                                    ; $7091: $0a
    push af                                       ; $7092: $f5
    or b                                          ; $7093: $b0
    ld e, b                                       ; $7094: $58
    ld a, [bc]                                    ; $7095: $0a
    jr nz, jr_0c7_70f8                            ; $7096: $20 $60

    xor e                                         ; $7098: $ab

jr_0c7_7099:
    ld h, b                                       ; $7099: $60
    ld h, b                                       ; $709a: $60
    xor c                                         ; $709b: $a9
    ld b, b                                       ; $709c: $40
    sub $a0                                       ; $709d: $d6 $a0
    ld e, b                                       ; $709f: $58
    cp a                                          ; $70a0: $bf
    nop                                           ; $70a1: $00
    ld a, a                                       ; $70a2: $7f
    add b                                         ; $70a3: $80
    rst $38                                       ; $70a4: $ff
    nop                                           ; $70a5: $00
    ld bc, $845b                                  ; $70a6: $01 $5b $84
    xor $01                                       ; $70a9: $ee $01
    cp l                                          ; $70ab: $bd
    nop                                           ; $70ac: $00
    ld a, [$02c0]                                 ; $70ad: $fa $c0 $02
    nop                                           ; $70b0: $00
    rst $18                                       ; $70b1: $df
    jr nz, @-$03                                  ; $70b2: $20 $fb

    inc b                                         ; $70b4: $04
    or a                                          ; $70b5: $b7
    ld b, b                                       ; $70b6: $40
    ld e, l                                       ; $70b7: $5d
    add d                                         ; $70b8: $82
    jr nz, jr_0c7_7099                            ; $70b9: $20 $de

    ld hl, $09d0                                  ; $70bb: $21 $d0 $09
    db $db                                        ; $70be: $db
    jr nz, @+$01                                  ; $70bf: $20 $ff

    nop                                           ; $70c1: $00
    ld d, [hl]                                    ; $70c2: $56
    jr nz, jr_0c7_7046                            ; $70c3: $20 $81

    cp a                                          ; $70c5: $bf
    inc h                                         ; $70c6: $24
    ld [bc], a                                    ; $70c7: $02
    rst $28                                       ; $70c8: $ef
    db $10                                        ; $70c9: $10
    or [hl]                                       ; $70ca: $b6
    ld c, b                                       ; $70cb: $48
    rst $38                                       ; $70cc: $ff
    inc c                                         ; $70cd: $0c
    nop                                           ; $70ce: $00
    cp a                                          ; $70cf: $bf
    ld b, b                                       ; $70d0: $40
    rst $30                                       ; $70d1: $f7
    ld [hl+], a                                   ; $70d2: $22
    nop                                           ; $70d3: $00
    jr nc, jr_0c7_70d6                            ; $70d4: $30 $00

jr_0c7_70d6:
    and h                                         ; $70d6: $a4
    ccf                                           ; $70d7: $3f
    ld [bc], a                                    ; $70d8: $02
    ld b, b                                       ; $70d9: $40
    db $fc                                        ; $70da: $fc
    inc bc                                        ; $70db: $03
    rst $28                                       ; $70dc: $ef
    db $10                                        ; $70dd: $10

jr_0c7_70de:
    cp a                                          ; $70de: $bf
    ld b, $03                                     ; $70df: $06 $03
    xor $00                                       ; $70e1: $ee $00
    nop                                           ; $70e3: $00
    rst $18                                       ; $70e4: $df
    nop                                           ; $70e5: $00
    xor a                                         ; $70e6: $af
    ld d, b                                       ; $70e7: $50
    db $fd                                        ; $70e8: $fd
    ld [bc], a                                    ; $70e9: $02
    cp [hl]                                       ; $70ea: $be
    ld [bc], a                                    ; $70eb: $02
    nop                                           ; $70ec: $00
    cp d                                          ; $70ed: $ba
    ld b, l                                       ; $70ee: $45
    ld a, l                                       ; $70ef: $7d
    add d                                         ; $70f0: $82
    rst $38                                       ; $70f1: $ff
    ld d, b                                       ; $70f2: $50
    nop                                           ; $70f3: $00
    cp [hl]                                       ; $70f4: $be
    nop                                           ; $70f5: $00
    ld b, b                                       ; $70f6: $40
    push de                                       ; $70f7: $d5

jr_0c7_70f8:
    ld [$906f], sp                                ; $70f8: $08 $6f $90
    rst $38                                       ; $70fb: $ff
    nop                                           ; $70fc: $00
    ld a, e                                       ; $70fd: $7b
    and c                                         ; $70fe: $a1
    db $10                                        ; $70ff: $10
    inc bc                                        ; $7100: $03
    ei                                            ; $7101: $fb
    inc d                                         ; $7102: $14
    inc bc                                        ; $7103: $03
    ld a, a                                       ; $7104: $7f
    add b                                         ; $7105: $80
    rst $18                                       ; $7106: $df
    jr nz, jr_0c7_7143                            ; $7107: $20 $3a

    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    ld [$41b6], sp                                ; $710b: $08 $b6 $41
    rst $28                                       ; $710e: $ef
    nop                                           ; $710f: $00
    ld l, a                                       ; $7110: $6f
    sub b                                         ; $7111: $90
    rst $30                                       ; $7112: $f7
    add b                                         ; $7113: $80
    ld a, h                                       ; $7114: $7c
    inc bc                                        ; $7115: $03
    cp l                                          ; $7116: $bd

jr_0c7_7117:
    ld b, d                                       ; $7117: $42
    rst $38                                       ; $7118: $ff
    nop                                           ; $7119: $00
    ld a, l                                       ; $711a: $7d
    add d                                         ; $711b: $82
    rst $18                                       ; $711c: $df
    nop                                           ; $711d: $00
    jr nz, jr_0c7_7117                            ; $711e: $20 $f7

    nop                                           ; $7120: $00
    ld [hl], a                                    ; $7121: $77
    adc b                                         ; $7122: $88
    ld a, [hl]                                    ; $7123: $7e
    ld bc, $20fd                                  ; $7124: $01 $fd $20
    ld [bc], a                                    ; $7127: $02
    rst $28                                       ; $7128: $ef
    add [hl]                                      ; $7129: $86
    ld [bc], a                                    ; $712a: $02
    or $08                                        ; $712b: $f6 $08
    ei                                            ; $712d: $fb
    inc b                                         ; $712e: $04
    ld e, a                                       ; $712f: $5f
    inc h                                         ; $7130: $24
    and b                                         ; $7131: $a0
    rst $30                                       ; $7132: $f7
    ld b, b                                       ; $7133: $40
    ld [bc], a                                    ; $7134: $02
    db $dd                                        ; $7135: $dd
    ld [hl+], a                                   ; $7136: $22
    jr c, jr_0c7_7141                             ; $7137: $38 $08

    rst $28                                       ; $7139: $ef
    nop                                           ; $713a: $00
    ld [bc], a                                    ; $713b: $02
    ld d, a                                       ; $713c: $57
    jr z, @-$44                                   ; $713d: $28 $ba

    ld b, b                                       ; $713f: $40
    ld [hl], a                                    ; $7140: $77

jr_0c7_7141:
    add b                                         ; $7141: $80
    inc e                                         ; $7142: $1c

jr_0c7_7143:
    ld [$006b], sp                                ; $7143: $08 $6b $00
    sub h                                         ; $7146: $94
    xor $01                                       ; $7147: $ee $01
    rst $30                                       ; $7149: $f7
    nop                                           ; $714a: $00
    xor h                                         ; $714b: $ac
    ld d, d                                       ; $714c: $52
    rst $10                                       ; $714d: $d7
    nop                                           ; $714e: $00
    jr z, jr_0c7_71ce                             ; $714f: $28 $7d

    ld [bc], a                                    ; $7151: $02
    rst $28                                       ; $7152: $ef
    db $10                                        ; $7153: $10
    rst $10                                       ; $7154: $d7
    jr z, jr_0c7_71d5                             ; $7155: $28 $7e

    db $10                                        ; $7157: $10
    add b                                         ; $7158: $80
    ei                                            ; $7159: $fb
    inc b                                         ; $715a: $04
    ld a, b                                       ; $715b: $78
    ld [bc], a                                    ; $715c: $02
    nop                                           ; $715d: $00
    ld e, l                                       ; $715e: $5d
    and b                                         ; $715f: $a0
    xor $00                                       ; $7160: $ee $00
    ld de, $be41                                  ; $7162: $11 $41 $be
    sub d                                         ; $7165: $92
    ld h, c                                       ; $7166: $61
    and e                                         ; $7167: $a3
    ld b, b                                       ; $7168: $40
    ld a, [hl]                                    ; $7169: $7e
    nop                                           ; $716a: $00
    add c                                         ; $716b: $81
    add hl, hl                                    ; $716c: $29
    rst $10                                       ; $716d: $d7
    add $7f                                       ; $716e: $c6 $7f

jr_0c7_7170:
    cp e                                          ; $7170: $bb
    ld a, h                                       ; $7171: $7c
    call Call_000_3200                            ; $7172: $cd $00 $32
    inc de                                        ; $7175: $13
    call z, Call_0c7_42a5                         ; $7176: $cc $a5 $42
    ld d, [hl]                                    ; $7179: $56
    jp hl                                         ; $717a: $e9


    and c                                         ; $717b: $a1
    nop                                           ; $717c: $00
    rst $38                                       ; $717d: $ff
    ld e, [hl]                                    ; $717e: $5e
    cp a                                          ; $717f: $bf
    db $eb                                        ; $7180: $eb
    inc d                                         ; $7181: $14
    ld [hl], a                                    ; $7182: $77
    adc b                                         ; $7183: $88
    rst $38                                       ; $7184: $ff
    add b                                         ; $7185: $80
    or [hl]                                       ; $7186: $b6
    inc bc                                        ; $7187: $03
    rst $20                                       ; $7188: $e7
    db $10                                        ; $7189: $10
    rst $18                                       ; $718a: $df
    jr nz, @+$70                                  ; $718b: $20 $6e

    ld bc, $80d7                                  ; $718d: $01 $d7 $80
    call z, $fb00                                 ; $7190: $cc $00 $fb
    inc b                                         ; $7193: $04
    cp l                                          ; $7194: $bd
    ld b, d                                       ; $7195: $42
    db $eb                                        ; $7196: $eb
    inc d                                         ; $7197: $14
    sbc $06                                       ; $7198: $de $06
    ld hl, $8877                                  ; $719a: $21 $77 $88
    rst $18                                       ; $719d: $df
    jr nz, jr_0c7_7170                            ; $719e: $20 $d0

    ld [$0802], sp                                ; $71a0: $08 $02 $08
    rst $30                                       ; $71a3: $f7
    inc b                                         ; $71a4: $04
    ld [$04db], sp                                ; $71a5: $08 $db $04
    ld l, [hl]                                    ; $71a8: $6e
    add c                                         ; $71a9: $81
    xor h                                         ; $71aa: $ac
    ld [$4837], sp                                ; $71ab: $08 $37 $48
    nop                                           ; $71ae: $00
    ei                                            ; $71af: $fb

jr_0c7_71b0:
    inc b                                         ; $71b0: $04
    ld l, e                                       ; $71b1: $6b
    add h                                         ; $71b2: $84
    rst $38                                       ; $71b3: $ff
    nop                                           ; $71b4: $00
    cp e                                          ; $71b5: $bb
    ld b, h                                       ; $71b6: $44
    jr nz, jr_0c7_71b0                            ; $71b7: $20 $f7

    ld [$0838], sp                                ; $71b9: $08 $38 $08
    xor a                                         ; $71bc: $af
    db $10                                        ; $71bd: $10
    sbc $01                                       ; $71be: $de $01
    ld a, [hl]                                    ; $71c0: $7e
    nop                                           ; $71c1: $00
    add c                                         ; $71c2: $81
    cp b                                          ; $71c3: $b8
    rlca                                          ; $71c4: $07
    call nc, Call_0c7_6608                        ; $71c5: $d4 $08 $66
    sbc b                                         ; $71c8: $98
    or l                                          ; $71c9: $b5
    nop                                           ; $71ca: $00
    ld c, b                                       ; $71cb: $48
    ld c, d                                       ; $71cc: $4a
    inc a                                         ; $71cd: $3c

jr_0c7_71ce:
    db $db                                        ; $71ce: $db
    inc l                                         ; $71cf: $2c
    xor l                                         ; $71d0: $ad
    ld h, [hl]                                    ; $71d1: $66
    xor a                                         ; $71d2: $af
    nop                                           ; $71d3: $00
    ld d, b                                       ; $71d4: $50

jr_0c7_71d5:
    ld [hl], a                                    ; $71d5: $77
    adc b                                         ; $71d6: $88
    adc c                                         ; $71d7: $89
    ld [hl], h                                    ; $71d8: $74
    scf                                           ; $71d9: $37
    ld [$000b], sp                                ; $71da: $08 $0b $00
    inc b                                         ; $71dd: $04
    and l                                         ; $71de: $a5
    ld [bc], a                                    ; $71df: $02
    db $fc                                        ; $71e0: $fc
    ld [bc], a                                    ; $71e1: $02
    rst $38                                       ; $71e2: $ff
    ld [bc], a                                    ; $71e3: $02
    push af                                       ; $71e4: $f5
    nop                                           ; $71e5: $00
    ld a, [bc]                                    ; $71e6: $0a
    ret c                                         ; $71e7: $d8

    rlca                                          ; $71e8: $07
    and h                                         ; $71e9: $a4
    ld e, b                                       ; $71ea: $58
    ld d, c                                       ; $71eb: $51
    and b                                         ; $71ec: $a0
    and [hl]                                      ; $71ed: $a6
    nop                                           ; $71ee: $00
    ld b, b                                       ; $71ef: $40
    xor a                                         ; $71f0: $af
    ld b, b                                       ; $71f1: $40
    cp a                                          ; $71f2: $bf
    ld b, b                                       ; $71f3: $40
    sub $69                                       ; $71f4: $d6 $69
    ld a, e                                       ; $71f6: $7b
    nop                                           ; $71f7: $00
    add h                                         ; $71f8: $84
    dec b                                         ; $71f9: $05
    ld a, [$04ab]                                 ; $71fa: $fa $ab $04
    ld e, c                                       ; $71fd: $59
    ld b, $f7                                     ; $71fe: $06 $f7
    nop                                           ; $7200: $00
    inc c                                         ; $7201: $0c
    jp z, Jump_000_353d                           ; $7202: $ca $3d $35

    ld a, [$e05e]                                 ; $7205: $fa $5e $e0
    ld d, d                                       ; $7208: $52
    nop                                           ; $7209: $00
    rst $20                                       ; $720a: $e7
    cp l                                          ; $720b: $bd
    jp $bd42                                      ; $720c: $c3 $42 $bd


    and l                                         ; $720f: $a5
    ld b, d                                       ; $7210: $42
    or d                                          ; $7211: $b2
    nop                                           ; $7212: $00
    pop bc                                        ; $7213: $c1
    ret                                           ; $7214: $c9


    rst $30                                       ; $7215: $f7
    ld a, a                                       ; $7216: $7f
    cp $aa                                        ; $7217: $fe $aa
    ld d, l                                       ; $7219: $55
    ld l, e                                       ; $721a: $6b
    nop                                           ; $721b: $00
    sub [hl]                                      ; $721c: $96
    sub l                                         ; $721d: $95
    xor $cb                                       ; $721e: $ee $cb
    db $fc                                        ; $7220: $fc
    ld [hl], l                                    ; $7221: $75
    ld a, [$00db]                                 ; $7222: $fa $db $00
    inc h                                         ; $7225: $24
    or a                                          ; $7226: $b7
    ld [$9469], sp                                ; $7227: $08 $69 $94
    rst $30                                       ; $722a: $f7
    ld [$80f7], sp                                ; $722b: $08 $f7 $80
    ld c, h                                       ; $722e: $4c
    ld bc, $12ed                                  ; $722f: $01 $ed $12
    dec de                                        ; $7232: $1b
    ldh [$2f], a                                  ; $7233: $e0 $2f
    db $10                                        ; $7235: $10
    dec h                                         ; $7236: $25
    nop                                           ; $7237: $00
    ld a, [de]                                    ; $7238: $1a
    ld a, d                                       ; $7239: $7a
    dec d                                         ; $723a: $15
    rst $10                                       ; $723b: $d7
    jr c, jr_0c7_7286                             ; $723c: $38 $48

    rst $30                                       ; $723e: $f7
    and a                                         ; $723f: $a7
    nop                                           ; $7240: $00
    ld a, a                                       ; $7241: $7f
    call c, $a53f                                 ; $7242: $dc $3f $a5
    ld e, d                                       ; $7245: $5a
    ld e, d                                       ; $7246: $5a
    dec h                                         ; $7247: $25
    rst $00                                       ; $7248: $c7
    nop                                           ; $7249: $00
    add hl, sp                                    ; $724a: $39
    xor e                                         ; $724b: $ab
    ld b, l                                       ; $724c: $45
    or l                                          ; $724d: $b5
    ld b, d                                       ; $724e: $42
    or e                                          ; $724f: $b3
    call z, $004d                                 ; $7250: $cc $4d $00
    or d                                          ; $7253: $b2
    and [hl]                                      ; $7254: $a6

Call_0c7_7255:
    ld b, c                                       ; $7255: $41
    ld c, l                                       ; $7256: $4d
    add e                                         ; $7257: $83
    ld a, [$6707]                                 ; $7258: $fa $07 $67
    nop                                           ; $725b: $00
    sbc [hl]                                      ; $725c: $9e
    dec c                                         ; $725d: $0d
    cp $fb                                        ; $725e: $fe $fb
    db $fc                                        ; $7260: $fc
    db $dd                                        ; $7261: $dd
    jr nz, jr_0c7_72cf                            ; $7262: $20 $6b

    nop                                           ; $7264: $00
    sub h                                         ; $7265: $94
    push bc                                       ; $7266: $c5
    ld a, [hl-]                                   ; $7267: $3a
    sub e                                         ; $7268: $93
    ld c, h                                       ; $7269: $4c
    jp hl                                         ; $726a: $e9


    ld b, [hl]                                    ; $726b: $46
    sub $00                                       ; $726c: $d6 $00
    ld l, l                                       ; $726e: $6d

jr_0c7_726f:
    rst $38                                       ; $726f: $ff
    jr c, @-$51                                   ; $7270: $38 $ad

    ld d, d                                       ; $7272: $52
    rst $30                                       ; $7273: $f7
    ld [$009b], sp                                ; $7274: $08 $9b $00
    ld h, h                                       ; $7277: $64

jr_0c7_7278:
    ld h, $99                                     ; $7278: $26 $99
    ld c, e                                       ; $727a: $4b
    add h                                         ; $727b: $84
    cp l                                          ; $727c: $bd
    add $97                                       ; $727d: $c6 $97
    nop                                           ; $727f: $00
    db $ec                                        ; $7280: $ec
    ld h, l                                       ; $7281: $65
    cp $ba                                        ; $7282: $fe $ba
    ld e, h                                       ; $7284: $5c
    ld l, l                                       ; $7285: $6d

jr_0c7_7286:
    ldh a, [$d7]                                  ; $7286: $f0 $d7
    nop                                           ; $7288: $00
    add sp, -$3d                                  ; $7289: $e8 $c3
    inc a                                         ; $728b: $3c
    xor c                                         ; $728c: $a9
    ld b, [hl]                                    ; $728d: $46
    ld h, [hl]                                    ; $728e: $66
    ld b, e                                       ; $728f: $43
    and e                                         ; $7290: $a3
    nop                                           ; $7291: $00
    ld a, [hl]                                    ; $7292: $7e
    db $dd                                        ; $7293: $dd
    ld a, $b7                                     ; $7294: $3e $b7
    ld c, b                                       ; $7296: $48
    db $dd                                        ; $7297: $dd
    ld h, d                                       ; $7298: $62
    and d                                         ; $7299: $a2
    nop                                           ; $729a: $00
    ld a, a                                       ; $729b: $7f
    db $dd                                        ; $729c: $dd
    ld a, $aa                                     ; $729d: $3e $aa
    ld d, c                                       ; $729f: $51
    rst $10                                       ; $72a0: $d7
    add hl, hl                                    ; $72a1: $29
    xor [hl]                                      ; $72a2: $ae
    nop                                           ; $72a3: $00
    ld de, $0af5                                  ; $72a4: $11 $f5 $0a
    xor $01                                       ; $72a7: $ee $01
    ld d, [hl]                                    ; $72a9: $56
    jr z, jr_0c7_726f                             ; $72aa: $28 $c3

    nop                                           ; $72ac: $00
    inc a                                         ; $72ad: $3c
    dec h                                         ; $72ae: $25
    jp nz, $029d                                  ; $72af: $c2 $9d $02

    ld l, b                                       ; $72b2: $68
    sub a                                         ; $72b3: $97
    jp $fe00                                      ; $72b4: $c3 $00 $fe


    ld a, $fd                                     ; $72b7: $3e $fd
    xor a                                         ; $72b9: $af
    ld d, b                                       ; $72ba: $50
    ld e, b                                       ; $72bb: $58
    daa                                           ; $72bc: $27
    db $f4                                        ; $72bd: $f4
    nop                                           ; $72be: $00
    ld [$10a9], sp                                ; $72bf: $08 $a9 $10
    ld d, d                                       ; $72c2: $52
    and b                                         ; $72c3: $a0
    rst $28                                       ; $72c4: $ef
    jr nc, jr_0c7_7278                            ; $72c5: $30 $b1

    nop                                           ; $72c7: $00
    ld e, a                                       ; $72c8: $5f
    rst $18                                       ; $72c9: $df
    cpl                                           ; $72ca: $2f
    ld l, e                                       ; $72cb: $6b
    inc d                                         ; $72cc: $14
    ld d, a                                       ; $72cd: $57
    xor b                                         ; $72ce: $a8

jr_0c7_72cf:
    cp c                                          ; $72cf: $b9
    nop                                           ; $72d0: $00
    ld b, [hl]                                    ; $72d1: $46
    ld d, h                                       ; $72d2: $54
    add hl, hl                                    ; $72d3: $29
    sbc e                                         ; $72d4: $9b
    ld l, l                                       ; $72d5: $6d
    cpl                                           ; $72d6: $2f
    or $dd                                        ; $72d7: $f6 $dd
    nop                                           ; $72d9: $00
    ld [c], a                                     ; $72da: $e2
    xor d                                         ; $72db: $aa
    pop de                                        ; $72dc: $d1
    ld e, a                                       ; $72dd: $5f
    and b                                         ; $72de: $a0
    db $ed                                        ; $72df: $ed
    db $10                                        ; $72e0: $10
    cp [hl]                                       ; $72e1: $be
    nop                                           ; $72e2: $00
    ld b, c                                       ; $72e3: $41
    rst $20                                       ; $72e4: $e7
    jr jr_0c7_7339                                ; $72e5: $18 $52

    dec h                                         ; $72e7: $25
    xor d                                         ; $72e8: $aa
    ld b, l                                       ; $72e9: $45
    or [hl]                                       ; $72ea: $b6
    nop                                           ; $72eb: $00
    ld c, l                                       ; $72ec: $4d
    rst $08                                       ; $72ed: $cf
    ld a, c                                       ; $72ee: $79
    db $fd                                        ; $72ef: $fd
    ld [hl], d                                    ; $72f0: $72
    ld e, e                                       ; $72f1: $5b
    add h                                         ; $72f2: $84
    adc a                                         ; $72f3: $8f
    nop                                           ; $72f4: $00
    ld [hl], b                                    ; $72f5: $70
    ld d, l                                       ; $72f6: $55
    adc d                                         ; $72f7: $8a
    adc d                                         ; $72f8: $8a
    inc b                                         ; $72f9: $04
    push hl                                       ; $72fa: $e5
    ld [bc], a                                    ; $72fb: $02
    ld d, l                                       ; $72fc: $55
    nop                                           ; $72fd: $00
    add d                                         ; $72fe: $82
    ld a, $c1                                     ; $72ff: $3e $c1
    push de                                       ; $7301: $d5
    db $eb                                        ; $7302: $eb
    halt                                          ; $7303: $76
    add hl, bc                                    ; $7304: $09
    sub e                                         ; $7305: $93
    nop                                           ; $7306: $00
    ld c, h                                       ; $7307: $4c
    ld h, l                                       ; $7308: $65
    sub d                                         ; $7309: $92
    call nz, $a923                                ; $730a: $c4 $23 $a9
    ld d, a                                       ; $730d: $57
    rst $00                                       ; $730e: $c7
    nop                                           ; $730f: $00
    ld a, [hl]                                    ; $7310: $7e
    ld a, [hl]                                    ; $7311: $7e
    cp l                                          ; $7312: $bd
    db $dd                                        ; $7313: $dd
    ld [hl+], a                                   ; $7314: $22
    rst $20                                       ; $7315: $e7
    ld a, a                                       ; $7316: $7f
    ld a, a                                       ; $7317: $7f
    nop                                           ; $7318: $00
    cp [hl]                                       ; $7319: $be
    cp e                                          ; $731a: $bb
    ld b, h                                       ; $731b: $44
    and [hl]                                      ; $731c: $a6
    add hl, de                                    ; $731d: $19
    sla h                                         ; $731e: $cb $24
    sub [hl]                                      ; $7320: $96
    nop                                           ; $7321: $00
    ld c, l                                       ; $7322: $4d
    call $fb7c                                    ; $7323: $cd $7c $fb
    inc a                                         ; $7326: $3c
    jr nc, jr_0c7_7331                            ; $7327: $30 $08

    adc [hl]                                      ; $7329: $8e
    rlca                                          ; $732a: $07
    nop                                           ; $732b: $00
    sub c                                         ; $732c: $91
    ld l, a                                       ; $732d: $6f
    ld c, c                                       ; $732e: $49
    or a                                          ; $732f: $b7
    inc bc                                        ; $7330: $03

jr_0c7_7331:
    rst $38                                       ; $7331: $ff
    ld b, a                                       ; $7332: $47
    rst $38                                       ; $7333: $ff
    nop                                           ; $7334: $00
    and d                                         ; $7335: $a2
    rst $38                                       ; $7336: $ff
    ld d, l                                       ; $7337: $55
    rst $38                                       ; $7338: $ff

jr_0c7_7339:
    ld a, [hl+]                                   ; $7339: $2a
    rst $38                                       ; $733a: $ff
    inc b                                         ; $733b: $04

jr_0c7_733c:
    rst $38                                       ; $733c: $ff
    nop                                           ; $733d: $00
    ld bc, $0001                                  ; $733e: $01 $01 $00
    nop                                           ; $7341: $00
    jr jr_0c7_733c                                ; $7342: $18 $f8

    ld [hl], d                                    ; $7344: $72
    adc [hl]                                      ; $7345: $8e
    nop                                           ; $7346: $00
    dec h                                         ; $7347: $25
    db $db                                        ; $7348: $db
    ld [$44f7], sp                                ; $7349: $08 $f7 $44
    cp a                                          ; $734c: $bf
    ld d, d                                       ; $734d: $52
    rst $38                                       ; $734e: $ff
    nop                                           ; $734f: $00
    sbc e                                         ; $7350: $9b
    ld d, a                                       ; $7351: $57
    rrca                                          ; $7352: $0f
    di                                            ; $7353: $f3
    db $db                                        ; $7354: $db
    or a                                          ; $7355: $b7
    and e                                         ; $7356: $a3
    rst $18                                       ; $7357: $df
    nop                                           ; $7358: $00
    jp nc, $a8bf                                  ; $7359: $d2 $bf $a8

    rst $18                                       ; $735c: $df
    db $10                                        ; $735d: $10
    rst $38                                       ; $735e: $ff
    cp b                                          ; $735f: $b8
    rst $38                                       ; $7360: $ff
    nop                                           ; $7361: $00
    adc b                                         ; $7362: $88
    sbc c                                         ; $7363: $99
    sub b                                         ; $7364: $90
    or c                                          ; $7365: $b1
    add c                                         ; $7366: $81
    pop hl                                        ; $7367: $e1
    ld h, c                                       ; $7368: $61
    cp c                                          ; $7369: $b9
    nop                                           ; $736a: $00
    cp c                                          ; $736b: $b9
    ld [hl], l                                    ; $736c: $75
    dec d                                         ; $736d: $15
    db $db                                        ; $736e: $db
    ldh a, [$7f]                                  ; $736f: $f0 $7f
    ld c, c                                       ; $7371: $49
    rst $38                                       ; $7372: $ff
    nop                                           ; $7373: $00
    adc h                                         ; $7374: $8c
    ld c, d                                       ; $7375: $4a
    jp z, Jump_0c7_4e2d                           ; $7376: $ca $2d $4e

    xor c                                         ; $7379: $a9
    dec hl                                        ; $737a: $2b
    db $dd                                        ; $737b: $dd
    nop                                           ; $737c: $00
    ld b, [hl]                                    ; $737d: $46
    cp c                                          ; $737e: $b9
    dec bc                                        ; $737f: $0b
    db $fd                                        ; $7380: $fd
    or b                                          ; $7381: $b0
    rst $18                                       ; $7382: $df
    dec c                                         ; $7383: $0d
    ei                                            ; $7384: $fb
    nop                                           ; $7385: $00
    rlca                                          ; $7386: $07
    dec bc                                        ; $7387: $0b
    rrca                                          ; $7388: $0f
    inc de                                        ; $7389: $13
    dec e                                         ; $738a: $1d
    dec h                                         ; $738b: $25
    inc [hl]                                      ; $738c: $34
    ld c, l                                       ; $738d: $4d
    nop                                           ; $738e: $00
    db $ed                                        ; $738f: $ed
    sub [hl]                                      ; $7390: $96
    ret nc                                        ; $7391: $d0

    xor a                                         ; $7392: $af
    push bc                                       ; $7393: $c5
    cp [hl]                                       ; $7394: $be
    inc d                                         ; $7395: $14
    db $eb                                        ; $7396: $eb
    nop                                           ; $7397: $00
    add b                                         ; $7398: $80
    add b                                         ; $7399: $80
    add b                                         ; $739a: $80
    ret nz                                        ; $739b: $c0

    ld d, b                                       ; $739c: $50
    ret c                                         ; $739d: $d8

    ret z                                         ; $739e: $c8

    ld c, h                                       ; $739f: $4c

jr_0c7_73a0:
    nop                                           ; $73a0: $00
    inc l                                         ; $73a1: $2c
    ld [$7ab4], a                                 ; $73a2: $ea $b4 $7a
    ld d, $f9                                     ; $73a5: $16 $f9
    inc h                                         ; $73a7: $24
    ei                                            ; $73a8: $fb
    nop                                           ; $73a9: $00
    ld [hl+], a                                   ; $73aa: $22
    ld e, a                                       ; $73ab: $5f
    ld c, a                                       ; $73ac: $4f
    cp a                                          ; $73ad: $bf
    jr nc, jr_0c7_73a0                            ; $73ae: $30 $f0

    ld b, c                                       ; $73b0: $41
    pop bc                                        ; $73b1: $c1
    nop                                           ; $73b2: $00
    add d                                         ; $73b3: $82
    add e                                         ; $73b4: $83
    dec b                                         ; $73b5: $05
    halt                                          ; $73b6: $76
    or d                                          ; $73b7: $b2
    rst $08                                       ; $73b8: $cf

jr_0c7_73b9:
    ld e, l                                       ; $73b9: $5d
    db $e3                                        ; $73ba: $e3
    nop                                           ; $73bb: $00
    and a                                         ; $73bc: $a7
    ld hl, sp-$2e                                 ; $73bd: $f8 $d2
    db $fd                                        ; $73bf: $fd

jr_0c7_73c0:
    ld l, b                                       ; $73c0: $68
    ld a, a                                       ; $73c1: $7f
    push de                                       ; $73c2: $d5
    rst $38                                       ; $73c3: $ff

jr_0c7_73c4:
    nop                                           ; $73c4: $00
    xor b                                         ; $73c5: $a8
    rst $38                                       ; $73c6: $ff
    ld b, c                                       ; $73c7: $41
    rst $38                                       ; $73c8: $ff
    db $10                                        ; $73c9: $10
    rst $28                                       ; $73ca: $ef
    ld b, h                                       ; $73cb: $44
    cp e                                          ; $73cc: $bb
    nop                                           ; $73cd: $00
    ld h, [hl]                                    ; $73ce: $66
    sbc c                                         ; $73cf: $99
    xor c                                         ; $73d0: $a9
    ld d, a                                       ; $73d1: $57
    ld b, e                                       ; $73d2: $43
    cp a                                          ; $73d3: $bf
    ld bc, $00ff                                  ; $73d4: $01 $ff $00
    ld a, [hl+]                                   ; $73d7: $2a
    rst $30                                       ; $73d8: $f7
    ld d, c                                       ; $73d9: $51
    rst $28                                       ; $73da: $ef
    inc b                                         ; $73db: $04
    ei                                            ; $73dc: $fb
    xor c                                         ; $73dd: $a9
    rst $10                                       ; $73de: $d7
    nop                                           ; $73df: $00
    add b                                         ; $73e0: $80
    add b                                         ; $73e1: $80
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    add b                                         ; $73e4: $80
    add b                                         ; $73e5: $80
    call nz, Call_000_00c7                        ; $73e6: $c4 $c7 $00
    xor d                                         ; $73e9: $aa
    rst $30                                       ; $73ea: $f7
    ld d, h                                       ; $73eb: $54
    ei                                            ; $73ec: $fb
    ld c, a                                       ; $73ed: $4f
    or b                                          ; $73ee: $b0
    db $10                                        ; $73ef: $10
    rst $28                                       ; $73f0: $ef
    nop                                           ; $73f1: $00
    dec b                                         ; $73f2: $05
    ld b, $02                                     ; $73f3: $06 $02
    rlca                                          ; $73f5: $07
    dec b                                         ; $73f6: $05
    rlca                                          ; $73f7: $07
    ld c, $8f                                     ; $73f8: $0e $8f
    nop                                           ; $73fa: $00
    adc e                                         ; $73fb: $8b
    ld a, a                                       ; $73fc: $7f
    ld d, l                                       ; $73fd: $55
    cp a                                          ; $73fe: $bf
    ld a, [bc]                                    ; $73ff: $0a
    rst $30                                       ; $7400: $f7
    inc h                                         ; $7401: $24
    ei                                            ; $7402: $fb
    nop                                           ; $7403: $00
    ld [hl], b                                    ; $7404: $70
    adc a                                         ; $7405: $8f
    adc b                                         ; $7406: $88
    ld [hl], a                                    ; $7407: $77
    ld hl, $8bdf                                  ; $7408: $21 $df $8b
    rst $38                                       ; $740b: $ff
    dec b                                         ; $740c: $05
    sub $ff                                       ; $740d: $d6 $ff
    db $fd                                        ; $740f: $fd
    rst $38                                       ; $7410: $ff
    xor d                                         ; $7411: $aa
    ld b, h                                       ; $7412: $44
    nop                                           ; $7413: $00
    ld bc, $0001                                  ; $7414: $01 $01 $00
    ld [$f919], sp                                ; $7417: $08 $19 $f9
    ld [hl], e                                    ; $741a: $73
    adc a                                         ; $741b: $8f
    ret nz                                        ; $741c: $c0

    jr z, jr_0c7_73b9                             ; $741d: $28 $9a

    ld d, [hl]                                    ; $741f: $56
    ld c, $04                                     ; $7420: $0e $04
    ld a, [c]                                     ; $7422: $f2
    jp c, $a2b6                                   ; $7423: $da $b6 $a2

    sbc $c0                                       ; $7426: $de $c0
    jr z, @+$0a                                   ; $7428: $28 $08

    add hl, de                                    ; $742a: $19
    add hl, bc                                    ; $742b: $09
    db $10                                        ; $742c: $10
    ld sp, $6101                                  ; $742d: $31 $01 $61
    ret nz                                        ; $7430: $c0

    jr c, jr_0c7_73c0                             ; $7431: $38 $8d

    ld c, e                                       ; $7433: $4b
    ret nz                                        ; $7434: $c0

    ld e, b                                       ; $7435: $58
    nop                                           ; $7436: $00
    add [hl]                                      ; $7437: $86
    adc d                                         ; $7438: $8a
    adc [hl]                                      ; $7439: $8e
    sub d                                         ; $743a: $92
    sbc h                                         ; $743b: $9c
    and h                                         ; $743c: $a4
    or h                                          ; $743d: $b4
    call $c0a0                                    ; $743e: $cd $a0 $c0
    jr z, jr_0c7_73c4                             ; $7441: $28 $81

    sub [hl]                                      ; $7443: $96
    nop                                           ; $7444: $00
    ld [$01f7], sp                                ; $7445: $08 $f7 $01
    rst $38                                       ; $7448: $ff
    stop                                          ; $7449: $10 $00
    rst $38                                       ; $744b: $ff
    ld b, b                                       ; $744c: $40
    cp a                                          ; $744d: $bf
    ld hl, $40ff                                  ; $744e: $21 $ff $40
    rst $38                                       ; $7451: $ff

jr_0c7_7452:
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    inc c                                         ; $7456: $0c
    nop                                           ; $7457: $00
    ld a, $0c                                     ; $7458: $3e $0c
    inc sp                                        ; $745a: $33
    inc c                                         ; $745b: $0c
    nop                                           ; $745c: $00
    scf                                           ; $745d: $37
    ld hl, $033f                                  ; $745e: $21 $3f $03
    rra                                           ; $7461: $1f
    inc e                                         ; $7462: $1c
    inc e                                         ; $7463: $1c
    ld d, h                                       ; $7464: $54
    nop                                           ; $7465: $00
    rst $38                                       ; $7466: $ff
    ld a, [bc]                                    ; $7467: $0a
    rst $38                                       ; $7468: $ff
    jr nz, @-$1f                                  ; $7469: $20 $df

    ld [$02ff], sp                                ; $746b: $08 $ff $02
    ld [$24fd], sp                                ; $746e: $08 $fd $24
    ei                                            ; $7471: $fb
    ld [$0026], sp                                ; $7472: $08 $26 $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    ld [hl], b                                    ; $7477: $70

jr_0c7_7478:
    nop                                           ; $7478: $00
    ld [hl], b                                    ; $7479: $70
    ld a, h                                       ; $747a: $7c
    ld a, h                                       ; $747b: $7c
    db $fc                                        ; $747c: $fc
    call z, $ecfc                                 ; $747d: $cc $fc $ec

jr_0c7_7480:
    inc a                                         ; $7480: $3c
    nop                                           ; $7481: $00
    inc a                                         ; $7482: $3c
    jr nc, jr_0c7_74b5                            ; $7483: $30 $30

    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    ld [$90ff], sp                                ; $7487: $08 $ff $90
    ld sp, $007f                                  ; $748a: $31 $7f $00
    ld [hl+], a                                   ; $748d: $22
    nop                                           ; $748e: $00
    inc b                                         ; $748f: $04
    nop                                           ; $7490: $00
    rst $38                                       ; $7491: $ff
    sub b                                         ; $7492: $90
    rst $28                                       ; $7493: $ef
    ld b, $08                                     ; $7494: $06 $08
    nop                                           ; $7496: $00
    add d                                         ; $7497: $82
    db $fd                                        ; $7498: $fd
    jr nz, @+$01                                  ; $7499: $20 $ff

    nop                                           ; $749b: $00
    rst $38                                       ; $749c: $ff
    ld [$40f7], sp                                ; $749d: $08 $f7 $40
    ld [bc], a                                    ; $74a0: $02
    ld d, $10                                     ; $74a1: $16 $10
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    inc e                                         ; $74a5: $1c
    nop                                           ; $74a6: $00
    ld e, $00                                     ; $74a7: $1e $00
    nop                                           ; $74a9: $00
    or $88                                        ; $74aa: $f6 $88
    di                                            ; $74ac: $f3
    adc h                                         ; $74ad: $8c
    ld a, a                                       ; $74ae: $7f
    ld h, b                                       ; $74af: $60
    ccf                                           ; $74b0: $3f
    inc hl                                        ; $74b1: $23
    nop                                           ; $74b2: $00
    inc e                                         ; $74b3: $1c
    inc e                                         ; $74b4: $1c

jr_0c7_74b5:
    jr @+$03                                      ; $74b5: $18 $01

    jr jr_0c7_74ba                                ; $74b7: $18 $01

    ret nz                                        ; $74b9: $c0

jr_0c7_74ba:
    nop                                           ; $74ba: $00
    inc b                                         ; $74bb: $04
    ret nz                                        ; $74bc: $c0

    jr @+$33                                      ; $74bd: $18 $31

    jr c, jr_0c7_74f2                             ; $74bf: $38 $31

    ld a, $00                                     ; $74c1: $3e $00
    nop                                           ; $74c3: $00
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    jr nc, jr_0c7_7478                            ; $74c6: $30 $b0

    jr nc, jr_0c7_7480                            ; $74c8: $30 $b6

    jr jr_0c7_7532                                ; $74ca: $18 $66

    jr jr_0c7_752e                                ; $74cc: $18 $60

    dec b                                         ; $74ce: $05
    add b                                         ; $74cf: $80
    jr nc, jr_0c7_7452                            ; $74d0: $30 $80

    jr nc, @+$08                                  ; $74d2: $30 $06

    ld bc, $1200                                  ; $74d4: $01 $00 $12
    inc a                                         ; $74d7: $3c
    nop                                           ; $74d8: $00
    ld b, $01                                     ; $74d9: $06 $01
    cp $12                                        ; $74db: $fe $12
    db $fd                                        ; $74dd: $fd
    nop                                           ; $74de: $00
    xor h                                         ; $74df: $ac
    ld bc, $003e                                  ; $74e0: $01 $3e $00
    rst $38                                       ; $74e3: $ff
    add b                                         ; $74e4: $80
    ld bc, $0008                                  ; $74e5: $01 $08 $00
    rst $38                                       ; $74e8: $ff
    cp $01                                        ; $74e9: $fe $01
    xor d                                         ; $74eb: $aa
    ld bc, $1056                                  ; $74ec: $01 $56 $10
    ld bc, $01fe                                  ; $74ef: $01 $fe $01

jr_0c7_74f2:
    db $10                                        ; $74f2: $10
    jr z, @+$01                                   ; $74f3: $28 $ff

    nop                                           ; $74f5: $00
    xor d                                         ; $74f6: $aa
    nop                                           ; $74f7: $00
    ld b, b                                       ; $74f8: $40
    push de                                       ; $74f9: $d5
    ld e, l                                       ; $74fa: $5d
    ld [$f5ff], sp                                ; $74fb: $08 $ff $f5
    cp a                                          ; $74fe: $bf
    db $eb                                        ; $74ff: $eb
    rst $38                                       ; $7500: $ff
    cp $00                                        ; $7501: $fe $00
    ld l, e                                       ; $7503: $6b
    ret c                                         ; $7504: $d8

    rst $38                                       ; $7505: $ff
    inc a                                         ; $7506: $3c
    db $db                                        ; $7507: $db
    ld l, [hl]                                    ; $7508: $6e
    cp l                                          ; $7509: $bd
    xor $00                                       ; $750a: $ee $00
    ld d, l                                       ; $750c: $55
    xor a                                         ; $750d: $af
    ld d, e                                       ; $750e: $53
    rst $28                                       ; $750f: $ef
    call c, $fe8f                                 ; $7510: $dc $8f $fe
    ld d, l                                       ; $7513: $55
    nop                                           ; $7514: $00
    ei                                            ; $7515: $fb
    ld c, $f9                                     ; $7516: $0e $f9
    add c                                         ; $7518: $81
    cp $93                                        ; $7519: $fe $93
    ld a, l                                       ; $751b: $7d
    rla                                           ; $751c: $17
    nop                                           ; $751d: $00
    ei                                            ; $751e: $fb
    sbc a                                         ; $751f: $9f
    ld l, a                                       ; $7520: $6f
    ld l, [hl]                                    ; $7521: $6e
    sub e                                         ; $7522: $93
    cp $25                                        ; $7523: $fe $25
    cp c                                          ; $7525: $b9
    nop                                           ; $7526: $00
    ld e, a                                       ; $7527: $5f
    ldh [rIE], a                                  ; $7528: $e0 $ff
    jp hl                                         ; $752a: $e9


    rst $38                                       ; $752b: $ff
    ldh a, [$ef]                                  ; $752c: $f0 $ef

jr_0c7_752e:
    ld sp, hl                                     ; $752e: $f9
    nop                                           ; $752f: $00
    or $fd                                        ; $7530: $f6 $fd

jr_0c7_7532:
    ld a, a                                       ; $7532: $7f
    cp d                                          ; $7533: $ba
    rst $38                                       ; $7534: $ff
    cp a                                          ; $7535: $bf
    halt                                          ; $7536: $76
    ccf                                           ; $7537: $3f
    nop                                           ; $7538: $00
    db $ec                                        ; $7539: $ec
    ld b, e                                       ; $753a: $43
    rst $38                                       ; $753b: $ff
    rlca                                          ; $753c: $07
    ei                                            ; $753d: $fb
    adc a                                         ; $753e: $8f
    rst $30                                       ; $753f: $f7
    dec e                                         ; $7540: $1d
    nop                                           ; $7541: $00
    xor $77                                       ; $7542: $ee $77
    xor b                                         ; $7544: $a8
    ld sp, hl                                     ; $7545: $f9
    rst $18                                       ; $7546: $df
    ld a, [c]                                     ; $7547: $f2
    cp a                                          ; $7548: $bf
    db $ec                                        ; $7549: $ec
    nop                                           ; $754a: $00
    rst $38                                       ; $754b: $ff
    inc bc                                        ; $754c: $03
    rst $38                                       ; $754d: $ff
    xor h                                         ; $754e: $ac
    ld a, a                                       ; $754f: $7f
    jp nz, $ccbf                                  ; $7550: $c2 $bf $cc

    nop                                           ; $7553: $00
    ei                                            ; $7554: $fb
    push af                                       ; $7555: $f5
    rst $28                                       ; $7556: $ef
    push af                                       ; $7557: $f5
    adc d                                         ; $7558: $8a
    db $eb                                        ; $7559: $eb
    push de                                       ; $755a: $d5
    cp [hl]                                       ; $755b: $be
    nop                                           ; $755c: $00
    db $e3                                        ; $755d: $e3
    inc e                                         ; $755e: $1c
    rst $38                                       ; $755f: $ff
    inc a                                         ; $7560: $3c
    rst $18                                       ; $7561: $df
    ld a, [hl]                                    ; $7562: $7e
    cp l                                          ; $7563: $bd
    rst $30                                       ; $7564: $f7
    nop                                           ; $7565: $00
    ld a, [hl]                                    ; $7566: $7e
    db $db                                        ; $7567: $db
    rst $38                                       ; $7568: $ff
    rst $28                                       ; $7569: $ef
    db $dd                                        ; $756a: $dd
    adc a                                         ; $756b: $8f
    cp $45                                        ; $756c: $fe $45
    nop                                           ; $756e: $00
    ei                                            ; $756f: $fb
    inc hl                                        ; $7570: $23
    rst $18                                       ; $7571: $df
    sub h                                         ; $7572: $94
    ei                                            ; $7573: $fb
    add hl, bc                                    ; $7574: $09
    cp $23                                        ; $7575: $fe $23
    nop                                           ; $7577: $00

jr_0c7_7578:
    db $dd                                        ; $7578: $dd
    adc $b7                                       ; $7579: $ce $b7
    ld l, a                                       ; $757b: $6f
    ld a, [$f79e]                                 ; $757c: $fa $9e $f7
    ld a, [$df00]                                 ; $757f: $fa $00 $df
    ld h, d                                       ; $7582: $62
    db $fd                                        ; $7583: $fd
    ld a, [c]                                     ; $7584: $f2
    rst $28                                       ; $7585: $ef
    cp d                                          ; $7586: $ba
    push af                                       ; $7587: $f5
    cp b                                          ; $7588: $b8
    nop                                           ; $7589: $00
    ld e, a                                       ; $758a: $5f
    xor [hl]                                      ; $758b: $ae
    ld d, l                                       ; $758c: $55
    ld a, e                                       ; $758d: $7b
    db $f4                                        ; $758e: $f4
    dec a                                         ; $758f: $3d
    ld a, [c]                                     ; $7590: $f2
    ld e, [hl]                                    ; $7591: $5e

Call_0c7_7592:
    nop                                           ; $7592: $00
    db $ed                                        ; $7593: $ed
    dec sp                                        ; $7594: $3b
    rst $30                                       ; $7595: $f7
    rlca                                          ; $7596: $07
    ei                                            ; $7597: $fb
    ld c, a                                       ; $7598: $4f
    rst $30                                       ; $7599: $f7
    ld e, [hl]                                    ; $759a: $5e
    nop                                           ; $759b: $00
    rst $28                                       ; $759c: $ef
    ccf                                           ; $759d: $3f
    sbc $f9                                       ; $759e: $de $f9
    rra                                           ; $75a0: $1f
    ld sp, hl                                     ; $75a1: $f9
    or a                                          ; $75a2: $b7
    push hl                                       ; $75a3: $e5
    ld [$837f], sp                                ; $75a4: $08 $7f $83
    rst $38                                       ; $75a7: $ff
    and h                                         ; $75a8: $a4
    ld d, b                                       ; $75a9: $50
    nop                                           ; $75aa: $00
    db $e4                                        ; $75ab: $e4
    rst $18                                       ; $75ac: $df
    ld sp, hl                                     ; $75ad: $f9
    nop                                           ; $75ae: $00
    or $f5                                        ; $75af: $f6 $f5
    cp a                                          ; $75b1: $bf
    ei                                            ; $75b2: $fb
    sub $ff                                       ; $75b3: $d6 $ff
    xor e                                         ; $75b5: $ab
    inc e                                         ; $75b6: $1c
    nop                                           ; $75b7: $00
    rst $38                                       ; $75b8: $ff
    ld e, $fd                                     ; $75b9: $1e $fd
    ccf                                           ; $75bb: $3f
    sbc $77                                       ; $75bc: $de $77
    cp e                                          ; $75be: $bb
    rst $38                                       ; $75bf: $ff
    nop                                           ; $75c0: $00
    jp $255a                                      ; $75c1: $c3 $5a $25


    xor [hl]                                      ; $75c4: $ae
    sub c                                         ; $75c5: $91
    ld e, l                                       ; $75c6: $5d
    jp nz, Jump_000_00ae                          ; $75c7: $c2 $ae $00

    ld h, b                                       ; $75ca: $60
    ld d, l                                       ; $75cb: $55
    jr nc, jr_0c7_7578                            ; $75cc: $30 $aa

    add hl, de                                    ; $75ce: $19
    ld d, h                                       ; $75cf: $54
    adc a                                         ; $75d0: $8f
    ld a, [hl+]                                   ; $75d1: $2a
    nop                                           ; $75d2: $00
    ld c, [hl]                                    ; $75d3: $4e
    pop de                                        ; $75d4: $d1
    dec de                                        ; $75d5: $1b
    and h                                         ; $75d6: $a4
    inc sp                                        ; $75d7: $33
    ld c, d                                       ; $75d8: $4a
    ld h, b                                       ; $75d9: $60
    sub l                                         ; $75da: $95
    nop                                           ; $75db: $00
    ret nz                                        ; $75dc: $c0

    add hl, hl                                    ; $75dd: $29
    jp nc, $8954                                  ; $75de: $d2 $54 $89

    ld a, [hl+]                                   ; $75e1: $2a
    add b                                         ; $75e2: $80
    ld d, l                                       ; $75e3: $55
    nop                                           ; $75e4: $00

jr_0c7_75e5:
    nop                                           ; $75e5: $00
    ld a, [hl]                                    ; $75e6: $7e
    ld bc, $80bb                                  ; $75e7: $01 $bb $80
    ld e, l                                       ; $75ea: $5d
    ret nz                                        ; $75eb: $c0

    ld l, $00                                     ; $75ec: $2e $00
    ldh [$15], a                                  ; $75ee: $e0 $15
    ld [hl], c                                    ; $75f0: $71
    ld c, d                                       ; $75f1: $4a

jr_0c7_75f2:
    cp e                                          ; $75f2: $bb
    and l                                         ; $75f3: $a5
    ld e, [hl]                                    ; $75f4: $5e
    ld c, d                                       ; $75f5: $4a
    nop                                           ; $75f6: $00
    xor [hl]                                      ; $75f7: $ae
    xor c                                         ; $75f8: $a9
    ld c, a                                       ; $75f9: $4f
    xor h                                         ; $75fa: $ac
    inc sp                                        ; $75fb: $33
    ld d, b                                       ; $75fc: $50
    ld h, a                                       ; $75fd: $67
    add l                                         ; $75fe: $85
    nop                                           ; $75ff: $00
    ld a, [$d12a]                                 ; $7600: $fa $2a $d1
    ld d, l                                       ; $7603: $55
    adc d                                         ; $7604: $8a
    ld [hl+], a                                   ; $7605: $22
    push de                                       ; $7606: $d5
    ld d, c                                       ; $7607: $51
    nop                                           ; $7608: $00
    xor d                                         ; $7609: $aa
    or [hl]                                       ; $760a: $b6
    add c                                         ; $760b: $81
    ld e, a                                       ; $760c: $5f
    ret nz                                        ; $760d: $c0

    inc sp                                        ; $760e: $33
    ld l, b                                       ; $760f: $68
    ld l, $00                                     ; $7610: $2e $00
    ld h, b                                       ; $7612: $60
    sub l                                         ; $7613: $95
    ld sp, $1b4a                                  ; $7614: $31 $4a $1b
    sub l                                         ; $7617: $95
    ld l, $2a                                     ; $7618: $2e $2a
    nop                                           ; $761a: $00
    adc $2a                                       ; $761b: $ce $2a
    adc l                                         ; $761d: $8d
    ld d, d                                       ; $761e: $52
    sbc b                                         ; $761f: $98
    and h                                         ; $7620: $a4
    ld sp, $0055                                  ; $7621: $31 $55 $00
    ld h, b                                       ; $7624: $60
    ld [bc], a                                    ; $7625: $02
    and b                                         ; $7626: $a0
    ld d, h                                       ; $7627: $54
    ld bc, $7082                                  ; $7628: $01 $82 $70
    dec d                                         ; $762b: $15
    nop                                           ; $762c: $00
    ld b, d                                       ; $762d: $42
    xor l                                         ; $762e: $ad
    sub d                                         ; $762f: $92
    ld d, a                                       ; $7630: $57
    ret z                                         ; $7631: $c8

    ld l, $61                                     ; $7632: $2e $61
    rst $10                                       ; $7634: $d7
    nop                                           ; $7635: $00
    jr nc, jr_0c7_75e5                            ; $7636: $30 $ad

    add hl, de                                    ; $7638: $19
    xor d                                         ; $7639: $aa
    dec de                                        ; $763a: $1b
    ld d, h                                       ; $763b: $54
    adc [hl]                                      ; $763c: $8e
    ld a, [hl+]                                   ; $763d: $2a
    nop                                           ; $763e: $00
    adc $28                                       ; $763f: $ce $28
    adc a                                         ; $7641: $8f
    ld d, d                                       ; $7642: $52
    sbc c                                         ; $7643: $99
    and l                                         ; $7644: $a5
    ld a, [hl-]                                   ; $7645: $3a
    ld d, d                                       ; $7646: $52
    nop                                           ; $7647: $00
    ld h, h                                       ; $7648: $64
    add b                                         ; $7649: $80
    ld sp, hl                                     ; $764a: $f9
    ld d, h                                       ; $764b: $54
    xor e                                         ; $764c: $ab
    add d                                         ; $764d: $82
    ld [hl], c                                    ; $764e: $71
    dec d                                         ; $764f: $15
    ld b, d                                       ; $7650: $42
    ld [$2820], a                                 ; $7651: $ea $20 $28
    xor d                                         ; $7654: $aa
    jr jr_0c7_76ac                                ; $7655: $18 $55

    adc l                                         ; $7657: $8d
    add b                                         ; $7658: $80
    ld [$0042], sp                                ; $7659: $08 $42 $00
    jr z, jr_0c7_75f2                             ; $765c: $28 $94

    ld bc, $1628                                  ; $765e: $01 $28 $16
    ld b, l                                       ; $7661: $45
    ld de, $008a                                  ; $7662: $11 $8a $00
    inc bc                                        ; $7665: $03
    sub e                                         ; $7666: $93
    sbc h                                         ; $7667: $9c
    ld h, $b9                                     ; $7668: $26 $b9
    ld e, [hl]                                    ; $766a: $5e
    ldh [rNR50], a                                ; $766b: $e0 $24
    nop                                           ; $766d: $00
    cp c                                          ; $766e: $b9
    ld d, b                                       ; $766f: $50
    xor $a2                                       ; $7670: $ee $a2
    db $ed                                        ; $7672: $ed
    ld de, $b2bc                                  ; $7673: $11 $bc $b2
    nop                                           ; $7676: $00
    ld d, l                                       ; $7677: $55
    ld b, d                                       ; $7678: $42
    or a                                          ; $7679: $b7
    cp [hl]                                       ; $767a: $be
    ld b, d                                       ; $767b: $42
    push af                                       ; $767c: $f5
    dec bc                                        ; $767d: $0b
    ld [hl+], a                                   ; $767e: $22
    nop                                           ; $767f: $00
    ld e, [hl]                                    ; $7680: $5e
    dec b                                         ; $7681: $05
    cp e                                          ; $7682: $bb
    adc d                                         ; $7683: $8a
    ld [hl], e                                    ; $7684: $73
    inc [hl]                                      ; $7685: $34
    rst $00                                       ; $7686: $c7
    xor b                                         ; $7687: $a8
    nop                                           ; $7688: $00
    dec c                                         ; $7689: $0d
    ld d, [hl]                                    ; $768a: $56
    ld l, c                                       ; $768b: $69
    cp l                                          ; $768c: $bd
    ret nz                                        ; $768d: $c0

    ld [hl], a                                    ; $768e: $77
    adc b                                         ; $768f: $88
    xor b                                         ; $7690: $a8
    nop                                           ; $7691: $00
    call nz, $8010                                ; $7692: $c4 $10 $80
    ld b, b                                       ; $7695: $40
    add hl, hl                                    ; $7696: $29
    sub c                                         ; $7697: $91
    adc [hl]                                      ; $7698: $8e
    ld c, h                                       ; $7699: $4c
    nop                                           ; $769a: $00
    ret nz                                        ; $769b: $c0

    pop af                                        ; $769c: $f1
    ld de, $1b6a                                  ; $769d: $11 $6a $1b
    push de                                       ; $76a0: $d5
    ld c, $4c                                     ; $76a1: $0e $4c
    nop                                           ; $76a3: $00
    rra                                           ; $76a4: $1f
    ld [de], a                                    ; $76a5: $12
    xor h                                         ; $76a6: $ac
    and l                                         ; $76a7: $a5
    ld c, h                                       ; $76a8: $4c
    jp nc, $a91e                                  ; $76a9: $d2 $1e $a9

jr_0c7_76ac:
    nop                                           ; $76ac: $00
    daa                                           ; $76ad: $27
    ld a, e                                       ; $76ae: $7b
    add h                                         ; $76af: $84
    push af                                       ; $76b0: $f5
    nop                                           ; $76b1: $00
    ld e, [hl]                                    ; $76b2: $5e
    and c                                         ; $76b3: $a1
    or l                                          ; $76b4: $b5
    nop                                           ; $76b5: $00
    ld c, d                                       ; $76b6: $4a
    ld c, d                                       ; $76b7: $4a
    or l                                          ; $76b8: $b5
    dec h                                         ; $76b9: $25
    jp z, $b748                                   ; $76ba: $ca $48 $b7

    ld d, l                                       ; $76bd: $55
    nop                                           ; $76be: $00
    dec bc                                        ; $76bf: $0b
    ld b, l                                       ; $76c0: $45
    sub $ab                                       ; $76c1: $d6 $ab
    ld l, h                                       ; $76c3: $6c
    ld d, a                                       ; $76c4: $57
    jr c, jr_0c7_771a                             ; $76c5: $38 $53

    nop                                           ; $76c7: $00
    call c, $f42a                                 ; $76c8: $dc $2a $f4
    ld d, c                                       ; $76cb: $51
    ld [hl], b                                    ; $76cc: $70
    xor d                                         ; $76cd: $aa
    ret c                                         ; $76ce: $d8

    ld [hl], c                                    ; $76cf: $71
    nop                                           ; $76d0: $00
    adc b                                         ; $76d1: $88
    dec d                                         ; $76d2: $15
    xor e                                         ; $76d3: $ab
    ld a, [hl]                                    ; $76d4: $7e
    ld bc, $0471                                  ; $76d5: $01 $71 $04
    ld c, c                                       ; $76d8: $49
    nop                                           ; $76d9: $00
    sub e                                         ; $76da: $93
    and d                                         ; $76db: $a2
    dec b                                         ; $76dc: $05
    ld d, l                                       ; $76dd: $55
    add hl, hl                                    ; $76de: $29
    add d                                         ; $76df: $82
    inc hl                                        ; $76e0: $23
    dec b                                         ; $76e1: $05
    nop                                           ; $76e2: $00
    ld b, $46                                     ; $76e3: $06 $46
    add hl, de                                    ; $76e5: $19
    adc l                                         ; $76e6: $8d
    or d                                          ; $76e7: $b2
    ld a, [hl]                                    ; $76e8: $7e
    ret nz                                        ; $76e9: $c0

    ld d, h                                       ; $76ea: $54
    nop                                           ; $76eb: $00
    ld h, d                                       ; $76ec: $62
    adc b                                         ; $76ed: $88
    push af                                       ; $76ee: $f5
    ld d, l                                       ; $76ef: $55
    ld [$5902], a                                 ; $76f0: $ea $02 $59
    inc h                                         ; $76f3: $24
    nop                                           ; $76f4: $00
    db $eb                                        ; $76f5: $eb
    add h                                         ; $76f6: $84
    ld l, h                                       ; $76f7: $6c
    ei                                            ; $76f8: $fb
    rlca                                          ; $76f9: $07
    db $e4                                        ; $76fa: $e4
    dec de                                        ; $76fb: $1b
    and [hl]                                      ; $76fc: $a6
    nop                                           ; $76fd: $00
    ld e, a                                       ; $76fe: $5f
    add hl, bc                                    ; $76ff: $09
    or $56                                        ; $7700: $f6 $56
    and [hl]                                      ; $7702: $a6
    jp hl                                         ; $7703: $e9


    rrca                                          ; $7704: $0f
    ld d, h                                       ; $7705: $54
    nop                                           ; $7706: $00
    dec de                                        ; $7707: $1b
    xor l                                         ; $7708: $ad
    jp nc, $807a                                  ; $7709: $d2 $7a $80

    rst $10                                       ; $770c: $d7
    jr z, jr_0c7_7777                             ; $770d: $28 $68

    nop                                           ; $770f: $00
    adc l                                         ; $7710: $8d
    jp nc, $a519                                  ; $7711: $d2 $19 $a5

    jr nc, jr_0c7_7760                            ; $7714: $30 $4a

    ld h, b                                       ; $7716: $60
    sub h                                         ; $7717: $94
    db $10                                        ; $7718: $10

Call_0c7_7719:
    jp hl                                         ; $7719: $e9


jr_0c7_771a:
    ld a, [hl+]                                   ; $771a: $2a
    call nz, Call_000_0920                        ; $771b: $c4 $20 $09
    pop de                                        ; $771e: $d1
    ld e, $a6                                     ; $771f: $1e $a6
    ld sp, $a500                                  ; $7721: $31 $00 $a5
    ld [hl-], a                                   ; $7724: $32
    adc a                                         ; $7725: $8f
    ret nc                                        ; $7726: $d0

    ld e, l                                       ; $7727: $5d
    and d                                         ; $7728: $a2
    ld a, [$0000]                                 ; $7729: $fa $00 $00
    xor a                                         ; $772c: $af
    ld d, b                                       ; $772d: $50
    push af                                       ; $772e: $f5
    ld [$a689], sp                                ; $772f: $08 $89 $a6
    inc d                                         ; $7732: $14
    xor d                                         ; $7733: $aa
    nop                                           ; $7734: $00
    inc d                                         ; $7735: $14
    xor d                                         ; $7736: $aa
    inc h                                         ; $7737: $24
    ld [$b511], a                                 ; $7738: $ea $11 $b5
    ld [$001b], a                                 ; $773b: $ea $1b $00
    sub l                                         ; $773e: $95
    ld l, [hl]                                    ; $773f: $6e
    ld l, d                                       ; $7740: $6a
    ld c, $48                                     ; $7741: $0e $48
    dec c                                         ; $7743: $0d
    sub l                                         ; $7744: $95
    ld a, [de]                                    ; $7745: $1a
    nop                                           ; $7746: $00
    sub l                                         ; $7747: $95
    ld a, [de]                                    ; $7748: $1a
    ld e, a                                       ; $7749: $5f
    ld h, b                                       ; $774a: $60
    sbc [hl]                                      ; $774b: $9e
    pop hl                                        ; $774c: $e1
    dec a                                         ; $774d: $3d
    jp nz, $f700                                  ; $774e: $c2 $00 $f7

    nop                                           ; $7751: $00
    reti                                          ; $7752: $d9


    ld [hl+], a                                   ; $7753: $22
    sub h                                         ; $7754: $94
    add c                                         ; $7755: $81
    ld c, b                                       ; $7756: $48
    ret nz                                        ; $7757: $c0

    nop                                           ; $7758: $00
    ld c, b                                       ; $7759: $48
    ret nz                                        ; $775a: $c0

    ld d, c                                       ; $775b: $51
    ld [hl-], a                                   ; $775c: $32
    xor d                                         ; $775d: $aa
    ld e, b                                       ; $775e: $58
    push af                                       ; $775f: $f5

jr_0c7_7760:
    dec c                                         ; $7760: $0d
    nop                                           ; $7761: $00
    ld a, [bc]                                    ; $7762: $0a
    and a                                         ; $7763: $a7
    push af                                       ; $7764: $f5
    rlca                                          ; $7765: $07
    ld a, [bc]                                    ; $7766: $0a
    db $ed                                        ; $7767: $ed
    sub a                                         ; $7768: $97
    ld e, b                                       ; $7769: $58
    nop                                           ; $776a: $00
    sub a                                         ; $776b: $97
    ld e, b                                       ; $776c: $58
    ld b, e                                       ; $776d: $43
    ld [hl], h                                    ; $776e: $74
    sub c                                         ; $776f: $91
    ld [$8077], a                                 ; $7770: $ea $77 $80
    nop                                           ; $7773: $00
    rst $30                                       ; $7774: $f7
    nop                                           ; $7775: $00
    ld h, a                                       ; $7776: $67

jr_0c7_7777:
    jr @+$4b                                      ; $7777: $18 $49

    sub $2a                                       ; $7779: $d6 $2a
    pop af                                        ; $777b: $f1
    nop                                           ; $777c: $00
    ld c, d                                       ; $777d: $4a
    pop de                                        ; $777e: $d1
    jp nc, $e835                                  ; $777f: $d2 $35 $e8

    ld a, [de]                                    ; $7782: $1a
    ld [hl], l                                    ; $7783: $75
    dec c                                         ; $7784: $0d
    nop                                           ; $7785: $00
    jp z, $f527                                   ; $7786: $ca $27 $f5

    rlca                                          ; $7789: $07
    ld [hl], h                                    ; $778a: $74
    add a                                         ; $778b: $87
    add hl, hl                                    ; $778c: $29
    inc c                                         ; $778d: $0c
    ld bc, $0c29                                  ; $778e: $01 $29 $0c
    rlca                                          ; $7791: $07
    jr z, @-$50                                   ; $7792: $28 $ae

    pop de                                        ; $7794: $d1
    ld a, l                                       ; $7795: $7d
    ld a, [hl]                                    ; $7796: $7e
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    ld a, d                                       ; $7799: $7a
    inc b                                         ; $779a: $04
    ld c, b                                       ; $779b: $48
    add $25                                       ; $779c: $c6 $25
    ldh [rNR51], a                                ; $779e: $e0 $25
    ldh [rDIV], a                                 ; $77a0: $e0 $04
    jp hl                                         ; $77a2: $e9


    jr jr_0c7_7819                                ; $77a3: $18 $74

    adc h                                         ; $77a5: $8c
    or l                                          ; $77a6: $b5
    jr nz, jr_0c7_77d1                            ; $77a7: $20 $28

    adc h                                         ; $77a9: $8c
    add hl, hl                                    ; $77aa: $29
    nop                                           ; $77ab: $00
    adc h                                         ; $77ac: $8c
    inc hl                                        ; $77ad: $23
    or h                                          ; $77ae: $b4
    ld d, a                                       ; $77af: $57
    ld l, b                                       ; $77b0: $68
    cp [hl]                                       ; $77b1: $be
    ret nz                                        ; $77b2: $c0

    ld l, a                                       ; $77b3: $6f
    nop                                           ; $77b4: $00
    sub b                                         ; $77b5: $90
    ld a, d                                       ; $77b6: $7a
    inc b                                         ; $77b7: $04
    xor e                                         ; $77b8: $ab
    db $e4                                        ; $77b9: $e4
    rra                                           ; $77ba: $1f
    ldh a, [$d7]                                  ; $77bb: $f0 $d7
    nop                                           ; $77bd: $00
    jr nc, jr_0c7_77e5                            ; $77be: $30 $25

    call c, Call_000_2c41                         ; $77c0: $dc $41 $2c
    ld d, c                                       ; $77c3: $51
    xor a                                         ; $77c4: $af
    ld [hl+], a                                   ; $77c5: $22
    nop                                           ; $77c6: $00

jr_0c7_77c7:
    ld e, e                                       ; $77c7: $5b
    ld b, l                                       ; $77c8: $45
    or [hl]                                       ; $77c9: $b6
    ld a, [hl+]                                   ; $77ca: $2a
    ld b, e                                       ; $77cb: $43
    call nc, Call_0c7_6926                        ; $77cc: $d4 $26 $69
    nop                                           ; $77cf: $00
    inc c                                         ; $77d0: $0c

jr_0c7_77d1:
    and h                                         ; $77d1: $a4
    jr nc, jr_0c7_7820                            ; $77d2: $30 $4c

    ld [hl], c                                    ; $77d4: $71
    ld b, l                                       ; $77d5: $45
    and b                                         ; $77d6: $a0
    adc d                                         ; $77d7: $8a
    nop                                           ; $77d8: $00
    add b                                         ; $77d9: $80
    ld d, h                                       ; $77da: $54
    ret nz                                        ; $77db: $c0

    cp d                                          ; $77dc: $ba
    add h                                         ; $77dd: $84
    ld l, l                                       ; $77de: $6d
    jp nc, $2056                                  ; $77df: $d2 $56 $20

    ret                                           ; $77e2: $c9


    sub $90                                       ; $77e3: $d6 $90

jr_0c7_77e5:
    ld bc, $4f24                                  ; $77e5: $01 $24 $4f
    adc d                                         ; $77e8: $8a
    ld l, $15                                     ; $77e9: $2e $15
    nop                                           ; $77eb: $00
    ld e, e                                       ; $77ec: $5b
    ld [$500e], a                                 ; $77ed: $ea $0e $50
    ld e, $a5                                     ; $77f0: $1e $a5
    inc sp                                        ; $77f2: $33
    xor e                                         ; $77f3: $ab
    nop                                           ; $77f4: $00
    ret nz                                        ; $77f5: $c0

    ld [bc], a                                    ; $77f6: $02
    db $f4                                        ; $77f7: $f4
    add h                                         ; $77f8: $84
    ld h, e                                       ; $77f9: $63
    ld a, [hl+]                                   ; $77fa: $2a
    push de                                       ; $77fb: $d5
    stop                                          ; $77fc: $10 $00
    ld h, e                                       ; $77fe: $63

Jump_0c7_77ff:
    db $eb                                        ; $77ff: $eb
    db $10                                        ; $7800: $10
    or c                                          ; $7801: $b1
    ld c, h                                       ; $7802: $4c
    ld e, d                                       ; $7803: $5a
    inc h                                         ; $7804: $24
    ld e, d                                       ; $7805: $5a
    nop                                           ; $7806: $00
    jp Jump_0c7_66b4                              ; $7807: $c3 $b4 $66


    sub d                                         ; $780a: $92
    add hl, sp                                    ; $780b: $39
    jr z, jr_0c7_77c7                             ; $780c: $28 $b9

    ld d, l                                       ; $780e: $55
    nop                                           ; $780f: $00
    ld l, h                                       ; $7810: $6c
    xor [hl]                                      ; $7811: $ae
    add hl, sp                                    ; $7812: $39
    ld e, e                                       ; $7813: $5b
    ld l, b                                       ; $7814: $68
    add l                                         ; $7815: $85
    call z, $02a9                                 ; $7816: $cc $a9 $02

jr_0c7_7819:
    inc bc                                        ; $7819: $03
    inc d                                         ; $781a: $14
    add c                                         ; $781b: $81
    inc d                                         ; $781c: $14
    add c                                         ; $781d: $81
    xor c                                         ; $781e: $a9
    sbc b                                         ; $781f: $98

jr_0c7_7820:
    ld bc, $007e                                  ; $7820: $01 $7e $00
    add b                                         ; $7823: $80
    ld [hl], l                                    ; $7824: $75
    add hl, bc                                    ; $7825: $09
    jp c, Jump_0c7_6823                           ; $7826: $da $23 $68

    rrca                                          ; $7829: $0f
    jp nc, $9d00                                  ; $782a: $d2 $00 $9d

    ld d, d                                       ; $782d: $52
    db $ec                                        ; $782e: $ec
    and h                                         ; $782f: $a4
    db $eb                                        ; $7830: $eb
    ld de, $9bb6                                  ; $7831: $11 $b6 $9b
    nop                                           ; $7834: $00
    call nz, $e02f                                ; $7835: $c4 $2f $e0
    sub a                                         ; $7838: $97
    ld [hl], b                                    ; $7839: $70
    and l                                         ; $783a: $a5
    ld e, h                                       ; $783b: $5c
    ld b, e                                       ; $783c: $43
    nop                                           ; $783d: $00
    ld l, $55                                     ; $783e: $2e $55
    xor e                                         ; $7840: $ab
    ld a, [hl+]                                   ; $7841: $2a
    ld d, a                                       ; $7842: $57
    ld b, c                                       ; $7843: $41
    cp d                                          ; $7844: $ba
    ld e, e                                       ; $7845: $5b
    nop                                           ; $7846: $00
    add e                                         ; $7847: $83
    or h                                          ; $7848: $b4
    ld b, a                                       ; $7849: $47
    ld [$a60d], a                                 ; $784a: $ea $0d $a6
    jr nc, jr_0c7_7897                            ; $784d: $30 $48

    nop                                           ; $784f: $00
    ld [hl], l                                    ; $7850: $75
    ld c, c                                       ; $7851: $49
    and b                                         ; $7852: $a0
    sub [hl]                                      ; $7853: $96
    add b                                         ; $7854: $80

jr_0c7_7855:
    ld c, h                                       ; $7855: $4c
    ret nz                                        ; $7856: $c0

    ld a, l                                       ; $7857: $7d
    stop                                          ; $7858: $10 $00
    xor d                                         ; $785a: $aa
    sub l                                         ; $785b: $95
    ld [hl], b                                    ; $785c: $70
    db $10                                        ; $785d: $10
    jr @+$2e                                      ; $785e: $18 $2c

    ld b, a                                       ; $7860: $47
    sub d                                         ; $7861: $92
    nop                                           ; $7862: $00
    ld h, $2d                                     ; $7863: $26 $2d
    ld c, e                                       ; $7865: $4b
    ld hl, $556c                                  ; $7866: $21 $6c $55
    or d                                          ; $7869: $b2
    dec h                                         ; $786a: $25
    nop                                           ; $786b: $00
    ld [$3ac9], a                                 ; $786c: $ea $c9 $3a
    add h                                         ; $786f: $84
    ld l, l                                       ; $7870: $6d
    ld a, d                                       ; $7871: $7a
    add [hl]                                      ; $7872: $86
    push hl                                       ; $7873: $e5
    nop                                           ; $7874: $00
    dec de                                        ; $7875: $1b
    ld e, e                                       ; $7876: $5b
    add e                                         ; $7877: $83
    or e                                          ; $7878: $b3
    ld c, h                                       ; $7879: $4c
    ld a, l                                       ; $787a: $7d
    ld [bc], a                                    ; $787b: $02
    or e                                          ; $787c: $b3
    nop                                           ; $787d: $00
    adc b                                         ; $787e: $88
    ld d, a                                       ; $787f: $57
    ret nz                                        ; $7880: $c0

    ld a, [hl+]                                   ; $7881: $2a
    db $e4                                        ; $7882: $e4
    sub l                                         ; $7883: $95
    ld [hl], b                                    ; $7884: $70
    dec d                                         ; $7885: $15
    nop                                           ; $7886: $00
    xor $aa                                       ; $7887: $ee $aa
    ld c, h                                       ; $7889: $4c
    db $f4                                        ; $788a: $f4
    ld b, $a9                                     ; $788b: $06 $a9
    ld c, a                                       ; $788d: $4f
    ret nc                                        ; $788e: $d0

    nop                                           ; $788f: $00
    rra                                           ; $7890: $1f
    xor d                                         ; $7891: $aa
    ld sp, $7b40                                  ; $7892: $31 $40 $7b
    sub d                                         ; $7895: $92
    db $ec                                        ; $7896: $ec

jr_0c7_7897:
    sub b                                         ; $7897: $90
    nop                                           ; $7898: $00
    ld h, l                                       ; $7899: $65
    inc [hl]                                      ; $789a: $34
    ld c, e                                       ; $789b: $4b
    ld h, a                                       ; $789c: $67
    jr jr_0c7_7855                                ; $789d: $18 $b6

    add c                                         ; $789f: $81
    ld e, [hl]                                    ; $78a0: $5e
    nop                                           ; $78a1: $00
    pop bc                                        ; $78a2: $c1
    add hl, hl                                    ; $78a3: $29
    ld h, h                                       ; $78a4: $64
    sub a                                         ; $78a5: $97
    jr nc, jr_0c7_78f2                            ; $78a6: $30 $4a

    jr jr_0c7_78f4                                ; $78a8: $18 $4a

    nop                                           ; $78aa: $00
    rla                                           ; $78ab: $17
    sub l                                         ; $78ac: $95
    ld h, a                                       ; $78ad: $67
    ld e, l                                       ; $78ae: $5d
    add a                                         ; $78af: $87
    xor d                                         ; $78b0: $aa
    ld c, l                                       ; $78b1: $4d
    jp nc, Jump_000_1810                          ; $78b2: $d2 $10 $18

    and h                                         ; $78b5: $a4
    ld sp, $02a4                                  ; $78b6: $31 $a4 $02
    add sp, -$6b                                  ; $78b9: $e8 $95
    ld b, b                                       ; $78bb: $40
    ld a, [hl+]                                   ; $78bc: $2a
    ld [$b601], sp                                ; $78bd: $08 $01 $b6
    adc b                                         ; $78c0: $88
    ld e, a                                       ; $78c1: $5f
    sbc [hl]                                      ; $78c2: $9e
    ld [bc], a                                    ; $78c3: $02
    rla                                           ; $78c4: $17
    ldh a, [rWX]                                  ; $78c5: $f0 $4b
    nop                                           ; $78c7: $00
    cp b                                          ; $78c8: $b8
    add d                                         ; $78c9: $82
    ld e, b                                       ; $78ca: $58
    sub d                                         ; $78cb: $92
    ld l, a                                       ; $78cc: $6f
    and l                                         ; $78cd: $a5
    ld d, a                                       ; $78ce: $57
    ld a, d                                       ; $78cf: $7a
    nop                                           ; $78d0: $00
    add e                                         ; $78d1: $83
    ld [hl], h                                    ; $78d2: $74
    add a                                         ; $78d3: $87
    jp hl                                         ; $78d4: $e9


    ld c, $d2                                     ; $78d5: $0e $d2
    dec e                                         ; $78d7: $1d

jr_0c7_78d8:
    and l                                         ; $78d8: $a5
    nop                                           ; $78d9: $00
    ld a, [hl-]                                   ; $78da: $3a
    ld b, d                                       ; $78db: $42
    ld a, h                                       ; $78dc: $7c
    ld c, b                                       ; $78dd: $48
    sub l                                         ; $78de: $95
    and d                                         ; $78df: $a2
    sbc h                                         ; $78e0: $9c
    ld d, [hl]                                    ; $78e1: $56
    nop                                           ; $78e2: $00
    ret                                           ; $78e3: $c9


    cpl                                           ; $78e4: $2f
    ldh [$94], a                                  ; $78e5: $e0 $94
    ld [hl-], a                                   ; $78e7: $32
    ld d, l                                       ; $78e8: $55
    db $10                                        ; $78e9: $10
    ld a, [bc]                                    ; $78ea: $0a
    nop                                           ; $78eb: $00
    ld a, c                                       ; $78ec: $79
    and l                                         ; $78ed: $a5

jr_0c7_78ee:
    inc c                                         ; $78ee: $0c
    dec b                                         ; $78ef: $05
    dec hl                                        ; $78f0: $2b
    ld a, [hl+]                                   ; $78f1: $2a

jr_0c7_78f2:
    ld d, e                                       ; $78f2: $53
    ld a, l                                       ; $78f3: $7d

jr_0c7_78f4:
    nop                                           ; $78f4: $00
    add c                                         ; $78f5: $81
    cp d                                          ; $78f6: $ba
    ld b, e                                       ; $78f7: $43
    ld [hl], h                                    ; $78f8: $74
    rlca                                          ; $78f9: $07
    jp hl                                         ; $78fa: $e9


    inc c                                         ; $78fb: $0c
    ld d, d                                       ; $78fc: $52
    nop                                           ; $78fd: $00
    sbc b                                         ; $78fe: $98
    and d                                         ; $78ff: $a2
    inc [hl]                                      ; $7900: $34
    ld c, b                                       ; $7901: $48
    add b                                         ; $7902: $80
    and c                                         ; $7903: $a1
    sub h                                         ; $7904: $94
    xor e                                         ; $7905: $ab
    nop                                           ; $7906: $00
    db $e4                                        ; $7907: $e4
    rrca                                          ; $7908: $0f
    ldh [$96], a                                  ; $7909: $e0 $96
    ld [hl], c                                    ; $790b: $71
    ld c, d                                       ; $790c: $4a
    cp b                                          ; $790d: $b8
    dec b                                         ; $790e: $05
    nop                                           ; $790f: $00
    ld a, h                                       ; $7910: $7c
    ld d, d                                       ; $7911: $52
    adc [hl]                                      ; $7912: $8e
    ld [bc], a                                    ; $7913: $02
    cp l                                          ; $7914: $bd
    sub d                                         ; $7915: $92
    ld l, e                                       ; $7916: $6b
    sub l                                         ; $7917: $95
    nop                                           ; $7918: $00
    ld e, d                                       ; $7919: $5a
    inc hl                                        ; $791a: $23
    cp b                                          ; $791b: $b8
    ld c, c                                       ; $791c: $49
    ld [hl], d                                    ; $791d: $72
    or a                                          ; $791e: $b7
    ret nz                                        ; $791f: $c0

    ld a, [hl]                                    ; $7920: $7e
    nop                                           ; $7921: $00
    add c                                         ; $7922: $81
    reti                                          ; $7923: $d9


    and [hl]                                      ; $7924: $a6
    ld e, c                                       ; $7925: $59
    call nz, Call_0c7_602f                        ; $7926: $c4 $2f $60
    and h                                         ; $7929: $a4
    nop                                           ; $792a: $00
    ld h, b                                       ; $792b: $60
    ld d, b                                       ; $792c: $50
    jr nc, jr_0c7_78d8                            ; $792d: $30 $a9

    ld e, c                                       ; $792f: $59
    ld a, [$750b]                                 ; $7930: $fa $0b $75
    nop                                           ; $7933: $00

jr_0c7_7934:
    adc [hl]                                      ; $7934: $8e
    ld [$a50e], a                                 ; $7935: $ea $0e $a5
    dec sp                                        ; $7938: $3b
    ld c, b                                       ; $7939: $48
    ld [hl], a                                    ; $793a: $77
    ld e, [hl]                                    ; $793b: $5e
    nop                                           ; $793c: $00
    ld h, c                                       ; $793d: $61
    xor c                                         ; $793e: $a9
    call nc, $946a                                ; $793f: $d4 $6a $94
    sbc l                                         ; $7942: $9d
    jr nz, jr_0c7_7934                            ; $7943: $20 $ef

    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    ld a, [c]                                     ; $7947: $f2
    inc b                                         ; $7948: $04
    ld [hl], a                                    ; $7949: $77
    nop                                           ; $794a: $00
    cp e                                          ; $794b: $bb
    add c                                         ; $794c: $81
    sub l                                         ; $794d: $95
    nop                                           ; $794e: $00
    xor e                                         ; $794f: $ab
    ld c, d                                       ; $7950: $4a
    rst $10                                       ; $7951: $d7
    and l                                         ; $7952: $a5
    ld l, [hl]                                    ; $7953: $6e
    jp c, Jump_000_373c                           ; $7954: $da $3c $37

    nop                                           ; $7957: $00
    ret c                                         ; $7958: $d8

jr_0c7_7959:
    db $eb                                        ; $7959: $eb
    jr c, jr_0c7_78ee                             ; $795a: $38 $92

    add $21                                       ; $795c: $c6 $21
    adc e                                         ; $795e: $8b
    ld a, d                                       ; $795f: $7a
    nop                                           ; $7960: $00
    add [hl]                                      ; $7961: $86
    xor c                                         ; $7962: $a9
    ld d, e                                       ; $7963: $53
    or d                                          ; $7964: $b2
    ld c, c                                       ; $7965: $49
    ld d, a                                       ; $7966: $57
    and b                                         ; $7967: $a0
    or b                                          ; $7968: $b0
    nop                                           ; $7969: $00
    ld a, [bc]                                    ; $796a: $0a
    ccf                                           ; $796b: $3f
    ret nz                                        ; $796c: $c0

    db $ed                                        ; $796d: $ed
    ld de, $439a                                  ; $796e: $11 $9a $43
    ld b, b                                       ; $7971: $40
    nop                                           ; $7972: $00
    ld [de], a                                    ; $7973: $12
    inc de                                        ; $7974: $13
    inc h                                         ; $7975: $24
    xor e                                         ; $7976: $ab
    adc h                                         ; $7977: $8c
    ld d, [hl]                                    ; $7978: $56
    reti                                          ; $7979: $d9


    xor a                                         ; $797a: $af
    nop                                           ; $797b: $00
    ld [hl], b                                    ; $797c: $70

jr_0c7_797d:
    ld c, e                                       ; $797d: $4b
    ld h, h                                       ; $797e: $64
    ld c, e                                       ; $797f: $4b
    cp b                                          ; $7980: $b8
    and l                                         ; $7981: $a5
    ld e, h                                       ; $7982: $5c
    and h                                         ; $7983: $a4
    nop                                           ; $7984: $00
    rra                                           ; $7985: $1f
    push af                                       ; $7986: $f5
    inc c                                         ; $7987: $0c
    ld h, d                                       ; $7988: $62
    sbc [hl]                                      ; $7989: $9e
    db $dd                                        ; $798a: $dd
    inc hl                                        ; $798b: $23
    adc $00                                       ; $798c: $ce $00
    ld sp, $c13d                                  ; $798e: $31 $3d $c1
    inc [hl]                                      ; $7991: $34
    add a                                         ; $7992: $87
    ld l, c                                       ; $7993: $69
    inc c                                         ; $7994: $0c
    ld c, l                                       ; $7995: $4d
    nop                                           ; $7996: $00
    ld a, [hl+]                                   ; $7997: $2a
    sub c                                         ; $7998: $91
    ld e, d                                       ; $7999: $5a
    jr nz, jr_0c7_7959                            ; $799a: $20 $bd

    ld e, e                                       ; $799c: $5b
    ld h, b                                       ; $799d: $60
    cp a                                          ; $799e: $bf
    nop                                           ; $799f: $00
    ret nz                                        ; $79a0: $c0

    ld e, h                                       ; $79a1: $5c
    jp Jump_000_228c                              ; $79a2: $c3 $8c $22


    ld d, l                                       ; $79a5: $55
    jr nc, jr_0c7_79fd                            ; $79a6: $30 $55

    nop                                           ; $79a8: $00
    or b                                          ; $79a9: $b0
    xor d                                         ; $79aa: $aa
    jr jr_0c7_797d                                ; $79ab: $18 $d0

    jr z, @-$09                                   ; $79ad: $28 $f5

    dec c                                         ; $79af: $0d
    ld a, [hl-]                                   ; $79b0: $3a
    nop                                           ; $79b1: $00
    rst $00                                       ; $79b2: $c7
    push af                                       ; $79b3: $f5
    rlca                                          ; $79b4: $07
    ld a, [c]                                     ; $79b5: $f2
    dec e                                         ; $79b6: $1d
    call nz, Call_000_2e1b                        ; $79b7: $c4 $1b $2e
    nop                                           ; $79ba: $00
    ld sp, $6c52                                  ; $79bb: $31 $52 $6c
    or l                                          ; $79be: $b5
    jp z, $9846                                   ; $79bf: $ca $46 $98

    rst $30                                       ; $79c2: $f7
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    ld l, c                                       ; $79c5: $69
    ld [de], a                                    ; $79c6: $12
    ld e, e                                       ; $79c7: $5b
    ret nz                                        ; $79c8: $c0

    dec l                                         ; $79c9: $2d
    ldh [$fe], a                                  ; $79ca: $e0 $fe
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    push de                                       ; $79ce: $d5
    add hl, hl                                    ; $79cf: $29
    jp c, Jump_000_3223                           ; $79d0: $da $23 $32

    add h                                         ; $79d3: $84
    ret nc                                        ; $79d4: $d0

    nop                                           ; $79d5: $00
    rra                                           ; $79d6: $1f
    and l                                         ; $79d7: $a5
    ld a, [hl-]                                   ; $79d8: $3a
    and h                                         ; $79d9: $a4
    jp c, $d54a                                   ; $79da: $da $4a $d5

    ld d, l                                       ; $79dd: $55
    nop                                           ; $79de: $00
    ld l, $aa                                     ; $79df: $2e $aa
    ld c, h                                       ; $79e1: $4c
    ld de, $4a1a                                  ; $79e2: $11 $1a $4a
    ld h, c                                       ; $79e5: $61
    cp a                                          ; $79e6: $bf
    nop                                           ; $79e7: $00
    ret nz                                        ; $79e8: $c0

    ld [hl], $c9                                  ; $79e9: $36 $c9
    ld l, l                                       ; $79eb: $6d
    sub d                                         ; $79ec: $92
    db $fc                                        ; $79ed: $fc
    inc bc                                        ; $79ee: $03
    ld b, c                                       ; $79ef: $41
    ld bc, $0a38                                  ; $79f0: $01 $38 $0a
    ld hl, $91a4                                  ; $79f3: $21 $a4 $91
    inc h                                         ; $79f6: $24
    pop hl                                        ; $79f7: $e1
    ld h, d                                       ; $79f8: $62
    ld [bc], a                                    ; $79f9: $02
    jr nz, jr_0c7_7a14                            ; $79fa: $20 $18

    ld [hl], l                                    ; $79fc: $75

jr_0c7_79fd:
    ld h, d                                       ; $79fd: $62
    ld [bc], a                                    ; $79fe: $02
    sbc d                                         ; $79ff: $9a
    ld h, a                                       ; $7a00: $67
    ld d, l                                       ; $7a01: $55
    and a                                         ; $7a02: $a7
    ld a, [hl+]                                   ; $7a03: $2a
    nop                                           ; $7a04: $00
    ld c, l                                       ; $7a05: $4d
    xor a                                         ; $7a06: $af
    jr nc, jr_0c7_7a5e                            ; $7a07: $30 $55

    ld l, d                                       ; $7a09: $6a
    or [hl]                                       ; $7a0a: $b6
    ret                                           ; $7a0b: $c9


    ld c, e                                       ; $7a0c: $4b
    nop                                           ; $7a0d: $00
    sub h                                         ; $7a0e: $94
    rst $30                                       ; $7a0f: $f7
    nop                                           ; $7a10: $00
    ld h, b                                       ; $7a11: $60
    sbc h                                         ; $7a12: $9c
    and l                                         ; $7a13: $a5

jr_0c7_7a14:
    sbc d                                         ; $7a14: $9a
    ld d, d                                       ; $7a15: $52
    nop                                           ; $7a16: $00
    call z, Call_0c7_7592                         ; $7a17: $cc $92 $75
    xor c                                         ; $7a1a: $a9
    ld a, [de]                                    ; $7a1b: $1a
    ld d, h                                       ; $7a1c: $54
    adc h                                         ; $7a1d: $8c
    cp e                                          ; $7a1e: $bb
    nop                                           ; $7a1f: $00
    rlca                                          ; $7a20: $07
    and $1b                                       ; $7a21: $e6 $1b
    ld c, c                                       ; $7a23: $49
    inc de                                        ; $7a24: $13
    and d                                         ; $7a25: $a2
    dec bc                                        ; $7a26: $0b
    dec b                                         ; $7a27: $05
    nop                                           ; $7a28: $00

jr_0c7_7a29:
    ld d, $17                                     ; $7a29: $16 $17
    jr jr_0c7_7a57                                ; $7a2b: $18 $2a

    dec [hl]                                      ; $7a2d: $35
    ld e, e                                       ; $7a2e: $5b
    ld h, h                                       ; $7a2f: $64
    and l                                         ; $7a30: $a5
    nop                                           ; $7a31: $00
    jp z, $807d                                   ; $7a32: $ca $7d $80

    and l                                         ; $7a35: $a5
    ret nc                                        ; $7a36: $d0

    ld c, d                                       ; $7a37: $4a
    ret nz                                        ; $7a38: $c0

    and l                                         ; $7a39: $a5
    nop                                           ; $7a3a: $00
    ld h, b                                       ; $7a3b: $60
    xor c                                         ; $7a3c: $a9
    ld e, b                                       ; $7a3d: $58
    call nc, Call_0c7_6a0c                        ; $7a3e: $d4 $0c $6a
    sub [hl]                                      ; $7a41: $96
    ld a, [$0600]                                 ; $7a42: $fa $00 $06
    sbc l                                         ; $7a45: $9d
    ld h, e                                       ; $7a46: $63
    ld a, [hl+]                                   ; $7a47: $2a
    ld d, l                                       ; $7a48: $55
    dec d                                         ; $7a49: $15
    xor c                                         ; $7a4a: $a9
    and d                                         ; $7a4b: $a2
    nop                                           ; $7a4c: $00
    ld e, e                                       ; $7a4d: $5b
    ld a, [bc]                                    ; $7a4e: $0a
    xor l                                         ; $7a4f: $ad
    sub b                                         ; $7a50: $90
    ld e, l                                       ; $7a51: $5d
    inc h                                         ; $7a52: $24
    cp d                                          ; $7a53: $ba
    ld e, l                                       ; $7a54: $5d
    add b                                         ; $7a55: $80
    and [hl]                                      ; $7a56: $a6

jr_0c7_7a57:
    nop                                           ; $7a57: $00
    sub d                                         ; $7a58: $92
    ld l, l                                       ; $7a59: $6d
    and l                                         ; $7a5a: $a5
    ld [$b610], a                                 ; $7a5b: $ea $10 $b6

jr_0c7_7a5e:
    and h                                         ; $7a5e: $a4
    nop                                           ; $7a5f: $00
    dec e                                         ; $7a60: $1d
    ld a, [c]                                     ; $7a61: $f2
    ld c, $62                                     ; $7a62: $0e $62
    sbc d                                         ; $7a64: $9a
    db $dd                                        ; $7a65: $dd
    inc hl                                        ; $7a66: $23
    sbc $40                                       ; $7a67: $de $40
    ld hl, $1a16                                  ; $7a69: $21 $16 $1a
    ld b, h                                       ; $7a6c: $44
    ld h, $2b                                     ; $7a6d: $26 $2b
    ld c, h                                       ; $7a6f: $4c
    ld d, e                                       ; $7a70: $53
    inc e                                         ; $7a71: $1c
    ld b, b                                       ; $7a72: $40
    and [hl]                                      ; $7a73: $a6
    reti                                          ; $7a74: $d9


    inc b                                         ; $7a75: $04
    ld a, [de]                                    ; $7a76: $1a
    db $f4                                        ; $7a77: $f4
    ld d, l                                       ; $7a78: $55
    ld sp, $1bca                                  ; $7a79: $31 $ca $1b
    jr nz, jr_0c7_7a29                            ; $7a7c: $20 $ab

    ld c, [hl]                                    ; $7a7e: $4e
    add d                                         ; $7a7f: $82
    inc bc                                        ; $7a80: $03
    scf                                           ; $7a81: $37
    halt                                          ; $7a82: $76
    ld b, c                                       ; $7a83: $41
    sbc a                                         ; $7a84: $9f
    and b                                         ; $7a85: $a0
    nop                                           ; $7a86: $00
    sub d                                         ; $7a87: $92
    db $ed                                        ; $7a88: $ed
    inc b                                         ; $7a89: $04
    ld a, [c]                                     ; $7a8a: $f2
    ld l, d                                       ; $7a8b: $6a
    sub l                                         ; $7a8c: $95
    ld [de], a                                    ; $7a8d: $12
    push hl                                       ; $7a8e: $e5
    nop                                           ; $7a8f: $00
    ld b, h                                       ; $7a90: $44
    cp e                                          ; $7a91: $bb
    jr z, jr_0c7_7ada                             ; $7a92: $28 $46

    add c                                         ; $7a94: $81
    or l                                          ; $7a95: $b5
    ld d, d                                       ; $7a96: $52
    rlc b                                         ; $7a97: $cb $00
    ld e, [hl]                                    ; $7a99: $5e
    jp Jump_0c7_67ac                              ; $7a9a: $c3 $ac $67


    reti                                          ; $7a9d: $d9


    ld a, $a9                                     ; $7a9e: $3e $a9
    jr c, jr_0c7_7aa2                             ; $7aa0: $38 $00

jr_0c7_7aa2:
    ld d, h                                       ; $7aa2: $54
    ld l, h                                       ; $7aa3: $6c
    cp d                                          ; $7aa4: $ba
    add $54                                       ; $7aa5: $c6 $54
    xor d                                         ; $7aa7: $aa
    add hl, de                                    ; $7aa8: $19
    and e                                         ; $7aa9: $a3
    nop                                           ; $7aaa: $00
    ld d, l                                       ; $7aab: $55
    ld bc, $41a8                                  ; $7aac: $01 $a8 $41
    ld d, d                                       ; $7aaf: $52
    jr nz, @+$4b                                  ; $7ab0: $20 $49

    ld d, $00                                     ; $7ab2: $16 $00
    add h                                         ; $7ab4: $84
    db $10                                        ; $7ab5: $10
    adc c                                         ; $7ab6: $89
    ld bc, $1342                                  ; $7ab7: $01 $42 $13
    dec d                                         ; $7aba: $15
    ld h, $00                                     ; $7abb: $26 $00
    ld [hl], h                                    ; $7abd: $74
    rlca                                          ; $7abe: $07
    xor b                                         ; $7abf: $a8
    adc a                                         ; $7ac0: $8f
    ld d, c                                       ; $7ac1: $51
    call c, Call_0c7_7255                         ; $7ac2: $dc $55 $72
    inc b                                         ; $7ac5: $04
    add b                                         ; $7ac6: $80
    sub $49                                       ; $7ac7: $d6 $49
    cp d                                          ; $7ac9: $ba
    ld h, h                                       ; $7aca: $64
    ld h, [hl]                                    ; $7acb: $66
    nop                                           ; $7acc: $00
    ld [bc], a                                    ; $7acd: $02
    cp [hl]                                       ; $7ace: $be
    nop                                           ; $7acf: $00
    xor c                                         ; $7ad0: $a9
    ld b, a                                       ; $7ad1: $47
    inc d                                         ; $7ad2: $14
    xor e                                         ; $7ad3: $ab
    ld c, c                                       ; $7ad4: $49
    or l                                          ; $7ad5: $b5
    sbc [hl]                                      ; $7ad6: $9e
    ld h, e                                       ; $7ad7: $63
    nop                                           ; $7ad8: $00
    ld c, h                                       ; $7ad9: $4c

jr_0c7_7ada:
    and [hl]                                      ; $7ada: $a6
    dec hl                                        ; $7adb: $2b
    call c, $ba51                                 ; $7adc: $dc $51 $ba
    jp nc, RST_18                                 ; $7adf: $d2 $18 $00

    and c                                         ; $7ae2: $a1
    inc [hl]                                      ; $7ae3: $34
    ld c, d                                       ; $7ae4: $4a
    ld [hl], c                                    ; $7ae5: $71
    ld d, c                                       ; $7ae6: $51

jr_0c7_7ae7:
    jp z, $e324                                   ; $7ae7: $ca $24 $e3

    nop                                           ; $7aea: $00
    sub e                                         ; $7aeb: $93
    ld [hl], b                                    ; $7aec: $70
    ld l, b                                       ; $7aed: $68
    jr jr_0c7_7ae7                                ; $7aee: $18 $f7

    inc c                                         ; $7af0: $0c
    ld a, [bc]                                    ; $7af1: $0a
    add hl, sp                                    ; $7af2: $39
    ld [bc], a                                    ; $7af3: $02
    ld h, l                                       ; $7af4: $65
    inc c                                         ; $7af5: $0c
    ld d, d                                       ; $7af6: $52
    ld b, $2a                                     ; $7af7: $06 $2a
    ld d, e                                       ; $7af9: $53
    jr z, jr_0c7_7b07                             ; $7afa: $28 $0b

    sub [hl]                                      ; $7afc: $96
    nop                                           ; $7afd: $00
    jr jr_0c7_7b23                                ; $7afe: $18 $23

    inc [hl]                                      ; $7b00: $34
    xor d                                         ; $7b01: $aa
    dec [hl]                                      ; $7b02: $35
    ld b, l                                       ; $7b03: $45
    ld a, b                                       ; $7b04: $78
    xor d                                         ; $7b05: $aa
    nop                                           ; $7b06: $00

jr_0c7_7b07:
    push de                                       ; $7b07: $d5
    add h                                         ; $7b08: $84
    cp c                                          ; $7b09: $b9
    ld d, c                                       ; $7b0a: $51
    xor $4a                                       ; $7b0b: $ee $4a
    pop de                                        ; $7b0d: $d1
    and c                                         ; $7b0e: $a1
    nop                                           ; $7b0f: $00
    ld l, h                                       ; $7b10: $6c
    jp nc, $9e35                                  ; $7b11: $d2 $35 $9e

    ld [hl], b                                    ; $7b14: $70
    dec h                                         ; $7b15: $25
    sub b                                         ; $7b16: $90
    cp d                                          ; $7b17: $ba
    nop                                           ; $7b18: $00
    ld c, c                                       ; $7b19: $49
    cp d                                          ; $7b1a: $ba
    ld c, h                                       ; $7b1b: $4c
    dec h                                         ; $7b1c: $25
    jp z, Jump_0c7_518e                           ; $7b1d: $ca $8e $51

    dec [hl]                                      ; $7b20: $35
    nop                                           ; $7b21: $00
    xor d                                         ; $7b22: $aa

jr_0c7_7b23:
    ld b, [hl]                                    ; $7b23: $46
    ld l, b                                       ; $7b24: $68
    ld d, h                                       ; $7b25: $54
    inc sp                                        ; $7b26: $33
    sub b                                         ; $7b27: $90
    ld [hl-], a                                   ; $7b28: $32
    xor d                                         ; $7b29: $aa
    nop                                           ; $7b2a: $00
    reti                                          ; $7b2b: $d9


    ld a, [c]                                     ; $7b2c: $f2
    ld c, $55                                     ; $7b2d: $0e $55
    and e                                         ; $7b2f: $a3
    ld l, l                                       ; $7b30: $6d
    sub e                                         ; $7b31: $93
    xor [hl]                                      ; $7b32: $ae
    nop                                           ; $7b33: $00
    ld b, c                                       ; $7b34: $41
    pop hl                                        ; $7b35: $e1
    inc d                                         ; $7b36: $14
    ld l, a                                       ; $7b37: $6f
    add b                                         ; $7b38: $80
    xor $01                                       ; $7b39: $ee $01
    ld l, a                                       ; $7b3b: $6f
    nop                                           ; $7b3c: $00
    db $10                                        ; $7b3d: $10
    xor l                                         ; $7b3e: $ad
    add d                                         ; $7b3f: $82
    ld a, l                                       ; $7b40: $7d
    jp nz, $4813                                  ; $7b41: $c2 $13 $48

    ld d, l                                       ; $7b44: $55
    jr jr_0c7_7b77                                ; $7b45: $18 $30

    ld a, [bc]                                    ; $7b47: $0a
    sbc c                                         ; $7b48: $99
    halt                                          ; $7b49: $76
    dec de                                        ; $7b4a: $1b
    add $1c                                       ; $7b4b: $c6 $1c
    add c                                         ; $7b4d: $81
    ret nc                                        ; $7b4e: $d0

    ld a, [hl+]                                   ; $7b4f: $2a
    nop                                           ; $7b50: $00
    add b                                         ; $7b51: $80
    cp [hl]                                       ; $7b52: $be
    ret nz                                        ; $7b53: $c0

    ld l, e                                       ; $7b54: $6b
    sub h                                         ; $7b55: $94
    cp h                                          ; $7b56: $bc
    add d                                         ; $7b57: $82
    ld d, a                                       ; $7b58: $57
    nop                                           ; $7b59: $00
    ret z                                         ; $7b5a: $c8

    dec hl                                        ; $7b5b: $2b
    db $e4                                        ; $7b5c: $e4
    sub [hl]                                      ; $7b5d: $96
    ld sp, $8852                                  ; $7b5e: $31 $52 $88
    dec h                                         ; $7b61: $25
    nop                                           ; $7b62: $00
    call Call_000_065a                            ; $7b63: $cd $5a $06
    push af                                       ; $7b66: $f5
    inc bc                                        ; $7b67: $03
    cp d                                          ; $7b68: $ba
    inc bc                                        ; $7b69: $03
    ld d, l                                       ; $7b6a: $55
    nop                                           ; $7b6b: $00
    and [hl]                                      ; $7b6c: $a6
    jp hl                                         ; $7b6d: $e9


    inc c                                         ; $7b6e: $0c
    rst $10                                       ; $7b6f: $d7
    jr jr_0c7_7bc6                                ; $7b70: $18 $54

    ld l, b                                       ; $7b72: $68
    cp a                                          ; $7b73: $bf
    nop                                           ; $7b74: $00
    ret nz                                        ; $7b75: $c0

    sbc a                                         ; $7b76: $9f

jr_0c7_7b77:
    and b                                         ; $7b77: $a0
    dec [hl]                                      ; $7b78: $35
    jp z, $c15e                                   ; $7b79: $ca $5e $c1

    dec hl                                        ; $7b7c: $2b
    nop                                           ; $7b7d: $00
    ld h, h                                       ; $7b7e: $64
    sub l                                         ; $7b7f: $95
    ld [hl], d                                    ; $7b80: $72
    ld c, e                                       ; $7b81: $4b
    jr jr_0c7_7baf                                ; $7b82: $18 $2b

    ld b, [hl]                                    ; $7b84: $46
    sub h                                         ; $7b85: $94
    nop                                           ; $7b86: $00
    ld [hl+], a                                   ; $7b87: $22
    sbc $21                                       ; $7b88: $de $21
    ld a, c                                       ; $7b8a: $79
    ld b, $96                                     ; $7b8b: $06 $96
    jr nz, @-$12                                  ; $7b8d: $20 $ec

    nop                                           ; $7b8f: $00
    ld de, $02b8                                  ; $7b90: $11 $b8 $02
    pop de                                        ; $7b93: $d1
    inc b                                         ; $7b94: $04
    ld h, l                                       ; $7b95: $65
    ld a, [hl-]                                   ; $7b96: $3a
    jp z, $f100                                   ; $7b97: $ca $00 $f1

    ld d, d                                       ; $7b9a: $52
    db $dd                                        ; $7b9b: $dd
    xor a                                         ; $7b9c: $af
    ld [hl], b                                    ; $7b9d: $70
    ld e, l                                       ; $7b9e: $5d
    ld [hl], d                                    ; $7b9f: $72
    sub a                                         ; $7ba0: $97
    add b                                         ; $7ba1: $80
    and b                                         ; $7ba2: $a0
    ld [bc], a                                    ; $7ba3: $02
    dec b                                         ; $7ba4: $05
    ld a, h                                       ; $7ba5: $7c
    and c                                         ; $7ba6: $a1
    rla                                           ; $7ba7: $17
    ld d, h                                       ; $7ba8: $54
    xor e                                         ; $7ba9: $ab
    cp a                                          ; $7baa: $bf
    ld bc, $b000                                  ; $7bab: $01 $00 $b0
    ld a, [bc]                                    ; $7bae: $0a

jr_0c7_7baf:
    ld a, a                                       ; $7baf: $7f
    add b                                         ; $7bb0: $80
    ld l, d                                       ; $7bb1: $6a
    inc d                                         ; $7bb2: $14
    inc e                                         ; $7bb3: $1c
    ld a, [bc]                                    ; $7bb4: $0a
    ld [$8daa], sp                                ; $7bb5: $08 $aa $8d
    ld b, l                                       ; $7bb8: $45
    ret c                                         ; $7bb9: $d8

    sub h                                         ; $7bba: $94
    inc c                                         ; $7bbb: $0c
    xor e                                         ; $7bbc: $ab
    jr c, jr_0c7_7c14                             ; $7bbd: $38 $55

    nop                                           ; $7bbf: $00
    ld l, h                                       ; $7bc0: $6c
    sub l                                         ; $7bc1: $95
    call nz, $9622                                ; $7bc2: $c4 $22 $96
    inc d                                         ; $7bc5: $14

jr_0c7_7bc6:
    ld bc, $40a2                                  ; $7bc6: $01 $a2 $40
    ld [$0cb4], sp                                ; $7bc9: $08 $b4 $0c
    rst $28                                       ; $7bcc: $ef
    db $10                                        ; $7bcd: $10
    xor c                                         ; $7bce: $a9
    ld d, h                                       ; $7bcf: $54
    ld a, [hl-]                                   ; $7bd0: $3a
    ld b, h                                       ; $7bd1: $44
    nop                                           ; $7bd2: $00
    ld [hl], l                                    ; $7bd3: $75
    add hl, bc                                    ; $7bd4: $09
    ld d, h                                       ; $7bd5: $54
    add $aa                                       ; $7bd6: $c6 $aa
    ld l, h                                       ; $7bd8: $6c
    ldh a, [rDIV]                                 ; $7bd9: $f0 $04
    add sp, $02                                   ; $7bdb: $e8 $02
    nop                                           ; $7bdd: $00
    jp hl                                         ; $7bde: $e9


    ld d, $f0                                     ; $7bdf: $16 $f0
    rrca                                          ; $7be1: $0f
    xor d                                         ; $7be2: $aa
    ld e, a                                       ; $7be3: $5f
    ld b, l                                       ; $7be4: $45
    cp a                                          ; $7be5: $bf
    nop                                           ; $7be6: $00
    rrca                                          ; $7be7: $0f
    rst $38                                       ; $7be8: $ff
    rra                                           ; $7be9: $1f
    rst $38                                       ; $7bea: $ff
    xor a                                         ; $7beb: $af
    rst $38                                       ; $7bec: $ff
    ld [hl], l                                    ; $7bed: $75
    rst $38                                       ; $7bee: $ff
    nop                                           ; $7bef: $00
    ld a, l                                       ; $7bf0: $7d
    add d                                         ; $7bf1: $82
    cp a                                          ; $7bf2: $bf
    ld b, b                                       ; $7bf3: $40
    ld d, a                                       ; $7bf4: $57
    xor b                                         ; $7bf5: $a8
    inc bc                                        ; $7bf6: $03
    db $fc                                        ; $7bf7: $fc
    nop                                           ; $7bf8: $00
    and b                                         ; $7bf9: $a0
    rst $38                                       ; $7bfa: $ff
    push af                                       ; $7bfb: $f5
    rst $38                                       ; $7bfc: $ff
    cp $ff                                        ; $7bfd: $fe $ff
    ld e, a                                       ; $7bff: $5f
    rst $38                                       ; $7c00: $ff
    nop                                           ; $7c01: $00
    inc d                                         ; $7c02: $14
    rst $38                                       ; $7c03: $ff
    db $eb                                        ; $7c04: $eb
    inc e                                         ; $7c05: $1c
    ret nz                                        ; $7c06: $c0

    ccf                                           ; $7c07: $3f
    ld bc, $00ff                                  ; $7c08: $01 $ff $00
    ld [bc], a                                    ; $7c0b: $02
    rst $38                                       ; $7c0c: $ff
    dec d                                         ; $7c0d: $15
    rst $38                                       ; $7c0e: $ff
    and b                                         ; $7c0f: $a0
    rst $38                                       ; $7c10: $ff
    nop                                           ; $7c11: $00
    rst $38                                       ; $7c12: $ff
    nop                                           ; $7c13: $00

jr_0c7_7c14:
    and $1f                                       ; $7c14: $e6 $1f
    sub h                                         ; $7c16: $94
    ld a, a                                       ; $7c17: $7f
    inc l                                         ; $7c18: $2c
    rst $38                                       ; $7c19: $ff
    ld a, [hl]                                    ; $7c1a: $7e
    rst $38                                       ; $7c1b: $ff
    ld d, b                                       ; $7c1c: $50
    rst $38                                       ; $7c1d: $ff
    ld e, $00                                     ; $7c1e: $1e $00
    cp a                                          ; $7c20: $bf
    inc [hl]                                      ; $7c21: $34
    nop                                           ; $7c22: $00
    db $e3                                        ; $7c23: $e3
    rra                                           ; $7c24: $1f
    rst $08                                       ; $7c25: $cf
    ccf                                           ; $7c26: $3f
    nop                                           ; $7c27: $00
    ld e, $fe                                     ; $7c28: $1e $fe
    cp h                                          ; $7c2a: $bc
    db $fc                                        ; $7c2b: $fc
    ld e, d                                       ; $7c2c: $5a
    ld a, [$f4b4]                                 ; $7c2d: $fa $b4 $f4
    inc b                                         ; $7c30: $04
    ld a, b                                       ; $7c31: $78
    ld hl, sp-$10                                 ; $7c32: $f8 $f0
    ldh a, [rP1]                                  ; $7c34: $f0 $00
    ld bc, $e760                                  ; $7c36: $01 $60 $e7
    ld hl, sp+$00                                 ; $7c39: $f8 $00
    jp Jump_0c7_61fc                              ; $7c3b: $c3 $fc $61


    ld a, [hl]                                    ; $7c3e: $7e
    jr nc, jr_0c7_7c80                            ; $7c3f: $30 $3f

    ld l, b                                       ; $7c41: $68
    ld a, a                                       ; $7c42: $7f
    nop                                           ; $7c43: $00
    dec [hl]                                      ; $7c44: $35
    ccf                                           ; $7c45: $3f
    ld a, [de]                                    ; $7c46: $1a
    rra                                           ; $7c47: $1f
    cpl                                           ; $7c48: $2f
    cpl                                           ; $7c49: $2f
    cp $ff                                        ; $7c4a: $fe $ff
    nop                                           ; $7c4c: $00
    db $fc                                        ; $7c4d: $fc
    rst $38                                       ; $7c4e: $ff
    ld a, [hl]                                    ; $7c4f: $7e
    ld a, a                                       ; $7c50: $7f
    cp a                                          ; $7c51: $bf
    cp a                                          ; $7c52: $bf
    ld d, a                                       ; $7c53: $57
    ld d, a                                       ; $7c54: $57
    ld bc, $0b0b                                  ; $7c55: $01 $0b $0b
    ld bc, $0001                                  ; $7c58: $01 $01 $00
    nop                                           ; $7c5b: $00
    ld a, [hl+]                                   ; $7c5c: $2a
    ld d, h                                       ; $7c5d: $54
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    add c                                         ; $7c60: $81
    cp $53                                        ; $7c61: $fe $53
    db $fc                                        ; $7c63: $fc
    ld [$fdff], a                                 ; $7c64: $ea $ff $fd
    rst $38                                       ; $7c67: $ff
    nop                                           ; $7c68: $00
    ld a, a                                       ; $7c69: $7f
    ld a, a                                       ; $7c6a: $7f
    xor a                                         ; $7c6b: $af
    xor a                                         ; $7c6c: $af
    jr @-$17                                      ; $7c6d: $18 $e7

    ld [hl], c                                    ; $7c6f: $71
    adc a                                         ; $7c70: $8f
    ld bc, $1feb                                  ; $7c71: $01 $eb $1f
    sub a                                         ; $7c74: $97
    ld a, a                                       ; $7c75: $7f
    cp a                                          ; $7c76: $bf
    rst $38                                       ; $7c77: $ff
    ld a, a                                       ; $7c78: $7f
    ld h, h                                       ; $7c79: $64
    ld [$fe30], sp                                ; $7c7a: $08 $30 $fe
    xor a                                         ; $7c7d: $af
    add h                                         ; $7c7e: $84
    nop                                           ; $7c7f: $00

jr_0c7_7c80:
    ld bc, $fd08                                  ; $7c80: $01 $08 $fd
    db $fd                                        ; $7c83: $fd
    ld a, [$00fa]                                 ; $7c84: $fa $fa $00
    call nc, $a0d4                                ; $7c87: $d4 $d4 $a0
    and b                                         ; $7c8a: $a0
    ldh [$e0], a                                  ; $7c8b: $e0 $e0
    and b                                         ; $7c8d: $a0
    and b                                         ; $7c8e: $a0
    ld [bc], a                                    ; $7c8f: $02
    ld d, b                                       ; $7c90: $50
    ld d, b                                       ; $7c91: $50
    and b                                         ; $7c92: $a0
    and b                                         ; $7c93: $a0
    ld b, b                                       ; $7c94: $40
    ld b, b                                       ; $7c95: $40
    ld l, d                                       ; $7c96: $6a
    jr @+$19                                      ; $7c97: $18 $17

    ld b, $17                                     ; $7c99: $06 $17
    ld [bc], a                                    ; $7c9b: $02
    ld [bc], a                                    ; $7c9c: $02
    ld bc, $0401                                  ; $7c9d: $01 $01 $04
    ld [$187a], sp                                ; $7ca0: $08 $7a $18
    rlca                                          ; $7ca3: $07
    inc b                                         ; $7ca4: $04
    rlca                                          ; $7ca5: $07
    ld b, $07                                     ; $7ca6: $06 $07
    dec b                                         ; $7ca8: $05
    ld b, $04                                     ; $7ca9: $06 $04
    ld [$0704], sp                                ; $7cab: $08 $04 $07
    inc b                                         ; $7cae: $04
    ld b, $05                                     ; $7caf: $06 $05
    add hl, bc                                    ; $7cb1: $09
    ld c, $f0                                     ; $7cb2: $0e $f0
    ld bc, $3000                                  ; $7cb4: $01 $00 $30
    ldh a, [rP1]                                  ; $7cb7: $f0 $00
    ld h, b                                       ; $7cb9: $60
    ldh [$a0], a                                  ; $7cba: $e0 $a0
    ldh [rLCDC], a                                ; $7cbc: $e0 $40
    ret nz                                        ; $7cbe: $c0

    ret nz                                        ; $7cbf: $c0

    ret nz                                        ; $7cc0: $c0

    inc c                                         ; $7cc1: $0c
    add b                                         ; $7cc2: $80
    add b                                         ; $7cc3: $80
    ld d, l                                       ; $7cc4: $55
    xor d                                         ; $7cc5: $aa
    push bc                                       ; $7cc6: $c5
    nop                                           ; $7cc7: $00
    ld [bc], a                                    ; $7cc8: $02

jr_0c7_7cc9:
    ld b, b                                       ; $7cc9: $40
    ld a, [bc]                                    ; $7cca: $0a
    dec c                                         ; $7ccb: $0d
    nop                                           ; $7ccc: $00
    inc bc                                        ; $7ccd: $03
    inc c                                         ; $7cce: $0c
    ld b, $09                                     ; $7ccf: $06 $09
    rlca                                          ; $7cd1: $07
    jr @+$0d                                      ; $7cd2: $18 $0b

    inc d                                         ; $7cd4: $14
    ld bc, $2d32                                  ; $7cd5: $01 $32 $2d
    ld c, e                                       ; $7cd8: $4b
    ld a, l                                       ; $7cd9: $7d
    dec b                                         ; $7cda: $05
    rlca                                          ; $7cdb: $07
    add b                                         ; $7cdc: $80
    ld bc, $4000                                  ; $7cdd: $01 $00 $40
    nop                                           ; $7ce0: $00
    ld [bc], a                                    ; $7ce1: $02
    nop                                           ; $7ce2: $00
    ret nz                                        ; $7ce3: $c0

    ld b, b                                       ; $7ce4: $40
    and b                                         ; $7ce5: $a0
    ld h, b                                       ; $7ce6: $60
    jr nz, jr_0c7_7cc9                            ; $7ce7: $20 $e0

    nop                                           ; $7ce9: $00
    ret nz                                        ; $7cea: $c0

    ldh [$d5], a                                  ; $7ceb: $e0 $d5
    ld a, [hl+]                                   ; $7ced: $2a
    cp [hl]                                       ; $7cee: $be
    ld b, c                                       ; $7cef: $41
    rst $38                                       ; $7cf0: $ff
    jr nz, jr_0c7_7cfb                            ; $7cf1: $20 $08

    rst $30                                       ; $7cf3: $f7
    ld [$11ef], sp                                ; $7cf4: $08 $ef $11

jr_0c7_7cf7:
    db $fd                                        ; $7cf7: $fd
    nop                                           ; $7cf8: $00
    db $10                                        ; $7cf9: $10
    ei                                            ; $7cfa: $fb

jr_0c7_7cfb:
    inc b                                         ; $7cfb: $04
    ld [hl+], a                                   ; $7cfc: $22
    ld d, b                                       ; $7cfd: $50
    xor a                                         ; $7cfe: $af
    dec b                                         ; $7cff: $05
    ld bc, $fb08                                  ; $7d00: $01 $08 $fb
    ld b, h                                       ; $7d03: $44
    dec bc                                        ; $7d04: $0b
    ld bc, $0004                                  ; $7d05: $01 $04 $00
    cp a                                          ; $7d08: $bf
    ld c, b                                       ; $7d09: $48
    db $fd                                        ; $7d0a: $fd
    ld [bc], a                                    ; $7d0b: $02
    nop                                           ; $7d0c: $00
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    add b                                         ; $7d0f: $80
    nop                                           ; $7d10: $00
    rst $28                                       ; $7d11: $ef

jr_0c7_7d12:
    db $10                                        ; $7d12: $10
    db $fd                                        ; $7d13: $fd
    ld [hl+], a                                   ; $7d14: $22
    ei                                            ; $7d15: $fb
    inc b                                         ; $7d16: $04
    ld l, a                                       ; $7d17: $6f
    sub c                                         ; $7d18: $91
    db $e4                                        ; $7d19: $e4
    ld a, [de]                                    ; $7d1a: $1a
    ld [$0010], sp                                ; $7d1b: $08 $10 $00
    ld h, b                                       ; $7d1e: $60
    nop                                           ; $7d1f: $00
    db $db                                        ; $7d20: $db
    inc h                                         ; $7d21: $24
    ld h, [hl]                                    ; $7d22: $66
    ld [$40bf], sp                                ; $7d23: $08 $bf $40
    dec b                                         ; $7d26: $05
    db $fd                                        ; $7d27: $fd
    ld [bc], a                                    ; $7d28: $02
    ld [bc], a                                    ; $7d29: $02
    db $fd                                        ; $7d2a: $fd
    ld a, a                                       ; $7d2b: $7f
    jr nz, jr_0c7_7d36                            ; $7d2c: $20 $08

    ld [bc], a                                    ; $7d2e: $02
    jr nz, jr_0c7_7d31                            ; $7d2f: $20 $00

jr_0c7_7d31:
    ld bc, $fd90                                  ; $7d31: $01 $90 $fd
    ld [bc], a                                    ; $7d34: $02
    rst $38                                       ; $7d35: $ff

jr_0c7_7d36:
    nop                                           ; $7d36: $00
    xor d                                         ; $7d37: $aa
    ld d, l                                       ; $7d38: $55
    inc e                                         ; $7d39: $1c
    jr jr_0c7_7d3c                                ; $7d3a: $18 $00

jr_0c7_7d3c:
    cp l                                          ; $7d3c: $bd
    ld b, d                                       ; $7d3d: $42
    rst $28                                       ; $7d3e: $ef
    db $10                                        ; $7d3f: $10

jr_0c7_7d40:
    rst $38                                       ; $7d40: $ff
    nop                                           ; $7d41: $00
    ld a, l                                       ; $7d42: $7d
    add d                                         ; $7d43: $82
    inc bc                                        ; $7d44: $03
    xor b                                         ; $7d45: $a8
    ld d, a                                       ; $7d46: $57
    rst $30                                       ; $7d47: $f7
    ld [$40bf], sp                                ; $7d48: $08 $bf $40
    ld [hl-], a                                   ; $7d4b: $32
    jr jr_0c7_7d56                                ; $7d4c: $18 $08

    ld [$40c0], sp                                ; $7d4e: $08 $c0 $40
    jr jr_0c7_7cf7                                ; $7d51: $18 $a4

    jr c, @+$56                                   ; $7d53: $38 $54

    xor e                                         ; $7d55: $ab

jr_0c7_7d56:
    rst $38                                       ; $7d56: $ff
    nop                                           ; $7d57: $00
    ld [hl], a                                    ; $7d58: $77
    ld [$ff00], sp                                ; $7d59: $08 $00 $ff
    nop                                           ; $7d5c: $00
    cp e                                          ; $7d5d: $bb
    ld b, b                                       ; $7d5e: $40
    rst $30                                       ; $7d5f: $f7
    ld [$00fe], sp                                ; $7d60: $08 $fe $00
    jr z, jr_0c7_7d12                             ; $7d63: $28 $ad

    db $10                                        ; $7d65: $10
    ld h, b                                       ; $7d66: $60
    ld [$c27b], sp                                ; $7d67: $08 $7b $c2
    db $10                                        ; $7d6a: $10
    rst $28                                       ; $7d6b: $ef
    nop                                           ; $7d6c: $00
    rst $30                                       ; $7d6d: $f7
    ld [bc], a                                    ; $7d6e: $02
    nop                                           ; $7d6f: $00
    rst $18                                       ; $7d70: $df
    nop                                           ; $7d71: $00
    ld d, l                                       ; $7d72: $55
    xor d                                         ; $7d73: $aa
    rst $30                                       ; $7d74: $f7
    ret nc                                        ; $7d75: $d0

    nop                                           ; $7d76: $00
    ld [hl], a                                    ; $7d77: $77
    adc d                                         ; $7d78: $8a
    call nc, $fb00                                ; $7d79: $d4 $00 $fb
    nop                                           ; $7d7c: $00
    ld a, a                                       ; $7d7d: $7f
    db $10                                        ; $7d7e: $10
    db $10                                        ; $7d7f: $10
    db $dd                                        ; $7d80: $dd
    ldh [rNR10], a                                ; $7d81: $e0 $10
    ld d, a                                       ; $7d83: $57
    add e                                         ; $7d84: $83
    jr nz, jr_0c7_7d87                            ; $7d85: $20 $00

jr_0c7_7d87:
    rst $38                                       ; $7d87: $ff
    nop                                           ; $7d88: $00
    db $dd                                        ; $7d89: $dd
    nop                                           ; $7d8a: $00
    push de                                       ; $7d8b: $d5
    ld h, c                                       ; $7d8c: $61
    add hl, bc                                    ; $7d8d: $09
    ld a, [c]                                     ; $7d8e: $f2
    ld b, b                                       ; $7d8f: $40
    ld a, [bc]                                    ; $7d90: $0a
    ld b, b                                       ; $7d91: $40
    cp a                                          ; $7d92: $bf
    db $dd                                        ; $7d93: $dd
    ld [hl+], a                                   ; $7d94: $22
    jr nz, @+$12                                  ; $7d95: $20 $10

    adc b                                         ; $7d97: $88
    jr nz, jr_0c7_7db2                            ; $7d98: $20 $18

    cp e                                          ; $7d9a: $bb
    ret z                                         ; $7d9b: $c8

    jp z, $b008                                   ; $7d9c: $ca $08 $b0

    ld b, b                                       ; $7d9f: $40
    rst $30                                       ; $7da0: $f7
    ld c, d                                       ; $7da1: $4a
    ret nc                                        ; $7da2: $d0

    ld e, b                                       ; $7da3: $58
    rst $30                                       ; $7da4: $f7
    ld [$44df], sp                                ; $7da5: $08 $df $44
    ld hl, $01fd                                  ; $7da8: $21 $fd $01
    jr nz, @-$01                                  ; $7dab: $20 $fd

    ld [bc], a                                    ; $7dad: $02
    ld [bc], a                                    ; $7dae: $02
    ld bc, $7d20                                  ; $7daf: $01 $20 $7d

jr_0c7_7db2:
    ld a, [bc]                                    ; $7db2: $0a
    sub d                                         ; $7db3: $92
    cp l                                          ; $7db4: $bd
    ld b, d                                       ; $7db5: $42
    rst $38                                       ; $7db6: $ff
    or b                                          ; $7db7: $b0
    jr jr_0c7_7ddf                                ; $7db8: $18 $25

    dec c                                         ; $7dba: $0d
    ld [bc], a                                    ; $7dbb: $02
    jr nz, jr_0c7_7d40                            ; $7dbc: $20 $82

    halt                                          ; $7dbe: $76
    nop                                           ; $7dbf: $00
    inc b                                         ; $7dc0: $04
    rst $28                                       ; $7dc1: $ef
    db $10                                        ; $7dc2: $10
    ld a, l                                       ; $7dc3: $7d
    add d                                         ; $7dc4: $82
    ld a, [bc]                                    ; $7dc5: $0a
    nop                                           ; $7dc6: $00
    ld de, $dd0a                                  ; $7dc7: $11 $0a $dd
    ld [hl+], a                                   ; $7dca: $22
    or [hl]                                       ; $7dcb: $b6
    ld c, c                                       ; $7dcc: $49
    sub [hl]                                      ; $7dcd: $96
    nop                                           ; $7dce: $00
    db $10                                        ; $7dcf: $10
    jr nc, jr_0c7_7dd3                            ; $7dd0: $30 $01

    nop                                           ; $7dd2: $00

jr_0c7_7dd3:
    ld b, b                                       ; $7dd3: $40
    rst $30                                       ; $7dd4: $f7
    or d                                          ; $7dd5: $b2
    nop                                           ; $7dd6: $00

jr_0c7_7dd7:
    rst $38                                       ; $7dd7: $ff
    nop                                           ; $7dd8: $00
    rst $18                                       ; $7dd9: $df
    jr nz, jr_0c7_7dd7                            ; $7dda: $20 $fb

    inc b                                         ; $7ddc: $04
    ret nz                                        ; $7ddd: $c0

    ld l, [hl]                                    ; $7dde: $6e

jr_0c7_7ddf:
    ld e, c                                       ; $7ddf: $59
    jr nz, jr_0c7_7dea                            ; $7de0: $20 $08

    rst $18                                       ; $7de2: $df
    jr nz, jr_0c7_7dee                            ; $7de3: $20 $09

    and [hl]                                      ; $7de5: $a6
    db $e3                                        ; $7de6: $e3

Call_0c7_7de7:
    ld b, h                                       ; $7de7: $44
    nop                                           ; $7de8: $00
    dec hl                                        ; $7de9: $2b

jr_0c7_7dea:
    and $84                                       ; $7dea: $e6 $84
    dec l                                         ; $7dec: $2d
    add e                                         ; $7ded: $83

jr_0c7_7dee:
    rst $28                                       ; $7dee: $ef
    rst $08                                       ; $7def: $cf
    ld a, h                                       ; $7df0: $7c
    ld sp, $00ef                                  ; $7df1: $31 $ef $00
    sub b                                         ; $7df4: $90

jr_0c7_7df5:
    ld e, b                                       ; $7df5: $58
    ret z                                         ; $7df6: $c8

    ld [$00ff], sp                                ; $7df7: $08 $ff $00
    ld e, e                                       ; $7dfa: $5b
    ld b, b                                       ; $7dfb: $40
    ld de, $ef51                                  ; $7dfc: $11 $51 $ef
    ld h, $01                                     ; $7dff: $26 $01
    push af                                       ; $7e01: $f5
    ld [$fe10], a                                 ; $7e02: $ea $10 $fe
    nop                                           ; $7e05: $00
    cp e                                          ; $7e06: $bb
    db $ec                                        ; $7e07: $ec
    nop                                           ; $7e08: $00
    ld l, h                                       ; $7e09: $6c
    or $f6                                        ; $7e0a: $f6 $f6
    db $10                                        ; $7e0c: $10
    xor $18                                       ; $7e0d: $ee $18
    cp e                                          ; $7e0f: $bb
    cp $00                                        ; $7e10: $fe $00
    db $10                                        ; $7e12: $10
    ld bc, $f600                                  ; $7e13: $01 $00 $f6
    cp a                                          ; $7e16: $bf
    inc e                                         ; $7e17: $1c
    ld bc, $667b                                  ; $7e18: $01 $7b $66
    db $10                                        ; $7e1b: $10
    db $10                                        ; $7e1c: $10
    ld de, $0092                                  ; $7e1d: $11 $92 $00
    db $10                                        ; $7e20: $10
    ld de, $0132                                  ; $7e21: $11 $32 $01
    db $10                                        ; $7e24: $10
    ld bc, $8033                                  ; $7e25: $01 $33 $80
    rst $18                                       ; $7e28: $df
    and [hl]                                      ; $7e29: $a6
    ld bc, $59c0                                  ; $7e2a: $01 $c0 $59
    rst $30                                       ; $7e2d: $f7
    ld [$5980], sp                                ; $7e2e: $08 $80 $59
    ld d, b                                       ; $7e31: $50
    db $10                                        ; $7e32: $10
    ld a, [$4160]                                 ; $7e33: $fa $60 $41
    ld b, b                                       ; $7e36: $40
    jr nz, jr_0c7_7e89                            ; $7e37: $20 $50

    ld sp, $00a0                                  ; $7e39: $31 $a0 $00
    ld d, b                                       ; $7e3c: $50
    ld d, c                                       ; $7e3d: $51
    push af                                       ; $7e3e: $f5
    call nz, $ef01                                ; $7e3f: $c4 $01 $ef
    ld e, c                                       ; $7e42: $59
    db $10                                        ; $7e43: $10
    sub b                                         ; $7e44: $90
    nop                                           ; $7e45: $00
    inc b                                         ; $7e46: $04
    sub b                                         ; $7e47: $90
    nop                                           ; $7e48: $00
    sbc b                                         ; $7e49: $98
    ld bc, $42bd                                  ; $7e4a: $01 $bd $42
    ret nz                                        ; $7e4d: $c0

    ld e, c                                       ; $7e4e: $59
    rst $18                                       ; $7e4f: $df
    ret nz                                        ; $7e50: $c0

    jr nz, jr_0c7_7df5                            ; $7e51: $20 $a2

    ld hl, $b4bd                                  ; $7e53: $21 $bd $b4
    db $10                                        ; $7e56: $10
    or b                                          ; $7e57: $b0
    ld c, c                                       ; $7e58: $49
    jr nc, jr_0c7_7e7c                            ; $7e59: $30 $21

    sbc h                                         ; $7e5b: $9c
    add hl, bc                                    ; $7e5c: $09
    jr nc, jr_0c7_7e70                            ; $7e5d: $30 $11

    add b                                         ; $7e5f: $80
    ld b, d                                       ; $7e60: $42
    add hl, bc                                    ; $7e61: $09
    db $dd                                        ; $7e62: $dd
    ld h, [hl]                                    ; $7e63: $66
    and $32                                       ; $7e64: $e6 $32
    pop af                                        ; $7e66: $f1
    ld a, [de]                                    ; $7e67: $1a
    and l                                         ; $7e68: $a5
    nop                                           ; $7e69: $00
    ret nz                                        ; $7e6a: $c0

    ret nc                                        ; $7e6b: $d0

    ld a, b                                       ; $7e6c: $78
    ld a, [$ef1d]                                 ; $7e6d: $fa $1d $ef

jr_0c7_7e70:
    db $10                                        ; $7e70: $10
    rst $08                                       ; $7e71: $cf
    nop                                           ; $7e72: $00
    db $10                                        ; $7e73: $10
    sbc c                                         ; $7e74: $99
    ld [hl], $b3                                  ; $7e75: $36 $b3
    inc h                                         ; $7e77: $24
    rlca                                          ; $7e78: $07
    ld l, $4c                                     ; $7e79: $2e $4c
    inc b                                         ; $7e7b: $04

jr_0c7_7e7c:
    dec e                                         ; $7e7c: $1d
    dec bc                                        ; $7e7d: $0b
    rlca                                          ; $7e7e: $07
    xor a                                         ; $7e7f: $af
    ld e, h                                       ; $7e80: $5c
    ld d, b                                       ; $7e81: $50
    inc de                                        ; $7e82: $13
    jr c, @+$3a                                   ; $7e83: $38 $38

    nop                                           ; $7e85: $00
    ld b, [hl]                                    ; $7e86: $46
    ld e, l                                       ; $7e87: $5d
    and e                                         ; $7e88: $a3

jr_0c7_7e89:
    and c                                         ; $7e89: $a1
    rst $18                                       ; $7e8a: $df
    ld l, d                                       ; $7e8b: $6a
    ld a, [hl]                                    ; $7e8c: $7e
    inc a                                         ; $7e8d: $3c
    ld b, b                                       ; $7e8e: $40
    inc a                                         ; $7e8f: $3c
    ld h, b                                       ; $7e90: $60
    dec bc                                        ; $7e91: $0b
    ld bc, $0301                                  ; $7e92: $01 $01 $03
    inc bc                                        ; $7e95: $03
    rrca                                          ; $7e96: $0f
    rrca                                          ; $7e97: $0f
    add b                                         ; $7e98: $80
    ld a, [$0302]                                 ; $7e99: $fa $02 $03
    dec b                                         ; $7e9c: $05
    rlca                                          ; $7e9d: $07
    ldh a, [rIE]                                  ; $7e9e: $f0 $ff
    ld a, [$00fd]                                 ; $7ea0: $fa $fd $00
    pop af                                        ; $7ea3: $f1
    cp $fc                                        ; $7ea4: $fe $fc
    rst $38                                       ; $7ea6: $ff
    add sp, -$01                                  ; $7ea7: $e8 $ff
    ld d, h                                       ; $7ea9: $54
    ei                                            ; $7eaa: $fb
    ld [bc], a                                    ; $7eab: $02
    xor e                                         ; $7eac: $ab
    db $f4                                        ; $7ead: $f4
    ld b, a                                       ; $7eae: $47
    ld hl, sp+$7f                                 ; $7eaf: $f8 $7f
    add b                                         ; $7eb1: $80
    jr nz, jr_0c7_7eb6                            ; $7eb2: $20 $02

    add h                                         ; $7eb4: $84
    nop                                           ; $7eb5: $00

jr_0c7_7eb6:
    or l                                          ; $7eb6: $b5
    ld c, d                                       ; $7eb7: $4a
    ld e, b                                       ; $7eb8: $58
    and a                                         ; $7eb9: $a7
    and c                                         ; $7eba: $a1
    ld e, a                                       ; $7ebb: $5f
    ldh a, [rIF]                                  ; $7ebc: $f0 $0f
    nop                                           ; $7ebe: $00
    db $fd                                        ; $7ebf: $fd
    ld [bc], a                                    ; $7ec0: $02
    and d                                         ; $7ec1: $a2
    ld e, a                                       ; $7ec2: $5f
    push de                                       ; $7ec3: $d5
    dec hl                                        ; $7ec4: $2b
    ld [$1015], a                                 ; $7ec5: $ea $15 $10
    ld b, b                                       ; $7ec8: $40
    cp a                                          ; $7ec9: $bf
    ld a, [bc]                                    ; $7eca: $0a
    call z, $0703                                 ; $7ecb: $cc $03 $07
    rst $38                                       ; $7ece: $ff
    ld d, d                                       ; $7ecf: $52
    xor a                                         ; $7ed0: $af
    inc c                                         ; $7ed1: $0c
    add b                                         ; $7ed2: $80
    add b                                         ; $7ed3: $80
    ld h, b                                       ; $7ed4: $60
    ldh [rNR10], a                                ; $7ed5: $e0 $10
    dec bc                                        ; $7ed7: $0b
    inc c                                         ; $7ed8: $0c
    dec bc                                        ; $7ed9: $0b
    ret nz                                        ; $7eda: $c0

    ret nz                                        ; $7edb: $c0

    nop                                           ; $7edc: $00
    and b                                         ; $7edd: $a0
    ldh [rTMA], a                                 ; $7ede: $e0 $06
    rlca                                          ; $7ee0: $07
    rrca                                          ; $7ee1: $0f
    rrca                                          ; $7ee2: $0f
    rra                                           ; $7ee3: $1f
    rra                                           ; $7ee4: $1f
    nop                                           ; $7ee5: $00
    ld a, l                                       ; $7ee6: $7d
    ld a, a                                       ; $7ee7: $7f
    ld e, $1f                                     ; $7ee8: $1e $1f
    inc [hl]                                      ; $7eea: $34
    ccf                                           ; $7eeb: $3f
    ld l, d                                       ; $7eec: $6a
    ld a, a                                       ; $7eed: $7f
    nop                                           ; $7eee: $00
    db $fc                                        ; $7eef: $fc
    rst $38                                       ; $7ef0: $ff
    xor e                                         ; $7ef1: $ab
    call nc, $fa85                                ; $7ef2: $d4 $85 $fa
    ld a, [c]                                     ; $7ef5: $f2
    db $fd                                        ; $7ef6: $fd
    ld [$fe41], sp                                ; $7ef7: $08 $41 $fe
    rla                                           ; $7efa: $17
    add sp, $4a                                   ; $7efb: $e8 $4a
    ld [$d42b], sp                                ; $7efd: $08 $2b $d4
    cp $42                                        ; $7f00: $fe $42
    ld bc, $1b30                                  ; $7f02: $01 $30 $1b
    ld e, [hl]                                    ; $7f05: $5e
    and c                                         ; $7f06: $a1
    push af                                       ; $7f07: $f5
    ld a, [bc]                                    ; $7f08: $0a
    ld a, [hl-]                                   ; $7f09: $3a
    dec bc                                        ; $7f0a: $0b
    xor c                                         ; $7f0b: $a9
    nop                                           ; $7f0c: $00
    ld d, a                                       ; $7f0d: $57
    ld a, [c]                                     ; $7f0e: $f2
    rrca                                          ; $7f0f: $0f
    push hl                                       ; $7f10: $e5
    rra                                           ; $7f11: $1f
    add a                                         ; $7f12: $87
    ld a, a                                       ; $7f13: $7f
    and d                                         ; $7f14: $a2
    nop                                           ; $7f15: $00
    ld e, a                                       ; $7f16: $5f
    ld d, c                                       ; $7f17: $51
    xor a                                         ; $7f18: $af
    ld a, [$fd05]                                 ; $7f19: $fa $05 $fd
    ld [bc], a                                    ; $7f1c: $02
    ld d, b                                       ; $7f1d: $50
    nop                                           ; $7f1e: $00
    ldh a, [$a8]                                  ; $7f1f: $f0 $a8
    ld hl, sp-$2c                                 ; $7f21: $f8 $d4
    db $fc                                        ; $7f23: $fc
    ld a, [$fcfa]                                 ; $7f24: $fa $fa $fc
    nop                                           ; $7f27: $00
    db $fc                                        ; $7f28: $fc
    ld e, b                                       ; $7f29: $58
    ld hl, sp+$2c                                 ; $7f2a: $f8 $2c
    db $fc                                        ; $7f2c: $fc
    ld e, h                                       ; $7f2d: $5c
    db $fc                                        ; $7f2e: $fc
    cp [hl]                                       ; $7f2f: $be
    nop                                           ; $7f30: $00
    cp a                                          ; $7f31: $bf
    ld e, a                                       ; $7f32: $5f
    ld e, a                                       ; $7f33: $5f
    rlca                                          ; $7f34: $07
    rlca                                          ; $7f35: $07
    ld c, $0e                                     ; $7f36: $0e $0e
    inc b                                         ; $7f38: $04
    ld b, b                                       ; $7f39: $40
    inc b                                         ; $7f3a: $04
    ld a, [bc]                                    ; $7f3b: $0a
    inc e                                         ; $7f3c: $1c
    sub l                                         ; $7f3d: $95
    ld [$fe61], a                                 ; $7f3e: $ea $61 $fe
    ret nc                                        ; $7f41: $d0

    rst $38                                       ; $7f42: $ff
    add b                                         ; $7f43: $80
    sbc $0b                                       ; $7f44: $de $0b
    ccf                                           ; $7f46: $3f
    ccf                                           ; $7f47: $3f
    inc de                                        ; $7f48: $13
    inc de                                        ; $7f49: $13
    inc b                                         ; $7f4a: $04
    inc b                                         ; $7f4b: $04
    xor a                                         ; $7f4c: $af
    ld de, $5550                                  ; $7f4d: $11 $50 $55
    xor d                                         ; $7f50: $aa
    add c                                         ; $7f51: $81
    dec bc                                        ; $7f52: $0b
    ld c, d                                       ; $7f53: $4a
    rst $38                                       ; $7f54: $ff
    and l                                         ; $7f55: $a5
    ret c                                         ; $7f56: $d8

    inc de                                        ; $7f57: $13
    db $10                                        ; $7f58: $10
    xor b                                         ; $7f59: $a8
    ld d, a                                       ; $7f5a: $57
    ld b, c                                       ; $7f5b: $41
    sbc h                                         ; $7f5c: $9c
    nop                                           ; $7f5d: $00
    ld d, a                                       ; $7f5e: $57
    rst $38                                       ; $7f5f: $ff
    cp l                                          ; $7f60: $bd
    db $fd                                        ; $7f61: $fd
    nop                                           ; $7f62: $00

jr_0c7_7f63:
    ld a, h                                       ; $7f63: $7c
    db $fc                                        ; $7f64: $fc
    cp b                                          ; $7f65: $b8
    cp b                                          ; $7f66: $b8
    ld b, b                                       ; $7f67: $40
    ld b, b                                       ; $7f68: $40
    jr z, jr_0c7_7f63                             ; $7f69: $28 $f8

    nop                                           ; $7f6b: $00
    ld d, h                                       ; $7f6c: $54
    db $f4                                        ; $7f6d: $f4
    add sp, -$18                                  ; $7f6e: $e8 $e8
    ret nc                                        ; $7f70: $d0

    ret nc                                        ; $7f71: $d0

    and b                                         ; $7f72: $a0
    and b                                         ; $7f73: $a0
    and h                                         ; $7f74: $a4
    ld c, d                                       ; $7f75: $4a
    inc h                                         ; $7f76: $24
    rst $38                                       ; $7f77: $ff
    jr nc, jr_0c7_7fd3                            ; $7f78: $30 $59

    nop                                           ; $7f7a: $00
    rst $38                                       ; $7f7b: $ff
    ld h, b                                       ; $7f7c: $60

Jump_0c7_7f7d:
    ld h, d                                       ; $7f7d: $62
    rst $38                                       ; $7f7e: $ff
    adc e                                         ; $7f7f: $8b
    nop                                           ; $7f80: $00
    rst $38                                       ; $7f81: $ff
    di                                            ; $7f82: $f3
    rst $08                                       ; $7f83: $cf
    sbc c                                         ; $7f84: $99
    rst $20                                       ; $7f85: $e7
    di                                            ; $7f86: $f3
    rst $08                                       ; $7f87: $cf

jr_0c7_7f88:
    reti                                          ; $7f88: $d9


    rla                                           ; $7f89: $17
    rst $20                                       ; $7f8a: $e7
    ld d, d                                       ; $7f8b: $52
    ld l, [hl]                                    ; $7f8c: $6e
    jr nz, jr_0c7_7f90                            ; $7f8d: $20 $01

    rst $38                                       ; $7f8f: $ff

jr_0c7_7f90:
    or b                                          ; $7f90: $b0
    ld e, d                                       ; $7f91: $5a
    and b                                         ; $7f92: $a0
    inc bc                                        ; $7f93: $03
    or b                                          ; $7f94: $b0
    ld d, d                                       ; $7f95: $52
    ld bc, $ff00                                  ; $7f96: $01 $00 $ff
    ld a, a                                       ; $7f99: $7f
    dec d                                         ; $7f9a: $15
    ld d, h                                       ; $7f9b: $54
    dec d                                         ; $7f9c: $15
    ld d, h                                       ; $7f9d: $54
    ld [hl], l                                    ; $7f9e: $75
    ld b, d                                       ; $7f9f: $42
    or c                                          ; $7fa0: $b1
    add hl, hl                                    ; $7fa1: $29
    call z, Call_0c7_4414                         ; $7fa2: $cc $14 $44
    inc b                                         ; $7fa5: $04
    pop de                                        ; $7fa6: $d1
    ld sp, $192d                                  ; $7fa7: $31 $2d $19
    ld l, c                                       ; $7faa: $69
    ld [$0024], sp                                ; $7fab: $08 $24 $00
    inc d                                         ; $7fae: $14
    ld [hl], $31                                  ; $7faf: $36 $31
    dec e                                         ; $7fb1: $1d
    ld l, h                                       ; $7fb2: $6c
    ld [$0027], sp                                ; $7fb3: $08 $27 $00
    rst $30                                       ; $7fb6: $f7
    ld d, d                                       ; $7fb7: $52
    rst $28                                       ; $7fb8: $ef
    dec [hl]                                      ; $7fb9: $35

jr_0c7_7fba:
    add sp, $24                                   ; $7fba: $e8 $24
    inc hl                                        ; $7fbc: $23
    db $10                                        ; $7fbd: $10
    ld c, l                                       ; $7fbe: $4d
    ld hl, $08a9                                  ; $7fbf: $21 $a9 $08
    dec b                                         ; $7fc2: $05
    nop                                           ; $7fc3: $00
    nop                                           ; $7fc4: $00
    nop                                           ; $7fc5: $00
    sub $66                                       ; $7fc6: $d6 $66
    adc $51                                       ; $7fc8: $ce $51
    rst $00                                       ; $7fca: $c7
    inc [hl]                                      ; $7fcb: $34
    ld [hl+], a                                   ; $7fcc: $22
    jr jr_0c7_7f88                                ; $7fcd: $18 $b9

    ld h, a                                       ; $7fcf: $67
    ld l, $3a                                     ; $7fd0: $2e $3a
    dec h                                         ; $7fd2: $25

jr_0c7_7fd3:
    add hl, de                                    ; $7fd3: $19
    ld b, b                                       ; $7fd4: $40
    nop                                           ; $7fd5: $00
    rst $38                                       ; $7fd6: $ff
    ld a, a                                       ; $7fd7: $7f
    cp l                                          ; $7fd8: $bd
    ld d, e                                       ; $7fd9: $53
    inc c                                         ; $7fda: $0c
    inc de                                        ; $7fdb: $13
    inc b                                         ; $7fdc: $04
    jr @+$01                                      ; $7fdd: $18 $ff

    ld a, a                                       ; $7fdf: $7f
    sbc h                                         ; $7fe0: $9c
    ld l, a                                       ; $7fe1: $6f
    sbc l                                         ; $7fe2: $9d
    dec e                                         ; $7fe3: $1d
    ld hl, $ff1c                                  ; $7fe4: $21 $1c $ff
    ld a, a                                       ; $7fe7: $7f
    rst $28                                       ; $7fe8: $ef
    ld a, a                                       ; $7fe9: $7f
    pop de                                        ; $7fea: $d1
    ld a, h                                       ; $7feb: $7c
    inc bc                                        ; $7fec: $03
    jr nz, jr_0c7_7fba                            ; $7fed: $20 $cb

    ld b, h                                       ; $7fef: $44
    add hl, de                                    ; $7ff0: $19
    ld e, a                                       ; $7ff1: $5f
    adc l                                         ; $7ff2: $8d
    ld sp, $0c20                                  ; $7ff3: $31 $20 $0c
    bit 0, h                                      ; $7ff6: $cb $44
    ld hl, sp+$15                                 ; $7ff8: $f8 $15
    rrca                                          ; $7ffa: $0f
    add hl, bc                                    ; $7ffb: $09
    ld h, $00                                     ; $7ffc: $26 $00
    rst $38                                       ; $7ffe: $ff

Jump_0c7_7fff:
    rst $38                                       ; $7fff: $ff
