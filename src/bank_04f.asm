; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

    ld c, a                                       ; $4000: $4f
    db $18, $af                                   ; $4001: $18 $af
    ld a, e                                       ; $4003: $7b
    db $ed                                        ; $4004: $ed
    ld l, $7d                                     ; $4005: $2e $7d
    db $d3                                        ; $4007: $d3
    rst $38                                       ; $4008: $ff
    ld a, [de]                                    ; $4009: $1a
    rrca                                          ; $400a: $0f
    ld [de], a                                    ; $400b: $12
    ld c, $77                                     ; $400c: $0e $77
    ld e, $d3                                     ; $400e: $1e $d3
    xor d                                         ; $4010: $aa
    sub a                                         ; $4011: $97
    ld a, $a5                                     ; $4012: $3e $a5
    ld c, b                                       ; $4014: $48
    db $f4                                        ; $4015: $f4
    inc c                                         ; $4016: $0c
    ld e, l                                       ; $4017: $5d
    db $fd                                        ; $4018: $fd
    rst $28                                       ; $4019: $ef
    ld d, a                                       ; $401a: $57
    inc d                                         ; $401b: $14
    ld b, h                                       ; $401c: $44
    rst $20                                       ; $401d: $e7
    ret                                           ; $401e: $c9


    ld c, b                                       ; $401f: $48
    ret                                           ; $4020: $c9


    db $f4                                        ; $4021: $f4
    db $e3                                        ; $4022: $e3
    rst $28                                       ; $4023: $ef
    and h                                         ; $4024: $a4
    rst $10                                       ; $4025: $d7
    ld l, b                                       ; $4026: $68
    ret c                                         ; $4027: $d8

    sub l                                         ; $4028: $95
    ei                                            ; $4029: $fb
    jr c, jr_04f_40aa                             ; $402a: $38 $7e

    or $aa                                        ; $402c: $f6 $aa
    ld h, l                                       ; $402e: $65
    and $f1                                       ; $402f: $e6 $f1
    push af                                       ; $4031: $f5
    sub l                                         ; $4032: $95
    ei                                            ; $4033: $fb
    cp b                                          ; $4034: $b8
    ld d, e                                       ; $4035: $53
    ld h, a                                       ; $4036: $67
    db $fd                                        ; $4037: $fd
    adc d                                         ; $4038: $8a
    call nc, Call_000_0423                        ; $4039: $d4 $23 $04
    ld h, b                                       ; $403c: $60
    jp hl                                         ; $403d: $e9


    ld l, h                                       ; $403e: $6c
    or d                                          ; $403f: $b2
    db $ec                                        ; $4040: $ec
    sbc l                                         ; $4041: $9d
    adc b                                         ; $4042: $88
    ld d, a                                       ; $4043: $57
    rst $28                                       ; $4044: $ef
    adc $86                                       ; $4045: $ce $86
    adc h                                         ; $4047: $8c
    sub h                                         ; $4048: $94
    ld h, h                                       ; $4049: $64
    ld [de], a                                    ; $404a: $12
    or e                                          ; $404b: $b3
    ld hl, $4ee3                                  ; $404c: $21 $e3 $4e
    sbc l                                         ; $404f: $9d
    push af                                       ; $4050: $f5
    dec hl                                        ; $4051: $2b
    ld [de], a                                    ; $4052: $12
    dec c                                         ; $4053: $0d
    ld de, $afa0                                  ; $4054: $11 $a0 $af
    call nc, $53b8                                ; $4057: $d4 $b8 $53
    rra                                           ; $405a: $1f
    rst $18                                       ; $405b: $df
    halt                                          ; $405c: $76
    push af                                       ; $405d: $f5
    jp nc, $f43f                                  ; $405e: $d2 $3f $f4

    push de                                       ; $4061: $d5
    or a                                          ; $4062: $b7
    ld a, l                                       ; $4063: $7d
    push de                                       ; $4064: $d5
    cp b                                          ; $4065: $b8
    ld d, e                                       ; $4066: $53
    and a                                         ; $4067: $a7
    ld c, e                                       ; $4068: $4b
    and h                                         ; $4069: $a4
    ld l, h                                       ; $406a: $6c
    sbc h                                         ; $406b: $9c
    dec l                                         ; $406c: $2d
    di                                            ; $406d: $f3
    ld h, e                                       ; $406e: $63
    sub [hl]                                      ; $406f: $96
    sbc d                                         ; $4070: $9a
    ld e, $be                                     ; $4071: $1e $be
    dec hl                                        ; $4073: $2b
    ld a, [hl+]                                   ; $4074: $2a
    ld a, h                                       ; $4075: $7c
    add [hl]                                      ; $4076: $86
    adc $86                                       ; $4077: $ce $86
    ld b, e                                       ; $4079: $43
    inc b                                         ; $407a: $04
    ld h, b                                       ; $407b: $60
    add d                                         ; $407c: $82
    ld a, c                                       ; $407d: $79
    ld [hl], $1a                                  ; $407e: $36 $1a
    ld [hl-], a                                   ; $4080: $32
    ld h, [hl]                                    ; $4081: $66
    xor c                                         ; $4082: $a9
    sbc l                                         ; $4083: $9d
    inc h                                         ; $4084: $24
    sub e                                         ; $4085: $93

Call_04f_4086:
    ld [$fb95], a                                 ; $4086: $ea $95 $fb
    sbc b                                         ; $4089: $98
    and l                                         ; $408a: $a5
    and [hl]                                      ; $408b: $a6
    rst $18                                       ; $408c: $df
    sbc h                                         ; $408d: $9c
    dec a                                         ; $408e: $3d
    and [hl]                                      ; $408f: $a6
    dec h                                         ; $4090: $25
    dec a                                         ; $4091: $3d
    ld e, d                                       ; $4092: $5a
    ld [hl-], a                                   ; $4093: $32
    xor $d4                                       ; $4094: $ee $d4
    jp c, $b8c1                                   ; $4096: $da $c1 $b8

    ld a, d                                       ; $4099: $7a
    jp nz, $232b                                  ; $409a: $c2 $2b $23

    ld [hl], b                                    ; $409d: $70
    rst $20                                       ; $409e: $e7
    pop hl                                        ; $409f: $e1
    sla h                                         ; $40a0: $cb $24

jr_04f_40a2:
    ld sp, hl                                     ; $40a2: $f9
    ccf                                           ; $40a3: $3f
    and [hl]                                      ; $40a4: $a6
    ld d, a                                       ; $40a5: $57
    rst $10                                       ; $40a6: $d7
    or h                                          ; $40a7: $b4
    add e                                         ; $40a8: $83
    di                                            ; $40a9: $f3

jr_04f_40aa:
    xor e                                         ; $40aa: $ab
    sbc h                                         ; $40ab: $9c
    dec a                                         ; $40ac: $3d
    ld [bc], a                                    ; $40ad: $02
    ret nz                                        ; $40ae: $c0

    sbc d                                         ; $40af: $9a
    ld d, a                                       ; $40b0: $57
    dec [hl]                                      ; $40b1: $35
    ld e, d                                       ; $40b2: $5a
    or [hl]                                       ; $40b3: $b6
    add sp, -$40                                  ; $40b4: $e8 $c0
    ld e, l                                       ; $40b6: $5d
    ld c, c                                       ; $40b7: $49
    push bc                                       ; $40b8: $c5
    xor $d2                                       ; $40b9: $ee $d2
    scf                                           ; $40bb: $37
    db $fd                                        ; $40bc: $fd
    xor a                                         ; $40bd: $af
    pop af                                        ; $40be: $f1
    jr nz, jr_04f_40a2                            ; $40bf: $20 $e1

    ld [hl], b                                    ; $40c1: $70
    rrca                                          ; $40c2: $0f
    ld b, [hl]                                    ; $40c3: $46
    ld b, [hl]                                    ; $40c4: $46
    ld c, d                                       ; $40c5: $4a
    ld h, $46                                     ; $40c6: $26 $46
    dec l                                         ; $40c8: $2d
    rra                                           ; $40c9: $1f

jr_04f_40ca:
    xor $35                                       ; $40ca: $ee $35
    ld a, e                                       ; $40cc: $7b
    push de                                       ; $40cd: $d5
    ld [hl], b                                    ; $40ce: $70
    ld a, [hl]                                    ; $40cf: $7e
    ld a, l                                       ; $40d0: $7d
    cp b                                          ; $40d1: $b8
    cpl                                           ; $40d2: $2f
    db $e3                                        ; $40d3: $e3
    ld a, h                                       ; $40d4: $7c
    ld b, e                                       ; $40d5: $43
    inc b                                         ; $40d6: $04
    and b                                         ; $40d7: $a0
    xor a                                         ; $40d8: $af
    call nc, $53b8                                ; $40d9: $d4 $b8 $53
    rra                                           ; $40dc: $1f
    rst $18                                       ; $40dd: $df
    halt                                          ; $40de: $76
    push af                                       ; $40df: $f5
    ld [hl], d                                    ; $40e0: $72
    xor l                                         ; $40e1: $ad
    cp $f7                                        ; $40e2: $fe $f7
    ld l, e                                       ; $40e4: $6b
    ld d, a                                       ; $40e5: $57
    xor $63                                       ; $40e6: $ee $63
    sub [hl]                                      ; $40e8: $96
    sbc d                                         ; $40e9: $9a
    ld e, [hl]                                    ; $40ea: $5e
    dec a                                         ; $40eb: $3d
    dec de                                        ; $40ec: $1b
    ld e, l                                       ; $40ed: $5d
    ld a, c                                       ; $40ee: $79
    call c, $d3a9                                 ; $40ef: $dc $a9 $d3
    dec h                                         ; $40f2: $25
    ld [de], a                                    ; $40f3: $12
    ccf                                           ; $40f4: $3f
    rlca                                          ; $40f5: $07
    call c, $cc79                                 ; $40f6: $dc $79 $cc
    adc l                                         ; $40f9: $8d
    ld e, d                                       ; $40fa: $5a
    jp c, $8fb4                                   ; $40fb: $da $b4 $8f

    ld e, [hl]                                    ; $40fe: $5e
    dec [hl]                                      ; $40ff: $35
    dec d                                         ; $4100: $15
    ld h, d                                       ; $4101: $62
    add sp, -$36                                  ; $4102: $e8 $ca
    ld a, l                                       ; $4104: $7d
    sbc c                                         ; $4105: $99
    call c, $a914                                 ; $4106: $dc $14 $a9
    pop de                                        ; $4109: $d1
    xor e                                         ; $410a: $ab
    and [hl]                                      ; $410b: $a6
    ld e, l                                       ; $410c: $5d
    add a                                         ; $410d: $87
    ld [$8260], sp                                ; $410e: $08 $60 $82
    ld a, c                                       ; $4111: $79
    ld [hl], $66                                  ; $4112: $36 $66
    xor c                                         ; $4114: $a9
    dec e                                         ; $4115: $1d
    cp l                                          ; $4116: $bd
    sub b                                         ; $4117: $90
    ld [hl], c                                    ; $4118: $71
    and a                                         ; $4119: $a7
    adc $7e                                       ; $411a: $ce $7e
    di                                            ; $411c: $f3
    ldh a, [$8e]                                  ; $411d: $f0 $8e
    call nc, $cbcd                                ; $411f: $d4 $cd $cb
    add [hl]                                      ; $4122: $86
    adc $26                                       ; $4123: $ce $26
    db $10                                        ; $4125: $10
    ld bc, $c9e7                                  ; $4126: $01 $e7 $c9
    jr z, jr_04f_40ca                             ; $4129: $28 $9f

    dec a                                         ; $412b: $3d
    ld d, [hl]                                    ; $412c: $56
    ld [c], a                                     ; $412d: $e2
    and l                                         ; $412e: $a5
    cp $55                                        ; $412f: $fe $55
    ld hl, $4ce3                                  ; $4131: $21 $e3 $4c
    ld h, a                                       ; $4134: $67
    ld d, d                                       ; $4135: $52
    db $eb                                        ; $4136: $eb
    jp $947d                                      ; $4137: $c3 $7d $94


    sub l                                         ; $413a: $95
    ld [hl+], a                                   ; $413b: $22
    pop hl                                        ; $413c: $e1
    inc sp                                        ; $413d: $33
    ld [hl], h                                    ; $413e: $74
    ld [hl], $59                                  ; $413f: $36 $59
    ld h, $b5                                     ; $4141: $26 $b5
    ld a, a                                       ; $4143: $7f
    ld [hl], h                                    ; $4144: $74
    call Call_000_355e                            ; $4145: $cd $5e $35
    dec de                                        ; $4148: $1b
    ld c, $11                                     ; $4149: $0e $11
    jr jr_04f_41a6                                ; $414b: $18 $59

    ld a, [$7dd1]                                 ; $414d: $fa $d1 $7d
    ld [hl], $fd                                  ; $4150: $36 $fd
    ld c, [hl]                                    ; $4152: $4e
    xor e                                         ; $4153: $ab
    sbc $15                                       ; $4154: $de $15
    adc a                                         ; $4156: $8f

Jump_04f_4157:
    ld de, $e943                                  ; $4157: $11 $43 $e9
    push af                                       ; $415a: $f5
    ld sp, hl                                     ; $415b: $f9
    db $fd                                        ; $415c: $fd
    ld a, a                                       ; $415d: $7f
    ld [hl], $7c                                  ; $415e: $36 $7c
    and h                                         ; $4160: $a4
    ldh a, [$eb]                                  ; $4161: $f0 $eb

Call_04f_4163:
    ccf                                           ; $4163: $3f
    ld a, h                                       ; $4164: $7c
    add a                                         ; $4165: $87
    ld b, b                                       ; $4166: $40
    inc b                                         ; $4167: $04
    ld c, a                                       ; $4168: $4f
    bit 1, [hl]                                   ; $4169: $cb $4e
    xor e                                         ; $416b: $ab
    sbc [hl]                                      ; $416c: $9e
    ld c, l                                       ; $416d: $4d
    ld h, [hl]                                    ; $416e: $66
    adc a                                         ; $416f: $8f
    ld a, $1b                                     ; $4170: $3e $1b
    sbc b                                         ; $4172: $98
    ret nc                                        ; $4173: $d0

    rst $28                                       ; $4174: $ef
    rst $38                                       ; $4175: $ff
    pop af                                        ; $4176: $f1
    ld [$e701], sp                                ; $4177: $08 $01 $e7
    pop hl                                        ; $417a: $e1
    dec sp                                        ; $417b: $3b
    ld a, d                                       ; $417c: $7a
    ld hl, $7d03                                  ; $417d: $21 $03 $7d
    ld b, l                                       ; $4180: $45
    ld [hl], d                                    ; $4181: $72
    db $fd                                        ; $4182: $fd
    rst $28                                       ; $4183: $ef
    res 0, [hl]                                   ; $4184: $cb $86
    adc [hl]                                      ; $4186: $8e
    ld e, [hl]                                    ; $4187: $5e
    add hl, de                                    ; $4188: $19
    dec [hl]                                      ; $4189: $35
    ld c, l                                       ; $418a: $4d
    ld c, l                                       ; $418b: $4d
    cpl                                           ; $418c: $2f
    sub e                                         ; $418d: $93
    sbc e                                         ; $418e: $9b
    ld [hl+], a                                   ; $418f: $22
    push hl                                       ; $4190: $e5
    di                                            ; $4191: $f3
    ei                                            ; $4192: $fb
    rst $38                                       ; $4193: $ff
    add sp, $55                                   ; $4194: $e8 $55
    ld [hl], b                                    ; $4196: $70
    rrca                                          ; $4197: $0f
    ld b, [hl]                                    ; $4198: $46
    and [hl]                                      ; $4199: $a6
    add a                                         ; $419a: $87
    xor a                                         ; $419b: $af
    call c, Call_000_2cc7                         ; $419c: $dc $c7 $2c
    dec [hl]                                      ; $419f: $35
    push af                                       ; $41a0: $f5
    ld c, a                                       ; $41a1: $4f
    sub h                                         ; $41a2: $94
    ld b, [hl]                                    ; $41a3: $46
    cpl                                           ; $41a4: $2f
    rla                                           ; $41a5: $17

jr_04f_41a6:
    adc c                                         ; $41a6: $89
    sbc [hl]                                      ; $41a7: $9e
    ld c, c                                       ; $41a8: $49
    ld l, c                                       ; $41a9: $69
    di                                            ; $41aa: $f3
    dec hl                                        ; $41ab: $2b
    ld a, [bc]                                    ; $41ac: $0a
    ld [hl+], a                                   ; $41ad: $22
    ld b, b                                       ; $41ae: $40
    ld a, a                                       ; $41af: $7f
    add sp, -$2f                                  ; $41b0: $e8 $d1
    db $ec                                        ; $41b2: $ec
    rst $30                                       ; $41b3: $f7
    call nz, $ff8f                                ; $41b4: $c4 $8f $ff
    rla                                           ; $41b7: $17
    dec a                                         ; $41b8: $3d
    db $fd                                        ; $41b9: $fd
    jp c, $d745                                   ; $41ba: $da $45 $d7

    adc b                                         ; $41bd: $88
    ld e, [hl]                                    ; $41be: $5e
    reti                                          ; $41bf: $d9


    inc sp                                        ; $41c0: $33
    add hl, hl                                    ; $41c1: $29
    adc $d9                                       ; $41c2: $ce $d9
    inc hl                                        ; $41c4: $23
    rrca                                          ; $41c5: $0f
    db $fc                                        ; $41c6: $fc
    rst $38                                       ; $41c7: $ff
    ld c, e                                       ; $41c8: $4b
    ld a, h                                       ; $41c9: $7c
    pop de                                        ; $41ca: $d1
    db $d3                                        ; $41cb: $d3
    ld c, [hl]                                    ; $41cc: $4e
    xor d                                         ; $41cd: $aa
    ld l, e                                       ; $41ce: $6b
    ld e, d                                       ; $41cf: $5a
    adc c                                         ; $41d0: $89
    db $dd                                        ; $41d1: $dd
    ld c, c                                       ; $41d2: $49
    adc a                                         ; $41d3: $8f
    ld e, $d1                                     ; $41d4: $1e $d1
    dec hl                                        ; $41d6: $2b
    ld a, e                                       ; $41d7: $7b
    ret z                                         ; $41d8: $c8

    ld c, h                                       ; $41d9: $4c
    ld c, d                                       ; $41da: $4a
    ld e, e                                       ; $41db: $5b
    ld a, $d4                                     ; $41dc: $3e $d4
    sbc [hl]                                      ; $41de: $9e
    rst $00                                       ; $41df: $c7
    add h                                         ; $41e0: $84
    db $e3                                        ; $41e1: $e3
    db $ec                                        ; $41e2: $ec
    sbc a                                         ; $41e3: $9f
    ld b, a                                       ; $41e4: $47
    sbc b                                         ; $41e5: $98
    ld [hl], b                                    ; $41e6: $70
    sbc h                                         ; $41e7: $9c
    dec a                                         ; $41e8: $3d
    ld [bc], a                                    ; $41e9: $02
    sbc b                                         ; $41ea: $98
    ld [hl], b                                    ; $41eb: $70
    sbc h                                         ; $41ec: $9c
    dec a                                         ; $41ed: $3d
    ld [bc], a                                    ; $41ee: $02
    sbc b                                         ; $41ef: $98
    ld [hl], b                                    ; $41f0: $70
    sbc h                                         ; $41f1: $9c
    dec a                                         ; $41f2: $3d
    ld [bc], a                                    ; $41f3: $02
    jr nz, jr_04f_4203                            ; $41f4: $20 $0d

    sbc l                                         ; $41f6: $9d
    rst $18                                       ; $41f7: $df
    rst $38                                       ; $41f8: $ff
    db $d3                                        ; $41f9: $d3
    ld b, l                                       ; $41fa: $45
    ld [$b86c], a                                 ; $41fb: $ea $6c $b8
    ld h, c                                       ; $41fe: $61
    ld [de], a                                    ; $41ff: $12
    or $08                                        ; $4200: $f6 $08
    ld c, a                                       ; $4202: $4f

jr_04f_4203:
    db $fc                                        ; $4203: $fc
    inc h                                         ; $4204: $24
    db $10                                        ; $4205: $10
    ld b, d                                       ; $4206: $42
    ld [$4f11], sp                                ; $4207: $08 $11 $4f
    and d                                         ; $420a: $a2
    sub a                                         ; $420b: $97
    ld hl, sp-$4e                                 ; $420c: $f8 $b2
    and c                                         ; $420e: $a1
    dec bc                                        ; $420f: $0b
    ld e, c                                       ; $4210: $59
    cp d                                          ; $4211: $ba
    inc de                                        ; $4212: $13
    rrca                                          ; $4213: $0f
    sbc c                                         ; $4214: $99
    ld d, [hl]                                    ; $4215: $56
    ld h, d                                       ; $4216: $62
    ld a, a                                       ; $4217: $7f
    ld e, b                                       ; $4218: $58
    jr c, @+$12                                   ; $4219: $38 $10

    and d                                         ; $421b: $a2
    ld b, d                                       ; $421c: $42

Jump_04f_421d:
    ld d, [hl]                                    ; $421d: $56
    ld a, [$d7a2]                                 ; $421e: $fa $a2 $d7
    and a                                         ; $4221: $a7
    ld e, [hl]                                    ; $4222: $5e
    ret z                                         ; $4223: $c8

    cp b                                          ; $4224: $b8
    sub b                                         ; $4225: $90
    ld e, d                                       ; $4226: $5a
    db $fc                                        ; $4227: $fc
    rra                                           ; $4228: $1f
    dec a                                         ; $4229: $3d
    xor $b3                                       ; $422a: $ee $b3
    ld d, h                                       ; $422c: $54
    db $f4                                        ; $422d: $f4
    inc c                                         ; $422e: $0c
    dec h                                         ; $422f: $25
    ld a, l                                       ; $4230: $7d
    ld b, l                                       ; $4231: $45
    ld l, l                                       ; $4232: $6d
    inc [hl]                                      ; $4233: $34
    ld l, h                                       ; $4234: $6c
    ret                                           ; $4235: $c9


    sbc b                                         ; $4236: $98
    and l                                         ; $4237: $a5
    and $d5                                       ; $4238: $e6 $d5
    and e                                         ; $423a: $a3
    ld h, c                                       ; $423b: $61
    ld h, a                                       ; $423c: $67
    ld b, e                                       ; $423d: $43
    and [hl]                                      ; $423e: $a6
    dec e                                         ; $423f: $1d
    dec a                                         ; $4240: $3d
    call c, $4930                                 ; $4241: $dc $30 $49
    ret z                                         ; $4244: $c8

    db $fc                                        ; $4245: $fc
    cp $bf                                        ; $4246: $fe $bf
    call z, $884c                                 ; $4248: $cc $4c $88
    sub [hl]                                      ; $424b: $96
    ld h, h                                       ; $424c: $64
    xor $b3                                       ; $424d: $ee $b3
    ld d, h                                       ; $424f: $54
    ld a, h                                       ; $4250: $7c
    add c                                         ; $4251: $81
    ld [$350f], sp                                ; $4252: $08 $0f $35
    xor l                                         ; $4255: $ad
    and [hl]                                      ; $4256: $a6
    dec d                                         ; $4257: $15
    ei                                            ; $4258: $fb
    dec a                                         ; $4259: $3d
    pop hl                                        ; $425a: $e1
    push de                                       ; $425b: $d5
    db $e4                                        ; $425c: $e4
    xor [hl]                                      ; $425d: $ae
    inc h                                         ; $425e: $24
    ld e, a                                       ; $425f: $5f
    ld [c], a                                     ; $4260: $e2
    pop hl                                        ; $4261: $e1
    jp Jump_04f_69f9                              ; $4262: $c3 $f9 $69


    ld b, [hl]                                    ; $4265: $46
    inc c                                         ; $4266: $0c
    dec a                                         ; $4267: $3d
    sbc e                                         ; $4268: $9b
    dec c                                         ; $4269: $0d
    ld e, c                                       ; $426a: $59
    halt                                          ; $426b: $76
    db $d3                                        ; $426c: $d3
    dec [hl]                                      ; $426d: $35
    ld a, [c]                                     ; $426e: $f2
    inc de                                        ; $426f: $13
    adc d                                         ; $4270: $8a
    add a                                         ; $4271: $87
    ld c, l                                       ; $4272: $4d
    inc h                                         ; $4273: $24
    add a                                         ; $4274: $87
    or b                                          ; $4275: $b0
    ld b, a                                       ; $4276: $47
    rrca                                          ; $4277: $0f
    db $fc                                        ; $4278: $fc
    rst $38                                       ; $4279: $ff
    and e                                         ; $427a: $a3
    adc c                                         ; $427b: $89
    sbc h                                         ; $427c: $9c
    dec c                                         ; $427d: $0d
    ld [hl], h                                    ; $427e: $74
    ld a, l                                       ; $427f: $7d
    adc $b0                                       ; $4280: $ce $b0
    ret c                                         ; $4282: $d8

    inc hl                                        ; $4283: $23
    ld c, a                                       ; $4284: $4f
    set 5, [hl]                                   ; $4285: $cb $ee
    add sp, -$27                                  ; $4287: $e8 $d9
    ldh a, [rBCPD]                                ; $4289: $f0 $69
    ld b, a                                       ; $428b: $47
    ccf                                           ; $428c: $3f
    ld b, d                                       ; $428d: $42
    rst $20                                       ; $428e: $e7
    pop hl                                        ; $428f: $e1
    dec sp                                        ; $4290: $3b
    ld a, d                                       ; $4291: $7a
    ld [hl], $64                                  ; $4292: $36 $64
    or $e8                                        ; $4294: $f6 $e8
    ld [hl], c                                    ; $4296: $71
    cp h                                          ; $4297: $bc
    ld e, h                                       ; $4298: $5c
    ld d, l                                       ; $4299: $55
    bit 0, l                                      ; $429a: $cb $45
    ld b, d                                       ; $429c: $42
    sub [hl]                                      ; $429d: $96
    dec c                                         ; $429e: $0d
    dec e                                         ; $429f: $1d
    jr z, jr_04f_42c5                             ; $42a0: $28 $23

    ld a, [hl+]                                   ; $42a2: $2a
    ld l, l                                       ; $42a3: $6d
    call c, $cd0d                                 ; $42a4: $dc $0d $cd

Call_04f_42a7:
    and e                                         ; $42a7: $a3
    and [hl]                                      ; $42a8: $a6
    xor c                                         ; $42a9: $a9
    jp hl                                         ; $42aa: $e9


    ld h, l                                       ; $42ab: $65
    ld [hl], d                                    ; $42ac: $72
    ld d, e                                       ; $42ad: $53
    and h                                         ; $42ae: $a4
    ld l, h                                       ; $42af: $6c
    call z, $ffef                                 ; $42b0: $cc $ef $ff
    db $d3                                        ; $42b3: $d3
    adc h                                         ; $42b4: $8c
    jr jr_04f_42c1                                ; $42b5: $18 $0a

    ld de, $e1e7                                  ; $42b7: $11 $e7 $e1
    dec sp                                        ; $42ba: $3b
    ld a, d                                       ; $42bb: $7a
    ld h, b                                       ; $42bc: $60
    ld b, d                                       ; $42bd: $42
    cp a                                          ; $42be: $bf
    rst $38                                       ; $42bf: $ff

jr_04f_42c0:
    ld b, a                                       ; $42c0: $47

jr_04f_42c1:
    ld e, $e8                                     ; $42c1: $1e $e8
    dec hl                                        ; $42c3: $2b
    sub d                                         ; $42c4: $92

jr_04f_42c5:
    db $eb                                        ; $42c5: $eb
    ld a, a                                       ; $42c6: $7f
    ld h, a                                       ; $42c7: $67
    ccf                                           ; $42c8: $3f
    ldh [$31], a                                  ; $42c9: $e0 $31
    db $ed                                        ; $42cb: $ed
    ld a, [$086c]                                 ; $42cc: $fa $6c $08
    ld a, e                                       ; $42cf: $7b
    inc b                                         ; $42d0: $04
    jr nz, @+$0f                                  ; $42d1: $20 $0d

    sbc l                                         ; $42d3: $9d
    ld c, c                                       ; $42d4: $49
    ld l, c                                       ; $42d5: $69
    di                                            ; $42d6: $f3
    sbc d                                         ; $42d7: $9a
    dec c                                         ; $42d8: $0d
    add hl, sp                                    ; $42d9: $39
    dec de                                        ; $42da: $1b
    jr c, jr_04f_42c0                             ; $42db: $38 $e3

    ld e, $cd                                     ; $42dd: $1e $cd
    ld e, $01                                     ; $42df: $1e $01
    ld c, a                                       ; $42e1: $4f
    ld hl, sp+$65                                 ; $42e2: $f8 $65
    ld d, d                                       ; $42e4: $52
    or e                                          ; $42e5: $b3
    pop hl                                        ; $42e6: $e1
    res 6, c                                      ; $42e7: $cb $b1
    call nz, $f6cf                                ; $42e9: $c4 $cf $f6
    ld d, b                                       ; $42ec: $50
    db $dd                                        ; $42ed: $dd
    inc l                                         ; $42ee: $2c
    or $08                                        ; $42ef: $f6 $08
    rrca                                          ; $42f1: $0f
    push de                                       ; $42f2: $d5
    call $9b3a                                    ; $42f3: $cd $3a $9b
    ld c, l                                       ; $42f6: $4d
    ld b, [hl]                                    ; $42f7: $46
    ld [de], a                                    ; $42f8: $12
    or c                                          ; $42f9: $b1
    ld sp, $96ad                                  ; $42fa: $31 $ad $96
    bit 7, l                                      ; $42fd: $cb $7d
    ld h, $e7                                     ; $42ff: $26 $e7
    push de                                       ; $4301: $d5
    rst $38                                       ; $4302: $ff
    or l                                          ; $4303: $b5
    dec sp                                        ; $4304: $3b
    ld a, [c]                                     ; $4305: $f2
    ld l, a                                       ; $4306: $6f
    or $0e                                        ; $4307: $f6 $0e
    ld h, a                                       ; $4309: $67
    adc a                                         ; $430a: $8f
    nop                                           ; $430b: $00
    ld h, b                                       ; $430c: $60
    ld b, d                                       ; $430d: $42
    cp a                                          ; $430e: $bf
    rst $38                                       ; $430f: $ff
    rlca                                          ; $4310: $07
    ei                                            ; $4311: $fb
    dec a                                         ; $4312: $3d
    inc h                                         ; $4313: $24
    dec a                                         ; $4314: $3d
    jp z, Jump_04f_6cf7                           ; $4315: $ca $f7 $6c

    ld a, [c]                                     ; $4318: $f2
    ld [$a001], sp                                ; $4319: $08 $01 $a0
    rl [hl]                                       ; $431c: $cb $16
    dec e                                         ; $431e: $1d
    jr c, jr_04f_4364                             ; $431f: $38 $43

    cp c                                          ; $4321: $b9
    ld c, $d6                                     ; $4322: $0e $d6
    xor $32                                       ; $4324: $ee $32
    inc sp                                        ; $4326: $33
    ld hl, $925a                                  ; $4327: $21 $5a $92
    cp c                                          ; $432a: $b9
    rst $08                                       ; $432b: $cf
    ld d, d                                       ; $432c: $52
    pop af                                        ; $432d: $f1
    ld h, l                                       ; $432e: $65
    cp a                                          ; $432f: $bf
    ld [hl], b                                    ; $4330: $70
    cp h                                          ; $4331: $bc
    ld l, h                                       ; $4332: $6c
    db $ec                                        ; $4333: $ec
    ld l, d                                       ; $4334: $6a
    ld b, $1f                                     ; $4335: $06 $1f
    cp l                                          ; $4337: $bd
    ld a, [bc]                                    ; $4338: $0a
    ld [hl+], a                                   ; $4339: $22
    adc a                                         ; $433a: $8f
    ld c, e                                       ; $433b: $4b
    db $ed                                        ; $433c: $ed
    sub a                                         ; $433d: $97
    adc l                                         ; $433e: $8d
    pop de                                        ; $433f: $d1
    and e                                         ; $4340: $a3
    ld c, c                                       ; $4341: $49
    call z, $ffef                                 ; $4342: $cc $ef $ff
    or e                                          ; $4345: $b3
    rst $10                                       ; $4346: $d7
    ld a, l                                       ; $4347: $7d
    rst $38                                       ; $4348: $ff
    cp $5f                                        ; $4349: $fe $5f
    dec sp                                        ; $434b: $3b
    db $f4                                        ; $434c: $f4
    db $10                                        ; $434d: $10
    ld h, a                                       ; $434e: $67
    push af                                       ; $434f: $f5
    reti                                          ; $4350: $d9


    ld e, $aa                                     ; $4351: $1e $aa
    sbc e                                         ; $4353: $9b
    dec [hl]                                      ; $4354: $35
    ld [hl], b                                    ; $4355: $70
    add $3d                                       ; $4356: $c6 $3d
    ld a, [de]                                    ; $4358: $1a
    ld [hl+], a                                   ; $4359: $22
    rrca                                          ; $435a: $0f
    inc d                                         ; $435b: $14
    ld b, d                                       ; $435c: $42
    ld a, b                                       ; $435d: $78
    ld l, b                                       ; $435e: $68
    db $10                                        ; $435f: $10
    ld b, d                                       ; $4360: $42
    ld h, [hl]                                    ; $4361: $66
    xor c                                         ; $4362: $a9
    pop de                                        ; $4363: $d1

jr_04f_4364:
    sub b                                         ; $4364: $90
    ld l, d                                       ; $4365: $6a
    ld [$0221], sp                                ; $4366: $08 $21 $02

Jump_04f_4369:
    ret nz                                        ; $4369: $c0

    ld c, a                                       ; $436a: $4f
    cp l                                          ; $436b: $bd
    ld a, [$afb6]                                 ; $436c: $fa $b6 $af
    sbc d                                         ; $436f: $9a
    and c                                         ; $4370: $a1
    or e                                          ; $4371: $b3
    pop hl                                        ; $4372: $e1
    or e                                          ; $4373: $b3
    ld b, a                                       ; $4374: $47
    jp $bd3d                                      ; $4375: $c3 $3d $bd


    jp $bcbb                                      ; $4378: $c3 $bb $bc


    ld a, d                                       ; $437b: $7a
    inc [hl]                                      ; $437c: $34
    ld a, d                                       ; $437d: $7a
    add hl, sp                                    ; $437e: $39
    and h                                         ; $437f: $a4
    ld a, [hl-]                                   ; $4380: $3a
    ldh [rLCDC], a                                ; $4381: $e0 $40
    dec b                                         ; $4383: $05
    pop af                                        ; $4384: $f1
    ld l, e                                       ; $4385: $6b

Jump_04f_4386:
    inc h                                         ; $4386: $24
    ld h, h                                       ; $4387: $64
    ld b, a                                       ; $4388: $47
    rst $28                                       ; $4389: $ef
    and h                                         ; $438a: $a4
    ld b, a                                       ; $438b: $47
    ld b, e                                       ; $438c: $43
    inc b                                         ; $438d: $04
    rrca                                          ; $438e: $0f
    pop bc                                        ; $438f: $c1
    inc a                                         ; $4390: $3c
    dec de                                        ; $4391: $1b
    ld b, $23                                     ; $4392: $06 $23
    db $10                                        ; $4394: $10
    ld bc, $72e0                                  ; $4395: $01 $e0 $72
    halt                                          ; $4398: $76
    ld [$93e1], sp                                ; $4399: $08 $e1 $93
    db $eb                                        ; $439c: $eb
    cp [hl]                                       ; $439d: $be
    dec hl                                        ; $439e: $2b
    ld e, $4b                                     ; $439f: $1e $4b
    ld [hl], a                                    ; $43a1: $77
    ld e, b                                       ; $43a2: $58
    db $fd                                        ; $43a3: $fd
    jp c, Jump_04f_443d                           ; $43a4: $da $3d $44

    db $d3                                        ; $43a7: $d3
    ld l, e                                       ; $43a8: $6b
    inc h                                         ; $43a9: $24
    adc $a6                                       ; $43aa: $ce $a6
    add hl, de                                    ; $43ac: $19
    ld e, c                                       ; $43ad: $59
    ld h, $35                                     ; $43ae: $26 $35
    db $fd                                        ; $43b0: $fd
    and $5a                                       ; $43b1: $e6 $5a
    cp [hl]                                       ; $43b3: $be

Jump_04f_43b4:
    ld l, d                                       ; $43b4: $6a
    jr c, @-$3f                                   ; $43b5: $38 $bf

    db $ec                                        ; $43b7: $ec
    inc l                                         ; $43b8: $2c
    cp l                                          ; $43b9: $bd
    or $af                                        ; $43ba: $f6 $af
    sub h                                         ; $43bc: $94
    ld b, b                                       ; $43bd: $40
    inc b                                         ; $43be: $04
    ld c, a                                       ; $43bf: $4f
    ld l, e                                       ; $43c0: $6b
    cpl                                           ; $43c1: $2f
    ld c, a                                       ; $43c2: $4f
    sub d                                         ; $43c3: $92
    ld e, l                                       ; $43c4: $5d
    dec d                                         ; $43c5: $15
    ld a, [c]                                     ; $43c6: $f2
    ld [$0f01], sp                                ; $43c7: $08 $01 $0f
    push de                                       ; $43ca: $d5
    call Call_04f_5b3a                            ; $43cb: $cd $3a $5b
    ld a, $dc                                     ; $43ce: $3e $dc
    ld h, a                                       ; $43d0: $67
    xor a                                         ; $43d1: $af
    sbc d                                         ; $43d2: $9a
    halt                                          ; $43d3: $76
    inc [hl]                                      ; $43d4: $34
    call c, Call_04f_52e3                         ; $43d5: $dc $e3 $52
    db $d3                                        ; $43d8: $d3
    jp $ff57                                      ; $43d9: $c3 $57 $ff


    ei                                            ; $43dc: $fb
    inc c                                         ; $43dd: $0c
    db $dd                                        ; $43de: $dd
    xor c                                         ; $43df: $a9
    db $fd                                        ; $43e0: $fd
    rra                                           ; $43e1: $1f
    ld e, l                                       ; $43e2: $5d
    db $10                                        ; $43e3: $10
    ld bc, $0e4f                                  ; $43e4: $01 $4f $0e
    rst $30                                       ; $43e7: $f7
    ld b, l                                       ; $43e8: $45
    ld c, a                                       ; $43e9: $4f
    and d                                         ; $43ea: $a2
    rst $08                                       ; $43eb: $cf
    ld d, [hl]                                    ; $43ec: $56
    rst $38                                       ; $43ed: $ff
    ld e, a                                       ; $43ee: $5f
    call Call_000_10e0                            ; $43ef: $cd $e0 $10
    ld bc, $12e0                                  ; $43f2: $01 $e0 $12
    db $ed                                        ; $43f5: $ed
    ld l, h                                       ; $43f6: $6c
    ld [hl], $7c                                  ; $43f7: $36 $7c
    ld a, d                                       ; $43f9: $7a
    push af                                       ; $43fa: $f5
    db $e4                                        ; $43fb: $e4
    add sp, -$7e                                  ; $43fc: $e8 $82
    ld [$21e7], sp                                ; $43fe: $08 $e7 $21
    db $e3                                        ; $4401: $e3
    ld c, [hl]                                    ; $4402: $4e
    sbc l                                         ; $4403: $9d
    cp l                                          ; $4404: $bd
    or $83                                        ; $4405: $f6 $83
    ld hl, sp+$35                                 ; $4407: $f8 $35
    ld [de], a                                    ; $4409: $12
    or d                                          ; $440a: $b2
    cp e                                          ; $440b: $bb
    ld d, e                                       ; $440c: $53
    ei                                            ; $440d: $fb
    ccf                                           ; $440e: $3f
    cp d                                          ; $440f: $ba
    halt                                          ; $4410: $76
    db $f4                                        ; $4411: $f4
    ld c, [hl]                                    ; $4412: $4e
    db $ed                                        ; $4413: $ed
    db $e4                                        ; $4414: $e4
    db $10                                        ; $4415: $10
    add hl, bc                                    ; $4416: $09
    ld l, e                                       ; $4417: $6b
    jr z, jr_04f_4436                             ; $4418: $28 $1c

    or $f6                                        ; $441a: $f6 $f6
    add sp, $1d                                   ; $441c: $e8 $1d
    dec a                                         ; $441e: $3d
    db $fd                                        ; $441f: $fd
    ld [de], a                                    ; $4420: $12
    cp a                                          ; $4421: $bf
    xor d                                         ; $4422: $aa
    halt                                          ; $4423: $76
    ld b, l                                       ; $4424: $45
    ld [hl], l                                    ; $4425: $75
    ret c                                         ; $4426: $d8

    dec de                                        ; $4427: $1b
    sub d                                         ; $4428: $92
    and e                                         ; $4429: $a3
    ld [hl], a                                    ; $442a: $77
    ld b, a                                       ; $442b: $47
    ld a, c                                       ; $442c: $79
    ld d, c                                       ; $442d: $51
    dec [hl]                                      ; $442e: $35
    ld l, a                                       ; $442f: $6f
    di                                            ; $4430: $f3
    cp a                                          ; $4431: $bf
    ld l, l                                       ; $4432: $6d
    ld d, [hl]                                    ; $4433: $56
    adc d                                         ; $4434: $8a
    ld b, h                                       ; $4435: $44

jr_04f_4436:
    sbc a                                         ; $4436: $9f
    dec l                                         ; $4437: $2d

Jump_04f_4438:
    di                                            ; $4438: $f3
    or e                                          ; $4439: $b3
    pop hl                                        ; $443a: $e1
    dec sp                                        ; $443b: $3b
    ld a, d                                       ; $443c: $7a

Jump_04f_443d:
    ld a, [$7e25]                                 ; $443d: $fa $25 $7e
    sub l                                         ; $4440: $95
    xor a                                         ; $4441: $af
    call c, Call_000_1247                         ; $4442: $dc $47 $12
    sub c                                         ; $4445: $91
    ld e, d                                       ; $4446: $5a
    ld h, $f7                                     ; $4447: $26 $f7
    inc sp                                        ; $4449: $33
    ld l, e                                       ; $444a: $6b
    ld [hl], $e8                                  ; $444b: $36 $e8
    ld a, b                                       ; $444d: $78
    add a                                         ; $444e: $87
    ld [$e1e7], sp                                ; $444f: $08 $e7 $e1
    inc hl                                        ; $4452: $23
    dec h                                         ; $4453: $25
    ld h, e                                       ; $4454: $63
    sub [hl]                                      ; $4455: $96
    ld e, d                                       ; $4456: $5a
    add a                                         ; $4457: $87
    dec l                                         ; $4458: $2d
    ld h, c                                       ; $4459: $61
    adc a                                         ; $445a: $8f
    nop                                           ; $445b: $00
    ld c, a                                       ; $445c: $4f
    db $fc                                        ; $445d: $fc
    inc h                                         ; $445e: $24
    db $10                                        ; $445f: $10
    ld bc, $e1e7                                  ; $4460: $01 $e7 $e1
    dec sp                                        ; $4463: $3b
    ld a, d                                       ; $4464: $7a
    rst $38                                       ; $4465: $ff
    ld [de], a                                    ; $4466: $12
    sbc a                                         ; $4467: $9f
    ld d, $22                                     ; $4468: $16 $22
    ld bc, $8f11                                  ; $446a: $01 $11 $8f
    ld c, e                                       ; $446d: $4b
    call $210f                                    ; $446e: $cd $0f $21
    pop de                                        ; $4471: $d1
    ld d, e                                       ; $4472: $53
    ld sp, $7abd                                  ; $4473: $31 $bd $7a
    ld h, $a5                                     ; $4476: $26 $a5
    dec l                                         ; $4478: $2d
    ld h, h                                       ; $4479: $64
    and l                                         ; $447a: $a5
    cpl                                           ; $447b: $2f
    ld a, d                                       ; $447c: $7a
    ld hl, $2103                                  ; $447d: $21 $03 $21
    xor d                                         ; $4480: $aa
    jp $90de                                      ; $4481: $c3 $de $90


    sub a                                         ; $4484: $97
    ld [hl], e                                    ; $4485: $73
    add d                                         ; $4486: $82
    db $e3                                        ; $4487: $e3
    ld sp, hl                                     ; $4488: $f9
    sub a                                         ; $4489: $97
    jp z, Jump_04f_4369                           ; $448a: $ca $69 $43

    ldh [$c0], a                                  ; $448d: $e0 $c0
    call c, $9291                                 ; $448f: $dc $91 $92
    sub l                                         ; $4492: $95
    add sp, -$79                                  ; $4493: $e8 $87
    ret c                                         ; $4495: $d8

    ld e, d                                       ; $4496: $5a
    ld a, [$1b7e]                                 ; $4497: $fa $7e $1b
    dec l                                         ; $449a: $2d
    or l                                          ; $449b: $b5
    dec sp                                        ; $449c: $3b
    dec de                                        ; $449d: $1b
    ld [hl-], a                                   ; $449e: $32
    cp a                                          ; $449f: $bf
    rst $38                                       ; $44a0: $ff
    xor a                                         ; $44a1: $af
    call c, Call_04f_6d77                         ; $44a2: $dc $77 $6d
    adc b                                         ; $44a5: $88
    ld e, a                                       ; $44a6: $5f
    xor $46                                       ; $44a7: $ee $46
    rst $10                                       ; $44a9: $d7
    call z, $a4bf                                 ; $44aa: $cc $bf $a4
    halt                                          ; $44ad: $76
    ld l, d                                       ; $44ae: $6a
    adc a                                         ; $44af: $8f
    add [hl]                                      ; $44b0: $86
    ld [$8e60], sp                                ; $44b1: $08 $60 $8e
    sbc [hl]                                      ; $44b4: $9e
    call c, $d769                                 ; $44b5: $dc $69 $d7
    cp l                                          ; $44b8: $bd
    ld a, d                                       ; $44b9: $7a
    ld hl, $b53b                                  ; $44ba: $21 $3b $b5
    cpl                                           ; $44bd: $2f
    cp $8f                                        ; $44be: $fe $8f
    ld e, [hl]                                    ; $44c0: $5e
    adc c                                         ; $44c1: $89
    sub h                                         ; $44c2: $94
    db $ec                                        ; $44c3: $ec
    adc d                                         ; $44c4: $8a
    ld [$37b0], a                                 ; $44c5: $ea $b0 $37
    inc h                                         ; $44c8: $24
    cpl                                           ; $44c9: $2f
    dec de                                        ; $44ca: $1b
    ld a, [hl-]                                   ; $44cb: $3a
    cp c                                          ; $44cc: $b9
    cp e                                          ; $44cd: $bb
    ld [c], a                                     ; $44ce: $e2
    ld sp, $8872                                  ; $44cf: $31 $72 $88
    ld b, h                                       ; $44d2: $44
    rst $28                                       ; $44d3: $ef
    xor d                                         ; $44d4: $aa
    sub b                                         ; $44d5: $90
    db $fd                                        ; $44d6: $fd
    ld b, e                                       ; $44d7: $43
    xor c                                         ; $44d8: $a9
    add sp, -$37                                  ; $44d9: $e8 $c9
    sbc l                                         ; $44db: $9d
    dec c                                         ; $44dc: $0d
    add hl, de                                    ; $44dd: $19
    adc l                                         ; $44de: $8d
    rst $38                                       ; $44df: $ff
    ld c, e                                       ; $44e0: $4b
    sub [hl]                                      ; $44e1: $96
    cp $65                                        ; $44e2: $fe $65
    ld b, e                                       ; $44e4: $43
    add [hl]                                      ; $44e5: $86
    di                                            ; $44e6: $f3
    adc e                                         ; $44e7: $8b
    ld e, [hl]                                    ; $44e8: $5e
    add d                                         ; $44e9: $82
    db $e3                                        ; $44ea: $e3
    ld sp, hl                                     ; $44eb: $f9
    sub a                                         ; $44ec: $97
    jp z, Jump_04f_4369                           ; $44ed: $ca $69 $43

    ldh [$ce], a                                  ; $44f0: $e0 $ce
    ld b, e                                       ; $44f2: $43
    sub [hl]                                      ; $44f3: $96
    ld c, l                                       ; $44f4: $4d
    ld a, e                                       ; $44f5: $7b
    ld [hl], h                                    ; $44f6: $74
    push hl                                       ; $44f7: $e5
    sbc c                                         ; $44f8: $99
    sub h                                         ; $44f9: $94
    or [hl]                                       ; $44fa: $b6
    ld l, e                                       ; $44fb: $6b
    ld b, e                                       ; $44fc: $43
    db $fc                                        ; $44fd: $fc
    ld [hl], d                                    ; $44fe: $72
    scf                                           ; $44ff: $37
    cp d                                          ; $4500: $ba
    ld a, [c]                                     ; $4501: $f2
    ld a, [hl+]                                   ; $4502: $2a
    ld [hl], c                                    ; $4503: $71
    ld b, e                                       ; $4504: $43
    bit 5, a                                      ; $4505: $cb $6f
    ld h, $0e                                     ; $4507: $26 $0e
    add a                                         ; $4509: $87
    or c                                          ; $450a: $b1
    ld b, [hl]                                    ; $450b: $46
    jp Jump_04f_7a2e                              ; $450c: $c3 $2e $7a


    add hl, bc                                    ; $450f: $09
    adc [hl]                                      ; $4510: $8e
    rst $20                                       ; $4511: $e7
    ld e, a                                       ; $4512: $5f
    ld a, [hl+]                                   ; $4513: $2a
    and a                                         ; $4514: $a7
    dec c                                         ; $4515: $0d
    add hl, bc                                    ; $4516: $09
    sbc c                                         ; $4517: $99
    ld c, c                                       ; $4518: $49
    ld l, c                                       ; $4519: $69
    sla a                                         ; $451a: $cb $27
    or d                                          ; $451c: $b2
    xor e                                         ; $451d: $ab
    ld b, d                                       ; $451e: $42
    inc c                                         ; $451f: $0c
    ld e, l                                       ; $4520: $5d

jr_04f_4521:
    ld h, $e6                                     ; $4521: $26 $e6
    sub a                                         ; $4523: $97
    db $e4                                        ; $4524: $e4
    add hl, de                                    ; $4525: $19
    jp c, $8dbc                                   ; $4526: $da $bc $8d

    dec b                                         ; $4529: $05
    rst $20                                       ; $452a: $e7
    pop de                                        ; $452b: $d1
    dec sp                                        ; $452c: $3b
    or l                                          ; $452d: $b5
    ld b, a                                       ; $452e: $47
    jp $e701                                      ; $452f: $c3 $01 $e7


    ld [hl], a                                    ; $4532: $77
    push bc                                       ; $4533: $c5
    ld h, e                                       ; $4534: $63
    ld d, a                                       ; $4535: $57
    halt                                          ; $4536: $76
    rst $00                                       ; $4537: $c7
    sbc l                                         ; $4538: $9d
    ld a, [hl-]                                   ; $4539: $3a

jr_04f_453a:
    call $ac4c                                    ; $453a: $cd $4c $ac
    call nc, Call_000_3132                        ; $453d: $d4 $32 $31
    ld a, [hl+]                                   ; $4540: $2a
    inc b                                         ; $4541: $04
    ld c, $6c                                     ; $4542: $0e $6c
    ld c, d                                       ; $4544: $4a
    dec de                                        ; $4545: $1b
    ld sp, $5774                                  ; $4546: $31 $74 $57
    inc a                                         ; $4549: $3c
    and $f7                                       ; $454a: $e6 $f7
    rst $38                                       ; $454c: $ff
    ld [hl], h                                    ; $454d: $74
    sub c                                         ; $454e: $91
    ld a, [de]                                    ; $454f: $1a
    ld [hl], a                                    ; $4550: $77
    ld [$643e], a                                 ; $4551: $ea $3e $64
    ld [hl], d                                    ; $4554: $72
    and a                                         ; $4555: $a7
    ld d, l                                       ; $4556: $55
    rst $08                                       ; $4557: $cf
    add $72                                       ; $4558: $c6 $72

jr_04f_455a:
    jr nc, jr_04f_453a                            ; $455a: $30 $de

    xor c                                         ; $455c: $a9
    dec a                                         ; $455d: $3d
    ld e, d                                       ; $455e: $5a
    ld l, d                                       ; $455f: $6a
    jr c, jr_04f_4521                             ; $4560: $38 $bf

    ld a, a                                       ; $4562: $7f
    or e                                          ; $4563: $b3
    sub a                                         ; $4564: $97
    inc l                                         ; $4565: $2c
    dec de                                        ; $4566: $1b
    ld a, [hl-]                                   ; $4567: $3a
    ld h, [hl]                                    ; $4568: $66
    xor c                                         ; $4569: $a9
    xor c                                         ; $456a: $a9
    jp nc, Jump_000_0d17                          ; $456b: $d2 $17 $0d

    ld de, $c9e7                                  ; $456e: $11 $e7 $c9
    ld c, b                                       ; $4571: $48
    ret                                           ; $4572: $c9


    cp b                                          ; $4573: $b8
    db $d3                                        ; $4574: $d3
    ld h, a                                       ; $4575: $67
    sub $68                                       ; $4576: $d6 $68
    ret c                                         ; $4578: $d8

    pop de                                        ; $4579: $d1
    xor e                                         ; $457a: $ab
    ld h, [hl]                                    ; $457b: $66
    add sp, $6c                                   ; $457c: $e8 $6c
    ld [hl-], a                                   ; $457e: $32
    db $fd                                        ; $457f: $fd
    cp $0f                                        ; $4580: $fe $0f
    rst $30                                       ; $4582: $f7
    cp b                                          ; $4583: $b8
    call nc, Call_000_21c8                        ; $4584: $d4 $c8 $21
    ld [de], a                                    ; $4587: $12
    cp l                                          ; $4588: $bd
    ld c, $5b                                     ; $4589: $0e $5b
    or d                                          ; $458b: $b2
    xor e                                         ; $458c: $ab
    ld b, d                                       ; $458d: $42
    ld h, [hl]                                    ; $458e: $66
    ld h, e                                       ; $458f: $63
    call c, $ec8f                                 ; $4590: $dc $8f $ec
    or l                                          ; $4593: $b5
    ld d, e                                       ; $4594: $53
    ld a, e                                       ; $4595: $7b
    or h                                          ; $4596: $b4
    inc d                                         ; $4597: $14
    ld b, h                                       ; $4598: $44
    ld h, b                                       ; $4599: $60
    add d                                         ; $459a: $82
    ld a, c                                       ; $459b: $79
    ld [hl], $66                                  ; $459c: $36 $66
    xor c                                         ; $459e: $a9
    and l                                         ; $459f: $a5
    ld c, l                                       ; $45a0: $4d
    db $db                                        ; $45a1: $db
    sbc b                                         ; $45a2: $98
    jr jr_04f_455a                                ; $45a3: $18 $b5

    ld a, a                                       ; $45a5: $7f
    ld [hl], h                                    ; $45a6: $74
    adc l                                         ; $45a7: $8d
    ld e, [hl]                                    ; $45a8: $5e
    dec [hl]                                      ; $45a9: $35
    dec de                                        ; $45aa: $1b

Call_04f_45ab:
    ld [hl], h                                    ; $45ab: $74
    sbc c                                         ; $45ac: $99
    ld a, c                                       ; $45ad: $79
    ld a, h                                       ; $45ae: $7c
    dec e                                         ; $45af: $1d
    ld [hl+], a                                   ; $45b0: $22
    add b                                         ; $45b1: $80
    adc b                                         ; $45b2: $88
    rst $10                                       ; $45b3: $d7
    db $ec                                        ; $45b4: $ec
    ld d, l                                       ; $45b5: $55
    db $e3                                        ; $45b6: $e3
    ld c, [hl]                                    ; $45b7: $4e
    dec a                                         ; $45b8: $3d
    ccf                                           ; $45b9: $3f
    or l                                          ; $45ba: $b5
    add h                                         ; $45bb: $84
    or b                                          ; $45bc: $b0
    ld b, a                                       ; $45bd: $47
    ret nz                                        ; $45be: $c0

    ld c, a                                       ; $45bf: $4f
    cp l                                          ; $45c0: $bd
    ld l, h                                       ; $45c1: $6c
    add sp, $6c                                   ; $45c2: $e8 $6c
    ld [hl-], a                                   ; $45c4: $32
    db $fd                                        ; $45c5: $fd
    cp $0f                                        ; $45c6: $fe $0f
    ld de, $ef4f                                  ; $45c8: $11 $4f $ef
    ld [hl], d                                    ; $45cb: $72
    db $e4                                        ; $45cc: $e4
    or e                                          ; $45cd: $b3
    dec a                                         ; $45ce: $3d
    ld d, h                                       ; $45cf: $54
    scf                                           ; $45d0: $37
    dec bc                                        ; $45d1: $0b
    ld [hl+], a                                   ; $45d2: $22
    rst $20                                       ; $45d3: $e7
    ret                                           ; $45d4: $c9


    jp nc, Jump_04f_6da6                          ; $45d5: $d2 $a6 $6d

    db $ec                                        ; $45d8: $ec
    add a                                         ; $45d9: $87
    rst $10                                       ; $45da: $d7
    ld [de], a                                    ; $45db: $12
    scf                                           ; $45dc: $37
    ld d, h                                       ; $45dd: $54
    ld c, e                                       ; $45de: $4b
    ld a, [c]                                     ; $45df: $f2
    reti                                          ; $45e0: $d9


    ld e, $aa                                     ; $45e1: $1e $aa
    sbc e                                         ; $45e3: $9b
    dec b                                         ; $45e4: $05
    ld de, $470f                                  ; $45e5: $11 $0f $47
    ld e, a                                       ; $45e8: $5f
    sub c                                         ; $45e9: $91
    jr jr_04f_4663                                ; $45ea: $18 $77

    ld b, l                                       ; $45ec: $45

jr_04f_45ed:
    ld a, [c]                                     ; $45ed: $f2
    xor [hl]                                      ; $45ee: $ae
    xor b                                         ; $45ef: $a8
    jp c, Jump_000_3da9                           ; $45f0: $da $a9 $3d

    ld a, [$0f6c]                                 ; $45f3: $fa $6c $0f
    push de                                       ; $45f6: $d5
    call Call_000_0882                            ; $45f7: $cd $82 $08
    rst $20                                       ; $45fa: $e7
    pop hl                                        ; $45fb: $e1
    db $d3                                        ; $45fc: $d3
    adc [hl]                                      ; $45fd: $8e
    sbc [hl]                                      ; $45fe: $9e
    ld e, [hl]                                    ; $45ff: $5e
    dec a                                         ; $4600: $3d
    ccf                                           ; $4601: $3f
    add h                                         ; $4602: $84
    ld hl, sp-$4e                                 ; $4603: $f8 $b2
    and c                                         ; $4605: $a1
    dec bc                                        ; $4606: $0b
    ld e, c                                       ; $4607: $59
    ld [c], a                                     ; $4608: $e2
    add [hl]                                      ; $4609: $86
    ld l, d                                       ; $460a: $6a
    ld c, c                                       ; $460b: $49
    ld c, [hl]                                    ; $460c: $4e
    ld [hl], b                                    ; $460d: $70
    ld e, h                                       ; $460e: $5c
    ld e, l                                       ; $460f: $5d
    adc $cf                                       ; $4610: $ce $cf
    or $50                                        ; $4612: $f6 $50
    db $dd                                        ; $4614: $dd
    inc l                                         ; $4615: $2c
    adc b                                         ; $4616: $88
    nop                                           ; $4617: $00
    ld c, a                                       ; $4618: $4f
    jp $9367                                      ; $4619: $c3 $67 $93


    add hl, bc                                    ; $461c: $09
    xor a                                         ; $461d: $af
    adc h                                         ; $461e: $8c
    cpl                                           ; $461f: $2f
    db $dd                                        ; $4620: $dd
    or l                                          ; $4621: $b5
    db $ec                                        ; $4622: $ec
    rst $00                                       ; $4623: $c7
    rst $38                                       ; $4624: $ff
    ld sp, $5f9c                                  ; $4625: $31 $9c $5f
    ld h, $e6                                     ; $4628: $26 $e6
    dec de                                        ; $462a: $1b
    jp c, Jump_000_0dbc                           ; $462b: $da $bc $0d

    sbc a                                         ; $462e: $9f
    dec a                                         ; $462f: $3d
    ld a, d                                       ; $4630: $7a
    ld [hl], $7c                                  ; $4631: $36 $7c
    call c, $c915                                 ; $4633: $dc $15 $c9
    dec sp                                        ; $4636: $3b
    or l                                          ; $4637: $b5
    ld b, a                                       ; $4638: $47
    ccf                                           ; $4639: $3f
    ld b, d                                       ; $463a: $42
    and b                                         ; $463b: $a0
    jp nz, $a66b                                  ; $463c: $c2 $6b $a6

    ld l, l                                       ; $463f: $6d
    adc b                                         ; $4640: $88
    rst $38                                       ; $4641: $ff
    xor e                                         ; $4642: $ab
    ld a, h                                       ; $4643: $7c
    pop bc                                        ; $4644: $c1
    ld a, c                                       ; $4645: $79
    db $f4                                        ; $4646: $f4
    adc h                                         ; $4647: $8c
    ld e, [hl]                                    ; $4648: $5e
    ld a, [c]                                     ; $4649: $f2
    xor a                                         ; $464a: $af
    xor d                                         ; $464b: $aa
    xor c                                         ; $464c: $a9
    ld a, $b2                                     ; $464d: $3e $b2
    daa                                           ; $464f: $27
    cp d                                          ; $4650: $ba
    ld l, c                                       ; $4651: $69
    cp b                                          ; $4652: $b8
    di                                            ; $4653: $f3
    jr jr_04f_45ed                                ; $4654: $18 $97

    adc b                                         ; $4656: $88
    adc d                                         ; $4657: $8a
    xor [hl]                                      ; $4658: $ae
    ld e, [hl]                                    ; $4659: $5e
    ld [hl], $74                                  ; $465a: $36 $74
    or h                                          ; $465c: $b4
    sub h                                         ; $465d: $94
    add h                                         ; $465e: $84
    ld b, a                                       ; $465f: $47
    rrca                                          ; $4660: $0f
    rst $20                                       ; $4661: $e7
    ld [hl], a                                    ; $4662: $77

jr_04f_4663:
    ld l, d                                       ; $4663: $6a
    adc a                                         ; $4664: $8f
    sbc [hl]                                      ; $4665: $9e
    ld c, c                                       ; $4666: $49
    ld l, c                                       ; $4667: $69
    dec hl                                        ; $4668: $2b
    or c                                          ; $4669: $b1
    ld e, l                                       ; $466a: $5d
    di                                            ; $466b: $f3
    ld [hl], $ff                                  ; $466c: $36 $ff
    db $db                                        ; $466e: $db
    ld h, [hl]                                    ; $466f: $66
    and l                                         ; $4670: $a5
    ld c, b                                       ; $4671: $48
    ld a, [hl]                                    ; $4672: $7e
    ld sp, hl                                     ; $4673: $f9
    adc d                                         ; $4674: $8a
    ld [$37b0], a                                 ; $4675: $ea $b0 $37
    inc h                                         ; $4678: $24
    ld b, a                                       ; $4679: $47
    ld b, e                                       ; $467a: $43
    inc b                                         ; $467b: $04
    ld c, a                                       ; $467c: $4f
    ld h, d                                       ; $467d: $62
    jp hl                                         ; $467e: $e9


    ld [$df9a], a                                 ; $467f: $ea $9a $df
    rst $38                                       ; $4682: $ff
    ld d, a                                       ; $4683: $57
    xor $b3                                       ; $4684: $ee $b3
    ret                                           ; $4686: $c9


    or h                                          ; $4687: $b4
    ld [$fce1], a                                 ; $4688: $ea $e1 $fc
    db $ec                                        ; $468b: $ec
    ld d, l                                       ; $468c: $55
    or e                                          ; $468d: $b3
    ld d, a                                       ; $468e: $57
    ld l, d                                       ; $468f: $6a
    or [hl]                                       ; $4690: $b6
    adc e                                         ; $4691: $8b
    ld h, h                                       ; $4692: $64
    ld [hl], d                                    ; $4693: $72
    ld b, l                                       ; $4694: $45
    or d                                          ; $4695: $b2
    ld d, [hl]                                    ; $4696: $56
    ld h, d                                       ; $4697: $62
    inc sp                                        ; $4698: $33
    xor c                                         ; $4699: $a9
    sbc [hl]                                      ; $469a: $9e
    and c                                         ; $469b: $a1
    or e                                          ; $469c: $b3
    ret                                           ; $469d: $c9


    ld [hl-], a                                   ; $469e: $32
    xor c                                         ; $469f: $a9
    pop hl                                        ; $46a0: $e1
    rst $18                                       ; $46a1: $df
    and h                                         ; $46a2: $a4
    ld c, b                                       ; $46a3: $48
    call $8506                                    ; $46a4: $cd $06 $85
    ld a, e                                       ; $46a7: $7b
    ld a, d                                       ; $46a8: $7a
    ld [hl], e                                    ; $46a9: $73
    xor [hl]                                      ; $46aa: $ae
    sbc l                                         ; $46ab: $9d
    jp c, Jump_04f_47a3                           ; $46ac: $da $a3 $47

    ld c, d                                       ; $46af: $4a
    sub [hl]                                      ; $46b0: $96
    db $fd                                        ; $46b1: $fd
    and [hl]                                      ; $46b2: $a6
    ld c, b                                       ; $46b3: $48

jr_04f_46b4:
    ld h, l                                       ; $46b4: $65
    adc b                                         ; $46b5: $88
    nop                                           ; $46b6: $00
    rrca                                          ; $46b7: $0f
    and l                                         ; $46b8: $a5
    ld a, [$b3da]                                 ; $46b9: $fa $da $b3
    jp hl                                         ; $46bc: $e9


    pop hl                                        ; $46bd: $e1
    or e                                          ; $46be: $b3
    ret                                           ; $46bf: $c9


    add h                                         ; $46c0: $84
    ld d, a                                       ; $46c1: $57
    add $97                                       ; $46c2: $c6 $97
    xor $5a                                       ; $46c4: $ee $5a
    or $e3                                        ; $46c6: $f6 $e3
    rst $38                                       ; $46c8: $ff
    ld e, b                                       ; $46c9: $58
    cp c                                          ; $46ca: $b9
    rst $28                                       ; $46cb: $ef
    add a                                         ; $46cc: $87
    rst $10                                       ; $46cd: $d7
    add d                                         ; $46ce: $82
    di                                            ; $46cf: $f3
    add sp, -$63                                  ; $46d0: $e8 $9d
    jp c, $1fa3                                   ; $46d2: $da $a3 $1f

    ld hl, $2b8f                                  ; $46d5: $21 $8f $2b
    di                                            ; $46d8: $f3
    ld h, a                                       ; $46d9: $67
    or e                                          ; $46da: $b3
    ret                                           ; $46db: $c9


    jr c, jr_04f_46b4                             ; $46dc: $38 $d6

    rst $38                                       ; $46de: $ff
    pop de                                        ; $46df: $d1
    jp $d9f9                                      ; $46e0: $c3 $f9 $d9


    dec hl                                        ; $46e3: $2b
    ld c, e                                       ; $46e4: $4b
    ld [hl], b                                    ; $46e5: $70
    inc a                                         ; $46e6: $3c
    rst $38                                       ; $46e7: $ff
    ld d, d                                       ; $46e8: $52
    add hl, sp                                    ; $46e9: $39
    ld l, l                                       ; $46ea: $6d
    ret z                                         ; $46eb: $c8

    and e                                         ; $46ec: $a3
    ld h, c                                       ; $46ed: $61
    cp h                                          ; $46ee: $bc
    xor $b5                                       ; $46ef: $ee $b5
    dec sp                                        ; $46f1: $3b
    ld l, e                                       ; $46f2: $6b
    add sp, -$78                                  ; $46f3: $e8 $88
    sub c                                         ; $46f5: $91
    db $ec                                        ; $46f6: $ec
    ld d, a                                       ; $46f7: $57
    push de                                       ; $46f8: $d5
    ld d, h                                       ; $46f9: $54
    rra                                           ; $46fa: $1f
    reti                                          ; $46fb: $d9


    inc de                                        ; $46fc: $13
    db $dd                                        ; $46fd: $dd
    or h                                          ; $46fe: $b4
    call nc, $b26c                                ; $46ff: $d4 $6c $b2
    inc e                                         ; $4702: $1c
    dec a                                         ; $4703: $3d
    db $ed                                        ; $4704: $ed
    add sp, -$0f                                  ; $4705: $e8 $f1
    or e                                          ; $4707: $b3
    ld b, a                                       ; $4708: $47
    jp $ae3d                                      ; $4709: $c3 $3d $ae


    ld h, l                                       ; $470c: $65
    ld e, [hl]                                    ; $470d: $5e
    db $ed                                        ; $470e: $ed
    ld e, a                                       ; $470f: $5f
    adc a                                         ; $4710: $8f
    reti                                          ; $4711: $d9


    db $eb                                        ; $4712: $eb
    ld e, [hl]                                    ; $4713: $5e
    jp nz, Jump_04f_769a                          ; $4714: $c2 $9a $76

    db $f4                                        ; $4717: $f4
    add h                                         ; $4718: $84
    sub a                                         ; $4719: $97
    db $ec                                        ; $471a: $ec
    dec h                                         ; $471b: $25
    ld sp, hl                                     ; $471c: $f9
    ld l, h                                       ; $471d: $6c
    inc [hl]                                      ; $471e: $34
    ld h, h                                       ; $471f: $64
    ld [hl], $64                                  ; $4720: $36 $64
    inc e                                         ; $4722: $1c
    rst $18                                       ; $4723: $df
    or e                                          ; $4724: $b3
    ld e, l                                       ; $4725: $5d
    and h                                         ; $4726: $a4

Jump_04f_4727:
    ld a, d                                       ; $4727: $7a
    push hl                                       ; $4728: $e5
    ld a, $61                                     ; $4729: $3e $61
    push hl                                       ; $472b: $e5
    ld e, d                                       ; $472c: $5a
    and $c7                                       ; $472d: $e6 $c7
    xor h                                         ; $472f: $ac
    xor c                                         ; $4730: $a9
    ld a, $74                                     ; $4731: $3e $74
    dec de                                        ; $4733: $1b
    ld c, e                                       ; $4734: $4b
    ld [hl], b                                    ; $4735: $70
    ld a, h                                       ; $4736: $7c
    ld [hl], $04                                  ; $4737: $36 $04
    ld [hl+], a                                   ; $4739: $22
    rst $20                                       ; $473a: $e7
    ld e, l                                       ; $473b: $5d
    and h                                         ; $473c: $a4
    ld a, [$0211]                                 ; $473d: $fa $11 $02
    rst $08                                       ; $4740: $cf
    ld l, c                                       ; $4741: $69
    add hl, bc                                    ; $4742: $09
    add l                                         ; $4743: $85
    db $10                                        ; $4744: $10
    and $1a                                       ; $4745: $e6 $1a
    or e                                          ; $4747: $b3
    ld h, [hl]                                    ; $4748: $66
    cp e                                          ; $4749: $bb
    ld c, b                                       ; $474a: $48
    push af                                       ; $474b: $f5
    and e                                         ; $474c: $a3
    dec a                                         ; $474d: $3d
    xor [hl]                                      ; $474e: $ae
    pop de                                        ; $474f: $d1
    sub b                                         ; $4750: $90
    or d                                          ; $4751: $b2
    ld sp, $657a                                  ; $4752: $31 $7a $65
    ld e, d                                       ; $4755: $5a
    ld [hl+], a                                   ; $4756: $22
    halt                                          ; $4757: $76
    ret nz                                        ; $4758: $c0

    ld c, d                                       ; $4759: $4a
    inc d                                         ; $475a: $14
    add h                                         ; $475b: $84
    ret nc                                        ; $475c: $d0

    add [hl]                                      ; $475d: $86
    adc h                                         ; $475e: $8c
    db $e3                                        ; $475f: $e3
    ld a, e                                       ; $4760: $7b
    ret nz                                        ; $4761: $c0

    ld c, d                                       ; $4762: $4a
    call nc, Call_04f_7dca                        ; $4763: $d4 $ca $7d
    jp nz, Jump_000_05ca                          ; $4766: $c2 $ca $05

    rst $30                                       ; $4769: $f7
    db $f4                                        ; $476a: $f4
    ld c, [hl]                                    ; $476b: $4e
    dec sp                                        ; $476c: $3b
    ld [hl], l                                    ; $476d: $75
    ld e, [hl]                                    ; $476e: $5e
    ld c, $39                                     ; $476f: $0e $39
    db $db                                        ; $4771: $db
    ld b, e                                       ; $4772: $43
    ld [hl], l                                    ; $4773: $75
    or e                                          ; $4774: $b3
    jr nz, jr_04f_4779                            ; $4775: $20 $02

Jump_04f_4777:
    rrca                                          ; $4777: $0f
    push af                                       ; $4778: $f5

jr_04f_4779:
    ccf                                           ; $4779: $3f
    ld a, a                                       ; $477a: $7f
    or [hl]                                       ; $477b: $b6
    add a                                         ; $477c: $87
    ld [$9d66], a                                 ; $477d: $ea $66 $9d
    ld c, l                                       ; $4780: $4d
    cpl                                           ; $4781: $2f
    dec sp                                        ; $4782: $3b
    xor l                                         ; $4783: $ad
    ld a, d                                       ; $4784: $7a
    ld [hl], $99                                  ; $4785: $36 $99
    dec a                                         ; $4787: $3d
    ld a, [$0211]                                 ; $4788: $fa $11 $02
    and b                                         ; $478b: $a0
    xor a                                         ; $478c: $af
    db $ec                                        ; $478d: $ec
    adc d                                         ; $478e: $8a
    ld [$37b0], a                                 ; $478f: $ea $b0 $37
    db $e4                                        ; $4792: $e4
    push hl                                       ; $4793: $e5
    sbc h                                         ; $4794: $9c
    ldh [$78], a                                  ; $4795: $e0 $78
    cp $a5                                        ; $4797: $fe $a5
    ld [hl], d                                    ; $4799: $72
    jp c, $b390                                   ; $479a: $da $90 $b3

    ld sp, hl                                     ; $479d: $f9
    db $fd                                        ; $479e: $fd
    ld a, a                                       ; $479f: $7f
    ccf                                           ; $47a0: $3f
    adc b                                         ; $47a1: $88
    ld e, a                                       ; $47a2: $5f

Jump_04f_47a3:
    inc hl                                        ; $47a3: $23
    ld hl, $3bbb                                  ; $47a4: $21 $bb $3b
    or l                                          ; $47a7: $b5
    rst $38                                       ; $47a8: $ff

Call_04f_47a9:
    and e                                         ; $47a9: $a3
    dec bc                                        ; $47aa: $0b
    ld [hl+], a                                   ; $47ab: $22
    adc a                                         ; $47ac: $8f
    ld c, e                                       ; $47ad: $4b
    xor e                                         ; $47ae: $ab
    or e                                          ; $47af: $b3
    reti                                          ; $47b0: $d9


    ld h, h                                       ; $47b1: $64
    ccf                                           ; $47b2: $3f
    cp h                                          ; $47b3: $bc
    ld a, d                                       ; $47b4: $7a
    pop bc                                        ; $47b5: $c1
    ld a, c                                       ; $47b6: $79
    db $f4                                        ; $47b7: $f4
    ld c, [hl]                                    ; $47b8: $4e
    db $ed                                        ; $47b9: $ed
    pop de                                        ; $47ba: $d1
    ld [hl], b                                    ; $47bb: $70
    inc bc                                        ; $47bc: $03
    ld a, h                                       ; $47bd: $7c
    ld h, h                                       ; $47be: $64

jr_04f_47bf:
    ld e, a                                       ; $47bf: $5f
    cp c                                          ; $47c0: $b9
    rst $08                                       ; $47c1: $cf
    ld h, $d3                                     ; $47c2: $26 $d3
    ld hl, sp-$01                                 ; $47c4: $f8 $ff
    and e                                         ; $47c6: $a3
    ld h, a                                       ; $47c7: $67
    xor a                                         ; $47c8: $af
    ld e, d                                       ; $47c9: $5a
    ld [c], a                                     ; $47ca: $e2
    add [hl]                                      ; $47cb: $86
    ld l, d                                       ; $47cc: $6a
    ld c, c                                       ; $47cd: $49
    sbc [hl]                                      ; $47ce: $9e
    and c                                         ; $47cf: $a1
    or e                                          ; $47d0: $b3
    ret                                           ; $47d1: $c9


    ld [hl-], a                                   ; $47d2: $32
    xor c                                         ; $47d3: $a9
    ld l, c                                       ; $47d4: $69
    rst $10                                       ; $47d5: $d7
    cp l                                          ; $47d6: $bd
    ld h, $bc                                     ; $47d7: $26 $bc
    ld [$0882], a                                 ; $47d9: $ea $82 $08
    adc a                                         ; $47dc: $8f
    ld c, e                                       ; $47dd: $4b
    dec l                                         ; $47de: $2d
    ld a, a                                       ; $47df: $7f
    cp [hl]                                       ; $47e0: $be
    and a                                         ; $47e1: $a7
    sub a                                         ; $47e2: $97
    sbc l                                         ; $47e3: $9d
    and c                                         ; $47e4: $a1
    dec hl                                        ; $47e5: $2b
    rst $30                                       ; $47e6: $f7
    reti                                          ; $47e7: $d9


    ldh a, [rBCPD]                                ; $47e8: $f0 $69
    ld b, a                                       ; $47ea: $47
    rst $28                                       ; $47eb: $ef
    add sp, -$7b                                  ; $47ec: $e8 $85
    xor h                                         ; $47ee: $ac
    db $f4                                        ; $47ef: $f4
    sbc l                                         ; $47f0: $9d
    jp c, $a5a3                                   ; $47f1: $da $a3 $a5

    jr nz, jr_04f_47f8                            ; $47f4: $20 $02

    adc a                                         ; $47f6: $8f
    ld c, e                                       ; $47f7: $4b

jr_04f_47f8:
    ld c, l                                       ; $47f8: $4d
    dec hl                                        ; $47f9: $2b
    dec de                                        ; $47fa: $1b
    db $eb                                        ; $47fb: $eb
    jp Jump_04f_421d                              ; $47fc: $c3 $1d $42


    ld l, b                                       ; $47ff: $68
    jp $f477                                      ; $4800: $c3 $77 $f4


    adc d                                         ; $4803: $8a
    jr jr_04f_47bf                                ; $4804: $18 $b9

    ld c, $11                                     ; $4806: $0e $11
    adc a                                         ; $4808: $8f
    ld c, e                                       ; $4809: $4b
    dec l                                         ; $480a: $2d
    ld de, $d5db                                  ; $480b: $11 $db $d5
    db $d3                                        ; $480e: $d3
    sra [hl]                                      ; $480f: $cb $2e
    pop bc                                        ; $4811: $c1
    pop af                                        ; $4812: $f1
    db $fc                                        ; $4813: $fc
    ld c, e                                       ; $4814: $4b
    push hl                                       ; $4815: $e5
    or h                                          ; $4816: $b4
    ld hl, $cb21                                  ; $4817: $21 $21 $cb
    add a                                         ; $481a: $87
    adc d                                         ; $481b: $8a
    sbc [hl]                                      ; $481c: $9e
    and c                                         ; $481d: $a1
    or e                                          ; $481e: $b3
    ld hl, $8ed3                                  ; $481f: $21 $d3 $8e
    add [hl]                                      ; $4822: $86
    ld [$9880], sp                                ; $4823: $08 $80 $98
    db $ec                                        ; $4826: $ec
    ld [hl], a                                    ; $4827: $77
    ld e, $b2                                     ; $4828: $1e $b2
    ld [hl], h                                    ; $482a: $74
    rra                                           ; $482b: $1f
    ld h, d                                       ; $482c: $62
    ld h, e                                       ; $482d: $63
    db $f4                                        ; $482e: $f4
    ld a, [hl+]                                   ; $482f: $2a
    or $08                                        ; $4830: $f6 $08
    ld c, a                                       ; $4832: $4f
    ld hl, sp-$27                                 ; $4833: $f8 $d9
    ldh a, [rBCPD]                                ; $4835: $f0 $69
    ld b, a                                       ; $4837: $47
    rst $28                                       ; $4838: $ef
    add sp, -$27                                  ; $4839: $e8 $d9
    db $eb                                        ; $483b: $eb
    ld e, [hl]                                    ; $483c: $5e
    jp nz, Jump_000_0882                          ; $483d: $c2 $82 $08

    adc a                                         ; $4840: $8f
    ld c, e                                       ; $4841: $4b
    call $f4db                                    ; $4842: $cd $db $f4
    jp z, $cc7d                                   ; $4845: $ca $7d $cc

    ld d, d                                       ; $4848: $52
    inc hl                                        ; $4849: $23
    add a                                         ; $484a: $87
    ld c, b                                       ; $484b: $48
    db $f4                                        ; $484c: $f4
    xor [hl]                                      ; $484d: $ae
    ld a, [bc]                                    ; $484e: $0a
    sbc c                                         ; $484f: $99
    dec c                                         ; $4850: $0d
    sbc c                                         ; $4851: $99
    halt                                          ; $4852: $76
    inc [hl]                                      ; $4853: $34
    ld b, h                                       ; $4854: $44
    add b                                         ; $4855: $80
    sbc b                                         ; $4856: $98
    ld h, a                                       ; $4857: $67
    or e                                          ; $4858: $b3
    pop hl                                        ; $4859: $e1
    or e                                          ; $485a: $b3
    ld b, a                                       ; $485b: $47
    cpl                                           ; $485c: $2f
    db $eb                                        ; $485d: $eb
    rst $10                                       ; $485e: $d7
    ld b, [hl]                                    ; $485f: $46
    ld b, e                                       ; $4860: $43
    inc b                                         ; $4861: $04
    adc a                                         ; $4862: $8f
    ld c, e                                       ; $4863: $4b
    call Call_000_2959                            ; $4864: $cd $59 $29
    ld [c], a                                     ; $4867: $e2
    ld sp, $f8fd                                  ; $4868: $31 $fd $f8
    or e                                          ; $486b: $b3
    pop hl                                        ; $486c: $e1
    db $10                                        ; $486d: $10
    jp nz, $91c9                                  ; $486e: $c2 $c9 $91

    di                                            ; $4871: $f3
    scf                                           ; $4872: $37
    dec c                                         ; $4873: $0d
    ld [hl], a                                    ; $4874: $77
    sbc [hl]                                      ; $4875: $9e
    ld [hl], h                                    ; $4876: $74
    cp $c1                                        ; $4877: $fe $c1
    jp z, $3ef3                                   ; $4879: $ca $f3 $3e

    xor h                                         ; $487c: $ac
    ld [c], a                                     ; $487d: $e2
    db $db                                        ; $487e: $db
    ld c, [hl]                                    ; $487f: $4e
    xor a                                         ; $4880: $af
    ld e, $97                                     ; $4881: $1e $97
    db $fc                                        ; $4883: $fc
    cp a                                          ; $4884: $bf
    jp nc, $8367                                  ; $4885: $d2 $67 $83

    ld b, d                                       ; $4888: $42
    inc b                                         ; $4889: $04
    rst $20                                       ; $488a: $e7
    ld hl, $8ed3                                  ; $488b: $21 $d3 $8e
    ld e, [hl]                                    ; $488e: $5e
    adc [hl]                                      ; $488f: $8e
    ld e, [hl]                                    ; $4890: $5e
    ld [hl+], a                                   ; $4891: $22
    ld [hl], $fa                                  ; $4892: $36 $fa
    ld e, a                                       ; $4894: $5f
    or l                                          ; $4895: $b5
    call nz, $1ee1                                ; $4896: $c4 $e1 $1e
    sub a                                         ; $4899: $97
    ld e, d                                       ; $489a: $5a
    ld [hl+], a                                   ; $489b: $22
    or [hl]                                       ; $489c: $b6
    xor e                                         ; $489d: $ab
    and a                                         ; $489e: $a7
    sub a                                         ; $489f: $97
    sbc l                                         ; $48a0: $9d
    dec c                                         ; $48a1: $0d
    rst $18                                       ; $48a2: $df
    pop de                                        ; $48a3: $d1
    db $10                                        ; $48a4: $10
    ld bc, $0d80                                  ; $48a5: $01 $80 $0d
    add hl, bc                                    ; $48a8: $09
    ld e, c                                       ; $48a9: $59
    ld a, $54                                     ; $48aa: $3e $54
    db $f4                                        ; $48ac: $f4
    jp z, Jump_000_367d                           ; $48ad: $ca $7d $36

    ld a, h                                       ; $48b0: $7c
    ld b, a                                       ; $48b1: $47
    adc a                                         ; $48b2: $8f
    sub [hl]                                      ; $48b3: $96
    ret c                                         ; $48b4: $d8

    ld l, $65                                     ; $48b5: $2e $65
    cp d                                          ; $48b7: $ba
    jp c, Jump_04f_4438                           ; $48b8: $da $38 $44

    and b                                         ; $48bb: $a0
    inc de                                        ; $48bc: $13
    ld hl, $d13f                                  ; $48bd: $21 $3f $d1
    dec bc                                        ; $48c0: $0b
    xor $9c                                       ; $48c1: $ee $9c
    sbc a                                         ; $48c3: $9f
    ld e, [hl]                                    ; $48c4: $5e
    cp l                                          ; $48c5: $bd
    sub b                                         ; $48c6: $90
    ld sp, hl                                     ; $48c7: $f9
    db $fd                                        ; $48c8: $fd
    ld a, a                                       ; $48c9: $7f
    and l                                         ; $48ca: $a5
    sub e                                         ; $48cb: $93
    ld e, a                                       ; $48cc: $5f
    ld e, l                                       ; $48cd: $5d
    ld d, $22                                     ; $48ce: $16 $22
    and b                                         ; $48d0: $a0
    db $eb                                        ; $48d1: $eb
    sbc a                                         ; $48d2: $9f
    jp c, $9ee1                                   ; $48d3: $da $e1 $9e

    sbc $4f                                       ; $48d6: $de $4f
    jp nz, $8c47                                  ; $48d8: $c2 $47 $8c

    ld h, h                                       ; $48db: $64
    cp a                                          ; $48dc: $bf
    jp z, $4527                                   ; $48dd: $ca $27 $45

    dec b                                         ; $48e0: $05
    ld [hl+], a                                   ; $48e1: $22
    rst $20                                       ; $48e2: $e7
    pop hl                                        ; $48e3: $e1
    db $d3                                        ; $48e4: $d3
    adc [hl]                                      ; $48e5: $8e
    ld e, $e5                                     ; $48e6: $1e $e5
    or e                                          ; $48e8: $b3
    rst $00                                       ; $48e9: $c7
    db $f4                                        ; $48ea: $f4
    ld [$c85a], a                                 ; $48eb: $ea $5a $c8
    ld c, d                                       ; $48ee: $4a
    sbc a                                         ; $48ef: $9f
    dec c                                         ; $48f0: $0d
    ld a, [bc]                                    ; $48f1: $0a
    ld de, $f84f                                  ; $48f2: $11 $4f $f8
    ld c, c                                       ; $48f5: $49
    ld [hl-], a                                   ; $48f6: $32
    xor l                                         ; $48f7: $ad
    ld a, d                                       ; $48f8: $7a
    call z, $d352                                 ; $48f9: $cc $52 $d3
    xor [hl]                                      ; $48fc: $ae
    ld a, e                                       ; $48fd: $7b
    ld sp, hl                                     ; $48fe: $f9
    adc d                                         ; $48ff: $8a
    inc sp                                        ; $4900: $33
    or $fe                                        ; $4901: $f6 $fe
    rst $18                                       ; $4903: $df
    add $21                                       ; $4904: $c6 $21
    ld [bc], a                                    ; $4906: $02
    rst $20                                       ; $4907: $e7
    ret                                           ; $4908: $c9


    adc [hl]                                      ; $4909: $8e
    sbc $e7                                       ; $490a: $de $e7
    ld b, l                                       ; $490c: $45
    ld sp, hl                                     ; $490d: $f9
    cp b                                          ; $490e: $b8
    and $65                                       ; $490f: $e6 $65
    call c, $f6d1                                 ; $4911: $dc $d1 $f6
    xor d                                         ; $4914: $aa
    or e                                          ; $4915: $b3
    dec a                                         ; $4916: $3d
    ld d, h                                       ; $4917: $54
    scf                                           ; $4918: $37
    dec bc                                        ; $4919: $0b
    ld c, $93                                     ; $491a: $0e $93
    adc a                                         ; $491c: $8f
    add [hl]                                      ; $491d: $86
    sbc l                                         ; $491e: $9d
    cp l                                          ; $491f: $bd
    ld l, d                                       ; $4920: $6a
    ld d, a                                       ; $4921: $57
    add l                                         ; $4922: $85
    ld b, b                                       ; $4923: $40
    inc b                                         ; $4924: $04
    rst $20                                       ; $4925: $e7
    pop hl                                        ; $4926: $e1
    db $d3                                        ; $4927: $d3
    adc [hl]                                      ; $4928: $8e
    sbc [hl]                                      ; $4929: $9e
    ld e, [hl]                                    ; $492a: $5e
    cp l                                          ; $492b: $bd
    dec hl                                        ; $492c: $2b
    ld a, [hl+]                                   ; $492d: $2a
    ld a, h                                       ; $492e: $7c
    ld a, [$d5b5]                                 ; $492f: $fa $b5 $d5

Call_04f_4932:
    ld [hl], c                                    ; $4932: $71
    ld [hl], $70                                  ; $4933: $36 $70
    add $3d                                       ; $4935: $c6 $3d
    ld a, [de]                                    ; $4937: $1a
    ld c, $d8                                     ; $4938: $0e $d8
    xor c                                         ; $493a: $a9
    di                                            ; $493b: $f3
    adc c                                         ; $493c: $89
    db $ec                                        ; $493d: $ec
    xor d                                         ; $493e: $aa
    db $10                                        ; $493f: $10
    adc b                                         ; $4940: $88
    nop                                           ; $4941: $00
    rst $20                                       ; $4942: $e7
    pop hl                                        ; $4943: $e1
    db $d3                                        ; $4944: $d3
    adc [hl]                                      ; $4945: $8e
    sbc $d1                                       ; $4946: $de $d1
    di                                            ; $4948: $f3
    ld c, $cb                                     ; $4949: $0e $cb
    adc h                                         ; $494b: $8c
    add hl, hl                                    ; $494c: $29
    ld e, [hl]                                    ; $494d: $5e
    ld d, h                                       ; $494e: $54
    ret z                                         ; $494f: $c8

    ld l, h                                       ; $4950: $6c
    or d                                          ; $4951: $b2
    ld a, a                                       ; $4952: $7f
    ld d, b                                       ; $4953: $50
    xor c                                         ; $4954: $a9
    sbc $95                                       ; $4955: $de $95
    add l                                         ; $4957: $85
    ei                                            ; $4958: $fb
    inc c                                         ; $4959: $0c
    sub a                                         ; $495a: $97
    db $fc                                        ; $495b: $fc
    sbc a                                         ; $495c: $9f
    db $fd                                        ; $495d: $fd
    db $10                                        ; $495e: $10
    ld a, e                                       ; $495f: $7b
    sub l                                         ; $4960: $95
    xor a                                         ; $4961: $af
    ld a, [hl-]                                   ; $4962: $3a
    dec e                                         ; $4963: $1d
    ld e, $70                                     ; $4964: $1e $70
    adc a                                         ; $4966: $8f
    ld c, e                                       ; $4967: $4b
    adc l                                         ; $4968: $8d
    jr jr_04f_49b5                                ; $4969: $18 $4a

    and e                                         ; $496b: $a3
    ld d, a                                       ; $496c: $57
    xor $e3                                       ; $496d: $ee $e3
    ld c, h                                       ; $496f: $4c
    ld a, e                                       ; $4970: $7b
    ld a, $dc                                     ; $4971: $3e $dc
    ld l, e                                       ; $4973: $6b
    or [hl]                                       ; $4974: $b6
    ld l, e                                       ; $4975: $6b
    and l                                         ; $4976: $a5
    cpl                                           ; $4977: $2f
    ld h, h                                       ; $4978: $64
    cp b                                          ; $4979: $b8
    add hl, sp                                    ; $497a: $39
    ld b, h                                       ; $497b: $44
    dec l                                         ; $497c: $2d
    dec de                                        ; $497d: $1b
    cp d                                          ; $497e: $ba
    db $ec                                        ; $497f: $ec
    ld e, l                                       ; $4980: $5d

Jump_04f_4981:
    inc e                                         ; $4981: $1c
    scf                                           ; $4982: $37
    cp l                                          ; $4983: $bd
    sbc d                                         ; $4984: $9a
    add hl, de                                    ; $4985: $19
    ld d, e                                       ; $4986: $53
    cp h                                          ; $4987: $bc
    xor b                                         ; $4988: $a8
    reti                                          ; $4989: $d9


    ld h, h                                       ; $498a: $64
    call nz, $1a50                                ; $498b: $c4 $50 $1a
    dec a                                         ; $498e: $3d
    cp a                                          ; $498f: $bf
    rst $38                                       ; $4990: $ff
    and a                                         ; $4991: $a7
    adc e                                         ; $4992: $8b
    call nc, $2f12                                ; $4993: $d4 $12 $2f
    ld e, c                                       ; $4996: $59
    cp c                                          ; $4997: $b9
    ld c, a                                       ; $4998: $4f
    xor e                                         ; $4999: $ab

Jump_04f_499a:
    add hl, hl                                    ; $499a: $29
    and [hl]                                      ; $499b: $a6
    ld l, c                                       ; $499c: $69
    rra                                           ; $499d: $1f
    ld sp, hl                                     ; $499e: $f9
    push de                                       ; $499f: $d5
    ld a, $7b                                     ; $49a0: $3e $7b
    db $dd                                        ; $49a2: $dd
    ld d, a                                       ; $49a3: $57
    sbc l                                         ; $49a4: $9d
    ld c, $0f                                     ; $49a5: $0e $0f
    adc b                                         ; $49a7: $88
    nop                                           ; $49a8: $00
    sbc b                                         ; $49a9: $98
    sbc h                                         ; $49aa: $9c
    ld e, $4d                                     ; $49ab: $1e $4d
    db $fc                                        ; $49ad: $fc
    ld l, h                                       ; $49ae: $6c
    rrca                                          ; $49af: $0f
    push de                                       ; $49b0: $d5
    call Call_000_3b82                            ; $49b1: $cd $82 $3b
    ld c, a                                       ; $49b4: $4f

jr_04f_49b5:
    halt                                          ; $49b5: $76
    db $f4                                        ; $49b6: $f4
    ld l, h                                       ; $49b7: $6c
    ret z                                         ; $49b8: $c8

    cp b                                          ; $49b9: $b8
    ld d, e                                       ; $49ba: $53
    ld h, a                                       ; $49bb: $67
    xor a                                         ; $49bc: $af
    ld h, l                                       ; $49bd: $65
    ld b, e                                       ; $49be: $43
    rst $30                                       ; $49bf: $f7
    rrca                                          ; $49c0: $0f
    ld a, [hl+]                                   ; $49c1: $2a
    push de                                       ; $49c2: $d5
    cp e                                          ; $49c3: $bb
    or d                                          ; $49c4: $b2
    ld [hl], b                                    ; $49c5: $70
    rra                                           ; $49c6: $1f
    ld [hl], a                                    ; $49c7: $77
    or h                                          ; $49c8: $b4
    cp l                                          ; $49c9: $bd
    jp z, $9d57                                   ; $49ca: $ca $57 $9d

    ld c, $0f                                     ; $49cd: $0e $0f
    cp b                                          ; $49cf: $b8
    daa                                           ; $49d0: $27
    add [hl]                                      ; $49d1: $86
    ld l, $1d                                     ; $49d2: $2e $1d
    rst $38                                       ; $49d4: $ff
    inc h                                         ; $49d5: $24
    ld d, a                                       ; $49d6: $57
    call nc, $be38                                ; $49d7: $d4 $38 $be
    ld h, a                                       ; $49da: $67
    sub e                                         ; $49db: $93
    cp c                                          ; $49dc: $b9
    adc $cf                                       ; $49dd: $ce $cf
    db $db                                        ; $49df: $db
    db $fc                                        ; $49e0: $fc
    ld l, a                                       ; $49e1: $6f
    sbc e                                         ; $49e2: $9b
    sub l                                         ; $49e3: $95
    ld [hl+], a                                   ; $49e4: $22
    cp c                                          ; $49e5: $b9
    inc hl                                        ; $49e6: $23
    dec d                                         ; $49e7: $15
    cp b                                          ; $49e8: $b8
    jp $e701                                      ; $49e9: $c3 $01 $e7


    rst $20                                       ; $49ec: $e7
    rst $30                                       ; $49ed: $f7
    rst $38                                       ; $49ee: $ff
    pop hl                                        ; $49ef: $e1
    ld l, l                                       ; $49f0: $6d
    cp b                                          ; $49f1: $b8
    ret z                                         ; $49f2: $c8

    reti                                          ; $49f3: $d9


    db $f4                                        ; $49f4: $f4
    sbc [hl]                                      ; $49f5: $9e
    ld c, b                                       ; $49f6: $48
    pop hl                                        ; $49f7: $e1
    ld sp, $d293                                  ; $49f8: $31 $93 $d2
    sub [hl]                                      ; $49fb: $96
    rrca                                          ; $49fc: $0f
    or l                                          ; $49fd: $b5
    ld [hl], d                                    ; $49fe: $72
    rra                                           ; $49ff: $1f
    or e                                          ; $4a00: $b3
    call nc, $b932                                ; $4a01: $d4 $32 $b9
    add hl, hl                                    ; $4a04: $29
    ld d, d                                       ; $4a05: $52
    ld [hl], $66                                  ; $4a06: $36 $66
    xor a                                         ; $4a08: $af
    add d                                         ; $4a09: $82
    ld [$dae0], sp                                ; $4a0a: $08 $e0 $da
    ld [hl], b                                    ; $4a0d: $70
    sub c                                         ; $4a0e: $91
    or e                                          ; $4a0f: $b3
    jp hl                                         ; $4a10: $e9


    dec a                                         ; $4a11: $3d
    sub c                                         ; $4a12: $91
    jp nz, $11e3                                  ; $4a13: $c2 $e3 $11

    ld a, e                                       ; $4a16: $7b
    inc b                                         ; $4a17: $04
    ld c, a                                       ; $4a18: $4f
    add e                                         ; $4a19: $83
    ld l, $93                                     ; $4a1a: $2e $93
    ld e, d                                       ; $4a1c: $5a
    adc c                                         ; $4a1d: $89
    ld d, h                                       ; $4a1e: $54
    rst $20                                       ; $4a1f: $e7
    db $fd                                        ; $4a20: $fd
    and e                                         ; $4a21: $a3
    ld l, e                                       ; $4a22: $6b
    or $aa                                        ; $4a23: $f6 $aa
    ld a, c                                       ; $4a25: $79
    sbc e                                         ; $4a26: $9b
    rst $38                                       ; $4a27: $ff
    ld l, l                                       ; $4a28: $6d
    or e                                          ; $4a29: $b3
    ld d, d                                       ; $4a2a: $52
    inc h                                         ; $4a2b: $24
    ld [hl], a                                    ; $4a2c: $77
    and h                                         ; $4a2d: $a4
    ld [bc], a                                    ; $4a2e: $02
    rst $30                                       ; $4a2f: $f7
    ld b, a                                       ; $4a30: $47
    ld a, e                                       ; $4a31: $7b
    jr z, jr_04f_4a8d                             ; $4a32: $28 $59

    ld a, [$d3d4]                                 ; $4a34: $fa $d4 $d3
    xor e                                         ; $4a37: $ab
    ld l, e                                       ; $4a38: $6b
    ld [hl], a                                    ; $4a39: $77
    ld sp, hl                                     ; $4a3a: $f9
    cp d                                          ; $4a3b: $ba
    rst $28                                       ; $4a3c: $ef
    rra                                           ; $4a3d: $1f
    ld e, l                                       ; $4a3e: $5d
    db $dd                                        ; $4a3f: $dd
    add hl, bc                                    ; $4a40: $09
    ld e, l                                       ; $4a41: $5d
    and $a7                                       ; $4a42: $e6 $a7
    dec e                                         ; $4a44: $1d
    dec a                                         ; $4a45: $3d
    ld e, e                                       ; $4a46: $5b
    ld a, [hl+]                                   ; $4a47: $2a
    jp $bc81                                      ; $4a48: $c3 $81 $bc


    cp a                                          ; $4a4b: $bf

Call_04f_4a4c:
    halt                                          ; $4a4c: $76
    push af                                       ; $4a4d: $f5
    ld b, e                                       ; $4a4e: $43
    adc l                                         ; $4a4f: $8d
    add [hl]                                      ; $4a50: $86
    sbc l                                         ; $4a51: $9d
    cp l                                          ; $4a52: $bd
    ld a, [bc]                                    ; $4a53: $0a
    ld [hl+], a                                   ; $4a54: $22
    ld c, a                                       ; $4a55: $4f
    bit 1, [hl]                                   ; $4a56: $cb $4e
    cp a                                          ; $4a58: $bf
    rst $38                                       ; $4a59: $ff
    rst $08                                       ; $4a5a: $cf
    ld h, $67                                     ; $4a5b: $26 $67
    inc bc                                        ; $4a5d: $03
    ld h, a                                       ; $4a5e: $67
    call c, $1fa3                                 ; $4a5f: $dc $a3 $1f
    ld hl, $4b8f                                  ; $4a62: $21 $8f $4b
    ld c, l                                       ; $4a65: $4d
    xor a                                         ; $4a66: $af
    ld e, $77                                     ; $4a67: $1e $77
    ld [$23ec], a                                 ; $4a69: $ea $ec $23
    cp a                                          ; $4a6c: $bf
    ld a, d                                       ; $4a6d: $7a
    inc [hl]                                      ; $4a6e: $34
    db $ec                                        ; $4a6f: $ec
    ld [hl], h                                    ; $4a70: $74
    cp [hl]                                       ; $4a71: $be
    sub a                                         ; $4a72: $97
    ldh [$b8], a                                  ; $4a73: $e0 $b8
    cp d                                          ; $4a75: $ba
    sbc h                                         ; $4a76: $9c
    rst $28                                       ; $4a77: $ef
    xor $d4                                       ; $4a78: $ee $d4
    cp $8f                                        ; $4a7a: $fe $8f
    xor [hl]                                      ; $4a7c: $ae
    sbc c                                         ; $4a7d: $99
    sub h                                         ; $4a7e: $94
    ld [hl], $bc                                  ; $4a7f: $36 $bc
    dec c                                         ; $4a81: $0d
    rla                                           ; $4a82: $17
    add hl, sp                                    ; $4a83: $39
    sbc e                                         ; $4a84: $9b
    sbc $13                                       ; $4a85: $de $13
    cp h                                          ; $4a87: $bc
    ld c, l                                       ; $4a88: $4d
    ld [c], a                                     ; $4a89: $e2
    set 4, h                                      ; $4a8a: $cb $e4
    and [hl]                                      ; $4a8c: $a6

jr_04f_4a8d:
    ld c, b                                       ; $4a8d: $48
    reti                                          ; $4a8e: $d9


    sbc b                                         ; $4a8f: $98
    halt                                          ; $4a90: $76
    ld a, l                                       ; $4a91: $7d
    db $f4                                        ; $4a92: $f4
    xor d                                         ; $4a93: $aa
    ld [hl], c                                    ; $4a94: $71
    and a                                         ; $4a95: $a7
    ld e, [hl]                                    ; $4a96: $5e
    cp c                                          ; $4a97: $b9
    adc a                                         ; $4a98: $8f
    db $e3                                        ; $4a99: $e3
    rst $20                                       ; $4a9a: $e7
    ld a, [hl-]                                   ; $4a9b: $3a
    ccf                                           ; $4a9c: $3f
    ld l, a                                       ; $4a9d: $6f
    di                                            ; $4a9e: $f3
    cp a                                          ; $4a9f: $bf
    ld l, l                                       ; $4aa0: $6d
    ld d, [hl]                                    ; $4aa1: $56
    adc d                                         ; $4aa2: $8a
    db $e4                                        ; $4aa3: $e4
    adc [hl]                                      ; $4aa4: $8e
    ld d, h                                       ; $4aa5: $54
    ldh [$be], a                                  ; $4aa6: $e0 $be
    ld l, h                                       ; $4aa8: $6c
    add sp, -$2e                                  ; $4aa9: $e8 $d2
    pop af                                        ; $4aab: $f1
    ld c, a                                       ; $4aac: $4f
    ld [hl], d                                    ; $4aad: $72
    ld b, l                                       ; $4aae: $45
    ld b, c                                       ; $4aaf: $41
    inc b                                         ; $4ab0: $04
    rrca                                          ; $4ab1: $0f
    ld b, [hl]                                    ; $4ab2: $46
    and [hl]                                      ; $4ab3: $a6
    ld d, l                                       ; $4ab4: $55
    xor a                                         ; $4ab5: $af
    cp $f7                                        ; $4ab6: $fe $f7
    ld l, e                                       ; $4ab8: $6b
    and a                                         ; $4ab9: $a7
    ld d, a                                       ; $4aba: $57
    ld e, a                                       ; $4abb: $5f
    rra                                           ; $4abc: $1f
    ld [hl], a                                    ; $4abd: $77
    ld [$90a9], a                                 ; $4abe: $ea $a9 $90
    add sp, $53                                   ; $4ac1: $e8 $53
    add [hl]                                      ; $4ac3: $86
    ld a, e                                       ; $4ac4: $7b
    ldh [rIE], a                                  ; $4ac5: $e0 $ff
    rra                                           ; $4ac7: $1f
    rst $10                                       ; $4ac8: $d7
    ld b, l                                       ; $4ac9: $45
    ld h, a                                       ; $4aca: $67
    xor a                                         ; $4acb: $af
    inc l                                         ; $4acc: $2c
    pop bc                                        ; $4acd: $c1
    pop af                                        ; $4ace: $f1
    db $fc                                        ; $4acf: $fc
    ld c, e                                       ; $4ad0: $4b
    push hl                                       ; $4ad1: $e5
    or h                                          ; $4ad2: $b4
    ld hl, $0367                                  ; $4ad3: $21 $67 $03
    ld h, a                                       ; $4ad6: $67
    call c, $21a3                                 ; $4ad7: $dc $a3 $21
    ld [bc], a                                    ; $4ada: $02
    rst $20                                       ; $4adb: $e7
    ld b, a                                       ; $4adc: $47
    ld c, a                                       ; $4add: $4f
    xor e                                         ; $4ade: $ab
    sbc [hl]                                      ; $4adf: $9e
    ld c, l                                       ; $4ae0: $4d
    ld h, [hl]                                    ; $4ae1: $66
    xor a                                         ; $4ae2: $af
    call nc, Call_04f_523a                        ; $4ae3: $d4 $3a $52
    add c                                         ; $4ae6: $81
    ei                                            ; $4ae7: $fb
    reti                                          ; $4ae8: $d9


    ret nz                                        ; $4ae9: $c0

    add hl, de                                    ; $4aea: $19
    rst $30                                       ; $4aeb: $f7
    ld l, b                                       ; $4aec: $68
    cp b                                          ; $4aed: $b8
    ld bc, $a7e7                                  ; $4aee: $01 $e7 $a7
    dec e                                         ; $4af1: $1d
    ld a, l                                       ; $4af2: $7d
    cp c                                          ; $4af3: $b9
    and $e5                                       ; $4af4: $e6 $e5
    ld l, h                                       ; $4af6: $6c
    sub d                                         ; $4af7: $92
    ld b, b                                       ; $4af8: $40
    inc b                                         ; $4af9: $04
    adc a                                         ; $4afa: $8f
    ld c, e                                       ; $4afb: $4b
    ld c, l                                       ; $4afc: $4d

jr_04f_4afd:
    cp e                                          ; $4afd: $bb
    xor $65                                       ; $4afe: $ee $65
    ld h, e                                       ; $4b00: $63
    push af                                       ; $4b01: $f5
    rst $38                                       ; $4b02: $ff
    push de                                       ; $4b03: $d5
    inc c                                         ; $4b04: $0c
    adc $7e                                       ; $4b05: $ce $7e
    adc a                                         ; $4b07: $8f
    ld c, e                                       ; $4b08: $4b
    ld b, c                                       ; $4b09: $41
    ld [$ed79], sp                                ; $4b0a: $08 $79 $ed
    ld l, h                                       ; $4b0d: $6c
    rrca                                          ; $4b0e: $0f
    push de                                       ; $4b0f: $d5
    call Call_04f_7b82                            ; $4b10: $cd $82 $7b
    ld e, h                                       ; $4b13: $5c
    ld l, d                                       ; $4b14: $6a
    sbc $c6                                       ; $4b15: $de $c6
    jp c, $b958                                   ; $4b17: $da $58 $b9

    adc a                                         ; $4b1a: $8f
    ld e, c                                       ; $4b1b: $59
    ld l, d                                       ; $4b1c: $6a
    sbc c                                         ; $4b1d: $99
    inc h                                         ; $4b1e: $24
    rst $38                                       ; $4b1f: $ff
    rst $00                                       ; $4b20: $c7
    db $f4                                        ; $4b21: $f4
    ld [$f91a], a                                 ; $4b22: $ea $1a $f9
    push de                                       ; $4b25: $d5
    db $e3                                        ; $4b26: $e3
    ld c, [hl]                                    ; $4b27: $4e
    sbc l                                         ; $4b28: $9d
    dec e                                         ; $4b29: $1d

jr_04f_4b2a:
    ld [hl+], a                                   ; $4b2a: $22
    ld h, b                                       ; $4b2b: $60
    add d                                         ; $4b2c: $82
    ld a, c                                       ; $4b2d: $79
    or [hl]                                       ; $4b2e: $b6
    add a                                         ; $4b2f: $87
    ld [$4d66], a                                 ; $4b30: $ea $66 $4d
    xor a                                         ; $4b33: $af
    ld e, $77                                     ; $4b34: $1e $77
    ld [$33ec], a                                 ; $4b36: $ea $ec $33
    add hl, hl                                    ; $4b39: $29
    ld l, l                                       ; $4b3a: $6d
    call c, $914d                                 ; $4b3b: $dc $4d $91
    add l                                         ; $4b3e: $85
    inc l                                         ; $4b3f: $2c
    rra                                           ; $4b40: $1f
    sbc l                                         ; $4b41: $9d
    ret                                           ; $4b42: $c9


    db $fd                                        ; $4b43: $fd
    halt                                          ; $4b44: $76
    jp hl                                         ; $4b45: $e9


    ld hl, sp+$27                                 ; $4b46: $f8 $27
    cp c                                          ; $4b48: $b9
    and d                                         ; $4b49: $a2
    jr nz, jr_04f_4b4e                            ; $4b4a: $20 $02

    ld h, b                                       ; $4b4c: $60
    ld a, b                                       ; $4b4d: $78

jr_04f_4b4e:
    db $fd                                        ; $4b4e: $fd
    ld hl, sp+$67                                 ; $4b4f: $f8 $67
    db $e3                                        ; $4b51: $e3
    ld hl, sp+$1e                                 ; $4b52: $f8 $1e
    or e                                          ; $4b54: $b3
    call nc, Call_04f_5784                        ; $4b55: $d4 $84 $57
    add $c7                                       ; $4b58: $c6 $c7
    sbc l                                         ; $4b5a: $9d
    ld a, d                                       ; $4b5b: $7a
    push hl                                       ; $4b5c: $e5
    ld a, $66                                     ; $4b5d: $3e $66
    xor c                                         ; $4b5f: $a9
    ld de, $e743                                  ; $4b60: $11 $43 $e7
    ld a, [hl-]                                   ; $4b63: $3a
    ld e, a                                       ; $4b64: $5f
    adc a                                         ; $4b65: $8f
    db $10                                        ; $4b66: $10
    ld h, b                                       ; $4b67: $60
    ld a, b                                       ; $4b68: $78
    ld h, [hl]                                    ; $4b69: $66
    sbc l                                         ; $4b6a: $9d
    dec l                                         ; $4b6b: $2d
    jr c, jr_04f_4afd                             ; $4b6c: $38 $8f

    adc $86                                       ; $4b6e: $ce $86
    adc $26                                       ; $4b70: $ce $26
    db $d3                                        ; $4b72: $d3
    jp $f997                                      ; $4b73: $c3 $97 $f9


    ld d, c                                       ; $4b76: $51
    ld d, [hl]                                    ; $4b77: $56
    adc d                                         ; $4b78: $8a
    add h                                         ; $4b79: $84
    rst $08                                       ; $4b7a: $cf
    ret nc                                        ; $4b7b: $d0

    sbc l                                         ; $4b7c: $9d
    jp c, $97a3                                   ; $4b7d: $da $a3 $97

    ld a, $f5                                     ; $4b80: $3e $f5
    ld l, h                                       ; $4b82: $6c
    ld [hl-], a                                   ; $4b83: $32
    cp l                                          ; $4b84: $bd
    cp d                                          ; $4b85: $ba
    ld h, [hl]                                    ; $4b86: $66
    inc de                                        ; $4b87: $13
    ld [c], a                                     ; $4b88: $e2
    ld d, a                                       ; $4b89: $57
    dec c                                         ; $4b8a: $0d
    rst $20                                       ; $4b8b: $e7
    ld d, a                                       ; $4b8c: $57
    xor $eb                                       ; $4b8d: $ee $eb
    sub b                                         ; $4b8f: $90
    ld e, h                                       ; $4b90: $5c
    inc sp                                        ; $4b91: $33
    xor d                                         ; $4b92: $aa
    adc a                                         ; $4b93: $8f
    inc c                                         ; $4b94: $0c
    ld [hl], a                                    ; $4b95: $77
    ld e, $be                                     ; $4b96: $1e $be
    db $f4                                        ; $4b98: $f4
    cp a                                          ; $4b99: $bf
    dec a                                         ; $4b9a: $3d
    db $fd                                        ; $4b9b: $fd
    ld hl, sp+$23                                 ; $4b9c: $f8 $23
    ret                                           ; $4b9e: $c9


    ld a, a                                       ; $4b9f: $7f
    add h                                         ; $4ba0: $84
    nop                                           ; $4ba1: $00
    and b                                         ; $4ba2: $a0
    ld b, e                                       ; $4ba3: $43
    jr nz, jr_04f_4b2a                            ; $4ba4: $20 $84

    ld [$bbc0], sp                                ; $4ba6: $08 $c0 $bb
    call c, Call_000_3e6f                         ; $4ba9: $dc $6f $3e
    db $db                                        ; $4bac: $db
    ld b, e                                       ; $4bad: $43
    inc [hl]                                      ; $4bae: $34
    cp l                                          ; $4baf: $bd
    ld b, [hl]                                    ; $4bb0: $46
    ld [bc], a                                    ; $4bb1: $02
    ld [hl+], a                                   ; $4bb2: $22
    adc a                                         ; $4bb3: $8f
    ld c, e                                       ; $4bb4: $4b
    ld c, l                                       ; $4bb5: $4d
    inc sp                                        ; $4bb6: $33
    jr c, jr_04f_4c17                             ; $4bb7: $38 $5e

    ld a, c                                       ; $4bb9: $79
    push hl                                       ; $4bba: $e5
    ld a, $66                                     ; $4bbb: $3e $66
    xor c                                         ; $4bbd: $a9
    ld e, l                                       ; $4bbe: $5d
    pop af                                        ; $4bbf: $f1
    ret c                                         ; $4bc0: $d8

    pop de                                        ; $4bc1: $d1
    xor e                                         ; $4bc2: $ab
    rst $38                                       ; $4bc3: $ff
    and e                                         ; $4bc4: $a3
    push de                                       ; $4bc5: $d5
    call $d464                                    ; $4bc6: $cd $64 $d4
    ld hl, sp-$7c                                 ; $4bc9: $f8 $84
    ld d, a                                       ; $4bcb: $57
    ld e, l                                       ; $4bcc: $5d
    dec hl                                        ; $4bcd: $2b
    ld a, l                                       ; $4bce: $7d
    ld [hl], $a6                                  ; $4bcf: $36 $a6

Jump_04f_4bd1:
    dec e                                         ; $4bd1: $1d
    cp l                                          ; $4bd2: $bd
    ld d, e                                       ; $4bd3: $53
    ld a, e                                       ; $4bd4: $7b
    or h                                          ; $4bd5: $b4
    inc d                                         ; $4bd6: $14
    ld b, h                                       ; $4bd7: $44
    ld c, a                                       ; $4bd8: $4f
    rst $28                                       ; $4bd9: $ef
    daa                                           ; $4bda: $27
    dec [hl]                                      ; $4bdb: $35
    push de                                       ; $4bdc: $d5
    ld b, a                                       ; $4bdd: $47
    or $44                                        ; $4bde: $f6 $44
    scf                                           ; $4be0: $37
    cp l                                          ; $4be1: $bd
    and e                                         ; $4be2: $a3
    ld h, a                                       ; $4be3: $67
    jp $0d97                                      ; $4be4: $c3 $97 $0d


    ld e, l                                       ; $4be7: $5d
    adc [hl]                                      ; $4be8: $8e
    ld e, [hl]                                    ; $4be9: $5e
    ld [hl+], a                                   ; $4bea: $22
    ld [hl], $fa                                  ; $4beb: $36 $fa
    ld e, a                                       ; $4bed: $5f
    ld d, l                                       ; $4bee: $55
    ld c, e                                       ; $4bef: $4b
    db $fc                                        ; $4bf0: $fc
    ld de, $a002                                  ; $4bf1: $11 $02 $a0
    xor a                                         ; $4bf4: $af
    adc h                                         ; $4bf5: $8c
    sbc d                                         ; $4bf6: $9a
    and [hl]                                      ; $4bf7: $a6
    and [hl]                                      ; $4bf8: $a6
    sub a                                         ; $4bf9: $97
    xor $84                                       ; $4bfa: $ee $84
    sub h                                         ; $4bfc: $94
    adc l                                         ; $4bfd: $8d
    db $fd                                        ; $4bfe: $fd
    ld b, e                                       ; $4bff: $43
    xor c                                         ; $4c00: $a9
    sbc d                                         ; $4c01: $9a
    ldh a, [$aa]                                  ; $4c02: $f0 $aa
    ld l, e                                       ; $4c04: $6b
    and l                                         ; $4c05: $a5
    rst $08                                       ; $4c06: $cf
    add $b4                                       ; $4c07: $c6 $b4
    and e                                         ; $4c09: $a3
    ld [hl], a                                    ; $4c0a: $77
    ld l, d                                       ; $4c0b: $6a
    adc a                                         ; $4c0c: $8f
    sub [hl]                                      ; $4c0d: $96
    jp c, $365d                                   ; $4c0e: $da $5d $36

    jr c, jr_04f_4c71                             ; $4c11: $38 $5e

    ld [bc], a                                    ; $4c13: $02
    ld de, $4b8f                                  ; $4c14: $11 $8f $4b

jr_04f_4c17:
    call $f4db                                    ; $4c17: $cd $db $f4
    jp z, Jump_000_367d                           ; $4c1a: $ca $7d $36

    ld a, h                                       ; $4c1d: $7c
    call c, $c915                                 ; $4c1e: $dc $15 $c9
    db $e3                                        ; $4c21: $e3
    ld e, b                                       ; $4c22: $58
    ld e, l                                       ; $4c23: $5d
    di                                            ; $4c24: $f3
    ld b, h                                       ; $4c25: $44
    scf                                           ; $4c26: $37
    cp l                                          ; $4c27: $bd
    ld l, h                                       ; $4c28: $6c
    add sp, -$52                                  ; $4c29: $e8 $ae
    ld c, b                                       ; $4c2b: $48
    ld l, b                                       ; $4c2c: $68
    db $fc                                        ; $4c2d: $fc
    rst $38                                       ; $4c2e: $ff
    pop de                                        ; $4c2f: $d1
    cp e                                          ; $4c30: $bb
    and d                                         ; $4c31: $a2
    ld a, [hl-]                                   ; $4c32: $3a
    db $ec                                        ; $4c33: $ec
    dec c                                         ; $4c34: $0d
    ret                                           ; $4c35: $c9


    pop de                                        ; $4c36: $d1
    ld h, a                                       ; $4c37: $67
    and e                                         ; $4c38: $a3
    ld hl, $9663                                  ; $4c39: $21 $63 $96
    jp c, $bbd1                                   ; $4c3c: $da $d1 $bb

    ld [c], a                                     ; $4c3f: $e2
    or c                                          ; $4c40: $b1
    ld a, h                                       ; $4c41: $7c
    sub b                                         ; $4c42: $90
    ld l, b                                       ; $4c43: $68
    adc b                                         ; $4c44: $88
    nop                                           ; $4c45: $00
    adc a                                         ; $4c46: $8f

Call_04f_4c47:
    ld c, e                                       ; $4c47: $4b
    dec l                                         ; $4c48: $2d
    ld a, a                                       ; $4c49: $7f
    cp [hl]                                       ; $4c4a: $be
    and a                                         ; $4c4b: $a7
    sub a                                         ; $4c4c: $97
    sbc l                                         ; $4c4d: $9d
    and c                                         ; $4c4e: $a1
    dec hl                                        ; $4c4f: $2b
    rst $30                                       ; $4c50: $f7
    reti                                          ; $4c51: $d9


    ldh a, [$71]                                  ; $4c52: $f0 $71
    ld d, a                                       ; $4c54: $57
    inc h                                         ; $4c55: $24
    rst $28                                       ; $4c56: $ef
    call nc, $bd1e                                ; $4c57: $d4 $1e $bd
    dec sp                                        ; $4c5a: $3b
    rst $28                                       ; $4c5b: $ef
    jp $be2a                                      ; $4c5c: $c3 $2a $be


    ld l, l                                       ; $4c5f: $6d
    ld [$0f44], sp                                ; $4c60: $08 $44 $0f
    pop bc                                        ; $4c63: $c1
    inc a                                         ; $4c64: $3c
    dec de                                        ; $4c65: $1b
    sbc b                                         ; $4c66: $98
    ret nc                                        ; $4c67: $d0

    rst $28                                       ; $4c68: $ef
    rst $38                                       ; $4c69: $ff
    ld bc, $1811                                  ; $4c6a: $01 $11 $18
    ld e, c                                       ; $4c6d: $59
    reti                                          ; $4c6e: $d9


    reti                                          ; $4c6f: $d9


    rst $28                                       ; $4c70: $ef

jr_04f_4c71:
    and c                                         ; $4c71: $a1
    ld h, h                                       ; $4c72: $64
    reti                                          ; $4c73: $d9


    add sp, -$2f                                  ; $4c74: $e8 $d1
    db $10                                        ; $4c76: $10
    ld bc, $8260                                  ; $4c77: $01 $60 $82
    add hl, sp                                    ; $4c7a: $39
    dec de                                        ; $4c7b: $1b
    ld a, $75                                     ; $4c7c: $3e $75
    ld [$2569], a                                 ; $4c7e: $ea $69 $25
    cp e                                          ; $4c81: $bb
    ld [c], a                                     ; $4c82: $e2
    ld [hl], c                                    ; $4c83: $71
    ld [hl], $ad                                  ; $4c84: $36 $ad
    ld h, h                                       ; $4c86: $64
    reti                                          ; $4c87: $d9


    ld sp, hl                                     ; $4c88: $f9
    sbc [hl]                                      ; $4c89: $9e
    dec a                                         ; $4c8a: $3d
    ld a, d                                       ; $4c8b: $7a
    ld h, $a5                                     ; $4c8c: $26 $a5
    call Call_04f_7baf                            ; $4c8e: $cd $af $7b
    push af                                       ; $4c91: $f5
    ld [hl], b                                    ; $4c92: $70
    ld a, [hl]                                    ; $4c93: $7e
    db $f4                                        ; $4c94: $f4
    ld a, [hl+]                                   ; $4c95: $2a
    adc b                                         ; $4c96: $88
    nop                                           ; $4c97: $00
    jr nz, @-$3a                                  ; $4c98: $20 $c4

    ld h, e                                       ; $4c9a: $63
    ld h, b                                       ; $4c9b: $60
    ld b, d                                       ; $4c9c: $42
    cp a                                          ; $4c9d: $bf
    rst $38                                       ; $4c9e: $ff
    rst $00                                       ; $4c9f: $c7
    reti                                          ; $4ca0: $d9


    ldh a, [$36]                                  ; $4ca1: $f0 $36
    ld e, h                                       ; $4ca3: $5c
    db $e4                                        ; $4ca4: $e4
    ld l, h                                       ; $4ca5: $6c
    ld a, d                                       ; $4ca6: $7a
    add b                                         ; $4ca7: $80
    xor a                                         ; $4ca8: $af
    ld c, b                                       ; $4ca9: $48
    ld h, [hl]                                    ; $4caa: $66
    adc a                                         ; $4cab: $8f
    nop                                           ; $4cac: $00
    ret c                                         ; $4cad: $d8

    ret c                                         ; $4cae: $d8

    or b                                          ; $4caf: $b0
    ld h, c                                       ; $4cb0: $61
    jp Jump_000_0d86                              ; $4cb1: $c3 $86 $0d


    dec de                                        ; $4cb4: $1b
    ld [hl], $10                                  ; $4cb5: $36 $10
    ld b, d                                       ; $4cb7: $42
    ld [$8011], sp                                ; $4cb8: $08 $11 $80
    ld c, l                                       ; $4cbb: $4d
    db $db                                        ; $4cbc: $db
    sbc b                                         ; $4cbd: $98
    ld a, [hl]                                    ; $4cbe: $7e
    ld [hl], a                                    ; $4cbf: $77
    push bc                                       ; $4cc0: $c5
    ld h, e                                       ; $4cc1: $63
    ld a, [$2291]                                 ; $4cc2: $fa $91 $22
    dec [hl]                                      ; $4cc5: $35
    call $a188                                    ; $4cc6: $cd $88 $a1
    adc a                                         ; $4cc9: $8f
    db $10                                        ; $4cca: $10
    adc a                                         ; $4ccb: $8f
    ld c, e                                       ; $4ccc: $4b
    ld c, l                                       ; $4ccd: $4d
    rrca                                          ; $4cce: $0f
    rst $18                                       ; $4ccf: $df
    dec d                                         ; $4cd0: $15
    adc a                                         ; $4cd1: $8f
    add hl, de                                    ; $4cd2: $19
    ld a, [hl-]                                   ; $4cd3: $3a
    ld e, d                                       ; $4cd4: $5a
    ld [hl-], a                                   ; $4cd5: $32
    sub b                                         ; $4cd6: $90
    add b                                         ; $4cd7: $80
    ret nz                                        ; $4cd8: $c0

    ld c, h                                       ; $4cd9: $4c
    ccf                                           ; $4cda: $3f
    ld d, d                                       ; $4cdb: $52
    and h                                         ; $4cdc: $a4
    ld d, $ee                                     ; $4cdd: $16 $ee
    set 7, b                                      ; $4cdf: $cb $f8
    adc c                                         ; $4ce1: $89
    inc b                                         ; $4ce2: $04
    inc e                                         ; $4ce3: $1c
    ld e, b                                       ; $4ce4: $58
    ld a, [hl-]                                   ; $4ce5: $3a
    sbc e                                         ; $4ce6: $9b
    adc h                                         ; $4ce7: $8c
    dec sp                                        ; $4ce8: $3b
    ld [hl], l                                    ; $4ce9: $75
    ld a, $91                                     ; $4cea: $3e $91
    add sp, $75                                   ; $4cec: $e8 $75
    sub d                                         ; $4cee: $92
    ld c, c                                       ; $4cef: $49
    dec c                                         ; $4cf0: $0d
    rst $20                                       ; $4cf1: $e7
    and a                                         ; $4cf2: $a7
    add hl, de                                    ; $4cf3: $19
    ld sp, $9974                                  ; $4cf4: $31 $74 $99
    rra                                           ; $4cf7: $1f
    add hl, hl                                    ; $4cf8: $29
    ret                                           ; $4cf9: $c9


    inc h                                         ; $4cfa: $24
    ld h, [hl]                                    ; $4cfb: $66
    xor a                                         ; $4cfc: $af
    ld c, h                                       ; $4cfd: $4c
    dec hl                                        ; $4cfe: $2b
    or c                                          ; $4cff: $b1
    ld c, e                                       ; $4d00: $4b
    ld d, a                                       ; $4d01: $57
    rst $10                                       ; $4d02: $d7
    call nc, Call_000_36bf                        ; $4d03: $d4 $bf $36
    ld a, d                                       ; $4d06: $7a
    ld d, a                                       ; $4d07: $57
    add l                                         ; $4d08: $85
    jr jr_04f_4d15                                ; $4d09: $18 $0a

    ld de, $d8d8                                  ; $4d0b: $11 $d8 $d8
    or b                                          ; $4d0e: $b0
    ld h, c                                       ; $4d0f: $61
    jp Jump_000_0d86                              ; $4d10: $c3 $86 $0d


    add h                                         ; $4d13: $84
    db $10                                        ; $4d14: $10

jr_04f_4d15:
    ld b, d                                       ; $4d15: $42
    ld l, b                                       ; $4d16: $68
    ld d, d                                       ; $4d17: $52
    jp c, $e8e4                                   ; $4d18: $da $e4 $e8

    cp l                                          ; $4d1b: $bd
    or $f6                                        ; $4d1c: $f6 $f6
    xor e                                         ; $4d1e: $ab
    xor a                                         ; $4d1f: $af
    cp [hl]                                       ; $4d20: $be
    db $ec                                        ; $4d21: $ec
    push af                                       ; $4d22: $f5
    jp Jump_04f_4727                              ; $4d23: $c3 $27 $47


    db $d3                                        ; $4d26: $d3
    or d                                          ; $4d27: $b2
    or c                                          ; $4d28: $b1
    ld a, h                                       ; $4d29: $7c
    push de                                       ; $4d2a: $d5
    ld a, [c]                                     ; $4d2b: $f2
    ld [hl], l                                    ; $4d2c: $75
    ld e, a                                       ; $4d2d: $5f
    cp $89                                        ; $4d2e: $fe $89
    cpl                                           ; $4d30: $2f
    db $dd                                        ; $4d31: $dd
    inc l                                         ; $4d32: $2c
    ld l, e                                       ; $4d33: $6b
    ld h, e                                       ; $4d34: $63
    ld a, [$c99d]                                 ; $4d35: $fa $9d $c9
    ld a, c                                       ; $4d38: $79
    ld d, a                                       ; $4d39: $57
    inc a                                         ; $4d3a: $3c
    ld d, [hl]                                    ; $4d3b: $56
    rst $38                                       ; $4d3c: $ff
    rst $20                                       ; $4d3d: $e7
    add hl, de                                    ; $4d3e: $19
    ld a, [bc]                                    ; $4d3f: $0a
    ld hl, $a87c                                  ; $4d40: $21 $7c $a8
    ld l, [hl]                                    ; $4d43: $6e
    sub $c0                                       ; $4d44: $d6 $c0
    add hl, de                                    ; $4d46: $19
    rst $30                                       ; $4d47: $f7
    ld l, b                                       ; $4d48: $68
    or $7b                                        ; $4d49: $f6 $7b
    jp nz, Jump_000_3bcf                          ; $4d4b: $c2 $cf $3b

    db $f4                                        ; $4d4e: $f4
    ld a, a                                       ; $4d4f: $7f
    sub l                                         ; $4d50: $95
    xor a                                         ; $4d51: $af
    call c, $8877                                 ; $4d52: $dc $77 $88
    rst $38                                       ; $4d55: $ff
    xor e                                         ; $4d56: $ab
    ld b, d                                       ; $4d57: $42
    and [hl]                                      ; $4d58: $a6
    push de                                       ; $4d59: $d5
    db $ec                                        ; $4d5a: $ec
    ld d, l                                       ; $4d5b: $55
    cp e                                          ; $4d5c: $bb
    and e                                         ; $4d5d: $a3
    ld d, a                                       ; $4d5e: $57
    ld b, [hl]                                    ; $4d5f: $46
    ld a, [hl]                                    ; $4d60: $7e
    push hl                                       ; $4d61: $e5
    inc c                                         ; $4d62: $0c
    rst $30                                       ; $4d63: $f7
    cp b                                          ; $4d64: $b8
    call nc, $15e8                                ; $4d65: $d4 $e8 $15
    ret                                           ; $4d68: $c9


    or e                                          ; $4d69: $b3
    ld d, a                                       ; $4d6a: $57
    add $55                                       ; $4d6b: $c6 $55
    adc a                                         ; $4d6d: $8f
    or d                                          ; $4d6e: $b2
    ld d, d                                       ; $4d6f: $52
    inc h                                         ; $4d70: $24

jr_04f_4d71:
    ld a, h                                       ; $4d71: $7c
    ld a, [$21f1]                                 ; $4d72: $fa $f1 $21
    ld [bc], a                                    ; $4d75: $02
    jr jr_04f_4da3                                ; $4d76: $18 $2b

    ld b, l                                       ; $4d78: $45
    adc $86                                       ; $4d79: $ce $86
    or a                                          ; $4d7b: $b7
    pop hl                                        ; $4d7c: $e1
    ld [hl+], a                                   ; $4d7d: $22
    ld h, a                                       ; $4d7e: $67
    db $d3                                        ; $4d7f: $d3
    inc bc                                        ; $4d80: $03
    ld a, h                                       ; $4d81: $7c
    ld b, l                                       ; $4d82: $45
    ld [hl-], a                                   ; $4d83: $32
    ld b, h                                       ; $4d84: $44
    ld c, a                                       ; $4d85: $4f
    adc d                                         ; $4d86: $8a
    cp $ea                                        ; $4d87: $fe $ea
    reti                                          ; $4d89: $d9


    ld h, h                                       ; $4d8a: $64
    jr c, @+$41                                   ; $4d8b: $38 $3f

    ld h, d                                       ; $4d8d: $62
    jp c, $c347                                   ; $4d8e: $da $47 $c3

Jump_04f_4d91:
    ld l, $1d                                     ; $4d91: $2e $1d
    ld a, l                                       ; $4d93: $7d
    and d                                         ; $4d94: $a2
    or [hl]                                       ; $4d95: $b6
    and [hl]                                      ; $4d96: $a6
    dec e                                         ; $4d97: $1d
    adc h                                         ; $4d98: $8c
    ld c, l                                       ; $4d99: $4d
    rst $08                                       ; $4d9a: $cf
    and h                                         ; $4d9b: $a4
    or h                                          ; $4d9c: $b4
    ld a, c                                       ; $4d9d: $79
    sbc e                                         ; $4d9e: $9b
    rst $38                                       ; $4d9f: $ff
    ld c, c                                       ; $4da0: $49
    push af                                       ; $4da1: $f5
    xor a                                         ; $4da2: $af

jr_04f_4da3:
    ld a, $db                                     ; $4da3: $3e $db
    ld b, e                                       ; $4da5: $43
    ld [hl], l                                    ; $4da6: $75
    or e                                          ; $4da7: $b3
    ld e, $ed                                     ; $4da8: $1e $ed
    inc a                                         ; $4daa: $3c
    ld a, h                                       ; $4dab: $7c
    adc d                                         ; $4dac: $8a
    ld l, c                                       ; $4dad: $69
    jp c, $ecc6                                   ; $4dae: $da $c6 $ec

    sub l                                         ; $4db1: $95
    ld [hl], c                                    ; $4db2: $71
    push de                                       ; $4db3: $d5
    ld [hl], b                                    ; $4db4: $70
    ld b, b                                       ; $4db5: $40
    ld h, l                                       ; $4db6: $65
    adc d                                         ; $4db7: $8a
    rla                                           ; $4db8: $17
    dec [hl]                                      ; $4db9: $35
    ld d, l                                       ; $4dba: $55
    ld a, [$a598]                                 ; $4dbb: $fa $98 $a5
    and [hl]                                      ; $4dbe: $a6
    add hl, de                                    ; $4dbf: $19
    ld sp, $e174                                  ; $4dc0: $31 $74 $e1
    ld a, $1a                                     ; $4dc3: $3e $1a
    halt                                          ; $4dc5: $76
    jr nz, jr_04f_4e37                            ; $4dc6: $20 $6f

    sub e                                         ; $4dc8: $93
    add b                                         ; $4dc9: $80
    ld a, e                                       ; $4dca: $7b
    jr z, @-$65                                   ; $4dcb: $28 $99

    or e                                          ; $4dcd: $b3
    ld d, d                                       ; $4dce: $52
    call nz, $9463                                ; $4dcf: $c4 $63 $94
    sub l                                         ; $4dd2: $95
    ld [hl+], a                                   ; $4dd3: $22
    pop hl                                        ; $4dd4: $e1
    inc sp                                        ; $4dd5: $33
    ld [hl], h                                    ; $4dd6: $74
    ld [hl], $1c                                  ; $4dd7: $36 $1c
    xor $71                                       ; $4dd9: $ee $71
    xor c                                         ; $4ddb: $a9
    dec h                                         ; $4ddc: $25
    ld h, d                                       ; $4ddd: $62
    cp e                                          ; $4dde: $bb
    ld a, d                                       ; $4ddf: $7a
    ld a, d                                       ; $4de0: $7a
    reti                                          ; $4de1: $d9


    ld h, l                                       ; $4de2: $65
    ld b, e                                       ; $4de3: $43
    and a                                         ; $4de4: $a7
    dec e                                         ; $4de5: $1d
    ld h, d                                       ; $4de6: $62
    ld h, e                                       ; $4de7: $63
    inc [hl]                                      ; $4de8: $34
    db $ec                                        ; $4de9: $ec
    ld l, h                                       ; $4dea: $6c
    jr c, jr_04f_4d71                             ; $4deb: $38 $84

    db $10                                        ; $4ded: $10
    ld bc, $4b8f                                  ; $4dee: $01 $8f $4b
    adc l                                         ; $4df1: $8d
    ld e, [hl]                                    ; $4df2: $5e
    sub c                                         ; $4df3: $91
    cp h                                          ; $4df4: $bc
    ld [hl], d                                    ; $4df5: $72
    rra                                           ; $4df6: $1f
    or e                                          ; $4df7: $b3
    call nc, $2ef0                                ; $4df8: $d4 $f0 $2e
    cpl                                           ; $4dfb: $2f
    dec de                                        ; $4dfc: $1b
    and e                                         ; $4dfd: $a3
    ld h, c                                       ; $4dfe: $61
    daa                                           ; $4dff: $27
    cp h                                          ; $4e00: $bc
    ld [hl-], a                                   ; $4e01: $32
    or d                                          ; $4e02: $b2
    cp e                                          ; $4e03: $bb
    di                                            ; $4e04: $f3
    ld e, e                                       ; $4e05: $5b
    jp z, $ea88                                   ; $4e06: $ca $88 $ea

    ld b, e                                       ; $4e09: $43
    db $ec                                        ; $4e0a: $ec
    or d                                          ; $4e0b: $b2
    and c                                         ; $4e0c: $a1
    db $e3                                        ; $4e0d: $e3
    ld c, [hl]                                    ; $4e0e: $4e
    sbc l                                         ; $4e0f: $9d
    ld c, a                                       ; $4e10: $4f
    call nz, $f963                                ; $4e11: $c4 $63 $f9
    ld hl, sp-$34                                 ; $4e14: $f8 $cc
    sbc d                                         ; $4e16: $9a
    dec c                                         ; $4e17: $0d
    rra                                           ; $4e18: $1f
    ld sp, $e1ed                                  ; $4e19: $31 $ed $e1
    di                                            ; $4e1c: $f3
    ei                                            ; $4e1d: $fb
    rst $38                                       ; $4e1e: $ff
    add sp, $55                                   ; $4e1f: $e8 $55
    db $10                                        ; $4e21: $10
    ld bc, $e1e7                                  ; $4e22: $01 $e7 $e1
    and e                                         ; $4e25: $a3
    ld hl, $b3d5                                  ; $4e26: $21 $d5 $b3
    ret                                           ; $4e29: $c9


    xor [hl]                                      ; $4e2a: $ae
    ld a, b                                       ; $4e2b: $78
    or b                                          ; $4e2c: $b0
    rst $18                                       ; $4e2d: $df
    adc $c3                                       ; $4e2e: $ce $c3
    ld b, a                                       ; $4e30: $47
    ld c, d                                       ; $4e31: $4a
    ld [hl-], a                                   ; $4e32: $32
    adc c                                         ; $4e33: $89
    ld sp, hl                                     ; $4e34: $f9
    db $fd                                        ; $4e35: $fd
    ld a, a                                       ; $4e36: $7f

jr_04f_4e37:
    ld h, $a5                                     ; $4e37: $26 $a5
    adc l                                         ; $4e39: $8d
    add [hl]                                      ; $4e3a: $86
    sbc l                                         ; $4e3b: $9d
    ld e, [hl]                                    ; $4e3c: $5e
    cp l                                          ; $4e3d: $bd
    ld e, h                                       ; $4e3e: $5c
    sub h                                         ; $4e3f: $94
    sub $88                                       ; $4e40: $d6 $88
    ld l, c                                       ; $4e42: $69
    add a                                         ; $4e43: $87
    inc bc                                        ; $4e44: $03
    ld c, e                                       ; $4e45: $4b
    rst $00                                       ; $4e46: $c7
    inc l                                         ; $4e47: $2c
    dec [hl]                                      ; $4e48: $35
    adc [hl]                                      ; $4e49: $8e
    rst $28                                       ; $4e4a: $ef
    ld sp, hl                                     ; $4e4b: $f9
    ld [hl], l                                    ; $4e4c: $75

jr_04f_4e4d:
    xor a                                         ; $4e4d: $af
    pop hl                                        ; $4e4e: $e1
    db $fc                                        ; $4e4f: $fc
    ld l, h                                       ; $4e50: $6c
    ld hl, sp+$32                                 ; $4e51: $f8 $32
    ccf                                           ; $4e53: $3f
    ld d, d                                       ; $4e54: $52
    ld [hl-], a                                   ; $4e55: $32
    ld h, [hl]                                    ; $4e56: $66
    xor c                                         ; $4e57: $a9
    sub l                                         ; $4e58: $95
    xor [hl]                                      ; $4e59: $ae
    ld c, [hl]                                    ; $4e5a: $4e
    ld e, l                                       ; $4e5b: $5d
    or e                                          ; $4e5c: $b3
    pop hl                                        ; $4e5d: $e1
    db $10                                        ; $4e5e: $10
    ld bc, $484f                                  ; $4e5f: $01 $4f $48
    adc l                                         ; $4e62: $8d
    ld e, c                                       ; $4e63: $59
    ld l, d                                       ; $4e64: $6a
    adc d                                         ; $4e65: $8a
    sbc a                                         ; $4e66: $9f
    ld c, c                                       ; $4e67: $49
    ld l, c                                       ; $4e68: $69
    db $d3                                        ; $4e69: $d3
    ld c, $ea                                     ; $4e6a: $0e $ea
    dec [hl]                                      ; $4e6c: $35
    dec de                                        ; $4e6d: $1b
    cp $08                                        ; $4e6e: $fe $08
    ld bc, $6540                                  ; $4e70: $01 $40 $65
    adc c                                         ; $4e73: $89
    db $d3                                        ; $4e74: $d3
    and e                                         ; $4e75: $a3
    adc c                                         ; $4e76: $89
    rst $28                                       ; $4e77: $ef
    jp c, $e067                                   ; $4e78: $da $67 $e0

    ld e, $27                                     ; $4e7b: $1e $27
    rst $38                                       ; $4e7d: $ff
    dec de                                        ; $4e7e: $1b
    dec a                                         ; $4e7f: $3d
    ld a, h                                       ; $4e80: $7c
    jp hl                                         ; $4e81: $e9


    ld d, e                                       ; $4e82: $53
    inc sp                                        ; $4e83: $33
    xor e                                         ; $4e84: $ab
    ld [hl], a                                    ; $4e85: $77
    ld h, a                                       ; $4e86: $67
    ld c, e                                       ; $4e87: $4b
    sbc l                                         ; $4e88: $9d
    dec l                                         ; $4e89: $2d
    di                                            ; $4e8a: $f3
    or e                                          ; $4e8b: $b3
    ret                                           ; $4e8c: $c9


    jr c, jr_04f_4e4d                             ; $4e8d: $38 $be

    rst $00                                       ; $4e8f: $c7
    sub e                                         ; $4e90: $93
    sbc d                                         ; $4e91: $9a
    rst $18                                       ; $4e92: $df
    rst $38                                       ; $4e93: $ff
    ld [hl], a                                    ; $4e94: $77

Jump_04f_4e95:
    ld a, [hl]                                    ; $4e95: $7e
    ld c, e                                       ; $4e96: $4b
    add hl, de                                    ; $4e97: $19
    ld d, c                                       ; $4e98: $51
    ld a, l                                       ; $4e99: $7d
    adc b                                         ; $4e9a: $88
    add l                                         ; $4e9b: $85
    jp $a358                                      ; $4e9c: $c3 $58 $a3


    ld h, c                                       ; $4e9f: $61
    ld h, a                                       ; $4ea0: $67
    ld b, e                                       ; $4ea1: $43
    and [hl]                                      ; $4ea2: $a6
    dec e                                         ; $4ea3: $1d
    cp l                                          ; $4ea4: $bd
    ld e, a                                       ; $4ea5: $5f
    jr c, @+$20                                   ; $4ea6: $38 $1e

    ld [hl-], a                                   ; $4ea8: $32
    cp a                                          ; $4ea9: $bf
    rst $38                                       ; $4eaa: $ff
    rst $28                                       ; $4eab: $ef
    and c                                         ; $4eac: $a1
    ld d, h                                       ; $4ead: $54
    ld e, a                                       ; $4eae: $5f
    cp e                                          ; $4eaf: $bb
    call z, Call_000_3b8f                         ; $4eb0: $cc $8f $3b
    ld a, l                                       ; $4eb3: $7d
    ld h, [hl]                                    ; $4eb4: $66
    db $f4                                        ; $4eb5: $f4
    or h                                          ; $4eb6: $b4
    sub d                                         ; $4eb7: $92
    pop de                                        ; $4eb8: $d1
    or b                                          ; $4eb9: $b0
    or e                                          ; $4eba: $b3
    ld d, a                                       ; $4ebb: $57
    call $875e                                    ; $4ebc: $cd $5e $87
    ld a, e                                       ; $4ebf: $7b
    ld e, d                                       ; $4ec0: $5a
    halt                                          ; $4ec1: $76
    ld a, d                                       ; $4ec2: $7a
    push af                                       ; $4ec3: $f5
    ld l, h                                       ; $4ec4: $6c
    ld hl, sp+$6c                                 ; $4ec5: $f8 $6c
    ld [hl-], a                                   ; $4ec7: $32
    dec l                                         ; $4ec8: $2d
    call c, $9263                                 ; $4ec9: $dc $63 $92
    db $ec                                        ; $4ecc: $ec
    xor d                                         ; $4ecd: $aa
    sub b                                         ; $4ece: $90
    ld b, a                                       ; $4ecf: $47
    ld [$d50f], sp                                ; $4ed0: $08 $0f $d5
    call $381a                                    ; $4ed3: $cd $1a $38
    db $e3                                        ; $4ed6: $e3
    ld e, $0d                                     ; $4ed7: $1e $0d
    ld de, $4b8f                                  ; $4ed9: $11 $8f $4b
    cp a                                          ; $4edc: $bf
    add hl, sp                                    ; $4edd: $39
    ei                                            ; $4ede: $fb
    reti                                          ; $4edf: $d9


    ld e, $aa                                     ; $4ee0: $1e $aa
    sbc e                                         ; $4ee2: $9b
    dec [hl]                                      ; $4ee3: $35
    ld [hl], b                                    ; $4ee4: $70
    add $3d                                       ; $4ee5: $c6 $3d
    ld a, [de]                                    ; $4ee7: $1a
    ld c, $63                                     ; $4ee8: $0e $63
    add a                                         ; $4eea: $87
    cp $af                                        ; $4eeb: $fe $af
    ld a, [de]                                    ; $4eed: $1a
    ld l, [hl]                                    ; $4eee: $6e
    sbc b                                         ; $4eef: $98
    inc h                                         ; $4ef0: $24
    adc $c6                                       ; $4ef1: $ce $c6
    inc l                                         ; $4ef3: $2c
    dec [hl]                                      ; $4ef4: $35
    cp h                                          ; $4ef5: $bc
    set 1, e                                      ; $4ef6: $cb $cb
    add $f0                                       ; $4ef8: $c6 $f0
    adc [hl]                                      ; $4efa: $8e
    call nc, $a3cd                                ; $4efb: $d4 $cd $a3
    ld h, c                                       ; $4efe: $61
    and a                                         ; $4eff: $a7
    add hl, de                                    ; $4f00: $19
    ld sp, $2214                                  ; $4f01: $31 $14 $22
    rrca                                          ; $4f04: $0f
    and l                                         ; $4f05: $a5
    ld a, [$f65a]                                 ; $4f06: $fa $5a $f6
    ld a, e                                       ; $4f09: $7b
    ld e, h                                       ; $4f0a: $5c
    ld l, d                                       ; $4f0b: $6a
    ld a, d                                       ; $4f0c: $7a
    push af                                       ; $4f0d: $f5
    sbc b                                         ; $4f0e: $98
    ld c, c                                       ; $4f0f: $49
    or $e1                                        ; $4f10: $f6 $e1
    db $fc                                        ; $4f12: $fc
    db $f4                                        ; $4f13: $f4
    ld b, e                                       ; $4f14: $43
    call $ffef                                    ; $4f15: $cd $ef $ff
    or e                                          ; $4f18: $b3
    ld d, a                                       ; $4f19: $57
    ld b, c                                       ; $4f1a: $41
    inc b                                         ; $4f1b: $04
    rrca                                          ; $4f1c: $0f
    pop bc                                        ; $4f1d: $c1
    inc a                                         ; $4f1e: $3c
    db $db                                        ; $4f1f: $db
    ld b, e                                       ; $4f20: $43
    ld [hl], l                                    ; $4f21: $75
    or e                                          ; $4f22: $b3
    ldh [rNR34], a                                ; $4f23: $e0 $1e
    rst $10                                       ; $4f25: $d7
    ld a, [hl]                                    ; $4f26: $7e
    ld a, b                                       ; $4f27: $78
    push af                                       ; $4f28: $f5
    add d                                         ; $4f29: $82
    di                                            ; $4f2a: $f3
    add sp, $3d                                   ; $4f2b: $e8 $3d
    inc h                                         ; $4f2d: $24
    ld c, l                                       ; $4f2e: $4d
    ld a, [hl]                                    ; $4f2f: $7e
    ld b, d                                       ; $4f30: $42
    pop af                                        ; $4f31: $f1
    ld l, d                                       ; $4f32: $6a
    cp b                                          ; $4f33: $b8
    rst $00                                       ; $4f34: $c7
    dec [hl]                                      ; $4f35: $35
    xor l                                         ; $4f36: $ad
    ld a, d                                       ; $4f37: $7a
    jp c, $7da9                                   ; $4f38: $da $a9 $7d

    push hl                                       ; $4f3b: $e5
    ld a, $1b                                     ; $4f3c: $3e $1b
    db $e3                                        ; $4f3e: $e3
    xor [hl]                                      ; $4f3f: $ae
    ld c, b                                       ; $4f40: $48
    ld e, [hl]                                    ; $4f41: $5e
    cp b                                          ; $4f42: $b8
    ld c, a                                       ; $4f43: $4f
    adc e                                         ; $4f44: $8b
    rst $28                                       ; $4f45: $ef
    ld c, e                                       ; $4f46: $4b
    sbc e                                         ; $4f47: $9b
    add hl, bc                                    ; $4f48: $09
    cpl                                           ; $4f49: $2f
    reti                                          ; $4f4a: $d9


    ld c, e                                       ; $4f4b: $4b
    ld a, [c]                                     ; $4f4c: $f2
    xor $d2                                       ; $4f4d: $ee $d2
    inc l                                         ; $4f4f: $2c
    and l                                         ; $4f50: $a5
    and h                                         ; $4f51: $a4
    ld l, h                                       ; $4f52: $6c
    ld [$e044], sp                                ; $4f53: $08 $44 $e0
    jp c, $9170                                   ; $4f56: $da $70 $91

    or e                                          ; $4f59: $b3
    jp hl                                         ; $4f5a: $e9


    ld bc, $22be                                  ; $4f5b: $01 $be $22
    ld a, c                                       ; $4f5e: $79
    xor d                                         ; $4f5f: $aa
    db $f4                                        ; $4f60: $f4
    pop de                                        ; $4f61: $d1
    xor e                                         ; $4f62: $ab
    and $f7                                       ; $4f63: $e6 $f7
    ld a, a                                       ; $4f65: $7f
    sbc $e3                                       ; $4f66: $de $e3
    rst $20                                       ; $4f68: $e7
    ld e, b                                       ; $4f69: $58
    cp c                                          ; $4f6a: $b9
    adc a                                         ; $4f6b: $8f
    daa                                           ; $4f6c: $27
    dec [hl]                                      ; $4f6d: $35
    cp a                                          ; $4f6e: $bf
    rst $38                                       ; $4f6f: $ff
    rst $28                                       ; $4f70: $ef
    db $fc                                        ; $4f71: $fc
    sub [hl]                                      ; $4f72: $96
    ld [hl-], a                                   ; $4f73: $32
    and d                                         ; $4f74: $a2
    ld a, [$3b10]                                 ; $4f75: $fa $10 $3b
    sub e                                         ; $4f78: $93
    jp nc, Jump_04f_6b96                          ; $4f79: $d2 $96 $6b

    push hl                                       ; $4f7c: $e5
    ld a, $66                                     ; $4f7d: $3e $66
    xor c                                         ; $4f7f: $a9
    ld h, l                                       ; $4f80: $65
    sub d                                         ; $4f81: $92
    db $fc                                        ; $4f82: $fc
    rra                                           ; $4f83: $1f
    ld d, e                                       ; $4f84: $53
    ld sp, $d57b                                  ; $4f85: $31 $7b $d5
    ld l, h                                       ; $4f88: $6c
    ret z                                         ; $4f89: $c8

    or h                                          ; $4f8a: $b4
    and e                                         ; $4f8b: $a3
    rst $30                                       ; $4f8c: $f7
    dec bc                                        ; $4f8d: $0b
    rst $00                                       ; $4f8e: $c7
    ld b, e                                       ; $4f8f: $43
    ldh [rNR34], a                                ; $4f90: $e0 $1e
    sub a                                         ; $4f92: $97
    ld e, d                                       ; $4f93: $5a
    ld h, $35                                     ; $4f94: $26 $35
    db $ed                                        ; $4f96: $ed
    and b                                         ; $4f97: $a0
    ld e, [hl]                                    ; $4f98: $5e
    dec bc                                        ; $4f99: $0b
    rst $30                                       ; $4f9a: $f7
    ld de, $3ed3                                  ; $4f9b: $11 $d3 $3e
    ld a, [de]                                    ; $4f9e: $1a
    halt                                          ; $4f9f: $76
    jp hl                                         ; $4fa0: $e9


    add sp, $13                                   ; $4fa1: $e8 $13
    or l                                          ; $4fa3: $b5
    dec [hl]                                      ; $4fa4: $35
    db $ed                                        ; $4fa5: $ed
    ld h, b                                       ; $4fa6: $60
    ld l, h                                       ; $4fa7: $6c
    ld a, d                                       ; $4fa8: $7a
    ld h, $a5                                     ; $4fa9: $26 $a5
    call $fcdb                                    ; $4fab: $cd $db $fc
    ld c, a                                       ; $4fae: $4f
    xor d                                         ; $4faf: $aa
    ld a, a                                       ; $4fb0: $7f
    push af                                       ; $4fb1: $f5
    or d                                          ; $4fb2: $b2
    and c                                         ; $4fb3: $a1
    inc bc                                        ; $4fb4: $03
    ld a, h                                       ; $4fb5: $7c
    ld b, l                                       ; $4fb6: $45
    ld a, [c]                                     ; $4fb7: $f2
    ld c, b                                       ; $4fb8: $48
    ret                                           ; $4fb9: $c9


    or h                                          ; $4fba: $b4
    sbc d                                         ; $4fbb: $9a
    cp d                                          ; $4fbc: $ba
    ld a, [$f9f5]                                 ; $4fbd: $fa $f5 $f9
    db $fd                                        ; $4fc0: $fd
    ld a, a                                       ; $4fc1: $7f
    db $f4                                        ; $4fc2: $f4
    jp z, $c2f0                                   ; $4fc3: $ca $f0 $c2

    pop af                                        ; $4fc6: $f1
    add d                                         ; $4fc7: $82
    ld [$6b8f], sp                                ; $4fc8: $08 $8f $6b
    ccf                                           ; $4fcb: $3f
    cp h                                          ; $4fcc: $bc
    ld a, d                                       ; $4fcd: $7a
    ld a, l                                       ; $4fce: $7d
    cp b                                          ; $4fcf: $b8
    rrca                                          ; $4fd0: $0f
    rst $20                                       ; $4fd1: $e7
    rst $30                                       ; $4fd2: $f7
    sub b                                         ; $4fd3: $90
    inc [hl]                                      ; $4fd4: $34
    ld sp, hl                                     ; $4fd5: $f9
    add hl, bc                                    ; $4fd6: $09
    push bc                                       ; $4fd7: $c5
    xor e                                         ; $4fd8: $ab
    and l                                         ; $4fd9: $a5
    sub [hl]                                      ; $4fda: $96
    ld b, e                                       ; $4fdb: $43
    ldh [rPCM12], a                               ; $4fdc: $e0 $76
    adc $8f                                       ; $4fde: $ce $8f
    daa                                           ; $4fe0: $27
    pop de                                        ; $4fe1: $d1
    db $d3                                        ; $4fe2: $d3

Jump_04f_4fe3:
    rst $28                                       ; $4fe3: $ef
    reti                                          ; $4fe4: $d9


    ld e, $aa                                     ; $4fe5: $1e $aa
    sbc e                                         ; $4fe7: $9b
    push bc                                       ; $4fe8: $c5
    ld e, $01                                     ; $4fe9: $1e $01
    adc a                                         ; $4feb: $8f
    ld l, e                                       ; $4fec: $6b
    ld a, [$5e21]                                 ; $4fed: $fa $21 $5e
    dec a                                         ; $4ff0: $3d
    db $ed                                        ; $4ff1: $ed
    add sp, -$4d                                  ; $4ff2: $e8 $b3
    dec a                                         ; $4ff4: $3d
    ld d, h                                       ; $4ff5: $54
    scf                                           ; $4ff6: $37
    dec bc                                        ; $4ff7: $0b
    xor $3c                                       ; $4ff8: $ee $3c
    ld e, c                                       ; $4ffa: $59
    ld a, [hl-]                                   ; $4ffb: $3a
    or h                                          ; $4ffc: $b4
    sub e                                         ; $4ffd: $93
    ld e, $bd                                     ; $4ffe: $1e $bd
    dec hl                                        ; $5000: $2b
    ld e, $a3                                     ; $5001: $1e $a3
    ld d, a                                       ; $5003: $57
    and [hl]                                      ; $5004: $a6
    ld sp, $8f8f                                  ; $5005: $31 $8f $8f
    adc a                                         ; $5008: $8f
    dec sp                                        ; $5009: $3b
    push af                                       ; $500a: $f5
    ld b, d                                       ; $500b: $42
    sub [hl]                                      ; $500c: $96
    ld a, c                                       ; $500d: $79
    sbc c                                         ; $500e: $99
    halt                                          ; $500f: $76
    db $f4                                        ; $5010: $f4
    ld b, d                                       ; $5011: $42
    ld c, b                                       ; $5012: $48
    db $fc                                        ; $5013: $fc
    dec d                                         ; $5014: $15
    rst $00                                       ; $5015: $c7
    dec e                                         ; $5016: $1d
    dec c                                         ; $5017: $0d
    ld de, $d50f                                  ; $5018: $11 $0f $d5
    or e                                          ; $501b: $b3
    ret                                           ; $501c: $c9


    ld [hl], d                                    ; $501d: $72
    cp b                                          ; $501e: $b8
    cpl                                           ; $501f: $2f
    ld h, h                                       ; $5020: $64
    or h                                          ; $5021: $b4
    ld h, h                                       ; $5022: $64
    reti                                          ; $5023: $d9


    ret nc                                        ; $5024: $d0

    ld [hl], c                                    ; $5025: $71
    and a                                         ; $5026: $a7
    adc $27                                       ; $5027: $ce $27
    ld [de], a                                    ; $5029: $12
    cp l                                          ; $502a: $bd
    ld a, h                                       ; $502b: $7c
    ld a, h                                       ; $502c: $7c
    ld h, [hl]                                    ; $502d: $66
    dec l                                         ; $502e: $2d
    call c, Call_04f_4c47                         ; $502f: $dc $47 $4c
    ei                                            ; $5032: $fb
    ld l, b                                       ; $5033: $68
    ret c                                         ; $5034: $d8

    and l                                         ; $5035: $a5
    and e                                         ; $5036: $a3
    ld c, a                                       ; $5037: $4f
    call nc, $b4d6                                ; $5038: $d4 $d6 $b4
    add e                                         ; $503b: $83
    or c                                          ; $503c: $b1
    jp hl                                         ; $503d: $e9


    sbc c                                         ; $503e: $99
    sub h                                         ; $503f: $94
    ld [hl], $6f                                  ; $5040: $36 $6f
    di                                            ; $5042: $f3

jr_04f_5043:
    ccf                                           ; $5043: $3f
    xor c                                         ; $5044: $a9
    cp $d5                                        ; $5045: $fe $d5
    adc a                                         ; $5047: $8f
    db $10                                        ; $5048: $10
    adc a                                         ; $5049: $8f
    ld c, e                                       ; $504a: $4b
    call $f4db                                    ; $504b: $cd $db $f4
    jp z, Jump_04f_5a7d                           ; $504e: $ca $7d $5a

    ret                                           ; $5051: $c9


    jp nc, $909d                                  ; $5052: $d2 $9d $90

    ld [$e765], a                                 ; $5055: $ea $65 $e7
    and a                                         ; $5058: $a7
    ld e, a                                       ; $5059: $5f
    dec sp                                        ; $505a: $3b
    ldh [$7d], a                                  ; $505b: $e0 $7d
    ld b, l                                       ; $505d: $45
    add hl, de                                    ; $505e: $19
    rst $30                                       ; $505f: $f7
    inc c                                         ; $5060: $0c
    ld de, $8260                                  ; $5061: $11 $60 $82
    ld a, c                                       ; $5064: $79
    ld [hl], $1b                                  ; $5065: $36 $1b
    ld a, $ad                                     ; $5067: $3e $ad
    ld a, d                                       ; $5069: $7a
    call z, $bb52                                 ; $506a: $cc $52 $bb
    ld [c], a                                     ; $506d: $e2
    ld bc, $e711                                  ; $506e: $01 $11 $e7
    pop hl                                        ; $5071: $e1
    db $d3                                        ; $5072: $d3
    jp Jump_000_2cc7                              ; $5073: $c3 $c7 $2c


    or l                                          ; $5076: $b5
    dec hl                                        ; $5077: $2b
    ld a, [hl+]                                   ; $5078: $2a
    call nz, $a8af                                ; $5079: $c4 $af $a8
    add hl, de                                    ; $507c: $19
    ld a, [bc]                                    ; $507d: $0a
    ld de, $4b8f                                  ; $507e: $11 $8f $4b
    ld c, l                                       ; $5081: $4d
    xor e                                         ; $5082: $ab
    ld e, [hl]                                    ; $5083: $5e
    ld c, $f7                                     ; $5084: $0e $f7
    ld d, c                                       ; $5086: $51
    ld e, [hl]                                    ; $5087: $5e
    ld d, h                                       ; $5088: $54
    adc l                                         ; $5089: $8d
    ld e, $22                                     ; $508a: $1e $22
    scf                                           ; $508c: $37
    inc de                                        ; $508d: $13
    db $d3                                        ; $508e: $d3
    res 0, [hl]                                   ; $508f: $cb $86
    adc [hl]                                      ; $5091: $8e
    dec sp                                        ; $5092: $3b
    ld [hl], l                                    ; $5093: $75
    ld a, $91                                     ; $5094: $3e $91
    add sp, -$1b                                  ; $5096: $e8 $e5
    db $e3                                        ; $5098: $e3
    inc sp                                        ; $5099: $33
    ld l, e                                       ; $509a: $6b
    call nz, $8fb4                                ; $509b: $c4 $b4 $8f
    add [hl]                                      ; $509e: $86
    ld e, l                                       ; $509f: $5d
    ld a, [hl-]                                   ; $50a0: $3a
    ld a, [$6d44]                                 ; $50a1: $fa $44 $6d
    ld c, l                                       ; $50a4: $4d
    dec sp                                        ; $50a5: $3b
    jr jr_04f_5043                                ; $50a6: $18 $9b

    sbc [hl]                                      ; $50a8: $9e
    ld c, c                                       ; $50a9: $49
    ld l, c                                       ; $50aa: $69
    di                                            ; $50ab: $f3
    ld [hl], $ff                                  ; $50ac: $36 $ff
    sub e                                         ; $50ae: $93
    ld [$0d5f], a                                 ; $50af: $ea $5f $0d
    ld de, $e1e7                                  ; $50b2: $11 $e7 $e1
    dec sp                                        ; $50b5: $3b
    ld a, d                                       ; $50b6: $7a
    ld d, a                                       ; $50b7: $57
    ld d, h                                       ; $50b8: $54
    ld hl, sp-$68                                 ; $50b9: $f8 $98
    and l                                         ; $50bb: $a5
    sub [hl]                                      ; $50bc: $96
    xor $84                                       ; $50bd: $ee $84
    ld d, h                                       ; $50bf: $54
    rst $28                                       ; $50c0: $ef
    rra                                           ; $50c1: $1f
    ld c, d                                       ; $50c2: $4a
    push de                                       ; $50c3: $d5
    add sp, -$2f                                  ; $50c4: $e8 $d1
    inc h                                         ; $50c6: $24
    and $f7                                       ; $50c7: $e6 $f7
    ld a, a                                       ; $50c9: $7f
    adc b                                         ; $50ca: $88
    nop                                           ; $50cb: $00
    ld h, b                                       ; $50cc: $60
    add d                                         ; $50cd: $82
    ld a, c                                       ; $50ce: $79
    ld [hl], $1a                                  ; $50cf: $36 $1a
    ld [hl-], a                                   ; $50d1: $32
    ld h, [hl]                                    ; $50d2: $66
    xor c                                         ; $50d3: $a9
    sub c                                         ; $50d4: $91
    sub d                                         ; $50d5: $92
    ld c, h                                       ; $50d6: $4c
    ld h, d                                       ; $50d7: $62
    ld d, a                                       ; $50d8: $57
    inc a                                         ; $50d9: $3c
    ld b, [hl]                                    ; $50da: $46
    adc a                                         ; $50db: $8f
    ld h, $1e                                     ; $50dc: $26 $1e
    or e                                          ; $50de: $b3
    pop hl                                        ; $50df: $e1
    db $10                                        ; $50e0: $10
    ld bc, $4b8f                                  ; $50e1: $01 $8f $4b
    call $f4db                                    ; $50e4: $cd $db $f4
    jp z, $cc7d                                   ; $50e7: $ca $7d $cc

    ld d, d                                       ; $50ea: $52
    res 7, h                                      ; $50eb: $cb $bc
    sbc d                                         ; $50ed: $9a
    ldh a, [$ca]                                  ; $50ee: $f0 $ca
    ret z                                         ; $50f0: $c8

jr_04f_50f1:
    ld [hl-], a                                   ; $50f1: $32
    ld l, a                                       ; $50f2: $6f
    ld c, e                                       ; $50f3: $4b
    and [hl]                                      ; $50f4: $a6
    ld e, a                                       ; $50f5: $5f
    cp e                                          ; $50f6: $bb
    ld [hl], h                                    ; $50f7: $74
    add hl, bc                                    ; $50f8: $09

jr_04f_50f9:
    add hl, bc                                    ; $50f9: $09
    add c                                         ; $50fa: $81
    ld [$4b8f], sp                                ; $50fb: $08 $8f $4b
    db $ed                                        ; $50fe: $ed
    add hl, sp                                    ; $50ff: $39
    inc c                                         ; $5100: $0c
    dec bc                                        ; $5101: $0b
    add hl, de                                    ; $5102: $19
    dec l                                         ; $5103: $2d
    ld e, c                                       ; $5104: $59
    ld [hl], $74                                  ; $5105: $36 $74
    call c, $f3a9                                 ; $5107: $dc $a9 $f3
    adc c                                         ; $510a: $89
    ld b, h                                       ; $510b: $44
    cpl                                           ; $510c: $2f
    rra                                           ; $510d: $1f
    sbc a                                         ; $510e: $9f
    ld e, c                                       ; $510f: $59
    inc hl                                        ; $5110: $23
    and [hl]                                      ; $5111: $a6
    ld a, l                                       ; $5112: $7d
    inc [hl]                                      ; $5113: $34
    db $ec                                        ; $5114: $ec
    jp nc, Jump_000_27d1                          ; $5115: $d2 $d1 $27

    ld l, d                                       ; $5118: $6a
    ld l, e                                       ; $5119: $6b
    jp c, $d8c1                                   ; $511a: $da $c1 $d8

    db $f4                                        ; $511d: $f4
    ld c, h                                       ; $511e: $4c
    ld c, d                                       ; $511f: $4a
    sbc e                                         ; $5120: $9b
    or a                                          ; $5121: $b7
    ld sp, hl                                     ; $5122: $f9
    sbc a                                         ; $5123: $9f
    ld d, h                                       ; $5124: $54
    rst $38                                       ; $5125: $ff
    ld l, d                                       ; $5126: $6a
    jr c, jr_04f_50f9                             ; $5127: $38 $d0

    ld hl, $e1b3                                  ; $5129: $21 $b3 $e1
    ei                                            ; $512c: $fb
    ld d, a                                       ; $512d: $57
    xor c                                         ; $512e: $a9
    add sp, -$23                                  ; $512f: $e8 $dd
    pop de                                        ; $5131: $d1
    db $eb                                        ; $5132: $eb
    ld a, $bd                                     ; $5133: $3e $bd
    cp [hl]                                       ; $5135: $be
    ld a, $cd                                     ; $5136: $3e $cd
    db $e4                                        ; $5138: $e4
    ld bc, $2bef                                  ; $5139: $01 $ef $2b
    jp z, Jump_04f_67b8                           ; $513c: $ca $b8 $67

    jr c, jr_04f_50f1                             ; $513f: $38 $b0

    ld [hl], h                                    ; $5141: $74
    ld [hl], $99                                  ; $5142: $36 $99
    halt                                          ; $5144: $76
    ld d, b                                       ; $5145: $50
    xor a                                         ; $5146: $af
    sbc [hl]                                      ; $5147: $9e
    dec c                                         ; $5148: $0d
    ld e, a                                       ; $5149: $5f
    ld h, [hl]                                    ; $514a: $66
    ld e, $5f                                     ; $514b: $1e $5f
    ld e, a                                       ; $514d: $5f
    ld a, $84                                     ; $514e: $3e $84
    ld b, h                                       ; $5150: $44
    adc a                                         ; $5151: $8f
    ld e, c                                       ; $5152: $59
    ld l, d                                       ; $5153: $6a
    ld a, b                                       ; $5154: $78
    rst $18                                       ; $5155: $df
    inc e                                         ; $5156: $1c
    ld a, $ae                                     ; $5157: $3e $ae
    ld a, c                                       ; $5159: $79
    ld e, c                                       ; $515a: $59
    ret z                                         ; $515b: $c8

    jp nc, Jump_04f_4d91                          ; $515c: $d2 $91 $4d

    ld [hl], l                                    ; $515f: $75
    or $90                                        ; $5160: $f6 $90
    ld sp, hl                                     ; $5162: $f9
    db $fd                                        ; $5163: $fd
    ld a, a                                       ; $5164: $7f
    xor a                                         ; $5165: $af
    cp l                                          ; $5166: $bd
    cp d                                          ; $5167: $ba
    ld a, h                                       ; $5168: $7c
    ret                                           ; $5169: $c9


    xor a                                         ; $516a: $af

jr_04f_516b:
    add [hl]                                      ; $516b: $86
    ld [$ab4f], sp                                ; $516c: $08 $4f $ab
    sub a                                         ; $516f: $97
    ld sp, hl                                     ; $5170: $f9
    add hl, hl                                    ; $5171: $29
    ld h, e                                       ; $5172: $63
    ld hl, $9802                                  ; $5173: $21 $02 $98
    sbc h                                         ; $5176: $9c
    ld e, $4d                                     ; $5177: $1e $4d
    inc e                                         ; $5179: $1c
    xor $9c                                       ; $517a: $ee $9c
    sbc a                                         ; $517c: $9f
    ld [c], a                                     ; $517d: $e2
    ld a, e                                       ; $517e: $7b
    ld a, [$df9d]                                 ; $517f: $fa $9d $df
    rst $38                                       ; $5182: $ff
    rlca                                          ; $5183: $07
    cp h                                          ; $5184: $bc
    xor a                                         ; $5185: $af
    jr z, jr_04f_516b                             ; $5186: $28 $e3

    sbc [hl]                                      ; $5188: $9e
    sub a                                         ; $5189: $97
    ld sp, hl                                     ; $518a: $f9
    sub l                                         ; $518b: $95
    ei                                            ; $518c: $fb
    sbc b                                         ; $518d: $98
    and l                                         ; $518e: $a5
    ld b, [hl]                                    ; $518f: $46
    ld c, d                                       ; $5190: $4a
    and [hl]                                      ; $5191: $a6
    adc h                                         ; $5192: $8c
    dec h                                         ; $5193: $25
    add a                                         ; $5194: $87
    ld c, b                                       ; $5195: $48
    xor l                                         ; $5196: $ad
    call c, $9367                                 ; $5197: $dc $67 $93
    add hl, hl                                    ; $519a: $29
    cp [hl]                                       ; $519b: $be
    ld [hl], a                                    ; $519c: $77
    ld h, l                                       ; $519d: $65
    ld [hl], a                                    ; $519e: $77
    db $f4                                        ; $519f: $f4
    cp d                                          ; $51a0: $ba
    ld c, a                                       ; $51a1: $4f
    xor a                                         ; $51a2: $af
    xor a                                         ; $51a3: $af
    ld b, e                                       ; $51a4: $43
    inc b                                         ; $51a5: $04
    adc a                                         ; $51a6: $8f
    ld c, e                                       ; $51a7: $4b
    db $ed                                        ; $51a8: $ed
    add sp, -$0b                                  ; $51a9: $e8 $f5
    ld h, c                                       ; $51ab: $61
    db $ed                                        ; $51ac: $ed
    jp z, $cc7d                                   ; $51ad: $ca $7d $cc

    ld d, d                                       ; $51b0: $52
    cp e                                          ; $51b1: $bb

jr_04f_51b2:
    ld [c], a                                     ; $51b2: $e2
    ld sp, $7aad                                  ; $51b3: $31 $ad $7a
    sbc c                                         ; $51b6: $99
    rra                                           ; $51b7: $1f
    ld h, l                                       ; $51b8: $65
    and l                                         ; $51b9: $a5
    ld c, b                                       ; $51ba: $48
    jr c, jr_04f_5201                             ; $51bb: $38 $44

    rst $20                                       ; $51bd: $e7
    pop hl                                        ; $51be: $e1
    db $d3                                        ; $51bf: $d3
    xor e                                         ; $51c0: $ab
    sub a                                         ; $51c1: $97
    ld e, c                                       ; $51c2: $59
    ld h, d                                       ; $51c3: $62
    pop hl                                        ; $51c4: $e1
    ld b, b                                       ; $51c5: $40
    ld a, [de]                                    ; $51c6: $1a
    ld a, [hl-]                                   ; $51c7: $3a
    cp a                                          ; $51c8: $bf
    rst $38                                       ; $51c9: $ff
    and a                                         ; $51ca: $a7
    adc e                                         ; $51cb: $8b
    call nc, $e8e4                                ; $51cc: $d4 $e4 $e8
    reti                                          ; $51cf: $d9


    ld h, h                                       ; $51d0: $64
    ld e, d                                       ; $51d1: $5a
    push af                                       ; $51d2: $f5
    ld l, h                                       ; $51d3: $6c
    jr c, jr_04f_51b2                             ; $51d4: $38 $dc

    db $e3                                        ; $51d6: $e3
    ld d, d                                       ; $51d7: $52
    db $d3                                        ; $51d8: $d3
    rrca                                          ; $51d9: $0f
    pop af                                        ; $51da: $f1
    ld [$4769], a                                 ; $51db: $ea $69 $47
    ld b, e                                       ; $51de: $43
    inc b                                         ; $51df: $04
    jr nz, jr_04f_522f                            ; $51e0: $20 $4d

    ld a, e                                       ; $51e2: $7b
    ld hl, sp-$78                                 ; $51e3: $f8 $88
    ret                                           ; $51e5: $c9


    ld e, [hl]                                    ; $51e6: $5e
    cp l                                          ; $51e7: $bd
    rst $10                                       ; $51e8: $d7
    ld e, [hl]                                    ; $51e9: $5e
    ld e, l                                       ; $51ea: $5d
    cp [hl]                                       ; $51eb: $be
    db $e4                                        ; $51ec: $e4
    ld d, a                                       ; $51ed: $57
    adc a                                         ; $51ee: $8f
    add [hl]                                      ; $51ef: $86
    adc h                                         ; $51f0: $8c
    ld e, c                                       ; $51f1: $59
    ld l, d                                       ; $51f2: $6a
    ld e, d                                       ; $51f3: $5a
    push af                                       ; $51f4: $f5

jr_04f_51f5:
    xor [hl]                                      ; $51f5: $ae
    ld a, b                                       ; $51f6: $78
    inc l                                         ; $51f7: $2c
    di                                            ; $51f8: $f3
    and e                                         ; $51f9: $a3
    xor h                                         ; $51fa: $ac
    inc d                                         ; $51fb: $14
    add hl, bc                                    ; $51fc: $09
    add a                                         ; $51fd: $87
    dec de                                        ; $51fe: $1b
    ret z                                         ; $51ff: $c8

    sub d                                         ; $5200: $92

jr_04f_5201:
    ld sp, $8d4b                                  ; $5201: $31 $4b $8d
    db $e3                                        ; $5204: $e3
    rst $30                                       ; $5205: $f7
    jp c, $cbab                                   ; $5206: $da $ab $cb

    sub a                                         ; $5209: $97
    db $fc                                        ; $520a: $fc
    ld [$0847], a                                 ; $520b: $ea $47 $08
    adc a                                         ; $520e: $8f
    dec bc                                        ; $520f: $0b
    ld [hl+], a                                   ; $5210: $22
    rrca                                          ; $5211: $0f
    ld c, c                                       ; $5212: $49
    adc a                                         ; $5213: $8f
    sub h                                         ; $5214: $94
    adc h                                         ; $5215: $8c
    ld e, c                                       ; $5216: $59
    ld l, d                                       ; $5217: $6a
    reti                                          ; $5218: $d9


    ld sp, hl                                     ; $5219: $f9
    ld sp, hl                                     ; $521a: $f9
    db $fd                                        ; $521b: $fd
    ld a, a                                       ; $521c: $7f
    adc $3c                                       ; $521d: $ce $3c
    inc h                                         ; $521f: $24
    ei                                            ; $5220: $fb
    inc hl                                        ; $5221: $23
    inc b                                         ; $5222: $04
    and b                                         ; $5223: $a0
    ld a, e                                       ; $5224: $7b
    ldh [$8c], a                                  ; $5225: $e0 $8c
    ld a, e                                       ; $5227: $7b
    db $f4                                        ; $5228: $f4
    or h                                          ; $5229: $b4
    ld [$2bd1], a                                 ; $522a: $ea $d1 $2b
    di                                            ; $522d: $f3
    ei                                            ; $522e: $fb

jr_04f_522f:
    ccf                                           ; $522f: $3f
    rst $28                                       ; $5230: $ef
    pop af                                        ; $5231: $f1
    ld [hl], e                                    ; $5232: $73
    xor h                                         ; $5233: $ac
    call c, $f8a7                                 ; $5234: $dc $a7 $f8
    ld e, l                                       ; $5237: $5d
    reti                                          ; $5238: $d9


    dec e                                         ; $5239: $1d

Call_04f_523a:
    cp l                                          ; $523a: $bd
    xor $d3                                       ; $523b: $ee $d3
    db $eb                                        ; $523d: $eb
    db $eb                                        ; $523e: $eb
    ld h, a                                       ; $523f: $67
    ld a, e                                       ; $5240: $7b
    rst $28                                       ; $5241: $ef
    cp l                                          ; $5242: $bd
    ld [hl], a                                    ; $5243: $77
    rst $08                                       ; $5244: $cf
    ld h, [hl]                                    ; $5245: $66
    ld d, d                                       ; $5246: $52
    jp c, $96bc                                   ; $5247: $da $bc $96

    ld hl, sp-$3e                                 ; $524a: $f8 $c2
    ld a, l                                       ; $524c: $7d
    call nz, $8fb4                                ; $524d: $c4 $b4 $8f
    add [hl]                                      ; $5250: $86
    ld e, l                                       ; $5251: $5d
    ld a, [hl-]                                   ; $5252: $3a
    ld a, [$6d44]                                 ; $5253: $fa $44 $6d
    ld c, l                                       ; $5256: $4d
    dec sp                                        ; $5257: $3b
    jr jr_04f_51f5                                ; $5258: $18 $9b

    sbc [hl]                                      ; $525a: $9e
    ld c, c                                       ; $525b: $49
    ld l, c                                       ; $525c: $69
    di                                            ; $525d: $f3
    ld [hl], $ff                                  ; $525e: $36 $ff
    sub e                                         ; $5260: $93
    ld [$0d5f], a                                 ; $5261: $ea $5f $0d
    ld de, $f8c0                                  ; $5264: $11 $c0 $f8

Jump_04f_5267:
    ld e, $b3                                     ; $5267: $1e $b3
    call nc, Call_000_2c72                        ; $5269: $d4 $72 $2c
    ld a, d                                       ; $526c: $7a
    jp nz, $914a                                  ; $526d: $c2 $4a $91

    ld hl, sp+$67                                 ; $5270: $f8 $67
    res 6, a                                      ; $5272: $cb $b7
    rra                                           ; $5274: $1f
    ld hl, $470f                                  ; $5275: $21 $0f $47
    rst $28                                       ; $5278: $ef
    add sp, -$27                                  ; $5279: $e8 $d9
    db $10                                        ; $527b: $10
    jr c, @-$2e                                   ; $527c: $38 $d0

    dec a                                         ; $527e: $3d
    ld [hl], b                                    ; $527f: $70
    add $3d                                       ; $5280: $c6 $3d
    ld a, d                                       ; $5282: $7a
    call nz, $1a50                                ; $5283: $c4 $50 $1a
    cp l                                          ; $5286: $bd
    ld [hl], d                                    ; $5287: $72
    sbc a                                         ; $5288: $9f
    ld [c], a                                     ; $5289: $e2
    daa                                           ; $528a: $27
    pop de                                        ; $528b: $d1
    set 1, h                                      ; $528c: $cb $cc
    db $e3                                        ; $528e: $e3
    db $eb                                        ; $528f: $eb
    ld [hl], b                                    ; $5290: $70
    ld c, a                                       ; $5291: $4f
    rst $28                                       ; $5292: $ef
    ld [hl], d                                    ; $5293: $72
    db $e4                                        ; $5294: $e4
    push hl                                       ; $5295: $e5
    sub b                                         ; $5296: $90
    or e                                          ; $5297: $b3
    dec a                                         ; $5298: $3d
    ld d, h                                       ; $5299: $54
    scf                                           ; $529a: $37
    dec bc                                        ; $529b: $0b
    ld [hl+], a                                   ; $529c: $22
    sbc b                                         ; $529d: $98
    sbc h                                         ; $529e: $9c
    ld e, $4d                                     ; $529f: $1e $4d
    inc e                                         ; $52a1: $1c
    xor $e9                                       ; $52a2: $ee $e9
    dec e                                         ; $52a4: $1d
    ld h, a                                       ; $52a5: $67
    jp c, $e1f3                                   ; $52a6: $da $f3 $e1

    ld e, $3d                                     ; $52a9: $1e $3d
    cp a                                          ; $52ab: $bf
    rst $38                                       ; $52ac: $ff
    rst $08                                       ; $52ad: $cf
    add [hl]                                      ; $52ae: $86
    ld c, a                                       ; $52af: $4f
    ld e, b                                       ; $52b0: $58
    dec [hl]                                      ; $52b1: $35
    cp l                                          ; $52b2: $bd
    cp [hl]                                       ; $52b3: $be
    ld l, [hl]                                    ; $52b4: $6e
    ld l, b                                       ; $52b5: $68
    di                                            ; $52b6: $f3
    ld [hl], $1c                                  ; $52b7: $36 $1c
    ld c, $d8                                     ; $52b9: $0e $d8
    jp hl                                         ; $52bb: $e9


    inc sp                                        ; $52bc: $33
    ld b, a                                       ; $52bd: $47
    jp Jump_04f_5e8e                              ; $52be: $c3 $8e $5e


    dec b                                         ; $52c1: $05
    ld de, $eb4f                                  ; $52c2: $11 $4f $eb
    db $eb                                        ; $52c5: $eb
    ld a, e                                       ; $52c6: $7b
    rst $28                                       ; $52c7: $ef
    cp l                                          ; $52c8: $bd
    ld [hl], a                                    ; $52c9: $77
    rst $30                                       ; $52ca: $f7
    xor a                                         ; $52cb: $af
    ld d, d                                       ; $52cc: $52
    pop de                                        ; $52cd: $d1
    db $d3                                        ; $52ce: $d3
    xor [hl]                                      ; $52cf: $ae
    di                                            ; $52d0: $f3

Call_04f_52d1:
    ld c, $07                                     ; $52d1: $0e $07
    sbc h                                         ; $52d3: $9c
    ld e, a                                       ; $52d4: $5f
    cp d                                          ; $52d5: $ba
    cp d                                          ; $52d6: $ba
    halt                                          ; $52d7: $76
    ld h, l                                       ; $52d8: $65
    ld [hl], a                                    ; $52d9: $77
    ld [hl], $7c                                  ; $52da: $36 $7c
    ld a, d                                       ; $52dc: $7a
    ld a, l                                       ; $52dd: $7d
    ld a, l                                       ; $52de: $7d
    ld [hl], d                                    ; $52df: $72
    and a                                         ; $52e0: $a7
    ld d, l                                       ; $52e1: $55
    rst $08                                       ; $52e2: $cf

Call_04f_52e3:
Jump_04f_52e3:
    rst $28                                       ; $52e3: $ef
    rst $38                                       ; $52e4: $ff
    cp h                                          ; $52e5: $bc
    rst $00                                       ; $52e6: $c7
    rst $08                                       ; $52e7: $cf
    ld sp, $ffbf                                  ; $52e8: $31 $bf $ff
    jp $ef01                                      ; $52eb: $c3 $01 $ef


    dec hl                                        ; $52ee: $2b
    jp z, $e7b8                                   ; $52ef: $ca $b8 $e7

    ld a, c                                       ; $52f2: $79
    push af                                       ; $52f3: $f5
    xor [hl]                                      ; $52f4: $ae
    ld a, b                                       ; $52f5: $78
    xor h                                         ; $52f6: $ac
    inc h                                         ; $52f7: $24
    db $eb                                        ; $52f8: $eb
    push de                                       ; $52f9: $d5
    db $e3                                        ; $52fa: $e3
    ld c, [hl]                                    ; $52fb: $4e
    dec a                                         ; $52fc: $3d
    xor $d4                                       ; $52fd: $ee $d4
    rst $18                                       ; $52ff: $df
    ld [hl], h                                    ; $5300: $74
    reti                                          ; $5301: $d9


    jr jr_04f_537b                                ; $5302: $18 $77

    ld [$fca0], a                                 ; $5304: $ea $a0 $fc
    ld e, a                                       ; $5307: $5f
    db $fc                                        ; $5308: $fc
    rra                                           ; $5309: $1f
    cp l                                          ; $530a: $bd
    rra                                           ; $530b: $1f
    sub h                                         ; $530c: $94
    ld d, [hl]                                    ; $530d: $56
    ld b, e                                       ; $530e: $43
    inc b                                         ; $530f: $04
    adc a                                         ; $5310: $8f
    ld c, e                                       ; $5311: $4b
    dec l                                         ; $5312: $2d
    dec e                                         ; $5313: $1d
    cp l                                          ; $5314: $bd
    call z, $0b4f                                 ; $5315: $cc $4f $0b
    sbc d                                         ; $5318: $9a
    adc c                                         ; $5319: $89
    adc a                                         ; $531a: $8f
    or d                                          ; $531b: $b2
    ld d, d                                       ; $531c: $52
    inc h                                         ; $531d: $24
    ld a, h                                       ; $531e: $7c
    add [hl]                                      ; $531f: $86
    ld l, $e9                                     ; $5320: $2e $e9
    ld a, h                                       ; $5322: $7c
    db $10                                        ; $5323: $10
    ccf                                           ; $5324: $3f
    ld e, e                                       ; $5325: $5b
    cp [hl]                                       ; $5326: $be
    ld a, l                                       ; $5327: $7d
    ld [hl], $1a                                  ; $5328: $36 $1a
    ld [hl-], a                                   ; $532a: $32
    ld h, [hl]                                    ; $532b: $66
    xor c                                         ; $532c: $a9
    ld d, c                                       ; $532d: $51
    ld a, $7b                                     ; $532e: $3e $7b
    call z, $ffef                                 ; $5330: $cc $ef $ff
    jp hl                                         ; $5333: $e9


    ld [hl+], a                                   ; $5334: $22
    dec [hl]                                      ; $5335: $35
    cp a                                          ; $5336: $bf
    rst $38                                       ; $5337: $ff
    rst $28                                       ; $5338: $ef
    sbc e                                         ; $5339: $9b
    ld [hl], h                                    ; $533a: $74
    sbc d                                         ; $533b: $9a
    dec h                                         ; $533c: $25
    db $10                                        ; $533d: $10
    ld bc, $5918                                  ; $533e: $01 $18 $59
    ld a, [$7dd1]                                 ; $5341: $fa $d1 $7d
    ld [hl], $1b                                  ; $5344: $36 $1b
    ld [hl-], a                                   ; $5346: $32
    db $ed                                        ; $5347: $ed
    add sp, -$03                                  ; $5348: $e8 $fd
    inc h                                         ; $534a: $24
    ld b, l                                       ; $534b: $45
    ld c, d                                       ; $534c: $4a
    halt                                          ; $534d: $76
    db $f4                                        ; $534e: $f4
    or d                                          ; $534f: $b2
    rra                                           ; $5350: $1f
    and d                                         ; $5351: $a2

Call_04f_5352:
    inc l                                         ; $5352: $2c
    ld b, h                                       ; $5353: $44
    ld c, a                                       ; $5354: $4f
    xor e                                         ; $5355: $ab
    and a                                         ; $5356: $a7
    rra                                           ; $5357: $1f
    ld a, [c]                                     ; $5358: $f2
    xor a                                         ; $5359: $af
    sbc d                                         ; $535a: $9a
    ld [c], a                                     ; $535b: $e2
    rst $20                                       ; $535c: $e7
    rst $30                                       ; $535d: $f7
    rst $38                                       ; $535e: $ff
    ret                                           ; $535f: $c9


    sub c                                         ; $5360: $91
    cp l                                          ; $5361: $bd
    or $93                                        ; $5362: $f6 $93
    inc d                                         ; $5364: $14
    add hl, hl                                    ; $5365: $29
    adc b                                         ; $5366: $88
    nop                                           ; $5367: $00
    ld c, a                                       ; $5368: $4f
    xor e                                         ; $5369: $ab
    and a                                         ; $536a: $a7
    rra                                           ; $536b: $1f
    ld a, [c]                                     ; $536c: $f2
    xor a                                         ; $536d: $af
    sbc d                                         ; $536e: $9a
    ld [c], a                                     ; $536f: $e2
    rst $20                                       ; $5370: $e7
    rst $30                                       ; $5371: $f7
    rst $38                                       ; $5372: $ff
    ld [hl], c                                    ; $5373: $71
    and a                                         ; $5374: $a7
    ld c, $c5                                     ; $5375: $0e $c5
    add a                                         ; $5377: $87
    ret c                                         ; $5378: $d8

    ret c                                         ; $5379: $d8

    ld c, a                                       ; $537a: $4f

jr_04f_537b:
    ld d, d                                       ; $537b: $52
    and h                                         ; $537c: $a4
    jr nz, jr_04f_5381                            ; $537d: $20 $02

    sbc b                                         ; $537f: $98
    ld a, [hl-]                                   ; $5380: $3a

jr_04f_5381:
    rra                                           ; $5381: $1f
    call nz, $f46b                                ; $5382: $c4 $6b $f4
    xor d                                         ; $5385: $aa
    or e                                          ; $5386: $b3
    push hl                                       ; $5387: $e5
    db $db                                        ; $5388: $db
    ld h, a                                       ; $5389: $67
    and e                                         ; $538a: $a3
    ld d, a                                       ; $538b: $57
    ld b, [hl]                                    ; $538c: $46
    ld a, [hl+]                                   ; $538d: $2a
    rst $20                                       ; $538e: $e7
    ld a, [$adbc]                                 ; $538f: $fa $bc $ad
    dec e                                         ; $5392: $1d
    dec a                                         ; $5393: $3d
    rst $28                                       ; $5394: $ef
    jp z, Jump_04f_4157                           ; $5395: $ca $57 $41

    inc b                                         ; $5398: $04
    ld c, a                                       ; $5399: $4f
    xor e                                         ; $539a: $ab
    rst $00                                       ; $539b: $c7
    sbc l                                         ; $539c: $9d
    ld a, [hl-]                                   ; $539d: $3a
    ld e, a                                       ; $539e: $5f
    ld [c], a                                     ; $539f: $e2
    ld d, a                                       ; $53a0: $57
    sbc l                                         ; $53a1: $9d
    dec l                                         ; $53a2: $2d
    rst $18                                       ; $53a3: $df
    ld a, $9b                                     ; $53a4: $3e $9b
    adc $b7                                       ; $53a6: $ce $b7
    ld c, a                                       ; $53a8: $4f
    ld e, b                                       ; $53a9: $58
    dec [hl]                                      ; $53aa: $35
    ld h, l                                       ; $53ab: $65
    cp [hl]                                       ; $53ac: $be
    cp [hl]                                       ; $53ad: $be
    and e                                         ; $53ae: $a3
    rst $00                                       ; $53af: $c7
    sbc c                                         ; $53b0: $99
    halt                                          ; $53b1: $76
    xor [hl]                                      ; $53b2: $ae
    cp d                                          ; $53b3: $ba
    call nz, $b4c6                                ; $53b4: $c4 $c6 $b4
    ld a, [$2ae4]                                 ; $53b7: $fa $e4 $2a
    add a                                         ; $53ba: $87
    ld [$d50f], sp                                ; $53bb: $08 $0f $d5
    or e                                          ; $53be: $b3
    ret                                           ; $53bf: $c9


    adc b                                         ; $53c0: $88
    ld l, c                                       ; $53c1: $69
    rrca                                          ; $53c2: $0f
    ld a, a                                       ; $53c3: $7f
    add h                                         ; $53c4: $84
    nop                                           ; $53c5: $00
    ld h, b                                       ; $53c6: $60
    add d                                         ; $53c7: $82
    add hl, bc                                    ; $53c8: $09
    ld de, $7860                                  ; $53c9: $11 $60 $78
    db $fd                                        ; $53cc: $fd
    ld hl, sp+$67                                 ; $53cd: $f8 $67
    and e                                         ; $53cf: $a3
    ld hl, $0ed3                                  ; $53d0: $21 $d3 $0e
    ld [$1b35], a                                 ; $53d3: $ea $35 $1b
    cp [hl]                                       ; $53d6: $be
    inc l                                         ; $53d7: $2c
    push de                                       ; $53d8: $d5
    ld c, $f7                                     ; $53d9: $0e $f7
    cp b                                          ; $53db: $b8
    call nc, $c948                                ; $53dc: $d4 $48 $c9
    xor [hl]                                      ; $53df: $ae
    ld a, b                                       ; $53e0: $78
    ld c, h                                       ; $53e1: $4c
    ccf                                           ; $53e2: $3f
    call nz, $da6b                                ; $53e3: $c4 $6b $da
    pop de                                        ; $53e6: $d1
    db $d3                                        ; $53e7: $d3
    ld [c], a                                     ; $53e8: $e2
    rst $10                                       ; $53e9: $d7
    ld l, h                                       ; $53ea: $6c
    xor c                                         ; $53eb: $a9
    db $10                                        ; $53ec: $10
    adc b                                         ; $53ed: $88
    nop                                           ; $53ee: $00
    ld h, b                                       ; $53ef: $60
    adc [hl]                                      ; $53f0: $8e
    sbc [hl]                                      ; $53f1: $9e
    ld c, l                                       ; $53f2: $4d
    halt                                          ; $53f3: $76
    db $f4                                        ; $53f4: $f4
    ret z                                         ; $53f5: $c8

    xor a                                         ; $53f6: $af
    ld e, $29                                     ; $53f7: $1e $29
    sbc c                                         ; $53f9: $99
    ld a, [hl]                                    ; $53fa: $7e
    rst $00                                       ; $53fb: $c7
    sub e                                         ; $53fc: $93
    sbc d                                         ; $53fd: $9a
    rst $18                                       ; $53fe: $df
    rst $38                                       ; $53ff: $ff
    db $d3                                        ; $5400: $d3
    ld b, l                                       ; $5401: $45
    ld l, d                                       ; $5402: $6a
    ld a, [hl]                                    ; $5403: $7e
    rst $38                                       ; $5404: $ff
    rst $18                                       ; $5405: $df
    add e                                         ; $5406: $83
    ld d, c                                       ; $5407: $51
    adc h                                         ; $5408: $8c
    xor d                                         ; $5409: $aa
    dec a                                         ; $540a: $3d
    sbc a                                         ; $540b: $9f
    db $ed                                        ; $540c: $ed
    and c                                         ; $540d: $a1
    cp d                                          ; $540e: $ba
    ld e, c                                       ; $540f: $59
    db $10                                        ; $5410: $10
    ld bc, $c9e7                                  ; $5411: $01 $e7 $c9
    db $f4                                        ; $5414: $f4
    ld [$9d65], a                                 ; $5415: $ea $65 $9d
    ld l, a                                       ; $5418: $6f
    ld e, a                                       ; $5419: $5f
    ld h, $65                                     ; $541a: $26 $65
    res 3, [hl]                                   ; $541c: $cb $9e
    adc l                                         ; $541e: $8d
    add [hl]                                      ; $541f: $86
    ld c, h                                       ; $5420: $4c
    sub d                                         ; $5421: $92
    dec e                                         ; $5422: $1d
    dec a                                         ; $5423: $3d
    ld a, e                                       ; $5424: $7b
    and l                                         ; $5425: $a5
    sub [hl]                                      ; $5426: $96
    ld sp, hl                                     ; $5427: $f9
    sbc $3f                                       ; $5428: $de $3f
    adc b                                         ; $542a: $88
    rla                                           ; $542b: $17
    ld b, h                                       ; $542c: $44
    ld h, b                                       ; $542d: $60
    xor $b4                                       ; $542e: $ee $b4
    ld [$d5e9], a                                 ; $5430: $ea $e9 $d5
    rst $10                                       ; $5433: $d7
    rst $20                                       ; $5434: $e7
    rst $30                                       ; $5435: $f7
    rst $38                                       ; $5436: $ff
    ld l, c                                       ; $5437: $69
    pop af                                        ; $5438: $f1
    xor e                                         ; $5439: $ab
    ld b, e                                       ; $543a: $43
    adc $96                                       ; $543b: $ce $96
    and e                                         ; $543d: $a3
    rst $00                                       ; $543e: $c7
    inc l                                         ; $543f: $2c
    dec b                                         ; $5440: $05
    ld de, $ee60                                  ; $5441: $11 $60 $ee
    ld [hl], d                                    ; $5444: $72
    db $f4                                        ; $5445: $f4
    jr z, jr_04f_5473                             ; $5446: $28 $2b

    ld b, l                                       ; $5448: $45
    jp nz, $f5c7                                  ; $5449: $c2 $c7 $f5

    call Call_000_3aa4                            ; $544c: $cd $a4 $3a
    sub [hl]                                      ; $544f: $96
    ld hl, sp+$0e                                 ; $5450: $f8 $0e
    ld e, c                                       ; $5452: $59
    cp [hl]                                       ; $5453: $be
    reti                                          ; $5454: $d9


    rst $00                                       ; $5455: $c7
    inc l                                         ; $5456: $2c
    or l                                          ; $5457: $b5
    call z, Call_04f_45ab                         ; $5458: $cc $ab $45
    ld b, e                                       ; $545b: $43
    inc b                                         ; $545c: $04
    adc a                                         ; $545d: $8f
    ld c, e                                       ; $545e: $4b
    ld c, l                                       ; $545f: $4d
    inc sp                                        ; $5460: $33
    jr c, jr_04f_54c1                             ; $5461: $38 $5e

    ld a, c                                       ; $5463: $79
    push hl                                       ; $5464: $e5
    cp [hl]                                       ; $5465: $be
    db $ec                                        ; $5466: $ec
    ld a, l                                       ; $5467: $7d
    ld l, l                                       ; $5468: $6d
    ret z                                         ; $5469: $c8

    inc d                                         ; $546a: $14
    rst $18                                       ; $546b: $df
    ld c, e                                       ; $546c: $4b
    rra                                           ; $546d: $1f
    xor $1d                                       ; $546e: $ee $1d
    db $e3                                        ; $5470: $e3
    ld c, [hl]                                    ; $5471: $4e
    cp l                                          ; $5472: $bd

jr_04f_5473:
    add sp, -$27                                  ; $5473: $e8 $d9
    sub b                                         ; $5475: $90
    ld l, c                                       ; $5476: $69
    ld b, a                                       ; $5477: $47
    ld c, a                                       ; $5478: $4f
    pop af                                        ; $5479: $f1
    and d                                         ; $547a: $a2
    ld b, d                                       ; $547b: $42
    adc $96                                       ; $547c: $ce $96
    ld l, a                                       ; $547e: $6f
    ld b, e                                       ; $547f: $43
    inc b                                         ; $5480: $04
    ld c, a                                       ; $5481: $4f
    rst $28                                       ; $5482: $ef
    jr c, @-$40                                   ; $5483: $38 $be

    sub a                                         ; $5485: $97
    jr c, jr_04f_54ff                             ; $5486: $38 $77

    or h                                          ; $5488: $b4
    xor l                                         ; $5489: $ad
    add l                                         ; $548a: $85
    ei                                            ; $548b: $fb
    add sp, $15                                   ; $548c: $e8 $15
    adc c                                         ; $548e: $89
    ld c, h                                       ; $548f: $4c
    ld e, c                                       ; $5490: $59
    ld [c], a                                     ; $5491: $e2
    di                                            ; $5492: $f3
    ei                                            ; $5493: $fb
    rst $38                                       ; $5494: $ff
    and d                                         ; $5495: $a2
    ld [hl], a                                    ; $5496: $77
    ld [hl], h                                    ; $5497: $74
    call $c9d0                                    ; $5498: $cd $d0 $c9
    dec e                                         ; $549b: $1d
    ld h, a                                       ; $549c: $67
    jp c, $e1f3                                   ; $549d: $da $f3 $e1

    ld e, $bd                                     ; $54a0: $1e $bd
    ld [hl], d                                    ; $54a2: $72
    rra                                           ; $54a3: $1f
    ld [hl], a                                    ; $54a4: $77
    ld [$ba6f], a                                 ; $54a5: $ea $6f $ba
    jr nz, jr_04f_54ac                            ; $54a8: $20 $02

    add b                                         ; $54aa: $80
    rrca                                          ; $54ab: $0f

jr_04f_54ac:
    rst $30                                       ; $54ac: $f7
    adc [hl]                                      ; $54ad: $8e
    ld a, l                                       ; $54ae: $7d
    ld d, [hl]                                    ; $54af: $56
    adc d                                         ; $54b0: $8a
    call nc, $c86c                                ; $54b1: $d4 $6c $c8
    or h                                          ; $54b4: $b4
    and e                                         ; $54b5: $a3
    and a                                         ; $54b6: $a7
    ld a, b                                       ; $54b7: $78
    ld d, c                                       ; $54b8: $51
    ld hl, $cb67                                  ; $54b9: $21 $67 $cb
    or a                                          ; $54bc: $b7
    ld hl, $8f02                                  ; $54bd: $21 $02 $8f
    ld c, e                                       ; $54c0: $4b

jr_04f_54c1:
    ld c, l                                       ; $54c1: $4d
    inc sp                                        ; $54c2: $33
    jr c, jr_04f_5523                             ; $54c3: $38 $5e

    ld a, c                                       ; $54c5: $79
    push hl                                       ; $54c6: $e5
    ld a, $b9                                     ; $54c7: $3e $b9
    cp e                                          ; $54c9: $bb
    ld [c], a                                     ; $54ca: $e2
    or c                                          ; $54cb: $b1
    db $f4                                        ; $54cc: $f4
    cp a                                          ; $54cd: $bf
    cp l                                          ; $54ce: $bd
    ld a, a                                       ; $54cf: $7f
    ld c, c                                       ; $54d0: $49
    dec l                                         ; $54d1: $2d
    sub e                                         ; $54d2: $93
    or d                                          ; $54d3: $b2
    ld h, l                                       ; $54d4: $65
    ld h, a                                       ; $54d5: $67
    ld b, e                                       ; $54d6: $43
    and [hl]                                      ; $54d7: $a6
    dec e                                         ; $54d8: $1d
    dec a                                         ; $54d9: $3d
    push bc                                       ; $54da: $c5
    adc e                                         ; $54db: $8b
    ld a, [bc]                                    ; $54dc: $0a
    add hl, sp                                    ; $54dd: $39
    ld e, e                                       ; $54de: $5b
    cp [hl]                                       ; $54df: $be
    dec c                                         ; $54e0: $0d
    ld de, $ee60                                  ; $54e1: $11 $60 $ee
    adc [hl]                                      ; $54e4: $8e
    ld e, $65                                     ; $54e5: $1e $65
    and l                                         ; $54e7: $a5
    ld c, b                                       ; $54e8: $48
    ld hl, sp-$58                                 ; $54e9: $f8 $a8
    or c                                          ; $54eb: $b1
    ld d, a                                       ; $54ec: $57
    sbc l                                         ; $54ed: $9d
    dec l                                         ; $54ee: $2d
    rst $18                                       ; $54ef: $df
    add [hl]                                      ; $54f0: $86
    ld [$e1e7], sp                                ; $54f1: $08 $e7 $e1
    dec sp                                        ; $54f4: $3b
    ld a, d                                       ; $54f5: $7a
    jp hl                                         ; $54f6: $e9


    xor [hl]                                      ; $54f7: $ae
    add hl, hl                                    ; $54f8: $29
    and [hl]                                      ; $54f9: $a6
    ld l, c                                       ; $54fa: $69
    ld e, a                                       ; $54fb: $5f
    cp c                                          ; $54fc: $b9
    adc a                                         ; $54fd: $8f
    rst $30                                       ; $54fe: $f7

jr_04f_54ff:
    ld l, b                                       ; $54ff: $68
    db $fd                                        ; $5500: $fd
    db $10                                        ; $5501: $10
    ld e, e                                       ; $5502: $5b
    db $e3                                        ; $5503: $e3
    ld c, [hl]                                    ; $5504: $4e
    cp l                                          ; $5505: $bd
    sub b                                         ; $5506: $90
    add hl, bc                                    ; $5507: $09
    ld l, e                                       ; $5508: $6b
    reti                                          ; $5509: $d9


    ei                                            ; $550a: $fb
    jp c, $e5b3                                   ; $550b: $da $b3 $e5

    db $db                                        ; $550e: $db
    ld [$ee60], sp                                ; $550f: $08 $60 $ee
    adc [hl]                                      ; $5512: $8e
    sbc [hl]                                      ; $5513: $9e
    ld e, $4d                                     ; $5514: $1e $4d
    cp $55                                        ; $5516: $fe $55
    ld hl, $e2bb                                  ; $5518: $21 $bb $e2
    ld sp, $b21b                                  ; $551b: $31 $1b $b2
    ld l, h                                       ; $551e: $6c
    add sp, $54                                   ; $551f: $e8 $54
    db $f4                                        ; $5521: $f4
    ld [de], a                                    ; $5522: $12

jr_04f_5523:
    inc e                                         ; $5523: $1c
    ccf                                           ; $5524: $3f
    ld e, e                                       ; $5525: $5b
    cp [hl]                                       ; $5526: $be
    dec c                                         ; $5527: $0d
    ld de, $f10f                                  ; $5528: $11 $0f $f1
    xor e                                         ; $552b: $ab
    ld b, e                                       ; $552c: $43
    ld b, [hl]                                    ; $552d: $46
    ld sp, hl                                     ; $552e: $f9
    db $ec                                        ; $552f: $ec
    ld sp, $8872                                  ; $5530: $31 $72 $88
    call nc, $0aae                                ; $5533: $d4 $ae $0a
    ld e, c                                       ; $5536: $59
    db $f4                                        ; $5537: $f4
    db $f4                                        ; $5538: $f4
    ld l, e                                       ; $5539: $6b
    ld h, a                                       ; $553a: $67
    jp $1da7                                      ; $553b: $c3 $a7 $1d


    cp l                                          ; $553e: $bd
    ld e, a                                       ; $553f: $5f
    ld a, [hl+]                                   ; $5540: $2a
    db $fc                                        ; $5541: $fc
    ld l, h                                       ; $5542: $6c
    ld sp, hl                                     ; $5543: $f9
    ld [hl], $44                                  ; $5544: $36 $44
    ld h, b                                       ; $5546: $60
    xor $d2                                       ; $5547: $ee $d2
    and a                                         ; $5549: $a7
    ld h, [hl]                                    ; $554a: $66
    ld d, [hl]                                    ; $554b: $56
    cpl                                           ; $554c: $2f
    db $fd                                        ; $554d: $fd
    rst $28                                       ; $554e: $ef
    ld [hl], h                                    ; $554f: $74
    cp [hl]                                       ; $5550: $be
    rst $00                                       ; $5551: $c7
    sub l                                         ; $5552: $95
    ld l, [hl]                                    ; $5553: $6e
    ld a, [$493a]                                 ; $5554: $fa $3a $49
    call nz, Call_000_2d9e                        ; $5557: $c4 $9e $2d
    rst $18                                       ; $555a: $df
    add [hl]                                      ; $555b: $86
    ld [$6ec0], sp                                ; $555c: $08 $c0 $6e
    adc d                                         ; $555f: $8a
    call z, $f326                                 ; $5560: $cc $26 $f3
    ld d, d                                       ; $5563: $52
    jp Jump_000_11f9                              ; $5564: $c3 $f9 $11


    db $d3                                        ; $5567: $d3
    ld e, $fe                                     ; $5568: $1e $fe
    ld [$8f01], sp                                ; $556a: $08 $01 $8f
    db $eb                                        ; $556d: $eb
    ld l, h                                       ; $556e: $6c
    ld [hl], $7c                                  ; $556f: $36 $7c
    call c, $914d                                 ; $5571: $dc $4d $91
    ld sp, $c14b                                  ; $5574: $31 $4b $c1
    dec a                                         ; $5577: $3d
    inc e                                         ; $5578: $1c
    cp l                                          ; $5579: $bd
    and e                                         ; $557a: $a3
    ld h, a                                       ; $557b: $67
    xor a                                         ; $557c: $af
    ld c, h                                       ; $557d: $4c
    xor a                                         ; $557e: $af
    xor a                                         ; $557f: $af
    dec bc                                        ; $5580: $0b
    dec hl                                        ; $5581: $2b
    ld b, l                                       ; $5582: $45
    ld [c], a                                     ; $5583: $e2
    jp $bd3d                                      ; $5584: $c3 $3d $bd


    add hl, sp                                    ; $5587: $39
    ld a, e                                       ; $5588: $7b
    call z, Call_000_2b26                         ; $5589: $cc $26 $2b
    rst $30                                       ; $558c: $f7
    reti                                          ; $558d: $d9


    ldh a, [$71]                                  ; $558e: $f0 $71
    dec h                                         ; $5590: $25
    sub d                                         ; $5591: $92
    rla                                           ; $5592: $17
    xor $a3                                       ; $5593: $ee $a3
    ld b, [hl]                                    ; $5595: $46
    or d                                          ; $5596: $b2
    ld b, a                                       ; $5597: $47
    rst $28                                       ; $5598: $ef
    adc $5e                                       ; $5599: $ce $5e
    rst $30                                       ; $559b: $f7
    jp hl                                         ; $559c: $e9


    push af                                       ; $559d: $f5
    push af                                       ; $559e: $f5
    ld b, a                                       ; $559f: $47
    ld [$8260], sp                                ; $55a0: $08 $60 $82
    ld a, c                                       ; $55a3: $79
    ld [hl], $bd                                  ; $55a4: $36 $bd
    db $ec                                        ; $55a6: $ec
    ld a, [c]                                     ; $55a7: $f2
    and c                                         ; $55a8: $a1
    and d                                         ; $55a9: $a2
    ld h, a                                       ; $55aa: $67
    sub e                                         ; $55ab: $93
    ld b, a                                       ; $55ac: $47
    ld [hl], b                                    ; $55ad: $70
    adc a                                         ; $55ae: $8f
    ld c, e                                       ; $55af: $4b
    call Call_04f_58db                            ; $55b0: $cd $db $58
    dec de                                        ; $55b3: $1b
    dec hl                                        ; $55b4: $2b
    rst $30                                       ; $55b5: $f7
    reti                                          ; $55b6: $d9


    sbc b                                         ; $55b7: $98
    ld d, [hl]                                    ; $55b8: $56
    ld [hl], $96                                  ; $55b9: $36 $96
    ld a, $dc                                     ; $55bb: $3e $dc
    dec sp                                        ; $55bd: $3b
    sub [hl]                                      ; $55be: $96
    ld c, c                                       ; $55bf: $49
    reti                                          ; $55c0: $d9


    or b                                          ; $55c1: $b0
    call z, Call_04f_73a4                         ; $55c2: $cc $a4 $73
    ld a, [hl-]                                   ; $55c5: $3a
    ret z                                         ; $55c6: $c8

    ld b, c                                       ; $55c7: $41
    ld [hl], c                                    ; $55c8: $71
    cp c                                          ; $55c9: $b9
    and d                                         ; $55ca: $a2
    and [hl]                                      ; $55cb: $a6
    sbc c                                         ; $55cc: $99
    inc a                                         ; $55cd: $3c
    ldh [$7d], a                                  ; $55ce: $e0 $7d
    ld b, l                                       ; $55d0: $45
    add hl, de                                    ; $55d1: $19
    rst $30                                       ; $55d2: $f7
    inc c                                         ; $55d3: $0c
    rst $30                                       ; $55d4: $f7
    sub h                                         ; $55d5: $94
    rst $28                                       ; $55d6: $ef
    dec d                                         ; $55d7: $15
    rst $00                                       ; $55d8: $c7
    dec e                                         ; $55d9: $1d
    cp l                                          ; $55da: $bd
    and e                                         ; $55db: $a3
    ld d, a                                       ; $55dc: $57
    ld a, d                                       ; $55dd: $7a
    cp $89                                        ; $55de: $fe $89
    sub a                                         ; $55e0: $97
    add l                                         ; $55e1: $85
    ld a, e                                       ; $55e2: $7b

jr_04f_55e3:
    xor b                                         ; $55e3: $a8
    add l                                         ; $55e4: $85
    call z, $f43b                                 ; $55e5: $cc $3b $f4
    ld a, a                                       ; $55e8: $7f
    push de                                       ; $55e9: $d5
    ld a, [hl-]                                   ; $55ea: $3a
    ld [hl], d                                    ; $55eb: $72
    call $ffef                                    ; $55ec: $cd $ef $ff
    jp hl                                         ; $55ef: $e9


    ld [hl+], a                                   ; $55f0: $22
    dec [hl]                                      ; $55f1: $35
    cp a                                          ; $55f2: $bf
    rst $38                                       ; $55f3: $ff
    rst $28                                       ; $55f4: $ef
    pop bc                                        ; $55f5: $c1
    jr z, @+$48                                   ; $55f6: $28 $46

    push de                                       ; $55f8: $d5
    sbc [hl]                                      ; $55f9: $9e
    ld hl, $cf02                                  ; $55fa: $21 $02 $cf
    push af                                       ; $55fd: $f5
    db $f4                                        ; $55fe: $f4

Call_04f_55ff:
    dec sp                                        ; $55ff: $3b
    ld a, [c]                                     ; $5600: $f2
    xor e                                         ; $5601: $ab
    db $eb                                        ; $5602: $eb
    ld l, h                                       ; $5603: $6c
    rrca                                          ; $5604: $0f
    push de                                       ; $5605: $d5
    call $847a                                    ; $5606: $cd $7a $84
    nop                                           ; $5609: $00
    rst $20                                       ; $560a: $e7
    pop hl                                        ; $560b: $e1
    di                                            ; $560c: $f3
    ld [hl], $3d                                  ; $560d: $36 $3d
    ld h, [hl]                                    ; $560f: $66
    add hl, hl                                    ; $5610: $29
    jr c, jr_04f_55e3                             ; $5611: $38 $d0

    ld hl, $e1b3                                  ; $5613: $21 $b3 $e1
    db $d3                                        ; $5616: $d3
    and e                                         ; $5617: $a3
    ld c, c                                       ; $5618: $49
    push af                                       ; $5619: $f5
    cp $f5                                        ; $561a: $fe $f5
    jr jr_04f_564f                                ; $561c: $18 $31

    sub d                                         ; $561e: $92
    db $fd                                        ; $561f: $fd
    ld a, [hl+]                                   ; $5620: $2a
    add a                                         ; $5621: $87
    db $10                                        ; $5622: $10
    ld [hl+], a                                   ; $5623: $22
    and b                                         ; $5624: $a0
    xor a                                         ; $5625: $af
    adc h                                         ; $5626: $8c
    dec sp                                        ; $5627: $3b
    cp $af                                        ; $5628: $fe $af
    pop de                                        ; $562a: $d1
    sbc e                                         ; $562b: $9b
    di                                            ; $562c: $f3
    ld h, a                                       ; $562d: $67
    and l                                         ; $562e: $a5
    ld c, b                                       ; $562f: $48
    reti                                          ; $5630: $d9


    ret z                                         ; $5631: $c8

    ld [hl], b                                    ; $5632: $70
    rst $20                                       ; $5633: $e7
    ret                                           ; $5634: $c9


    adc [hl]                                      ; $5635: $8e
    ld e, [hl]                                    ; $5636: $5e
    or $6a                                        ; $5637: $f6 $6a
    ld d, d                                       ; $5639: $52
    dec e                                         ; $563a: $1d
    dec sp                                        ; $563b: $3b
    ld h, h                                       ; $563c: $64
    call z, $f352                                 ; $563d: $cc $52 $f3
    ld [hl], $d6                                  ; $5640: $36 $d6
    add $d9                                       ; $5642: $c6 $d9
    ld e, $aa                                     ; $5644: $1e $aa
    sbc e                                         ; $5646: $9b
    dec [hl]                                      ; $5647: $35
    ld [hl], b                                    ; $5648: $70
    add $3d                                       ; $5649: $c6 $3d
    ld a, [de]                                    ; $564b: $1a
    ld [hl+], a                                   ; $564c: $22
    ld c, a                                       ; $564d: $4f
    rst $28                                       ; $564e: $ef

jr_04f_564f:
    daa                                           ; $564f: $27
    ld hl, $c44b                                  ; $5650: $21 $4b $c4
    ld b, [hl]                                    ; $5653: $46
    and a                                         ; $5654: $a7
    xor e                                         ; $5655: $ab
    ld h, a                                       ; $5656: $67
    ld c, e                                       ; $5657: $4b
    sbc l                                         ; $5658: $9d
    db $ed                                        ; $5659: $ed
    adc d                                         ; $565a: $8a
    rst $00                                       ; $565b: $c7
    ld [hl], d                                    ; $565c: $72
    adc c                                         ; $565d: $89
    ccf                                           ; $565e: $3f
    ld b, d                                       ; $565f: $42
    adc a                                         ; $5660: $8f
    ld c, e                                       ; $5661: $4b
    adc l                                         ; $5662: $8d
    ld e, [hl]                                    ; $5663: $5e
    sub c                                         ; $5664: $91
    inc a                                         ; $5665: $3c
    ld a, d                                       ; $5666: $7a
    and l                                         ; $5667: $a5
    ld h, [hl]                                    ; $5668: $66
    ld c, e                                       ; $5669: $4b
    ld d, l                                       ; $566a: $55
    rrca                                          ; $566b: $0f
    rst $20                                       ; $566c: $e7
    rst $30                                       ; $566d: $f7
    ld h, b                                       ; $566e: $60
    inc d                                         ; $566f: $14
    and e                                         ; $5670: $a3
    ld l, d                                       ; $5671: $6a
    rst $08                                       ; $5672: $cf
    ld [hl], b                                    ; $5673: $70
    rst $20                                       ; $5674: $e7
    ld sp, $e82d                                  ; $5675: $31 $2d $e8
    cp a                                          ; $5678: $bf
    xor d                                         ; $5679: $aa
    and [hl]                                      ; $567a: $a6
    ld a, b                                       ; $567b: $78
    ld d, c                                       ; $567c: $51
    push de                                       ; $567d: $d5
    ld d, d                                       ; $567e: $52
    db $d3                                        ; $567f: $d3
    sbc b                                         ; $5680: $98
    rst $00                                       ; $5681: $c7
    rst $00                                       ; $5682: $c7
    dec a                                         ; $5683: $3d
    ld b, [hl]                                    ; $5684: $46
    xor a                                         ; $5685: $af
    ld e, d                                       ; $5686: $5a
    cp c                                          ; $5687: $b9
    adc a                                         ; $5688: $8f
    jr @+$4c                                      ; $5689: $18 $4a

    ld l, e                                       ; $568b: $6b
    ld e, c                                       ; $568c: $59
    ld a, [hl+]                                   ; $568d: $2a
    sbc l                                         ; $568e: $9d
    xor [hl]                                      ; $568f: $ae
    adc [hl]                                      ; $5690: $8e
    ld sp, hl                                     ; $5691: $f9
    db $fd                                        ; $5692: $fd
    ld a, a                                       ; $5693: $7f
    ccf                                           ; $5694: $3f
    adc b                                         ; $5695: $88
    ld e, a                                       ; $5696: $5f
    inc hl                                        ; $5697: $23
    pop de                                        ; $5698: $d1
    ld d, d                                       ; $5699: $52
    db $10                                        ; $569a: $10
    ld bc, $f5cf                                  ; $569b: $01 $cf $f5
    ret nz                                        ; $569e: $c0

    daa                                           ; $569f: $27
    or a                                          ; $56a0: $b7
    dec sp                                        ; $56a1: $3b
    cp $5f                                        ; $56a2: $fe $5f
    ret z                                         ; $56a4: $c8

    ld c, d                                       ; $56a5: $4a
    sbc a                                         ; $56a6: $9f
    cp l                                          ; $56a7: $bd
    ld d, d                                       ; $56a8: $52
    ei                                            ; $56a9: $fb
    ld b, a                                       ; $56aa: $47
    ld d, a                                       ; $56ab: $57
    rst $00                                       ; $56ac: $c7
    and e                                         ; $56ad: $a3
    dec a                                         ; $56ae: $3d
    sub h                                         ; $56af: $94
    ld c, h                                       ; $56b0: $4c
    adc a                                         ; $56b1: $8f
    ld h, $65                                     ; $56b2: $26 $65
    ld h, e                                       ; $56b4: $63
    ld d, a                                       ; $56b5: $57
    inc a                                         ; $56b6: $3c
    sub $97                                       ; $56b7: $d6 $97
    ld hl, sp+$55                                 ; $56b9: $f8 $55
    ld a, $bd                                     ; $56bb: $3e $bd
    cp d                                          ; $56bd: $ba
    sub [hl]                                      ; $56be: $96
    xor a                                         ; $56bf: $af
    ld e, d                                       ; $56c0: $5a
    ld h, [hl]                                    ; $56c1: $66
    ld e, $5f                                     ; $56c2: $1e $5f
    sbc a                                         ; $56c4: $9f
    inc e                                         ; $56c5: $1c
    dec a                                         ; $56c6: $3d
    ld h, [hl]                                    ; $56c7: $66
    xor c                                         ; $56c8: $a9
    ld h, l                                       ; $56c9: $65
    ld e, [hl]                                    ; $56ca: $5e
    ld c, l                                       ; $56cb: $4d
    inc sp                                        ; $56cc: $33
    ld h, d                                       ; $56cd: $62
    add sp, $72                                   ; $56ce: $e8 $72
    ld c, b                                       ; $56d0: $48
    ld h, l                                       ; $56d1: $65
    add a                                         ; $56d2: $87
    ld [$4b8f], sp                                ; $56d3: $08 $8f $4b
    dec l                                         ; $56d6: $2d
    di                                            ; $56d7: $f3
    ld l, d                                       ; $56d8: $6a
    ld hl, $a7a3                                  ; $56d9: $21 $a3 $a7
    ld h, $e3                                     ; $56dc: $26 $e3
    xor [hl]                                      ; $56de: $ae
    ld c, d                                       ; $56df: $4a
    ld a, d                                       ; $56e0: $7a
    reti                                          ; $56e1: $d9


    ret nc                                        ; $56e2: $d0

    ld h, l                                       ; $56e3: $65
    ld a, d                                       ; $56e4: $7a
    ld d, d                                       ; $56e5: $52
    db $eb                                        ; $56e6: $eb
    ld b, h                                       ; $56e7: $44
    ld a, h                                       ; $56e8: $7c
    jp c, $0bd1                                   ; $56e9: $da $d1 $0b

    add hl, de                                    ; $56ec: $19
    pop de                                        ; $56ed: $d1
    adc a                                         ; $56ee: $8f
    rst $38                                       ; $56ef: $ff
    pop hl                                        ; $56f0: $e1
    ld b, b                                       ; $56f1: $40
    add a                                         ; $56f2: $87
    adc h                                         ; $56f3: $8c
    ld e, c                                       ; $56f4: $59
    ld l, d                                       ; $56f5: $6a
    and h                                         ; $56f6: $a4
    inc h                                         ; $56f7: $24
    sub e                                         ; $56f8: $93
    ld e, b                                       ; $56f9: $58
    cp d                                          ; $56fa: $ba
    cp d                                          ; $56fb: $ba
    sub [hl]                                      ; $56fc: $96
    ld a, c                                       ; $56fd: $79
    or l                                          ; $56fe: $b5
    cp e                                          ; $56ff: $bb
    call z, $8092                                 ; $5700: $cc $92 $80
    ld [$4b8f], sp                                ; $5703: $08 $8f $4b
    call Call_04f_7baf                            ; $5706: $cd $af $7b
    reti                                          ; $5709: $d9


    ret c                                         ; $570a: $d8

    ld d, l                                       ; $570b: $55
    ld hl, $8e86                                  ; $570c: $21 $86 $8e
    ld e, [hl]                                    ; $570f: $5e
    sbc c                                         ; $5710: $99
    ld a, [hl+]                                   ; $5711: $2a
    ld a, [$c06b]                                 ; $5712: $fa $6b $c0
    call z, Call_04f_66bf                         ; $5715: $cc $bf $66
    and b                                         ; $5718: $a0
    ld c, e                                       ; $5719: $4b
    db $dd                                        ; $571a: $dd
    ld l, c                                       ; $571b: $69
    ld b, a                                       ; $571c: $47
    rst $08                                       ; $571d: $cf
    ret nc                                        ; $571e: $d0

    ld c, c                                       ; $571f: $49
    cp c                                          ; $5720: $b9
    add a                                         ; $5721: $87
    ret nz                                        ; $5722: $c0

    add c                                         ; $5723: $81
    ld c, $19                                     ; $5724: $0e $19
    or e                                          ; $5726: $b3
    call nc, $b2b4                                ; $5727: $d4 $b4 $b2
    ld sp, $4ff5                                  ; $572a: $31 $f5 $4f
    call nc, $ff57                                ; $572d: $d4 $57 $ff
    rst $10                                       ; $5730: $d7
    adc b                                         ; $5731: $88
    ld l, c                                       ; $5732: $69
    daa                                           ; $5733: $27
    add [hl]                                      ; $5734: $86
    and [hl]                                      ; $5735: $a6
    xor a                                         ; $5736: $af
    sub h                                         ; $5737: $94
    ld e, a                                       ; $5738: $5f
    inc hl                                        ; $5739: $23
    pop de                                        ; $573a: $d1
    db $10                                        ; $573b: $10
    ld bc, $ef18                                  ; $573c: $01 $18 $ef
    rst $38                                       ; $573f: $ff
    jp hl                                         ; $5740: $e9


    ld [hl+], a                                   ; $5741: $22
    or l                                          ; $5742: $b5
    xor e                                         ; $5743: $ab
    ld b, d                                       ; $5744: $42
    adc $f6                                       ; $5745: $ce $f6

jr_04f_5747:
    ld d, b                                       ; $5747: $50
    db $dd                                        ; $5748: $dd
    xor h                                         ; $5749: $ac
    ld b, a                                       ; $574a: $47
    dec sp                                        ; $574b: $3b
    rrca                                          ; $574c: $0f
    rst $18                                       ; $574d: $df
    pop de                                        ; $574e: $d1
    xor e                                         ; $574f: $ab
    rst $38                                       ; $5750: $ff
    db $fd                                        ; $5751: $fd
    jp c, $8779                                   ; $5752: $da $79 $87

    cp $af                                        ; $5755: $fe $af
    ld a, [c]                                     ; $5757: $f2
    sub l                                         ; $5758: $95
    ei                                            ; $5759: $fb
    ld [hl], d                                    ; $575a: $72
    inc l                                         ; $575b: $2c
    ld h, h                                       ; $575c: $64
    ldh [$8c], a                                  ; $575d: $e0 $8c
    ld a, e                                       ; $575f: $7b
    db $f4                                        ; $5760: $f4
    xor $ce                                       ; $5761: $ee $ce
    ld l, a                                       ; $5763: $6f
    add hl, hl                                    ; $5764: $29
    inc hl                                        ; $5765: $23
    xor d                                         ; $5766: $aa
    rrca                                          ; $5767: $0f
    or c                                          ; $5768: $b1
    db $10                                        ; $5769: $10
    ld bc, $c70f                                  ; $576a: $01 $0f $c7
    rst $08                                       ; $576d: $cf
    or l                                          ; $576e: $b5
    di                                            ; $576f: $f3
    add h                                         ; $5770: $84
    and [hl]                                      ; $5771: $a6
    ld a, a                                       ; $5772: $7f
    ld e, b                                       ; $5773: $58
    db $d3                                        ; $5774: $d3
    ld sp, $79ae                                  ; $5775: $31 $ae $79
    add hl, de                                    ; $5778: $19
    cp l                                          ; $5779: $bd
    ld [$0f6c], a                                 ; $577a: $ea $6c $0f

Jump_04f_577d:
    push de                                       ; $577d: $d5
    call Call_000_0882                            ; $577e: $cd $82 $08
    jr nz, jr_04f_5747                            ; $5781: $20 $c4

    ld h, e                                       ; $5783: $63

Call_04f_5784:
    add a                                         ; $5784: $87
    sbc h                                         ; $5785: $9c
    adc l                                         ; $5786: $8d
    ld e, c                                       ; $5787: $59
    ld l, d                                       ; $5788: $6a
    sub h                                         ; $5789: $94
    rst $08                                       ; $578a: $cf
    ld e, $fb                                     ; $578b: $1e $fb
    rlca                                          ; $578d: $07
    sub l                                         ; $578e: $95
    sbc d                                         ; $578f: $9a
    rst $18                                       ; $5790: $df
    rst $38                                       ; $5791: $ff
    db $d3                                        ; $5792: $d3
    ld b, l                                       ; $5793: $45
    ld l, d                                       ; $5794: $6a
    ld [hl], $64                                  ; $5795: $36 $64
    jp c, Jump_000_13d1                           ; $5797: $da $d1 $13

    ld d, [hl]                                    ; $579a: $56
    adc d                                         ; $579b: $8a
    call nz, $8817                                ; $579c: $c4 $17 $88
    nop                                           ; $579f: $00
    ldh [$da], a                                  ; $57a0: $e0 $da
    ld [hl], b                                    ; $57a2: $70
    sub c                                         ; $57a3: $91
    or e                                          ; $57a4: $b3
    jp hl                                         ; $57a5: $e9


    ld bc, $22be                                  ; $57a6: $01 $be $22
    ld sp, hl                                     ; $57a9: $f9
    ld de, $d802                                  ; $57aa: $11 $02 $d8
    ret c                                         ; $57ad: $d8

    or b                                          ; $57ae: $b0
    ld h, c                                       ; $57af: $61
    inc bc                                        ; $57b0: $03
    ld hl, $2934                                  ; $57b1: $21 $34 $29
    ld l, l                                       ; $57b4: $6d
    ld [hl], $76                                  ; $57b5: $36 $76
    dec h                                         ; $57b7: $25
    di                                            ; $57b8: $f3
    ld l, d                                       ; $57b9: $6a
    push af                                       ; $57ba: $f5
    ld l, l                                       ; $57bb: $6d
    ld e, a                                       ; $57bc: $5f
    or l                                          ; $57bd: $b5
    ld [hl], d                                    ; $57be: $72
    sbc a                                         ; $57bf: $9f
    daa                                           ; $57c0: $27
    ld c, d                                       ; $57c1: $4a
    dec h                                         ; $57c2: $25
    sub h                                         ; $57c3: $94
    sbc $b3                                       ; $57c4: $de $b3
    ld [hl], c                                    ; $57c6: $71
    ld b, l                                       ; $57c7: $45
    db $fc                                        ; $57c8: $fc
    ld h, [hl]                                    ; $57c9: $66
    ld [c], a                                     ; $57ca: $e2
    ld h, a                                       ; $57cb: $67
    dec sp                                        ; $57cc: $3b
    ld a, d                                       ; $57cd: $7a
    or h                                          ; $57ce: $b4
    call nc, $c4cd                                ; $57cf: $d4 $cd $c4
    ld hl, $cf84                                  ; $57d2: $21 $84 $cf
    ld l, d                                       ; $57d5: $6a
    db $d3                                        ; $57d6: $d3
    add d                                         ; $57d7: $82
    sbc c                                         ; $57d8: $99
    ld c, e                                       ; $57d9: $4b
    adc $f6                                       ; $57da: $ce $f6
    ld d, b                                       ; $57dc: $50
    db $dd                                        ; $57dd: $dd
    inc l                                         ; $57de: $2c
    adc b                                         ; $57df: $88
    nop                                           ; $57e0: $00
    adc a                                         ; $57e1: $8f
    ld c, e                                       ; $57e2: $4b
    ld c, l                                       ; $57e3: $4d
    xor e                                         ; $57e4: $ab
    ld e, $bd                                     ; $57e5: $1e $bd
    xor $23                                       ; $57e7: $ee $23
    and [hl]                                      ; $57e9: $a6
    ld a, l                                       ; $57ea: $7d
    inc [hl]                                      ; $57eb: $34
    db $ec                                        ; $57ec: $ec

jr_04f_57ed:
    jp nc, Jump_000_27d1                          ; $57ed: $d2 $d1 $27

    ld l, d                                       ; $57f0: $6a
    ld l, e                                       ; $57f1: $6b
    jp c, $d8c1                                   ; $57f2: $da $c1 $d8

    db $f4                                        ; $57f5: $f4
    ld c, h                                       ; $57f6: $4c
    ld c, d                                       ; $57f7: $4a
    sbc e                                         ; $57f8: $9b
    or a                                          ; $57f9: $b7
    ld sp, hl                                     ; $57fa: $f9
    sbc a                                         ; $57fb: $9f
    ld d, h                                       ; $57fc: $54
    rst $38                                       ; $57fd: $ff
    ld [$b0d1], a                                 ; $57fe: $ea $d1 $b0
    inc bc                                        ; $5801: $03
    ld a, c                                       ; $5802: $79
    sbc e                                         ; $5803: $9b
    call nz, $1e70                                ; $5804: $c4 $70 $1e
    ld [hl+], a                                   ; $5807: $22
    adc a                                         ; $5808: $8f
    db $eb                                        ; $5809: $eb
    ld l, h                                       ; $580a: $6c
    call z, $f352                                 ; $580b: $cc $52 $f3
    ld [hl], $bd                                  ; $580e: $36 $bd
    ld [hl], d                                    ; $5810: $72
    sbc a                                         ; $5811: $9f
    dec c                                         ; $5812: $0d
    rst $18                                       ; $5813: $df
    pop de                                        ; $5814: $d1
    bit 0, l                                      ; $5815: $cb $45
    ld l, c                                       ; $5817: $69
    adc l                                         ; $5818: $8d
    sbc b                                         ; $5819: $98
    halt                                          ; $581a: $76
    jr c, jr_04f_57ed                             ; $581b: $38 $d0

    ld hl, $9663                                  ; $581d: $21 $63 $96
    sbc d                                         ; $5820: $9a
    or a                                          ; $5821: $b7
    jp hl                                         ; $5822: $e9


    sub l                                         ; $5823: $95
    ei                                            ; $5824: $fb
    db $ec                                        ; $5825: $ec
    sub l                                         ; $5826: $95
    ld [hl], c                                    ; $5827: $71
    push de                                       ; $5828: $d5
    db $d3                                        ; $5829: $d3
    jp z, $f4c6                                   ; $582a: $ca $c6 $f4

    ld hl, sp-$1b                                 ; $582d: $f8 $e5
    dec hl                                        ; $582f: $2b
    rst $30                                       ; $5830: $f7
    reti                                          ; $5831: $d9


    ld h, h                                       ; $5832: $64
    sbc c                                         ; $5833: $99
    inc h                                         ; $5834: $24
    rst $38                                       ; $5835: $ff
    rst $00                                       ; $5836: $c7
    or h                                          ; $5837: $b4
    sbc d                                         ; $5838: $9a
    dec c                                         ; $5839: $0d
    add a                                         ; $583a: $87
    ld [$2b18], sp                                ; $583b: $08 $18 $2b
    ld b, l                                       ; $583e: $45
    adc $86                                       ; $583f: $ce $86
    or a                                          ; $5841: $b7
    pop hl                                        ; $5842: $e1
    ld [hl+], a                                   ; $5843: $22
    ld h, a                                       ; $5844: $67
    db $d3                                        ; $5845: $d3
    inc bc                                        ; $5846: $03
    ld a, h                                       ; $5847: $7c
    ld b, l                                       ; $5848: $45
    ld [hl-], a                                   ; $5849: $32
    ld a, e                                       ; $584a: $7b
    inc b                                         ; $584b: $04
    and b                                         ; $584c: $a0
    add d                                         ; $584d: $82
    ld hl, sp+$35                                 ; $584e: $f8 $35
    ld [de], a                                    ; $5850: $12
    or d                                          ; $5851: $b2
    and e                                         ; $5852: $a3
    ld [hl], a                                    ; $5853: $77
    jp nc, $21a3                                  ; $5854: $d2 $a3 $21

    add h                                         ; $5857: $84
    sub b                                         ; $5858: $90
    dec c                                         ; $5859: $0d
    dec de                                        ; $585a: $1b
    ld [hl], $6c                                  ; $585b: $36 $6c
    ret c                                         ; $585d: $d8

    or b                                          ; $585e: $b0
    add c                                         ; $585f: $81
    db $10                                        ; $5860: $10
    ld b, d                                       ; $5861: $42
    adc b                                         ; $5862: $88
    nop                                           ; $5863: $00
    ret c                                         ; $5864: $d8

    ret c                                         ; $5865: $d8

    or b                                          ; $5866: $b0
    ld h, c                                       ; $5867: $61
    inc bc                                        ; $5868: $03
    ld hl, $0884                                  ; $5869: $21 $84 $08
    rst $08                                       ; $586c: $cf
    push af                                       ; $586d: $f5
    ld l, h                                       ; $586e: $6c
    ld hl, sp-$4c                                 ; $586f: $f8 $b4
    and e                                         ; $5871: $a3
    rla                                           ; $5872: $17
    or d                                          ; $5873: $b2
    rra                                           ; $5874: $1f
    call nz, $91af                                ; $5875: $c4 $af $91
    push bc                                       ; $5878: $c5
    rst $38                                       ; $5879: $ff
    pop de                                        ; $587a: $d1
    dec bc                                        ; $587b: $0b
    sbc c                                         ; $587c: $99
    ld a, [hl]                                    ; $587d: $7e
    cp a                                          ; $587e: $bf
    ret                                           ; $587f: $c9


    sbc [hl]                                      ; $5880: $9e
    adc b                                         ; $5881: $88
    ld a, l                                       ; $5882: $7d
    add h                                         ; $5883: $84
    nop                                           ; $5884: $00
    ld c, a                                       ; $5885: $4f
    rst $28                                       ; $5886: $ef
    daa                                           ; $5887: $27
    ld hl, $e6f3                                  ; $5888: $21 $f3 $e6
    ret                                           ; $588b: $c9


    ld d, l                                       ; $588c: $55
    ei                                            ; $588d: $fb
    ld b, c                                       ; $588e: $41
    db $fc                                        ; $588f: $fc
    ld a, [de]                                    ; $5890: $1a
    add c                                         ; $5891: $81
    ld a, e                                       ; $5892: $7b
    ld e, h                                       ; $5893: $5c
    ld l, d                                       ; $5894: $6a
    sbc c                                         ; $5895: $99
    inc h                                         ; $5896: $24
    rst $38                                       ; $5897: $ff
    rst $00                                       ; $5898: $c7
    or h                                          ; $5899: $b4
    sbc d                                         ; $589a: $9a
    sub a                                         ; $589b: $97
    cp d                                          ; $589c: $ba
    ld a, $1a                                     ; $589d: $3e $1a
    halt                                          ; $589f: $76
    db $f4                                        ; $58a0: $f4
    xor d                                         ; $58a1: $aa
    add hl, bc                                    ; $58a2: $09
    xor a                                         ; $58a3: $af
    adc h                                         ; $58a4: $8c
    xor a                                         ; $58a5: $af
    call c, $8ff7                                 ; $58a6: $dc $f7 $8f
    ld e, h                                       ; $58a9: $5c
    db $10                                        ; $58aa: $10
    ld bc, $c10f                                  ; $58ab: $01 $0f $c1
    inc a                                         ; $58ae: $3c
    dec de                                        ; $58af: $1b
    sbc $86                                       ; $58b0: $de $86
    adc e                                         ; $58b2: $8b
    sbc h                                         ; $58b3: $9c
    ld c, l                                       ; $58b4: $4d
    rrca                                          ; $58b5: $0f
    ret c                                         ; $58b6: $d8

    cp a                                          ; $58b7: $bf
    adc $e8                                       ; $58b8: $ce $e8
    and [hl]                                      ; $58ba: $a6
    ld [$2044], sp                                ; $58bb: $08 $44 $20
    ld h, [hl]                                    ; $58be: $66
    ld c, e                                       ; $58bf: $4b
    call $210f                                    ; $58c0: $cd $0f $21
    ld e, $63                                     ; $58c3: $1e $63
    sub [hl]                                      ; $58c5: $96
    ld e, d                                       ; $58c6: $5a
    cp c                                          ; $58c7: $b9
    ld c, a                                       ; $58c8: $4f
    cp a                                          ; $58c9: $bf
    sla h                                         ; $58ca: $cb $24
    ld sp, hl                                     ; $58cc: $f9
    ccf                                           ; $58cd: $3f
    halt                                          ; $58ce: $76
    jp nc, Jump_000_346b                          ; $58cf: $d2 $6b $34

    db $ec                                        ; $58d2: $ec
    jp z, $dc7d                                   ; $58d3: $ca $7d $dc

    xor c                                         ; $58d6: $a9
    cp l                                          ; $58d7: $bd
    call $b5ff                                    ; $58d8: $cd $ff $b5

Call_04f_58db:
    sub b                                         ; $58db: $90
    ld [hl], c                                    ; $58dc: $71
    call z, $46c3                                 ; $58dd: $cc $c3 $46
    cpl                                           ; $58e0: $2f
    di                                            ; $58e1: $f3
    dec hl                                        ; $58e2: $2b
    rst $30                                       ; $58e3: $f7
    reti                                          ; $58e4: $d9


    sub b                                         ; $58e5: $90
    ld h, l                                       ; $58e6: $65
    db $fd                                        ; $58e7: $fd
    ret nc                                        ; $58e8: $d0

    xor e                                         ; $58e9: $ab
    pop hl                                        ; $58ea: $e1
    ld b, $e6                                     ; $58eb: $06 $e6
    add sp, -$27                                  ; $58ed: $e8 $d9
    ld h, h                                       ; $58ef: $64
    add a                                         ; $58f0: $87
    ld e, b                                       ; $58f1: $58
    ld a, [hl]                                    ; $58f2: $7e
    reti                                          ; $58f3: $d9


    ld sp, hl                                     ; $58f4: $f9
    sbc [hl]                                      ; $58f5: $9e
    halt                                          ; $58f6: $76
    db $f4                                        ; $58f7: $f4
    reti                                          ; $58f8: $d9


    ld e, $aa                                     ; $58f9: $1e $aa
    sbc e                                         ; $58fb: $9b
    ld [hl], l                                    ; $58fc: $75
    ld [hl], $52                                  ; $58fd: $36 $52
    ld [hl-], a                                   ; $58ff: $32
    ld h, [hl]                                    ; $5900: $66
    xor c                                         ; $5901: $a9
    reti                                          ; $5902: $d9


    and b                                         ; $5903: $a0
    ld b, [hl]                                    ; $5904: $46
    or d                                          ; $5905: $b2
    ld [hl], a                                    ; $5906: $77
    ld [hl], h                                    ; $5907: $74
    dec c                                         ; $5908: $0d
    rst $20                                       ; $5909: $e7
    ld h, a                                       ; $590a: $67
    xor a                                         ; $590b: $af
    add d                                         ; $590c: $82
    ld [$250f], sp                                ; $590d: $08 $0f $25
    sla h                                         ; $5910: $cb $24
    ld sp, hl                                     ; $5912: $f9

jr_04f_5913:
    ccf                                           ; $5913: $3f
    and [hl]                                      ; $5914: $a6
    push de                                       ; $5915: $d5
    db $f4                                        ; $5916: $f4
    ld a, [$7a3e]                                 ; $5917: $fa $3e $7a
    dec d                                         ; $591a: $15
    call c, Call_04f_52e3                         ; $591b: $dc $e3 $52
    inc hl                                        ; $591e: $23
    dec h                                         ; $591f: $25
    sub e                                         ; $5920: $93
    inc hl                                        ; $5921: $23
    ld a, e                                       ; $5922: $7b
    ret                                           ; $5923: $c9


    jr c, jr_04f_59a4                             ; $5924: $38 $7e

    inc e                                         ; $5926: $1c
    di                                            ; $5927: $f3
    or b                                          ; $5928: $b0
    ld e, l                                       ; $5929: $5d
    cp l                                          ; $592a: $bd
    ld [hl], d                                    ; $592b: $72
    ld e, a                                       ; $592c: $5f
    sub $0f                                       ; $592d: $d6 $0f
    cp l                                          ; $592f: $bd
    sub $61                                       ; $5930: $d6 $61
    ld c, e                                       ; $5932: $4b
    jr nz, jr_04f_5937                            ; $5933: $20 $02

    rst $08                                       ; $5935: $cf
    ld a, [c]                                     ; $5936: $f2

jr_04f_5937:
    db $fc                                        ; $5937: $fc
    reti                                          ; $5938: $d9


    ld l, h                                       ; $5939: $6c
    or d                                          ; $593a: $b2
    and e                                         ; $593b: $a3
    and a                                         ; $593c: $a7
    ld b, a                                       ; $593d: $47
    sub e                                         ; $593e: $93
    ld a, a                                       ; $593f: $7f
    ld d, l                                       ; $5940: $55
    ret z                                         ; $5941: $c8

    ld b, d                                       ; $5942: $42
    ld b, [hl]                                    ; $5943: $46
    rrca                                          ; $5944: $0f
    ld [c], a                                     ; $5945: $e2
    ld d, a                                       ; $5946: $57
    call $fcdb                                    ; $5947: $cd $db $fc
    ld c, a                                       ; $594a: $4f
    xor d                                         ; $594b: $aa
    ccf                                           ; $594c: $3f
    inc e                                         ; $594d: $1c
    add $eb                                       ; $594e: $c6 $eb
    ld e, [hl]                                    ; $5950: $5e
    or e                                          ; $5951: $b3
    ret                                           ; $5952: $c9


    jr c, jr_04f_5913                             ; $5953: $38 $be

    ld b, a                                       ; $5955: $47
    xor a                                         ; $5956: $af
    call nc, $ca4e                                ; $5957: $d4 $4e $ca
    ret z                                         ; $595a: $c8

    jp z, $9d7d                                   ; $595b: $ca $7d $9d

    db $fc                                        ; $595e: $fc
    ld e, a                                       ; $595f: $5f
    ld c, e                                       ; $5960: $4b
    rla                                           ; $5961: $17
    pop hl                                        ; $5962: $e1
    sbc l                                         ; $5963: $9d
    dec a                                         ; $5964: $3d
    ld [bc], a                                    ; $5965: $02

jr_04f_5966:
    ld c, a                                       ; $5966: $4f
    ld hl, sp+$65                                 ; $5967: $f8 $65
    ld d, d                                       ; $5969: $52
    or e                                          ; $596a: $b3
    pop hl                                        ; $596b: $e1
    res 6, c                                      ; $596c: $cb $b1
    call nz, $f6cf                                ; $596e: $c4 $cf $f6
    ld d, b                                       ; $5971: $50
    db $dd                                        ; $5972: $dd

jr_04f_5973:
    inc l                                         ; $5973: $2c
    cp b                                          ; $5974: $b8
    or a                                          ; $5975: $b7
    add [hl]                                      ; $5976: $86
    sbc e                                         ; $5977: $9b
    ld b, e                                       ; $5978: $43
    call nc, $53b8                                ; $5979: $d4 $b8 $53
    cpl                                           ; $597c: $2f
    ld h, h                                       ; $597d: $64
    call c, Call_000_2595                         ; $597e: $dc $95 $25
    jr c, @-$50                                   ; $5981: $38 $ae

    rst $18                                       ; $5983: $df
    inc l                                         ; $5984: $2c
    ld d, a                                       ; $5985: $57
    inc d                                         ; $5986: $14
    ld b, h                                       ; $5987: $44
    sbc b                                         ; $5988: $98
    sbc h                                         ; $5989: $9c
    ld e, $4d                                     ; $598a: $1e $4d
    sbc h                                         ; $598c: $9c
    db $fd                                        ; $598d: $fd
    sbc [hl]                                      ; $598e: $9e
    db $eb                                        ; $598f: $eb
    reti                                          ; $5990: $d9


    ld h, h                                       ; $5991: $64
    ld sp, hl                                     ; $5992: $f9
    jr nz, jr_04f_5966                            ; $5993: $20 $d1

    jp $95f9                                      ; $5995: $c3 $f9 $95


    ei                                            ; $5998: $fb
    ld l, h                                       ; $5999: $6c
    or d                                          ; $599a: $b2
    dec hl                                        ; $599b: $2b
    ld e, $d3                                     ; $599c: $1e $d3
    xor d                                         ; $599e: $aa
    rst $00                                       ; $599f: $c7
    pop af                                        ; $59a0: $f1
    xor $e3                                       ; $59a1: $ee $e3
    sbc b                                         ; $59a3: $98

jr_04f_59a4:
    add a                                         ; $59a4: $87
    db $ed                                        ; $59a5: $ed
    ld [$fb95], a                                 ; $59a6: $ea $95 $fb
    or d                                          ; $59a9: $b2
    ld a, [hl]                                    ; $59aa: $7e
    add sp, $35                                   ; $59ab: $e8 $35
    xor $d4                                       ; $59ad: $ee $d4
    adc c                                         ; $59af: $89
    ccf                                           ; $59b0: $3f
    jp c, $af6b                                   ; $59b1: $da $6b $af

    ld c, $37                                     ; $59b4: $0e $37
    add a                                         ; $59b6: $87
    xor b                                         ; $59b7: $a8
    ld [hl], c                                    ; $59b8: $71
    and a                                         ; $59b9: $a7
    ld e, [hl]                                    ; $59ba: $5e
    ret z                                         ; $59bb: $c8

    cp b                                          ; $59bc: $b8
    ld [de], a                                    ; $59bd: $12
    xor a                                         ; $59be: $af
    db $ec                                        ; $59bf: $ec
    scf                                           ; $59c0: $37
    sub e                                         ; $59c1: $93
    dec h                                         ; $59c2: $25
    jr c, jr_04f_5973                             ; $59c3: $38 $ae

    rst $18                                       ; $59c5: $df
    inc l                                         ; $59c6: $2c
    ld d, a                                       ; $59c7: $57
    inc d                                         ; $59c8: $14
    ld a, e                                       ; $59c9: $7b
    inc b                                         ; $59ca: $04
    rst $20                                       ; $59cb: $e7
    ret                                           ; $59cc: $c9


    ret z                                         ; $59cd: $c8

    xor a                                         ; $59ce: $af
    ld l, $1b                                     ; $59cf: $2e $1b
    dec sp                                        ; $59d1: $3b
    jp hl                                         ; $59d2: $e9


    ld [hl], d                                    ; $59d3: $72
    ld b, l                                       ; $59d4: $45
    add l                                         ; $59d5: $85
    inc c                                         ; $59d6: $0c
    adc a                                         ; $59d7: $8f
    and $82                                       ; $59d8: $e6 $82
    ld hl, sp-$27                                 ; $59da: $f8 $d9
    ld e, $aa                                     ; $59dc: $1e $aa
    sbc e                                         ; $59de: $9b
    push bc                                       ; $59df: $c5
    ld a, [hl]                                    ; $59e0: $7e
    xor a                                         ; $59e1: $af
    cp l                                          ; $59e2: $bd
    dec [hl]                                      ; $59e3: $35
    call c, $a21c                                 ; $59e4: $dc $1c $a2
    add $9d                                       ; $59e7: $c6 $9d
    ld a, d                                       ; $59e9: $7a
    call c, $bda9                                 ; $59ea: $dc $a9 $bd
    rrca                                          ; $59ed: $0f
    adc [hl]                                      ; $59ee: $8e
    ei                                            ; $59ef: $fb
    ld d, a                                       ; $59f0: $57

jr_04f_59f1:
    ld sp, hl                                     ; $59f1: $f9
    ld [de], a                                    ; $59f2: $12
    rst $20                                       ; $59f3: $e7
    ld c, [hl]                                    ; $59f4: $4e
    ld e, l                                       ; $59f5: $5d
    ld h, d                                       ; $59f6: $62
    add e                                         ; $59f7: $83
    dec a                                         ; $59f8: $3d
    ld [bc], a                                    ; $59f9: $02
    rst $20                                       ; $59fa: $e7
    ret                                           ; $59fb: $c9


    or h                                          ; $59fc: $b4
    ld [$f15d], a                                 ; $59fd: $ea $5d $f1
    ld e, b                                       ; $5a00: $58
    ld e, a                                       ; $5a01: $5f
    ld [c], a                                     ; $5a02: $e2
    ld d, a                                       ; $5a03: $57
    ld sp, hl                                     ; $5a04: $f9
    jr c, jr_04f_5a65                             ; $5a05: $38 $5e

    ld d, h                                       ; $5a07: $54
    ld sp, hl                                     ; $5a08: $f9
    jr c, jr_04f_59f1                             ; $5a09: $38 $e6

    ld h, c                                       ; $5a0b: $61
    and e                                         ; $5a0c: $a3
    dec h                                         ; $5a0d: $25
    rst $28                                       ; $5a0e: $ef
    adc d                                         ; $5a0f: $8a
    ld [hl], a                                    ; $5a10: $77
    db $e4                                        ; $5a11: $e4
    inc e                                         ; $5a12: $1c
    ld h, a                                       ; $5a13: $67
    dec sp                                        ; $5a14: $3b
    ld a, d                                       ; $5a15: $7a
    call z, $eb52                                 ; $5a16: $cc $52 $eb
    jp $b85a                                      ; $5a19: $c3 $5a $b8


    and a                                         ; $5a1c: $a7
    ld [hl], a                                    ; $5a1d: $77
    call c, $f3a9                                 ; $5a1e: $dc $a9 $f3
    adc c                                         ; $5a21: $89
    ld b, h                                       ; $5a22: $44
    rst $28                                       ; $5a23: $ef
    xor d                                         ; $5a24: $aa
    db $10                                        ; $5a25: $10
    adc b                                         ; $5a26: $88
    nop                                           ; $5a27: $00
    rst $20                                       ; $5a28: $e7
    db $fc                                        ; $5a29: $fc
    ld [hl-], a                                   ; $5a2a: $32
    ld a, a                                       ; $5a2b: $7f
    or [hl]                                       ; $5a2c: $b6
    add a                                         ; $5a2d: $87
    ld [$9d66], a                                 ; $5a2e: $ea $66 $9d
    ld c, l                                       ; $5a31: $4d
    dec sp                                        ; $5a32: $3b
    sbc d                                         ; $5a33: $9a
    sub $e8                                       ; $5a34: $d6 $e8
    sub l                                         ; $5a36: $95
    sbc d                                         ; $5a37: $9a
    or a                                          ; $5a38: $b7
    ld sp, hl                                     ; $5a39: $f9
    ccf                                           ; $5a3a: $3f
    ld a, e                                       ; $5a3b: $7b
    jp hl                                         ; $5a3c: $e9


Jump_04f_5a3d:
    cp c                                          ; $5a3d: $b9
    ld c, a                                       ; $5a3e: $4f
    dec e                                         ; $5a3f: $1d
    ccf                                           ; $5a40: $3f
    ld b, a                                       ; $5a41: $47
    cpl                                           ; $5a42: $2f
    jr @+$19                                      ; $5a43: $18 $17

    ld [hl], c                                    ; $5a45: $71
    jr c, jr_04f_5a54                             ; $5a46: $38 $0c

    sub c                                         ; $5a48: $91
    dec a                                         ; $5a49: $3d
    ld h, h                                       ; $5a4a: $64
    and l                                         ; $5a4b: $a5
    cpl                                           ; $5a4c: $2f
    ld a, d                                       ; $5a4d: $7a
    ld a, [hl]                                    ; $5a4e: $7e
    db $dd                                        ; $5a4f: $dd

Call_04f_5a50:
    xor e                                         ; $5a50: $ab
    daa                                           ; $5a51: $27
    ld b, [hl]                                    ; $5a52: $46
    dec d                                         ; $5a53: $15

jr_04f_5a54:
    ld b, h                                       ; $5a54: $44
    ld c, a                                       ; $5a55: $4f
    ld hl, sp+$65                                 ; $5a56: $f8 $65
    ld d, d                                       ; $5a58: $52
    or e                                          ; $5a59: $b3
    pop hl                                        ; $5a5a: $e1
    res 6, c                                      ; $5a5b: $cb $b1
    call nz, $f6cf                                ; $5a5d: $c4 $cf $f6
    ld d, b                                       ; $5a60: $50
    db $dd                                        ; $5a61: $dd
    inc l                                         ; $5a62: $2c
    or $3b                                        ; $5a63: $f6 $3b

jr_04f_5a65:
    ld c, a                                       ; $5a65: $4f
    halt                                          ; $5a66: $76
    db $f4                                        ; $5a67: $f4
    ld b, d                                       ; $5a68: $42
    sub [hl]                                      ; $5a69: $96
    db $dd                                        ; $5a6a: $dd
    ld a, h                                       ; $5a6b: $7c
    rst $10                                       ; $5a6c: $d7
    jp nz, $9dc7                                  ; $5a6d: $c2 $c7 $9d

    ld a, d                                       ; $5a70: $7a
    ret nz                                        ; $5a71: $c0

    sbc e                                         ; $5a72: $9b
    push bc                                       ; $5a73: $c5
    ld [hl], c                                    ; $5a74: $71
    ld d, a                                       ; $5a75: $57
    xor h                                         ; $5a76: $ac
    ld l, c                                       ; $5a77: $69
    or $08                                        ; $5a78: $f6 $08
    adc a                                         ; $5a7a: $8f
    db $eb                                        ; $5a7b: $eb
    ld l, h                                       ; $5a7c: $6c

Jump_04f_5a7d:
    rrca                                          ; $5a7d: $0f
    push de                                       ; $5a7e: $d5
    call $db3a                                    ; $5a7f: $cd $3a $db
    dec d                                         ; $5a82: $15
    adc a                                         ; $5a83: $8f
    add l                                         ; $5a84: $85
    db $e4                                        ; $5a85: $e4
    ld sp, $4d4b                                  ; $5a86: $31 $4b $4d
    dec hl                                        ; $5a89: $2b
    dec de                                        ; $5a8a: $1b
    inc hl                                        ; $5a8b: $23
    cp a                                          ; $5a8c: $bf
    cp d                                          ; $5a8d: $ba
    ld a, h                                       ; $5a8e: $7c
    ld [hl], $7c                                  ; $5a8f: $36 $7c
    jp hl                                         ; $5a91: $e9


    jp Jump_000_03bd                              ; $5a92: $c3 $bd $03


    ld [hl+], a                                   ; $5a95: $22
    adc a                                         ; $5a96: $8f
    ld c, e                                       ; $5a97: $4b
    ld c, l                                       ; $5a98: $4d
    cp a                                          ; $5a99: $bf
    rst $38                                       ; $5a9a: $ff
    xor a                                         ; $5a9b: $af
    call c, $91d7                                 ; $5a9c: $dc $d7 $91
    dec a                                         ; $5a9f: $3d
    ld h, h                                       ; $5aa0: $64
    and l                                         ; $5aa1: $a5
    adc a                                         ; $5aa2: $8f
    db $fc                                        ; $5aa3: $fc
    jp z, Jump_04f_6439                           ; $5aa4: $ca $39 $64

    daa                                           ; $5aa7: $27
    cp l                                          ; $5aa8: $bd
    ld a, d                                       ; $5aa9: $7a
    jr c, jr_04f_5aeb                             ; $5aaa: $38 $3f

    dec de                                        ; $5aac: $1b
    di                                            ; $5aad: $f3
    ld [hl], $ff                                  ; $5aae: $36 $ff
    ld h, a                                       ; $5ab0: $67
    cpl                                           ; $5ab1: $2f
    dec a                                         ; $5ab2: $3d
    rst $30                                       ; $5ab3: $f7
    xor c                                         ; $5ab4: $a9
    db $e3                                        ; $5ab5: $e3
    rst $20                                       ; $5ab6: $e7
    add sp, $65                                   ; $5ab7: $e8 $65
    ld b, e                                       ; $5ab9: $43
    rst $30                                       ; $5aba: $f7
    ld d, b                                       ; $5abb: $50
    db $dd                                        ; $5abc: $dd
    xor h                                         ; $5abd: $ac
    sbc c                                         ; $5abe: $99
    sub h                                         ; $5abf: $94
    ld [hl], $66                                  ; $5ac0: $36 $66
    xor c                                         ; $5ac2: $a9
    ld l, c                                       ; $5ac3: $69
    push de                                       ; $5ac4: $d5
    db $d3                                        ; $5ac5: $d3
    ld l, a                                       ; $5ac6: $6f
    ld l, $5f                                     ; $5ac7: $2e $5f
    db $f4                                        ; $5ac9: $f4
    ld c, h                                       ; $5aca: $4c

Jump_04f_5acb:
    ld c, d                                       ; $5acb: $4a
    ld e, e                                       ; $5acc: $5b
    cp c                                          ; $5acd: $b9
    ld c, a                                       ; $5ace: $4f
    xor $8e                                       ; $5acf: $ee $8e
    ld e, [hl]                                    ; $5ad1: $5e
    ld a, [hl-]                                   ; $5ad2: $3a
    ld a, [hl-]                                   ; $5ad3: $3a
    xor h                                         ; $5ad4: $ac
    xor l                                         ; $5ad5: $ad
    sub l                                         ; $5ad6: $95
    ei                                            ; $5ad7: $fb
    jr c, jr_04f_5b58                             ; $5ad8: $38 $7e

    ld hl, $98e3                                  ; $5ada: $21 $e3 $98
    add a                                         ; $5add: $87
    adc l                                         ; $5ade: $8d
    ld e, [hl]                                    ; $5adf: $5e
    cp c                                          ; $5ae0: $b9
    cpl                                           ; $5ae1: $2f
    db $eb                                        ; $5ae2: $eb
    add a                                         ; $5ae3: $87
    ld e, [hl]                                    ; $5ae4: $5e
    db $d3                                        ; $5ae5: $d3
    xor a                                         ; $5ae6: $af
    sbc l                                         ; $5ae7: $9d
    inc e                                         ; $5ae8: $1c
    reti                                          ; $5ae9: $d9


    ld l, e                                       ; $5aea: $6b

jr_04f_5aeb:
    ccf                                           ; $5aeb: $3f
    adc b                                         ; $5aec: $88
    ld e, a                                       ; $5aed: $5f
    inc hl                                        ; $5aee: $23
    ld [hl], b                                    ; $5aef: $70
    and b                                         ; $5af0: $a0
    add d                                         ; $5af1: $82
    ld hl, sp+$35                                 ; $5af2: $f8 $35
    ld [de], a                                    ; $5af4: $12
    or d                                          ; $5af5: $b2
    and e                                         ; $5af6: $a3
    sub a                                         ; $5af7: $97
    ld a, a                                       ; $5af8: $7f
    ld [c], a                                     ; $5af9: $e2
    db $10                                        ; $5afa: $10
    ld bc, $084f                                  ; $5afb: $01 $4f $08
    ld c, e                                       ; $5afe: $4b
    ld l, h                                       ; $5aff: $6c
    call Call_04f_755e                            ; $5b00: $cd $5e $75
    or [hl]                                       ; $5b03: $b6
    add a                                         ; $5b04: $87
    ld [$c166], a                                 ; $5b05: $ea $66 $c1
    add c                                         ; $5b08: $81
    and l                                         ; $5b09: $a5
    or e                                          ; $5b0a: $b3
    ret                                           ; $5b0b: $c9


    adc b                                         ; $5b0c: $88
    and c                                         ; $5b0d: $a1
    inc [hl]                                      ; $5b0e: $34
    ld a, d                                       ; $5b0f: $7a
    call c, $97a9                                 ; $5b10: $dc $a9 $97
    ld b, e                                       ; $5b13: $43
    ld a, h                                       ; $5b14: $7c
    and h                                         ; $5b15: $a4
    ld h, h                                       ; $5b16: $64
    ld [hl], $19                                  ; $5b17: $36 $19
    ld [hl], a                                    ; $5b19: $77
    ld [$ba6f], a                                 ; $5b1a: $ea $6f $ba
    ld d, [hl]                                    ; $5b1d: $56
    rst $38                                       ; $5b1e: $ff
    rst $10                                       ; $5b1f: $d7
    ld [hl], b                                    ; $5b20: $70
    ld [hl], e                                    ; $5b21: $73
    adc b                                         ; $5b22: $88
    sbc d                                         ; $5b23: $9a
    ld c, l                                       ; $5b24: $4d
    add $4c                                       ; $5b25: $c6 $4c
    or d                                          ; $5b27: $b2
    adc a                                         ; $5b28: $8f
    cp e                                          ; $5b29: $bb
    add hl, hl                                    ; $5b2a: $29
    or d                                          ; $5b2b: $b2
    xor e                                         ; $5b2c: $ab
    add hl, de                                    ; $5b2d: $19
    inc e                                         ; $5b2e: $1c
    ld [hl+], a                                   ; $5b2f: $22
    ld c, a                                       ; $5b30: $4f
    xor a                                         ; $5b31: $af
    xor l                                         ; $5b32: $ad
    adc [hl]                                      ; $5b33: $8e
    ld sp, hl                                     ; $5b34: $f9
    db $fd                                        ; $5b35: $fd
    ld a, a                                       ; $5b36: $7f
    ld [hl], d                                    ; $5b37: $72
    ld h, h                                       ; $5b38: $64
    xor a                                         ; $5b39: $af

Call_04f_5b3a:
    db $fd                                        ; $5b3a: $fd
    jr nz, jr_04f_5bbb                            ; $5b3b: $20 $7e

    adc l                                         ; $5b3d: $8d
    sbc h                                         ; $5b3e: $9c
    db $ed                                        ; $5b3f: $ed
    and c                                         ; $5b40: $a1
    cp d                                          ; $5b41: $ba
    ld e, c                                       ; $5b42: $59
    db $10                                        ; $5b43: $10
    ld bc, $e1e7                                  ; $5b44: $01 $e7 $e1
    db $e3                                        ; $5b47: $e3
    xor [hl]                                      ; $5b48: $ae
    ld c, b                                       ; $5b49: $48
    sbc $15                                       ; $5b4a: $de $15
    dec d                                         ; $5b4c: $15
    or d                                          ; $5b4d: $b2
    sub d                                         ; $5b4e: $92
    rra                                           ; $5b4f: $1f
    ld d, [hl]                                    ; $5b50: $56
    xor [hl]                                      ; $5b51: $ae
    xor b                                         ; $5b52: $a8
    sub l                                         ; $5b53: $95
    ei                                            ; $5b54: $fb
    or d                                          ; $5b55: $b2
    sub a                                         ; $5b56: $97
    ld c, b                                       ; $5b57: $48

jr_04f_5b58:
    ld c, l                                       ; $5b58: $4d
    adc [hl]                                      ; $5b59: $8e
    sbc $0f                                       ; $5b5a: $de $0f
    ld [c], a                                     ; $5b5c: $e2
    rst $10                                       ; $5b5d: $d7
    ld c, b                                       ; $5b5e: $48
    ret z                                         ; $5b5f: $c8

    adc [hl]                                      ; $5b60: $8e
    ld e, [hl]                                    ; $5b61: $5e
    cp $89                                        ; $5b62: $fe $89
    jp Jump_000_279d                              ; $5b64: $c3 $9d $27


    db $d3                                        ; $5b67: $d3
    xor d                                         ; $5b68: $aa
    ld b, a                                       ; $5b69: $47
    and e                                         ; $5b6a: $a3
    ld d, a                                       ; $5b6b: $57
    xor $fb                                       ; $5b6c: $ee $fb
    ld b, a                                       ; $5b6e: $47
    rst $10                                       ; $5b6f: $d7
    add h                                         ; $5b70: $84
    ld d, a                                       ; $5b71: $57
    ld b, [hl]                                    ; $5b72: $46
    ld d, [hl]                                    ; $5b73: $56
    ld [hl+], a                                   ; $5b74: $22
    dec h                                         ; $5b75: $25
    reti                                          ; $5b76: $d9


    ld c, e                                       ; $5b77: $4b
    ld [hl-], a                                   ; $5b78: $32
    ld b, h                                       ; $5b79: $44
    ld c, a                                       ; $5b7a: $4f
    xor e                                         ; $5b7b: $ab
    cp c                                          ; $5b7c: $b9
    ld d, e                                       ; $5b7d: $53
    cpl                                           ; $5b7e: $2f
    ld b, a                                       ; $5b7f: $47
    rrca                                          ; $5b80: $0f
    ld l, a                                       ; $5b81: $6f
    jp $ce45                                      ; $5b82: $c3 $45 $ce


    and [hl]                                      ; $5b85: $a6
    rlca                                          ; $5b86: $07
    ld a, $b9                                     ; $5b87: $3e $b9
    db $dd                                        ; $5b89: $dd
    pop af                                        ; $5b8a: $f1
    rst $38                                       ; $5b8b: $ff
    ld [$bf7f], a                                 ; $5b8c: $ea $7f $bf
    halt                                          ; $5b8f: $76
    sbc c                                         ; $5b90: $99
    sbc a                                         ; $5b91: $9f
    ld b, h                                       ; $5b92: $44
    db $eb                                        ; $5b93: $eb
    and a                                         ; $5b94: $a7
    cp h                                          ; $5b95: $bc
    call nz, Call_000_211f                        ; $5b96: $c4 $1f $21
    ldh [$93], a                                  ; $5b99: $e0 $93
    db $db                                        ; $5b9b: $db
    dec e                                         ; $5b9c: $1d
    rst $38                                       ; $5b9d: $ff
    ld c, a                                       ; $5b9e: $4f
    rrca                                          ; $5b9f: $0f
    ld e, a                                       ; $5ba0: $5f
    db $fd                                        ; $5ba1: $fd
    rst $28                                       ; $5ba2: $ef
    rst $10                                       ; $5ba3: $d7
    ld c, [hl]                                    ; $5ba4: $4e
    cpl                                           ; $5ba5: $2f
    dec sp                                        ; $5ba6: $3b
    sbc e                                         ; $5ba7: $9b
    call z, $210f                                 ; $5ba8: $cc $0f $21
    pop de                                        ; $5bab: $d1
    db $d3                                        ; $5bac: $d3
    xor [hl]                                      ; $5bad: $ae
    ld a, e                                       ; $5bae: $7b
    dec c                                         ; $5baf: $0d
    rst $20                                       ; $5bb0: $e7
    pop hl                                        ; $5bb1: $e1
    adc $c3                                       ; $5bb2: $ce $c3
    ld [hl], a                                    ; $5bb4: $77
    db $f4                                        ; $5bb5: $f4
    or d                                          ; $5bb6: $b2
    and c                                         ; $5bb7: $a1
    inc sp                                        ; $5bb8: $33
    ld [hl], h                                    ; $5bb9: $74
    ld e, d                                       ; $5bba: $5a

jr_04f_5bbb:
    ret                                           ; $5bbb: $c9


    or h                                          ; $5bbc: $b4
    or d                                          ; $5bbd: $b2
    or c                                          ; $5bbe: $b1
    sub e                                         ; $5bbf: $93
    ld [hl-], a                                   ; $5bc0: $32
    or d                                          ; $5bc1: $b2
    dec sp                                        ; $5bc2: $3b
    xor c                                         ; $5bc3: $a9
    inc d                                         ; $5bc4: $14
    add hl, bc                                    ; $5bc5: $09
    add c                                         ; $5bc6: $81
    ld [$4b8f], sp                                ; $5bc7: $08 $8f $4b
    dec l                                         ; $5bca: $2d
    ld de, $d5db                                  ; $5bcb: $11 $db $d5
    db $d3                                        ; $5bce: $d3
    sub d                                         ; $5bcf: $92
    ld e, $b3                                     ; $5bd0: $1e $b3
    call nc, Call_04f_4932                        ; $5bd2: $d4 $32 $49
    cp $8f                                        ; $5bd5: $fe $8f
    push hl                                       ; $5bd7: $e5
    ld e, b                                       ; $5bd8: $58
    ld [c], a                                     ; $5bd9: $e2
    cp e                                          ; $5bda: $bb
    di                                            ; $5bdb: $f3
    and h                                         ; $5bdc: $a4
    db $d3                                        ; $5bdd: $d3
    dec h                                         ; $5bde: $25
    adc a                                         ; $5bdf: $8f
    db $10                                        ; $5be0: $10
    rst $20                                       ; $5be1: $e7
    pop hl                                        ; $5be2: $e1
    db $d3                                        ; $5be3: $d3
    adc [hl]                                      ; $5be4: $8e
    ld e, $f9                                     ; $5be5: $1e $f9
    sub l                                         ; $5be7: $95
    ld [hl], e                                    ; $5be8: $73
    daa                                           ; $5be9: $27
    sub h                                         ; $5bea: $94
    add [hl]                                      ; $5beb: $86
    rst $28                                       ; $5bec: $ef
    add sp, -$03                                  ; $5bed: $e8 $fd
    db $eb                                        ; $5bef: $eb
    ld sp, $e492                                  ; $5bf0: $31 $92 $e4
    ld a, a                                       ; $5bf3: $7f
    sub l                                         ; $5bf4: $95
    ld b, e                                       ; $5bf5: $43
    inc b                                         ; $5bf6: $04
    rrca                                          ; $5bf7: $0f
    push de                                       ; $5bf8: $d5
    call $381a                                    ; $5bf9: $cd $1a $38
    db $e3                                        ; $5bfc: $e3
    ld e, $cd                                     ; $5bfd: $1e $cd
    ld a, [hl]                                    ; $5bff: $7e
    jr jr_04f_5c2d                                ; $5c00: $18 $2b

    ld b, l                                       ; $5c02: $45
    ld h, [hl]                                    ; $5c03: $66
    ld d, d                                       ; $5c04: $52
    jp c, $d1be                                   ; $5c05: $da $be $d1

    ld d, a                                       ; $5c08: $57
    xor $b3                                       ; $5c09: $ee $b3
    ret                                           ; $5c0b: $c9


    adc [hl]                                      ; $5c0c: $8e
    sbc [hl]                                      ; $5c0d: $9e
    halt                                          ; $5c0e: $76
    inc [hl]                                      ; $5c0f: $34
    ld a, e                                       ; $5c10: $7b
    inc b                                         ; $5c11: $04
    rst $20                                       ; $5c12: $e7
    pop hl                                        ; $5c13: $e1
    db $d3                                        ; $5c14: $d3
    xor d                                         ; $5c15: $aa
    sub a                                         ; $5c16: $97
    ld c, c                                       ; $5c17: $49
    cp b                                          ; $5c18: $b8
    cpl                                           ; $5c19: $2f
    ld h, h                                       ; $5c1a: $64
    and $b3                                       ; $5c1b: $e6 $b3
    ld d, d                                       ; $5c1d: $52
    and h                                         ; $5c1e: $a4
    nop                                           ; $5c1f: $00
    inc l                                         ; $5c20: $2c
    call c, $99f7                                 ; $5c21: $dc $f7 $99
    ld c, c                                       ; $5c24: $49
    sbc [hl]                                      ; $5c25: $9e
    ld d, [hl]                                    ; $5c26: $56
    dec a                                         ; $5c27: $3d
    xor $d4                                       ; $5c28: $ee $d4
    ld a, d                                       ; $5c2a: $7a
    adc c                                         ; $5c2b: $89
    db $fd                                        ; $5c2c: $fd

jr_04f_5c2d:
    push hl                                       ; $5c2d: $e5
    ld a, c                                       ; $5c2e: $79
    ld a, [hl]                                    ; $5c2f: $7e
    rst $38                                       ; $5c30: $ff
    ld e, a                                       ; $5c31: $5f
    ret z                                         ; $5c32: $c8

    ld c, b                                       ; $5c33: $48
    ret                                           ; $5c34: $c9


    dec d                                         ; $5c35: $15
    adc b                                         ; $5c36: $88
    nop                                           ; $5c37: $00
    rst $20                                       ; $5c38: $e7
    pop hl                                        ; $5c39: $e1
    ei                                            ; $5c3a: $fb
    cp h                                          ; $5c3b: $bc
    ld b, a                                       ; $5c3c: $47
    rst $08                                       ; $5c3d: $cf
    ld c, b                                       ; $5c3e: $48
    sub b                                         ; $5c3f: $90
    ld a, a                                       ; $5c40: $7f
    ld d, l                                       ; $5c41: $55
    ret z                                         ; $5c42: $c8

    or d                                          ; $5c43: $b2
    and c                                         ; $5c44: $a1
    dec bc                                        ; $5c45: $0b
    sbc c                                         ; $5c46: $99
    ld sp, hl                                     ; $5c47: $f9
    xor h                                         ; $5c48: $ac
    inc d                                         ; $5c49: $14
    add hl, hl                                    ; $5c4a: $29
    adc b                                         ; $5c4b: $88
    nop                                           ; $5c4c: $00
    rst $20                                       ; $5c4d: $e7
    pop hl                                        ; $5c4e: $e1
    db $d3                                        ; $5c4f: $d3
    xor e                                         ; $5c50: $ab
    rla                                           ; $5c51: $17
    xor $f3                                       ; $5c52: $ee $f3
    ld b, e                                       ; $5c54: $43
    ld a, h                                       ; $5c55: $7c
    sbc a                                         ; $5c56: $9f
    sbc c                                         ; $5c57: $99
    ld h, h                                       ; $5c58: $64
    ld [$49a1], sp                                ; $5c59: $08 $a1 $49
    ld l, c                                       ; $5c5c: $69
    or e                                          ; $5c5d: $b3
    ld hl, $8623                                  ; $5c5e: $21 $23 $86
    ld l, $11                                     ; $5c61: $2e $11
    ld e, e                                       ; $5c63: $5b
    jp nz, $db7e                                  ; $5c64: $c2 $7e $db

    db $e3                                        ; $5c67: $e3
    ld d, d                                       ; $5c68: $52
    dec sp                                        ; $5c69: $3b
    ld a, d                                       ; $5c6a: $7a
    ld a, l                                       ; $5c6b: $7d
    ld e, b                                       ; $5c6c: $58
    cp e                                          ; $5c6d: $bb
    ld [hl], d                                    ; $5c6e: $72
    sbc a                                         ; $5c6f: $9f
    dec c                                         ; $5c70: $0d
    rra                                           ; $5c71: $1f
    add hl, hl                                    ; $5c72: $29
    ld e, c                                       ; $5c73: $59
    ld a, [$ccd4]                                 ; $5c74: $fa $d4 $cc
    ld e, d                                       ; $5c77: $5a
    cp d                                          ; $5c78: $ba
    xor a                                         ; $5c79: $af
    ld c, b                                       ; $5c7a: $48

jr_04f_5c7b:
    pop bc                                        ; $5c7b: $c1
    dec a                                         ; $5c7c: $3d
    ld l, $b5                                     ; $5c7d: $2e $b5
    ld [hl], h                                    ; $5c7f: $74
    ld l, b                                       ; $5c80: $68
    daa                                           ; $5c81: $27
    dec a                                         ; $5c82: $3d
    ld a, d                                       ; $5c83: $7a
    jp nz, $232b                                  ; $5c84: $c2 $2b $23

    res 0, [hl]                                   ; $5c87: $cb $86
    adc [hl]                                      ; $5c89: $8e
    sub h                                         ; $5c8a: $94
    adc h                                         ; $5c8b: $8c
    db $e3                                        ; $5c8c: $e3
    ld b, l                                       ; $5c8d: $45
    push de                                       ; $5c8e: $d5
    ld l, h                                       ; $5c8f: $6c
    ld [$d81c], sp                                ; $5c90: $08 $1c $d8
    sub h                                         ; $5c93: $94
    ld [hl], $66                                  ; $5c94: $36 $66
    xor c                                         ; $5c96: $a9
    dec h                                         ; $5c97: $25
    sbc [hl]                                      ; $5c98: $9e
    and e                                         ; $5c99: $a3
    ld h, a                                       ; $5c9a: $67
    xor a                                         ; $5c9b: $af
    sbc d                                         ; $5c9c: $9a
    rst $18                                       ; $5c9d: $df
    rst $38                                       ; $5c9e: $ff
    ld d, a                                       ; $5c9f: $57
    xor $53                                       ; $5ca0: $ee $53
    and a                                         ; $5ca2: $a7
    xor [hl]                                      ; $5ca3: $ae
    reti                                          ; $5ca4: $d9


    ld [hl], b                                    ; $5ca5: $70
    adc b                                         ; $5ca6: $88
    nop                                           ; $5ca7: $00
    rrca                                          ; $5ca8: $0f
    ld c, c                                       ; $5ca9: $49
    adc a                                         ; $5caa: $8f
    inc e                                         ; $5cab: $1c
    ld [hl+], a                                   ; $5cac: $22
    pop de                                        ; $5cad: $d1
    ld h, e                                       ; $5cae: $63
    sub [hl]                                      ; $5caf: $96
    jp c, $2155                                   ; $5cb0: $da $55 $21

    inc hl                                        ; $5cb3: $23
    dec h                                         ; $5cb4: $25
    ld d, a                                       ; $5cb5: $57
    ld b, d                                       ; $5cb6: $42
    ld h, [hl]                                    ; $5cb7: $66
    add sp, -$68                                  ; $5cb8: $e8 $98
    and l                                         ; $5cba: $a5
    sub [hl]                                      ; $5cbb: $96
    and e                                         ; $5cbc: $a3
    ld h, a                                       ; $5cbd: $67
    ld b, e                                       ; $5cbe: $43
    ld e, $21                                     ; $5cbf: $1e $21
    rst $20                                       ; $5cc1: $e7
    ld hl, $7a3b                                  ; $5cc2: $21 $3b $7a
    rst $38                                       ; $5cc5: $ff
    cp $82                                        ; $5cc6: $fe $82
    dec sp                                        ; $5cc8: $3b
    rrca                                          ; $5cc9: $0f
    rst $18                                       ; $5cca: $df
    pop de                                        ; $5ccb: $d1
    inc sp                                        ; $5ccc: $33
    ld a, d                                       ; $5ccd: $7a
    ret                                           ; $5cce: $c9


    cp a                                          ; $5ccf: $bf
    jp z, Jump_04f_76cf                           ; $5cd0: $ca $cf $76

    add sp, $21                                   ; $5cd3: $e8 $21
    db $e3                                        ; $5cd5: $e3
    ld c, [hl]                                    ; $5cd6: $4e
    cp l                                          ; $5cd7: $bd
    rlca                                          ; $5cd8: $07
    and e                                         ; $5cd9: $a3
    jr jr_04f_5d31                                ; $5cda: $18 $55

    ld a, e                                       ; $5cdc: $7b
    add [hl]                                      ; $5cdd: $86
    inc bc                                        ; $5cde: $03
    ld c, e                                       ; $5cdf: $4b
    ld h, a                                       ; $5ce0: $67
    sub e                                         ; $5ce1: $93
    ld [hl], c                                    ; $5ce2: $71
    cp h                                          ; $5ce3: $bc
    xor b                                         ; $5ce4: $a8
    ld [$90d9], a                                 ; $5ce5: $ea $d9 $90
    sbc c                                         ; $5ce8: $99
    sub h                                         ; $5ce9: $94
    ld [hl], $62                                  ; $5cea: $36 $62
    jr z, jr_04f_5c7b                             ; $5cec: $28 $8d

    sbc [hl]                                      ; $5cee: $9e
    halt                                          ; $5cef: $76
    ld a, l                                       ; $5cf0: $7d
    inc [hl]                                      ; $5cf1: $34
    db $ec                                        ; $5cf2: $ec
    ld l, h                                       ; $5cf3: $6c
    ret z                                         ; $5cf4: $c8

    ld [hl-], a                                   ; $5cf5: $32
    xor c                                         ; $5cf6: $a9
    ld sp, $ed4b                                  ; $5cf7: $31 $4b $ed
    rra                                           ; $5cfa: $1f
    ld e, l                                       ; $5cfb: $5d
    or e                                          ; $5cfc: $b3
    ld d, a                                       ; $5cfd: $57
    dec l                                         ; $5cfe: $2d
    ld h, h                                       ; $5cff: $64
    jp nz, $b79a                                  ; $5d00: $c2 $9a $b7

    ld sp, hl                                     ; $5d03: $f9
    sbc a                                         ; $5d04: $9f
    inc sp                                        ; $5d05: $33
    ld c, l                                       ; $5d06: $4d
    db $e3                                        ; $5d07: $e3
    ld b, e                                       ; $5d08: $43
    inc b                                         ; $5d09: $04
    adc a                                         ; $5d0a: $8f
    ld c, e                                       ; $5d0b: $4b
    dec l                                         ; $5d0c: $2d
    ld a, a                                       ; $5d0d: $7f
    cp [hl]                                       ; $5d0e: $be
    and a                                         ; $5d0f: $a7
    sub a                                         ; $5d10: $97
    sbc l                                         ; $5d11: $9d
    and c                                         ; $5d12: $a1
    dec hl                                        ; $5d13: $2b
    rst $30                                       ; $5d14: $f7
    reti                                          ; $5d15: $d9


    sub b                                         ; $5d16: $90
    ld [hl], c                                    ; $5d17: $71
    and a                                         ; $5d18: $a7
    adc $27                                       ; $5d19: $ce $27
    ld [de], a                                    ; $5d1b: $12
    dec a                                         ; $5d1c: $3d
    xor a                                         ; $5d1d: $af
    push hl                                       ; $5d1e: $e5
    xor e                                         ; $5d1f: $ab
    sub [hl]                                      ; $5d20: $96
    jr c, jr_04f_5d67                             ; $5d21: $38 $44

    and b                                         ; $5d23: $a0
    ld e, b                                       ; $5d24: $58
    add hl, hl                                    ; $5d25: $29
    ld d, d                                       ; $5d26: $52
    di                                            ; $5d27: $f3
    ei                                            ; $5d28: $fb
    rst $38                                       ; $5d29: $ff
    reti                                          ; $5d2a: $d9


    ld e, $aa                                     ; $5d2b: $1e $aa
    sbc e                                         ; $5d2d: $9b
    dec b                                         ; $5d2e: $05
    rlca                                          ; $5d2f: $07
    adc b                                         ; $5d30: $88

jr_04f_5d31:
    ld a, b                                       ; $5d31: $78
    dec l                                         ; $5d32: $2d
    di                                            ; $5d33: $f3
    or e                                          ; $5d34: $b3
    ret                                           ; $5d35: $c9


    xor [hl]                                      ; $5d36: $ae
    ld a, b                                       ; $5d37: $78
    inc l                                         ; $5d38: $2c
    db $dd                                        ; $5d39: $dd
    add a                                         ; $5d3a: $87
    ld c, b                                       ; $5d3b: $48
    db $f4                                        ; $5d3c: $f4
    db $ec                                        ; $5d3d: $ec
    ld d, l                                       ; $5d3e: $55
    db $10                                        ; $5d3f: $10
    ld bc, $4b20                                  ; $5d40: $01 $20 $4b
    xor [hl]                                      ; $5d43: $ae
    add h                                         ; $5d44: $84
    db $ec                                        ; $5d45: $ec
    add sp, $5d                                   ; $5d46: $e8 $5d
    pop af                                        ; $5d48: $f1
    sbc b                                         ; $5d49: $98
    halt                                          ; $5d4a: $76
    db $f4                                        ; $5d4b: $f4
    reti                                          ; $5d4c: $d9


    ld e, $aa                                     ; $5d4d: $1e $aa
    sbc e                                         ; $5d4f: $9b
    push bc                                       ; $5d50: $c5
    ld a, [hl]                                    ; $5d51: $7e
    ld c, a                                       ; $5d52: $4f
    ld [$6c4b], sp                                ; $5d53: $08 $4b $6c
    call $b55e                                    ; $5d56: $cd $5e $b5
    ld [hl], d                                    ; $5d59: $72
    sbc a                                         ; $5d5a: $9f
    halt                                          ; $5d5b: $76
    db $dd                                        ; $5d5c: $dd
    ld l, e                                       ; $5d5d: $6b
    ld [hl], $84                                  ; $5d5e: $36 $84
    dec a                                         ; $5d60: $3d
    ld [bc], a                                    ; $5d61: $02
    rrca                                          ; $5d62: $0f
    push de                                       ; $5d63: $d5
    or e                                          ; $5d64: $b3
    ret                                           ; $5d65: $c9


    ld [hl], d                                    ; $5d66: $72

jr_04f_5d67:
    cp b                                          ; $5d67: $b8
    cpl                                           ; $5d68: $2f
    ld h, h                                       ; $5d69: $64
    rst $38                                       ; $5d6a: $ff
    cp $1a                                        ; $5d6b: $fe $1a
    add hl, hl                                    ; $5d6d: $29
    cp c                                          ; $5d6e: $b9
    ld a, [c]                                     ; $5d6f: $f2
    ld [$8f01], sp                                ; $5d70: $08 $01 $8f
    db $eb                                        ; $5d73: $eb
    ld l, h                                       ; $5d74: $6c
    ld [hl], $64                                  ; $5d75: $36 $64
    add hl, de                                    ; $5d77: $19
    rst $28                                       ; $5d78: $ef
    ld [de], a                                    ; $5d79: $12
    or l                                          ; $5d7a: $b5
    xor e                                         ; $5d7b: $ab
    rra                                           ; $5d7c: $1f
    ld l, d                                       ; $5d7d: $6a
    call nc, $bcf8                                ; $5d7e: $d4 $f8 $bc
    dec bc                                        ; $5d81: $0b
    rst $00                                       ; $5d82: $c7
    ld c, l                                       ; $5d83: $4d
    ld c, e                                       ; $5d84: $4b
    ld b, c                                       ; $5d85: $41
    inc b                                         ; $5d86: $04
    adc a                                         ; $5d87: $8f
    ld c, e                                       ; $5d88: $4b
    dec l                                         ; $5d89: $2d
    di                                            ; $5d8a: $f3
    ld l, d                                       ; $5d8b: $6a
    ld hl, $2523                                  ; $5d8c: $21 $23 $25
    ld d, a                                       ; $5d8f: $57
    halt                                          ; $5d90: $76
    rst $20                                       ; $5d91: $e7
    ld e, l                                       ; $5d92: $5d
    jr c, jr_04f_5df3                             ; $5d93: $38 $5e

    ld [hl-], a                                   ; $5d95: $32
    cp a                                          ; $5d96: $bf
    rst $38                                       ; $5d97: $ff
    cpl                                           ; $5d98: $2f
    ld l, l                                       ; $5d99: $6d
    call c, Call_04f_7443                         ; $5d9a: $dc $43 $74
    ld e, [hl]                                    ; $5d9d: $5e
    xor [hl]                                      ; $5d9e: $ae
    xor b                                         ; $5d9f: $a8
    db $10                                        ; $5da0: $10
    cp b                                          ; $5da1: $b8
    rst $00                                       ; $5da2: $c7
    and l                                         ; $5da3: $a5
    ld b, [hl]                                    ; $5da4: $46
    inc c                                         ; $5da5: $0c
    and l                                         ; $5da6: $a5
    pop de                                        ; $5da7: $d1
    cp e                                          ; $5da8: $bb
    ld [c], a                                     ; $5da9: $e2
    or c                                          ; $5daa: $b1
    xor e                                         ; $5dab: $ab
    pop af                                        ; $5dac: $f1
    ld l, d                                       ; $5dad: $6a
    ld a, [$24fd]                                 ; $5dae: $fa $fd $24
    ld h, h                                       ; $5db1: $64
    call c, Call_04f_6ad1                         ; $5db2: $dc $d1 $6a
    ld [hl], $64                                  ; $5db5: $36 $64
    ld e, d                                       ; $5db7: $5a
    reti                                          ; $5db8: $d9


    add b                                         ; $5db9: $80
    ld [$c9e7], sp                                ; $5dba: $08 $e7 $c9
    db $f4                                        ; $5dbd: $f4
    ld l, b                                       ; $5dbe: $68
    ld d, d                                       ; $5dbf: $52
    cp l                                          ; $5dc0: $bd
    dec hl                                        ; $5dc1: $2b
    ld e, $cb                                     ; $5dc2: $1e $cb
    ld a, b                                       ; $5dc4: $78
    adc b                                         ; $5dc5: $88
    adc l                                         ; $5dc6: $8d
    xor [hl]                                      ; $5dc7: $ae
    ld d, c                                       ; $5dc8: $51
    ld d, [hl]                                    ; $5dc9: $56
    adc d                                         ; $5dca: $8a
    add h                                         ; $5dcb: $84
    rst $08                                       ; $5dcc: $cf
    xor a                                         ; $5dcd: $af
    db $dd                                        ; $5dce: $dd
    dec e                                         ; $5dcf: $1d
    ld sp, hl                                     ; $5dd0: $f9
    sub l                                         ; $5dd1: $95
    ld [hl], e                                    ; $5dd2: $73
    daa                                           ; $5dd3: $27
    sub h                                         ; $5dd4: $94
    add [hl]                                      ; $5dd5: $86
    sbc a                                         ; $5dd6: $9f
    db $ed                                        ; $5dd7: $ed
    and c                                         ; $5dd8: $a1
    cp d                                          ; $5dd9: $ba
    ld e, c                                       ; $5dda: $59
    db $10                                        ; $5ddb: $10
    ld bc, $a2e0                                  ; $5ddc: $01 $e0 $a2
    ld d, e                                       ; $5ddf: $53
    xor h                                         ; $5de0: $ac
    or e                                          ; $5de1: $b3
    ld l, c                                       ; $5de2: $69
    push de                                       ; $5de3: $d5
    or e                                          ; $5de4: $b3
    ret                                           ; $5de5: $c9


    ld [hl], d                                    ; $5de6: $72
    cp b                                          ; $5de7: $b8
    cpl                                           ; $5de8: $2f
    ld h, h                                       ; $5de9: $64
    rst $38                                       ; $5dea: $ff
    cp $1a                                        ; $5deb: $fe $1a
    add hl, hl                                    ; $5ded: $29
    cp c                                          ; $5dee: $b9
    ld [hl-], a                                   ; $5def: $32
    db $ed                                        ; $5df0: $ed
    add sp, $19                                   ; $5df1: $e8 $19

jr_04f_5df3:
    ld c, d                                       ; $5df3: $4a
    ld a, [$7a8a]                                 ; $5df4: $fa $8a $7a
    add h                                         ; $5df7: $84
    nop                                           ; $5df8: $00
    adc a                                         ; $5df9: $8f
    db $eb                                        ; $5dfa: $eb
    ld l, h                                       ; $5dfb: $6c
    ld [hl], $64                                  ; $5dfc: $36 $64
    sbc d                                         ; $5dfe: $9a
    pop bc                                        ; $5dff: $c1
    pop af                                        ; $5e00: $f1
    or d                                          ; $5e01: $b2
    or c                                          ; $5e02: $b1
    call nz, Call_04f_42a7                        ; $5e03: $c4 $a7 $42
    inc c                                         ; $5e06: $0c
    sbc l                                         ; $5e07: $9d
    dec a                                         ; $5e08: $3d
    ld [hl], l                                    ; $5e09: $75
    add a                                         ; $5e0a: $87
    call z, $ffef                                 ; $5e0b: $cc $ef $ff
    set 0, h                                      ; $5e0e: $cb $c4
    ld a, h                                       ; $5e10: $7c
    ld b, e                                       ; $5e11: $43
    sbc e                                         ; $5e12: $9b
    or a                                          ; $5e13: $b7
    pop hl                                        ; $5e14: $e1
    ld [hl], b                                    ; $5e15: $70
    ld c, a                                       ; $5e16: $4f
    xor e                                         ; $5e17: $ab
    cp c                                          ; $5e18: $b9
    ld d, e                                       ; $5e19: $53
    rst $28                                       ; $5e1a: $ef
    add sp, -$27                                  ; $5e1b: $e8 $d9
    sub b                                         ; $5e1d: $90
    db $fd                                        ; $5e1e: $fd
    ei                                            ; $5e1f: $fb
    db $eb                                        ; $5e20: $eb
    ld de, $e702                                  ; $5e21: $11 $02 $e7
    ld hl, $7a3b                                  ; $5e24: $21 $3b $7a
    pop hl                                        ; $5e27: $e1
    ld a, $3f                                     ; $5e28: $3e $3f
    call nz, $99f7                                ; $5e2a: $c4 $f7 $99
    ld c, c                                       ; $5e2d: $49
    ld e, [hl]                                    ; $5e2e: $5e
    ld [hl], $74                                  ; $5e2f: $36 $74
    call c, $f5a9                                 ; $5e31: $dc $a9 $f5
    ld [de], a                                    ; $5e34: $12
    ei                                            ; $5e35: $fb
    bit 0, [hl]                                   ; $5e36: $cb $46
    sbc [hl]                                      ; $5e38: $9e
    rst $18                                       ; $5e39: $df
    rst $38                                       ; $5e3a: $ff
    ld b, a                                       ; $5e3b: $47
    ld c, d                                       ; $5e3c: $4a
    xor [hl]                                      ; $5e3d: $ae
    xor h                                         ; $5e3e: $ac
    db $f4                                        ; $5e3f: $f4
    pop de                                        ; $5e40: $d1
    sbc e                                         ; $5e41: $9b
    or e                                          ; $5e42: $b3
    sub a                                         ; $5e43: $97
    add d                                         ; $5e44: $82
    ld [$e1e7], sp                                ; $5e45: $08 $e7 $e1
    db $e3                                        ; $5e48: $e3
    ld c, [hl]                                    ; $5e49: $4e
    ld c, l                                       ; $5e4a: $4d
    ld a, [hl]                                    ; $5e4b: $7e
    ld [hl], l                                    ; $5e4c: $75
    push af                                       ; $5e4d: $f5
    db $f4                                        ; $5e4e: $f4
    ld l, d                                       ; $5e4f: $6a
    xor $d4                                       ; $5e50: $ee $d4
    or e                                          ; $5e52: $b3
    pop hl                                        ; $5e53: $e1
    dec sp                                        ; $5e54: $3b
    ld a, d                                       ; $5e55: $7a
    ld a, d                                       ; $5e56: $7a
    ld sp, $ce1e                                  ; $5e57: $31 $1e $ce
    ld c, a                                       ; $5e5a: $4f
    sbc c                                         ; $5e5b: $99
    xor a                                         ; $5e5c: $af
    add a                                         ; $5e5d: $87
    ld b, e                                       ; $5e5e: $43
    inc b                                         ; $5e5f: $04
    and b                                         ; $5e60: $a0
    ld d, e                                       ; $5e61: $53
    ret nz                                        ; $5e62: $c0

    adc l                                         ; $5e63: $8d
    sub h                                         ; $5e64: $94
    xor d                                         ; $5e65: $aa
    rst $38                                       ; $5e66: $ff
    and a                                         ; $5e67: $a7
    rst $18                                       ; $5e68: $df
    rst $38                                       ; $5e69: $ff
    ld d, a                                       ; $5e6a: $57
    xor $63                                       ; $5e6b: $ee $63
    sub [hl]                                      ; $5e6d: $96
    ld a, [de]                                    ; $5e6e: $1a
    rst $00                                       ; $5e6f: $c7
    adc e                                         ; $5e70: $8b
    xor d                                         ; $5e71: $aa
    sbc [hl]                                      ; $5e72: $9e
    dec c                                         ; $5e73: $0d
    add c                                         ; $5e74: $81
    ld [$4b8f], sp                                ; $5e75: $08 $8f $4b
    dec l                                         ; $5e78: $2d
    di                                            ; $5e79: $f3
    ld l, d                                       ; $5e7a: $6a
    ld hl, $f9c3                                  ; $5e7b: $21 $c3 $f9
    and l                                         ; $5e7e: $a5
    adc l                                         ; $5e7f: $8d
    ld a, e                                       ; $5e80: $7b
    adc b                                         ; $5e81: $88
    adc $cb                                       ; $5e82: $ce $cb
    dec d                                         ; $5e84: $15
    dec d                                         ; $5e85: $15
    or d                                          ; $5e86: $b2
    ld a, [$c6df]                                 ; $5e87: $fa $df $c6
    adc a                                         ; $5e8a: $8f
    inc a                                         ; $5e8b: $3c
    ld h, c                                       ; $5e8c: $61
    push hl                                       ; $5e8d: $e5

Call_04f_5e8e:
Jump_04f_5e8e:
    inc c                                         ; $5e8e: $0c
    ld de, $8260                                  ; $5e8f: $11 $60 $82
    add hl, bc                                    ; $5e92: $09
    rst $30                                       ; $5e93: $f7
    ld d, b                                       ; $5e94: $50
    dec a                                         ; $5e95: $3d
    sbc e                                         ; $5e96: $9b
    inc a                                         ; $5e97: $3c
    ld b, d                                       ; $5e98: $42
    rst $20                                       ; $5e99: $e7
    pop hl                                        ; $5e9a: $e1
    db $d3                                        ; $5e9b: $d3
    jp Jump_000_2cc7                              ; $5e9c: $c3 $c7 $2c


    or l                                          ; $5e9f: $b5
    dec hl                                        ; $5ea0: $2b
    ld a, [hl+]                                   ; $5ea1: $2a
    call nz, $a8af                                ; $5ea2: $c4 $af $a8
    add hl, de                                    ; $5ea5: $19
    ld a, [bc]                                    ; $5ea6: $0a
    ld de, $8260                                  ; $5ea7: $11 $60 $82
    add hl, bc                                    ; $5eaa: $09
    rst $30                                       ; $5eab: $f7
    add h                                         ; $5eac: $84
    inc h                                         ; $5ead: $24
    rst $38                                       ; $5eae: $ff
    rst $00                                       ; $5eaf: $c7
    sbc b                                         ; $5eb0: $98
    and l                                         ; $5eb1: $a5
    ld h, [hl]                                    ; $5eb2: $66
    jp Jump_000_211f                              ; $5eb3: $c3 $1f $21


    adc a                                         ; $5eb6: $8f
    ld c, e                                       ; $5eb7: $4b
    ld c, l                                       ; $5eb8: $4d
    xor e                                         ; $5eb9: $ab
    sbc $15                                       ; $5eba: $de $15
    adc a                                         ; $5ebc: $8f
    push hl                                       ; $5ebd: $e5
    ld [hl], b                                    ; $5ebe: $70
    sbc a                                         ; $5ebf: $9f
    ldh a, [$ca]                                  ; $5ec0: $f0 $ca
    ret z                                         ; $5ec2: $c8

    ld c, b                                       ; $5ec3: $48
    ret                                           ; $5ec4: $c9


    sub l                                         ; $5ec5: $95
    push de                                       ; $5ec6: $d5
    rst $38                                       ; $5ec7: $ff
    add hl, de                                    ; $5ec8: $19
    ld [hl+], a                                   ; $5ec9: $22
    and b                                         ; $5eca: $a0
    ld sp, hl                                     ; $5ecb: $f9
    sbc [hl]                                      ; $5ecc: $9e
    ld c, l                                       ; $5ecd: $4d
    sub [hl]                                      ; $5ece: $96
    xor $3a                                       ; $5ecf: $ee $3a
    db $db                                        ; $5ed1: $db
    ld b, e                                       ; $5ed2: $43
    ld [hl], l                                    ; $5ed3: $75
    or e                                          ; $5ed4: $b3
    ld e, $21                                     ; $5ed5: $1e $21
    ld c, a                                       ; $5ed7: $4f
    db $fc                                        ; $5ed8: $fc
    ld hl, sp+$7f                                 ; $5ed9: $f8 $7f
    or $4a                                        ; $5edb: $f6 $4a
    call $9426                                    ; $5edd: $cd $26 $94
    sub $b8                                       ; $5ee0: $d6 $b8
    and $95                                       ; $5ee2: $e6 $95
    jp hl                                         ; $5ee4: $e9


    add hl, bc                                    ; $5ee5: $09
    xor a                                         ; $5ee6: $af
    adc h                                         ; $5ee7: $8c
    xor h                                         ; $5ee8: $ac
    ld b, h                                       ; $5ee9: $44
    ld c, d                                       ; $5eea: $4a
    or d                                          ; $5eeb: $b2
    sub a                                         ; $5eec: $97
    ld h, h                                       ; $5eed: $64
    or $08                                        ; $5eee: $f6 $08
    ret nz                                        ; $5ef0: $c0

    ld a, [$10c8]                                 ; $5ef1: $fa $c8 $10
    ld bc, $8260                                  ; $5ef4: $01 $60 $82
    ld a, c                                       ; $5ef7: $79
    ld [hl], $1a                                  ; $5ef8: $36 $1a
    ld [hl-], a                                   ; $5efa: $32
    dec de                                        ; $5efb: $1b
    cp [hl]                                       ; $5efc: $be
    ld c, h                                       ; $5efd: $4c
    sub d                                         ; $5efe: $92
    rst $38                                       ; $5eff: $ff
    ld h, e                                       ; $5f00: $63
    call z, Call_04f_5352                         ; $5f01: $cc $52 $53
    ld b, a                                       ; $5f04: $47
    ld c, e                                       ; $5f05: $4b
    ld c, l                                       ; $5f06: $4d
    cp a                                          ; $5f07: $bf
    sbc a                                         ; $5f08: $9f
    ld e, c                                       ; $5f09: $59
    db $10                                        ; $5f0a: $10
    ld bc, $4b8f                                  ; $5f0b: $01 $8f $4b
    ld c, l                                       ; $5f0e: $4d
    xor e                                         ; $5f0f: $ab
    sbc $15                                       ; $5f10: $de $15
    adc a                                         ; $5f12: $8f
    ld sp, hl                                     ; $5f13: $f9
    or l                                          ; $5f14: $b5
    and e                                         ; $5f15: $a3
    ld h, c                                       ; $5f16: $61
    and a                                         ; $5f17: $a7
    ld a, b                                       ; $5f18: $78
    scf                                           ; $5f19: $37
    ld a, l                                       ; $5f1a: $7d
    ld [hl], $70                                  ; $5f1b: $36 $70
    add $3d                                       ; $5f1d: $c6 $3d
    ld a, [de]                                    ; $5f1f: $1a
    ld [hl+], a                                   ; $5f20: $22
    ret nz                                        ; $5f21: $c0

    sbc d                                         ; $5f22: $9a
    ld d, a                                       ; $5f23: $57
    or l                                          ; $5f24: $b5
    add a                                         ; $5f25: $87
    ld d, d                                       ; $5f26: $52
    ld a, l                                       ; $5f27: $7d
    dec l                                         ; $5f28: $2d
    call c, $c943                                 ; $5f29: $dc $43 $c9
    db $f4                                        ; $5f2c: $f4
    ldh a, [$d5]                                  ; $5f2d: $f0 $d5
    rst $38                                       ; $5f2f: $ff
    ld a, [hl]                                    ; $5f30: $7e
    db $ed                                        ; $5f31: $ed
    db $f4                                        ; $5f32: $f4
    ei                                            ; $5f33: $fb
    ld c, c                                       ; $5f34: $49
    call $9332                                    ; $5f35: $cd $32 $93
    ld e, [hl]                                    ; $5f38: $5e
    ld [hl], $74                                  ; $5f39: $36 $74
    call nz, $1a50                                ; $5f3b: $c4 $50 $1a
    dec a                                         ; $5f3e: $3d
    sub e                                         ; $5f3f: $93
    jp nc, $f8a6                                  ; $5f40: $d2 $a6 $f8

    ld e, $ce                                     ; $5f43: $1e $ce
    cpl                                           ; $5f45: $2f
    inc de                                        ; $5f46: $13
    di                                            ; $5f47: $f3
    ld c, e                                       ; $5f48: $4b
    ld a, [c]                                     ; $5f49: $f2
    ld l, b                                       ; $5f4a: $68
    dec [hl]                                      ; $5f4b: $35
    add c                                         ; $5f4c: $81
    ld [$92a0], sp                                ; $5f4d: $08 $a0 $92
    db $ec                                        ; $5f50: $ec
    ld d, a                                       ; $5f51: $57
    ld sp, hl                                     ; $5f52: $f9
    jp z, Jump_000_367d                           ; $5f53: $ca $7d $36

    ld e, c                                       ; $5f56: $59
    ld h, $c9                                     ; $5f57: $26 $c9
    rst $38                                       ; $5f59: $ff
    ld sp, $79ae                                  ; $5f5a: $31 $ae $79
    ld d, l                                       ; $5f5d: $55
    ld [hl], b                                    ; $5f5e: $70
    rst $20                                       ; $5f5f: $e7
    ld sp, $16bd                                  ; $5f60: $31 $bd $16
    or d                                          ; $5f63: $b2
    ld l, h                                       ; $5f64: $6c
    add sp, -$10                                  ; $5f65: $e8 $f0
    adc [hl]                                      ; $5f67: $8e
    call nc, $d3cd                                ; $5f68: $d4 $cd $d3
    inc c                                         ; $5f6b: $0c
    adc [hl]                                      ; $5f6c: $8e
    rst $10                                       ; $5f6d: $d7
    cp b                                          ; $5f6e: $b8
    ld d, e                                       ; $5f6f: $53
    and a                                         ; $5f70: $a7
    cpl                                           ; $5f71: $2f
    inc e                                         ; $5f72: $1c
    or b                                          ; $5f73: $b0
    ld [de], a                                    ; $5f74: $12
    or l                                          ; $5f75: $b5
    ld [hl], h                                    ; $5f76: $74
    daa                                           ; $5f77: $27
    and h                                         ; $5f78: $a4
    ld a, d                                       ; $5f79: $7a
    call z, $b552                                 ; $5f7a: $cc $52 $b5
    ldh [$3c], a                                  ; $5f7d: $e0 $3c
    ld a, d                                       ; $5f7f: $7a
    sub $d0                                       ; $5f80: $d6 $d0
    or e                                          ; $5f82: $b3
    pop de                                        ; $5f83: $d1
    sub b                                         ; $5f84: $90
    ld l, c                                       ; $5f85: $69
    dec h                                         ; $5f86: $25
    ei                                            ; $5f87: $fb
    add a                                         ; $5f88: $87
    rst $08                                       ; $5f89: $cf
    add [hl]                                      ; $5f8a: $86
    ld c, h                                       ; $5f8b: $4c
    dec sp                                        ; $5f8c: $3b
    ld a, d                                       ; $5f8d: $7a
    ld a, d                                       ; $5f8e: $7a
    ld b, c                                       ; $5f8f: $41

Call_04f_5f90:
    inc b                                         ; $5f90: $04
    rst $20                                       ; $5f91: $e7
    pop hl                                        ; $5f92: $e1
    db $d3                                        ; $5f93: $d3
    xor e                                         ; $5f94: $ab
    rla                                           ; $5f95: $17
    ld a, [hl+]                                   ; $5f96: $2a
    call nz, Call_04f_55ff                        ; $5f97: $c4 $ff $55
    ld hl, $e2bb                                  ; $5f9a: $21 $bb $e2
    or c                                          ; $5f9d: $b1
    sub b                                         ; $5f9e: $90
    sub c                                         ; $5f9f: $91
    sub d                                         ; $5fa0: $92

jr_04f_5fa1:
    dec hl                                        ; $5fa1: $2b
    ld h, a                                       ; $5fa2: $67
    or e                                          ; $5fa3: $b3
    pop hl                                        ; $5fa4: $e1
    db $d3                                        ; $5fa5: $d3
    xor e                                         ; $5fa6: $ab
    rla                                           ; $5fa7: $17
    xor $f3                                       ; $5fa8: $ee $f3
    ld b, e                                       ; $5faa: $43
    ld a, h                                       ; $5fab: $7c
    sbc a                                         ; $5fac: $9f
    sbc c                                         ; $5fad: $99
    db $e4                                        ; $5fae: $e4
    ld h, l                                       ; $5faf: $65
    ld b, e                                       ; $5fb0: $43
    sub a                                         ; $5fb1: $97
    cp $57                                        ; $5fb2: $fe $57
    cp a                                          ; $5fb4: $bf
    ld a, $ee                                     ; $5fb5: $3e $ee
    call nc, $897a                                ; $5fb7: $d4 $7a $89
    db $fd                                        ; $5fba: $fd
    push hl                                       ; $5fbb: $e5
    db $ec                                        ; $5fbc: $ec
    ld de, $e1e7                                  ; $5fbd: $11 $e7 $e1
    db $e3                                        ; $5fc0: $e3
    ld c, [hl]                                    ; $5fc1: $4e
    ld c, l                                       ; $5fc2: $4d
    ld a, [hl]                                    ; $5fc3: $7e
    ld [hl], l                                    ; $5fc4: $75
    push af                                       ; $5fc5: $f5
    ld a, [hl]                                    ; $5fc6: $7e
    ld b, d                                       ; $5fc7: $42
    inc a                                         ; $5fc8: $3c
    ld h, h                                       ; $5fc9: $64
    and l                                         ; $5fca: $a5
    cpl                                           ; $5fcb: $2f
    db $dd                                        ; $5fcc: $dd
    add a                                         ; $5fcd: $87
    ret c                                         ; $5fce: $d8

    pop hl                                        ; $5fcf: $e1
    rst $00                                       ; $5fd0: $c7
    rst $08                                       ; $5fd1: $cf
    db $10                                        ; $5fd2: $10
    ld bc, $ab4f                                  ; $5fd3: $01 $4f $ab
    ld a, l                                       ; $5fd6: $7d
    ld l, [hl]                                    ; $5fd7: $6e
    call nc, $c86c                                ; $5fd8: $d4 $6c $c8
    db $f4                                        ; $5fdb: $f4
    ld b, e                                       ; $5fdc: $43
    add l                                         ; $5fdd: $85
    inc a                                         ; $5fde: $3c
    ld b, d                                       ; $5fdf: $42
    and b                                         ; $5fe0: $a0
    adc l                                         ; $5fe1: $8d
    ld c, a                                       ; $5fe2: $4f
    ccf                                           ; $5fe3: $3f
    jr jr_04f_5fa1                                ; $5fe4: $18 $bb

    sub [hl]                                      ; $5fe6: $96
    db $e4                                        ; $5fe7: $e4
    db $10                                        ; $5fe8: $10
    cp b                                          ; $5fe9: $b8
    di                                            ; $5fea: $f3
    sub b                                         ; $5feb: $90
    db $fd                                        ; $5fec: $fd
    ldh a, [$ea]                                  ; $5fed: $f0 $ea
    adc c                                         ; $5fef: $89
    ld d, c                                       ; $5ff0: $51
    dec bc                                        ; $5ff1: $0b
    adc $a3                                       ; $5ff2: $ce $a3
    and a                                         ; $5ff4: $a7
    rla                                           ; $5ff5: $17
    db $e3                                        ; $5ff6: $e3
    db $f4                                        ; $5ff7: $f4
    ld c, c                                       ; $5ff8: $49
    ld c, h                                       ; $5ff9: $4c
    ld b, e                                       ; $5ffa: $43
    inc b                                         ; $5ffb: $04
    add b                                         ; $5ffc: $80
    adc a                                         ; $5ffd: $8f
    db $ec                                        ; $5ffe: $ec
    dec hl                                        ; $5fff: $2b
    rst $30                                       ; $6000: $f7
    reti                                          ; $6001: $d9


    ld h, h                                       ; $6002: $64
    sbc c                                         ; $6003: $99
    or b                                          ; $6004: $b0
    call nz, $cf56                                ; $6005: $c4 $56 $cf
    ld b, $73                                     ; $6008: $06 $73
    db $fc                                        ; $600a: $fc
    or h                                          ; $600b: $b4
    db $eb                                        ; $600c: $eb
    ld e, [hl]                                    ; $600d: $5e
    or e                                          ; $600e: $b3
    ld hl, $7b67                                  ; $600f: $21 $67 $7b
    xor b                                         ; $6012: $a8
    ld l, [hl]                                    ; $6013: $6e
    ld d, $dc                                     ; $6014: $16 $dc
    ld e, $d7                                     ; $6016: $1e $d7
    db $f4                                        ; $6018: $f4
    ei                                            ; $6019: $fb
    rst $38                                       ; $601a: $ff
    xor [hl]                                      ; $601b: $ae
    ld a, b                                       ; $601c: $78
    ld c, h                                       ; $601d: $4c
    xor e                                         ; $601e: $ab
    add hl, bc                                    ; $601f: $09
    cpl                                           ; $6020: $2f
    set 0, h                                      ; $6021: $cb $c4
    xor b                                         ; $6023: $a8
    sbc h                                         ; $6024: $9c
    xor $12                                       ; $6025: $ee $12
    dec bc                                        ; $6027: $0b
    ld de, $940f                                  ; $6028: $11 $0f $94
    sbc [hl]                                      ; $602b: $9e
    call $8f86                                    ; $602c: $cd $86 $8f
    sub h                                         ; $602f: $94
    ld h, h                                       ; $6030: $64
    ld [de], a                                    ; $6031: $12
    db $d3                                        ; $6032: $d3
    xor e                                         ; $6033: $ab
    ld h, a                                       ; $6034: $67
    ld b, e                                       ; $6035: $43
    or $ef                                        ; $6036: $f6 $ef
    xor a                                         ; $6038: $af
    push hl                                       ; $6039: $e5
    ld [hl+], a                                   ; $603a: $22
    ld hl, $86cb                                  ; $603b: $21 $cb $86
    adc [hl]                                      ; $603e: $8e
    ld e, c                                       ; $603f: $59
    ld l, d                                       ; $6040: $6a
    sbc c                                         ; $6041: $99
    ld d, a                                       ; $6042: $57
    bit 7, b                                      ; $6043: $cb $78
    ld e, a                                       ; $6045: $5f
    ld d, c                                       ; $6046: $51
    or l                                          ; $6047: $b5
    ld c, [hl]                                    ; $6048: $4e
    call nz, $1da7                                ; $6049: $c4 $a7 $1d
    cp l                                          ; $604c: $bd
    call nz, $ee03                                ; $604d: $c4 $03 $ee
    cp c                                          ; $6050: $b9
    sbc [hl]                                      ; $6051: $9e
    dec c                                         ; $6052: $0d
    sbc a                                         ; $6053: $9f
    cp l                                          ; $6054: $bd
    ld a, [c]                                     ; $6055: $f2
    ld [$6001], sp                                ; $6056: $08 $01 $60
    add d                                         ; $6059: $82
    ld a, c                                       ; $605a: $79
    ld [hl], $1b                                  ; $605b: $36 $1b
    cp [hl]                                       ; $605d: $be
    and e                                         ; $605e: $a3
    rla                                           ; $605f: $17
    xor $f3                                       ; $6060: $ee $f3
    ld [hl], $ff                                  ; $6062: $36 $ff
    ld e, e                                       ; $6064: $5b
    ld b, e                                       ; $6065: $43
    inc sp                                        ; $6066: $33
    cp l                                          ; $6067: $bd
    add hl, sp                                    ; $6068: $39
    ld a, e                                       ; $6069: $7b
    xor c                                         ; $606a: $a9
    ld h, l                                       ; $606b: $65
    ld b, e                                       ; $606c: $43
    add a                                         ; $606d: $87
    or a                                          ; $606e: $b7
    pop hl                                        ; $606f: $e1
    ld [hl+], a                                   ; $6070: $22
    ld h, a                                       ; $6071: $67
    db $d3                                        ; $6072: $d3
    inc bc                                        ; $6073: $03
    sbc l                                         ; $6074: $9d
    ld [bc], a                                    ; $6075: $02
    ld l, [hl]                                    ; $6076: $6e
    and h                                         ; $6077: $a4
    ld d, h                                       ; $6078: $54
    db $fd                                        ; $6079: $fd
    cp a                                          ; $607a: $bf
    ld c, h                                       ; $607b: $4c
    ld l, [hl]                                    ; $607c: $6e
    adc d                                         ; $607d: $8a

jr_04f_607e:
    sub h                                         ; $607e: $94
    adc l                                         ; $607f: $8d
    dec h                                         ; $6080: $25
    ld a, $7a                                     ; $6081: $3e $7a
    push de                                       ; $6083: $d5
    cp b                                          ; $6084: $b8
    ld d, e                                       ; $6085: $53
    xor a                                         ; $6086: $af
    call c, $7197                                 ; $6087: $dc $97 $71
    cp [hl]                                       ; $608a: $be
    ld l, e                                       ; $608b: $6b
    add hl, bc                                    ; $608c: $09
    adc [hl]                                      ; $608d: $8e
    rst $08                                       ; $608e: $cf
    and h                                         ; $608f: $a4
    or h                                          ; $6090: $b4
    ld [hl], c                                    ; $6091: $71
    cp h                                          ; $6092: $bc
    xor b                                         ; $6093: $a8
    add d                                         ; $6094: $82
    ld [$7860], sp                                ; $6095: $08 $60 $78
    db $fd                                        ; $6098: $fd
    ld hl, sp+$67                                 ; $6099: $f8 $67
    ei                                            ; $609b: $fb
    xor h                                         ; $609c: $ac
    inc d                                         ; $609d: $14
    xor c                                         ; $609e: $a9
    ld sp, hl                                     ; $609f: $f9
    db $fd                                        ; $60a0: $fd
    rra                                           ; $60a1: $1f
    xor $71                                       ; $60a2: $ee $71
    xor c                                         ; $60a4: $a9
    ld h, l                                       ; $60a5: $65
    sub d                                         ; $60a6: $92
    db $fc                                        ; $60a7: $fc
    rra                                           ; $60a8: $1f
    ld d, e                                       ; $60a9: $53
    ld b, a                                       ; $60aa: $47
    ld c, e                                       ; $60ab: $4b
    ld c, l                                       ; $60ac: $4d
    ld h, e                                       ; $60ad: $63
    ld e, $1f                                     ; $60ae: $1e $1f
    xor a                                         ; $60b0: $af
    reti                                          ; $60b1: $d9


    xor e                                         ; $60b2: $ab
    adc $46                                       ; $60b3: $ce $46
    ld b, e                                       ; $60b5: $43
    add $2c                                       ; $60b6: $c6 $2c
    dec [hl]                                      ; $60b8: $35
    adc l                                         ; $60b9: $8d
    rst $38                                       ; $60ba: $ff
    ccf                                           ; $60bb: $3f
    ld a, d                                       ; $60bc: $7a
    jr c, jr_04f_607e                             ; $60bd: $38 $bf

    ld [hl], d                                    ; $60bf: $72
    sbc a                                         ; $60c0: $9f
    rra                                           ; $60c1: $1f
    sub h                                         ; $60c2: $94
    ld e, c                                       ; $60c3: $59
    ei                                            ; $60c4: $fb
    rst $10                                       ; $60c5: $d7
    ld h, e                                       ; $60c6: $63
    ld a, [$b6fd]                                 ; $60c7: $fa $fd $b6
    ld l, a                                       ; $60ca: $6f
    add [hl]                                      ; $60cb: $86
    ld [$e1e7], sp                                ; $60cc: $08 $e7 $e1
    and e                                         ; $60cf: $a3
    ld a, h                                       ; $60d0: $7c
    or $98                                        ; $60d1: $f6 $98
    ld e, [hl]                                    ; $60d3: $5e
    ld e, l                                       ; $60d4: $5d
    or e                                          ; $60d5: $b3
    ld hl, $11ec                                  ; $60d6: $21 $ec $11
    ld c, a                                       ; $60d9: $4f
    ld a, b                                       ; $60da: $78
    ld a, e                                       ; $60db: $7b
    db $f4                                        ; $60dc: $f4
    reti                                          ; $60dd: $d9


    ld e, $aa                                     ; $60de: $1e $aa
    sbc e                                         ; $60e0: $9b
    ld [hl], l                                    ; $60e1: $75
    ld [hl], $cb                                  ; $60e2: $36 $cb
    rst $28                                       ; $60e4: $ef
    add sp, -$27                                  ; $60e5: $e8 $d9
    ld h, h                                       ; $60e7: $64
    ld e, d                                       ; $60e8: $5a
    db $fc                                        ; $60e9: $fc
    ld e, l                                       ; $60ea: $5d
    dec d                                         ; $60eb: $15
    ld [bc], a                                    ; $60ec: $02
    ld de, $e1e7                                  ; $60ed: $11 $e7 $e1
    db $d3                                        ; $60f0: $d3
    xor e                                         ; $60f1: $ab
    ld h, a                                       ; $60f2: $67
    ld b, e                                       ; $60f3: $43
    ld d, $62                                     ; $60f4: $16 $62
    ld l, e                                       ; $60f6: $6b
    rst $38                                       ; $60f7: $ff
    cp $1a                                        ; $60f8: $fe $1a
    add hl, hl                                    ; $60fa: $29
    cp c                                          ; $60fb: $b9
    ld [de], a                                    ; $60fc: $12
    ld [hl-], a                                   ; $60fd: $32
    ld h, [hl]                                    ; $60fe: $66
    xor c                                         ; $60ff: $a9
    sub c                                         ; $6100: $91
    ld b, h                                       ; $6101: $44
    ld l, h                                       ; $6102: $6c
    ld c, h                                       ; $6103: $4c
    cp e                                          ; $6104: $bb
    xor $05                                       ; $6105: $ee $05
    ld de, $bb80                                  ; $6107: $11 $80 $bb
    add $34                                       ; $610a: $c6 $34
    jp hl                                         ; $610c: $e9


    ld [hl], h                                    ; $610d: $74
    ld sp, hl                                     ; $610e: $f9
    reti                                          ; $610f: $d9


    ld e, $aa                                     ; $6110: $1e $aa
    sbc e                                         ; $6112: $9b
    push bc                                       ; $6113: $c5
    ld a, [hl]                                    ; $6114: $7e
    adc a                                         ; $6115: $8f
    ld c, e                                       ; $6116: $4b
    ld c, l                                       ; $6117: $4d
    ld b, l                                       ; $6118: $45
    rst $28                                       ; $6119: $ef
    push af                                       ; $611a: $f5
    or a                                          ; $611b: $b7
    add [hl]                                      ; $611c: $86
    sbc e                                         ; $611d: $9b
    ld b, e                                       ; $611e: $43
    call nc, $fefc                                ; $611f: $d4 $fc $fe
    ccf                                           ; $6122: $3f
    ldh [$cd], a                                  ; $6123: $e0 $cd
    ld [c], a                                     ; $6125: $e2

jr_04f_6126:
    cp b                                          ; $6126: $b8
    dec hl                                        ; $6127: $2b
    sub $f4                                       ; $6128: $d6 $f4
    reti                                          ; $612a: $d9


    ld c, h                                       ; $612b: $4c
    ld c, d                                       ; $612c: $4a
    sbc e                                         ; $612d: $9b
    ld c, l                                       ; $612e: $4d
    ld b, [hl]                                    ; $612f: $46
    inc c                                         ; $6130: $0c
    and l                                         ; $6131: $a5
    pop de                                        ; $6132: $d1
    dec hl                                        ; $6133: $2b
    rst $30                                       ; $6134: $f7
    dec h                                         ; $6135: $25
    jr c, jr_04f_6126                             ; $6136: $38 $ee

    ld b, a                                       ; $6138: $47
    adc d                                         ; $6139: $8a
    call nc, Call_04f_7dca                        ; $613a: $d4 $ca $7d
    ld [hl], $99                                  ; $613d: $36 $99
    ld d, [hl]                                    ; $613f: $56
    cp l                                          ; $6140: $bd
    sub b                                         ; $6141: $90
    add hl, bc                                    ; $6142: $09
    ld l, e                                       ; $6143: $6b
    sbc $e6                                       ; $6144: $de $e6
    ld a, a                                       ; $6146: $7f
    adc $34                                       ; $6147: $ce $34
    adc l                                         ; $6149: $8d
    cp a                                          ; $614a: $bf
    dec sp                                        ; $614b: $3b
    ld a, e                                       ; $614c: $7b
    ld h, l                                       ; $614d: $65
    sbc $e6                                       ; $614e: $de $e6
    ld a, a                                       ; $6150: $7f
    ld l, e                                       ; $6151: $6b
    ld l, b                                       ; $6152: $68
    ld c, [hl]                                    ; $6153: $4e
    dec de                                        ; $6154: $1b
    ld [bc], a                                    ; $6155: $02
    ld de, $d50f                                  ; $6156: $11 $0f $d5
    or e                                          ; $6159: $b3
    ret                                           ; $615a: $c9


    ld c, b                                       ; $615b: $48
    ret                                           ; $615c: $c9


    sub l                                         ; $615d: $95
    sub b                                         ; $615e: $90
    or e                                          ; $615f: $b3
    dec a                                         ; $6160: $3d
    ld d, h                                       ; $6161: $54
    scf                                           ; $6162: $37
    db $eb                                        ; $6163: $eb
    ld de, $6002                                  ; $6164: $11 $02 $60
    add d                                         ; $6167: $82
    ld a, c                                       ; $6168: $79
    ld [hl], $66                                  ; $6169: $36 $66
    xor c                                         ; $616b: $a9
    sub c                                         ; $616c: $91
    ld b, h                                       ; $616d: $44
    ld l, h                                       ; $616e: $6c
    db $ec                                        ; $616f: $ec
    adc d                                         ; $6170: $8a
    rst $00                                       ; $6171: $c7
    or h                                          ; $6172: $b4
    db $eb                                        ; $6173: $eb
    ld e, [hl]                                    ; $6174: $5e
    or e                                          ; $6175: $b3
    ld hl, $0110                                  ; $6176: $21 $10 $01
    ret nz                                        ; $6179: $c0

    ld c, h                                       ; $617a: $4c
    ld a, e                                       ; $617b: $7b
    ld a, $dc                                     ; $617c: $3e $dc
    rst $30                                       ; $617e: $f7
    jp $6ceb                                      ; $617f: $c3 $eb $6c


    sub [hl]                                      ; $6182: $96
    add a                                         ; $6183: $87
    ld a, e                                       ; $6184: $7b
    ld e, h                                       ; $6185: $5c
    ld l, d                                       ; $6186: $6a
    ld a, [$7ffd]                                 ; $6187: $fa $fd $7f
    ld d, a                                       ; $618a: $57
    inc a                                         ; $618b: $3c
    ld d, [hl]                                    ; $618c: $56
    xor $b3                                       ; $618d: $ee $b3
    pop hl                                        ; $618f: $e1
    ld c, e                                       ; $6190: $4b
    rst $38                                       ; $6191: $ff
    db $db                                        ; $6192: $db
    inc de                                        ; $6193: $13
    ld e, [hl]                                    ; $6194: $5e
    ld [hl], l                                    ; $6195: $75
    xor l                                         ; $6196: $ad
    cp $d7                                        ; $6197: $fe $d7
    xor e                                         ; $6199: $ab
    rst $38                                       ; $619a: $ff
    ld d, l                                       ; $619b: $55
    or l                                          ; $619c: $b5
    ld [hl], h                                    ; $619d: $74
    rra                                           ; $619e: $1f
    ld h, d                                       ; $619f: $62
    and e                                         ; $61a0: $a3
    reti                                          ; $61a1: $d9


    inc hl                                        ; $61a2: $23
    rrca                                          ; $61a3: $0f
    rst $10                                       ; $61a4: $d7
    cp l                                          ; $61a5: $bd
    ld l, h                                       ; $61a6: $6c
    call z, Call_000_2326                         ; $61a7: $cc $26 $23
    dec h                                         ; $61aa: $25
    ld d, a                                       ; $61ab: $57
    ld b, d                                       ; $61ac: $42
    ld h, [hl]                                    ; $61ad: $66
    ld b, e                                       ; $61ae: $43
    and [hl]                                      ; $61af: $a6
    dec e                                         ; $61b0: $1d
    dec a                                         ; $61b1: $3d
    push bc                                       ; $61b2: $c5
    adc e                                         ; $61b3: $8b
    ld a, [bc]                                    ; $61b4: $0a
    add hl, sp                                    ; $61b5: $39
    db $db                                        ; $61b6: $db
    ld b, e                                       ; $61b7: $43
    ld [hl], l                                    ; $61b8: $75
    or e                                          ; $61b9: $b3
    ld e, $21                                     ; $61ba: $1e $21
    ld h, b                                       ; $61bc: $60
    add d                                         ; $61bd: $82
    ld a, c                                       ; $61be: $79
    ld [hl], $1b                                  ; $61bf: $36 $1b
    or d                                          ; $61c1: $b2
    and e                                         ; $61c2: $a3
    rst $00                                       ; $61c3: $c7
    sbc c                                         ; $61c4: $99
    halt                                          ; $61c5: $76
    xor [hl]                                      ; $61c6: $ae
    cp d                                          ; $61c7: $ba
    call nz, $fec6                                ; $61c8: $c4 $c6 $fe
    add hl, hl                                    ; $61cb: $29
    ld c, a                                       ; $61cc: $4f
    ld a, b                                       ; $61cd: $78
    ld h, l                                       ; $61ce: $65
    inc h                                         ; $61cf: $24
    ld a, e                                       ; $61d0: $7b
    ld c, c                                       ; $61d1: $49
    add [hl]                                      ; $61d2: $86
    ld [$c9e7], sp                                ; $61d3: $08 $e7 $c9
    jr z, @-$5f                                   ; $61d6: $28 $9f

    dec a                                         ; $61d8: $3d
    and [hl]                                      ; $61d9: $a6
    ld e, l                                       ; $61da: $5d
    rst $30                                       ; $61db: $f7
    sbc d                                         ; $61dc: $9a
    dec c                                         ; $61dd: $0d
    add c                                         ; $61de: $81
    ld a, e                                       ; $61df: $7b
    ld [hl+], a                                   ; $61e0: $22
    rst $00                                       ; $61e1: $c7
    rst $38                                       ; $61e2: $ff
    ld [hl], l                                    ; $61e3: $75
    ld [hl], $75                                  ; $61e4: $36 $75
    ld [$abd1], a                                 ; $61e6: $ea $d1 $ab
    halt                                          ; $61e9: $76
    push bc                                       ; $61ea: $c5
    ld h, e                                       ; $61eb: $63
    jp hl                                         ; $61ec: $e9


    ret z                                         ; $61ed: $c8

    ld a, [$2125]                                 ; $61ee: $fa $25 $21
    cp e                                          ; $61f1: $bb
    ld a, [hl+]                                   ; $61f2: $2a
    add h                                         ; $61f3: $84
    dec a                                         ; $61f4: $3d
    ld [bc], a                                    ; $61f5: $02
    rst $20                                       ; $61f6: $e7
    ret                                           ; $61f7: $c9


    or h                                          ; $61f8: $b4
    ld [$f15d], a                                 ; $61f9: $ea $5d $f1
    ret c                                         ; $61fc: $d8

    ld h, a                                       ; $61fd: $67
    and l                                         ; $61fe: $a5
    ld c, b                                       ; $61ff: $48
    ld a, c                                       ; $6200: $79
    ld e, $0d                                     ; $6201: $1e $0d
    dec sp                                        ; $6203: $3b
    ld a, e                                       ; $6204: $7b
    ld h, l                                       ; $6205: $65
    add hl, bc                                    ; $6206: $09
    adc [hl]                                      ; $6207: $8e
    xor e                                         ; $6208: $ab
    srl c                                         ; $6209: $cb $39
    call c, Call_04f_52e3                         ; $620b: $dc $e3 $52

jr_04f_620e:
    or e                                          ; $620e: $b3
    ld e, l                                       ; $620f: $5d
    cp l                                          ; $6210: $bd
    or h                                          ; $6211: $b4
    ld l, c                                       ; $6212: $69
    ld e, a                                       ; $6213: $5f
    ret z                                         ; $6214: $c8

    ld [hl], b                                    ; $6215: $70
    ld [hl], e                                    ; $6216: $73
    adc b                                         ; $6217: $88
    ld a, [de]                                    ; $6218: $1a
    rst $10                                       ; $6219: $d7
    cp h                                          ; $621a: $bc
    inc c                                         ; $621b: $0c
    ld a, b                                       ; $621c: $78
    or e                                          ; $621d: $b3
    jr c, jr_04f_620e                             ; $621e: $38 $ee

    adc d                                         ; $6220: $8a
    dec [hl]                                      ; $6221: $35
    dec c                                         ; $6222: $0d
    ld de, $c210                                  ; $6223: $11 $10 $c2
    rst $10                                       ; $6226: $d7
    sbc $78                                       ; $6227: $de $78
    push af                                       ; $6229: $f5
    push de                                       ; $622a: $d5
    sub a                                         ; $622b: $97
    cp l                                          ; $622c: $bd
    ld a, [hl]                                    ; $622d: $7e
    ld a, b                                       ; $622e: $78
    ld e, [hl]                                    ; $622f: $5e
    db $10                                        ; $6230: $10
    inc hl                                        ; $6231: $23
    add [hl]                                      ; $6232: $86
    sbc $4c                                       ; $6233: $de $4c
    ld l, d                                       ; $6235: $6a
    jp hl                                         ; $6236: $e9


    inc h                                         ; $6237: $24
    sbc l                                         ; $6238: $9d
    cp $b5                                        ; $6239: $fe $b5
    adc h                                         ; $623b: $8c
    ld [hl], a                                    ; $623c: $77
    and l                                         ; $623d: $a5
    ret z                                         ; $623e: $c8

    add d                                         ; $623f: $82
    di                                            ; $6240: $f3
    add sp, -$47                                  ; $6241: $e8 $b9
    adc $ff                                       ; $6243: $ce $ff
    db $ec                                        ; $6245: $ec
    and [hl]                                      ; $6246: $a6
    ld l, c                                       ; $6247: $69
    ret z                                         ; $6248: $c8

    ld hl, sp-$22                                 ; $6249: $f8 $de
    ld l, e                                       ; $624b: $6b
    ld l, a                                       ; $624c: $6f
    cp h                                          ; $624d: $bc
    di                                            ; $624e: $f3
    ld l, $84                                     ; $624f: $2e $84
    db $10                                        ; $6251: $10
    ld bc, $d50f                                  ; $6252: $01 $0f $d5
    call $9b3a                                    ; $6255: $cd $3a $9b
    ld c, l                                       ; $6258: $4d
    sub [hl]                                      ; $6259: $96
    ld c, c                                       ; $625a: $49
    rra                                           ; $625b: $1f
    call nc, $e8c6                                ; $625c: $d4 $c6 $e8
    ld d, l                                       ; $625f: $55
    db $ec                                        ; $6260: $ec
    rlca                                          ; $6261: $07
    ld a, [hl-]                                   ; $6262: $3a
    ld h, h                                       ; $6263: $64
    call z, $b352                                 ; $6264: $cc $52 $b3
    ld e, l                                       ; $6267: $5d
    cp l                                          ; $6268: $bd
    dec hl                                        ; $6269: $2b
    ld e, $2b                                     ; $626a: $1e $2b
    ld a, l                                       ; $626c: $7d
    jp nz, $aeab                                  ; $626d: $c2 $ab $ae

    dec b                                         ; $6270: $05
    ld h, e                                       ; $6271: $63
    rst $28                                       ; $6272: $ef
    ld a, [de]                                    ; $6273: $1a
    ld l, [hl]                                    ; $6274: $6e
    ld c, $51                                     ; $6275: $0e $51
    ld h, a                                       ; $6277: $67
    ld c, e                                       ; $6278: $4b
    ld d, a                                       ; $6279: $57
    rst $10                                       ; $627a: $d7
    ld l, h                                       ; $627b: $6c
    ld c, h                                       ; $627c: $4c
    cpl                                           ; $627d: $2f
    ld sp, hl                                     ; $627e: $f9

jr_04f_627f:
    ld d, a                                       ; $627f: $57
    push de                                       ; $6280: $d5
    sbc $1a                                       ; $6281: $de $1a
    ld [hl], a                                    ; $6283: $77
    ld [$fb95], a                                 ; $6284: $ea $95 $fb
    ld l, h                                       ; $6287: $6c
    or d                                          ; $6288: $b2
    jp nc, Jump_04f_7dd3                          ; $6289: $d2 $d3 $7d

    ld a, [c]                                     ; $628c: $f2
    pop de                                        ; $628d: $d1
    xor e                                         ; $628e: $ab
    jr nz, jr_04f_6293                            ; $628f: $20 $02

    rst $20                                       ; $6291: $e7
    pop hl                                        ; $6292: $e1

jr_04f_6293:
    dec sp                                        ; $6293: $3b
    ld a, d                                       ; $6294: $7a
    push af                                       ; $6295: $f5
    cp a                                          ; $6296: $bf
    ld e, a                                       ; $6297: $5f
    cp e                                          ; $6298: $bb
    sub b                                         ; $6299: $90
    dec e                                         ; $629a: $1d
    ld e, l                                       ; $629b: $5d
    dec hl                                        ; $629c: $2b
    rst $30                                       ; $629d: $f7
    ld [hl], c                                    ; $629e: $71
    db $fc                                        ; $629f: $fc
    jp nc, $4f91                                  ; $62a0: $d2 $91 $4f

    ld h, h                                       ; $62a3: $64
    and l                                         ; $62a4: $a5
    rst $08                                       ; $62a5: $cf
    ld e, [hl]                                    ; $62a6: $5e
    or l                                          ; $62a7: $b5
    dec sp                                        ; $62a8: $3b
    ld a, d                                       ; $62a9: $7a
    db $dd                                        ; $62aa: $dd
    ld b, a                                       ; $62ab: $47
    ld a, [hl]                                    ; $62ac: $7e
    push hl                                       ; $62ad: $e5
    call c, $8509                                 ; $62ae: $dc $09 $85
    ld a, e                                       ; $62b1: $7b
    ld e, h                                       ; $62b2: $5c
    ld l, d                                       ; $62b3: $6a
    jp hl                                         ; $62b4: $e9


    jr nz, @-$3f                                  ; $62b5: $20 $bf

    ld d, h                                       ; $62b7: $54
    push af                                       ; $62b8: $f5
    ld c, d                                       ; $62b9: $4a
    or a                                          ; $62ba: $b7
    ld e, l                                       ; $62bb: $5d
    ld a, [hl+]                                   ; $62bc: $2a
    ld a, h                                       ; $62bd: $7c
    jr c, jr_04f_627f                             ; $62be: $38 $bf

    or a                                          ; $62c0: $b7
    add [hl]                                      ; $62c1: $86
    sbc e                                         ; $62c2: $9b
    ld b, e                                       ; $62c3: $43
    call nc, $53b8                                ; $62c4: $d4 $b8 $53
    xor a                                         ; $62c7: $af
    call c, $9367                                 ; $62c8: $dc $67 $93
    sub l                                         ; $62cb: $95
    sbc [hl]                                      ; $62cc: $9e
    xor $93                                       ; $62cd: $ee $93
    rst $28                                       ; $62cf: $ef
    rlca                                          ; $62d0: $07
    pop af                                        ; $62d1: $f1
    ld l, e                                       ; $62d2: $6b
    inc h                                         ; $62d3: $24
    inc b                                         ; $62d4: $04
    ld [hl+], a                                   ; $62d5: $22
    adc a                                         ; $62d6: $8f
    ld c, e                                       ; $62d7: $4b
    dec l                                         ; $62d8: $2d
    di                                            ; $62d9: $f3
    ld l, d                                       ; $62da: $6a
    ld hl, $2523                                  ; $62db: $21 $23 $25
    ld d, a                                       ; $62de: $57
    and [hl]                                      ; $62df: $a6
    add hl, de                                    ; $62e0: $19
    inc e                                         ; $62e1: $1c
    xor a                                         ; $62e2: $af
    dec h                                         ; $62e3: $25
    ld a, $15                                     ; $62e4: $3e $15
    ld h, d                                       ; $62e6: $62
    add sp, $42                                   ; $62e7: $e8 $42
    cp h                                          ; $62e9: $bc
    sbc a                                         ; $62ea: $9f
    or c                                          ; $62eb: $b1
    and a                                         ; $62ec: $a7
    xor $90                                       ; $62ed: $ee $90
    or e                                          ; $62ef: $b3
    pop de                                        ; $62f0: $d1
    sub b                                         ; $62f1: $90
    ld sp, $cd4b                                  ; $62f2: $31 $4b $cd
    ld e, c                                       ; $62f5: $59
    add hl, hl                                    ; $62f6: $29
    ld [c], a                                     ; $62f7: $e2
    or c                                          ; $62f8: $b1
    ld [hl], d                                    ; $62f9: $72
    sbc a                                         ; $62fa: $9f
    dec c                                         ; $62fb: $0d
    sbc c                                         ; $62fc: $99
    ld e, [hl]                                    ; $62fd: $5e
    dec a                                         ; $62fe: $3d
    ld a, [de]                                    ; $62ff: $1a
    cp l                                          ; $6300: $bd
    ld e, a                                       ; $6301: $5f
    ld a, d                                       ; $6302: $7a
    adc b                                         ; $6303: $88
    adc l                                         ; $6304: $8d
    rst $08                                       ; $6305: $cf
    dec e                                         ; $6306: $1d
    xor l                                         ; $6307: $ad
    jp z, Jump_000_0442                           ; $6308: $ca $42 $04

    ld h, b                                       ; $630b: $60
    add d                                         ; $630c: $82
    ld a, c                                       ; $630d: $79
    ld [hl], $1a                                  ; $630e: $36 $1a
    ld [hl-], a                                   ; $6310: $32
    ld h, [hl]                                    ; $6311: $66
    xor c                                         ; $6312: $a9
    ld l, c                                       ; $6313: $69
    push de                                       ; $6314: $d5
    cp e                                          ; $6315: $bb
    ld [c], a                                     ; $6316: $e2
    or c                                          ; $6317: $b1
    ld e, a                                       ; $6318: $5f
    jp z, $8f47                                   ; $6319: $ca $47 $8f

    ld h, $31                                     ; $631c: $26 $31
    cp a                                          ; $631e: $bf
    rst $38                                       ; $631f: $ff
    cpl                                           ; $6320: $2f
    rra                                           ; $6321: $1f
    sbc l                                         ; $6322: $9d
    ret                                           ; $6323: $c9


    db $fd                                        ; $6324: $fd
    ld a, $ca                                     ; $6325: $3e $ca
    ld c, d                                       ; $6327: $4a
    sub c                                         ; $6328: $91
    ld [hl], b                                    ; $6329: $70
    adc b                                         ; $632a: $88
    nop                                           ; $632b: $00
    ld h, b                                       ; $632c: $60
    add d                                         ; $632d: $82
    add hl, bc                                    ; $632e: $09
    rlca                                          ; $632f: $07
    ld a, [hl-]                                   ; $6330: $3a
    ld h, h                                       ; $6331: $64
    add [hl]                                      ; $6332: $86
    adc $86                                       ; $6333: $ce $86
    adc a                                         ; $6335: $8f
    cp e                                          ; $6336: $bb
    ld [hl+], a                                   ; $6337: $22
    ld a, c                                       ; $6338: $79
    ld hl, $f9c3                                  ; $6339: $21 $c3 $f9
    ld h, l                                       ; $633c: $65
    ld h, d                                       ; $633d: $62
    ld a, [hl]                                    ; $633e: $7e
    ret                                           ; $633f: $c9


    ld a, [c]                                     ; $6340: $f2
    rst $20                                       ; $6341: $e7
    ld a, e                                       ; $6342: $7b
    call z, $d352                                 ; $6343: $cc $52 $d3
    set 1, [hl]                                   ; $6346: $cb $ce
    ret nc                                        ; $6348: $d0

    sub l                                         ; $6349: $95
    ei                                            ; $634a: $fb
    ld l, h                                       ; $634b: $6c
    ret z                                         ; $634c: $c8

    cp b                                          ; $634d: $b8
    ld d, e                                       ; $634e: $53
    rst $20                                       ; $634f: $e7
    inc de                                        ; $6350: $13
    adc c                                         ; $6351: $89
    sbc [hl]                                      ; $6352: $9e
    rst $10                                       ; $6353: $d7
    ld a, [c]                                     ; $6354: $f2
    ld d, l                                       ; $6355: $55
    ld c, e                                       ; $6356: $4b
    inc e                                         ; $6357: $1c
    ld [hl+], a                                   ; $6358: $22
    adc a                                         ; $6359: $8f
    ld c, e                                       ; $635a: $4b
    ld c, l                                       ; $635b: $4d
    xor e                                         ; $635c: $ab
    ld e, [hl]                                    ; $635d: $5e
    ld a, l                                       ; $635e: $7d
    db $db                                        ; $635f: $db
    ld d, a                                       ; $6360: $57
    dec l                                         ; $6361: $2d
    add a                                         ; $6362: $87
    ei                                            ; $6363: $fb
    ld b, d                                       ; $6364: $42
    or $ef                                        ; $6365: $f6 $ef
    xor a                                         ; $6367: $af
    sub c                                         ; $6368: $91
    sub d                                         ; $6369: $92
    dec hl                                        ; $636a: $2b
    ld [hl], b                                    ; $636b: $70
    adc a                                         ; $636c: $8f
    ld c, e                                       ; $636d: $4b
    ld c, l                                       ; $636e: $4d
    inc sp                                        ; $636f: $33
    jr c, jr_04f_63d0                             ; $6370: $38 $5e

    ld a, c                                       ; $6372: $79
    push hl                                       ; $6373: $e5
    ld a, $66                                     ; $6374: $3e $66
    xor c                                         ; $6376: $a9
    push de                                       ; $6377: $d5
    or a                                          ; $6378: $b7
    ld a, l                                       ; $6379: $7d
    push de                                       ; $637a: $d5
    jr c, @-$40                                   ; $637b: $38 $be

    sub a                                         ; $637d: $97
    ld h, e                                       ; $637e: $63
    ld hl, $0110                                  ; $637f: $21 $10 $01
    adc a                                         ; $6382: $8f
    ld c, e                                       ; $6383: $4b
    dec l                                         ; $6384: $2d
    di                                            ; $6385: $f3
    ld l, d                                       ; $6386: $6a
    ld hl, $0bbb                                  ; $6387: $21 $bb $0b
    sbc c                                         ; $638a: $99
    db $ed                                        ; $638b: $ed
    inc de                                        ; $638c: $13
    dec e                                         ; $638d: $1d
    or e                                          ; $638e: $b3
    call nc, $b2b4                                ; $638f: $d4 $b4 $b2
    or c                                          ; $6392: $b1
    ldh [$3c], a                                  ; $6393: $e0 $3c
    ld a, d                                       ; $6395: $7a
    push hl                                       ; $6396: $e5
    ld a, $ad                                     ; $6397: $3e $ad
    halt                                          ; $6399: $76
    ld hl, sp-$0b                                 ; $639a: $f8 $f5
    ld [hl], c                                    ; $639c: $71
    and a                                         ; $639d: $a7
    ld e, $e5                                     ; $639e: $1e $e5
    ld b, l                                       ; $63a0: $45
    push de                                       ; $63a1: $d5
    ldh a, [$84]                                  ; $63a2: $f0 $84
    ld [c], a                                     ; $63a4: $e2
    add l                                         ; $63a5: $85
    ld d, a                                       ; $63a6: $57
    or $60                                        ; $63a7: $f6 $60
    ld b, [hl]                                    ; $63a9: $46
    ld b, e                                       ; $63aa: $43
    inc b                                         ; $63ab: $04
    ld h, b                                       ; $63ac: $60
    add d                                         ; $63ad: $82
    ld a, c                                       ; $63ae: $79
    or [hl]                                       ; $63af: $b6
    ld [hl], h                                    ; $63b0: $74
    ld [hl], l                                    ; $63b1: $75
    db $ed                                        ; $63b2: $ed
    rst $18                                       ; $63b3: $df
    ld e, a                                       ; $63b4: $5f
    jp Jump_04f_5acb                              ; $63b5: $c3 $cb $5a


    db $d3                                        ; $63b8: $d3
    db $10                                        ; $63b9: $10
    ld bc, $8260                                  ; $63ba: $01 $60 $82
    add hl, bc                                    ; $63bd: $09
    rlca                                          ; $63be: $07
    ld a, [hl-]                                   ; $63bf: $3a
    ld h, h                                       ; $63c0: $64
    ld hl, $bc53                                  ; $63c1: $21 $53 $bc
    xor b                                         ; $63c4: $a8
    ld h, l                                       ; $63c5: $65
    ld e, [hl]                                    ; $63c6: $5e
    adc l                                         ; $63c7: $8d
    ld e, c                                       ; $63c8: $59
    ld l, d                                       ; $63c9: $6a
    ld hl, $943b                                  ; $63ca: $21 $3b $94
    jp nz, $897f                                  ; $63cd: $c2 $7f $89

jr_04f_63d0:
    rst $10                                       ; $63d0: $d7
    or d                                          ; $63d1: $b2
    and c                                         ; $63d2: $a1
    res 7, h                                      ; $63d3: $cb $bc
    ld e, d                                       ; $63d5: $5a
    ld [c], a                                     ; $63d6: $e2
    res 0, [hl]                                   ; $63d7: $cb $86
    ld l, $64                                     ; $63d9: $2e $64
    and h                                         ; $63db: $a4
    db $e4                                        ; $63dc: $e4
    ld a, [bc]                                    ; $63dd: $0a
    ld b, h                                       ; $63de: $44
    adc a                                         ; $63df: $8f
    ld c, e                                       ; $63e0: $4b
    ld c, l                                       ; $63e1: $4d
    rrca                                          ; $63e2: $0f
    rst $18                                       ; $63e3: $df
    dec d                                         ; $63e4: $15
    adc a                                         ; $63e5: $8f
    jp hl                                         ; $63e6: $e9


    ld h, l                                       ; $63e7: $65
    ld h, a                                       ; $63e8: $67
    sub e                                         ; $63e9: $93
    pop hl                                        ; $63ea: $e1
    ld e, l                                       ; $63eb: $5d
    ld e, [hl]                                    ; $63ec: $5e
    dec a                                         ; $63ed: $3d
    ld b, e                                       ; $63ee: $43
    ld hl, $0f02                                  ; $63ef: $21 $02 $0f
    push de                                       ; $63f2: $d5
    or e                                          ; $63f3: $b3
    ret                                           ; $63f4: $c9


    ld [hl], d                                    ; $63f5: $72
    cp b                                          ; $63f6: $b8
    cpl                                           ; $63f7: $2f
    ld h, h                                       ; $63f8: $64
    rst $38                                       ; $63f9: $ff
    cp $1a                                        ; $63fa: $fe $1a
    add hl, hl                                    ; $63fc: $29
    cp c                                          ; $63fd: $b9
    ld a, [c]                                     ; $63fe: $f2
    ld [$6001], sp                                ; $63ff: $08 $01 $60
    add d                                         ; $6402: $82
    add hl, bc                                    ; $6403: $09
    ld [hl], a                                    ; $6404: $77
    sbc [hl]                                      ; $6405: $9e
    adc h                                         ; $6406: $8c
    sub h                                         ; $6407: $94
    ld h, h                                       ; $6408: $64
    ld [de], a                                    ; $6409: $12
    db $d3                                        ; $640a: $d3
    xor [hl]                                      ; $640b: $ae
    ld a, e                                       ; $640c: $7b
    push af                                       ; $640d: $f5
    ld b, d                                       ; $640e: $42
    ld h, [hl]                                    ; $640f: $66
    add sp, $6c                                   ; $6410: $e8 $6c
    or d                                          ; $6412: $b2
    ld c, h                                       ; $6413: $4c
    adc d                                         ; $6414: $8a
    db $e3                                        ; $6415: $e3
    xor d                                         ; $6416: $aa
    rla                                           ; $6417: $17
    or d                                          ; $6418: $b2
    ld a, a                                       ; $6419: $7f
    ld a, a                                       ; $641a: $7f
    adc l                                         ; $641b: $8d
    sbc d                                         ; $641c: $9a
    ld [hl], $0e                                  ; $641d: $36 $0e
    ld de, $4b8f                                  ; $641f: $11 $8f $4b
    dec l                                         ; $6422: $2d
    di                                            ; $6423: $f3
    ld l, d                                       ; $6424: $6a
    ld hl, $86cb                                  ; $6425: $21 $cb $86
    ld c, [hl]                                    ; $6428: $4e
    xor a                                         ; $6429: $af
    ld e, $f3                                     ; $642a: $1e $f3
    ld [hl], b                                    ; $642c: $70
    adc a                                         ; $642d: $8f
    ld l, d                                       ; $642e: $6a
    or l                                          ; $642f: $b5
    sub b                                         ; $6430: $90
    add hl, hl                                    ; $6431: $29
    ld e, [hl]                                    ; $6432: $5e
    call nc, Call_04f_68d9                        ; $6433: $d4 $d9 $68
    ret z                                         ; $6436: $c8

    ld l, h                                       ; $6437: $6c
    ret z                                         ; $6438: $c8

Jump_04f_6439:
    db $f4                                        ; $6439: $f4
    ld [$f15d], a                                 ; $643a: $ea $5d $f1
    ld e, b                                       ; $643d: $58
    ld e, a                                       ; $643e: $5f
    ld [c], a                                     ; $643f: $e2
    ld d, a                                       ; $6440: $57
    ld sp, hl                                     ; $6441: $f9
    cp $fd                                        ; $6442: $fe $fd
    dec b                                         ; $6444: $05
    ld de, $8260                                  ; $6445: $11 $60 $82
    add hl, bc                                    ; $6448: $09
    ld [hl], a                                    ; $6449: $77
    sbc [hl]                                      ; $644a: $9e
    adc h                                         ; $644b: $8c
    sub h                                         ; $644c: $94
    ld h, h                                       ; $644d: $64
    ld [de], a                                    ; $644e: $12
    res 4, h                                      ; $644f: $cb $a4
    or $c3                                        ; $6451: $f6 $c3
    ld l, e                                       ; $6453: $6b
    adc c                                         ; $6454: $89
    dec de                                        ; $6455: $1b
    xor d                                         ; $6456: $aa
    dec h                                         ; $6457: $25
    add hl, de                                    ; $6458: $19
    ld c, $64                                     ; $6459: $0e $64
    ret                                           ; $645b: $c9


    sub l                                         ; $645c: $95
    add sp, $69                                   ; $645d: $e8 $69
    push hl                                       ; $645f: $e5
    push de                                       ; $6460: $d5
    di                                            ; $6461: $f3
    ld l, $1c                                     ; $6462: $2e $1c
    scf                                           ; $6464: $37
    dec c                                         ; $6465: $0d
    ld de, $8260                                  ; $6466: $11 $60 $82
    add hl, bc                                    ; $6469: $09
    rlca                                          ; $646a: $07
    ret c                                         ; $646b: $d8

    or h                                          ; $646c: $b4
    adc l                                         ; $646d: $8d
    ld sp, $4d4b                                  ; $646e: $31 $4b $4d
    xor e                                         ; $6471: $ab
    add hl, hl                                    ; $6472: $29
    and [hl]                                      ; $6473: $a6
    ld l, c                                       ; $6474: $69
    sbc a                                         ; $6475: $9f
    dec c                                         ; $6476: $0d
    ld a, a                                       ; $6477: $7f
    add h                                         ; $6478: $84
    nop                                           ; $6479: $00
    ld h, b                                       ; $647a: $60
    add d                                         ; $647b: $82
    ld a, c                                       ; $647c: $79
    ld [hl], $1a                                  ; $647d: $36 $1a
    ld [hl-], a                                   ; $647f: $32
    ld b, e                                       ; $6480: $43
    rst $00                                       ; $6481: $c7
    inc l                                         ; $6482: $2c
    dec [hl]                                      ; $6483: $35
    ld [hl], l                                    ; $6484: $75
    ld [$f0d9], a                                 ; $6485: $ea $d9 $f0
    ld h, l                                       ; $6488: $65
    ld d, d                                       ; $6489: $52
    ld h, e                                       ; $648a: $63
    sub [hl]                                      ; $648b: $96
    sbc d                                         ; $648c: $9a
    rst $10                                       ; $648d: $d7
    xor a                                         ; $648e: $af
    add hl, de                                    ; $648f: $19
    cp d                                          ; $6490: $ba
    ld [hl], d                                    ; $6491: $72
    sbc a                                         ; $6492: $9f
    ld c, l                                       ; $6493: $4d
    or $c3                                        ; $6494: $f6 $c3
    xor e                                         ; $6496: $ab
    rla                                           ; $6497: $17
    sbc h                                         ; $6498: $9c
    ld b, a                                       ; $6499: $47
    ld c, a                                       ; $649a: $4f
    inc sp                                        ; $649b: $33
    ld h, d                                       ; $649c: $62
    jr z, jr_04f_64e3                             ; $649d: $28 $44

    ld c, a                                       ; $649f: $4f
    and e                                         ; $64a0: $a3
    ret                                           ; $64a1: $c9


    cp a                                          ; $64a2: $bf
    ld a, [hl+]                                   ; $64a3: $2a
    ld h, h                                       ; $64a4: $64
    ld d, a                                       ; $64a5: $57
    inc a                                         ; $64a6: $3c
    ret c                                         ; $64a7: $d8

    inc hl                                        ; $64a8: $23
    ld c, a                                       ; $64a9: $4f
    sra [hl]                                      ; $64aa: $cb $2e
    sub e                                         ; $64ac: $93
    db $e4                                        ; $64ad: $e4
    rst $38                                       ; $64ae: $ff
    ld e, b                                       ; $64af: $58
    ret z                                         ; $64b0: $c8

    ld c, b                                       ; $64b1: $48
    ret                                           ; $64b2: $c9


    sub l                                         ; $64b3: $95
    xor c                                         ; $64b4: $a9
    ld d, e                                       ; $64b5: $53
    rst $10                                       ; $64b6: $d7
    ld c, $b1                                     ; $64b7: $0e $b1
    dec [hl]                                      ; $64b9: $35
    db $ed                                        ; $64ba: $ed
    add sp, $25                                   ; $64bb: $e8 $25
    jr c, jr_04f_64dd                             ; $64bd: $38 $1e

    adc a                                         ; $64bf: $8f
    db $10                                        ; $64c0: $10
    adc a                                         ; $64c1: $8f
    ld c, e                                       ; $64c2: $4b
    ld c, l                                       ; $64c3: $4d
    xor e                                         ; $64c4: $ab
    sbc $15                                       ; $64c5: $de $15
    adc a                                         ; $64c7: $8f
    push hl                                       ; $64c8: $e5
    ld [hl], b                                    ; $64c9: $70
    sbc a                                         ; $64ca: $9f
    ldh a, [$ca]                                  ; $64cb: $f0 $ca
    ret z                                         ; $64cd: $c8

    ld c, b                                       ; $64ce: $48
    ret                                           ; $64cf: $c9


    sub l                                         ; $64d0: $95
    push de                                       ; $64d1: $d5
    rst $38                                       ; $64d2: $ff
    add hl, de                                    ; $64d3: $19
    ld [hl+], a                                   ; $64d4: $22
    ld h, b                                       ; $64d5: $60
    add d                                         ; $64d6: $82
    add hl, bc                                    ; $64d7: $09
    add a                                         ; $64d8: $87
    pop bc                                        ; $64d9: $c1
    ret z                                         ; $64da: $c8

    jr nc, jr_04f_6524                            ; $64db: $30 $47

jr_04f_64dd:
    push hl                                       ; $64dd: $e5
    rra                                           ; $64de: $1f
    xor h                                         ; $64df: $ac
    ld l, c                                       ; $64e0: $69
    push de                                       ; $64e1: $d5
    dec bc                                        ; $64e2: $0b

jr_04f_64e3:
    sbc c                                         ; $64e3: $99
    ld c, d                                       ; $64e4: $4a
    ld a, [hl]                                    ; $64e5: $7e
    ld de, $6abf                                  ; $64e6: $11 $bf $6a
    call Call_000_17bb                            ; $64e9: $cd $bb $17
    call c, $a279                                 ; $64ec: $dc $79 $a2
    and d                                         ; $64ef: $a2
    ld h, a                                       ; $64f0: $67
    jp Jump_000_211f                              ; $64f1: $c3 $1f $21


    rst $20                                       ; $64f4: $e7
    ret                                           ; $64f5: $c9


    jp nc, Jump_04f_6da6                          ; $64f6: $d2 $a6 $6d

    ld c, h                                       ; $64f9: $4c
    pop af                                        ; $64fa: $f1
    ld c, e                                       ; $64fb: $4b
    inc e                                         ; $64fc: $1c
    xor $3c                                       ; $64fd: $ee $3c
    ld a, h                                       ; $64ff: $7c
    sbc a                                         ; $6500: $9f
    rst $30                                       ; $6501: $f7
    add sp, $65                                   ; $6502: $e8 $65
    ld b, e                                       ; $6504: $43
    ld h, a                                       ; $6505: $67
    add sp, $6c                                   ; $6506: $e8 $6c
    or d                                          ; $6508: $b2
    ld [hl], h                                    ; $6509: $74
    ld l, b                                       ; $650a: $68
    daa                                           ; $650b: $27
    dec a                                         ; $650c: $3d
    ld a, d                                       ; $650d: $7a
    ld e, h                                       ; $650e: $5c
    rst $18                                       ; $650f: $df
    ld c, h                                       ; $6510: $4c
    or $13                                        ; $6511: $f6 $13
    adc $21                                       ; $6513: $ce $21
    ld [bc], a                                    ; $6515: $02
    and b                                         ; $6516: $a0
    ld sp, hl                                     ; $6517: $f9
    sbc [hl]                                      ; $6518: $9e
    ld c, l                                       ; $6519: $4d
    sub [hl]                                      ; $651a: $96
    xor $3a                                       ; $651b: $ee $3a
    db $db                                        ; $651d: $db
    ld b, e                                       ; $651e: $43
    ld [hl], l                                    ; $651f: $75
    or e                                          ; $6520: $b3
    ld e, $21                                     ; $6521: $1e $21
    adc a                                         ; $6523: $8f

jr_04f_6524:
    ld c, e                                       ; $6524: $4b
    call Call_04f_7baf                            ; $6525: $cd $af $7b
    reti                                          ; $6528: $d9


    ld e, b                                       ; $6529: $58
    ld [c], a                                     ; $652a: $e2
    ld d, e                                       ; $652b: $53
    ld hl, $2e86                                  ; $652c: $21 $86 $2e
    call c, $9dc7                                 ; $652f: $dc $c7 $9d
    inc h                                         ; $6532: $24
    ld a, e                                       ; $6533: $7b
    db $f4                                        ; $6534: $f4
    ld c, h                                       ; $6535: $4c
    ld c, d                                       ; $6536: $4a
    ld e, e                                       ; $6537: $5b
    and $d5                                       ; $6538: $e6 $d5
    add h                                         ; $653a: $84
    ld d, a                                       ; $653b: $57
    add $f7                                       ; $653c: $c6 $f7
    rst $28                                       ; $653e: $ef
    xor a                                         ; $653f: $af
    ld h, l                                       ; $6540: $65
    cp h                                          ; $6541: $bc
    xor a                                         ; $6542: $af
    xor b                                         ; $6543: $a8
    sbc d                                         ; $6544: $9a
    and c                                         ; $6545: $a1
    and h                                         ; $6546: $a4
    xor a                                         ; $6547: $af
    xor b                                         ; $6548: $a8
    reti                                          ; $6549: $d9


    and e                                         ; $654a: $a3
    sub a                                         ; $654b: $97
    ld a, b                                       ; $654c: $78
    ld b, b                                       ; $654d: $40
    inc b                                         ; $654e: $04
    rst $20                                       ; $654f: $e7
    pop hl                                        ; $6550: $e1
    db $d3                                        ; $6551: $d3
    xor d                                         ; $6552: $aa
    rst $00                                       ; $6553: $c7
    inc l                                         ; $6554: $2c
    or l                                          ; $6555: $b5
    ld e, h                                       ; $6556: $5c
    ld [hl+], a                                   ; $6557: $22
    pop de                                        ; $6558: $d1
    rst $38                                       ; $6559: $ff
    xor d                                         ; $655a: $aa
    sub b                                         ; $655b: $90
    ld e, l                                       ; $655c: $5d
    pop af                                        ; $655d: $f1
    ld h, b                                       ; $655e: $60
    adc a                                         ; $655f: $8f
    nop                                           ; $6560: $00
    jr jr_04f_65bc                                ; $6561: $18 $59

    reti                                          ; $6563: $d9


    reti                                          ; $6564: $d9


    rst $28                                       ; $6565: $ef
    ld [hl], c                                    ; $6566: $71
    xor c                                         ; $6567: $a9
    ld [hl], c                                    ; $6568: $71
    and a                                         ; $6569: $a7
    adc $27                                       ; $656a: $ce $27
    ld [de], a                                    ; $656c: $12
    cp l                                          ; $656d: $bd
    rst $08                                       ; $656e: $cf
    jp z, $6a59                                   ; $656f: $ca $59 $6a

    jr c, jr_04f_65b3                             ; $6572: $38 $3f

    cp h                                          ; $6574: $bc
    dec c                                         ; $6575: $0d
    rla                                           ; $6576: $17
    add hl, sp                                    ; $6577: $39
    sbc e                                         ; $6578: $9b
    ld d, $f6                                     ; $6579: $16 $f6
    ld [$e960], sp                                ; $657b: $08 $60 $e9
    ld l, h                                       ; $657e: $6c
    ld [hl-], a                                   ; $657f: $32
    db $fd                                        ; $6580: $fd
    cp $3f                                        ; $6581: $fe $3f
    ld d, d                                       ; $6583: $52
    ld [hl-], a                                   ; $6584: $32
    ld h, [hl]                                    ; $6585: $66
    xor c                                         ; $6586: $a9
    sub l                                         ; $6587: $95
    ld a, b                                       ; $6588: $78
    and h                                         ; $6589: $a4
    adc b                                         ; $658a: $88
    call nc, Call_04f_4a4c                        ; $658b: $d4 $4c $4a
    dec de                                        ; $658e: $1b
    ld [hl], a                                    ; $658f: $77
    ld l, d                                       ; $6590: $6a
    ld a, [c]                                     ; $6591: $f2
    xor e                                         ; $6592: $ab
    ld l, e                                       ; $6593: $6b
    call c, $67a9                                 ; $6594: $dc $a9 $67
    xor a                                         ; $6597: $af
    ld e, d                                       ; $6598: $5a
    ld c, $81                                     ; $6599: $0e $81
    ld [$e960], sp                                ; $659b: $08 $60 $e9
    ld l, h                                       ; $659e: $6c
    ld [hl-], a                                   ; $659f: $32
    db $fd                                        ; $65a0: $fd
    cp $bf                                        ; $65a1: $fe $bf
    ld [hl], d                                    ; $65a3: $72
    rra                                           ; $65a4: $1f
    or e                                          ; $65a5: $b3
    call nc, $a932                                ; $65a6: $d4 $32 $a9
    ld [hl], c                                    ; $65a9: $71
    and a                                         ; $65aa: $a7
    ld h, $bf                                     ; $65ab: $26 $bf
    cp d                                          ; $65ad: $ba
    ld h, $bc                                     ; $65ae: $26 $bc
    ld [hl-], a                                   ; $65b0: $32
    ld a, $ee                                     ; $65b1: $3e $ee

jr_04f_65b3:
    call nc, $57b3                                ; $65b3: $d4 $b3 $57
    sbc l                                         ; $65b6: $9d
    dec l                                         ; $65b7: $2d
    di                                            ; $65b8: $f3
    db $d3                                        ; $65b9: $d3
    rrca                                          ; $65ba: $0f
    pop af                                        ; $65bb: $f1

jr_04f_65bc:
    sbc d                                         ; $65bc: $9a
    rst $18                                       ; $65bd: $df
    rst $38                                       ; $65be: $ff
    rla                                           ; $65bf: $17
    sbc h                                         ; $65c0: $9c
    ld b, a                                       ; $65c1: $47
    rst $28                                       ; $65c2: $ef
    rlca                                          ; $65c3: $07
    pop af                                        ; $65c4: $f1
    ld l, e                                       ; $65c5: $6b
    inc h                                         ; $65c6: $24
    add h                                         ; $65c7: $84
    dec a                                         ; $65c8: $3d
    ld [bc], a                                    ; $65c9: $02
    jr jr_04f_6625                                ; $65ca: $18 $59

    reti                                          ; $65cc: $d9


    reti                                          ; $65cd: $d9


    rrca                                          ; $65ce: $0f
    ld e, h                                       ; $65cf: $5c
    dec de                                        ; $65d0: $1b
    ld l, $72                                     ; $65d1: $2e $72
    ld [hl], $2d                                  ; $65d3: $36 $2d
    inc hl                                        ; $65d5: $23
    dec h                                         ; $65d6: $25
    sbc c                                         ; $65d7: $99
    call nz, $a1f2                                ; $65d8: $c4 $f2 $a1
    and d                                         ; $65db: $a2
    daa                                           ; $65dc: $27
    cp h                                          ; $65dd: $bc
    ld [hl-], a                                   ; $65de: $32
    ld a, $fd                                     ; $65df: $3e $fd
    ld [de], a                                    ; $65e1: $12
    cp a                                          ; $65e2: $bf
    jp z, Jump_04f_5267                           ; $65e3: $ca $67 $52

    jp c, $a598                                   ; $65e6: $da $98 $a5

    and [hl]                                      ; $65e9: $a6
    rst $18                                       ; $65ea: $df
    rst $38                                       ; $65eb: $ff
    ld [hl], a                                    ; $65ec: $77
    push bc                                       ; $65ed: $c5
    ld h, e                                       ; $65ee: $63
    db $f4                                        ; $65ef: $f4
    and $5c                                       ; $65f0: $e6 $5c
    or e                                          ; $65f2: $b3
    pop hl                                        ; $65f3: $e1
    db $10                                        ; $65f4: $10
    ld bc, $5918                                  ; $65f5: $01 $18 $59
    reti                                          ; $65f8: $d9


    reti                                          ; $65f9: $d9


    rst $28                                       ; $65fa: $ef
    add hl, hl                                    ; $65fb: $29
    xor a                                         ; $65fc: $af
    ld l, d                                       ; $65fd: $6a
    ld d, a                                       ; $65fe: $57
    inc a                                         ; $65ff: $3c
    sub [hl]                                      ; $6600: $96
    rrca                                          ; $6601: $0f
    rst $30                                       ; $6602: $f7
    ld a, [de]                                    ; $6603: $1a
    cp l                                          ; $6604: $bd
    ld l, d                                       ; $6605: $6a
    ld [hl], a                                    ; $6606: $77
    db $e4                                        ; $6607: $e4
    rst $18                                       ; $6608: $df
    db $ec                                        ; $6609: $ec
    dec e                                         ; $660a: $1d
    adc $1e                                       ; $660b: $ce $1e
    ld bc, $4b8f                                  ; $660d: $01 $8f $4b
    call $f4db                                    ; $6610: $cd $db $f4
    xor [hl]                                      ; $6613: $ae
    ld a, b                                       ; $6614: $78
    xor h                                         ; $6615: $ac
    call c, Call_000_2cc7                         ; $6616: $dc $c7 $2c

jr_04f_6619:
    or l                                          ; $6619: $b5
    ld c, h                                       ; $661a: $4c
    ld l, d                                       ; $661b: $6a
    ld a, b                                       ; $661c: $78
    sub a                                         ; $661d: $97
    rst $10                                       ; $661e: $d7
    ld [de], a                                    ; $661f: $12
    or c                                          ; $6620: $b1
    pop de                                        ; $6621: $d1
    ei                                            ; $6622: $fb
    ld b, c                                       ; $6623: $41
    db $fc                                        ; $6624: $fc

jr_04f_6625:
    ld a, [de]                                    ; $6625: $1a
    adc c                                         ; $6626: $89
    sub [hl]                                      ; $6627: $96
    add d                                         ; $6628: $82
    ld [$e1e7], sp                                ; $6629: $08 $e7 $e1
    dec sp                                        ; $662c: $3b
    ld a, d                                       ; $662d: $7a
    jp hl                                         ; $662e: $e9


    inc hl                                        ; $662f: $23
    ei                                            ; $6630: $fb
    jp z, Jump_000_367d                           ; $6631: $ca $7d $36

    sbc c                                         ; $6634: $99
    ld [c], a                                     ; $6635: $e2
    ld a, e                                       ; $6636: $7b
    ld e, c                                       ; $6637: $59
    xor d                                         ; $6638: $aa
    db $fd                                        ; $6639: $fd
    ld l, h                                       ; $663a: $6c
    sbc c                                         ; $663b: $99
    sbc a                                         ; $663c: $9f
    ld c, l                                       ; $663d: $4d
    halt                                          ; $663e: $76
    push bc                                       ; $663f: $c5
    ld h, e                                       ; $6640: $63
    call $ea93                                    ; $6641: $cd $93 $ea
    db $dd                                        ; $6644: $dd
    rst $38                                       ; $6645: $ff
    ld l, e                                       ; $6646: $6b
    adc c                                         ; $6647: $89
    ld b, e                                       ; $6648: $43
    inc b                                         ; $6649: $04
    jr jr_04f_66a5                                ; $664a: $18 $59

    reti                                          ; $664c: $d9


    reti                                          ; $664d: $d9


    rst $28                                       ; $664e: $ef
    ld [hl], c                                    ; $664f: $71
    xor c                                         ; $6650: $a9
    ld a, c                                       ; $6651: $79
    sbc e                                         ; $6652: $9b
    ld e, [hl]                                    ; $6653: $5e
    cp c                                          ; $6654: $b9
    rst $28                                       ; $6655: $ef
    rra                                           ; $6656: $1f
    ld e, l                                       ; $6657: $5d
    dec e                                         ; $6658: $1d
    ld [hl-], a                                   ; $6659: $32
    cp a                                          ; $665a: $bf
    xor $d5                                       ; $665b: $ee $d5
    jp $99f9                                      ; $665d: $c3 $f9 $99


    sbc h                                         ; $6660: $9c
    ld hl, $e702                                  ; $6661: $21 $02 $e7
    pop hl                                        ; $6664: $e1
    dec sp                                        ; $6665: $3b
    ld a, d                                       ; $6666: $7a
    jp hl                                         ; $6667: $e9


    inc hl                                        ; $6668: $23
    ei                                            ; $6669: $fb
    jp z, Jump_04f_577d                           ; $666a: $ca $7d $57

    inc a                                         ; $666d: $3c
    add [hl]                                      ; $666e: $86
    ld [hl], a                                    ; $666f: $77
    ld a, c                                       ; $6670: $79
    dec l                                         ; $6671: $2d
    ld de, $bd1b                                  ; $6672: $11 $1b $bd
    rra                                           ; $6675: $1f
    call nz, $91af                                ; $6676: $c4 $af $91
    ld l, b                                       ; $6679: $68
    xor c                                         ; $667a: $a9
    or e                                          ; $667b: $b3
    sub l                                         ; $667c: $95
    ld c, b                                       ; $667d: $48
    ld [hl], l                                    ; $667e: $75
    ld e, $29                                     ; $667f: $1e $29
    sbc c                                         ; $6681: $99
    ld a, [hl]                                    ; $6682: $7e
    rst $00                                       ; $6683: $c7
    pop af                                        ; $6684: $f1
    set 3, [hl]                                   ; $6685: $cb $de
    push bc                                       ; $6687: $c5
    ld [hl], c                                    ; $6688: $71
    call nz, $1a50                                ; $6689: $c4 $50 $1a
    ld h, d                                       ; $668c: $62
    and e                                         ; $668d: $a3
    xor a                                         ; $668e: $af
    jr z, jr_04f_6619                             ; $668f: $28 $88

    nop                                           ; $6691: $00
    ret nz                                        ; $6692: $c0

    ld sp, hl                                     ; $6693: $f9
    or e                                          ; $6694: $b3
    ld h, l                                       ; $6695: $65
    add hl, sp                                    ; $6696: $39
    cp $2f                                        ; $6697: $fe $2f
    or $7b                                        ; $6699: $f6 $7b
    ld e, h                                       ; $669b: $5c
    ld l, d                                       ; $669c: $6a
    ld a, [$7ffd]                                 ; $669d: $fa $fd $7f
    ld d, a                                       ; $66a0: $57
    inc a                                         ; $66a1: $3c
    and [hl]                                      ; $66a2: $a6
    ld c, [hl]                                    ; $66a3: $4e
    ld e, l                                       ; $66a4: $5d

jr_04f_66a5:
    ei                                            ; $66a5: $fb
    ld b, a                                       ; $66a6: $47
    ld d, a                                       ; $66a7: $57
    add a                                         ; $66a8: $87
    xor h                                         ; $66a9: $ac
    ld e, d                                       ; $66aa: $5a
    ld b, c                                       ; $66ab: $41
    inc b                                         ; $66ac: $04
    adc a                                         ; $66ad: $8f
    ld c, e                                       ; $66ae: $4b
    db $ed                                        ; $66af: $ed
    inc h                                         ; $66b0: $24
    sbc c                                         ; $66b1: $99
    ld d, h                                       ; $66b2: $54
    xor a                                         ; $66b3: $af
    call c, Call_000_2cc7                         ; $66b4: $dc $c7 $2c
    dec [hl]                                      ; $66b7: $35
    sub d                                         ; $66b8: $92
    adc b                                         ; $66b9: $88
    adc l                                         ; $66ba: $8d
    ld l, c                                       ; $66bb: $69
    call z, $e3e3                                 ; $66bc: $cc $e3 $e3

Call_04f_66bf:
    dec [hl]                                      ; $66bf: $35
    ld a, e                                       ; $66c0: $7b
    push de                                       ; $66c1: $d5
    reti                                          ; $66c2: $d9


    ld l, b                                       ; $66c3: $68
    ret z                                         ; $66c4: $c8

    sbc b                                         ; $66c5: $98
    and l                                         ; $66c6: $a5
    ld b, [hl]                                    ; $66c7: $46
    ld sp, hl                                     ; $66c8: $f9
    db $ec                                        ; $66c9: $ec
    or c                                          ; $66ca: $b1
    db $ec                                        ; $66cb: $ec
    dec h                                         ; $66cc: $25
    ld d, d                                       ; $66cd: $52
    db $d3                                        ; $66ce: $d3
    adc [hl]                                      ; $66cf: $8e
    add [hl]                                      ; $66d0: $86
    ld [$58a0], sp                                ; $66d1: $08 $a0 $58
    add hl, hl                                    ; $66d4: $29
    ld d, d                                       ; $66d5: $52
    di                                            ; $66d6: $f3
    ei                                            ; $66d7: $fb
    rst $38                                       ; $66d8: $ff
    reti                                          ; $66d9: $d9


    ld e, $aa                                     ; $66da: $1e $aa
    sbc e                                         ; $66dc: $9b
    dec b                                         ; $66dd: $05
    rlca                                          ; $66de: $07
    jr c, @-$04                                   ; $66df: $38 $fa

    ld [hl], b                                    ; $66e1: $70
    xor a                                         ; $66e2: $af
    jp hl                                         ; $66e3: $e9


    ld h, l                                       ; $66e4: $65
    sub a                                         ; $66e5: $97
    dec c                                         ; $66e6: $0d
    sbc l                                         ; $66e7: $9d
    halt                                          ; $66e8: $76
    adc b                                         ; $66e9: $88
    adc l                                         ; $66ea: $8d
    push hl                                       ; $66eb: $e5
    db $10                                        ; $66ec: $10
    adc b                                         ; $66ed: $88
    nop                                           ; $66ee: $00
    add b                                         ; $66ef: $80
    adc a                                         ; $66f0: $8f
    db $ec                                        ; $66f1: $ec
    dec hl                                        ; $66f2: $2b
    rst $30                                       ; $66f3: $f7
    reti                                          ; $66f4: $d9


    ld h, h                                       ; $66f5: $64
    ld a, [hl+]                                   ; $66f6: $2a
    ld a, d                                       ; $66f7: $7a
    or $aa                                        ; $66f8: $f6 $aa
    sub l                                         ; $66fa: $95
    cp [hl]                                       ; $66fb: $be
    dec hl                                        ; $66fc: $2b
    ld d, d                                       ; $66fd: $52
    or d                                          ; $66fe: $b2
    ld a, a                                       ; $66ff: $7f
    ld [hl], h                                    ; $6700: $74
    ld [hl], l                                    ; $6701: $75
    ret z                                         ; $6702: $c8

    jp nc, $f6ff                                  ; $6703: $d2 $ff $f6

    xor d                                         ; $6706: $aa
    dec d                                         ; $6707: $15
    ld b, h                                       ; $6708: $44
    and b                                         ; $6709: $a0
    ld e, b                                       ; $670a: $58
    add hl, hl                                    ; $670b: $29
    ld d, d                                       ; $670c: $52
    di                                            ; $670d: $f3
    ei                                            ; $670e: $fb
    rst $38                                       ; $670f: $ff
    reti                                          ; $6710: $d9


    ld e, $aa                                     ; $6711: $1e $aa
    sbc e                                         ; $6713: $9b
    ld [hl], l                                    ; $6714: $75
    ld [hl], $66                                  ; $6715: $36 $66
    xor c                                         ; $6717: $a9
    jp hl                                         ; $6718: $e9


    pop hl                                        ; $6719: $e1
    dec hl                                        ; $671a: $2b
    rst $30                                       ; $671b: $f7
    reti                                          ; $671c: $d9


    ld h, h                                       ; $671d: $64
    db $e4                                        ; $671e: $e4
    ld d, a                                       ; $671f: $57
    ld d, a                                       ; $6720: $57
    rst $08                                       ; $6721: $cf
    add [hl]                                      ; $6722: $86
    ld b, e                                       ; $6723: $43
    inc b                                         ; $6724: $04
    add b                                         ; $6725: $80
    adc a                                         ; $6726: $8f
    db $ec                                        ; $6727: $ec
    dec hl                                        ; $6728: $2b
    rst $30                                       ; $6729: $f7
    reti                                          ; $672a: $d9


    ld h, h                                       ; $672b: $64
    reti                                          ; $672c: $d9


    ld l, a                                       ; $672d: $6f
    adc d                                         ; $672e: $8a
    ld b, h                                       ; $672f: $44
    sbc a                                         ; $6730: $9f
    db $ed                                        ; $6731: $ed
    rra                                           ; $6732: $1f
    ld e, l                                       ; $6733: $5d
    dec e                                         ; $6734: $1d
    ld [hl-], a                                   ; $6735: $32
    cp a                                          ; $6736: $bf
    xor $d5                                       ; $6737: $ee $d5
    jp $d9f9                                      ; $6739: $c3 $f9 $d9


    xor e                                         ; $673c: $ab
    jr nz, jr_04f_6741                            ; $673d: $20 $02

    ld c, a                                       ; $673f: $4f
    rrca                                          ; $6740: $0f

jr_04f_6741:
    add $ae                                       ; $6741: $c6 $ae
    dec h                                         ; $6743: $25
    ld sp, hl                                     ; $6744: $f9
    db $fd                                        ; $6745: $fd
    dec c                                         ; $6746: $0d
    adc h                                         ; $6747: $8c
    ld l, c                                       ; $6748: $69
    xor e                                         ; $6749: $ab
    rra                                           ; $674a: $1f
    reti                                          ; $674b: $d9


    pop hl                                        ; $674c: $e1
    or $50                                        ; $674d: $f6 $50
    xor d                                         ; $674f: $aa
    xor a                                         ; $6750: $af
    call $9ecb                                    ; $6751: $cd $cb $9e
    xor b                                         ; $6754: $a8
    ld a, d                                       ; $6755: $7a
    ld a, a                                       ; $6756: $7f
    ld a, e                                       ; $6757: $7b
    jp nz, $fab2                                  ; $6758: $c2 $b2 $fa

    sub c                                         ; $675b: $91
    dec e                                         ; $675c: $1d
    ld [hl+], a                                   ; $675d: $22
    ld b, b                                       ; $675e: $40
    cp e                                          ; $675f: $bb
    or $83                                        ; $6760: $f6 $83
    ld hl, sp+$35                                 ; $6762: $f8 $35
    ld [de], a                                    ; $6764: $12
    cp l                                          ; $6765: $bd
    and e                                         ; $6766: $a3
    sub a                                         ; $6767: $97
    ld a, a                                       ; $6768: $7f
    ld [c], a                                     ; $6769: $e2
    db $e3                                        ; $676a: $e3
    ld c, [hl]                                    ; $676b: $4e
    cp l                                          ; $676c: $bd
    dec sp                                        ; $676d: $3b
    ld e, e                                       ; $676e: $5b
    ld a, [bc]                                    ; $676f: $0a
    ld l, [hl]                                    ; $6770: $6e
    ld c, a                                       ; $6771: $4f
    adc d                                         ; $6772: $8a
    cp $ca                                        ; $6773: $fe $ca
    cp e                                          ; $6775: $bb
    ld a, e                                       ; $6776: $7b
    ld [c], a                                     ; $6777: $e2
    and [hl]                                      ; $6778: $a6
    ld l, e                                       ; $6779: $6b
    ld c, a                                       ; $677a: $4f
    ld [$9c87], a                                 ; $677b: $ea $87 $9c
    adc l                                         ; $677e: $8d
    ld e, [hl]                                    ; $677f: $5e
    ld l, e                                       ; $6780: $6b
    ld c, e                                       ; $6781: $4b
    add l                                         ; $6782: $85
    inc l                                         ; $6783: $2c
    ld b, a                                       ; $6784: $47
    db $eb                                        ; $6785: $eb
    pop de                                        ; $6786: $d1
    sub l                                         ; $6787: $95
    sub a                                         ; $6788: $97
    and l                                         ; $6789: $a5
    jp c, Jump_000_0221                           ; $678a: $da $21 $02

    rst $20                                       ; $678d: $e7
    ret                                           ; $678e: $c9


    adc b                                         ; $678f: $88
    and c                                         ; $6790: $a1
    inc [hl]                                      ; $6791: $34
    ld a, d                                       ; $6792: $7a
    ld d, a                                       ; $6793: $57
    inc a                                         ; $6794: $3c
    sub [hl]                                      ; $6795: $96
    adc b                                         ; $6796: $88
    dec l                                         ; $6797: $2d
    add hl, de                                    ; $6798: $19
    dec c                                         ; $6799: $0d
    dec sp                                        ; $679a: $3b
    dec de                                        ; $679b: $1b
    cp [hl]                                       ; $679c: $be
    ld l, h                                       ; $679d: $6c
    add sp, -$4c                                  ; $679e: $e8 $b4
    ld b, e                                       ; $67a0: $43
    ld l, h                                       ; $67a1: $6c
    inc l                                         ; $67a2: $2c
    ld de, $3d1b                                  ; $67a3: $11 $1b $3d
    xor $b3                                       ; $67a6: $ee $b3
    call nc, $e20f                                ; $67a8: $d4 $0f $e2
    rst $10                                       ; $67ab: $d7
    ld c, b                                       ; $67ac: $48
    ret z                                         ; $67ad: $c8

    reti                                          ; $67ae: $d9


    ret nz                                        ; $67af: $c0

    add hl, de                                    ; $67b0: $19
    rst $30                                       ; $67b1: $f7
    ld l, b                                       ; $67b2: $68
    adc b                                         ; $67b3: $88
    nop                                           ; $67b4: $00
    rst $20                                       ; $67b5: $e7
    ret                                           ; $67b6: $c9


    adc [hl]                                      ; $67b7: $8e

Jump_04f_67b8:
    ld e, $65                                     ; $67b8: $1e $65
    and l                                         ; $67ba: $a5
    ld c, b                                       ; $67bb: $48
    ld hl, sp-$58                                 ; $67bc: $f8 $a8
    or c                                          ; $67be: $b1
    ld d, a                                       ; $67bf: $57
    ld d, l                                       ; $67c0: $55
    rst $00                                       ; $67c1: $c7
    db $e4                                        ; $67c2: $e4
    add sp, -$27                                  ; $67c3: $e8 $d9
    ld h, h                                       ; $67c5: $64
    ld b, a                                       ; $67c6: $47
    ld c, a                                       ; $67c7: $4f
    and d                                         ; $67c8: $a2
    ld h, e                                       ; $67c9: $63
    jr c, jr_04f_680b                             ; $67ca: $38 $3f

    ld e, d                                       ; $67cc: $5a
    ld c, l                                       ; $67cd: $4d
    ld b, d                                       ; $67ce: $42
    halt                                          ; $67cf: $76
    ld d, l                                       ; $67d0: $55

Jump_04f_67d1:
    ret z                                         ; $67d1: $c8

    ld c, h                                       ; $67d2: $4c
    ld c, d                                       ; $67d3: $4a
    sbc e                                         ; $67d4: $9b
    ld d, [hl]                                    ; $67d5: $56
    dec a                                         ; $67d6: $3d
    ld a, e                                       ; $67d7: $7b
    and l                                         ; $67d8: $a5
    sub [hl]                                      ; $67d9: $96

Jump_04f_67da:
    add hl, hl                                    ; $67da: $29
    ccf                                           ; $67db: $3f
    db $fd                                        ; $67dc: $fd
    db $10                                        ; $67dd: $10
    adc c                                         ; $67de: $89
    ld e, $0d                                     ; $67df: $1e $0d
    dec sp                                        ; $67e1: $3b
    ld a, e                                       ; $67e2: $7b
    dec d                                         ; $67e3: $15
    ld b, h                                       ; $67e4: $44
    adc a                                         ; $67e5: $8f
    ld c, e                                       ; $67e6: $4b
    dec l                                         ; $67e7: $2d
    ei                                            ; $67e8: $fb
    pop af                                        ; $67e9: $f1
    ld a, a                                       ; $67ea: $7f
    db $f4                                        ; $67eb: $f4
    call nc, Call_04f_52d1                        ; $67ec: $d4 $d1 $52
    ld c, e                                       ; $67ef: $4b
    ld [hl], b                                    ; $67f0: $70
    ld a, h                                       ; $67f1: $7c
    call nc, $ecf8                                ; $67f2: $d4 $f8 $ec
    ld d, l                                       ; $67f5: $55
    xor e                                         ; $67f6: $ab
    rst $38                                       ; $67f7: $ff
    ld l, l                                       ; $67f8: $6d
    db $fc                                        ; $67f9: $fc
    ret z                                         ; $67fa: $c8

    dec bc                                        ; $67fb: $0b
    ret                                           ; $67fc: $c9


    ld b, l                                       ; $67fd: $45
    pop hl                                        ; $67fe: $e1
    sbc [hl]                                      ; $67ff: $9e
    sub [hl]                                      ; $6800: $96
    ld e, l                                       ; $6801: $5d
    ld a, $54                                     ; $6802: $3e $54
    sbc [hl]                                      ; $6804: $9e
    and c                                         ; $6805: $a1
    dec bc                                        ; $6806: $0b
    sbc c                                         ; $6807: $99
    or a                                          ; $6808: $b7
    ld sp, hl                                     ; $6809: $f9
    sbc a                                         ; $680a: $9f

jr_04f_680b:
    ld d, h                                       ; $680b: $54
    rst $38                                       ; $680c: $ff
    ld l, h                                       ; $680d: $6c
    sub e                                         ; $680e: $93
    ld hl, sp-$01                                 ; $680f: $f8 $ff
    ld l, h                                       ; $6811: $6c
    ld a, [$a3b5]                                 ; $6812: $fa $b5 $a3
    rst $10                                       ; $6815: $d7
    ld c, d                                       ; $6816: $4a
    cp c                                          ; $6817: $b9
    ccf                                           ; $6818: $3f
    ld a, [de]                                    ; $6819: $1a
    ldh [$ea], a                                  ; $681a: $e0 $ea
    sbc d                                         ; $681c: $9a
    or a                                          ; $681d: $b7
    ld sp, hl                                     ; $681e: $f9
    ccf                                           ; $681f: $3f
    ld a, e                                       ; $6820: $7b
    jp hl                                         ; $6821: $e9


    push de                                       ; $6822: $d5
    db $10                                        ; $6823: $10
    ld bc, $6540                                  ; $6824: $01 $40 $65
    ld a, d                                       ; $6827: $7a
    ld e, c                                       ; $6828: $59
    cp $11                                        ; $6829: $fe $11
    ld [bc], a                                    ; $682b: $02
    ld c, a                                       ; $682c: $4f
    sbc b                                         ; $682d: $98
    rst $00                                       ; $682e: $c7
    rst $10                                       ; $682f: $d7
    ret                                           ; $6830: $c9


    xor a                                         ; $6831: $af
    halt                                          ; $6832: $76
    cp b                                          ; $6833: $b8
    rst $00                                       ; $6834: $c7
    and l                                         ; $6835: $a5
    halt                                          ; $6836: $76
    db $f4                                        ; $6837: $f4
    or h                                          ; $6838: $b4
    sub d                                         ; $6839: $92
    cp h                                          ; $683a: $bc
    inc e                                         ; $683b: $1c
    inc h                                         ; $683c: $24
    ld de, $e25b                                  ; $683d: $11 $5b $e2
    db $10                                        ; $6840: $10
    ld bc, $ba40                                  ; $6841: $01 $40 $ba
    jp nc, $d8e9                                  ; $6844: $d2 $e9 $d8

    pop de                                        ; $6847: $d1
    and e                                         ; $6848: $a3
    ld d, a                                       ; $6849: $57
    ldh [$9e], a                                  ; $684a: $e0 $9e
    sbc $e5                                       ; $684c: $de $e5
    ret z                                         ; $684e: $c8

    cp e                                          ; $684f: $bb
    di                                            ; $6850: $f3
    ld [hl], $dc                                  ; $6851: $36 $dc
    inc sp                                        ; $6853: $33
    sbc l                                         ; $6854: $9d
    ld d, b                                       ; $6855: $50
    ld a, [de]                                    ; $6856: $1a
    cp [hl]                                       ; $6857: $be
    dec sp                                        ; $6858: $3b
    add hl, hl                                    ; $6859: $29
    ld [hl], a                                    ; $685a: $77
    adc b                                         ; $685b: $88
    nop                                           ; $685c: $00
    ld c, a                                       ; $685d: $4f
    set 5, [hl]                                   ; $685e: $cb $ee
    ld c, [hl]                                    ; $6860: $4e
    adc e                                         ; $6861: $8b
    ld e, a                                       ; $6862: $5f
    db $d3                                        ; $6863: $d3
    adc a                                         ; $6864: $8f
    cp $36                                        ; $6865: $fe $36
    ld h, h                                       ; $6867: $64
    ld b, a                                       ; $6868: $47
    cpl                                           ; $6869: $2f
    ld h, h                                       ; $686a: $64
    sbc $e6                                       ; $686b: $de $e6
    ld a, a                                       ; $686d: $7f
    ld d, d                                       ; $686e: $52
    db $fd                                        ; $686f: $fd
    or e                                          ; $6870: $b3
    ld c, l                                       ; $6871: $4d
    ld [c], a                                     ; $6872: $e2
    rst $38                                       ; $6873: $ff
    ld b, a                                       ; $6874: $47
    ld [$6540], sp                                ; $6875: $08 $40 $65
    reti                                          ; $6878: $d9


    ei                                            ; $6879: $fb
    jp c, $b0d1                                   ; $687a: $da $d1 $b0

    dec bc                                        ; $687d: $0b
    ld c, c                                       ; $687e: $49
    ld d, a                                       ; $687f: $57
    ei                                            ; $6880: $fb
    jp nc, $f591                                  ; $6881: $d2 $91 $f5

    and e                                         ; $6884: $a3
    sbc c                                         ; $6885: $99
    pop af                                        ; $6886: $f1
    ld [hl], e                                    ; $6887: $73
    inc [hl]                                      ; $6888: $34
    inc e                                         ; $6889: $1c
    ld [$2151], sp                                ; $688a: $08 $51 $21
    dec hl                                        ; $688d: $2b
    ld a, l                                       ; $688e: $7d
    pop de                                        ; $688f: $d1
    dec sp                                        ; $6890: $3b
    ld a, d                                       ; $6891: $7a
    ld a, [hl]                                    ; $6892: $7e
    rst $38                                       ; $6893: $ff
    rst $28                                       ; $6894: $ef
    inc hl                                        ; $6895: $23
    ld b, l                                       ; $6896: $45
    cp $55                                        ; $6897: $fe $55
    ld a, $92                                     ; $6899: $3e $92
    adc b                                         ; $689b: $88
    ld e, h                                       ; $689c: $5c
    or l                                          ; $689d: $b5
    dec sp                                        ; $689e: $3b
    ld e, d                                       ; $689f: $5a
    ld [$3b8e], a                                 ; $68a0: $ea $8e $3b
    push af                                       ; $68a3: $f5
    jp z, $ea7d                                   ; $68a4: $ca $7d $ea

    call nc, $e135                                ; $68a7: $d4 $35 $e1
    sub l                                         ; $68aa: $95
    sub c                                         ; $68ab: $91
    push af                                       ; $68ac: $f5
    dec h                                         ; $68ad: $25
    ld a, [hl]                                    ; $68ae: $7e
    push de                                       ; $68af: $d5
    ld [hl-], a                                   ; $68b0: $32
    add hl, hl                                    ; $68b1: $29
    ld e, e                                       ; $68b2: $5b
    ld [hl], b                                    ; $68b3: $70
    ld c, a                                       ; $68b4: $4f
    inc c                                         ; $68b5: $0c
    sbc l                                         ; $68b6: $9d
    cp l                                          ; $68b7: $bd
    or d                                          ; $68b8: $b2
    inc e                                         ; $68b9: $1c
    inc h                                         ; $68ba: $24
    ld de, $e25b                                  ; $68bb: $11 $5b $e2
    inc hl                                        ; $68be: $23
    add [hl]                                      ; $68bf: $86
    jp nc, Jump_000_31e8                          ; $68c0: $d2 $e8 $31

    ld c, e                                       ; $68c3: $4b
    xor l                                         ; $68c4: $ad
    call c, $ae97                                 ; $68c5: $dc $97 $ae
    inc d                                         ; $68c8: $14
    xor c                                         ; $68c9: $a9
    dec h                                         ; $68ca: $25
    jr c, jr_04f_690b                             ; $68cb: $38 $3e

    ld a, e                                       ; $68cd: $7b
    dec d                                         ; $68ce: $15
    ld b, h                                       ; $68cf: $44
    adc a                                         ; $68d0: $8f
    ld c, e                                       ; $68d1: $4b
    ld c, l                                       ; $68d2: $4d
    dec sp                                        ; $68d3: $3b
    or l                                          ; $68d4: $b5
    adc l                                         ; $68d5: $8d
    reti                                          ; $68d6: $d9


    ldh a, [$d9]                                  ; $68d7: $f0 $d9

Call_04f_68d9:
    and e                                         ; $68d9: $a3
    pop hl                                        ; $68da: $e1
    adc $93                                       ; $68db: $ce $93
    ld de, $6943                                  ; $68dd: $11 $43 $69
    db $f4                                        ; $68e0: $f4
    jp z, $f97d                                   ; $68e1: $ca $7d $f9

    ld [hl], b                                    ; $68e4: $70
    xor a                                         ; $68e5: $af
    push bc                                       ; $68e6: $c5
    rrca                                          ; $68e7: $0f
    ld e, l                                       ; $68e8: $5d
    dec bc                                        ; $68e9: $0b
    ld c, d                                       ; $68ea: $4a
    jp Jump_04f_4777                              ; $68eb: $c3 $77 $47


    cp $cd                                        ; $68ee: $fe $cd
    sbc $e1                                       ; $68f0: $de $e1
    db $10                                        ; $68f2: $10
    ld bc, $c9e7                                  ; $68f3: $01 $e7 $c9
    or h                                          ; $68f6: $b4
    ld [$515d], a                                 ; $68f7: $ea $5d $51
    pop hl                                        ; $68fa: $e1
    and e                                         ; $68fb: $a3
    ld h, c                                       ; $68fc: $61
    ld h, a                                       ; $68fd: $67
    jp $1da7                                      ; $68fe: $c3 $a7 $1d


    cp l                                          ; $6901: $bd
    ld [hl], d                                    ; $6902: $72
    sbc a                                         ; $6903: $9f
    ld a, [hl-]                                   ; $6904: $3a
    ld [hl], l                                    ; $6905: $75
    pop bc                                        ; $6906: $c1
    ld bc, $b23e                                  ; $6907: $01 $3e $b2
    xor a                                         ; $690a: $af

jr_04f_690b:
    call c, $dfa7                                 ; $690b: $dc $a7 $df
    add hl, hl                                    ; $690e: $29
    cp [hl]                                       ; $690f: $be
    sub a                                         ; $6910: $97
    ldh [$f8], a                                  ; $6911: $e0 $f8
    ld c, h                                       ; $6913: $4c
    ld c, d                                       ; $6914: $4a
    dec de                                        ; $6915: $1b
    ld [hl], a                                    ; $6916: $77
    ld [$7474], a                                 ; $6917: $ea $74 $74
    ret c                                         ; $691a: $d8

    add sp, -$67                                  ; $691b: $e8 $99
    sbc h                                         ; $691d: $9c
    ld hl, $0f02                                  ; $691e: $21 $02 $0f
    push af                                       ; $6921: $f5
    push af                                       ; $6922: $f5
    cp c                                          ; $6923: $b9
    ld sp, hl                                     ; $6924: $f9
    ld a, [hl-]                                   ; $6925: $3a
    inc e                                         ; $6926: $1c
    ldh [rNR44], a                                ; $6927: $e0 $23
    ei                                            ; $6929: $fb
    jp z, $fa7d                                   ; $692a: $ca $7d $fa

    ld e, l                                       ; $692d: $5d
    ld h, $2c                                     ; $692e: $26 $2c
    or c                                          ; $6930: $b1
    push de                                       ; $6931: $d5
    inc sp                                        ; $6932: $33
    add hl, sp                                    ; $6933: $39
    ld b, e                                       ; $6934: $43
    inc b                                         ; $6935: $04
    adc a                                         ; $6936: $8f
    ld c, e                                       ; $6937: $4b
    adc l                                         ; $6938: $8d
    dec hl                                        ; $6939: $2b
    rst $30                                       ; $693a: $f7
    ld [$f15d], a                                 ; $693b: $ea $5d $f1
    ld e, b                                       ; $693e: $58
    cp c                                          ; $693f: $b9
    rst $08                                       ; $6940: $cf
    ld h, $f3                                     ; $6941: $26 $f3
    ld b, e                                       ; $6943: $43
    ld c, b                                       ; $6944: $48
    db $f4                                        ; $6945: $f4
    call nc, Call_04f_6ba9                        ; $6946: $d4 $a9 $6b
    ld [hl], $7c                                  ; $6949: $36 $7c
    jp c, Jump_04f_67d1                           ; $694b: $da $d1 $67

    ld a, e                                       ; $694e: $7b
    xor b                                         ; $694f: $a8
    ld l, [hl]                                    ; $6950: $6e
    ld d, $44                                     ; $6951: $16 $44
    rst $08                                       ; $6953: $cf
    push af                                       ; $6954: $f5
    ld l, h                                       ; $6955: $6c
    ld hl, sp+$6c                                 ; $6956: $f8 $6c
    jp nz, $c07e                                  ; $6958: $c2 $7e $c0

    ld sp, hl                                     ; $695b: $f9
    sbc c                                         ; $695c: $99
    sub h                                         ; $695d: $94
    or [hl]                                       ; $695e: $b6
    ld a, a                                       ; $695f: $7f
    jr z, jr_04f_6997                             ; $6960: $28 $35

    ld a, e                                       ; $6962: $7b
    push de                                       ; $6963: $d5
    xor [hl]                                      ; $6964: $ae

jr_04f_6965:
    ld a, [bc]                                    ; $6965: $0a
    ld h, c                                       ; $6966: $61
    adc a                                         ; $6967: $8f
    nop                                           ; $6968: $00
    ld c, a                                       ; $6969: $4f
    rst $28                                       ; $696a: $ef
    adc b                                         ; $696b: $88
    and c                                         ; $696c: $a1
    inc [hl]                                      ; $696d: $34
    ld a, d                                       ; $696e: $7a
    push hl                                       ; $696f: $e5
    ld a, $ee                                     ; $6970: $3e $ee
    call nc, Call_04f_74df                        ; $6972: $d4 $df $74
    xor l                                         ; $6975: $ad
    cp $af                                        ; $6976: $fe $af
    jp hl                                         ; $6978: $e9


    ld a, h                                       ; $6979: $7c
    rst $10                                       ; $697a: $d7
    ld [hl], b                                    ; $697b: $70
    ld [hl], e                                    ; $697c: $73
    adc b                                         ; $697d: $88
    sbc d                                         ; $697e: $9a
    inc e                                         ; $697f: $1c
    dec a                                         ; $6980: $3d
    sbc e                                         ; $6981: $9b
    adc h                                         ; $6982: $8c
    daa                                           ; $6983: $27
    pop de                                        ; $6984: $d1
    db $e3                                        ; $6985: $e3
    ld a, [hl+]                                   ; $6986: $2a
    dec sp                                        ; $6987: $3b
    ld b, h                                       ; $6988: $44
    ret nz                                        ; $6989: $c0

    ld sp, hl                                     ; $698a: $f9
    reti                                          ; $698b: $d9


    dec hl                                        ; $698c: $2b
    db $d3                                        ; $698d: $d3
    rrca                                          ; $698e: $0f
    push bc                                       ; $698f: $c5
    ld e, $01                                     ; $6990: $1e $01
    ld h, b                                       ; $6992: $60
    ld c, c                                       ; $6993: $49
    jr nc, jr_04f_6965                            ; $6994: $30 $cf

    ld b, [hl]                                    ; $6996: $46

jr_04f_6997:
    ld b, e                                       ; $6997: $43
    add $2c                                       ; $6998: $c6 $2c
    dec [hl]                                      ; $699a: $35
    xor l                                         ; $699b: $ad
    ld a, d                                       ; $699c: $7a
    ld a, d                                       ; $699d: $7a
    or l                                          ; $699e: $b5
    sub h                                         ; $699f: $94
    cpl                                           ; $69a0: $2f
    ld a, [de]                                    ; $69a1: $1a
    ld [hl+], a                                   ; $69a2: $22
    rst $20                                       ; $69a3: $e7
    ld hl, $c8c3                                  ; $69a4: $21 $c3 $c8
    inc [hl]                                      ; $69a7: $34
    add hl, hl                                    ; $69a8: $29
    ld d, d                                       ; $69a9: $52
    dec sp                                        ; $69aa: $3b
    cpl                                           ; $69ab: $2f
    ld a, [de]                                    ; $69ac: $1a
    ld [bc], a                                    ; $69ad: $02
    ld hl, $8cd4                                  ; $69ae: $21 $d4 $8c
    db $ec                                        ; $69b1: $ec
    add sp, $5d                                   ; $69b2: $e8 $5d
    pop af                                        ; $69b4: $f1
    sbc b                                         ; $69b5: $98
    dec a                                         ; $69b6: $3d
    sbc d                                         ; $69b7: $9a
    db $fd                                        ; $69b8: $fd
    ld e, $97                                     ; $69b9: $1e $97
    sbc d                                         ; $69bb: $9a
    ld d, [hl]                                    ; $69bc: $56
    dec a                                         ; $69bd: $3d
    db $ed                                        ; $69be: $ed
    call nc, Call_04f_72be                        ; $69bf: $d4 $be $72
    sbc a                                         ; $69c2: $9f
    ld h, [hl]                                    ; $69c3: $66
    ld h, h                                       ; $69c4: $64
    adc d                                         ; $69c5: $8a
    rst $28                                       ; $69c6: $ef
    ld e, l                                       ; $69c7: $5d
    db $fd                                        ; $69c8: $fd
    ld d, b                                       ; $69c9: $50
    cp e                                          ; $69ca: $bb
    jp hl                                         ; $69cb: $e9


    ld e, a                                       ; $69cc: $5f
    ld h, d                                       ; $69cd: $62
    add a                                         ; $69ce: $87
    di                                            ; $69cf: $f3
    sub e                                         ; $69d0: $93
    jp Jump_04f_5a3d                              ; $69d1: $c3 $3d $5a


    ld a, [bc]                                    ; $69d4: $0a
    xor $71                                       ; $69d5: $ee $71
    xor c                                         ; $69d7: $a9
    ld de, $6943                                  ; $69d8: $11 $43 $69
    db $f4                                        ; $69db: $f4
    xor [hl]                                      ; $69dc: $ae
    ld a, b                                       ; $69dd: $78
    db $ec                                        ; $69de: $ec
    jp z, $0aae                                   ; $69df: $ca $ae $0a

    ld h, c                                       ; $69e2: $61
    adc a                                         ; $69e3: $8f
    nop                                           ; $69e4: $00
    rst $20                                       ; $69e5: $e7
    pop hl                                        ; $69e6: $e1
    dec sp                                        ; $69e7: $3b
    ld a, d                                       ; $69e8: $7a
    rst $20                                       ; $69e9: $e7
    jr nz, @+$32                                  ; $69ea: $20 $30

    ld h, d                                       ; $69ec: $62
    inc e                                         ; $69ed: $1c
    sbc $26                                       ; $69ee: $de $26
    db $fd                                        ; $69f0: $fd
    add e                                         ; $69f1: $83
    ld b, d                                       ; $69f2: $42
    inc b                                         ; $69f3: $04
    jr jr_04f_6a4f                                ; $69f4: $18 $59

    reti                                          ; $69f6: $d9


    adc e                                         ; $69f7: $8b
    db $fd                                        ; $69f8: $fd

Jump_04f_69f9:
    ld e, $97                                     ; $69f9: $1e $97
    sbc d                                         ; $69fb: $9a
    halt                                          ; $69fc: $76
    ld l, d                                       ; $69fd: $6a
    dec de                                        ; $69fe: $1b
    inc de                                        ; $69ff: $13
    ld e, [hl]                                    ; $6a00: $5e
    add hl, de                                    ; $6a01: $19
    pop af                                        ; $6a02: $f1
    dec hl                                        ; $6a03: $2b
    ld a, [bc]                                    ; $6a04: $0a
    ld [hl+], a                                   ; $6a05: $22
    adc a                                         ; $6a06: $8f
    ld c, e                                       ; $6a07: $4b
    ld c, l                                       ; $6a08: $4d
    xor e                                         ; $6a09: $ab
    sbc [hl]                                      ; $6a0a: $9e
    ld e, [hl]                                    ; $6a0b: $5e
    ld a, l                                       ; $6a0c: $7d
    ld a, l                                       ; $6a0d: $7d
    jp c, Jump_04f_4bd1                           ; $6a0e: $da $d1 $4b

    inc a                                         ; $6a11: $3c
    halt                                          ; $6a12: $76
    rst $00                                       ; $6a13: $c7
    db $fd                                        ; $6a14: $fd
    add sp, -$66                                  ; $6a15: $e8 $9a
    ld e, a                                       ; $6a17: $5f
    ld c, d                                       ; $6a18: $4a
    xor e                                         ; $6a19: $ab
    pop hl                                        ; $6a1a: $e1
    ld e, $97                                     ; $6a1b: $1e $97
    ld a, [de]                                    ; $6a1d: $1a
    ld c, c                                       ; $6a1e: $49
    call nz, $aec6                                ; $6a1f: $c4 $c6 $ae
    ld a, b                                       ; $6a22: $78
    adc h                                         ; $6a23: $8c
    jr @+$4c                                      ; $6a24: $18 $4a

    ld l, e                                       ; $6a26: $6b
    ld d, a                                       ; $6a27: $57
    db $e3                                        ; $6a28: $e3
    push de                                       ; $6a29: $d5
    ld l, h                                       ; $6a2a: $6c
    ld hl, sp-$7c                                 ; $6a2b: $f8 $84
    ld d, l                                       ; $6a2d: $55
    ei                                            ; $6a2e: $fb
    and a                                         ; $6a2f: $a7
    inc e                                         ; $6a30: $1c
    ld h, d                                       ; $6a31: $62
    jp c, Jump_04f_4386                           ; $6a32: $da $86 $43

jr_04f_6a35:
    inc b                                         ; $6a35: $04
    rst $20                                       ; $6a36: $e7
    pop hl                                        ; $6a37: $e1
    dec sp                                        ; $6a38: $3b
    ld a, d                                       ; $6a39: $7a
    rst $08                                       ; $6a3a: $cf
    xor e                                         ; $6a3b: $ab
    cp [hl]                                       ; $6a3c: $be
    reti                                          ; $6a3d: $d9


    sbc e                                         ; $6a3e: $9b
    dec h                                         ; $6a3f: $25
    pop af                                        ; $6a40: $f1
    inc a                                         ; $6a41: $3c
    call c, $3bd3                                 ; $6a42: $dc $d3 $3b
    jp z, $8f67                                   ; $6a45: $ca $67 $8f

    jp hl                                         ; $6a48: $e9


    push de                                       ; $6a49: $d5
    dec [hl]                                      ; $6a4a: $35
    sbc h                                         ; $6a4b: $9c
    ld e, a                                       ; $6a4c: $5f

jr_04f_6a4d:
    cp b                                          ; $6a4d: $b8
    cpl                                           ; $6a4e: $2f

jr_04f_6a4f:
    ei                                            ; $6a4f: $fb
    pop af                                        ; $6a50: $f1
    ld a, a                                       ; $6a51: $7f
    sbc h                                         ; $6a52: $9c
    dec c                                         ; $6a53: $0d
    ld c, h                                       ; $6a54: $4c
    add sp, -$09                                  ; $6a55: $e8 $f7
    rst $38                                       ; $6a57: $ff
    jr c, @-$63                                   ; $6a58: $38 $9b

    ld a, [hl]                                    ; $6a5a: $7e
    sub a                                         ; $6a5b: $97
    inc hl                                        ; $6a5c: $23
    cpl                                           ; $6a5d: $2f
    add a                                         ; $6a5e: $87
    ld d, h                                       ; $6a5f: $54
    rlca                                          ; $6a60: $07
    ld b, h                                       ; $6a61: $44
    and b                                         ; $6a62: $a0
    ld c, $2a                                     ; $6a63: $0e $2a
    dec [hl]                                      ; $6a65: $35
    ld a, d                                       ; $6a66: $7a
    push de                                       ; $6a67: $d5
    xor [hl]                                      ; $6a68: $ae
    ld a, b                                       ; $6a69: $78
    ld c, h                                       ; $6a6a: $4c
    dec sp                                        ; $6a6b: $3b
    sbc d                                         ; $6a6c: $9a
    dec a                                         ; $6a6d: $3d
    ld [bc], a                                    ; $6a6e: $02
    jr nz, jr_04f_6a35                            ; $6a6f: $20 $c4

    ld h, e                                       ; $6a71: $63
    db $f4                                        ; $6a72: $f4
    xor d                                         ; $6a73: $aa
    ld l, c                                       ; $6a74: $69
    pop af                                        ; $6a75: $f1
    ld a, a                                       ; $6a76: $7f
    inc [hl]                                      ; $6a77: $34
    ld a, e                                       ; $6a78: $7b
    inc b                                         ; $6a79: $04
    ld h, b                                       ; $6a7a: $60
    ld c, c                                       ; $6a7b: $49
    jr nc, jr_04f_6a4d                            ; $6a7c: $30 $cf

    add $9d                                       ; $6a7e: $c6 $9d
    ld a, $73                                     ; $6a80: $3e $73
    inc [hl]                                      ; $6a82: $34
    db $ec                                        ; $6a83: $ec
    ld l, b                                       ; $6a84: $68
    ret z                                         ; $6a85: $c8

    db $f4                                        ; $6a86: $f4
    ld [$2b39], a                                 ; $6a87: $ea $39 $2b
    ld a, e                                       ; $6a8a: $7b
    ld b, c                                       ; $6a8b: $41
    inc b                                         ; $6a8c: $04
    rrca                                          ; $6a8d: $0f
    ld b, a                                       ; $6a8e: $47
    rst $28                                       ; $6a8f: $ef
    add sp, -$27                                  ; $6a90: $e8 $d9
    ld [hl], b                                    ; $6a92: $70
    cp b                                          ; $6a93: $b8
    rlca                                          ; $6a94: $07
    cp $ff                                        ; $6a95: $fe $ff
    dec h                                         ; $6a97: $25
    ld c, [hl]                                    ; $6a98: $4e
    ld l, $59                                     ; $6a99: $2e $59
    ld [hl], b                                    ; $6a9b: $70
    ld e, $3d                                     ; $6a9c: $1e $3d
    ret nc                                        ; $6a9e: $d0

    push af                                       ; $6a9f: $f5
    add hl, sp                                    ; $6aa0: $39
    jp Jump_04f_499a                              ; $6aa1: $c3 $9a $49


    ld l, c                                       ; $6aa4: $69
    inc bc                                        ; $6aa5: $03
    jp nc, Jump_04f_4e95                          ; $6aa6: $d2 $95 $4e

    rlca                                          ; $6aa9: $07
    ld b, h                                       ; $6aaa: $44
    ld h, b                                       ; $6aab: $60
    ld c, h                                       ; $6aac: $4c
    xor [hl]                                      ; $6aad: $ae
    add hl, de                                    ; $6aae: $19

jr_04f_6aaf:
    ld c, d                                       ; $6aaf: $4a
    ld a, [$3a8a]                                 ; $6ab0: $fa $8a $3a
    db $db                                        ; $6ab3: $db
    cp a                                          ; $6ab4: $bf
    rst $38                                       ; $6ab5: $ff
    rst $10                                       ; $6ab6: $d7
    ld a, [c]                                     ; $6ab7: $f2
    ret                                           ; $6ab8: $c9


    push bc                                       ; $6ab9: $c5
    db $e4                                        ; $6aba: $e4
    or e                                          ; $6abb: $b3
    reti                                          ; $6abc: $d9


    ldh a, [rNR33]                                ; $6abd: $f0 $1d
    dec a                                         ; $6abf: $3d
    db $ed                                        ; $6ac0: $ed
    add sp, $25                                   ; $6ac1: $e8 $25
    and d                                         ; $6ac3: $a2
    ld h, d                                       ; $6ac4: $62
    and b                                         ; $6ac5: $a0
    db $eb                                        ; $6ac6: $eb
    ld [hl], e                                    ; $6ac7: $73
    add [hl]                                      ; $6ac8: $86
    or l                                          ; $6ac9: $b5
    ld e, h                                       ; $6aca: $5c
    dec hl                                        ; $6acb: $2b
    rst $30                                       ; $6acc: $f7
    reti                                          ; $6acd: $d9


    ld e, b                                       ; $6ace: $58
    ld h, $c9                                     ; $6acf: $26 $c9

Call_04f_6ad1:
    rst $38                                       ; $6ad1: $ff
    ld sp, $babd                                  ; $6ad2: $31 $bd $ba
    jr nz, jr_04f_6ad9                            ; $6ad5: $20 $02

    and b                                         ; $6ad7: $a0
    sbc c                                         ; $6ad8: $99

jr_04f_6ad9:
    sub l                                         ; $6ad9: $95
    sbc b                                         ; $6ada: $98
    ld l, [hl]                                    ; $6adb: $6e
    ld [$4421], sp                                ; $6adc: $08 $21 $44
    rst $20                                       ; $6adf: $e7
    ld b, a                                       ; $6ae0: $47
    rst $28                                       ; $6ae1: $ef
    add sp, -$37                                  ; $6ae2: $e8 $c9
    dec a                                         ; $6ae4: $3d
    sbc e                                         ; $6ae5: $9b
    inc h                                         ; $6ae6: $24
    dec sp                                        ; $6ae7: $3b
    ld a, d                                       ; $6ae8: $7a
    ld [hl], $7c                                  ; $6ae9: $36 $7c
    db $e4                                        ; $6aeb: $e4
    call nc, $ee3e                                ; $6aec: $d4 $3e $ee
    call nc, $668b                                ; $6aef: $d4 $8b $66
    adc a                                         ; $6af2: $8f
    nop                                           ; $6af3: $00
    ld c, a                                       ; $6af4: $4f
    bit 1, [hl]                                   ; $6af5: $cb $4e
    ld sp, $db4d                                  ; $6af7: $31 $4d $db
    sbc b                                         ; $6afa: $98
    call c, $5e25                                 ; $6afb: $dc $25 $5e
    jp nz, $7a9d                                  ; $6afe: $c2 $9d $7a

    reti                                          ; $6b01: $d9


    add sp, -$47                                  ; $6b02: $e8 $b9
    ld a, [hl]                                    ; $6b04: $7e
    ret z                                         ; $6b05: $c8

    db $f4                                        ; $6b06: $f4
    ld l, e                                       ; $6b07: $6b
    ld h, a                                       ; $6b08: $67
    ld b, e                                       ; $6b09: $43
    and [hl]                                      ; $6b0a: $a6
    dec e                                         ; $6b0b: $1d
    dec a                                         ; $6b0c: $3d
    cp a                                          ; $6b0d: $bf
    ld [hl], $64                                  ; $6b0e: $36 $64
    jr c, jr_04f_6b51                             ; $6b10: $38 $3f

    bit 2, d                                      ; $6b12: $cb $52
    ld [de], a                                    ; $6b14: $12
    cp $08                                        ; $6b15: $fe $08
    ld bc, $cd8f                                  ; $6b17: $01 $8f $cd
    reti                                          ; $6b1a: $d9


    sbc b                                         ; $6b1b: $98
    and l                                         ; $6b1c: $a5
    and [hl]                                      ; $6b1d: $a6
    sub l                                         ; $6b1e: $95
    adc l                                         ; $6b1f: $8d
    xor c                                         ; $6b20: $a9
    ld a, a                                       ; $6b21: $7f
    and d                                         ; $6b22: $a2
    cp [hl]                                       ; $6b23: $be
    ld a, a                                       ; $6b24: $7f
    jp z, $a621                                   ; $6b25: $ca $21 $a6

    ld l, l                                       ; $6b28: $6d
    jr c, jr_04f_6aaf                             ; $6b29: $38 $84

    db $10                                        ; $6b2b: $10
    ld bc, $5918                                  ; $6b2c: $01 $18 $59
    reti                                          ; $6b2f: $d9


    reti                                          ; $6b30: $d9


    rst $28                                       ; $6b31: $ef
    inc a                                         ; $6b32: $3c
    ld a, h                                       ; $6b33: $7c
    jp c, $3bd1                                   ; $6b34: $da $d1 $3b

    ld a, d                                       ; $6b37: $7a
    pop hl                                        ; $6b38: $e1
    cp [hl]                                       ; $6b39: $be
    ld a, [$af5f]                                 ; $6b3a: $fa $5f $af
    cp $57                                        ; $6b3d: $fe $57
    ld sp, hl                                     ; $6b3f: $f9
    jp nc, $dc6d                                  ; $6b40: $d2 $6d $dc

    ld b, a                                       ; $6b43: $47
    adc l                                         ; $6b44: $8d
    xor a                                         ; $6b45: $af
    ld b, e                                       ; $6b46: $43

jr_04f_6b47:
    db $fd                                        ; $6b47: $fd
    ld l, b                                       ; $6b48: $68
    add hl, hl                                    ; $6b49: $29
    cp b                                          ; $6b4a: $b8
    rst $10                                       ; $6b4b: $d7
    ld e, [hl]                                    ; $6b4c: $5e
    dec e                                         ; $6b4d: $1d
    ld l, [hl]                                    ; $6b4e: $6e
    ld c, $51                                     ; $6b4f: $0e $51

jr_04f_6b51:
    ld a, c                                       ; $6b51: $79
    and l                                         ; $6b52: $a5
    db $db                                        ; $6b53: $db
    ld l, $35                                     ; $6b54: $2e $35
    xor $d4                                       ; $6b56: $ee $d4

jr_04f_6b58:
    inc bc                                        ; $6b58: $03
    sbc $2c                                       ; $6b59: $de $2c
    adc [hl]                                      ; $6b5b: $8e
    cp e                                          ; $6b5c: $bb
    ld h, d                                       ; $6b5d: $62
    ld c, l                                       ; $6b5e: $4d
    sbc a                                         ; $6b5f: $9f
    call $b4a4                                    ; $6b60: $cd $a4 $b4
    ld h, l                                       ; $6b63: $65
    rst $28                                       ; $6b64: $ef
    ld [c], a                                     ; $6b65: $e2
    jr c, jr_04f_6bca                             ; $6b66: $38 $62

    jr z, @+$0f                                   ; $6b68: $28 $0d

    or c                                          ; $6b6a: $b1
    pop de                                        ; $6b6b: $d1
    ld d, a                                       ; $6b6c: $57
    inc d                                         ; $6b6d: $14
    call c, Call_04f_52e3                         ; $6b6e: $dc $e3 $52
    dec sp                                        ; $6b71: $3b
    ld a, d                                       ; $6b72: $7a
    ld sp, hl                                     ; $6b73: $f9
    jr nz, jr_04f_6b47                            ; $6b74: $20 $d1

    jp $95f9                                      ; $6b76: $c3 $f9 $95


    ei                                            ; $6b79: $fb
    ld l, b                                       ; $6b7a: $68
    reti                                          ; $6b7b: $d9


    and d                                         ; $6b7c: $a2
    inc bc                                        ; $6b7d: $03
    ld h, a                                       ; $6b7e: $67
    jr z, jr_04f_6b58                             ; $6b7f: $28 $d7

    pop bc                                        ; $6b81: $c1
    ld a, [de]                                    ; $6b82: $1a
    ld sp, $4694                                  ; $6b83: $31 $94 $46
    xor a                                         ; $6b86: $af
    call c, $e097                                 ; $6b87: $dc $97 $e0
    ld a, b                                       ; $6b8a: $78
    ld h, $e5                                     ; $6b8b: $26 $e5
    ld e, [hl]                                    ; $6b8d: $5e
    adc e                                         ; $6b8e: $8b
    sbc [hl]                                      ; $6b8f: $9e
    add $3c                                       ; $6b90: $c6 $3c
    ld a, $be                                     ; $6b92: $3e $be
    dec sp                                        ; $6b94: $3b
    ld l, d                                       ; $6b95: $6a

Jump_04f_6b96:
    ld e, d                                       ; $6b96: $5a
    add hl, de                                    ; $6b97: $19
    add c                                         ; $6b98: $81
    db $10                                        ; $6b99: $10
    jp z, $d3d1                                   ; $6b9a: $ca $d1 $d3

    adc h                                         ; $6b9d: $8c
    inc l                                         ; $6b9e: $2c
    sub e                                         ; $6b9f: $93
    ld e, d                                       ; $6ba0: $5a
    or $c3                                        ; $6ba1: $f6 $c3
    sub $d2                                       ; $6ba3: $d6 $d2
    ld b, a                                       ; $6ba5: $47
    adc d                                         ; $6ba6: $8a
    add h                                         ; $6ba7: $84
    ld [hl], h                                    ; $6ba8: $74

Call_04f_6ba9:
    ld b, d                                       ; $6ba9: $42
    ld l, c                                       ; $6baa: $69
    jr c, jr_04f_6bf1                             ; $6bab: $38 $44

jr_04f_6bad:
    add b                                         ; $6bad: $80
    adc a                                         ; $6bae: $8f
    inc d                                         ; $6baf: $14
    add hl, bc                                    ; $6bb0: $09
    jp hl                                         ; $6bb1: $e9


    add h                                         ; $6bb2: $84
    jp nc, $f670                                  ; $6bb3: $d2 $70 $f6

    ld [$ff80], sp                                ; $6bb6: $08 $80 $ff
    pop bc                                        ; $6bb9: $c1
    ld e, $01                                     ; $6bba: $1e $01
    jr jr_04f_6bad                                ; $6bbc: $18 $ef

    rst $38                                       ; $6bbe: $ff
    jp hl                                         ; $6bbf: $e9


    ld [hl+], a                                   ; $6bc0: $22
    dec [hl]                                      ; $6bc1: $35
    cp a                                          ; $6bc2: $bf
    rst $38                                       ; $6bc3: $ff
    cpl                                           ; $6bc4: $2f
    cp d                                          ; $6bc5: $ba
    sub [hl]                                      ; $6bc6: $96
    adc l                                         ; $6bc7: $8d
    sbc [hl]                                      ; $6bc8: $9e
    db $eb                                        ; $6bc9: $eb

jr_04f_6bca:
    ld d, a                                       ; $6bca: $57
    or e                                          ; $6bcb: $b3
    ld b, a                                       ; $6bcc: $47
    rst $20                                       ; $6bcd: $e7
    pop hl                                        ; $6bce: $e1
    db $e3                                        ; $6bcf: $e3
    ld hl, sp-$62                                 ; $6bd0: $f8 $9e
    ld e, [hl]                                    ; $6bd2: $5e
    ld e, l                                       ; $6bd3: $5d
    srl a                                         ; $6bd4: $cb $3f
    pop af                                        ; $6bd6: $f1
    pop hl                                        ; $6bd7: $e1
    db $fc                                        ; $6bd8: $fc
    ld l, h                                       ; $6bd9: $6c
    ld hl, sp-$4c                                 ; $6bda: $f8 $b4
    and e                                         ; $6bdc: $a3
    reti                                          ; $6bdd: $d9


    ld l, a                                       ; $6bde: $6f
    xor a                                         ; $6bdf: $af
    cp l                                          ; $6be0: $bd
    ld a, [hl-]                                   ; $6be1: $3a
    call c, $a21c                                 ; $6be2: $dc $1c $a2
    ld a, [c]                                     ; $6be5: $f2
    ld c, d                                       ; $6be6: $4a
    or a                                          ; $6be7: $b7
    ld e, l                                       ; $6be8: $5d
    ld l, d                                       ; $6be9: $6a
    call c, Call_000_07a9                         ; $6bea: $dc $a9 $07
    cp h                                          ; $6bed: $bc
    ld e, c                                       ; $6bee: $59
    inc e                                         ; $6bef: $1c
    ld [hl], a                                    ; $6bf0: $77

jr_04f_6bf1:
    push bc                                       ; $6bf1: $c5
    sbc d                                         ; $6bf2: $9a
    add [hl]                                      ; $6bf3: $86
    dec de                                        ; $6bf4: $1b
    add $fb                                       ; $6bf5: $c6 $fb
    ld a, a                                       ; $6bf7: $7f
    cp d                                          ; $6bf8: $ba
    ld c, b                                       ; $6bf9: $48
    call $ffef                                    ; $6bfa: $cd $ef $ff
    adc e                                         ; $6bfd: $8b
    xor [hl]                                      ; $6bfe: $ae
    ld h, l                                       ; $6bff: $65
    and e                                         ; $6c00: $a3
    rst $20                                       ; $6c01: $e7
    ld a, [$ecd5]                                 ; $6c02: $fa $d5 $ec
    ld de, $d50f                                  ; $6c05: $11 $0f $d5
    or e                                          ; $6c08: $b3
    ret                                           ; $6c09: $c9


    adc b                                         ; $6c0a: $88
    and c                                         ; $6c0b: $a1
    db $f4                                        ; $6c0c: $f4
    ld a, [$7e70]                                 ; $6c0d: $fa $70 $7e
    pop hl                                        ; $6c10: $e1
    cp [hl]                                       ; $6c11: $be
    ld a, h                                       ; $6c12: $7c
    cp b                                          ; $6c13: $b8
    xor a                                         ; $6c14: $af
    call c, $0c47                                 ; $6c15: $dc $47 $0c
    and l                                         ; $6c18: $a5
    dec [hl]                                      ; $6c19: $35
    sbc $77                                       ; $6c1a: $de $77
    ld e, $7b                                     ; $6c1c: $1e $7b
    ld a, d                                       ; $6c1e: $7a
    ld [hl], e                                    ; $6c1f: $73
    db $e4                                        ; $6c20: $e4
    dec a                                         ; $6c21: $3d
    pop af                                        ; $6c22: $f1
    sub b                                         ; $6c23: $90
    dec e                                         ; $6c24: $1d
    ld a, [c]                                     ; $6c25: $f2
    ld [$8f01], sp                                ; $6c26: $08 $01 $8f
    ld c, e                                       ; $6c29: $4b
    ld c, l                                       ; $6c2a: $4d
    ld a, a                                       ; $6c2b: $7f
    ld e, c                                       ; $6c2c: $59
    ld a, a                                       ; $6c2d: $7f
    ld e, c                                       ; $6c2e: $59
    rrca                                          ; $6c2f: $0f
    rst $18                                       ; $6c30: $df
    dec d                                         ; $6c31: $15
    rrca                                          ; $6c32: $0f
    ld [$e3e1], sp                                ; $6c33: $08 $e1 $e3
    ld d, d                                       ; $6c36: $52
    inc hl                                        ; $6c37: $23
    cpl                                           ; $6c38: $2f
    sub e                                         ; $6c39: $93
    sub a                                         ; $6c3a: $97
    ld c, c                                       ; $6c3b: $49
    ret                                           ; $6c3c: $c9


    xor [hl]                                      ; $6c3d: $ae
    ld a, b                                       ; $6c3e: $78
    ld b, b                                       ; $6c3f: $40
    ld [$e711], sp                                ; $6c40: $08 $11 $e7
    ret                                           ; $6c43: $c9


    ld c, b                                       ; $6c44: $48
    ret                                           ; $6c45: $c9


    ld a, b                                       ; $6c46: $78

jr_04f_6c47:
    and a                                         ; $6c47: $a7
    ld d, a                                       ; $6c48: $57
    or d                                          ; $6c49: $b2
    dec de                                        ; $6c4a: $1b
    adc c                                         ; $6c4b: $89
    ld a, c                                       ; $6c4c: $79
    db $fd                                        ; $6c4d: $fd
    sbc d                                         ; $6c4e: $9a
    and c                                         ; $6c4f: $a1
    db $d3                                        ; $6c50: $d3
    sub d                                         ; $6c51: $92
    ld e, $2d                                     ; $6c52: $1e $2d
    add hl, de                                    ; $6c54: $19
    ld sp, $4694                                  ; $6c55: $31 $94 $46
    adc a                                         ; $6c58: $8f
    dec sp                                        ; $6c59: $3b
    ld [hl], l                                    ; $6c5a: $75
    ld a, [$5ece]                                 ; $6c5b: $fa $ce $5e
    rst $30                                       ; $6c5e: $f7
    ld l, c                                       ; $6c5f: $69
    add [hl]                                      ; $6c60: $86
    inc h                                         ; $6c61: $24
    ld sp, hl                                     ; $6c62: $f9
    ld h, l                                       ; $6c63: $65
    call c, Call_000_2490                         ; $6c64: $dc $90 $24
    ld b, e                                       ; $6c67: $43
    inc b                                         ; $6c68: $04
    and b                                         ; $6c69: $a0
    ld e, a                                       ; $6c6a: $5f
    and [hl]                                      ; $6c6b: $a6
    cpl                                           ; $6c6c: $2f
    db $d3                                        ; $6c6d: $d3
    sub b                                         ; $6c6e: $90
    reti                                          ; $6c6f: $d9


    ldh a, [$65]                                  ; $6c70: $f0 $65
    sub d                                         ; $6c72: $92
    db $fc                                        ; $6c73: $fc
    rra                                           ; $6c74: $1f
    db $d3                                        ; $6c75: $d3
    xor e                                         ; $6c76: $ab
    ld l, e                                       ; $6c77: $6b
    call c, $dccb                                 ; $6c78: $dc $cb $dc
    set 3, h                                      ; $6c7b: $cb $dc
    xor c                                         ; $6c7d: $a9
    ei                                            ; $6c7e: $fb
    or b                                          ; $6c7f: $b0
    pop de                                        ; $6c80: $d1
    rla                                           ; $6c81: $17
    ld b, d                                       ; $6c82: $42
    adc b                                         ; $6c83: $88
    nop                                           ; $6c84: $00
    ld c, a                                       ; $6c85: $4f
    rst $28                                       ; $6c86: $ef
    jr c, jr_04f_6c47                             ; $6c87: $38 $be

    add a                                         ; $6c89: $87
    ld [hl], a                                    ; $6c8a: $77
    ld a, c                                       ; $6c8b: $79
    push hl                                       ; $6c8c: $e5
    jp hl                                         ; $6c8d: $e9


    rst $10                                       ; $6c8e: $d7
    xor $aa                                       ; $6c8f: $ee $aa
    sub b                                         ; $6c91: $90
    ret                                           ; $6c92: $c9


    pop de                                        ; $6c93: $d1
    or e                                          ; $6c94: $b3
    ret                                           ; $6c95: $c9


    or h                                          ; $6c96: $b4
    ld [$23a5], a                                 ; $6c97: $ea $a5 $23
    ei                                            ; $6c9a: $fb
    ld b, c                                       ; $6c9b: $41
    ld a, l                                       ; $6c9c: $7d
    ld a, d                                       ; $6c9d: $7a
    ret nc                                        ; $6c9e: $d0

    reti                                          ; $6c9f: $d9


    ld h, h                                       ; $6ca0: $64
    sbc c                                         ; $6ca1: $99
    call nc, $eaf4                                ; $6ca2: $d4 $f4 $ea
    jp c, $cc37                                   ; $6ca5: $da $37 $cc

    ld a, [$c6a3]                                 ; $6ca8: $fa $a3 $c6
    ld hl, $1802                                  ; $6cab: $21 $02 $18
    dec hl                                        ; $6cae: $2b
    ld b, l                                       ; $6caf: $45
    ld h, [hl]                                    ; $6cb0: $66
    ld d, d                                       ; $6cb1: $52
    jp c, $d1be                                   ; $6cb2: $da $be $d1

    ld d, a                                       ; $6cb5: $57
    xor $b3                                       ; $6cb6: $ee $b3
    or c                                          ; $6cb8: $b1
    dec hl                                        ; $6cb9: $2b
    ld e, $cb                                     ; $6cba: $1e $cb
    cp h                                          ; $6cbc: $bc
    sbc d                                         ; $6cbd: $9a
    ret                                           ; $6cbe: $c9


    add hl, de                                    ; $6cbf: $19
    ld [hl+], a                                   ; $6cc0: $22
    ld c, a                                       ; $6cc1: $4f
    set 5, [hl]                                   ; $6cc2: $cb $ee
    add sp, -$63                                  ; $6cc4: $e8 $9d

Jump_04f_6cc6:
    rst $00                                       ; $6cc6: $c7
    sbc [hl]                                      ; $6cc7: $9e
    sbc $1c                                       ; $6cc8: $de $1c
    ld a, c                                       ; $6cca: $79
    ld c, a                                       ; $6ccb: $4f
    inc a                                         ; $6ccc: $3c
    db $e4                                        ; $6ccd: $e4
    ld de, $8f02                                  ; $6cce: $11 $02 $8f
    ld c, e                                       ; $6cd1: $4b
    ld c, l                                       ; $6cd2: $4d
    rrca                                          ; $6cd3: $0f
    rst $18                                       ; $6cd4: $df
    dec d                                         ; $6cd5: $15
    adc a                                         ; $6cd6: $8f
    or e                                          ; $6cd7: $b3
    pop de                                        ; $6cd8: $d1
    sub b                                         ; $6cd9: $90
    dec a                                         ; $6cda: $3d
    sub c                                         ; $6cdb: $91
    jp nz, $fa63                                  ; $6cdc: $c2 $63 $fa

    db $fd                                        ; $6cdf: $fd
    ld a, a                                       ; $6ce0: $7f
    reti                                          ; $6ce1: $d9


    sbc c                                         ; $6ce2: $99
    rst $00                                       ; $6ce3: $c7

Call_04f_6ce4:
    xor a                                         ; $6ce4: $af
    reti                                          ; $6ce5: $d9


    db $10                                        ; $6ce6: $10
    or $08                                        ; $6ce7: $f6 $08
    ret nz                                        ; $6ce9: $c0

    xor $4f                                       ; $6cea: $ee $4f
    ld l, c                                       ; $6cec: $69
    db $ec                                        ; $6ced: $ec

Call_04f_6cee:
    rst $30                                       ; $6cee: $f7
    db $f4                                        ; $6cef: $f4
    ld c, [hl]                                    ; $6cf0: $4e
    db $fd                                        ; $6cf1: $fd

jr_04f_6cf2:
    inc de                                        ; $6cf2: $13
    or l                                          ; $6cf3: $b5
    or c                                          ; $6cf4: $b1
    or h                                          ; $6cf5: $b4
    ld l, c                                       ; $6cf6: $69

Jump_04f_6cf7:
    sbc a                                         ; $6cf7: $9f
    ld h, [hl]                                    ; $6cf8: $66
    call nz, $8850                                ; $6cf9: $c4 $50 $88
    nop                                           ; $6cfc: $00
    ret nz                                        ; $6cfd: $c0

    ld c, h                                       ; $6cfe: $4c
    dec sp                                        ; $6cff: $3b
    add h                                         ; $6d00: $84
    ld d, b                                       ; $6d01: $50
    sbc l                                         ; $6d02: $9d
    add sp, -$5e                                  ; $6d03: $e8 $a2
    ld hl, $0f02                                  ; $6d05: $21 $02 $0f
    cpl                                           ; $6d08: $2f
    ccf                                           ; $6d09: $3f
    cp h                                          ; $6d0a: $bc
    db $fc                                        ; $6d0b: $fc
    ld d, b                                       ; $6d0c: $50
    db $dd                                        ; $6d0d: $dd
    inc l                                         ; $6d0e: $2c
    ld [$f421], sp                                ; $6d0f: $08 $21 $f4
    sub a                                         ; $6d12: $97
    db $fd                                        ; $6d13: $fd
    ld h, l                                       ; $6d14: $65
    cp a                                          ; $6d15: $bf
    xor $c5                                       ; $6d16: $ee $c5
    ld e, $01                                     ; $6d18: $1e $01
    rst $20                                       ; $6d1a: $e7
    ret                                           ; $6d1b: $c9


    jp nc, Jump_04f_6da6                          ; $6d1c: $d2 $a6 $6d

    ld c, h                                       ; $6d1f: $4c
    adc a                                         ; $6d20: $8f
    ld h, $ff                                     ; $6d21: $26 $ff
    xor d                                         ; $6d23: $aa
    sub b                                         ; $6d24: $90
    ld e, l                                       ; $6d25: $5d
    pop af                                        ; $6d26: $f1
    sbc b                                         ; $6d27: $98
    db $ed                                        ; $6d28: $ed
    xor e                                         ; $6d29: $ab
    rst $10                                       ; $6d2a: $d7
    ld l, b                                       ; $6d2b: $68
    ret c                                         ; $6d2c: $d8

    add c                                         ; $6d2d: $81
    ld c, a                                       ; $6d2e: $4f
    ld l, [hl]                                    ; $6d2f: $6e
    ld [hl], a                                    ; $6d30: $77
    db $fc                                        ; $6d31: $fc
    ccf                                           ; $6d32: $3f
    xor $d4                                       ; $6d33: $ee $d4
    db $d3                                        ; $6d35: $d3
    ld c, d                                       ; $6d36: $4a
    ld a, [c]                                     ; $6d37: $f2
    cp h                                          ; $6d38: $bc
    ld a, $17                                     ; $6d39: $3e $17
    rra                                           ; $6d3b: $1f
    ld [hl+], a                                   ; $6d3c: $22
    ld h, b                                       ; $6d3d: $60
    add d                                         ; $6d3e: $82
    ret                                           ; $6d3f: $c9


    ld a, [hl]                                    ; $6d40: $7e
    jr jr_04f_6cf2                                ; $6d41: $18 $af

    ld a, e                                       ; $6d43: $7b
    or c                                          ; $6d44: $b1
    ld b, a                                       ; $6d45: $47
    sbc b                                         ; $6d46: $98
    sbc h                                         ; $6d47: $9c
    db $fd                                        ; $6d48: $fd
    ld e, $97                                     ; $6d49: $1e $97
    ld a, [de]                                    ; $6d4b: $1a
    dec a                                         ; $6d4c: $3d
    ld a, c                                       ; $6d4d: $79
    db $f4                                        ; $6d4e: $f4
    or h                                          ; $6d4f: $b4
    ld hl, sp-$41                                 ; $6d50: $f8 $bf
    ld h, e                                       ; $6d52: $63
    ret nz                                        ; $6d53: $c0

    xor $4f                                       ; $6d54: $ee $4f
    ld l, c                                       ; $6d56: $69
    dec sp                                        ; $6d57: $3b
    ld h, h                                       ; $6d58: $64
    ld [hl], $64                                  ; $6d59: $36 $64
    or $e8                                        ; $6d5b: $f6 $e8
    push hl                                       ; $6d5d: $e5
    ld [hl+], a                                   ; $6d5e: $22
    ld hl, $11ec                                  ; $6d5f: $21 $ec $11
    ld c, a                                       ; $6d62: $4f
    xor e                                         ; $6d63: $ab
    cp c                                          ; $6d64: $b9
    ld d, e                                       ; $6d65: $53
    ld c, a                                       ; $6d66: $4f
    xor e                                         ; $6d67: $ab
    sbc [hl]                                      ; $6d68: $9e
    adc l                                         ; $6d69: $8d
    reti                                          ; $6d6a: $d9


    sub b                                         ; $6d6b: $90
    ld e, l                                       ; $6d6c: $5d
    ld sp, hl                                     ; $6d6d: $f9
    ld a, h                                       ; $6d6e: $7c
    or $dd                                        ; $6d6f: $f6 $dd
    ld h, l                                       ; $6d71: $65
    ld h, d                                       ; $6d72: $62
    ld a, [hl]                                    ; $6d73: $7e
    ret                                           ; $6d74: $c9


    inc hl                                        ; $6d75: $23
    inc b                                         ; $6d76: $04

Call_04f_6d77:
    ld c, a                                       ; $6d77: $4f
    ld a, b                                       ; $6d78: $78
    dec [hl]                                      ; $6d79: $35
    cp c                                          ; $6d7a: $b9
    cp e                                          ; $6d7b: $bb
    ld [c], a                                     ; $6d7c: $e2
    ld sp, $feae                                  ; $6d7d: $31 $ae $fe
    ld c, a                                       ; $6d80: $4f
    ld d, d                                       ; $6d81: $52
    and h                                         ; $6d82: $a4
    ld h, h                                       ; $6d83: $64
    ld [hl], $64                                  ; $6d84: $36 $64
    reti                                          ; $6d86: $d9


    adc l                                         ; $6d87: $8d
    dec e                                         ; $6d88: $1d
    adc $3f                                       ; $6d89: $ce $3f
    jp c, $c879                                   ; $6d8b: $da $79 $c8

    db $f4                                        ; $6d8e: $f4
    ld [hl+], a                                   ; $6d8f: $22
    ld e, [hl]                                    ; $6d90: $5e
    dec a                                         ; $6d91: $3d
    pop hl                                        ; $6d92: $e1
    sub l                                         ; $6d93: $95
    ld de, $a2bf                                  ; $6d94: $11 $bf $a2
    jr nz, jr_04f_6d9b                            ; $6d97: $20 $02

    adc a                                         ; $6d99: $8f
    ld c, e                                       ; $6d9a: $4b

jr_04f_6d9b:
    dec l                                         ; $6d9b: $2d
    ld a, a                                       ; $6d9c: $7f
    cp [hl]                                       ; $6d9d: $be
    and a                                         ; $6d9e: $a7
    sub a                                         ; $6d9f: $97
    sbc l                                         ; $6da0: $9d
    and c                                         ; $6da1: $a1
    dec hl                                        ; $6da2: $2b
    rst $30                                       ; $6da3: $f7
    reti                                          ; $6da4: $d9


    sub b                                         ; $6da5: $90

Jump_04f_6da6:
    jp hl                                         ; $6da6: $e9


    ld b, l                                       ; $6da7: $45
    cp h                                          ; $6da8: $bc
    ld a, d                                       ; $6da9: $7a
    rst $20                                       ; $6daa: $e7
    or c                                          ; $6dab: $b1
    and a                                         ; $6dac: $a7
    scf                                           ; $6dad: $37
    ld b, a                                       ; $6dae: $47
    sbc $13                                       ; $6daf: $de $13
    rrca                                          ; $6db1: $0f
    ld h, c                                       ; $6db2: $61
    adc a                                         ; $6db3: $8f
    nop                                           ; $6db4: $00
    rst $20                                       ; $6db5: $e7
    pop hl                                        ; $6db6: $e1
    db $d3                                        ; $6db7: $d3
    adc [hl]                                      ; $6db8: $8e
    sbc $d1                                       ; $6db9: $de $d1
    db $e3                                        ; $6dbb: $e3
    xor d                                         ; $6dbc: $aa
    rst $38                                       ; $6dbd: $ff
    ld d, l                                       ; $6dbe: $55
    ld a, $93                                     ; $6dbf: $3e $93
    jp nc, $c366                                  ; $6dc1: $d2 $66 $c3

jr_04f_6dc4:
    sub a                                         ; $6dc4: $97
    ld a, $35                                     ; $6dc5: $3e $35
    or e                                          ; $6dc7: $b3
    ld a, d                                       ; $6dc8: $7a
    jp hl                                         ; $6dc9: $e9


    ld a, a                                       ; $6dca: $7f
    sub a                                         ; $6dcb: $97
    ld b, e                                       ; $6dcc: $43
    inc e                                         ; $6dcd: $1c
    xor $e9                                       ; $6dce: $ee $e9
    sbc l                                         ; $6dd0: $9d
    ld [c], a                                     ; $6dd1: $e2
    ld a, e                                       ; $6dd2: $7b
    ld h, $a5                                     ; $6dd3: $26 $a5
    call Call_04f_7baf                            ; $6dd5: $cd $af $7b
    push af                                       ; $6dd8: $f5
    inc c                                         ; $6dd9: $0c
    sbc l                                         ; $6dda: $9d
    dec c                                         ; $6ddb: $0d
    add hl, de                                    ; $6ddc: $19
    ld b, [hl]                                    ; $6ddd: $46
    and [hl]                                      ; $6dde: $a6
    ld c, c                                       ; $6ddf: $49
    sub c                                         ; $6de0: $91
    jp c, $d179                                   ; $6de1: $da $79 $d1

    sub b                                         ; $6de4: $90
    ld l, c                                       ; $6de5: $69
    push de                                       ; $6de6: $d5
    inc hl                                        ; $6de7: $23
    add [hl]                                      ; $6de8: $86
    jp nc, $f3eb                                  ; $6de9: $d2 $eb $f3

    ei                                            ; $6dec: $fb
    ld a, a                                       ; $6ded: $7f
    cp d                                          ; $6dee: $ba
    ld c, b                                       ; $6def: $48
    db $ed                                        ; $6df0: $ed
    db $10                                        ; $6df1: $10
    adc b                                         ; $6df2: $88
    nop                                           ; $6df3: $00
    ld c, a                                       ; $6df4: $4f
    xor e                                         ; $6df5: $ab
    ld [hl], a                                    ; $6df6: $77
    ld d, a                                       ; $6df7: $57
    rst $38                                       ; $6df8: $ff
    ld c, a                                       ; $6df9: $4f
    ccf                                           ; $6dfa: $3f
    ld a, [$90db]                                 ; $6dfb: $fa $db $90
    ld l, c                                       ; $6dfe: $69
    push de                                       ; $6dff: $d5
    sub e                                         ; $6e00: $93
    dec sp                                        ; $6e01: $3b
    cp l                                          ; $6e02: $bd
    ld a, [$eafa]                                 ; $6e03: $fa $fa $ea
    rst $38                                       ; $6e06: $ff
    ret z                                         ; $6e07: $c8

    ld b, l                                       ; $6e08: $45
    ld l, c                                       ; $6e09: $69
    ld c, c                                       ; $6e0a: $49
    ld a, [hl]                                    ; $6e0b: $7e
    add h                                         ; $6e0c: $84
    nop                                           ; $6e0d: $00
    add b                                         ; $6e0e: $80
    sbc e                                         ; $6e0f: $9b
    or l                                          ; $6e10: $b5
    add sp, $5d                                   ; $6e11: $e8 $5d
    pop af                                        ; $6e13: $f1
    sbc b                                         ; $6e14: $98
    and c                                         ; $6e15: $a1
    or e                                          ; $6e16: $b3
    pop hl                                        ; $6e17: $e1
    db $ec                                        ; $6e18: $ec
    rlca                                          ; $6e19: $07
    cp h                                          ; $6e1a: $bc
    ld l, a                                       ; $6e1b: $6f
    or $66                                        ; $6e1c: $f6 $66
    ld c, c                                       ; $6e1e: $49
    or b                                          ; $6e1f: $b0
    ld b, a                                       ; $6e20: $47
    rst $20                                       ; $6e21: $e7
    ret                                           ; $6e22: $c9


    jr z, jr_04f_6dc4                             ; $6e23: $28 $9f

    dec a                                         ; $6e25: $3d
    sub [hl]                                      ; $6e26: $96
    ld a, a                                       ; $6e27: $7f
    ld [c], a                                     ; $6e28: $e2
    dec [hl]                                      ; $6e29: $35
    xor a                                         ; $6e2a: $af
    ld h, l                                       ; $6e2b: $65
    ld e, [hl]                                    ; $6e2c: $5e
    ld l, d                                       ; $6e2d: $6a
    jp c, $b3d1                                   ; $6e2e: $da $d1 $b3

    add hl, bc                                    ; $6e31: $09
    and l                                         ; $6e32: $a5
    or l                                          ; $6e33: $b5
    cp [hl]                                       ; $6e34: $be
    sbc c                                         ; $6e35: $99
    ld b, h                                       ; $6e36: $44
    jp Jump_04f_4981                              ; $6e37: $c3 $81 $49


    and $87                                       ; $6e3a: $e6 $87
    sub b                                         ; $6e3c: $90
    add sp, $31                                   ; $6e3d: $e8 $31
    ld c, e                                       ; $6e3f: $4b
    ld c, l                                       ; $6e40: $4d
    pop af                                        ; $6e41: $f1
    inc sp                                        ; $6e42: $33
    add hl, hl                                    ; $6e43: $29
    ld l, l                                       ; $6e44: $6d
    rst $38                                       ; $6e45: $ff
    ld d, b                                       ; $6e46: $50
    xor d                                         ; $6e47: $aa
    ld b, [hl]                                    ; $6e48: $46
    xor a                                         ; $6e49: $af
    ld a, [hl-]                                   ; $6e4a: $3a
    sbc e                                         ; $6e4b: $9b
    and c                                         ; $6e4c: $a1
    sub e                                         ; $6e4d: $93
    cp e                                          ; $6e4e: $bb
    dec hl                                        ; $6e4f: $2b
    ld e, $d3                                     ; $6e50: $1e $d3
    xor d                                         ; $6e52: $aa
    daa                                           ; $6e53: $27
    cp h                                          ; $6e54: $bc
    ld [hl-], a                                   ; $6e55: $32
    cp [hl]                                       ; $6e56: $be
    and b                                         ; $6e57: $a0
    add $67                                       ; $6e58: $c6 $67
    jp Jump_000_0221                              ; $6e5a: $c3 $21 $02


    adc a                                         ; $6e5d: $8f
    ld c, e                                       ; $6e5e: $4b
    adc l                                         ; $6e5f: $8d
    add [hl]                                      ; $6e60: $86
    add l                                         ; $6e61: $85
    jp $a1d8                                      ; $6e62: $c3 $d8 $a1


    sbc e                                         ; $6e65: $9b
    ld e, $29                                     ; $6e66: $1e $29
    reti                                          ; $6e68: $d9


    dec d                                         ; $6e69: $15
    adc a                                         ; $6e6a: $8f
    ld h, l                                       ; $6e6b: $65
    and e                                         ; $6e6c: $a3
    rst $10                                       ; $6e6d: $d7
    inc c                                         ; $6e6e: $0c
    dec e                                         ; $6e6f: $1d
    or e                                          ; $6e70: $b3
    call nc, Call_04f_78ae                        ; $6e71: $d4 $ae $78
    db $ec                                        ; $6e74: $ec
    add sp, -$27                                  ; $6e75: $e8 $d9
    and e                                         ; $6e77: $a3
    ld hl, $4f02                                  ; $6e78: $21 $02 $4f
    rst $28                                       ; $6e7b: $ef
    jp nc, Jump_04f_6da6                          ; $6e7c: $d2 $a6 $6d

    inc l                                         ; $6e7f: $2c
    dec e                                         ; $6e80: $1d
    ld a, l                                       ; $6e81: $7d
    cp b                                          ; $6e82: $b8
    rst $10                                       ; $6e83: $d7
    cp b                                          ; $6e84: $b8
    ld d, e                                       ; $6e85: $53
    rrca                                          ; $6e86: $0f

jr_04f_6e87:
    ld [hl], h                                    ; $6e87: $74
    ld a, [bc]                                    ; $6e88: $0a
    cp b                                          ; $6e89: $b8
    sub c                                         ; $6e8a: $91
    ld d, d                                       ; $6e8b: $52
    push af                                       ; $6e8c: $f5
    rst $38                                       ; $6e8d: $ff
    inc c                                         ; $6e8e: $0c
    db $dd                                        ; $6e8f: $dd
    inc de                                        ; $6e90: $13
    add hl, hl                                    ; $6e91: $29
    inc a                                         ; $6e92: $3c
    jr nz, jr_04f_6e97                            ; $6e93: $20 $02

    adc a                                         ; $6e95: $8f
    ld c, e                                       ; $6e96: $4b

jr_04f_6e97:
    call $f4db                                    ; $6e97: $cd $db $f4
    xor [hl]                                      ; $6e9a: $ae
    ld a, b                                       ; $6e9b: $78
    xor h                                         ; $6e9c: $ac
    call c, Call_000_19a7                         ; $6e9d: $dc $a7 $19
    ld e, c                                       ; $6ea0: $59
    ld h, $c9                                     ; $6ea1: $26 $c9
    rst $38                                       ; $6ea3: $ff
    ld sp, $336f                                  ; $6ea4: $31 $6f $33
    sub e                                         ; $6ea7: $93
    inc sp                                        ; $6ea8: $33
    inc e                                         ; $6ea9: $1c
    ret c                                         ; $6eaa: $d8

    sub h                                         ; $6eab: $94
    ld [hl], $43                                  ; $6eac: $36 $43
    and a                                         ; $6eae: $a7
    add hl, de                                    ; $6eaf: $19
    sbc c                                         ; $6eb0: $99
    ld h, d                                       ; $6eb1: $62
    sbc d                                         ; $6eb2: $9a

jr_04f_6eb3:
    or [hl]                                       ; $6eb3: $b6
    ld sp, $be1b                                  ; $6eb4: $31 $1b $be
    ld c, h                                       ; $6eb7: $4c
    sub d                                         ; $6eb8: $92
    rst $38                                       ; $6eb9: $ff
    ld h, e                                       ; $6eba: $63
    ld [hl], $7c                                  ; $6ebb: $36 $7c
    jp hl                                         ; $6ebd: $e9


    ret nc                                        ; $6ebe: $d0

    ld l, a                                       ; $6ebf: $6f
    xor [hl]                                      ; $6ec0: $ae
    sub l                                         ; $6ec1: $95
    ei                                            ; $6ec2: $fb
    db $f4                                        ; $6ec3: $f4
    dec sp                                        ; $6ec4: $3b
    cp l                                          ; $6ec5: $bd
    ld a, [$12fa]                                 ; $6ec6: $fa $fa $12
    adc a                                         ; $6ec9: $8f
    db $dd                                        ; $6eca: $dd
    ld de, $7dd3                                  ; $6ecb: $11 $d3 $7d
    xor l                                         ; $6ece: $ad
    jp hl                                         ; $6ecf: $e9


    ld l, b                                       ; $6ed0: $68
    xor c                                         ; $6ed1: $a9
    db $dd                                        ; $6ed2: $dd
    add hl, hl                                    ; $6ed3: $29
    cp [hl]                                       ; $6ed4: $be
    ld b, a                                       ; $6ed5: $47
    db $f4                                        ; $6ed6: $f4
    db $e3                                        ; $6ed7: $e3
    ld a, a                                       ; $6ed8: $7f
    adc b                                         ; $6ed9: $88
    nop                                           ; $6eda: $00
    jr nz, jr_04f_6f28                            ; $6edb: $20 $4b

    ld [hl-], a                                   ; $6edd: $32
    adc c                                         ; $6ede: $89
    reti                                          ; $6edf: $d9


    ld [hl], b                                    ; $6ee0: $70
    jr c, jr_04f_6eb3                             ; $6ee1: $38 $d0

    ld hl, $efd3                                  ; $6ee3: $21 $d3 $ef
    jr z, jr_04f_6e87                             ; $6ee6: $28 $9f

    dec a                                         ; $6ee8: $3d
    and [hl]                                      ; $6ee9: $a6
    ld c, [hl]                                    ; $6eea: $4e
    ld e, l                                       ; $6eeb: $5d
    inc de                                        ; $6eec: $13
    ld e, [hl]                                    ; $6eed: $5e
    db $fc                                        ; $6eee: $fc
    adc d                                         ; $6eef: $8a
    ld h, d                                       ; $6ef0: $62
    adc a                                         ; $6ef1: $8f
    nop                                           ; $6ef2: $00
    ld c, a                                       ; $6ef3: $4f
    rst $28                                       ; $6ef4: $ef
    jp nc, $9da1                                  ; $6ef5: $d2 $a1 $9d

    db $f4                                        ; $6ef8: $f4
    add sp, -$2f                                  ; $6ef9: $e8 $d1
    add sp, -$5b                                  ; $6efb: $e8 $a5
    ld b, e                                       ; $6efd: $43
    cp a                                          ; $6efe: $bf
    ld a, c                                       ; $6eff: $79
    add [hl]                                      ; $6f00: $86
    ld c, [hl]                                    ; $6f01: $4e
    cp a                                          ; $6f02: $bf
    res 4, h                                      ; $6f03: $cb $a4
    ld b, [hl]                                    ; $6f05: $46
    ld [de], a                                    ; $6f06: $12
    sub c                                         ; $6f07: $91
    jp c, $8f49                                   ; $6f08: $da $49 $8f

    halt                                          ; $6f0b: $76
    sub [hl]                                      ; $6f0c: $96
    xor d                                         ; $6f0d: $aa
    add c                                         ; $6f0e: $81
    ld c, [hl]                                    ; $6f0f: $4e
    ld bc, $5237                                  ; $6f10: $01 $37 $52
    xor d                                         ; $6f13: $aa
    cp $87                                        ; $6f14: $fe $87
    ld a, e                                       ; $6f16: $7b
    ld a, d                                       ; $6f17: $7a
    ld b, a                                       ; $6f18: $47
    ld sp, hl                                     ; $6f19: $f9
    db $ec                                        ; $6f1a: $ec
    or c                                          ; $6f1b: $b1
    ld a, a                                       ; $6f1c: $7f
    or e                                          ; $6f1d: $b3
    rst $10                                       ; $6f1e: $d7
    ld [de], a                                    ; $6f1f: $12
    sbc a                                         ; $6f20: $9f
    ld e, [hl]                                    ; $6f21: $5e
    halt                                          ; $6f22: $76
    rst $20                                       ; $6f23: $e7
    or c                                          ; $6f24: $b1
    and a                                         ; $6f25: $a7
    scf                                           ; $6f26: $37
    ld b, a                                       ; $6f27: $47

jr_04f_6f28:
    sbc $13                                       ; $6f28: $de $13
    rrca                                          ; $6f2a: $0f
    reti                                          ; $6f2b: $d9


    pop de                                        ; $6f2c: $d1
    db $e3                                        ; $6f2d: $e3
    ld c, [hl]                                    ; $6f2e: $4e
    dec a                                         ; $6f2f: $3d
    pop hl                                        ; $6f30: $e1
    sub l                                         ; $6f31: $95
    ld [hl], c                                    ; $6f32: $71
    adc b                                         ; $6f33: $88
    nop                                           ; $6f34: $00
    add b                                         ; $6f35: $80
    cp e                                          ; $6f36: $bb
    halt                                          ; $6f37: $76
    db $ed                                        ; $6f38: $ed
    inc sp                                        ; $6f39: $33
    ld [hl], b                                    ; $6f3a: $70
    and b                                         ; $6f3b: $a0
    ld b, e                                       ; $6f3c: $43
    and [hl]                                      ; $6f3d: $a6
    rst $18                                       ; $6f3e: $df
    and l                                         ; $6f3f: $a5
    ld c, a                                       ; $6f40: $4f
    call $deac                                    ; $6f41: $cd $ac $de
    dec e                                         ; $6f44: $1d
    dec [hl]                                      ; $6f45: $35
    xor l                                         ; $6f46: $ad
    adc h                                         ; $6f47: $8c
    ret nz                                        ; $6f48: $c0

    dec a                                         ; $6f49: $3d
    ld l, $35                                     ; $6f4a: $2e $35
    xor l                                         ; $6f4c: $ad
    ld a, d                                       ; $6f4d: $7a
    inc e                                         ; $6f4e: $1c
    rst $28                                       ; $6f4f: $ef
    ld a, $31                                     ; $6f50: $3e $31
    ld l, d                                       ; $6f52: $6a
    and l                                         ; $6f53: $a5
    rst $28                                       ; $6f54: $ef
    ret nc                                        ; $6f55: $d0

    ld b, e                                       ; $6f56: $43
    sbc h                                         ; $6f57: $9c
    push de                                       ; $6f58: $d5
    db $e3                                        ; $6f59: $e3
    ld c, [hl]                                    ; $6f5a: $4e
    cp l                                          ; $6f5b: $bd
    sub b                                         ; $6f5c: $90
    ld de, $f8fd                                  ; $6f5d: $11 $fd $f8
    rra                                           ; $6f60: $1f
    ld c, $b8                                     ; $6f61: $0e $b8
    or c                                          ; $6f63: $b1
    sub e                                         ; $6f64: $93
    ld [hl], d                                    ; $6f65: $72
    ccf                                           ; $6f66: $3f
    db $db                                        ; $6f67: $db
    ld b, e                                       ; $6f68: $43
    ld [hl], l                                    ; $6f69: $75
    or e                                          ; $6f6a: $b3
    jr nz, jr_04f_6f6f                            ; $6f6b: $20 $02

    ret nz                                        ; $6f6d: $c0

    adc l                                         ; $6f6e: $8d

jr_04f_6f6f:
    sbc l                                         ; $6f6f: $9d
    sub h                                         ; $6f70: $94
    ei                                            ; $6f71: $fb
    reti                                          ; $6f72: $d9


    jr nc, jr_04f_6f8d                            ; $6f73: $30 $18

    add c                                         ; $6f75: $81
    ld [$0d20], sp                                ; $6f76: $08 $20 $0d
    db $dd                                        ; $6f79: $dd
    ld d, l                                       ; $6f7a: $55
    ld hl, $7b70                                  ; $6f7b: $21 $70 $7b
    ld a, d                                       ; $6f7e: $7a
    ld b, a                                       ; $6f7f: $47
    ld sp, hl                                     ; $6f80: $f9
    db $ec                                        ; $6f81: $ec
    ld sp, $d4ee                                  ; $6f82: $31 $ee $d4
    ld sp, hl                                     ; $6f85: $f9
    ld b, h                                       ; $6f86: $44
    ld l, d                                       ; $6f87: $6a
    jp c, $af75                                   ; $6f88: $da $75 $af

    add c                                         ; $6f8b: $81
    xor [hl]                                      ; $6f8c: $ae

jr_04f_6f8d:
    rst $08                                       ; $6f8d: $cf
    add hl, de                                    ; $6f8e: $19
    sub $ee                                       ; $6f8f: $d6 $ee
    cp h                                          ; $6f91: $bc
    dec c                                         ; $6f92: $0d
    rst $30                                       ; $6f93: $f7
    ld c, h                                       ; $6f94: $4c
    daa                                           ; $6f95: $27
    sub h                                         ; $6f96: $94
    add [hl]                                      ; $6f97: $86
    rst $28                                       ; $6f98: $ef
    xor d                                         ; $6f99: $aa
    db $10                                        ; $6f9a: $10
    adc b                                         ; $6f9b: $88
    nop                                           ; $6f9c: $00
    ld c, a                                       ; $6f9d: $4f
    rst $28                                       ; $6f9e: $ef
    jp nc, Jump_04f_6da6                          ; $6f9f: $d2 $a6 $6d

    inc l                                         ; $6fa2: $2c
    ld a, e                                       ; $6fa3: $7b
    adc c                                         ; $6fa4: $89
    call nc, $a3b4                                ; $6fa5: $d4 $b4 $a3
    sub a                                         ; $6fa8: $97
    ldh [$78], a                                  ; $6fa9: $e0 $78
    sbc h                                         ; $6fab: $9c
    db $ed                                        ; $6fac: $ed
    and c                                         ; $6fad: $a1
    cp d                                          ; $6fae: $ba
    ld e, c                                       ; $6faf: $59
    ld [hl], b                                    ; $6fb0: $70
    jp $86d8                                      ; $6fb1: $c3 $d8 $86


    ld a, e                                       ; $6fb4: $7b
    and [hl]                                      ; $6fb5: $a6
    inc de                                        ; $6fb6: $13
    ld c, d                                       ; $6fb7: $4a
    jp $aff7                                      ; $6fb8: $c3 $f7 $af


    ld d, d                                       ; $6fbb: $52
    pop de                                        ; $6fbc: $d1
    jp $79f9                                      ; $6fbd: $c3 $f9 $79


    add a                                         ; $6fc0: $87
    ld h, l                                       ; $6fc1: $65
    add $74                                       ; $6fc2: $c6 $74
    ld e, [hl]                                    ; $6fc4: $5e
    xor [hl]                                      ; $6fc5: $ae
    xor b                                         ; $6fc6: $a8
    db $10                                        ; $6fc7: $10
    adc b                                         ; $6fc8: $88
    nop                                           ; $6fc9: $00
    rst $20                                       ; $6fca: $e7
    ld b, a                                       ; $6fcb: $47
    rst $28                                       ; $6fcc: $ef
    add sp, -$27                                  ; $6fcd: $e8 $d9
    ld h, h                                       ; $6fcf: $64
    call z, Call_04f_6ce4                         ; $6fd0: $cc $e4 $6c
    rrca                                          ; $6fd3: $0f
    push de                                       ; $6fd4: $d5
    call $db82                                    ; $6fd5: $cd $82 $db
    db $d3                                        ; $6fd8: $d3
    dec sp                                        ; $6fd9: $3b
    push bc                                       ; $6fda: $c5
    rst $30                                       ; $6fdb: $f7
    db $fc                                        ; $6fdc: $fc
    cp $3f                                        ; $6fdd: $fe $3f
    sbc l                                         ; $6fdf: $9d
    ld l, a                                       ; $6fe0: $6f
    ld e, a                                       ; $6fe1: $5f
    jp c, $85b4                                   ; $6fe2: $da $b4 $85

    ld [$fbc0], sp                                ; $6fe5: $08 $c0 $fb
    ld h, [hl]                                    ; $6fe8: $66
    ld l, a                                       ; $6fe9: $6f
    sub [hl]                                      ; $6fea: $96
    inc b                                         ; $6feb: $04
    ld b, h                                       ; $6fec: $44
    rst $20                                       ; $6fed: $e7
    pop hl                                        ; $6fee: $e1
    dec sp                                        ; $6fef: $3b
    ld a, d                                       ; $6ff0: $7a
    jp hl                                         ; $6ff1: $e9


    inc hl                                        ; $6ff2: $23
    ei                                            ; $6ff3: $fb
    jp z, $cc7d                                   ; $6ff4: $ca $7d $cc

    ld d, d                                       ; $6ff7: $52
    cp e                                          ; $6ff8: $bb
    ld [c], a                                     ; $6ff9: $e2
    ld sp, $f7c5                                  ; $6ffa: $31 $c5 $f7
    xor [hl]                                      ; $6ffd: $ae
    call z, Call_000_0d1e                         ; $6ffe: $cc $1e $0d
    or a                                          ; $7001: $b7
    di                                            ; $7002: $f3
    ldh a, [rNR33]                                ; $7003: $f0 $1d
    dec a                                         ; $7005: $3d
    xor $d4                                       ; $7006: $ee $d4
    ld l, c                                       ; $7008: $69
    ld h, [hl]                                    ; $7009: $66
    ld h, d                                       ; $700a: $62
    jp Jump_000_0221                              ; $700b: $c3 $21 $02


    ret nz                                        ; $700e: $c0

    adc l                                         ; $700f: $8d
    db $dd                                        ; $7010: $dd
    db $e3                                        ; $7011: $e3
    db $e4                                        ; $7012: $e4
    sbc a                                         ; $7013: $9f

jr_04f_7014:
    db $ed                                        ; $7014: $ed
    and c                                         ; $7015: $a1
    cp d                                          ; $7016: $ba
    ld e, c                                       ; $7017: $59
    db $ec                                        ; $7018: $ec
    ld de, $8dc0                                  ; $7019: $11 $c0 $8d
    db $dd                                        ; $701c: $dd
    db $e3                                        ; $701d: $e3
    db $e4                                        ; $701e: $e4
    sbc a                                         ; $701f: $9f
    dec c                                         ; $7020: $0d
    add e                                         ; $7021: $83
    ld de, $c3f6                                  ; $7022: $11 $f6 $c3
    ld a, b                                       ; $7025: $78
    db $dd                                        ; $7026: $dd
    ld l, e                                       ; $7027: $6b
    ld a, [$569d]                                 ; $7028: $fa $9d $56
    dec a                                         ; $702b: $3d
    adc [hl]                                      ; $702c: $8e
    ld [hl], a                                    ; $702d: $77
    rra                                           ; $702e: $1f
    inc sp                                        ; $702f: $33
    ld sp, hl                                     ; $7030: $f9
    db $e4                                        ; $7031: $e4
    rla                                           ; $7032: $17
    adc [hl]                                      ; $7033: $8e
    ld d, a                                       ; $7034: $57
    ld b, e                                       ; $7035: $43
    inc b                                         ; $7036: $04
    jr jr_04f_7014                                ; $7037: $18 $db

    ld a, b                                       ; $7039: $78
    ld e, [hl]                                    ; $703a: $5e
    cp c                                          ; $703b: $b9
    rst $08                                       ; $703c: $cf
    add $b8                                       ; $703d: $c6 $b8
    rra                                           ; $703f: $1f
    reti                                          ; $7040: $d9


    ld l, e                                       ; $7041: $6b
    ld e, d                                       ; $7042: $5a
    push af                                       ; $7043: $f5
    ld a, b                                       ; $7044: $78
    ld [c], a                                     ; $7045: $e2
    db $d3                                        ; $7046: $d3
    add d                                         ; $7047: $82
    adc [hl]                                      ; $7048: $8e
    sub h                                         ; $7049: $94
    ld c, h                                       ; $704a: $4c
    cp a                                          ; $704b: $bf
    db $e3                                        ; $704c: $e3
    ld c, h                                       ; $704d: $4c
    dec sp                                        ; $704e: $3b
    ld d, a                                       ; $704f: $57
    ld e, l                                       ; $7050: $5d
    ld h, d                                       ; $7051: $62
    ld h, e                                       ; $7052: $63
    ld e, d                                       ; $7053: $5a
    adc l                                         ; $7054: $8d
    inc h                                         ; $7055: $24
    sbc a                                         ; $7056: $9f
    dec a                                         ; $7057: $3d
    ld [bc], a                                    ; $7058: $02
    jr jr_04f_7096                                ; $7059: $18 $3b

    db $f4                                        ; $705b: $f4
    ld a, a                                       ; $705c: $7f
    push de                                       ; $705d: $d5
    or h                                          ; $705e: $b4
    ld hl, sp-$16                                 ; $705f: $f8 $ea
    ld l, h                                       ; $7061: $6c
    db $f4                                        ; $7062: $f4
    ld c, d                                       ; $7063: $4a
    dec l                                         ; $7064: $2d
    inc h                                         ; $7065: $24
    rla                                           ; $7066: $17
    and l                                         ; $7067: $a5
    or l                                          ; $7068: $b5
    ld c, h                                       ; $7069: $4c
    ld sp, hl                                     ; $706a: $f9
    ld [hl], c                                    ; $706b: $71
    and a                                         ; $706c: $a7
    adc $7e                                       ; $706d: $ce $7e
    ld [hl], e                                    ; $706f: $73
    dec [hl]                                      ; $7070: $35
    ld b, h                                       ; $7071: $44
    ld c, a                                       ; $7072: $4f
    bit 1, [hl]                                   ; $7073: $cb $4e
    cp a                                          ; $7075: $bf
    rst $38                                       ; $7076: $ff
    rst $08                                       ; $7077: $cf
    ld h, $67                                     ; $7078: $26 $67
    inc bc                                        ; $707a: $03
    rla                                           ; $707b: $17
    and c                                         ; $707c: $a1
    ld b, a                                       ; $707d: $47
    ld a, [hl]                                    ; $707e: $7e
    add h                                         ; $707f: $84
    nop                                           ; $7080: $00
    ldh [$3a], a                                  ; $7081: $e0 $3a
    ld [hl], d                                    ; $7083: $72
    adc b                                         ; $7084: $88
    ld b, a                                       ; $7085: $47
    sbc a                                         ; $7086: $9f
    dec c                                         ; $7087: $0d
    rst $28                                       ; $7088: $ef
    ret z                                         ; $7089: $c8

    ld hl, $7d1e                                  ; $708a: $21 $1e $7d
    ld [hl], $bc                                  ; $708d: $36 $bc
    inc hl                                        ; $708f: $23
    add a                                         ; $7090: $87
    ld a, b                                       ; $7091: $78
    inc [hl]                                      ; $7092: $34
    ei                                            ; $7093: $fb
    sbc l                                         ; $7094: $9d
    rst $00                                       ; $7095: $c7

jr_04f_7096:
    ld [hl], d                                    ; $7096: $72
    db $f4                                        ; $7097: $f4
    cp b                                          ; $7098: $b8
    dec hl                                        ; $7099: $2b
    or l                                          ; $709a: $b5
    call nz, Call_000_0221                        ; $709b: $c4 $21 $02
    ret nz                                        ; $709e: $c0

    ld h, e                                       ; $709f: $63
    ld a, [hl]                                    ; $70a0: $7e
    rst $38                                       ; $70a1: $ff
    ld c, a                                       ; $70a2: $4f
    rla                                           ; $70a3: $17
    xor c                                         ; $70a4: $a9
    reti                                          ; $70a5: $d9


    and b                                         ; $70a6: $a0
    ld h, a                                       ; $70a7: $67
    inc bc                                        ; $70a8: $03
    rla                                           ; $70a9: $17
    and c                                         ; $70aa: $a1
    ld b, a                                       ; $70ab: $47
    ld h, [hl]                                    ; $70ac: $66
    adc a                                         ; $70ad: $8f
    nop                                           ; $70ae: $00
    rst $20                                       ; $70af: $e7
    pop hl                                        ; $70b0: $e1
    ld a, e                                       ; $70b1: $7b
    ld c, $c3                                     ; $70b2: $0e $c3
    jp nc, Jump_04f_7b87                          ; $70b4: $d2 $87 $7b

    rst $00                                       ; $70b7: $c7
    jp z, Jump_000_2a7d                           ; $70b8: $ca $7d $2a

    halt                                          ; $70bb: $76
    ret z                                         ; $70bc: $c8

    jp z, $5e7d                                   ; $70bd: $ca $7d $5e

    dec bc                                        ; $70c0: $0b
    ld l, d                                       ; $70c1: $6a
    inc e                                         ; $70c2: $1c
    ld c, $74                                     ; $70c3: $0e $74
    ret z                                         ; $70c5: $c8

    ld l, h                                       ; $70c6: $6c
    ld hl, sp-$72                                 ; $70c7: $f8 $8e
    ld e, [hl]                                    ; $70c9: $5e
    ld a, [$bec8]                                 ; $70ca: $fa $c8 $be
    jp nc, $ff57                                  ; $70cd: $d2 $57 $ff

    ei                                            ; $70d0: $fb
    jp z, $ea7d                                   ; $70d1: $ca $7d $ea

    ld b, h                                       ; $70d4: $44
    ld l, c                                       ; $70d5: $69
    dec l                                         ; $70d6: $2d
    rla                                           ; $70d7: $17
    adc c                                         ; $70d8: $89
    add [hl]                                      ; $70d9: $86
    inc bc                                        ; $70da: $03

Jump_04f_70db:
    ld [hl], e                                    ; $70db: $73
    ld b, a                                       ; $70dc: $47
    ld c, d                                       ; $70dd: $4a
    add $f1                                       ; $70de: $c6 $f1
    di                                            ; $70e0: $f3
    ei                                            ; $70e1: $fb
    ld a, a                                       ; $70e2: $7f
    cp d                                          ; $70e3: $ba
    ld c, b                                       ; $70e4: $48
    call $8506                                    ; $70e5: $cd $06 $85
    db $10                                        ; $70e8: $10
    ld a, [de]                                    ; $70e9: $1a
    ld a, [hl-]                                   ; $70ea: $3a
    cp c                                          ; $70eb: $b9
    db $d3                                        ; $70ec: $d3
    xor [hl]                                      ; $70ed: $ae
    ld a, e                                       ; $70ee: $7b
    push af                                       ; $70ef: $f5
    ld l, h                                       ; $70f0: $6c
    ld d, b                                       ; $70f1: $50
    adc b                                         ; $70f2: $88
    nop                                           ; $70f3: $00
    ldh [rNR43], a                                ; $70f4: $e0 $22
    db $f4                                        ; $70f6: $f4
    ret z                                         ; $70f7: $c8

    res 4, h                                      ; $70f8: $cb $a4
    halt                                          ; $70fa: $76
    push bc                                       ; $70fb: $c5
    ld h, e                                       ; $70fc: $63
    inc e                                         ; $70fd: $1c
    ccf                                           ; $70fe: $3f
    xor $d4                                       ; $70ff: $ee $d4
    reti                                          ; $7101: $d9


    ld c, a                                       ; $7102: $4f
    ld e, l                                       ; $7103: $5d
    and e                                         ; $7104: $a3
    ld d, a                                       ; $7105: $57
    add $4c                                       ; $7106: $c6 $4c
    ld a, $dc                                     ; $7108: $3e $dc
    db $e3                                        ; $710a: $e3
    ld d, d                                       ; $710b: $52
    di                                            ; $710c: $f3
    ld b, e                                       ; $710d: $43
    ld c, b                                       ; $710e: $48
    db $f4                                        ; $710f: $f4
    or h                                          ; $7110: $b4
    db $eb                                        ; $7111: $eb
    ld e, [hl]                                    ; $7112: $5e
    jp Jump_04f_723b                              ; $7113: $c3 $3b $72


    adc b                                         ; $7116: $88
    ld b, a                                       ; $7117: $47
    ld c, e                                       ; $7118: $4b
    or c                                          ; $7119: $b1
    ld b, a                                       ; $711a: $47
    rst $20                                       ; $711b: $e7
    ret                                           ; $711c: $c9


    or h                                          ; $711d: $b4
    ld [$2c85], a                                 ; $711e: $ea $85 $2c
    cp e                                          ; $7121: $bb
    jp hl                                         ; $7122: $e9


    or e                                          ; $7123: $b3
    cp c                                          ; $7124: $b9
    and c                                         ; $7125: $a1
    set 0, h                                      ; $7126: $cb $c4
    db $fc                                        ; $7128: $fc
    ld e, d                                       ; $7129: $5a
    cp c                                          ; $712a: $b9
    rst $28                                       ; $712b: $ef
    add a                                         ; $712c: $87
    rst $10                                       ; $712d: $d7
    add d                                         ; $712e: $82
    di                                            ; $712f: $f3
    add sp, -$27                                  ; $7130: $e8 $d9
    and b                                         ; $7132: $a0
    cp e                                          ; $7133: $bb
    ld [hl], b                                    ; $7134: $70
    adc a                                         ; $7135: $8f
    ld c, e                                       ; $7136: $4b
    dec l                                         ; $7137: $2d
    ld a, e                                       ; $7138: $7b
    adc c                                         ; $7139: $89
    ld d, h                                       ; $713a: $54
    ld c, a                                       ; $713b: $4f
    dec sp                                        ; $713c: $3b
    ld a, d                                       ; $713d: $7a
    ld h, $a5                                     ; $713e: $26 $a5
    dec l                                         ; $7140: $2d
    ld b, a                                       ; $7141: $47
    rst $08                                       ; $7142: $cf
    rst $28                                       ; $7143: $ef
    rst $38                                       ; $7144: $ff
    dec hl                                        ; $7145: $2b
    rst $30                                       ; $7146: $f7
    ld l, c                                       ; $7147: $69
    dec h                                         ; $7148: $25
    cp e                                          ; $7149: $bb
    ld [c], a                                     ; $714a: $e2
    ld sp, $9eaf                                  ; $714b: $31 $af $9e
    ldh a, [$e2]                                  ; $714e: $f0 $e2
    ld d, a                                       ; $7150: $57
    call nc, $a44a                                ; $7151: $d4 $4a $a4
    inc e                                         ; $7154: $1c
    ld [hl+], a                                   ; $7155: $22
    rrca                                          ; $7156: $0f
    sub h                                         ; $7157: $94
    sbc [hl]                                      ; $7158: $9e
    call $ef86                                    ; $7159: $cd $86 $ef
    ld e, a                                       ; $715c: $5f
    and l                                         ; $715d: $a5
    and d                                         ; $715e: $a2
    rla                                           ; $715f: $17
    or d                                          ; $7160: $b2
    ld e, a                                       ; $7161: $5f
    jr c, jr_04f_71a2                             ; $7162: $38 $3e

    db $ed                                        ; $7164: $ed
    ld l, b                                       ; $7165: $68
    adc b                                         ; $7166: $88
    nop                                           ; $7167: $00
    ret nz                                        ; $7168: $c0

    rst $38                                       ; $7169: $ff
    adc c                                         ; $716a: $89
    xor $8a                                       ; $716b: $ee $8a
    rst $00                                       ; $716d: $c7
    jp z, $ff7d                                   ; $716e: $ca $7d $ff

    ret z                                         ; $7171: $c8

    or l                                          ; $7172: $b5
    ld a, a                                       ; $7173: $7f
    dec a                                         ; $7174: $3d
    halt                                          ; $7175: $76
    ld b, l                                       ; $7176: $45
    ld c, d                                       ; $7177: $4a
    ld h, [hl]                                    ; $7178: $66
    sub e                                         ; $7179: $93
    add hl, hl                                    ; $717a: $29
    cp [hl]                                       ; $717b: $be
    ld hl, $4f02                                  ; $717c: $21 $02 $4f
    dec hl                                        ; $717f: $2b
    ld b, l                                       ; $7180: $45
    and d                                         ; $7181: $a2
    add a                                         ; $7182: $87
    sbc e                                         ; $7183: $9b
    rst $28                                       ; $7184: $ef
    pop de                                        ; $7185: $d1
    ld a, [hl+]                                   ; $7186: $2a
    ld l, [hl]                                    ; $7187: $6e
    or $e5                                        ; $7188: $f6 $e5
    ld b, e                                       ; $718a: $43
    ld b, l                                       ; $718b: $45
    xor a                                         ; $718c: $af
    call c, $f6f7                                 ; $718d: $dc $f7 $f6
    adc [hl]                                      ; $7190: $8e
    ld e, [hl]                                    ; $7191: $5e
    cp b                                          ; $7192: $b8
    rst $28                                       ; $7193: $ef
    or e                                          ; $7194: $b3
    ld d, d                                       ; $7195: $52
    call nz, $7d78                                ; $7196: $c4 $78 $7d
    adc b                                         ; $7199: $88
    nop                                           ; $719a: $00
    ret nz                                        ; $719b: $c0

    cp e                                          ; $719c: $bb
    db $fc                                        ; $719d: $fc
    and $31                                       ; $719e: $e6 $31
    sub e                                         ; $71a0: $93
    ld c, a                                       ; $71a1: $4f

jr_04f_71a2:
    ld a, [hl]                                    ; $71a2: $7e
    pop hl                                        ; $71a3: $e1
    ld hl, sp-$33                                 ; $71a4: $f8 $cd
    push de                                       ; $71a6: $d5
    ld [hl], b                                    ; $71a7: $70
    ret nz                                        ; $71a8: $c0

    ld c, h                                       ; $71a9: $4c
    dec sp                                        ; $71aa: $3b
    ld d, a                                       ; $71ab: $57
    ld e, l                                       ; $71ac: $5d
    ld h, d                                       ; $71ad: $62
    ld h, e                                       ; $71ae: $63
    ld d, a                                       ; $71af: $57
    ld a, [c]                                     ; $71b0: $f2
    cpl                                           ; $71b1: $2f
    dec h                                         ; $71b2: $25
    dec b                                         ; $71b3: $05
    rst $30                                       ; $71b4: $f7

jr_04f_71b5:
    ld [hl], b                                    ; $71b5: $70
    ld [$b0d1], a                                 ; $71b6: $ea $d1 $b0
    inc bc                                        ; $71b9: $03
    rla                                           ; $71ba: $17
    and c                                         ; $71bb: $a1
    ld b, a                                       ; $71bc: $47
    ld e, $77                                     ; $71bd: $1e $77
    ld [$e8d1], a                                 ; $71bf: $ea $d1 $e8
    ld e, l                                       ; $71c2: $5d
    pop hl                                        ; $71c3: $e1
    ld c, h                                       ; $71c4: $4c
    db $d3                                        ; $71c5: $d3
    ld a, [c]                                     ; $71c6: $f2
    ld l, e                                       ; $71c7: $6b
    inc b                                         ; $71c8: $04
    ld [hl+], a                                   ; $71c9: $22
    rrca                                          ; $71ca: $0f
    push de                                       ; $71cb: $d5
    or e                                          ; $71cc: $b3
    ret                                           ; $71cd: $c9


    ld [hl], d                                    ; $71ce: $72
    cp b                                          ; $71cf: $b8
    rrca                                          ; $71d0: $0f
    ld e, h                                       ; $71d1: $5c
    add h                                         ; $71d2: $84
    ld e, $f9                                     ; $71d3: $1e $f9
    pop de                                        ; $71d5: $d1
    ld e, $4a                                     ; $71d6: $1e $4a
    sub [hl]                                      ; $71d8: $96
    cp l                                          ; $71d9: $bd
    cp $e8                                        ; $71da: $fe $e8
    sub l                                         ; $71dc: $95
    ld a, [de]                                    ; $71dd: $1a
    inc sp                                        ; $71de: $33
    ld sp, hl                                     ; $71df: $f9
    db $e4                                        ; $71e0: $e4
    rla                                           ; $71e1: $17
    adc [hl]                                      ; $71e2: $8e
    ld d, a                                       ; $71e3: $57
    ld b, e                                       ; $71e4: $43
    inc b                                         ; $71e5: $04
    adc a                                         ; $71e6: $8f
    ld c, e                                       ; $71e7: $4b
    ld c, l                                       ; $71e8: $4d
    xor e                                         ; $71e9: $ab
    sbc $15                                       ; $71ea: $de $15
    adc a                                         ; $71ec: $8f
    push hl                                       ; $71ed: $e5
    ld [hl], b                                    ; $71ee: $70
    sbc a                                         ; $71ef: $9f
    ld h, [hl]                                    ; $71f0: $66
    call nz, Call_000_3850                        ; $71f1: $c4 $50 $38
    ret nc                                        ; $71f4: $d0

    ld hl, $9663                                  ; $71f5: $21 $63 $96
    sbc d                                         ; $71f8: $9a
    ld e, $be                                     ; $71f9: $1e $be
    ld [hl], d                                    ; $71fb: $72
    sbc a                                         ; $71fc: $9f
    ld d, [hl]                                    ; $71fd: $56
    ld [hl-], a                                   ; $71fe: $32
    ld [hl], l                                    ; $71ff: $75
    rst $38                                       ; $7200: $ff
    xor a                                         ; $7201: $af
    ld e, [hl]                                    ; $7202: $5e
    cp c                                          ; $7203: $b9
    ld c, a                                       ; $7204: $4f
    sbc l                                         ; $7205: $9d
    jr z, jr_04f_71b5                             ; $7206: $28 $ad

    push hl                                       ; $7208: $e5
    ld [hl+], a                                   ; $7209: $22
    pop de                                        ; $720a: $d1
    ld c, e                                       ; $720b: $4b
    rla                                           ; $720c: $17
    ld sp, $9f74                                  ; $720d: $31 $74 $9f
    rst $08                                       ; $7210: $cf
    ld e, [hl]                                    ; $7211: $5e
    or e                                          ; $7212: $b3
    and a                                         ; $7213: $a7
    xor $6a                                       ; $7214: $ee $6a
    adc b                                         ; $7216: $88
    nop                                           ; $7217: $00
    adc a                                         ; $7218: $8f
    ld c, e                                       ; $7219: $4b
    ld c, l                                       ; $721a: $4d
    xor e                                         ; $721b: $ab
    sbc $15                                       ; $721c: $de $15
    adc a                                         ; $721e: $8f
    push hl                                       ; $721f: $e5
    ld [hl], b                                    ; $7220: $70
    sbc a                                         ; $7221: $9f
    ld h, [hl]                                    ; $7222: $66
    call nz, $8850                                ; $7223: $c4 $50 $88
    nop                                           ; $7226: $00
    ldh [rNR43], a                                ; $7227: $e0 $22
    db $f4                                        ; $7229: $f4
    ret z                                         ; $722a: $c8

    db $ec                                        ; $722b: $ec
    rst $30                                       ; $722c: $f7
    ld d, b                                       ; $722d: $50
    sub d                                         ; $722e: $92
    sub a                                         ; $722f: $97
    ld c, l                                       ; $7230: $4d
    ei                                            ; $7231: $fb
    ld d, h                                       ; $7232: $54
    db $f4                                        ; $7233: $f4
    ld [hl-], a                                   ; $7234: $32
    ld a, [hl]                                    ; $7235: $7e
    ld [hl+], a                                   ; $7236: $22
    ld hl, $fcb3                                  ; $7237: $21 $b3 $fc
    cp a                                          ; $723a: $bf

Jump_04f_723b:
    jp z, $2cd7                                   ; $723b: $ca $d7 $2c

    ld [c], a                                     ; $723e: $e2
    ld bc, $3a07                                  ; $723f: $01 $07 $3a
    ld h, h                                       ; $7242: $64
    call z, $d352                                 ; $7243: $cc $52 $d3
    xor d                                         ; $7246: $aa
    ld [hl], a                                    ; $7247: $77
    push bc                                       ; $7248: $c5
    ld h, e                                       ; $7249: $63
    add hl, sp                                    ; $724a: $39
    call c, Call_000_19a7                         ; $724b: $dc $a7 $19
    ld sp, $3874                                  ; $724e: $31 $74 $38
    cp a                                          ; $7251: $bf
    ld a, h                                       ; $7252: $7c
    or e                                          ; $7253: $b3
    dec de                                        ; $7254: $1b
    add hl, bc                                    ; $7255: $09
    adc b                                         ; $7256: $88
    nop                                           ; $7257: $00
    adc a                                         ; $7258: $8f
    ld c, e                                       ; $7259: $4b
    ld c, l                                       ; $725a: $4d
    xor e                                         ; $725b: $ab
    sbc $15                                       ; $725c: $de $15
    adc a                                         ; $725e: $8f
    push hl                                       ; $725f: $e5
    ld [hl], b                                    ; $7260: $70
    sbc a                                         ; $7261: $9f
    ld h, [hl]                                    ; $7262: $66
    call nz, $c5d0                                ; $7263: $c4 $d0 $c5
    rst $38                                       ; $7266: $ff
    pop de                                        ; $7267: $d1
    or e                                          ; $7268: $b3
    rst $10                                       ; $7269: $d7
    ld a, l                                       ; $726a: $7d
    ld a, b                                       ; $726b: $78
    sub c                                         ; $726c: $91
    ld [hl], b                                    ; $726d: $70
    cp b                                          ; $726e: $b8
    rst $00                                       ; $726f: $c7
    and l                                         ; $7270: $a5
    and [hl]                                      ; $7271: $a6
    add hl, de                                    ; $7272: $19
    inc e                                         ; $7273: $1c
    xor a                                         ; $7274: $af
    cp h                                          ; $7275: $bc
    ld [hl], d                                    ; $7276: $72
    sbc a                                         ; $7277: $9f
    dec c                                         ; $7278: $0d
    rst $18                                       ; $7279: $df
    dec d                                         ; $727a: $15
    adc a                                         ; $727b: $8f
    jp hl                                         ; $727c: $e9


    push de                                       ; $727d: $d5
    inc de                                        ; $727e: $13
    ld e, [hl]                                    ; $727f: $5e
    add hl, de                                    ; $7280: $19
    sbc a                                         ; $7281: $9f
    ld [hl-], a                                   ; $7282: $32
    xor $2b                                       ; $7283: $ee $2b
    rst $30                                       ; $7285: $f7
    dec e                                         ; $7286: $1d
    ld e, [hl]                                    ; $7287: $5e
    cp e                                          ; $7288: $bb
    or e                                          ; $7289: $b3
    pop hl                                        ; $728a: $e1
    db $10                                        ; $728b: $10
    ld bc, $4b8f                                  ; $728c: $01 $8f $4b
    dec l                                         ; $728f: $2d
    ld de, $65db                                  ; $7290: $11 $db $65
    ld h, e                                       ; $7293: $63
    ld a, d                                       ; $7294: $7a
    reti                                          ; $7295: $d9


    reti                                          ; $7296: $d9


    ldh a, [$e9]                                  ; $7297: $f0 $e9
    push de                                       ; $7299: $d5
    db $e3                                        ; $729a: $e3
    ld c, [hl]                                    ; $729b: $4e
    dec a                                         ; $729c: $3d
    cp h                                          ; $729d: $bc
    ld c, b                                       ; $729e: $48
    ld hl, sp-$4c                                 ; $729f: $f8 $b4
    sub d                                         ; $72a1: $92
    ld l, c                                       ; $72a2: $69
    ld h, l                                       ; $72a3: $65
    inc bc                                        ; $72a4: $03
    ld [hl+], a                                   ; $72a5: $22
    ld c, a                                       ; $72a6: $4f
    rst $28                                       ; $72a7: $ef
    ld [hl-], a                                   ; $72a8: $32
    xor a                                         ; $72a9: $af
    and [hl]                                      ; $72aa: $a6
    add hl, de                                    ; $72ab: $19
    ld sp, $5974                                  ; $72ac: $31 $74 $59
    ccf                                           ; $72af: $3f
    db $f4                                        ; $72b0: $f4
    sbc d                                         ; $72b1: $9a
    ld a, [bc]                                    ; $72b2: $0a
    ld sp, $3674                                  ; $72b3: $31 $74 $36
    ld h, h                                       ; $72b6: $64
    sbc a                                         ; $72b7: $9f
    rst $08                                       ; $72b8: $cf
    ld e, [hl]                                    ; $72b9: $5e
    or e                                          ; $72ba: $b3
    and a                                         ; $72bb: $a7
    xor $90                                       ; $72bc: $ee $90

Call_04f_72be:
    pop de                                        ; $72be: $d1
    db $eb                                        ; $72bf: $eb
    cp [hl]                                       ; $72c0: $be
    and b                                         ; $72c1: $a0
    add $47                                       ; $72c2: $c6 $47
    ld a, [hl]                                    ; $72c4: $7e
    push hl                                       ; $72c5: $e5
    call c, $a509                                 ; $72c6: $dc $09 $a5
    pop hl                                        ; $72c9: $e1
    or e                                          ; $72ca: $b3
    ld b, a                                       ; $72cb: $47
    rst $28                                       ; $72cc: $ef
    rlca                                          ; $72cd: $07
    pop af                                        ; $72ce: $f1
    ld l, e                                       ; $72cf: $6b
    inc h                                         ; $72d0: $24
    ld e, d                                       ; $72d1: $5a
    ld l, d                                       ; $72d2: $6a
    ld [hl], a                                    ; $72d3: $77
    sbc h                                         ; $72d4: $9c
    ld l, c                                       ; $72d5: $69
    pop af                                        ; $72d6: $f1
    ld l, e                                       ; $72d7: $6b
    ld l, e                                       ; $72d8: $6b

jr_04f_72d9:
    sbc l                                         ; $72d9: $9d
    ld c, b                                       ; $72da: $48
    ld h, $7d                                     ; $72db: $26 $7d
    add hl, sp                                    ; $72dd: $39
    sbc a                                         ; $72de: $9f
    add $ff                                       ; $72df: $c6 $ff
    sbc a                                         ; $72e1: $9f
    ld hl, $8f02                                  ; $72e2: $21 $02 $8f
    ld c, e                                       ; $72e5: $4b
    dec l                                         ; $72e6: $2d
    di                                            ; $72e7: $f3
    ld l, d                                       ; $72e8: $6a
    sbc d                                         ; $72e9: $9a
    ld de, $4743                                  ; $72ea: $11 $43 $47
    inc c                                         ; $72ed: $0c
    and l                                         ; $72ee: $a5
    dec [hl]                                      ; $72ef: $35
    adc c                                         ; $72f0: $89
    ld e, $d7                                     ; $72f1: $1e $d7
    cp h                                          ; $72f3: $bc
    call z, Call_000_2c86                         ; $72f4: $cc $86 $2c
    inc sp                                        ; $72f7: $33
    rrca                                          ; $72f8: $0f
    rst $30                                       ; $72f9: $f7
    sbc b                                         ; $72fa: $98
    adc $cb                                       ; $72fb: $ce $cb
    dec d                                         ; $72fd: $15
    dec d                                         ; $72fe: $15
    ld [hl], d                                    ; $72ff: $72
    ld [hl], $1a                                  ; $7300: $36 $1a
    ld [hl-], a                                   ; $7302: $32
    xor l                                         ; $7303: $ad
    ld h, h                                       ; $7304: $64
    jp hl                                         ; $7305: $e9


    ld [$f15d], a                                 ; $7306: $ea $5d $f1
    jr jr_04f_72d9                                ; $7309: $18 $ce

    ld c, a                                       ; $730b: $4f
    ld a, b                                       ; $730c: $78
    ld h, l                                       ; $730d: $65
    call nz, $28af                                ; $730e: $c4 $af $28
    adc b                                         ; $7311: $88
    nop                                           ; $7312: $00
    rst $20                                       ; $7313: $e7
    ld b, a                                       ; $7314: $47
    adc a                                         ; $7315: $8f
    cp e                                          ; $7316: $bb
    add hl, hl                                    ; $7317: $29
    ld [hl-], a                                   ; $7318: $32
    ld h, [hl]                                    ; $7319: $66
    xor c                                         ; $731a: $a9
    reti                                          ; $731b: $d9


    xor e                                         ; $731c: $ab
    ret c                                         ; $731d: $d8

    rst $28                                       ; $731e: $ef
    inc a                                         ; $731f: $3c
    reti                                          ; $7320: $d9


    pop de                                        ; $7321: $d1
    db $e3                                        ; $7322: $e3
    sbc d                                         ; $7323: $9a
    sub a                                         ; $7324: $97
    ld bc, $166f                                  ; $7325: $01 $6f $16
    rst $00                                       ; $7328: $c7
    ld e, l                                       ; $7329: $5d
    or c                                          ; $732a: $b1
    and [hl]                                      ; $732b: $a6
    ld hl, $9984                                  ; $732c: $21 $84 $99
    sbc a                                         ; $732f: $9f
    push hl                                       ; $7330: $e5
    and a                                         ; $7331: $a7
    ld hl, sp-$62                                 ; $7332: $f8 $9e
    ld a, [hl]                                    ; $7334: $7e
    ld [hl], a                                    ; $7335: $77
    push af                                       ; $7336: $f5
    ld b, e                                       ; $7337: $43
    call $ffef                                    ; $7338: $cd $ef $ff
    jp Jump_04f_70db                              ; $733b: $c3 $db $70


    sub c                                         ; $733e: $91
    or e                                          ; $733f: $b3
    jp hl                                         ; $7340: $e9


    add c                                         ; $7341: $81
    ld c, [hl]                                    ; $7342: $4e
    ld bc, $5237                                  ; $7343: $01 $37 $52
    xor d                                         ; $7346: $aa
    cp $87                                        ; $7347: $fe $87
    ld [$dc80], sp                                ; $7349: $08 $80 $dc
    and a                                         ; $734c: $a7
    ld hl, sp+$5d                                 ; $734d: $f8 $5d
    reti                                          ; $734f: $d9


    dec e                                         ; $7350: $1d
    db $ed                                        ; $7351: $ed
    ld bc, $3fbb                                  ; $7352: $01 $bb $3f
    and l                                         ; $7355: $a5
    push hl                                       ; $7356: $e5
    db $fd                                        ; $7357: $fd
    ld d, d                                       ; $7358: $52
    pop de                                        ; $7359: $d1
    sbc l                                         ; $735a: $9d
    ret nc                                        ; $735b: $d0

    dec e                                         ; $735c: $1d
    cp l                                          ; $735d: $bd
    ld [hl], b                                    ; $735e: $70
    ld e, a                                       ; $735f: $5f
    db $fd                                        ; $7360: $fd
    xor a                                         ; $7361: $af
    ld d, a                                       ; $7362: $57
    rst $38                                       ; $7363: $ff
    xor e                                         ; $7364: $ab
    ld a, h                                       ; $7365: $7c
    jp hl                                         ; $7366: $e9


    ld [hl], $ee                                  ; $7367: $36 $ee
    ld h, a                                       ; $7369: $67
    ld a, e                                       ; $736a: $7b
    xor b                                         ; $736b: $a8
    ld l, [hl]                                    ; $736c: $6e
    ld d, $44                                     ; $736d: $16 $44
    and b                                         ; $736f: $a0
    ld b, e                                       ; $7370: $43
    add [hl]                                      ; $7371: $86
    or a                                          ; $7372: $b7
    pop hl                                        ; $7373: $e1
    ld [hl+], a                                   ; $7374: $22
    ld h, a                                       ; $7375: $67
    db $d3                                        ; $7376: $d3
    inc bc                                        ; $7377: $03
    sbc l                                         ; $7378: $9d
    ld [bc], a                                    ; $7379: $02
    ld l, [hl]                                    ; $737a: $6e
    and h                                         ; $737b: $a4
    ld d, h                                       ; $737c: $54
    db $fd                                        ; $737d: $fd
    rrca                                          ; $737e: $0f
    ld hl, $2044                                  ; $737f: $21 $44 $20
    ld b, h                                       ; $7382: $44
    push de                                       ; $7383: $d5
    sub d                                         ; $7384: $92
    adc $07                                       ; $7385: $ce $07
    pop af                                        ; $7387: $f1
    ld l, b                                       ; $7388: $68
    or $03                                        ; $7389: $f6 $03
    jp z, Jump_04f_7479                           ; $738b: $ca $79 $74

    ld [hl], $74                                  ; $738e: $36 $74
    ld [hl], $7c                                  ; $7390: $36 $7c
    ld b, a                                       ; $7392: $47
    adc a                                         ; $7393: $8f
    sbc c                                         ; $7394: $99
    db $fc                                        ; $7395: $fc
    reti                                          ; $7396: $d9


    xor [hl]                                      ; $7397: $ae
    ld e, $b3                                     ; $7398: $1e $b3
    call nc, $d5d2                                ; $739a: $d4 $d2 $d5
    or l                                          ; $739d: $b5
    jp nc, Jump_000_3217                          ; $739e: $d2 $17 $32

    call c, $a21c                                 ; $73a1: $dc $1c $a2

Call_04f_73a4:
    add $35                                       ; $73a4: $c6 $35
    cpl                                           ; $73a6: $2f
    inc bc                                        ; $73a7: $03
    sbc $2c                                       ; $73a8: $de $2c
    adc [hl]                                      ; $73aa: $8e
    cp e                                          ; $73ab: $bb
    ld h, d                                       ; $73ac: $62
    ld c, l                                       ; $73ad: $4d
    jp $bc81                                      ; $73ae: $c3 $81 $bc


    cp a                                          ; $73b1: $bf
    halt                                          ; $73b2: $76
    push af                                       ; $73b3: $f5
    ld b, e                                       ; $73b4: $43
    ld c, l                                       ; $73b5: $4d
    ld [de], a                                    ; $73b6: $12
    or $08                                        ; $73b7: $f6 $08
    ld h, b                                       ; $73b9: $60
    ld d, e                                       ; $73ba: $53
    jp c, $fe34                                   ; $73bb: $da $34 $fe

    rst $38                                       ; $73be: $ff
    reti                                          ; $73bf: $d9


    xor e                                         ; $73c0: $ab
    sub [hl]                                      ; $73c1: $96
    ld [hl], $ed                                  ; $73c2: $36 $ed
    dec [hl]                                      ; $73c4: $35
    xor [hl]                                      ; $73c5: $ae
    ld a, c                                       ; $73c6: $79
    ld e, c                                       ; $73c7: $59
    or $e3                                        ; $73c8: $f6 $e3
    rst $38                                       ; $73ca: $ff
    sub b                                         ; $73cb: $90
    ld h, l                                       ; $73cc: $65
    ld b, e                                       ; $73cd: $43
    ld h, a                                       ; $73ce: $67
    sub e                                         ; $73cf: $93
    ld e, l                                       ; $73d0: $5d
    pop af                                        ; $73d1: $f1
    sbc b                                         ; $73d2: $98
    ld d, [hl]                                    ; $73d3: $56
    dec a                                         ; $73d4: $3d
    ld a, [de]                                    ; $73d5: $1a
    halt                                          ; $73d6: $76
    push hl                                       ; $73d7: $e5
    ld a, $75                                     ; $73d8: $3e $75
    ld [$8f62], a                                 ; $73da: $ea $62 $8f
    nop                                           ; $73dd: $00
    rrca                                          ; $73de: $0f
    rst $10                                       ; $73df: $d7
    cp l                                          ; $73e0: $bd
    ld l, h                                       ; $73e1: $6c
    call z, $b326                                 ; $73e2: $cc $26 $b3
    ld d, a                                       ; $73e5: $57
    ld l, d                                       ; $73e6: $6a
    ld a, b                                       ; $73e7: $78
    ld b, a                                       ; $73e8: $47
    ld c, $f1                                     ; $73e9: $0e $f1
    add sp, -$4d                                  ; $73eb: $e8 $b3
    dec a                                         ; $73ed: $3d
    ld d, h                                       ; $73ee: $54
    scf                                           ; $73ef: $37
    db $eb                                        ; $73f0: $eb
    ld de, $6002                                  ; $73f1: $11 $02 $60
    add d                                         ; $73f4: $82
    add hl, bc                                    ; $73f5: $09
    ld de, $7860                                  ; $73f6: $11 $60 $78
    ld h, [hl]                                    ; $73f9: $66
    sbc l                                         ; $73fa: $9d
    adc l                                         ; $73fb: $8d
    dec sp                                        ; $73fc: $3b
    ld [hl], l                                    ; $73fd: $75
    ld a, $91                                     ; $73fe: $3e $91
    ld e, l                                       ; $7400: $5d
    dec d                                         ; $7401: $15
    ld [bc], a                                    ; $7402: $02
    rst $30                                       ; $7403: $f7
    cp b                                          ; $7404: $b8
    call nc, Call_000_10fc                        ; $7405: $d4 $fc $10
    ld [de], a                                    ; $7408: $12
    cp l                                          ; $7409: $bd
    dec hl                                        ; $740a: $2b
    ld e, $3b                                     ; $740b: $1e $3b
    pop hl                                        ; $740d: $e1
    cp b                                          ; $740e: $b8
    call nc, $95e8                                ; $740f: $d4 $e8 $95
    ld a, [de]                                    ; $7412: $1a
    ld [hl], a                                    ; $7413: $77
    ld [$643e], a                                 ; $7414: $ea $3e $64
    ld [hl], $19                                  ; $7417: $36 $19
    add hl, hl                                    ; $7419: $29
    reti                                          ; $741a: $d9


    add hl, bc                                    ; $741b: $09
    rst $00                                       ; $741c: $c7
    and l                                         ; $741d: $a5
    ld h, [hl]                                    ; $741e: $66
    xor a                                         ; $741f: $af
    inc d                                         ; $7420: $14
    ld b, h                                       ; $7421: $44
    jr @-$72                                      ; $7422: $18 $8c

    or b                                          ; $7424: $b0
    rst $18                                       ; $7425: $df
    db $e3                                        ; $7426: $e3
    ld d, d                                       ; $7427: $52
    db $d3                                        ; $7428: $d3
    xor d                                         ; $7429: $aa
    rst $00                                       ; $742a: $c7
    pop af                                        ; $742b: $f1
    xor $f3                                       ; $742c: $ee $f3
    ei                                            ; $742e: $fb
    ld a, a                                       ; $742f: $7f
    cp d                                          ; $7430: $ba
    ld c, b                                       ; $7431: $48
    adc l                                         ; $7432: $8d
    ld e, [hl]                                    ; $7433: $5e
    xor c                                         ; $7434: $a9
    pop hl                                        ; $7435: $e1
    dec e                                         ; $7436: $1d
    add hl, sp                                    ; $7437: $39
    call nz, $d9a3                                ; $7438: $c4 $a3 $d9
    inc hl                                        ; $743b: $23
    jr jr_04f_744b                                ; $743c: $18 $0d

jr_04f_743e:
    adc [hl]                                      ; $743e: $8e
    add a                                         ; $743f: $87
    or b                                          ; $7440: $b0
    rst $18                                       ; $7441: $df
    add hl, sp                                    ; $7442: $39

Call_04f_7443:
    cp a                                          ; $7443: $bf
    inc de                                        ; $7444: $13
    adc [hl]                                      ; $7445: $8e
    ld c, e                                       ; $7446: $4b
    push af                                       ; $7447: $f5
    db $f4                                        ; $7448: $f4
    dec sp                                        ; $7449: $3b
    dec de                                        ; $744a: $1b

jr_04f_744b:
    inc d                                         ; $744b: $14
    ld [hl+], a                                   ; $744c: $22
    jr jr_04f_743e                                ; $744d: $18 $ef

    rst $38                                       ; $744f: $ff
    ld a, e                                       ; $7450: $7b
    xor b                                         ; $7451: $a8
    ld l, [hl]                                    ; $7452: $6e
    sub $d9                                       ; $7453: $d6 $d9
    cp b                                          ; $7455: $b8
    and $65                                       ; $7456: $e6 $65
    rrca                                          ; $7458: $0f
    and l                                         ; $7459: $a5
    ld a, [$885a]                                 ; $745a: $fa $5a $88
    nop                                           ; $745d: $00
    ld b, b                                       ; $745e: $40
    ld h, l                                       ; $745f: $65
    sbc $07                                       ; $7460: $de $07
    rst $30                                       ; $7462: $f7
    ld c, a                                       ; $7463: $4f
    ld c, h                                       ; $7464: $4c
    ld h, a                                       ; $7465: $67
    cp a                                          ; $7466: $bf
    di                                            ; $7467: $f3
    ldh a, [$e5]                                  ; $7468: $f0 $e5
    add sp, $25                                   ; $746a: $e8 $25
    cp [hl]                                       ; $746c: $be
    ld l, h                                       ; $746d: $6c
    add sp, $0c                                   ; $746e: $e8 $0c
    sbc l                                         ; $7470: $9d
    ld d, [hl]                                    ; $7471: $56
    ld [hl-], a                                   ; $7472: $32
    xor l                                         ; $7473: $ad
    ld a, d                                       ; $7474: $7a
    ld a, [hl]                                    ; $7475: $7e
    ld a, h                                       ; $7476: $7c
    and [hl]                                      ; $7477: $a6
    rst $08                                       ; $7478: $cf

Jump_04f_7479:
    add [hl]                                      ; $7479: $86
    inc l                                         ; $747a: $2c
    inc sp                                        ; $747b: $33
    adc a                                         ; $747c: $8f
    xor a                                         ; $747d: $af
    ld b, e                                       ; $747e: $43
    inc b                                         ; $747f: $04
    rst $20                                       ; $7480: $e7
    ld hl, $bcfb                                  ; $7481: $21 $fb $bc
    ld b, a                                       ; $7484: $47
    rst $28                                       ; $7485: $ef
    ld e, a                                       ; $7486: $5f
    adc a                                         ; $7487: $8f
    db $fd                                        ; $7488: $fd
    ld c, e                                       ; $7489: $4b
    ld d, $b2                                     ; $748a: $16 $b2
    ld b, h                                       ; $748c: $44
    xor c                                         ; $748d: $a9
    ld e, a                                       ; $748e: $5f
    db $10                                        ; $748f: $10
    ld bc, $6acf                                  ; $7490: $01 $cf $6a
    sub e                                         ; $7493: $93
    ld h, b                                       ; $7494: $60
    sbc [hl]                                      ; $7495: $9e
    dec l                                         ; $7496: $2d
    ld h, h                                       ; $7497: $64
    ld a, [hl]                                    ; $7498: $7e
    rst $38                                       ; $7499: $ff
    ld e, a                                       ; $749a: $5f
    sbc a                                         ; $749b: $9f
    ld l, h                                       ; $749c: $6c
    cp d                                          ; $749d: $ba
    inc de                                        ; $749e: $13
    sbc c                                         ; $749f: $99

jr_04f_74a0:
    rst $30                                       ; $74a0: $f7
    adc c                                         ; $74a1: $89
    ld e, c                                       ; $74a2: $59
    ld [hl], b                                    ; $74a3: $70
    adc a                                         ; $74a4: $8f
    ld c, e                                       ; $74a5: $4b
    ld c, l                                       ; $74a6: $4d
    dec hl                                        ; $74a7: $2b
    xor a                                         ; $74a8: $af
    ld e, [hl]                                    ; $74a9: $5e
    sbc a                                         ; $74aa: $9f
    ld l, h                                       ; $74ab: $6c
    cp d                                          ; $74ac: $ba
    inc de                                        ; $74ad: $13
    ld [hl], c                                    ; $74ae: $71
    adc b                                         ; $74af: $88
    nop                                           ; $74b0: $00
    rrca                                          ; $74b1: $0f
    ld b, a                                       ; $74b2: $47
    rst $28                                       ; $74b3: $ef
    add sp, -$7b                                  ; $74b4: $e8 $85
    ei                                            ; $74b6: $fb
    adc b                                         ; $74b7: $88
    ld l, c                                       ; $74b8: $69
    add a                                         ; $74b9: $87
    ld [$9ac0], sp                                ; $74ba: $08 $c0 $9a
    sub a                                         ; $74bd: $97
    ld [hl], c                                    ; $74be: $71
    push de                                       ; $74bf: $d5
    jp hl                                         ; $74c0: $e9


    ld [hl], $bd                                  ; $74c1: $36 $bd
    and a                                         ; $74c3: $a7
    pop de                                        ; $74c4: $d1
    ld h, d                                       ; $74c5: $62
    ld h, h                                       ; $74c6: $64
    ld h, $a5                                     ; $74c7: $26 $a5
    adc l                                         ; $74c9: $8d
    sbc d                                         ; $74ca: $9a
    db $ec                                        ; $74cb: $ec
    pop de                                        ; $74cc: $d1
    inc bc                                        ; $74cd: $03
    rla                                           ; $74ce: $17
    sbc [hl]                                      ; $74cf: $9e
    ret z                                         ; $74d0: $c8

    dec l                                         ; $74d1: $2d
    adc b                                         ; $74d2: $88
    nop                                           ; $74d3: $00
    ld b, b                                       ; $74d4: $40
    db $dd                                        ; $74d5: $dd
    rst $30                                       ; $74d6: $f7
    sub $ab                                       ; $74d7: $d6 $ab
    cpl                                           ; $74d9: $2f
    db $e3                                        ; $74da: $e3
    ld hl, $a0a9                                  ; $74db: $21 $a9 $a0
    inc l                                         ; $74de: $2c

Call_04f_74df:
    ld [hl], c                                    ; $74df: $71
    cp b                                          ; $74e0: $b8
    di                                            ; $74e1: $f3
    ldh a, [$e9]                                  ; $74e2: $f0 $e9
    push de                                       ; $74e4: $d5
    ld d, e                                       ; $74e5: $53
    ld hl, $a7d1                                  ; $74e6: $21 $d1 $a7
    db $ec                                        ; $74e9: $ec
    dec hl                                        ; $74ea: $2b
    ld a, l                                       ; $74eb: $7d

jr_04f_74ec:
    ld [hl], $28                                  ; $74ec: $36 $28
    ld b, h                                       ; $74ee: $44
    jr jr_04f_74a0                                ; $74ef: $18 $af

    ld a, e                                       ; $74f1: $7b
    sbc l                                         ; $74f2: $9d
    dec l                                         ; $74f3: $2d
    ld h, h                                       ; $74f4: $64
    reti                                          ; $74f5: $d9


    ld c, l                                       ; $74f6: $4d
    xor a                                         ; $74f7: $af
    ld [hl-], a                                   ; $74f8: $32
    add hl, de                                    ; $74f9: $19
    db $10                                        ; $74fa: $10
    call Call_04f_5f90                            ; $74fb: $cd $90 $5f
    ld d, [hl]                                    ; $74fe: $56
    or l                                          ; $74ff: $b5
    or c                                          ; $7500: $b1
    and [hl]                                      ; $7501: $a6
    pop hl                                        ; $7502: $e1
    ret nz                                        ; $7503: $c0

    pop af                                        ; $7504: $f1
    ei                                            ; $7505: $fb
    add l                                         ; $7506: $85
    db $e3                                        ; $7507: $e3
    ld hl, $cecb                                  ; $7508: $21 $cb $ce
    rst $30                                       ; $750b: $f7
    ld l, h                                       ; $750c: $6c
    ld hl, sp-$36                                 ; $750d: $f8 $ca
    ld a, l                                       ; $750f: $7d
    ld [hl], $64                                  ; $7510: $36 $64
    ld b, a                                       ; $7512: $47
    adc a                                         ; $7513: $8f
    ld l, e                                       ; $7514: $6b
    ld e, [hl]                                    ; $7515: $5e
    or $10                                        ; $7516: $f6 $10
    ld c, l                                       ; $7518: $4d
    xor a                                         ; $7519: $af
    sub c                                         ; $751a: $91
    add b                                         ; $751b: $80
    inc bc                                        ; $751c: $03
    sbc e                                         ; $751d: $9b
    jp nc, $9e76                                  ; $751e: $d2 $76 $9e

    ret nc                                        ; $7521: $d0

    db $f4                                        ; $7522: $f4
    rrca                                          ; $7523: $0f
    ld l, e                                       ; $7524: $6b
    ld a, [hl-]                                   ; $7525: $3a
    ld a, [c]                                     ; $7526: $f2
    adc b                                         ; $7527: $88
    ld l, c                                       ; $7528: $69
    ld e, a                                       ; $7529: $5f
    jp nc, $d1cb                                  ; $752a: $d2 $cb $d1

    scf                                           ; $752d: $37
    ld h, h                                       ; $752e: $64
    inc [hl]                                      ; $752f: $34
    db $ec                                        ; $7530: $ec
    jp nc, Jump_000_27d1                          ; $7531: $d2 $d1 $27

    ld l, d                                       ; $7534: $6a
    ld l, e                                       ; $7535: $6b
    jp c, $d8c1                                   ; $7536: $da $c1 $d8

    db $f4                                        ; $7539: $f4
    ld c, h                                       ; $753a: $4c
    ld c, d                                       ; $753b: $4a
    sbc e                                         ; $753c: $9b
    or a                                          ; $753d: $b7
    ld sp, hl                                     ; $753e: $f9
    sbc a                                         ; $753f: $9f
    ld d, h                                       ; $7540: $54
    rst $38                                       ; $7541: $ff
    ld [$abfd], a                                 ; $7542: $ea $fd $ab
    ld d, h                                       ; $7545: $54
    db $f4                                        ; $7546: $f4
    ld l, $7b                                     ; $7547: $2e $7b
    inc b                                         ; $7549: $04
    rst $20                                       ; $754a: $e7
    pop hl                                        ; $754b: $e1
    res 0, a                                      ; $754c: $cb $87
    jp z, $abd3                                   ; $754e: $ca $d3 $ab

    ld l, e                                       ; $7551: $6b
    pop hl                                        ; $7552: $e1
    cp [hl]                                       ; $7553: $be
    ld [hl], h                                    ; $7554: $74
    rst $10                                       ; $7555: $d7
    adc b                                         ; $7556: $88
    ld l, c                                       ; $7557: $69
    ld e, a                                       ; $7558: $5f
    cp c                                          ; $7559: $b9
    ld c, a                                       ; $755a: $4f
    dec hl                                        ; $755b: $2b
    adc b                                         ; $755c: $88
    nop                                           ; $755d: $00

Call_04f_755e:
    jr jr_04f_74ec                                ; $755e: $18 $8c

    sbc h                                         ; $7560: $9c
    db $ed                                        ; $7561: $ed
    or e                                          ; $7562: $b3
    ld [hl], d                                    ; $7563: $72
    sub [hl]                                      ; $7564: $96
    ld a, [de]                                    ; $7565: $1a
    adc $cf                                       ; $7566: $ce $cf
    add [hl]                                      ; $7568: $86
    ld c, a                                       ; $7569: $4f
    dec sp                                        ; $756a: $3b
    ld a, [$3dfd]                                 ; $756b: $fa $fd $3d
    adc a                                         ; $756e: $8f
    ld hl, $9b88                                  ; $756f: $21 $88 $9b
    ld e, $77                                     ; $7572: $1e $77
    ld [$183d], a                                 ; $7574: $ea $3d $18
    push bc                                       ; $7577: $c5
    xor b                                         ; $7578: $a8
    jp c, $dc33                                   ; $7579: $da $33 $dc

    db $d3                                        ; $757c: $d3
    ld b, e                                       ; $757d: $43
    ld b, [hl]                                    ; $757e: $46
    jp $cc0e                                      ; $757f: $c3 $0e $cc


    ld c, l                                       ; $7582: $4d
    sbc c                                         ; $7583: $99
    ld e, a                                       ; $7584: $5f
    ld a, c                                       ; $7585: $79
    ret nz                                        ; $7586: $c0

    ld a, [hl]                                    ; $7587: $7e
    pop de                                        ; $7588: $d1
    ld hl, sp+$7b                                 ; $7589: $f8 $7b
    ld a, c                                       ; $758b: $79
    sbc c                                         ; $758c: $99
    inc d                                         ; $758d: $14
    ld e, [hl]                                    ; $758e: $5e
    dec e                                         ; $758f: $1d
    or d                                          ; $7590: $b2
    jp nc, $1e77                                  ; $7591: $d2 $77 $1e

    ld a, e                                       ; $7594: $7b
    ld a, d                                       ; $7595: $7a
    ld [hl], e                                    ; $7596: $73
    db $e4                                        ; $7597: $e4
    dec a                                         ; $7598: $3d
    pop af                                        ; $7599: $f1
    db $10                                        ; $759a: $10
    ld hl, sp-$04                                 ; $759b: $f8 $fc
    sbc [hl]                                      ; $759d: $9e
    ldh a, [$b3]                                  ; $759e: $f0 $b3
    pop hl                                        ; $75a0: $e1
    dec sp                                        ; $75a1: $3b
    ld a, d                                       ; $75a2: $7a
    ld h, b                                       ; $75a3: $60
    ld l, [hl]                                    ; $75a4: $6e
    jp z, $cafc                                   ; $75a5: $ca $fc $ca

    inc bc                                        ; $75a8: $03
    or $8b                                        ; $75a9: $f6 $8b
    add $67                                       ; $75ab: $c6 $67
    adc a                                         ; $75ad: $8f
    nop                                           ; $75ae: $00
    ld h, b                                       ; $75af: $60
    ld d, e                                       ; $75b0: $53
    jp c, $63ce                                   ; $75b1: $da $ce $63

    ld c, a                                       ; $75b4: $4f
    ld l, a                                       ; $75b5: $6f
    adc [hl]                                      ; $75b6: $8e
    cp h                                          ; $75b7: $bc
    daa                                           ; $75b8: $27
    ld e, $02                                     ; $75b9: $1e $02
    ld hl, $e1b4                                  ; $75bb: $21 $b4 $e1
    inc hl                                        ; $75be: $23
    dec h                                         ; $75bf: $25
    sbc c                                         ; $75c0: $99
    call nz, $9e8e                                ; $75c1: $c4 $8e $9e
    dec c                                         ; $75c4: $0d
    sbc c                                         ; $75c5: $99
    sub [hl]                                      ; $75c6: $96
    adc b                                         ; $75c7: $88
    dec c                                         ; $75c8: $0d
    sbc c                                         ; $75c9: $99
    ld e, [hl]                                    ; $75ca: $5e
    call nz, $21ab                                ; $75cb: $c4 $ab $21
    ld [bc], a                                    ; $75ce: $02
    ld c, a                                       ; $75cf: $4f
    rst $28                                       ; $75d0: $ef
    jp nc, Jump_04f_6da6                          ; $75d1: $d2 $a6 $6d

    adc h                                         ; $75d4: $8c
    dec sp                                        ; $75d5: $3b
    ld [hl], l                                    ; $75d6: $75
    ld a, $91                                     ; $75d7: $3e $91
    sbc d                                         ; $75d9: $9a
    rst $10                                       ; $75da: $d7
    ld a, [hl-]                                   ; $75db: $3a
    ld l, h                                       ; $75dc: $6c
    dec c                                         ; $75dd: $0d
    rst $20                                       ; $75de: $e7
    ld b, a                                       ; $75df: $47
    and e                                         ; $75e0: $a3
    ld hl, $7284                                  ; $75e1: $21 $84 $72
    db $f4                                        ; $75e4: $f4
    db $f4                                        ; $75e5: $f4
    dec sp                                        ; $75e6: $3b
    xor l                                         ; $75e7: $ad
    ld a, d                                       ; $75e8: $7a
    daa                                           ; $75e9: $27
    inc e                                         ; $75ea: $1c
    sub a                                         ; $75eb: $97
    ld a, [c]                                     ; $75ec: $f2
    pop hl                                        ; $75ed: $e1
    dec e                                         ; $75ee: $1d
    add hl, sp                                    ; $75ef: $39
    call nz, $a5a3                                ; $75f0: $c4 $a3 $a5
    jr nz, jr_04f_75f7                            ; $75f3: $20 $02

    ret c                                         ; $75f5: $d8

    ld [hl], c                                    ; $75f6: $71

jr_04f_75f7:
    ld e, h                                       ; $75f7: $5c
    ld l, d                                       ; $75f8: $6a
    ld [hl], $64                                  ; $75f9: $36 $64
    or $e8                                        ; $75fb: $f6 $e8
    ld c, c                                       ; $75fd: $49
    ld [bc], a                                    ; $75fe: $02
    ld de, $e960                                  ; $75ff: $11 $60 $e9
    ld l, h                                       ; $7602: $6c
    ld hl, sp-$14                                 ; $7603: $f8 $ec
    pop de                                        ; $7605: $d1
    dec sp                                        ; $7606: $3b
    ld a, d                                       ; $7607: $7a
    ld a, d                                       ; $7608: $7a
    reti                                          ; $7609: $d9


    ld sp, $cd4b                                  ; $760a: $31 $4b $cd
    db $db                                        ; $760d: $db
    db $f4                                        ; $760e: $f4
    ld l, h                                       ; $760f: $6c
    ld hl, sp-$72                                 ; $7610: $f8 $8e
    ld a, $5b                                     ; $7612: $3e $5b
    and $77                                       ; $7614: $e6 $77
    db $f4                                        ; $7616: $f4
    ld l, h                                       ; $7617: $6c
    ret z                                         ; $7618: $c8

    db $f4                                        ; $7619: $f4
    ld l, b                                       ; $761a: $68
    ld a, [c]                                     ; $761b: $f2
    xor a                                         ; $761c: $af
    ld a, [c]                                     ; $761d: $f2
    push hl                                       ; $761e: $e5
    db $e3                                        ; $761f: $e3
    rst $38                                       ; $7620: $ff
    call z, $9f12                                 ; $7621: $cc $12 $9f
    ld c, c                                       ; $7624: $49
    ld l, c                                       ; $7625: $69
    db $d3                                        ; $7626: $d3
    and e                                         ; $7627: $a3
    ret                                           ; $7628: $c9


    cp a                                          ; $7629: $bf
    jp z, Jump_000_1fa7                           ; $762a: $ca $a7 $1f

    ld l, l                                       ; $762d: $6d
    add e                                         ; $762e: $83
    ld c, e                                       ; $762f: $4b
    cp $87                                        ; $7630: $fe $87
    ld [$cb4f], sp                                ; $7632: $08 $4f $cb
    xor $e8                                       ; $7635: $ee $e8
    reti                                          ; $7637: $d9


    ldh a, [rBGP]                                 ; $7638: $f0 $47
    ld [$e1e7], sp                                ; $763a: $08 $e7 $e1
    dec sp                                        ; $763d: $3b
    ld a, d                                       ; $763e: $7a
    ld hl, $9933                                  ; $763f: $21 $33 $99
    dec h                                         ; $7642: $25
    rst $38                                       ; $7643: $ff
    ld a, [hl+]                                   ; $7644: $2a
    dec l                                         ; $7645: $2d
    inc a                                         ; $7646: $3c
    db $d3                                        ; $7647: $d3
    ld [de], a                                    ; $7648: $12
    adc a                                         ; $7649: $8f
    rrca                                          ; $764a: $0f
    rst $30                                       ; $764b: $f7
    cp b                                          ; $764c: $b8
    call nc, Call_04f_5e8e                        ; $764d: $d4 $8e $5e
    ld a, $48                                     ; $7650: $3e $48
    db $f4                                        ; $7652: $f4
    ld [hl], b                                    ; $7653: $70
    ld a, [hl]                                    ; $7654: $7e
    push hl                                       ; $7655: $e5
    ld a, $1b                                     ; $7656: $3e $1b
    cp [hl]                                       ; $7658: $be
    and e                                         ; $7659: $a3
    ld h, a                                       ; $765a: $67
    jp $f2f7                                      ; $765b: $c3 $f7 $f2


    ldh a, [$36]                                  ; $765e: $f0 $36
    ld a, d                                       ; $7660: $7a
    call Call_04f_4086                            ; $7661: $cd $86 $40
    inc b                                         ; $7664: $04
    rst $20                                       ; $7665: $e7
    pop hl                                        ; $7666: $e1
    dec sp                                        ; $7667: $3b
    ld a, d                                       ; $7668: $7a
    ld [hl], $9c                                  ; $7669: $36 $9c
    db $fd                                        ; $766b: $fd
    jr nc, jr_04f_76cc                            ; $766c: $30 $5e

    rst $30                                       ; $766e: $f7
    sbc d                                         ; $766f: $9a
    ld b, h                                       ; $7670: $44
    or e                                          ; $7671: $b3
    ld b, a                                       ; $7672: $47
    adc a                                         ; $7673: $8f
    ld c, e                                       ; $7674: $4b
    db $ed                                        ; $7675: $ed
    add sp, -$67                                  ; $7676: $e8 $99
    call z, Call_04f_7f92                         ; $7678: $cc $92 $7f
    dec d                                         ; $767b: $15
    ei                                            ; $767c: $fb
    ld h, c                                       ; $767d: $61
    cp h                                          ; $767e: $bc
    xor $75                                       ; $767f: $ee $75
    ld [hl], $ed                                  ; $7681: $36 $ed
    add sp, -$03                                  ; $7683: $e8 $fd
    xor e                                         ; $7685: $ab
    ld d, h                                       ; $7686: $54
    db $f4                                        ; $7687: $f4
    ld b, d                                       ; $7688: $42
    or $0b                                        ; $7689: $f6 $0b
    rst $00                                       ; $768b: $c7
    ld hl, $e702                                  ; $768c: $21 $02 $e7
    ld d, a                                       ; $768f: $57
    add $55                                       ; $7690: $c6 $55
    rst $28                                       ; $7692: $ef
    rra                                           ; $7693: $1f
    ld d, h                                       ; $7694: $54
    jp z, Jump_04f_6cc6                           ; $7695: $ca $c6 $6c

    ret z                                         ; $7698: $c8

    or h                                          ; $7699: $b4

Jump_04f_769a:
    and e                                         ; $769a: $a3
    ld [hl], a                                    ; $769b: $77
    ld b, a                                       ; $769c: $47
    xor a                                         ; $769d: $af
    ei                                            ; $769e: $fb
    cp b                                          ; $769f: $b8
    ld d, e                                       ; $76a0: $53
    db $eb                                        ; $76a1: $eb
    push de                                       ; $76a2: $d5
    cp e                                          ; $76a3: $bb
    ld [hl+], a                                   ; $76a4: $22
    dec h                                         ; $76a5: $25
    db $d3                                        ; $76a6: $d3
    ld c, d                                       ; $76a7: $4a
    ld h, [hl]                                    ; $76a8: $66
    adc l                                         ; $76a9: $8d
    add d                                         ; $76aa: $82
    dec sp                                        ; $76ab: $3b
    rrca                                          ; $76ac: $0f
    rst $18                                       ; $76ad: $df
    pop de                                        ; $76ae: $d1
    or e                                          ; $76af: $b3
    and l                                         ; $76b0: $a5
    ld a, [c]                                     ; $76b1: $f2
    jp z, $bc7d                                   ; $76b2: $ca $7d $bc

    ld b, a                                       ; $76b5: $47
    rst $38                                       ; $76b6: $ff
    add e                                         ; $76b7: $83
    ld c, d                                       ; $76b8: $4a
    call $cc86                                    ; $76b9: $cd $86 $cc
    rst $28                                       ; $76bc: $ef
    rst $38                                       ; $76bd: $ff
    or e                                          ; $76be: $b3
    ld d, a                                       ; $76bf: $57
    pop bc                                        ; $76c0: $c1
    ld bc, $fd12                                  ; $76c1: $01 $12 $fd
    db $10                                        ; $76c4: $10
    dec sp                                        ; $76c5: $3b
    dec de                                        ; $76c6: $1b
    ld [hl-], a                                   ; $76c7: $32
    db $fd                                        ; $76c8: $fd
    ld hl, sp+$70                                 ; $76c9: $f8 $70
    ld b, b                                       ; $76cb: $40

jr_04f_76cc:
    ld h, l                                       ; $76cc: $65
    sub h                                         ; $76cd: $94
    sub l                                         ; $76ce: $95

Jump_04f_76cf:
    ld [hl+], a                                   ; $76cf: $22
    pop hl                                        ; $76d0: $e1
    ld d, e                                       ; $76d1: $53
    add $8e                                       ; $76d2: $c6 $8e
    sbc c                                         ; $76d4: $99
    db $fc                                        ; $76d5: $fc
    ld sp, hl                                     ; $76d6: $f9
    db $fd                                        ; $76d7: $fd
    rst $38                                       ; $76d8: $ff
    inc h                                         ; $76d9: $24
    sbc c                                         ; $76da: $99
    ld d, h                                       ; $76db: $54
    sbc [hl]                                      ; $76dc: $9e
    cp l                                          ; $76dd: $bd
    ld a, [bc]                                    ; $76de: $0a
    ld [hl+], a                                   ; $76df: $22
    adc a                                         ; $76e0: $8f
    ld c, e                                       ; $76e1: $4b
    dec l                                         ; $76e2: $2d
    sub e                                         ; $76e3: $93
    db $e4                                        ; $76e4: $e4
    rst $38                                       ; $76e5: $ff
    sbc b                                         ; $76e6: $98
    adc d                                         ; $76e7: $8a
    jp hl                                         ; $76e8: $e9


    ld h, l                                       ; $76e9: $65
    sub a                                         ; $76ea: $97
    dec c                                         ; $76eb: $0d
    sbc l                                         ; $76ec: $9d
    ld d, $3f                                     ; $76ed: $16 $3f
    ei                                            ; $76ef: $fb
    cp b                                          ; $76f0: $b8
    ld d, e                                       ; $76f1: $53
    cpl                                           ; $76f2: $2f
    ld h, h                                       ; $76f3: $64
    sbc c                                         ; $76f4: $99
    sub a                                         ; $76f5: $97
    ld l, c                                       ; $76f6: $69
    ld b, a                                       ; $76f7: $47
    or e                                          ; $76f8: $b3
    ld b, a                                       ; $76f9: $47
    and b                                         ; $76fa: $a0
    ld b, e                                       ; $76fb: $43
    jr nz, @-$7a                                  ; $76fc: $20 $84

    ld a, d                                       ; $76fe: $7a
    ret nc                                        ; $76ff: $d0

    xor c                                         ; $7700: $a9
    jp nc, $4367                                  ; $7701: $d2 $67 $43

    and $f7                                       ; $7704: $e6 $f7
    rst $38                                       ; $7706: $ff
    pop de                                        ; $7707: $d1
    xor e                                         ; $7708: $ab
    ld e, $21                                     ; $7709: $1e $21
    adc a                                         ; $770b: $8f
    ld c, e                                       ; $770c: $4b
    call $f4db                                    ; $770d: $cd $db $f4
    jp z, $cc7d                                   ; $7710: $ca $7d $cc

    ld d, d                                       ; $7713: $52
    res 4, h                                      ; $7714: $cb $a4
    add [hl]                                      ; $7716: $86
    or a                                          ; $7717: $b7
    pop de                                        ; $7718: $d1
    ld l, e                                       ; $7719: $6b
    db $f4                                        ; $771a: $f4
    jp z, $8968                                   ; $771b: $ca $68 $89

    rst $00                                       ; $771e: $c7
    ld h, a                                       ; $771f: $67
    adc a                                         ; $7720: $8f
    nop                                           ; $7721: $00
    adc a                                         ; $7722: $8f
    ld c, e                                       ; $7723: $4b
    adc l                                         ; $7724: $8d
    sub h                                         ; $7725: $94
    ld c, h                                       ; $7726: $4c
    pop af                                        ; $7727: $f1
    di                                            ; $7728: $f3
    ei                                            ; $7729: $fb
    rst $38                                       ; $772a: $ff
    ld l, h                                       ; $772b: $6c
    ret z                                         ; $772c: $c8

    ld c, d                                       ; $772d: $4a
    rst $08                                       ; $772e: $cf
    db $e4                                        ; $772f: $e4
    ld a, [hl]                                    ; $7730: $7e
    ld e, e                                       ; $7731: $5b
    ld c, e                                       ; $7732: $4b
    dec de                                        ; $7733: $1b
    ld d, d                                       ; $7734: $52
    cp d                                          ; $7735: $ba
    adc l                                         ; $7736: $8d
    cpl                                           ; $7737: $2f
    ld d, a                                       ; $7738: $57
    ld d, h                                       ; $7739: $54
    ret z                                         ; $773a: $c8

    ld [de], a                                    ; $773b: $12
    cpl                                           ; $773c: $2f
    ld e, c                                       ; $773d: $59
    cp c                                          ; $773e: $b9
    cpl                                           ; $773f: $2f
    db $fd                                        ; $7740: $fd
    rst $28                                       ; $7741: $ef
    ld [hl], d                                    ; $7742: $72
    ld e, b                                       ; $7743: $58
    rr [hl]                                       ; $7744: $cb $1e
    ld bc, $834f                                  ; $7746: $01 $4f $83
    xor $e8                                       ; $7749: $ee $e8
    ld l, c                                       ; $774b: $69
    ld b, a                                       ; $774c: $47
    rst $28                                       ; $774d: $ef
    adc d                                         ; $774e: $8a
    call nz, Call_000_0423                        ; $774f: $c4 $23 $04
    ld h, b                                       ; $7752: $60
    sub d                                         ; $7753: $92
    ld l, c                                       ; $7754: $69
    push de                                       ; $7755: $d5
    ld h, e                                       ; $7756: $63
    sub [hl]                                      ; $7757: $96
    sbc d                                         ; $7758: $9a
    cp l                                          ; $7759: $bd
    adc d                                         ; $775a: $8a
    dec a                                         ; $775b: $3d
    ld [bc], a                                    ; $775c: $02
    rrca                                          ; $775d: $0f
    push de                                       ; $775e: $d5
    call $381a                                    ; $775f: $cd $1a $38
    db $e3                                        ; $7762: $e3
    ld e, $cd                                     ; $7763: $1e $cd
    ld a, [hl]                                    ; $7765: $7e
    sbc b                                         ; $7766: $98
    inc a                                         ; $7767: $3c
    add [hl]                                      ; $7768: $86
    di                                            ; $7769: $f3
    sub e                                         ; $776a: $93
    ld [hl], d                                    ; $776b: $72
    rrca                                          ; $776c: $0f
    add hl, de                                    ; $776d: $19
    ld e, b                                       ; $776e: $58
    jr nz, jr_04f_7780                            ; $776f: $20 $0f

    cp e                                          ; $7771: $bb
    or e                                          ; $7772: $b3
    ld hl, $3d2b                                  ; $7773: $21 $2b $3d
    sub e                                         ; $7776: $93
    ei                                            ; $7777: $fb
    ld l, l                                       ; $7778: $6d
    dec l                                         ; $7779: $2d
    ld l, l                                       ; $777a: $6d
    ld c, b                                       ; $777b: $48
    jp hl                                         ; $777c: $e9


    ld [hl], $be                                  ; $777d: $36 $be
    ld e, h                                       ; $777f: $5c

jr_04f_7780:
    ld d, c                                       ; $7780: $51
    ld hl, $f7ec                                  ; $7781: $21 $ec $f7
    jp c, $c3ab                                   ; $7784: $da $ab $c3

    call $2a21                                    ; $7787: $cd $21 $2a
    xor a                                         ; $778a: $af
    ld [hl], h                                    ; $778b: $74
    db $db                                        ; $778c: $db
    and l                                         ; $778d: $a5
    ldh [$30], a                                  ; $778e: $e0 $30
    sbc $ff                                       ; $7790: $de $ff
    db $d3                                        ; $7792: $d3
    ld b, l                                       ; $7793: $45
    ld l, d                                       ; $7794: $6a
    ld a, [hl]                                    ; $7795: $7e
    rst $38                                       ; $7796: $ff
    ld e, a                                       ; $7797: $5f
    ld [hl], $7a                                  ; $7798: $36 $7a
    xor [hl]                                      ; $779a: $ae
    rra                                           ; $779b: $1f
    ld [hl], d                                    ; $779c: $72
    ld [hl], $49                                  ; $779d: $36 $49
    jr nz, jr_04f_77a3                            ; $779f: $20 $02

    adc a                                         ; $77a1: $8f
    ld c, e                                       ; $77a2: $4b

jr_04f_77a3:
    dec l                                         ; $77a3: $2d
    sub e                                         ; $77a4: $93
    sbc d                                         ; $77a5: $9a
    ld e, [hl]                                    ; $77a6: $5e
    ld e, l                                       ; $77a7: $5d
    db $e3                                        ; $77a8: $e3
    ld c, [hl]                                    ; $77a9: $4e
    sbc l                                         ; $77aa: $9d
    cpl                                           ; $77ab: $2f
    pop af                                        ; $77ac: $f1
    xor e                                         ; $77ad: $ab
    xor d                                         ; $77ae: $aa
    ld h, e                                       ; $77af: $63
    ld [hl], $64                                  ; $77b0: $36 $64
    jp c, $53d1                                   ; $77b2: $da $d1 $53

    cp h                                          ; $77b5: $bc
    xor b                                         ; $77b6: $a8
    db $10                                        ; $77b7: $10
    adc b                                         ; $77b8: $88
    nop                                           ; $77b9: $00
    ld c, a                                       ; $77ba: $4f
    set 5, [hl]                                   ; $77bb: $cb $ee
    add sp, -$27                                  ; $77bd: $e8 $d9
    ldh a, [$65]                                  ; $77bf: $f0 $65
    ld b, e                                       ; $77c1: $43
    and a                                         ; $77c2: $a7
    dec e                                         ; $77c3: $1d
    ld h, d                                       ; $77c4: $62
    and e                                         ; $77c5: $a3
    rra                                           ; $77c6: $1f
    ld hl, $6ec0                                  ; $77c7: $21 $c0 $6e
    adc d                                         ; $77ca: $8a
    call z, $c55e                                 ; $77cb: $cc $5e $c5
    ld e, $01                                     ; $77ce: $1e $01
    ld c, a                                       ; $77d0: $4f
    and d                                         ; $77d1: $a2
    ld b, a                                       ; $77d2: $47
    ld c, e                                       ; $77d3: $4b
    add [hl]                                      ; $77d4: $86
    di                                            ; $77d5: $f3
    ld h, a                                       ; $77d6: $67
    ld a, e                                       ; $77d7: $7b
    xor b                                         ; $77d8: $a8
    ld l, [hl]                                    ; $77d9: $6e
    sub $c0                                       ; $77da: $d6 $c0
    add hl, de                                    ; $77dc: $19
    rst $30                                       ; $77dd: $f7
    ld l, b                                       ; $77de: $68
    or $7b                                        ; $77df: $f6 $7b
    ld e, h                                       ; $77e1: $5c
    ld l, d                                       ; $77e2: $6a
    ld e, d                                       ; $77e3: $5a
    push af                                       ; $77e4: $f5
    inc [hl]                                      ; $77e5: $34
    inc hl                                        ; $77e6: $23
    add [hl]                                      ; $77e7: $86
    sbc [hl]                                      ; $77e8: $9e
    adc l                                         ; $77e9: $8d
    sub [hl]                                      ; $77ea: $96
    dec l                                         ; $77eb: $2d
    ld a, [hl-]                                   ; $77ec: $3a
    ld [hl], b                                    ; $77ed: $70
    ld d, a                                       ; $77ee: $57
    ld d, d                                       ; $77ef: $52
    ld bc, $9811                                  ; $77f0: $01 $11 $98
    inc a                                         ; $77f3: $3c
    add [hl]                                      ; $77f4: $86
    di                                            ; $77f5: $f3
    sub e                                         ; $77f6: $93
    ld [hl], d                                    ; $77f7: $72
    rrca                                          ; $77f8: $0f
    add hl, de                                    ; $77f9: $19
    ld e, b                                       ; $77fa: $58
    jr nz, jr_04f_780c                            ; $77fb: $20 $0f

    cp e                                          ; $77fd: $bb
    or e                                          ; $77fe: $b3
    ld hl, $3d2b                                  ; $77ff: $21 $2b $3d
    sub e                                         ; $7802: $93
    ei                                            ; $7803: $fb
    ld l, l                                       ; $7804: $6d
    dec l                                         ; $7805: $2d
    ld l, l                                       ; $7806: $6d
    ld c, b                                       ; $7807: $48
    jp hl                                         ; $7808: $e9


    ld [hl], $be                                  ; $7809: $36 $be
    ld e, h                                       ; $780b: $5c

jr_04f_780c:
    ld d, c                                       ; $780c: $51
    ld hl, $7433                                  ; $780d: $21 $33 $74
    call z, $bb52                                 ; $7810: $cc $52 $bb
    ld [c], a                                     ; $7813: $e2
    ld sp, $737a                                  ; $7814: $31 $7a $73
    or $ea                                        ; $7817: $f6 $ea
    pop de                                        ; $7819: $d1
    xor e                                         ; $781a: $ab
    ldh [$5e], a                                  ; $781b: $e0 $5e
    ld a, e                                       ; $781d: $7b
    ld [hl], l                                    ; $781e: $75
    cp b                                          ; $781f: $b8
    add hl, sp                                    ; $7820: $39
    ld b, h                                       ; $7821: $44
    push hl                                       ; $7822: $e5
    sub l                                         ; $7823: $95
    ld l, [hl]                                    ; $7824: $6e
    cp e                                          ; $7825: $bb
    inc d                                         ; $7826: $14
    inc e                                         ; $7827: $1c
    add $fb                                       ; $7828: $c6 $fb
    ld a, a                                       ; $782a: $7f
    cp d                                          ; $782b: $ba
    ld c, b                                       ; $782c: $48
    call $ffef                                    ; $782d: $cd $ef $ff
    bit 0, [hl]                                   ; $7830: $cb $46
    rst $08                                       ; $7832: $cf
    push af                                       ; $7833: $f5
    ld b, e                                       ; $7834: $43
    adc $26                                       ; $7835: $ce $26
    add hl, bc                                    ; $7837: $09
    ld b, h                                       ; $7838: $44
    adc a                                         ; $7839: $8f
    ld c, e                                       ; $783a: $4b
    ld c, l                                       ; $783b: $4d
    rrca                                          ; $783c: $0f
    ld e, a                                       ; $783d: $5f
    cp c                                          ; $783e: $b9
    rst $08                                       ; $783f: $cf
    add [hl]                                      ; $7840: $86
    rst $28                                       ; $7841: $ef
    add sp, $09                                   ; $7842: $e8 $09
    cpl                                           ; $7844: $2f
    cp e                                          ; $7845: $bb
    sub e                                         ; $7846: $93
    and e                                         ; $7847: $a3
    or l                                          ; $7848: $b5
    ldh a, [rNR10]                                ; $7849: $f0 $10
    ld [$e3e1], sp                                ; $784b: $08 $e1 $e3
    ld d, d                                       ; $784e: $52
    inc hl                                        ; $784f: $23
    dec h                                         ; $7850: $25
    db $d3                                        ; $7851: $d3
    ld c, [hl]                                    ; $7852: $4e
    ld e, l                                       ; $7853: $5d
    or e                                          ; $7854: $b3
    ld b, c                                       ; $7855: $41
    ld hl, $2002                                  ; $7856: $21 $02 $20
    dec c                                         ; $7859: $0d
    dec e                                         ; $785a: $1d
    rst $10                                       ; $785b: $d7
    ld b, l                                       ; $785c: $45
    rst $08                                       ; $785d: $cf
    ld b, [hl]                                    ; $785e: $46
    inc c                                         ; $785f: $0c
    dec e                                         ; $7860: $1d
    rst $10                                       ; $7861: $d7
    ld b, l                                       ; $7862: $45
    rst $08                                       ; $7863: $cf
    and [hl]                                      ; $7864: $a6
    rlca                                          ; $7865: $07
    sbc l                                         ; $7866: $9d
    dec c                                         ; $7867: $0d
    rst $18                                       ; $7868: $df
    ld hl, $1a3b                                  ; $7869: $21 $3b $1a
    ld [hl+], a                                   ; $786c: $22
    rst $20                                       ; $786d: $e7
    ld b, a                                       ; $786e: $47
    rst $28                                       ; $786f: $ef
    add sp, -$27                                  ; $7870: $e8 $d9
    add h                                         ; $7872: $84
    dec a                                         ; $7873: $3d
    ld [bc], a                                    ; $7874: $02
    sbc b                                         ; $7875: $98
    inc a                                         ; $7876: $3c

Call_04f_7877:
    add [hl]                                      ; $7877: $86
    di                                            ; $7878: $f3
    jp $d0db                                      ; $7879: $c3 $db $d0


    sub b                                         ; $787c: $90
    or d                                          ; $787d: $b2
    ld h, a                                       ; $787e: $67
    inc bc                                        ; $787f: $03
    ld h, a                                       ; $7880: $67
    call c, $1fa3                                 ; $7881: $dc $a3 $1f
    db $ed                                        ; $7884: $ed
    inc a                                         ; $7885: $3c
    ld a, h                                       ; $7886: $7c
    call nz, $af64                                ; $7887: $c4 $64 $af
    sbc [hl]                                      ; $788a: $9e
    cp l                                          ; $788b: $bd
    ld l, d                                       ; $788c: $6a
    ld l, a                                       ; $788d: $6f
    dec c                                         ; $788e: $0d
    scf                                           ; $788f: $37
    add a                                         ; $7890: $87
    jr z, @+$3a                                   ; $7891: $28 $38

    ldh [$fc], a                                  ; $7893: $e0 $fc
    ld c, h                                       ; $7895: $4c
    ld c, d                                       ; $7896: $4a
    db $db                                        ; $7897: $db
    ccf                                           ; $7898: $3f
    sub h                                         ; $7899: $94
    sbc d                                         ; $789a: $9a
    cp l                                          ; $789b: $bd
    adc d                                         ; $789c: $8a
    dec a                                         ; $789d: $3d
    ld [bc], a                                    ; $789e: $02
    rst $08                                       ; $789f: $cf
    push af                                       ; $78a0: $f5
    ld l, h                                       ; $78a1: $6c
    adc h                                         ; $78a2: $8c
    inc sp                                        ; $78a3: $33
    db $ed                                        ; $78a4: $ed
    ld e, h                                       ; $78a5: $5c
    ld [hl], l                                    ; $78a6: $75
    adc c                                         ; $78a7: $89
    adc l                                         ; $78a8: $8d
    pop hl                                        ; $78a9: $e1
    db $fc                                        ; $78aa: $fc
    ld l, h                                       ; $78ab: $6c
    ret z                                         ; $78ac: $c8

    or h                                          ; $78ad: $b4

Call_04f_78ae:
    and e                                         ; $78ae: $a3
    and a                                         ; $78af: $a7
    di                                            ; $78b0: $f3
    ld [hl], d                                    ; $78b1: $72
    ld b, l                                       ; $78b2: $45
    add l                                         ; $78b3: $85
    inc a                                         ; $78b4: $3c
    jp c, Jump_04f_52e3                           ; $78b5: $da $e3 $52

    inc hl                                        ; $78b8: $23
    dec h                                         ; $78b9: $25
    cp e                                          ; $78ba: $bb
    ld [c], a                                     ; $78bb: $e2
    or c                                          ; $78bc: $b1
    inc e                                         ; $78bd: $1c
    or e                                          ; $78be: $b3
    ld b, c                                       ; $78bf: $41
    ld hl, $e702                                  ; $78c0: $21 $02 $e7
    ret                                           ; $78c3: $c9


    ld c, b                                       ; $78c4: $48
    ret                                           ; $78c5: $c9


    xor [hl]                                      ; $78c6: $ae
    ld a, b                                       ; $78c7: $78
    inc l                                         ; $78c8: $2c
    ld de, $5fab                                  ; $78c9: $11 $ab $5f
    ld d, d                                       ; $78cc: $52
    and e                                         ; $78cd: $a3
    ld d, a                                       ; $78ce: $57
    adc l                                         ; $78cf: $8d
    dec sp                                        ; $78d0: $3b
    push af                                       ; $78d1: $f5
    ld [$bf7f], a                                 ; $78d2: $ea $7f $bf
    ld d, $22                                     ; $78d5: $16 $22
    adc a                                         ; $78d7: $8f
    ld c, e                                       ; $78d8: $4b
    dec l                                         ; $78d9: $2d
    sub e                                         ; $78da: $93
    sbc d                                         ; $78db: $9a
    jr jr_04f_7913                                ; $78dc: $18 $35

jr_04f_78de:
    db $ed                                        ; $78de: $ed
    cp d                                          ; $78df: $ba
    rst $10                                       ; $78e0: $d7
    db $ec                                        ; $78e1: $ec
    ld d, l                                       ; $78e2: $55
    db $ec                                        ; $78e3: $ec
    ld de, $e1e7                                  ; $78e4: $11 $e7 $e1
    ld c, e                                       ; $78e7: $4b
    rst $38                                       ; $78e8: $ff
    db $db                                        ; $78e9: $db
    ei                                            ; $78ea: $fb
    ld d, a                                       ; $78eb: $57
    ld l, h                                       ; $78ec: $6c
    ld e, a                                       ; $78ed: $5f
    ld d, l                                       ; $78ee: $55
    dec e                                         ; $78ef: $1d
    db $e3                                        ; $78f0: $e3
    ld c, [hl]                                    ; $78f1: $4e
    dec a                                         ; $78f2: $3d

jr_04f_78f3:
    ld a, e                                       ; $78f3: $7b
    push de                                       ; $78f4: $d5
    inc c                                         ; $78f5: $0c
    sbc l                                         ; $78f6: $9d
    ld c, l                                       ; $78f7: $4d
    and [hl]                                      ; $78f8: $a6
    and d                                         ; $78f9: $a2
    sub a                                         ; $78fa: $97
    ldh [$f8], a                                  ; $78fb: $e0 $f8
    reti                                          ; $78fd: $d9


    db $f4                                        ; $78fe: $f4
    and b                                         ; $78ff: $a0
    or e                                          ; $7900: $b3
    ret                                           ; $7901: $c9


    ld c, $d9                                     ; $7902: $0e $d9
    pop de                                        ; $7904: $d1
    db $10                                        ; $7905: $10
    ld bc, $4b8f                                  ; $7906: $01 $8f $4b
    dec l                                         ; $7909: $2d
    di                                            ; $790a: $f3
    ld l, d                                       ; $790b: $6a
    ld d, a                                       ; $790c: $57
    ld d, h                                       ; $790d: $54
    ret z                                         ; $790e: $c8

    reti                                          ; $790f: $d9


    ldh a, [$36]                                  ; $7910: $f0 $36
    ld e, h                                       ; $7912: $5c

jr_04f_7913:
    db $e4                                        ; $7913: $e4
    ld l, h                                       ; $7914: $6c
    ld e, d                                       ; $7915: $5a
    jr nz, jr_04f_791a                            ; $7916: $20 $02

    jr nz, jr_04f_78de                            ; $7918: $20 $c4

jr_04f_791a:
    ld h, e                                       ; $791a: $63
    call z, $d352                                 ; $791b: $cc $52 $d3
    ld [c], a                                     ; $791e: $e2
    rst $38                                       ; $791f: $ff
    ld l, b                                       ; $7920: $68
    jr c, jr_04f_78f3                             ; $7921: $38 $d0

    ld hl, $e1b3                                  ; $7923: $21 $b3 $e1
    dec sp                                        ; $7926: $3b
    ld a, d                                       ; $7927: $7a
    jp nz, $232b                                  ; $7928: $c2 $2b $23

    res 0, [hl]                                   ; $792b: $cb $86
    ld l, $53                                     ; $792d: $2e $53
    sub [hl]                                      ; $792f: $96
    adc d                                         ; $7930: $8a
    sbc [hl]                                      ; $7931: $9e
    and c                                         ; $7932: $a1
    and h                                         ; $7933: $a4
    xor a                                         ; $7934: $af
    xor b                                         ; $7935: $a8
    sbc c                                         ; $7936: $99
    sub h                                         ; $7937: $94
    ld [hl], $66                                  ; $7938: $36 $66
    xor c                                         ; $793a: $a9
    jp hl                                         ; $793b: $e9


    rst $30                                       ; $793c: $f7
    rst $38                                       ; $793d: $ff
    jp hl                                         ; $793e: $e9


    pop hl                                        ; $793f: $e1
    dec [hl]                                      ; $7940: $35
    dec a                                         ; $7941: $3d
    jr z, jr_04f_7988                             ; $7942: $28 $44

    rst $20                                       ; $7944: $e7
    ld sp, $7aad                                  ; $7945: $31 $ad $7a
    reti                                          ; $7948: $d9


    rrca                                          ; $7949: $0f
    ld d, c                                       ; $794a: $51
    cp [hl]                                       ; $794b: $be
    jp nc, $4367                                  ; $794c: $d2 $67 $43

    and [hl]                                      ; $794f: $a6
    dec e                                         ; $7950: $1d
    dec a                                         ; $7951: $3d
    ld h, d                                       ; $7952: $62
    cp d                                          ; $7953: $ba
    xor a                                         ; $7954: $af
    dec [hl]                                      ; $7955: $35
    dec e                                         ; $7956: $1d
    ld [bc], a                                    ; $7957: $02
    ld hl, $9664                                  ; $7958: $21 $64 $96
    sbc d                                         ; $795b: $9a
    or a                                          ; $795c: $b7
    jp hl                                         ; $795d: $e9


    ld e, l                                       ; $795e: $5d
    pop af                                        ; $795f: $f1
    ld e, b                                       ; $7960: $58
    cp c                                          ; $7961: $b9
    adc a                                         ; $7962: $8f
    ld e, c                                       ; $7963: $59
    ld l, d                                       ; $7964: $6a
    and h                                         ; $7965: $a4
    ld h, h                                       ; $7966: $64
    call nz, Call_04f_5a50                        ; $7967: $c4 $50 $5a
    db $e3                                        ; $796a: $e3
    ld c, [hl]                                    ; $796b: $4e
    sbc l                                         ; $796c: $9d
    cp [hl]                                       ; $796d: $be
    or e                                          ; $796e: $b3
    ld b, c                                       ; $796f: $41
    ld hl, $4f02                                  ; $7970: $21 $02 $4f
    db $eb                                        ; $7973: $eb
    pop de                                        ; $7974: $d1
    ret nz                                        ; $7975: $c0

    ldh a, [$e2]                                  ; $7976: $f0 $e2
    ld d, a                                       ; $7978: $57
    call nc, $9fb2                                ; $7979: $d4 $b2 $9f
    call c, Call_04f_4163                         ; $797c: $dc $63 $41
    adc l                                         ; $797f: $8d
    adc a                                         ; $7980: $8f
    ld e, [hl]                                    ; $7981: $5e
    dec b                                         ; $7982: $05

jr_04f_7983:
    ld de, $2b8f                                  ; $7983: $11 $8f $2b
    di                                            ; $7986: $f3
    ld h, a                                       ; $7987: $67

jr_04f_7988:
    ld a, e                                       ; $7988: $7b
    xor b                                         ; $7989: $a8
    ld l, [hl]                                    ; $798a: $6e
    sub $c0                                       ; $798b: $d6 $c0
    add hl, de                                    ; $798d: $19
    rst $30                                       ; $798e: $f7
    ld l, b                                       ; $798f: $68
    cp b                                          ; $7990: $b8
    di                                            ; $7991: $f3
    ld h, h                                       ; $7992: $64
    ld e, d                                       ; $7993: $5a
    push af                                       ; $7994: $f5
    db $ec                                        ; $7995: $ec
    sub l                                         ; $7996: $95
    ld [hl], c                                    ; $7997: $71
    push de                                       ; $7998: $d5
    ld a, c                                       ; $7999: $79
    or h                                          ; $799a: $b4
    call nz, $cfe3                                ; $799b: $c4 $e3 $cf
    and h                                         ; $799e: $a4
    or h                                          ; $799f: $b4
    reti                                          ; $79a0: $d9


    ld h, h                                       ; $79a1: $64
    dec h                                         ; $79a2: $25
    ld a, [$3621]                                 ; $79a3: $fa $21 $36
    ld a, d                                       ; $79a6: $7a
    ld [hl], $64                                  ; $79a7: $36 $64
    ld a, b                                       ; $79a9: $78
    ld b, a                                       ; $79aa: $47
    ld [$65e6], a                                 ; $79ab: $ea $e6 $65
    ld b, e                                       ; $79ae: $43
    and a                                         ; $79af: $a7
    sub l                                         ; $79b0: $95
    ld c, h                                       ; $79b1: $4c
    ld sp, $db4d                                  ; $79b2: $31 $4d $db
    add b                                         ; $79b5: $80
    ld a, e                                       ; $79b6: $7b
    ld l, e                                       ; $79b7: $6b
    cp b                                          ; $79b8: $b8
    add hl, sp                                    ; $79b9: $39
    ld b, h                                       ; $79ba: $44
    push hl                                       ; $79bb: $e5
    sub l                                         ; $79bc: $95
    ld l, [hl]                                    ; $79bd: $6e
    cp e                                          ; $79be: $bb
    call nc, $53b8                                ; $79bf: $d4 $b8 $53
    xor a                                         ; $79c2: $af
    call c, $9367                                 ; $79c3: $dc $67 $93
    dec e                                         ; $79c6: $1d
    cp l                                          ; $79c7: $bd
    call nz, Call_000_3863                        ; $79c8: $c4 $63 $38
    ccf                                           ; $79cb: $3f
    add hl, hl                                    ; $79cc: $29
    rst $30                                       ; $79cd: $f7
    db $10                                        ; $79ce: $10
    adc b                                         ; $79cf: $88
    nop                                           ; $79d0: $00
    ld b, b                                       ; $79d1: $40
    ld h, l                                       ; $79d2: $65
    xor d                                         ; $79d3: $aa
    jr z, jr_04f_7983                             ; $79d4: $28 $ad

    cp a                                          ; $79d6: $bf
    adc h                                         ; $79d7: $8c
    add a                                         ; $79d8: $87
    adc d                                         ; $79d9: $8a
    rrca                                          ; $79da: $0f
    rst $30                                       ; $79db: $f7
    or h                                          ; $79dc: $b4
    sbc d                                         ; $79dd: $9a
    dec sp                                        ; $79de: $3b
    push af                                       ; $79df: $f5
    or d                                          ; $79e0: $b2
    di                                            ; $79e1: $f3
    dec a                                         ; $79e2: $3d
    dec de                                        ; $79e3: $1b
    or d                                          ; $79e4: $b2
    dec sp                                        ; $79e5: $3b
    dec de                                        ; $79e6: $1b
    ld a, $ed                                     ; $79e7: $3e $ed
    add sp, -$47                                  ; $79e9: $e8 $b9
    and c                                         ; $79eb: $a1
    or h                                          ; $79ec: $b4
    ld b, [hl]                                    ; $79ed: $46
    ld a, [hl]                                    ; $79ee: $7e
    push hl                                       ; $79ef: $e5
    call c, $a509                                 ; $79f0: $dc $09 $a5
    pop hl                                        ; $79f3: $e1
    adc a                                         ; $79f4: $8f
    db $10                                        ; $79f5: $10
    rrca                                          ; $79f6: $0f
    ld hl, $7912                                  ; $79f7: $21 $12 $79
    daa                                           ; $79fa: $27
    ld h, l                                       ; $79fb: $65
    ld h, h                                       ; $79fc: $64
    rst $38                                       ; $79fd: $ff
    ld [de], a                                    ; $79fe: $12
    xor c                                         ; $79ff: $a9
    ld e, $bd                                     ; $7a00: $1e $bd
    ld d, d                                       ; $7a02: $52
    db $10                                        ; $7a03: $10
    ld b, d                                       ; $7a04: $42
    ld l, b                                       ; $7a05: $68
    ld d, d                                       ; $7a06: $52
    jp c, $92b4                                   ; $7a07: $da $b4 $92

    ld l, c                                       ; $7a0a: $69
    push de                                       ; $7a0b: $d5
    bit 0, l                                      ; $7a0c: $cb $45
    ld l, c                                       ; $7a0e: $69
    ld c, l                                       ; $7a0f: $4d
    db $e3                                        ; $7a10: $e3
    dec de                                        ; $7a11: $1b
    ld c, $74                                     ; $7a12: $0e $74
    ld d, c                                       ; $7a14: $51
    ld e, d                                       ; $7a15: $5a
    adc a                                         ; $7a16: $8f
    ld b, $ae                                     ; $7a17: $06 $ae
    ld [hl], b                                    ; $7a19: $70
    cp h                                          ; $7a1a: $bc
    ld e, $21                                     ; $7a1b: $1e $21
    adc a                                         ; $7a1d: $8f
    dec hl                                        ; $7a1e: $2b
    di                                            ; $7a1f: $f3
    ld h, a                                       ; $7a20: $67
    or e                                          ; $7a21: $b3
    ret                                           ; $7a22: $c9


    or h                                          ; $7a23: $b4
    ld [$3825], a                                 ; $7a24: $ea $25 $38
    xor $47                                       ; $7a27: $ee $47
    adc d                                         ; $7a29: $8a
    ld hl, sp+$48                                 ; $7a2a: $f8 $48
    rla                                           ; $7a2c: $17
    rst $20                                       ; $7a2d: $e7

Jump_04f_7a2e:
    ld hl, $4cd3                                  ; $7a2e: $21 $d3 $4c
    ld e, $d0                                     ; $7a31: $1e $d0
    cp [hl]                                       ; $7a33: $be
    add hl, sp                                    ; $7a34: $39
    db $ec                                        ; $7a35: $ec
    rr c                                          ; $7a36: $cb $19
    rrca                                          ; $7a38: $0f
    dec d                                         ; $7a39: $15
    ld e, a                                       ; $7a3a: $5f
    jr nz, jr_04f_7a3f                            ; $7a3b: $20 $02

    ldh [$da], a                                  ; $7a3d: $e0 $da

jr_04f_7a3f:
    ld [hl], b                                    ; $7a3f: $70
    sub c                                         ; $7a40: $91
    or e                                          ; $7a41: $b3
    jp hl                                         ; $7a42: $e9


    sbc l                                         ; $7a43: $9d
    daa                                           ; $7a44: $27
    inc [hl]                                      ; $7a45: $34
    db $fd                                        ; $7a46: $fd
    jp Jump_000_0e9a                              ; $7a47: $c3 $9a $0e


    or $7b                                        ; $7a4a: $f6 $7b
    ld e, d                                       ; $7a4c: $5a
    dec a                                         ; $7a4d: $3d
    ld h, d                                       ; $7a4e: $62
    add sp, -$1c                                  ; $7a4f: $e8 $e4
    xor $72                                       ; $7a51: $ee $72
    call $23cb                                    ; $7a53: $cd $cb $23
    inc b                                         ; $7a56: $04
    adc a                                         ; $7a57: $8f
    ld c, e                                       ; $7a58: $4b
    dec l                                         ; $7a59: $2d
    dec e                                         ; $7a5a: $1d
    jp c, $8f49                                   ; $7a5b: $da $49 $8f

    sbc $15                                       ; $7a5e: $de $15
    dec d                                         ; $7a60: $15
    ld [hl-], a                                   ; $7a61: $32
    ld e, d                                       ; $7a62: $5a
    ld [c], a                                     ; $7a63: $e2
    pop af                                        ; $7a64: $f1
    rst $00                                       ; $7a65: $c7
    sbc l                                         ; $7a66: $9d
    ld a, d                                       ; $7a67: $7a
    push hl                                       ; $7a68: $e5
    cp [hl]                                       ; $7a69: $be
    db $f4                                        ; $7a6a: $f4
    cp a                                          ; $7a6b: $bf
    inc sp                                        ; $7a6c: $33
    sbc c                                         ; $7a6d: $99
    dec h                                         ; $7a6e: $25
    rst $38                                       ; $7a6f: $ff
    ld a, [hl+]                                   ; $7a70: $2a
    cp b                                          ; $7a71: $b8
    add a                                         ; $7a72: $87
    ld [$64d9], a                                 ; $7a73: $ea $d9 $64
    call c, $b3a9                                 ; $7a76: $dc $a9 $b3
    di                                            ; $7a79: $f3
    xor $d3                                       ; $7a7a: $ee $d3
    rrc [hl]                                      ; $7a7c: $cb $0e
    ld l, b                                       ; $7a7e: $68
    rst $18                                       ; $7a7f: $df
    inc e                                         ; $7a80: $1c
    or $e5                                        ; $7a81: $f6 $e5
    adc h                                         ; $7a83: $8c
    add a                                         ; $7a84: $87
    adc d                                         ; $7a85: $8a
    cpl                                           ; $7a86: $2f
    db $d3                                        ; $7a87: $d3
    ld l, a                                       ; $7a88: $6f
    ld l, $1b                                     ; $7a89: $2e $1b
    or e                                          ; $7a8b: $b3
    ld d, a                                       ; $7a8c: $57
    dec a                                         ; $7a8d: $3d
    ld b, d                                       ; $7a8e: $42
    and b                                         ; $7a8f: $a0
    xor a                                         ; $7a90: $af
    call nc, $53b8                                ; $7a91: $d4 $b8 $53
    rra                                           ; $7a94: $1f
    rst $18                                       ; $7a95: $df
    halt                                          ; $7a96: $76
    push af                                       ; $7a97: $f5
    inc hl                                        ; $7a98: $23
    inc b                                         ; $7a99: $04
    rst $20                                       ; $7a9a: $e7
    ld hl, $6fd3                                  ; $7a9b: $21 $d3 $6f
    xor [hl]                                      ; $7a9e: $ae
    sbc [hl]                                      ; $7a9f: $9e
    cp l                                          ; $7aa0: $bd
    ld l, d                                       ; $7aa1: $6a
    or $ba                                        ; $7aa2: $f6 $ba
    ld c, a                                       ; $7aa4: $4f
    ld h, e                                       ; $7aa5: $63
    ld e, $ed                                     ; $7aa6: $1e $ed
    sub l                                         ; $7aa8: $95
    ld [hl], a                                    ; $7aa9: $77
    ld b, l                                       ; $7aaa: $45
    and d                                         ; $7aab: $a2
    or e                                          ; $7aac: $b3
    rst $10                                       ; $7aad: $d7
    ld c, [hl]                                    ; $7aae: $4e
    sub d                                         ; $7aaf: $92
    ld c, c                                       ; $7ab0: $49
    ret                                           ; $7ab1: $c9


    reti                                          ; $7ab2: $d9


    ld l, b                                       ; $7ab3: $68
    ret z                                         ; $7ab4: $c8

    xor [hl]                                      ; $7ab5: $ae
    ld a, b                                       ; $7ab6: $78
    inc l                                         ; $7ab7: $2c
    sub a                                         ; $7ab8: $97
    ret z                                         ; $7ab9: $c8

    dec d                                         ; $7aba: $15
    dec d                                         ; $7abb: $15
    ld [bc], a                                    ; $7abc: $02
    ld [hl], a                                    ; $7abd: $77
    ld e, $32                                     ; $7abe: $1e $32
    ld h, d                                       ; $7ac0: $62
    jr z, @-$71                                   ; $7ac1: $28 $8d

    ld e, [hl]                                    ; $7ac3: $5e
    cp c                                          ; $7ac4: $b9

jr_04f_7ac5:
    adc a                                         ; $7ac5: $8f
    ei                                            ; $7ac6: $fb
    inc l                                         ; $7ac7: $2c
    rst $30                                       ; $7ac8: $f7
    jp z, $a3bb                                   ; $7ac9: $ca $bb $a3

    and [hl]                                      ; $7acc: $a6
    sub l                                         ; $7acd: $95
    sub c                                         ; $7ace: $91
    sub l                                         ; $7acf: $95
    cp [hl]                                       ; $7ad0: $be
    ld c, h                                       ; $7ad1: $4c
    adc [hl]                                      ; $7ad2: $8e
    cp a                                          ; $7ad3: $bf
    ld l, h                                       ; $7ad4: $6c
    add sp, -$68                                  ; $7ad5: $e8 $98
    and l                                         ; $7ad7: $a5
    halt                                          ; $7ad8: $76
    push bc                                       ; $7ad9: $c5
    ld h, e                                       ; $7ada: $63
    and h                                         ; $7adb: $a4
    ld h, h                                       ; $7adc: $64
    ld e, [hl]                                    ; $7add: $5e
    cp a                                          ; $7ade: $bf
    ld h, [hl]                                    ; $7adf: $66
    add sp, -$48                                  ; $7ae0: $e8 $b8
    ld d, e                                       ; $7ae2: $53
    rst $08                                       ; $7ae3: $cf
    ld e, [hl]                                    ; $7ae4: $5e
    dec b                                         ; $7ae5: $05
    rlca                                          ; $7ae6: $07
    ld h, $59                                     ; $7ae7: $26 $59
    jp c, $8db4                                   ; $7ae9: $da $b4 $8d

    reti                                          ; $7aec: $d9


    ld h, h                                       ; $7aed: $64
    adc d                                         ; $7aee: $8a
    sbc a                                         ; $7aef: $9f
    ld c, c                                       ; $7af0: $49
    ld l, c                                       ; $7af1: $69
    ei                                            ; $7af2: $fb
    add a                                         ; $7af3: $87
    ld d, d                                       ; $7af4: $52
    dec [hl]                                      ; $7af5: $35
    ld a, e                                       ; $7af6: $7b
    push de                                       ; $7af7: $d5
    xor [hl]                                      ; $7af8: $ae
    ld a, [bc]                                    ; $7af9: $0a
    add c                                         ; $7afa: $81
    inc bc                                        ; $7afb: $03
    sbc e                                         ; $7afc: $9b
    jp nc, $a256                                  ; $7afd: $d2 $56 $a2

    rra                                           ; $7b00: $1f
    ld h, d                                       ; $7b01: $62
    ld b, a                                       ; $7b02: $47
    ld c, e                                       ; $7b03: $4b
    inc a                                         ; $7b04: $3c
    cp [hl]                                       ; $7b05: $be
    ret nz                                        ; $7b06: $c0

    sbc l                                         ; $7b07: $9d
    daa                                           ; $7b08: $27
    inc hl                                        ; $7b09: $23
    dec h                                         ; $7b0a: $25
    ld l, e                                       ; $7b0b: $6b
    sbc [hl]                                      ; $7b0c: $9e
    call nc, $ffee                                ; $7b0d: $d4 $ee $ff
    or l                                          ; $7b10: $b5
    call nz, $e867                                ; $7b11: $c4 $67 $e8
    ld l, h                                       ; $7b14: $6c
    or d                                          ; $7b15: $b2
    and e                                         ; $7b16: $a3
    sub a                                         ; $7b17: $97
    ld a, b                                       ; $7b18: $78
    inc c                                         ; $7b19: $0c
    rst $20                                       ; $7b1a: $e7
    daa                                           ; $7b1b: $27
    push hl                                       ; $7b1c: $e5
    ld e, $02                                     ; $7b1d: $1e $02
    ld de, $43a0                                  ; $7b1f: $11 $a0 $43
    or $44                                        ; $7b22: $f6 $44
    ld a, [bc]                                    ; $7b24: $0a
    rrca                                          ; $7b25: $0f
    ld [$0221], sp                                ; $7b26: $08 $21 $02
    adc a                                         ; $7b29: $8f
    ld c, e                                       ; $7b2a: $4b
    dec l                                         ; $7b2b: $2d
    sub e                                         ; $7b2c: $93
    sbc e                                         ; $7b2d: $9b
    ld [hl+], a                                   ; $7b2e: $22
    ld h, l                                       ; $7b2f: $65
    ld h, e                                       ; $7b30: $63
    sbc d                                         ; $7b31: $9a
    ld de, $6743                                  ; $7b32: $11 $43 $67
    ld d, d                                       ; $7b35: $52
    inc h                                         ; $7b36: $24
    di                                            ; $7b37: $f3
    cp e                                          ; $7b38: $bb
    res 0, a                                      ; $7b39: $cb $87
    jr z, jr_04f_7ac5                             ; $7b3b: $28 $88

    nop                                           ; $7b3d: $00
    adc a                                         ; $7b3e: $8f
    ld c, e                                       ; $7b3f: $4b
    dec l                                         ; $7b40: $2d
    ld de, $d5db                                  ; $7b41: $11 $db $d5
    db $d3                                        ; $7b44: $d3
    set 1, [hl]                                   ; $7b45: $cb $ce
    add [hl]                                      ; $7b47: $86
    ld c, h                                       ; $7b48: $4c
    dec sp                                        ; $7b49: $3b
    ld a, d                                       ; $7b4a: $7a
    ld l, c                                       ; $7b4b: $69
    ld b, e                                       ; $7b4c: $43
    ld b, d                                       ; $7b4d: $42
    and [hl]                                      ; $7b4e: $a6
    sub l                                         ; $7b4f: $95
    ret c                                         ; $7b50: $d8

    ld e, a                                       ; $7b51: $5f
    dec a                                         ; $7b52: $3d
    ld b, e                                       ; $7b53: $43
    ld hl, $8002                                  ; $7b54: $21 $02 $80
    cp e                                          ; $7b57: $bb
    add $34                                       ; $7b58: $c6 $34
    jp hl                                         ; $7b5a: $e9


    ld [hl], h                                    ; $7b5b: $74
    ld sp, hl                                     ; $7b5c: $f9
    reti                                          ; $7b5d: $d9


    ld l, b                                       ; $7b5e: $68
    rst $20                                       ; $7b5f: $e7
    add c                                         ; $7b60: $81
    ld sp, $37dd                                  ; $7b61: $31 $dd $37
    ld b, e                                       ; $7b64: $43
    inc b                                         ; $7b65: $04
    ldh [$f8], a                                  ; $7b66: $e0 $f8
    ld c, h                                       ; $7b68: $4c
    cp [hl]                                       ; $7b69: $be
    pop de                                        ; $7b6a: $d1
    jp $f477                                      ; $7b6b: $c3 $77 $f4


    xor [hl]                                      ; $7b6e: $ae
    ld a, b                                       ; $7b6f: $78
    db $ec                                        ; $7b70: $ec
    ld e, a                                       ; $7b71: $5f
    ld d, d                                       ; $7b72: $52
    ld l, e                                       ; $7b73: $6b
    di                                            ; $7b74: $f3

jr_04f_7b75:
    xor a                                         ; $7b75: $af
    ld a, [c]                                     ; $7b76: $f2
    ld h, l                                       ; $7b77: $65
    ld b, e                                       ; $7b78: $43
    rst $30                                       ; $7b79: $f7
    jr c, jr_04f_7b75                             ; $7b7a: $38 $f9

    ld hl, $e770                                  ; $7b7c: $21 $70 $e7
    pop hl                                        ; $7b7f: $e1
    dec bc                                        ; $7b80: $0b
    or c                                          ; $7b81: $b1

Call_04f_7b82:
    dec [hl]                                      ; $7b82: $35
    db $fd                                        ; $7b83: $fd
    ld c, [hl]                                    ; $7b84: $4e
    sbc l                                         ; $7b85: $9d
    ld a, d                                       ; $7b86: $7a

Jump_04f_7b87:
    ld b, a                                       ; $7b87: $47
    rrca                                          ; $7b88: $0f
    rst $38                                       ; $7b89: $ff
    adc c                                         ; $7b8a: $89
    ld d, d                                       ; $7b8b: $52
    push de                                       ; $7b8c: $d5
    db $ec                                        ; $7b8d: $ec
    ld de, $1940                                  ; $7b8e: $11 $40 $19

jr_04f_7b91:
    rla                                           ; $7b91: $17
    dec c                                         ; $7b92: $0d
    ret                                           ; $7b93: $c9


    ld a, b                                       ; $7b94: $78
    dec de                                        ; $7b95: $1b
    dec a                                         ; $7b96: $3d
    ld h, h                                       ; $7b97: $64
    call nz, $1a50                                ; $7b98: $c4 $50 $1a
    cp l                                          ; $7b9b: $bd
    inc l                                         ; $7b9c: $2c
    push de                                       ; $7b9d: $d5
    ld a, [hl]                                    ; $7b9e: $7e
    or [hl]                                       ; $7b9f: $b6
    call z, $bf4f                                 ; $7ba0: $cc $4f $bf
    and e                                         ; $7ba3: $a3
    ld a, h                                       ; $7ba4: $7c
    or $d8                                        ; $7ba5: $f6 $d8
    ccf                                           ; $7ba7: $3f
    ld [hl], d                                    ; $7ba8: $72
    dec c                                         ; $7ba9: $0d
    rst $20                                       ; $7baa: $e7
    reti                                          ; $7bab: $d9


    rst $28                                       ; $7bac: $ef
    jp hl                                         ; $7bad: $e9


    dec e                                         ; $7bae: $1d

Call_04f_7baf:
    push hl                                       ; $7baf: $e5
    or e                                          ; $7bb0: $b3
    rst $00                                       ; $7bb1: $c7
    ret z                                         ; $7bb2: $c8

    xor a                                         ; $7bb3: $af
    xor [hl]                                      ; $7bb4: $ae
    reti                                          ; $7bb5: $d9


    and b                                         ; $7bb6: $a0
    db $e3                                        ; $7bb7: $e3
    ld c, [hl]                                    ; $7bb8: $4e
    cp l                                          ; $7bb9: $bd
    ld [hl], d                                    ; $7bba: $72
    rra                                           ; $7bbb: $1f
    ld sp, $d694                                  ; $7bbc: $31 $94 $d6
    ld [de], a                                    ; $7bbf: $12
    inc e                                         ; $7bc0: $1c
    rst $18                                       ; $7bc1: $df
    ld e, l                                       ; $7bc2: $5d
    adc c                                         ; $7bc3: $89
    db $ed                                        ; $7bc4: $ed
    ld a, [de]                                    ; $7bc5: $1a
    rst $18                                       ; $7bc6: $df
    sbc c                                         ; $7bc7: $99
    inc h                                         ; $7bc8: $24
    sbc l                                         ; $7bc9: $9d
    ld b, e                                       ; $7bca: $43
    jr nz, jr_04f_7bcf                            ; $7bcb: $20 $02

    rrca                                          ; $7bcd: $0f
    and l                                         ; $7bce: $a5

jr_04f_7bcf:
    ld a, [$f65a]                                 ; $7bcf: $fa $5a $f6
    ld a, e                                       ; $7bd2: $7b
    ld e, d                                       ; $7bd3: $5a
    halt                                          ; $7bd4: $76
    ld [$b3d4], a                                 ; $7bd5: $ea $d4 $b3
    ret                                           ; $7bd8: $c9


    or h                                          ; $7bd9: $b4
    and e                                         ; $7bda: $a3
    rra                                           ; $7bdb: $1f
    ld hl, $69cf                                  ; $7bdc: $21 $cf $69
    db $10                                        ; $7bdf: $10
    ld b, d                                       ; $7be0: $42
    adc l                                         ; $7be1: $8d
    ld d, d                                       ; $7be2: $52
    ld [$8e61], sp                                ; $7be3: $08 $61 $8e
    ld e, $bd                                     ; $7be6: $1e $bd
    ld l, d                                       ; $7be8: $6a
    jp hl                                         ; $7be9: $e9


    ld [$a19a], a                                 ; $7bea: $ea $9a $a1
    and h                                         ; $7bed: $a4
    xor a                                         ; $7bee: $af
    jr z, jr_04f_7c29                             ; $7bef: $28 $38

    jr nc, jr_04f_7c6a                            ; $7bf1: $30 $77

    ld a, [de]                                    ; $7bf3: $1a
    rst $38                                       ; $7bf4: $ff
    ld a, a                                       ; $7bf5: $7f
    db $f4                                        ; $7bf6: $f4
    xor [hl]                                      ; $7bf7: $ae
    ld a, b                                       ; $7bf8: $78
    inc c                                         ; $7bf9: $0c
    rst $20                                       ; $7bfa: $e7
    rst $00                                       ; $7bfb: $c7
    rst $28                                       ; $7bfc: $ef
    add a                                         ; $7bfd: $87
    ld d, a                                       ; $7bfe: $57
    cpl                                           ; $7bff: $2f
    jr c, jr_04f_7b91                             ; $7c00: $38 $8f

    ld e, $98                                     ; $7c02: $1e $98
    sbc e                                         ; $7c04: $9b
    ld [hl-], a                                   ; $7c05: $32
    cp a                                          ; $7c06: $bf
    ld a, [c]                                     ; $7c07: $f2
    add b                                         ; $7c08: $80
    db $fd                                        ; $7c09: $fd
    and d                                         ; $7c0a: $a2
    pop af                                        ; $7c0b: $f1
    rst $00                                       ; $7c0c: $c7
    sbc c                                         ; $7c0d: $99
    halt                                          ; $7c0e: $76
    xor [hl]                                      ; $7c0f: $ae
    cp d                                          ; $7c10: $ba
    call nz, $d9c6                                ; $7c11: $c4 $c6 $d9
    db $f4                                        ; $7c14: $f4
    ld a, d                                       ; $7c15: $7a
    add h                                         ; $7c16: $84
    nop                                           ; $7c17: $00
    ld c, a                                       ; $7c18: $4f
    rst $28                                       ; $7c19: $ef
    db $f4                                        ; $7c1a: $f4
    ldh a, [$e9]                                  ; $7c1b: $f0 $e9
    ld b, c                                       ; $7c1d: $41
    and a                                         ; $7c1e: $a7
    sub l                                         ; $7c1f: $95
    db $ec                                        ; $7c20: $ec
    add sp, -$67                                  ; $7c21: $e8 $99
    sub h                                         ; $7c23: $94
    ld [hl], $fd                                  ; $7c24: $36 $fd
    ld c, [hl]                                    ; $7c26: $4e
    rrca                                          ; $7c27: $0f
    ld e, a                                       ; $7c28: $5f

jr_04f_7c29:
    cp c                                          ; $7c29: $b9
    rrca                                          ; $7c2a: $0f
    ret c                                         ; $7c2b: $d8

    ld c, a                                       ; $7c2c: $4f
    jr c, @-$70                                   ; $7c2d: $38 $8e

    dec [hl]                                      ; $7c2f: $35
    cp l                                          ; $7c30: $bd
    adc b                                         ; $7c31: $88
    ld d, a                                       ; $7c32: $57
    rst $28                                       ; $7c33: $ef
    inc a                                         ; $7c34: $3c
    or $f4                                        ; $7c35: $f6 $f4
    and $c8                                       ; $7c37: $e6 $c8
    ld a, e                                       ; $7c39: $7b
    ld [c], a                                     ; $7c3a: $e2
    db $10                                        ; $7c3b: $10
    ld b, d                                       ; $7c3c: $42
    inc b                                         ; $7c3d: $04
    ld c, a                                       ; $7c3e: $4f
    ld [hl], d                                    ; $7c3f: $72
    ld c, d                                       ; $7c40: $4a
    dec sp                                        ; $7c41: $3b
    ld e, e                                       ; $7c42: $5b
    ld h, $7d                                     ; $7c43: $26 $7d
    ret                                           ; $7c45: $c9


    xor [hl]                                      ; $7c46: $ae
    ld a, b                                       ; $7c47: $78
    inc l                                         ; $7c48: $2c
    pop af                                        ; $7c49: $f1
    reti                                          ; $7c4a: $d9


    ld e, b                                       ; $7c4b: $58
    and $67                                       ; $7c4c: $e6 $67
    adc a                                         ; $7c4e: $8f
    ld h, [hl]                                    ; $7c4f: $66
    adc a                                         ; $7c50: $8f
    nop                                           ; $7c51: $00
    ld c, a                                       ; $7c52: $4f
    res 1, [hl]                                   ; $7c53: $cb $8e
    dec sp                                        ; $7c55: $3b
    ld [hl], l                                    ; $7c56: $75
    ld [c], a                                     ; $7c57: $e2
    add [hl]                                      ; $7c58: $86
    ld c, $d8                                     ; $7c59: $0e $d8
    ld c, a                                       ; $7c5b: $4f
    jr c, @-$70                                   ; $7c5c: $38 $8e

    or l                                          ; $7c5e: $b5
    ld c, h                                       ; $7c5f: $4c
    ld e, b                                       ; $7c60: $58
    sub $56                                       ; $7c61: $d6 $56
    cpl                                           ; $7c63: $2f
    ld a, e                                       ; $7c64: $7b
    ld c, b                                       ; $7c65: $48
    ret z                                         ; $7c66: $c8

    inc hl                                        ; $7c67: $23
    inc b                                         ; $7c68: $04
    ld c, a                                       ; $7c69: $4f

jr_04f_7c6a:
    ld [hl], d                                    ; $7c6a: $72
    ld c, d                                       ; $7c6b: $4a
    ld h, e                                       ; $7c6c: $63
    ccf                                           ; $7c6d: $3f
    ret nc                                        ; $7c6e: $d0

    dec h                                         ; $7c6f: $25
    db $d3                                        ; $7c70: $d3
    jp $df57                                      ; $7c71: $c3 $57 $df


    or $55                                        ; $7c74: $f6 $55
    db $d3                                        ; $7c76: $d3
    add e                                         ; $7c77: $83
    ld l, $1b                                     ; $7c78: $2e $1b
    cp d                                          ; $7c7a: $ba
    rst $08                                       ; $7c7b: $cf
    jp z, $aa59                                   ; $7c7c: $ca $59 $aa

    and a                                         ; $7c7f: $a7
    dec e                                         ; $7c80: $1d
    dec c                                         ; $7c81: $0d
    rlca                                          ; $7c82: $07
    jp nc, $f1d0                                  ; $7c83: $d2 $d0 $f1

    db $d3                                        ; $7c86: $d3
    adc [hl]                                      ; $7c87: $8e
    sbc a                                         ; $7c88: $9f
    ld l, e                                       ; $7c89: $6b
    jr c, jr_04f_7ccb                             ; $7c8a: $38 $3f

    ld a, [de]                                    ; $7c8c: $1a
    call z, $90e5                                 ; $7c8d: $cc $e5 $90
    ld [$0880], a                                 ; $7c90: $ea $80 $08
    ld c, a                                       ; $7c93: $4f
    xor e                                         ; $7c94: $ab
    cp c                                          ; $7c95: $b9
    ld d, e                                       ; $7c96: $53
    rst $08                                       ; $7c97: $cf
    db $db                                        ; $7c98: $db
    db $f4                                        ; $7c99: $f4
    ld l, h                                       ; $7c9a: $6c
    or d                                          ; $7c9b: $b2
    ld [hl], d                                    ; $7c9c: $72
    rst $18                                       ; $7c9d: $df
    ld b, e                                       ; $7c9e: $43
    xor c                                         ; $7c9f: $a9
    cp [hl]                                       ; $7ca0: $be
    halt                                          ; $7ca1: $76
    ld a, d                                       ; $7ca2: $7a
    push af                                       ; $7ca3: $f5
    ld [hl], b                                    ; $7ca4: $70
    ld a, [hl]                                    ; $7ca5: $7e
    or [hl]                                       ; $7ca6: $b6
    adc e                                         ; $7ca7: $8b
    sub h                                         ; $7ca8: $94
    ld l, [hl]                                    ; $7ca9: $6e
    db $e3                                        ; $7caa: $e3
    rl l                                          ; $7cab: $cb $15
    dec d                                         ; $7cad: $15
    ld a, [c]                                     ; $7cae: $f2
    ld [$0f01], sp                                ; $7caf: $08 $01 $0f
    dec h                                         ; $7cb2: $25
    ld c, e                                       ; $7cb3: $4b
    ld b, a                                       ; $7cb4: $47
    rra                                           ; $7cb5: $1f
    xor $65                                       ; $7cb6: $ee $65
    ld h, e                                       ; $7cb8: $63
    call c, Call_04f_47a9                         ; $7cb9: $dc $a9 $47
    xor a                                         ; $7cbc: $af
    ld e, d                                       ; $7cbd: $5a
    cp c                                          ; $7cbe: $b9
    ld c, a                                       ; $7cbf: $4f
    dec hl                                        ; $7cc0: $2b
    ld e, c                                       ; $7cc1: $59
    db $fd                                        ; $7cc2: $fd
    rst $28                                       ; $7cc3: $ef
    rst $10                                       ; $7cc4: $d7
    ld c, [hl]                                    ; $7cc5: $4e
    xor e                                         ; $7cc6: $ab
    sbc $49                                       ; $7cc7: $de $49
    ld [hl-], a                                   ; $7cc9: $32
    add hl, hl                                    ; $7cca: $29

jr_04f_7ccb:
    ld e, a                                       ; $7ccb: $5f
    cp [hl]                                       ; $7ccc: $be
    ld l, d                                       ; $7ccd: $6a
    ld hl, $5db3                                  ; $7cce: $21 $b3 $5d
    inc h                                         ; $7cd1: $24
    jr nz, jr_04f_7cd6                            ; $7cd2: $20 $02

    ld c, a                                       ; $7cd4: $4f
    ld [hl], d                                    ; $7cd5: $72

jr_04f_7cd6:
    ld c, d                                       ; $7cd6: $4a
    ld h, e                                       ; $7cd7: $63
    ccf                                           ; $7cd8: $3f
    ret nc                                        ; $7cd9: $d0

    push af                                       ; $7cda: $f5
    add hl, sp                                    ; $7cdb: $39
    jp Jump_04f_67da                              ; $7cdc: $c3 $da $67


    push hl                                       ; $7cdf: $e5
    inc l                                         ; $7ce0: $2c
    push de                                       ; $7ce1: $d5
    db $ec                                        ; $7ce2: $ec
    rlca                                          ; $7ce3: $07
    ld h, $99                                     ; $7ce4: $26 $99
    ld [c], a                                     ; $7ce6: $e2
    ld a, e                                       ; $7ce7: $7b
    ld a, [$df9d]                                 ; $7ce8: $fa $9d $df
    rst $38                                       ; $7ceb: $ff
    rst $30                                       ; $7cec: $f7
    ld d, b                                       ; $7ced: $50
    xor d                                         ; $7cee: $aa
    xor a                                         ; $7cef: $af
    add l                                         ; $7cf0: $85
    ld [$940f], sp                                ; $7cf1: $08 $0f $94
    ld b, d                                       ; $7cf4: $42
    ld [$6011], sp                                ; $7cf5: $08 $11 $60
    ld a, b                                       ; $7cf8: $78
    ld h, [hl]                                    ; $7cf9: $66
    sbc l                                         ; $7cfa: $9d
    adc l                                         ; $7cfb: $8d
    dec sp                                        ; $7cfc: $3b
    push af                                       ; $7cfd: $f5
    ld hl, sp+$65                                 ; $7cfe: $f8 $65
    cp l                                          ; $7d00: $bd
    cp d                                          ; $7d01: $ba
    add [hl]                                      ; $7d02: $86
    di                                            ; $7d03: $f3
    adc e                                         ; $7d04: $8b
    ld e, $d7                                     ; $7d05: $1e $d7
    cp h                                          ; $7d07: $bc
    xor d                                         ; $7d08: $aa
    or e                                          ; $7d09: $b3
    add hl, bc                                    ; $7d0a: $09
    xor a                                         ; $7d0b: $af
    cp d                                          ; $7d0c: $ba
    ld d, [hl]                                    ; $7d0d: $56
    ld a, [$d1fe]                                 ; $7d0e: $fa $fe $d1
    push de                                       ; $7d11: $d5
    ld d, d                                       ; $7d12: $52
    ld d, e                                       ; $7d13: $53
    ld c, h                                       ; $7d14: $4c
    db $d3                                        ; $7d15: $d3
    ld [hl], $66                                  ; $7d16: $36 $66
    cp $25                                        ; $7d18: $fe $25
    or l                                          ; $7d1a: $b5
    ld [hl], h                                    ; $7d1b: $74
    ld h, h                                       ; $7d1c: $64
    db $fd                                        ; $7d1d: $fd
    ld l, b                                       ; $7d1e: $68
    ld h, [hl]                                    ; $7d1f: $66
    db $fc                                        ; $7d20: $fc
    inc e                                         ; $7d21: $1c
    cp l                                          ; $7d22: $bd
    ld l, h                                       ; $7d23: $6c
    add sp, -$0c                                  ; $7d24: $e8 $f4
    ld [hl+], a                                   ; $7d26: $22
    ld e, [hl]                                    ; $7d27: $5e
    cp l                                          ; $7d28: $bd
    db $ec                                        ; $7d29: $ec
    ld hl, $7b21                                  ; $7d2a: $21 $21 $7b
    ld a, c                                       ; $7d2d: $79
    and b                                         ; $7d2e: $a0
    ld d, e                                       ; $7d2f: $53
    ret nz                                        ; $7d30: $c0

    adc l                                         ; $7d31: $8d
    sub h                                         ; $7d32: $94
    xor d                                         ; $7d33: $aa
    rst $38                                       ; $7d34: $ff
    rst $08                                       ; $7d35: $cf
    ld b, $ec                                     ; $7d36: $06 $ec
    ld e, a                                       ; $7d38: $5f
    ld h, a                                       ; $7d39: $67
    ld [hl], h                                    ; $7d3a: $74
    ld d, e                                       ; $7d3b: $53
    db $e4                                        ; $7d3c: $e4
    ld l, h                                       ; $7d3d: $6c
    ld c, a                                       ; $7d3e: $4f
    ldh a, [$36]                                  ; $7d3f: $f0 $36
    adc c                                         ; $7d41: $89
    sbc a                                         ; $7d42: $9f
    dec c                                         ; $7d43: $0d
    ld a, h                                       ; $7d44: $7c
    ld [hl], d                                    ; $7d45: $72
    cp e                                          ; $7d46: $bb
    db $e3                                        ; $7d47: $e3
    rst $38                                       ; $7d48: $ff
    or e                                          ; $7d49: $b3
    sbc c                                         ; $7d4a: $99
    sub h                                         ; $7d4b: $94
    or [hl]                                       ; $7d4c: $b6
    daa                                           ; $7d4d: $27
    ld d, d                                       ; $7d4e: $52
    ld a, b                                       ; $7d4f: $78
    ld b, b                                       ; $7d50: $40
    inc b                                         ; $7d51: $04
    ld c, a                                       ; $7d52: $4f
    and h                                         ; $7d53: $a4
    ldh a, [$60]                                  ; $7d54: $f0 $60
    adc a                                         ; $7d56: $8f
    nop                                           ; $7d57: $00
    ld c, a                                       ; $7d58: $4f
    and h                                         ; $7d59: $a4
    ldh a, [$98]                                  ; $7d5a: $f0 $98
    add $3c                                       ; $7d5c: $c6 $3c
    ld a, $ee                                     ; $7d5e: $3e $ee
    ld sp, $ffbf                                  ; $7d60: $31 $bf $ff
    adc a                                         ; $7d63: $8f
    ld e, a                                       ; $7d64: $5f
    ld h, $2c                                     ; $7d65: $26 $2c
    ld l, e                                       ; $7d67: $6b
    ld l, e                                       ; $7d68: $6b
    reti                                          ; $7d69: $d9


    ld b, e                                       ; $7d6a: $43
    ld b, d                                       ; $7d6b: $42
    adc $76                                       ; $7d6c: $ce $76
    add sp, $21                                   ; $7d6e: $e8 $21
    inc sp                                        ; $7d70: $33
    ld [hl], h                                    ; $7d71: $74

jr_04f_7d72:
    ld [hl], d                                    ; $7d72: $72
    rst $20                                       ; $7d73: $e7
    ld l, l                                       ; $7d74: $6d
    ld a, d                                       ; $7d75: $7a
    push hl                                       ; $7d76: $e5
    ld a, $ad                                     ; $7d77: $3e $ad
    ld h, h                                       ; $7d79: $64
    call c, $f3a9                                 ; $7d7a: $dc $a9 $f3
    adc c                                         ; $7d7d: $89
    ld b, h                                       ; $7d7e: $44
    cpl                                           ; $7d7f: $2f
    dec sp                                        ; $7d80: $3b
    di                                            ; $7d81: $f3
    ld hl, sp+$35                                 ; $7d82: $f8 $35
    dec de                                        ; $7d84: $1b
    ld [bc], a                                    ; $7d85: $02
    ld de, $a44f                                  ; $7d86: $11 $4f $a4
    ldh a, [rNR23]                                ; $7d89: $f0 $18
    ld sp, $4694                                  ; $7d8b: $31 $94 $46
    rst $28                                       ; $7d8e: $ef
    adc d                                         ; $7d8f: $8a
    rst $00                                       ; $7d90: $c7
    jp z, $dc7d                                   ; $7d91: $ca $7d $dc

    xor c                                         ; $7d94: $a9
    di                                            ; $7d95: $f3
    adc c                                         ; $7d96: $89
    call nc, Call_04f_5784                        ; $7d97: $d4 $84 $57
    add $c7                                       ; $7d9a: $c6 $c7
    sbc l                                         ; $7d9c: $9d
    cp d                                          ; $7d9d: $ba
    rrca                                          ; $7d9e: $0f
    sbc c                                         ; $7d9f: $99
    ld d, [hl]                                    ; $7da0: $56
    ld [hl-], a                                   ; $7da1: $32
    xor l                                         ; $7da2: $ad
    ld a, d                                       ; $7da3: $7a
    call nz, $7a50                                ; $7da4: $c4 $50 $7a
    ld a, l                                       ; $7da7: $7d
    jr c, jr_04f_7de9                             ; $7da8: $38 $3f

    dec l                                         ; $7daa: $2d
    jp hl                                         ; $7dab: $e9


    ld l, c                                       ; $7dac: $69
    dec h                                         ; $7dad: $25
    res 4, h                                      ; $7dae: $cb $a4
    ld b, [hl]                                    ; $7db0: $46
    inc c                                         ; $7db1: $0c
    and l                                         ; $7db2: $a5
    dec [hl]                                      ; $7db3: $35
    xor $d4                                       ; $7db4: $ee $d4
    jp hl                                         ; $7db6: $e9


    dec sp                                        ; $7db7: $3b
    ld h, b                                       ; $7db8: $60
    ccf                                           ; $7db9: $3f
    pop hl                                        ; $7dba: $e1
    jr c, jr_04f_7dd3                             ; $7dbb: $38 $16

    ld b, h                                       ; $7dbd: $44
    ld c, a                                       ; $7dbe: $4f
    xor e                                         ; $7dbf: $ab
    cp c                                          ; $7dc0: $b9
    ld d, e                                       ; $7dc1: $53
    rst $28                                       ; $7dc2: $ef
    add sp, -$27                                  ; $7dc3: $e8 $d9
    ldh a, [$65]                                  ; $7dc5: $f0 $65
    ld a, [hl]                                    ; $7dc7: $7e
    ld a, d                                       ; $7dc8: $7a
    dec [hl]                                      ; $7dc9: $35

Call_04f_7dca:
    push af                                       ; $7dca: $f5
    ld l, c                                       ; $7dcb: $69
    ld b, a                                       ; $7dcc: $47
    ld e, a                                       ; $7dcd: $5f
    sub c                                         ; $7dce: $91
    ld a, b                                       ; $7dcf: $78
    add h                                         ; $7dd0: $84
    nop                                           ; $7dd1: $00
    rrca                                          ; $7dd2: $0f

Jump_04f_7dd3:
jr_04f_7dd3:
    and l                                         ; $7dd3: $a5
    ld a, [$085a]                                 ; $7dd4: $fa $5a $08
    and c                                         ; $7dd7: $a1
    ld e, [hl]                                    ; $7dd8: $5e
    halt                                          ; $7dd9: $76
    ld b, a                                       ; $7dda: $47
    rst $08                                       ; $7ddb: $cf
    add [hl]                                      ; $7ddc: $86
    ld c, a                                       ; $7ddd: $4f
    dec sp                                        ; $7dde: $3b
    ld a, [$0211]                                 ; $7ddf: $fa $11 $02
    rst $20                                       ; $7de2: $e7
    ld sp, $f47b                                  ; $7de3: $31 $7b $f4
    and e                                         ; $7de6: $a3
    dec a                                         ; $7de7: $3d
    ld a, e                                       ; $7de8: $7b

jr_04f_7de9:
    or [hl]                                       ; $7de9: $b6
    ld b, e                                       ; $7dea: $43
    ld c, e                                       ; $7deb: $4b
    jr z, jr_04f_7d72                             ; $7dec: $28 $84

    db $10                                        ; $7dee: $10
    ld bc, $e1e7                                  ; $7def: $01 $e7 $e1
    dec sp                                        ; $7df2: $3b
    ld a, d                                       ; $7df3: $7a
    pop hl                                        ; $7df4: $e1
    ld a, $db                                     ; $7df5: $3e $db
    ld b, l                                       ; $7df7: $45
    ld c, $a5                                     ; $7df8: $0e $a5
    ret c                                         ; $7dfa: $d8

    rst $28                                       ; $7dfb: $ef
    ld l, c                                       ; $7dfc: $69
    push af                                       ; $7dfd: $f5
    cp b                                          ; $7dfe: $b8
    sbc e                                         ; $7dff: $9b
    ld [hl+], a                                   ; $7e00: $22
    or e                                          ; $7e01: $b3
    ret                                           ; $7e02: $c9


    cp h                                          ; $7e03: $bc
    call nc, Call_04f_6cee                        ; $7e04: $d4 $ee $6c
    ld hl, sp+$23                                 ; $7e07: $f8 $23
    inc b                                         ; $7e09: $04
    adc a                                         ; $7e0a: $8f
    ld l, e                                       ; $7e0b: $6b
    ld a, d                                       ; $7e0c: $7a
    adc c                                         ; $7e0d: $89
    call z, $4ac6                                 ; $7e0e: $cc $c6 $4a
    ld e, a                                       ; $7e11: $5f
    ret z                                         ; $7e12: $c8

    cp b                                          ; $7e13: $b8
    ld a, $e8                                     ; $7e14: $3e $e8
    cp a                                          ; $7e16: $bf
    and d                                         ; $7e17: $a2
    adc $96                                       ; $7e18: $ce $96
    dec c                                         ; $7e1a: $0d
    sbc l                                         ; $7e1b: $9d
    ld e, $4d                                     ; $7e1c: $1e $4d

jr_04f_7e1e:
    jp z, $d4c6                                   ; $7e1e: $ca $c6 $d4

    cpl                                           ; $7e21: $2f
    dec sp                                        ; $7e22: $3b
    ld a, [hl]                                    ; $7e23: $7e
    jp hl                                         ; $7e24: $e9


    ld a, a                                       ; $7e25: $7f

jr_04f_7e26:
    ld d, a                                       ; $7e26: $57
    ld a, [$cc68]                                 ; $7e27: $fa $68 $cc
    ld b, $dc                                     ; $7e2a: $06 $dc
    db $e3                                        ; $7e2c: $e3
    sbc d                                         ; $7e2d: $9a
    ld d, [hl]                                    ; $7e2e: $56
    cp l                                          ; $7e2f: $bd
    ld a, a                                       ; $7e30: $7f
    ld h, h                                       ; $7e31: $64
    ld e, a                                       ; $7e32: $5f
    ret z                                         ; $7e33: $c8

    ld l, h                                       ; $7e34: $6c
    db $fc                                        ; $7e35: $fc
    add hl, de                                    ; $7e36: $19
    ld a, [hl-]                                   ; $7e37: $3a
    dec l                                         ; $7e38: $2d
    jp hl                                         ; $7e39: $e9


    pop de                                        ; $7e3a: $d1
    sub d                                         ; $7e3b: $92
    ld a, c                                       ; $7e3c: $79
    push af                                       ; $7e3d: $f5
    or h                                          ; $7e3e: $b4
    ld [de], a                                    ; $7e3f: $12
    dec sp                                        ; $7e40: $3b
    ld b, e                                       ; $7e41: $43
    ld h, a                                       ; $7e42: $67
    inc bc                                        ; $7e43: $03
    ld c, $8c                                     ; $7e44: $0e $8c
    jp hl                                         ; $7e46: $e9


    ld c, h                                       ; $7e47: $4c
    add [hl]                                      ; $7e48: $86
    add c                                         ; $7e49: $81
    and l                                         ; $7e4a: $a5
    sub h                                         ; $7e4b: $94
    db $ed                                        ; $7e4c: $ed
    ld [hl+], a                                   ; $7e4d: $22
    ld [hl], c                                    ; $7e4e: $71
    ld [hl], $fd                                  ; $7e4f: $36 $fd
    ld hl, sp-$0a                                 ; $7e51: $f8 $f6
    ld a, [hl+]                                   ; $7e53: $2a
    ld e, a                                       ; $7e54: $5f
    ld a, $fe                                     ; $7e55: $3e $fe
    rst $08                                       ; $7e57: $cf
    inc l                                         ; $7e58: $2c
    ld [hl], c                                    ; $7e59: $71
    adc b                                         ; $7e5a: $88
    nop                                           ; $7e5b: $00
    rst $08                                       ; $7e5c: $cf
    add hl, hl                                    ; $7e5d: $29
    dec d                                         ; $7e5e: $15
    ld a, $f2                                     ; $7e5f: $3e $f2
    adc a                                         ; $7e61: $8f
    inc d                                         ; $7e62: $14
    ret                                           ; $7e63: $c9


    db $ec                                        ; $7e64: $ec
    ld de, $6b8f                                  ; $7e65: $11 $8f $6b
    sbc $a6                                       ; $7e68: $de $a6
    rst $00                                       ; $7e6a: $c7
    xor h                                         ; $7e6b: $ac
    ld h, l                                       ; $7e6c: $65
    ld d, d                                       ; $7e6d: $52
    res 4, h                                      ; $7e6e: $cb $a4
    ld b, [hl]                                    ; $7e70: $46
    ld [$9aff], a                                 ; $7e71: $ea $ff $9a
    ld d, [hl]                                    ; $7e74: $56
    ld [hl-], a                                   ; $7e75: $32
    jr nc, jr_04f_7e1e                            ; $7e76: $30 $a6

    db $d3                                        ; $7e78: $d3
    pop de                                        ; $7e79: $d1
    ld c, $11                                     ; $7e7a: $0e $11
    ld h, b                                       ; $7e7c: $60
    ld c, h                                       ; $7e7d: $4c
    and a                                         ; $7e7e: $a7
    and e                                         ; $7e7f: $a3
    db $fd                                        ; $7e80: $fd
    ld de, $4f02                                  ; $7e81: $11 $02 $4f
    rst $28                                       ; $7e84: $ef
    jr z, jr_04f_7e26                             ; $7e85: $28 $9f

    dec a                                         ; $7e87: $3d
    and [hl]                                      ; $7e88: $a6
    ld d, a                                       ; $7e89: $57
    rst $10                                       ; $7e8a: $d7
    cp b                                          ; $7e8b: $b8
    ld d, e                                       ; $7e8c: $53
    rst $20                                       ; $7e8d: $e7
    ld c, e                                       ; $7e8e: $4b
    db $fc                                        ; $7e8f: $fc
    xor d                                         ; $7e90: $aa
    ld a, [hl-]                                   ; $7e91: $3a
    db $db                                        ; $7e92: $db
    ld b, e                                       ; $7e93: $43
    xor c                                         ; $7e94: $a9
    cp [hl]                                       ; $7e95: $be
    ld d, $ee                                     ; $7e96: $16 $ee
    ld [hl], c                                    ; $7e98: $71
    xor c                                         ; $7e99: $a9
    ld a, c                                       ; $7e9a: $79
    sbc e                                         ; $7e9b: $9b
    ld e, [hl]                                    ; $7e9c: $5e
    cp c                                          ; $7e9d: $b9
    rrca                                          ; $7e9e: $0f
    ld [hl], h                                    ; $7e9f: $74
    ld a, l                                       ; $7ea0: $7d
    adc $b0                                       ; $7ea1: $ce $b0
    and [hl]                                      ; $7ea3: $a6
    ld d, l                                       ; $7ea4: $55
    adc a                                         ; $7ea5: $8f
    db $e3                                        ; $7ea6: $e3
    db $dd                                        ; $7ea7: $dd
    rst $10                                       ; $7ea8: $d7
    ld h, c                                       ; $7ea9: $61
    ld l, e                                       ; $7eaa: $6b
    jr c, jr_04f_7eec                             ; $7eab: $38 $3f

    cp l                                          ; $7ead: $bd
    db $ec                                        ; $7eae: $ec
    ld l, h                                       ; $7eaf: $6c
    ld [hl-], a                                   ; $7eb0: $32
    ld [hl], l                                    ; $7eb1: $75
    ld l, d                                       ; $7eb2: $6a
    adc b                                         ; $7eb3: $88
    nop                                           ; $7eb4: $00
    rrca                                          ; $7eb5: $0f
    dec h                                         ; $7eb6: $25
    ld c, e                                       ; $7eb7: $4b
    add a                                         ; $7eb8: $87
    ld c, a                                       ; $7eb9: $4f
    adc [hl]                                      ; $7eba: $8e
    db $ec                                        ; $7ebb: $ec
    dec h                                         ; $7ebc: $25
    cp e                                          ; $7ebd: $bb
    ld a, [hl+]                                   ; $7ebe: $2a
    call nz, $d1d0                                ; $7ebf: $c4 $d0 $d1
    dec hl                                        ; $7ec2: $2b
    bit 7, [hl]                                   ; $7ec3: $cb $7e
    jp nc, Jump_04f_4fe3                          ; $7ec5: $d2 $e3 $4f

    ld e, b                                       ; $7ec8: $58
    add hl, sp                                    ; $7ec9: $39
    jp $879d                                      ; $7eca: $c3 $9d $87


    inc l                                         ; $7ecd: $2c
    ld a, e                                       ; $7ece: $7b
    and l                                         ; $7ecf: $a5
    ld c, b                                       ; $7ed0: $48
    ld [hl], l                                    ; $7ed1: $75
    sbc $bf                                       ; $7ed2: $de $bf
    rst $38                                       ; $7ed4: $ff
    rst $10                                       ; $7ed5: $d7
    ld c, b                                       ; $7ed6: $48
    rla                                           ; $7ed7: $17
    add hl, bc                                    ; $7ed8: $09
    add hl, de                                    ; $7ed9: $19
    push hl                                       ; $7eda: $e5
    or e                                          ; $7edb: $b3
    rst $00                                       ; $7edc: $c7
    db $f4                                        ; $7edd: $f4
    sbc d                                         ; $7ede: $9a
    sub [hl]                                      ; $7edf: $96
    adc b                                         ; $7ee0: $88
    ld [$20ab], a                                 ; $7ee1: $ea $ab $20
    ld [bc], a                                    ; $7ee4: $02
    ld c, a                                       ; $7ee5: $4f
    bit 1, [hl]                                   ; $7ee6: $cb $4e
    db $dd                                        ; $7ee8: $dd
    rst $38                                       ; $7ee9: $ff
    xor e                                         ; $7eea: $ab
    and a                                         ; $7eeb: $a7

jr_04f_7eec:
    sub l                                         ; $7eec: $95
    xor h                                         ; $7eed: $ac
    call c, Call_04f_7877                         ; $7eee: $dc $77 $78
    dec a                                         ; $7ef1: $3d
    jp c, $cf93                                   ; $7ef2: $da $93 $cf

    ld [hl], d                                    ; $7ef5: $72
    dec l                                         ; $7ef6: $2d
    ld a, [$fc4a]                                 ; $7ef7: $fa $4a $fc
    ret nc                                        ; $7efa: $d0

    and e                                         ; $7efb: $a3
    rst $08                                       ; $7efc: $cf
    and [hl]                                      ; $7efd: $a6
    add hl, de                                    ; $7efe: $19
    inc e                                         ; $7eff: $1c
    xor a                                         ; $7f00: $af
    inc a                                         ; $7f01: $3c
    ld h, [hl]                                    ; $7f02: $66
    add hl, hl                                    ; $7f03: $29
    adc b                                         ; $7f04: $88
    nop                                           ; $7f05: $00
    ld h, b                                       ; $7f06: $60
    adc [hl]                                      ; $7f07: $8e
    or e                                          ; $7f08: $b3
    ld l, c                                       ; $7f09: $69
    dec h                                         ; $7f0a: $25
    and e                                         ; $7f0b: $a3
    cp h                                          ; $7f0c: $bc
    or l                                          ; $7f0d: $b5
    or c                                          ; $7f0e: $b1
    ei                                            ; $7f0f: $fb
    ld a, a                                       ; $7f10: $7f
    xor l                                         ; $7f11: $ad
    db $f4                                        ; $7f12: $f4
    ld e, c                                       ; $7f13: $59
    ld b, e                                       ; $7f14: $43
    pop hl                                        ; $7f15: $e1
    ld b, b                                       ; $7f16: $40
    inc l                                         ; $7f17: $2c
    ld a, l                                       ; $7f18: $7d
    ld c, d                                       ; $7f19: $4a
    sub c                                         ; $7f1a: $91
    ld l, b                                       ; $7f1b: $68
    xor c                                         ; $7f1c: $a9
    ld sp, $5a6b                                  ; $7f1d: $31 $6b $5a
    push af                                       ; $7f20: $f5
    cp $91                                        ; $7f21: $fe $91
    ld a, l                                       ; $7f23: $7d
    reti                                          ; $7f24: $d9


    ld sp, hl                                     ; $7f25: $f9
    sbc [hl]                                      ; $7f26: $9e
    adc l                                         ; $7f27: $8d
    sub l                                         ; $7f28: $95
    ei                                            ; $7f29: $fb
    or h                                          ; $7f2a: $b4
    sub d                                         ; $7f2b: $92
    xor c                                         ; $7f2c: $a9
    ei                                            ; $7f2d: $fb
    ld a, a                                       ; $7f2e: $7f
    push af                                       ; $7f2f: $f5
    ld [$452b], sp                                ; $7f30: $08 $2b $45
    cp $15                                        ; $7f33: $fe $15
    dec b                                         ; $7f35: $05
    rlca                                          ; $7f36: $07
    or d                                          ; $7f37: $b2
    ld h, h                                       ; $7f38: $64
    ld [hl], $99                                  ; $7f39: $36 $99
    ld [c], a                                     ; $7f3b: $e2
    rst $00                                       ; $7f3c: $c7
    ld c, a                                       ; $7f3d: $4f
    dec sp                                        ; $7f3e: $3b
    xor b                                         ; $7f3f: $a8
    rst $10                                       ; $7f40: $d7
    sbc $5a                                       ; $7f41: $de $5a
    halt                                          ; $7f43: $76
    ld d, [hl]                                    ; $7f44: $56
    adc d                                         ; $7f45: $8a
    add h                                         ; $7f46: $84
    inc a                                         ; $7f47: $3c
    ld a, [de]                                    ; $7f48: $1a
    adc b                                         ; $7f49: $88
    db $f4                                        ; $7f4a: $f4
    cpl                                           ; $7f4b: $2f
    or c                                          ; $7f4c: $b1
    db $e3                                        ; $7f4d: $e3
    xor [hl]                                      ; $7f4e: $ae
    ld c, b                                       ; $7f4f: $48
    sbc [hl]                                      ; $7f50: $9e
    adc l                                         ; $7f51: $8d
    jp hl                                         ; $7f52: $e9


    rst $30                                       ; $7f53: $f7
    db $db                                        ; $7f54: $db
    ld a, [de]                                    ; $7f55: $1a
    ld h, c                                       ; $7f56: $61
    and l                                         ; $7f57: $a5
    ret z                                         ; $7f58: $c8

    cp a                                          ; $7f59: $bf
    and d                                         ; $7f5a: $a2
    xor d                                         ; $7f5b: $aa
    add a                                         ; $7f5c: $87
    di                                            ; $7f5d: $f3
    set 0, h                                      ; $7f5e: $cb $c4
    db $fc                                        ; $7f60: $fc
    sub d                                         ; $7f61: $92
    inc a                                         ; $7f62: $3c
    ld b, e                                       ; $7f63: $43
    sbc e                                         ; $7f64: $9b
    or a                                          ; $7f65: $b7
    ld bc, $4f11                                  ; $7f66: $01 $11 $4f
    ld l, a                                       ; $7f69: $6f
    adc $0e                                       ; $7f6a: $ce $0e
    rst $30                                       ; $7f6c: $f7
    sub b                                         ; $7f6d: $90
    db $f4                                        ; $7f6e: $f4
    or d                                          ; $7f6f: $b2
    adc $b7                                       ; $7f70: $ce $b7
    adc a                                         ; $7f72: $8f
    sub h                                         ; $7f73: $94
    call z, $4f86                                 ; $7f74: $cc $86 $4f
    xor a                                         ; $7f77: $af
    xor [hl]                                      ; $7f78: $ae
    sub l                                         ; $7f79: $95
    ei                                            ; $7f7a: $fb
    jr c, jr_04f_7fdb                             ; $7f7b: $38 $5e

    ld d, h                                       ; $7f7d: $54
    adc l                                         ; $7f7e: $8d
    or b                                          ; $7f7f: $b0
    ld d, d                                       ; $7f80: $52
    db $e4                                        ; $7f81: $e4
    ld e, a                                       ; $7f82: $5f
    ld d, c                                       ; $7f83: $51
    push de                                       ; $7f84: $d5
    adc a                                         ; $7f85: $8f
    db $10                                        ; $7f86: $10
    rrca                                          ; $7f87: $0f
    ld b, a                                       ; $7f88: $47
    rst $28                                       ; $7f89: $ef
    add sp, $11                                   ; $7f8a: $e8 $11
    ld d, [hl]                                    ; $7f8c: $56
    adc d                                         ; $7f8d: $8a
    db $fc                                        ; $7f8e: $fc
    dec hl                                        ; $7f8f: $2b
    xor d                                         ; $7f90: $aa
    ld e, d                                       ; $7f91: $5a

Call_04f_7f92:
    ld [$0f6c], a                                 ; $7f92: $ea $6c $0f
    and l                                         ; $7f95: $a5
    ld a, [$885a]                                 ; $7f96: $fa $5a $88
    nop                                           ; $7f99: $00
    jr jr_04f_7fc7                                ; $7f9a: $18 $2b

    ld b, l                                       ; $7f9c: $45
    adc $f6                                       ; $7f9d: $ce $f6
    ld d, b                                       ; $7f9f: $50
    db $dd                                        ; $7fa0: $dd
    inc l                                         ; $7fa1: $2c
    jr c, jr_04f_7ff4                             ; $7fa2: $38 $50

    rst $30                                       ; $7fa4: $f7
    rst $38                                       ; $7fa5: $ff
    jr jr_04f_7fc0                                ; $7fa6: $18 $18

    db $d3                                        ; $7fa8: $d3
    jp hl                                         ; $7fa9: $e9


    ld l, b                                       ; $7faa: $68
    sbc a                                         ; $7fab: $9f
    halt                                          ; $7fac: $76
    ld a, [$387f]                                 ; $7fad: $fa $7f $38
    ccf                                           ; $7fb0: $3f
    ld a, [hl]                                    ; $7fb1: $7e
    adc $92                                       ; $7fb2: $ce $92
    ld e, d                                       ; $7fb4: $5a
    jp c, Jump_04f_43b4                           ; $7fb5: $da $b4 $43

    inc b                                         ; $7fb8: $04
    rst $38                                       ; $7fb9: $ff
    rst $38                                       ; $7fba: $ff
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff

jr_04f_7fc0:
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff

jr_04f_7fc7:
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rst $38                                       ; $7fcf: $ff
    rst $38                                       ; $7fd0: $ff
    rst $38                                       ; $7fd1: $ff
    rst $38                                       ; $7fd2: $ff
    rst $38                                       ; $7fd3: $ff
    rst $38                                       ; $7fd4: $ff
    rst $38                                       ; $7fd5: $ff
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff

jr_04f_7fdb:
    rst $38                                       ; $7fdb: $ff
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff

jr_04f_7ff4:
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
