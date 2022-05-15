; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e7", ROMX[$4000], BANK[$e7]

    rst $20                                       ; $4000: $e7
    dec d                                         ; $4001: $15
    ld [$1f00], sp                                ; $4002: $08 $00 $1f
    ld hl, sp+$07                                 ; $4005: $f8 $07

jr_0e7_4007:
    ld sp, hl                                     ; $4007: $f9
    ld bc, $09f6                                  ; $4008: $01 $f6 $09
    rst $28                                       ; $400b: $ef
    ld de, $17f0                                  ; $400c: $11 $f0 $17
    rst $38                                       ; $400f: $ff
    nop                                           ; $4010: $00
    rst $38                                       ; $4011: $ff
    ld [$10ff], sp                                ; $4012: $08 $ff $10
    rst $38                                       ; $4015: $ff
    jr jr_0e7_401a                                ; $4016: $18 $02

    inc bc                                        ; $4018: $03
    add d                                         ; $4019: $82

jr_0e7_401a:
    dec c                                         ; $401a: $0d
    rrca                                          ; $401b: $0f
    ld [bc], a                                    ; $401c: $02
    inc de                                        ; $401d: $13
    ld [bc], a                                    ; $401e: $02
    nop                                           ; $401f: $00
    ld [bc], a                                    ; $4020: $02
    ld a, a                                       ; $4021: $7f
    adc d                                         ; $4022: $8a
    add e                                         ; $4023: $83
    rst $38                                       ; $4024: $ff
    ld h, [hl]                                    ; $4025: $66
    rst $38                                       ; $4026: $ff
    ld a, e                                       ; $4027: $7b
    cp a                                          ; $4028: $bf
    inc sp                                        ; $4029: $33
    rst $08                                       ; $402a: $cf
    add a                                         ; $402b: $87
    rst $38                                       ; $402c: $ff
    ld [bc], a                                    ; $402d: $02
    ld a, a                                       ; $402e: $7f
    inc b                                         ; $402f: $04
    ld bc, $0202                                  ; $4030: $01 $02 $02
    ld [bc], a                                    ; $4033: $02
    ld bc, $4f02                                  ; $4034: $01 $02 $4f
    ld [bc], a                                    ; $4037: $02
    ld bc, $0282                                  ; $4038: $01 $82 $02
    inc bc                                        ; $403b: $03
    ld [bc], a                                    ; $403c: $02
    ld a, a                                       ; $403d: $7f
    sbc d                                         ; $403e: $9a
    db $db                                        ; $403f: $db
    xor $9e                                       ; $4040: $ee $9e
    db $fd                                        ; $4042: $fd
    ld hl, sp-$01                                 ; $4043: $f8 $ff
    sbc h                                         ; $4045: $9c
    rst $20                                       ; $4046: $e7
    halt                                          ; $4047: $76
    xor a                                         ; $4048: $af
    call $aa7f                                    ; $4049: $cd $7f $aa
    rst $18                                       ; $404c: $df
    call nc, Call_000_2abf                        ; $404d: $d4 $bf $2a
    rst $38                                       ; $4050: $ff
    ld d, h                                       ; $4051: $54
    rst $18                                       ; $4052: $df
    ld e, b                                       ; $4053: $58
    rst $18                                       ; $4054: $df
    ld [hl], c                                    ; $4055: $71
    cp $d6                                        ; $4056: $fe $d6
    ld sp, hl                                     ; $4058: $f9
    ld [bc], a                                    ; $4059: $02
    dec b                                         ; $405a: $05
    sbc [hl]                                      ; $405b: $9e
    rrca                                          ; $405c: $0f
    ld a, [bc]                                    ; $405d: $0a
    ld c, $0d                                     ; $405e: $0e $0d
    dec e                                         ; $4060: $1d
    inc de                                        ; $4061: $13
    dec c                                         ; $4062: $0d
    rrca                                          ; $4063: $0f
    inc c                                         ; $4064: $0c
    dec bc                                        ; $4065: $0b
    halt                                          ; $4066: $76
    ld a, c                                       ; $4067: $79
    or e                                          ; $4068: $b3
    rst $28                                       ; $4069: $ef
    add sp, -$21                                  ; $406a: $e8 $df
    pop de                                        ; $406c: $d1
    ccf                                           ; $406d: $3f
    and a                                         ; $406e: $a7
    ld a, a                                       ; $406f: $7f
    ld e, h                                       ; $4070: $5c
    rst $38                                       ; $4071: $ff
    cp a                                          ; $4072: $bf
    ld a, a                                       ; $4073: $7f
    ret c                                         ; $4074: $d8

    jr c, @+$52                                   ; $4075: $38 $50

    or b                                          ; $4077: $b0
    db $10                                        ; $4078: $10
    ldh a, [rSC]                                  ; $4079: $f0 $02
    jr nc, jr_0e7_4007                            ; $407b: $30 $8a

    inc a                                         ; $407d: $3c
    inc l                                         ; $407e: $2c
    ld d, $1a                                     ; $407f: $16 $1a
    rrca                                          ; $4081: $0f
    add hl, bc                                    ; $4082: $09
    dec a                                         ; $4083: $3d
    scf                                           ; $4084: $37
    dec hl                                        ; $4085: $2b
    ccf                                           ; $4086: $3f
    ld [bc], a                                    ; $4087: $02
    inc a                                         ; $4088: $3c
    ld [bc], a                                    ; $4089: $02
    jr nz, jr_0e7_408e                            ; $408a: $20 $02

    nop                                           ; $408c: $00
    ld [bc], a                                    ; $408d: $02

jr_0e7_408e:
    jr c, jr_0e7_4092                             ; $408e: $38 $02

    ld a, $02                                     ; $4090: $3e $02

jr_0e7_4092:
    dec d                                         ; $4092: $15
    ld [bc], a                                    ; $4093: $02
    ld [hl+], a                                   ; $4094: $22
    ld b, $00                                     ; $4095: $06 $00
    ld b, $80                                     ; $4097: $06 $80
    ld c, $00                                     ; $4099: $0e $00
    add d                                         ; $409b: $82
    ld a, [de]                                    ; $409c: $1a
    dec e                                         ; $409d: $1d
    ld [bc], a                                    ; $409e: $02
    rlca                                          ; $409f: $07
    ld d, $00                                     ; $40a0: $16 $00
    adc d                                         ; $40a2: $8a
    ld [hl], b                                    ; $40a3: $70
    ld a, a                                       ; $40a4: $7f
    rrca                                          ; $40a5: $0f
    ld a, a                                       ; $40a6: $7f
    dec d                                         ; $40a7: $15
    ld l, d                                       ; $40a8: $6a
    ld l, $ff                                     ; $40a9: $2e $ff
    reti                                          ; $40ab: $d9


    ld h, $02                                     ; $40ac: $26 $02
    rst $38                                       ; $40ae: $ff
    ld b, $00                                     ; $40af: $06 $00
    sbc b                                         ; $40b1: $98
    ld a, b                                       ; $40b2: $78
    ld e, b                                       ; $40b3: $58
    jr jr_0e7_412e                                ; $40b4: $18 $78

    ld e, b                                       ; $40b6: $58
    ld l, b                                       ; $40b7: $68
    ld e, b                                       ; $40b8: $58
    jr z, jr_0e7_40c9                             ; $40b9: $28 $0e

    ld a, [hl]                                    ; $40bb: $7e
    ld a, c                                       ; $40bc: $79
    ld e, a                                       ; $40bd: $5f
    scf                                           ; $40be: $37
    ld c, b                                       ; $40bf: $48
    ld l, d                                       ; $40c0: $6a
    db $fd                                        ; $40c1: $fd
    xor e                                         ; $40c2: $ab
    ld d, a                                       ; $40c3: $57
    ld e, l                                       ; $40c4: $5d
    cp [hl]                                       ; $40c5: $be
    xor $f1                                       ; $40c6: $ee $f1
    rst $30                                       ; $40c8: $f7

jr_0e7_40c9:
    rrca                                          ; $40c9: $0f
    ld [bc], a                                    ; $40ca: $02
    ld hl, sp+$08                                 ; $40cb: $f8 $08
    nop                                           ; $40cd: $00
    ld [bc], a                                    ; $40ce: $02
    inc b                                         ; $40cf: $04
    ld [bc], a                                    ; $40d0: $02
    ld [$0b02], sp                                ; $40d1: $08 $02 $0b
    ld [bc], a                                    ; $40d4: $02
    inc e                                         ; $40d5: $1c
    adc d                                         ; $40d6: $8a
    db $f4                                        ; $40d7: $f4
    db $fc                                        ; $40d8: $fc
    ld e, b                                       ; $40d9: $58
    cp b                                          ; $40da: $b8
    ld l, b                                       ; $40db: $68
    ld hl, sp-$70                                 ; $40dc: $f8 $90
    ldh a, [$a0]                                  ; $40de: $f0 $a0
    ld h, b                                       ; $40e0: $60
    ld [bc], a                                    ; $40e1: $02
    ret nz                                        ; $40e2: $c0

    ld a, [bc]                                    ; $40e3: $0a

jr_0e7_40e4:
    nop                                           ; $40e4: $00
    rst $38                                       ; $40e5: $ff
    dec d                                         ; $40e6: $15
    ld [$1f00], sp                                ; $40e7: $08 $00 $1f
    ld hl, sp+$07                                 ; $40ea: $f8 $07
    ld sp, hl                                     ; $40ec: $f9

jr_0e7_40ed:
    ld bc, $09f7                                  ; $40ed: $01 $f7 $09
    rst $28                                       ; $40f0: $ef
    ld de, $17f0                                  ; $40f1: $11 $f0 $17
    rst $38                                       ; $40f4: $ff
    nop                                           ; $40f5: $00
    rst $38                                       ; $40f6: $ff
    ld [$10ff], sp                                ; $40f7: $08 $ff $10
    rst $38                                       ; $40fa: $ff
    jr jr_0e7_40ff                                ; $40fb: $18 $02

    inc bc                                        ; $40fd: $03
    add d                                         ; $40fe: $82

jr_0e7_40ff:
    dec c                                         ; $40ff: $0d
    rrca                                          ; $4100: $0f
    ld [bc], a                                    ; $4101: $02
    inc de                                        ; $4102: $13
    ld [bc], a                                    ; $4103: $02
    nop                                           ; $4104: $00
    ld [bc], a                                    ; $4105: $02
    add hl, sp                                    ; $4106: $39
    adc c                                         ; $4107: $89
    rst $00                                       ; $4108: $c7
    rst $38                                       ; $4109: $ff
    ld b, d                                       ; $410a: $42
    rst $38                                       ; $410b: $ff
    ld a, a                                       ; $410c: $7f
    cp a                                          ; $410d: $bf
    inc sp                                        ; $410e: $33
    rst $08                                       ; $410f: $cf
    inc bc                                        ; $4110: $03
    inc bc                                        ; $4111: $03
    rst $38                                       ; $4112: $ff
    ld [bc], a                                    ; $4113: $02
    rlca                                          ; $4114: $07
    ld [bc], a                                    ; $4115: $02
    ld bc, $0002                                  ; $4116: $01 $02 $00
    ld [bc], a                                    ; $4119: $02
    ld bc, $4f02                                  ; $411a: $01 $02 $4f
    ld [bc], a                                    ; $411d: $02
    inc bc                                        ; $411e: $03
    sbc [hl]                                      ; $411f: $9e
    dec b                                         ; $4120: $05
    rlca                                          ; $4121: $07
    rst $38                                       ; $4122: $ff
    cp $b4                                        ; $4123: $fe $b4
    rst $18                                       ; $4125: $df
    db $fd                                        ; $4126: $fd
    ld a, [$fff8]                                 ; $4127: $fa $f8 $ff
    ld e, [hl]                                    ; $412a: $5e
    and a                                         ; $412b: $a7
    or a                                          ; $412c: $b7
    ld l, a                                       ; $412d: $6f

jr_0e7_412e:
    db $ed                                        ; $412e: $ed
    rst $18                                       ; $412f: $df
    xor d                                         ; $4130: $aa
    rst $18                                       ; $4131: $df
    sub h                                         ; $4132: $94
    rst $38                                       ; $4133: $ff
    ld a, [hl-]                                   ; $4134: $3a
    rst $38                                       ; $4135: $ff
    ld d, h                                       ; $4136: $54
    rst $18                                       ; $4137: $df
    ld [hl], c                                    ; $4138: $71
    cp $d6                                        ; $4139: $fe $d6
    ld sp, hl                                     ; $413b: $f9
    ldh [rIE], a                                  ; $413c: $e0 $ff
    ld [bc], a                                    ; $413e: $02
    ld hl, $7f9e                                  ; $413f: $21 $9e $7f
    ld e, [hl]                                    ; $4142: $5e
    ld e, l                                       ; $4143: $5d
    ld [hl], d                                    ; $4144: $72
    ld l, l                                       ; $4145: $6d
    ld [hl], e                                    ; $4146: $73
    ld d, [hl]                                    ; $4147: $56
    ld e, d                                       ; $4148: $5a
    sbc d                                         ; $4149: $9a
    sbc $6d                                       ; $414a: $de $6d
    ld [hl], e                                    ; $414c: $73
    rst $28                                       ; $414d: $ef
    pop af                                        ; $414e: $f1
    sub $ba                                       ; $414f: $d6 $ba
    xor h                                         ; $4151: $ac
    ld a, h                                       ; $4152: $7c
    ld c, a                                       ; $4153: $4f
    rst $38                                       ; $4154: $ff
    ret nc                                        ; $4155: $d0

    rst $38                                       ; $4156: $ff
    cp a                                          ; $4157: $bf
    ld a, a                                       ; $4158: $7f
    or b                                          ; $4159: $b0
    ld [hl], b                                    ; $415a: $70
    jr nz, @-$1e                                  ; $415b: $20 $e0

    ld h, b                                       ; $415d: $60
    ldh [$08], a                                  ; $415e: $e0 $08
    jr nz, jr_0e7_40e4                            ; $4160: $20 $82

    db $10                                        ; $4162: $10
    jr nc, jr_0e7_4167                            ; $4163: $30 $02

    jr nz, jr_0e7_416d                            ; $4165: $20 $06

jr_0e7_4167:
    nop                                           ; $4167: $00
    ld [bc], a                                    ; $4168: $02
    jr c, jr_0e7_40ed                             ; $4169: $38 $82

    ld e, $3e                                     ; $416b: $1e $3e

jr_0e7_416d:
    ld [bc], a                                    ; $416d: $02
    dec h                                         ; $416e: $25
    ld [$0800], sp                                ; $416f: $08 $00 $08
    add b                                         ; $4172: $80
    inc c                                         ; $4173: $0c
    nop                                           ; $4174: $00
    add d                                         ; $4175: $82
    ld a, [de]                                    ; $4176: $1a
    dec e                                         ; $4177: $1d
    ld [bc], a                                    ; $4178: $02
    rlca                                          ; $4179: $07
    jr jr_0e7_417c                                ; $417a: $18 $00

jr_0e7_417c:
    adc b                                         ; $417c: $88
    rrca                                          ; $417d: $0f
    ld a, a                                       ; $417e: $7f
    dec d                                         ; $417f: $15
    ld l, d                                       ; $4180: $6a
    ld l, $ff                                     ; $4181: $2e $ff
    reti                                          ; $4183: $d9


    ld h, $02                                     ; $4184: $26 $02
    rst $38                                       ; $4186: $ff
    ld b, $00                                     ; $4187: $06 $00
    sbc b                                         ; $4189: $98
    ld d, b                                       ; $418a: $50
    jr nc, jr_0e7_41e5                            ; $418b: $30 $58

    ld l, b                                       ; $418d: $68
    jr jr_0e7_41f8                                ; $418e: $18 $68

    ld c, b                                       ; $4190: $48
    ld a, b                                       ; $4191: $78
    ld e, [hl]                                    ; $4192: $5e
    ld a, $29                                     ; $4193: $3e $29
    ld e, a                                       ; $4195: $5f
    ld c, a                                       ; $4196: $4f
    ld [hl], b                                    ; $4197: $70
    jr c, jr_0e7_4219                             ; $4198: $38 $7f

    xor e                                         ; $419a: $ab
    ld d, a                                       ; $419b: $57
    ld e, l                                       ; $419c: $5d
    cp [hl]                                       ; $419d: $be
    xor $f1                                       ; $419e: $ee $f1
    rst $30                                       ; $41a0: $f7
    rrca                                          ; $41a1: $0f
    ld [bc], a                                    ; $41a2: $02
    ld hl, sp+$08                                 ; $41a3: $f8 $08
    nop                                           ; $41a5: $00
    ld [bc], a                                    ; $41a6: $02
    inc b                                         ; $41a7: $04
    ld [bc], a                                    ; $41a8: $02
    ld [$0b02], sp                                ; $41a9: $08 $02 $0b
    ld [bc], a                                    ; $41ac: $02
    inc e                                         ; $41ad: $1c
    adc d                                         ; $41ae: $8a
    db $f4                                        ; $41af: $f4
    db $fc                                        ; $41b0: $fc
    ld e, b                                       ; $41b1: $58
    cp b                                          ; $41b2: $b8
    ld l, b                                       ; $41b3: $68
    ld hl, sp-$70                                 ; $41b4: $f8 $90
    ldh a, [$a0]                                  ; $41b6: $f0 $a0
    ld h, b                                       ; $41b8: $60
    ld [bc], a                                    ; $41b9: $02
    ret nz                                        ; $41ba: $c0

    ld a, [bc]                                    ; $41bb: $0a
    nop                                           ; $41bc: $00
    rst $38                                       ; $41bd: $ff
    inc de                                        ; $41be: $13
    rlca                                          ; $41bf: $07
    nop                                           ; $41c0: $00
    rra                                           ; $41c1: $1f
    ld hl, sp+$07                                 ; $41c2: $f8 $07
    ld sp, hl                                     ; $41c4: $f9
    ld [bc], a                                    ; $41c5: $02
    rst $28                                       ; $41c6: $ef
    ld a, [bc]                                    ; $41c7: $0a
    xor $12                                       ; $41c8: $ee $12
    ld a, [$fe18]                                 ; $41ca: $fa $18 $fe
    nop                                           ; $41cd: $00
    cp $08                                        ; $41ce: $fe $08
    cp $10                                        ; $41d0: $fe $10
    ld [bc], a                                    ; $41d2: $02
    rrca                                          ; $41d3: $0f
    add d                                         ; $41d4: $82
    add hl, sp                                    ; $41d5: $39
    ccf                                           ; $41d6: $3f
    ld [bc], a                                    ; $41d7: $02
    rlca                                          ; $41d8: $07
    ld [bc], a                                    ; $41d9: $02
    ld bc, $e285                                  ; $41da: $01 $85 $e2
    db $e3                                        ; $41dd: $e3
    rra                                           ; $41de: $1f
    rst $38                                       ; $41df: $ff
    add h                                         ; $41e0: $84
    ld [bc], a                                    ; $41e1: $02
    rst $38                                       ; $41e2: $ff
    adc c                                         ; $41e3: $89
    ld a, a                                       ; $41e4: $7f

jr_0e7_41e5:
    ld a, e                                       ; $41e5: $7b
    sbc a                                         ; $41e6: $9f
    ld [de], a                                    ; $41e7: $12
    rst $28                                       ; $41e8: $ef
    add $ff                                       ; $41e9: $c6 $ff
    ld a, $3f                                     ; $41eb: $3e $3f
    ld [bc], a                                    ; $41ed: $02
    inc bc                                        ; $41ee: $03
    ld [bc], a                                    ; $41ef: $02
    ld bc, $0284                                  ; $41f0: $01 $84 $02
    inc bc                                        ; $41f3: $03
    ld e, $1f                                     ; $41f4: $1e $1f
    ld [bc], a                                    ; $41f6: $02
    inc bc                                        ; $41f7: $03

jr_0e7_41f8:
    adc d                                         ; $41f8: $8a
    rrca                                          ; $41f9: $0f
    dec c                                         ; $41fa: $0d
    ld a, [de]                                    ; $41fb: $1a
    ld d, $3d                                     ; $41fc: $16 $3d
    dec h                                         ; $41fe: $25
    cpl                                           ; $41ff: $2f
    dec sp                                        ; $4200: $3b
    dec [hl]                                      ; $4201: $35
    ccf                                           ; $4202: $3f
    ld [bc], a                                    ; $4203: $02
    rrca                                          ; $4204: $0f
    ld [bc], a                                    ; $4205: $02
    nop                                           ; $4206: $00
    ld [bc], a                                    ; $4207: $02
    ld bc, $078e                                  ; $4208: $01 $8e $07
    ld b, $ff                                     ; $420b: $06 $ff
    db $fd                                        ; $420d: $fd
    db $eb                                        ; $420e: $eb
    rst $38                                       ; $420f: $ff

jr_0e7_4210:
    call c, $f377                                 ; $4210: $dc $77 $f3
    db $ec                                        ; $4213: $ec
    ld sp, hl                                     ; $4214: $f9
    cp $cd                                        ; $4215: $fe $cd
    scf                                           ; $4217: $37
    ld [bc], a                                    ; $4218: $02

jr_0e7_4219:
    and b                                         ; $4219: $a0
    sbc d                                         ; $421a: $9a
    ldh a, [$50]                                  ; $421b: $f0 $50
    ld [hl], b                                    ; $421d: $70
    or b                                          ; $421e: $b0
    cp b                                          ; $421f: $b8
    ret z                                         ; $4220: $c8

    cp b                                          ; $4221: $b8
    ld hl, sp+$34                                 ; $4222: $f8 $34
    call c, $9c64                                 ; $4224: $dc $64 $9c
    db $f4                                        ; $4227: $f4
    db $fc                                        ; $4228: $fc
    call nc, $a8fc                                ; $4229: $d4 $fc $a8
    ret c                                         ; $422c: $d8

    ret nc                                        ; $422d: $d0

    or b                                          ; $422e: $b0
    ld a, $fe                                     ; $422f: $3e $fe
    ld h, c                                       ; $4231: $61
    rst $38                                       ; $4232: $ff
    sbc $ff                                       ; $4233: $de $ff
    ld [bc], a                                    ; $4235: $02
    pop hl                                        ; $4236: $e1
    ld [bc], a                                    ; $4237: $02
    ret nz                                        ; $4238: $c0

    ld [bc], a                                    ; $4239: $02
    jr nc, jr_0e7_423e                            ; $423a: $30 $02

    inc a                                         ; $423c: $3c
    ld [bc], a                                    ; $423d: $02

jr_0e7_423e:
    ld a, [bc]                                    ; $423e: $0a
    ld b, $00                                     ; $423f: $06 $00
    ld [bc], a                                    ; $4241: $02
    inc b                                         ; $4242: $04
    ld [bc], a                                    ; $4243: $02
    ld [$0b02], sp                                ; $4244: $08 $02 $0b
    ld [bc], a                                    ; $4247: $02
    inc e                                         ; $4248: $1c
    adc d                                         ; $4249: $8a
    db $f4                                        ; $424a: $f4
    db $fc                                        ; $424b: $fc
    ld e, b                                       ; $424c: $58
    cp b                                          ; $424d: $b8
    add sp, -$08                                  ; $424e: $e8 $f8
    sub b                                         ; $4250: $90
    ldh a, [$a0]                                  ; $4251: $f0 $a0
    ld h, b                                       ; $4253: $60
    ld [bc], a                                    ; $4254: $02
    ret nz                                        ; $4255: $c0

    ld [bc], a                                    ; $4256: $02
    ld b, b                                       ; $4257: $40
    add [hl]                                      ; $4258: $86
    add b                                         ; $4259: $80
    ret nz                                        ; $425a: $c0

    add b                                         ; $425b: $80
    ret nz                                        ; $425c: $c0

    add b                                         ; $425d: $80
    ret nz                                        ; $425e: $c0

    ld [bc], a                                    ; $425f: $02
    ld b, b                                       ; $4260: $40
    inc c                                         ; $4261: $0c
    nop                                           ; $4262: $00
    add h                                         ; $4263: $84
    dec a                                         ; $4264: $3d
    ld a, [hl-]                                   ; $4265: $3a
    inc c                                         ; $4266: $0c
    rrca                                          ; $4267: $0f
    ld [bc], a                                    ; $4268: $02
    inc bc                                        ; $4269: $03
    ld b, $00                                     ; $426a: $06 $00
    sbc b                                         ; $426c: $98
    dec sp                                        ; $426d: $3b
    dec a                                         ; $426e: $3d
    ld a, [hl+]                                   ; $426f: $2a
    scf                                           ; $4270: $37
    dec d                                         ; $4271: $15
    cpl                                           ; $4272: $2f
    ld a, [de]                                    ; $4273: $1a
    ccf                                           ; $4274: $3f
    dec l                                         ; $4275: $2d
    cpl                                           ; $4276: $2f
    jr c, jr_0e7_42b8                             ; $4277: $38 $3f

    dec hl                                        ; $4279: $2b
    inc a                                         ; $427a: $3c
    jr nc, @+$41                                  ; $427b: $30 $3f

    ld e, $3f                                     ; $427d: $1e $3f
    dec d                                         ; $427f: $15
    ld a, [hl+]                                   ; $4280: $2a
    ld l, $ff                                     ; $4281: $2e $ff
    cp e                                          ; $4283: $bb
    ld b, h                                       ; $4284: $44
    ld [bc], a                                    ; $4285: $02
    rst $38                                       ; $4286: $ff
    inc b                                         ; $4287: $04
    nop                                           ; $4288: $00
    inc bc                                        ; $4289: $03
    jr nz, jr_0e7_4210                            ; $428a: $20 $84

    ldh [$b0], a                                  ; $428c: $e0 $b0
    ret nc                                        ; $428e: $d0

    jr nc, jr_0e7_4293                            ; $428f: $30 $02

    ret nc                                        ; $4291: $d0

    sub c                                         ; $4292: $91

jr_0e7_4293:
    ldh a, [$0e]                                  ; $4293: $f0 $0e
    cp $61                                        ; $4295: $fe $61
    sbc a                                         ; $4297: $9f
    xor [hl]                                      ; $4298: $ae
    ld [hl], c                                    ; $4299: $71
    db $10                                        ; $429a: $10
    rst $38                                       ; $429b: $ff
    xor e                                         ; $429c: $ab
    ld d, a                                       ; $429d: $57
    ld a, l                                       ; $429e: $7d
    cp [hl]                                       ; $429f: $be
    adc $f1                                       ; $42a0: $ce $f1
    rst $10                                       ; $42a2: $d7
    cpl                                           ; $42a3: $2f
    ld [bc], a                                    ; $42a4: $02
    ld hl, sp+$04                                 ; $42a5: $f8 $04
    nop                                           ; $42a7: $00
    rst $38                                       ; $42a8: $ff
    dec c                                         ; $42a9: $0d
    inc b                                         ; $42aa: $04
    nop                                           ; $42ab: $00
    dec d                                         ; $42ac: $15
    ei                                            ; $42ad: $fb
    dec b                                         ; $42ae: $05
    db $fc                                        ; $42af: $fc
    nop                                           ; $42b0: $00
    ei                                            ; $42b1: $fb
    ld [$0ef4], sp                                ; $42b2: $08 $f4 $0e
    inc b                                         ; $42b5: $04
    dec bc                                        ; $42b6: $0b
    sub h                                         ; $42b7: $94

jr_0e7_42b8:
    inc c                                         ; $42b8: $0c
    rrca                                          ; $42b9: $0f
    cpl                                           ; $42ba: $2f
    jr nc, @+$81                                  ; $42bb: $30 $7f

    ld b, b                                       ; $42bd: $40
    rst $38                                       ; $42be: $ff
    add b                                         ; $42bf: $80
    rst $38                                       ; $42c0: $ff
    add b                                         ; $42c1: $80
    rst $38                                       ; $42c2: $ff
    add b                                         ; $42c3: $80
    ccf                                           ; $42c4: $3f
    ld b, b                                       ; $42c5: $40
    rra                                           ; $42c6: $1f
    jr nz, jr_0e7_42e8                            ; $42c7: $20 $1f

    db $10                                        ; $42c9: $10
    ld b, $07                                     ; $42ca: $06 $07
    inc c                                         ; $42cc: $0c
    nop                                           ; $42cd: $00
    inc bc                                        ; $42ce: $03
    db $fc                                        ; $42cf: $fc
    sub b                                         ; $42d0: $90
    inc bc                                        ; $42d1: $03
    rst $38                                       ; $42d2: $ff
    nop                                           ; $42d3: $00
    rst $38                                       ; $42d4: $ff
    nop                                           ; $42d5: $00
    rst $38                                       ; $42d6: $ff
    nop                                           ; $42d7: $00
    rst $38                                       ; $42d8: $ff
    nop                                           ; $42d9: $00
    cp $01                                        ; $42da: $fe $01
    ld hl, sp+$07                                 ; $42dc: $f8 $07
    and a                                         ; $42de: $a7
    ld e, b                                       ; $42df: $58
    cp $02                                        ; $42e0: $fe $02
    ld bc, $ff81                                  ; $42e2: $01 $81 $ff
    ld a, [bc]                                    ; $42e5: $0a
    nop                                           ; $42e6: $00
    ld [bc], a                                    ; $42e7: $02

jr_0e7_42e8:
    inc c                                         ; $42e8: $0c
    and b                                         ; $42e9: $a0
    ld [de], a                                    ; $42ea: $12
    ld e, $16                                     ; $42eb: $1e $16
    ld e, $16                                     ; $42ed: $1e $16
    ld e, $16                                     ; $42ef: $1e $16
    ld e, $16                                     ; $42f1: $1e $16
    ld e, $16                                     ; $42f3: $1e $16
    ld e, $16                                     ; $42f5: $1e $16
    ld e, $36                                     ; $42f7: $1e $36
    ld a, $36                                     ; $42f9: $3e $36
    ld e, $36                                     ; $42fb: $1e $36
    ld e, $3f                                     ; $42fd: $1e $3f
    rra                                           ; $42ff: $1f
    ccf                                           ; $4300: $3f
    rra                                           ; $4301: $1f
    ccf                                           ; $4302: $3f
    rra                                           ; $4303: $1f
    ld l, $1e                                     ; $4304: $2e $1e
    db $10                                        ; $4306: $10
    inc l                                         ; $4307: $2c
    dec b                                         ; $4308: $05
    inc bc                                        ; $4309: $03
    ld [bc], a                                    ; $430a: $02
    inc b                                         ; $430b: $04
    inc e                                         ; $430c: $1c
    nop                                           ; $430d: $00
    rst $38                                       ; $430e: $ff
    dec c                                         ; $430f: $0d
    inc b                                         ; $4310: $04
    nop                                           ; $4311: $00
    dec d                                         ; $4312: $15
    ei                                            ; $4313: $fb
    dec b                                         ; $4314: $05
    db $fc                                        ; $4315: $fc
    rst $38                                       ; $4316: $ff
    ld hl, sp+$07                                 ; $4317: $f8 $07
    di                                            ; $4319: $f3
    rrca                                          ; $431a: $0f
    inc bc                                        ; $431b: $03
    rrca                                          ; $431c: $0f
    sub d                                         ; $431d: $92
    ld b, $07                                     ; $431e: $06 $07
    rla                                           ; $4320: $17
    jr @+$41                                      ; $4321: $18 $3f

    jr nz, @+$81                                  ; $4323: $20 $7f

    ld b, b                                       ; $4325: $40
    ld a, a                                       ; $4326: $7f
    ld b, b                                       ; $4327: $40
    ld a, a                                       ; $4328: $7f
    ld b, b                                       ; $4329: $40
    rra                                           ; $432a: $1f
    jr nz, @+$11                                  ; $432b: $20 $0f

    db $10                                        ; $432d: $10
    rrca                                          ; $432e: $0f
    ld [$0302], sp                                ; $432f: $08 $02 $03
    inc c                                         ; $4332: $0c
    nop                                           ; $4333: $00
    ld b, $01                                     ; $4334: $06 $01
    inc bc                                        ; $4336: $03
    ld a, a                                       ; $4337: $7f
    sub b                                         ; $4338: $90
    add c                                         ; $4339: $81
    rst $38                                       ; $433a: $ff
    ld bc, $01ff                                  ; $433b: $01 $ff $01
    cp $01                                        ; $433e: $fe $01
    rst $38                                       ; $4340: $ff
    nop                                           ; $4341: $00
    rst $38                                       ; $4342: $ff
    nop                                           ; $4343: $00
    rst $38                                       ; $4344: $ff
    nop                                           ; $4345: $00
    cp $01                                        ; $4346: $fe $01
    rst $38                                       ; $4348: $ff
    ld [bc], a                                    ; $4349: $02
    nop                                           ; $434a: $00
    add c                                         ; $434b: $81
    rst $38                                       ; $434c: $ff
    inc b                                         ; $434d: $04
    nop                                           ; $434e: $00
    ld [bc], a                                    ; $434f: $02
    ld h, b                                       ; $4350: $60
    and d                                         ; $4351: $a2
    or b                                          ; $4352: $b0
    ldh a, [$b0]                                  ; $4353: $f0 $b0
    ldh a, [$b0]                                  ; $4355: $f0 $b0
    ldh a, [$b0]                                  ; $4357: $f0 $b0
    ldh a, [$b0]                                  ; $4359: $f0 $b0
    ldh a, [$30]                                  ; $435b: $f0 $30
    ldh a, [rSVBK]                                ; $435d: $f0 $70
    ldh a, [$60]                                  ; $435f: $f0 $60
    ldh [$60], a                                  ; $4361: $e0 $60
    ldh [$e8], a                                  ; $4363: $e0 $e8
    ld hl, sp-$14                                 ; $4365: $f8 $ec
    db $f4                                        ; $4367: $f4
    sub $ea                                       ; $4368: $d6 $ea
    ld a, [hl+]                                   ; $436a: $2a
    sub $ae                                       ; $436b: $d6 $ae
    ld d, d                                       ; $436d: $52
    ld e, b                                       ; $436e: $58
    and h                                         ; $436f: $a4
    ldh a, [$08]                                  ; $4370: $f0 $08
    ldh a, [rNR10]                                ; $4372: $f0 $10
    ld [bc], a                                    ; $4374: $02
    ret nz                                        ; $4375: $c0

    ld a, [de]                                    ; $4376: $1a
    nop                                           ; $4377: $00
    rst $38                                       ; $4378: $ff
    dec c                                         ; $4379: $0d
    inc b                                         ; $437a: $04
    nop                                           ; $437b: $00
    dec d                                         ; $437c: $15
    ei                                            ; $437d: $fb
    dec b                                         ; $437e: $05
    db $fc                                        ; $437f: $fc
    nop                                           ; $4380: $00
    pop af                                        ; $4381: $f1
    ld [$0efc], sp                                ; $4382: $08 $fc $0e
    ld bc, $9406                                  ; $4385: $01 $06 $94
    inc c                                         ; $4388: $0c
    rrca                                          ; $4389: $0f
    cpl                                           ; $438a: $2f
    jr nc, jr_0e7_440c                            ; $438b: $30 $7f

    ld b, b                                       ; $438d: $40
    rst $38                                       ; $438e: $ff
    add b                                         ; $438f: $80
    rst $38                                       ; $4390: $ff
    add b                                         ; $4391: $80
    rst $38                                       ; $4392: $ff
    add b                                         ; $4393: $80
    ccf                                           ; $4394: $3f
    ld b, b                                       ; $4395: $40
    rra                                           ; $4396: $1f
    jr nz, jr_0e7_43b8                            ; $4397: $20 $1f

    db $10                                        ; $4399: $10
    ld b, $07                                     ; $439a: $06 $07
    inc c                                         ; $439c: $0c
    nop                                           ; $439d: $00
    ld [bc], a                                    ; $439e: $02
    inc c                                         ; $439f: $0c
    sbc [hl]                                      ; $43a0: $9e
    ld d, $1e                                     ; $43a1: $16 $1e
    ld d, $1e                                     ; $43a3: $16 $1e
    ld [hl], $3e                                  ; $43a5: $36 $3e
    ld h, $3e                                     ; $43a7: $26 $3e
    ld l, $3e                                     ; $43a9: $2e $3e
    inc l                                         ; $43ab: $2c
    inc a                                         ; $43ac: $3c
    ld l, h                                       ; $43ad: $6c
    ld a, h                                       ; $43ae: $7c
    ld c, h                                       ; $43af: $4c
    ld a, h                                       ; $43b0: $7c
    ld e, h                                       ; $43b1: $5c
    ld a, h                                       ; $43b2: $7c
    call c, $f8fc                                 ; $43b3: $dc $fc $f8
    ld a, a                                       ; $43b6: $7f
    rst $38                                       ; $43b7: $ff

jr_0e7_43b8:
    ld a, b                                       ; $43b8: $78
    or c                                          ; $43b9: $b1
    ld a, [hl]                                    ; $43ba: $7e
    rst $38                                       ; $43bb: $ff
    nop                                           ; $43bc: $00
    rst $38                                       ; $43bd: $ff
    nop                                           ; $43be: $00
    ld [bc], a                                    ; $43bf: $02

jr_0e7_43c0:
    jr nc, @-$6c                                  ; $43c0: $30 $92

    inc [hl]                                      ; $43c2: $34
    inc c                                         ; $43c3: $0c
    ld e, $22                                     ; $43c4: $1e $22
    scf                                           ; $43c6: $37
    add hl, bc                                    ; $43c7: $09
    ccf                                           ; $43c8: $3f
    ld bc, $01ff                                  ; $43c9: $01 $ff $01
    db $fc                                        ; $43cc: $fc
    ld [bc], a                                    ; $43cd: $02
    ld hl, sp+$04                                 ; $43ce: $f8 $04
    ld hl, sp+$08                                 ; $43d0: $f8 $08
    ld h, b                                       ; $43d2: $60
    ldh [$0c], a                                  ; $43d3: $e0 $0c
    nop                                           ; $43d5: $00
    add a                                         ; $43d6: $87
    ccf                                           ; $43d7: $3f
    nop                                           ; $43d8: $00
    ccf                                           ; $43d9: $3f
    nop                                           ; $43da: $00
    ccf                                           ; $43db: $3f
    nop                                           ; $43dc: $00
    ccf                                           ; $43dd: $3f
    ld [bc], a                                    ; $43de: $02
    nop                                           ; $43df: $00
    add c                                         ; $43e0: $81
    ccf                                           ; $43e1: $3f
    ld d, $00                                     ; $43e2: $16 $00
    rst $38                                       ; $43e4: $ff
    dec c                                         ; $43e5: $0d
    inc b                                         ; $43e6: $04
    nop                                           ; $43e7: $00
    dec d                                         ; $43e8: $15
    ei                                            ; $43e9: $fb
    dec b                                         ; $43ea: $05
    push af                                       ; $43eb: $f5
    nop                                           ; $43ec: $00
    ei                                            ; $43ed: $fb
    ld [$0efc], sp                                ; $43ee: $08 $fc $0e
    dec b                                         ; $43f1: $05
    nop                                           ; $43f2: $00
    ld [bc], a                                    ; $43f3: $02
    ld b, $9e                                     ; $43f4: $06 $9e
    dec bc                                        ; $43f6: $0b
    rrca                                          ; $43f7: $0f
    dec bc                                        ; $43f8: $0b
    rrca                                          ; $43f9: $0f
    dec bc                                        ; $43fa: $0b
    rrca                                          ; $43fb: $0f
    dec de                                        ; $43fc: $1b
    rra                                           ; $43fd: $1f
    inc de                                        ; $43fe: $13
    rra                                           ; $43ff: $1f
    rla                                           ; $4400: $17
    rra                                           ; $4401: $1f
    rla                                           ; $4402: $17
    rra                                           ; $4403: $1f
    scf                                           ; $4404: $37
    ld a, $7f                                     ; $4405: $3e $7f
    ld e, [hl]                                    ; $4407: $5e
    cp $9f                                        ; $4408: $fe $9f
    db $ed                                        ; $440a: $ed
    sbc [hl]                                      ; $440b: $9e

jr_0e7_440c:
    rst $38                                       ; $440c: $ff
    add b                                         ; $440d: $80
    ccf                                           ; $440e: $3f
    ld b, b                                       ; $440f: $40
    rra                                           ; $4410: $1f
    jr nz, jr_0e7_4432                            ; $4411: $20 $1f

    db $10                                        ; $4413: $10
    ld [bc], a                                    ; $4414: $02
    db $fc                                        ; $4415: $fc
    sub h                                         ; $4416: $94
    cp h                                          ; $4417: $bc
    ld b, e                                       ; $4418: $43
    ld c, e                                       ; $4419: $4b
    or h                                          ; $441a: $b4
    rst $38                                       ; $441b: $ff
    nop                                           ; $441c: $00
    rst $38                                       ; $441d: $ff
    nop                                           ; $441e: $00
    rst $38                                       ; $441f: $ff
    nop                                           ; $4420: $00
    rst $38                                       ; $4421: $ff
    nop                                           ; $4422: $00
    rst $38                                       ; $4423: $ff

jr_0e7_4424:
    nop                                           ; $4424: $00
    rst $38                                       ; $4425: $ff
    nop                                           ; $4426: $00
    rst $38                                       ; $4427: $ff
    nop                                           ; $4428: $00
    ld bc, $0aff                                  ; $4429: $01 $ff $0a
    nop                                           ; $442c: $00
    ld [bc], a                                    ; $442d: $02
    jr nc, jr_0e7_43c0                            ; $442e: $30 $90

    inc [hl]                                      ; $4430: $34
    inc c                                         ; $4431: $0c

jr_0e7_4432:
    ld a, $02                                     ; $4432: $3e $02
    ccf                                           ; $4434: $3f
    ld bc, HeaderManufacturerCode                 ; $4435: $01 $3f $01
    ccf                                           ; $4438: $3f
    ld bc, $023c                                  ; $4439: $01 $3c $02
    jr c, @+$06                                   ; $443c: $38 $04

    jr c, @+$0a                                   ; $443e: $38 $08

    ld [bc], a                                    ; $4440: $02
    jr nz, jr_0e7_444f                            ; $4441: $20 $0c

    nop                                           ; $4443: $00
    add d                                         ; $4444: $82
    ld b, $07                                     ; $4445: $06 $07
    ld e, $00                                     ; $4447: $1e $00
    rst $38                                       ; $4449: $ff
    dec c                                         ; $444a: $0d
    inc b                                         ; $444b: $04
    nop                                           ; $444c: $00
    dec d                                         ; $444d: $15
    ei                                            ; $444e: $fb

jr_0e7_444f:
    dec b                                         ; $444f: $05
    di                                            ; $4450: $f3
    nop                                           ; $4451: $00
    ei                                            ; $4452: $fb
    ld [$0efc], sp                                ; $4453: $08 $fc $0e
    inc bc                                        ; $4456: $03
    nop                                           ; $4457: $00
    ld [bc], a                                    ; $4458: $02
    ld h, b                                       ; $4459: $60
    sbc [hl]                                      ; $445a: $9e
    sub b                                         ; $445b: $90
    ldh a, [$d0]                                  ; $445c: $f0 $d0
    ldh a, [$d0]                                  ; $445e: $f0 $d0
    ldh a, [$d0]                                  ; $4460: $f0 $d0
    ldh a, [$d0]                                  ; $4462: $f0 $d0
    ldh a, [$d0]                                  ; $4464: $f0 $d0
    ldh a, [$d0]                                  ; $4466: $f0 $d0
    ldh a, [$d0]                                  ; $4468: $f0 $d0
    ldh a, [$dc]                                  ; $446a: $f0 $dc
    rst $38                                       ; $446c: $ff
    rst $10                                       ; $446d: $d7
    ld hl, sp-$06                                 ; $446e: $f8 $fa
    push af                                       ; $4470: $f5
    rst $30                                       ; $4471: $f7
    ld hl, sp-$01                                 ; $4472: $f8 $ff
    ldh a, [$6f]                                  ; $4474: $f0 $6f
    ldh a, [$3f]                                  ; $4476: $f0 $3f
    ld b, b                                       ; $4478: $40
    inc bc                                        ; $4479: $03
    db $fc                                        ; $447a: $fc
    sub e                                         ; $447b: $93
    inc bc                                        ; $447c: $03
    sbc a                                         ; $447d: $9f
    ld h, b                                       ; $447e: $60
    ld a, a                                       ; $447f: $7f
    add b                                         ; $4480: $80
    rst $38                                       ; $4481: $ff
    nop                                           ; $4482: $00
    rst $38                                       ; $4483: $ff
    nop                                           ; $4484: $00
    rst $38                                       ; $4485: $ff
    nop                                           ; $4486: $00
    rst $38                                       ; $4487: $ff
    nop                                           ; $4488: $00
    rst $38                                       ; $4489: $ff
    nop                                           ; $448a: $00
    rst $38                                       ; $448b: $ff

jr_0e7_448c:
    nop                                           ; $448c: $00
    ld bc, $0aff                                  ; $448d: $01 $ff $0a
    nop                                           ; $4490: $00
    ld [bc], a                                    ; $4491: $02
    jr nc, jr_0e7_4424                            ; $4492: $30 $90

    inc [hl]                                      ; $4494: $34
    inc c                                         ; $4495: $0c
    ld a, $02                                     ; $4496: $3e $02
    ccf                                           ; $4498: $3f
    ld bc, HeaderManufacturerCode                 ; $4499: $01 $3f $01
    ccf                                           ; $449c: $3f
    ld bc, $023c                                  ; $449d: $01 $3c $02
    jr c, @+$06                                   ; $44a0: $38 $04

    jr c, jr_0e7_44ac                             ; $44a2: $38 $08

    ld [bc], a                                    ; $44a4: $02
    jr nz, jr_0e7_44b3                            ; $44a5: $20 $0c

    nop                                           ; $44a7: $00
    add [hl]                                      ; $44a8: $86
    rra                                           ; $44a9: $1f
    jr nz, jr_0e7_44cb                            ; $44aa: $20 $1f

jr_0e7_44ac:
    db $10                                        ; $44ac: $10
    ld b, $07                                     ; $44ad: $06 $07
    ld a, [de]                                    ; $44af: $1a
    nop                                           ; $44b0: $00
    rst $38                                       ; $44b1: $ff
    dec bc                                        ; $44b2: $0b

jr_0e7_44b3:
    inc bc                                        ; $44b3: $03
    nop                                           ; $44b4: $00
    dec d                                         ; $44b5: $15
    ei                                            ; $44b6: $fb
    dec b                                         ; $44b7: $05
    or $00                                        ; $44b8: $f6 $00
    or $08                                        ; $44ba: $f6 $08
    or $0e                                        ; $44bc: $f6 $0e
    ld [bc], a                                    ; $44be: $02
    jr jr_0e7_44c3                                ; $44bf: $18 $02

    inc a                                         ; $44c1: $3c
    sbc h                                         ; $44c2: $9c

jr_0e7_44c3:
    inc [hl]                                      ; $44c3: $34
    inc a                                         ; $44c4: $3c
    inc [hl]                                      ; $44c5: $34
    inc a                                         ; $44c6: $3c
    inc [hl]                                      ; $44c7: $34
    inc a                                         ; $44c8: $3c
    inc [hl]                                      ; $44c9: $34
    inc a                                         ; $44ca: $3c

jr_0e7_44cb:
    ld [hl], $3f                                  ; $44cb: $36 $3f
    inc sp                                        ; $44cd: $33
    ld a, $7b                                     ; $44ce: $3e $7b
    ld a, [hl]                                    ; $44d0: $7e
    db $db                                        ; $44d1: $db
    cp [hl]                                       ; $44d2: $be
    cp e                                          ; $44d3: $bb
    sbc $db                                       ; $44d4: $de $db
    cp [hl]                                       ; $44d6: $be
    ccf                                           ; $44d7: $3f
    ld e, [hl]                                    ; $44d8: $5e
    rra                                           ; $44d9: $1f
    ld a, $1d                                     ; $44da: $3e $1d
    ld e, $06                                     ; $44dc: $1e $06
    rlca                                          ; $44de: $07
    ld a, [bc]                                    ; $44df: $0a
    nop                                           ; $44e0: $00
    inc bc                                        ; $44e1: $03
    db $fc                                        ; $44e2: $fc
    sub e                                         ; $44e3: $93
    inc bc                                        ; $44e4: $03
    rst $38                                       ; $44e5: $ff
    nop                                           ; $44e6: $00
    rst $38                                       ; $44e7: $ff
    nop                                           ; $44e8: $00
    rst $38                                       ; $44e9: $ff

jr_0e7_44ea:
    nop                                           ; $44ea: $00
    rst $38                                       ; $44eb: $ff
    nop                                           ; $44ec: $00
    rst $38                                       ; $44ed: $ff
    nop                                           ; $44ee: $00
    rst $38                                       ; $44ef: $ff
    nop                                           ; $44f0: $00
    rst $38                                       ; $44f1: $ff
    nop                                           ; $44f2: $00
    rst $38                                       ; $44f3: $ff
    nop                                           ; $44f4: $00
    ld bc, $0cff                                  ; $44f5: $01 $ff $0c
    nop                                           ; $44f8: $00
    ld [bc], a                                    ; $44f9: $02
    jr nc, jr_0e7_448c                            ; $44fa: $30 $90

    inc [hl]                                      ; $44fc: $34
    inc c                                         ; $44fd: $0c
    ld a, $02                                     ; $44fe: $3e $02
    ccf                                           ; $4500: $3f
    ld bc, HeaderManufacturerCode                 ; $4501: $01 $3f $01
    ccf                                           ; $4504: $3f
    ld bc, $023c                                  ; $4505: $01 $3c $02
    jr c, @+$06                                   ; $4508: $38 $04

    jr c, jr_0e7_4514                             ; $450a: $38 $08

    ld [bc], a                                    ; $450c: $02
    jr nz, @+$01                                  ; $450d: $20 $ff

    dec bc                                        ; $450f: $0b
    inc bc                                        ; $4510: $03
    nop                                           ; $4511: $00
    dec d                                         ; $4512: $15
    ei                                            ; $4513: $fb

jr_0e7_4514:
    dec b                                         ; $4514: $05
    rst $30                                       ; $4515: $f7
    nop                                           ; $4516: $00
    rst $30                                       ; $4517: $f7
    ld [$0ef7], sp                                ; $4518: $08 $f7 $0e
    ld [bc], a                                    ; $451b: $02
    nop                                           ; $451c: $00
    ld [$9401], sp                                ; $451d: $08 $01 $94
    dec c                                         ; $4520: $0d
    rrca                                          ; $4521: $0f
    cpl                                           ; $4522: $2f
    jr nc, jr_0e7_45a4                            ; $4523: $30 $7f

    ld b, b                                       ; $4525: $40
    rst $38                                       ; $4526: $ff
    add b                                         ; $4527: $80
    rst $38                                       ; $4528: $ff
    add b                                         ; $4529: $80
    rst $38                                       ; $452a: $ff
    add b                                         ; $452b: $80
    scf                                           ; $452c: $37
    ld c, b                                       ; $452d: $48
    jr jr_0e7_4557                                ; $452e: $18 $27

    ld d, $19                                     ; $4530: $16 $19
    ld b, $07                                     ; $4532: $06 $07
    ld [bc], a                                    ; $4534: $02
    nop                                           ; $4535: $00
    ld [bc], a                                    ; $4536: $02
    ret nz                                        ; $4537: $c0

    sbc h                                         ; $4538: $9c
    and b                                         ; $4539: $a0
    ldh [$a0], a                                  ; $453a: $e0 $a0
    ldh [$b0], a                                  ; $453c: $e0 $b0
    ldh a, [$9c]                                  ; $453e: $f0 $9c
    db $fc                                        ; $4540: $fc
    call c, $dff3                                 ; $4541: $dc $f3 $df
    ldh a, [$df]                                  ; $4544: $f0 $df
    ldh a, [$df]                                  ; $4546: $f0 $df

jr_0e7_4548:
    ld hl, sp-$31                                 ; $4548: $f8 $cf
    ld hl, sp-$11                                 ; $454a: $f8 $ef
    ld hl, sp-$11                                 ; $454c: $f8 $ef
    ld a, b                                       ; $454e: $78
    ld l, a                                       ; $454f: $6f
    ld hl, sp-$01                                 ; $4550: $f8 $ff
    ld a, b                                       ; $4552: $78
    add hl, sp                                    ; $4553: $39
    rst $38                                       ; $4554: $ff
    inc c                                         ; $4555: $0c
    nop                                           ; $4556: $00

jr_0e7_4557:
    ld [bc], a                                    ; $4557: $02
    jr nc, jr_0e7_44ea                            ; $4558: $30 $90

    inc [hl]                                      ; $455a: $34
    inc c                                         ; $455b: $0c
    ld a, $02                                     ; $455c: $3e $02
    ccf                                           ; $455e: $3f
    ld bc, HeaderManufacturerCode                 ; $455f: $01 $3f $01
    ccf                                           ; $4562: $3f
    ld bc, $023c                                  ; $4563: $01 $3c $02
    jr c, @+$06                                   ; $4566: $38 $04

    jr c, jr_0e7_4572                             ; $4568: $38 $08

    ld [bc], a                                    ; $456a: $02
    jr nz, jr_0e7_456f                            ; $456b: $20 $02

    nop                                           ; $456d: $00
    rst $38                                       ; $456e: $ff

jr_0e7_456f:
    dec bc                                        ; $456f: $0b
    inc bc                                        ; $4570: $03
    nop                                           ; $4571: $00

jr_0e7_4572:
    dec d                                         ; $4572: $15
    ei                                            ; $4573: $fb
    dec b                                         ; $4574: $05
    or $00                                        ; $4575: $f6 $00
    or $08                                        ; $4577: $f6 $08
    or $0e                                        ; $4579: $f6 $0e
    inc c                                         ; $457b: $0c
    nop                                           ; $457c: $00
    sub h                                         ; $457d: $94
    inc c                                         ; $457e: $0c
    rrca                                          ; $457f: $0f
    cpl                                           ; $4580: $2f
    jr nc, @+$81                                  ; $4581: $30 $7f

    ld b, b                                       ; $4583: $40
    rst $38                                       ; $4584: $ff
    add b                                         ; $4585: $80
    rst $38                                       ; $4586: $ff
    add b                                         ; $4587: $80
    rst $38                                       ; $4588: $ff
    add b                                         ; $4589: $80
    ccf                                           ; $458a: $3f
    ld b, b                                       ; $458b: $40
    ld e, $21                                     ; $458c: $1e $21
    rra                                           ; $458e: $1f
    db $10                                        ; $458f: $10
    ld b, $07                                     ; $4590: $06 $07
    ld [bc], a                                    ; $4592: $02
    inc bc                                        ; $4593: $03
    sbc [hl]                                      ; $4594: $9e
    ld b, $07                                     ; $4595: $06 $07
    ld b, $07                                     ; $4597: $06 $07
    ld b, $07                                     ; $4599: $06 $07
    ld b, $07                                     ; $459b: $06 $07
    cp $ff                                        ; $459d: $fe $ff
    cp $07                                        ; $459f: $fe $07
    cp $07                                        ; $45a1: $fe $07
    rst $38                                       ; $45a3: $ff

jr_0e7_45a4:
    rlca                                          ; $45a4: $07
    rst $38                                       ; $45a5: $ff
    inc bc                                        ; $45a6: $03
    rst $38                                       ; $45a7: $ff
    inc bc                                        ; $45a8: $03
    rst $38                                       ; $45a9: $ff
    inc bc                                        ; $45aa: $03
    rst $38                                       ; $45ab: $ff
    inc bc                                        ; $45ac: $03
    add e                                         ; $45ad: $83
    ld a, a                                       ; $45ae: $7f
    db $fd                                        ; $45af: $fd
    inc bc                                        ; $45b0: $03
    ld bc, $02ff                                  ; $45b1: $01 $ff $02
    nop                                           ; $45b4: $00
    ld a, [bc]                                    ; $45b5: $0a
    jr nz, jr_0e7_45ba                            ; $45b6: $20 $02

    jr nc, jr_0e7_4548                            ; $45b8: $30 $8e

jr_0e7_45ba:
    inc d                                         ; $45ba: $14
    inc a                                         ; $45bb: $3c
    ld e, $32                                     ; $45bc: $1e $32
    rra                                           ; $45be: $1f
    ld sp, $311f                                  ; $45bf: $31 $1f $31
    ccf                                           ; $45c2: $3f
    ld sp, $323c                                  ; $45c3: $31 $3c $32
    jr c, jr_0e7_45fc                             ; $45c6: $38 $34

    ld [bc], a                                    ; $45c8: $02
    jr c, jr_0e7_45cd                             ; $45c9: $38 $02

    jr nz, @+$01                                  ; $45cb: $20 $ff

jr_0e7_45cd:
    dec c                                         ; $45cd: $0d
    inc b                                         ; $45ce: $04
    nop                                           ; $45cf: $00
    rrca                                          ; $45d0: $0f
    db $fd                                        ; $45d1: $fd
    inc bc                                        ; $45d2: $03
    add sp, $0a                                   ; $45d3: $e8 $0a
    db $eb                                        ; $45d5: $eb
    dec bc                                        ; $45d6: $0b
    ld hl, sp+$00                                 ; $45d7: $f8 $00
    ld hl, sp+$08                                 ; $45d9: $f8 $08
    add c                                         ; $45db: $81
    ld bc, $0003                                  ; $45dc: $01 $03 $00
    add c                                         ; $45df: $81
    ld bc, $0003                                  ; $45e0: $01 $03 $00
    sub c                                         ; $45e3: $91
    ld bc, $0200                                  ; $45e4: $01 $00 $02
    nop                                           ; $45e7: $00
    dec b                                         ; $45e8: $05
    nop                                           ; $45e9: $00
    ld a, [bc]                                    ; $45ea: $0a
    nop                                           ; $45eb: $00
    inc d                                         ; $45ec: $14
    nop                                           ; $45ed: $00
    ld [$1100], sp                                ; $45ee: $08 $00 $11
    nop                                           ; $45f1: $00
    ld a, [hl+]                                   ; $45f2: $2a
    nop                                           ; $45f3: $00
    ld de, $0003                                  ; $45f4: $11 $03 $00
    add l                                         ; $45f7: $85
    stop                                          ; $45f8: $10 $00
    and b                                         ; $45fa: $a0
    nop                                           ; $45fb: $00

jr_0e7_45fc:
    ld bc, $0003                                  ; $45fc: $01 $03 $00
    add c                                         ; $45ff: $81
    ld bc, $0015                                  ; $4600: $01 $15 $00
    add l                                         ; $4603: $85
    and b                                         ; $4604: $a0
    nop                                           ; $4605: $00
    ld b, b                                       ; $4606: $40
    nop                                           ; $4607: $00
    add b                                         ; $4608: $80
    dec bc                                        ; $4609: $0b
    nop                                           ; $460a: $00
    adc [hl]                                      ; $460b: $8e
    inc c                                         ; $460c: $0c
    rrca                                          ; $460d: $0f
    jr nz, jr_0e7_464f                            ; $460e: $20 $3f

    dec b                                         ; $4610: $05
    ld a, d                                       ; $4611: $7a
    adc d                                         ; $4612: $8a

jr_0e7_4613:
    push af                                       ; $4613: $f5
    ld b, l                                       ; $4614: $45
    ld a, d                                       ; $4615: $7a
    jr nz, jr_0e7_4657                            ; $4616: $20 $3f

    ld b, $07                                     ; $4618: $06 $07
    ld a, [bc]                                    ; $461a: $0a
    nop                                           ; $461b: $00
    add c                                         ; $461c: $81
    jr nz, jr_0e7_4626                            ; $461d: $20 $07

    nop                                           ; $461f: $00
    adc [hl]                                      ; $4620: $8e
    jr nc, jr_0e7_4613                            ; $4621: $30 $f0

    inc b                                         ; $4623: $04
    db $fc                                        ; $4624: $fc
    ld d, b                                       ; $4625: $50

jr_0e7_4626:
    xor [hl]                                      ; $4626: $ae
    xor c                                         ; $4627: $a9
    ld d, a                                       ; $4628: $57
    ld b, d                                       ; $4629: $42
    cp [hl]                                       ; $462a: $be
    inc b                                         ; $462b: $04
    db $fc                                        ; $462c: $fc
    ld h, b                                       ; $462d: $60
    ldh [$08], a                                  ; $462e: $e0 $08
    nop                                           ; $4630: $00
    rst $38                                       ; $4631: $ff
    dec bc                                        ; $4632: $0b
    inc bc                                        ; $4633: $03
    nop                                           ; $4634: $00
    rrca                                          ; $4635: $0f
    db $fd                                        ; $4636: $fd
    inc bc                                        ; $4637: $03
    rst $20                                       ; $4638: $e7
    dec bc                                        ; $4639: $0b
    rst $30                                       ; $463a: $f7
    nop                                           ; $463b: $00
    rst $30                                       ; $463c: $f7
    ld [$0281], sp                                ; $463d: $08 $81 $02
    rlca                                          ; $4640: $07
    nop                                           ; $4641: $00
    adc a                                         ; $4642: $8f
    ld [bc], a                                    ; $4643: $02
    nop                                           ; $4644: $00
    dec b                                         ; $4645: $05
    nop                                           ; $4646: $00
    ld a, [bc]                                    ; $4647: $0a
    nop                                           ; $4648: $00
    inc b                                         ; $4649: $04
    nop                                           ; $464a: $00
    ld [$1000], sp                                ; $464b: $08 $00 $10
    nop                                           ; $464e: $00

jr_0e7_464f:
    ld [$1000], sp                                ; $464f: $08 $00 $10
    inc bc                                        ; $4652: $03
    nop                                           ; $4653: $00
    add e                                         ; $4654: $83
    stop                                          ; $4655: $10 $00

jr_0e7_4657:
    and b                                         ; $4657: $a0
    rrca                                          ; $4658: $0f
    nop                                           ; $4659: $00
    adc [hl]                                      ; $465a: $8e
    ld [$010f], sp                                ; $465b: $08 $0f $01
    ld a, $07                                     ; $465e: $3e $07
    ld a, b                                       ; $4660: $78
    xor a                                         ; $4661: $af

jr_0e7_4662:
    ret nc                                        ; $4662: $d0

    rlca                                          ; $4663: $07
    ld a, b                                       ; $4664: $78
    jr nz, jr_0e7_46a6                            ; $4665: $20 $3f

    inc b                                         ; $4667: $04
    rlca                                          ; $4668: $07
    ld b, $00                                     ; $4669: $06 $00
    add l                                         ; $466b: $85
    inc d                                         ; $466c: $14
    nop                                           ; $466d: $00
    jr z, jr_0e7_4670                             ; $466e: $28 $00

jr_0e7_4670:
    db $10                                        ; $4670: $10
    rlca                                          ; $4671: $07
    nop                                           ; $4672: $00
    adc [hl]                                      ; $4673: $8e
    db $10                                        ; $4674: $10
    ldh a, [$80]                                  ; $4675: $f0 $80
    ld a, h                                       ; $4677: $7c
    ldh [rNR34], a                                ; $4678: $e0 $1e
    push af                                       ; $467a: $f5
    dec bc                                        ; $467b: $0b
    ret nz                                        ; $467c: $c0

    ld a, $04                                     ; $467d: $3e $04
    db $fc                                        ; $467f: $fc
    jr nz, jr_0e7_4662                            ; $4680: $20 $e0

    ld b, $00                                     ; $4682: $06 $00
    rst $38                                       ; $4684: $ff
    dec bc                                        ; $4685: $0b
    inc bc                                        ; $4686: $03
    nop                                           ; $4687: $00
    rrca                                          ; $4688: $0f
    db $fd                                        ; $4689: $fd
    inc bc                                        ; $468a: $03
    ld [$fa0a], a                                 ; $468b: $ea $0a $fa
    nop                                           ; $468e: $00
    ld a, [$8708]                                 ; $468f: $fa $08 $87
    ld bc, $0200                                  ; $4692: $01 $00 $02
    nop                                           ; $4695: $00
    ld bc, $0200                                  ; $4696: $01 $00 $02
    inc bc                                        ; $4699: $03
    nop                                           ; $469a: $00
    add e                                         ; $469b: $83
    ld [bc], a                                    ; $469c: $02
    nop                                           ; $469d: $00
    inc b                                         ; $469e: $04
    rlca                                          ; $469f: $07
    nop                                           ; $46a0: $00
    adc c                                         ; $46a1: $89
    inc b                                         ; $46a2: $04
    nop                                           ; $46a3: $00
    jr nz, jr_0e7_46a6                            ; $46a4: $20 $00

jr_0e7_46a6:
    stop                                          ; $46a6: $10 $00
    jr nz, jr_0e7_46aa                            ; $46a8: $20 $00

jr_0e7_46aa:
    ld d, b                                       ; $46aa: $50
    add hl, bc                                    ; $46ab: $09
    nop                                           ; $46ac: $00
    adc [hl]                                      ; $46ad: $8e
    jr jr_0e7_46cf                                ; $46ae: $18 $1f

    inc bc                                        ; $46b0: $03
    inc a                                         ; $46b1: $3c
    rla                                           ; $46b2: $17
    ld l, b                                       ; $46b3: $68
    xor a                                         ; $46b4: $af
    ret nc                                        ; $46b5: $d0

    rlca                                          ; $46b6: $07
    ld a, b                                       ; $46b7: $78
    jr nz, jr_0e7_46f9                            ; $46b8: $20 $3f

    nop                                           ; $46ba: $00
    rlca                                          ; $46bb: $07
    ld [de], a                                    ; $46bc: $12
    nop                                           ; $46bd: $00
    adc [hl]                                      ; $46be: $8e
    jr @-$06                                      ; $46bf: $18 $f8

    ret nz                                        ; $46c1: $c0

    inc a                                         ; $46c2: $3c
    add sp, $16                                   ; $46c3: $e8 $16
    push af                                       ; $46c5: $f5
    dec bc                                        ; $46c6: $0b
    ldh [rNR34], a                                ; $46c7: $e0 $1e
    inc b                                         ; $46c9: $04
    db $fc                                        ; $46ca: $fc
    nop                                           ; $46cb: $00
    ldh [$0c], a                                  ; $46cc: $e0 $0c
    nop                                           ; $46ce: $00

jr_0e7_46cf:
    rst $38                                       ; $46cf: $ff
    add hl, bc                                    ; $46d0: $09
    ld [bc], a                                    ; $46d1: $02
    nop                                           ; $46d2: $00
    rrca                                          ; $46d3: $0f
    db $fd                                        ; $46d4: $fd
    inc bc                                        ; $46d5: $03
    ld hl, sp+$00                                 ; $46d6: $f8 $00
    ld hl, sp+$08                                 ; $46d8: $f8 $08
    sub [hl]                                      ; $46da: $96
    dec bc                                        ; $46db: $0b
    inc c                                         ; $46dc: $0c
    cpl                                           ; $46dd: $2f
    jr nc, jr_0e7_473f                            ; $46de: $30 $5f

    ld h, b                                       ; $46e0: $60
    cpl                                           ; $46e1: $2f
    ld d, b                                       ; $46e2: $50
    push de                                       ; $46e3: $d5
    xor d                                         ; $46e4: $aa
    ld a, [hl+]                                   ; $46e5: $2a
    push de                                       ; $46e6: $d5
    ld d, l                                       ; $46e7: $55
    xor d                                         ; $46e8: $aa
    ld a, [bc]                                    ; $46e9: $0a
    push af                                       ; $46ea: $f5
    inc b                                         ; $46eb: $04
    ei                                            ; $46ec: $fb

jr_0e7_46ed:
    ld b, b                                       ; $46ed: $40
    ld a, a                                       ; $46ee: $7f
    jr nc, jr_0e7_4730                            ; $46ef: $30 $3f

    ld [bc], a                                    ; $46f1: $02
    rlca                                          ; $46f2: $07
    ld [$9600], sp                                ; $46f3: $08 $00 $96
    ret nc                                        ; $46f6: $d0

    jr nc, jr_0e7_46ed                            ; $46f7: $30 $f4

jr_0e7_46f9:
    inc c                                         ; $46f9: $0c
    ld a, [$fc06]                                 ; $46fa: $fa $06 $fc
    ld [bc], a                                    ; $46fd: $02
    ld d, l                                       ; $46fe: $55
    xor e                                         ; $46ff: $ab
    xor d                                         ; $4700: $aa
    ld d, l                                       ; $4701: $55
    ld d, h                                       ; $4702: $54
    xor e                                         ; $4703: $ab
    xor b                                         ; $4704: $a8
    ld d, a                                       ; $4705: $57
    ld b, b                                       ; $4706: $40
    cp a                                          ; $4707: $bf
    ld [bc], a                                    ; $4708: $02
    cp $0c                                        ; $4709: $fe $0c
    db $fc                                        ; $470b: $fc
    ld [bc], a                                    ; $470c: $02
    ldh [$08], a                                  ; $470d: $e0 $08
    nop                                           ; $470f: $00
    rst $38                                       ; $4710: $ff
    add hl, bc                                    ; $4711: $09
    ld [bc], a                                    ; $4712: $02
    nop                                           ; $4713: $00
    rrca                                          ; $4714: $0f
    db $fd                                        ; $4715: $fd
    inc bc                                        ; $4716: $03
    push af                                       ; $4717: $f5
    nop                                           ; $4718: $00
    push af                                       ; $4719: $f5
    ld [$039c], sp                                ; $471a: $08 $9c $03
    inc b                                         ; $471d: $04
    ld [$1f17], sp                                ; $471e: $08 $17 $1f
    jr nz, jr_0e7_4792                            ; $4721: $20 $6f

    ld d, b                                       ; $4723: $50
    dec d                                         ; $4724: $15
    ld l, d                                       ; $4725: $6a
    ld a, [hl+]                                   ; $4726: $2a
    ld d, l                                       ; $4727: $55
    dec d                                         ; $4728: $15
    ld l, d                                       ; $4729: $6a
    ld [bc], a                                    ; $472a: $02
    ld a, l                                       ; $472b: $7d
    ld b, b                                       ; $472c: $40
    ld a, a                                       ; $472d: $7f
    ld b, b                                       ; $472e: $40
    ld a, a                                       ; $472f: $7f

jr_0e7_4730:
    ld d, b                                       ; $4730: $50
    ld a, a                                       ; $4731: $7f
    dec b                                         ; $4732: $05
    rst $38                                       ; $4733: $ff
    ld h, b                                       ; $4734: $60
    ld a, a                                       ; $4735: $7f
    jr nc, jr_0e7_4777                            ; $4736: $30 $3f

    ld [bc], a                                    ; $4738: $02
    rlca                                          ; $4739: $07
    ld [bc], a                                    ; $473a: $02
    nop                                           ; $473b: $00
    sbc h                                         ; $473c: $9c
    ld b, b                                       ; $473d: $40
    and b                                         ; $473e: $a0

jr_0e7_473f:
    db $10                                        ; $473f: $10
    add sp, -$08                                  ; $4740: $e8 $f8
    inc b                                         ; $4742: $04
    ld [$5416], a                                 ; $4743: $ea $16 $54
    xor d                                         ; $4746: $aa
    xor b                                         ; $4747: $a8
    ld d, [hl]                                    ; $4748: $56
    ld d, b                                       ; $4749: $50
    xor [hl]                                      ; $474a: $ae
    add b                                         ; $474b: $80
    ld a, [hl]                                    ; $474c: $7e
    ld [bc], a                                    ; $474d: $02
    cp $02                                        ; $474e: $fe $02
    cp $12                                        ; $4750: $fe $12
    cp $40                                        ; $4752: $fe $40
    rst $38                                       ; $4754: $ff
    ld [bc], a                                    ; $4755: $02
    cp $0c                                        ; $4756: $fe $0c
    db $fc                                        ; $4758: $fc
    ld [bc], a                                    ; $4759: $02
    ldh [rSC], a                                  ; $475a: $e0 $02
    nop                                           ; $475c: $00
    rst $38                                       ; $475d: $ff
    add hl, bc                                    ; $475e: $09
    ld [bc], a                                    ; $475f: $02
    nop                                           ; $4760: $00
    rrca                                          ; $4761: $0f
    db $fd                                        ; $4762: $fd
    inc bc                                        ; $4763: $03
    db $f4                                        ; $4764: $f4
    nop                                           ; $4765: $00
    db $f4                                        ; $4766: $f4
    ld [$059e], sp                                ; $4767: $08 $9e $05
    ld a, [bc]                                    ; $476a: $0a
    ld [de], a                                    ; $476b: $12
    dec l                                         ; $476c: $2d
    jr c, @+$49                                   ; $476d: $38 $47

    ld e, a                                       ; $476f: $5f
    jr nz, jr_0e7_479d                            ; $4770: $20 $2b

    call nc, $ea15                                ; $4772: $d4 $15 $ea
    ld a, [bc]                                    ; $4775: $0a
    push af                                       ; $4776: $f5

jr_0e7_4777:
    nop                                           ; $4777: $00
    rst $38                                       ; $4778: $ff
    nop                                           ; $4779: $00
    ld a, a                                       ; $477a: $7f
    ld b, b                                       ; $477b: $40
    ld a, a                                       ; $477c: $7f
    jr nc, jr_0e7_47be                            ; $477d: $30 $3f

    ld l, e                                       ; $477f: $6b
    ld a, a                                       ; $4780: $7f
    nop                                           ; $4781: $00
    ld a, a                                       ; $4782: $7f
    ld h, b                                       ; $4783: $60
    ld a, a                                       ; $4784: $7f
    jr c, jr_0e7_47c6                             ; $4785: $38 $3f

    ld [bc], a                                    ; $4787: $02
    rlca                                          ; $4788: $07
    sbc [hl]                                      ; $4789: $9e
    nop                                           ; $478a: $00
    ldh a, [$a8]                                  ; $478b: $f0 $a8
    ld d, h                                       ; $478d: $54
    inc e                                         ; $478e: $1c
    ld [c], a                                     ; $478f: $e2
    db $fc                                        ; $4790: $fc
    ld [bc], a                                    ; $4791: $02

jr_0e7_4792:
    add sp, $17                                   ; $4792: $e8 $17
    ld d, h                                       ; $4794: $54
    xor e                                         ; $4795: $ab
    and b                                         ; $4796: $a0
    ld e, a                                       ; $4797: $5f
    nop                                           ; $4798: $00
    rst $38                                       ; $4799: $ff
    nop                                           ; $479a: $00
    cp $02                                        ; $479b: $fe $02

jr_0e7_479d:
    cp $14                                        ; $479d: $fe $14
    db $fc                                        ; $479f: $fc
    add $fe                                       ; $47a0: $c6 $fe
    nop                                           ; $47a2: $00
    cp $06                                        ; $47a3: $fe $06
    cp $1c                                        ; $47a5: $fe $1c
    db $fc                                        ; $47a7: $fc
    ld [bc], a                                    ; $47a8: $02
    ldh [rIE], a                                  ; $47a9: $e0 $ff
    dec c                                         ; $47ab: $0d
    inc b                                         ; $47ac: $04
    nop                                           ; $47ad: $00
    rrca                                          ; $47ae: $0f
    db $fd                                        ; $47af: $fd
    inc bc                                        ; $47b0: $03
    pop af                                        ; $47b1: $f1
    nop                                           ; $47b2: $00
    pop af                                        ; $47b3: $f1
    ld [$0101], sp                                ; $47b4: $08 $01 $01
    ld bc, $8107                                  ; $47b7: $01 $07 $81
    nop                                           ; $47ba: $00
    ld [bc], a                                    ; $47bb: $02
    inc b                                         ; $47bc: $04
    sbc c                                         ; $47bd: $99

jr_0e7_47be:
    ld a, [bc]                                    ; $47be: $0a
    ld [bc], a                                    ; $47bf: $02
    daa                                           ; $47c0: $27
    dec l                                         ; $47c1: $2d
    rra                                           ; $47c2: $1f
    rla                                           ; $47c3: $17
    ld a, a                                       ; $47c4: $7f
    ld b, b                                       ; $47c5: $40

jr_0e7_47c6:
    ccf                                           ; $47c6: $3f
    ld h, b                                       ; $47c7: $60
    sbc a                                         ; $47c8: $9f
    ld a, e                                       ; $47c9: $7b
    add h                                         ; $47ca: $84
    dec hl                                        ; $47cb: $2b
    call nc, $ea15                                ; $47cc: $d4 $15 $ea
    ld [bc], a                                    ; $47cf: $02
    db $fd                                        ; $47d0: $fd
    nop                                           ; $47d1: $00
    rst $38                                       ; $47d2: $ff
    add b                                         ; $47d3: $80
    rst $38                                       ; $47d4: $ff
    ld [hl], h                                    ; $47d5: $74
    ld a, a                                       ; $47d6: $7f
    ld [bc], a                                    ; $47d7: $02
    ccf                                           ; $47d8: $3f
    add a                                         ; $47d9: $87
    ld h, b                                       ; $47da: $60
    ld a, a                                       ; $47db: $7f
    nop                                           ; $47dc: $00
    stop                                          ; $47dd: $10 $00
    db $10                                        ; $47df: $10
    ld [$5402], sp                                ; $47e0: $08 $02 $54
    sub l                                         ; $47e3: $95
    call z, $fe98                                 ; $47e4: $cc $98 $fe
    nop                                           ; $47e7: $00
    cp $06                                        ; $47e8: $fe $06
    ld sp, hl                                     ; $47ea: $f9
    cp h                                          ; $47eb: $bc
    ld b, e                                       ; $47ec: $43
    ld a, [hl+]                                   ; $47ed: $2a
    push de                                       ; $47ee: $d5
    ld d, h                                       ; $47ef: $54
    xor e                                         ; $47f0: $ab
    and b                                         ; $47f1: $a0
    ld e, a                                       ; $47f2: $5f
    nop                                           ; $47f3: $00
    rst $38                                       ; $47f4: $ff
    ld bc, $8eff                                  ; $47f5: $01 $ff $8e
    cp $02                                        ; $47f8: $fe $02
    db $fc                                        ; $47fa: $fc
    add [hl]                                      ; $47fb: $86
    ld b, $fe                                     ; $47fc: $06 $fe
    add b                                         ; $47fe: $80
    rst $38                                       ; $47ff: $ff
    ld a, b                                       ; $4800: $78
    ld a, a                                       ; $4801: $7f
    ld [bc], a                                    ; $4802: $02
    rrca                                          ; $4803: $0f
    ld a, [de]                                    ; $4804: $1a
    nop                                           ; $4805: $00
    add h                                         ; $4806: $84
    ld bc, $1e3f                                  ; $4807: $01 $3f $1e
    ld a, $02                                     ; $480a: $3e $02
    jr nc, jr_0e7_4828                            ; $480c: $30 $1a

    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    dec c                                         ; $4810: $0d
    inc b                                         ; $4811: $04
    nop                                           ; $4812: $00
    rrca                                          ; $4813: $0f
    db $fd                                        ; $4814: $fd
    inc bc                                        ; $4815: $03
    and $00                                       ; $4816: $e6 $00
    db $eb                                        ; $4818: $eb
    ld [$00f6], sp                                ; $4819: $08 $f6 $00
    or $08                                        ; $481c: $f6 $08
    add l                                         ; $481e: $85
    nop                                           ; $481f: $00
    ld [$0800], sp                                ; $4820: $08 $00 $08
    nop                                           ; $4823: $00
    ld [bc], a                                    ; $4824: $02
    ld [$0486], sp                                ; $4825: $08 $86 $04

jr_0e7_4828:
    ld [$0c04], sp                                ; $4828: $08 $04 $0c
    nop                                           ; $482b: $00
    ld [$0402], sp                                ; $482c: $08 $02 $04
    rrc b                                         ; $482f: $cb $08
    inc c                                         ; $4831: $0c
    ld [bc], a                                    ; $4832: $02
    inc b                                         ; $4833: $04
    ld a, [bc]                                    ; $4834: $0a
    inc c                                         ; $4835: $0c
    ld b, d                                       ; $4836: $42
    ld b, $48                                     ; $4837: $06 $48
    dec b                                         ; $4839: $05
    ld l, d                                       ; $483a: $6a
    ld b, $29                                     ; $483b: $06 $29
    dec h                                         ; $483d: $25
    ld a, [bc]                                    ; $483e: $0a
    and e                                         ; $483f: $a3
    sbc l                                         ; $4840: $9d
    nop                                           ; $4841: $00
    ld b, b                                       ; $4842: $40
    nop                                           ; $4843: $00
    ld [bc], a                                    ; $4844: $02
    nop                                           ; $4845: $00
    ld b, d                                       ; $4846: $42
    nop                                           ; $4847: $00
    ld b, $00                                     ; $4848: $06 $00
    ld b, $04                                     ; $484a: $06 $04
    ld d, d                                       ; $484c: $52
    nop                                           ; $484d: $00
    ld d, h                                       ; $484e: $54
    ld b, h                                       ; $484f: $44
    adc b                                         ; $4850: $88
    ld b, b                                       ; $4851: $40
    adc h                                         ; $4852: $8c
    ld b, h                                       ; $4853: $44
    adc b                                         ; $4854: $88
    dec b                                         ; $4855: $05
    ld sp, hl                                     ; $4856: $f9
    or d                                          ; $4857: $b2
    sbc $a6                                       ; $4858: $de $a6
    cp $d4                                        ; $485a: $fe $d4
    cp $ac                                        ; $485c: $fe $ac
    rst $38                                       ; $485e: $ff
    ret nz                                        ; $485f: $c0

    rst $38                                       ; $4860: $ff
    sbc $e9                                       ; $4861: $de $e9
    ld [hl], l                                    ; $4863: $75
    ld l, a                                       ; $4864: $6f
    daa                                           ; $4865: $27
    cp a                                          ; $4866: $bf
    dec l                                         ; $4867: $2d
    rst $38                                       ; $4868: $ff
    inc a                                         ; $4869: $3c
    rst $38                                       ; $486a: $ff
    ld c, b                                       ; $486b: $48
    cp a                                          ; $486c: $bf
    ld d, e                                       ; $486d: $53
    xor h                                         ; $486e: $ac
    rrca                                          ; $486f: $0f
    ldh a, [rP1]                                  ; $4870: $f0 $00
    rst $38                                       ; $4872: $ff
    ld b, b                                       ; $4873: $40
    ld a, a                                       ; $4874: $7f
    jr nc, @+$41                                  ; $4875: $30 $3f

    ld l, a                                       ; $4877: $6f
    ld a, a                                       ; $4878: $7f
    jr c, jr_0e7_48ba                             ; $4879: $38 $3f

    ld [bc], a                                    ; $487b: $02
    rlca                                          ; $487c: $07
    ld c, $00                                     ; $487d: $0e $00
    sub b                                         ; $487f: $90
    ld [bc], a                                    ; $4880: $02
    db $fd                                        ; $4881: $fd
    ld d, b                                       ; $4882: $50
    xor a                                         ; $4883: $af
    ldh [$1f], a                                  ; $4884: $e0 $1f
    nop                                           ; $4886: $00
    rst $38                                       ; $4887: $ff
    ld [bc], a                                    ; $4888: $02
    cp $0c                                        ; $4889: $fe $0c
    db $fc                                        ; $488b: $fc
    ld a, [$2cfe]                                 ; $488c: $fa $fe $2c
    db $fc                                        ; $488f: $fc
    ld [bc], a                                    ; $4890: $02
    ldh [rDIV], a                                 ; $4891: $e0 $04
    nop                                           ; $4893: $00
    rst $38                                       ; $4894: $ff
    dec c                                         ; $4895: $0d
    inc b                                         ; $4896: $04
    nop                                           ; $4897: $00
    rrca                                          ; $4898: $0f
    db $fd                                        ; $4899: $fd
    inc bc                                        ; $489a: $03
    push hl                                       ; $489b: $e5
    nop                                           ; $489c: $00
    add sp, $07                                   ; $489d: $e8 $07
    push af                                       ; $489f: $f5
    nop                                           ; $48a0: $00
    push af                                       ; $48a1: $f5
    ld [$0085], sp                                ; $48a2: $08 $85 $00
    ld [$0800], sp                                ; $48a5: $08 $00 $08
    nop                                           ; $48a8: $00
    ld [bc], a                                    ; $48a9: $02
    ld [$0002], sp                                ; $48aa: $08 $02 $00
    add h                                         ; $48ad: $84
    inc c                                         ; $48ae: $0c
    ld [$0804], sp                                ; $48af: $08 $04 $08
    ld [bc], a                                    ; $48b2: $02
    inc b                                         ; $48b3: $04
    rst $08                                       ; $48b4: $cf
    ld [$8804], sp                                ; $48b5: $08 $04 $88
    inc b                                         ; $48b8: $04
    adc b                                         ; $48b9: $88

jr_0e7_48ba:
    inc b                                         ; $48ba: $04
    ret z                                         ; $48bb: $c8

    nop                                           ; $48bc: $00
    ld b, h                                       ; $48bd: $44
    nop                                           ; $48be: $00
    ld d, h                                       ; $48bf: $54
    nop                                           ; $48c0: $00
    ld l, l                                       ; $48c1: $6d
    nop                                           ; $48c2: $00
    ld d, b                                       ; $48c3: $50
    db $10                                        ; $48c4: $10
    add hl, hl                                    ; $48c5: $29
    nop                                           ; $48c6: $00
    ld bc, $2100                                  ; $48c7: $01 $00 $21
    nop                                           ; $48ca: $00
    ld bc, $4100                                  ; $48cb: $01 $00 $41
    nop                                           ; $48ce: $00
    inc bc                                        ; $48cf: $03
    nop                                           ; $48d0: $00
    rrca                                          ; $48d1: $0f
    nop                                           ; $48d2: $00
    ld a, [bc]                                    ; $48d3: $0a
    nop                                           ; $48d4: $00
    ld h, d                                       ; $48d5: $62
    nop                                           ; $48d6: $00
    ld [hl-], a                                   ; $48d7: $32
    nop                                           ; $48d8: $00
    ld a, b                                       ; $48d9: $78
    nop                                           ; $48da: $00
    inc [hl]                                      ; $48db: $34
    nop                                           ; $48dc: $00
    ld l, d                                       ; $48dd: $6a
    ld b, b                                       ; $48de: $40
    jr z, jr_0e7_48e9                             ; $48df: $28 $08

    call z, Call_0e7_5c90                         ; $48e1: $cc $90 $5c
    ld [$1095], sp                                ; $48e4: $08 $95 $10

jr_0e7_48e7:
    ld l, $08                                     ; $48e7: $2e $08

jr_0e7_48e9:
    inc d                                         ; $48e9: $14
    ld a, [bc]                                    ; $48ea: $0a
    ld d, [hl]                                    ; $48eb: $56
    dec d                                         ; $48ec: $15
    dec sp                                        ; $48ed: $3b
    dec d                                         ; $48ee: $15
    cp d                                          ; $48ef: $ba
    ld [bc], a                                    ; $48f0: $02
    sbc a                                         ; $48f1: $9f
    dec h                                         ; $48f2: $25
    ld a, e                                       ; $48f3: $7b
    ld [hl], b                                    ; $48f4: $70
    rst $38                                       ; $48f5: $ff
    sbc d                                         ; $48f6: $9a
    ld a, a                                       ; $48f7: $7f
    rra                                           ; $48f8: $1f

jr_0e7_48f9:
    rst $38                                       ; $48f9: $ff
    ld b, h                                       ; $48fa: $44
    cp a                                          ; $48fb: $bf
    add b                                         ; $48fc: $80
    rst $38                                       ; $48fd: $ff
    dec bc                                        ; $48fe: $0b

jr_0e7_48ff:
    ld [hl], h                                    ; $48ff: $74
    jr nz, jr_0e7_4941                            ; $4900: $20 $3f

    inc b                                         ; $4902: $04
    rlca                                          ; $4903: $07
    ld [$9800], sp                                ; $4904: $08 $00 $98
    ld d, b                                       ; $4907: $50
    db $e4                                        ; $4908: $e4
    jr z, jr_0e7_48e7                             ; $4909: $28 $dc

    ldh a, [$59]                                  ; $490b: $f0 $59
    sub h                                         ; $490d: $94
    ld a, a                                       ; $490e: $7f
    ld c, $ff                                     ; $490f: $0e $ff
    ld e, $fd                                     ; $4911: $1e $fd
    db $ec                                        ; $4913: $ec
    rst $38                                       ; $4914: $ff
    ret nz                                        ; $4915: $c0

    rst $38                                       ; $4916: $ff
    dec b                                         ; $4917: $05
    ei                                            ; $4918: $fb
    jr nz, jr_0e7_48f9                            ; $4919: $20 $de

    inc b                                         ; $491b: $04
    db $fc                                        ; $491c: $fc
    jr nz, jr_0e7_48ff                            ; $491d: $20 $e0

    ld [bc], a                                    ; $491f: $02
    nop                                           ; $4920: $00
    rst $38                                       ; $4921: $ff
    dec c                                         ; $4922: $0d
    inc b                                         ; $4923: $04
    nop                                           ; $4924: $00
    rrca                                          ; $4925: $0f
    db $fd                                        ; $4926: $fd
    inc bc                                        ; $4927: $03
    and $00                                       ; $4928: $e6 $00
    jp hl                                         ; $492a: $e9


    rlca                                          ; $492b: $07
    or $00                                        ; $492c: $f6 $00
    or $08                                        ; $492e: $f6 $08
    add l                                         ; $4930: $85
    nop                                           ; $4931: $00
    ld [$0c00], sp                                ; $4932: $08 $00 $0c
    ld [$0402], sp                                ; $4935: $08 $02 $04
    sbc h                                         ; $4938: $9c
    add hl, bc                                    ; $4939: $09
    inc b                                         ; $493a: $04
    ld a, [bc]                                    ; $493b: $0a
    nop                                           ; $493c: $00
    dec b                                         ; $493d: $05
    nop                                           ; $493e: $00
    ld b, $00                                     ; $493f: $06 $00

jr_0e7_4941:
    inc b                                         ; $4941: $04
    nop                                           ; $4942: $00
    add h                                         ; $4943: $84
    nop                                           ; $4944: $00
    adc h                                         ; $4945: $8c
    nop                                           ; $4946: $00
    ld d, h                                       ; $4947: $54
    nop                                           ; $4948: $00
    add hl, bc                                    ; $4949: $09
    ld bc, $0012                                  ; $494a: $01 $12 $00
    ld b, l                                       ; $494d: $45
    nop                                           ; $494e: $00
    inc hl                                        ; $494f: $23
    nop                                           ; $4950: $00
    ld c, d                                       ; $4951: $4a
    nop                                           ; $4952: $00
    ld bc, $0202                                  ; $4953: $01 $02 $02
    nop                                           ; $4956: $00
    xor d                                         ; $4957: $aa
    ld [bc], a                                    ; $4958: $02
    nop                                           ; $4959: $00
    ld a, [hl+]                                   ; $495a: $2a
    nop                                           ; $495b: $00
    ld d, b                                       ; $495c: $50
    nop                                           ; $495d: $00
    jr z, jr_0e7_4980                             ; $495e: $28 $20

    ld d, b                                       ; $4960: $50
    nop                                           ; $4961: $00
    ld [hl+], a                                   ; $4962: $22
    nop                                           ; $4963: $00
    inc b                                         ; $4964: $04
    nop                                           ; $4965: $00
    ld b, d                                       ; $4966: $42
    nop                                           ; $4967: $00
    ld d, b                                       ; $4968: $50
    nop                                           ; $4969: $00
    jr z, jr_0e7_496c                             ; $496a: $28 $00

jr_0e7_496c:
    ld d, h                                       ; $496c: $54
    nop                                           ; $496d: $00
    xor b                                         ; $496e: $a8
    nop                                           ; $496f: $00
    ld d, h                                       ; $4970: $54
    nop                                           ; $4971: $00
    or d                                          ; $4972: $b2
    nop                                           ; $4973: $00
    inc d                                         ; $4974: $14
    nop                                           ; $4975: $00
    ld a, [bc]                                    ; $4976: $0a
    nop                                           ; $4977: $00
    ld b, h                                       ; $4978: $44
    nop                                           ; $4979: $00
    xor e                                         ; $497a: $ab
    rlca                                          ; $497b: $07
    ld d, b                                       ; $497c: $50
    inc bc                                        ; $497d: $03
    xor h                                         ; $497e: $ac
    dec b                                         ; $497f: $05

jr_0e7_4980:
    ld a, [bc]                                    ; $4980: $0a
    ld [bc], a                                    ; $4981: $02
    ld [bc], a                                    ; $4982: $02
    dec a                                         ; $4983: $3d
    adc e                                         ; $4984: $8b
    ld a, [hl]                                    ; $4985: $7e
    ld [hl], h                                    ; $4986: $74
    rst $38                                       ; $4987: $ff
    ld l, d                                       ; $4988: $6a
    rst $38                                       ; $4989: $ff
    ccf                                           ; $498a: $3f
    ld a, a                                       ; $498b: $7f
    inc c                                         ; $498c: $0c
    ccf                                           ; $498d: $3f
    nop                                           ; $498e: $00
    rlca                                          ; $498f: $07
    dec bc                                        ; $4990: $0b
    nop                                           ; $4991: $00
    sub l                                         ; $4992: $95
    ret nc                                        ; $4993: $d0

    nop                                           ; $4994: $00
    add sp, -$80                                  ; $4995: $e8 $80
    ld [hl], d                                    ; $4997: $72
    nop                                           ; $4998: $00
    db $f4                                        ; $4999: $f4
    add b                                         ; $499a: $80
    ld a, h                                       ; $499b: $7c
    inc a                                         ; $499c: $3c
    cp $2e                                        ; $499d: $fe $2e
    rst $38                                       ; $499f: $ff
    ld d, [hl]                                    ; $49a0: $56
    rst $38                                       ; $49a1: $ff
    db $fc                                        ; $49a2: $fc
    cp $f0                                        ; $49a3: $fe $f0
    db $fc                                        ; $49a5: $fc
    nop                                           ; $49a6: $00
    ldh [rDIV], a                                 ; $49a7: $e0 $04
    nop                                           ; $49a9: $00
    rst $38                                       ; $49aa: $ff
    dec c                                         ; $49ab: $0d
    inc b                                         ; $49ac: $04
    nop                                           ; $49ad: $00
    rrca                                          ; $49ae: $0f
    db $fd                                        ; $49af: $fd
    inc bc                                        ; $49b0: $03
    and $00                                       ; $49b1: $e6 $00
    add sp, $07                                   ; $49b3: $e8 $07
    or $00                                        ; $49b5: $f6 $00
    or $08                                        ; $49b7: $f6 $08
    add d                                         ; $49b9: $82
    nop                                           ; $49ba: $00
    inc b                                         ; $49bb: $04
    inc bc                                        ; $49bc: $03
    nop                                           ; $49bd: $00
    rst $10                                       ; $49be: $d7
    dec b                                         ; $49bf: $05
    inc b                                         ; $49c0: $04
    ld a, [bc]                                    ; $49c1: $0a
    inc b                                         ; $49c2: $04
    add hl, bc                                    ; $49c3: $09
    nop                                           ; $49c4: $00
    ld c, $00                                     ; $49c5: $0e $00
    ld c, h                                       ; $49c7: $4c
    ld [$0424], sp                                ; $49c8: $08 $24 $04
    ld [$4804], sp                                ; $49cb: $08 $04 $48
    nop                                           ; $49ce: $00
    and l                                         ; $49cf: $a5
    nop                                           ; $49d0: $00
    ld c, h                                       ; $49d1: $4c
    nop                                           ; $49d2: $00
    dec d                                         ; $49d3: $15
    nop                                           ; $49d4: $00
    ld a, [hl+]                                   ; $49d5: $2a
    nop                                           ; $49d6: $00
    ld d, l                                       ; $49d7: $55
    nop                                           ; $49d8: $00
    ld l, d                                       ; $49d9: $6a
    nop                                           ; $49da: $00
    jr nz, jr_0e7_49dd                            ; $49db: $20 $00

jr_0e7_49dd:
    ld b, d                                       ; $49dd: $42
    nop                                           ; $49de: $00
    ld [hl+], a                                   ; $49df: $22
    nop                                           ; $49e0: $00
    ld h, b                                       ; $49e1: $60
    nop                                           ; $49e2: $00
    ld [bc], a                                    ; $49e3: $02
    nop                                           ; $49e4: $00
    inc b                                         ; $49e5: $04
    nop                                           ; $49e6: $00
    ld c, $02                                     ; $49e7: $0e $02
    ld d, l                                       ; $49e9: $55
    nop                                           ; $49ea: $00
    ld a, [hl+]                                   ; $49eb: $2a
    nop                                           ; $49ec: $00
    ld b, c                                       ; $49ed: $41
    nop                                           ; $49ee: $00
    jr nz, jr_0e7_49f1                            ; $49ef: $20 $00

jr_0e7_49f1:
    ld h, b                                       ; $49f1: $60
    nop                                           ; $49f2: $00
    jr z, jr_0e7_49f5                             ; $49f3: $28 $00

jr_0e7_49f5:
    ld d, b                                       ; $49f5: $50
    nop                                           ; $49f6: $00
    xor b                                         ; $49f7: $a8
    nop                                           ; $49f8: $00
    call nc, Call_0e7_7400                        ; $49f9: $d4 $00 $74
    nop                                           ; $49fc: $00
    ld l, $00                                     ; $49fd: $2e $00
    dec d                                         ; $49ff: $15
    ld bc, $000e                                  ; $4a00: $01 $0e $00
    dec d                                         ; $4a03: $15
    nop                                           ; $4a04: $00
    dec bc                                        ; $4a05: $0b
    nop                                           ; $4a06: $00
    dec h                                         ; $4a07: $25
    nop                                           ; $4a08: $00
    ld e, a                                       ; $4a09: $5f
    ld bc, $033e                                  ; $4a0a: $01 $3e $03
    ld a, h                                       ; $4a0d: $7c
    add c                                         ; $4a0e: $81
    cp $48                                        ; $4a0f: $fe $48
    ld a, a                                       ; $4a11: $7f
    inc hl                                        ; $4a12: $23
    ccf                                           ; $4a13: $3f
    inc b                                         ; $4a14: $04
    rlca                                          ; $4a15: $07
    add hl, bc                                    ; $4a16: $09
    nop                                           ; $4a17: $00
    sub a                                         ; $4a18: $97
    ld d, h                                       ; $4a19: $54
    nop                                           ; $4a1a: $00
    xor b                                         ; $4a1b: $a8
    nop                                           ; $4a1c: $00
    call nc, $2880                                ; $4a1d: $d4 $80 $28
    nop                                           ; $4a20: $00
    ret nc                                        ; $4a21: $d0

    ld b, b                                       ; $4a22: $40
    ldh [$88], a                                  ; $4a23: $e0 $88
    ld a, b                                       ; $4a25: $78
    adc $3e                                       ; $4a26: $ce $3e
    add e                                         ; $4a28: $83
    ld a, a                                       ; $4a29: $7f
    ld [hl-], a                                   ; $4a2a: $32
    cp $c4                                        ; $4a2b: $fe $c4
    db $fc                                        ; $4a2d: $fc
    jr nz, @-$1e                                  ; $4a2e: $20 $e0

    inc b                                         ; $4a30: $04
    nop                                           ; $4a31: $00
    rst $38                                       ; $4a32: $ff
    dec c                                         ; $4a33: $0d
    inc b                                         ; $4a34: $04
    nop                                           ; $4a35: $00
    rrca                                          ; $4a36: $0f
    db $fd                                        ; $4a37: $fd
    inc bc                                        ; $4a38: $03
    and $01                                       ; $4a39: $e6 $01
    and $08                                       ; $4a3b: $e6 $08
    or $00                                        ; $4a3d: $f6 $00
    or $08                                        ; $4a3f: $f6 $08
    and [hl]                                      ; $4a41: $a6
    nop                                           ; $4a42: $00
    ld [bc], a                                    ; $4a43: $02
    nop                                           ; $4a44: $00
    dec c                                         ; $4a45: $0d
    nop                                           ; $4a46: $00
    ld a, [bc]                                    ; $4a47: $0a
    nop                                           ; $4a48: $00
    dec b                                         ; $4a49: $05
    nop                                           ; $4a4a: $00
    ld a, [bc]                                    ; $4a4b: $0a
    nop                                           ; $4a4c: $00
    ld b, h                                       ; $4a4d: $44
    nop                                           ; $4a4e: $00
    sbc d                                         ; $4a4f: $9a
    ld [$0855], sp                                ; $4a50: $08 $55 $08
    sub d                                         ; $4a53: $92
    nop                                           ; $4a54: $00
    dec d                                         ; $4a55: $15
    nop                                           ; $4a56: $00
    ld a, [hl+]                                   ; $4a57: $2a
    ld [$0415], sp                                ; $4a58: $08 $15 $04
    ld a, [hl+]                                   ; $4a5b: $2a
    nop                                           ; $4a5c: $00
    dec d                                         ; $4a5d: $15
    ld a, [de]                                    ; $4a5e: $1a
    jr nz, @+$0f                                  ; $4a5f: $20 $0d

    stop                                          ; $4a61: $10 $00
    ld b, b                                       ; $4a63: $40
    nop                                           ; $4a64: $00
    jr nz, jr_0e7_4a67                            ; $4a65: $20 $00

jr_0e7_4a67:
    ld b, b                                       ; $4a67: $40
    inc bc                                        ; $4a68: $03
    nop                                           ; $4a69: $00
    adc c                                         ; $4a6a: $89
    dec b                                         ; $4a6b: $05
    nop                                           ; $4a6c: $00
    ld c, $00                                     ; $4a6d: $0e $00
    dec b                                         ; $4a6f: $05
    nop                                           ; $4a70: $00
    ld [$4400], sp                                ; $4a71: $08 $00 $44
    dec b                                         ; $4a74: $05
    nop                                           ; $4a75: $00
    and l                                         ; $4a76: $a5
    jr nz, jr_0e7_4a79                            ; $4a77: $20 $00

jr_0e7_4a79:
    ld d, h                                       ; $4a79: $54
    nop                                           ; $4a7a: $00
    ld l, $48                                     ; $4a7b: $2e $48
    inc d                                         ; $4a7d: $14
    jr nz, @+$0c                                  ; $4a7e: $20 $0a

    dec b                                         ; $4a80: $05
    ld [de], a                                    ; $4a81: $12
    nop                                           ; $4a82: $00
    ld a, [hl+]                                   ; $4a83: $2a
    ld bc, $0244                                  ; $4a84: $01 $44 $02
    nop                                           ; $4a87: $00
    ld bc, $0004                                  ; $4a88: $01 $04 $00
    dec bc                                        ; $4a8b: $0b
    ld bc, $1014                                  ; $4a8c: $01 $14 $10
    rra                                           ; $4a8f: $1f
    ld b, e                                       ; $4a90: $43
    ld a, h                                       ; $4a91: $7c
    ld b, a                                       ; $4a92: $47
    ld a, b                                       ; $4a93: $78
    ret z                                         ; $4a94: $c8

    rst $38                                       ; $4a95: $ff
    ld b, e                                       ; $4a96: $43

jr_0e7_4a97:
    ld a, a                                       ; $4a97: $7f
    jr nc, jr_0e7_4ad9                            ; $4a98: $30 $3f

    ld b, $07                                     ; $4a9a: $06 $07
    inc b                                         ; $4a9c: $04
    nop                                           ; $4a9d: $00
    adc l                                         ; $4a9e: $8d
    ld b, b                                       ; $4a9f: $40
    dec d                                         ; $4aa0: $15
    and b                                         ; $4aa1: $a0
    ld a, [bc]                                    ; $4aa2: $0a
    ld d, b                                       ; $4aa3: $50
    add h                                         ; $4aa4: $84
    and b                                         ; $4aa5: $a0
    ld a, [bc]                                    ; $4aa6: $0a
    ld b, b                                       ; $4aa7: $40
    inc d                                         ; $4aa8: $14
    add b                                         ; $4aa9: $80
    ld h, b                                       ; $4aaa: $60
    nop                                           ; $4aab: $00
    ld [bc], a                                    ; $4aac: $02
    ld b, b                                       ; $4aad: $40
    adc l                                         ; $4aae: $8d
    ret nz                                        ; $4aaf: $c0

    ret nc                                        ; $4ab0: $d0

    jr nc, jr_0e7_4a97                            ; $4ab1: $30 $e4

    inc e                                         ; $4ab3: $1c
    inc de                                        ; $4ab4: $13
    rst $38                                       ; $4ab5: $ff
    jp nz, $0cfe                                  ; $4ab6: $c2 $fe $0c

    db $fc                                        ; $4ab9: $fc
    ld h, b                                       ; $4aba: $60
    ldh [rDIV], a                                 ; $4abb: $e0 $04
    nop                                           ; $4abd: $00
    rst $38                                       ; $4abe: $ff
    dec c                                         ; $4abf: $0d
    inc b                                         ; $4ac0: $04
    nop                                           ; $4ac1: $00
    rrca                                          ; $4ac2: $0f
    db $fd                                        ; $4ac3: $fd
    inc bc                                        ; $4ac4: $03
    and $01                                       ; $4ac5: $e6 $01
    push hl                                       ; $4ac7: $e5
    ld [$00f5], sp                                ; $4ac8: $08 $f5 $00
    push af                                       ; $4acb: $f5
    ld [$00c0], sp                                ; $4acc: $08 $c0 $00
    ld bc, $0200                                  ; $4acf: $01 $00 $02
    nop                                           ; $4ad2: $00
    ld bc, $0a00                                  ; $4ad3: $01 $00 $0a
    nop                                           ; $4ad6: $00
    ld b, l                                       ; $4ad7: $45
    nop                                           ; $4ad8: $00

jr_0e7_4ad9:
    and d                                         ; $4ad9: $a2
    nop                                           ; $4ada: $00
    ld d, l                                       ; $4adb: $55
    nop                                           ; $4adc: $00
    ld a, [bc]                                    ; $4add: $0a
    ld bc, $0004                                  ; $4ade: $01 $04 $00
    ld [bc], a                                    ; $4ae1: $02
    nop                                           ; $4ae2: $00
    ld bc, $0200                                  ; $4ae3: $01 $00 $02
    nop                                           ; $4ae6: $00
    ld de, $3a00                                  ; $4ae7: $11 $00 $3a
    ld bc, $0054                                  ; $4aea: $01 $54 $00
    ld [hl+], a                                   ; $4aed: $22
    nop                                           ; $4aee: $00
    ld b, b                                       ; $4aef: $40
    nop                                           ; $4af0: $00
    jr z, jr_0e7_4af3                             ; $4af1: $28 $00

jr_0e7_4af3:
    ld d, b                                       ; $4af3: $50
    nop                                           ; $4af4: $00
    jr nz, jr_0e7_4af7                            ; $4af5: $20 $00

jr_0e7_4af7:
    ld b, c                                       ; $4af7: $41
    nop                                           ; $4af8: $00
    ld [hl+], a                                   ; $4af9: $22
    nop                                           ; $4afa: $00
    ld b, l                                       ; $4afb: $45
    nop                                           ; $4afc: $00
    jr nz, jr_0e7_4b3f                            ; $4afd: $20 $40

    stop                                          ; $4aff: $10 $00
    jr z, jr_0e7_4b13                             ; $4b01: $28 $10

    ld b, h                                       ; $4b03: $44
    jr nz, jr_0e7_4b10                            ; $4b04: $20 $0a

    ld b, h                                       ; $4b06: $44
    ld de, $0228                                  ; $4b07: $11 $28 $02
    ld d, b                                       ; $4b0a: $50
    inc b                                         ; $4b0b: $04
    jr nz, @+$0c                                  ; $4b0c: $20 $0a

    inc bc                                        ; $4b0e: $03
    nop                                           ; $4b0f: $00

jr_0e7_4b10:
    add [hl]                                      ; $4b10: $86
    ld [hl+], a                                   ; $4b11: $22
    nop                                           ; $4b12: $00

jr_0e7_4b13:
    ld bc, $0200                                  ; $4b13: $01 $00 $02
    ld bc, $0002                                  ; $4b16: $01 $02 $00
    sub c                                         ; $4b19: $91
    ld [bc], a                                    ; $4b1a: $02
    ld bc, $0004                                  ; $4b1b: $01 $04 $00
    ld [bc], a                                    ; $4b1e: $02
    ld de, $031f                                  ; $4b1f: $11 $1f $03
    inc a                                         ; $4b22: $3c
    ld c, b                                       ; $4b23: $48
    ld [hl], a                                    ; $4b24: $77
    ret                                           ; $4b25: $c9


    rst $30                                       ; $4b26: $f7
    ld b, a                                       ; $4b27: $47
    ld a, b                                       ; $4b28: $78
    jr nc, jr_0e7_4b6a                            ; $4b29: $30 $3f

    ld [bc], a                                    ; $4b2b: $02
    rlca                                          ; $4b2c: $07
    ld [bc], a                                    ; $4b2d: $02
    nop                                           ; $4b2e: $00
    sub b                                         ; $4b2f: $90
    ld d, b                                       ; $4b30: $50
    inc b                                         ; $4b31: $04
    and b                                         ; $4b32: $a0
    ld [$0450], sp                                ; $4b33: $08 $50 $04
    and b                                         ; $4b36: $a0
    ld [$1040], sp                                ; $4b37: $08 $40 $10
    add b                                         ; $4b3a: $80
    jr nz, jr_0e7_4b3d                            ; $4b3b: $20 $00

jr_0e7_4b3d:
    ld b, b                                       ; $4b3d: $40
    nop                                           ; $4b3e: $00

jr_0e7_4b3f:
    add b                                         ; $4b3f: $80
    ld [bc], a                                    ; $4b40: $02
    ret nz                                        ; $4b41: $c0

    adc d                                         ; $4b42: $8a
    adc b                                         ; $4b43: $88
    ld a, b                                       ; $4b44: $78
    ld [bc], a                                    ; $4b45: $02
    cp $93                                        ; $4b46: $fe $93
    rst $28                                       ; $4b48: $ef
    jp nz, Jump_000_0c3e                          ; $4b49: $c2 $3e $0c

    db $fc                                        ; $4b4c: $fc
    ld [bc], a                                    ; $4b4d: $02
    ldh [rSC], a                                  ; $4b4e: $e0 $02
    nop                                           ; $4b50: $00
    rst $38                                       ; $4b51: $ff
    dec c                                         ; $4b52: $0d
    inc b                                         ; $4b53: $04
    nop                                           ; $4b54: $00
    rrca                                          ; $4b55: $0f
    db $fd                                        ; $4b56: $fd
    inc bc                                        ; $4b57: $03
    push hl                                       ; $4b58: $e5
    ld b, $ed                                     ; $4b59: $06 $ed
    rlca                                          ; $4b5b: $07
    push af                                       ; $4b5c: $f5
    nop                                           ; $4b5d: $00
    push af                                       ; $4b5e: $f5
    ld [$00a2], sp                                ; $4b5f: $08 $a2 $00
    ld a, [bc]                                    ; $4b62: $0a
    nop                                           ; $4b63: $00
    dec d                                         ; $4b64: $15
    nop                                           ; $4b65: $00
    ld a, [hl+]                                   ; $4b66: $2a
    nop                                           ; $4b67: $00
    ld d, h                                       ; $4b68: $54
    nop                                           ; $4b69: $00

jr_0e7_4b6a:
    jr z, jr_0e7_4b6c                             ; $4b6a: $28 $00

jr_0e7_4b6c:
    ld d, h                                       ; $4b6c: $54
    nop                                           ; $4b6d: $00
    xor b                                         ; $4b6e: $a8
    nop                                           ; $4b6f: $00
    ld d, l                                       ; $4b70: $55
    nop                                           ; $4b71: $00
    xor d                                         ; $4b72: $aa
    nop                                           ; $4b73: $00
    ld d, l                                       ; $4b74: $55
    nop                                           ; $4b75: $00
    xor d                                         ; $4b76: $aa
    nop                                           ; $4b77: $00
    dec d                                         ; $4b78: $15
    nop                                           ; $4b79: $00
    ld a, [hl+]                                   ; $4b7a: $2a
    nop                                           ; $4b7b: $00
    dec d                                         ; $4b7c: $15
    nop                                           ; $4b7d: $00
    ld a, [hl+]                                   ; $4b7e: $2a
    nop                                           ; $4b7f: $00
    ld d, h                                       ; $4b80: $54
    nop                                           ; $4b81: $00
    ld bc, $0003                                  ; $4b82: $01 $03 $00
    add c                                         ; $4b85: $81
    ld bc, $0003                                  ; $4b86: $01 $03 $00
    add c                                         ; $4b89: $81
    ld bc, $0007                                  ; $4b8a: $01 $07 $00
    adc l                                         ; $4b8d: $8d
    ld d, h                                       ; $4b8e: $54
    nop                                           ; $4b8f: $00
    jr z, jr_0e7_4b92                             ; $4b90: $28 $00

jr_0e7_4b92:
    ld d, b                                       ; $4b92: $50
    nop                                           ; $4b93: $00
    and b                                         ; $4b94: $a0
    nop                                           ; $4b95: $00
    ld d, b                                       ; $4b96: $50
    nop                                           ; $4b97: $00
    jr nz, jr_0e7_4b9a                            ; $4b98: $20 $00

jr_0e7_4b9a:
    ld b, b                                       ; $4b9a: $40
    dec bc                                        ; $4b9b: $0b
    nop                                           ; $4b9c: $00
    add c                                         ; $4b9d: $81
    ld [bc], a                                    ; $4b9e: $02
    ld b, $00                                     ; $4b9f: $06 $00
    adc h                                         ; $4ba1: $8c
    inc b                                         ; $4ba2: $04
    rlca                                          ; $4ba3: $07
    inc h                                         ; $4ba4: $24
    dec sp                                        ; $4ba5: $3b
    ld b, b                                       ; $4ba6: $40
    ld a, a                                       ; $4ba7: $7f
    and b                                         ; $4ba8: $a0
    rst $18                                       ; $4ba9: $df
    ld d, b                                       ; $4baa: $50
    ld l, a                                       ; $4bab: $6f
    inc h                                         ; $4bac: $24
    dec sp                                        ; $4bad: $3b
    ld [bc], a                                    ; $4bae: $02
    rlca                                          ; $4baf: $07
    ld [de], a                                    ; $4bb0: $12
    nop                                           ; $4bb1: $00
    adc h                                         ; $4bb2: $8c
    ld h, b                                       ; $4bb3: $60
    ldh [$9c], a                                  ; $4bb4: $e0 $9c
    ld l, h                                       ; $4bb6: $6c
    ld [bc], a                                    ; $4bb7: $02
    cp $01                                        ; $4bb8: $fe $01
    rst $38                                       ; $4bba: $ff
    ld a, [bc]                                    ; $4bbb: $0a
    or $a4                                        ; $4bbc: $f6 $a4
    ld e, h                                       ; $4bbe: $5c
    ld [bc], a                                    ; $4bbf: $02
    ldh [rSC], a                                  ; $4bc0: $e0 $02
    nop                                           ; $4bc2: $00
    rst $38                                       ; $4bc3: $ff
    dec bc                                        ; $4bc4: $0b
    inc bc                                        ; $4bc5: $03
    nop                                           ; $4bc6: $00
    rrca                                          ; $4bc7: $0f
    db $fd                                        ; $4bc8: $fd
    inc bc                                        ; $4bc9: $03
    push hl                                       ; $4bca: $e5
    ld [$01f5], sp                                ; $4bcb: $08 $f5 $01
    push af                                       ; $4bce: $f5
    ld [$0086], sp                                ; $4bcf: $08 $86 $00
    inc d                                         ; $4bd2: $14
    nop                                           ; $4bd3: $00
    ld [$1000], sp                                ; $4bd4: $08 $00 $10
    dec b                                         ; $4bd7: $05
    nop                                           ; $4bd8: $00
    sub l                                         ; $4bd9: $95
    jr nz, jr_0e7_4bdc                            ; $4bda: $20 $00

jr_0e7_4bdc:
    ld b, h                                       ; $4bdc: $44
    nop                                           ; $4bdd: $00
    xor d                                         ; $4bde: $aa
    nop                                           ; $4bdf: $00
    dec b                                         ; $4be0: $05
    nop                                           ; $4be1: $00
    ld [bc], a                                    ; $4be2: $02
    nop                                           ; $4be3: $00
    ld b, l                                       ; $4be4: $45
    nop                                           ; $4be5: $00
    adc b                                         ; $4be6: $88
    nop                                           ; $4be7: $00
    inc d                                         ; $4be8: $14
    nop                                           ; $4be9: $00
    jr z, jr_0e7_4bec                             ; $4bea: $28 $00

jr_0e7_4bec:
    ld d, b                                       ; $4bec: $50
    nop                                           ; $4bed: $00
    jr nz, @+$05                                  ; $4bee: $20 $03

    nop                                           ; $4bf0: $00
    add c                                         ; $4bf1: $81
    ld bc, $000c                                  ; $4bf2: $01 $0c $00
    adc [hl]                                      ; $4bf5: $8e
    ld b, $07                                     ; $4bf6: $06 $07
    jr nz, jr_0e7_4c39                            ; $4bf8: $20 $3f

    ld b, b                                       ; $4bfa: $40
    ld a, a                                       ; $4bfb: $7f
    add b                                         ; $4bfc: $80
    rst $38                                       ; $4bfd: $ff
    add b                                         ; $4bfe: $80
    rst $38                                       ; $4bff: $ff
    ld b, b                                       ; $4c00: $40
    ld a, a                                       ; $4c01: $7f
    inc c                                         ; $4c02: $0c
    rrca                                          ; $4c03: $0f
    inc bc                                        ; $4c04: $03
    nop                                           ; $4c05: $00
    add c                                         ; $4c06: $81
    ld d, b                                       ; $4c07: $50
    ld c, $00                                     ; $4c08: $0e $00
    adc h                                         ; $4c0a: $8c
    jr jr_0e7_4c85                                ; $4c0b: $18 $78

    ld [bc], a                                    ; $4c0d: $02
    ld a, [hl]                                    ; $4c0e: $7e
    ld bc, $017f                                  ; $4c0f: $01 $7f $01
    ld a, a                                       ; $4c12: $7f
    ld [bc], a                                    ; $4c13: $02
    ld a, [hl]                                    ; $4c14: $7e
    inc b                                         ; $4c15: $04
    ld a, h                                       ; $4c16: $7c
    ld [bc], a                                    ; $4c17: $02
    ld h, b                                       ; $4c18: $60
    ld [bc], a                                    ; $4c19: $02
    nop                                           ; $4c1a: $00
    rst $38                                       ; $4c1b: $ff
    dec bc                                        ; $4c1c: $0b
    inc bc                                        ; $4c1d: $03
    nop                                           ; $4c1e: $00
    rrca                                          ; $4c1f: $0f
    db $fd                                        ; $4c20: $fd
    inc bc                                        ; $4c21: $03
    db $e4                                        ; $4c22: $e4
    add hl, bc                                    ; $4c23: $09
    db $f4                                        ; $4c24: $f4
    nop                                           ; $4c25: $00
    db $f4                                        ; $4c26: $f4
    ld [$0084], sp                                ; $4c27: $08 $84 $00
    ld [$1400], sp                                ; $4c2a: $08 $00 $14
    dec b                                         ; $4c2d: $05
    nop                                           ; $4c2e: $00
    sub l                                         ; $4c2f: $95
    jr nz, jr_0e7_4c32                            ; $4c30: $20 $00

jr_0e7_4c32:
    ld b, h                                       ; $4c32: $44
    nop                                           ; $4c33: $00
    ld [$0500], sp                                ; $4c34: $08 $00 $05
    nop                                           ; $4c37: $00
    ld [bc], a                                    ; $4c38: $02

jr_0e7_4c39:
    nop                                           ; $4c39: $00
    ld b, h                                       ; $4c3a: $44
    nop                                           ; $4c3b: $00
    ld [$1400], sp                                ; $4c3c: $08 $00 $14
    nop                                           ; $4c3f: $00
    ld [$1000], sp                                ; $4c40: $08 $00 $10
    nop                                           ; $4c43: $00
    jr nz, @+$16                                  ; $4c44: $20 $14

    nop                                           ; $4c46: $00
    adc [hl]                                      ; $4c47: $8e
    ld [bc], a                                    ; $4c48: $02
    inc bc                                        ; $4c49: $03
    db $10                                        ; $4c4a: $10
    rra                                           ; $4c4b: $1f
    ld b, b                                       ; $4c4c: $40
    ld a, a                                       ; $4c4d: $7f
    add b                                         ; $4c4e: $80
    rst $38                                       ; $4c4f: $ff
    ld b, b                                       ; $4c50: $40
    ld a, a                                       ; $4c51: $7f
    jr nz, jr_0e7_4c93                            ; $4c52: $20 $3f

    ld b, $07                                     ; $4c54: $06 $07
    inc bc                                        ; $4c56: $03
    nop                                           ; $4c57: $00
    add c                                         ; $4c58: $81
    jr nz, jr_0e7_4c69                            ; $4c59: $20 $0e

    nop                                           ; $4c5b: $00
    adc [hl]                                      ; $4c5c: $8e
    db $10                                        ; $4c5d: $10
    ldh a, [rDIV]                                 ; $4c5e: $f0 $04
    db $fc                                        ; $4c60: $fc
    inc bc                                        ; $4c61: $03
    rst $38                                       ; $4c62: $ff
    ld bc, $02ff                                  ; $4c63: $01 $ff $02
    cp $04                                        ; $4c66: $fe $04
    db $fc                                        ; $4c68: $fc

jr_0e7_4c69:
    ld h, b                                       ; $4c69: $60
    ldh [rIE], a                                  ; $4c6a: $e0 $ff
    add hl, bc                                    ; $4c6c: $09
    ld [bc], a                                    ; $4c6d: $02
    nop                                           ; $4c6e: $00
    rrca                                          ; $4c6f: $0f
    db $fd                                        ; $4c70: $fd
    inc bc                                        ; $4c71: $03
    db $fd                                        ; $4c72: $fd
    nop                                           ; $4c73: $00
    db $fd                                        ; $4c74: $fd
    ld [$068e], sp                                ; $4c75: $08 $8e $06
    rlca                                          ; $4c78: $07
    jr nz, jr_0e7_4cba                            ; $4c79: $20 $3f

    ld b, b                                       ; $4c7b: $40
    ld a, a                                       ; $4c7c: $7f
    add b                                         ; $4c7d: $80
    rst $38                                       ; $4c7e: $ff
    ld b, b                                       ; $4c7f: $40
    ld a, a                                       ; $4c80: $7f
    jr nz, jr_0e7_4cc2                            ; $4c81: $20 $3f

    ld b, $07                                     ; $4c83: $06 $07

jr_0e7_4c85:
    ld [de], a                                    ; $4c85: $12
    nop                                           ; $4c86: $00
    adc [hl]                                      ; $4c87: $8e
    ld h, b                                       ; $4c88: $60
    ldh [rDIV], a                                 ; $4c89: $e0 $04
    db $fc                                        ; $4c8b: $fc
    ld [bc], a                                    ; $4c8c: $02
    cp $01                                        ; $4c8d: $fe $01
    rst $38                                       ; $4c8f: $ff
    ld [bc], a                                    ; $4c90: $02
    cp $04                                        ; $4c91: $fe $04

jr_0e7_4c93:
    db $fc                                        ; $4c93: $fc
    ld h, b                                       ; $4c94: $60
    ldh [rNR12], a                                ; $4c95: $e0 $12
    nop                                           ; $4c97: $00
    rst $38                                       ; $4c98: $ff
    add hl, bc                                    ; $4c99: $09
    ld [bc], a                                    ; $4c9a: $02
    ld sp, hl                                     ; $4c9b: $f9
    ld [$01f2], sp                                ; $4c9c: $08 $f2 $01
    ld a, [c]                                     ; $4c9f: $f2
    ld sp, hl                                     ; $4ca0: $f9
    ld a, [c]                                     ; $4ca1: $f2
    ld bc, $0c02                                  ; $4ca2: $01 $02 $0c
    sub l                                         ; $4ca5: $95
    inc de                                        ; $4ca6: $13
    rra                                           ; $4ca7: $1f
    ld a, e                                       ; $4ca8: $7b
    ld h, h                                       ; $4ca9: $64

jr_0e7_4caa:
    adc $f9                                       ; $4caa: $ce $f9
    cp e                                          ; $4cac: $bb
    db $f4                                        ; $4cad: $f4
    sbc e                                         ; $4cae: $9b
    rst $28                                       ; $4caf: $ef
    sub [hl]                                      ; $4cb0: $96
    rst $28                                       ; $4cb1: $ef
    jp nc, Jump_0e7_72ef                          ; $4cb2: $d2 $ef $72

    ld a, a                                       ; $4cb5: $7f
    ld e, e                                       ; $4cb6: $5b
    ld a, a                                       ; $4cb7: $7f
    ld b, a                                       ; $4cb8: $47
    ld a, a                                       ; $4cb9: $7f

jr_0e7_4cba:
    ld b, c                                       ; $4cba: $41
    inc bc                                        ; $4cbb: $03
    ld a, a                                       ; $4cbc: $7f
    add e                                         ; $4cbd: $83
    ld d, l                                       ; $4cbe: $55
    ld a, a                                       ; $4cbf: $7f
    ld l, d                                       ; $4cc0: $6a
    inc bc                                        ; $4cc1: $03

jr_0e7_4cc2:
    ld a, a                                       ; $4cc2: $7f
    inc b                                         ; $4cc3: $04
    nop                                           ; $4cc4: $00
    ld [bc], a                                    ; $4cc5: $02
    ret nz                                        ; $4cc6: $c0

    sub c                                         ; $4cc7: $91
    jr nz, jr_0e7_4caa                            ; $4cc8: $20 $e0

    cp $7e                                        ; $4cca: $fe $7e
    and c                                         ; $4ccc: $a1
    ld a, a                                       ; $4ccd: $7f
    cp c                                          ; $4cce: $b9
    ld a, a                                       ; $4ccf: $7f
    cp $56                                        ; $4cd0: $fe $56
    rst $38                                       ; $4cd2: $ff
    sub c                                         ; $4cd3: $91
    cp $62                                        ; $4cd4: $fe $62
    db $fc                                        ; $4cd6: $fc
    call nz, $033c                                ; $4cd7: $c4 $3c $03
    db $fc                                        ; $4cda: $fc
    add e                                         ; $4cdb: $83

jr_0e7_4cdc:
    ld d, h                                       ; $4cdc: $54
    db $fc                                        ; $4cdd: $fc
    xor h                                         ; $4cde: $ac
    inc bc                                        ; $4cdf: $03
    db $fc                                        ; $4ce0: $fc
    rst $38                                       ; $4ce1: $ff
    add hl, bc                                    ; $4ce2: $09
    ld [bc], a                                    ; $4ce3: $02
    ld sp, hl                                     ; $4ce4: $f9
    ld [$01f2], sp                                ; $4ce5: $08 $f2 $01
    ld a, [c]                                     ; $4ce8: $f2
    ld sp, hl                                     ; $4ce9: $f9
    ld a, [c]                                     ; $4cea: $f2
    ld bc, $0c02                                  ; $4ceb: $01 $02 $0c
    sub l                                         ; $4cee: $95
    inc de                                        ; $4cef: $13
    rra                                           ; $4cf0: $1f
    ld a, e                                       ; $4cf1: $7b
    ld h, h                                       ; $4cf2: $64
    adc $f9                                       ; $4cf3: $ce $f9
    cp e                                          ; $4cf5: $bb
    db $f4                                        ; $4cf6: $f4
    sbc e                                         ; $4cf7: $9b
    rst $28                                       ; $4cf8: $ef
    sub [hl]                                      ; $4cf9: $96
    rst $28                                       ; $4cfa: $ef
    jp nc, Jump_0e7_72ef                          ; $4cfb: $d2 $ef $72

    ld a, a                                       ; $4cfe: $7f
    ld e, e                                       ; $4cff: $5b
    ld a, a                                       ; $4d00: $7f
    ld b, a                                       ; $4d01: $47
    ld a, a                                       ; $4d02: $7f
    ld b, c                                       ; $4d03: $41
    inc bc                                        ; $4d04: $03
    ld a, a                                       ; $4d05: $7f
    add e                                         ; $4d06: $83
    ld d, l                                       ; $4d07: $55
    ld a, a                                       ; $4d08: $7f
    ld l, d                                       ; $4d09: $6a
    inc bc                                        ; $4d0a: $03
    ld a, a                                       ; $4d0b: $7f
    inc b                                         ; $4d0c: $04
    nop                                           ; $4d0d: $00
    ld [bc], a                                    ; $4d0e: $02
    ret nz                                        ; $4d0f: $c0

    add c                                         ; $4d10: $81
    jr nz, jr_0e7_4d15                            ; $4d11: $20 $02

    ldh [$8e], a                                  ; $4d13: $e0 $8e

jr_0e7_4d15:
    ld h, b                                       ; $4d15: $60
    cp h                                          ; $4d16: $bc
    ld a, h                                       ; $4d17: $7c
    cp h                                          ; $4d18: $bc
    ld a, h                                       ; $4d19: $7c
    cp $56                                        ; $4d1a: $fe $56
    rst $38                                       ; $4d1c: $ff
    sub c                                         ; $4d1d: $91
    cp $62                                        ; $4d1e: $fe $62
    db $fc                                        ; $4d20: $fc
    call nz, $033c                                ; $4d21: $c4 $3c $03
    db $fc                                        ; $4d24: $fc
    add e                                         ; $4d25: $83
    ld d, h                                       ; $4d26: $54
    db $fc                                        ; $4d27: $fc
    xor h                                         ; $4d28: $ac
    inc bc                                        ; $4d29: $03
    db $fc                                        ; $4d2a: $fc
    rst $38                                       ; $4d2b: $ff
    add hl, bc                                    ; $4d2c: $09
    ld [bc], a                                    ; $4d2d: $02
    ld sp, hl                                     ; $4d2e: $f9
    ld [$01f2], sp                                ; $4d2f: $08 $f2 $01
    ld a, [c]                                     ; $4d32: $f2
    ld sp, hl                                     ; $4d33: $f9
    ld a, [c]                                     ; $4d34: $f2
    rst $38                                       ; $4d35: $ff
    ld [bc], a                                    ; $4d36: $02
    inc c                                         ; $4d37: $0c
    sub l                                         ; $4d38: $95
    inc de                                        ; $4d39: $13
    rra                                           ; $4d3a: $1f
    ld a, e                                       ; $4d3b: $7b
    ld h, h                                       ; $4d3c: $64
    adc $f9                                       ; $4d3d: $ce $f9
    cp e                                          ; $4d3f: $bb
    db $f4                                        ; $4d40: $f4
    sbc e                                         ; $4d41: $9b
    rst $28                                       ; $4d42: $ef
    sub [hl]                                      ; $4d43: $96
    rst $28                                       ; $4d44: $ef
    jp nc, Jump_0e7_72ef                          ; $4d45: $d2 $ef $72

    ld a, a                                       ; $4d48: $7f
    ld e, e                                       ; $4d49: $5b
    ld a, a                                       ; $4d4a: $7f
    ld b, a                                       ; $4d4b: $47
    ld a, a                                       ; $4d4c: $7f
    ld b, c                                       ; $4d4d: $41
    inc bc                                        ; $4d4e: $03
    ld a, a                                       ; $4d4f: $7f
    add e                                         ; $4d50: $83
    ld d, l                                       ; $4d51: $55
    ld a, a                                       ; $4d52: $7f
    ld l, d                                       ; $4d53: $6a
    inc bc                                        ; $4d54: $03
    ld a, a                                       ; $4d55: $7f
    inc b                                         ; $4d56: $04
    nop                                           ; $4d57: $00
    ld [bc], a                                    ; $4d58: $02
    jr nc, jr_0e7_4cdc                            ; $4d59: $30 $81

    ld [$3802], sp                                ; $4d5b: $08 $02 $38
    adc [hl]                                      ; $4d5e: $8e
    jr jr_0e7_4d90                                ; $4d5f: $18 $2f

    rra                                           ; $4d61: $1f
    dec l                                         ; $4d62: $2d
    rra                                           ; $4d63: $1f
    dec sp                                        ; $4d64: $3b
    rra                                           ; $4d65: $1f
    ccf                                           ; $4d66: $3f
    ld sp, $3f2b                                  ; $4d67: $31 $2b $3f
    dec d                                         ; $4d6a: $15
    ccf                                           ; $4d6b: $3f
    ld bc, $3f03                                  ; $4d6c: $01 $03 $3f
    add e                                         ; $4d6f: $83
    dec d                                         ; $4d70: $15
    ccf                                           ; $4d71: $3f
    dec hl                                        ; $4d72: $2b
    inc bc                                        ; $4d73: $03
    ccf                                           ; $4d74: $3f
    rst $38                                       ; $4d75: $ff
    add hl, bc                                    ; $4d76: $09
    ld [bc], a                                    ; $4d77: $02
    ld sp, hl                                     ; $4d78: $f9
    ld [$01f2], sp                                ; $4d79: $08 $f2 $01
    rst $30                                       ; $4d7c: $f7
    ld a, [$fff7]                                 ; $4d7d: $fa $f7 $ff
    ld [bc], a                                    ; $4d80: $02
    rst $38                                       ; $4d81: $ff
    add l                                         ; $4d82: $85
    add d                                         ; $4d83: $82
    rst $38                                       ; $4d84: $ff
    add d                                         ; $4d85: $82
    rst $38                                       ; $4d86: $ff
    db $fd                                        ; $4d87: $fd
    ld [bc], a                                    ; $4d88: $02
    add d                                         ; $4d89: $82
    add h                                         ; $4d8a: $84
    rst $38                                       ; $4d8b: $ff
    add d                                         ; $4d8c: $82
    rst $38                                       ; $4d8d: $ff
    add d                                         ; $4d8e: $82
    inc bc                                        ; $4d8f: $03

jr_0e7_4d90:
    rst $38                                       ; $4d90: $ff
    add e                                         ; $4d91: $83
    xor d                                         ; $4d92: $aa
    rst $38                                       ; $4d93: $ff
    push de                                       ; $4d94: $d5
    inc bc                                        ; $4d95: $03
    rst $38                                       ; $4d96: $ff
    ld a, [bc]                                    ; $4d97: $0a
    nop                                           ; $4d98: $00
    ld [bc], a                                    ; $4d99: $02
    rra                                           ; $4d9a: $1f
    add e                                         ; $4d9b: $83
    ld bc, $011f                                  ; $4d9c: $01 $1f $01
    ld [bc], a                                    ; $4d9f: $02
    rra                                           ; $4da0: $1f
    ld [bc], a                                    ; $4da1: $02
    ld bc, $1f84                                  ; $4da2: $01 $84 $1f
    ld bc, $011f                                  ; $4da5: $01 $1f $01
    inc bc                                        ; $4da8: $03
    rra                                           ; $4da9: $1f
    add e                                         ; $4daa: $83
    dec d                                         ; $4dab: $15
    rra                                           ; $4dac: $1f
    dec bc                                        ; $4dad: $0b
    inc bc                                        ; $4dae: $03
    rra                                           ; $4daf: $1f
    ld a, [bc]                                    ; $4db0: $0a
    nop                                           ; $4db1: $00
    rst $38                                       ; $4db2: $ff
    add hl, bc                                    ; $4db3: $09
    ld [bc], a                                    ; $4db4: $02
    ld sp, hl                                     ; $4db5: $f9
    ld [$01f2], sp                                ; $4db6: $08 $f2 $01
    di                                            ; $4db9: $f3
    ld sp, hl                                     ; $4dba: $f9
    di                                            ; $4dbb: $f3
    nop                                           ; $4dbc: $00
    ld [bc], a                                    ; $4dbd: $02
    ld e, $9a                                     ; $4dbe: $1e $9a
    ccf                                           ; $4dc0: $3f
    ld sp, $293f                                  ; $4dc1: $31 $3f $29
    ld e, $17                                     ; $4dc4: $1e $17
    inc e                                         ; $4dc6: $1c
    rra                                           ; $4dc7: $1f
    ld h, e                                       ; $4dc8: $63
    ld a, a                                       ; $4dc9: $7f
    adc h                                         ; $4dca: $8c
    rst $38                                       ; $4dcb: $ff
    sub b                                         ; $4dcc: $90
    rst $38                                       ; $4dcd: $ff
    ld [hl], c                                    ; $4dce: $71
    ld a, a                                       ; $4dcf: $7f
    ld a, d                                       ; $4dd0: $7a
    ld e, a                                       ; $4dd1: $5f
    ld a, a                                       ; $4dd2: $7f
    ld h, a                                       ; $4dd3: $67
    ld e, l                                       ; $4dd4: $5d
    ld a, a                                       ; $4dd5: $7f
    ld b, c                                       ; $4dd6: $41
    ld a, a                                       ; $4dd7: $7f
    ld [hl+], a                                   ; $4dd8: $22
    ld a, $02                                     ; $4dd9: $3e $02
    inc e                                         ; $4ddb: $1c
    ld b, $00                                     ; $4ddc: $06 $00
    ld [bc], a                                    ; $4dde: $02
    ld h, b                                       ; $4ddf: $60
    adc [hl]                                      ; $4de0: $8e
    jr jr_0e7_4e5b                                ; $4de1: $18 $78

    ld h, [hl]                                    ; $4de3: $66
    ld a, [hl]                                    ; $4de4: $7e
    ld bc, $617f                                  ; $4de5: $01 $7f $61
    ld a, a                                       ; $4de8: $7f
    rla                                           ; $4de9: $17
    ld a, a                                       ; $4dea: $7f
    rra                                           ; $4deb: $1f
    ld a, l                                       ; $4dec: $7d
    ld [hl], a                                    ; $4ded: $77
    ld a, c                                       ; $4dee: $79
    ld [bc], a                                    ; $4def: $02
    ld a, a                                       ; $4df0: $7f
    add h                                         ; $4df1: $84
    ld [hl], a                                    ; $4df2: $77
    ld c, c                                       ; $4df3: $49
    ld [hl], a                                    ; $4df4: $77
    ld c, c                                       ; $4df5: $49
    ld [bc], a                                    ; $4df6: $02
    ld a, a                                       ; $4df7: $7f
    inc b                                         ; $4df8: $04
    nop                                           ; $4df9: $00
    rst $38                                       ; $4dfa: $ff
    add hl, bc                                    ; $4dfb: $09
    ld [bc], a                                    ; $4dfc: $02
    ld sp, hl                                     ; $4dfd: $f9
    ld [$01f2], sp                                ; $4dfe: $08 $f2 $01
    di                                            ; $4e01: $f3
    ld a, [$00f3]                                 ; $4e02: $fa $f3 $00
    ld [bc], a                                    ; $4e05: $02
    inc a                                         ; $4e06: $3c
    adc d                                         ; $4e07: $8a
    ld a, [hl]                                    ; $4e08: $7e
    ld h, d                                       ; $4e09: $62
    ld a, a                                       ; $4e0a: $7f
    ld d, c                                       ; $4e0b: $51
    ccf                                           ; $4e0c: $3f
    add hl, hl                                    ; $4e0d: $29
    ccf                                           ; $4e0e: $3f
    inc h                                         ; $4e0f: $24
    rra                                           ; $4e10: $1f
    rla                                           ; $4e11: $17
    ld [bc], a                                    ; $4e12: $02
    ccf                                           ; $4e13: $3f
    adc [hl]                                      ; $4e14: $8e
    ld a, a                                       ; $4e15: $7f
    ld b, a                                       ; $4e16: $47
    rst $38                                       ; $4e17: $ff
    add e                                         ; $4e18: $83
    rst $38                                       ; $4e19: $ff
    add e                                         ; $4e1a: $83
    rst $38                                       ; $4e1b: $ff
    rst $00                                       ; $4e1c: $c7
    cp e                                          ; $4e1d: $bb
    rst $38                                       ; $4e1e: $ff
    add e                                         ; $4e1f: $83
    rst $38                                       ; $4e20: $ff
    ld b, l                                       ; $4e21: $45
    ld a, l                                       ; $4e22: $7d
    ld [bc], a                                    ; $4e23: $02
    jr c, jr_0e7_4e2e                             ; $4e24: $38 $08

    nop                                           ; $4e26: $00
    ld [bc], a                                    ; $4e27: $02
    jr nz, jr_0e7_4e2c                            ; $4e28: $20 $02

    jr nc, jr_0e7_4e2e                            ; $4e2a: $30 $02

jr_0e7_4e2c:
    ccf                                           ; $4e2c: $3f
    add e                                         ; $4e2d: $83

jr_0e7_4e2e:
    scf                                           ; $4e2e: $37
    add hl, bc                                    ; $4e2f: $09
    dec h                                         ; $4e30: $25
    ld [bc], a                                    ; $4e31: $02
    ccf                                           ; $4e32: $3f
    add e                                         ; $4e33: $83
    add hl, bc                                    ; $4e34: $09
    scf                                           ; $4e35: $37
    add hl, bc                                    ; $4e36: $09
    ld [bc], a                                    ; $4e37: $02
    ccf                                           ; $4e38: $3f
    add h                                         ; $4e39: $84
    scf                                           ; $4e3a: $37
    add hl, bc                                    ; $4e3b: $09
    scf                                           ; $4e3c: $37
    add hl, bc                                    ; $4e3d: $09
    ld [bc], a                                    ; $4e3e: $02
    ccf                                           ; $4e3f: $3f
    inc b                                         ; $4e40: $04
    nop                                           ; $4e41: $00
    rst $38                                       ; $4e42: $ff
    rlca                                          ; $4e43: $07
    ld bc, $0900                                  ; $4e44: $01 $00 $09
    rst $30                                       ; $4e47: $f7
    nop                                           ; $4e48: $00
    rst $30                                       ; $4e49: $f7
    rst $38                                       ; $4e4a: $ff
    ld [bc], a                                    ; $4e4b: $02
    ld a, [bc]                                    ; $4e4c: $0a
    add h                                         ; $4e4d: $84
    dec d                                         ; $4e4e: $15
    rra                                           ; $4e4f: $1f
    ld [de], a                                    ; $4e50: $12
    ld e, $02                                     ; $4e51: $1e $02
    ld e, h                                       ; $4e53: $5c
    ld [bc], a                                    ; $4e54: $02
    nop                                           ; $4e55: $00
    ld [bc], a                                    ; $4e56: $02
    ld [de], a                                    ; $4e57: $12
    ld [bc], a                                    ; $4e58: $02
    ld e, $82                                     ; $4e59: $1e $82

jr_0e7_4e5b:
    inc d                                         ; $4e5b: $14

jr_0e7_4e5c:
    inc e                                         ; $4e5c: $1c
    ld [bc], a                                    ; $4e5d: $02
    jr jr_0e7_4e6e                                ; $4e5e: $18 $0e

    nop                                           ; $4e60: $00
    rst $38                                       ; $4e61: $ff
    rlca                                          ; $4e62: $07
    ld bc, $0900                                  ; $4e63: $01 $00 $09
    rst $30                                       ; $4e66: $f7
    nop                                           ; $4e67: $00
    rst $30                                       ; $4e68: $f7
    nop                                           ; $4e69: $00
    ld [bc], a                                    ; $4e6a: $02

jr_0e7_4e6b:
    ld c, $84                                     ; $4e6b: $0e $84
    add hl, de                                    ; $4e6d: $19

jr_0e7_4e6e:
    rra                                           ; $4e6e: $1f
    ld b, l                                       ; $4e6f: $45
    ld b, a                                       ; $4e70: $47
    ld [bc], a                                    ; $4e71: $02
    ld [bc], a                                    ; $4e72: $02
    ld [bc], a                                    ; $4e73: $02
    jr nz, @+$06                                  ; $4e74: $20 $04

    ld [bc], a                                    ; $4e76: $02
    ld [bc], a                                    ; $4e77: $02
    ld [$1482], sp                                ; $4e78: $08 $82 $14
    inc e                                         ; $4e7b: $1c

jr_0e7_4e7c:
    ld [bc], a                                    ; $4e7c: $02
    ld [$000c], sp                                ; $4e7d: $08 $0c $00
    rst $38                                       ; $4e80: $ff
    rlca                                          ; $4e81: $07
    ld bc, $0900                                  ; $4e82: $01 $00 $09
    rst $30                                       ; $4e85: $f7
    nop                                           ; $4e86: $00
    ld hl, sp+$01                                 ; $4e87: $f8 $01
    ld [bc], a                                    ; $4e89: $02
    ld b, $84                                     ; $4e8a: $06 $84
    ld c, d                                       ; $4e8c: $4a
    ld c, [hl]                                    ; $4e8d: $4e
    dec b                                         ; $4e8e: $05
    rlca                                          ; $4e8f: $07
    ld [bc], a                                    ; $4e90: $02
    ld [bc], a                                    ; $4e91: $02
    inc b                                         ; $4e92: $04
    nop                                           ; $4e93: $00
    ld [bc], a                                    ; $4e94: $02
    ld [bc], a                                    ; $4e95: $02
    ld [bc], a                                    ; $4e96: $02
    ld [$0c02], sp                                ; $4e97: $08 $02 $0c
    ld c, $00                                     ; $4e9a: $0e $00
    rst $38                                       ; $4e9c: $ff
    rlca                                          ; $4e9d: $07
    ld bc, $0900                                  ; $4e9e: $01 $00 $09
    rst $30                                       ; $4ea1: $f7
    nop                                           ; $4ea2: $00
    ld a, [$0202]                                 ; $4ea3: $fa $02 $02
    ld b, $82                                     ; $4ea6: $06 $82
    dec b                                         ; $4ea8: $05
    rlca                                          ; $4ea9: $07
    ld [bc], a                                    ; $4eaa: $02
    ld [bc], a                                    ; $4eab: $02
    ld a, [de]                                    ; $4eac: $1a
    nop                                           ; $4ead: $00
    rst $38                                       ; $4eae: $ff
    dec c                                         ; $4eaf: $0d
    inc b                                         ; $4eb0: $04
    ei                                            ; $4eb1: $fb
    dec b                                         ; $4eb2: $05
    rst $30                                       ; $4eb3: $f7
    cp $eb                                        ; $4eb4: $fe $eb
    ld a, [$00eb]                                 ; $4eb6: $fa $eb $00
    ei                                            ; $4eb9: $fb
    ld a, [$fffb]                                 ; $4eba: $fa $fb $ff
    ld [bc], a                                    ; $4ebd: $02
    rrca                                          ; $4ebe: $0f
    add e                                         ; $4ebf: $83
    inc d                                         ; $4ec0: $14
    db $10                                        ; $4ec1: $10
    add hl, hl                                    ; $4ec2: $29
    inc bc                                        ; $4ec3: $03
    jr nz, jr_0e7_4ec8                            ; $4ec4: $20 $02

    jr nc, jr_0e7_4eca                            ; $4ec6: $30 $02

jr_0e7_4ec8:
    dec l                                         ; $4ec8: $2d
    ld [bc], a                                    ; $4ec9: $02

jr_0e7_4eca:
    ld a, [hl-]                                   ; $4eca: $3a
    add e                                         ; $4ecb: $83
    rra                                           ; $4ecc: $1f
    rla                                           ; $4ecd: $17
    rra                                           ; $4ece: $1f
    ld [bc], a                                    ; $4ecf: $02
    jr jr_0e7_4e5c                                ; $4ed0: $18 $8a

    rra                                           ; $4ed2: $1f
    scf                                           ; $4ed3: $37
    ccf                                           ; $4ed4: $3f
    ld e, b                                       ; $4ed5: $58
    ld a, a                                       ; $4ed6: $7f
    ld e, h                                       ; $4ed7: $5c
    ld a, a                                       ; $4ed8: $7f
    sbc a                                         ; $4ed9: $9f
    rst $38                                       ; $4eda: $ff
    sbc a                                         ; $4edb: $9f
    inc bc                                        ; $4edc: $03
    rst $38                                       ; $4edd: $ff
    ld [bc], a                                    ; $4ede: $02
    jr nz, @+$04                                  ; $4edf: $20 $02

    db $10                                        ; $4ee1: $10
    ld b, $08                                     ; $4ee2: $06 $08
    ld [bc], a                                    ; $4ee4: $02
    jr jr_0e7_4ee9                                ; $4ee5: $18 $02

    jr c, jr_0e7_4e6b                             ; $4ee7: $38 $82

jr_0e7_4ee9:
    jr nc, jr_0e7_4efb                            ; $4ee9: $30 $10

    inc b                                         ; $4eeb: $04
    jr nc, jr_0e7_4e7c                            ; $4eec: $30 $8e

    jr jr_0e7_4f28                                ; $4eee: $18 $38

    inc d                                         ; $4ef0: $14
    inc a                                         ; $4ef1: $3c
    inc [hl]                                      ; $4ef2: $34
    inc a                                         ; $4ef3: $3c
    ld [hl-], a                                   ; $4ef4: $32
    ld a, $32                                     ; $4ef5: $3e $32
    ld a, $3f                                     ; $4ef7: $3e $3f
    dec a                                         ; $4ef9: $3d
    rst $38                                       ; $4efa: $ff

jr_0e7_4efb:
    cp a                                          ; $4efb: $bf
    ld [bc], a                                    ; $4efc: $02
    ld a, a                                       ; $4efd: $7f
    ld [bc], a                                    ; $4efe: $02
    ccf                                           ; $4eff: $3f
    inc b                                         ; $4f00: $04
    ld a, a                                       ; $4f01: $7f
    add d                                         ; $4f02: $82
    jr c, jr_0e7_4f44                             ; $4f03: $38 $3f

    ld [bc], a                                    ; $4f05: $02
    rra                                           ; $4f06: $1f
    ld [de], a                                    ; $4f07: $12
    nop                                           ; $4f08: $00
    adc d                                         ; $4f09: $8a
    rra                                           ; $4f0a: $1f
    dec e                                         ; $4f0b: $1d
    ld d, $1e                                     ; $4f0c: $16 $1e
    inc d                                         ; $4f0e: $14
    inc e                                         ; $4f0f: $1c
    ld a, [de]                                    ; $4f10: $1a
    ld e, $0e                                     ; $4f11: $1e $0e
    ld e, $02                                     ; $4f13: $1e $02
    inc e                                         ; $4f15: $1c
    ld [bc], a                                    ; $4f16: $02
    jr jr_0e7_4f2b                                ; $4f17: $18 $12

    nop                                           ; $4f19: $00
    rst $38                                       ; $4f1a: $ff
    rlca                                          ; $4f1b: $07
    ld bc, $08f9                                  ; $4f1c: $01 $f9 $08
    ld a, [c]                                     ; $4f1f: $f2
    ld bc, $fcec                                  ; $4f20: $01 $ec $fc
    adc h                                         ; $4f23: $8c
    nop                                           ; $4f24: $00
    ld l, $00                                     ; $4f25: $2e $00
    ld e, e                                       ; $4f27: $5b

jr_0e7_4f28:
    nop                                           ; $4f28: $00
    ld a, a                                       ; $4f29: $7f
    nop                                           ; $4f2a: $00

jr_0e7_4f2b:
    ccf                                           ; $4f2b: $3f
    nop                                           ; $4f2c: $00
    ld c, d                                       ; $4f2d: $4a
    nop                                           ; $4f2e: $00
    inc d                                         ; $4f2f: $14
    inc d                                         ; $4f30: $14
    nop                                           ; $4f31: $00
    rst $38                                       ; $4f32: $ff
    dec c                                         ; $4f33: $0d
    inc b                                         ; $4f34: $04
    ei                                            ; $4f35: $fb
    dec b                                         ; $4f36: $05
    rst $30                                       ; $4f37: $f7
    cp $eb                                        ; $4f38: $fe $eb
    ld a, [$ffeb]                                 ; $4f3a: $fa $eb $ff
    ei                                            ; $4f3d: $fb
    ld a, [$fefb]                                 ; $4f3e: $fa $fb $fe
    ld [bc], a                                    ; $4f41: $02
    rrca                                          ; $4f42: $0f
    add e                                         ; $4f43: $83

jr_0e7_4f44:
    inc d                                         ; $4f44: $14
    db $10                                        ; $4f45: $10
    dec hl                                        ; $4f46: $2b
    inc bc                                        ; $4f47: $03
    jr nz, jr_0e7_4f4c                            ; $4f48: $20 $02

    jr nc, jr_0e7_4f4e                            ; $4f4a: $30 $02

jr_0e7_4f4c:
    ld a, [hl-]                                   ; $4f4c: $3a
    ld [bc], a                                    ; $4f4d: $02

jr_0e7_4f4e:
    dec [hl]                                      ; $4f4e: $35
    inc bc                                        ; $4f4f: $03
    rra                                           ; $4f50: $1f
    adc a                                         ; $4f51: $8f
    jr @+$1b                                      ; $4f52: $18 $19

    rra                                           ; $4f54: $1f
    scf                                           ; $4f55: $37
    ccf                                           ; $4f56: $3f
    ld e, b                                       ; $4f57: $58
    ld a, a                                       ; $4f58: $7f
    ld e, h                                       ; $4f59: $5c
    ld a, a                                       ; $4f5a: $7f
    rst $18                                       ; $4f5b: $df
    rst $38                                       ; $4f5c: $ff
    sbc a                                         ; $4f5d: $9f
    rst $38                                       ; $4f5e: $ff
    cp a                                          ; $4f5f: $bf
    rst $38                                       ; $4f60: $ff
    ld [bc], a                                    ; $4f61: $02
    db $10                                        ; $4f62: $10
    ld [bc], a                                    ; $4f63: $02
    ld [$0406], sp                                ; $4f64: $08 $06 $04
    dec b                                         ; $4f67: $05
    inc e                                         ; $4f68: $1c
    add c                                         ; $4f69: $81
    inc c                                         ; $4f6a: $0c
    ld [bc], a                                    ; $4f6b: $02
    ld [$1802], sp                                ; $4f6c: $08 $02 $18
    adc h                                         ; $4f6f: $8c
    inc c                                         ; $4f70: $0c
    inc e                                         ; $4f71: $1c
    ld a, [bc]                                    ; $4f72: $0a
    ld e, $1b                                     ; $4f73: $1e $1b
    rra                                           ; $4f75: $1f
    add hl, de                                    ; $4f76: $19
    rra                                           ; $4f77: $1f
    dec e                                         ; $4f78: $1d
    rra                                           ; $4f79: $1f
    rrca                                          ; $4f7a: $0f
    rra                                           ; $4f7b: $1f
    inc bc                                        ; $4f7c: $03
    rst $38                                       ; $4f7d: $ff
    add c                                         ; $4f7e: $81
    cp a                                          ; $4f7f: $bf
    ld [bc], a                                    ; $4f80: $02
    ld a, a                                       ; $4f81: $7f
    ld [bc], a                                    ; $4f82: $02
    ccf                                           ; $4f83: $3f
    add h                                         ; $4f84: $84
    ld a, $3f                                     ; $4f85: $3e $3f
    dec de                                        ; $4f87: $1b
    rra                                           ; $4f88: $1f
    ld [bc], a                                    ; $4f89: $02
    rlca                                          ; $4f8a: $07
    ld [de], a                                    ; $4f8b: $12
    nop                                           ; $4f8c: $00
    ld [bc], a                                    ; $4f8d: $02
    rrca                                          ; $4f8e: $0f
    ld [bc], a                                    ; $4f8f: $02
    ld c, $85                                     ; $4f90: $0e $85
    ld b, $0e                                     ; $4f92: $06 $0e
    inc bc                                        ; $4f94: $03
    rrca                                          ; $4f95: $0f
    inc bc                                        ; $4f96: $03
    inc bc                                        ; $4f97: $03
    rrca                                          ; $4f98: $0f
    ld [bc], a                                    ; $4f99: $02
    ld c, $12                                     ; $4f9a: $0e $12
    nop                                           ; $4f9c: $00
    rst $38                                       ; $4f9d: $ff
    rlca                                          ; $4f9e: $07
    ld bc, $08f9                                  ; $4f9f: $01 $f9 $08
    ld a, [c]                                     ; $4fa2: $f2
    ld bc, $fcec                                  ; $4fa3: $01 $ec $fc
    adc h                                         ; $4fa6: $8c
    nop                                           ; $4fa7: $00
    ld l, $00                                     ; $4fa8: $2e $00
    ld d, e                                       ; $4faa: $53
    nop                                           ; $4fab: $00
    ld a, a                                       ; $4fac: $7f
    nop                                           ; $4fad: $00
    ccf                                           ; $4fae: $3f
    nop                                           ; $4faf: $00
    inc d                                         ; $4fb0: $14
    nop                                           ; $4fb1: $00
    jr z, jr_0e7_4fb7                             ; $4fb2: $28 $03

    nop                                           ; $4fb4: $00
    add c                                         ; $4fb5: $81
    ld [bc], a                                    ; $4fb6: $02

jr_0e7_4fb7:
    stop                                          ; $4fb7: $10 $00
    rst $38                                       ; $4fb9: $ff
    dec c                                         ; $4fba: $0d
    inc b                                         ; $4fbb: $04
    ei                                            ; $4fbc: $fb
    dec b                                         ; $4fbd: $05
    rst $30                                       ; $4fbe: $f7
    cp $ec                                        ; $4fbf: $fe $ec
    ld a, [$ffec]                                 ; $4fc1: $fa $ec $ff
    db $fc                                        ; $4fc4: $fc
    ld a, [$fefc]                                 ; $4fc5: $fa $fc $fe
    ld [bc], a                                    ; $4fc8: $02
    rrca                                          ; $4fc9: $0f
    add e                                         ; $4fca: $83
    inc d                                         ; $4fcb: $14
    db $10                                        ; $4fcc: $10
    dec hl                                        ; $4fcd: $2b
    inc bc                                        ; $4fce: $03
    jr nz, jr_0e7_4fd3                            ; $4fcf: $20 $02

    jr nc, jr_0e7_4fd5                            ; $4fd1: $30 $02

jr_0e7_4fd3:
    ld a, [hl-]                                   ; $4fd3: $3a
    ld [bc], a                                    ; $4fd4: $02

jr_0e7_4fd5:
    dec [hl]                                      ; $4fd5: $35
    inc bc                                        ; $4fd6: $03
    rra                                           ; $4fd7: $1f
    adc a                                         ; $4fd8: $8f
    jr jr_0e7_4ff8                                ; $4fd9: $18 $1d

    rra                                           ; $4fdb: $1f
    jr nc, @+$41                                  ; $4fdc: $30 $3f

    ld e, h                                       ; $4fde: $5c
    ld a, a                                       ; $4fdf: $7f
    ld e, a                                       ; $4fe0: $5f
    ld a, a                                       ; $4fe1: $7f
    sbc a                                         ; $4fe2: $9f
    rst $38                                       ; $4fe3: $ff
    cp a                                          ; $4fe4: $bf
    rst $38                                       ; $4fe5: $ff
    cp a                                          ; $4fe6: $bf
    rst $38                                       ; $4fe7: $ff
    ld [bc], a                                    ; $4fe8: $02

jr_0e7_4fe9:
    db $10                                        ; $4fe9: $10
    ld [bc], a                                    ; $4fea: $02
    ld [$0406], sp                                ; $4feb: $08 $06 $04
    dec b                                         ; $4fee: $05
    inc e                                         ; $4fef: $1c
    add c                                         ; $4ff0: $81
    inc c                                         ; $4ff1: $0c
    ld [bc], a                                    ; $4ff2: $02
    ld [$1802], sp                                ; $4ff3: $08 $02 $18
    adc h                                         ; $4ff6: $8c
    inc c                                         ; $4ff7: $0c

jr_0e7_4ff8:
    inc e                                         ; $4ff8: $1c
    ld a, [de]                                    ; $4ff9: $1a
    ld e, $1b                                     ; $4ffa: $1e $1b
    rra                                           ; $4ffc: $1f
    add hl, de                                    ; $4ffd: $19
    rra                                           ; $4ffe: $1f
    dec e                                         ; $4fff: $1d
    rra                                           ; $5000: $1f
    dec e                                         ; $5001: $1d
    rra                                           ; $5002: $1f
    inc bc                                        ; $5003: $03

jr_0e7_5004:
    rst $38                                       ; $5004: $ff
    add c                                         ; $5005: $81
    cp a                                          ; $5006: $bf
    ld [bc], a                                    ; $5007: $02
    ld a, a                                       ; $5008: $7f
    add h                                         ; $5009: $84
    ld a, $3f                                     ; $500a: $3e $3f
    dec a                                         ; $500c: $3d
    ccf                                           ; $500d: $3f
    ld [bc], a                                    ; $500e: $02
    rra                                           ; $500f: $1f
    inc d                                         ; $5010: $14
    nop                                           ; $5011: $00
    add c                                         ; $5012: $81
    inc bc                                        ; $5013: $03
    inc bc                                        ; $5014: $03
    rrca                                          ; $5015: $0f
    add d                                         ; $5016: $82
    ld [bc], a                                    ; $5017: $02
    ld c, $04                                     ; $5018: $0e $04
    rrca                                          ; $501a: $0f
    ld [bc], a                                    ; $501b: $02
    ld c, $14                                     ; $501c: $0e $14
    nop                                           ; $501e: $00
    rst $38                                       ; $501f: $ff
    rlca                                          ; $5020: $07
    ld bc, $08f9                                  ; $5021: $01 $f9 $08
    ld a, [c]                                     ; $5024: $f2
    ld bc, $fced                                  ; $5025: $01 $ed $fc
    adc h                                         ; $5028: $8c
    nop                                           ; $5029: $00
    ld l, $00                                     ; $502a: $2e $00
    ld d, e                                       ; $502c: $53
    nop                                           ; $502d: $00
    ld a, a                                       ; $502e: $7f
    nop                                           ; $502f: $00
    ccf                                           ; $5030: $3f
    nop                                           ; $5031: $00
    inc d                                         ; $5032: $14
    nop                                           ; $5033: $00
    jr z, jr_0e7_5039                             ; $5034: $28 $03

    nop                                           ; $5036: $00
    add c                                         ; $5037: $81
    ld [bc], a                                    ; $5038: $02

jr_0e7_5039:
    stop                                          ; $5039: $10 $00
    rst $38                                       ; $503b: $ff
    dec c                                         ; $503c: $0d
    inc b                                         ; $503d: $04
    ei                                            ; $503e: $fb
    dec b                                         ; $503f: $05
    rst $30                                       ; $5040: $f7
    cp $eb                                        ; $5041: $fe $eb
    ld a, [$ffeb]                                 ; $5043: $fa $eb $ff
    ei                                            ; $5046: $fb
    ld a, [$fffb]                                 ; $5047: $fa $fb $ff
    ld [bc], a                                    ; $504a: $02
    rrca                                          ; $504b: $0f
    add e                                         ; $504c: $83
    inc d                                         ; $504d: $14
    db $10                                        ; $504e: $10
    add hl, hl                                    ; $504f: $29
    inc bc                                        ; $5050: $03
    jr nz, jr_0e7_5055                            ; $5051: $20 $02

    jr nc, jr_0e7_5057                            ; $5053: $30 $02

jr_0e7_5055:
    dec l                                         ; $5055: $2d
    ld [bc], a                                    ; $5056: $02

jr_0e7_5057:
    ld a, [hl-]                                   ; $5057: $3a
    add e                                         ; $5058: $83
    rra                                           ; $5059: $1f
    rla                                           ; $505a: $17
    rra                                           ; $505b: $1f
    ld [bc], a                                    ; $505c: $02
    jr jr_0e7_4fe9                                ; $505d: $18 $8a

    rra                                           ; $505f: $1f
    scf                                           ; $5060: $37
    ccf                                           ; $5061: $3f
    ld e, b                                       ; $5062: $58
    ld a, a                                       ; $5063: $7f
    ld e, h                                       ; $5064: $5c
    ld a, a                                       ; $5065: $7f
    sbc a                                         ; $5066: $9f
    rst $38                                       ; $5067: $ff
    sbc a                                         ; $5068: $9f
    inc bc                                        ; $5069: $03
    rst $38                                       ; $506a: $ff
    ld [bc], a                                    ; $506b: $02
    db $10                                        ; $506c: $10
    ld [bc], a                                    ; $506d: $02
    ld [$0406], sp                                ; $506e: $08 $06 $04
    ld [bc], a                                    ; $5071: $02
    inc c                                         ; $5072: $0c
    ld [bc], a                                    ; $5073: $02
    inc e                                         ; $5074: $1c
    add d                                         ; $5075: $82
    jr jr_0e7_5080                                ; $5076: $18 $08

    inc b                                         ; $5078: $04
    jr jr_0e7_5004                                ; $5079: $18 $89

    inc c                                         ; $507b: $0c
    inc e                                         ; $507c: $1c
    ld a, [bc]                                    ; $507d: $0a
    ld e, $1a                                     ; $507e: $1e $1a

jr_0e7_5080:
    ld e, $19                                     ; $5080: $1e $19
    rra                                           ; $5082: $1f
    add hl, de                                    ; $5083: $19
    inc bc                                        ; $5084: $03
    rra                                           ; $5085: $1f
    add d                                         ; $5086: $82
    rst $38                                       ; $5087: $ff
    cp a                                          ; $5088: $bf
    ld [bc], a                                    ; $5089: $02
    ld a, a                                       ; $508a: $7f
    ld b, $3f                                     ; $508b: $06 $3f
    add d                                         ; $508d: $82
    daa                                           ; $508e: $27
    ccf                                           ; $508f: $3f
    ld [bc], a                                    ; $5090: $02
    ld a, $12                                     ; $5091: $3e $12
    nop                                           ; $5093: $00
    add h                                         ; $5094: $84
    rra                                           ; $5095: $1f
    dec e                                         ; $5096: $1d
    ld d, $1e                                     ; $5097: $16 $1e
    ld [bc], a                                    ; $5099: $02
    inc e                                         ; $509a: $1c
    add c                                         ; $509b: $81
    inc d                                         ; $509c: $14
    inc bc                                        ; $509d: $03
    inc e                                         ; $509e: $1c
    ld [bc], a                                    ; $509f: $02
    jr jr_0e7_50b6                                ; $50a0: $18 $14

    nop                                           ; $50a2: $00
    rst $38                                       ; $50a3: $ff
    rlca                                          ; $50a4: $07
    ld bc, $08f9                                  ; $50a5: $01 $f9 $08
    ld a, [c]                                     ; $50a8: $f2
    ld bc, $fcec                                  ; $50a9: $01 $ec $fc
    adc h                                         ; $50ac: $8c
    nop                                           ; $50ad: $00
    ld l, $00                                     ; $50ae: $2e $00
    ld e, e                                       ; $50b0: $5b
    nop                                           ; $50b1: $00
    ld a, a                                       ; $50b2: $7f
    nop                                           ; $50b3: $00
    ccf                                           ; $50b4: $3f
    nop                                           ; $50b5: $00

jr_0e7_50b6:
    ld c, d                                       ; $50b6: $4a
    nop                                           ; $50b7: $00
    inc d                                         ; $50b8: $14
    inc d                                         ; $50b9: $14
    nop                                           ; $50ba: $00
    rst $38                                       ; $50bb: $ff
    dec c                                         ; $50bc: $0d
    inc b                                         ; $50bd: $04
    ei                                            ; $50be: $fb
    dec b                                         ; $50bf: $05
    rst $30                                       ; $50c0: $f7
    cp $eb                                        ; $50c1: $fe $eb
    ld a, [$ffeb]                                 ; $50c3: $fa $eb $ff
    ei                                            ; $50c6: $fb
    ei                                            ; $50c7: $fb
    ei                                            ; $50c8: $fb
    rst $38                                       ; $50c9: $ff
    ld [bc], a                                    ; $50ca: $02
    rrca                                          ; $50cb: $0f
    add e                                         ; $50cc: $83
    inc d                                         ; $50cd: $14
    db $10                                        ; $50ce: $10
    inc h                                         ; $50cf: $24
    inc bc                                        ; $50d0: $03
    jr nz, jr_0e7_50d5                            ; $50d1: $20 $02

    jr z, jr_0e7_50d7                             ; $50d3: $28 $02

jr_0e7_50d5:
    ld [hl], $02                                  ; $50d5: $36 $02

jr_0e7_50d7:
    dec sp                                        ; $50d7: $3b
    adc a                                         ; $50d8: $8f
    ccf                                           ; $50d9: $3f
    scf                                           ; $50da: $37
    rla                                           ; $50db: $17
    db $10                                        ; $50dc: $10
    inc e                                         ; $50dd: $1c
    rra                                           ; $50de: $1f
    scf                                           ; $50df: $37
    ccf                                           ; $50e0: $3f
    ld e, b                                       ; $50e1: $58
    ld a, a                                       ; $50e2: $7f
    call c, $9fff                                 ; $50e3: $dc $ff $9f
    rst $38                                       ; $50e6: $ff
    cp a                                          ; $50e7: $bf
    inc bc                                        ; $50e8: $03
    rst $38                                       ; $50e9: $ff
    ld [bc], a                                    ; $50ea: $02
    db $10                                        ; $50eb: $10
    ld [bc], a                                    ; $50ec: $02
    ld [$1481], sp                                ; $50ed: $08 $81 $14
    dec b                                         ; $50f0: $05
    inc b                                         ; $50f1: $04
    ld [bc], a                                    ; $50f2: $02
    inc e                                         ; $50f3: $1c
    ld [bc], a                                    ; $50f4: $02
    inc c                                         ; $50f5: $0c
    ld b, $18                                     ; $50f6: $06 $18
    adc h                                         ; $50f8: $8c
    inc c                                         ; $50f9: $0c
    inc e                                         ; $50fa: $1c
    ld a, [bc]                                    ; $50fb: $0a
    ld e, $1a                                     ; $50fc: $1e $1a
    ld e, $1b                                     ; $50fe: $1e $1b
    rra                                           ; $5100: $1f
    add hl, de                                    ; $5101: $19
    rra                                           ; $5102: $1f
    dec e                                         ; $5103: $1d
    rra                                           ; $5104: $1f
    ld [bc], a                                    ; $5105: $02
    rst $38                                       ; $5106: $ff
    ld [bc], a                                    ; $5107: $02
    ld a, a                                       ; $5108: $7f
    add d                                         ; $5109: $82
    ld l, a                                       ; $510a: $6f
    ld a, a                                       ; $510b: $7f
    ld [bc], a                                    ; $510c: $02
    rst $38                                       ; $510d: $ff
    add h                                         ; $510e: $84
    rst $00                                       ; $510f: $c7
    rst $38                                       ; $5110: $ff
    db $fd                                        ; $5111: $fd
    rst $38                                       ; $5112: $ff
    ld [bc], a                                    ; $5113: $02
    ld a, [hl]                                    ; $5114: $7e
    ld [de], a                                    ; $5115: $12
    nop                                           ; $5116: $00
    inc bc                                        ; $5117: $03
    rrca                                          ; $5118: $0f
    add c                                         ; $5119: $81
    dec c                                         ; $511a: $0d
    ld [bc], a                                    ; $511b: $02
    ld c, $04                                     ; $511c: $0e $04
    inc c                                         ; $511e: $0c
    ld [bc], a                                    ; $511f: $02
    ld [$0014], sp                                ; $5120: $08 $14 $00
    rst $38                                       ; $5123: $ff
    rlca                                          ; $5124: $07
    ld bc, $08f9                                  ; $5125: $01 $f9 $08
    ld a, [c]                                     ; $5128: $f2
    ld bc, $fcec                                  ; $5129: $01 $ec $fc
    adc h                                         ; $512c: $8c
    nop                                           ; $512d: $00
    ld l, $00                                     ; $512e: $2e $00
    ld l, l                                       ; $5130: $6d
    nop                                           ; $5131: $00
    ld a, a                                       ; $5132: $7f
    nop                                           ; $5133: $00
    ld e, a                                       ; $5134: $5f
    nop                                           ; $5135: $00
    inc h                                         ; $5136: $24
    nop                                           ; $5137: $00
    ld [de], a                                    ; $5138: $12
    inc bc                                        ; $5139: $03
    nop                                           ; $513a: $00
    add c                                         ; $513b: $81
    jr nz, jr_0e7_514e                            ; $513c: $20 $10

    nop                                           ; $513e: $00
    rst $38                                       ; $513f: $ff
    dec c                                         ; $5140: $0d
    inc b                                         ; $5141: $04
    ei                                            ; $5142: $fb
    dec b                                         ; $5143: $05
    rst $30                                       ; $5144: $f7
    cp $ec                                        ; $5145: $fe $ec
    ld a, [$ffec]                                 ; $5147: $fa $ec $ff
    db $fc                                        ; $514a: $fc
    ei                                            ; $514b: $fb
    db $fc                                        ; $514c: $fc
    rst $38                                       ; $514d: $ff

jr_0e7_514e:
    ld [bc], a                                    ; $514e: $02
    rrca                                          ; $514f: $0f
    add e                                         ; $5150: $83
    inc d                                         ; $5151: $14
    db $10                                        ; $5152: $10
    inc h                                         ; $5153: $24
    inc bc                                        ; $5154: $03
    jr nz, jr_0e7_5159                            ; $5155: $20 $02

    jr z, jr_0e7_515b                             ; $5157: $28 $02

jr_0e7_5159:
    ld [hl], $02                                  ; $5159: $36 $02

jr_0e7_515b:
    dec sp                                        ; $515b: $3b
    sub d                                         ; $515c: $92
    ccf                                           ; $515d: $3f
    scf                                           ; $515e: $37
    rla                                           ; $515f: $17
    db $10                                        ; $5160: $10
    dec e                                         ; $5161: $1d
    rra                                           ; $5162: $1f
    jr nc, jr_0e7_51a4                            ; $5163: $30 $3f

    ld e, h                                       ; $5165: $5c
    ld a, a                                       ; $5166: $7f
    rst $18                                       ; $5167: $df
    rst $38                                       ; $5168: $ff
    sbc a                                         ; $5169: $9f
    rst $38                                       ; $516a: $ff
    cp a                                          ; $516b: $bf
    rst $38                                       ; $516c: $ff
    cp a                                          ; $516d: $bf
    rst $38                                       ; $516e: $ff
    ld [bc], a                                    ; $516f: $02
    db $10                                        ; $5170: $10

jr_0e7_5171:
    ld [bc], a                                    ; $5171: $02
    ld [$1481], sp                                ; $5172: $08 $81 $14
    dec b                                         ; $5175: $05
    inc b                                         ; $5176: $04
    ld [bc], a                                    ; $5177: $02
    inc e                                         ; $5178: $1c
    ld [bc], a                                    ; $5179: $02
    inc c                                         ; $517a: $0c
    ld b, $18                                     ; $517b: $06 $18
    adc l                                         ; $517d: $8d
    inc c                                         ; $517e: $0c
    inc e                                         ; $517f: $1c
    ld a, [de]                                    ; $5180: $1a
    ld e, $1a                                     ; $5181: $1e $1a
    ld e, $19                                     ; $5183: $1e $19
    rra                                           ; $5185: $1f
    dec e                                         ; $5186: $1d
    rra                                           ; $5187: $1f
    dec e                                         ; $5188: $1d
    rra                                           ; $5189: $1f
    rst $28                                       ; $518a: $ef
    inc bc                                        ; $518b: $03

jr_0e7_518c:
    rst $38                                       ; $518c: $ff
    add [hl]                                      ; $518d: $86
    ld c, a                                       ; $518e: $4f
    ld a, a                                       ; $518f: $7f
    rst $30                                       ; $5190: $f7
    rst $38                                       ; $5191: $ff
    ei                                            ; $5192: $fb
    rst $38                                       ; $5193: $ff
    ld [bc], a                                    ; $5194: $02
    ld a, a                                       ; $5195: $7f
    inc d                                         ; $5196: $14
    nop                                           ; $5197: $00
    inc bc                                        ; $5198: $03
    rrca                                          ; $5199: $0f
    add c                                         ; $519a: $81
    dec c                                         ; $519b: $0d
    ld [bc], a                                    ; $519c: $02
    ld c, $02                                     ; $519d: $0e $02
    inc c                                         ; $519f: $0c
    add d                                         ; $51a0: $82
    inc b                                         ; $51a1: $04
    inc c                                         ; $51a2: $0c
    ld [bc], a                                    ; $51a3: $02

jr_0e7_51a4:
    ld [$0014], sp                                ; $51a4: $08 $14 $00
    rst $38                                       ; $51a7: $ff
    rlca                                          ; $51a8: $07
    ld bc, $08f9                                  ; $51a9: $01 $f9 $08
    ld a, [c]                                     ; $51ac: $f2
    ld bc, $fced                                  ; $51ad: $01 $ed $fc
    adc h                                         ; $51b0: $8c
    nop                                           ; $51b1: $00
    ld l, $00                                     ; $51b2: $2e $00
    ld l, l                                       ; $51b4: $6d
    nop                                           ; $51b5: $00
    ld a, a                                       ; $51b6: $7f
    nop                                           ; $51b7: $00
    ld e, a                                       ; $51b8: $5f
    nop                                           ; $51b9: $00
    inc h                                         ; $51ba: $24
    nop                                           ; $51bb: $00
    ld [de], a                                    ; $51bc: $12
    inc bc                                        ; $51bd: $03
    nop                                           ; $51be: $00
    add c                                         ; $51bf: $81
    jr nz, jr_0e7_51d2                            ; $51c0: $20 $10

    nop                                           ; $51c2: $00
    rst $38                                       ; $51c3: $ff
    dec c                                         ; $51c4: $0d
    inc b                                         ; $51c5: $04
    ei                                            ; $51c6: $fb
    dec b                                         ; $51c7: $05
    rst $30                                       ; $51c8: $f7
    cp $eb                                        ; $51c9: $fe $eb
    ld a, [$ffeb]                                 ; $51cb: $fa $eb $ff
    ei                                            ; $51ce: $fb
    ld a, [$fffb]                                 ; $51cf: $fa $fb $ff

jr_0e7_51d2:
    ld [bc], a                                    ; $51d2: $02
    rrca                                          ; $51d3: $0f
    add e                                         ; $51d4: $83
    inc d                                         ; $51d5: $14
    db $10                                        ; $51d6: $10
    add hl, hl                                    ; $51d7: $29
    inc bc                                        ; $51d8: $03
    jr nz, jr_0e7_51dd                            ; $51d9: $20 $02

    jr nc, jr_0e7_51df                            ; $51db: $30 $02

jr_0e7_51dd:
    dec l                                         ; $51dd: $2d
    ld [bc], a                                    ; $51de: $02

jr_0e7_51df:
    ld a, [hl-]                                   ; $51df: $3a
    add e                                         ; $51e0: $83
    rra                                           ; $51e1: $1f
    rla                                           ; $51e2: $17
    rra                                           ; $51e3: $1f
    ld [bc], a                                    ; $51e4: $02
    jr jr_0e7_5171                                ; $51e5: $18 $8a

    rra                                           ; $51e7: $1f
    scf                                           ; $51e8: $37
    ccf                                           ; $51e9: $3f
    ld e, b                                       ; $51ea: $58
    ld a, a                                       ; $51eb: $7f
    ld e, h                                       ; $51ec: $5c
    ld a, a                                       ; $51ed: $7f
    sbc a                                         ; $51ee: $9f
    rst $38                                       ; $51ef: $ff
    sbc a                                         ; $51f0: $9f
    inc bc                                        ; $51f1: $03
    rst $38                                       ; $51f2: $ff
    ld [bc], a                                    ; $51f3: $02
    db $10                                        ; $51f4: $10
    ld [bc], a                                    ; $51f5: $02
    ld [$0406], sp                                ; $51f6: $08 $06 $04
    ld [bc], a                                    ; $51f9: $02
    inc c                                         ; $51fa: $0c
    ld [bc], a                                    ; $51fb: $02
    inc e                                         ; $51fc: $1c
    add d                                         ; $51fd: $82
    jr jr_0e7_5208                                ; $51fe: $18 $08

    inc b                                         ; $5200: $04
    jr jr_0e7_518c                                ; $5201: $18 $89

    inc c                                         ; $5203: $0c
    inc e                                         ; $5204: $1c
    ld a, [bc]                                    ; $5205: $0a
    ld e, $1a                                     ; $5206: $1e $1a

jr_0e7_5208:
    ld e, $19                                     ; $5208: $1e $19
    rra                                           ; $520a: $1f
    add hl, de                                    ; $520b: $19
    inc bc                                        ; $520c: $03
    rra                                           ; $520d: $1f
    add h                                         ; $520e: $84
    rst $38                                       ; $520f: $ff
    cp a                                          ; $5210: $bf
    ld l, a                                       ; $5211: $6f
    ld a, a                                       ; $5212: $7f
    ld [bc], a                                    ; $5213: $02
    ccf                                           ; $5214: $3f

jr_0e7_5215:
    add c                                         ; $5215: $81
    cpl                                           ; $5216: $2f
    inc bc                                        ; $5217: $03
    ccf                                           ; $5218: $3f
    ld [bc], a                                    ; $5219: $02
    rra                                           ; $521a: $1f
    ld [bc], a                                    ; $521b: $02
    inc bc                                        ; $521c: $03
    ld [de], a                                    ; $521d: $12
    nop                                           ; $521e: $00
    add d                                         ; $521f: $82
    rra                                           ; $5220: $1f
    dec e                                         ; $5221: $1d
    ld [bc], a                                    ; $5222: $02
    ld e, $06                                     ; $5223: $1e $06
    inc e                                         ; $5225: $1c
    add c                                         ; $5226: $81
    inc b                                         ; $5227: $04
    inc bc                                        ; $5228: $03
    inc e                                         ; $5229: $1c
    ld [de], a                                    ; $522a: $12
    nop                                           ; $522b: $00
    rst $38                                       ; $522c: $ff
    rlca                                          ; $522d: $07
    ld bc, $08f9                                  ; $522e: $01 $f9 $08
    ld a, [c]                                     ; $5231: $f2
    ld bc, $fcec                                  ; $5232: $01 $ec $fc
    adc h                                         ; $5235: $8c
    nop                                           ; $5236: $00
    ld l, $00                                     ; $5237: $2e $00
    ld e, e                                       ; $5239: $5b
    nop                                           ; $523a: $00
    ld a, a                                       ; $523b: $7f
    nop                                           ; $523c: $00
    ccf                                           ; $523d: $3f
    nop                                           ; $523e: $00
    ld c, d                                       ; $523f: $4a
    nop                                           ; $5240: $00
    inc d                                         ; $5241: $14
    inc d                                         ; $5242: $14
    nop                                           ; $5243: $00
    rst $38                                       ; $5244: $ff
    dec c                                         ; $5245: $0d
    inc b                                         ; $5246: $04
    ei                                            ; $5247: $fb
    dec b                                         ; $5248: $05
    rst $30                                       ; $5249: $f7
    cp $eb                                        ; $524a: $fe $eb
    ld a, [$ffeb]                                 ; $524c: $fa $eb $ff
    ei                                            ; $524f: $fb
    ld a, [$fffb]                                 ; $5250: $fa $fb $ff
    ld [bc], a                                    ; $5253: $02
    rrca                                          ; $5254: $0f
    add d                                         ; $5255: $82
    inc d                                         ; $5256: $14
    db $10                                        ; $5257: $10
    ld [bc], a                                    ; $5258: $02
    add hl, hl                                    ; $5259: $29
    sbc d                                         ; $525a: $9a
    dec hl                                        ; $525b: $2b
    ld a, [hl+]                                   ; $525c: $2a
    ccf                                           ; $525d: $3f
    inc [hl]                                      ; $525e: $34
    ccf                                           ; $525f: $3f
    dec l                                         ; $5260: $2d
    ccf                                           ; $5261: $3f
    jr nz, jr_0e7_52a3                            ; $5262: $20 $3f

    ld [hl+], a                                   ; $5264: $22
    rra                                           ; $5265: $1f
    rla                                           ; $5266: $17
    rra                                           ; $5267: $1f
    jr jr_0e7_52a1                                ; $5268: $18 $37

    ccf                                           ; $526a: $3f
    ld e, d                                       ; $526b: $5a
    ld a, a                                       ; $526c: $7f
    ld e, l                                       ; $526d: $5d
    ld a, a                                       ; $526e: $7f
    cp d                                          ; $526f: $ba
    rst $38                                       ; $5270: $ff
    sbc l                                         ; $5271: $9d
    rst $38                                       ; $5272: $ff
    db $fd                                        ; $5273: $fd
    rst $18                                       ; $5274: $df
    ld [bc], a                                    ; $5275: $02
    db $10                                        ; $5276: $10
    add h                                         ; $5277: $84
    jr jr_0e7_5282                                ; $5278: $18 $08

    inc c                                         ; $527a: $0c
    inc b                                         ; $527b: $04
    ld [bc], a                                    ; $527c: $02
    inc d                                         ; $527d: $14
    adc d                                         ; $527e: $8a
    inc e                                         ; $527f: $1c
    inc c                                         ; $5280: $0c
    inc e                                         ; $5281: $1c

jr_0e7_5282:
    inc d                                         ; $5282: $14
    inc e                                         ; $5283: $1c
    inc b                                         ; $5284: $04
    inc e                                         ; $5285: $1c
    inc b                                         ; $5286: $04
    jr jr_0e7_5291                                ; $5287: $18 $08

    ld [bc], a                                    ; $5289: $02
    jr jr_0e7_5215                                ; $528a: $18 $89

    inc c                                         ; $528c: $0c
    inc e                                         ; $528d: $1c
    ld a, [de]                                    ; $528e: $1a
    ld e, $1a                                     ; $528f: $1e $1a

jr_0e7_5291:
    ld e, $1d                                     ; $5291: $1e $1d
    rra                                           ; $5293: $1f
    add hl, de                                    ; $5294: $19
    inc bc                                        ; $5295: $03

jr_0e7_5296:
    rra                                           ; $5296: $1f
    add a                                         ; $5297: $87
    db $fd                                        ; $5298: $fd
    and a                                         ; $5299: $a7
    ld a, d                                       ; $529a: $7a
    ld a, a                                       ; $529b: $7f
    ld a, [hl-]                                   ; $529c: $3a
    ccf                                           ; $529d: $3f
    ld [hl], a                                    ; $529e: $77
    inc bc                                        ; $529f: $03
    ld a, a                                       ; $52a0: $7f

jr_0e7_52a1:
    add d                                         ; $52a1: $82
    dec h                                         ; $52a2: $25

jr_0e7_52a3:
    dec a                                         ; $52a3: $3d
    ld [bc], a                                    ; $52a4: $02
    jr jr_0e7_52b9                                ; $52a5: $18 $12

    nop                                           ; $52a7: $00
    add d                                         ; $52a8: $82
    rra                                           ; $52a9: $1f
    dec e                                         ; $52aa: $1d
    ld [bc], a                                    ; $52ab: $02
    ld e, $02                                     ; $52ac: $1e $02
    inc e                                         ; $52ae: $1c
    add c                                         ; $52af: $81
    ld a, [bc]                                    ; $52b0: $0a
    inc bc                                        ; $52b1: $03
    ld e, $82                                     ; $52b2: $1e $82
    inc b                                         ; $52b4: $04
    inc e                                         ; $52b5: $1c
    ld [bc], a                                    ; $52b6: $02
    jr jr_0e7_52cb                                ; $52b7: $18 $12

jr_0e7_52b9:
    nop                                           ; $52b9: $00
    rst $38                                       ; $52ba: $ff
    rlca                                          ; $52bb: $07
    ld bc, $08f9                                  ; $52bc: $01 $f9 $08
    ld a, [c]                                     ; $52bf: $f2
    ld bc, $fcec                                  ; $52c0: $01 $ec $fc
    add [hl]                                      ; $52c3: $86
    nop                                           ; $52c4: $00
    inc l                                         ; $52c5: $2c
    nop                                           ; $52c6: $00
    ld e, d                                       ; $52c7: $5a
    nop                                           ; $52c8: $00
    ld d, c                                       ; $52c9: $51
    ld a, [de]                                    ; $52ca: $1a

jr_0e7_52cb:
    nop                                           ; $52cb: $00
    rst $38                                       ; $52cc: $ff
    dec c                                         ; $52cd: $0d
    inc b                                         ; $52ce: $04
    ei                                            ; $52cf: $fb
    dec b                                         ; $52d0: $05
    rst $30                                       ; $52d1: $f7
    cp $eb                                        ; $52d2: $fe $eb
    ld a, [$ffeb]                                 ; $52d4: $fa $eb $ff
    ei                                            ; $52d7: $fb
    ei                                            ; $52d8: $fb
    ei                                            ; $52d9: $fb
    cp $02                                        ; $52da: $fe $02
    rrca                                          ; $52dc: $0f
    add d                                         ; $52dd: $82
    inc d                                         ; $52de: $14
    db $10                                        ; $52df: $10
    ld [bc], a                                    ; $52e0: $02
    add hl, hl                                    ; $52e1: $29
    sbc d                                         ; $52e2: $9a
    scf                                           ; $52e3: $37
    ld [hl], $3f                                  ; $52e4: $36 $3f
    inc [hl]                                      ; $52e6: $34
    dec sp                                        ; $52e7: $3b
    add hl, sp                                    ; $52e8: $39
    ccf                                           ; $52e9: $3f
    jr nz, jr_0e7_532b                            ; $52ea: $20 $3f

    inc h                                         ; $52ec: $24
    ld e, $16                                     ; $52ed: $1e $16
    rra                                           ; $52ef: $1f
    jr jr_0e7_5329                                ; $52f0: $18 $37

    ccf                                           ; $52f2: $3f
    ld e, d                                       ; $52f3: $5a
    ld a, a                                       ; $52f4: $7f
    ld e, l                                       ; $52f5: $5d
    ld a, a                                       ; $52f6: $7f
    ld a, d                                       ; $52f7: $7a
    ld a, a                                       ; $52f8: $7f
    sbc l                                         ; $52f9: $9d
    rst $38                                       ; $52fa: $ff
    cp h                                          ; $52fb: $bc
    rst $38                                       ; $52fc: $ff
    ld [bc], a                                    ; $52fd: $02
    db $10                                        ; $52fe: $10
    add h                                         ; $52ff: $84
    jr jr_0e7_530a                                ; $5300: $18 $08

    inc d                                         ; $5302: $14
    inc b                                         ; $5303: $04
    ld [bc], a                                    ; $5304: $02
    inc d                                         ; $5305: $14
    inc bc                                        ; $5306: $03
    inc e                                         ; $5307: $1c
    add a                                         ; $5308: $87
    inc d                                         ; $5309: $14

jr_0e7_530a:
    inc e                                         ; $530a: $1c
    inc b                                         ; $530b: $04
    inc d                                         ; $530c: $14
    inc b                                         ; $530d: $04
    jr @+$0a                                      ; $530e: $18 $08

    ld [bc], a                                    ; $5310: $02
    jr jr_0e7_5296                                ; $5311: $18 $83

    inc c                                         ; $5313: $0c
    inc e                                         ; $5314: $1c
    ld a, [de]                                    ; $5315: $1a
    inc bc                                        ; $5316: $03
    ld e, $81                                     ; $5317: $1e $81
    dec e                                         ; $5319: $1d
    inc b                                         ; $531a: $04
    rra                                           ; $531b: $1f
    adc e                                         ; $531c: $8b
    dec e                                         ; $531d: $1d
    ld sp, hl                                     ; $531e: $f9
    cp a                                          ; $531f: $bf
    or [hl]                                       ; $5320: $b6
    rst $08                                       ; $5321: $cf
    rst $30                                       ; $5322: $f7
    rst $38                                       ; $5323: $ff
    rst $28                                       ; $5324: $ef

jr_0e7_5325:
    rst $38                                       ; $5325: $ff
    ld e, [hl]                                    ; $5326: $5e
    ld a, a                                       ; $5327: $7f
    ld [bc], a                                    ; $5328: $02

jr_0e7_5329:
    dec sp                                        ; $5329: $3b
    ld [bc], a                                    ; $532a: $02

jr_0e7_532b:
    inc bc                                        ; $532b: $03
    ld [de], a                                    ; $532c: $12
    nop                                           ; $532d: $00
    ld [bc], a                                    ; $532e: $02
    rlca                                          ; $532f: $07
    ld [bc], a                                    ; $5330: $02
    ld b, $82                                     ; $5331: $06 $82
    ld [bc], a                                    ; $5333: $02
    ld b, $02                                     ; $5334: $06 $02
    rlca                                          ; $5336: $07
    add c                                         ; $5337: $81
    ld [bc], a                                    ; $5338: $02
    inc bc                                        ; $5339: $03
    ld b, $02                                     ; $533a: $06 $02
    inc b                                         ; $533c: $04
    ld [de], a                                    ; $533d: $12
    nop                                           ; $533e: $00
    rst $38                                       ; $533f: $ff
    rlca                                          ; $5340: $07
    ld bc, $08f9                                  ; $5341: $01 $f9 $08
    ld a, [c]                                     ; $5344: $f2
    ld bc, $fcec                                  ; $5345: $01 $ec $fc
    add [hl]                                      ; $5348: $86
    nop                                           ; $5349: $00
    inc l                                         ; $534a: $2c
    nop                                           ; $534b: $00
    ld e, c                                       ; $534c: $59
    nop                                           ; $534d: $00
    ld hl, $0003                                  ; $534e: $21 $03 $00
    add c                                         ; $5351: $81
    db $10                                        ; $5352: $10
    inc bc                                        ; $5353: $03
    nop                                           ; $5354: $00
    add e                                         ; $5355: $83
    ld bc, $0400                                  ; $5356: $01 $00 $04
    stop                                          ; $5359: $10 $00
    rst $38                                       ; $535b: $ff
    dec c                                         ; $535c: $0d
    inc b                                         ; $535d: $04
    ei                                            ; $535e: $fb
    dec b                                         ; $535f: $05
    rst $30                                       ; $5360: $f7
    cp $ec                                        ; $5361: $fe $ec
    ld a, [$ffec]                                 ; $5363: $fa $ec $ff
    db $fc                                        ; $5366: $fc
    ld a, [$fefc]                                 ; $5367: $fa $fc $fe
    ld [bc], a                                    ; $536a: $02
    rrca                                          ; $536b: $0f
    add d                                         ; $536c: $82
    inc d                                         ; $536d: $14
    db $10                                        ; $536e: $10
    ld [bc], a                                    ; $536f: $02
    add hl, hl                                    ; $5370: $29
    sbc d                                         ; $5371: $9a
    scf                                           ; $5372: $37
    ld [hl], $3f                                  ; $5373: $36 $3f
    inc [hl]                                      ; $5375: $34
    dec sp                                        ; $5376: $3b
    add hl, sp                                    ; $5377: $39
    ccf                                           ; $5378: $3f
    jr nz, @+$41                                  ; $5379: $20 $3f

    inc h                                         ; $537b: $24
    ld e, $16                                     ; $537c: $1e $16
    rra                                           ; $537e: $1f
    jr jr_0e7_53b8                                ; $537f: $18 $37

    ccf                                           ; $5381: $3f
    ld e, d                                       ; $5382: $5a
    ld a, a                                       ; $5383: $7f
    ld e, l                                       ; $5384: $5d
    ld a, a                                       ; $5385: $7f
    cp d                                          ; $5386: $ba
    rst $38                                       ; $5387: $ff
    sbc l                                         ; $5388: $9d
    rst $38                                       ; $5389: $ff
    cp l                                          ; $538a: $bd
    rst $38                                       ; $538b: $ff
    ld [bc], a                                    ; $538c: $02
    db $10                                        ; $538d: $10
    add h                                         ; $538e: $84
    jr jr_0e7_5399                                ; $538f: $18 $08

    inc d                                         ; $5391: $14
    inc b                                         ; $5392: $04
    ld [bc], a                                    ; $5393: $02
    inc d                                         ; $5394: $14
    inc bc                                        ; $5395: $03
    inc e                                         ; $5396: $1c
    add a                                         ; $5397: $87
    inc d                                         ; $5398: $14

jr_0e7_5399:
    inc e                                         ; $5399: $1c
    inc b                                         ; $539a: $04
    inc d                                         ; $539b: $14
    inc b                                         ; $539c: $04
    jr @+$0a                                      ; $539d: $18 $08

    ld [bc], a                                    ; $539f: $02
    jr jr_0e7_5325                                ; $53a0: $18 $83

    inc c                                         ; $53a2: $0c
    inc e                                         ; $53a3: $1c
    ld a, [de]                                    ; $53a4: $1a
    inc bc                                        ; $53a5: $03
    ld e, $81                                     ; $53a6: $1e $81
    dec e                                         ; $53a8: $1d
    inc b                                         ; $53a9: $04
    rra                                           ; $53aa: $1f
    add a                                         ; $53ab: $87
    dec e                                         ; $53ac: $1d
    ld a, [$5bdf]                                 ; $53ad: $fa $df $5b
    ld l, a                                       ; $53b0: $6f
    dec sp                                        ; $53b1: $3b
    scf                                           ; $53b2: $37
    ld [bc], a                                    ; $53b3: $02
    ccf                                           ; $53b4: $3f
    ld [bc], a                                    ; $53b5: $02

jr_0e7_53b6:
    dec c                                         ; $53b6: $0d
    ld [bc], a                                    ; $53b7: $02

jr_0e7_53b8:
    ld bc, $0014                                  ; $53b8: $01 $14 $00
    ld [bc], a                                    ; $53bb: $02
    rrca                                          ; $53bc: $0f
    add e                                         ; $53bd: $83
    ld b, $0e                                     ; $53be: $06 $0e
    ld a, [bc]                                    ; $53c0: $0a
    inc bc                                        ; $53c1: $03
    ld c, $81                                     ; $53c2: $0e $81
    ld [bc], a                                    ; $53c4: $02
    inc bc                                        ; $53c5: $03
    ld c, $14                                     ; $53c6: $0e $14
    nop                                           ; $53c8: $00
    rst $38                                       ; $53c9: $ff
    rlca                                          ; $53ca: $07
    ld bc, $08f9                                  ; $53cb: $01 $f9 $08
    ld a, [c]                                     ; $53ce: $f2
    ld bc, $fced                                  ; $53cf: $01 $ed $fc
    add [hl]                                      ; $53d2: $86
    nop                                           ; $53d3: $00
    inc l                                         ; $53d4: $2c
    nop                                           ; $53d5: $00
    ld e, c                                       ; $53d6: $59
    nop                                           ; $53d7: $00
    ld hl, $0003                                  ; $53d8: $21 $03 $00
    add c                                         ; $53db: $81
    db $10                                        ; $53dc: $10
    inc bc                                        ; $53dd: $03
    nop                                           ; $53de: $00
    add e                                         ; $53df: $83
    ld bc, $0400                                  ; $53e0: $01 $00 $04
    stop                                          ; $53e3: $10 $00
    rst $38                                       ; $53e5: $ff
    dec c                                         ; $53e6: $0d
    inc b                                         ; $53e7: $04
    ei                                            ; $53e8: $fb
    dec b                                         ; $53e9: $05
    rst $30                                       ; $53ea: $f7
    cp $eb                                        ; $53eb: $fe $eb
    ld a, [$ffeb]                                 ; $53ed: $fa $eb $ff
    ei                                            ; $53f0: $fb
    ld a, [$fffb]                                 ; $53f1: $fa $fb $ff
    ld [bc], a                                    ; $53f4: $02
    rrca                                          ; $53f5: $0f
    add d                                         ; $53f6: $82
    inc d                                         ; $53f7: $14
    db $10                                        ; $53f8: $10
    ld [bc], a                                    ; $53f9: $02
    add hl, hl                                    ; $53fa: $29
    sbc d                                         ; $53fb: $9a
    dec hl                                        ; $53fc: $2b
    ld a, [hl+]                                   ; $53fd: $2a
    ccf                                           ; $53fe: $3f
    inc [hl]                                      ; $53ff: $34
    ccf                                           ; $5400: $3f
    dec l                                         ; $5401: $2d
    ccf                                           ; $5402: $3f
    jr nz, jr_0e7_5444                            ; $5403: $20 $3f

    ld [hl+], a                                   ; $5405: $22
    rra                                           ; $5406: $1f
    rla                                           ; $5407: $17
    rra                                           ; $5408: $1f
    jr jr_0e7_5442                                ; $5409: $18 $37

    ccf                                           ; $540b: $3f
    ld e, d                                       ; $540c: $5a
    ld a, a                                       ; $540d: $7f
    ld e, l                                       ; $540e: $5d
    ld a, a                                       ; $540f: $7f
    cp d                                          ; $5410: $ba
    rst $38                                       ; $5411: $ff
    sbc l                                         ; $5412: $9d
    rst $38                                       ; $5413: $ff
    db $fd                                        ; $5414: $fd
    rst $38                                       ; $5415: $ff
    ld [bc], a                                    ; $5416: $02
    db $10                                        ; $5417: $10
    add h                                         ; $5418: $84
    jr jr_0e7_5423                                ; $5419: $18 $08

    inc c                                         ; $541b: $0c
    inc b                                         ; $541c: $04
    ld [bc], a                                    ; $541d: $02
    inc d                                         ; $541e: $14
    adc d                                         ; $541f: $8a
    inc e                                         ; $5420: $1c
    inc c                                         ; $5421: $0c
    inc e                                         ; $5422: $1c

jr_0e7_5423:
    inc d                                         ; $5423: $14
    inc e                                         ; $5424: $1c
    inc b                                         ; $5425: $04
    inc e                                         ; $5426: $1c
    inc b                                         ; $5427: $04
    jr jr_0e7_5432                                ; $5428: $18 $08

    ld [bc], a                                    ; $542a: $02
    jr jr_0e7_53b6                                ; $542b: $18 $89

    inc c                                         ; $542d: $0c
    inc e                                         ; $542e: $1c
    ld a, [de]                                    ; $542f: $1a
    ld e, $1a                                     ; $5430: $1e $1a

jr_0e7_5432:
    ld e, $1d                                     ; $5432: $1e $1d
    rra                                           ; $5434: $1f
    add hl, de                                    ; $5435: $19

jr_0e7_5436:
    inc bc                                        ; $5436: $03
    rra                                           ; $5437: $1f
    add l                                         ; $5438: $85
    ld a, [$7abf]                                 ; $5439: $fa $bf $7a
    ld e, a                                       ; $543c: $5f
    ld [hl], a                                    ; $543d: $77
    inc bc                                        ; $543e: $03
    ld a, a                                       ; $543f: $7f
    add d                                         ; $5440: $82
    dec [hl]                                      ; $5441: $35

jr_0e7_5442:
    dec a                                         ; $5442: $3d
    ld [bc], a                                    ; $5443: $02

jr_0e7_5444:
    add hl, de                                    ; $5444: $19
    inc d                                         ; $5445: $14
    nop                                           ; $5446: $00
    add d                                         ; $5447: $82
    rra                                           ; $5448: $1f
    dec e                                         ; $5449: $1d
    ld [bc], a                                    ; $544a: $02
    ld e, $82                                     ; $544b: $1e $82
    inc c                                         ; $544d: $0c
    inc e                                         ; $544e: $1c
    ld [bc], a                                    ; $544f: $02
    ld e, $81                                     ; $5450: $1e $81
    inc b                                         ; $5452: $04
    inc bc                                        ; $5453: $03
    inc e                                         ; $5454: $1c
    inc d                                         ; $5455: $14
    nop                                           ; $5456: $00
    rst $38                                       ; $5457: $ff
    rlca                                          ; $5458: $07
    ld bc, $08f9                                  ; $5459: $01 $f9 $08
    ld a, [c]                                     ; $545c: $f2
    ld bc, $fcec                                  ; $545d: $01 $ec $fc
    add [hl]                                      ; $5460: $86
    nop                                           ; $5461: $00
    inc l                                         ; $5462: $2c
    nop                                           ; $5463: $00
    ld e, d                                       ; $5464: $5a
    nop                                           ; $5465: $00
    ld d, c                                       ; $5466: $51
    ld a, [de]                                    ; $5467: $1a
    nop                                           ; $5468: $00
    rst $38                                       ; $5469: $ff
    dec c                                         ; $546a: $0d
    inc b                                         ; $546b: $04
    ei                                            ; $546c: $fb
    dec b                                         ; $546d: $05
    rst $30                                       ; $546e: $f7
    cp $eb                                        ; $546f: $fe $eb
    ld a, [$ffeb]                                 ; $5471: $fa $eb $ff
    ei                                            ; $5474: $fb
    ld a, [$fefb]                                 ; $5475: $fa $fb $fe
    ld [bc], a                                    ; $5478: $02
    rrca                                          ; $5479: $0f
    add d                                         ; $547a: $82
    ld [de], a                                    ; $547b: $12
    db $10                                        ; $547c: $10
    ld [bc], a                                    ; $547d: $02
    add hl, hl                                    ; $547e: $29
    ld [bc], a                                    ; $547f: $02
    dec l                                         ; $5480: $2d
    sbc b                                         ; $5481: $98
    ccf                                           ; $5482: $3f
    ld [hl-], a                                   ; $5483: $32
    dec a                                         ; $5484: $3d
    inc l                                         ; $5485: $2c
    ccf                                           ; $5486: $3f
    jr nz, @+$31                                  ; $5487: $20 $2f

    ld hl, $131b                                  ; $5489: $21 $1b $13
    rra                                           ; $548c: $1f
    jr jr_0e7_54c6                                ; $548d: $18 $37

    ccf                                           ; $548f: $3f
    ld e, d                                       ; $5490: $5a
    ld a, a                                       ; $5491: $7f
    ld a, l                                       ; $5492: $7d
    ld a, a                                       ; $5493: $7f
    cp d                                          ; $5494: $ba
    rst $38                                       ; $5495: $ff
    db $fd                                        ; $5496: $fd
    rst $38                                       ; $5497: $ff
    ld sp, hl                                     ; $5498: $f9
    cp a                                          ; $5499: $bf
    ld [bc], a                                    ; $549a: $02
    db $10                                        ; $549b: $10
    add h                                         ; $549c: $84
    jr jr_0e7_54a7                                ; $549d: $18 $08

    inc c                                         ; $549f: $0c
    inc b                                         ; $54a0: $04
    ld [bc], a                                    ; $54a1: $02
    inc d                                         ; $54a2: $14
    add d                                         ; $54a3: $82
    inc e                                         ; $54a4: $1c
    inc c                                         ; $54a5: $0c
    inc bc                                        ; $54a6: $03

jr_0e7_54a7:
    inc e                                         ; $54a7: $1c
    add l                                         ; $54a8: $85
    inc b                                         ; $54a9: $04
    inc e                                         ; $54aa: $1c
    inc b                                         ; $54ab: $04
    jr jr_0e7_54b6                                ; $54ac: $18 $08

    ld [bc], a                                    ; $54ae: $02
    jr jr_0e7_5436                                ; $54af: $18 $85

    inc c                                         ; $54b1: $0c
    inc e                                         ; $54b2: $1c
    ld a, [de]                                    ; $54b3: $1a
    ld e, $1a                                     ; $54b4: $1e $1a

jr_0e7_54b6:
    inc bc                                        ; $54b6: $03
    ld e, $8a                                     ; $54b7: $1e $8a
    add hl, de                                    ; $54b9: $19
    rra                                           ; $54ba: $1f
    dec e                                         ; $54bb: $1d
    rra                                           ; $54bc: $1f
    ld sp, hl                                     ; $54bd: $f9
    cp a                                          ; $54be: $bf
    halt                                          ; $54bf: $76
    ld a, a                                       ; $54c0: $7f
    ld l, $3f                                     ; $54c1: $2e $3f
    ld [bc], a                                    ; $54c3: $02
    ld a, a                                       ; $54c4: $7f
    add d                                         ; $54c5: $82

jr_0e7_54c6:
    daa                                           ; $54c6: $27
    ccf                                           ; $54c7: $3f
    ld [bc], a                                    ; $54c8: $02
    dec a                                         ; $54c9: $3d
    ld [bc], a                                    ; $54ca: $02
    inc e                                         ; $54cb: $1c
    ld [de], a                                    ; $54cc: $12
    nop                                           ; $54cd: $00
    add c                                         ; $54ce: $81
    rrca                                          ; $54cf: $0f
    ld [bc], a                                    ; $54d0: $02
    dec c                                         ; $54d1: $0d

jr_0e7_54d2:
    inc bc                                        ; $54d2: $03
    rrca                                          ; $54d3: $0f
    add h                                         ; $54d4: $84
    rlca                                          ; $54d5: $07
    rrca                                          ; $54d6: $0f
    ld a, [bc]                                    ; $54d7: $0a
    ld c, $02                                     ; $54d8: $0e $02
    inc c                                         ; $54da: $0c
    inc d                                         ; $54db: $14
    nop                                           ; $54dc: $00
    rst $38                                       ; $54dd: $ff
    rlca                                          ; $54de: $07
    ld bc, $08f9                                  ; $54df: $01 $f9 $08
    ld a, [c]                                     ; $54e2: $f2
    ld bc, $fcec                                  ; $54e3: $01 $ec $fc
    add [hl]                                      ; $54e6: $86
    nop                                           ; $54e7: $00
    inc [hl]                                      ; $54e8: $34
    nop                                           ; $54e9: $00
    ld e, d                                       ; $54ea: $5a
    nop                                           ; $54eb: $00
    ld c, c                                       ; $54ec: $49
    inc bc                                        ; $54ed: $03
    nop                                           ; $54ee: $00
    add c                                         ; $54ef: $81
    ld [$0003], sp                                ; $54f0: $08 $03 $00
    add e                                         ; $54f3: $83
    ld b, b                                       ; $54f4: $40
    nop                                           ; $54f5: $00
    db $10                                        ; $54f6: $10
    stop                                          ; $54f7: $10 $00
    rst $38                                       ; $54f9: $ff
    dec c                                         ; $54fa: $0d
    inc b                                         ; $54fb: $04
    ei                                            ; $54fc: $fb
    dec b                                         ; $54fd: $05
    rst $30                                       ; $54fe: $f7
    cp $ec                                        ; $54ff: $fe $ec
    ld a, [$ffec]                                 ; $5501: $fa $ec $ff
    db $fc                                        ; $5504: $fc
    ld a, [$fffc]                                 ; $5505: $fa $fc $ff
    ld [bc], a                                    ; $5508: $02
    rrca                                          ; $5509: $0f
    add d                                         ; $550a: $82
    ld [de], a                                    ; $550b: $12
    db $10                                        ; $550c: $10
    ld [bc], a                                    ; $550d: $02
    add hl, hl                                    ; $550e: $29
    ld [bc], a                                    ; $550f: $02
    dec l                                         ; $5510: $2d
    sbc b                                         ; $5511: $98
    ccf                                           ; $5512: $3f
    ld [hl-], a                                   ; $5513: $32
    dec a                                         ; $5514: $3d
    inc l                                         ; $5515: $2c
    ccf                                           ; $5516: $3f
    jr nz, jr_0e7_5548                            ; $5517: $20 $2f

    ld hl, $131b                                  ; $5519: $21 $1b $13
    rra                                           ; $551c: $1f
    jr jr_0e7_5556                                ; $551d: $18 $37

    ccf                                           ; $551f: $3f
    ld e, d                                       ; $5520: $5a
    ld a, a                                       ; $5521: $7f
    ld a, l                                       ; $5522: $7d
    ld a, a                                       ; $5523: $7f
    cp d                                          ; $5524: $ba
    rst $38                                       ; $5525: $ff
    db $fd                                        ; $5526: $fd
    rst $38                                       ; $5527: $ff
    db $fd                                        ; $5528: $fd
    cp a                                          ; $5529: $bf
    ld [bc], a                                    ; $552a: $02
    db $10                                        ; $552b: $10
    add h                                         ; $552c: $84
    jr jr_0e7_5537                                ; $552d: $18 $08

    inc c                                         ; $552f: $0c
    inc b                                         ; $5530: $04
    ld [bc], a                                    ; $5531: $02
    inc d                                         ; $5532: $14
    add d                                         ; $5533: $82
    inc e                                         ; $5534: $1c
    inc c                                         ; $5535: $0c
    inc bc                                        ; $5536: $03

jr_0e7_5537:
    inc e                                         ; $5537: $1c
    add l                                         ; $5538: $85
    inc b                                         ; $5539: $04
    inc e                                         ; $553a: $1c
    inc b                                         ; $553b: $04
    jr jr_0e7_5546                                ; $553c: $18 $08

    ld [bc], a                                    ; $553e: $02
    jr jr_0e7_54d2                                ; $553f: $18 $91

    inc c                                         ; $5541: $0c
    inc e                                         ; $5542: $1c
    ld a, [de]                                    ; $5543: $1a
    ld e, $1a                                     ; $5544: $1e $1a

jr_0e7_5546:
    ld e, $1d                                     ; $5546: $1e $1d

jr_0e7_5548:
    rra                                           ; $5548: $1f
    add hl, de                                    ; $5549: $19
    rra                                           ; $554a: $1f
    dec e                                         ; $554b: $1d
    rra                                           ; $554c: $1f
    ld a, [$76bf]                                 ; $554d: $fa $bf $76
    ld a, a                                       ; $5550: $7f
    ld l, $03                                     ; $5551: $2e $03
    ccf                                           ; $5553: $3f
    add d                                         ; $5554: $82

jr_0e7_5555:
    dec h                                         ; $5555: $25

jr_0e7_5556:
    dec a                                         ; $5556: $3d
    ld [bc], a                                    ; $5557: $02
    inc a                                         ; $5558: $3c
    inc d                                         ; $5559: $14
    nop                                           ; $555a: $00
    add h                                         ; $555b: $84
    rra                                           ; $555c: $1f
    dec de                                        ; $555d: $1b
    ld a, [de]                                    ; $555e: $1a
    ld e, $02                                     ; $555f: $1e $02
    inc e                                         ; $5561: $1c
    ld [bc], a                                    ; $5562: $02
    jr @+$04                                      ; $5563: $18 $02

    db $10                                        ; $5565: $10
    ld d, $00                                     ; $5566: $16 $00
    rst $38                                       ; $5568: $ff
    rlca                                          ; $5569: $07
    ld bc, $08f9                                  ; $556a: $01 $f9 $08
    ld a, [c]                                     ; $556d: $f2
    ld bc, $fced                                  ; $556e: $01 $ed $fc
    add [hl]                                      ; $5571: $86
    nop                                           ; $5572: $00
    inc [hl]                                      ; $5573: $34
    nop                                           ; $5574: $00
    ld e, d                                       ; $5575: $5a
    nop                                           ; $5576: $00
    ld c, c                                       ; $5577: $49
    inc bc                                        ; $5578: $03
    nop                                           ; $5579: $00
    add c                                         ; $557a: $81
    ld [$0003], sp                                ; $557b: $08 $03 $00
    add e                                         ; $557e: $83
    ld b, b                                       ; $557f: $40
    nop                                           ; $5580: $00
    db $10                                        ; $5581: $10
    stop                                          ; $5582: $10 $00
    rst $38                                       ; $5584: $ff
    dec c                                         ; $5585: $0d
    inc b                                         ; $5586: $04
    ei                                            ; $5587: $fb
    dec b                                         ; $5588: $05
    rst $30                                       ; $5589: $f7
    cp $eb                                        ; $558a: $fe $eb
    ld a, [$ffeb]                                 ; $558c: $fa $eb $ff
    ei                                            ; $558f: $fb
    ld a, [$fffb]                                 ; $5590: $fa $fb $ff
    ld [bc], a                                    ; $5593: $02
    rrca                                          ; $5594: $0f
    add d                                         ; $5595: $82
    inc d                                         ; $5596: $14
    db $10                                        ; $5597: $10
    ld [bc], a                                    ; $5598: $02
    add hl, hl                                    ; $5599: $29
    sbc d                                         ; $559a: $9a
    dec hl                                        ; $559b: $2b
    ld a, [hl+]                                   ; $559c: $2a
    ccf                                           ; $559d: $3f
    inc [hl]                                      ; $559e: $34
    ccf                                           ; $559f: $3f
    dec l                                         ; $55a0: $2d
    ccf                                           ; $55a1: $3f
    jr nz, jr_0e7_55e3                            ; $55a2: $20 $3f

    ld [hl+], a                                   ; $55a4: $22
    rra                                           ; $55a5: $1f
    rla                                           ; $55a6: $17
    rra                                           ; $55a7: $1f
    jr jr_0e7_55e1                                ; $55a8: $18 $37

    ccf                                           ; $55aa: $3f
    ld e, d                                       ; $55ab: $5a
    ld a, a                                       ; $55ac: $7f
    ld e, l                                       ; $55ad: $5d
    ld a, a                                       ; $55ae: $7f
    cp d                                          ; $55af: $ba
    rst $38                                       ; $55b0: $ff
    sbc l                                         ; $55b1: $9d
    rst $38                                       ; $55b2: $ff
    db $fd                                        ; $55b3: $fd
    rst $38                                       ; $55b4: $ff
    ld [bc], a                                    ; $55b5: $02
    db $10                                        ; $55b6: $10
    add h                                         ; $55b7: $84
    jr jr_0e7_55c2                                ; $55b8: $18 $08

    inc c                                         ; $55ba: $0c
    inc b                                         ; $55bb: $04
    ld [bc], a                                    ; $55bc: $02
    inc d                                         ; $55bd: $14
    adc d                                         ; $55be: $8a
    inc e                                         ; $55bf: $1c
    inc c                                         ; $55c0: $0c
    inc e                                         ; $55c1: $1c

jr_0e7_55c2:
    inc d                                         ; $55c2: $14
    inc e                                         ; $55c3: $1c
    inc b                                         ; $55c4: $04
    inc e                                         ; $55c5: $1c
    inc b                                         ; $55c6: $04
    jr jr_0e7_55d1                                ; $55c7: $18 $08

    ld [bc], a                                    ; $55c9: $02
    jr jr_0e7_5555                                ; $55ca: $18 $89

    inc c                                         ; $55cc: $0c
    inc e                                         ; $55cd: $1c
    ld a, [de]                                    ; $55ce: $1a
    ld e, $1a                                     ; $55cf: $1e $1a

jr_0e7_55d1:
    ld e, $1d                                     ; $55d1: $1e $1d
    rra                                           ; $55d3: $1f
    add hl, de                                    ; $55d4: $19
    inc bc                                        ; $55d5: $03
    rra                                           ; $55d6: $1f

jr_0e7_55d7:
    add [hl]                                      ; $55d7: $86
    ld a, [$7abf]                                 ; $55d8: $fa $bf $7a
    ld e, a                                       ; $55db: $5f
    scf                                           ; $55dc: $37
    ccf                                           ; $55dd: $3f
    ld [bc], a                                    ; $55de: $02
    ld a, a                                       ; $55df: $7f
    add d                                         ; $55e0: $82

jr_0e7_55e1:
    dec h                                         ; $55e1: $25
    dec a                                         ; $55e2: $3d

jr_0e7_55e3:
    ld [bc], a                                    ; $55e3: $02
    inc a                                         ; $55e4: $3c
    inc d                                         ; $55e5: $14
    nop                                           ; $55e6: $00
    add d                                         ; $55e7: $82
    rra                                           ; $55e8: $1f
    dec e                                         ; $55e9: $1d
    ld [bc], a                                    ; $55ea: $02
    ld e, $81                                     ; $55eb: $1e $81
    ld c, $03                                     ; $55ed: $0e $03
    ld e, $82                                     ; $55ef: $1e $82
    inc c                                         ; $55f1: $0c
    inc e                                         ; $55f2: $1c
    ld [bc], a                                    ; $55f3: $02
    jr jr_0e7_560a                                ; $55f4: $18 $14

    nop                                           ; $55f6: $00
    rst $38                                       ; $55f7: $ff
    rlca                                          ; $55f8: $07
    ld bc, $08f9                                  ; $55f9: $01 $f9 $08
    ld a, [c]                                     ; $55fc: $f2
    ld bc, $fcec                                  ; $55fd: $01 $ec $fc
    add [hl]                                      ; $5600: $86
    nop                                           ; $5601: $00
    inc l                                         ; $5602: $2c
    nop                                           ; $5603: $00
    ld e, d                                       ; $5604: $5a
    nop                                           ; $5605: $00
    ld d, c                                       ; $5606: $51
    ld a, [de]                                    ; $5607: $1a
    nop                                           ; $5608: $00
    rst $38                                       ; $5609: $ff

jr_0e7_560a:
    dec c                                         ; $560a: $0d
    inc b                                         ; $560b: $04
    ei                                            ; $560c: $fb
    dec b                                         ; $560d: $05
    rst $30                                       ; $560e: $f7
    cp $eb                                        ; $560f: $fe $eb
    db $fc                                        ; $5611: $fc
    db $ec                                        ; $5612: $ec
    cp $fb                                        ; $5613: $fe $fb
    ei                                            ; $5615: $fb
    ei                                            ; $5616: $fb
    db $fd                                        ; $5617: $fd
    ld [bc], a                                    ; $5618: $02
    ld a, $92                                     ; $5619: $3e $92
    ld b, l                                       ; $561b: $45
    ld b, c                                       ; $561c: $41
    xor e                                         ; $561d: $ab
    adc e                                         ; $561e: $8b
    rst $18                                       ; $561f: $df
    sub [hl]                                      ; $5620: $96
    rst $18                                       ; $5621: $df
    ret nc                                        ; $5622: $d0

    rst $38                                       ; $5623: $ff
    ld a, [c]                                     ; $5624: $f2
    ld a, a                                       ; $5625: $7f
    ld b, b                                       ; $5626: $40
    ld a, a                                       ; $5627: $7f
    ld h, b                                       ; $5628: $60
    ccf                                           ; $5629: $3f
    inc hl                                        ; $562a: $23
    ccf                                           ; $562b: $3f
    ld sp, $7e02                                  ; $562c: $31 $02 $7e
    adc d                                         ; $562f: $8a
    xor d                                         ; $5630: $aa
    cp $6d                                        ; $5631: $fe $6d
    ld a, a                                       ; $5633: $7f
    ld e, e                                       ; $5634: $5b
    ld a, a                                       ; $5635: $7f
    ld c, l                                       ; $5636: $4d
    ld a, a                                       ; $5637: $7f
    ld c, l                                       ; $5638: $4d
    ld a, a                                       ; $5639: $7f
    ld [bc], a                                    ; $563a: $02
    ld [bc], a                                    ; $563b: $02
    ld [bc], a                                    ; $563c: $02
    ld bc, $0206                                  ; $563d: $01 $06 $02
    add d                                         ; $5640: $82
    inc bc                                        ; $5641: $03
    ld bc, $0204                                  ; $5642: $01 $04 $02
    ld c, $00                                     ; $5645: $0e $00
    add d                                         ; $5647: $82
    db $fc                                        ; $5648: $fc
    sbc h                                         ; $5649: $9c
    ld [bc], a                                    ; $564a: $02
    jr nz, jr_0e7_55d7                            ; $564b: $20 $8a

    ld a, a                                       ; $564d: $7f
    ld l, d                                       ; $564e: $6a
    ld a, l                                       ; $564f: $7d
    ld a, a                                       ; $5650: $7f
    ei                                            ; $5651: $fb
    rst $38                                       ; $5652: $ff
    cp a                                          ; $5653: $bf
    rst $38                                       ; $5654: $ff
    ld e, b                                       ; $5655: $58
    ld a, a                                       ; $5656: $7f
    ld [bc], a                                    ; $5657: $02
    ccf                                           ; $5658: $3f
    inc d                                         ; $5659: $14
    nop                                           ; $565a: $00
    add d                                         ; $565b: $82
    inc bc                                        ; $565c: $03
    ld bc, $0204                                  ; $565d: $01 $04 $02
    ld [bc], a                                    ; $5660: $02
    nop                                           ; $5661: $00
    ld [bc], a                                    ; $5662: $02
    ld [bc], a                                    ; $5663: $02
    inc d                                         ; $5664: $14
    nop                                           ; $5665: $00
    rst $38                                       ; $5666: $ff
    rlca                                          ; $5667: $07
    ld bc, $08f9                                  ; $5668: $01 $f9 $08
    ld a, [c]                                     ; $566b: $f2
    ld bc, $fdec                                  ; $566c: $01 $ec $fd
    adc b                                         ; $566f: $88
    nop                                           ; $5670: $00
    ld [hl], h                                    ; $5671: $74
    nop                                           ; $5672: $00
    xor c                                         ; $5673: $a9
    nop                                           ; $5674: $00
    ld b, b                                       ; $5675: $40
    nop                                           ; $5676: $00
    ld b, b                                       ; $5677: $40
    jr jr_0e7_567a                                ; $5678: $18 $00

jr_0e7_567a:
    rst $38                                       ; $567a: $ff
    dec c                                         ; $567b: $0d
    inc b                                         ; $567c: $04
    ei                                            ; $567d: $fb
    dec b                                         ; $567e: $05
    rst $30                                       ; $567f: $f7
    cp $eb                                        ; $5680: $fe $eb
    db $fc                                        ; $5682: $fc
    db $ec                                        ; $5683: $ec
    cp $fb                                        ; $5684: $fe $fb
    ei                                            ; $5686: $fb
    ei                                            ; $5687: $fb
    nop                                           ; $5688: $00
    ld [bc], a                                    ; $5689: $02
    ld a, $92                                     ; $568a: $3e $92
    ld c, c                                       ; $568c: $49
    ld b, c                                       ; $568d: $41
    or e                                          ; $568e: $b3
    sub e                                         ; $568f: $93
    rst $18                                       ; $5690: $df
    sbc l                                         ; $5691: $9d
    rst $18                                       ; $5692: $df
    ret nc                                        ; $5693: $d0

    db $fd                                        ; $5694: $fd
    db $e4                                        ; $5695: $e4
    ld a, a                                       ; $5696: $7f
    ld b, b                                       ; $5697: $40
    ld a, a                                       ; $5698: $7f
    ld h, b                                       ; $5699: $60
    ccf                                           ; $569a: $3f
    inc hl                                        ; $569b: $23
    ccf                                           ; $569c: $3f
    ld sp, $7e02                                  ; $569d: $31 $02 $7e
    adc d                                         ; $56a0: $8a
    xor d                                         ; $56a1: $aa
    cp $4d                                        ; $56a2: $fe $4d
    ld a, a                                       ; $56a4: $7f
    ld e, e                                       ; $56a5: $5b
    ld a, a                                       ; $56a6: $7f
    ld h, l                                       ; $56a7: $65
    ld a, a                                       ; $56a8: $7f
    ld h, a                                       ; $56a9: $67
    ld a, l                                       ; $56aa: $7d
    ld [bc], a                                    ; $56ab: $02
    ld [bc], a                                    ; $56ac: $02
    ld [bc], a                                    ; $56ad: $02
    ld bc, $0206                                  ; $56ae: $01 $06 $02
    add d                                         ; $56b1: $82
    inc bc                                        ; $56b2: $03
    ld bc, $0204                                  ; $56b3: $01 $04 $02
    ld c, $00                                     ; $56b6: $0e $00
    add d                                         ; $56b8: $82
    cp $ee                                        ; $56b9: $fe $ee
    ld [bc], a                                    ; $56bb: $02
    jr nz, @-$7d                                  ; $56bc: $20 $81

    ld a, l                                       ; $56be: $7d
    ld [bc], a                                    ; $56bf: $02
    ld a, e                                       ; $56c0: $7b
    add a                                         ; $56c1: $87
    ld a, a                                       ; $56c2: $7f
    or a                                          ; $56c3: $b7
    rst $38                                       ; $56c4: $ff
    cp a                                          ; $56c5: $bf
    rst $38                                       ; $56c6: $ff
    ld h, l                                       ; $56c7: $65
    ld a, l                                       ; $56c8: $7d
    ld [bc], a                                    ; $56c9: $02
    inc e                                         ; $56ca: $1c
    inc d                                         ; $56cb: $14
    nop                                           ; $56cc: $00
    ld [bc], a                                    ; $56cd: $02
    jr jr_0e7_56d2                                ; $56ce: $18 $02

    ld e, $84                                     ; $56d0: $1e $84

jr_0e7_56d2:
    add hl, de                                    ; $56d2: $19
    rra                                           ; $56d3: $1f
    ld d, $1e                                     ; $56d4: $16 $1e
    ld [bc], a                                    ; $56d6: $02
    jr jr_0e7_56ed                                ; $56d7: $18 $14

    nop                                           ; $56d9: $00
    rst $38                                       ; $56da: $ff
    rlca                                          ; $56db: $07
    ld bc, $08f9                                  ; $56dc: $01 $f9 $08
    ld a, [c]                                     ; $56df: $f2
    ld bc, $fdec                                  ; $56e0: $01 $ec $fd
    adc d                                         ; $56e3: $8a
    nop                                           ; $56e4: $00
    ld l, h                                       ; $56e5: $6c
    nop                                           ; $56e6: $00
    sbc c                                         ; $56e7: $99
    nop                                           ; $56e8: $00
    ld b, b                                       ; $56e9: $40
    nop                                           ; $56ea: $00
    ld b, b                                       ; $56eb: $40
    nop                                           ; $56ec: $00

jr_0e7_56ed:
    inc b                                         ; $56ed: $04
    ld d, $00                                     ; $56ee: $16 $00
    rst $38                                       ; $56f0: $ff
    dec c                                         ; $56f1: $0d
    inc b                                         ; $56f2: $04
    ei                                            ; $56f3: $fb
    dec b                                         ; $56f4: $05
    rst $30                                       ; $56f5: $f7
    cp $ec                                        ; $56f6: $fe $ec
    db $fc                                        ; $56f8: $fc
    db $ed                                        ; $56f9: $ed
    cp $fc                                        ; $56fa: $fe $fc
    ei                                            ; $56fc: $fb
    db $fc                                        ; $56fd: $fc
    cp $02                                        ; $56fe: $fe $02
    ld a, $9e                                     ; $5700: $3e $9e
    ld c, c                                       ; $5702: $49
    ld b, c                                       ; $5703: $41
    or e                                          ; $5704: $b3
    sub e                                         ; $5705: $93
    rst $18                                       ; $5706: $df
    sbc l                                         ; $5707: $9d
    rst $18                                       ; $5708: $df
    ret nc                                        ; $5709: $d0

    db $fd                                        ; $570a: $fd
    db $e4                                        ; $570b: $e4
    ld a, a                                       ; $570c: $7f
    ld b, b                                       ; $570d: $40
    ld a, a                                       ; $570e: $7f
    ld h, b                                       ; $570f: $60
    ccf                                           ; $5710: $3f
    inc hl                                        ; $5711: $23
    ld a, a                                       ; $5712: $7f
    ld [hl], c                                    ; $5713: $71
    cp [hl]                                       ; $5714: $be
    cp $6a                                        ; $5715: $fe $6a
    ld a, [hl]                                    ; $5717: $7e
    ld c, l                                       ; $5718: $4d
    ld a, a                                       ; $5719: $7f
    ld e, e                                       ; $571a: $5b
    ld a, a                                       ; $571b: $7f
    ld c, l                                       ; $571c: $4d
    ld a, a                                       ; $571d: $7f
    rst $20                                       ; $571e: $e7
    db $fd                                        ; $571f: $fd
    ld [bc], a                                    ; $5720: $02
    ld [bc], a                                    ; $5721: $02
    ld [bc], a                                    ; $5722: $02
    ld bc, $0206                                  ; $5723: $01 $06 $02
    add d                                         ; $5726: $82
    inc bc                                        ; $5727: $03
    ld bc, $0204                                  ; $5728: $01 $04 $02
    ld c, $00                                     ; $572b: $0e $00
    add d                                         ; $572d: $82
    db $fc                                        ; $572e: $fc
    db $ec                                        ; $572f: $ec
    ld [bc], a                                    ; $5730: $02
    ld h, b                                       ; $5731: $60
    adc b                                         ; $5732: $88
    rst $38                                       ; $5733: $ff
    ei                                            ; $5734: $fb
    cp l                                          ; $5735: $bd
    rst $38                                       ; $5736: $ff
    ei                                            ; $5737: $fb
    rst $38                                       ; $5738: $ff
    ld l, a                                       ; $5739: $6f
    ld a, a                                       ; $573a: $7f
    ld [bc], a                                    ; $573b: $02
    jr nc, jr_0e7_5754                            ; $573c: $30 $16

    nop                                           ; $573e: $00
    inc b                                         ; $573f: $04
    ld b, $81                                     ; $5740: $06 $81
    ld bc, $0703                                  ; $5742: $01 $03 $07
    ld d, $00                                     ; $5745: $16 $00
    rst $38                                       ; $5747: $ff
    rlca                                          ; $5748: $07
    ld bc, $08f9                                  ; $5749: $01 $f9 $08
    ld a, [c]                                     ; $574c: $f2
    ld bc, $fded                                  ; $574d: $01 $ed $fd
    adc d                                         ; $5750: $8a
    nop                                           ; $5751: $00
    ld l, h                                       ; $5752: $6c
    nop                                           ; $5753: $00

jr_0e7_5754:
    sbc c                                         ; $5754: $99
    nop                                           ; $5755: $00
    ld b, b                                       ; $5756: $40
    nop                                           ; $5757: $00
    ld b, b                                       ; $5758: $40
    nop                                           ; $5759: $00
    inc b                                         ; $575a: $04
    ld d, $00                                     ; $575b: $16 $00
    rst $38                                       ; $575d: $ff
    dec c                                         ; $575e: $0d
    inc b                                         ; $575f: $04
    ei                                            ; $5760: $fb
    dec b                                         ; $5761: $05
    rst $30                                       ; $5762: $f7
    cp $eb                                        ; $5763: $fe $eb
    db $fc                                        ; $5765: $fc
    db $ec                                        ; $5766: $ec
    cp $fb                                        ; $5767: $fe $fb
    ei                                            ; $5769: $fb
    ei                                            ; $576a: $fb
    db $fd                                        ; $576b: $fd
    ld [bc], a                                    ; $576c: $02
    ld a, $92                                     ; $576d: $3e $92
    ld b, l                                       ; $576f: $45
    ld b, c                                       ; $5770: $41
    xor e                                         ; $5771: $ab
    adc e                                         ; $5772: $8b
    rst $18                                       ; $5773: $df
    sub [hl]                                      ; $5774: $96
    rst $18                                       ; $5775: $df
    ret nc                                        ; $5776: $d0

    rst $38                                       ; $5777: $ff
    ld a, [c]                                     ; $5778: $f2
    ld a, a                                       ; $5779: $7f
    ld b, b                                       ; $577a: $40
    ld a, a                                       ; $577b: $7f
    ld h, b                                       ; $577c: $60
    ccf                                           ; $577d: $3f
    inc hl                                        ; $577e: $23
    ccf                                           ; $577f: $3f
    ld sp, $fe02                                  ; $5780: $31 $02 $fe
    adc d                                         ; $5783: $8a
    xor d                                         ; $5784: $aa
    cp $4d                                        ; $5785: $fe $4d
    ld a, a                                       ; $5787: $7f
    ld e, e                                       ; $5788: $5b
    ld a, a                                       ; $5789: $7f
    ld c, l                                       ; $578a: $4d
    ld a, a                                       ; $578b: $7f
    ld e, l                                       ; $578c: $5d
    ld a, a                                       ; $578d: $7f
    ld [bc], a                                    ; $578e: $02
    ld [bc], a                                    ; $578f: $02
    ld [bc], a                                    ; $5790: $02
    ld bc, $0206                                  ; $5791: $01 $06 $02
    add d                                         ; $5794: $82
    inc bc                                        ; $5795: $03
    ld bc, $0204                                  ; $5796: $01 $04 $02
    ld c, $00                                     ; $5799: $0e $00
    add d                                         ; $579b: $82
    cp [hl]                                       ; $579c: $be
    cp $02                                        ; $579d: $fe $02
    jr nz, @-$7a                                  ; $579f: $20 $84

    ld a, a                                       ; $57a1: $7f
    ld h, h                                       ; $57a2: $64
    ld a, [hl]                                    ; $57a3: $7e
    ld a, a                                       ; $57a4: $7f

jr_0e7_57a5:
    ld [bc], a                                    ; $57a5: $02
    rst $38                                       ; $57a6: $ff
    add h                                         ; $57a7: $84
    cp [hl]                                       ; $57a8: $be
    rst $38                                       ; $57a9: $ff
    ld e, a                                       ; $57aa: $5f
    ld a, a                                       ; $57ab: $7f
    ld [bc], a                                    ; $57ac: $02
    jr c, jr_0e7_57c3                             ; $57ad: $38 $14

    nop                                           ; $57af: $00
    inc b                                         ; $57b0: $04
    inc bc                                        ; $57b1: $03
    ld [bc], a                                    ; $57b2: $02
    ld [bc], a                                    ; $57b3: $02
    ld [bc], a                                    ; $57b4: $02
    inc bc                                        ; $57b5: $03
    ld [bc], a                                    ; $57b6: $02
    ld [bc], a                                    ; $57b7: $02
    inc d                                         ; $57b8: $14
    nop                                           ; $57b9: $00
    rst $38                                       ; $57ba: $ff
    rlca                                          ; $57bb: $07
    ld bc, $08f9                                  ; $57bc: $01 $f9 $08
    ld a, [c]                                     ; $57bf: $f2
    ld bc, $fdec                                  ; $57c0: $01 $ec $fd

jr_0e7_57c3:
    adc b                                         ; $57c3: $88
    nop                                           ; $57c4: $00
    ld [hl], h                                    ; $57c5: $74
    nop                                           ; $57c6: $00
    xor c                                         ; $57c7: $a9
    nop                                           ; $57c8: $00
    ld b, b                                       ; $57c9: $40
    nop                                           ; $57ca: $00
    ld b, b                                       ; $57cb: $40
    jr jr_0e7_57ce                                ; $57cc: $18 $00

jr_0e7_57ce:
    rst $38                                       ; $57ce: $ff
    dec c                                         ; $57cf: $0d
    inc b                                         ; $57d0: $04
    ei                                            ; $57d1: $fb
    dec b                                         ; $57d2: $05
    rst $30                                       ; $57d3: $f7
    cp $eb                                        ; $57d4: $fe $eb
    db $fc                                        ; $57d6: $fc
    db $ec                                        ; $57d7: $ec
    cp $fb                                        ; $57d8: $fe $fb
    ei                                            ; $57da: $fb
    ei                                            ; $57db: $fb
    nop                                           ; $57dc: $00
    ld [bc], a                                    ; $57dd: $02
    ld a, $92                                     ; $57de: $3e $92
    ld b, l                                       ; $57e0: $45
    ld b, c                                       ; $57e1: $41
    cp c                                          ; $57e2: $b9
    adc c                                         ; $57e3: $89
    adc a                                         ; $57e4: $8f
    adc [hl]                                      ; $57e5: $8e
    rst $18                                       ; $57e6: $df
    ret c                                         ; $57e7: $d8

    rst $38                                       ; $57e8: $ff
    pop af                                        ; $57e9: $f1
    ld l, a                                       ; $57ea: $6f
    ld b, b                                       ; $57eb: $40
    ld a, a                                       ; $57ec: $7f
    ld h, b                                       ; $57ed: $60
    ccf                                           ; $57ee: $3f
    ld hl, $313f                                  ; $57ef: $21 $3f $31
    ld [bc], a                                    ; $57f2: $02
    ld a, [hl]                                    ; $57f3: $7e
    adc d                                         ; $57f4: $8a
    xor d                                         ; $57f5: $aa
    cp $4d                                        ; $57f6: $fe $4d
    ld a, a                                       ; $57f8: $7f
    ld e, e                                       ; $57f9: $5b
    ld a, a                                       ; $57fa: $7f
    sbc l                                         ; $57fb: $9d
    rst $38                                       ; $57fc: $ff
    cp l                                          ; $57fd: $bd
    rst $38                                       ; $57fe: $ff
    ld [bc], a                                    ; $57ff: $02
    ld [bc], a                                    ; $5800: $02
    ld [bc], a                                    ; $5801: $02
    ld bc, $0206                                  ; $5802: $01 $06 $02
    add d                                         ; $5805: $82
    inc bc                                        ; $5806: $03
    ld bc, $0204                                  ; $5807: $01 $04 $02
    ld c, $00                                     ; $580a: $0e $00
    add d                                         ; $580c: $82
    ld a, h                                       ; $580d: $7c
    db $fc                                        ; $580e: $fc
    ld [bc], a                                    ; $580f: $02
    ld h, b                                       ; $5810: $60
    adc d                                         ; $5811: $8a
    ld a, a                                       ; $5812: $7f
    ld c, a                                       ; $5813: $4f
    db $fd                                        ; $5814: $fd
    di                                            ; $5815: $f3
    cp l                                          ; $5816: $bd
    rst $38                                       ; $5817: $ff
    cp e                                          ; $5818: $bb
    rst $38                                       ; $5819: $ff
    rst $18                                       ; $581a: $df
    rst $38                                       ; $581b: $ff
    ld [bc], a                                    ; $581c: $02
    dec a                                         ; $581d: $3d
    inc d                                         ; $581e: $14
    nop                                           ; $581f: $00
    ld [bc], a                                    ; $5820: $02
    jr jr_0e7_57a5                                ; $5821: $18 $82

    ld [$0218], sp                                ; $5823: $08 $18 $02
    ld e, $82                                     ; $5826: $1e $82
    add hl, de                                    ; $5828: $19
    rra                                           ; $5829: $1f
    ld [bc], a                                    ; $582a: $02
    ld e, $02                                     ; $582b: $1e $02
    jr jr_0e7_5841                                ; $582d: $18 $12

    nop                                           ; $582f: $00
    rst $38                                       ; $5830: $ff
    rlca                                          ; $5831: $07
    ld bc, $08f9                                  ; $5832: $01 $f9 $08
    ld a, [c]                                     ; $5835: $f2
    ld bc, $fdec                                  ; $5836: $01 $ec $fd
    adc b                                         ; $5839: $88
    nop                                           ; $583a: $00
    ld [hl], h                                    ; $583b: $74
    nop                                           ; $583c: $00
    adc l                                         ; $583d: $8d
    nop                                           ; $583e: $00
    ldh [rP1], a                                  ; $583f: $e0 $00

jr_0e7_5841:
    ld b, b                                       ; $5841: $40
    inc bc                                        ; $5842: $03
    nop                                           ; $5843: $00
    add c                                         ; $5844: $81
    jr nz, jr_0e7_585b                            ; $5845: $20 $14

    nop                                           ; $5847: $00
    rst $38                                       ; $5848: $ff
    dec c                                         ; $5849: $0d
    inc b                                         ; $584a: $04
    ei                                            ; $584b: $fb
    dec b                                         ; $584c: $05
    rst $30                                       ; $584d: $f7
    cp $ec                                        ; $584e: $fe $ec
    db $fc                                        ; $5850: $fc
    db $ed                                        ; $5851: $ed
    cp $fc                                        ; $5852: $fe $fc
    ei                                            ; $5854: $fb
    db $fc                                        ; $5855: $fc
    cp $02                                        ; $5856: $fe $02
    ld a, $9e                                     ; $5858: $3e $9e
    ld b, l                                       ; $585a: $45

jr_0e7_585b:
    ld b, c                                       ; $585b: $41
    cp c                                          ; $585c: $b9
    adc c                                         ; $585d: $89
    adc a                                         ; $585e: $8f
    adc [hl]                                      ; $585f: $8e
    rst $18                                       ; $5860: $df
    ret c                                         ; $5861: $d8

    rst $38                                       ; $5862: $ff
    pop af                                        ; $5863: $f1
    ld l, a                                       ; $5864: $6f
    ld b, b                                       ; $5865: $40
    ld a, a                                       ; $5866: $7f
    ld h, b                                       ; $5867: $60
    ccf                                           ; $5868: $3f
    ld hl, $717f                                  ; $5869: $21 $7f $71
    cp [hl]                                       ; $586c: $be
    cp $6a                                        ; $586d: $fe $6a
    ld a, [hl]                                    ; $586f: $7e
    ld c, l                                       ; $5870: $4d
    ld a, a                                       ; $5871: $7f
    ld e, e                                       ; $5872: $5b
    ld a, a                                       ; $5873: $7f
    call $ddff                                    ; $5874: $cd $ff $dd
    rst $38                                       ; $5877: $ff
    ld [bc], a                                    ; $5878: $02
    ld [bc], a                                    ; $5879: $02
    ld [bc], a                                    ; $587a: $02
    ld bc, $0206                                  ; $587b: $01 $06 $02
    add d                                         ; $587e: $82
    inc bc                                        ; $587f: $03
    ld bc, $0204                                  ; $5880: $01 $04 $02
    ld c, $00                                     ; $5883: $0e $00
    add d                                         ; $5885: $82
    cp h                                          ; $5886: $bc
    db $fc                                        ; $5887: $fc
    ld [bc], a                                    ; $5888: $02
    ldh [$88], a                                  ; $5889: $e0 $88
    cp $e7                                        ; $588b: $fe $e7
    cp $f9                                        ; $588d: $fe $f9
    cp l                                          ; $588f: $bd
    rst $38                                       ; $5890: $ff
    cp [hl]                                       ; $5891: $be
    rst $38                                       ; $5892: $ff
    ld [bc], a                                    ; $5893: $02
    ld a, a                                       ; $5894: $7f
    ld d, $00                                     ; $5895: $16 $00
    ld [bc], a                                    ; $5897: $02
    inc b                                         ; $5898: $04
    inc b                                         ; $5899: $04
    ld b, $81                                     ; $589a: $06 $81
    ld bc, $0703                                  ; $589c: $01 $03 $07
    inc d                                         ; $589f: $14
    nop                                           ; $58a0: $00
    rst $38                                       ; $58a1: $ff
    rlca                                          ; $58a2: $07
    ld bc, $08f9                                  ; $58a3: $01 $f9 $08
    ld a, [c]                                     ; $58a6: $f2
    ld bc, $fded                                  ; $58a7: $01 $ed $fd
    adc b                                         ; $58aa: $88
    nop                                           ; $58ab: $00
    ld [hl], h                                    ; $58ac: $74
    nop                                           ; $58ad: $00
    adc l                                         ; $58ae: $8d
    nop                                           ; $58af: $00
    ldh [rP1], a                                  ; $58b0: $e0 $00
    ld b, b                                       ; $58b2: $40
    inc bc                                        ; $58b3: $03
    nop                                           ; $58b4: $00
    add c                                         ; $58b5: $81
    jr nz, jr_0e7_58cc                            ; $58b6: $20 $14

    nop                                           ; $58b8: $00
    rst $38                                       ; $58b9: $ff
    dec c                                         ; $58ba: $0d
    inc b                                         ; $58bb: $04
    ei                                            ; $58bc: $fb
    dec b                                         ; $58bd: $05
    rst $30                                       ; $58be: $f7
    cp $eb                                        ; $58bf: $fe $eb
    db $fc                                        ; $58c1: $fc
    db $ec                                        ; $58c2: $ec
    cp $fb                                        ; $58c3: $fe $fb
    ei                                            ; $58c5: $fb
    ei                                            ; $58c6: $fb
    db $fd                                        ; $58c7: $fd
    ld [bc], a                                    ; $58c8: $02
    ld a, $92                                     ; $58c9: $3e $92
    ld b, l                                       ; $58cb: $45

jr_0e7_58cc:
    ld b, c                                       ; $58cc: $41
    xor e                                         ; $58cd: $ab
    adc e                                         ; $58ce: $8b
    rst $18                                       ; $58cf: $df
    sub [hl]                                      ; $58d0: $96
    rst $18                                       ; $58d1: $df
    ret nc                                        ; $58d2: $d0

    rst $38                                       ; $58d3: $ff
    ld a, [c]                                     ; $58d4: $f2
    ld a, a                                       ; $58d5: $7f
    ld b, b                                       ; $58d6: $40
    ld a, a                                       ; $58d7: $7f
    ld h, b                                       ; $58d8: $60
    ccf                                           ; $58d9: $3f
    inc hl                                        ; $58da: $23
    ccf                                           ; $58db: $3f
    ld sp, $fe02                                  ; $58dc: $31 $02 $fe
    adc d                                         ; $58df: $8a
    xor d                                         ; $58e0: $aa
    cp $4d                                        ; $58e1: $fe $4d
    ld a, a                                       ; $58e3: $7f
    ld e, e                                       ; $58e4: $5b
    ld a, a                                       ; $58e5: $7f
    ld c, l                                       ; $58e6: $4d
    ld a, a                                       ; $58e7: $7f
    ld l, l                                       ; $58e8: $6d
    ld a, a                                       ; $58e9: $7f

jr_0e7_58ea:
    ld [bc], a                                    ; $58ea: $02
    ld [bc], a                                    ; $58eb: $02
    ld [bc], a                                    ; $58ec: $02
    ld bc, $0206                                  ; $58ed: $01 $06 $02
    add d                                         ; $58f0: $82
    inc bc                                        ; $58f1: $03
    ld bc, $0204                                  ; $58f2: $01 $04 $02
    ld c, $00                                     ; $58f5: $0e $00
    add d                                         ; $58f7: $82
    cp $d2                                        ; $58f8: $fe $d2
    ld [bc], a                                    ; $58fa: $02

Call_0e7_58fb:
    ld h, b                                       ; $58fb: $60
    adc d                                         ; $58fc: $8a
    ld a, e                                       ; $58fd: $7b
    ld [hl], a                                    ; $58fe: $77
    db $fd                                        ; $58ff: $fd
    rst $38                                       ; $5900: $ff
    cp d                                          ; $5901: $ba
    rst $38                                       ; $5902: $ff
    cp a                                          ; $5903: $bf
    rst $38                                       ; $5904: $ff
    ld a, b                                       ; $5905: $78
    ld a, a                                       ; $5906: $7f
    ld [bc], a                                    ; $5907: $02
    ccf                                           ; $5908: $3f
    inc d                                         ; $5909: $14
    nop                                           ; $590a: $00
    ld [bc], a                                    ; $590b: $02
    inc bc                                        ; $590c: $03
    ld a, [bc]                                    ; $590d: $0a
    ld [bc], a                                    ; $590e: $02
    ld [de], a                                    ; $590f: $12
    nop                                           ; $5910: $00
    rst $38                                       ; $5911: $ff
    rlca                                          ; $5912: $07
    ld bc, $08f9                                  ; $5913: $01 $f9 $08
    ld a, [c]                                     ; $5916: $f2
    ld bc, $fdec                                  ; $5917: $01 $ec $fd
    adc b                                         ; $591a: $88
    nop                                           ; $591b: $00
    ld [hl], h                                    ; $591c: $74
    nop                                           ; $591d: $00
    xor c                                         ; $591e: $a9
    nop                                           ; $591f: $00
    ld b, b                                       ; $5920: $40
    nop                                           ; $5921: $00
    ld b, b                                       ; $5922: $40
    jr jr_0e7_5925                                ; $5923: $18 $00

jr_0e7_5925:
    rst $38                                       ; $5925: $ff
    dec c                                         ; $5926: $0d
    inc b                                         ; $5927: $04
    ld hl, sp+$07                                 ; $5928: $f8 $07
    ld a, [c]                                     ; $592a: $f2
    ld bc, $faea                                  ; $592b: $01 $ea $fa
    ld [$faff], a                                 ; $592e: $ea $ff $fa
    ld a, [$fffa]                                 ; $5931: $fa $fa $ff
    ld [bc], a                                    ; $5934: $02
    rrca                                          ; $5935: $0f
    adc l                                         ; $5936: $8d
    ld [de], a                                    ; $5937: $12
    rra                                           ; $5938: $1f
    jr z, jr_0e7_5972                             ; $5939: $28 $37

    ld hl, $203e                                  ; $593b: $21 $3e $20
    ccf                                           ; $593e: $3f
    jr nz, jr_0e7_5980                            ; $593f: $20 $3f

    dec [hl]                                      ; $5941: $35
    ccf                                           ; $5942: $3f
    jr jr_0e7_5947                                ; $5943: $18 $02

    rra                                           ; $5945: $1f
    add c                                         ; $5946: $81

jr_0e7_5947:
    rla                                           ; $5947: $17
    ld [bc], a                                    ; $5948: $02
    rrca                                          ; $5949: $0f
    adc h                                         ; $594a: $8c
    jr nc, jr_0e7_598c                            ; $594b: $30 $3f

    ld b, b                                       ; $594d: $40
    ld a, a                                       ; $594e: $7f
    ld d, b                                       ; $594f: $50
    ld a, a                                       ; $5950: $7f
    ret nc                                        ; $5951: $d0

    rst $38                                       ; $5952: $ff
    or h                                          ; $5953: $b4
    rst $38                                       ; $5954: $ff
    db $e3                                        ; $5955: $e3
    rst $38                                       ; $5956: $ff
    ld [bc], a                                    ; $5957: $02
    db $10                                        ; $5958: $10
    adc h                                         ; $5959: $8c
    jr jr_0e7_5964                                ; $595a: $18 $08

    inc d                                         ; $595c: $14
    inc c                                         ; $595d: $0c
    inc b                                         ; $595e: $04
    inc e                                         ; $595f: $1c
    inc b                                         ; $5960: $04
    inc e                                         ; $5961: $1c
    inc d                                         ; $5962: $14
    inc e                                         ; $5963: $1c

jr_0e7_5964:
    inc c                                         ; $5964: $0c
    inc e                                         ; $5965: $1c
    inc bc                                        ; $5966: $03
    jr jr_0e7_58ea                                ; $5967: $18 $81

    ld [$1002], sp                                ; $5969: $08 $02 $10
    adc [hl]                                      ; $596c: $8e
    inc c                                         ; $596d: $0c
    inc e                                         ; $596e: $1c
    ld [bc], a                                    ; $596f: $02
    ld e, $0a                                     ; $5970: $1e $0a

jr_0e7_5972:
    ld e, $0b                                     ; $5972: $1e $0b
    rra                                           ; $5974: $1f
    dec c                                         ; $5975: $0d
    rra                                           ; $5976: $1f
    rlca                                          ; $5977: $07
    rra                                           ; $5978: $1f
    ldh a, [$bf]                                  ; $5979: $f0 $bf
    ld [bc], a                                    ; $597b: $02
    rst $18                                       ; $597c: $df
    inc b                                         ; $597d: $04
    rra                                           ; $597e: $1f
    ld [bc], a                                    ; $597f: $02

jr_0e7_5980:
    ccf                                           ; $5980: $3f
    inc bc                                        ; $5981: $03
    dec a                                         ; $5982: $3d
    add c                                         ; $5983: $81
    dec l                                         ; $5984: $2d
    ld [bc], a                                    ; $5985: $02
    jr jr_0e7_5998                                ; $5986: $18 $10

    nop                                           ; $5988: $00
    add d                                         ; $5989: $82
    rrca                                          ; $598a: $0f
    dec e                                         ; $598b: $1d

jr_0e7_598c:
    ld [bc], a                                    ; $598c: $02
    dec de                                        ; $598d: $1b
    inc b                                         ; $598e: $04
    jr @+$07                                      ; $598f: $18 $05

    inc e                                         ; $5991: $1c
    add c                                         ; $5992: $81
    inc d                                         ; $5993: $14
    ld [bc], a                                    ; $5994: $02
    jr jr_0e7_59a7                                ; $5995: $18 $10

    nop                                           ; $5997: $00

jr_0e7_5998:
    rst $38                                       ; $5998: $ff
    dec c                                         ; $5999: $0d
    inc b                                         ; $599a: $04
    ld hl, sp+$07                                 ; $599b: $f8 $07
    ld a, [c]                                     ; $599d: $f2
    ld bc, $faea                                  ; $599e: $01 $ea $fa
    ld [$faff], a                                 ; $59a1: $ea $ff $fa
    ld a, [$fefa]                                 ; $59a4: $fa $fa $fe

jr_0e7_59a7:
    ld [bc], a                                    ; $59a7: $02
    rrca                                          ; $59a8: $0f
    adc l                                         ; $59a9: $8d
    ld a, [de]                                    ; $59aa: $1a
    rla                                           ; $59ab: $17
    jr nz, jr_0e7_59ed                            ; $59ac: $20 $3f

    ld [hl+], a                                   ; $59ae: $22
    dec a                                         ; $59af: $3d
    jr nz, jr_0e7_59f1                            ; $59b0: $20 $3f

    jr nz, jr_0e7_59f3                            ; $59b2: $20 $3f

    dec sp                                        ; $59b4: $3b
    ccf                                           ; $59b5: $3f
    add hl, de                                    ; $59b6: $19
    ld [bc], a                                    ; $59b7: $02
    rra                                           ; $59b8: $1f
    add c                                         ; $59b9: $81
    ld e, $02                                     ; $59ba: $1e $02
    rrca                                          ; $59bc: $0f
    adc h                                         ; $59bd: $8c
    db $10                                        ; $59be: $10
    rra                                           ; $59bf: $1f
    jr nz, jr_0e7_5a01                            ; $59c0: $20 $3f

    ld d, b                                       ; $59c2: $50
    ld a, a                                       ; $59c3: $7f
    ld d, b                                       ; $59c4: $50
    ld a, a                                       ; $59c5: $7f
    sub b                                         ; $59c6: $90
    rst $38                                       ; $59c7: $ff
    and a                                         ; $59c8: $a7
    rst $38                                       ; $59c9: $ff
    ld [bc], a                                    ; $59ca: $02
    db $10                                        ; $59cb: $10
    adc e                                         ; $59cc: $8b
    jr jr_0e7_59d7                                ; $59cd: $18 $08

    inc d                                         ; $59cf: $14
    inc c                                         ; $59d0: $0c
    inc b                                         ; $59d1: $04
    inc e                                         ; $59d2: $1c
    inc b                                         ; $59d3: $04
    inc e                                         ; $59d4: $1c
    inc d                                         ; $59d5: $14
    inc e                                         ; $59d6: $1c

jr_0e7_59d7:
    ld [$1804], sp                                ; $59d7: $08 $04 $18
    add c                                         ; $59da: $81
    ld [$1002], sp                                ; $59db: $08 $02 $10
    adc l                                         ; $59de: $8d
    inc c                                         ; $59df: $0c
    inc e                                         ; $59e0: $1c
    ld [bc], a                                    ; $59e1: $02
    ld e, $0b                                     ; $59e2: $1e $0b
    rra                                           ; $59e4: $1f
    dec c                                         ; $59e5: $0d
    rra                                           ; $59e6: $1f
    dec e                                         ; $59e7: $1d
    rra                                           ; $59e8: $1f
    rlca                                          ; $59e9: $07
    rra                                           ; $59ea: $1f
    ldh a, [rSC]                                  ; $59eb: $f0 $02

jr_0e7_59ed:
    rst $38                                       ; $59ed: $ff
    add e                                         ; $59ee: $83
    cp a                                          ; $59ef: $bf
    rst $18                                       ; $59f0: $df

jr_0e7_59f1:
    cp a                                          ; $59f1: $bf
    ld [bc], a                                    ; $59f2: $02

jr_0e7_59f3:
    ld a, a                                       ; $59f3: $7f
    inc bc                                        ; $59f4: $03
    ccf                                           ; $59f5: $3f
    add c                                         ; $59f6: $81
    scf                                           ; $59f7: $37
    ld [bc], a                                    ; $59f8: $02
    add hl, de                                    ; $59f9: $19
    ld [bc], a                                    ; $59fa: $02
    ld bc, $0010                                  ; $59fb: $01 $10 $00
    add d                                         ; $59fe: $82
    rlca                                          ; $59ff: $07
    rrca                                          ; $5a00: $0f

jr_0e7_5a01:
    inc b                                         ; $5a01: $04
    inc c                                         ; $5a02: $0c
    dec b                                         ; $5a03: $05
    ld c, $81                                     ; $5a04: $0e $81
    ld b, $04                                     ; $5a06: $06 $04
    ld c, $10                                     ; $5a08: $0e $10
    nop                                           ; $5a0a: $00
    rst $38                                       ; $5a0b: $ff
    dec c                                         ; $5a0c: $0d
    inc b                                         ; $5a0d: $04
    ld hl, sp+$07                                 ; $5a0e: $f8 $07
    ld a, [c]                                     ; $5a10: $f2
    ld bc, $faeb                                  ; $5a11: $01 $eb $fa
    db $eb                                        ; $5a14: $eb
    rst $38                                       ; $5a15: $ff
    ei                                            ; $5a16: $fb
    ld a, [$fffb]                                 ; $5a17: $fa $fb $ff
    ld [bc], a                                    ; $5a1a: $02
    rrca                                          ; $5a1b: $0f
    adc l                                         ; $5a1c: $8d
    ld a, [de]                                    ; $5a1d: $1a
    rla                                           ; $5a1e: $17
    jr nz, jr_0e7_5a60                            ; $5a1f: $20 $3f

    ld [hl+], a                                   ; $5a21: $22
    dec a                                         ; $5a22: $3d
    jr nz, jr_0e7_5a64                            ; $5a23: $20 $3f

    jr nz, jr_0e7_5a66                            ; $5a25: $20 $3f

    dec sp                                        ; $5a27: $3b
    ccf                                           ; $5a28: $3f
    add hl, de                                    ; $5a29: $19
    ld [bc], a                                    ; $5a2a: $02
    rra                                           ; $5a2b: $1f
    add c                                         ; $5a2c: $81
    ld e, $02                                     ; $5a2d: $1e $02
    rrca                                          ; $5a2f: $0f
    adc h                                         ; $5a30: $8c
    jr nc, jr_0e7_5a72                            ; $5a31: $30 $3f

    jr nz, jr_0e7_5a74                            ; $5a33: $20 $3f

    ld d, b                                       ; $5a35: $50
    ld a, a                                       ; $5a36: $7f
    ld d, b                                       ; $5a37: $50
    ld a, a                                       ; $5a38: $7f
    or b                                          ; $5a39: $b0
    rst $38                                       ; $5a3a: $ff
    rst $20                                       ; $5a3b: $e7
    rst $38                                       ; $5a3c: $ff
    ld [bc], a                                    ; $5a3d: $02
    db $10                                        ; $5a3e: $10
    adc e                                         ; $5a3f: $8b
    jr jr_0e7_5a4a                                ; $5a40: $18 $08

    inc d                                         ; $5a42: $14
    inc c                                         ; $5a43: $0c
    inc b                                         ; $5a44: $04
    inc e                                         ; $5a45: $1c
    inc b                                         ; $5a46: $04
    inc e                                         ; $5a47: $1c
    inc d                                         ; $5a48: $14
    inc e                                         ; $5a49: $1c

jr_0e7_5a4a:
    ld [$1804], sp                                ; $5a4a: $08 $04 $18
    add c                                         ; $5a4d: $81
    ld [$1002], sp                                ; $5a4e: $08 $02 $10
    adc l                                         ; $5a51: $8d
    inc c                                         ; $5a52: $0c
    inc e                                         ; $5a53: $1c
    ld [bc], a                                    ; $5a54: $02
    ld e, $0a                                     ; $5a55: $1e $0a
    ld e, $0d                                     ; $5a57: $1e $0d
    rra                                           ; $5a59: $1f
    dec c                                         ; $5a5a: $0d
    rra                                           ; $5a5b: $1f
    rlca                                          ; $5a5c: $07
    rra                                           ; $5a5d: $1f
    or b                                          ; $5a5e: $b0
    ld [bc], a                                    ; $5a5f: $02

jr_0e7_5a60:
    rst $38                                       ; $5a60: $ff
    add c                                         ; $5a61: $81
    cp a                                          ; $5a62: $bf
    ld [bc], a                                    ; $5a63: $02

jr_0e7_5a64:
    ld a, a                                       ; $5a64: $7f
    inc bc                                        ; $5a65: $03

jr_0e7_5a66:
    ccf                                           ; $5a66: $3f
    add c                                         ; $5a67: $81
    daa                                           ; $5a68: $27
    ld [bc], a                                    ; $5a69: $02
    dec a                                         ; $5a6a: $3d
    ld [bc], a                                    ; $5a6b: $02
    ld bc, $0012                                  ; $5a6c: $01 $12 $00
    add d                                         ; $5a6f: $82
    rrca                                          ; $5a70: $0f
    rra                                           ; $5a71: $1f

jr_0e7_5a72:
    dec b                                         ; $5a72: $05
    inc e                                         ; $5a73: $1c

jr_0e7_5a74:
    add c                                         ; $5a74: $81
    inc c                                         ; $5a75: $0c
    inc b                                         ; $5a76: $04
    inc e                                         ; $5a77: $1c
    ld [bc], a                                    ; $5a78: $02
    jr jr_0e7_5a8d                                ; $5a79: $18 $12

    nop                                           ; $5a7b: $00
    rst $38                                       ; $5a7c: $ff
    dec c                                         ; $5a7d: $0d
    inc b                                         ; $5a7e: $04
    ld hl, sp+$07                                 ; $5a7f: $f8 $07
    ld a, [c]                                     ; $5a81: $f2
    ld bc, $faea                                  ; $5a82: $01 $ea $fa
    ld [$faff], a                                 ; $5a85: $ea $ff $fa
    ld a, [$fffa]                                 ; $5a88: $fa $fa $ff
    ld [bc], a                                    ; $5a8b: $02
    rrca                                          ; $5a8c: $0f

jr_0e7_5a8d:
    adc l                                         ; $5a8d: $8d
    ld [de], a                                    ; $5a8e: $12
    rra                                           ; $5a8f: $1f
    jr z, jr_0e7_5ac9                             ; $5a90: $28 $37

    ld hl, $203e                                  ; $5a92: $21 $3e $20
    ccf                                           ; $5a95: $3f
    jr nz, jr_0e7_5ad7                            ; $5a96: $20 $3f

    dec [hl]                                      ; $5a98: $35
    ccf                                           ; $5a99: $3f
    jr jr_0e7_5a9e                                ; $5a9a: $18 $02

    rra                                           ; $5a9c: $1f
    add c                                         ; $5a9d: $81

jr_0e7_5a9e:
    rla                                           ; $5a9e: $17
    ld [bc], a                                    ; $5a9f: $02
    rrca                                          ; $5aa0: $0f
    adc h                                         ; $5aa1: $8c
    jr nc, jr_0e7_5ae3                            ; $5aa2: $30 $3f

    ld b, b                                       ; $5aa4: $40
    ld a, a                                       ; $5aa5: $7f
    ld d, b                                       ; $5aa6: $50
    ld a, a                                       ; $5aa7: $7f
    ret nc                                        ; $5aa8: $d0

    rst $38                                       ; $5aa9: $ff
    or h                                          ; $5aaa: $b4
    rst $38                                       ; $5aab: $ff
    db $e3                                        ; $5aac: $e3
    rst $38                                       ; $5aad: $ff
    ld [bc], a                                    ; $5aae: $02
    db $10                                        ; $5aaf: $10
    adc h                                         ; $5ab0: $8c
    jr jr_0e7_5abb                                ; $5ab1: $18 $08

    inc d                                         ; $5ab3: $14
    inc c                                         ; $5ab4: $0c
    inc b                                         ; $5ab5: $04
    inc e                                         ; $5ab6: $1c
    inc b                                         ; $5ab7: $04
    inc e                                         ; $5ab8: $1c
    inc d                                         ; $5ab9: $14
    inc e                                         ; $5aba: $1c

jr_0e7_5abb:
    inc c                                         ; $5abb: $0c
    inc e                                         ; $5abc: $1c
    inc bc                                        ; $5abd: $03
    jr @-$7d                                      ; $5abe: $18 $81

Call_0e7_5ac0:
    ld [$1002], sp                                ; $5ac0: $08 $02 $10
    adc [hl]                                      ; $5ac3: $8e
    inc c                                         ; $5ac4: $0c
    inc e                                         ; $5ac5: $1c
    ld [bc], a                                    ; $5ac6: $02
    ld e, $0a                                     ; $5ac7: $1e $0a

jr_0e7_5ac9:
    ld e, $0b                                     ; $5ac9: $1e $0b
    rra                                           ; $5acb: $1f
    dec c                                         ; $5acc: $0d
    rra                                           ; $5acd: $1f
    rlca                                          ; $5ace: $07
    rra                                           ; $5acf: $1f
    ldh a, [$bf]                                  ; $5ad0: $f0 $bf
    ld [bc], a                                    ; $5ad2: $02
    rst $18                                       ; $5ad3: $df
    inc b                                         ; $5ad4: $04
    rra                                           ; $5ad5: $1f
    ld [bc], a                                    ; $5ad6: $02

jr_0e7_5ad7:
    ccf                                           ; $5ad7: $3f
    inc bc                                        ; $5ad8: $03
    dec a                                         ; $5ad9: $3d
    add c                                         ; $5ada: $81
    dec h                                         ; $5adb: $25
    ld [bc], a                                    ; $5adc: $02
    jr c, @+$12                                   ; $5add: $38 $10

    nop                                           ; $5adf: $00
    add d                                         ; $5ae0: $82
    rrca                                          ; $5ae1: $0f
    dec e                                         ; $5ae2: $1d

jr_0e7_5ae3:
    ld [bc], a                                    ; $5ae3: $02
    rra                                           ; $5ae4: $1f
    ld [$021c], sp                                ; $5ae5: $08 $1c $02
    jr jr_0e7_5afc                                ; $5ae8: $18 $12

    nop                                           ; $5aea: $00
    rst $38                                       ; $5aeb: $ff
    dec c                                         ; $5aec: $0d
    inc b                                         ; $5aed: $04
    ld hl, sp+$07                                 ; $5aee: $f8 $07
    ld a, [c]                                     ; $5af0: $f2
    ld bc, $faea                                  ; $5af1: $01 $ea $fa
    ld [$faff], a                                 ; $5af4: $ea $ff $fa
    ei                                            ; $5af7: $fb
    ld a, [$02ff]                                 ; $5af8: $fa $ff $02

Call_0e7_5afb:
    rrca                                          ; $5afb: $0f

jr_0e7_5afc:
    adc l                                         ; $5afc: $8d
    ld [de], a                                    ; $5afd: $12
    rra                                           ; $5afe: $1f
    jr nz, jr_0e7_5b40                            ; $5aff: $20 $3f

    inc h                                         ; $5b01: $24
    dec sp                                        ; $5b02: $3b
    jr nz, jr_0e7_5b44                            ; $5b03: $20 $3f

    jr z, jr_0e7_5b46                             ; $5b05: $28 $3f

    ld [de], a                                    ; $5b07: $12
    rra                                           ; $5b08: $1f
    inc e                                         ; $5b09: $1c
    ld [bc], a                                    ; $5b0a: $02
    rra                                           ; $5b0b: $1f
    add c                                         ; $5b0c: $81
    inc de                                        ; $5b0d: $13
    ld [bc], a                                    ; $5b0e: $02
    rrca                                          ; $5b0f: $0f
    adc h                                         ; $5b10: $8c
    jr nc, @+$41                                  ; $5b11: $30 $3f

    ld b, b                                       ; $5b13: $40
    ld a, a                                       ; $5b14: $7f
    ret nc                                        ; $5b15: $d0

    rst $38                                       ; $5b16: $ff
    or b                                          ; $5b17: $b0
    rst $38                                       ; $5b18: $ff
    cp b                                          ; $5b19: $b8
    rst $38                                       ; $5b1a: $ff
    rst $20                                       ; $5b1b: $e7
    rst $38                                       ; $5b1c: $ff
    ld [bc], a                                    ; $5b1d: $02
    db $10                                        ; $5b1e: $10
    adc c                                         ; $5b1f: $89
    jr jr_0e7_5b2a                                ; $5b20: $18 $08

    inc d                                         ; $5b22: $14
    inc c                                         ; $5b23: $0c
    inc b                                         ; $5b24: $04
    inc e                                         ; $5b25: $1c
    inc b                                         ; $5b26: $04
    inc e                                         ; $5b27: $1c
    inc c                                         ; $5b28: $0c
    inc bc                                        ; $5b29: $03

jr_0e7_5b2a:
    inc e                                         ; $5b2a: $1c
    inc b                                         ; $5b2b: $04
    jr jr_0e7_5b30                                ; $5b2c: $18 $02

    db $10                                        ; $5b2e: $10
    adc [hl]                                      ; $5b2f: $8e

jr_0e7_5b30:
    ld [$0418], sp                                ; $5b30: $08 $18 $04
    inc e                                         ; $5b33: $1c
    ld a, [bc]                                    ; $5b34: $0a
    ld e, $0a                                     ; $5b35: $1e $0a
    ld e, $09                                     ; $5b37: $1e $09
    rra                                           ; $5b39: $1f
    dec b                                         ; $5b3a: $05
    rra                                           ; $5b3b: $1f
    ldh [rIE], a                                  ; $5b3c: $e0 $ff
    inc b                                         ; $5b3e: $04
    ccf                                           ; $5b3f: $3f

jr_0e7_5b40:
    dec b                                         ; $5b40: $05
    ld a, a                                       ; $5b41: $7f
    add c                                         ; $5b42: $81
    ld l, [hl]                                    ; $5b43: $6e

jr_0e7_5b44:
    ld [bc], a                                    ; $5b44: $02
    ld a, c                                       ; $5b45: $79

jr_0e7_5b46:
    ld [bc], a                                    ; $5b46: $02
    ld a, b                                       ; $5b47: $78
    stop                                          ; $5b48: $10 $00
    inc bc                                        ; $5b4a: $03
    rrca                                          ; $5b4b: $0f
    add e                                         ; $5b4c: $83
    dec c                                         ; $5b4d: $0d
    dec bc                                        ; $5b4e: $0b
    dec c                                         ; $5b4f: $0d
    ld [bc], a                                    ; $5b50: $02
    ld c, $04                                     ; $5b51: $0e $04
    inc c                                         ; $5b53: $0c
    ld [bc], a                                    ; $5b54: $02
    ld [$0012], sp                                ; $5b55: $08 $12 $00
    rst $38                                       ; $5b58: $ff
    dec c                                         ; $5b59: $0d
    inc b                                         ; $5b5a: $04
    ld hl, sp+$07                                 ; $5b5b: $f8 $07
    ld a, [c]                                     ; $5b5d: $f2
    ld bc, $faeb                                  ; $5b5e: $01 $eb $fa
    db $eb                                        ; $5b61: $eb
    rst $38                                       ; $5b62: $ff
    ei                                            ; $5b63: $fb
    ld a, [$fffb]                                 ; $5b64: $fa $fb $ff
    ld [bc], a                                    ; $5b67: $02
    rrca                                          ; $5b68: $0f
    adc l                                         ; $5b69: $8d
    ld [de], a                                    ; $5b6a: $12
    rra                                           ; $5b6b: $1f
    jr nz, jr_0e7_5bad                            ; $5b6c: $20 $3f

    inc h                                         ; $5b6e: $24
    dec sp                                        ; $5b6f: $3b
    jr nz, jr_0e7_5bb1                            ; $5b70: $20 $3f

    jr z, jr_0e7_5bb3                             ; $5b72: $28 $3f

    ld [de], a                                    ; $5b74: $12
    rra                                           ; $5b75: $1f
    inc e                                         ; $5b76: $1c
    ld [bc], a                                    ; $5b77: $02
    rra                                           ; $5b78: $1f
    add c                                         ; $5b79: $81
    inc de                                        ; $5b7a: $13
    ld [bc], a                                    ; $5b7b: $02
    rrca                                          ; $5b7c: $0f
    adc h                                         ; $5b7d: $8c
    jr nc, @+$41                                  ; $5b7e: $30 $3f

    ld b, b                                       ; $5b80: $40
    ld a, a                                       ; $5b81: $7f
    ld d, b                                       ; $5b82: $50
    ld a, a                                       ; $5b83: $7f
    or b                                          ; $5b84: $b0
    rst $38                                       ; $5b85: $ff
    or b                                          ; $5b86: $b0
    rst $38                                       ; $5b87: $ff
    rst $20                                       ; $5b88: $e7
    rst $38                                       ; $5b89: $ff
    ld [bc], a                                    ; $5b8a: $02
    db $10                                        ; $5b8b: $10

jr_0e7_5b8c:
    adc c                                         ; $5b8c: $89
    jr jr_0e7_5b97                                ; $5b8d: $18 $08

    inc d                                         ; $5b8f: $14
    inc c                                         ; $5b90: $0c
    inc b                                         ; $5b91: $04
    inc e                                         ; $5b92: $1c
    inc b                                         ; $5b93: $04
    inc e                                         ; $5b94: $1c
    inc c                                         ; $5b95: $0c
    inc bc                                        ; $5b96: $03

jr_0e7_5b97:
    inc e                                         ; $5b97: $1c
    inc b                                         ; $5b98: $04
    jr jr_0e7_5b9d                                ; $5b99: $18 $02

    db $10                                        ; $5b9b: $10
    adc [hl]                                      ; $5b9c: $8e

jr_0e7_5b9d:
    inc c                                         ; $5b9d: $0c
    inc e                                         ; $5b9e: $1c
    inc b                                         ; $5b9f: $04
    inc e                                         ; $5ba0: $1c
    ld a, [bc]                                    ; $5ba1: $0a
    ld e, $0a                                     ; $5ba2: $1e $0a
    ld e, $0d                                     ; $5ba4: $1e $0d
    rra                                           ; $5ba6: $1f
    rlca                                          ; $5ba7: $07
    rra                                           ; $5ba8: $1f
    ldh a, [rIE]                                  ; $5ba9: $f0 $ff
    dec b                                         ; $5bab: $05
    ccf                                           ; $5bac: $3f

jr_0e7_5bad:
    add c                                         ; $5bad: $81
    scf                                           ; $5bae: $37
    ld [bc], a                                    ; $5baf: $02
    ccf                                           ; $5bb0: $3f

jr_0e7_5bb1:
    ld [bc], a                                    ; $5bb1: $02
    dec a                                         ; $5bb2: $3d

jr_0e7_5bb3:
    ld [bc], a                                    ; $5bb3: $02
    inc e                                         ; $5bb4: $1c
    ld [de], a                                    ; $5bb5: $12
    nop                                           ; $5bb6: $00
    add c                                         ; $5bb7: $81
    dec c                                         ; $5bb8: $0d
    ld [bc], a                                    ; $5bb9: $02
    rra                                           ; $5bba: $1f
    add c                                         ; $5bbb: $81
    dec e                                         ; $5bbc: $1d
    ld [bc], a                                    ; $5bbd: $02
    ld e, $03                                     ; $5bbe: $1e $03
    inc e                                         ; $5bc0: $1c
    add c                                         ; $5bc1: $81
    inc b                                         ; $5bc2: $04
    ld [bc], a                                    ; $5bc3: $02
    inc e                                         ; $5bc4: $1c
    inc d                                         ; $5bc5: $14
    nop                                           ; $5bc6: $00
    rst $38                                       ; $5bc7: $ff
    dec c                                         ; $5bc8: $0d
    inc b                                         ; $5bc9: $04
    ld hl, sp+$07                                 ; $5bca: $f8 $07
    ld a, [c]                                     ; $5bcc: $f2
    ld bc, $faea                                  ; $5bcd: $01 $ea $fa
    ld [$faff], a                                 ; $5bd0: $ea $ff $fa
    ld a, [$fffa]                                 ; $5bd3: $fa $fa $ff
    ld [bc], a                                    ; $5bd6: $02
    rrca                                          ; $5bd7: $0f
    adc l                                         ; $5bd8: $8d
    ld [de], a                                    ; $5bd9: $12
    rra                                           ; $5bda: $1f
    jr z, jr_0e7_5c14                             ; $5bdb: $28 $37

    ld hl, $203e                                  ; $5bdd: $21 $3e $20
    ccf                                           ; $5be0: $3f
    jr nz, jr_0e7_5c22                            ; $5be1: $20 $3f

    dec [hl]                                      ; $5be3: $35
    ccf                                           ; $5be4: $3f
    jr jr_0e7_5be9                                ; $5be5: $18 $02

    rra                                           ; $5be7: $1f
    add c                                         ; $5be8: $81

jr_0e7_5be9:
    rla                                           ; $5be9: $17
    ld [bc], a                                    ; $5bea: $02
    rrca                                          ; $5beb: $0f
    adc h                                         ; $5bec: $8c
    jr nc, @+$41                                  ; $5bed: $30 $3f

    ld b, b                                       ; $5bef: $40
    ld a, a                                       ; $5bf0: $7f
    ld d, b                                       ; $5bf1: $50
    ld a, a                                       ; $5bf2: $7f
    ret nc                                        ; $5bf3: $d0

    rst $38                                       ; $5bf4: $ff
    or c                                          ; $5bf5: $b1
    rst $38                                       ; $5bf6: $ff
    and $ff                                       ; $5bf7: $e6 $ff
    ld [bc], a                                    ; $5bf9: $02
    db $10                                        ; $5bfa: $10
    adc h                                         ; $5bfb: $8c
    jr jr_0e7_5c06                                ; $5bfc: $18 $08

    inc d                                         ; $5bfe: $14
    inc c                                         ; $5bff: $0c
    inc b                                         ; $5c00: $04
    inc e                                         ; $5c01: $1c
    inc b                                         ; $5c02: $04
    inc e                                         ; $5c03: $1c
    inc d                                         ; $5c04: $14
    inc e                                         ; $5c05: $1c

jr_0e7_5c06:
    inc c                                         ; $5c06: $0c
    inc e                                         ; $5c07: $1c
    inc bc                                        ; $5c08: $03
    jr jr_0e7_5b8c                                ; $5c09: $18 $81

    ld [$1002], sp                                ; $5c0b: $08 $02 $10

jr_0e7_5c0e:
    adc [hl]                                      ; $5c0e: $8e
    inc c                                         ; $5c0f: $0c
    inc e                                         ; $5c10: $1c
    ld [bc], a                                    ; $5c11: $02
    ld e, $0a                                     ; $5c12: $1e $0a

jr_0e7_5c14:
    ld e, $0b                                     ; $5c14: $1e $0b
    rra                                           ; $5c16: $1f
    dec c                                         ; $5c17: $0d
    rra                                           ; $5c18: $1f
    rlca                                          ; $5c19: $07
    rra                                           ; $5c1a: $1f
    ldh a, [$bf]                                  ; $5c1b: $f0 $bf
    ld [bc], a                                    ; $5c1d: $02
    rst $38                                       ; $5c1e: $ff
    ld b, $3f                                     ; $5c1f: $06 $3f
    ld [bc], a                                    ; $5c21: $02

jr_0e7_5c22:
    dec a                                         ; $5c22: $3d
    ld [bc], a                                    ; $5c23: $02
    dec e                                         ; $5c24: $1d
    ld [de], a                                    ; $5c25: $12
    nop                                           ; $5c26: $00
    add d                                         ; $5c27: $82
    rrca                                          ; $5c28: $0f
    dec e                                         ; $5c29: $1d
    ld [bc], a                                    ; $5c2a: $02
    dec de                                        ; $5c2b: $1b
    inc b                                         ; $5c2c: $04

jr_0e7_5c2d:
    jr jr_0e7_5c34                                ; $5c2d: $18 $05

    inc e                                         ; $5c2f: $1c
    add c                                         ; $5c30: $81
    inc b                                         ; $5c31: $04
    ld [bc], a                                    ; $5c32: $02
    inc e                                         ; $5c33: $1c

jr_0e7_5c34:
    stop                                          ; $5c34: $10 $00
    rst $38                                       ; $5c36: $ff
    dec c                                         ; $5c37: $0d
    inc b                                         ; $5c38: $04
    ld hl, sp+$07                                 ; $5c39: $f8 $07
    ld a, [c]                                     ; $5c3b: $f2
    ld bc, $faea                                  ; $5c3c: $01 $ea $fa
    ld [$faff], a                                 ; $5c3f: $ea $ff $fa
    ld a, [$fffa]                                 ; $5c42: $fa $fa $ff
    ld [bc], a                                    ; $5c45: $02
    rrca                                          ; $5c46: $0f
    add l                                         ; $5c47: $85
    ld [de], a                                    ; $5c48: $12
    rra                                           ; $5c49: $1f
    add hl, hl                                    ; $5c4a: $29
    ld [hl], $26                                  ; $5c4b: $36 $26
    ld [bc], a                                    ; $5c4d: $02
    ccf                                           ; $5c4e: $3f
    sub a                                         ; $5c4f: $97
    add hl, sp                                    ; $5c50: $39
    ccf                                           ; $5c51: $3f
    dec l                                         ; $5c52: $2d
    ccf                                           ; $5c53: $3f
    inc h                                         ; $5c54: $24
    rra                                           ; $5c55: $1f
    ld [de], a                                    ; $5c56: $12
    rra                                           ; $5c57: $1f
    rla                                           ; $5c58: $17
    rra                                           ; $5c59: $1f
    jr @+$31                                      ; $5c5a: $18 $2f

    ccf                                           ; $5c5c: $3f
    ld d, l                                       ; $5c5d: $55
    ld a, a                                       ; $5c5e: $7f
    ld d, d                                       ; $5c5f: $52
    ld a, a                                       ; $5c60: $7f
    or d                                          ; $5c61: $b2
    rst $38                                       ; $5c62: $ff
    sub [hl]                                      ; $5c63: $96
    rst $38                                       ; $5c64: $ff
    rst $20                                       ; $5c65: $e7
    rst $38                                       ; $5c66: $ff
    ld [bc], a                                    ; $5c67: $02
    db $10                                        ; $5c68: $10
    add l                                         ; $5c69: $85
    jr jr_0e7_5c74                                ; $5c6a: $18 $08

    inc b                                         ; $5c6c: $04
    inc e                                         ; $5c6d: $1c
    inc d                                         ; $5c6e: $14
    ld [bc], a                                    ; $5c6f: $02
    inc e                                         ; $5c70: $1c
    adc c                                         ; $5c71: $89
    inc c                                         ; $5c72: $0c
    inc e                                         ; $5c73: $1c

jr_0e7_5c74:
    inc d                                         ; $5c74: $14
    inc e                                         ; $5c75: $1c
    inc b                                         ; $5c76: $04
    jr jr_0e7_5c81                                ; $5c77: $18 $08

    jr jr_0e7_5c83                                ; $5c79: $18 $08

    ld [bc], a                                    ; $5c7b: $02
    jr jr_0e7_5c0e                                ; $5c7c: $18 $90

    inc d                                         ; $5c7e: $14
    inc e                                         ; $5c7f: $1c
    ld a, [bc]                                    ; $5c80: $0a

jr_0e7_5c81:
    ld e, $0a                                     ; $5c81: $1e $0a

jr_0e7_5c83:
    ld e, $0d                                     ; $5c83: $1e $0d
    rra                                           ; $5c85: $1f
    add hl, bc                                    ; $5c86: $09
    rra                                           ; $5c87: $1f
    rlca                                          ; $5c88: $07
    rra                                           ; $5c89: $1f
    jp nc, $ffbf                                  ; $5c8a: $d2 $bf $ff

    cp a                                          ; $5c8d: $bf
    ld [bc], a                                    ; $5c8e: $02
    ld e, a                                       ; $5c8f: $5f

Call_0e7_5c90:
    ld [bc], a                                    ; $5c90: $02
    rra                                           ; $5c91: $1f
    ld [bc], a                                    ; $5c92: $02
    ccf                                           ; $5c93: $3f
    ld [bc], a                                    ; $5c94: $02
    rra                                           ; $5c95: $1f
    add d                                         ; $5c96: $82
    dec a                                         ; $5c97: $3d
    dec h                                         ; $5c98: $25
    ld [bc], a                                    ; $5c99: $02
    jr jr_0e7_5cac                                ; $5c9a: $18 $10

    nop                                           ; $5c9c: $00
    add h                                         ; $5c9d: $84
    dec bc                                        ; $5c9e: $0b
    dec e                                         ; $5c9f: $1d
    rra                                           ; $5ca0: $1f
    dec e                                         ; $5ca1: $1d
    ld [bc], a                                    ; $5ca2: $02
    ld a, [de]                                    ; $5ca3: $1a
    ld [bc], a                                    ; $5ca4: $02
    jr jr_0e7_5ca9                                ; $5ca5: $18 $02

    inc e                                         ; $5ca7: $1c
    ld [bc], a                                    ; $5ca8: $02

jr_0e7_5ca9:
    jr jr_0e7_5c2d                                ; $5ca9: $18 $82

    inc e                                         ; $5cab: $1c

jr_0e7_5cac:
    inc b                                         ; $5cac: $04
    ld [bc], a                                    ; $5cad: $02
    jr jr_0e7_5cc0                                ; $5cae: $18 $10

    nop                                           ; $5cb0: $00
    rst $38                                       ; $5cb1: $ff
    dec c                                         ; $5cb2: $0d
    inc b                                         ; $5cb3: $04
    ld hl, sp+$07                                 ; $5cb4: $f8 $07
    ld a, [c]                                     ; $5cb6: $f2
    ld bc, $faea                                  ; $5cb7: $01 $ea $fa
    ld [$faff], a                                 ; $5cba: $ea $ff $fa
    ld a, [$fffa]                                 ; $5cbd: $fa $fa $ff

jr_0e7_5cc0:
    ld [bc], a                                    ; $5cc0: $02
    rrca                                          ; $5cc1: $0f
    add l                                         ; $5cc2: $85
    ld [de], a                                    ; $5cc3: $12
    rra                                           ; $5cc4: $1f
    ld a, [hl+]                                   ; $5cc5: $2a
    dec [hl]                                      ; $5cc6: $35
    cpl                                           ; $5cc7: $2f
    ld [bc], a                                    ; $5cc8: $02
    ccf                                           ; $5cc9: $3f
    sub a                                         ; $5cca: $97
    ld [hl-], a                                   ; $5ccb: $32
    dec sp                                        ; $5ccc: $3b
    dec a                                         ; $5ccd: $3d
    ccf                                           ; $5cce: $3f
    jr z, jr_0e7_5cf0                             ; $5ccf: $28 $1f

    inc d                                         ; $5cd1: $14
    ld e, $17                                     ; $5cd2: $1e $17
    rra                                           ; $5cd4: $1f
    jr jr_0e7_5d06                                ; $5cd5: $18 $2f

    ccf                                           ; $5cd7: $3f
    ld b, l                                       ; $5cd8: $45
    ld a, a                                       ; $5cd9: $7f
    ld d, d                                       ; $5cda: $52
    ld a, a                                       ; $5cdb: $7f
    ld d, d                                       ; $5cdc: $52
    ld a, a                                       ; $5cdd: $7f
    sub e                                         ; $5cde: $93
    rst $38                                       ; $5cdf: $ff
    adc a                                         ; $5ce0: $8f
    rst $38                                       ; $5ce1: $ff
    ld [bc], a                                    ; $5ce2: $02
    db $10                                        ; $5ce3: $10
    add l                                         ; $5ce4: $85
    jr jr_0e7_5cef                                ; $5ce5: $18 $08

    inc b                                         ; $5ce7: $04
    inc e                                         ; $5ce8: $1c
    inc c                                         ; $5ce9: $0c
    inc b                                         ; $5cea: $04
    inc e                                         ; $5ceb: $1c
    ld [bc], a                                    ; $5cec: $02
    inc d                                         ; $5ced: $14
    add l                                         ; $5cee: $85

jr_0e7_5cef:
    inc c                                         ; $5cef: $0c

jr_0e7_5cf0:
    jr jr_0e7_5cfa                                ; $5cf0: $18 $08

    jr jr_0e7_5cfc                                ; $5cf2: $18 $08

    ld [bc], a                                    ; $5cf4: $02
    inc e                                         ; $5cf5: $1c
    sub d                                         ; $5cf6: $92
    ld d, $1e                                     ; $5cf7: $16 $1e
    ld a, [bc]                                    ; $5cf9: $0a

jr_0e7_5cfa:
    ld e, $09                                     ; $5cfa: $1e $09

jr_0e7_5cfc:
    rra                                           ; $5cfc: $1f
    dec c                                         ; $5cfd: $0d
    rra                                           ; $5cfe: $1f

jr_0e7_5cff:
    dec d                                         ; $5cff: $15
    rra                                           ; $5d00: $1f
    rlca                                          ; $5d01: $07
    rra                                           ; $5d02: $1f
    ld sp, hl                                     ; $5d03: $f9
    rst $38                                       ; $5d04: $ff
    ld a, a                                       ; $5d05: $7f

jr_0e7_5d06:
    ld c, a                                       ; $5d06: $4f
    ld l, a                                       ; $5d07: $6f
    ld e, a                                       ; $5d08: $5f
    ld [bc], a                                    ; $5d09: $02
    ccf                                           ; $5d0a: $3f
    ld [bc], a                                    ; $5d0b: $02
    rra                                           ; $5d0c: $1f
    add d                                         ; $5d0d: $82
    ccf                                           ; $5d0e: $3f
    cpl                                           ; $5d0f: $2f
    ld [bc], a                                    ; $5d10: $02
    dec e                                         ; $5d11: $1d
    ld [bc], a                                    ; $5d12: $02
    ld bc, $0010                                  ; $5d13: $01 $10 $00
    add d                                         ; $5d16: $82
    rrca                                          ; $5d17: $0f
    dec e                                         ; $5d18: $1d
    ld [bc], a                                    ; $5d19: $02
    ld e, $02                                     ; $5d1a: $1e $02
    jr jr_0e7_5d23                                ; $5d1c: $18 $05

    inc e                                         ; $5d1e: $1c
    add c                                         ; $5d1f: $81
    inc b                                         ; $5d20: $04
    ld [bc], a                                    ; $5d21: $02
    inc e                                         ; $5d22: $1c

jr_0e7_5d23:
    ld [bc], a                                    ; $5d23: $02
    jr jr_0e7_5d36                                ; $5d24: $18 $10

    nop                                           ; $5d26: $00
    rst $38                                       ; $5d27: $ff
    dec c                                         ; $5d28: $0d
    inc b                                         ; $5d29: $04
    ld hl, sp+$07                                 ; $5d2a: $f8 $07
    ld a, [c]                                     ; $5d2c: $f2
    ld bc, $faeb                                  ; $5d2d: $01 $eb $fa
    db $eb                                        ; $5d30: $eb
    rst $38                                       ; $5d31: $ff
    ei                                            ; $5d32: $fb
    ld a, [$fffb]                                 ; $5d33: $fa $fb $ff

jr_0e7_5d36:
    ld [bc], a                                    ; $5d36: $02
    rrca                                          ; $5d37: $0f
    add l                                         ; $5d38: $85
    ld [de], a                                    ; $5d39: $12
    rra                                           ; $5d3a: $1f
    ld a, [hl+]                                   ; $5d3b: $2a
    dec [hl]                                      ; $5d3c: $35
    cpl                                           ; $5d3d: $2f
    ld [bc], a                                    ; $5d3e: $02
    ccf                                           ; $5d3f: $3f
    sub a                                         ; $5d40: $97
    ld [hl-], a                                   ; $5d41: $32
    dec sp                                        ; $5d42: $3b
    dec a                                         ; $5d43: $3d
    ccf                                           ; $5d44: $3f
    jr z, jr_0e7_5d66                             ; $5d45: $28 $1f

    inc d                                         ; $5d47: $14
    ld e, $17                                     ; $5d48: $1e $17
    rra                                           ; $5d4a: $1f
    jr jr_0e7_5d7c                                ; $5d4b: $18 $2f

    ccf                                           ; $5d4d: $3f
    ld d, l                                       ; $5d4e: $55
    ld a, a                                       ; $5d4f: $7f
    ld d, d                                       ; $5d50: $52
    ld a, a                                       ; $5d51: $7f
    ld d, d                                       ; $5d52: $52
    ld a, a                                       ; $5d53: $7f
    or [hl]                                       ; $5d54: $b6
    rst $38                                       ; $5d55: $ff
    sbc a                                         ; $5d56: $9f
    rst $38                                       ; $5d57: $ff
    ld [bc], a                                    ; $5d58: $02
    db $10                                        ; $5d59: $10
    add l                                         ; $5d5a: $85
    jr jr_0e7_5d65                                ; $5d5b: $18 $08

    inc b                                         ; $5d5d: $04
    inc e                                         ; $5d5e: $1c
    inc c                                         ; $5d5f: $0c
    inc b                                         ; $5d60: $04
    inc e                                         ; $5d61: $1c
    ld [bc], a                                    ; $5d62: $02
    inc d                                         ; $5d63: $14
    add l                                         ; $5d64: $85

jr_0e7_5d65:
    inc c                                         ; $5d65: $0c

jr_0e7_5d66:
    jr jr_0e7_5d70                                ; $5d66: $18 $08

    jr jr_0e7_5d72                                ; $5d68: $18 $08

    ld [bc], a                                    ; $5d6a: $02
    jr jr_0e7_5cff                                ; $5d6b: $18 $92

    ld d, $1e                                     ; $5d6d: $16 $1e
    ld a, [bc]                                    ; $5d6f: $0a

jr_0e7_5d70:
    ld e, $0a                                     ; $5d70: $1e $0a

jr_0e7_5d72:
    ld e, $09                                     ; $5d72: $1e $09
    rra                                           ; $5d74: $1f
    dec c                                         ; $5d75: $0d
    rra                                           ; $5d76: $1f
    dec b                                         ; $5d77: $05
    rra                                           ; $5d78: $1f
    ld a, [$ffdf]                                 ; $5d79: $fa $df $ff

jr_0e7_5d7c:
    sbc a                                         ; $5d7c: $9f
    cp a                                          ; $5d7d: $bf
    rst $38                                       ; $5d7e: $ff
    ld [bc], a                                    ; $5d7f: $02
    ld a, a                                       ; $5d80: $7f
    ld [bc], a                                    ; $5d81: $02
    rra                                           ; $5d82: $1f
    ld [bc], a                                    ; $5d83: $02
    dec c                                         ; $5d84: $0d
    ld [bc], a                                    ; $5d85: $02
    ld bc, $0012                                  ; $5d86: $01 $12 $00
    add c                                         ; $5d89: $81
    rrca                                          ; $5d8a: $0f
    ld [bc], a                                    ; $5d8b: $02
    rra                                           ; $5d8c: $1f
    add c                                         ; $5d8d: $81
    dec e                                         ; $5d8e: $1d
    ld [bc], a                                    ; $5d8f: $02
    ld a, [de]                                    ; $5d90: $1a
    dec b                                         ; $5d91: $05
    inc e                                         ; $5d92: $1c
    add c                                         ; $5d93: $81
    inc b                                         ; $5d94: $04
    ld [bc], a                                    ; $5d95: $02
    inc e                                         ; $5d96: $1c
    ld [de], a                                    ; $5d97: $12
    nop                                           ; $5d98: $00
    rst $38                                       ; $5d99: $ff
    dec c                                         ; $5d9a: $0d
    inc b                                         ; $5d9b: $04
    ld hl, sp+$07                                 ; $5d9c: $f8 $07
    ld a, [c]                                     ; $5d9e: $f2
    ld bc, $faea                                  ; $5d9f: $01 $ea $fa
    ld [$faff], a                                 ; $5da2: $ea $ff $fa
    ld a, [$fffa]                                 ; $5da5: $fa $fa $ff
    ld [bc], a                                    ; $5da8: $02
    rrca                                          ; $5da9: $0f
    add l                                         ; $5daa: $85
    ld [de], a                                    ; $5dab: $12
    rra                                           ; $5dac: $1f
    add hl, hl                                    ; $5dad: $29
    ld [hl], $26                                  ; $5dae: $36 $26
    ld [bc], a                                    ; $5db0: $02
    ccf                                           ; $5db1: $3f
    sub a                                         ; $5db2: $97
    add hl, sp                                    ; $5db3: $39
    ccf                                           ; $5db4: $3f
    dec l                                         ; $5db5: $2d
    ccf                                           ; $5db6: $3f
    inc h                                         ; $5db7: $24
    rra                                           ; $5db8: $1f
    ld [de], a                                    ; $5db9: $12
    rra                                           ; $5dba: $1f
    rla                                           ; $5dbb: $17
    rra                                           ; $5dbc: $1f
    jr @+$31                                      ; $5dbd: $18 $2f

    ccf                                           ; $5dbf: $3f
    ld d, l                                       ; $5dc0: $55
    ld a, a                                       ; $5dc1: $7f
    ld d, d                                       ; $5dc2: $52
    ld a, a                                       ; $5dc3: $7f
    or d                                          ; $5dc4: $b2
    rst $38                                       ; $5dc5: $ff
    sub [hl]                                      ; $5dc6: $96
    rst $38                                       ; $5dc7: $ff
    rst $20                                       ; $5dc8: $e7
    rst $38                                       ; $5dc9: $ff
    ld [bc], a                                    ; $5dca: $02
    db $10                                        ; $5dcb: $10
    add l                                         ; $5dcc: $85
    jr jr_0e7_5dd7                                ; $5dcd: $18 $08

    inc b                                         ; $5dcf: $04
    inc e                                         ; $5dd0: $1c
    inc d                                         ; $5dd1: $14
    ld [bc], a                                    ; $5dd2: $02
    inc e                                         ; $5dd3: $1c
    adc c                                         ; $5dd4: $89
    inc c                                         ; $5dd5: $0c
    inc e                                         ; $5dd6: $1c

jr_0e7_5dd7:
    inc d                                         ; $5dd7: $14
    inc e                                         ; $5dd8: $1c
    inc b                                         ; $5dd9: $04
    jr jr_0e7_5de4                                ; $5dda: $18 $08

    jr jr_0e7_5de6                                ; $5ddc: $18 $08

    ld [bc], a                                    ; $5dde: $02
    jr @-$6e                                      ; $5ddf: $18 $90

jr_0e7_5de1:
    inc d                                         ; $5de1: $14
    inc e                                         ; $5de2: $1c
    ld a, [bc]                                    ; $5de3: $0a

jr_0e7_5de4:
    ld e, $0a                                     ; $5de4: $1e $0a

jr_0e7_5de6:
    ld e, $0d                                     ; $5de6: $1e $0d
    rra                                           ; $5de8: $1f
    add hl, bc                                    ; $5de9: $09
    rra                                           ; $5dea: $1f
    rlca                                          ; $5deb: $07
    rra                                           ; $5dec: $1f
    jp nc, $ffbf                                  ; $5ded: $d2 $bf $ff

    cp a                                          ; $5df0: $bf
    ld [bc], a                                    ; $5df1: $02
    ld a, a                                       ; $5df2: $7f
    inc b                                         ; $5df3: $04
    ccf                                           ; $5df4: $3f
    add d                                         ; $5df5: $82
    dec a                                         ; $5df6: $3d
    dec [hl]                                      ; $5df7: $35
    ld [bc], a                                    ; $5df8: $02
    add hl, de                                    ; $5df9: $19
    ld [de], a                                    ; $5dfa: $12
    nop                                           ; $5dfb: $00
    add h                                         ; $5dfc: $84

jr_0e7_5dfd:
    rrca                                          ; $5dfd: $0f
    add hl, de                                    ; $5dfe: $19
    rra                                           ; $5dff: $1f
    dec e                                         ; $5e00: $1d
    ld [bc], a                                    ; $5e01: $02
    ld a, [de]                                    ; $5e02: $1a
    dec b                                         ; $5e03: $05
    inc e                                         ; $5e04: $1c
    add c                                         ; $5e05: $81
    inc b                                         ; $5e06: $04
    ld [bc], a                                    ; $5e07: $02
    inc e                                         ; $5e08: $1c
    ld [de], a                                    ; $5e09: $12
    nop                                           ; $5e0a: $00
    rst $38                                       ; $5e0b: $ff
    dec c                                         ; $5e0c: $0d
    inc b                                         ; $5e0d: $04
    ld hl, sp+$07                                 ; $5e0e: $f8 $07
    ld a, [c]                                     ; $5e10: $f2
    ld bc, $faea                                  ; $5e11: $01 $ea $fa
    ld [$faff], a                                 ; $5e14: $ea $ff $fa
    ld a, [$fffa]                                 ; $5e17: $fa $fa $ff
    ld [bc], a                                    ; $5e1a: $02
    rrca                                          ; $5e1b: $0f
    add l                                         ; $5e1c: $85
    ld [de], a                                    ; $5e1d: $12
    rra                                           ; $5e1e: $1f
    inc h                                         ; $5e1f: $24
    dec sp                                        ; $5e20: $3b
    scf                                           ; $5e21: $37
    ld [bc], a                                    ; $5e22: $02
    ccf                                           ; $5e23: $3f
    sub a                                         ; $5e24: $97
    add hl, sp                                    ; $5e25: $39
    dec a                                         ; $5e26: $3d
    ld l, $2f                                     ; $5e27: $2e $2f
    ld [hl-], a                                   ; $5e29: $32
    rra                                           ; $5e2a: $1f
    ld de, $171b                                  ; $5e2b: $11 $1b $17
    ccf                                           ; $5e2e: $3f
    jr c, jr_0e7_5ea0                             ; $5e2f: $38 $6f

    ld a, a                                       ; $5e31: $7f
    ld d, l                                       ; $5e32: $55
    ld a, a                                       ; $5e33: $7f
    sub d                                         ; $5e34: $92
    rst $38                                       ; $5e35: $ff
    or d                                          ; $5e36: $b2
    rst $38                                       ; $5e37: $ff
    xor [hl]                                      ; $5e38: $ae
    rst $38                                       ; $5e39: $ff
    rst $20                                       ; $5e3a: $e7
    rst $38                                       ; $5e3b: $ff
    ld [bc], a                                    ; $5e3c: $02
    db $10                                        ; $5e3d: $10
    add l                                         ; $5e3e: $85
    jr jr_0e7_5e49                                ; $5e3f: $18 $08

    inc d                                         ; $5e41: $14
    inc c                                         ; $5e42: $0c
    inc d                                         ; $5e43: $14
    ld [bc], a                                    ; $5e44: $02
    inc e                                         ; $5e45: $1c
    add c                                         ; $5e46: $81
    inc c                                         ; $5e47: $0c
    inc bc                                        ; $5e48: $03

jr_0e7_5e49:
    inc e                                         ; $5e49: $1c
    add l                                         ; $5e4a: $85
    inc b                                         ; $5e4b: $04
    jr jr_0e7_5e56                                ; $5e4c: $18 $08

    jr jr_0e7_5e58                                ; $5e4e: $18 $08

    ld [bc], a                                    ; $5e50: $02
    jr jr_0e7_5de1                                ; $5e51: $18 $8e

    inc d                                         ; $5e53: $14
    inc e                                         ; $5e54: $1c
    ld [bc], a                                    ; $5e55: $02

jr_0e7_5e56:
    ld e, $0a                                     ; $5e56: $1e $0a

jr_0e7_5e58:
    ld e, $0a                                     ; $5e58: $1e $0a
    ld e, $09                                     ; $5e5a: $1e $09
    rra                                           ; $5e5c: $1f
    ld de, $f41f                                  ; $5e5d: $11 $1f $f4
    cp a                                          ; $5e60: $bf
    ld [bc], a                                    ; $5e61: $02
    ld a, a                                       ; $5e62: $7f
    ld [bc], a                                    ; $5e63: $02
    rra                                           ; $5e64: $1f
    dec b                                         ; $5e65: $05
    ccf                                           ; $5e66: $3f
    add c                                         ; $5e67: $81
    daa                                           ; $5e68: $27
    ld [bc], a                                    ; $5e69: $02
    dec a                                         ; $5e6a: $3d
    ld [bc], a                                    ; $5e6b: $02
    inc e                                         ; $5e6c: $1c
    stop                                          ; $5e6d: $10 $00
    ld [bc], a                                    ; $5e6f: $02
    rra                                           ; $5e70: $1f
    add h                                         ; $5e71: $84
    ld e, $12                                     ; $5e72: $1e $12
    ld d, $1a                                     ; $5e74: $16 $1a
    ld [bc], a                                    ; $5e76: $02
    inc e                                         ; $5e77: $1c
    ld [bc], a                                    ; $5e78: $02
    jr jr_0e7_5dfd                                ; $5e79: $18 $82

    inc e                                         ; $5e7b: $1c
    inc d                                         ; $5e7c: $14
    ld [bc], a                                    ; $5e7d: $02
    jr jr_0e7_5e92                                ; $5e7e: $18 $12

    nop                                           ; $5e80: $00
    rst $38                                       ; $5e81: $ff
    dec c                                         ; $5e82: $0d
    inc b                                         ; $5e83: $04
    ld hl, sp+$07                                 ; $5e84: $f8 $07
    ld a, [c]                                     ; $5e86: $f2
    ld bc, $faeb                                  ; $5e87: $01 $eb $fa
    db $eb                                        ; $5e8a: $eb
    rst $38                                       ; $5e8b: $ff
    ei                                            ; $5e8c: $fb
    ld a, [$fffb]                                 ; $5e8d: $fa $fb $ff
    ld [bc], a                                    ; $5e90: $02
    rrca                                          ; $5e91: $0f

jr_0e7_5e92:
    add l                                         ; $5e92: $85
    ld [de], a                                    ; $5e93: $12
    rra                                           ; $5e94: $1f
    inc h                                         ; $5e95: $24
    dec sp                                        ; $5e96: $3b
    scf                                           ; $5e97: $37
    ld [bc], a                                    ; $5e98: $02
    ccf                                           ; $5e99: $3f
    sub a                                         ; $5e9a: $97
    add hl, sp                                    ; $5e9b: $39
    dec a                                         ; $5e9c: $3d
    ld l, $2f                                     ; $5e9d: $2e $2f
    ld [hl-], a                                   ; $5e9f: $32

jr_0e7_5ea0:
    rra                                           ; $5ea0: $1f
    ld de, $171b                                  ; $5ea1: $11 $1b $17
    rra                                           ; $5ea4: $1f
    jr jr_0e7_5f16                                ; $5ea5: $18 $6f

    ld a, a                                       ; $5ea7: $7f
    ld d, l                                       ; $5ea8: $55
    ld a, a                                       ; $5ea9: $7f
    ld d, d                                       ; $5eaa: $52
    ld a, a                                       ; $5eab: $7f
    sub d                                         ; $5eac: $92
    rst $38                                       ; $5ead: $ff
    or [hl]                                       ; $5eae: $b6
    rst $38                                       ; $5eaf: $ff
    and a                                         ; $5eb0: $a7
    rst $38                                       ; $5eb1: $ff
    ld [bc], a                                    ; $5eb2: $02
    db $10                                        ; $5eb3: $10
    add l                                         ; $5eb4: $85
    jr jr_0e7_5ebf                                ; $5eb5: $18 $08

    inc d                                         ; $5eb7: $14
    inc c                                         ; $5eb8: $0c
    inc d                                         ; $5eb9: $14
    ld [bc], a                                    ; $5eba: $02
    inc e                                         ; $5ebb: $1c
    add c                                         ; $5ebc: $81
    inc c                                         ; $5ebd: $0c
    inc bc                                        ; $5ebe: $03

jr_0e7_5ebf:
    inc e                                         ; $5ebf: $1c
    add l                                         ; $5ec0: $85
    inc b                                         ; $5ec1: $04
    jr jr_0e7_5ecc                                ; $5ec2: $18 $08

    jr jr_0e7_5ece                                ; $5ec4: $18 $08

    ld [bc], a                                    ; $5ec6: $02
    jr jr_0e7_5e56                                ; $5ec7: $18 $8d

    inc d                                         ; $5ec9: $14
    inc e                                         ; $5eca: $1c
    ld a, [bc]                                    ; $5ecb: $0a

jr_0e7_5ecc:
    ld e, $0a                                     ; $5ecc: $1e $0a

jr_0e7_5ece:
    ld e, $0a                                     ; $5ece: $1e $0a
    ld e, $0d                                     ; $5ed0: $1e $0d
    rra                                           ; $5ed2: $1f
    add hl, de                                    ; $5ed3: $19
    rra                                           ; $5ed4: $1f
    ld a, [c]                                     ; $5ed5: $f2
    ld [bc], a                                    ; $5ed6: $02
    rst $38                                       ; $5ed7: $ff
    add c                                         ; $5ed8: $81
    cp a                                          ; $5ed9: $bf
    ld [bc], a                                    ; $5eda: $02
    ld e, a                                       ; $5edb: $5f
    inc b                                         ; $5edc: $04
    ccf                                           ; $5edd: $3f
    add d                                         ; $5ede: $82
    dec a                                         ; $5edf: $3d
    dec h                                         ; $5ee0: $25
    ld [bc], a                                    ; $5ee1: $02
    inc a                                         ; $5ee2: $3c
    ld [de], a                                    ; $5ee3: $12
    nop                                           ; $5ee4: $00
    add [hl]                                      ; $5ee5: $86
    rra                                           ; $5ee6: $1f
    dec de                                        ; $5ee7: $1b
    rra                                           ; $5ee8: $1f
    add hl, de                                    ; $5ee9: $19
    dec e                                         ; $5eea: $1d
    rra                                           ; $5eeb: $1f
    ld [bc], a                                    ; $5eec: $02
    ld e, $02                                     ; $5eed: $1e $02
    jr jr_0e7_5ef3                                ; $5eef: $18 $02

    db $10                                        ; $5ef1: $10
    inc d                                         ; $5ef2: $14

jr_0e7_5ef3:
    nop                                           ; $5ef3: $00
    rst $38                                       ; $5ef4: $ff
    dec c                                         ; $5ef5: $0d
    inc b                                         ; $5ef6: $04
    ld hl, sp+$07                                 ; $5ef7: $f8 $07
    ld a, [c]                                     ; $5ef9: $f2
    ld bc, $faea                                  ; $5efa: $01 $ea $fa
    ld [$faff], a                                 ; $5efd: $ea $ff $fa
    ld a, [$fffa]                                 ; $5f00: $fa $fa $ff
    ld [bc], a                                    ; $5f03: $02
    rrca                                          ; $5f04: $0f
    add l                                         ; $5f05: $85
    ld [de], a                                    ; $5f06: $12
    rra                                           ; $5f07: $1f
    add hl, hl                                    ; $5f08: $29
    ld [hl], $26                                  ; $5f09: $36 $26
    ld [bc], a                                    ; $5f0b: $02
    ccf                                           ; $5f0c: $3f
    sub a                                         ; $5f0d: $97
    add hl, sp                                    ; $5f0e: $39
    ccf                                           ; $5f0f: $3f
    dec l                                         ; $5f10: $2d
    ccf                                           ; $5f11: $3f
    inc h                                         ; $5f12: $24
    rra                                           ; $5f13: $1f
    ld [de], a                                    ; $5f14: $12
    rra                                           ; $5f15: $1f

jr_0e7_5f16:
    rla                                           ; $5f16: $17
    rra                                           ; $5f17: $1f
    jr jr_0e7_5f49                                ; $5f18: $18 $2f

    ccf                                           ; $5f1a: $3f
    ld d, l                                       ; $5f1b: $55
    ld a, a                                       ; $5f1c: $7f
    ld d, d                                       ; $5f1d: $52
    ld a, a                                       ; $5f1e: $7f
    or d                                          ; $5f1f: $b2
    rst $38                                       ; $5f20: $ff
    sub e                                         ; $5f21: $93
    rst $38                                       ; $5f22: $ff
    rst $20                                       ; $5f23: $e7
    rst $38                                       ; $5f24: $ff
    ld [bc], a                                    ; $5f25: $02
    db $10                                        ; $5f26: $10
    add l                                         ; $5f27: $85
    jr jr_0e7_5f32                                ; $5f28: $18 $08

    inc b                                         ; $5f2a: $04
    inc e                                         ; $5f2b: $1c
    inc d                                         ; $5f2c: $14
    ld [bc], a                                    ; $5f2d: $02
    inc e                                         ; $5f2e: $1c
    adc c                                         ; $5f2f: $89
    inc c                                         ; $5f30: $0c
    inc e                                         ; $5f31: $1c

jr_0e7_5f32:
    inc d                                         ; $5f32: $14
    inc e                                         ; $5f33: $1c
    inc b                                         ; $5f34: $04
    jr jr_0e7_5f3f                                ; $5f35: $18 $08

    jr jr_0e7_5f41                                ; $5f37: $18 $08

    ld [bc], a                                    ; $5f39: $02
    jr jr_0e7_5ecc                                ; $5f3a: $18 $90

    inc d                                         ; $5f3c: $14
    inc e                                         ; $5f3d: $1c
    ld a, [bc]                                    ; $5f3e: $0a

jr_0e7_5f3f:
    ld e, $0a                                     ; $5f3f: $1e $0a

jr_0e7_5f41:
    ld e, $0d                                     ; $5f41: $1e $0d
    rra                                           ; $5f43: $1f
    add hl, bc                                    ; $5f44: $09
    rra                                           ; $5f45: $1f
    rlca                                          ; $5f46: $07
    rra                                           ; $5f47: $1f
    ld a, [c]                                     ; $5f48: $f2

jr_0e7_5f49:
    sbc a                                         ; $5f49: $9f
    rst $38                                       ; $5f4a: $ff
    cp a                                          ; $5f4b: $bf
    ld [bc], a                                    ; $5f4c: $02
    ld e, a                                       ; $5f4d: $5f
    inc b                                         ; $5f4e: $04
    ccf                                           ; $5f4f: $3f
    add d                                         ; $5f50: $82
    dec a                                         ; $5f51: $3d
    dec h                                         ; $5f52: $25
    ld [bc], a                                    ; $5f53: $02
    inc a                                         ; $5f54: $3c
    ld [de], a                                    ; $5f55: $12
    nop                                           ; $5f56: $00
    add h                                         ; $5f57: $84
    dec bc                                        ; $5f58: $0b
    dec e                                         ; $5f59: $1d
    rra                                           ; $5f5a: $1f
    dec e                                         ; $5f5b: $1d
    ld [bc], a                                    ; $5f5c: $02
    ld e, $05                                     ; $5f5d: $1e $05
    inc e                                         ; $5f5f: $1c
    add c                                         ; $5f60: $81
    inc c                                         ; $5f61: $0c
    ld [bc], a                                    ; $5f62: $02
    jr jr_0e7_5f77                                ; $5f63: $18 $12

    nop                                           ; $5f65: $00
    rst $38                                       ; $5f66: $ff
    dec bc                                        ; $5f67: $0b
    inc bc                                        ; $5f68: $03
    ei                                            ; $5f69: $fb
    inc b                                         ; $5f6a: $04
    rst $30                                       ; $5f6b: $f7
    cp $ea                                        ; $5f6c: $fe $ea
    ei                                            ; $5f6e: $fb
    db $eb                                        ; $5f6f: $eb
    db $fd                                        ; $5f70: $fd
    ld a, [$02fb]                                 ; $5f71: $fa $fb $02
    rra                                           ; $5f74: $1f
    sbc [hl]                                      ; $5f75: $9e
    db $e4                                        ; $5f76: $e4

jr_0e7_5f77:
    ei                                            ; $5f77: $fb
    ld c, c                                       ; $5f78: $49
    ld [hl], a                                    ; $5f79: $77
    and l                                         ; $5f7a: $a5
    rst $18                                       ; $5f7b: $df
    adc a                                         ; $5f7c: $8f

jr_0e7_5f7d:
    ld a, [$f6df]                                 ; $5f7d: $fa $df $f6
    ld a, a                                       ; $5f80: $7f
    ld [hl], b                                    ; $5f81: $70
    ld a, a                                       ; $5f82: $7f
    ld d, b                                       ; $5f83: $50
    ccf                                           ; $5f84: $3f
    inc sp                                        ; $5f85: $33
    rra                                           ; $5f86: $1f
    add hl, de                                    ; $5f87: $19
    ld l, $3e                                     ; $5f88: $2e $3e
    inc hl                                        ; $5f8a: $23
    ccf                                           ; $5f8b: $3f
    add hl, hl                                    ; $5f8c: $29
    ccf                                           ; $5f8d: $3f
    ld e, c                                       ; $5f8e: $59
    ld a, a                                       ; $5f8f: $7f
    ld c, c                                       ; $5f90: $49
    ld a, a                                       ; $5f91: $7f
    ld c, e                                       ; $5f92: $4b
    ld a, a                                       ; $5f93: $7f
    ld [bc], a                                    ; $5f94: $02
    ld [bc], a                                    ; $5f95: $02
    add d                                         ; $5f96: $82
    ld bc, $0603                                  ; $5f97: $01 $03 $06
    ld [bc], a                                    ; $5f9a: $02
    add d                                         ; $5f9b: $82
    inc bc                                        ; $5f9c: $03
    ld bc, $0204                                  ; $5f9d: $01 $04 $02
    ld c, $00                                     ; $5fa0: $0e $00
    add d                                         ; $5fa2: $82
    call c, Call_000_02fc                         ; $5fa3: $dc $fc $02
    ld b, b                                       ; $5fa6: $40
    add d                                         ; $5fa7: $82
    dec a                                         ; $5fa8: $3d
    daa                                           ; $5fa9: $27
    inc b                                         ; $5faa: $04
    ld e, $04                                     ; $5fab: $1e $04
    ld a, $82                                     ; $5fad: $3e $82
    ccf                                           ; $5faf: $3f
    add hl, hl                                    ; $5fb0: $29
    ld [bc], a                                    ; $5fb1: $02
    ccf                                           ; $5fb2: $3f
    stop                                          ; $5fb3: $10 $00
    rst $38                                       ; $5fb5: $ff
    dec c                                         ; $5fb6: $0d
    inc b                                         ; $5fb7: $04
    ld hl, sp+$07                                 ; $5fb8: $f8 $07
    ld a, [c]                                     ; $5fba: $f2
    ld bc, $fbea                                  ; $5fbb: $01 $ea $fb
    db $eb                                        ; $5fbe: $eb
    db $fd                                        ; $5fbf: $fd
    ld a, [$fafa]                                 ; $5fc0: $fa $fa $fa
    rst $38                                       ; $5fc3: $ff
    ld [bc], a                                    ; $5fc4: $02
    rra                                           ; $5fc5: $1f
    sub d                                         ; $5fc6: $92
    db $e4                                        ; $5fc7: $e4
    ei                                            ; $5fc8: $fb
    ld d, d                                       ; $5fc9: $52
    ld l, a                                       ; $5fca: $6f
    xor e                                         ; $5fcb: $ab
    rst $18                                       ; $5fcc: $df
    adc a                                         ; $5fcd: $8f
    db $fc                                        ; $5fce: $fc
    sub [hl]                                      ; $5fcf: $96
    rst $38                                       ; $5fd0: $ff
    ld a, a                                       ; $5fd1: $7f
    ld [hl], b                                    ; $5fd2: $70
    ld a, a                                       ; $5fd3: $7f
    ld d, b                                       ; $5fd4: $50
    ccf                                           ; $5fd5: $3f
    inc sp                                        ; $5fd6: $33
    rra                                           ; $5fd7: $1f
    add hl, de                                    ; $5fd8: $19
    ld [bc], a                                    ; $5fd9: $02
    ld a, $8a                                     ; $5fda: $3e $8a
    inc hl                                        ; $5fdc: $23
    ccf                                           ; $5fdd: $3f
    add hl, hl                                    ; $5fde: $29

jr_0e7_5fdf:
    ccf                                           ; $5fdf: $3f
    add hl, hl                                    ; $5fe0: $29
    ccf                                           ; $5fe1: $3f
    ld b, l                                       ; $5fe2: $45
    ld a, a                                       ; $5fe3: $7f
    ld h, a                                       ; $5fe4: $67
    ld a, a                                       ; $5fe5: $7f
    ld [bc], a                                    ; $5fe6: $02
    ld [bc], a                                    ; $5fe7: $02
    add c                                         ; $5fe8: $81
    ld bc, $0303                                  ; $5fe9: $01 $03 $03
    inc b                                         ; $5fec: $04
    ld [bc], a                                    ; $5fed: $02
    add d                                         ; $5fee: $82
    inc bc                                        ; $5fef: $03
    ld bc, $0204                                  ; $5ff0: $01 $04 $02
    ld c, $00                                     ; $5ff3: $0e $00
    add d                                         ; $5ff5: $82
    xor h                                         ; $5ff6: $ac
    db $f4                                        ; $5ff7: $f4
    ld [bc], a                                    ; $5ff8: $02
    jr nz, jr_0e7_5f7d                            ; $5ff9: $20 $82

    ccf                                           ; $5ffb: $3f
    dec a                                         ; $5ffc: $3d
    inc b                                         ; $5ffd: $04
    ld a, a                                       ; $5ffe: $7f
    ld [bc], a                                    ; $5fff: $02
    db $fd                                        ; $6000: $fd
    ld [bc], a                                    ; $6001: $02
    ld sp, hl                                     ; $6002: $f9
    add d                                         ; $6003: $82
    ld a, l                                       ; $6004: $7d
    ld h, l                                       ; $6005: $65
    ld [bc], a                                    ; $6006: $02
    inc e                                         ; $6007: $1c
    ld [de], a                                    ; $6008: $12
    nop                                           ; $6009: $00
    inc b                                         ; $600a: $04
    jr jr_0e7_600f                                ; $600b: $18 $02

    ld e, $84                                     ; $600d: $1e $84

jr_0e7_600f:
    rra                                           ; $600f: $1f
    add hl, de                                    ; $6010: $19
    ld e, $16                                     ; $6011: $1e $16
    ld [bc], a                                    ; $6013: $02
    jr jr_0e7_6028                                ; $6014: $18 $12

    nop                                           ; $6016: $00
    rst $38                                       ; $6017: $ff
    dec c                                         ; $6018: $0d
    inc b                                         ; $6019: $04
    ld hl, sp+$07                                 ; $601a: $f8 $07
    ld a, [c]                                     ; $601c: $f2
    ld bc, $fbeb                                  ; $601d: $01 $eb $fb
    db $ec                                        ; $6020: $ec
    db $fd                                        ; $6021: $fd
    ei                                            ; $6022: $fb
    ld a, [$fdfb]                                 ; $6023: $fa $fb $fd
    ld [bc], a                                    ; $6026: $02
    ccf                                           ; $6027: $3f

jr_0e7_6028:
    sub d                                         ; $6028: $92
    call nz, Call_0e7_5afb                        ; $6029: $c4 $fb $5a
    ld h, a                                       ; $602c: $67
    xor e                                         ; $602d: $ab
    rst $18                                       ; $602e: $df
    adc a                                         ; $602f: $8f
    db $fc                                        ; $6030: $fc
    sub [hl]                                      ; $6031: $96
    rst $38                                       ; $6032: $ff
    ld a, a                                       ; $6033: $7f
    ld [hl], b                                    ; $6034: $70
    ld a, a                                       ; $6035: $7f
    ld d, b                                       ; $6036: $50
    ccf                                           ; $6037: $3f
    inc sp                                        ; $6038: $33
    rra                                           ; $6039: $1f
    add hl, de                                    ; $603a: $19
    ld [bc], a                                    ; $603b: $02
    ld a, $8a                                     ; $603c: $3e $8a
    inc hl                                        ; $603e: $23
    ccf                                           ; $603f: $3f
    add hl, hl                                    ; $6040: $29
    ccf                                           ; $6041: $3f
    ld l, c                                       ; $6042: $69
    ld a, a                                       ; $6043: $7f
    ld b, l                                       ; $6044: $45
    ld a, a                                       ; $6045: $7f
    ld h, a                                       ; $6046: $67
    ld a, a                                       ; $6047: $7f
    ld [bc], a                                    ; $6048: $02
    ld [bc], a                                    ; $6049: $02
    add c                                         ; $604a: $81
    ld bc, $0303                                  ; $604b: $01 $03 $03
    inc b                                         ; $604e: $04
    ld [bc], a                                    ; $604f: $02
    add d                                         ; $6050: $82
    inc bc                                        ; $6051: $03
    ld bc, $0204                                  ; $6052: $01 $04 $02
    ld c, $00                                     ; $6055: $0e $00
    add d                                         ; $6057: $82
    cp h                                          ; $6058: $bc
    db $ec                                        ; $6059: $ec
    ld [bc], a                                    ; $605a: $02
    jr nz, jr_0e7_5fdf                            ; $605b: $20 $82

    ld a, a                                       ; $605d: $7f
    ld a, e                                       ; $605e: $7b
    inc b                                         ; $605f: $04
    rst $38                                       ; $6060: $ff
    inc bc                                        ; $6061: $03
    ld a, e                                       ; $6062: $7b
    add c                                         ; $6063: $81
    ld l, e                                       ; $6064: $6b
    ld [bc], a                                    ; $6065: $02
    jr nc, @+$16                                  ; $6066: $30 $14

    nop                                           ; $6068: $00
    ld [bc], a                                    ; $6069: $02
    inc b                                         ; $606a: $04
    inc b                                         ; $606b: $04
    ld b, $82                                     ; $606c: $06 $82
    rlca                                          ; $606e: $07
    ld bc, $0702                                  ; $606f: $01 $02 $07
    inc d                                         ; $6072: $14
    nop                                           ; $6073: $00
    rst $38                                       ; $6074: $ff
    dec bc                                        ; $6075: $0b
    inc bc                                        ; $6076: $03
    ld hl, sp+$07                                 ; $6077: $f8 $07
    ld a, [c]                                     ; $6079: $f2
    ld bc, $fbea                                  ; $607a: $01 $ea $fb
    db $eb                                        ; $607d: $eb
    db $fd                                        ; $607e: $fd
    ld a, [$02fc]                                 ; $607f: $fa $fc $02
    rra                                           ; $6082: $1f
    sbc [hl]                                      ; $6083: $9e
    ld h, h                                       ; $6084: $64
    ld a, e                                       ; $6085: $7b
    ret                                           ; $6086: $c9


    rst $30                                       ; $6087: $f7
    and l                                         ; $6088: $a5
    rst $18                                       ; $6089: $df
    adc a                                         ; $608a: $8f
    ld a, [$f6df]                                 ; $608b: $fa $df $f6
    ld a, a                                       ; $608e: $7f
    ld [hl], b                                    ; $608f: $70
    ld a, a                                       ; $6090: $7f
    ld d, b                                       ; $6091: $50
    ccf                                           ; $6092: $3f
    inc sp                                        ; $6093: $33
    rra                                           ; $6094: $1f
    add hl, de                                    ; $6095: $19
    ld l, $3e                                     ; $6096: $2e $3e
    inc hl                                        ; $6098: $23
    ccf                                           ; $6099: $3f
    ld c, c                                       ; $609a: $49
    ld a, a                                       ; $609b: $7f
    ld c, c                                       ; $609c: $49
    ld a, a                                       ; $609d: $7f
    ld e, e                                       ; $609e: $5b
    ld a, a                                       ; $609f: $7f
    ld c, e                                       ; $60a0: $4b
    ld a, a                                       ; $60a1: $7f
    ld [bc], a                                    ; $60a2: $02
    ld [bc], a                                    ; $60a3: $02
    add d                                         ; $60a4: $82
    ld bc, $0603                                  ; $60a5: $01 $03 $06
    ld [bc], a                                    ; $60a8: $02
    add d                                         ; $60a9: $82
    inc bc                                        ; $60aa: $03
    ld bc, $0204                                  ; $60ab: $01 $04 $02
    ld c, $00                                     ; $60ae: $0e $00
    add d                                         ; $60b0: $82
    call nc, Call_000_02fc                        ; $60b1: $d4 $fc $02
    add b                                         ; $60b4: $80
    add d                                         ; $60b5: $82
    rst $38                                       ; $60b6: $ff
    sbc a                                         ; $60b7: $9f
    inc b                                         ; $60b8: $04
    ld a, a                                       ; $60b9: $7f
    add h                                         ; $60ba: $84
    cp $ee                                        ; $60bb: $fe $ee
    rst $38                                       ; $60bd: $ff
    di                                            ; $60be: $f3
    ld [bc], a                                    ; $60bf: $02
    ld a, [hl]                                    ; $60c0: $7e
    ld [de], a                                    ; $60c1: $12
    nop                                           ; $60c2: $00
    rst $38                                       ; $60c3: $ff
    dec c                                         ; $60c4: $0d
    inc b                                         ; $60c5: $04
    ld hl, sp+$07                                 ; $60c6: $f8 $07
    ld a, [c]                                     ; $60c8: $f2
    ld bc, $fbea                                  ; $60c9: $01 $ea $fb
    db $eb                                        ; $60cc: $eb
    db $fd                                        ; $60cd: $fd
    ld a, [$fafa]                                 ; $60ce: $fa $fa $fa
    rst $38                                       ; $60d1: $ff
    ld [bc], a                                    ; $60d2: $02
    rra                                           ; $60d3: $1f
    sbc [hl]                                      ; $60d4: $9e
    db $e4                                        ; $60d5: $e4
    ei                                            ; $60d6: $fb
    ld c, b                                       ; $60d7: $48
    ld [hl], a                                    ; $60d8: $77
    and l                                         ; $60d9: $a5
    rst $18                                       ; $60da: $df
    adc a                                         ; $60db: $8f
    cp $cf                                        ; $60dc: $fe $cf
    ei                                            ; $60de: $fb
    ld a, a                                       ; $60df: $7f
    ld [hl], b                                    ; $60e0: $70
    ld a, a                                       ; $60e1: $7f
    ld d, b                                       ; $60e2: $50
    ccf                                           ; $60e3: $3f
    ld sp, $191f                                  ; $60e4: $31 $1f $19
    ld l, $3e                                     ; $60e7: $2e $3e
    ld h, e                                       ; $60e9: $63
    ld a, a                                       ; $60ea: $7f
    ld c, c                                       ; $60eb: $49
    ld a, a                                       ; $60ec: $7f
    ld e, c                                       ; $60ed: $59
    ld a, a                                       ; $60ee: $7f
    sbc e                                         ; $60ef: $9b
    rst $38                                       ; $60f0: $ff
    rst $10                                       ; $60f1: $d7
    rst $38                                       ; $60f2: $ff
    ld [bc], a                                    ; $60f3: $02
    ld [bc], a                                    ; $60f4: $02
    add d                                         ; $60f5: $82
    ld bc, $0603                                  ; $60f6: $01 $03 $06
    ld [bc], a                                    ; $60f9: $02
    add d                                         ; $60fa: $82
    inc bc                                        ; $60fb: $03

Call_0e7_60fc:
    ld bc, $0204                                  ; $60fc: $01 $04 $02
    ld c, $00                                     ; $60ff: $0e $00
    add [hl]                                      ; $6101: $86
    call nz, Call_0e7_60fc                        ; $6102: $c4 $fc $60
    ld b, b                                       ; $6105: $40
    ld e, a                                       ; $6106: $5f
    ld l, a                                       ; $6107: $6f
    ld [bc], a                                    ; $6108: $02
    ld a, a                                       ; $6109: $7f
    ld [bc], a                                    ; $610a: $02
    rst $38                                       ; $610b: $ff
    ld [bc], a                                    ; $610c: $02
    ei                                            ; $610d: $fb
    add d                                         ; $610e: $82
    ld a, a                                       ; $610f: $7f
    ld [hl], a                                    ; $6110: $77
    ld [bc], a                                    ; $6111: $02
    dec de                                        ; $6112: $1b
    ld [bc], a                                    ; $6113: $02
    ld bc, $0012                                  ; $6114: $01 $12 $00
    ld [bc], a                                    ; $6117: $02
    db $10                                        ; $6118: $10
    inc b                                         ; $6119: $04
    jr jr_0e7_611e                                ; $611a: $18 $02

    ld e, $84                                     ; $611c: $1e $84

jr_0e7_611e:
    rra                                           ; $611e: $1f
    add hl, de                                    ; $611f: $19
    ld e, $06                                     ; $6120: $1e $06
    ld [bc], a                                    ; $6122: $02
    jr jr_0e7_6135                                ; $6123: $18 $10

    nop                                           ; $6125: $00
    rst $38                                       ; $6126: $ff
    dec c                                         ; $6127: $0d
    inc b                                         ; $6128: $04
    ld hl, sp+$07                                 ; $6129: $f8 $07
    ld a, [c]                                     ; $612b: $f2
    ld bc, $fbeb                                  ; $612c: $01 $eb $fb
    db $ec                                        ; $612f: $ec
    db $fd                                        ; $6130: $fd
    ei                                            ; $6131: $fb
    ld a, [$fdfb]                                 ; $6132: $fa $fb $fd

jr_0e7_6135:
    ld [bc], a                                    ; $6135: $02
    ccf                                           ; $6136: $3f
    sbc [hl]                                      ; $6137: $9e
    call nz, Call_0e7_58fb                        ; $6138: $c4 $fb $58
    ld h, a                                       ; $613b: $67
    and l                                         ; $613c: $a5
    rst $18                                       ; $613d: $df
    adc a                                         ; $613e: $8f
    cp $cf                                        ; $613f: $fe $cf
    ei                                            ; $6141: $fb
    ld a, a                                       ; $6142: $7f
    ld [hl], b                                    ; $6143: $70
    ld a, a                                       ; $6144: $7f
    ld d, b                                       ; $6145: $50
    ccf                                           ; $6146: $3f
    ld sp, $191f                                  ; $6147: $31 $1f $19
    ld l, $3e                                     ; $614a: $2e $3e
    inc hl                                        ; $614c: $23
    ccf                                           ; $614d: $3f
    ld c, c                                       ; $614e: $49
    ld a, a                                       ; $614f: $7f
    ld c, c                                       ; $6150: $49
    ld a, a                                       ; $6151: $7f
    ld e, c                                       ; $6152: $59
    ld a, a                                       ; $6153: $7f
    ld l, e                                       ; $6154: $6b
    ld a, a                                       ; $6155: $7f
    ld [bc], a                                    ; $6156: $02
    ld [bc], a                                    ; $6157: $02
    add d                                         ; $6158: $82
    ld bc, $0603                                  ; $6159: $01 $03 $06
    ld [bc], a                                    ; $615c: $02
    add d                                         ; $615d: $82
    inc bc                                        ; $615e: $03
    ld bc, $0204                                  ; $615f: $01 $04 $02
    ld c, $00                                     ; $6162: $0e $00
    add d                                         ; $6164: $82
    db $f4                                        ; $6165: $f4
    ld a, h                                       ; $6166: $7c
    ld [bc], a                                    ; $6167: $02
    ld h, b                                       ; $6168: $60
    add d                                         ; $6169: $82
    rst $28                                       ; $616a: $ef
    rst $30                                       ; $616b: $f7
    ld [bc], a                                    ; $616c: $02
    rst $38                                       ; $616d: $ff
    inc bc                                        ; $616e: $03
    ld a, a                                       ; $616f: $7f
    add e                                         ; $6170: $83
    ld l, a                                       ; $6171: $6f
    scf                                           ; $6172: $37
    ld [hl], $02                                  ; $6173: $36 $02
    rlca                                          ; $6175: $07
    inc d                                         ; $6176: $14
    nop                                           ; $6177: $00
    inc b                                         ; $6178: $04
    inc b                                         ; $6179: $04
    inc b                                         ; $617a: $04
    ld b, $82                                     ; $617b: $06 $82
    rlca                                          ; $617d: $07
    ld bc, $0702                                  ; $617e: $01 $02 $07
    ld [de], a                                    ; $6181: $12
    nop                                           ; $6182: $00
    rst $38                                       ; $6183: $ff
    dec bc                                        ; $6184: $0b
    inc bc                                        ; $6185: $03
    ld hl, sp+$07                                 ; $6186: $f8 $07
    ld a, [c]                                     ; $6188: $f2
    ld bc, $fbea                                  ; $6189: $01 $ea $fb
    db $eb                                        ; $618c: $eb
    db $fd                                        ; $618d: $fd
    ld a, [$02fc]                                 ; $618e: $fa $fc $02
    rra                                           ; $6191: $1f
    sbc [hl]                                      ; $6192: $9e
    ld h, h                                       ; $6193: $64
    ld a, e                                       ; $6194: $7b
    ret                                           ; $6195: $c9


    rst $30                                       ; $6196: $f7
    and l                                         ; $6197: $a5
    rst $18                                       ; $6198: $df
    adc a                                         ; $6199: $8f
    ld a, [$f6df]                                 ; $619a: $fa $df $f6
    ld a, a                                       ; $619d: $7f
    ld [hl], b                                    ; $619e: $70
    ld a, a                                       ; $619f: $7f
    ld d, b                                       ; $61a0: $50
    ccf                                           ; $61a1: $3f
    inc sp                                        ; $61a2: $33
    rra                                           ; $61a3: $1f
    add hl, de                                    ; $61a4: $19
    ld l, $3e                                     ; $61a5: $2e $3e
    inc hl                                        ; $61a7: $23
    ccf                                           ; $61a8: $3f
    add hl, hl                                    ; $61a9: $29
    ccf                                           ; $61aa: $3f
    ld e, c                                       ; $61ab: $59
    ld a, a                                       ; $61ac: $7f
    ld c, c                                       ; $61ad: $49
    ld a, a                                       ; $61ae: $7f
    ld c, e                                       ; $61af: $4b
    ld a, a                                       ; $61b0: $7f
    ld [bc], a                                    ; $61b1: $02
    ld [bc], a                                    ; $61b2: $02
    add d                                         ; $61b3: $82
    ld bc, $0603                                  ; $61b4: $01 $03 $06
    ld [bc], a                                    ; $61b7: $02
    add d                                         ; $61b8: $82
    inc bc                                        ; $61b9: $03
    ld bc, $0204                                  ; $61ba: $01 $04 $02
    ld c, $00                                     ; $61bd: $0e $00
    add d                                         ; $61bf: $82
    sbc $fe                                       ; $61c0: $de $fe
    ld [bc], a                                    ; $61c2: $02
    add b                                         ; $61c3: $80
    add d                                         ; $61c4: $82
    ld a, e                                       ; $61c5: $7b
    ld c, a                                       ; $61c6: $4f
    ld [bc], a                                    ; $61c7: $02
    ld a, a                                       ; $61c8: $7f
    inc bc                                        ; $61c9: $03
    ld a, [hl]                                    ; $61ca: $7e
    add c                                         ; $61cb: $81
    ld a, d                                       ; $61cc: $7a
    inc bc                                        ; $61cd: $03
    ld a, [hl]                                    ; $61ce: $7e
    add c                                         ; $61cf: $81
    ld h, d                                       ; $61d0: $62
    ld [bc], a                                    ; $61d1: $02
    ld a, [hl]                                    ; $61d2: $7e
    stop                                          ; $61d3: $10 $00
    rst $38                                       ; $61d5: $ff
    dec bc                                        ; $61d6: $0b
    inc bc                                        ; $61d7: $03
    ld hl, sp+$07                                 ; $61d8: $f8 $07
    ld a, [c]                                     ; $61da: $f2
    ld bc, $fcea                                  ; $61db: $01 $ea $fc
    db $eb                                        ; $61de: $eb
    cp $fa                                        ; $61df: $fe $fa
    db $fc                                        ; $61e1: $fc
    ld [bc], a                                    ; $61e2: $02
    ld a, $9e                                     ; $61e3: $3e $9e
    ld c, c                                       ; $61e5: $49
    ld [hl], a                                    ; $61e6: $77
    and h                                         ; $61e7: $a4
    ei                                            ; $61e8: $fb
    ld l, c                                       ; $61e9: $69
    ld a, [hl]                                    ; $61ea: $7e
    ld a, h                                       ; $61eb: $7c
    ld d, a                                       ; $61ec: $57
    ld a, [hl]                                    ; $61ed: $7e
    ld e, e                                       ; $61ee: $5b
    rst $38                                       ; $61ef: $ff
    add e                                         ; $61f0: $83
    ld a, a                                       ; $61f1: $7f
    ld b, d                                       ; $61f2: $42
    ld a, a                                       ; $61f3: $7f
    ld [hl], e                                    ; $61f4: $73
    ld a, $26                                     ; $61f5: $3e $26
    dec e                                         ; $61f7: $1d
    rra                                           ; $61f8: $1f
    ld sp, $253f                                  ; $61f9: $31 $3f $25
    ccf                                           ; $61fc: $3f
    ld h, $3f                                     ; $61fd: $26 $3f
    inc h                                         ; $61ff: $24
    ccf                                           ; $6200: $3f
    inc [hl]                                      ; $6201: $34
    ccf                                           ; $6202: $3f
    ld [bc], a                                    ; $6203: $02
    inc bc                                        ; $6204: $03
    ld [bc], a                                    ; $6205: $02
    ld [bc], a                                    ; $6206: $02
    add e                                         ; $6207: $83
    ld bc, $0103                                  ; $6208: $01 $03 $01
    inc bc                                        ; $620b: $03
    inc bc                                        ; $620c: $03
    inc b                                         ; $620d: $04
    ld [bc], a                                    ; $620e: $02
    ld a, [bc]                                    ; $620f: $0a
    nop                                           ; $6210: $00
    ld b, $02                                     ; $6211: $06 $02
    add d                                         ; $6213: $82
    xor $fe                                       ; $6214: $ee $fe
    ld [bc], a                                    ; $6216: $02
    nop                                           ; $6217: $00
    add d                                         ; $6218: $82
    cpl                                           ; $6219: $2f
    add hl, sp                                    ; $621a: $39
    inc b                                         ; $621b: $04
    ld e, $04                                     ; $621c: $1e $04
    rra                                           ; $621e: $1f
    add d                                         ; $621f: $82
    ccf                                           ; $6220: $3f
    dec h                                         ; $6221: $25
    ld [bc], a                                    ; $6222: $02
    ccf                                           ; $6223: $3f
    stop                                          ; $6224: $10 $00
    rst $38                                       ; $6226: $ff
    dec c                                         ; $6227: $0d
    inc b                                         ; $6228: $04
    ld hl, sp+$07                                 ; $6229: $f8 $07
    ld a, [c]                                     ; $622b: $f2
    ld bc, $00ea                                  ; $622c: $01 $ea $00
    db $eb                                        ; $622f: $eb
    ld [bc], a                                    ; $6230: $02
    ld a, [$fafe]                                 ; $6231: $fa $fe $fa
    ld [bc], a                                    ; $6234: $02
    ld [bc], a                                    ; $6235: $02
    ld a, $92                                     ; $6236: $3e $92
    ld c, c                                       ; $6238: $49
    ld [hl], a                                    ; $6239: $77
    add h                                         ; $623a: $84
    ei                                            ; $623b: $fb
    ld l, c                                       ; $623c: $69
    ld a, [hl]                                    ; $623d: $7e
    ld a, h                                       ; $623e: $7c
    ld e, a                                       ; $623f: $5f
    ld a, h                                       ; $6240: $7c
    ld [hl], a                                    ; $6241: $77
    rst $38                                       ; $6242: $ff
    add e                                         ; $6243: $83
    ld a, a                                       ; $6244: $7f
    ld b, d                                       ; $6245: $42
    ld a, a                                       ; $6246: $7f
    ld h, e                                       ; $6247: $63
    ld a, $26                                     ; $6248: $3e $26
    ld [bc], a                                    ; $624a: $02
    rra                                           ; $624b: $1f
    adc d                                         ; $624c: $8a
    ld sp, $243f                                  ; $624d: $31 $3f $24
    ccf                                           ; $6250: $3f
    ld h, $3f                                     ; $6251: $26 $3f
    ld [hl], $3f                                  ; $6253: $36 $3f
    ld a, [hl-]                                   ; $6255: $3a
    ccf                                           ; $6256: $3f
    ld [bc], a                                    ; $6257: $02
    inc bc                                        ; $6258: $03
    ld [bc], a                                    ; $6259: $02
    ld [bc], a                                    ; $625a: $02
    add e                                         ; $625b: $83
    ld bc, $0103                                  ; $625c: $01 $03 $01
    inc bc                                        ; $625f: $03
    inc bc                                        ; $6260: $03
    inc b                                         ; $6261: $04
    ld [bc], a                                    ; $6262: $02
    ld b, $00                                     ; $6263: $06 $00
    ld b, $02                                     ; $6265: $06 $02
    add c                                         ; $6267: $81
    ld bc, $0303                                  ; $6268: $01 $03 $03
    add d                                         ; $626b: $82
    adc a                                         ; $626c: $8f
    db $fd                                        ; $626d: $fd
    ld [bc], a                                    ; $626e: $02
    nop                                           ; $626f: $00
    ld [bc], a                                    ; $6270: $02
    rrca                                          ; $6271: $0f
    inc b                                         ; $6272: $04
    rra                                           ; $6273: $1f
    ld [bc], a                                    ; $6274: $02
    ld a, [hl]                                    ; $6275: $7e
    add h                                         ; $6276: $84
    cp $9e                                        ; $6277: $fe $9e
    ld a, [hl]                                    ; $6279: $7e
    ld h, [hl]                                    ; $627a: $66
    ld [bc], a                                    ; $627b: $02
    inc e                                         ; $627c: $1c
    ld [de], a                                    ; $627d: $12
    nop                                           ; $627e: $00
    add d                                         ; $627f: $82
    dec c                                         ; $6280: $0d
    dec bc                                        ; $6281: $0b
    ld [bc], a                                    ; $6282: $02
    ld c, $02                                     ; $6283: $0e $02
    inc c                                         ; $6285: $0c
    jr jr_0e7_6288                                ; $6286: $18 $00

jr_0e7_6288:
    rst $38                                       ; $6288: $ff
    dec c                                         ; $6289: $0d
    inc b                                         ; $628a: $04
    ld hl, sp+$07                                 ; $628b: $f8 $07
    ld a, [c]                                     ; $628d: $f2
    ld bc, $02e9                                  ; $628e: $01 $e9 $02
    ld [$f904], a                                 ; $6291: $ea $04 $f9
    cp $f9                                        ; $6294: $fe $f9
    inc bc                                        ; $6296: $03
    ld [bc], a                                    ; $6297: $02
    ld a, $92                                     ; $6298: $3e $92
    ld c, c                                       ; $629a: $49
    ld [hl], a                                    ; $629b: $77
    add h                                         ; $629c: $84
    ei                                            ; $629d: $fb
    ld l, c                                       ; $629e: $69
    ld a, [hl]                                    ; $629f: $7e
    ld a, h                                       ; $62a0: $7c
    ld e, a                                       ; $62a1: $5f
    ld a, h                                       ; $62a2: $7c
    ld [hl], a                                    ; $62a3: $77
    rst $38                                       ; $62a4: $ff
    add e                                         ; $62a5: $83
    ld a, a                                       ; $62a6: $7f
    ld b, d                                       ; $62a7: $42
    ld a, a                                       ; $62a8: $7f
    ld h, e                                       ; $62a9: $63
    ld a, $26                                     ; $62aa: $3e $26
    ld [bc], a                                    ; $62ac: $02
    rra                                           ; $62ad: $1f
    adc d                                         ; $62ae: $8a
    inc sp                                        ; $62af: $33
    ccf                                           ; $62b0: $3f
    dec h                                         ; $62b1: $25
    ccf                                           ; $62b2: $3f
    dec h                                         ; $62b3: $25
    ccf                                           ; $62b4: $3f
    halt                                          ; $62b5: $76
    ld a, a                                       ; $62b6: $7f
    ld e, [hl]                                    ; $62b7: $5e
    ld a, a                                       ; $62b8: $7f
    ld [bc], a                                    ; $62b9: $02
    inc bc                                        ; $62ba: $03
    ld [bc], a                                    ; $62bb: $02
    ld [bc], a                                    ; $62bc: $02
    add e                                         ; $62bd: $83
    ld bc, $0103                                  ; $62be: $01 $03 $01
    inc bc                                        ; $62c1: $03
    inc bc                                        ; $62c2: $03
    inc b                                         ; $62c3: $04
    ld [bc], a                                    ; $62c4: $02
    inc c                                         ; $62c5: $0c
    nop                                           ; $62c6: $00
    inc b                                         ; $62c7: $04
    ld [bc], a                                    ; $62c8: $02
    add d                                         ; $62c9: $82
    or d                                          ; $62ca: $b2
    cp $02                                        ; $62cb: $fe $02
    inc b                                         ; $62cd: $04
    ld [bc], a                                    ; $62ce: $02
    rst $18                                       ; $62cf: $df
    add h                                         ; $62d0: $84
    rst $38                                       ; $62d1: $ff
    cp a                                          ; $62d2: $bf
    rst $38                                       ; $62d3: $ff
    cp a                                          ; $62d4: $bf
    ld [bc], a                                    ; $62d5: $02
    ld sp, hl                                     ; $62d6: $f9
    add d                                         ; $62d7: $82
    ld [hl], b                                    ; $62d8: $70
    ld d, b                                       ; $62d9: $50
    ld [bc], a                                    ; $62da: $02
    ld h, b                                       ; $62db: $60
    inc d                                         ; $62dc: $14
    nop                                           ; $62dd: $00
    add h                                         ; $62de: $84
    rla                                           ; $62df: $17
    rra                                           ; $62e0: $1f
    ld e, $12                                     ; $62e1: $1e $12
    ld [bc], a                                    ; $62e3: $02
    inc e                                         ; $62e4: $1c
    ld [bc], a                                    ; $62e5: $02
    jr jr_0e7_62fe                                ; $62e6: $18 $16

    nop                                           ; $62e8: $00
    rst $38                                       ; $62e9: $ff
    dec c                                         ; $62ea: $0d
    inc b                                         ; $62eb: $04
    ld hl, sp+$07                                 ; $62ec: $f8 $07
    ld a, [c]                                     ; $62ee: $f2
    ld bc, $03e9                                  ; $62ef: $01 $e9 $03
    ld [$f905], a                                 ; $62f2: $ea $05 $f9
    rst $38                                       ; $62f5: $ff
    ld sp, hl                                     ; $62f6: $f9
    inc bc                                        ; $62f7: $03
    ld [bc], a                                    ; $62f8: $02
    ld a, $92                                     ; $62f9: $3e $92

jr_0e7_62fb:
    ld c, c                                       ; $62fb: $49
    ld [hl], a                                    ; $62fc: $77
    and h                                         ; $62fd: $a4

jr_0e7_62fe:
    ei                                            ; $62fe: $fb
    ld l, c                                       ; $62ff: $69
    ld a, [hl]                                    ; $6300: $7e
    ld a, h                                       ; $6301: $7c
    ld d, a                                       ; $6302: $57
    ld a, [hl]                                    ; $6303: $7e
    ld e, e                                       ; $6304: $5b

jr_0e7_6305:
    rst $38                                       ; $6305: $ff
    add e                                         ; $6306: $83
    ld a, a                                       ; $6307: $7f
    ld b, d                                       ; $6308: $42
    ld a, a                                       ; $6309: $7f
    ld [hl], e                                    ; $630a: $73
    ld a, $26                                     ; $630b: $3e $26
    ld [bc], a                                    ; $630d: $02
    rra                                           ; $630e: $1f
    adc d                                         ; $630f: $8a
    scf                                           ; $6310: $37
    ccf                                           ; $6311: $3f
    dec l                                         ; $6312: $2d
    ccf                                           ; $6313: $3f
    add hl, hl                                    ; $6314: $29
    ccf                                           ; $6315: $3f

jr_0e7_6316:
    ld a, e                                       ; $6316: $7b
    ld a, a                                       ; $6317: $7f
    ld h, e                                       ; $6318: $63
    ld a, a                                       ; $6319: $7f
    ld [bc], a                                    ; $631a: $02
    inc bc                                        ; $631b: $03
    ld [bc], a                                    ; $631c: $02
    ld [bc], a                                    ; $631d: $02
    add e                                         ; $631e: $83
    ld bc, $0103                                  ; $631f: $01 $03 $01
    inc bc                                        ; $6322: $03
    inc bc                                        ; $6323: $03
    inc b                                         ; $6324: $04
    ld [bc], a                                    ; $6325: $02
    ld a, [bc]                                    ; $6326: $0a
    nop                                           ; $6327: $00
    ld b, $02                                     ; $6328: $06 $02
    adc b                                         ; $632a: $88
    sub [hl]                                      ; $632b: $96
    cp $dc                                        ; $632c: $fe $dc
    ret c                                         ; $632e: $d8

    rst $38                                       ; $632f: $ff
    cp l                                          ; $6330: $bd
    rst $38                                       ; $6331: $ff
    cp a                                          ; $6332: $bf
    ld [bc], a                                    ; $6333: $02
    rst $38                                       ; $6334: $ff
    add d                                         ; $6335: $82
    ld a, c                                       ; $6336: $79
    ld e, c                                       ; $6337: $59
    ld [bc], a                                    ; $6338: $02
    ld h, b                                       ; $6339: $60
    ld d, $00                                     ; $633a: $16 $00
    add c                                         ; $633c: $81
    dec bc                                        ; $633d: $0b
    inc bc                                        ; $633e: $03
    rrca                                          ; $633f: $0f
    ld [bc], a                                    ; $6340: $02
    ld c, $02                                     ; $6341: $0e $02
    inc c                                         ; $6343: $0c
    ld d, $00                                     ; $6344: $16 $00
    rst $38                                       ; $6346: $ff
    dec c                                         ; $6347: $0d
    inc b                                         ; $6348: $04
    ei                                            ; $6349: $fb
    dec b                                         ; $634a: $05
    rst $30                                       ; $634b: $f7
    cp $ea                                        ; $634c: $fe $ea
    ld a, [$00ea]                                 ; $634e: $fa $ea $00
    ld a, [$fafa]                                 ; $6351: $fa $fa $fa
    rst $38                                       ; $6354: $ff
    ld [bc], a                                    ; $6355: $02
    rrca                                          ; $6356: $0f
    ld [bc], a                                    ; $6357: $02
    ld [de], a                                    ; $6358: $12
    add e                                         ; $6359: $83
    jr z, jr_0e7_637c                             ; $635a: $28 $20

    ld hl, $2005                                  ; $635c: $21 $05 $20
    ld [bc], a                                    ; $635f: $02
    dec [hl]                                      ; $6360: $35
    ld [bc], a                                    ; $6361: $02
    jr @-$71                                      ; $6362: $18 $8d

    rra                                           ; $6364: $1f
    rla                                           ; $6365: $17
    ld [$370f], sp                                ; $6366: $08 $0f $37
    ccf                                           ; $6369: $3f

jr_0e7_636a:
    ld e, b                                       ; $636a: $58
    ld a, a                                       ; $636b: $7f
    ld e, l                                       ; $636c: $5d
    ld a, a                                       ; $636d: $7f
    sbc a                                         ; $636e: $9f
    rst $38                                       ; $636f: $ff
    cp a                                          ; $6370: $bf
    ld [bc], a                                    ; $6371: $02
    rst $38                                       ; $6372: $ff
    add c                                         ; $6373: $81
    cp a                                          ; $6374: $bf
    ld [bc], a                                    ; $6375: $02
    jr nz, jr_0e7_62fb                            ; $6376: $20 $83

    jr nc, jr_0e7_638a                            ; $6378: $30 $10

    jr z, @+$07                                   ; $637a: $28 $05

jr_0e7_637c:
    ld [$2802], sp                                ; $637c: $08 $02 $28
    ld [bc], a                                    ; $637f: $02
    jr jr_0e7_6385                                ; $6380: $18 $03

    jr nc, jr_0e7_6305                            ; $6382: $30 $81

    db $10                                        ; $6384: $10

jr_0e7_6385:
    ld [bc], a                                    ; $6385: $02
    jr nz, jr_0e7_6316                            ; $6386: $20 $8e

    jr jr_0e7_63c2                                ; $6388: $18 $38

jr_0e7_638a:
    inc [hl]                                      ; $638a: $34
    inc a                                         ; $638b: $3c
    inc [hl]                                      ; $638c: $34
    inc a                                         ; $638d: $3c
    ld [hl-], a                                   ; $638e: $32
    ld a, $3a                                     ; $638f: $3e $3a
    ld a, $3f                                     ; $6391: $3e $3f
    dec a                                         ; $6393: $3d
    rst $38                                       ; $6394: $ff
    cp a                                          ; $6395: $bf
    ld [bc], a                                    ; $6396: $02
    rst $38                                       ; $6397: $ff
    inc b                                         ; $6398: $04
    ccf                                           ; $6399: $3f
    ld [bc], a                                    ; $639a: $02
    ld a, a                                       ; $639b: $7f
    add h                                         ; $639c: $84
    ld a, [hl]                                    ; $639d: $7e
    ld a, a                                       ; $639e: $7f
    cpl                                           ; $639f: $2f
    ccf                                           ; $63a0: $3f
    ld [bc], a                                    ; $63a1: $02
    jr jr_0e7_63b4                                ; $63a2: $18 $10

    nop                                           ; $63a4: $00
    add l                                         ; $63a5: $85
    rra                                           ; $63a6: $1f
    dec e                                         ; $63a7: $1d
    rla                                           ; $63a8: $17
    rra                                           ; $63a9: $1f
    inc d                                         ; $63aa: $14
    inc bc                                        ; $63ab: $03
    inc e                                         ; $63ac: $1c
    add [hl]                                      ; $63ad: $86
    ld d, $1e                                     ; $63ae: $16 $1e
    ld c, $1e                                     ; $63b0: $0e $1e
    inc d                                         ; $63b2: $14
    inc e                                         ; $63b3: $1c

jr_0e7_63b4:
    ld [bc], a                                    ; $63b4: $02
    jr jr_0e7_63c7                                ; $63b5: $18 $10

    nop                                           ; $63b7: $00
    rst $38                                       ; $63b8: $ff
    rlca                                          ; $63b9: $07
    ld bc, $07f8                                  ; $63ba: $01 $f8 $07
    ld a, [c]                                     ; $63bd: $f2
    ld bc, $fceb                                  ; $63be: $01 $eb $fc
    adc [hl]                                      ; $63c1: $8e

jr_0e7_63c2:
    nop                                           ; $63c2: $00
    inc [hl]                                      ; $63c3: $34
    nop                                           ; $63c4: $00
    ld e, l                                       ; $63c5: $5d
    nop                                           ; $63c6: $00

jr_0e7_63c7:
    ld a, e                                       ; $63c7: $7b
    nop                                           ; $63c8: $00
    ld a, a                                       ; $63c9: $7f
    nop                                           ; $63ca: $00
    ld a, l                                       ; $63cb: $7d
    nop                                           ; $63cc: $00
    ld a, [hl+]                                   ; $63cd: $2a
    nop                                           ; $63ce: $00
    inc e                                         ; $63cf: $1c
    ld [de], a                                    ; $63d0: $12
    nop                                           ; $63d1: $00
    rst $38                                       ; $63d2: $ff
    dec c                                         ; $63d3: $0d
    inc b                                         ; $63d4: $04
    ei                                            ; $63d5: $fb
    dec b                                         ; $63d6: $05
    rst $30                                       ; $63d7: $f7
    cp $ea                                        ; $63d8: $fe $ea
    ld a, [$ffea]                                 ; $63da: $fa $ea $ff
    ld a, [$fafa]                                 ; $63dd: $fa $fa $fa
    cp $02                                        ; $63e0: $fe $02
    rrca                                          ; $63e2: $0f
    add d                                         ; $63e3: $82
    ld a, [de]                                    ; $63e4: $1a
    ld [de], a                                    ; $63e5: $12
    ld [bc], a                                    ; $63e6: $02
    jr nz, jr_0e7_636a                            ; $63e7: $20 $81

    ld [hl+], a                                   ; $63e9: $22
    dec b                                         ; $63ea: $05
    jr nz, jr_0e7_63ef                            ; $63eb: $20 $02

    dec sp                                        ; $63ed: $3b
    ld [bc], a                                    ; $63ee: $02

jr_0e7_63ef:
    add hl, de                                    ; $63ef: $19
    sub b                                         ; $63f0: $90
    rra                                           ; $63f1: $1f
    ld e, $09                                     ; $63f2: $1e $09
    rrca                                          ; $63f4: $0f
    rla                                           ; $63f5: $17
    rra                                           ; $63f6: $1f

jr_0e7_63f7:
    jr c, jr_0e7_6438                             ; $63f7: $38 $3f

    ld e, l                                       ; $63f9: $5d
    ld a, a                                       ; $63fa: $7f
    ld e, a                                       ; $63fb: $5f
    ld a, a                                       ; $63fc: $7f
    sbc a                                         ; $63fd: $9f
    rst $38                                       ; $63fe: $ff
    cp a                                          ; $63ff: $bf
    rst $38                                       ; $6400: $ff
    ld [bc], a                                    ; $6401: $02
    db $10                                        ; $6402: $10
    add e                                         ; $6403: $83
    jr @+$0a                                      ; $6404: $18 $08

    inc d                                         ; $6406: $14
    dec b                                         ; $6407: $05
    inc b                                         ; $6408: $04
    ld [bc], a                                    ; $6409: $02
    inc d                                         ; $640a: $14
    ld [bc], a                                    ; $640b: $02
    ld [$1803], sp                                ; $640c: $08 $03 $18
    add c                                         ; $640f: $81
    ld [$1002], sp                                ; $6410: $08 $02 $10
    adc c                                         ; $6413: $89
    inc c                                         ; $6414: $0c
    inc e                                         ; $6415: $1c
    ld a, [de]                                    ; $6416: $1a
    ld e, $1b                                     ; $6417: $1e $1b
    rra                                           ; $6419: $1f
    dec e                                         ; $641a: $1d
    rra                                           ; $641b: $1f
    dec e                                         ; $641c: $1d
    ld [bc], a                                    ; $641d: $02
    rra                                           ; $641e: $1f
    add c                                         ; $641f: $81
    dec e                                         ; $6420: $1d
    inc bc                                        ; $6421: $03
    rst $38                                       ; $6422: $ff
    add e                                         ; $6423: $83
    cp a                                          ; $6424: $bf
    rst $18                                       ; $6425: $df
    cp a                                          ; $6426: $bf
    ld [bc], a                                    ; $6427: $02
    ld a, a                                       ; $6428: $7f
    add d                                         ; $6429: $82
    ld a, l                                       ; $642a: $7d
    ld a, a                                       ; $642b: $7f
    ld [bc], a                                    ; $642c: $02
    ccf                                           ; $642d: $3f
    ld [bc], a                                    ; $642e: $02
    rra                                           ; $642f: $1f
    ld [bc], a                                    ; $6430: $02
    ld bc, $0010                                  ; $6431: $01 $10 $00
    ld [bc], a                                    ; $6434: $02
    rrca                                          ; $6435: $0f
    add c                                         ; $6436: $81
    ld a, [bc]                                    ; $6437: $0a

jr_0e7_6438:
    inc bc                                        ; $6438: $03
    ld c, $81                                     ; $6439: $0e $81
    ld [bc], a                                    ; $643b: $02
    inc bc                                        ; $643c: $03
    ld c, $82                                     ; $643d: $0e $82
    inc bc                                        ; $643f: $03
    rrca                                          ; $6440: $0f
    inc b                                         ; $6441: $04
    ld c, $10                                     ; $6442: $0e $10
    nop                                           ; $6444: $00
    rst $38                                       ; $6445: $ff
    rlca                                          ; $6446: $07
    ld bc, $07f8                                  ; $6447: $01 $f8 $07
    ld a, [c]                                     ; $644a: $f2
    ld bc, $fceb                                  ; $644b: $01 $eb $fc
    adc [hl]                                      ; $644e: $8e
    nop                                           ; $644f: $00
    inc d                                         ; $6450: $14
    nop                                           ; $6451: $00
    ld a, l                                       ; $6452: $7d
    nop                                           ; $6453: $00
    ld [hl], a                                    ; $6454: $77
    nop                                           ; $6455: $00
    ld a, a                                       ; $6456: $7f
    nop                                           ; $6457: $00
    ld a, l                                       ; $6458: $7d
    nop                                           ; $6459: $00
    ld [de], a                                    ; $645a: $12
    nop                                           ; $645b: $00
    jr jr_0e7_6470                                ; $645c: $18 $12

    nop                                           ; $645e: $00
    rst $38                                       ; $645f: $ff
    dec c                                         ; $6460: $0d
    inc b                                         ; $6461: $04
    ei                                            ; $6462: $fb
    dec b                                         ; $6463: $05
    rst $30                                       ; $6464: $f7
    cp $eb                                        ; $6465: $fe $eb
    ld a, [$ffeb]                                 ; $6467: $fa $eb $ff
    ei                                            ; $646a: $fb
    ld a, [$fffb]                                 ; $646b: $fa $fb $ff
    ld [bc], a                                    ; $646e: $02
    rrca                                          ; $646f: $0f

jr_0e7_6470:
    add d                                         ; $6470: $82
    ld a, [de]                                    ; $6471: $1a
    ld [de], a                                    ; $6472: $12
    ld [bc], a                                    ; $6473: $02
    jr nz, jr_0e7_63f7                            ; $6474: $20 $81

    ld [hl+], a                                   ; $6476: $22
    dec b                                         ; $6477: $05
    jr nz, jr_0e7_647c                            ; $6478: $20 $02

    dec sp                                        ; $647a: $3b
    ld [bc], a                                    ; $647b: $02

jr_0e7_647c:
    add hl, de                                    ; $647c: $19
    adc l                                         ; $647d: $8d
    rra                                           ; $647e: $1f
    ld e, $0d                                     ; $647f: $1e $0d
    rrca                                          ; $6481: $0f
    jr nc, jr_0e7_64c3                            ; $6482: $30 $3f

    dec a                                         ; $6484: $3d
    ccf                                           ; $6485: $3f
    ld e, a                                       ; $6486: $5f
    ld a, a                                       ; $6487: $7f
    ld e, a                                       ; $6488: $5f
    ld a, a                                       ; $6489: $7f
    cp a                                          ; $648a: $bf
    inc bc                                        ; $648b: $03
    rst $38                                       ; $648c: $ff
    ld [bc], a                                    ; $648d: $02
    db $10                                        ; $648e: $10

jr_0e7_648f:
    add e                                         ; $648f: $83
    jr @+$0a                                      ; $6490: $18 $08

    inc d                                         ; $6492: $14
    dec b                                         ; $6493: $05
    inc b                                         ; $6494: $04
    ld [bc], a                                    ; $6495: $02
    inc d                                         ; $6496: $14
    ld [bc], a                                    ; $6497: $02
    ld [$1803], sp                                ; $6498: $08 $03 $18
    add c                                         ; $649b: $81
    ld [$1002], sp                                ; $649c: $08 $02 $10
    adc c                                         ; $649f: $89
    inc c                                         ; $64a0: $0c
    inc e                                         ; $64a1: $1c
    ld a, [de]                                    ; $64a2: $1a

jr_0e7_64a3:
    ld e, $1a                                     ; $64a3: $1e $1a
    ld e, $1d                                     ; $64a5: $1e $1d
    rra                                           ; $64a7: $1f
    dec e                                         ; $64a8: $1d
    ld [bc], a                                    ; $64a9: $02
    rra                                           ; $64aa: $1f
    add [hl]                                      ; $64ab: $86
    dec e                                         ; $64ac: $1d
    rst $38                                       ; $64ad: $ff
    cp a                                          ; $64ae: $bf
    rst $38                                       ; $64af: $ff
    cp a                                          ; $64b0: $bf
    ld a, h                                       ; $64b1: $7c
    inc bc                                        ; $64b2: $03
    ld a, a                                       ; $64b3: $7f
    ld [bc], a                                    ; $64b4: $02
    ccf                                           ; $64b5: $3f
    ld [bc], a                                    ; $64b6: $02
    dec a                                         ; $64b7: $3d
    ld [bc], a                                    ; $64b8: $02
    ld bc, $0012                                  ; $64b9: $01 $12 $00
    add e                                         ; $64bc: $83
    rla                                           ; $64bd: $17
    rra                                           ; $64be: $1f
    inc b                                         ; $64bf: $04
    inc bc                                        ; $64c0: $03
    inc e                                         ; $64c1: $1c
    add c                                         ; $64c2: $81

jr_0e7_64c3:
    inc c                                         ; $64c3: $0c
    dec b                                         ; $64c4: $05
    inc e                                         ; $64c5: $1c
    ld [bc], a                                    ; $64c6: $02
    jr jr_0e7_64db                                ; $64c7: $18 $12

    nop                                           ; $64c9: $00
    rst $38                                       ; $64ca: $ff
    rlca                                          ; $64cb: $07
    ld bc, $07f8                                  ; $64cc: $01 $f8 $07
    ld a, [c]                                     ; $64cf: $f2
    ld bc, $fcec                                  ; $64d0: $01 $ec $fc
    adc [hl]                                      ; $64d3: $8e
    nop                                           ; $64d4: $00
    inc d                                         ; $64d5: $14
    nop                                           ; $64d6: $00
    ld a, l                                       ; $64d7: $7d
    nop                                           ; $64d8: $00
    ld [hl], a                                    ; $64d9: $77
    nop                                           ; $64da: $00

jr_0e7_64db:
    ld a, a                                       ; $64db: $7f
    nop                                           ; $64dc: $00
    ld a, l                                       ; $64dd: $7d
    nop                                           ; $64de: $00
    ld [de], a                                    ; $64df: $12
    nop                                           ; $64e0: $00
    jr jr_0e7_64f5                                ; $64e1: $18 $12

    nop                                           ; $64e3: $00
    rst $38                                       ; $64e4: $ff
    dec c                                         ; $64e5: $0d
    inc b                                         ; $64e6: $04
    ei                                            ; $64e7: $fb
    dec b                                         ; $64e8: $05
    rst $30                                       ; $64e9: $f7
    cp $ea                                        ; $64ea: $fe $ea
    ld a, [$ffea]                                 ; $64ec: $fa $ea $ff
    ld a, [$fafa]                                 ; $64ef: $fa $fa $fa
    rst $38                                       ; $64f2: $ff
    ld [bc], a                                    ; $64f3: $02
    rrca                                          ; $64f4: $0f

jr_0e7_64f5:
    ld [bc], a                                    ; $64f5: $02
    ld [de], a                                    ; $64f6: $12
    add e                                         ; $64f7: $83
    jr z, jr_0e7_651a                             ; $64f8: $28 $20

    ld hl, $2005                                  ; $64fa: $21 $05 $20
    ld [bc], a                                    ; $64fd: $02
    dec [hl]                                      ; $64fe: $35
    ld [bc], a                                    ; $64ff: $02
    jr jr_0e7_648f                                ; $6500: $18 $8d

    rra                                           ; $6502: $1f
    rla                                           ; $6503: $17
    ld [$370f], sp                                ; $6504: $08 $0f $37
    ccf                                           ; $6507: $3f
    ld e, b                                       ; $6508: $58
    ld a, a                                       ; $6509: $7f
    ld e, l                                       ; $650a: $5d
    ld a, a                                       ; $650b: $7f
    sbc a                                         ; $650c: $9f
    rst $38                                       ; $650d: $ff
    cp a                                          ; $650e: $bf
    ld [bc], a                                    ; $650f: $02
    rst $38                                       ; $6510: $ff
    add c                                         ; $6511: $81
    cp a                                          ; $6512: $bf
    ld [bc], a                                    ; $6513: $02
    db $10                                        ; $6514: $10
    add e                                         ; $6515: $83
    jr jr_0e7_6520                                ; $6516: $18 $08

    inc d                                         ; $6518: $14
    dec b                                         ; $6519: $05

jr_0e7_651a:
    inc b                                         ; $651a: $04
    ld [bc], a                                    ; $651b: $02
    inc d                                         ; $651c: $14
    ld [bc], a                                    ; $651d: $02
    inc c                                         ; $651e: $0c
    inc bc                                        ; $651f: $03

jr_0e7_6520:
    jr jr_0e7_64a3                                ; $6520: $18 $81

    ld [$1002], sp                                ; $6522: $08 $02 $10
    adc c                                         ; $6525: $89
    inc c                                         ; $6526: $0c
    inc e                                         ; $6527: $1c
    ld a, [de]                                    ; $6528: $1a
    ld e, $1a                                     ; $6529: $1e $1a
    ld e, $19                                     ; $652b: $1e $19
    rra                                           ; $652d: $1f
    dec e                                         ; $652e: $1d
    ld [bc], a                                    ; $652f: $02
    rra                                           ; $6530: $1f
    add e                                         ; $6531: $83
    dec e                                         ; $6532: $1d
    rst $38                                       ; $6533: $ff
    cp a                                          ; $6534: $bf
    ld [bc], a                                    ; $6535: $02
    rst $38                                       ; $6536: $ff
    ld [bc], a                                    ; $6537: $02
    ccf                                           ; $6538: $3f
    ld b, $7f                                     ; $6539: $06 $7f
    add d                                         ; $653b: $82
    scf                                           ; $653c: $37
    ccf                                           ; $653d: $3f
    ld [bc], a                                    ; $653e: $02
    jr c, jr_0e7_6551                             ; $653f: $38 $10

    nop                                           ; $6541: $00
    add d                                         ; $6542: $82
    rra                                           ; $6543: $1f
    dec e                                         ; $6544: $1d
    ld [bc], a                                    ; $6545: $02
    rra                                           ; $6546: $1f
    ld [bc], a                                    ; $6547: $02
    inc e                                         ; $6548: $1c
    add [hl]                                      ; $6549: $86
    inc d                                         ; $654a: $14
    inc e                                         ; $654b: $1c
    inc d                                         ; $654c: $14
    inc e                                         ; $654d: $1c
    inc c                                         ; $654e: $0c
    inc e                                         ; $654f: $1c
    ld [bc], a                                    ; $6550: $02

jr_0e7_6551:
    jr jr_0e7_6565                                ; $6551: $18 $12

    nop                                           ; $6553: $00
    rst $38                                       ; $6554: $ff
    rlca                                          ; $6555: $07
    ld bc, $07f8                                  ; $6556: $01 $f8 $07
    ld a, [c]                                     ; $6559: $f2
    ld bc, $fceb                                  ; $655a: $01 $eb $fc
    adc [hl]                                      ; $655d: $8e
    nop                                           ; $655e: $00
    inc [hl]                                      ; $655f: $34
    nop                                           ; $6560: $00
    ld e, l                                       ; $6561: $5d
    nop                                           ; $6562: $00
    ld a, e                                       ; $6563: $7b
    nop                                           ; $6564: $00

jr_0e7_6565:
    ld a, a                                       ; $6565: $7f
    nop                                           ; $6566: $00
    ld a, l                                       ; $6567: $7d
    nop                                           ; $6568: $00
    ld a, [hl+]                                   ; $6569: $2a
    nop                                           ; $656a: $00
    inc e                                         ; $656b: $1c
    ld [de], a                                    ; $656c: $12
    nop                                           ; $656d: $00
    rst $38                                       ; $656e: $ff
    dec c                                         ; $656f: $0d
    inc b                                         ; $6570: $04
    ei                                            ; $6571: $fb
    dec b                                         ; $6572: $05
    rst $30                                       ; $6573: $f7
    cp $ea                                        ; $6574: $fe $ea
    ld a, [$ffea]                                 ; $6576: $fa $ea $ff
    ld a, [$fafb]                                 ; $6579: $fa $fb $fa
    rst $38                                       ; $657c: $ff
    ld [bc], a                                    ; $657d: $02
    rrca                                          ; $657e: $0f
    ld [bc], a                                    ; $657f: $02
    ld [de], a                                    ; $6580: $12
    ld [bc], a                                    ; $6581: $02
    jr nz, @-$7d                                  ; $6582: $20 $81

    inc h                                         ; $6584: $24
    inc bc                                        ; $6585: $03
    jr nz, jr_0e7_658a                            ; $6586: $20 $02

    jr z, jr_0e7_658c                             ; $6588: $28 $02

jr_0e7_658a:
    ld [de], a                                    ; $658a: $12
    ld [bc], a                                    ; $658b: $02

jr_0e7_658c:
    inc e                                         ; $658c: $1c
    adc l                                         ; $658d: $8d
    rra                                           ; $658e: $1f

jr_0e7_658f:
    inc de                                        ; $658f: $13
    inc c                                         ; $6590: $0c
    rrca                                          ; $6591: $0f
    scf                                           ; $6592: $37
    ccf                                           ; $6593: $3f
    ld e, b                                       ; $6594: $58
    ld a, a                                       ; $6595: $7f
    db $dd                                        ; $6596: $dd
    rst $38                                       ; $6597: $ff
    cp a                                          ; $6598: $bf
    rst $38                                       ; $6599: $ff
    cp a                                          ; $659a: $bf
    ld [bc], a                                    ; $659b: $02
    rst $38                                       ; $659c: $ff
    add c                                         ; $659d: $81
    cp a                                          ; $659e: $bf
    ld [bc], a                                    ; $659f: $02
    db $10                                        ; $65a0: $10
    add e                                         ; $65a1: $83
    jr jr_0e7_65ac                                ; $65a2: $18 $08

    inc d                                         ; $65a4: $14
    dec b                                         ; $65a5: $05
    inc b                                         ; $65a6: $04
    ld [bc], a                                    ; $65a7: $02
    inc c                                         ; $65a8: $0c
    ld [bc], a                                    ; $65a9: $02
    inc e                                         ; $65aa: $1c
    inc b                                         ; $65ab: $04

jr_0e7_65ac:
    jr jr_0e7_65b0                                ; $65ac: $18 $02

    db $10                                        ; $65ae: $10
    add d                                         ; $65af: $82

jr_0e7_65b0:
    ld [$0218], sp                                ; $65b0: $08 $18 $02
    inc e                                         ; $65b3: $1c
    adc b                                         ; $65b4: $88
    ld a, [de]                                    ; $65b5: $1a
    ld e, $1a                                     ; $65b6: $1e $1a
    ld e, $19                                     ; $65b8: $1e $19
    rra                                           ; $65ba: $1f
    dec e                                         ; $65bb: $1d
    rra                                           ; $65bc: $1f
    ld [bc], a                                    ; $65bd: $02
    rst $38                                       ; $65be: $ff
    add c                                         ; $65bf: $81
    ld e, a                                       ; $65c0: $5f
    inc bc                                        ; $65c1: $03
    ld a, a                                       ; $65c2: $7f
    add [hl]                                      ; $65c3: $86
    ld c, a                                       ; $65c4: $4f
    ld a, a                                       ; $65c5: $7f
    ld a, e                                       ; $65c6: $7b
    ld a, a                                       ; $65c7: $7f
    rst $08                                       ; $65c8: $cf
    rst $38                                       ; $65c9: $ff
    ld [bc], a                                    ; $65ca: $02
    ld a, a                                       ; $65cb: $7f
    ld [bc], a                                    ; $65cc: $02
    ld a, b                                       ; $65cd: $78
    stop                                          ; $65ce: $10 $00
    inc bc                                        ; $65d0: $03
    rrca                                          ; $65d1: $0f
    add e                                         ; $65d2: $83
    dec c                                         ; $65d3: $0d
    dec bc                                        ; $65d4: $0b
    dec c                                         ; $65d5: $0d
    inc b                                         ; $65d6: $04
    ld c, $02                                     ; $65d7: $0e $02
    inc c                                         ; $65d9: $0c
    ld [bc], a                                    ; $65da: $02
    ld [$0012], sp                                ; $65db: $08 $12 $00
    rst $38                                       ; $65de: $ff
    rlca                                          ; $65df: $07
    ld bc, $07f8                                  ; $65e0: $01 $f8 $07
    ld a, [c]                                     ; $65e3: $f2
    ld bc, $fceb                                  ; $65e4: $01 $eb $fc
    adc [hl]                                      ; $65e7: $8e
    nop                                           ; $65e8: $00
    inc [hl]                                      ; $65e9: $34
    nop                                           ; $65ea: $00
    ld a, l                                       ; $65eb: $7d
    nop                                           ; $65ec: $00
    ld l, a                                       ; $65ed: $6f
    nop                                           ; $65ee: $00
    ld a, a                                       ; $65ef: $7f
    nop                                           ; $65f0: $00
    ld e, [hl]                                    ; $65f1: $5e
    nop                                           ; $65f2: $00
    inc [hl]                                      ; $65f3: $34
    nop                                           ; $65f4: $00
    inc c                                         ; $65f5: $0c
    ld [de], a                                    ; $65f6: $12
    nop                                           ; $65f7: $00
    rst $38                                       ; $65f8: $ff
    dec c                                         ; $65f9: $0d
    inc b                                         ; $65fa: $04
    ei                                            ; $65fb: $fb
    dec b                                         ; $65fc: $05
    rst $30                                       ; $65fd: $f7
    cp $eb                                        ; $65fe: $fe $eb
    ld a, [$ffeb]                                 ; $6600: $fa $eb $ff
    ei                                            ; $6603: $fb
    ld a, [$fffb]                                 ; $6604: $fa $fb $ff
    ld [bc], a                                    ; $6607: $02
    rrca                                          ; $6608: $0f
    ld [bc], a                                    ; $6609: $02
    ld [de], a                                    ; $660a: $12
    ld [bc], a                                    ; $660b: $02
    jr nz, jr_0e7_658f                            ; $660c: $20 $81

    inc h                                         ; $660e: $24
    inc bc                                        ; $660f: $03
    jr nz, jr_0e7_6614                            ; $6610: $20 $02

    jr z, jr_0e7_6616                             ; $6612: $28 $02

jr_0e7_6614:
    ld [de], a                                    ; $6614: $12
    ld [bc], a                                    ; $6615: $02

jr_0e7_6616:
    inc e                                         ; $6616: $1c
    adc l                                         ; $6617: $8d
    rra                                           ; $6618: $1f
    inc de                                        ; $6619: $13
    dec c                                         ; $661a: $0d
    rrca                                          ; $661b: $0f

jr_0e7_661c:
    jr nc, jr_0e7_665d                            ; $661c: $30 $3f

    ld e, a                                       ; $661e: $5f
    ld a, a                                       ; $661f: $7f
    ld e, a                                       ; $6620: $5f
    ld a, a                                       ; $6621: $7f
    cp a                                          ; $6622: $bf
    rst $38                                       ; $6623: $ff
    cp a                                          ; $6624: $bf
    ld [bc], a                                    ; $6625: $02
    rst $38                                       ; $6626: $ff
    add c                                         ; $6627: $81
    cp a                                          ; $6628: $bf
    ld [bc], a                                    ; $6629: $02
    db $10                                        ; $662a: $10
    add e                                         ; $662b: $83
    jr jr_0e7_6636                                ; $662c: $18 $08

    inc d                                         ; $662e: $14
    dec b                                         ; $662f: $05
    inc b                                         ; $6630: $04
    ld [bc], a                                    ; $6631: $02
    inc c                                         ; $6632: $0c
    ld [bc], a                                    ; $6633: $02
    inc e                                         ; $6634: $1c
    inc b                                         ; $6635: $04

jr_0e7_6636:
    jr jr_0e7_663a                                ; $6636: $18 $02

    db $10                                        ; $6638: $10
    add c                                         ; $6639: $81

jr_0e7_663a:
    inc c                                         ; $663a: $0c
    inc bc                                        ; $663b: $03

jr_0e7_663c:
    inc e                                         ; $663c: $1c
    add l                                         ; $663d: $85
    ld a, [de]                                    ; $663e: $1a
    ld e, $1a                                     ; $663f: $1e $1a
    ld e, $1d                                     ; $6641: $1e $1d
    inc bc                                        ; $6643: $03
    rra                                           ; $6644: $1f
    ld [bc], a                                    ; $6645: $02
    rst $38                                       ; $6646: $ff
    add l                                         ; $6647: $85
    scf                                           ; $6648: $37
    ccf                                           ; $6649: $3f
    dec sp                                        ; $664a: $3b
    ccf                                           ; $664b: $3f
    scf                                           ; $664c: $37
    inc bc                                        ; $664d: $03
    ccf                                           ; $664e: $3f
    ld [bc], a                                    ; $664f: $02
    dec a                                         ; $6650: $3d
    ld [bc], a                                    ; $6651: $02
    inc e                                         ; $6652: $1c
    ld [de], a                                    ; $6653: $12
    nop                                           ; $6654: $00
    add h                                         ; $6655: $84
    rra                                           ; $6656: $1f
    dec e                                         ; $6657: $1d
    rra                                           ; $6658: $1f
    dec e                                         ; $6659: $1d
    inc b                                         ; $665a: $04
    ld e, $81                                     ; $665b: $1e $81

jr_0e7_665d:
    inc d                                         ; $665d: $14
    inc bc                                        ; $665e: $03
    inc e                                         ; $665f: $1c
    inc d                                         ; $6660: $14
    nop                                           ; $6661: $00
    rst $38                                       ; $6662: $ff
    rlca                                          ; $6663: $07
    ld bc, $07f8                                  ; $6664: $01 $f8 $07
    ld a, [c]                                     ; $6667: $f2
    ld bc, $fcec                                  ; $6668: $01 $ec $fc
    adc [hl]                                      ; $666b: $8e
    nop                                           ; $666c: $00
    inc [hl]                                      ; $666d: $34
    nop                                           ; $666e: $00
    ld a, l                                       ; $666f: $7d
    nop                                           ; $6670: $00
    ld l, a                                       ; $6671: $6f
    nop                                           ; $6672: $00
    ld a, a                                       ; $6673: $7f
    nop                                           ; $6674: $00
    ld e, [hl]                                    ; $6675: $5e
    nop                                           ; $6676: $00
    inc [hl]                                      ; $6677: $34
    nop                                           ; $6678: $00
    inc c                                         ; $6679: $0c
    ld [de], a                                    ; $667a: $12
    nop                                           ; $667b: $00
    rst $38                                       ; $667c: $ff
    dec c                                         ; $667d: $0d
    inc b                                         ; $667e: $04
    ei                                            ; $667f: $fb
    dec b                                         ; $6680: $05
    rst $30                                       ; $6681: $f7
    cp $ea                                        ; $6682: $fe $ea
    ld a, [$ffea]                                 ; $6684: $fa $ea $ff
    ld a, [$fafa]                                 ; $6687: $fa $fa $fa
    rst $38                                       ; $668a: $ff
    ld [bc], a                                    ; $668b: $02
    rrca                                          ; $668c: $0f
    ld [bc], a                                    ; $668d: $02
    ld [de], a                                    ; $668e: $12
    add e                                         ; $668f: $83
    jr z, jr_0e7_66b2                             ; $6690: $28 $20

    ld hl, $2005                                  ; $6692: $21 $05 $20
    ld [bc], a                                    ; $6695: $02
    dec [hl]                                      ; $6696: $35
    ld [bc], a                                    ; $6697: $02
    jr jr_0e7_661c                                ; $6698: $18 $82

    rra                                           ; $669a: $1f
    rla                                           ; $669b: $17
    ld [bc], a                                    ; $669c: $02
    rrca                                          ; $669d: $0f
    adc c                                         ; $669e: $89
    scf                                           ; $669f: $37
    ccf                                           ; $66a0: $3f
    ld e, b                                       ; $66a1: $58
    ld a, a                                       ; $66a2: $7f
    ld e, l                                       ; $66a3: $5d
    ld a, a                                       ; $66a4: $7f
    sbc a                                         ; $66a5: $9f
    rst $38                                       ; $66a6: $ff
    cp a                                          ; $66a7: $bf
    ld [bc], a                                    ; $66a8: $02
    rst $38                                       ; $66a9: $ff
    add c                                         ; $66aa: $81
    cp a                                          ; $66ab: $bf
    ld [bc], a                                    ; $66ac: $02
    db $10                                        ; $66ad: $10
    add e                                         ; $66ae: $83
    jr jr_0e7_66b9                                ; $66af: $18 $08

    inc d                                         ; $66b1: $14

jr_0e7_66b2:
    dec b                                         ; $66b2: $05
    inc b                                         ; $66b3: $04
    ld [bc], a                                    ; $66b4: $02
    inc d                                         ; $66b5: $14
    ld [bc], a                                    ; $66b6: $02
    inc c                                         ; $66b7: $0c
    inc bc                                        ; $66b8: $03

jr_0e7_66b9:
    jr jr_0e7_663c                                ; $66b9: $18 $81

    ld [$1002], sp                                ; $66bb: $08 $02 $10
    adc c                                         ; $66be: $89
    inc c                                         ; $66bf: $0c
    inc e                                         ; $66c0: $1c
    ld a, [de]                                    ; $66c1: $1a
    ld e, $1a                                     ; $66c2: $1e $1a
    ld e, $19                                     ; $66c4: $1e $19
    rra                                           ; $66c6: $1f
    dec e                                         ; $66c7: $1d
    ld [bc], a                                    ; $66c8: $02
    rra                                           ; $66c9: $1f
    add e                                         ; $66ca: $83
    dec e                                         ; $66cb: $1d
    rst $38                                       ; $66cc: $ff
    cp a                                          ; $66cd: $bf
    ld [bc], a                                    ; $66ce: $02
    rst $38                                       ; $66cf: $ff
    ld [bc], a                                    ; $66d0: $02
    ccf                                           ; $66d1: $3f
    add [hl]                                      ; $66d2: $86
    cpl                                           ; $66d3: $2f
    ccf                                           ; $66d4: $3f
    cpl                                           ; $66d5: $2f
    ccf                                           ; $66d6: $3f
    scf                                           ; $66d7: $37
    ccf                                           ; $66d8: $3f
    ld [bc], a                                    ; $66d9: $02
    rra                                           ; $66da: $1f
    ld [de], a                                    ; $66db: $12
    nop                                           ; $66dc: $00
    add d                                         ; $66dd: $82
    rra                                           ; $66de: $1f
    dec e                                         ; $66df: $1d
    ld [bc], a                                    ; $66e0: $02
    rra                                           ; $66e1: $1f
    ld [bc], a                                    ; $66e2: $02
    inc e                                         ; $66e3: $1c
    ld b, $1e                                     ; $66e4: $06 $1e
    add c                                         ; $66e6: $81
    inc c                                         ; $66e7: $0c
    inc bc                                        ; $66e8: $03
    inc e                                         ; $66e9: $1c
    stop                                          ; $66ea: $10 $00
    rst $38                                       ; $66ec: $ff
    rlca                                          ; $66ed: $07
    ld bc, $07f8                                  ; $66ee: $01 $f8 $07
    ld a, [c]                                     ; $66f1: $f2
    ld bc, $fceb                                  ; $66f2: $01 $eb $fc
    adc [hl]                                      ; $66f5: $8e
    nop                                           ; $66f6: $00
    inc [hl]                                      ; $66f7: $34
    nop                                           ; $66f8: $00
    ld e, l                                       ; $66f9: $5d
    nop                                           ; $66fa: $00
    ld a, e                                       ; $66fb: $7b
    nop                                           ; $66fc: $00
    ld a, a                                       ; $66fd: $7f
    nop                                           ; $66fe: $00
    ld a, l                                       ; $66ff: $7d
    nop                                           ; $6700: $00
    ld a, [hl+]                                   ; $6701: $2a
    nop                                           ; $6702: $00
    inc e                                         ; $6703: $1c
    ld [de], a                                    ; $6704: $12
    nop                                           ; $6705: $00
    rst $38                                       ; $6706: $ff
    dec c                                         ; $6707: $0d
    inc b                                         ; $6708: $04
    ei                                            ; $6709: $fb
    dec b                                         ; $670a: $05
    rst $30                                       ; $670b: $f7
    cp $ea                                        ; $670c: $fe $ea
    ld a, [$ffea]                                 ; $670e: $fa $ea $ff
    ld a, [$fafa]                                 ; $6711: $fa $fa $fa
    rst $38                                       ; $6714: $ff
    ld [bc], a                                    ; $6715: $02
    rrca                                          ; $6716: $0f
    ld [bc], a                                    ; $6717: $02
    ld [de], a                                    ; $6718: $12
    add d                                         ; $6719: $82
    add hl, hl                                    ; $671a: $29
    jr nz, jr_0e7_671f                            ; $671b: $20 $02

    ld h, $98                                     ; $671d: $26 $98

jr_0e7_671f:
    ccf                                           ; $671f: $3f
    add hl, sp                                    ; $6720: $39
    ccf                                           ; $6721: $3f
    dec l                                         ; $6722: $2d
    ccf                                           ; $6723: $3f
    inc h                                         ; $6724: $24
    rra                                           ; $6725: $1f
    ld [de], a                                    ; $6726: $12
    rra                                           ; $6727: $1f
    rla                                           ; $6728: $17
    rra                                           ; $6729: $1f
    jr jr_0e7_6766                                ; $672a: $18 $3a

    ccf                                           ; $672c: $3f
    ld e, l                                       ; $672d: $5d
    ld a, a                                       ; $672e: $7f
    ld e, d                                       ; $672f: $5a
    ld a, a                                       ; $6730: $7f
    cp l                                          ; $6731: $bd
    rst $38                                       ; $6732: $ff
    db $fd                                        ; $6733: $fd
    rst $38                                       ; $6734: $ff
    db $fd                                        ; $6735: $fd
    cp a                                          ; $6736: $bf
    ld [bc], a                                    ; $6737: $02
    db $10                                        ; $6738: $10
    add d                                         ; $6739: $82
    jr jr_0e7_6744                                ; $673a: $18 $08

    ld [bc], a                                    ; $673c: $02
    inc b                                         ; $673d: $04
    ld [bc], a                                    ; $673e: $02
    inc d                                         ; $673f: $14
    adc d                                         ; $6740: $8a
    inc e                                         ; $6741: $1c
    inc c                                         ; $6742: $0c
    inc e                                         ; $6743: $1c

jr_0e7_6744:
    inc d                                         ; $6744: $14
    inc e                                         ; $6745: $1c
    inc b                                         ; $6746: $04
    jr jr_0e7_6751                                ; $6747: $18 $08

    jr jr_0e7_6753                                ; $6749: $18 $08

    ld [bc], a                                    ; $674b: $02
    jr jr_0e7_6750                                ; $674c: $18 $02

    inc e                                         ; $674e: $1c
    add l                                         ; $674f: $85

jr_0e7_6750:
    ld a, [de]                                    ; $6750: $1a

jr_0e7_6751:
    ld e, $1a                                     ; $6751: $1e $1a

jr_0e7_6753:
    ld e, $1d                                     ; $6753: $1e $1d
    inc b                                         ; $6755: $04
    rra                                           ; $6756: $1f
    adc c                                         ; $6757: $89
    dec e                                         ; $6758: $1d
    ld a, [$fe9f]                                 ; $6759: $fa $9f $fe
    and e                                         ; $675c: $a3
    ld a, d                                       ; $675d: $7a
    ld a, a                                       ; $675e: $7f
    scf                                           ; $675f: $37
    ccf                                           ; $6760: $3f
    ld [bc], a                                    ; $6761: $02
    ld a, a                                       ; $6762: $7f
    ld [bc], a                                    ; $6763: $02
    ccf                                           ; $6764: $3f
    add d                                         ; $6765: $82

jr_0e7_6766:
    dec h                                         ; $6766: $25
    dec a                                         ; $6767: $3d
    ld [bc], a                                    ; $6768: $02
    jr jr_0e7_677b                                ; $6769: $18 $10

    nop                                           ; $676b: $00
    add h                                         ; $676c: $84
    rra                                           ; $676d: $1f
    add hl, de                                    ; $676e: $19
    rra                                           ; $676f: $1f
    dec e                                         ; $6770: $1d
    ld [bc], a                                    ; $6771: $02
    ld e, $82                                     ; $6772: $1e $82
    inc c                                         ; $6774: $0c
    inc e                                         ; $6775: $1c
    ld [bc], a                                    ; $6776: $02
    ld e, $02                                     ; $6777: $1e $02
    inc e                                         ; $6779: $1c
    add d                                         ; $677a: $82

jr_0e7_677b:
    inc b                                         ; $677b: $04
    inc e                                         ; $677c: $1c
    ld [bc], a                                    ; $677d: $02
    jr jr_0e7_6790                                ; $677e: $18 $10

    nop                                           ; $6780: $00
    rst $38                                       ; $6781: $ff
    rlca                                          ; $6782: $07
    ld bc, $07f8                                  ; $6783: $01 $f8 $07
    ld a, [c]                                     ; $6786: $f2
    ld bc, $fceb                                  ; $6787: $01 $eb $fc
    add [hl]                                      ; $678a: $86
    nop                                           ; $678b: $00
    inc [hl]                                      ; $678c: $34
    nop                                           ; $678d: $00
    ld e, e                                       ; $678e: $5b
    nop                                           ; $678f: $00

jr_0e7_6790:
    ld h, l                                       ; $6790: $65
    ld a, [de]                                    ; $6791: $1a
    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $ff
    dec c                                         ; $6794: $0d
    inc b                                         ; $6795: $04
    ei                                            ; $6796: $fb
    dec b                                         ; $6797: $05
    rst $30                                       ; $6798: $f7
    cp $ea                                        ; $6799: $fe $ea
    ld a, [$ffea]                                 ; $679b: $fa $ea $ff
    ld a, [$fafa]                                 ; $679e: $fa $fa $fa
    rst $38                                       ; $67a1: $ff
    ld [bc], a                                    ; $67a2: $02
    rrca                                          ; $67a3: $0f
    ld [bc], a                                    ; $67a4: $02
    ld [de], a                                    ; $67a5: $12
    add d                                         ; $67a6: $82
    ld a, [hl+]                                   ; $67a7: $2a
    jr nz, jr_0e7_67ac                            ; $67a8: $20 $02

    cpl                                           ; $67aa: $2f
    sbc b                                         ; $67ab: $98

jr_0e7_67ac:
    ccf                                           ; $67ac: $3f
    ld [hl-], a                                   ; $67ad: $32
    dec sp                                        ; $67ae: $3b
    add hl, sp                                    ; $67af: $39
    ccf                                           ; $67b0: $3f
    jr z, jr_0e7_67d2                             ; $67b1: $28 $1f

    inc d                                         ; $67b3: $14
    ld e, $16                                     ; $67b4: $1e $16
    rra                                           ; $67b6: $1f
    jr jr_0e7_67f3                                ; $67b7: $18 $3a

    ccf                                           ; $67b9: $3f
    ld e, l                                       ; $67ba: $5d
    ld a, a                                       ; $67bb: $7f
    ld e, d                                       ; $67bc: $5a
    ld a, a                                       ; $67bd: $7f
    ld e, l                                       ; $67be: $5d
    ld a, a                                       ; $67bf: $7f
    sbc l                                         ; $67c0: $9d
    rst $38                                       ; $67c1: $ff
    cp l                                          ; $67c2: $bd
    rst $38                                       ; $67c3: $ff
    ld [bc], a                                    ; $67c4: $02
    db $10                                        ; $67c5: $10
    add d                                         ; $67c6: $82
    jr jr_0e7_67d1                                ; $67c7: $18 $08

    ld [bc], a                                    ; $67c9: $02
    inc b                                         ; $67ca: $04
    ld [bc], a                                    ; $67cb: $02
    inc c                                         ; $67cc: $0c
    inc bc                                        ; $67cd: $03
    inc e                                         ; $67ce: $1c
    ld [bc], a                                    ; $67cf: $02
    inc d                                         ; $67d0: $14

jr_0e7_67d1:
    add l                                         ; $67d1: $85

jr_0e7_67d2:
    inc b                                         ; $67d2: $04
    jr jr_0e7_67dd                                ; $67d3: $18 $08

    jr jr_0e7_67df                                ; $67d5: $18 $08

    ld [bc], a                                    ; $67d7: $02
    inc e                                         ; $67d8: $1c
    ld [bc], a                                    ; $67d9: $02
    ld e, $85                                     ; $67da: $1e $85
    ld a, [de]                                    ; $67dc: $1a

jr_0e7_67dd:
    ld e, $19                                     ; $67dd: $1e $19

jr_0e7_67df:
    rra                                           ; $67df: $1f
    dec e                                         ; $67e0: $1d
    inc b                                         ; $67e1: $04
    rra                                           ; $67e2: $1f
    adc b                                         ; $67e3: $88
    dec e                                         ; $67e4: $1d
    db $fc                                        ; $67e5: $fc
    db $db                                        ; $67e6: $db
    ld a, e                                       ; $67e7: $7b
    ld b, a                                       ; $67e8: $47
    ld l, e                                       ; $67e9: $6b
    ld e, a                                       ; $67ea: $5f
    scf                                           ; $67eb: $37
    inc bc                                        ; $67ec: $03
    ccf                                           ; $67ed: $3f
    add d                                         ; $67ee: $82
    cpl                                           ; $67ef: $2f
    ccf                                           ; $67f0: $3f
    ld [bc], a                                    ; $67f1: $02
    dec e                                         ; $67f2: $1d

jr_0e7_67f3:
    ld [bc], a                                    ; $67f3: $02
    ld bc, $0010                                  ; $67f4: $01 $10 $00
    add [hl]                                      ; $67f7: $86
    rra                                           ; $67f8: $1f
    dec e                                         ; $67f9: $1d
    ld c, $1e                                     ; $67fa: $0e $1e
    inc d                                         ; $67fc: $14
    inc e                                         ; $67fd: $1c
    inc b                                         ; $67fe: $04
    ld e, $81                                     ; $67ff: $1e $81
    inc b                                         ; $6801: $04
    inc bc                                        ; $6802: $03
    inc e                                         ; $6803: $1c
    ld [bc], a                                    ; $6804: $02
    jr jr_0e7_6817                                ; $6805: $18 $10

    nop                                           ; $6807: $00
    rst $38                                       ; $6808: $ff
    rlca                                          ; $6809: $07
    ld bc, $07f8                                  ; $680a: $01 $f8 $07
    ld a, [c]                                     ; $680d: $f2
    ld bc, $fceb                                  ; $680e: $01 $eb $fc
    add [hl]                                      ; $6811: $86
    nop                                           ; $6812: $00
    inc [hl]                                      ; $6813: $34
    nop                                           ; $6814: $00
    ld d, a                                       ; $6815: $57
    nop                                           ; $6816: $00

jr_0e7_6817:
    ld b, d                                       ; $6817: $42
    inc bc                                        ; $6818: $03
    nop                                           ; $6819: $00
    add e                                         ; $681a: $83
    stop                                          ; $681b: $10 $00
    ld bc, $0003                                  ; $681d: $01 $03 $00
    add c                                         ; $6820: $81
    inc b                                         ; $6821: $04
    stop                                          ; $6822: $10 $00
    rst $38                                       ; $6824: $ff
    dec c                                         ; $6825: $0d
    inc b                                         ; $6826: $04
    ei                                            ; $6827: $fb
    dec b                                         ; $6828: $05
    rst $30                                       ; $6829: $f7
    cp $eb                                        ; $682a: $fe $eb
    ld a, [$ffeb]                                 ; $682c: $fa $eb $ff
    ei                                            ; $682f: $fb
    ld a, [$fffb]                                 ; $6830: $fa $fb $ff
    ld [bc], a                                    ; $6833: $02
    rrca                                          ; $6834: $0f
    ld [bc], a                                    ; $6835: $02
    ld [de], a                                    ; $6836: $12
    add d                                         ; $6837: $82
    ld a, [hl+]                                   ; $6838: $2a
    jr nz, jr_0e7_683d                            ; $6839: $20 $02

    cpl                                           ; $683b: $2f
    sbc b                                         ; $683c: $98

jr_0e7_683d:
    ccf                                           ; $683d: $3f
    ld [hl-], a                                   ; $683e: $32
    dec sp                                        ; $683f: $3b
    add hl, sp                                    ; $6840: $39
    ccf                                           ; $6841: $3f
    jr z, jr_0e7_6863                             ; $6842: $28 $1f

    inc d                                         ; $6844: $14
    ld e, $16                                     ; $6845: $1e $16
    rra                                           ; $6847: $1f
    jr jr_0e7_6884                                ; $6848: $18 $3a

    ccf                                           ; $684a: $3f
    ld e, l                                       ; $684b: $5d
    ld a, a                                       ; $684c: $7f
    ld e, d                                       ; $684d: $5a
    ld a, a                                       ; $684e: $7f
    ld e, l                                       ; $684f: $5d
    ld a, a                                       ; $6850: $7f
    cp l                                          ; $6851: $bd
    rst $38                                       ; $6852: $ff
    sbc l                                         ; $6853: $9d
    rst $38                                       ; $6854: $ff
    ld [bc], a                                    ; $6855: $02
    db $10                                        ; $6856: $10
    add d                                         ; $6857: $82
    jr jr_0e7_6862                                ; $6858: $18 $08

    ld [bc], a                                    ; $685a: $02
    inc b                                         ; $685b: $04
    ld [bc], a                                    ; $685c: $02
    inc c                                         ; $685d: $0c
    inc bc                                        ; $685e: $03
    inc e                                         ; $685f: $1c
    ld [bc], a                                    ; $6860: $02
    inc d                                         ; $6861: $14

jr_0e7_6862:
    add l                                         ; $6862: $85

jr_0e7_6863:
    inc b                                         ; $6863: $04
    jr jr_0e7_686e                                ; $6864: $18 $08

    jr jr_0e7_6870                                ; $6866: $18 $08

    ld [bc], a                                    ; $6868: $02
    jr jr_0e7_686d                                ; $6869: $18 $02

    ld e, $87                                     ; $686b: $1e $87

jr_0e7_686d:
    ld a, [de]                                    ; $686d: $1a

jr_0e7_686e:
    ld e, $1a                                     ; $686e: $1e $1a

jr_0e7_6870:
    ld e, $19                                     ; $6870: $1e $19
    rra                                           ; $6872: $1f
    dec e                                         ; $6873: $1d
    inc bc                                        ; $6874: $03
    rra                                           ; $6875: $1f
    adc b                                         ; $6876: $88
    ld a, [$fbdf]                                 ; $6877: $fa $df $fb
    add a                                         ; $687a: $87
    cp e                                          ; $687b: $bb
    rst $38                                       ; $687c: $ff
    ld [hl], a                                    ; $687d: $77
    ld a, a                                       ; $687e: $7f
    ld [bc], a                                    ; $687f: $02
    rra                                           ; $6880: $1f
    ld [bc], a                                    ; $6881: $02
    dec c                                         ; $6882: $0d
    ld [bc], a                                    ; $6883: $02

jr_0e7_6884:
    ld bc, $0012                                  ; $6884: $01 $12 $00
    add [hl]                                      ; $6887: $86
    rra                                           ; $6888: $1f
    dec e                                         ; $6889: $1d
    rrca                                          ; $688a: $0f
    dec e                                         ; $688b: $1d
    ld d, $1e                                     ; $688c: $16 $1e
    ld [bc], a                                    ; $688e: $02
    inc e                                         ; $688f: $1c
    ld [bc], a                                    ; $6890: $02
    ld e, $81                                     ; $6891: $1e $81
    inc b                                         ; $6893: $04
    inc bc                                        ; $6894: $03
    inc e                                         ; $6895: $1c
    ld [de], a                                    ; $6896: $12
    nop                                           ; $6897: $00
    rst $38                                       ; $6898: $ff
    rlca                                          ; $6899: $07
    ld bc, $07f8                                  ; $689a: $01 $f8 $07
    ld a, [c]                                     ; $689d: $f2
    ld bc, $fcec                                  ; $689e: $01 $ec $fc
    add [hl]                                      ; $68a1: $86
    nop                                           ; $68a2: $00
    inc [hl]                                      ; $68a3: $34
    nop                                           ; $68a4: $00
    ld d, a                                       ; $68a5: $57
    nop                                           ; $68a6: $00
    ld b, d                                       ; $68a7: $42
    inc bc                                        ; $68a8: $03
    nop                                           ; $68a9: $00
    add e                                         ; $68aa: $83
    stop                                          ; $68ab: $10 $00
    ld bc, $0003                                  ; $68ad: $01 $03 $00
    add c                                         ; $68b0: $81
    inc b                                         ; $68b1: $04
    stop                                          ; $68b2: $10 $00
    rst $38                                       ; $68b4: $ff
    dec c                                         ; $68b5: $0d
    inc b                                         ; $68b6: $04
    ei                                            ; $68b7: $fb
    dec b                                         ; $68b8: $05
    rst $30                                       ; $68b9: $f7
    cp $ea                                        ; $68ba: $fe $ea
    ld a, [$ffea]                                 ; $68bc: $fa $ea $ff
    ld a, [$fafa]                                 ; $68bf: $fa $fa $fa
    rst $38                                       ; $68c2: $ff
    ld [bc], a                                    ; $68c3: $02
    rrca                                          ; $68c4: $0f
    ld [bc], a                                    ; $68c5: $02
    ld [de], a                                    ; $68c6: $12
    add d                                         ; $68c7: $82
    add hl, hl                                    ; $68c8: $29
    jr nz, jr_0e7_68cd                            ; $68c9: $20 $02

    ld h, $98                                     ; $68cb: $26 $98

jr_0e7_68cd:
    ccf                                           ; $68cd: $3f
    add hl, sp                                    ; $68ce: $39
    ccf                                           ; $68cf: $3f
    dec l                                         ; $68d0: $2d
    ccf                                           ; $68d1: $3f
    inc h                                         ; $68d2: $24
    rra                                           ; $68d3: $1f
    ld [de], a                                    ; $68d4: $12
    rra                                           ; $68d5: $1f
    rla                                           ; $68d6: $17
    rra                                           ; $68d7: $1f
    jr jr_0e7_6914                                ; $68d8: $18 $3a

    ccf                                           ; $68da: $3f
    ld e, l                                       ; $68db: $5d
    ld a, a                                       ; $68dc: $7f
    ld e, d                                       ; $68dd: $5a
    ld a, a                                       ; $68de: $7f
    cp l                                          ; $68df: $bd
    rst $38                                       ; $68e0: $ff
    db $fd                                        ; $68e1: $fd
    rst $38                                       ; $68e2: $ff
    db $fd                                        ; $68e3: $fd
    cp a                                          ; $68e4: $bf
    ld [bc], a                                    ; $68e5: $02
    db $10                                        ; $68e6: $10
    add d                                         ; $68e7: $82
    jr jr_0e7_68f2                                ; $68e8: $18 $08

    ld [bc], a                                    ; $68ea: $02
    inc b                                         ; $68eb: $04
    ld [bc], a                                    ; $68ec: $02
    inc d                                         ; $68ed: $14
    adc d                                         ; $68ee: $8a
    inc e                                         ; $68ef: $1c
    inc c                                         ; $68f0: $0c
    inc e                                         ; $68f1: $1c

jr_0e7_68f2:
    inc d                                         ; $68f2: $14
    inc e                                         ; $68f3: $1c
    inc b                                         ; $68f4: $04
    jr jr_0e7_68ff                                ; $68f5: $18 $08

    jr jr_0e7_6901                                ; $68f7: $18 $08

    ld [bc], a                                    ; $68f9: $02
    jr jr_0e7_68fe                                ; $68fa: $18 $02

    inc e                                         ; $68fc: $1c
    add l                                         ; $68fd: $85

jr_0e7_68fe:
    ld a, [de]                                    ; $68fe: $1a

jr_0e7_68ff:
    ld e, $1a                                     ; $68ff: $1e $1a

jr_0e7_6901:
    ld e, $1d                                     ; $6901: $1e $1d
    inc b                                         ; $6903: $04
    rra                                           ; $6904: $1f
    adc b                                         ; $6905: $88
    dec e                                         ; $6906: $1d
    ld a, [$fa9f]                                 ; $6907: $fa $9f $fa
    sbc a                                         ; $690a: $9f
    ld a, d                                       ; $690b: $7a
    ld l, a                                       ; $690c: $6f
    scf                                           ; $690d: $37
    inc bc                                        ; $690e: $03
    ccf                                           ; $690f: $3f
    add d                                         ; $6910: $82
    dec [hl]                                      ; $6911: $35
    dec a                                         ; $6912: $3d
    ld [bc], a                                    ; $6913: $02

jr_0e7_6914:
    add hl, de                                    ; $6914: $19
    ld [de], a                                    ; $6915: $12
    nop                                           ; $6916: $00
    add h                                         ; $6917: $84
    rra                                           ; $6918: $1f
    add hl, de                                    ; $6919: $19
    rra                                           ; $691a: $1f
    dec e                                         ; $691b: $1d
    ld [bc], a                                    ; $691c: $02
    ld e, $81                                     ; $691d: $1e $81
    inc c                                         ; $691f: $0c
    inc bc                                        ; $6920: $03
    inc e                                         ; $6921: $1c
    add c                                         ; $6922: $81
    inc b                                         ; $6923: $04
    inc bc                                        ; $6924: $03
    inc e                                         ; $6925: $1c
    ld [de], a                                    ; $6926: $12
    nop                                           ; $6927: $00
    rst $38                                       ; $6928: $ff
    rlca                                          ; $6929: $07
    ld bc, $07f8                                  ; $692a: $01 $f8 $07
    ld a, [c]                                     ; $692d: $f2
    ld bc, $fceb                                  ; $692e: $01 $eb $fc
    add [hl]                                      ; $6931: $86
    nop                                           ; $6932: $00
    inc [hl]                                      ; $6933: $34
    nop                                           ; $6934: $00
    ld e, e                                       ; $6935: $5b
    nop                                           ; $6936: $00
    ld h, l                                       ; $6937: $65
    ld a, [de]                                    ; $6938: $1a
    nop                                           ; $6939: $00
    rst $38                                       ; $693a: $ff
    dec c                                         ; $693b: $0d
    inc b                                         ; $693c: $04
    ei                                            ; $693d: $fb
    dec b                                         ; $693e: $05
    rst $30                                       ; $693f: $f7
    cp $ea                                        ; $6940: $fe $ea
    ld a, [$ffea]                                 ; $6942: $fa $ea $ff
    ld a, [$fafa]                                 ; $6945: $fa $fa $fa
    rst $38                                       ; $6948: $ff
    ld [bc], a                                    ; $6949: $02
    rrca                                          ; $694a: $0f
    ld [bc], a                                    ; $694b: $02
    ld [de], a                                    ; $694c: $12
    add d                                         ; $694d: $82
    inc h                                         ; $694e: $24
    jr nz, jr_0e7_6953                            ; $694f: $20 $02

    scf                                           ; $6951: $37
    sbc b                                         ; $6952: $98

jr_0e7_6953:
    ccf                                           ; $6953: $3f
    add hl, sp                                    ; $6954: $39
    dec a                                         ; $6955: $3d
    inc l                                         ; $6956: $2c
    cpl                                           ; $6957: $2f
    ld [hl+], a                                   ; $6958: $22
    rra                                           ; $6959: $1f
    ld de, $131b                                  ; $695a: $11 $1b $13
    ccf                                           ; $695d: $3f
    jr c, @+$7c                                   ; $695e: $38 $7a

    ld a, a                                       ; $6960: $7f
    ld e, l                                       ; $6961: $5d
    ld a, a                                       ; $6962: $7f
    sbc d                                         ; $6963: $9a
    rst $38                                       ; $6964: $ff
    cp l                                          ; $6965: $bd
    rst $38                                       ; $6966: $ff
    db $fd                                        ; $6967: $fd
    rst $38                                       ; $6968: $ff
    db $fd                                        ; $6969: $fd
    cp a                                          ; $696a: $bf
    ld [bc], a                                    ; $696b: $02
    db $10                                        ; $696c: $10
    add h                                         ; $696d: $84
    jr jr_0e7_6978                                ; $696e: $18 $08

    inc d                                         ; $6970: $14
    inc b                                         ; $6971: $04
    ld [bc], a                                    ; $6972: $02
    inc d                                         ; $6973: $14
    add d                                         ; $6974: $82
    inc e                                         ; $6975: $1c
    inc c                                         ; $6976: $0c
    inc bc                                        ; $6977: $03

jr_0e7_6978:
    inc e                                         ; $6978: $1c
    add l                                         ; $6979: $85
    inc b                                         ; $697a: $04
    jr jr_0e7_6985                                ; $697b: $18 $08

    jr jr_0e7_6987                                ; $697d: $18 $08

    ld [bc], a                                    ; $697f: $02
    jr jr_0e7_6984                                ; $6980: $18 $02

    inc e                                         ; $6982: $1c
    sub b                                         ; $6983: $90

jr_0e7_6984:
    ld a, [de]                                    ; $6984: $1a

jr_0e7_6985:
    ld e, $1a                                     ; $6985: $1e $1a

jr_0e7_6987:
    ld e, $1a                                     ; $6987: $1e $1a
    ld e, $19                                     ; $6989: $1e $19
    rra                                           ; $698b: $1f
    dec e                                         ; $698c: $1d
    rra                                           ; $698d: $1f
    ld sp, hl                                     ; $698e: $f9
    cp a                                          ; $698f: $bf
    halt                                          ; $6990: $76
    ld e, a                                       ; $6991: $5f
    ld l, $3f                                     ; $6992: $2e $3f
    inc b                                         ; $6994: $04
    ld a, a                                       ; $6995: $7f
    add d                                         ; $6996: $82
    daa                                           ; $6997: $27
    ccf                                           ; $6998: $3f
    ld [bc], a                                    ; $6999: $02
    dec a                                         ; $699a: $3d
    ld [bc], a                                    ; $699b: $02
    inc e                                         ; $699c: $1c
    stop                                          ; $699d: $10 $00
    add a                                         ; $699f: $87
    rra                                           ; $69a0: $1f
    dec de                                        ; $69a1: $1b
    ld e, $12                                     ; $69a2: $1e $12
    ld d, $1a                                     ; $69a4: $16 $1a
    inc c                                         ; $69a6: $0c
    inc bc                                        ; $69a7: $03
    inc e                                         ; $69a8: $1c
    add d                                         ; $69a9: $82
    inc d                                         ; $69aa: $14
    inc e                                         ; $69ab: $1c
    ld [bc], a                                    ; $69ac: $02
    jr @+$14                                      ; $69ad: $18 $12

    nop                                           ; $69af: $00
    rst $38                                       ; $69b0: $ff
    rlca                                          ; $69b1: $07
    ld bc, $07f8                                  ; $69b2: $01 $f8 $07
    ld a, [c]                                     ; $69b5: $f2
    ld bc, $fceb                                  ; $69b6: $01 $eb $fc
    add [hl]                                      ; $69b9: $86
    nop                                           ; $69ba: $00
    inc [hl]                                      ; $69bb: $34
    nop                                           ; $69bc: $00
    ld l, l                                       ; $69bd: $6d
    nop                                           ; $69be: $00
    ld hl, $0003                                  ; $69bf: $21 $03 $00
    add e                                         ; $69c2: $83
    ld [$4000], sp                                ; $69c3: $08 $00 $40
    inc bc                                        ; $69c6: $03
    nop                                           ; $69c7: $00
    add c                                         ; $69c8: $81
    db $10                                        ; $69c9: $10
    stop                                          ; $69ca: $10 $00
    rst $38                                       ; $69cc: $ff
    dec c                                         ; $69cd: $0d
    inc b                                         ; $69ce: $04
    ei                                            ; $69cf: $fb
    dec b                                         ; $69d0: $05
    rst $30                                       ; $69d1: $f7
    cp $eb                                        ; $69d2: $fe $eb
    ld a, [$ffeb]                                 ; $69d4: $fa $eb $ff
    ei                                            ; $69d7: $fb
    ld a, [$fffb]                                 ; $69d8: $fa $fb $ff
    ld [bc], a                                    ; $69db: $02
    rrca                                          ; $69dc: $0f
    ld [bc], a                                    ; $69dd: $02
    ld [de], a                                    ; $69de: $12
    add d                                         ; $69df: $82
    inc h                                         ; $69e0: $24
    jr nz, jr_0e7_69e5                            ; $69e1: $20 $02

    scf                                           ; $69e3: $37
    sbc b                                         ; $69e4: $98

jr_0e7_69e5:
    ccf                                           ; $69e5: $3f
    add hl, sp                                    ; $69e6: $39
    dec a                                         ; $69e7: $3d
    inc l                                         ; $69e8: $2c
    cpl                                           ; $69e9: $2f
    ld [hl+], a                                   ; $69ea: $22
    rra                                           ; $69eb: $1f
    ld de, $131b                                  ; $69ec: $11 $1b $13
    rra                                           ; $69ef: $1f
    jr jr_0e7_6a6c                                ; $69f0: $18 $7a

    ld a, a                                       ; $69f2: $7f
    ld e, l                                       ; $69f3: $5d
    ld a, a                                       ; $69f4: $7f
    ld e, d                                       ; $69f5: $5a
    ld a, a                                       ; $69f6: $7f
    sbc l                                         ; $69f7: $9d
    rst $38                                       ; $69f8: $ff
    cp l                                          ; $69f9: $bd
    rst $38                                       ; $69fa: $ff
    db $fd                                        ; $69fb: $fd
    rst $38                                       ; $69fc: $ff
    ld [bc], a                                    ; $69fd: $02
    db $10                                        ; $69fe: $10
    add h                                         ; $69ff: $84
    jr jr_0e7_6a0a                                ; $6a00: $18 $08

    inc d                                         ; $6a02: $14
    inc b                                         ; $6a03: $04
    ld [bc], a                                    ; $6a04: $02
    inc d                                         ; $6a05: $14
    add d                                         ; $6a06: $82
    inc e                                         ; $6a07: $1c
    inc c                                         ; $6a08: $0c
    inc bc                                        ; $6a09: $03

jr_0e7_6a0a:
    inc e                                         ; $6a0a: $1c
    add l                                         ; $6a0b: $85
    inc b                                         ; $6a0c: $04
    jr jr_0e7_6a17                                ; $6a0d: $18 $08

    jr jr_0e7_6a19                                ; $6a0f: $18 $08

    ld [bc], a                                    ; $6a11: $02
    jr jr_0e7_6a16                                ; $6a12: $18 $02

    inc e                                         ; $6a14: $1c
    sub b                                         ; $6a15: $90

jr_0e7_6a16:
    ld a, [de]                                    ; $6a16: $1a

jr_0e7_6a17:
    ld e, $1a                                     ; $6a17: $1e $1a

jr_0e7_6a19:
    ld e, $1a                                     ; $6a19: $1e $1a
    ld e, $1d                                     ; $6a1b: $1e $1d
    rra                                           ; $6a1d: $1f
    add hl, de                                    ; $6a1e: $19
    rra                                           ; $6a1f: $1f
    ld a, [$f6bf]                                 ; $6a20: $fa $bf $f6
    cp a                                          ; $6a23: $bf
    ld l, [hl]                                    ; $6a24: $6e
    ld a, a                                       ; $6a25: $7f
    ld [bc], a                                    ; $6a26: $02
    ccf                                           ; $6a27: $3f
    ld [bc], a                                    ; $6a28: $02
    ld a, a                                       ; $6a29: $7f
    add d                                         ; $6a2a: $82
    dec h                                         ; $6a2b: $25
    dec a                                         ; $6a2c: $3d
    ld [bc], a                                    ; $6a2d: $02
    inc a                                         ; $6a2e: $3c
    ld [de], a                                    ; $6a2f: $12
    nop                                           ; $6a30: $00
    adc b                                         ; $6a31: $88
    rra                                           ; $6a32: $1f
    dec de                                        ; $6a33: $1b
    rra                                           ; $6a34: $1f
    add hl, de                                    ; $6a35: $19
    dec e                                         ; $6a36: $1d
    rra                                           ; $6a37: $1f
    ld c, $1e                                     ; $6a38: $0e $1e
    ld [bc], a                                    ; $6a3a: $02
    jr jr_0e7_6a3f                                ; $6a3b: $18 $02

    db $10                                        ; $6a3d: $10
    inc d                                         ; $6a3e: $14

jr_0e7_6a3f:
    nop                                           ; $6a3f: $00
    rst $38                                       ; $6a40: $ff
    rlca                                          ; $6a41: $07
    ld bc, $07f8                                  ; $6a42: $01 $f8 $07
    ld a, [c]                                     ; $6a45: $f2
    ld bc, $fcec                                  ; $6a46: $01 $ec $fc
    add [hl]                                      ; $6a49: $86
    nop                                           ; $6a4a: $00
    inc [hl]                                      ; $6a4b: $34
    nop                                           ; $6a4c: $00
    ld l, l                                       ; $6a4d: $6d
    nop                                           ; $6a4e: $00
    ld hl, $0003                                  ; $6a4f: $21 $03 $00
    add e                                         ; $6a52: $83
    ld [$4000], sp                                ; $6a53: $08 $00 $40
    inc bc                                        ; $6a56: $03
    nop                                           ; $6a57: $00
    add c                                         ; $6a58: $81
    db $10                                        ; $6a59: $10
    stop                                          ; $6a5a: $10 $00
    rst $38                                       ; $6a5c: $ff
    dec c                                         ; $6a5d: $0d
    inc b                                         ; $6a5e: $04
    ei                                            ; $6a5f: $fb
    dec b                                         ; $6a60: $05
    rst $30                                       ; $6a61: $f7
    cp $ea                                        ; $6a62: $fe $ea
    ld a, [$ffea]                                 ; $6a64: $fa $ea $ff
    ld a, [$fafa]                                 ; $6a67: $fa $fa $fa
    rst $38                                       ; $6a6a: $ff
    ld [bc], a                                    ; $6a6b: $02

jr_0e7_6a6c:
    rrca                                          ; $6a6c: $0f
    ld [bc], a                                    ; $6a6d: $02
    ld [de], a                                    ; $6a6e: $12
    add d                                         ; $6a6f: $82
    add hl, hl                                    ; $6a70: $29
    jr nz, jr_0e7_6a75                            ; $6a71: $20 $02

    ld h, $98                                     ; $6a73: $26 $98

jr_0e7_6a75:
    ccf                                           ; $6a75: $3f
    add hl, sp                                    ; $6a76: $39
    ccf                                           ; $6a77: $3f
    dec l                                         ; $6a78: $2d
    ccf                                           ; $6a79: $3f
    inc h                                         ; $6a7a: $24
    rra                                           ; $6a7b: $1f
    ld [de], a                                    ; $6a7c: $12
    rra                                           ; $6a7d: $1f
    rla                                           ; $6a7e: $17
    rra                                           ; $6a7f: $1f
    jr jr_0e7_6abc                                ; $6a80: $18 $3a

    ccf                                           ; $6a82: $3f
    ld e, l                                       ; $6a83: $5d
    ld a, a                                       ; $6a84: $7f
    ld e, d                                       ; $6a85: $5a
    ld a, a                                       ; $6a86: $7f
    cp l                                          ; $6a87: $bd
    rst $38                                       ; $6a88: $ff
    db $fd                                        ; $6a89: $fd
    rst $38                                       ; $6a8a: $ff
    db $fd                                        ; $6a8b: $fd
    cp a                                          ; $6a8c: $bf
    ld [bc], a                                    ; $6a8d: $02
    db $10                                        ; $6a8e: $10
    add d                                         ; $6a8f: $82
    jr jr_0e7_6a9a                                ; $6a90: $18 $08

    ld [bc], a                                    ; $6a92: $02
    inc b                                         ; $6a93: $04
    ld [bc], a                                    ; $6a94: $02
    inc d                                         ; $6a95: $14
    adc d                                         ; $6a96: $8a
    inc e                                         ; $6a97: $1c
    inc c                                         ; $6a98: $0c
    inc e                                         ; $6a99: $1c

jr_0e7_6a9a:
    inc d                                         ; $6a9a: $14
    inc e                                         ; $6a9b: $1c
    inc b                                         ; $6a9c: $04
    jr jr_0e7_6aa7                                ; $6a9d: $18 $08

    jr jr_0e7_6aa9                                ; $6a9f: $18 $08

    ld [bc], a                                    ; $6aa1: $02
    jr jr_0e7_6aa6                                ; $6aa2: $18 $02

    inc e                                         ; $6aa4: $1c
    add l                                         ; $6aa5: $85

jr_0e7_6aa6:
    ld a, [de]                                    ; $6aa6: $1a

jr_0e7_6aa7:
    ld e, $1a                                     ; $6aa7: $1e $1a

jr_0e7_6aa9:
    ld e, $1d                                     ; $6aa9: $1e $1d
    inc b                                         ; $6aab: $04
    rra                                           ; $6aac: $1f
    adc b                                         ; $6aad: $88
    dec e                                         ; $6aae: $1d
    ld a, [$fa9f]                                 ; $6aaf: $fa $9f $fa
    and a                                         ; $6ab2: $a7
    ld a, d                                       ; $6ab3: $7a
    ld a, a                                       ; $6ab4: $7f
    scf                                           ; $6ab5: $37
    inc bc                                        ; $6ab6: $03
    ccf                                           ; $6ab7: $3f
    add d                                         ; $6ab8: $82
    dec h                                         ; $6ab9: $25
    dec a                                         ; $6aba: $3d
    ld [bc], a                                    ; $6abb: $02

jr_0e7_6abc:
    inc a                                         ; $6abc: $3c
    ld [de], a                                    ; $6abd: $12
    nop                                           ; $6abe: $00
    add h                                         ; $6abf: $84
    rra                                           ; $6ac0: $1f
    add hl, de                                    ; $6ac1: $19
    rra                                           ; $6ac2: $1f
    dec e                                         ; $6ac3: $1d
    ld [bc], a                                    ; $6ac4: $02
    ld e, $81                                     ; $6ac5: $1e $81
    inc c                                         ; $6ac7: $0c
    inc bc                                        ; $6ac8: $03
    inc e                                         ; $6ac9: $1c
    add d                                         ; $6aca: $82
    inc c                                         ; $6acb: $0c
    inc e                                         ; $6acc: $1c
    ld [bc], a                                    ; $6acd: $02
    jr jr_0e7_6ae2                                ; $6ace: $18 $12

    nop                                           ; $6ad0: $00
    rst $38                                       ; $6ad1: $ff
    rlca                                          ; $6ad2: $07
    ld bc, $07f8                                  ; $6ad3: $01 $f8 $07
    ld a, [c]                                     ; $6ad6: $f2
    ld bc, $fceb                                  ; $6ad7: $01 $eb $fc
    add [hl]                                      ; $6ada: $86
    nop                                           ; $6adb: $00
    inc [hl]                                      ; $6adc: $34
    nop                                           ; $6add: $00
    ld e, e                                       ; $6ade: $5b
    nop                                           ; $6adf: $00
    ld h, l                                       ; $6ae0: $65
    ld a, [de]                                    ; $6ae1: $1a

jr_0e7_6ae2:
    nop                                           ; $6ae2: $00
    rst $38                                       ; $6ae3: $ff
    dec c                                         ; $6ae4: $0d
    inc b                                         ; $6ae5: $04
    ld a, [$f704]                                 ; $6ae6: $fa $04 $f7
    cp $ea                                        ; $6ae9: $fe $ea
    ei                                            ; $6aeb: $fb
    db $eb                                        ; $6aec: $eb
    db $fd                                        ; $6aed: $fd
    ld a, [$fafb]                                 ; $6aee: $fa $fb $fa
    db $fc                                        ; $6af1: $fc
    ld [bc], a                                    ; $6af2: $02
    rra                                           ; $6af3: $1f
    sbc [hl]                                      ; $6af4: $9e
    db $e4                                        ; $6af5: $e4
    ldh [rOBP1], a                                ; $6af6: $e0 $49
    ld b, c                                       ; $6af8: $41
    and l                                         ; $6af9: $a5
    add l                                         ; $6afa: $85
    adc a                                         ; $6afb: $8f
    adc d                                         ; $6afc: $8a
    rst $18                                       ; $6afd: $df
    sub $7f                                       ; $6afe: $d6 $7f
    ld [hl], b                                    ; $6b00: $70
    ld a, a                                       ; $6b01: $7f
    ld d, b                                       ; $6b02: $50
    ccf                                           ; $6b03: $3f
    inc sp                                        ; $6b04: $33
    ccf                                           ; $6b05: $3f
    add hl, sp                                    ; $6b06: $39
    ld d, d                                       ; $6b07: $52
    ld a, [hl]                                    ; $6b08: $7e
    xor l                                         ; $6b09: $ad
    rst $38                                       ; $6b0a: $ff
    db $eb                                        ; $6b0b: $eb
    rst $38                                       ; $6b0c: $ff
    ld c, l                                       ; $6b0d: $4d
    ld a, a                                       ; $6b0e: $7f
    ld e, l                                       ; $6b0f: $5d
    ld a, a                                       ; $6b10: $7f
    ld a, l                                       ; $6b11: $7d
    ld l, a                                       ; $6b12: $6f
    ld [bc], a                                    ; $6b13: $02
    ld [bc], a                                    ; $6b14: $02
    ld [bc], a                                    ; $6b15: $02
    ld bc, $0206                                  ; $6b16: $01 $06 $02
    add d                                         ; $6b19: $82
    inc bc                                        ; $6b1a: $03
    ld bc, $0204                                  ; $6b1b: $01 $04 $02
    ld c, $00                                     ; $6b1e: $0e $00

jr_0e7_6b20:
    add d                                         ; $6b20: $82
    db $fc                                        ; $6b21: $fc
    sbc h                                         ; $6b22: $9c
    ld [bc], a                                    ; $6b23: $02
    ld b, b                                       ; $6b24: $40
    add [hl]                                      ; $6b25: $86
    rst $38                                       ; $6b26: $ff
    add sp, -$45                                  ; $6b27: $e8 $bb
    rst $38                                       ; $6b29: $ff
    rst $30                                       ; $6b2a: $f7
    rst $38                                       ; $6b2b: $ff
    ld [bc], a                                    ; $6b2c: $02
    cp $02                                        ; $6b2d: $fe $02
    ld a, [hl]                                    ; $6b2f: $7e
    add c                                         ; $6b30: $81
    add hl, hl                                    ; $6b31: $29
    inc bc                                        ; $6b32: $03
    ccf                                           ; $6b33: $3f
    ld [de], a                                    ; $6b34: $12
    nop                                           ; $6b35: $00

jr_0e7_6b36:
    ld [bc], a                                    ; $6b36: $02
    ld bc, $001c                                  ; $6b37: $01 $1c $00
    rst $38                                       ; $6b3a: $ff
    rlca                                          ; $6b3b: $07
    ld bc, $07f8                                  ; $6b3c: $01 $f8 $07
    ld a, [c]                                     ; $6b3f: $f2
    ld bc, $fceb                                  ; $6b40: $01 $eb $fc
    adc d                                         ; $6b43: $8a
    nop                                           ; $6b44: $00
    ld [hl], $00                                  ; $6b45: $36 $00
    ld l, l                                       ; $6b47: $6d
    nop                                           ; $6b48: $00
    or h                                          ; $6b49: $b4
    nop                                           ; $6b4a: $00
    ldh [rP1], a                                  ; $6b4b: $e0 $00
    ld b, b                                       ; $6b4d: $40
    ld d, $00                                     ; $6b4e: $16 $00
    rst $38                                       ; $6b50: $ff
    dec c                                         ; $6b51: $0d
    inc b                                         ; $6b52: $04
    ld a, [$f704]                                 ; $6b53: $fa $04 $f7
    cp $ea                                        ; $6b56: $fe $ea
    ei                                            ; $6b58: $fb
    db $eb                                        ; $6b59: $eb
    db $fd                                        ; $6b5a: $fd
    ld a, [$fafa]                                 ; $6b5b: $fa $fa $fa
    rst $38                                       ; $6b5e: $ff
    ld [bc], a                                    ; $6b5f: $02
    rra                                           ; $6b60: $1f
    adc b                                         ; $6b61: $88
    db $e4                                        ; $6b62: $e4
    ldh [rHDMA2], a                               ; $6b63: $e0 $52
    ld b, d                                       ; $6b65: $42
    xor e                                         ; $6b66: $ab
    adc e                                         ; $6b67: $8b
    adc a                                         ; $6b68: $8f
    adc h                                         ; $6b69: $8c
    ld [bc], a                                    ; $6b6a: $02
    sub [hl]                                      ; $6b6b: $96
    sub h                                         ; $6b6c: $94
    ld a, a                                       ; $6b6d: $7f
    ld [hl], b                                    ; $6b6e: $70
    ld a, a                                       ; $6b6f: $7f
    ld d, b                                       ; $6b70: $50
    ccf                                           ; $6b71: $3f
    inc sp                                        ; $6b72: $33
    ccf                                           ; $6b73: $3f
    add hl, sp                                    ; $6b74: $39
    ld d, d                                       ; $6b75: $52
    ld a, [hl]                                    ; $6b76: $7e
    xor l                                         ; $6b77: $ad
    rst $38                                       ; $6b78: $ff
    db $eb                                        ; $6b79: $eb
    rst $38                                       ; $6b7a: $ff
    dec l                                         ; $6b7b: $2d
    ccf                                           ; $6b7c: $3f
    ld b, l                                       ; $6b7d: $45
    ld a, a                                       ; $6b7e: $7f
    ld l, a                                       ; $6b7f: $6f
    halt                                          ; $6b80: $76
    ld [bc], a                                    ; $6b81: $02
    ld [bc], a                                    ; $6b82: $02
    ld [bc], a                                    ; $6b83: $02
    ld bc, $0302                                  ; $6b84: $01 $02 $03
    inc b                                         ; $6b87: $04
    ld [bc], a                                    ; $6b88: $02
    add d                                         ; $6b89: $82
    inc bc                                        ; $6b8a: $03
    ld bc, $0204                                  ; $6b8b: $01 $04 $02
    ld a, [bc]                                    ; $6b8e: $0a
    nop                                           ; $6b8f: $00
    add c                                         ; $6b90: $81
    ld [bc], a                                    ; $6b91: $02
    inc bc                                        ; $6b92: $03
    nop                                           ; $6b93: $00
    add d                                         ; $6b94: $82
    db $fc                                        ; $6b95: $fc
    db $e4                                        ; $6b96: $e4
    ld [bc], a                                    ; $6b97: $02
    jr nz, jr_0e7_6b20                            ; $6b98: $20 $86

    ld a, a                                       ; $6b9a: $7f
    ld a, l                                       ; $6b9b: $7d
    ld e, l                                       ; $6b9c: $5d
    ld a, a                                       ; $6b9d: $7f
    ld l, e                                       ; $6b9e: $6b
    ld a, a                                       ; $6b9f: $7f
    ld [bc], a                                    ; $6ba0: $02
    rst $38                                       ; $6ba1: $ff
    ld [bc], a                                    ; $6ba2: $02
    db $fd                                        ; $6ba3: $fd
    add d                                         ; $6ba4: $82
    ld h, l                                       ; $6ba5: $65
    ld a, l                                       ; $6ba6: $7d
    ld [bc], a                                    ; $6ba7: $02
    inc e                                         ; $6ba8: $1c
    ld [de], a                                    ; $6ba9: $12
    nop                                           ; $6baa: $00
    ld [bc], a                                    ; $6bab: $02
    jr jr_0e7_6b36                                ; $6bac: $18 $88

    ld [$1618], sp                                ; $6bae: $08 $18 $16
    ld e, $19                                     ; $6bb1: $1e $19
    rra                                           ; $6bb3: $1f
    ld d, $1e                                     ; $6bb4: $16 $1e
    ld [bc], a                                    ; $6bb6: $02
    jr jr_0e7_6bcb                                ; $6bb7: $18 $12

    nop                                           ; $6bb9: $00
    rst $38                                       ; $6bba: $ff
    rlca                                          ; $6bbb: $07
    ld bc, $07f8                                  ; $6bbc: $01 $f8 $07
    ld a, [c]                                     ; $6bbf: $f2
    ld bc, $fceb                                  ; $6bc0: $01 $eb $fc
    adc d                                         ; $6bc3: $8a
    nop                                           ; $6bc4: $00
    ld [hl], $00                                  ; $6bc5: $36 $00
    ld e, e                                       ; $6bc7: $5b
    nop                                           ; $6bc8: $00
    xor b                                         ; $6bc9: $a8
    nop                                           ; $6bca: $00

jr_0e7_6bcb:
    ldh [rP1], a                                  ; $6bcb: $e0 $00
    jp nc, $0016                                  ; $6bcd: $d2 $16 $00

    rst $38                                       ; $6bd0: $ff
    dec c                                         ; $6bd1: $0d
    inc b                                         ; $6bd2: $04
    ld a, [$f704]                                 ; $6bd3: $fa $04 $f7
    cp $eb                                        ; $6bd6: $fe $eb
    ei                                            ; $6bd8: $fb
    db $ec                                        ; $6bd9: $ec
    db $fd                                        ; $6bda: $fd
    ei                                            ; $6bdb: $fb
    ld a, [$fdfb]                                 ; $6bdc: $fa $fb $fd
    ld [bc], a                                    ; $6bdf: $02
    ccf                                           ; $6be0: $3f
    adc b                                         ; $6be1: $88
    call nz, Call_0e7_5ac0                        ; $6be2: $c4 $c0 $5a
    ld b, d                                       ; $6be5: $42
    xor e                                         ; $6be6: $ab
    adc e                                         ; $6be7: $8b
    adc a                                         ; $6be8: $8f
    adc h                                         ; $6be9: $8c
    ld [bc], a                                    ; $6bea: $02
    sub [hl]                                      ; $6beb: $96
    sub h                                         ; $6bec: $94
    ld a, a                                       ; $6bed: $7f
    ld [hl], b                                    ; $6bee: $70
    ld a, a                                       ; $6bef: $7f
    ld d, b                                       ; $6bf0: $50
    ccf                                           ; $6bf1: $3f
    inc sp                                        ; $6bf2: $33
    ld a, a                                       ; $6bf3: $7f
    ld a, c                                       ; $6bf4: $79
    sub d                                         ; $6bf5: $92
    cp $ed                                        ; $6bf6: $fe $ed
    rst $38                                       ; $6bf8: $ff
    dec hl                                        ; $6bf9: $2b
    ccf                                           ; $6bfa: $3f
    ld l, l                                       ; $6bfb: $6d
    ld a, a                                       ; $6bfc: $7f
    ld b, l                                       ; $6bfd: $45
    ld a, a                                       ; $6bfe: $7f
    ld l, a                                       ; $6bff: $6f
    ld [hl], h                                    ; $6c00: $74
    ld [bc], a                                    ; $6c01: $02
    ld [bc], a                                    ; $6c02: $02
    ld [bc], a                                    ; $6c03: $02
    ld bc, $0302                                  ; $6c04: $01 $02 $03
    inc b                                         ; $6c07: $04
    ld [bc], a                                    ; $6c08: $02
    add d                                         ; $6c09: $82
    inc bc                                        ; $6c0a: $03
    ld bc, $0204                                  ; $6c0b: $01 $04 $02
    ld c, $00                                     ; $6c0e: $0e $00
    add d                                         ; $6c10: $82
    db $fc                                        ; $6c11: $fc
    call z, Call_000_2002                         ; $6c12: $cc $02 $20
    add [hl]                                      ; $6c15: $86
    ld e, a                                       ; $6c16: $5f
    ld a, e                                       ; $6c17: $7b
    db $dd                                        ; $6c18: $dd
    rst $38                                       ; $6c19: $ff
    ei                                            ; $6c1a: $fb
    rst $38                                       ; $6c1b: $ff
    ld [bc], a                                    ; $6c1c: $02
    ld a, a                                       ; $6c1d: $7f
    add d                                         ; $6c1e: $82
    ld l, e                                       ; $6c1f: $6b
    ld a, e                                       ; $6c20: $7b
    ld [bc], a                                    ; $6c21: $02
    jr nc, @+$16                                  ; $6c22: $30 $14

    nop                                           ; $6c24: $00
    ld [bc], a                                    ; $6c25: $02
    inc b                                         ; $6c26: $04
    add c                                         ; $6c27: $81
    ld [bc], a                                    ; $6c28: $02
    inc bc                                        ; $6c29: $03
    ld b, $81                                     ; $6c2a: $06 $81
    ld bc, $0703                                  ; $6c2c: $01 $03 $07
    inc d                                         ; $6c2f: $14
    nop                                           ; $6c30: $00
    rst $38                                       ; $6c31: $ff
    rlca                                          ; $6c32: $07
    ld bc, $07f8                                  ; $6c33: $01 $f8 $07
    ld a, [c]                                     ; $6c36: $f2
    ld bc, $fcec                                  ; $6c37: $01 $ec $fc
    adc d                                         ; $6c3a: $8a
    nop                                           ; $6c3b: $00
    halt                                          ; $6c3c: $76
    nop                                           ; $6c3d: $00
    ld c, e                                       ; $6c3e: $4b
    nop                                           ; $6c3f: $00
    xor b                                         ; $6c40: $a8
    nop                                           ; $6c41: $00
    ldh [rP1], a                                  ; $6c42: $e0 $00
    jp nc, $0016                                  ; $6c44: $d2 $16 $00

    rst $38                                       ; $6c47: $ff
    dec bc                                        ; $6c48: $0b
    inc bc                                        ; $6c49: $03
    ld a, [$f704]                                 ; $6c4a: $fa $04 $f7
    cp $ea                                        ; $6c4d: $fe $ea
    ei                                            ; $6c4f: $fb
    db $eb                                        ; $6c50: $eb
    db $fd                                        ; $6c51: $fd
    ld a, [$02fc]                                 ; $6c52: $fa $fc $02
    rra                                           ; $6c55: $1f
    sbc [hl]                                      ; $6c56: $9e
    ld h, h                                       ; $6c57: $64
    ld h, b                                       ; $6c58: $60
    ret                                           ; $6c59: $c9


    pop bc                                        ; $6c5a: $c1
    and l                                         ; $6c5b: $a5
    add l                                         ; $6c5c: $85
    adc a                                         ; $6c5d: $8f
    adc d                                         ; $6c5e: $8a
    rst $18                                       ; $6c5f: $df
    sub $7f                                       ; $6c60: $d6 $7f
    ld [hl], b                                    ; $6c62: $70
    ld a, a                                       ; $6c63: $7f
    ld d, b                                       ; $6c64: $50
    ccf                                           ; $6c65: $3f
    inc sp                                        ; $6c66: $33
    ccf                                           ; $6c67: $3f
    add hl, sp                                    ; $6c68: $39
    jp nc, $adfe                                  ; $6c69: $d2 $fe $ad

    rst $38                                       ; $6c6c: $ff
    ld l, e                                       ; $6c6d: $6b
    ld a, a                                       ; $6c6e: $7f
    ld e, l                                       ; $6c6f: $5d
    ld a, a                                       ; $6c70: $7f
    ld c, l                                       ; $6c71: $4d
    ld a, a                                       ; $6c72: $7f
    ld a, l                                       ; $6c73: $7d
    ld e, a                                       ; $6c74: $5f
    ld [bc], a                                    ; $6c75: $02
    ld [bc], a                                    ; $6c76: $02
    ld [bc], a                                    ; $6c77: $02
    ld bc, $0206                                  ; $6c78: $01 $06 $02
    add d                                         ; $6c7b: $82
    inc bc                                        ; $6c7c: $03
    ld bc, $0204                                  ; $6c7d: $01 $04 $02
    ld c, $00                                     ; $6c80: $0e $00
    add d                                         ; $6c82: $82
    db $f4                                        ; $6c83: $f4
    cp h                                          ; $6c84: $bc
    ld [bc], a                                    ; $6c85: $02
    add b                                         ; $6c86: $80
    adc d                                         ; $6c87: $8a
    db $fd                                        ; $6c88: $fd
    sub e                                         ; $6c89: $93
    or c                                          ; $6c8a: $b1
    rst $38                                       ; $6c8b: $ff
    ld a, l                                       ; $6c8c: $7d
    ld a, a                                       ; $6c8d: $7f
    xor $fe                                       ; $6c8e: $ee $fe
    di                                            ; $6c90: $f3
    rst $38                                       ; $6c91: $ff
    ld [bc], a                                    ; $6c92: $02
    ld a, [hl]                                    ; $6c93: $7e
    ld [de], a                                    ; $6c94: $12
    nop                                           ; $6c95: $00
    rst $38                                       ; $6c96: $ff
    rlca                                          ; $6c97: $07
    ld bc, $07f8                                  ; $6c98: $01 $f8 $07
    ld a, [c]                                     ; $6c9b: $f2
    ld bc, $fceb                                  ; $6c9c: $01 $eb $fc
    adc d                                         ; $6c9f: $8a
    nop                                           ; $6ca0: $00
    ld [hl], $00                                  ; $6ca1: $36 $00
    ld l, l                                       ; $6ca3: $6d
    nop                                           ; $6ca4: $00
    or h                                          ; $6ca5: $b4
    nop                                           ; $6ca6: $00
    ldh [rP1], a                                  ; $6ca7: $e0 $00
    ld b, b                                       ; $6ca9: $40
    ld d, $00                                     ; $6caa: $16 $00
    rst $38                                       ; $6cac: $ff
    dec c                                         ; $6cad: $0d
    inc b                                         ; $6cae: $04
    ld a, [$f704]                                 ; $6caf: $fa $04 $f7
    cp $ea                                        ; $6cb2: $fe $ea
    ei                                            ; $6cb4: $fb
    db $eb                                        ; $6cb5: $eb
    db $fd                                        ; $6cb6: $fd
    ld a, [$fafa]                                 ; $6cb7: $fa $fa $fa
    rst $38                                       ; $6cba: $ff
    ld [bc], a                                    ; $6cbb: $02
    rra                                           ; $6cbc: $1f
    sbc [hl]                                      ; $6cbd: $9e
    db $e4                                        ; $6cbe: $e4
    ldh [rOBP0], a                                ; $6cbf: $e0 $48
    ld b, b                                       ; $6cc1: $40
    and l                                         ; $6cc2: $a5
    add l                                         ; $6cc3: $85
    adc a                                         ; $6cc4: $8f
    adc [hl]                                      ; $6cc5: $8e
    rst $08                                       ; $6cc6: $cf
    bit 7, a                                      ; $6cc7: $cb $7f
    ld [hl], b                                    ; $6cc9: $70
    ld a, a                                       ; $6cca: $7f
    ld d, b                                       ; $6ccb: $50
    ccf                                           ; $6ccc: $3f
    ld sp, $393f                                  ; $6ccd: $31 $3f $39
    ld d, d                                       ; $6cd0: $52
    ld a, [hl]                                    ; $6cd1: $7e
    xor l                                         ; $6cd2: $ad
    rst $38                                       ; $6cd3: $ff
    set 7, a                                      ; $6cd4: $cb $ff
    ld e, l                                       ; $6cd6: $5d
    ld a, a                                       ; $6cd7: $7f
    db $dd                                        ; $6cd8: $dd
    rst $38                                       ; $6cd9: $ff
    db $fd                                        ; $6cda: $fd
    rst $18                                       ; $6cdb: $df
    ld [bc], a                                    ; $6cdc: $02
    ld [bc], a                                    ; $6cdd: $02
    ld [bc], a                                    ; $6cde: $02
    ld bc, $0206                                  ; $6cdf: $01 $06 $02
    add d                                         ; $6ce2: $82
    inc bc                                        ; $6ce3: $03
    ld bc, $0204                                  ; $6ce4: $01 $04 $02
    ld c, $00                                     ; $6ce7: $0e $00
    adc c                                         ; $6ce9: $89
    db $f4                                        ; $6cea: $f4
    ld a, h                                       ; $6ceb: $7c
    ld h, b                                       ; $6cec: $60
    ld b, b                                       ; $6ced: $40
    ld e, [hl]                                    ; $6cee: $5e
    ld h, a                                       ; $6cef: $67
    ld e, l                                       ; $6cf0: $5d
    ld a, e                                       ; $6cf1: $7b
    db $ed                                        ; $6cf2: $ed
    inc bc                                        ; $6cf3: $03
    rst $38                                       ; $6cf4: $ff
    add d                                         ; $6cf5: $82
    ld [hl], a                                    ; $6cf6: $77
    ld a, a                                       ; $6cf7: $7f
    ld [bc], a                                    ; $6cf8: $02
    dec de                                        ; $6cf9: $1b
    ld [bc], a                                    ; $6cfa: $02
    ld bc, $0012                                  ; $6cfb: $01 $12 $00
    ld [bc], a                                    ; $6cfe: $02
    db $10                                        ; $6cff: $10
    adc d                                         ; $6d00: $8a
    ld [$0818], sp                                ; $6d01: $08 $18 $08
    jr jr_0e7_6d1c                                ; $6d04: $18 $16

    ld e, $19                                     ; $6d06: $1e $19
    rra                                           ; $6d08: $1f
    ld b, $1e                                     ; $6d09: $06 $1e
    ld [bc], a                                    ; $6d0b: $02
    jr jr_0e7_6d1e                                ; $6d0c: $18 $10

    nop                                           ; $6d0e: $00
    rst $38                                       ; $6d0f: $ff
    rlca                                          ; $6d10: $07
    ld bc, $07f8                                  ; $6d11: $01 $f8 $07
    ld a, [c]                                     ; $6d14: $f2
    ld bc, $fceb                                  ; $6d15: $01 $eb $fc
    adc d                                         ; $6d18: $8a
    nop                                           ; $6d19: $00
    ld [hl], $00                                  ; $6d1a: $36 $00

jr_0e7_6d1c:
    ld l, a                                       ; $6d1c: $6f
    nop                                           ; $6d1d: $00

jr_0e7_6d1e:
    or h                                          ; $6d1e: $b4
    nop                                           ; $6d1f: $00
    ldh [rP1], a                                  ; $6d20: $e0 $00
    ld h, b                                       ; $6d22: $60
    ld d, $00                                     ; $6d23: $16 $00
    rst $38                                       ; $6d25: $ff
    dec c                                         ; $6d26: $0d
    inc b                                         ; $6d27: $04
    ld a, [$f704]                                 ; $6d28: $fa $04 $f7
    cp $eb                                        ; $6d2b: $fe $eb
    ei                                            ; $6d2d: $fb
    db $ec                                        ; $6d2e: $ec
    db $fd                                        ; $6d2f: $fd
    ei                                            ; $6d30: $fb
    ld a, [$fdfb]                                 ; $6d31: $fa $fb $fd
    ld [bc], a                                    ; $6d34: $02
    ccf                                           ; $6d35: $3f
    sbc [hl]                                      ; $6d36: $9e
    call nz, $58c0                                ; $6d37: $c4 $c0 $58
    ld b, b                                       ; $6d3a: $40
    and l                                         ; $6d3b: $a5
    add l                                         ; $6d3c: $85
    adc a                                         ; $6d3d: $8f
    adc [hl]                                      ; $6d3e: $8e
    rst $08                                       ; $6d3f: $cf
    bit 7, a                                      ; $6d40: $cb $7f
    ld [hl], b                                    ; $6d42: $70
    ld a, a                                       ; $6d43: $7f
    ld d, b                                       ; $6d44: $50
    ccf                                           ; $6d45: $3f
    ld sp, $797f                                  ; $6d46: $31 $7f $79
    sub d                                         ; $6d49: $92
    cp $ed                                        ; $6d4a: $fe $ed
    rst $38                                       ; $6d4c: $ff
    dec hl                                        ; $6d4d: $2b
    ccf                                           ; $6d4e: $3f
    ld c, l                                       ; $6d4f: $4d
    ld a, a                                       ; $6d50: $7f
    ld e, l                                       ; $6d51: $5d
    ld a, a                                       ; $6d52: $7f
    ld a, l                                       ; $6d53: $7d
    ld l, a                                       ; $6d54: $6f
    ld [bc], a                                    ; $6d55: $02
    ld [bc], a                                    ; $6d56: $02
    ld [bc], a                                    ; $6d57: $02
    ld bc, $0206                                  ; $6d58: $01 $06 $02
    add d                                         ; $6d5b: $82
    inc bc                                        ; $6d5c: $03
    ld bc, $0204                                  ; $6d5d: $01 $04 $02
    ld c, $00                                     ; $6d60: $0e $00
    add d                                         ; $6d62: $82
    db $f4                                        ; $6d63: $f4
    inc a                                         ; $6d64: $3c
    ld [bc], a                                    ; $6d65: $02
    ld h, b                                       ; $6d66: $60
    adc d                                         ; $6d67: $8a
    xor $f7                                       ; $6d68: $ee $f7
    adc $fb                                       ; $6d6a: $ce $fb
    ld a, l                                       ; $6d6c: $7d
    ld a, a                                       ; $6d6d: $7f
    ld l, a                                       ; $6d6e: $6f
    ld a, a                                       ; $6d6f: $7f
    ld [hl], $37                                  ; $6d70: $36 $37
    ld [bc], a                                    ; $6d72: $02
    rlca                                          ; $6d73: $07
    inc d                                         ; $6d74: $14
    nop                                           ; $6d75: $00
    inc b                                         ; $6d76: $04
    inc b                                         ; $6d77: $04
    add c                                         ; $6d78: $81
    ld [bc], a                                    ; $6d79: $02
    inc bc                                        ; $6d7a: $03
    ld b, $81                                     ; $6d7b: $06 $81
    ld bc, $0703                                  ; $6d7d: $01 $03 $07
    ld [de], a                                    ; $6d80: $12
    nop                                           ; $6d81: $00
    rst $38                                       ; $6d82: $ff
    rlca                                          ; $6d83: $07
    ld bc, $07f8                                  ; $6d84: $01 $f8 $07
    ld a, [c]                                     ; $6d87: $f2
    ld bc, $fcec                                  ; $6d88: $01 $ec $fc
    adc d                                         ; $6d8b: $8a
    nop                                           ; $6d8c: $00
    halt                                          ; $6d8d: $76
    nop                                           ; $6d8e: $00
    ld c, a                                       ; $6d8f: $4f
    nop                                           ; $6d90: $00
    or h                                          ; $6d91: $b4
    nop                                           ; $6d92: $00
    ldh [rP1], a                                  ; $6d93: $e0 $00
    ld h, b                                       ; $6d95: $60
    ld d, $00                                     ; $6d96: $16 $00
    rst $38                                       ; $6d98: $ff
    dec c                                         ; $6d99: $0d
    inc b                                         ; $6d9a: $04
    ld a, [$f704]                                 ; $6d9b: $fa $04 $f7
    cp $ea                                        ; $6d9e: $fe $ea
    ei                                            ; $6da0: $fb
    db $eb                                        ; $6da1: $eb
    db $fd                                        ; $6da2: $fd
    ld a, [$fafb]                                 ; $6da3: $fa $fb $fa
    db $fc                                        ; $6da6: $fc
    ld [bc], a                                    ; $6da7: $02
    rra                                           ; $6da8: $1f
    sbc [hl]                                      ; $6da9: $9e
    ld h, h                                       ; $6daa: $64
    ld h, b                                       ; $6dab: $60
    ret                                           ; $6dac: $c9


    pop bc                                        ; $6dad: $c1
    and l                                         ; $6dae: $a5
    add l                                         ; $6daf: $85
    adc a                                         ; $6db0: $8f
    adc d                                         ; $6db1: $8a
    rst $18                                       ; $6db2: $df
    sub $7f                                       ; $6db3: $d6 $7f
    ld [hl], b                                    ; $6db5: $70
    ld a, a                                       ; $6db6: $7f
    ld d, b                                       ; $6db7: $50
    ccf                                           ; $6db8: $3f
    inc sp                                        ; $6db9: $33
    ccf                                           ; $6dba: $3f
    add hl, sp                                    ; $6dbb: $39
    jp nc, $adfe                                  ; $6dbc: $d2 $fe $ad

    rst $38                                       ; $6dbf: $ff
    ld l, e                                       ; $6dc0: $6b
    ld a, a                                       ; $6dc1: $7f
    ld e, l                                       ; $6dc2: $5d
    ld a, a                                       ; $6dc3: $7f
    ld c, l                                       ; $6dc4: $4d
    ld a, a                                       ; $6dc5: $7f
    ld e, l                                       ; $6dc6: $5d
    ld l, a                                       ; $6dc7: $6f
    ld [bc], a                                    ; $6dc8: $02
    ld [bc], a                                    ; $6dc9: $02
    ld [bc], a                                    ; $6dca: $02
    ld bc, $0206                                  ; $6dcb: $01 $06 $02
    add d                                         ; $6dce: $82
    inc bc                                        ; $6dcf: $03
    ld bc, $0204                                  ; $6dd0: $01 $04 $02
    ld c, $00                                     ; $6dd3: $0e $00
    add d                                         ; $6dd5: $82
    or $de                                        ; $6dd6: $f6 $de
    ld [bc], a                                    ; $6dd8: $02
    ld b, b                                       ; $6dd9: $40
    adc b                                         ; $6dda: $88
    ld a, a                                       ; $6ddb: $7f
    ld h, l                                       ; $6ddc: $65
    db $fd                                        ; $6ddd: $fd
    rst $38                                       ; $6dde: $ff
    cp e                                          ; $6ddf: $bb
    rst $38                                       ; $6de0: $ff
    ld a, l                                       ; $6de1: $7d
    ld a, a                                       ; $6de2: $7f
    ld [bc], a                                    ; $6de3: $02
    ccf                                           ; $6de4: $3f
    add c                                         ; $6de5: $81
    ld sp, $3f03                                  ; $6de6: $31 $03 $3f
    ld [de], a                                    ; $6de9: $12
    nop                                           ; $6dea: $00
    inc b                                         ; $6deb: $04
    ld bc, $001a                                  ; $6dec: $01 $1a $00
    rst $38                                       ; $6def: $ff
    rlca                                          ; $6df0: $07
    ld bc, $07f8                                  ; $6df1: $01 $f8 $07
    ld a, [c]                                     ; $6df4: $f2
    ld bc, $fceb                                  ; $6df5: $01 $eb $fc
    adc d                                         ; $6df8: $8a
    nop                                           ; $6df9: $00
    ld [hl], $00                                  ; $6dfa: $36 $00
    ld l, l                                       ; $6dfc: $6d
    nop                                           ; $6dfd: $00
    or h                                          ; $6dfe: $b4
    nop                                           ; $6dff: $00
    ldh [rP1], a                                  ; $6e00: $e0 $00
    ld b, b                                       ; $6e02: $40
    ld d, $00                                     ; $6e03: $16 $00
    rst $38                                       ; $6e05: $ff
    dec c                                         ; $6e06: $0d
    inc b                                         ; $6e07: $04
    ld hl, sp+$07                                 ; $6e08: $f8 $07
    di                                            ; $6e0a: $f3
    ld [bc], a                                    ; $6e0b: $02
    db $eb                                        ; $6e0c: $eb
    ei                                            ; $6e0d: $fb
    db $ec                                        ; $6e0e: $ec
    db $fd                                        ; $6e0f: $fd
    ei                                            ; $6e10: $fb
    ld a, [$fdfb]                                 ; $6e11: $fa $fb $fd
    ld [bc], a                                    ; $6e14: $02
    rra                                           ; $6e15: $1f
    sbc [hl]                                      ; $6e16: $9e
    db $e4                                        ; $6e17: $e4
    ldh [rOBP1], a                                ; $6e18: $e0 $49
    ld b, c                                       ; $6e1a: $41
    and l                                         ; $6e1b: $a5
    add l                                         ; $6e1c: $85
    adc a                                         ; $6e1d: $8f
    adc d                                         ; $6e1e: $8a
    rst $18                                       ; $6e1f: $df
    sub $7f                                       ; $6e20: $d6 $7f
    ld [hl], b                                    ; $6e22: $70
    ld a, a                                       ; $6e23: $7f
    ld d, b                                       ; $6e24: $50
    ccf                                           ; $6e25: $3f
    inc sp                                        ; $6e26: $33
    ccf                                           ; $6e27: $3f
    add hl, sp                                    ; $6e28: $39
    ld d, [hl]                                    ; $6e29: $56
    ld a, [hl]                                    ; $6e2a: $7e
    cp c                                          ; $6e2b: $b9
    rst $38                                       ; $6e2c: $ff
    ld l, e                                       ; $6e2d: $6b
    ld a, a                                       ; $6e2e: $7f
    ld e, l                                       ; $6e2f: $5d
    ld a, a                                       ; $6e30: $7f
    sbc l                                         ; $6e31: $9d
    rst $38                                       ; $6e32: $ff
    cp l                                          ; $6e33: $bd
    rst $38                                       ; $6e34: $ff
    ld [bc], a                                    ; $6e35: $02
    ld [bc], a                                    ; $6e36: $02
    ld [bc], a                                    ; $6e37: $02
    ld bc, $0302                                  ; $6e38: $01 $02 $03
    inc b                                         ; $6e3b: $04
    ld [bc], a                                    ; $6e3c: $02
    add d                                         ; $6e3d: $82
    inc bc                                        ; $6e3e: $03
    ld bc, $0204                                  ; $6e3f: $01 $04 $02
    ld c, $00                                     ; $6e42: $0e $00
    sub b                                         ; $6e44: $90
    or $fe                                        ; $6e45: $f6 $fe
    add b                                         ; $6e47: $80
    ldh [$7d], a                                  ; $6e48: $e0 $7d
    ld c, a                                       ; $6e4a: $4f
    ld a, e                                       ; $6e4b: $7b
    ld e, a                                       ; $6e4c: $5f
    ld a, a                                       ; $6e4d: $7f
    ld l, a                                       ; $6e4e: $6f
    ld a, a                                       ; $6e4f: $7f
    ld [hl], a                                    ; $6e50: $77
    xor [hl]                                      ; $6e51: $ae
    cp $f4                                        ; $6e52: $fe $f4
    db $fc                                        ; $6e54: $fc
    ld [bc], a                                    ; $6e55: $02
    ld a, [hl]                                    ; $6e56: $7e
    ld [de], a                                    ; $6e57: $12
    nop                                           ; $6e58: $00
    ld [bc], a                                    ; $6e59: $02
    ld b, $02                                     ; $6e5a: $06 $02
    rlca                                          ; $6e5c: $07
    add h                                         ; $6e5d: $84
    dec b                                         ; $6e5e: $05
    rlca                                          ; $6e5f: $07
    inc bc                                        ; $6e60: $03
    rlca                                          ; $6e61: $07
    ld [bc], a                                    ; $6e62: $02
    inc b                                         ; $6e63: $04
    inc d                                         ; $6e64: $14
    nop                                           ; $6e65: $00
    rst $38                                       ; $6e66: $ff
    rlca                                          ; $6e67: $07
    ld bc, $07f8                                  ; $6e68: $01 $f8 $07
    di                                            ; $6e6b: $f3
    ld [bc], a                                    ; $6e6c: $02
    db $ec                                        ; $6e6d: $ec
    db $fc                                        ; $6e6e: $fc
    adc d                                         ; $6e6f: $8a
    nop                                           ; $6e70: $00
    ld [hl], $00                                  ; $6e71: $36 $00
    ld l, l                                       ; $6e73: $6d
    nop                                           ; $6e74: $00
    or h                                          ; $6e75: $b4
    nop                                           ; $6e76: $00
    ldh [rP1], a                                  ; $6e77: $e0 $00
    ld b, b                                       ; $6e79: $40
    ld d, $00                                     ; $6e7a: $16 $00
    rst $38                                       ; $6e7c: $ff
    dec c                                         ; $6e7d: $0d
    inc b                                         ; $6e7e: $04
    ld hl, sp+$07                                 ; $6e7f: $f8 $07
    di                                            ; $6e81: $f3
    ld [bc], a                                    ; $6e82: $02
    db $ec                                        ; $6e83: $ec
    db $fc                                        ; $6e84: $fc
    db $ec                                        ; $6e85: $ec
    rst $38                                       ; $6e86: $ff
    db $fc                                        ; $6e87: $fc
    db $fc                                        ; $6e88: $fc
    db $fc                                        ; $6e89: $fc
    db $fd                                        ; $6e8a: $fd
    ld [bc], a                                    ; $6e8b: $02
    rrca                                          ; $6e8c: $0f
    sbc [hl]                                      ; $6e8d: $9e
    ld [hl-], a                                   ; $6e8e: $32
    jr nc, jr_0e7_6ec2                            ; $6e8f: $30 $31

    ld hl, $4757                                  ; $6e91: $21 $57 $47
    ld c, a                                       ; $6e94: $4f
    ld c, h                                       ; $6e95: $4c
    ld e, [hl]                                    ; $6e96: $5e
    ld d, [hl]                                    ; $6e97: $56
    ccf                                           ; $6e98: $3f
    jr nc, @+$41                                  ; $6e99: $30 $3f

    jr z, @+$21                                   ; $6e9b: $28 $1f

    add hl, de                                    ; $6e9d: $19
    cpl                                           ; $6e9e: $2f
    inc a                                         ; $6e9f: $3c
    ld e, a                                       ; $6ea0: $5f
    ld a, a                                       ; $6ea1: $7f
    dec l                                         ; $6ea2: $2d
    ccf                                           ; $6ea3: $3f
    ld e, d                                       ; $6ea4: $5a
    ld a, a                                       ; $6ea5: $7f
    adc l                                         ; $6ea6: $8d
    rst $38                                       ; $6ea7: $ff
    ld e, a                                       ; $6ea8: $5f
    ld [hl], e                                    ; $6ea9: $73
    ld a, l                                       ; $6eaa: $7d
    ld h, a                                       ; $6eab: $67
    ld [bc], a                                    ; $6eac: $02
    inc b                                         ; $6ead: $04
    ld [bc], a                                    ; $6eae: $02
    ld [bc], a                                    ; $6eaf: $02
    ld [bc], a                                    ; $6eb0: $02
    inc bc                                        ; $6eb1: $03
    ld [bc], a                                    ; $6eb2: $02
    rlca                                          ; $6eb3: $07
    add d                                         ; $6eb4: $82
    ld b, $02                                     ; $6eb5: $06 $02
    ld [bc], a                                    ; $6eb7: $02
    ld b, $84                                     ; $6eb8: $06 $84
    rlca                                          ; $6eba: $07
    ld bc, $0206                                  ; $6ebb: $01 $06 $02
    ld [bc], a                                    ; $6ebe: $02
    ld b, $02                                     ; $6ebf: $06 $02
    inc b                                         ; $6ec1: $04

jr_0e7_6ec2:
    inc b                                         ; $6ec2: $04
    nop                                           ; $6ec3: $00
    inc b                                         ; $6ec4: $04
    inc b                                         ; $6ec5: $04
    ld [bc], a                                    ; $6ec6: $02
    ld b, $02                                     ; $6ec7: $06 $02
    inc b                                         ; $6ec9: $04
    adc b                                         ; $6eca: $88
    ld l, l                                       ; $6ecb: $6d
    ld a, a                                       ; $6ecc: $7f
    ld e, e                                       ; $6ecd: $5b
    ld a, a                                       ; $6ece: $7f
    rst $30                                       ; $6ecf: $f7
    rst $38                                       ; $6ed0: $ff
    rst $08                                       ; $6ed1: $cf
    rst $38                                       ; $6ed2: $ff
    ld [bc], a                                    ; $6ed3: $02
    ld a, h                                       ; $6ed4: $7c
    add d                                         ; $6ed5: $82
    ld d, b                                       ; $6ed6: $50
    ld [hl], b                                    ; $6ed7: $70
    ld [bc], a                                    ; $6ed8: $02
    jr nc, jr_0e7_6eed                            ; $6ed9: $30 $12

    nop                                           ; $6edb: $00
    ld [bc], a                                    ; $6edc: $02
    ld bc, $0081                                  ; $6edd: $01 $81 $00
    rlca                                          ; $6ee0: $07
    ld bc, $0016                                  ; $6ee1: $01 $16 $00
    rst $38                                       ; $6ee4: $ff
    rlca                                          ; $6ee5: $07
    ld bc, $07f8                                  ; $6ee6: $01 $f8 $07
    di                                            ; $6ee9: $f3
    ld [bc], a                                    ; $6eea: $02
    db $ed                                        ; $6eeb: $ed
    db $fd                                        ; $6eec: $fd

jr_0e7_6eed:
    adc d                                         ; $6eed: $8a
    nop                                           ; $6eee: $00
    dec de                                        ; $6eef: $1b
    nop                                           ; $6ef0: $00
    dec e                                         ; $6ef1: $1d
    nop                                           ; $6ef2: $00
    ld d, b                                       ; $6ef3: $50
    nop                                           ; $6ef4: $00
    ld h, b                                       ; $6ef5: $60
    nop                                           ; $6ef6: $00
    ld b, d                                       ; $6ef7: $42
    ld d, $00                                     ; $6ef8: $16 $00
    rst $38                                       ; $6efa: $ff
    dec bc                                        ; $6efb: $0b
    inc bc                                        ; $6efc: $03
    ld hl, sp+$07                                 ; $6efd: $f8 $07
    di                                            ; $6eff: $f3
    ld [bc], a                                    ; $6f00: $02
    db $ed                                        ; $6f01: $ed
    db $fd                                        ; $6f02: $fd
    xor $ff                                       ; $6f03: $ee $ff
    db $fd                                        ; $6f05: $fd
    db $fd                                        ; $6f06: $fd
    ld [bc], a                                    ; $6f07: $02
    rra                                           ; $6f08: $1f
    sbc [hl]                                      ; $6f09: $9e
    ld h, h                                       ; $6f0a: $64
    ld h, b                                       ; $6f0b: $60
    ld h, d                                       ; $6f0c: $62
    ld b, d                                       ; $6f0d: $42
    xor a                                         ; $6f0e: $af
    adc a                                         ; $6f0f: $8f
    sbc a                                         ; $6f10: $9f
    sbc b                                         ; $6f11: $98
    cp l                                          ; $6f12: $bd
    xor l                                         ; $6f13: $ad
    ld a, a                                       ; $6f14: $7f
    ld h, b                                       ; $6f15: $60
    ld a, a                                       ; $6f16: $7f
    ld d, b                                       ; $6f17: $50
    ccf                                           ; $6f18: $3f
    inc sp                                        ; $6f19: $33
    ld e, a                                       ; $6f1a: $5f
    ld a, c                                       ; $6f1b: $79
    cp [hl]                                       ; $6f1c: $be
    cp $6d                                        ; $6f1d: $fe $6d
    ld a, a                                       ; $6f1f: $7f
    ld c, a                                       ; $6f20: $4f
    ld a, a                                       ; $6f21: $7f
    ld h, c                                       ; $6f22: $61
    ld a, a                                       ; $6f23: $7f
    ei                                            ; $6f24: $fb
    cp $ff                                        ; $6f25: $fe $ff
    cp $02                                        ; $6f27: $fe $02
    ld [bc], a                                    ; $6f29: $02
    inc b                                         ; $6f2a: $04
    inc bc                                        ; $6f2b: $03
    inc b                                         ; $6f2c: $04
    ld [bc], a                                    ; $6f2d: $02
    add d                                         ; $6f2e: $82
    inc bc                                        ; $6f2f: $03
    ld bc, $0204                                  ; $6f30: $01 $04 $02
    ld [$0200], sp                                ; $6f33: $08 $00 $02
    ld [bc], a                                    ; $6f36: $02
    add d                                         ; $6f37: $82
    inc bc                                        ; $6f38: $03
    ld bc, $0202                                  ; $6f39: $01 $02 $02
    add d                                         ; $6f3c: $82
    inc a                                         ; $6f3d: $3c
    db $fc                                        ; $6f3e: $fc
    ld [bc], a                                    ; $6f3f: $02
    ret nz                                        ; $6f40: $c0

    add c                                         ; $6f41: $81
    ei                                            ; $6f42: $fb
    inc bc                                        ; $6f43: $03
    rst $38                                       ; $6f44: $ff
    add h                                         ; $6f45: $84
    ld h, a                                       ; $6f46: $67
    ld a, a                                       ; $6f47: $7f
    ld c, b                                       ; $6f48: $48
    ld a, b                                       ; $6f49: $78
    ld [bc], a                                    ; $6f4a: $02
    jr nc, jr_0e7_6f61                            ; $6f4b: $30 $14

    nop                                           ; $6f4d: $00
    rst $38                                       ; $6f4e: $ff
    rlca                                          ; $6f4f: $07
    ld bc, $07f8                                  ; $6f50: $01 $f8 $07
    di                                            ; $6f53: $f3
    ld [bc], a                                    ; $6f54: $02
    xor $fd                                       ; $6f55: $ee $fd
    adc d                                         ; $6f57: $8a
    nop                                           ; $6f58: $00
    dec de                                        ; $6f59: $1b
    nop                                           ; $6f5a: $00
    dec e                                         ; $6f5b: $1d
    nop                                           ; $6f5c: $00
    ld d, b                                       ; $6f5d: $50
    nop                                           ; $6f5e: $00
    ld h, b                                       ; $6f5f: $60
    nop                                           ; $6f60: $00

jr_0e7_6f61:
    ld b, d                                       ; $6f61: $42
    ld d, $00                                     ; $6f62: $16 $00
    rst $38                                       ; $6f64: $ff
    dec bc                                        ; $6f65: $0b
    inc bc                                        ; $6f66: $03
    ld hl, sp+$07                                 ; $6f67: $f8 $07
    di                                            ; $6f69: $f3
    ld [bc], a                                    ; $6f6a: $02
    db $ed                                        ; $6f6b: $ed
    db $fd                                        ; $6f6c: $fd
    xor $00                                       ; $6f6d: $ee $00
    db $fd                                        ; $6f6f: $fd
    db $fd                                        ; $6f70: $fd
    ld [bc], a                                    ; $6f71: $02
    rra                                           ; $6f72: $1f
    adc b                                         ; $6f73: $88
    db $e4                                        ; $6f74: $e4
    ldh [rHDMA2], a                               ; $6f75: $e0 $52
    ld b, d                                       ; $6f77: $42
    xor e                                         ; $6f78: $ab
    adc e                                         ; $6f79: $8b
    adc a                                         ; $6f7a: $8f
    adc h                                         ; $6f7b: $8c
    ld [bc], a                                    ; $6f7c: $02
    sub [hl]                                      ; $6f7d: $96
    adc b                                         ; $6f7e: $88
    ld a, a                                       ; $6f7f: $7f
    ld [hl], b                                    ; $6f80: $70
    ld a, a                                       ; $6f81: $7f
    ld d, b                                       ; $6f82: $50
    ld a, a                                       ; $6f83: $7f
    ld [hl], e                                    ; $6f84: $73
    sbc a                                         ; $6f85: $9f
    ld sp, hl                                     ; $6f86: $f9
    ld [bc], a                                    ; $6f87: $02
    ld a, [hl]                                    ; $6f88: $7e
    adc d                                         ; $6f89: $8a
    dec hl                                        ; $6f8a: $2b
    ccf                                           ; $6f8b: $3f
    dec l                                         ; $6f8c: $2d
    ccf                                           ; $6f8d: $3f
    ld h, d                                       ; $6f8e: $62
    ld a, a                                       ; $6f8f: $7f
    ld [hl], c                                    ; $6f90: $71
    ld a, a                                       ; $6f91: $7f
    db $fd                                        ; $6f92: $fd
    rst $38                                       ; $6f93: $ff
    ld [bc], a                                    ; $6f94: $02
    inc b                                         ; $6f95: $04
    ld [bc], a                                    ; $6f96: $02
    ld [bc], a                                    ; $6f97: $02
    ld [bc], a                                    ; $6f98: $02
    ld b, $04                                     ; $6f99: $06 $04
    inc b                                         ; $6f9b: $04
    add d                                         ; $6f9c: $82
    ld b, $02                                     ; $6f9d: $06 $02
    inc b                                         ; $6f9f: $04
    inc b                                         ; $6fa0: $04
    inc b                                         ; $6fa1: $04
    nop                                           ; $6fa2: $00
    inc b                                         ; $6fa3: $04
    inc b                                         ; $6fa4: $04
    ld [bc], a                                    ; $6fa5: $02
    ld b, $86                                     ; $6fa6: $06 $86
    rlca                                          ; $6fa8: $07
    ld bc, $0206                                  ; $6fa9: $01 $06 $02
    inc a                                         ; $6fac: $3c
    db $fc                                        ; $6fad: $fc
    ld [bc], a                                    ; $6fae: $02
    ldh [$86], a                                  ; $6faf: $e0 $86
    rst $18                                       ; $6fb1: $df
    rst $38                                       ; $6fb2: $ff
    ld a, c                                       ; $6fb3: $79
    ld a, a                                       ; $6fb4: $7f
    ld [hl-], a                                   ; $6fb5: $32
    ld a, $02                                     ; $6fb6: $3e $02
    inc e                                         ; $6fb8: $1c
    ld d, $00                                     ; $6fb9: $16 $00
    rst $38                                       ; $6fbb: $ff
    rlca                                          ; $6fbc: $07
    ld bc, $07f8                                  ; $6fbd: $01 $f8 $07
    di                                            ; $6fc0: $f3
    ld [bc], a                                    ; $6fc1: $02
    xor $fe                                       ; $6fc2: $ee $fe
    adc d                                         ; $6fc4: $8a
    nop                                           ; $6fc5: $00
    ld [hl], $00                                  ; $6fc6: $36 $00
    ld e, e                                       ; $6fc8: $5b
    nop                                           ; $6fc9: $00
    xor b                                         ; $6fca: $a8
    nop                                           ; $6fcb: $00
    ldh [rP1], a                                  ; $6fcc: $e0 $00
    jp nc, $0016                                  ; $6fce: $d2 $16 $00

    rst $38                                       ; $6fd1: $ff
    dec c                                         ; $6fd2: $0d
    inc b                                         ; $6fd3: $04
    ld hl, sp+$07                                 ; $6fd4: $f8 $07
    di                                            ; $6fd6: $f3
    ld [bc], a                                    ; $6fd7: $02
    db $ec                                        ; $6fd8: $ec
    db $fd                                        ; $6fd9: $fd
    db $ed                                        ; $6fda: $ed
    nop                                           ; $6fdb: $00
    db $fc                                        ; $6fdc: $fc
    db $fd                                        ; $6fdd: $fd
    db $fc                                        ; $6fde: $fc
    cp $02                                        ; $6fdf: $fe $02
    rra                                           ; $6fe1: $1f
    sbc [hl]                                      ; $6fe2: $9e
    db $e4                                        ; $6fe3: $e4
    ldh [rOBP1], a                                ; $6fe4: $e0 $49
    ld b, c                                       ; $6fe6: $41
    and l                                         ; $6fe7: $a5
    add l                                         ; $6fe8: $85
    adc a                                         ; $6fe9: $8f
    adc d                                         ; $6fea: $8a
    rst $18                                       ; $6feb: $df
    sub $7f                                       ; $6fec: $d6 $7f
    ld [hl], b                                    ; $6fee: $70
    ld a, a                                       ; $6fef: $7f
    ld d, b                                       ; $6ff0: $50
    ccf                                           ; $6ff1: $3f
    inc sp                                        ; $6ff2: $33
    ccf                                           ; $6ff3: $3f
    add hl, sp                                    ; $6ff4: $39
    sub $fe                                       ; $6ff5: $d6 $fe
    xor l                                         ; $6ff7: $ad
    rst $38                                       ; $6ff8: $ff
    ld l, e                                       ; $6ff9: $6b
    ld a, a                                       ; $6ffa: $7f
    add hl, hl                                    ; $6ffb: $29
    ccf                                           ; $6ffc: $3f
    ld l, a                                       ; $6ffd: $6f
    ld a, a                                       ; $6ffe: $7f
    ld [hl], d                                    ; $6fff: $72
    ld a, a                                       ; $7000: $7f
    ld [bc], a                                    ; $7001: $02
    inc b                                         ; $7002: $04
    ld [bc], a                                    ; $7003: $02
    ld [bc], a                                    ; $7004: $02
    ld b, $04                                     ; $7005: $06 $04
    add d                                         ; $7007: $82
    ld b, $02                                     ; $7008: $06 $02
    inc b                                         ; $700a: $04
    inc b                                         ; $700b: $04
    ld b, $00                                     ; $700c: $06 $00
    ld [bc], a                                    ; $700e: $02
    inc b                                         ; $700f: $04
    add c                                         ; $7010: $81
    ld b, $02                                     ; $7011: $06 $02
    ld [bc], a                                    ; $7013: $02
    add l                                         ; $7014: $85
    ld b, $07                                     ; $7015: $06 $07
    ld bc, $fa86                                  ; $7017: $01 $86 $fa
    ld [bc], a                                    ; $701a: $02
    ld h, b                                       ; $701b: $60
    add h                                         ; $701c: $84
    cp $ff                                        ; $701d: $fe $ff
    rst $28                                       ; $701f: $ef
    rst $38                                       ; $7020: $ff
    ld [bc], a                                    ; $7021: $02
    ld a, a                                       ; $7022: $7f
    add d                                         ; $7023: $82
    dec a                                         ; $7024: $3d
    ccf                                           ; $7025: $3f
    ld [bc], a                                    ; $7026: $02
    rlca                                          ; $7027: $07
    ld [bc], a                                    ; $7028: $02
    ld [bc], a                                    ; $7029: $02
    inc d                                         ; $702a: $14
    nop                                           ; $702b: $00
    ld [bc], a                                    ; $702c: $02
    ld bc, $001c                                  ; $702d: $01 $1c $00
    rst $38                                       ; $7030: $ff
    rlca                                          ; $7031: $07
    ld bc, $07f8                                  ; $7032: $01 $f8 $07
    di                                            ; $7035: $f3
    ld [bc], a                                    ; $7036: $02
    db $ed                                        ; $7037: $ed
    cp $8a                                        ; $7038: $fe $8a
    nop                                           ; $703a: $00
    ld [hl], $00                                  ; $703b: $36 $00
    ld l, l                                       ; $703d: $6d
    nop                                           ; $703e: $00
    or h                                          ; $703f: $b4
    nop                                           ; $7040: $00
    ldh [rP1], a                                  ; $7041: $e0 $00
    ld b, b                                       ; $7043: $40
    ld d, $00                                     ; $7044: $16 $00
    rst $38                                       ; $7046: $ff
    dec c                                         ; $7047: $0d
    inc b                                         ; $7048: $04
    ld hl, sp+$07                                 ; $7049: $f8 $07
    di                                            ; $704b: $f3
    ld [bc], a                                    ; $704c: $02
    db $ec                                        ; $704d: $ec
    db $fd                                        ; $704e: $fd
    db $ed                                        ; $704f: $ed
    nop                                           ; $7050: $00
    db $fc                                        ; $7051: $fc
    db $fd                                        ; $7052: $fd
    db $fc                                        ; $7053: $fc
    cp $02                                        ; $7054: $fe $02
    rra                                           ; $7056: $1f
    sbc [hl]                                      ; $7057: $9e
    db $e4                                        ; $7058: $e4
    ldh [rOBP1], a                                ; $7059: $e0 $49
    ld b, c                                       ; $705b: $41
    and l                                         ; $705c: $a5
    add l                                         ; $705d: $85
    adc a                                         ; $705e: $8f
    adc d                                         ; $705f: $8a
    rst $18                                       ; $7060: $df
    sub $7f                                       ; $7061: $d6 $7f
    ld [hl], b                                    ; $7063: $70
    ld a, a                                       ; $7064: $7f
    ld d, b                                       ; $7065: $50
    ccf                                           ; $7066: $3f
    inc sp                                        ; $7067: $33
    ccf                                           ; $7068: $3f
    add hl, sp                                    ; $7069: $39
    ld d, [hl]                                    ; $706a: $56
    ld a, [hl]                                    ; $706b: $7e
    xor [hl]                                      ; $706c: $ae
    cp $6b                                        ; $706d: $fe $6b
    ld a, a                                       ; $706f: $7f
    dec l                                         ; $7070: $2d
    ccf                                           ; $7071: $3f
    cpl                                           ; $7072: $2f
    ccf                                           ; $7073: $3f
    ld [hl], d                                    ; $7074: $72
    ld a, a                                       ; $7075: $7f
    ld [bc], a                                    ; $7076: $02
    inc b                                         ; $7077: $04
    ld [bc], a                                    ; $7078: $02
    ld [bc], a                                    ; $7079: $02
    ld b, $04                                     ; $707a: $06 $04
    add d                                         ; $707c: $82
    ld b, $02                                     ; $707d: $06 $02
    inc b                                         ; $707f: $04
    inc b                                         ; $7080: $04
    ld b, $00                                     ; $7081: $06 $00
    ld [bc], a                                    ; $7083: $02
    inc b                                         ; $7084: $04
    add c                                         ; $7085: $81
    ld b, $02                                     ; $7086: $06 $02
    ld [bc], a                                    ; $7088: $02
    add l                                         ; $7089: $85
    ld b, $07                                     ; $708a: $06 $07
    ld bc, $fa86                                  ; $708c: $01 $86 $fa
    ld [bc], a                                    ; $708f: $02
    ld h, b                                       ; $7090: $60
    add h                                         ; $7091: $84
    cp $ff                                        ; $7092: $fe $ff
    rst $30                                       ; $7094: $f7
    rst $38                                       ; $7095: $ff
    ld [bc], a                                    ; $7096: $02
    ld a, a                                       ; $7097: $7f
    ld [bc], a                                    ; $7098: $02
    ccf                                           ; $7099: $3f
    jr jr_0e7_709c                                ; $709a: $18 $00

jr_0e7_709c:
    ld [bc], a                                    ; $709c: $02
    ld bc, $001c                                  ; $709d: $01 $1c $00
    rst $38                                       ; $70a0: $ff
    rlca                                          ; $70a1: $07
    ld bc, $07f8                                  ; $70a2: $01 $f8 $07
    di                                            ; $70a5: $f3
    ld [bc], a                                    ; $70a6: $02
    db $ed                                        ; $70a7: $ed
    cp $8a                                        ; $70a8: $fe $8a
    nop                                           ; $70aa: $00
    ld [hl], $00                                  ; $70ab: $36 $00
    ld l, l                                       ; $70ad: $6d
    nop                                           ; $70ae: $00
    or h                                          ; $70af: $b4
    nop                                           ; $70b0: $00
    ldh [rP1], a                                  ; $70b1: $e0 $00
    ld b, b                                       ; $70b3: $40
    ld d, $00                                     ; $70b4: $16 $00
    rst $38                                       ; $70b6: $ff
    dec c                                         ; $70b7: $0d
    inc b                                         ; $70b8: $04
    ei                                            ; $70b9: $fb
    dec b                                         ; $70ba: $05
    db $f4                                        ; $70bb: $f4
    db $fd                                        ; $70bc: $fd
    add sp, -$05                                  ; $70bd: $e8 $fb
    jp hl                                         ; $70bf: $e9


    cp $f8                                        ; $70c0: $fe $f8
    ei                                            ; $70c2: $fb
    ld hl, sp-$02                                 ; $70c3: $f8 $fe
    ld [bc], a                                    ; $70c5: $02
    ld e, $8d                                     ; $70c6: $1e $8d
    add hl, hl                                    ; $70c8: $29
    scf                                           ; $70c9: $37
    ld d, c                                       ; $70ca: $51
    ld l, a                                       ; $70cb: $6f
    or d                                          ; $70cc: $b2
    rst $28                                       ; $70cd: $ef
    ld b, b                                       ; $70ce: $40
    ld a, a                                       ; $70cf: $7f
    ld d, b                                       ; $70d0: $50
    ld a, a                                       ; $70d1: $7f
    ld l, d                                       ; $70d2: $6a
    ld a, a                                       ; $70d3: $7f
    dec [hl]                                      ; $70d4: $35
    ld [bc], a                                    ; $70d5: $02
    ccf                                           ; $70d6: $3f
    add e                                         ; $70d7: $83
    ld l, $1f                                     ; $70d8: $2e $1f
    ld de, $3f02                                  ; $70da: $11 $02 $3f
    ld [bc], a                                    ; $70dd: $02
    ld a, a                                       ; $70de: $7f
    rlca                                          ; $70df: $07
    rst $38                                       ; $70e0: $ff
    add c                                         ; $70e1: $81
    cp a                                          ; $70e2: $bf
    ld [bc], a                                    ; $70e3: $02
    inc b                                         ; $70e4: $04
    add a                                         ; $70e5: $87
    ld b, $02                                     ; $70e6: $06 $02
    dec b                                         ; $70e8: $05
    inc bc                                        ; $70e9: $03
    ld bc, $0207                                  ; $70ea: $01 $07 $02
    inc bc                                        ; $70ed: $03
    ld b, $04                                     ; $70ee: $06 $04
    inc b                                         ; $70f0: $04
    ld [bc], a                                    ; $70f1: $02
    nop                                           ; $70f2: $00
    ld [bc], a                                    ; $70f3: $02
    inc b                                         ; $70f4: $04
    ld [bc], a                                    ; $70f5: $02
    ld b, $07                                     ; $70f6: $06 $07
    rlca                                          ; $70f8: $07
    sub l                                         ; $70f9: $95
    dec b                                         ; $70fa: $05
    rst $38                                       ; $70fb: $ff
    db $fd                                        ; $70fc: $fd
    ldh [$a0], a                                  ; $70fd: $e0 $a0
    rst $38                                       ; $70ff: $ff
    cp a                                          ; $7100: $bf
    cp [hl]                                       ; $7101: $be
    pop af                                        ; $7102: $f1
    ld a, a                                       ; $7103: $7f
    ld h, b                                       ; $7104: $60
    scf                                           ; $7105: $37
    inc l                                         ; $7106: $2c
    ccf                                           ; $7107: $3f
    ld l, $3d                                     ; $7108: $2e $3d
    ld h, $7f                                     ; $710a: $26 $7f
    ld h, h                                       ; $710c: $64
    ld e, e                                       ; $710d: $5b
    ld a, e                                       ; $710e: $7b
    ld [bc], a                                    ; $710f: $02
    dec sp                                        ; $7110: $3b
    ld c, $00                                     ; $7111: $0e $00
    add c                                         ; $7113: $81
    rlca                                          ; $7114: $07
    ld [bc], a                                    ; $7115: $02
    dec b                                         ; $7116: $05
    add c                                         ; $7117: $81
    rlca                                          ; $7118: $07
    ld [bc], a                                    ; $7119: $02
    ld b, $06                                     ; $711a: $06 $06
    inc b                                         ; $711c: $04
    ld [bc], a                                    ; $711d: $02
    ld b, $82                                     ; $711e: $06 $82
    ld [bc], a                                    ; $7120: $02
    ld b, $02                                     ; $7121: $06 $02
    inc b                                         ; $7123: $04
    inc c                                         ; $7124: $0c
    nop                                           ; $7125: $00
    rst $38                                       ; $7126: $ff
    dec c                                         ; $7127: $0d
    inc b                                         ; $7128: $04
    ei                                            ; $7129: $fb
    dec b                                         ; $712a: $05
    db $f4                                        ; $712b: $f4
    db $fd                                        ; $712c: $fd
    add sp, -$05                                  ; $712d: $e8 $fb
    jp hl                                         ; $712f: $e9


    cp $f8                                        ; $7130: $fe $f8
    ei                                            ; $7132: $fb
    ld hl, sp-$03                                 ; $7133: $f8 $fd
    ld [bc], a                                    ; $7135: $02
    ld e, $8d                                     ; $7136: $1e $8d
    dec h                                         ; $7138: $25
    dec sp                                        ; $7139: $3b
    ld c, d                                       ; $713a: $4a
    ld [hl], a                                    ; $713b: $77
    db $e3                                        ; $713c: $e3
    cp $40                                        ; $713d: $fe $40
    ld a, a                                       ; $713f: $7f
    ld h, b                                       ; $7140: $60
    ld a, a                                       ; $7141: $7f
    ld d, l                                       ; $7142: $55
    ld a, a                                       ; $7143: $7f
    dec hl                                        ; $7144: $2b
    ld [bc], a                                    ; $7145: $02
    ccf                                           ; $7146: $3f
    add e                                         ; $7147: $83
    ld a, $1f                                     ; $7148: $3e $1f
    ld de, $1f02                                  ; $714a: $11 $02 $1f
    inc b                                         ; $714d: $04
    ld a, a                                       ; $714e: $7f
    inc b                                         ; $714f: $04
    rst $38                                       ; $7150: $ff
    add d                                         ; $7151: $82
    cp a                                          ; $7152: $bf
    rst $38                                       ; $7153: $ff
    ld [bc], a                                    ; $7154: $02
    inc b                                         ; $7155: $04
    add a                                         ; $7156: $87
    ld b, $02                                     ; $7157: $06 $02
    ld bc, $0107                                  ; $7159: $01 $07 $01
    rlca                                          ; $715c: $07
    ld [bc], a                                    ; $715d: $02
    inc bc                                        ; $715e: $03
    ld b, $04                                     ; $715f: $06 $04
    inc b                                         ; $7161: $04
    ld [bc], a                                    ; $7162: $02
    nop                                           ; $7163: $00
    ld [bc], a                                    ; $7164: $02
    inc b                                         ; $7165: $04
    ld [bc], a                                    ; $7166: $02
    ld b, $04                                     ; $7167: $06 $04
    rlca                                          ; $7169: $07
    add c                                         ; $716a: $81
    dec b                                         ; $716b: $05
    ld [bc], a                                    ; $716c: $02
    rlca                                          ; $716d: $07
    sub e                                         ; $716e: $93
    dec b                                         ; $716f: $05
    rst $38                                       ; $7170: $ff
    db $fd                                        ; $7171: $fd
    ldh [$a0], a                                  ; $7172: $e0 $a0
    rst $38                                       ; $7174: $ff
    cp a                                          ; $7175: $bf
    ld a, [$f5bd]                                 ; $7176: $fa $bd $f5
    sbc [hl]                                      ; $7179: $9e
    ld a, a                                       ; $717a: $7f
    ld l, h                                       ; $717b: $6c
    ld l, a                                       ; $717c: $6f
    ld a, h                                       ; $717d: $7c
    ld a, a                                       ; $717e: $7f
    ld a, l                                       ; $717f: $7d
    ld l, [hl]                                    ; $7180: $6e
    ld a, a                                       ; $7181: $7f
    ld [bc], a                                    ; $7182: $02
    inc sp                                        ; $7183: $33
    ld [bc], a                                    ; $7184: $02
    inc bc                                        ; $7185: $03
    ld c, $00                                     ; $7186: $0e $00
    inc b                                         ; $7188: $04
    inc bc                                        ; $7189: $03
    inc b                                         ; $718a: $04
    ld [bc], a                                    ; $718b: $02
    add c                                         ; $718c: $81
    ld bc, $0303                                  ; $718d: $01 $03 $03
    add c                                         ; $7190: $81
    ld bc, $0305                                  ; $7191: $01 $05 $03
    inc c                                         ; $7194: $0c
    nop                                           ; $7195: $00
    rst $38                                       ; $7196: $ff
    dec c                                         ; $7197: $0d
    inc b                                         ; $7198: $04
    ei                                            ; $7199: $fb
    dec b                                         ; $719a: $05
    db $f4                                        ; $719b: $f4
    db $fd                                        ; $719c: $fd
    jp hl                                         ; $719d: $e9


    ei                                            ; $719e: $fb
    ld [$f9fe], a                                 ; $719f: $ea $fe $f9
    ei                                            ; $71a2: $fb
    ld sp, hl                                     ; $71a3: $f9
    cp $02                                        ; $71a4: $fe $02
    ld e, $8d                                     ; $71a6: $1e $8d
    dec h                                         ; $71a8: $25
    dec sp                                        ; $71a9: $3b
    ld c, d                                       ; $71aa: $4a
    ld [hl], a                                    ; $71ab: $77
    db $e3                                        ; $71ac: $e3
    cp $40                                        ; $71ad: $fe $40
    ld a, a                                       ; $71af: $7f
    ld h, b                                       ; $71b0: $60
    ld a, a                                       ; $71b1: $7f
    ld d, l                                       ; $71b2: $55
    ld a, a                                       ; $71b3: $7f
    dec hl                                        ; $71b4: $2b
    ld [bc], a                                    ; $71b5: $02
    ccf                                           ; $71b6: $3f
    add e                                         ; $71b7: $83
    ld a, $1f                                     ; $71b8: $3e $1f
    ld de, $3f02                                  ; $71ba: $11 $02 $3f
    inc b                                         ; $71bd: $04
    ld a, a                                       ; $71be: $7f
    dec b                                         ; $71bf: $05
    rst $38                                       ; $71c0: $ff
    add c                                         ; $71c1: $81
    cp a                                          ; $71c2: $bf
    ld [bc], a                                    ; $71c3: $02
    inc b                                         ; $71c4: $04
    add a                                         ; $71c5: $87
    ld b, $02                                     ; $71c6: $06 $02
    ld bc, $0107                                  ; $71c8: $01 $07 $01
    rlca                                          ; $71cb: $07
    ld [bc], a                                    ; $71cc: $02
    inc bc                                        ; $71cd: $03
    ld b, $04                                     ; $71ce: $06 $04
    inc b                                         ; $71d0: $04
    ld [bc], a                                    ; $71d1: $02
    nop                                           ; $71d2: $00
    inc b                                         ; $71d3: $04
    ld b, $04                                     ; $71d4: $06 $04
    rlca                                          ; $71d6: $07
    add c                                         ; $71d7: $81
    dec b                                         ; $71d8: $05
    ld [bc], a                                    ; $71d9: $02
    rlca                                          ; $71da: $07
    sub c                                         ; $71db: $91
    dec b                                         ; $71dc: $05
    rst $38                                       ; $71dd: $ff
    db $fd                                        ; $71de: $fd
    ldh [$a0], a                                  ; $71df: $e0 $a0
    rst $38                                       ; $71e1: $ff
    cp a                                          ; $71e2: $bf
    rst $10                                       ; $71e3: $d7
    cp h                                          ; $71e4: $bc
    ld a, a                                       ; $71e5: $7f
    ld h, [hl]                                    ; $71e6: $66
    ld a, a                                       ; $71e7: $7f
    ld l, l                                       ; $71e8: $6d
    ld l, [hl]                                    ; $71e9: $6e
    ld a, a                                       ; $71ea: $7f
    ld e, a                                       ; $71eb: $5f
    ld l, a                                       ; $71ec: $6f
    ld [bc], a                                    ; $71ed: $02
    ld a, e                                       ; $71ee: $7b
    ld [bc], a                                    ; $71ef: $02
    inc bc                                        ; $71f0: $03
    stop                                          ; $71f1: $10 $00
    add d                                         ; $71f3: $82
    dec b                                         ; $71f4: $05
    rlca                                          ; $71f5: $07
    ld [bc], a                                    ; $71f6: $02
    ld b, $81                                     ; $71f7: $06 $81
    ld [bc], a                                    ; $71f9: $02
    add hl, bc                                    ; $71fa: $09
    ld b, $02                                     ; $71fb: $06 $02
    inc b                                         ; $71fd: $04
    ld c, $00                                     ; $71fe: $0e $00
    rst $38                                       ; $7200: $ff
    dec c                                         ; $7201: $0d
    inc b                                         ; $7202: $04
    ei                                            ; $7203: $fb
    dec b                                         ; $7204: $05
    db $f4                                        ; $7205: $f4
    db $fd                                        ; $7206: $fd
    add sp, -$05                                  ; $7207: $e8 $fb
    jp hl                                         ; $7209: $e9


    cp $f8                                        ; $720a: $fe $f8
    ei                                            ; $720c: $fb
    ld hl, sp-$02                                 ; $720d: $f8 $fe
    ld [bc], a                                    ; $720f: $02
    ld e, $8d                                     ; $7210: $1e $8d
    add hl, hl                                    ; $7212: $29
    scf                                           ; $7213: $37
    ld d, c                                       ; $7214: $51
    ld l, a                                       ; $7215: $6f
    or d                                          ; $7216: $b2
    rst $28                                       ; $7217: $ef
    ld b, b                                       ; $7218: $40
    ld a, a                                       ; $7219: $7f
    ld d, b                                       ; $721a: $50
    ld a, a                                       ; $721b: $7f
    ld l, d                                       ; $721c: $6a
    ld a, a                                       ; $721d: $7f
    dec [hl]                                      ; $721e: $35
    ld [bc], a                                    ; $721f: $02
    ccf                                           ; $7220: $3f
    add e                                         ; $7221: $83
    ld l, $1f                                     ; $7222: $2e $1f
    ld de, $3f02                                  ; $7224: $11 $02 $3f
    ld [bc], a                                    ; $7227: $02
    ld a, a                                       ; $7228: $7f
    rlca                                          ; $7229: $07
    rst $38                                       ; $722a: $ff
    add c                                         ; $722b: $81
    cp a                                          ; $722c: $bf
    ld [bc], a                                    ; $722d: $02
    inc b                                         ; $722e: $04
    add a                                         ; $722f: $87
    ld b, $02                                     ; $7230: $06 $02
    dec b                                         ; $7232: $05
    inc bc                                        ; $7233: $03
    ld bc, $0207                                  ; $7234: $01 $07 $02
    inc bc                                        ; $7237: $03
    ld b, $04                                     ; $7238: $06 $04
    inc b                                         ; $723a: $04
    ld [bc], a                                    ; $723b: $02
    nop                                           ; $723c: $00
    ld [bc], a                                    ; $723d: $02
    inc b                                         ; $723e: $04
    ld [bc], a                                    ; $723f: $02
    ld b, $07                                     ; $7240: $06 $07
    rlca                                          ; $7242: $07
    sub c                                         ; $7243: $91
    dec b                                         ; $7244: $05
    rst $38                                       ; $7245: $ff
    db $fd                                        ; $7246: $fd
    ldh [$a0], a                                  ; $7247: $e0 $a0
    rst $38                                       ; $7249: $ff
    cp a                                          ; $724a: $bf
    cp [hl]                                       ; $724b: $be
    pop af                                        ; $724c: $f1
    ld a, a                                       ; $724d: $7f
    ld h, h                                       ; $724e: $64
    ccf                                           ; $724f: $3f
    daa                                           ; $7250: $27
    ccf                                           ; $7251: $3f
    ld l, $7f                                     ; $7252: $2e $7f
    ld b, a                                       ; $7254: $47
    ld [bc], a                                    ; $7255: $02
    ld a, e                                       ; $7256: $7b
    add d                                         ; $7257: $82
    ld e, e                                       ; $7258: $5b
    ld l, e                                       ; $7259: $6b
    ld [bc], a                                    ; $725a: $02
    ld [hl], b                                    ; $725b: $70
    ld c, $00                                     ; $725c: $0e $00
    add c                                         ; $725e: $81
    rlca                                          ; $725f: $07
    ld [bc], a                                    ; $7260: $02
    dec b                                         ; $7261: $05
    add c                                         ; $7262: $81
    rlca                                          ; $7263: $07
    inc bc                                        ; $7264: $03
    ld b, $02                                     ; $7265: $06 $02
    ld [bc], a                                    ; $7267: $02
    dec b                                         ; $7268: $05
    ld b, $02                                     ; $7269: $06 $02
    inc b                                         ; $726b: $04
    ld c, $00                                     ; $726c: $0e $00
    rst $38                                       ; $726e: $ff
    dec c                                         ; $726f: $0d
    inc b                                         ; $7270: $04
    ei                                            ; $7271: $fb
    dec b                                         ; $7272: $05
    db $f4                                        ; $7273: $f4
    db $fd                                        ; $7274: $fd
    add sp, -$05                                  ; $7275: $e8 $fb
    jp hl                                         ; $7277: $e9


    cp $f8                                        ; $7278: $fe $f8
    ei                                            ; $727a: $fb
    ld hl, sp-$02                                 ; $727b: $f8 $fe
    ld [bc], a                                    ; $727d: $02
    ld e, $8d                                     ; $727e: $1e $8d
    add hl, hl                                    ; $7280: $29
    scf                                           ; $7281: $37
    ld d, c                                       ; $7282: $51
    ld l, a                                       ; $7283: $6f
    xor c                                         ; $7284: $a9
    rst $30                                       ; $7285: $f7
    ld b, b                                       ; $7286: $40
    ld a, a                                       ; $7287: $7f
    ld l, b                                       ; $7288: $68
    ld a, a                                       ; $7289: $7f
    ld [hl], l                                    ; $728a: $75
    ld a, a                                       ; $728b: $7f
    ld a, [hl-]                                   ; $728c: $3a
    ld [bc], a                                    ; $728d: $02
    ccf                                           ; $728e: $3f
    add e                                         ; $728f: $83
    cpl                                           ; $7290: $2f
    rra                                           ; $7291: $1f
    ld de, $3f02                                  ; $7292: $11 $02 $3f
    ld [bc], a                                    ; $7295: $02
    ld a, a                                       ; $7296: $7f
    inc b                                         ; $7297: $04
    rst $38                                       ; $7298: $ff
    add c                                         ; $7299: $81
    cp a                                          ; $729a: $bf
    ld [bc], a                                    ; $729b: $02
    rst $38                                       ; $729c: $ff
    add c                                         ; $729d: $81
    cp a                                          ; $729e: $bf
    ld [bc], a                                    ; $729f: $02
    inc b                                         ; $72a0: $04
    add a                                         ; $72a1: $87
    ld b, $02                                     ; $72a2: $06 $02
    ld bc, $0107                                  ; $72a4: $01 $07 $01
    rlca                                          ; $72a7: $07
    ld [bc], a                                    ; $72a8: $02
    inc bc                                        ; $72a9: $03
    ld b, $04                                     ; $72aa: $06 $04
    inc b                                         ; $72ac: $04
    inc b                                         ; $72ad: $04
    nop                                           ; $72ae: $00
    inc b                                         ; $72af: $04
    ld b, $04                                     ; $72b0: $06 $04
    rlca                                          ; $72b2: $07
    add [hl]                                      ; $72b3: $86
    dec b                                         ; $72b4: $05
    rlca                                          ; $72b5: $07
    rst $38                                       ; $72b6: $ff
    db $fd                                        ; $72b7: $fd
    ldh [$a0], a                                  ; $72b8: $e0 $a0
    ld [bc], a                                    ; $72ba: $02
    ld a, a                                       ; $72bb: $7f
    adc h                                         ; $72bc: $8c
    ld l, e                                       ; $72bd: $6b
    ld [hl], a                                    ; $72be: $77
    dec [hl]                                      ; $72bf: $35
    cpl                                           ; $72c0: $2f
    ccf                                           ; $72c1: $3f
    ld h, $5e                                     ; $72c2: $26 $5e
    ld h, a                                       ; $72c4: $67
    ld a, a                                       ; $72c5: $7f
    ld [hl], a                                    ; $72c6: $77
    ld c, [hl]                                    ; $72c7: $4e
    ld a, a                                       ; $72c8: $7f
    ld [bc], a                                    ; $72c9: $02
    ld a, c                                       ; $72ca: $79
    ld [bc], a                                    ; $72cb: $02
    ld a, b                                       ; $72cc: $78
    ld c, $00                                     ; $72cd: $0e $00
    add [hl]                                      ; $72cf: $86
    rlca                                          ; $72d0: $07
    dec b                                         ; $72d1: $05
    rlca                                          ; $72d2: $07
    dec b                                         ; $72d3: $05
    rlca                                          ; $72d4: $07
    ld bc, $0608                                  ; $72d5: $01 $08 $06
    ld [bc], a                                    ; $72d8: $02
    inc b                                         ; $72d9: $04
    ld c, $00                                     ; $72da: $0e $00
    rst $38                                       ; $72dc: $ff
    dec c                                         ; $72dd: $0d
    inc b                                         ; $72de: $04
    ei                                            ; $72df: $fb
    dec b                                         ; $72e0: $05
    db $f4                                        ; $72e1: $f4
    db $fd                                        ; $72e2: $fd
    jp hl                                         ; $72e3: $e9


    ei                                            ; $72e4: $fb
    ld [$f9fe], a                                 ; $72e5: $ea $fe $f9
    ei                                            ; $72e8: $fb
    ld sp, hl                                     ; $72e9: $f9
    cp $02                                        ; $72ea: $fe $02
    ld e, $8d                                     ; $72ec: $1e $8d
    add hl, hl                                    ; $72ee: $29

Jump_0e7_72ef:
    scf                                           ; $72ef: $37
    ld d, c                                       ; $72f0: $51
    ld l, a                                       ; $72f1: $6f
    xor c                                         ; $72f2: $a9
    rst $30                                       ; $72f3: $f7
    ld b, b                                       ; $72f4: $40
    ld a, a                                       ; $72f5: $7f
    ld l, b                                       ; $72f6: $68
    ld a, a                                       ; $72f7: $7f
    ld [hl], l                                    ; $72f8: $75
    ld a, a                                       ; $72f9: $7f
    ld a, [hl-]                                   ; $72fa: $3a
    ld [bc], a                                    ; $72fb: $02
    ccf                                           ; $72fc: $3f
    add e                                         ; $72fd: $83
    cpl                                           ; $72fe: $2f
    rra                                           ; $72ff: $1f
    ld de, $7f04                                  ; $7300: $11 $04 $7f
    inc b                                         ; $7303: $04
    rst $38                                       ; $7304: $ff
    add c                                         ; $7305: $81
    cp a                                          ; $7306: $bf
    ld [bc], a                                    ; $7307: $02
    rst $38                                       ; $7308: $ff
    add c                                         ; $7309: $81
    cp a                                          ; $730a: $bf
    ld [bc], a                                    ; $730b: $02
    inc b                                         ; $730c: $04
    add a                                         ; $730d: $87
    ld b, $02                                     ; $730e: $06 $02
    ld bc, $0107                                  ; $7310: $01 $07 $01
    rlca                                          ; $7313: $07
    ld [bc], a                                    ; $7314: $02
    inc bc                                        ; $7315: $03
    ld b, $04                                     ; $7316: $06 $04
    inc b                                         ; $7318: $04
    ld [bc], a                                    ; $7319: $02
    nop                                           ; $731a: $00
    ld [bc], a                                    ; $731b: $02
    inc b                                         ; $731c: $04
    inc b                                         ; $731d: $04
    ld b, $05                                     ; $731e: $06 $05
    rlca                                          ; $7320: $07
    adc [hl]                                      ; $7321: $8e
    dec b                                         ; $7322: $05
    rst $38                                       ; $7323: $ff
    db $fd                                        ; $7324: $fd
    ldh [$a0], a                                  ; $7325: $e0 $a0
    cp a                                          ; $7327: $bf
    rst $38                                       ; $7328: $ff
    ld a, l                                       ; $7329: $7d
    ld h, a                                       ; $732a: $67
    ld e, a                                       ; $732b: $5f
    ld l, h                                       ; $732c: $6c
    ld a, a                                       ; $732d: $7f
    halt                                          ; $732e: $76
    ld l, [hl]                                    ; $732f: $6e
    ld [bc], a                                    ; $7330: $02
    ld a, a                                       ; $7331: $7f
    add c                                         ; $7332: $81
    ld a, [hl]                                    ; $7333: $7e
    ld [bc], a                                    ; $7334: $02
    ld a, e                                       ; $7335: $7b
    ld [bc], a                                    ; $7336: $02
    jr c, jr_0e7_7349                             ; $7337: $38 $10

    nop                                           ; $7339: $00
    add h                                         ; $733a: $84
    rlca                                          ; $733b: $07
    dec b                                         ; $733c: $05
    inc bc                                        ; $733d: $03
    dec b                                         ; $733e: $05
    ld b, $06                                     ; $733f: $06 $06
    add c                                         ; $7341: $81
    ld [bc], a                                    ; $7342: $02
    inc bc                                        ; $7343: $03
    ld b, $10                                     ; $7344: $06 $10
    nop                                           ; $7346: $00
    rst $38                                       ; $7347: $ff
    dec c                                         ; $7348: $0d

jr_0e7_7349:
    inc b                                         ; $7349: $04
    ei                                            ; $734a: $fb
    dec b                                         ; $734b: $05
    db $f4                                        ; $734c: $f4
    db $fd                                        ; $734d: $fd
    add sp, -$05                                  ; $734e: $e8 $fb
    jp hl                                         ; $7350: $e9


    cp $f8                                        ; $7351: $fe $f8
    ei                                            ; $7353: $fb
    ld hl, sp-$02                                 ; $7354: $f8 $fe
    ld [bc], a                                    ; $7356: $02
    ld e, $8d                                     ; $7357: $1e $8d
    add hl, hl                                    ; $7359: $29
    scf                                           ; $735a: $37
    ld d, c                                       ; $735b: $51
    ld l, a                                       ; $735c: $6f
    or d                                          ; $735d: $b2
    rst $28                                       ; $735e: $ef
    ld b, b                                       ; $735f: $40
    ld a, a                                       ; $7360: $7f
    ld d, b                                       ; $7361: $50
    ld a, a                                       ; $7362: $7f
    ld l, d                                       ; $7363: $6a
    ld a, a                                       ; $7364: $7f
    dec [hl]                                      ; $7365: $35
    ld [bc], a                                    ; $7366: $02
    ccf                                           ; $7367: $3f
    add e                                         ; $7368: $83
    ld l, $1f                                     ; $7369: $2e $1f
    ld de, $3f02                                  ; $736b: $11 $02 $3f
    ld [bc], a                                    ; $736e: $02
    ld a, a                                       ; $736f: $7f
    rlca                                          ; $7370: $07
    rst $38                                       ; $7371: $ff
    add c                                         ; $7372: $81
    cp a                                          ; $7373: $bf
    ld [bc], a                                    ; $7374: $02
    inc b                                         ; $7375: $04
    add a                                         ; $7376: $87
    ld b, $02                                     ; $7377: $06 $02
    dec b                                         ; $7379: $05
    inc bc                                        ; $737a: $03
    ld bc, $0207                                  ; $737b: $01 $07 $02
    inc bc                                        ; $737e: $03
    ld b, $04                                     ; $737f: $06 $04
    inc b                                         ; $7381: $04
    ld [bc], a                                    ; $7382: $02
    nop                                           ; $7383: $00
    ld [bc], a                                    ; $7384: $02
    inc b                                         ; $7385: $04
    ld [bc], a                                    ; $7386: $02
    ld b, $07                                     ; $7387: $06 $07
    rlca                                          ; $7389: $07
    add [hl]                                      ; $738a: $86
    dec b                                         ; $738b: $05
    rst $38                                       ; $738c: $ff
    db $fd                                        ; $738d: $fd
    ldh [$a0], a                                  ; $738e: $e0 $a0
    rst $38                                       ; $7390: $ff
    ld [bc], a                                    ; $7391: $02
    cp a                                          ; $7392: $bf
    adc c                                         ; $7393: $89
    pop af                                        ; $7394: $f1
    ld a, a                                       ; $7395: $7f
    ld h, h                                       ; $7396: $64
    ld a, a                                       ; $7397: $7f
    ld e, h                                       ; $7398: $5c
    ld e, a                                       ; $7399: $5f
    ld l, [hl]                                    ; $739a: $6e
    ld a, a                                       ; $739b: $7f
    ld a, h                                       ; $739c: $7c
    ld [bc], a                                    ; $739d: $02
    ld a, e                                       ; $739e: $7b
    add d                                         ; $739f: $82
    dec sp                                        ; $73a0: $3b
    ld a, [hl-]                                   ; $73a1: $3a
    ld [bc], a                                    ; $73a2: $02
    ld bc, $000e                                  ; $73a3: $01 $0e $00
    add c                                         ; $73a6: $81
    rlca                                          ; $73a7: $07
    ld [bc], a                                    ; $73a8: $02
    dec b                                         ; $73a9: $05
    add c                                         ; $73aa: $81
    rlca                                          ; $73ab: $07
    ld [bc], a                                    ; $73ac: $02
    ld b, $04                                     ; $73ad: $06 $04
    inc b                                         ; $73af: $04
    add d                                         ; $73b0: $82
    ld b, $02                                     ; $73b1: $06 $02
    ld [bc], a                                    ; $73b3: $02
    ld b, $81                                     ; $73b4: $06 $81
    ld [bc], a                                    ; $73b6: $02
    inc bc                                        ; $73b7: $03
    ld b, $0c                                     ; $73b8: $06 $0c
    nop                                           ; $73ba: $00
    rst $38                                       ; $73bb: $ff
    dec c                                         ; $73bc: $0d
    inc b                                         ; $73bd: $04
    ei                                            ; $73be: $fb
    dec b                                         ; $73bf: $05
    db $f4                                        ; $73c0: $f4
    db $fd                                        ; $73c1: $fd
    add sp, -$05                                  ; $73c2: $e8 $fb
    jp hl                                         ; $73c4: $e9


    cp $f8                                        ; $73c5: $fe $f8
    ei                                            ; $73c7: $fb
    ld hl, sp-$02                                 ; $73c8: $f8 $fe
    ld [bc], a                                    ; $73ca: $02
    rrca                                          ; $73cb: $0f
    sub d                                         ; $73cc: $92
    inc [hl]                                      ; $73cd: $34
    dec sp                                        ; $73ce: $3b
    ld d, d                                       ; $73cf: $52
    ld a, l                                       ; $73d0: $7d
    ld sp, hl                                     ; $73d1: $f9
    xor a                                         ; $73d2: $af
    cp [hl]                                       ; $73d3: $be
    rst $20                                       ; $73d4: $e7
    ld a, a                                       ; $73d5: $7f
    ld a, e                                       ; $73d6: $7b
    ld a, a                                       ; $73d7: $7f
    ld l, b                                       ; $73d8: $68
    ccf                                           ; $73d9: $3f
    inc h                                         ; $73da: $24
    ccf                                           ; $73db: $3f
    ld l, $1f                                     ; $73dc: $2e $1f
    ld de, $3f02                                  ; $73de: $11 $02 $3f
    inc b                                         ; $73e1: $04
    ld a, a                                       ; $73e2: $7f
    ld [bc], a                                    ; $73e3: $02
    rst $38                                       ; $73e4: $ff
    add c                                         ; $73e5: $81
    cp a                                          ; $73e6: $bf
    ld [bc], a                                    ; $73e7: $02
    rst $38                                       ; $73e8: $ff
    add c                                         ; $73e9: $81
    cp a                                          ; $73ea: $bf
    ld [bc], a                                    ; $73eb: $02
    inc b                                         ; $73ec: $04
    add h                                         ; $73ed: $84
    ld [bc], a                                    ; $73ee: $02
    ld b, $01                                     ; $73ef: $06 $01
    rlca                                          ; $73f1: $07
    ld b, $06                                     ; $73f2: $06 $06
    inc b                                         ; $73f4: $04
    inc b                                         ; $73f5: $04
    ld [bc], a                                    ; $73f6: $02
    nop                                           ; $73f7: $00
    ld [bc], a                                    ; $73f8: $02
    inc b                                         ; $73f9: $04
    inc b                                         ; $73fa: $04
    ld b, $02                                     ; $73fb: $06 $02
    rlca                                          ; $73fd: $07
    add c                                         ; $73fe: $81
    dec b                                         ; $73ff: $05

Call_0e7_7400:
    ld [bc], a                                    ; $7400: $02
    rlca                                          ; $7401: $07
    sub l                                         ; $7402: $95
    dec b                                         ; $7403: $05
    rst $38                                       ; $7404: $ff
    db $fd                                        ; $7405: $fd
    ldh [$a0], a                                  ; $7406: $e0 $a0
    rst $38                                       ; $7408: $ff
    cp a                                          ; $7409: $bf
    xor $9b                                       ; $740a: $ee $9b
    ld a, a                                       ; $740c: $7f
    ld d, l                                       ; $740d: $55
    dec l                                         ; $740e: $2d
    ld [hl], $3f                                  ; $740f: $36 $3f
    ld l, $5f                                     ; $7411: $2e $5f
    ld h, h                                       ; $7413: $64
    ccf                                           ; $7414: $3f
    dec [hl]                                      ; $7415: $35
    ld l, d                                       ; $7416: $6a
    ld e, e                                       ; $7417: $5b
    ld [bc], a                                    ; $7418: $02
    ld a, e                                       ; $7419: $7b
    ld c, $00                                     ; $741a: $0e $00
    add [hl]                                      ; $741c: $86
    rlca                                          ; $741d: $07
    dec b                                         ; $741e: $05
    rlca                                          ; $741f: $07
    ld bc, $0206                                  ; $7420: $01 $06 $02
    inc b                                         ; $7423: $04
    inc b                                         ; $7424: $04
    add d                                         ; $7425: $82
    ld [bc], a                                    ; $7426: $02
    ld b, $02                                     ; $7427: $06 $02
    inc b                                         ; $7429: $04
    add d                                         ; $742a: $82
    ld b, $02                                     ; $742b: $06 $02
    ld [bc], a                                    ; $742d: $02
    ld b, $0c                                     ; $742e: $06 $0c
    nop                                           ; $7430: $00
    rst $38                                       ; $7431: $ff
    dec c                                         ; $7432: $0d
    inc b                                         ; $7433: $04
    ei                                            ; $7434: $fb
    dec b                                         ; $7435: $05
    db $f4                                        ; $7436: $f4
    db $fd                                        ; $7437: $fd
    add sp, -$05                                  ; $7438: $e8 $fb
    jp hl                                         ; $743a: $e9


    cp $f8                                        ; $743b: $fe $f8
    ei                                            ; $743d: $fb
    ld hl, sp-$02                                 ; $743e: $f8 $fe
    ld [bc], a                                    ; $7440: $02
    rrca                                          ; $7441: $0f
    sub d                                         ; $7442: $92
    inc [hl]                                      ; $7443: $34
    dec sp                                        ; $7444: $3b
    ld d, h                                       ; $7445: $54
    ld a, e                                       ; $7446: $7b
    cp e                                          ; $7447: $bb
    rst $38                                       ; $7448: $ff
    cp h                                          ; $7449: $bc
    rst $20                                       ; $744a: $e7
    ld [hl], a                                    ; $744b: $77
    ld a, e                                       ; $744c: $7b
    ld a, a                                       ; $744d: $7f
    ld [hl], b                                    ; $744e: $70
    ccf                                           ; $744f: $3f
    jr z, jr_0e7_748f                             ; $7450: $28 $3d

    ld l, $1f                                     ; $7452: $2e $1f
    ld de, $1f02                                  ; $7454: $11 $02 $1f
    ld [bc], a                                    ; $7457: $02
    ccf                                           ; $7458: $3f
    inc b                                         ; $7459: $04
    ld a, a                                       ; $745a: $7f
    add h                                         ; $745b: $84
    cp a                                          ; $745c: $bf
    rst $38                                       ; $745d: $ff
    cp a                                          ; $745e: $bf
    rst $38                                       ; $745f: $ff
    ld [bc], a                                    ; $7460: $02
    inc b                                         ; $7461: $04
    add h                                         ; $7462: $84
    ld [bc], a                                    ; $7463: $02
    ld b, $03                                     ; $7464: $06 $03
    rlca                                          ; $7466: $07
    ld b, $06                                     ; $7467: $06 $06
    inc b                                         ; $7469: $04
    inc b                                         ; $746a: $04
    ld [bc], a                                    ; $746b: $02
    nop                                           ; $746c: $00
    inc b                                         ; $746d: $04
    ld b, $02                                     ; $746e: $06 $02
    rlca                                          ; $7470: $07
    add c                                         ; $7471: $81
    dec b                                         ; $7472: $05
    ld [bc], a                                    ; $7473: $02
    rlca                                          ; $7474: $07
    sub l                                         ; $7475: $95
    dec b                                         ; $7476: $05
    rlca                                          ; $7477: $07
    dec b                                         ; $7478: $05
    rst $38                                       ; $7479: $ff
    db $fd                                        ; $747a: $fd
    ldh [$a0], a                                  ; $747b: $e0 $a0
    rst $18                                       ; $747d: $df
    cp a                                          ; $747e: $bf
    ld a, [hl]                                    ; $747f: $7e
    ld c, e                                       ; $7480: $4b
    ld a, a                                       ; $7481: $7f
    ld c, l                                       ; $7482: $4d
    ccf                                           ; $7483: $3f
    inc [hl]                                      ; $7484: $34
    dec [hl]                                      ; $7485: $35
    ld a, $3f                                     ; $7486: $3e $3f
    dec a                                         ; $7488: $3d
    ld l, a                                       ; $7489: $6f
    ld a, [hl]                                    ; $748a: $7e
    ld [bc], a                                    ; $748b: $02
    dec sp                                        ; $748c: $3b
    ld [bc], a                                    ; $748d: $02
    inc bc                                        ; $748e: $03

jr_0e7_748f:
    ld c, $00                                     ; $748f: $0e $00
    add d                                         ; $7491: $82
    rlca                                          ; $7492: $07
    dec b                                         ; $7493: $05
    ld [bc], a                                    ; $7494: $02
    ld b, $04                                     ; $7495: $06 $04
    inc b                                         ; $7497: $04
    add d                                         ; $7498: $82
    ld b, $02                                     ; $7499: $06 $02
    inc bc                                        ; $749b: $03
    ld b, $81                                     ; $749c: $06 $81
    ld [bc], a                                    ; $749e: $02
    ld [bc], a                                    ; $749f: $02
    ld b, $02                                     ; $74a0: $06 $02
    inc b                                         ; $74a2: $04
    inc c                                         ; $74a3: $0c
    nop                                           ; $74a4: $00
    rst $38                                       ; $74a5: $ff
    dec c                                         ; $74a6: $0d
    inc b                                         ; $74a7: $04
    ei                                            ; $74a8: $fb
    dec b                                         ; $74a9: $05
    db $f4                                        ; $74aa: $f4
    db $fd                                        ; $74ab: $fd
    jp hl                                         ; $74ac: $e9


    ei                                            ; $74ad: $fb
    ld [$f9fe], a                                 ; $74ae: $ea $fe $f9
    ei                                            ; $74b1: $fb
    ld sp, hl                                     ; $74b2: $f9
    cp $02                                        ; $74b3: $fe $02
    rrca                                          ; $74b5: $0f
    sub d                                         ; $74b6: $92
    inc [hl]                                      ; $74b7: $34
    dec sp                                        ; $74b8: $3b
    ld d, h                                       ; $74b9: $54
    ld a, e                                       ; $74ba: $7b
    or e                                          ; $74bb: $b3
    rst $38                                       ; $74bc: $ff
    db $fc                                        ; $74bd: $fc
    rst $28                                       ; $74be: $ef
    ld [hl], a                                    ; $74bf: $77
    ld a, e                                       ; $74c0: $7b
    ld a, a                                       ; $74c1: $7f
    ld [hl], b                                    ; $74c2: $70
    ccf                                           ; $74c3: $3f
    jr z, jr_0e7_7505                             ; $74c4: $28 $3f

    ld l, $1f                                     ; $74c6: $2e $1f
    ld de, $1f02                                  ; $74c8: $11 $02 $1f
    ld b, $7f                                     ; $74cb: $06 $7f
    add c                                         ; $74cd: $81
    cp a                                          ; $74ce: $bf
    ld [bc], a                                    ; $74cf: $02
    rst $38                                       ; $74d0: $ff
    add c                                         ; $74d1: $81
    cp a                                          ; $74d2: $bf
    ld [bc], a                                    ; $74d3: $02
    inc b                                         ; $74d4: $04
    add h                                         ; $74d5: $84
    ld [bc], a                                    ; $74d6: $02
    ld b, $03                                     ; $74d7: $06 $03
    rlca                                          ; $74d9: $07
    ld b, $06                                     ; $74da: $06 $06
    inc b                                         ; $74dc: $04
    inc b                                         ; $74dd: $04
    ld [bc], a                                    ; $74de: $02
    nop                                           ; $74df: $00
    ld [bc], a                                    ; $74e0: $02
    inc b                                         ; $74e1: $04
    inc b                                         ; $74e2: $04
    ld b, $02                                     ; $74e3: $06 $02
    rlca                                          ; $74e5: $07
    add c                                         ; $74e6: $81
    dec b                                         ; $74e7: $05
    ld [bc], a                                    ; $74e8: $02
    rlca                                          ; $74e9: $07
    sub e                                         ; $74ea: $93
    dec b                                         ; $74eb: $05
    rst $38                                       ; $74ec: $ff
    db $fd                                        ; $74ed: $fd
    ldh [$a0], a                                  ; $74ee: $e0 $a0
    rst $28                                       ; $74f0: $ef
    cp a                                          ; $74f1: $bf
    rst $38                                       ; $74f2: $ff
    sub l                                         ; $74f3: $95
    db $ed                                        ; $74f4: $ed
    or [hl]                                       ; $74f5: $b6
    ld h, a                                       ; $74f6: $67
    ld a, [hl]                                    ; $74f7: $7e
    ccf                                           ; $74f8: $3f
    inc a                                         ; $74f9: $3c
    ccf                                           ; $74fa: $3f
    dec a                                         ; $74fb: $3d
    ld a, [de]                                    ; $74fc: $1a
    dec de                                        ; $74fd: $1b
    ld [bc], a                                    ; $74fe: $02
    inc bc                                        ; $74ff: $03
    stop                                          ; $7500: $10 $00
    add c                                         ; $7502: $81
    rlca                                          ; $7503: $07
    ld [bc], a                                    ; $7504: $02

jr_0e7_7505:
    dec b                                         ; $7505: $05
    add c                                         ; $7506: $81
    rlca                                          ; $7507: $07
    ld [bc], a                                    ; $7508: $02
    ld b, $02                                     ; $7509: $06 $02
    inc b                                         ; $750b: $04
    add d                                         ; $750c: $82
    ld [bc], a                                    ; $750d: $02
    ld b, $02                                     ; $750e: $06 $02
    inc b                                         ; $7510: $04
    add d                                         ; $7511: $82
    ld b, $02                                     ; $7512: $06 $02
    ld [bc], a                                    ; $7514: $02
    ld b, $0e                                     ; $7515: $06 $0e
    nop                                           ; $7517: $00
    rst $38                                       ; $7518: $ff
    dec c                                         ; $7519: $0d
    inc b                                         ; $751a: $04
    ei                                            ; $751b: $fb
    dec b                                         ; $751c: $05
    db $f4                                        ; $751d: $f4
    db $fd                                        ; $751e: $fd
    add sp, -$05                                  ; $751f: $e8 $fb
    jp hl                                         ; $7521: $e9


    cp $f8                                        ; $7522: $fe $f8
    ei                                            ; $7524: $fb
    ld hl, sp-$02                                 ; $7525: $f8 $fe
    ld [bc], a                                    ; $7527: $02
    rrca                                          ; $7528: $0f
    sub d                                         ; $7529: $92
    inc [hl]                                      ; $752a: $34
    dec sp                                        ; $752b: $3b
    ld d, d                                       ; $752c: $52
    ld a, l                                       ; $752d: $7d
    ld sp, hl                                     ; $752e: $f9
    xor a                                         ; $752f: $af
    cp [hl]                                       ; $7530: $be
    rst $20                                       ; $7531: $e7
    ld a, a                                       ; $7532: $7f
    ld a, e                                       ; $7533: $7b
    ld a, a                                       ; $7534: $7f
    ld l, b                                       ; $7535: $68
    ccf                                           ; $7536: $3f
    inc h                                         ; $7537: $24
    ccf                                           ; $7538: $3f
    ld l, $1f                                     ; $7539: $2e $1f
    ld de, $3f02                                  ; $753b: $11 $02 $3f
    inc b                                         ; $753e: $04
    ld a, a                                       ; $753f: $7f
    ld [bc], a                                    ; $7540: $02
    rst $38                                       ; $7541: $ff
    add c                                         ; $7542: $81
    cp a                                          ; $7543: $bf
    ld [bc], a                                    ; $7544: $02
    rst $38                                       ; $7545: $ff
    add c                                         ; $7546: $81
    cp a                                          ; $7547: $bf
    ld [bc], a                                    ; $7548: $02
    inc b                                         ; $7549: $04
    add h                                         ; $754a: $84
    ld [bc], a                                    ; $754b: $02
    ld b, $01                                     ; $754c: $06 $01
    rlca                                          ; $754e: $07
    ld b, $06                                     ; $754f: $06 $06
    inc b                                         ; $7551: $04
    inc b                                         ; $7552: $04
    ld [bc], a                                    ; $7553: $02
    nop                                           ; $7554: $00
    ld [bc], a                                    ; $7555: $02
    inc b                                         ; $7556: $04
    inc b                                         ; $7557: $04
    ld b, $02                                     ; $7558: $06 $02
    rlca                                          ; $755a: $07
    add c                                         ; $755b: $81
    dec b                                         ; $755c: $05
    ld [bc], a                                    ; $755d: $02
    rlca                                          ; $755e: $07
    sub e                                         ; $755f: $93
    dec b                                         ; $7560: $05
    rst $38                                       ; $7561: $ff
    db $fd                                        ; $7562: $fd
    ldh [$a0], a                                  ; $7563: $e0 $a0
    rst $38                                       ; $7565: $ff
    cp a                                          ; $7566: $bf
    rst $38                                       ; $7567: $ff
    cp c                                          ; $7568: $b9
    ld l, l                                       ; $7569: $6d
    ld [hl], a                                    ; $756a: $77
    ld e, l                                       ; $756b: $5d
    ld h, [hl]                                    ; $756c: $66
    ld e, a                                       ; $756d: $5f
    ld h, h                                       ; $756e: $64
    ld a, a                                       ; $756f: $7f
    ld a, l                                       ; $7570: $7d
    ld a, [hl]                                    ; $7571: $7e
    ld a, a                                       ; $7572: $7f
    ld [bc], a                                    ; $7573: $02
    inc sp                                        ; $7574: $33
    stop                                          ; $7575: $10 $00
    add [hl]                                      ; $7577: $86
    rlca                                          ; $7578: $07
    dec b                                         ; $7579: $05
    rlca                                          ; $757a: $07
    dec b                                         ; $757b: $05
    rlca                                          ; $757c: $07
    ld bc, $0602                                  ; $757d: $01 $02 $06
    add c                                         ; $7580: $81
    ld [bc], a                                    ; $7581: $02
    inc b                                         ; $7582: $04
    ld b, $81                                     ; $7583: $06 $81
    ld [bc], a                                    ; $7585: $02
    ld [bc], a                                    ; $7586: $02
    ld b, $0e                                     ; $7587: $06 $0e
    nop                                           ; $7589: $00
    rst $38                                       ; $758a: $ff
    dec c                                         ; $758b: $0d
    inc b                                         ; $758c: $04
    ei                                            ; $758d: $fb
    dec b                                         ; $758e: $05
    db $f4                                        ; $758f: $f4
    db $fd                                        ; $7590: $fd
    add sp, -$05                                  ; $7591: $e8 $fb
    jp hl                                         ; $7593: $e9


    cp $f8                                        ; $7594: $fe $f8
    ei                                            ; $7596: $fb
    ld hl, sp-$02                                 ; $7597: $f8 $fe
    ld [bc], a                                    ; $7599: $02
    rrca                                          ; $759a: $0f
    sub d                                         ; $759b: $92
    ld [hl-], a                                   ; $759c: $32
    dec a                                         ; $759d: $3d
    ld e, c                                       ; $759e: $59
    ld a, [hl]                                    ; $759f: $7e
    call c, $beb7                                 ; $75a0: $dc $b7 $be
    db $e3                                        ; $75a3: $e3
    ld a, e                                       ; $75a4: $7b
    ld a, l                                       ; $75a5: $7d
    ld a, a                                       ; $75a6: $7f
    ld h, h                                       ; $75a7: $64
    ccf                                           ; $75a8: $3f
    ld [hl+], a                                   ; $75a9: $22
    scf                                           ; $75aa: $37
    ld l, $1f                                     ; $75ab: $2e $1f
    ld de, $7f04                                  ; $75ad: $11 $04 $7f
    ld [bc], a                                    ; $75b0: $02
    rst $38                                       ; $75b1: $ff
    add c                                         ; $75b2: $81
    cp a                                          ; $75b3: $bf
    ld [bc], a                                    ; $75b4: $02
    rst $38                                       ; $75b5: $ff
    add e                                         ; $75b6: $83
    cp a                                          ; $75b7: $bf
    rst $38                                       ; $75b8: $ff
    cp a                                          ; $75b9: $bf
    ld [bc], a                                    ; $75ba: $02
    inc b                                         ; $75bb: $04
    add l                                         ; $75bc: $85
    ld [bc], a                                    ; $75bd: $02
    ld b, $05                                     ; $75be: $06 $05
    rlca                                          ; $75c0: $07
    ld [bc], a                                    ; $75c1: $02
    dec b                                         ; $75c2: $05
    ld b, $04                                     ; $75c3: $06 $04
    inc b                                         ; $75c5: $04
    inc b                                         ; $75c6: $04
    nop                                           ; $75c7: $00
    ld [bc], a                                    ; $75c8: $02
    inc b                                         ; $75c9: $04
    inc b                                         ; $75ca: $04
    ld b, $96                                     ; $75cb: $06 $96
    dec b                                         ; $75cd: $05
    rlca                                          ; $75ce: $07
    dec b                                         ; $75cf: $05
    rlca                                          ; $75d0: $07
    rst $38                                       ; $75d1: $ff
    db $fd                                        ; $75d2: $fd
    ldh [$a0], a                                  ; $75d3: $e0 $a0
    rst $38                                       ; $75d5: $ff
    cp a                                          ; $75d6: $bf
    ld l, a                                       ; $75d7: $6f
    ld a, d                                       ; $75d8: $7a
    ccf                                           ; $75d9: $3f
    ld [hl], $3f                                  ; $75da: $36 $3f
    dec h                                         ; $75dc: $25
    ld [hl], l                                    ; $75dd: $75
    ld c, a                                       ; $75de: $4f
    ld a, a                                       ; $75df: $7f
    ld [hl], a                                    ; $75e0: $77
    ld a, [hl]                                    ; $75e1: $7e
    ld c, a                                       ; $75e2: $4f
    ld [bc], a                                    ; $75e3: $02
    ld a, e                                       ; $75e4: $7b
    ld [bc], a                                    ; $75e5: $02
    jr c, jr_0e7_75f6                             ; $75e6: $38 $0e

    nop                                           ; $75e8: $00
    add [hl]                                      ; $75e9: $86
    inc bc                                        ; $75ea: $03
    dec b                                         ; $75eb: $05
    ld b, $02                                     ; $75ec: $06 $02
    ld b, $02                                     ; $75ee: $06 $02
    ld b, $04                                     ; $75f0: $06 $04
    ld [bc], a                                    ; $75f2: $02
    ld b, $02                                     ; $75f3: $06 $02
    inc b                                         ; $75f5: $04

jr_0e7_75f6:
    ld c, $00                                     ; $75f6: $0e $00
    rst $38                                       ; $75f8: $ff
    dec c                                         ; $75f9: $0d
    inc b                                         ; $75fa: $04
    ei                                            ; $75fb: $fb
    dec b                                         ; $75fc: $05
    db $f4                                        ; $75fd: $f4
    db $fd                                        ; $75fe: $fd
    jp hl                                         ; $75ff: $e9


    ei                                            ; $7600: $fb
    ld [$f9fe], a                                 ; $7601: $ea $fe $f9
    ei                                            ; $7604: $fb
    ld sp, hl                                     ; $7605: $f9
    cp $02                                        ; $7606: $fe $02
    rrca                                          ; $7608: $0f
    sub d                                         ; $7609: $92
    ld [hl-], a                                   ; $760a: $32
    dec a                                         ; $760b: $3d
    ld e, c                                       ; $760c: $59
    ld a, [hl]                                    ; $760d: $7e
    call c, $beb7                                 ; $760e: $dc $b7 $be
    db $e3                                        ; $7611: $e3
    ld a, e                                       ; $7612: $7b
    ld a, l                                       ; $7613: $7d
    ld a, a                                       ; $7614: $7f
    ld h, h                                       ; $7615: $64
    ccf                                           ; $7616: $3f
    ld [hl+], a                                   ; $7617: $22
    ccf                                           ; $7618: $3f
    ld l, $1f                                     ; $7619: $2e $1f
    ld de, $3f02                                  ; $761b: $11 $02 $3f
    inc b                                         ; $761e: $04
    ld a, a                                       ; $761f: $7f
    ld [bc], a                                    ; $7620: $02
    rst $38                                       ; $7621: $ff
    add c                                         ; $7622: $81
    cp a                                          ; $7623: $bf
    ld [bc], a                                    ; $7624: $02
    rst $38                                       ; $7625: $ff
    add c                                         ; $7626: $81
    cp a                                          ; $7627: $bf
    ld [bc], a                                    ; $7628: $02
    inc b                                         ; $7629: $04
    add l                                         ; $762a: $85
    ld [bc], a                                    ; $762b: $02
    ld b, $05                                     ; $762c: $06 $05
    rlca                                          ; $762e: $07
    ld [bc], a                                    ; $762f: $02
    dec b                                         ; $7630: $05
    ld b, $04                                     ; $7631: $06 $04
    inc b                                         ; $7633: $04
    inc b                                         ; $7634: $04
    nop                                           ; $7635: $00
    ld b, $06                                     ; $7636: $06 $06
    add c                                         ; $7638: $81
    dec b                                         ; $7639: $05
    ld [bc], a                                    ; $763a: $02
    rlca                                          ; $763b: $07
    add [hl]                                      ; $763c: $86
    dec b                                         ; $763d: $05
    rst $38                                       ; $763e: $ff
    db $fd                                        ; $763f: $fd
    ldh [$a0], a                                  ; $7640: $e0 $a0
    cp $02                                        ; $7642: $fe $02
    cp a                                          ; $7644: $bf
    adc e                                         ; $7645: $8b
    push af                                       ; $7646: $f5
    halt                                          ; $7647: $76
    ld l, l                                       ; $7648: $6d
    inc a                                         ; $7649: $3c
    cpl                                           ; $764a: $2f
    ld e, a                                       ; $764b: $5f
    ld h, a                                       ; $764c: $67
    ccf                                           ; $764d: $3f
    scf                                           ; $764e: $37
    ld l, e                                       ; $764f: $6b
    ld e, e                                       ; $7650: $5b
    ld [bc], a                                    ; $7651: $02
    ld a, b                                       ; $7652: $78
    stop                                          ; $7653: $10 $00
    add [hl]                                      ; $7655: $86
    rlca                                          ; $7656: $07
    dec b                                         ; $7657: $05
    rlca                                          ; $7658: $07
    ld bc, $0507                                  ; $7659: $01 $07 $05
    ld [bc], a                                    ; $765c: $02
    ld b, $04                                     ; $765d: $06 $04
    inc b                                         ; $765f: $04
    ld [de], a                                    ; $7660: $12
    nop                                           ; $7661: $00
    rst $38                                       ; $7662: $ff
    dec c                                         ; $7663: $0d
    inc b                                         ; $7664: $04
    ei                                            ; $7665: $fb
    dec b                                         ; $7666: $05
    db $f4                                        ; $7667: $f4
    db $fd                                        ; $7668: $fd
    add sp, -$05                                  ; $7669: $e8 $fb
    jp hl                                         ; $766b: $e9


    cp $f8                                        ; $766c: $fe $f8
    ei                                            ; $766e: $fb
    ld hl, sp-$02                                 ; $766f: $f8 $fe
    ld [bc], a                                    ; $7671: $02
    rrca                                          ; $7672: $0f
    sub d                                         ; $7673: $92
    inc [hl]                                      ; $7674: $34
    dec sp                                        ; $7675: $3b
    ld d, d                                       ; $7676: $52
    ld a, l                                       ; $7677: $7d
    ld sp, hl                                     ; $7678: $f9
    xor a                                         ; $7679: $af
    cp [hl]                                       ; $767a: $be
    rst $20                                       ; $767b: $e7
    ld a, a                                       ; $767c: $7f
    ld a, e                                       ; $767d: $7b
    ld a, a                                       ; $767e: $7f
    ld l, b                                       ; $767f: $68
    ccf                                           ; $7680: $3f
    inc h                                         ; $7681: $24
    ccf                                           ; $7682: $3f
    ld l, $1f                                     ; $7683: $2e $1f
    ld de, $3f02                                  ; $7685: $11 $02 $3f
    inc b                                         ; $7688: $04
    ld a, a                                       ; $7689: $7f
    ld [bc], a                                    ; $768a: $02
    rst $38                                       ; $768b: $ff
    add c                                         ; $768c: $81
    cp a                                          ; $768d: $bf
    ld [bc], a                                    ; $768e: $02
    rst $38                                       ; $768f: $ff
    add c                                         ; $7690: $81
    cp a                                          ; $7691: $bf
    ld [bc], a                                    ; $7692: $02
    inc b                                         ; $7693: $04
    add h                                         ; $7694: $84
    ld [bc], a                                    ; $7695: $02
    ld b, $01                                     ; $7696: $06 $01
    rlca                                          ; $7698: $07
    ld b, $06                                     ; $7699: $06 $06
    inc b                                         ; $769b: $04
    inc b                                         ; $769c: $04
    ld [bc], a                                    ; $769d: $02
    nop                                           ; $769e: $00
    ld [bc], a                                    ; $769f: $02
    inc b                                         ; $76a0: $04
    inc b                                         ; $76a1: $04
    ld b, $02                                     ; $76a2: $06 $02
    rlca                                          ; $76a4: $07
    add c                                         ; $76a5: $81
    dec b                                         ; $76a6: $05
    ld [bc], a                                    ; $76a7: $02
    rlca                                          ; $76a8: $07
    sub e                                         ; $76a9: $93
    dec b                                         ; $76aa: $05
    rst $38                                       ; $76ab: $ff
    db $fd                                        ; $76ac: $fd
    ldh [$a0], a                                  ; $76ad: $e0 $a0
    rst $38                                       ; $76af: $ff
    cp a                                          ; $76b0: $bf
    rst $38                                       ; $76b1: $ff
    or e                                          ; $76b2: $b3
    or $9d                                        ; $76b3: $f6 $9d
    ld [hl], a                                    ; $76b5: $77
    ld l, h                                       ; $76b6: $6c
    ld e, a                                       ; $76b7: $5f
    ld h, h                                       ; $76b8: $64
    ld a, a                                       ; $76b9: $7f
    ld [hl], a                                    ; $76ba: $77
    ld l, a                                       ; $76bb: $6f
    ld e, a                                       ; $76bc: $5f
    ld [bc], a                                    ; $76bd: $02
    ld a, c                                       ; $76be: $79
    stop                                          ; $76bf: $10 $00
    add h                                         ; $76c1: $84
    rlca                                          ; $76c2: $07
    dec b                                         ; $76c3: $05
    rlca                                          ; $76c4: $07
    dec b                                         ; $76c5: $05
    inc b                                         ; $76c6: $04
    ld b, $81                                     ; $76c7: $06 $81
    ld [bc], a                                    ; $76c9: $02
    dec b                                         ; $76ca: $05
    ld b, $02                                     ; $76cb: $06 $02
    inc b                                         ; $76cd: $04
    ld c, $00                                     ; $76ce: $0e $00
    rst $38                                       ; $76d0: $ff
    dec bc                                        ; $76d1: $0b
    inc bc                                        ; $76d2: $03
    ei                                            ; $76d3: $fb
    dec b                                         ; $76d4: $05
    db $f4                                        ; $76d5: $f4
    db $fd                                        ; $76d6: $fd
    add sp, -$05                                  ; $76d7: $e8 $fb
    jp hl                                         ; $76d9: $e9


    cp $f8                                        ; $76da: $fe $f8
    db $fc                                        ; $76dc: $fc
    ld [bc], a                                    ; $76dd: $02
    rra                                           ; $76de: $1f
    sub h                                         ; $76df: $94
    ld [hl], $39                                  ; $76e0: $36 $39
    ld e, l                                       ; $76e2: $5d
    ld a, a                                       ; $76e3: $7f
    xor [hl]                                      ; $76e4: $ae
    db $db                                        ; $76e5: $db
    adc a                                         ; $76e6: $8f
    ld sp, hl                                     ; $76e7: $f9
    cp a                                          ; $76e8: $bf
    or $ff                                        ; $76e9: $f6 $ff
    ret nc                                        ; $76eb: $d0

    ld a, a                                       ; $76ec: $7f
    ld [hl], b                                    ; $76ed: $70
    ccf                                           ; $76ee: $3f
    inc sp                                        ; $76ef: $33
    rra                                           ; $76f0: $1f
    add hl, de                                    ; $76f1: $19
    rra                                           ; $76f2: $1f
    rla                                           ; $76f3: $17
    inc b                                         ; $76f4: $04
    ld a, $05                                     ; $76f5: $3e $05
    ccf                                           ; $76f7: $3f
    add c                                         ; $76f8: $81
    cpl                                           ; $76f9: $2f
    ld [bc], a                                    ; $76fa: $02
    inc b                                         ; $76fb: $04
    add h                                         ; $76fc: $84
    ld [bc], a                                    ; $76fd: $02
    ld b, $05                                     ; $76fe: $06 $05
    rlca                                          ; $7700: $07
    ld [bc], a                                    ; $7701: $02
    ld b, $02                                     ; $7702: $06 $02
    inc b                                         ; $7704: $04
    add d                                         ; $7705: $82
    ld b, $02                                     ; $7706: $06 $02
    inc b                                         ; $7708: $04
    inc b                                         ; $7709: $04
    ld c, $00                                     ; $770a: $0e $00
    add d                                         ; $770c: $82
    ld hl, sp+$78                                 ; $770d: $f8 $78

jr_0e7_770f:
    ld [bc], a                                    ; $770f: $02
    ld b, b                                       ; $7710: $40
    adc h                                         ; $7711: $8c
    ld a, [hl]                                    ; $7712: $7e
    ld e, [hl]                                    ; $7713: $5e
    ld e, h                                       ; $7714: $5c
    ld l, h                                       ; $7715: $6c
    inc a                                         ; $7716: $3c
    inc l                                         ; $7717: $2c
    inc a                                         ; $7718: $3c
    inc [hl]                                      ; $7719: $34
    ld a, $26                                     ; $771a: $3e $26
    ld a, [hl]                                    ; $771c: $7e
    ld b, [hl]                                    ; $771d: $46
    ld [bc], a                                    ; $771e: $02
    ld a, [hl]                                    ; $771f: $7e
    add d                                         ; $7720: $82
    ld [hl], a                                    ; $7721: $77
    ld e, c                                       ; $7722: $59
    ld [bc], a                                    ; $7723: $02
    ld a, a                                       ; $7724: $7f
    inc c                                         ; $7725: $0c
    nop                                           ; $7726: $00
    rst $38                                       ; $7727: $ff
    dec c                                         ; $7728: $0d
    inc b                                         ; $7729: $04
    ei                                            ; $772a: $fb
    dec b                                         ; $772b: $05
    db $f4                                        ; $772c: $f4
    db $fd                                        ; $772d: $fd
    add sp, -$05                                  ; $772e: $e8 $fb
    jp hl                                         ; $7730: $e9


    cp $f8                                        ; $7731: $fe $f8
    ld a, [$00f8]                                 ; $7733: $fa $f8 $00
    ld [bc], a                                    ; $7736: $02
    rra                                           ; $7737: $1f
    sub h                                         ; $7738: $94
    inc l                                         ; $7739: $2c
    inc sp                                        ; $773a: $33
    ld e, h                                       ; $773b: $5c
    ld a, a                                       ; $773c: $7f
    adc $bb                                       ; $773d: $ce $bb
    rst $18                                       ; $773f: $df
    or c                                          ; $7740: $b1
    or [hl]                                       ; $7741: $b6
    rst $38                                       ; $7742: $ff
    ld a, a                                       ; $7743: $7f
    ld d, b                                       ; $7744: $50
    ld a, a                                       ; $7745: $7f
    ld [hl], b                                    ; $7746: $70
    ccf                                           ; $7747: $3f
    inc sp                                        ; $7748: $33
    rra                                           ; $7749: $1f
    add hl, de                                    ; $774a: $19
    rra                                           ; $774b: $1f
    rla                                           ; $774c: $17
    inc b                                         ; $774d: $04
    ld a, $05                                     ; $774e: $3e $05
    ccf                                           ; $7750: $3f
    add c                                         ; $7751: $81
    scf                                           ; $7752: $37
    ld [bc], a                                    ; $7753: $02
    inc b                                         ; $7754: $04
    add h                                         ; $7755: $84
    ld [bc], a                                    ; $7756: $02
    ld b, $05                                     ; $7757: $06 $05
    rlca                                          ; $7759: $07
    ld [bc], a                                    ; $775a: $02
    ld b, $02                                     ; $775b: $06 $02
    inc b                                         ; $775d: $04
    add d                                         ; $775e: $82
    ld b, $02                                     ; $775f: $06 $02
    inc b                                         ; $7761: $04
    inc b                                         ; $7762: $04
    ld c, $00                                     ; $7763: $0e $00
    add d                                         ; $7765: $82
    ld hl, sp-$28                                 ; $7766: $f8 $d8
    ld [bc], a                                    ; $7768: $02
    db $10                                        ; $7769: $10
    sub b                                         ; $776a: $90
    rra                                           ; $776b: $1f
    ld e, $1f                                     ; $776c: $1e $1f
    ld d, $1f                                     ; $776e: $16 $1f
    dec de                                        ; $7770: $1b
    ccf                                           ; $7771: $3f
    ld [hl+], a                                   ; $7772: $22
    ld a, l                                       ; $7773: $7d
    ld h, l                                       ; $7774: $65
    db $fd                                        ; $7775: $fd
    push bc                                       ; $7776: $c5
    ld hl, sp-$48                                 ; $7777: $f8 $b8
    ld e, h                                       ; $7779: $5c
    ld h, h                                       ; $777a: $64
    ld [bc], a                                    ; $777b: $02
    inc a                                         ; $777c: $3c
    ld c, $00                                     ; $777d: $0e $00
    ld [bc], a                                    ; $777f: $02
    jr nz, @-$7d                                  ; $7780: $20 $81

    db $10                                        ; $7782: $10
    ld [bc], a                                    ; $7783: $02
    jr nc, jr_0e7_770f                            ; $7784: $30 $89

    db $10                                        ; $7786: $10
    jr c, jr_0e7_77b1                             ; $7787: $38 $28

    ld a, $0e                                     ; $7789: $3e $0e
    ccf                                           ; $778b: $3f
    add hl, de                                    ; $778c: $19
    ld l, $36                                     ; $778d: $2e $36
    ld [bc], a                                    ; $778f: $02
    jr c, @+$10                                   ; $7790: $38 $0e

    nop                                           ; $7792: $00
    rst $38                                       ; $7793: $ff
    dec c                                         ; $7794: $0d
    inc b                                         ; $7795: $04
    ei                                            ; $7796: $fb
    dec b                                         ; $7797: $05
    db $f4                                        ; $7798: $f4
    db $fd                                        ; $7799: $fd
    jp hl                                         ; $779a: $e9


    ei                                            ; $779b: $fb
    ld [$f9fe], a                                 ; $779c: $ea $fe $f9
    ld a, [$fef9]                                 ; $779f: $fa $f9 $fe
    ld [bc], a                                    ; $77a2: $02
    rra                                           ; $77a3: $1f
    sub h                                         ; $77a4: $94
    inc l                                         ; $77a5: $2c
    inc sp                                        ; $77a6: $33
    ld e, h                                       ; $77a7: $5c
    ld a, a                                       ; $77a8: $7f
    adc $bb                                       ; $77a9: $ce $bb
    rst $18                                       ; $77ab: $df
    or c                                          ; $77ac: $b1
    or [hl]                                       ; $77ad: $b6
    rst $38                                       ; $77ae: $ff
    ld a, a                                       ; $77af: $7f
    ld d, b                                       ; $77b0: $50

jr_0e7_77b1:
    ld a, a                                       ; $77b1: $7f
    ld [hl], b                                    ; $77b2: $70
    ccf                                           ; $77b3: $3f
    inc sp                                        ; $77b4: $33
    rra                                           ; $77b5: $1f
    add hl, de                                    ; $77b6: $19
    rra                                           ; $77b7: $1f
    rla                                           ; $77b8: $17
    ld [bc], a                                    ; $77b9: $02
    ld a, $07                                     ; $77ba: $3e $07
    ccf                                           ; $77bc: $3f
    add c                                         ; $77bd: $81
    scf                                           ; $77be: $37
    ld [bc], a                                    ; $77bf: $02
    inc b                                         ; $77c0: $04
    add h                                         ; $77c1: $84
    ld [bc], a                                    ; $77c2: $02
    ld b, $05                                     ; $77c3: $06 $05
    rlca                                          ; $77c5: $07
    ld [bc], a                                    ; $77c6: $02
    ld b, $02                                     ; $77c7: $06 $02
    inc b                                         ; $77c9: $04
    add d                                         ; $77ca: $82
    ld b, $02                                     ; $77cb: $06 $02
    inc b                                         ; $77cd: $04
    inc b                                         ; $77ce: $04
    ld c, $00                                     ; $77cf: $0e $00
    add d                                         ; $77d1: $82
    ld hl, sp-$28                                 ; $77d2: $f8 $d8
    ld [bc], a                                    ; $77d4: $02
    db $10                                        ; $77d5: $10
    adc e                                         ; $77d6: $8b
    ld e, $15                                     ; $77d7: $1e $15
    rra                                           ; $77d9: $1f
    ld a, [de]                                    ; $77da: $1a
    ld a, a                                       ; $77db: $7f
    ld h, e                                       ; $77dc: $63
    rst $38                                       ; $77dd: $ff
    add $ff                                       ; $77de: $c6 $ff
    xor [hl]                                      ; $77e0: $ae
    ld e, e                                       ; $77e1: $5b
    ld [bc], a                                    ; $77e2: $02
    ld a, e                                       ; $77e3: $7b
    add c                                         ; $77e4: $81
    ld c, e                                       ; $77e5: $4b
    ld [bc], a                                    ; $77e6: $02
    jr nc, @+$12                                  ; $77e7: $30 $10

    nop                                           ; $77e9: $00
    inc b                                         ; $77ea: $04
    ld [$0c84], sp                                ; $77eb: $08 $84 $0c
    inc b                                         ; $77ee: $04
    inc c                                         ; $77ef: $0c
    inc b                                         ; $77f0: $04
    ld [bc], a                                    ; $77f1: $02
    ld c, $82                                     ; $77f2: $0e $82
    rlca                                          ; $77f4: $07
    add hl, bc                                    ; $77f5: $09
    ld [bc], a                                    ; $77f6: $02
    rrca                                          ; $77f7: $0f
    stop                                          ; $77f8: $10 $00
    rst $38                                       ; $77fa: $ff
    dec bc                                        ; $77fb: $0b
    inc bc                                        ; $77fc: $03
    ei                                            ; $77fd: $fb
    dec b                                         ; $77fe: $05
    db $f4                                        ; $77ff: $f4
    db $fd                                        ; $7800: $fd
    add sp, -$05                                  ; $7801: $e8 $fb
    jp hl                                         ; $7803: $e9


    cp $f8                                        ; $7804: $fe $f8
    db $fc                                        ; $7806: $fc
    ld [bc], a                                    ; $7807: $02
    rra                                           ; $7808: $1f
    sub h                                         ; $7809: $94
    inc [hl]                                      ; $780a: $34
    dec sp                                        ; $780b: $3b
    ld e, l                                       ; $780c: $5d
    ld a, a                                       ; $780d: $7f
    xor [hl]                                      ; $780e: $ae
    db $db                                        ; $780f: $db
    rst $08                                       ; $7810: $cf
    cp c                                          ; $7811: $b9
    cp a                                          ; $7812: $bf
    or $ff                                        ; $7813: $f6 $ff
    ret nc                                        ; $7815: $d0

    ld a, a                                       ; $7816: $7f
    ld [hl], b                                    ; $7817: $70
    ccf                                           ; $7818: $3f
    inc sp                                        ; $7819: $33
    rra                                           ; $781a: $1f
    add hl, de                                    ; $781b: $19
    rra                                           ; $781c: $1f
    rla                                           ; $781d: $17
    ld b, $3e                                     ; $781e: $06 $3e
    inc bc                                        ; $7820: $03
    ccf                                           ; $7821: $3f
    add c                                         ; $7822: $81
    cpl                                           ; $7823: $2f
    ld [bc], a                                    ; $7824: $02
    inc b                                         ; $7825: $04
    add h                                         ; $7826: $84
    ld [bc], a                                    ; $7827: $02
    ld b, $05                                     ; $7828: $06 $05
    rlca                                          ; $782a: $07
    ld [bc], a                                    ; $782b: $02
    ld b, $02                                     ; $782c: $06 $02
    inc b                                         ; $782e: $04
    add d                                         ; $782f: $82
    ld b, $02                                     ; $7830: $06 $02
    inc b                                         ; $7832: $04
    inc b                                         ; $7833: $04

jr_0e7_7834:
    ld c, $00                                     ; $7834: $0e $00
    add d                                         ; $7836: $82
    ld hl, sp+$78                                 ; $7837: $f8 $78
    ld [bc], a                                    ; $7839: $02
    ld b, b                                       ; $783a: $40
    adc [hl]                                      ; $783b: $8e
    ld a, [hl]                                    ; $783c: $7e
    ld d, [hl]                                    ; $783d: $56
    ld e, a                                       ; $783e: $5f
    ld l, e                                       ; $783f: $6b
    ccf                                           ; $7840: $3f
    add hl, hl                                    ; $7841: $29
    ld a, $32                                     ; $7842: $3e $32
    ld a, [hl]                                    ; $7844: $7e
    halt                                          ; $7845: $76
    ld l, h                                       ; $7846: $6c
    ld e, h                                       ; $7847: $5c
    ld a, [hl]                                    ; $7848: $7e
    ld [hl], d                                    ; $7849: $72
    ld [bc], a                                    ; $784a: $02
    ld a, [hl]                                    ; $784b: $7e
    ld c, $00                                     ; $784c: $0e $00
    rst $38                                       ; $784e: $ff
    dec c                                         ; $784f: $0d
    inc b                                         ; $7850: $04
    ei                                            ; $7851: $fb
    dec b                                         ; $7852: $05
    db $f4                                        ; $7853: $f4
    db $fd                                        ; $7854: $fd
    add sp, -$05                                  ; $7855: $e8 $fb
    jp hl                                         ; $7857: $e9


    cp $f8                                        ; $7858: $fe $f8
    ld a, [$00f8]                                 ; $785a: $fa $f8 $00
    ld [bc], a                                    ; $785d: $02
    rra                                           ; $785e: $1f
    sub h                                         ; $785f: $94
    ld [hl], $39                                  ; $7860: $36 $39
    ld c, [hl]                                    ; $7862: $4e
    ld a, a                                       ; $7863: $7f
    sub a                                         ; $7864: $97
    db $ed                                        ; $7865: $ed
    rst $08                                       ; $7866: $cf
    cp b                                          ; $7867: $b8
    cp a                                          ; $7868: $bf
    ei                                            ; $7869: $fb
    rst $18                                       ; $786a: $df
    ldh [$7f], a                                  ; $786b: $e0 $7f
    ld [hl], b                                    ; $786d: $70
    ccf                                           ; $786e: $3f
    add hl, sp                                    ; $786f: $39
    rra                                           ; $7870: $1f
    add hl, de                                    ; $7871: $19
    rra                                           ; $7872: $1f
    rla                                           ; $7873: $17
    inc b                                         ; $7874: $04
    ld a, $02                                     ; $7875: $3e $02
    ccf                                           ; $7877: $3f
    inc bc                                        ; $7878: $03
    ld a, a                                       ; $7879: $7f
    add c                                         ; $787a: $81
    ld e, a                                       ; $787b: $5f
    ld [bc], a                                    ; $787c: $02
    inc b                                         ; $787d: $04
    add h                                         ; $787e: $84
    ld [bc], a                                    ; $787f: $02
    ld b, $05                                     ; $7880: $06 $05
    rlca                                          ; $7882: $07
    ld [bc], a                                    ; $7883: $02
    ld b, $02                                     ; $7884: $06 $02
    inc b                                         ; $7886: $04
    add d                                         ; $7887: $82
    ld b, $02                                     ; $7888: $06 $02
    inc b                                         ; $788a: $04
    inc b                                         ; $788b: $04
    ld c, $00                                     ; $788c: $0e $00
    ld [bc], a                                    ; $788e: $02
    db $fc                                        ; $788f: $fc
    sub b                                         ; $7890: $90
    jr nc, @+$22                                  ; $7891: $30 $20

    ccf                                           ; $7893: $3f
    cpl                                           ; $7894: $2f
    ccf                                           ; $7895: $3f
    ld a, [hl+]                                   ; $7896: $2a
    ccf                                           ; $7897: $3f
    inc l                                         ; $7898: $2c
    ld a, a                                       ; $7899: $7f
    halt                                          ; $789a: $76
    rst $38                                       ; $789b: $ff
    add $bf                                       ; $789c: $c6 $bf
    ld a, [$756d]                                 ; $789e: $fa $6d $75
    ld [bc], a                                    ; $78a1: $02
    jr jr_0e7_78b4                                ; $78a2: $18 $10

    nop                                           ; $78a4: $00
    add c                                         ; $78a5: $81
    jr z, @+$05                                   ; $78a6: $28 $03

    jr c, jr_0e7_7834                             ; $78a8: $38 $8a

    jr nc, jr_0e7_78bc                            ; $78aa: $30 $10

    jr nc, jr_0e7_78be                            ; $78ac: $30 $10

    ld a, $0e                                     ; $78ae: $3e $0e
    scf                                           ; $78b0: $37
    add hl, sp                                    ; $78b1: $39
    ld a, $1e                                     ; $78b2: $3e $1e

jr_0e7_78b4:
    ld [bc], a                                    ; $78b4: $02
    jr nc, @+$10                                  ; $78b5: $30 $0e

    nop                                           ; $78b7: $00
    rst $38                                       ; $78b8: $ff
    dec c                                         ; $78b9: $0d
    inc b                                         ; $78ba: $04
    ei                                            ; $78bb: $fb

jr_0e7_78bc:
    dec b                                         ; $78bc: $05
    db $f4                                        ; $78bd: $f4

jr_0e7_78be:
    db $fd                                        ; $78be: $fd
    jp hl                                         ; $78bf: $e9


    ei                                            ; $78c0: $fb
    ld [$f9fe], a                                 ; $78c1: $ea $fe $f9
    ld a, [$fef9]                                 ; $78c4: $fa $f9 $fe
    ld [bc], a                                    ; $78c7: $02
    rra                                           ; $78c8: $1f
    sub h                                         ; $78c9: $94
    ld [hl], $39                                  ; $78ca: $36 $39
    ld c, [hl]                                    ; $78cc: $4e
    ld a, a                                       ; $78cd: $7f
    sub a                                         ; $78ce: $97
    db $ed                                        ; $78cf: $ed
    rst $08                                       ; $78d0: $cf
    cp b                                          ; $78d1: $b8
    cp a                                          ; $78d2: $bf
    ei                                            ; $78d3: $fb
    rst $38                                       ; $78d4: $ff
    ldh [$7f], a                                  ; $78d5: $e0 $7f
    ld [hl], b                                    ; $78d7: $70
    ccf                                           ; $78d8: $3f
    add hl, sp                                    ; $78d9: $39
    rra                                           ; $78da: $1f
    add hl, de                                    ; $78db: $19
    rra                                           ; $78dc: $1f
    rla                                           ; $78dd: $17
    ld [bc], a                                    ; $78de: $02
    ld a, $02                                     ; $78df: $3e $02
    ccf                                           ; $78e1: $3f
    dec b                                         ; $78e2: $05
    ld a, a                                       ; $78e3: $7f
    add c                                         ; $78e4: $81
    ld e, a                                       ; $78e5: $5f
    ld [bc], a                                    ; $78e6: $02
    inc b                                         ; $78e7: $04
    add h                                         ; $78e8: $84
    ld [bc], a                                    ; $78e9: $02
    ld b, $05                                     ; $78ea: $06 $05
    rlca                                          ; $78ec: $07
    ld [bc], a                                    ; $78ed: $02
    ld b, $02                                     ; $78ee: $06 $02
    inc b                                         ; $78f0: $04
    add d                                         ; $78f1: $82
    ld b, $02                                     ; $78f2: $06 $02
    inc b                                         ; $78f4: $04
    inc b                                         ; $78f5: $04
    ld c, $00                                     ; $78f6: $0e $00
    ld [bc], a                                    ; $78f8: $02
    ld hl, sp-$70                                 ; $78f9: $f8 $90
    jr nc, jr_0e7_791d                            ; $78fb: $30 $20

    ccf                                           ; $78fd: $3f
    dec l                                         ; $78fe: $2d
    ld l, a                                       ; $78ff: $6f
    ld [hl], l                                    ; $7900: $75
    rst $38                                       ; $7901: $ff
    db $f4                                        ; $7902: $f4
    cp a                                          ; $7903: $bf
    db $fc                                        ; $7904: $fc
    ld a, a                                       ; $7905: $7f
    ld [hl], h                                    ; $7906: $74
    ld e, a                                       ; $7907: $5f
    ld l, a                                       ; $7908: $6f
    scf                                           ; $7909: $37
    dec [hl]                                      ; $790a: $35
    ld [bc], a                                    ; $790b: $02
    rlca                                          ; $790c: $07
    stop                                          ; $790d: $10 $00
    inc b                                         ; $790f: $04
    inc c                                         ; $7910: $0c
    inc b                                         ; $7911: $04
    ld [$0c82], sp                                ; $7912: $08 $82 $0c
    inc b                                         ; $7915: $04
    ld [bc], a                                    ; $7916: $02
    ld c, $82                                     ; $7917: $0e $82
    rlca                                          ; $7919: $07
    add hl, bc                                    ; $791a: $09
    ld [bc], a                                    ; $791b: $02
    rrca                                          ; $791c: $0f

jr_0e7_791d:
    ld c, $00                                     ; $791d: $0e $00
    rst $38                                       ; $791f: $ff
    dec bc                                        ; $7920: $0b
    inc bc                                        ; $7921: $03
    ei                                            ; $7922: $fb
    dec b                                         ; $7923: $05
    db $f4                                        ; $7924: $f4
    db $fd                                        ; $7925: $fd
    add sp, -$05                                  ; $7926: $e8 $fb
    jp hl                                         ; $7928: $e9


    cp $f8                                        ; $7929: $fe $f8
    db $fc                                        ; $792b: $fc
    ld [bc], a                                    ; $792c: $02
    rra                                           ; $792d: $1f
    sub h                                         ; $792e: $94
    inc [hl]                                      ; $792f: $34
    dec sp                                        ; $7930: $3b
    ld e, l                                       ; $7931: $5d
    ld a, a                                       ; $7932: $7f
    xor [hl]                                      ; $7933: $ae
    db $db                                        ; $7934: $db
    rst $08                                       ; $7935: $cf
    cp c                                          ; $7936: $b9
    cp a                                          ; $7937: $bf
    or $ef                                        ; $7938: $f6 $ef
    ret nc                                        ; $793a: $d0

    ld a, a                                       ; $793b: $7f
    ld [hl], b                                    ; $793c: $70
    ccf                                           ; $793d: $3f
    inc sp                                        ; $793e: $33
    rra                                           ; $793f: $1f
    add hl, de                                    ; $7940: $19
    rra                                           ; $7941: $1f
    rla                                           ; $7942: $17
    ld b, $3e                                     ; $7943: $06 $3e
    ld [bc], a                                    ; $7945: $02
    ld a, a                                       ; $7946: $7f
    add d                                         ; $7947: $82
    ccf                                           ; $7948: $3f
    cpl                                           ; $7949: $2f
    ld [bc], a                                    ; $794a: $02
    inc b                                         ; $794b: $04
    add h                                         ; $794c: $84
    ld [bc], a                                    ; $794d: $02
    ld b, $05                                     ; $794e: $06 $05
    rlca                                          ; $7950: $07
    ld [bc], a                                    ; $7951: $02
    ld b, $02                                     ; $7952: $06 $02
    inc b                                         ; $7954: $04
    add d                                         ; $7955: $82
    ld b, $02                                     ; $7956: $06 $02
    inc b                                         ; $7958: $04
    inc b                                         ; $7959: $04
    ld c, $00                                     ; $795a: $0e $00
    add d                                         ; $795c: $82
    ld hl, sp+$78                                 ; $795d: $f8 $78
    ld [bc], a                                    ; $795f: $02
    ld b, b                                       ; $7960: $40
    add c                                         ; $7961: $81
    ld a, a                                       ; $7962: $7f
    ld [bc], a                                    ; $7963: $02
    ld e, a                                       ; $7964: $5f
    adc c                                         ; $7965: $89
    ld l, l                                       ; $7966: $6d
    ccf                                           ; $7967: $3f
    dec l                                         ; $7968: $2d
    ccf                                           ; $7969: $3f
    dec [hl]                                      ; $796a: $35
    ld a, $26                                     ; $796b: $3e $26
    ld a, h                                       ; $796d: $7c
    ld b, h                                       ; $796e: $44
    ld [bc], a                                    ; $796f: $02
    ld a, [hl]                                    ; $7970: $7e
    add d                                         ; $7971: $82
    ld [hl], a                                    ; $7972: $77
    ld e, c                                       ; $7973: $59
    ld [bc], a                                    ; $7974: $02
    ld a, a                                       ; $7975: $7f
    inc c                                         ; $7976: $0c
    nop                                           ; $7977: $00
    rst $38                                       ; $7978: $ff
    dec c                                         ; $7979: $0d
    inc b                                         ; $797a: $04
    ei                                            ; $797b: $fb
    dec b                                         ; $797c: $05
    db $f4                                        ; $797d: $f4
    db $fd                                        ; $797e: $fd
    add sp, -$05                                  ; $797f: $e8 $fb
    jp hl                                         ; $7981: $e9


    cp $f8                                        ; $7982: $fe $f8
    ei                                            ; $7984: $fb
    ld hl, sp-$02                                 ; $7985: $f8 $fe
    ld [bc], a                                    ; $7987: $02
    ld e, $8d                                     ; $7988: $1e $8d
    add hl, sp                                    ; $798a: $39
    daa                                           ; $798b: $27
    ld b, c                                       ; $798c: $41
    ld a, a                                       ; $798d: $7f
    or d                                          ; $798e: $b2
    rst $28                                       ; $798f: $ef
    ld b, c                                       ; $7990: $41
    ld a, [hl]                                    ; $7991: $7e
    ld d, b                                       ; $7992: $50
    ld a, a                                       ; $7993: $7f
    ld l, d                                       ; $7994: $6a
    ld a, a                                       ; $7995: $7f
    dec [hl]                                      ; $7996: $35
    ld [bc], a                                    ; $7997: $02
    ccf                                           ; $7998: $3f
    add e                                         ; $7999: $83
    ld l, $1f                                     ; $799a: $2e $1f
    ld de, $3f02                                  ; $799c: $11 $02 $3f
    ld [bc], a                                    ; $799f: $02
    ld a, a                                       ; $79a0: $7f
    dec b                                         ; $79a1: $05
    rst $38                                       ; $79a2: $ff
    add e                                         ; $79a3: $83
    cp a                                          ; $79a4: $bf
    rst $38                                       ; $79a5: $ff
    cp a                                          ; $79a6: $bf
    ld [bc], a                                    ; $79a7: $02
    inc b                                         ; $79a8: $04
    add a                                         ; $79a9: $87
    ld [bc], a                                    ; $79aa: $02
    ld b, $05                                     ; $79ab: $06 $05
    inc bc                                        ; $79ad: $03
    ld bc, $0207                                  ; $79ae: $01 $07 $02
    inc bc                                        ; $79b1: $03
    ld b, $04                                     ; $79b2: $06 $04
    inc b                                         ; $79b4: $04
    ld [bc], a                                    ; $79b5: $02
    nop                                           ; $79b6: $00
    ld [bc], a                                    ; $79b7: $02
    inc b                                         ; $79b8: $04
    ld [bc], a                                    ; $79b9: $02
    ld b, $05                                     ; $79ba: $06 $05
    rlca                                          ; $79bc: $07
    sub b                                         ; $79bd: $90
    dec b                                         ; $79be: $05
    rlca                                          ; $79bf: $07
    dec b                                         ; $79c0: $05
    rst $38                                       ; $79c1: $ff
    db $fd                                        ; $79c2: $fd
    ldh [$a0], a                                  ; $79c3: $e0 $a0
    ld e, a                                       ; $79c5: $5f
    ld a, a                                       ; $79c6: $7f
    ld a, $31                                     ; $79c7: $3e $31
    ccf                                           ; $79c9: $3f
    ld hl, $2e37                                  ; $79ca: $21 $37 $2e
    cpl                                           ; $79cd: $2f
    ld [bc], a                                    ; $79ce: $02
    ccf                                           ; $79cf: $3f
    add l                                         ; $79d0: $85
    ld h, $7f                                     ; $79d1: $26 $7f
    ld h, [hl]                                    ; $79d3: $66
    ld e, c                                       ; $79d4: $59
    ld a, c                                       ; $79d5: $79
    ld [bc], a                                    ; $79d6: $02
    add hl, sp                                    ; $79d7: $39
    ld c, $00                                     ; $79d8: $0e $00
    add d                                         ; $79da: $82
    ld [bc], a                                    ; $79db: $02
    ld b, $06                                     ; $79dc: $06 $06
    inc b                                         ; $79de: $04
    add c                                         ; $79df: $81
    ld [bc], a                                    ; $79e0: $02
    ld [bc], a                                    ; $79e1: $02
    ld b, $85                                     ; $79e2: $06 $85
    ld [bc], a                                    ; $79e4: $02
    rlca                                          ; $79e5: $07
    inc bc                                        ; $79e6: $03
    dec b                                         ; $79e7: $05
    rlca                                          ; $79e8: $07
    ld [bc], a                                    ; $79e9: $02
    ld b, $0c                                     ; $79ea: $06 $0c
    nop                                           ; $79ec: $00
    rst $38                                       ; $79ed: $ff
    dec c                                         ; $79ee: $0d
    inc b                                         ; $79ef: $04
    ei                                            ; $79f0: $fb
    dec b                                         ; $79f1: $05
    db $f4                                        ; $79f2: $f4
    db $fd                                        ; $79f3: $fd
    add sp, -$05                                  ; $79f4: $e8 $fb
    jp hl                                         ; $79f6: $e9


    cp $f8                                        ; $79f7: $fe $f8
    ei                                            ; $79f9: $fb
    ld hl, sp-$03                                 ; $79fa: $f8 $fd
    ld [bc], a                                    ; $79fc: $02
    ld e, $8d                                     ; $79fd: $1e $8d
    dec h                                         ; $79ff: $25
    dec sp                                        ; $7a00: $3b
    ld c, d                                       ; $7a01: $4a
    ld [hl], a                                    ; $7a02: $77
    db $e3                                        ; $7a03: $e3
    cp $40                                        ; $7a04: $fe $40
    ld a, a                                       ; $7a06: $7f
    ld h, b                                       ; $7a07: $60
    ld a, a                                       ; $7a08: $7f
    ld d, l                                       ; $7a09: $55
    ld a, a                                       ; $7a0a: $7f
    dec hl                                        ; $7a0b: $2b
    ld [bc], a                                    ; $7a0c: $02
    ccf                                           ; $7a0d: $3f
    add e                                         ; $7a0e: $83
    ld a, $1f                                     ; $7a0f: $3e $1f
    ld de, $1f02                                  ; $7a11: $11 $02 $1f
    inc b                                         ; $7a14: $04
    ld a, a                                       ; $7a15: $7f
    inc b                                         ; $7a16: $04
    rst $38                                       ; $7a17: $ff
    add d                                         ; $7a18: $82
    cp a                                          ; $7a19: $bf
    rst $38                                       ; $7a1a: $ff
    ld [bc], a                                    ; $7a1b: $02
    inc b                                         ; $7a1c: $04
    add a                                         ; $7a1d: $87
    ld b, $02                                     ; $7a1e: $06 $02
    ld bc, $0107                                  ; $7a20: $01 $07 $01
    rlca                                          ; $7a23: $07
    ld [bc], a                                    ; $7a24: $02
    inc bc                                        ; $7a25: $03
    ld b, $04                                     ; $7a26: $06 $04
    inc b                                         ; $7a28: $04
    ld [bc], a                                    ; $7a29: $02
    nop                                           ; $7a2a: $00
    ld [bc], a                                    ; $7a2b: $02
    inc b                                         ; $7a2c: $04
    ld [bc], a                                    ; $7a2d: $02
    ld b, $04                                     ; $7a2e: $06 $04
    rlca                                          ; $7a30: $07
    add c                                         ; $7a31: $81
    dec b                                         ; $7a32: $05
    ld [bc], a                                    ; $7a33: $02
    rlca                                          ; $7a34: $07
    sub e                                         ; $7a35: $93
    dec b                                         ; $7a36: $05
    rst $38                                       ; $7a37: $ff
    db $fd                                        ; $7a38: $fd
    ldh [$a0], a                                  ; $7a39: $e0 $a0
    rst $38                                       ; $7a3b: $ff
    cp a                                          ; $7a3c: $bf
    ld a, [$f5bd]                                 ; $7a3d: $fa $bd $f5
    sbc [hl]                                      ; $7a40: $9e
    ld a, a                                       ; $7a41: $7f
    ld l, h                                       ; $7a42: $6c
    ld l, a                                       ; $7a43: $6f
    ld a, h                                       ; $7a44: $7c
    ld a, a                                       ; $7a45: $7f
    ld a, l                                       ; $7a46: $7d
    ld l, [hl]                                    ; $7a47: $6e
    ld a, a                                       ; $7a48: $7f
    ld [bc], a                                    ; $7a49: $02
    inc sp                                        ; $7a4a: $33
    ld [bc], a                                    ; $7a4b: $02
    inc bc                                        ; $7a4c: $03
    ld c, $00                                     ; $7a4d: $0e $00
    inc b                                         ; $7a4f: $04
    inc bc                                        ; $7a50: $03
    inc b                                         ; $7a51: $04
    ld [bc], a                                    ; $7a52: $02
    add c                                         ; $7a53: $81
    ld bc, $0303                                  ; $7a54: $01 $03 $03
    add c                                         ; $7a57: $81
    ld bc, $0305                                  ; $7a58: $01 $05 $03
    inc c                                         ; $7a5b: $0c
    nop                                           ; $7a5c: $00
    rst $38                                       ; $7a5d: $ff
    dec c                                         ; $7a5e: $0d
    inc b                                         ; $7a5f: $04
    ei                                            ; $7a60: $fb
    dec b                                         ; $7a61: $05
    db $f4                                        ; $7a62: $f4
    db $fd                                        ; $7a63: $fd
    jp hl                                         ; $7a64: $e9


    ei                                            ; $7a65: $fb
    ld [$f9fe], a                                 ; $7a66: $ea $fe $f9
    ei                                            ; $7a69: $fb
    ld sp, hl                                     ; $7a6a: $f9
    cp $02                                        ; $7a6b: $fe $02
    ld e, $8d                                     ; $7a6d: $1e $8d
    dec h                                         ; $7a6f: $25
    dec sp                                        ; $7a70: $3b
    ld c, d                                       ; $7a71: $4a
    ld [hl], a                                    ; $7a72: $77
    db $e3                                        ; $7a73: $e3
    cp $40                                        ; $7a74: $fe $40
    ld a, a                                       ; $7a76: $7f
    ld h, b                                       ; $7a77: $60
    ld a, a                                       ; $7a78: $7f
    ld d, l                                       ; $7a79: $55
    ld a, a                                       ; $7a7a: $7f
    dec hl                                        ; $7a7b: $2b
    ld [bc], a                                    ; $7a7c: $02
    ccf                                           ; $7a7d: $3f
    add e                                         ; $7a7e: $83
    ld a, $1f                                     ; $7a7f: $3e $1f
    ld de, $3f02                                  ; $7a81: $11 $02 $3f
    inc b                                         ; $7a84: $04
    ld a, a                                       ; $7a85: $7f
    dec b                                         ; $7a86: $05
    rst $38                                       ; $7a87: $ff
    add c                                         ; $7a88: $81
    cp a                                          ; $7a89: $bf
    ld [bc], a                                    ; $7a8a: $02
    inc b                                         ; $7a8b: $04
    add a                                         ; $7a8c: $87
    ld b, $02                                     ; $7a8d: $06 $02
    ld bc, $0107                                  ; $7a8f: $01 $07 $01
    rlca                                          ; $7a92: $07
    ld [bc], a                                    ; $7a93: $02
    inc bc                                        ; $7a94: $03
    ld b, $04                                     ; $7a95: $06 $04
    inc b                                         ; $7a97: $04
    ld [bc], a                                    ; $7a98: $02
    nop                                           ; $7a99: $00
    inc b                                         ; $7a9a: $04
    ld b, $04                                     ; $7a9b: $06 $04
    rlca                                          ; $7a9d: $07
    add c                                         ; $7a9e: $81
    dec b                                         ; $7a9f: $05
    ld [bc], a                                    ; $7aa0: $02
    rlca                                          ; $7aa1: $07
    sub c                                         ; $7aa2: $91
    dec b                                         ; $7aa3: $05
    rst $38                                       ; $7aa4: $ff
    db $fd                                        ; $7aa5: $fd
    ldh [$a0], a                                  ; $7aa6: $e0 $a0
    rst $38                                       ; $7aa8: $ff
    cp a                                          ; $7aa9: $bf
    rst $10                                       ; $7aaa: $d7
    cp h                                          ; $7aab: $bc
    ld a, a                                       ; $7aac: $7f
    ld h, [hl]                                    ; $7aad: $66
    ld a, a                                       ; $7aae: $7f
    ld l, l                                       ; $7aaf: $6d
    ld l, [hl]                                    ; $7ab0: $6e
    ld a, a                                       ; $7ab1: $7f
    ld e, a                                       ; $7ab2: $5f
    ld l, a                                       ; $7ab3: $6f
    ld [bc], a                                    ; $7ab4: $02
    ld a, e                                       ; $7ab5: $7b
    ld [bc], a                                    ; $7ab6: $02
    inc bc                                        ; $7ab7: $03
    stop                                          ; $7ab8: $10 $00
    add d                                         ; $7aba: $82
    dec b                                         ; $7abb: $05
    rlca                                          ; $7abc: $07
    ld [bc], a                                    ; $7abd: $02
    ld b, $81                                     ; $7abe: $06 $81
    ld [bc], a                                    ; $7ac0: $02
    add hl, bc                                    ; $7ac1: $09
    ld b, $02                                     ; $7ac2: $06 $02
    inc b                                         ; $7ac4: $04
    ld c, $00                                     ; $7ac5: $0e $00
    rst $38                                       ; $7ac7: $ff
    dec c                                         ; $7ac8: $0d
    inc b                                         ; $7ac9: $04
    ei                                            ; $7aca: $fb
    dec b                                         ; $7acb: $05
    db $f4                                        ; $7acc: $f4
    db $fd                                        ; $7acd: $fd
    add sp, -$05                                  ; $7ace: $e8 $fb
    jp hl                                         ; $7ad0: $e9


    cp $f8                                        ; $7ad1: $fe $f8
    ei                                            ; $7ad3: $fb
    ld hl, sp-$02                                 ; $7ad4: $f8 $fe
    ld [bc], a                                    ; $7ad6: $02
    ld e, $8d                                     ; $7ad7: $1e $8d
    add hl, sp                                    ; $7ad9: $39
    daa                                           ; $7ada: $27
    ld b, c                                       ; $7adb: $41
    ld a, a                                       ; $7adc: $7f
    or d                                          ; $7add: $b2
    rst $28                                       ; $7ade: $ef
    ld b, c                                       ; $7adf: $41
    ld a, [hl]                                    ; $7ae0: $7e
    ld d, b                                       ; $7ae1: $50
    ld a, a                                       ; $7ae2: $7f
    ld l, d                                       ; $7ae3: $6a
    ld a, a                                       ; $7ae4: $7f
    dec [hl]                                      ; $7ae5: $35
    ld [bc], a                                    ; $7ae6: $02
    ccf                                           ; $7ae7: $3f
    add e                                         ; $7ae8: $83
    ld l, $1f                                     ; $7ae9: $2e $1f
    ld de, $3f02                                  ; $7aeb: $11 $02 $3f
    ld [bc], a                                    ; $7aee: $02
    ld a, a                                       ; $7aef: $7f
    rlca                                          ; $7af0: $07
    rst $38                                       ; $7af1: $ff
    add c                                         ; $7af2: $81
    cp a                                          ; $7af3: $bf
    ld [bc], a                                    ; $7af4: $02
    inc b                                         ; $7af5: $04
    add a                                         ; $7af6: $87
    ld [bc], a                                    ; $7af7: $02
    ld b, $05                                     ; $7af8: $06 $05
    inc bc                                        ; $7afa: $03
    ld bc, $0207                                  ; $7afb: $01 $07 $02
    inc bc                                        ; $7afe: $03
    ld b, $04                                     ; $7aff: $06 $04
    inc b                                         ; $7b01: $04
    ld [bc], a                                    ; $7b02: $02
    nop                                           ; $7b03: $00
    ld [bc], a                                    ; $7b04: $02
    inc b                                         ; $7b05: $04
    ld [bc], a                                    ; $7b06: $02
    ld b, $07                                     ; $7b07: $06 $07
    rlca                                          ; $7b09: $07
    sub c                                         ; $7b0a: $91
    dec b                                         ; $7b0b: $05
    rst $38                                       ; $7b0c: $ff
    db $fd                                        ; $7b0d: $fd
    ldh [$a0], a                                  ; $7b0e: $e0 $a0
    rst $38                                       ; $7b10: $ff
    cp a                                          ; $7b11: $bf
    cp [hl]                                       ; $7b12: $be
    pop af                                        ; $7b13: $f1
    ld a, a                                       ; $7b14: $7f
    ld h, h                                       ; $7b15: $64
    ccf                                           ; $7b16: $3f
    daa                                           ; $7b17: $27
    ccf                                           ; $7b18: $3f
    ld l, $7f                                     ; $7b19: $2e $7f
    ld b, a                                       ; $7b1b: $47
    ld [bc], a                                    ; $7b1c: $02
    ld a, e                                       ; $7b1d: $7b
    add d                                         ; $7b1e: $82
    ld e, e                                       ; $7b1f: $5b
    ld l, e                                       ; $7b20: $6b
    ld [bc], a                                    ; $7b21: $02
    ld [hl], b                                    ; $7b22: $70
    ld c, $00                                     ; $7b23: $0e $00
    add c                                         ; $7b25: $81
    rlca                                          ; $7b26: $07
    ld [bc], a                                    ; $7b27: $02
    dec b                                         ; $7b28: $05
    add c                                         ; $7b29: $81
    rlca                                          ; $7b2a: $07
    inc bc                                        ; $7b2b: $03
    ld b, $02                                     ; $7b2c: $06 $02
    ld [bc], a                                    ; $7b2e: $02
    dec b                                         ; $7b2f: $05
    ld b, $02                                     ; $7b30: $06 $02
    inc b                                         ; $7b32: $04
    ld c, $00                                     ; $7b33: $0e $00
    rst $38                                       ; $7b35: $ff
    dec c                                         ; $7b36: $0d
    inc b                                         ; $7b37: $04
    ei                                            ; $7b38: $fb
    dec b                                         ; $7b39: $05
    db $f4                                        ; $7b3a: $f4
    db $fd                                        ; $7b3b: $fd
    add sp, -$05                                  ; $7b3c: $e8 $fb
    jp hl                                         ; $7b3e: $e9


    cp $f8                                        ; $7b3f: $fe $f8
    ei                                            ; $7b41: $fb
    ld hl, sp-$02                                 ; $7b42: $f8 $fe
    ld [bc], a                                    ; $7b44: $02
    ld e, $8d                                     ; $7b45: $1e $8d
    add hl, hl                                    ; $7b47: $29
    scf                                           ; $7b48: $37
    ld d, c                                       ; $7b49: $51
    ld l, a                                       ; $7b4a: $6f
    xor c                                         ; $7b4b: $a9
    rst $30                                       ; $7b4c: $f7
    ld b, b                                       ; $7b4d: $40
    ld a, a                                       ; $7b4e: $7f
    ld l, b                                       ; $7b4f: $68
    ld a, a                                       ; $7b50: $7f
    ld [hl], l                                    ; $7b51: $75
    ld a, a                                       ; $7b52: $7f
    ld a, [hl-]                                   ; $7b53: $3a
    ld [bc], a                                    ; $7b54: $02
    ccf                                           ; $7b55: $3f
    add e                                         ; $7b56: $83
    cpl                                           ; $7b57: $2f
    rra                                           ; $7b58: $1f
    ld de, $3f02                                  ; $7b59: $11 $02 $3f
    ld [bc], a                                    ; $7b5c: $02
    ld a, a                                       ; $7b5d: $7f
    inc b                                         ; $7b5e: $04
    rst $38                                       ; $7b5f: $ff
    add c                                         ; $7b60: $81
    cp a                                          ; $7b61: $bf
    ld [bc], a                                    ; $7b62: $02
    rst $38                                       ; $7b63: $ff
    add c                                         ; $7b64: $81
    cp a                                          ; $7b65: $bf
    ld [bc], a                                    ; $7b66: $02
    inc b                                         ; $7b67: $04
    add a                                         ; $7b68: $87
    ld b, $02                                     ; $7b69: $06 $02
    ld bc, $0107                                  ; $7b6b: $01 $07 $01
    rlca                                          ; $7b6e: $07
    ld [bc], a                                    ; $7b6f: $02
    inc bc                                        ; $7b70: $03
    ld b, $04                                     ; $7b71: $06 $04
    inc b                                         ; $7b73: $04
    inc b                                         ; $7b74: $04
    nop                                           ; $7b75: $00
    inc b                                         ; $7b76: $04
    ld b, $04                                     ; $7b77: $06 $04
    rlca                                          ; $7b79: $07
    add [hl]                                      ; $7b7a: $86
    dec b                                         ; $7b7b: $05
    rlca                                          ; $7b7c: $07
    rst $38                                       ; $7b7d: $ff
    db $fd                                        ; $7b7e: $fd
    ldh [$a0], a                                  ; $7b7f: $e0 $a0
    ld [bc], a                                    ; $7b81: $02
    ld a, a                                       ; $7b82: $7f
    adc h                                         ; $7b83: $8c
    ld l, e                                       ; $7b84: $6b
    ld [hl], a                                    ; $7b85: $77
    dec [hl]                                      ; $7b86: $35
    cpl                                           ; $7b87: $2f
    ccf                                           ; $7b88: $3f
    ld h, $5e                                     ; $7b89: $26 $5e
    ld h, a                                       ; $7b8b: $67
    ld a, a                                       ; $7b8c: $7f
    ld [hl], a                                    ; $7b8d: $77
    ld c, [hl]                                    ; $7b8e: $4e
    ld a, a                                       ; $7b8f: $7f
    ld [bc], a                                    ; $7b90: $02
    ld a, c                                       ; $7b91: $79
    ld [bc], a                                    ; $7b92: $02
    ld a, b                                       ; $7b93: $78
    ld c, $00                                     ; $7b94: $0e $00
    add [hl]                                      ; $7b96: $86
    rlca                                          ; $7b97: $07
    dec b                                         ; $7b98: $05
    rlca                                          ; $7b99: $07
    dec b                                         ; $7b9a: $05
    rlca                                          ; $7b9b: $07
    ld bc, $0608                                  ; $7b9c: $01 $08 $06
    ld [bc], a                                    ; $7b9f: $02
    inc b                                         ; $7ba0: $04
    ld c, $00                                     ; $7ba1: $0e $00
    rst $38                                       ; $7ba3: $ff
    dec c                                         ; $7ba4: $0d
    inc b                                         ; $7ba5: $04
    ei                                            ; $7ba6: $fb
    dec b                                         ; $7ba7: $05
    db $f4                                        ; $7ba8: $f4
    db $fd                                        ; $7ba9: $fd
    jp hl                                         ; $7baa: $e9


    ei                                            ; $7bab: $fb
    ld [$f9fe], a                                 ; $7bac: $ea $fe $f9
    ei                                            ; $7baf: $fb
    ld sp, hl                                     ; $7bb0: $f9
    cp $02                                        ; $7bb1: $fe $02
    ld e, $8d                                     ; $7bb3: $1e $8d
    add hl, hl                                    ; $7bb5: $29
    scf                                           ; $7bb6: $37
    ld d, c                                       ; $7bb7: $51
    ld l, a                                       ; $7bb8: $6f
    xor c                                         ; $7bb9: $a9
    rst $30                                       ; $7bba: $f7
    ld b, b                                       ; $7bbb: $40
    ld a, a                                       ; $7bbc: $7f
    ld l, b                                       ; $7bbd: $68
    ld a, a                                       ; $7bbe: $7f
    ld [hl], l                                    ; $7bbf: $75
    ld a, a                                       ; $7bc0: $7f
    ld a, [hl-]                                   ; $7bc1: $3a
    ld [bc], a                                    ; $7bc2: $02
    ccf                                           ; $7bc3: $3f
    add e                                         ; $7bc4: $83
    cpl                                           ; $7bc5: $2f
    rra                                           ; $7bc6: $1f
    ld de, $7f04                                  ; $7bc7: $11 $04 $7f
    inc b                                         ; $7bca: $04
    rst $38                                       ; $7bcb: $ff
    add c                                         ; $7bcc: $81
    cp a                                          ; $7bcd: $bf
    ld [bc], a                                    ; $7bce: $02
    rst $38                                       ; $7bcf: $ff
    add c                                         ; $7bd0: $81
    cp a                                          ; $7bd1: $bf
    ld [bc], a                                    ; $7bd2: $02
    inc b                                         ; $7bd3: $04
    add a                                         ; $7bd4: $87
    ld b, $02                                     ; $7bd5: $06 $02
    ld bc, $0107                                  ; $7bd7: $01 $07 $01
    rlca                                          ; $7bda: $07
    ld [bc], a                                    ; $7bdb: $02
    inc bc                                        ; $7bdc: $03
    ld b, $04                                     ; $7bdd: $06 $04
    inc b                                         ; $7bdf: $04
    ld [bc], a                                    ; $7be0: $02
    nop                                           ; $7be1: $00
    ld [bc], a                                    ; $7be2: $02
    inc b                                         ; $7be3: $04
    inc b                                         ; $7be4: $04
    ld b, $05                                     ; $7be5: $06 $05
    rlca                                          ; $7be7: $07
    adc [hl]                                      ; $7be8: $8e
    dec b                                         ; $7be9: $05
    rst $38                                       ; $7bea: $ff
    db $fd                                        ; $7beb: $fd
    ldh [$a0], a                                  ; $7bec: $e0 $a0
    cp a                                          ; $7bee: $bf
    rst $38                                       ; $7bef: $ff
    ld a, l                                       ; $7bf0: $7d
    ld h, a                                       ; $7bf1: $67
    ld e, a                                       ; $7bf2: $5f
    ld l, h                                       ; $7bf3: $6c
    ld a, a                                       ; $7bf4: $7f
    halt                                          ; $7bf5: $76
    ld l, [hl]                                    ; $7bf6: $6e
    ld [bc], a                                    ; $7bf7: $02
    ld a, a                                       ; $7bf8: $7f
    add c                                         ; $7bf9: $81
    ld a, [hl]                                    ; $7bfa: $7e
    ld [bc], a                                    ; $7bfb: $02
    ld a, e                                       ; $7bfc: $7b
    ld [bc], a                                    ; $7bfd: $02
    jr c, jr_0e7_7c10                             ; $7bfe: $38 $10

    nop                                           ; $7c00: $00
    add h                                         ; $7c01: $84
    rlca                                          ; $7c02: $07
    dec b                                         ; $7c03: $05
    inc bc                                        ; $7c04: $03
    dec b                                         ; $7c05: $05
    ld b, $06                                     ; $7c06: $06 $06
    add c                                         ; $7c08: $81
    ld [bc], a                                    ; $7c09: $02
    inc bc                                        ; $7c0a: $03
    ld b, $10                                     ; $7c0b: $06 $10
    nop                                           ; $7c0d: $00
    rst $38                                       ; $7c0e: $ff
    dec c                                         ; $7c0f: $0d

jr_0e7_7c10:
    inc b                                         ; $7c10: $04
    ei                                            ; $7c11: $fb
    dec b                                         ; $7c12: $05
    db $f4                                        ; $7c13: $f4
    db $fd                                        ; $7c14: $fd
    add sp, -$05                                  ; $7c15: $e8 $fb
    jp hl                                         ; $7c17: $e9


    cp $f8                                        ; $7c18: $fe $f8
    ei                                            ; $7c1a: $fb
    ld hl, sp-$02                                 ; $7c1b: $f8 $fe
    ld [bc], a                                    ; $7c1d: $02
    ld e, $8d                                     ; $7c1e: $1e $8d
    add hl, sp                                    ; $7c20: $39
    daa                                           ; $7c21: $27
    ld b, c                                       ; $7c22: $41
    ld a, a                                       ; $7c23: $7f
    or d                                          ; $7c24: $b2
    rst $28                                       ; $7c25: $ef
    ld b, c                                       ; $7c26: $41
    ld a, [hl]                                    ; $7c27: $7e
    ld d, b                                       ; $7c28: $50
    ld a, a                                       ; $7c29: $7f
    ld l, d                                       ; $7c2a: $6a
    ld a, a                                       ; $7c2b: $7f
    dec [hl]                                      ; $7c2c: $35
    ld [bc], a                                    ; $7c2d: $02
    ccf                                           ; $7c2e: $3f
    add e                                         ; $7c2f: $83
    ld l, $1f                                     ; $7c30: $2e $1f
    ld de, $3f02                                  ; $7c32: $11 $02 $3f
    ld [bc], a                                    ; $7c35: $02
    ld a, a                                       ; $7c36: $7f
    rlca                                          ; $7c37: $07
    rst $38                                       ; $7c38: $ff
    add c                                         ; $7c39: $81
    cp a                                          ; $7c3a: $bf
    ld [bc], a                                    ; $7c3b: $02
    inc b                                         ; $7c3c: $04
    add a                                         ; $7c3d: $87
    ld [bc], a                                    ; $7c3e: $02
    ld b, $05                                     ; $7c3f: $06 $05
    inc bc                                        ; $7c41: $03
    ld bc, $0207                                  ; $7c42: $01 $07 $02
    inc bc                                        ; $7c45: $03
    ld b, $04                                     ; $7c46: $06 $04
    inc b                                         ; $7c48: $04
    ld [bc], a                                    ; $7c49: $02
    nop                                           ; $7c4a: $00
    ld [bc], a                                    ; $7c4b: $02
    inc b                                         ; $7c4c: $04
    ld [bc], a                                    ; $7c4d: $02
    ld b, $07                                     ; $7c4e: $06 $07
    rlca                                          ; $7c50: $07
    add [hl]                                      ; $7c51: $86
    dec b                                         ; $7c52: $05
    rst $38                                       ; $7c53: $ff
    db $fd                                        ; $7c54: $fd
    ldh [$a0], a                                  ; $7c55: $e0 $a0
    rst $38                                       ; $7c57: $ff
    ld [bc], a                                    ; $7c58: $02
    cp a                                          ; $7c59: $bf
    adc c                                         ; $7c5a: $89
    pop af                                        ; $7c5b: $f1
    ld a, a                                       ; $7c5c: $7f
    ld h, h                                       ; $7c5d: $64
    ld a, a                                       ; $7c5e: $7f
    ld e, h                                       ; $7c5f: $5c
    ld e, a                                       ; $7c60: $5f
    ld l, [hl]                                    ; $7c61: $6e
    ld a, a                                       ; $7c62: $7f
    ld a, h                                       ; $7c63: $7c
    ld [bc], a                                    ; $7c64: $02
    ld a, e                                       ; $7c65: $7b
    add d                                         ; $7c66: $82
    dec sp                                        ; $7c67: $3b
    ld a, [hl-]                                   ; $7c68: $3a
    ld [bc], a                                    ; $7c69: $02
    ld bc, $000e                                  ; $7c6a: $01 $0e $00
    add c                                         ; $7c6d: $81
    rlca                                          ; $7c6e: $07
    ld [bc], a                                    ; $7c6f: $02
    dec b                                         ; $7c70: $05
    add c                                         ; $7c71: $81
    rlca                                          ; $7c72: $07
    ld [bc], a                                    ; $7c73: $02
    ld b, $04                                     ; $7c74: $06 $04
    inc b                                         ; $7c76: $04
    add d                                         ; $7c77: $82
    ld b, $02                                     ; $7c78: $06 $02
    ld [bc], a                                    ; $7c7a: $02
    ld b, $81                                     ; $7c7b: $06 $81
    ld [bc], a                                    ; $7c7d: $02
    inc bc                                        ; $7c7e: $03
    ld b, $0c                                     ; $7c7f: $06 $0c
    nop                                           ; $7c81: $00
    rst $38                                       ; $7c82: $ff
    dec c                                         ; $7c83: $0d
    inc b                                         ; $7c84: $04
    ei                                            ; $7c85: $fb
    dec b                                         ; $7c86: $05
    db $f4                                        ; $7c87: $f4
    db $fd                                        ; $7c88: $fd
    add sp, -$05                                  ; $7c89: $e8 $fb
    jp hl                                         ; $7c8b: $e9


    cp $f8                                        ; $7c8c: $fe $f8
    ei                                            ; $7c8e: $fb
    ld hl, sp-$03                                 ; $7c8f: $f8 $fd
    ld [bc], a                                    ; $7c91: $02
    rrca                                          ; $7c92: $0f
    sub d                                         ; $7c93: $92
    ld sp, $523e                                  ; $7c94: $31 $3e $52
    ld a, l                                       ; $7c97: $7d
    ld sp, hl                                     ; $7c98: $f9
    xor a                                         ; $7c99: $af
    cp [hl]                                       ; $7c9a: $be
    rst $20                                       ; $7c9b: $e7
    ld a, a                                       ; $7c9c: $7f
    ld a, e                                       ; $7c9d: $7b
    ld a, a                                       ; $7c9e: $7f
    ld l, b                                       ; $7c9f: $68
    ccf                                           ; $7ca0: $3f
    inc l                                         ; $7ca1: $2c
    ccf                                           ; $7ca2: $3f
    ld a, [hl+]                                   ; $7ca3: $2a
    rra                                           ; $7ca4: $1f
    dec d                                         ; $7ca5: $15
    ld [bc], a                                    ; $7ca6: $02
    ccf                                           ; $7ca7: $3f
    inc b                                         ; $7ca8: $04
    ld a, a                                       ; $7ca9: $7f
    inc bc                                        ; $7caa: $03
    rst $38                                       ; $7cab: $ff
    ld [bc], a                                    ; $7cac: $02
    cp a                                          ; $7cad: $bf
    add c                                         ; $7cae: $81
    rst $38                                       ; $7caf: $ff
    ld [bc], a                                    ; $7cb0: $02
    inc b                                         ; $7cb1: $04
    add h                                         ; $7cb2: $84
    ld [bc], a                                    ; $7cb3: $02
    ld b, $01                                     ; $7cb4: $06 $01
    rlca                                          ; $7cb6: $07
    ld b, $06                                     ; $7cb7: $06 $06
    inc b                                         ; $7cb9: $04
    inc b                                         ; $7cba: $04
    ld [bc], a                                    ; $7cbb: $02
    nop                                           ; $7cbc: $00
    ld [bc], a                                    ; $7cbd: $02
    inc b                                         ; $7cbe: $04
    inc b                                         ; $7cbf: $04
    ld b, $03                                     ; $7cc0: $06 $03
    rlca                                          ; $7cc2: $07
    ld [bc], a                                    ; $7cc3: $02
    dec b                                         ; $7cc4: $05
    sub l                                         ; $7cc5: $95
    rlca                                          ; $7cc6: $07
    rst $38                                       ; $7cc7: $ff
    db $fd                                        ; $7cc8: $fd
    ldh [$a0], a                                  ; $7cc9: $e0 $a0
    ld e, a                                       ; $7ccb: $5f
    ld a, a                                       ; $7ccc: $7f
    ccf                                           ; $7ccd: $3f
    ld a, [hl+]                                   ; $7cce: $2a
    ccf                                           ; $7ccf: $3f
    dec [hl]                                      ; $7cd0: $35
    dec a                                         ; $7cd1: $3d
    ld l, $6f                                     ; $7cd2: $2e $6f
    ld e, [hl]                                    ; $7cd4: $5e
    ld a, a                                       ; $7cd5: $7f
    ld c, h                                       ; $7cd6: $4c
    ld a, a                                       ; $7cd7: $7f
    ld l, l                                       ; $7cd8: $6d
    jp nc, $02b3                                  ; $7cd9: $d2 $b3 $02

    di                                            ; $7cdc: $f3
    ld c, $00                                     ; $7cdd: $0e $00
    add d                                         ; $7cdf: $82
    ld bc, $0c03                                  ; $7ce0: $01 $03 $0c
    ld [bc], a                                    ; $7ce3: $02
    add d                                         ; $7ce4: $82
    inc bc                                        ; $7ce5: $03
    ld bc, $0302                                  ; $7ce6: $01 $02 $03
    inc c                                         ; $7ce9: $0c
    nop                                           ; $7cea: $00
    rst $38                                       ; $7ceb: $ff
    dec c                                         ; $7cec: $0d
    inc b                                         ; $7ced: $04
    ei                                            ; $7cee: $fb
    dec b                                         ; $7cef: $05
    db $f4                                        ; $7cf0: $f4
    db $fd                                        ; $7cf1: $fd
    add sp, -$05                                  ; $7cf2: $e8 $fb
    jp hl                                         ; $7cf4: $e9


    cp $f8                                        ; $7cf5: $fe $f8
    ei                                            ; $7cf7: $fb
    ld hl, sp-$02                                 ; $7cf8: $f8 $fe
    ld [bc], a                                    ; $7cfa: $02
    rrca                                          ; $7cfb: $0f
    sub d                                         ; $7cfc: $92
    inc [hl]                                      ; $7cfd: $34
    dec sp                                        ; $7cfe: $3b
    ld d, h                                       ; $7cff: $54
    ld a, e                                       ; $7d00: $7b
    cp e                                          ; $7d01: $bb
    rst $38                                       ; $7d02: $ff
    cp h                                          ; $7d03: $bc
    rst $20                                       ; $7d04: $e7
    ld [hl], a                                    ; $7d05: $77
    ld a, e                                       ; $7d06: $7b
    ld a, a                                       ; $7d07: $7f
    ld [hl], b                                    ; $7d08: $70
    dec sp                                        ; $7d09: $3b
    inc l                                         ; $7d0a: $2c
    dec a                                         ; $7d0b: $3d
    ld a, [hl+]                                   ; $7d0c: $2a
    rra                                           ; $7d0d: $1f
    dec d                                         ; $7d0e: $15
    ld [bc], a                                    ; $7d0f: $02
    rra                                           ; $7d10: $1f
    ld [bc], a                                    ; $7d11: $02
    ccf                                           ; $7d12: $3f
    inc b                                         ; $7d13: $04
    ld a, a                                       ; $7d14: $7f
    add h                                         ; $7d15: $84
    cp a                                          ; $7d16: $bf
    rst $38                                       ; $7d17: $ff
    cp a                                          ; $7d18: $bf
    rst $38                                       ; $7d19: $ff
    ld [bc], a                                    ; $7d1a: $02
    inc b                                         ; $7d1b: $04
    add h                                         ; $7d1c: $84
    ld [bc], a                                    ; $7d1d: $02
    ld b, $03                                     ; $7d1e: $06 $03
    rlca                                          ; $7d20: $07
    ld b, $06                                     ; $7d21: $06 $06
    inc b                                         ; $7d23: $04
    inc b                                         ; $7d24: $04
    ld [bc], a                                    ; $7d25: $02
    nop                                           ; $7d26: $00
    inc b                                         ; $7d27: $04
    ld b, $02                                     ; $7d28: $06 $02
    rlca                                          ; $7d2a: $07
    add c                                         ; $7d2b: $81
    dec b                                         ; $7d2c: $05
    ld [bc], a                                    ; $7d2d: $02
    rlca                                          ; $7d2e: $07
    sub l                                         ; $7d2f: $95
    dec b                                         ; $7d30: $05
    rlca                                          ; $7d31: $07
    dec b                                         ; $7d32: $05
    rst $38                                       ; $7d33: $ff
    db $fd                                        ; $7d34: $fd
    ldh [$a0], a                                  ; $7d35: $e0 $a0
    rst $18                                       ; $7d37: $df
    cp a                                          ; $7d38: $bf
    ld a, [hl]                                    ; $7d39: $7e
    ld c, e                                       ; $7d3a: $4b
    ld a, a                                       ; $7d3b: $7f
    ld c, l                                       ; $7d3c: $4d
    ccf                                           ; $7d3d: $3f
    inc [hl]                                      ; $7d3e: $34
    dec [hl]                                      ; $7d3f: $35
    ld a, $3f                                     ; $7d40: $3e $3f
    dec a                                         ; $7d42: $3d
    ld l, a                                       ; $7d43: $6f
    ld a, [hl]                                    ; $7d44: $7e
    ld [bc], a                                    ; $7d45: $02
    dec sp                                        ; $7d46: $3b
    ld [bc], a                                    ; $7d47: $02
    inc bc                                        ; $7d48: $03
    ld c, $00                                     ; $7d49: $0e $00
    add d                                         ; $7d4b: $82
    rlca                                          ; $7d4c: $07
    dec b                                         ; $7d4d: $05
    ld [bc], a                                    ; $7d4e: $02
    ld b, $04                                     ; $7d4f: $06 $04
    inc b                                         ; $7d51: $04
    add d                                         ; $7d52: $82
    ld b, $02                                     ; $7d53: $06 $02
    inc bc                                        ; $7d55: $03
    ld b, $81                                     ; $7d56: $06 $81
    ld [bc], a                                    ; $7d58: $02
    ld [bc], a                                    ; $7d59: $02
    ld b, $02                                     ; $7d5a: $06 $02
    inc b                                         ; $7d5c: $04
    inc c                                         ; $7d5d: $0c
    nop                                           ; $7d5e: $00
    rst $38                                       ; $7d5f: $ff
    dec c                                         ; $7d60: $0d
    inc b                                         ; $7d61: $04
    ei                                            ; $7d62: $fb
    dec b                                         ; $7d63: $05
    db $f4                                        ; $7d64: $f4
    db $fd                                        ; $7d65: $fd
    jp hl                                         ; $7d66: $e9


    ei                                            ; $7d67: $fb
    ld [$f9fe], a                                 ; $7d68: $ea $fe $f9
    ei                                            ; $7d6b: $fb
    ld sp, hl                                     ; $7d6c: $f9
    cp $02                                        ; $7d6d: $fe $02
    rrca                                          ; $7d6f: $0f
    sub d                                         ; $7d70: $92
    inc [hl]                                      ; $7d71: $34
    dec sp                                        ; $7d72: $3b
    ld d, h                                       ; $7d73: $54
    ld a, e                                       ; $7d74: $7b
    or e                                          ; $7d75: $b3
    rst $38                                       ; $7d76: $ff
    db $fc                                        ; $7d77: $fc
    rst $28                                       ; $7d78: $ef
    ld [hl], a                                    ; $7d79: $77
    ld a, e                                       ; $7d7a: $7b
    ld a, a                                       ; $7d7b: $7f
    ld [hl], b                                    ; $7d7c: $70
    dec sp                                        ; $7d7d: $3b
    inc l                                         ; $7d7e: $2c
    ccf                                           ; $7d7f: $3f
    ld a, [hl+]                                   ; $7d80: $2a
    rra                                           ; $7d81: $1f
    dec d                                         ; $7d82: $15
    ld [bc], a                                    ; $7d83: $02
    rra                                           ; $7d84: $1f
    ld b, $7f                                     ; $7d85: $06 $7f
    add c                                         ; $7d87: $81
    cp a                                          ; $7d88: $bf
    ld [bc], a                                    ; $7d89: $02
    rst $38                                       ; $7d8a: $ff
    add c                                         ; $7d8b: $81
    cp a                                          ; $7d8c: $bf
    ld [bc], a                                    ; $7d8d: $02
    inc b                                         ; $7d8e: $04
    add h                                         ; $7d8f: $84
    ld [bc], a                                    ; $7d90: $02
    ld b, $03                                     ; $7d91: $06 $03
    rlca                                          ; $7d93: $07
    ld b, $06                                     ; $7d94: $06 $06
    inc b                                         ; $7d96: $04
    inc b                                         ; $7d97: $04
    ld [bc], a                                    ; $7d98: $02
    nop                                           ; $7d99: $00
    ld [bc], a                                    ; $7d9a: $02
    inc b                                         ; $7d9b: $04
    inc b                                         ; $7d9c: $04
    ld b, $02                                     ; $7d9d: $06 $02
    rlca                                          ; $7d9f: $07
    add c                                         ; $7da0: $81
    dec b                                         ; $7da1: $05
    ld [bc], a                                    ; $7da2: $02
    rlca                                          ; $7da3: $07
    sub e                                         ; $7da4: $93
    dec b                                         ; $7da5: $05
    rst $38                                       ; $7da6: $ff
    db $fd                                        ; $7da7: $fd
    ldh [$a0], a                                  ; $7da8: $e0 $a0
    rst $28                                       ; $7daa: $ef
    cp a                                          ; $7dab: $bf
    rst $38                                       ; $7dac: $ff
    sub l                                         ; $7dad: $95
    db $ed                                        ; $7dae: $ed
    or [hl]                                       ; $7daf: $b6
    ld h, a                                       ; $7db0: $67
    ld a, [hl]                                    ; $7db1: $7e
    ccf                                           ; $7db2: $3f
    inc a                                         ; $7db3: $3c
    ccf                                           ; $7db4: $3f
    dec a                                         ; $7db5: $3d
    ld a, [de]                                    ; $7db6: $1a
    dec de                                        ; $7db7: $1b
    ld [bc], a                                    ; $7db8: $02
    inc bc                                        ; $7db9: $03
    stop                                          ; $7dba: $10 $00
    add c                                         ; $7dbc: $81
    rlca                                          ; $7dbd: $07
    ld [bc], a                                    ; $7dbe: $02
    dec b                                         ; $7dbf: $05
    add c                                         ; $7dc0: $81
    rlca                                          ; $7dc1: $07
    ld [bc], a                                    ; $7dc2: $02
    ld b, $02                                     ; $7dc3: $06 $02
    inc b                                         ; $7dc5: $04
    add d                                         ; $7dc6: $82
    ld [bc], a                                    ; $7dc7: $02
    ld b, $02                                     ; $7dc8: $06 $02
    inc b                                         ; $7dca: $04
    add d                                         ; $7dcb: $82
    ld b, $02                                     ; $7dcc: $06 $02
    ld [bc], a                                    ; $7dce: $02
    ld b, $0e                                     ; $7dcf: $06 $0e
    nop                                           ; $7dd1: $00
    rst $38                                       ; $7dd2: $ff
    dec c                                         ; $7dd3: $0d
    inc b                                         ; $7dd4: $04
    ei                                            ; $7dd5: $fb
    dec b                                         ; $7dd6: $05
    db $f4                                        ; $7dd7: $f4
    db $fd                                        ; $7dd8: $fd
    add sp, -$05                                  ; $7dd9: $e8 $fb
    jp hl                                         ; $7ddb: $e9


    cp $f8                                        ; $7ddc: $fe $f8
    ei                                            ; $7dde: $fb
    ld hl, sp-$02                                 ; $7ddf: $f8 $fe
    ld [bc], a                                    ; $7de1: $02
    rrca                                          ; $7de2: $0f
    sub d                                         ; $7de3: $92
    ld sp, $523e                                  ; $7de4: $31 $3e $52
    ld a, l                                       ; $7de7: $7d
    ld sp, hl                                     ; $7de8: $f9
    xor a                                         ; $7de9: $af
    cp [hl]                                       ; $7dea: $be
    rst $20                                       ; $7deb: $e7
    ld a, a                                       ; $7dec: $7f
    ld a, e                                       ; $7ded: $7b
    ld a, a                                       ; $7dee: $7f
    ld l, b                                       ; $7def: $68
    ccf                                           ; $7df0: $3f
    inc l                                         ; $7df1: $2c
    ccf                                           ; $7df2: $3f
    ld a, [hl+]                                   ; $7df3: $2a
    rra                                           ; $7df4: $1f
    dec d                                         ; $7df5: $15
    ld [bc], a                                    ; $7df6: $02
    ccf                                           ; $7df7: $3f
    inc b                                         ; $7df8: $04
    ld a, a                                       ; $7df9: $7f
    ld [bc], a                                    ; $7dfa: $02
    rst $38                                       ; $7dfb: $ff
    add c                                         ; $7dfc: $81
    cp a                                          ; $7dfd: $bf
    ld [bc], a                                    ; $7dfe: $02
    rst $38                                       ; $7dff: $ff
    add c                                         ; $7e00: $81
    cp a                                          ; $7e01: $bf
    ld [bc], a                                    ; $7e02: $02
    inc b                                         ; $7e03: $04
    add h                                         ; $7e04: $84
    ld [bc], a                                    ; $7e05: $02
    ld b, $01                                     ; $7e06: $06 $01
    rlca                                          ; $7e08: $07
    ld b, $06                                     ; $7e09: $06 $06
    inc b                                         ; $7e0b: $04
    inc b                                         ; $7e0c: $04
    ld [bc], a                                    ; $7e0d: $02
    nop                                           ; $7e0e: $00
    ld [bc], a                                    ; $7e0f: $02
    inc b                                         ; $7e10: $04
    inc b                                         ; $7e11: $04
    ld b, $02                                     ; $7e12: $06 $02
    rlca                                          ; $7e14: $07
    add c                                         ; $7e15: $81
    dec b                                         ; $7e16: $05
    ld [bc], a                                    ; $7e17: $02
    rlca                                          ; $7e18: $07
    sub e                                         ; $7e19: $93
    dec b                                         ; $7e1a: $05
    rst $38                                       ; $7e1b: $ff
    db $fd                                        ; $7e1c: $fd
    ldh [$a0], a                                  ; $7e1d: $e0 $a0
    rst $38                                       ; $7e1f: $ff
    cp a                                          ; $7e20: $bf
    rst $38                                       ; $7e21: $ff
    cp c                                          ; $7e22: $b9
    ld l, l                                       ; $7e23: $6d
    ld [hl], a                                    ; $7e24: $77
    ld e, l                                       ; $7e25: $5d
    ld h, [hl]                                    ; $7e26: $66
    ld e, a                                       ; $7e27: $5f
    ld h, h                                       ; $7e28: $64
    ld a, a                                       ; $7e29: $7f
    ld a, l                                       ; $7e2a: $7d
    ld a, [hl]                                    ; $7e2b: $7e
    ld a, a                                       ; $7e2c: $7f
    ld [bc], a                                    ; $7e2d: $02
    inc sp                                        ; $7e2e: $33
    stop                                          ; $7e2f: $10 $00
    add [hl]                                      ; $7e31: $86
    rlca                                          ; $7e32: $07
    dec b                                         ; $7e33: $05
    rlca                                          ; $7e34: $07
    dec b                                         ; $7e35: $05
    rlca                                          ; $7e36: $07
    ld bc, $0602                                  ; $7e37: $01 $02 $06
    add c                                         ; $7e3a: $81
    ld [bc], a                                    ; $7e3b: $02
    inc b                                         ; $7e3c: $04
    ld b, $81                                     ; $7e3d: $06 $81
    ld [bc], a                                    ; $7e3f: $02
    ld [bc], a                                    ; $7e40: $02
    ld b, $0e                                     ; $7e41: $06 $0e
    nop                                           ; $7e43: $00
    rst $38                                       ; $7e44: $ff
    dec c                                         ; $7e45: $0d
    inc b                                         ; $7e46: $04
    ei                                            ; $7e47: $fb
    dec b                                         ; $7e48: $05
    db $f4                                        ; $7e49: $f4
    db $fd                                        ; $7e4a: $fd
    add sp, -$05                                  ; $7e4b: $e8 $fb
    jp hl                                         ; $7e4d: $e9


    cp $f8                                        ; $7e4e: $fe $f8
    ei                                            ; $7e50: $fb
    ld hl, sp-$02                                 ; $7e51: $f8 $fe
    ld [bc], a                                    ; $7e53: $02
    rrca                                          ; $7e54: $0f
    sub d                                         ; $7e55: $92
    ld [hl-], a                                   ; $7e56: $32
    dec a                                         ; $7e57: $3d
    ld e, c                                       ; $7e58: $59
    ld a, [hl]                                    ; $7e59: $7e
    call c, $beb7                                 ; $7e5a: $dc $b7 $be
    db $e3                                        ; $7e5d: $e3
    ld a, e                                       ; $7e5e: $7b
    ld a, l                                       ; $7e5f: $7d
    ld a, a                                       ; $7e60: $7f
    ld h, h                                       ; $7e61: $64
    dec sp                                        ; $7e62: $3b
    ld h, $37                                     ; $7e63: $26 $37
    ld a, [hl+]                                   ; $7e65: $2a
    rra                                           ; $7e66: $1f
    dec d                                         ; $7e67: $15
    inc b                                         ; $7e68: $04
    ld a, a                                       ; $7e69: $7f
    ld [bc], a                                    ; $7e6a: $02
    rst $38                                       ; $7e6b: $ff
    add c                                         ; $7e6c: $81
    cp a                                          ; $7e6d: $bf
    ld [bc], a                                    ; $7e6e: $02
    rst $38                                       ; $7e6f: $ff
    add e                                         ; $7e70: $83
    cp a                                          ; $7e71: $bf
    rst $38                                       ; $7e72: $ff
    cp a                                          ; $7e73: $bf
    ld [bc], a                                    ; $7e74: $02
    inc b                                         ; $7e75: $04
    add l                                         ; $7e76: $85
    ld [bc], a                                    ; $7e77: $02
    ld b, $05                                     ; $7e78: $06 $05
    rlca                                          ; $7e7a: $07
    ld [bc], a                                    ; $7e7b: $02
    dec b                                         ; $7e7c: $05
    ld b, $04                                     ; $7e7d: $06 $04
    inc b                                         ; $7e7f: $04
    inc b                                         ; $7e80: $04
    nop                                           ; $7e81: $00
    ld [bc], a                                    ; $7e82: $02
    inc b                                         ; $7e83: $04
    inc b                                         ; $7e84: $04
    ld b, $96                                     ; $7e85: $06 $96
    dec b                                         ; $7e87: $05
    rlca                                          ; $7e88: $07
    dec b                                         ; $7e89: $05
    rlca                                          ; $7e8a: $07
    rst $38                                       ; $7e8b: $ff
    db $fd                                        ; $7e8c: $fd
    ldh [$a0], a                                  ; $7e8d: $e0 $a0
    rst $38                                       ; $7e8f: $ff
    cp a                                          ; $7e90: $bf
    ld l, a                                       ; $7e91: $6f
    ld a, d                                       ; $7e92: $7a
    ccf                                           ; $7e93: $3f
    ld [hl], $3f                                  ; $7e94: $36 $3f
    dec h                                         ; $7e96: $25
    ld [hl], l                                    ; $7e97: $75
    ld c, a                                       ; $7e98: $4f
    ld a, a                                       ; $7e99: $7f
    ld [hl], a                                    ; $7e9a: $77
    ld a, [hl]                                    ; $7e9b: $7e
    ld c, a                                       ; $7e9c: $4f
    ld [bc], a                                    ; $7e9d: $02
    ld a, e                                       ; $7e9e: $7b
    ld [bc], a                                    ; $7e9f: $02
    jr c, jr_0e7_7eb0                             ; $7ea0: $38 $0e

    nop                                           ; $7ea2: $00
    add [hl]                                      ; $7ea3: $86
    inc bc                                        ; $7ea4: $03
    dec b                                         ; $7ea5: $05
    ld b, $02                                     ; $7ea6: $06 $02
    ld b, $02                                     ; $7ea8: $06 $02
    ld b, $04                                     ; $7eaa: $06 $04
    ld [bc], a                                    ; $7eac: $02
    ld b, $02                                     ; $7ead: $06 $02
    inc b                                         ; $7eaf: $04

jr_0e7_7eb0:
    ld c, $00                                     ; $7eb0: $0e $00
    rst $38                                       ; $7eb2: $ff
    dec c                                         ; $7eb3: $0d
    inc b                                         ; $7eb4: $04
    ei                                            ; $7eb5: $fb
    dec b                                         ; $7eb6: $05
    db $f4                                        ; $7eb7: $f4
    db $fd                                        ; $7eb8: $fd
    jp hl                                         ; $7eb9: $e9


    ei                                            ; $7eba: $fb
    ld [$f9fe], a                                 ; $7ebb: $ea $fe $f9
    ei                                            ; $7ebe: $fb
    ld sp, hl                                     ; $7ebf: $f9
    cp $02                                        ; $7ec0: $fe $02
    rrca                                          ; $7ec2: $0f
    sub d                                         ; $7ec3: $92
    ld [hl-], a                                   ; $7ec4: $32
    dec a                                         ; $7ec5: $3d
    ld e, c                                       ; $7ec6: $59
    ld a, [hl]                                    ; $7ec7: $7e
    call c, $beb7                                 ; $7ec8: $dc $b7 $be
    db $e3                                        ; $7ecb: $e3
    ld a, e                                       ; $7ecc: $7b
    ld a, l                                       ; $7ecd: $7d
    ld a, a                                       ; $7ece: $7f
    ld h, h                                       ; $7ecf: $64
    dec sp                                        ; $7ed0: $3b
    ld h, $3f                                     ; $7ed1: $26 $3f
    ld a, [hl+]                                   ; $7ed3: $2a
    rra                                           ; $7ed4: $1f
    dec d                                         ; $7ed5: $15
    ld [bc], a                                    ; $7ed6: $02
    ccf                                           ; $7ed7: $3f
    inc b                                         ; $7ed8: $04
    ld a, a                                       ; $7ed9: $7f
    ld [bc], a                                    ; $7eda: $02
    rst $38                                       ; $7edb: $ff
    add c                                         ; $7edc: $81
    cp a                                          ; $7edd: $bf
    ld [bc], a                                    ; $7ede: $02
    rst $38                                       ; $7edf: $ff
    add c                                         ; $7ee0: $81
    cp a                                          ; $7ee1: $bf
    ld [bc], a                                    ; $7ee2: $02
    inc b                                         ; $7ee3: $04
    add l                                         ; $7ee4: $85
    ld [bc], a                                    ; $7ee5: $02
    ld b, $05                                     ; $7ee6: $06 $05
    rlca                                          ; $7ee8: $07
    ld [bc], a                                    ; $7ee9: $02
    dec b                                         ; $7eea: $05
    ld b, $04                                     ; $7eeb: $06 $04
    inc b                                         ; $7eed: $04
    inc b                                         ; $7eee: $04
    nop                                           ; $7eef: $00
    ld b, $06                                     ; $7ef0: $06 $06
    add c                                         ; $7ef2: $81
    dec b                                         ; $7ef3: $05
    ld [bc], a                                    ; $7ef4: $02
    rlca                                          ; $7ef5: $07
    add [hl]                                      ; $7ef6: $86
    dec b                                         ; $7ef7: $05
    rst $38                                       ; $7ef8: $ff
    db $fd                                        ; $7ef9: $fd
    ldh [$a0], a                                  ; $7efa: $e0 $a0
    cp $02                                        ; $7efc: $fe $02
    cp a                                          ; $7efe: $bf
    adc e                                         ; $7eff: $8b
    push af                                       ; $7f00: $f5
    halt                                          ; $7f01: $76
    ld l, l                                       ; $7f02: $6d
    inc a                                         ; $7f03: $3c
    cpl                                           ; $7f04: $2f
    ld e, a                                       ; $7f05: $5f
    ld h, a                                       ; $7f06: $67
    ccf                                           ; $7f07: $3f
    scf                                           ; $7f08: $37
    ld l, e                                       ; $7f09: $6b
    ld e, e                                       ; $7f0a: $5b
    ld [bc], a                                    ; $7f0b: $02
    ld a, b                                       ; $7f0c: $78
    stop                                          ; $7f0d: $10 $00
    add [hl]                                      ; $7f0f: $86
    rlca                                          ; $7f10: $07
    dec b                                         ; $7f11: $05
    rlca                                          ; $7f12: $07
    ld bc, $0507                                  ; $7f13: $01 $07 $05
    ld [bc], a                                    ; $7f16: $02
    ld b, $04                                     ; $7f17: $06 $04
    inc b                                         ; $7f19: $04
    ld [de], a                                    ; $7f1a: $12
    nop                                           ; $7f1b: $00
    rst $38                                       ; $7f1c: $ff
    dec c                                         ; $7f1d: $0d
    inc b                                         ; $7f1e: $04
    ei                                            ; $7f1f: $fb
    dec b                                         ; $7f20: $05
    db $f4                                        ; $7f21: $f4
    db $fd                                        ; $7f22: $fd
    add sp, -$05                                  ; $7f23: $e8 $fb
    jp hl                                         ; $7f25: $e9


    cp $f8                                        ; $7f26: $fe $f8
    ei                                            ; $7f28: $fb
    ld hl, sp-$02                                 ; $7f29: $f8 $fe
    ld [bc], a                                    ; $7f2b: $02
    rrca                                          ; $7f2c: $0f
    sub d                                         ; $7f2d: $92
    ld sp, $523e                                  ; $7f2e: $31 $3e $52
    ld a, l                                       ; $7f31: $7d
    ld sp, hl                                     ; $7f32: $f9
    xor a                                         ; $7f33: $af
    cp [hl]                                       ; $7f34: $be
    rst $20                                       ; $7f35: $e7
    ld a, a                                       ; $7f36: $7f
    ld a, e                                       ; $7f37: $7b
    ld a, a                                       ; $7f38: $7f
    ld l, b                                       ; $7f39: $68
    ccf                                           ; $7f3a: $3f
    inc l                                         ; $7f3b: $2c
    ccf                                           ; $7f3c: $3f
    ld a, [hl+]                                   ; $7f3d: $2a
    rra                                           ; $7f3e: $1f
    dec d                                         ; $7f3f: $15
    ld [bc], a                                    ; $7f40: $02
    ccf                                           ; $7f41: $3f
    inc b                                         ; $7f42: $04
    ld a, a                                       ; $7f43: $7f
    ld [bc], a                                    ; $7f44: $02
    rst $38                                       ; $7f45: $ff
    add c                                         ; $7f46: $81
    cp a                                          ; $7f47: $bf
    ld [bc], a                                    ; $7f48: $02
    rst $38                                       ; $7f49: $ff
    add c                                         ; $7f4a: $81
    cp a                                          ; $7f4b: $bf
    ld [bc], a                                    ; $7f4c: $02
    inc b                                         ; $7f4d: $04
    add h                                         ; $7f4e: $84
    ld [bc], a                                    ; $7f4f: $02
    ld b, $01                                     ; $7f50: $06 $01
    rlca                                          ; $7f52: $07
    ld b, $06                                     ; $7f53: $06 $06
    inc b                                         ; $7f55: $04
    inc b                                         ; $7f56: $04
    ld [bc], a                                    ; $7f57: $02
    nop                                           ; $7f58: $00
    ld [bc], a                                    ; $7f59: $02
    inc b                                         ; $7f5a: $04
    inc b                                         ; $7f5b: $04
    ld b, $02                                     ; $7f5c: $06 $02
    rlca                                          ; $7f5e: $07
    add c                                         ; $7f5f: $81
    dec b                                         ; $7f60: $05
    ld [bc], a                                    ; $7f61: $02
    rlca                                          ; $7f62: $07
    sub e                                         ; $7f63: $93
    dec b                                         ; $7f64: $05
    rst $38                                       ; $7f65: $ff
    db $fd                                        ; $7f66: $fd
    ldh [$a0], a                                  ; $7f67: $e0 $a0
    rst $38                                       ; $7f69: $ff
    cp a                                          ; $7f6a: $bf
    rst $38                                       ; $7f6b: $ff
    or e                                          ; $7f6c: $b3
    or $9d                                        ; $7f6d: $f6 $9d
    ld [hl], a                                    ; $7f6f: $77
    ld l, h                                       ; $7f70: $6c
    ld e, a                                       ; $7f71: $5f
    ld h, h                                       ; $7f72: $64
    ld a, a                                       ; $7f73: $7f
    ld [hl], a                                    ; $7f74: $77
    ld l, a                                       ; $7f75: $6f
    ld e, a                                       ; $7f76: $5f
    ld [bc], a                                    ; $7f77: $02
    ld a, c                                       ; $7f78: $79
    stop                                          ; $7f79: $10 $00
    add h                                         ; $7f7b: $84
    rlca                                          ; $7f7c: $07
    dec b                                         ; $7f7d: $05
    rlca                                          ; $7f7e: $07
    dec b                                         ; $7f7f: $05
    inc b                                         ; $7f80: $04
    ld b, $81                                     ; $7f81: $06 $81
    ld [bc], a                                    ; $7f83: $02
    dec b                                         ; $7f84: $05
    ld b, $02                                     ; $7f85: $06 $02
    inc b                                         ; $7f87: $04
    ld c, $00                                     ; $7f88: $0e $00
    rst $38                                       ; $7f8a: $ff
    dec bc                                        ; $7f8b: $0b
    inc bc                                        ; $7f8c: $03
    ld a, [$f504]                                 ; $7f8d: $fa $04 $f5
    cp $e8                                        ; $7f90: $fe $e8
    ei                                            ; $7f92: $fb
    jp hl                                         ; $7f93: $e9


    cp $f8                                        ; $7f94: $fe $f8
    db $fc                                        ; $7f96: $fc
    ld [bc], a                                    ; $7f97: $02
    rra                                           ; $7f98: $1f
    sub h                                         ; $7f99: $94
    inc [hl]                                      ; $7f9a: $34
    dec sp                                        ; $7f9b: $3b
    ld e, l                                       ; $7f9c: $5d
    ld a, a                                       ; $7f9d: $7f
    xor [hl]                                      ; $7f9e: $ae
    db $db                                        ; $7f9f: $db
    rst $08                                       ; $7fa0: $cf
    cp c                                          ; $7fa1: $b9
    cp a                                          ; $7fa2: $bf
    or $ff                                        ; $7fa3: $f6 $ff
    ret nc                                        ; $7fa5: $d0

    ld a, a                                       ; $7fa6: $7f
    ld [hl], b                                    ; $7fa7: $70
    ccf                                           ; $7fa8: $3f
    ld [hl-], a                                   ; $7fa9: $32
    rra                                           ; $7faa: $1f
    add hl, de                                    ; $7fab: $19
    rra                                           ; $7fac: $1f
    rla                                           ; $7fad: $17
    inc b                                         ; $7fae: $04
    ld a, $05                                     ; $7faf: $3e $05
    ld a, a                                       ; $7fb1: $7f
    add c                                         ; $7fb2: $81
    ld e, a                                       ; $7fb3: $5f
    ld [bc], a                                    ; $7fb4: $02
    inc b                                         ; $7fb5: $04
    add h                                         ; $7fb6: $84
    ld [bc], a                                    ; $7fb7: $02
    ld b, $05                                     ; $7fb8: $06 $05
    rlca                                          ; $7fba: $07
    ld [bc], a                                    ; $7fbb: $02
    ld b, $02                                     ; $7fbc: $06 $02
    inc b                                         ; $7fbe: $04
    add d                                         ; $7fbf: $82
    ld b, $02                                     ; $7fc0: $06 $02
    ld b, $04                                     ; $7fc2: $06 $04
    inc c                                         ; $7fc4: $0c
    nop                                           ; $7fc5: $00
    ld [bc], a                                    ; $7fc6: $02
    ld hl, sp-$72                                 ; $7fc7: $f8 $8e
    ret nz                                        ; $7fc9: $c0

    add b                                         ; $7fca: $80
    ld l, [hl]                                    ; $7fcb: $6e
    ld e, [hl]                                    ; $7fcc: $5e
    inc a                                         ; $7fcd: $3c
    inc [hl]                                      ; $7fce: $34
    inc a                                         ; $7fcf: $3c
    inc h                                         ; $7fd0: $24
    inc a                                         ; $7fd1: $3c
    inc [hl]                                      ; $7fd2: $34
    ld a, $26                                     ; $7fd3: $3e $26
    ld a, [hl]                                    ; $7fd5: $7e
    ld b, [hl]                                    ; $7fd6: $46
    ld [bc], a                                    ; $7fd7: $02
    ld a, [hl]                                    ; $7fd8: $7e
    add d                                         ; $7fd9: $82
    ld [hl], a                                    ; $7fda: $77
    ld e, c                                       ; $7fdb: $59
    ld [bc], a                                    ; $7fdc: $02
    ld a, a                                       ; $7fdd: $7f
    inc c                                         ; $7fde: $0c
    nop                                           ; $7fdf: $00
    rst $38                                       ; $7fe0: $ff
    rlca                                          ; $7fe1: $07
    ld bc, $08f9                                  ; $7fe2: $01 $f9 $08
    ld a, [c]                                     ; $7fe5: $f2
    ld bc, $fce9                                  ; $7fe6: $01 $e9 $fc
    ld [bc], a                                    ; $7fe9: $02
    ld [de], a                                    ; $7fea: $12
    ld [bc], a                                    ; $7feb: $02
    ld e, e                                       ; $7fec: $5b
    ld [bc], a                                    ; $7fed: $02
    ld l, l                                       ; $7fee: $6d
    ld [bc], a                                    ; $7fef: $02
    ld e, a                                       ; $7ff0: $5f
    ld [bc], a                                    ; $7ff1: $02
    dec a                                         ; $7ff2: $3d
    ld [bc], a                                    ; $7ff3: $02
    ld a, [hl+]                                   ; $7ff4: $2a
    ld [bc], a                                    ; $7ff5: $02
    inc d                                         ; $7ff6: $14
    inc b                                         ; $7ff7: $04
    nop                                           ; $7ff8: $00
    add c                                         ; $7ff9: $81
    inc e                                         ; $7ffa: $1c
    dec c                                         ; $7ffb: $0d
    nop                                           ; $7ffc: $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
