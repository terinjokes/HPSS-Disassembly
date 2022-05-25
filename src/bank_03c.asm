; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    inc a                                         ; $4000: $3c
    or $59                                        ; $4001: $f6 $59
    ld e, $be                                     ; $4003: $1e $be
    ld c, e                                       ; $4005: $4b
    inc de                                        ; $4006: $13
    ld l, a                                       ; $4007: $6f
    nop                                           ; $4008: $00
    ld bc, $f7aa                                  ; $4009: $01 $aa $f7
    ld a, l                                       ; $400c: $7d
    rst $30                                       ; $400d: $f7
    call Call_03c_4e45                            ; $400e: $cd $45 $4e
    dec de                                        ; $4011: $1b
    ld sp, $6752                                  ; $4012: $31 $52 $67
    ld [de], a                                    ; $4015: $12
    ld h, a                                       ; $4016: $67
    ld c, a                                       ; $4017: $4f
    xor c                                         ; $4018: $a9
    ld e, e                                       ; $4019: $5b
    ld [hl+], a                                   ; $401a: $22
    pop hl                                        ; $401b: $e1
    and e                                         ; $401c: $a3
    adc $e1                                       ; $401d: $ce $e1
    xor a                                         ; $401f: $af
    ld a, [hl]                                    ; $4020: $7e
    ld l, c                                       ; $4021: $69
    ld a, [$e69d]                                 ; $4022: $fa $9d $e6
    ld e, e                                       ; $4025: $5b
    add hl, hl                                    ; $4026: $29
    ld a, a                                       ; $4027: $7f
    inc bc                                        ; $4028: $03
    db $dd                                        ; $4029: $dd
    cpl                                           ; $402a: $2f
    ld [hl], c                                    ; $402b: $71
    ld d, l                                       ; $402c: $55
    pop hl                                        ; $402d: $e1
    sra b                                         ; $402e: $cb $28
    cp a                                          ; $4030: $bf
    ld a, [bc]                                    ; $4031: $0a
    ei                                            ; $4032: $fb

jr_03c_4033:
    rst $30                                       ; $4033: $f7
    inc b                                         ; $4034: $04
    or $2f                                        ; $4035: $f6 $2f
    ld h, d                                       ; $4037: $62
    add l                                         ; $4038: $85
    ld c, a                                       ; $4039: $4f
    ld e, e                                       ; $403a: $5b
    ld d, l                                       ; $403b: $55
    adc h                                         ; $403c: $8c
    rra                                           ; $403d: $1f
    add hl, sp                                    ; $403e: $39
    sub e                                         ; $403f: $93
    ld e, b                                       ; $4040: $58
    scf                                           ; $4041: $37
    jr z, jr_03c_4033                             ; $4042: $28 $ef

    ld e, l                                       ; $4044: $5d
    sub h                                         ; $4045: $94
    db $d3                                        ; $4046: $d3
    xor d                                         ; $4047: $aa
    adc e                                         ; $4048: $8b
    jp hl                                         ; $4049: $e9


    ld [hl], e                                    ; $404a: $73
    sbc d                                         ; $404b: $9a
    dec e                                         ; $404c: $1d
    pop hl                                        ; $404d: $e1
    db $ec                                        ; $404e: $ec
    add hl, hl                                    ; $404f: $29
    sbc l                                         ; $4050: $9d
    inc l                                         ; $4051: $2c
    add hl, bc                                    ; $4052: $09
    reti                                          ; $4053: $d9


    db $fc                                        ; $4054: $fc
    dec c                                         ; $4055: $0d
    nop                                           ; $4056: $00
    cp l                                          ; $4057: $bd
    add e                                         ; $4058: $83
    call $c2a4                                    ; $4059: $cd $a4 $c2
    rla                                           ; $405c: $17
    ld a, h                                       ; $405d: $7c
    ld b, e                                       ; $405e: $43
    ccf                                           ; $405f: $3f
    sub [hl]                                      ; $4060: $96
    ld d, l                                       ; $4061: $55
    ld a, a                                       ; $4062: $7f
    dec h                                         ; $4063: $25
    ld h, l                                       ; $4064: $65
    sbc [hl]                                      ; $4065: $9e
    ld d, e                                       ; $4066: $53
    ld h, d                                       ; $4067: $62
    ld a, h                                       ; $4068: $7c
    ld c, c                                       ; $4069: $49
    cp l                                          ; $406a: $bd
    ld bc, $5797                                  ; $406b: $01 $97 $57
    jp $a617                                      ; $406e: $c3 $17 $a6


    xor h                                         ; $4071: $ac
    and h                                         ; $4072: $a4
    ld l, $64                                     ; $4073: $2e $64
    ld c, c                                       ; $4075: $49
    cp l                                          ; $4076: $bd
    ld bc, $fd17                                  ; $4077: $01 $17 $fd
    ld b, d                                       ; $407a: $42
    ld l, c                                       ; $407b: $69
    dec [hl]                                      ; $407c: $35
    push hl                                       ; $407d: $e5
    ld d, a                                       ; $407e: $57
    ld l, b                                       ; $407f: $68
    ld c, h                                       ; $4080: $4c
    or e                                          ; $4081: $b3
    push bc                                       ; $4082: $c5
    ld a, c                                       ; $4083: $79
    adc $9e                                       ; $4084: $ce $9e
    jp nc, $92c9                                  ; $4086: $d2 $c9 $92

    sub b                                         ; $4089: $90
    call $ba8f                                    ; $408a: $cd $8f $ba
    and $89                                       ; $408d: $e6 $89
    or c                                          ; $408f: $b1
    ld d, l                                       ; $4090: $55
    scf                                           ; $4091: $37
    di                                            ; $4092: $f3
    and [hl]                                      ; $4093: $a6
    reti                                          ; $4094: $d9


    ld [c], a                                     ; $4095: $e2
    inc a                                         ; $4096: $3c
    rla                                           ; $4097: $17
    sub [hl]                                      ; $4098: $96
    rst $00                                       ; $4099: $c7
    ld hl, sp+$7a                                 ; $409a: $f8 $7a
    rst $28                                       ; $409c: $ef
    and d                                         ; $409d: $a2
    rst $10                                       ; $409e: $d7
    add l                                         ; $409f: $85
    push hl                                       ; $40a0: $e5
    ld sp, $4ebe                                  ; $40a1: $31 $be $4e
    inc de                                        ; $40a4: $13
    rst $10                                       ; $40a5: $d7
    db $10                                        ; $40a6: $10
    ld [de], a                                    ; $40a7: $12
    ld a, [$8c46]                                 ; $40a8: $fa $46 $8c
    call nc, Call_000_3ab5                        ; $40ab: $d4 $b5 $3a
    ld c, h                                       ; $40ae: $4c
    adc c                                         ; $40af: $89
    adc a                                         ; $40b0: $8f
    sub c                                         ; $40b1: $91
    ld a, [hl-]                                   ; $40b2: $3a
    ld [c], a                                     ; $40b3: $e2
    ld l, d                                       ; $40b4: $6a

jr_03c_40b5:
    ld h, a                                       ; $40b5: $67
    add d                                         ; $40b6: $82
    xor a                                         ; $40b7: $af
    xor e                                         ; $40b8: $ab
    or [hl]                                       ; $40b9: $b6
    sub l                                         ; $40ba: $95
    jp c, $d795                                   ; $40bb: $da $95 $d7

    ld a, c                                       ; $40be: $79
    ld l, $4c                                     ; $40bf: $2e $4c
    db $d3                                        ; $40c1: $d3
    ld [de], a                                    ; $40c2: $12
    xor c                                         ; $40c3: $a9
    ldh a, [$bd]                                  ; $40c4: $f0 $bd
    jp c, $e2cc                                   ; $40c6: $da $cc $e2

    jr c, jr_03c_40b5                             ; $40c9: $38 $ea

    xor d                                         ; $40cb: $aa
    dec e                                         ; $40cc: $1d
    ld a, [$89af]                                 ; $40cd: $fa $af $89
    pop af                                        ; $40d0: $f1
    bit 7, h                                      ; $40d1: $cb $7c
    db $d3                                        ; $40d3: $d3
    ret c                                         ; $40d4: $d8

    db $10                                        ; $40d5: $10
    ld [hl], d                                    ; $40d6: $72
    ld c, l                                       ; $40d7: $4d
    jp z, Jump_000_0deb                           ; $40d8: $ca $eb $0d

    nop                                           ; $40db: $00
    db $dd                                        ; $40dc: $dd
    xor [hl]                                      ; $40dd: $ae
    adc $59                                       ; $40de: $ce $59
    ld a, a                                       ; $40e0: $7f
    dec h                                         ; $40e1: $25
    and a                                         ; $40e2: $a7
    ld d, l                                       ; $40e3: $55
    ld a, e                                       ; $40e4: $7b
    nop                                           ; $40e5: $00
    cp l                                          ; $40e6: $bd
    ld a, [$ebf5]                                 ; $40e7: $fa $f5 $eb
    ld [hl], a                                    ; $40ea: $77
    inc bc                                        ; $40eb: $03
    sub a                                         ; $40ec: $97
    reti                                          ; $40ed: $d9


    add h                                         ; $40ee: $84
    call Call_000_3ce4                            ; $40ef: $cd $e4 $3c
    rst $00                                       ; $40f2: $c7
    ld d, d                                       ; $40f3: $52
    cp $06                                        ; $40f4: $fe $06
    rla                                           ; $40f6: $17
    db $eb                                        ; $40f7: $eb
    ld a, [hl+]                                   ; $40f8: $2a
    ld l, c                                       ; $40f9: $69
    db $dd                                        ; $40fa: $dd
    rst $08                                       ; $40fb: $cf
    cp a                                          ; $40fc: $bf
    db $ec                                        ; $40fd: $ec
    ld h, a                                       ; $40fe: $67
    sbc $ff                                       ; $40ff: $de $ff
    inc e                                         ; $4101: $1c
    and $1c                                       ; $4102: $e6 $1c
    cp $ec                                        ; $4104: $fe $ec
    ret nc                                        ; $4106: $d0

    inc [hl]                                      ; $4107: $34
    ld d, e                                       ; $4108: $53
    ld [hl-], a                                   ; $4109: $32
    and h                                         ; $410a: $a4
    ld l, a                                       ; $410b: $6f
    ccf                                           ; $410c: $3f
    rst $08                                       ; $410d: $cf
    dec [hl]                                      ; $410e: $35
    add h                                         ; $410f: $84
    add h                                         ; $4110: $84
    cp [hl]                                       ; $4111: $be
    ld de, $f523                                  ; $4112: $11 $23 $f5
    ld e, [hl]                                    ; $4115: $5e
    ld b, b                                       ; $4116: $40
    ld a, d                                       ; $4117: $7a
    xor c                                         ; $4118: $a9
    jp c, Jump_03c_4e74                           ; $4119: $da $74 $4e

    ld e, a                                       ; $411c: $5f
    ld d, [hl]                                    ; $411d: $56
    ld e, [hl]                                    ; $411e: $5e
    rst $10                                       ; $411f: $d7
    adc d                                         ; $4120: $8a
    db $d3                                        ; $4121: $d3
    jr z, jr_03c_4193                             ; $4122: $28 $6f

    ld e, d                                       ; $4124: $5a
    ld [hl+], a                                   ; $4125: $22
    ld [hl], l                                    ; $4126: $75
    pop hl                                        ; $4127: $e1
    res 5, a                                      ; $4128: $cb $af
    ld a, c                                       ; $412a: $79
    ld h, d                                       ; $412b: $62
    ld l, h                                       ; $412c: $6c
    push de                                       ; $412d: $d5
    call $ccbc                                    ; $412e: $cd $bc $cc
    cp b                                          ; $4131: $b8
    cpl                                           ; $4132: $2f
    ld d, $d7                                     ; $4133: $16 $d7
    jr z, @+$0d                                   ; $4135: $28 $0b

    bit 4, e                                      ; $4137: $cb $63
    db $fc                                        ; $4139: $fc
    dec de                                        ; $413a: $1b
    nop                                           ; $413b: $00
    cp l                                          ; $413c: $bd
    db $dd                                        ; $413d: $dd
    and e                                         ; $413e: $a3
    rst $08                                       ; $413f: $cf
    ld de, $624d                                  ; $4140: $11 $4d $62
    sub h                                         ; $4143: $94
    xor d                                         ; $4144: $aa
    ld c, l                                       ; $4145: $4d
    rst $20                                       ; $4146: $e7
    ldh a, [rNR22]                                ; $4147: $f0 $17
    sub [hl]                                      ; $4149: $96
    rst $00                                       ; $414a: $c7
    ld hl, sp+$73                                 ; $414b: $f8 $73
    sra b                                         ; $414d: $cb $28
    cp c                                          ; $414f: $b9
    add [hl]                                      ; $4150: $86
    sub b                                         ; $4151: $90
    ret nc                                        ; $4152: $d0

    scf                                           ; $4153: $37
    ld h, d                                       ; $4154: $62
    db $e4                                        ; $4155: $e4
    inc l                                         ; $4156: $2c
    adc [hl]                                      ; $4157: $8e
    jp $d09c                                      ; $4158: $c3 $9c $d0


    inc h                                         ; $415b: $24
    ld h, [hl]                                    ; $415c: $66
    ld a, a                                       ; $415d: $7f
    db $d3                                        ; $415e: $d3
    push de                                       ; $415f: $d5
    inc d                                         ; $4160: $14
    cp [hl]                                       ; $4161: $be
    sub b                                         ; $4162: $90
    ret nc                                        ; $4163: $d0

    ei                                            ; $4164: $fb
    ld a, [c]                                     ; $4165: $f2
    ei                                            ; $4166: $fb
    sub l                                         ; $4167: $95
    sbc a                                         ; $4168: $9f
    dec e                                         ; $4169: $1d
    sbc d                                         ; $416a: $9a
    ld h, [hl]                                    ; $416b: $66
    ld c, d                                       ; $416c: $4a
    add [hl]                                      ; $416d: $86
    db $f4                                        ; $416e: $f4
    db $ed                                        ; $416f: $ed
    rst $28                                       ; $4170: $ef
    dec b                                         ; $4171: $05
    ld d, d                                       ; $4172: $52
    cp d                                          ; $4173: $ba
    sub $3c                                       ; $4174: $d6 $3c
    ld sp, $eab6                                  ; $4176: $31 $b6 $ea
    ld h, [hl]                                    ; $4179: $66
    sbc $ff                                       ; $417a: $de $ff
    xor h                                         ; $417c: $ac
    inc sp                                        ; $417d: $33
    push hl                                       ; $417e: $e5
    or l                                          ; $417f: $b5
    ld d, l                                       ; $4180: $55
    scf                                           ; $4181: $37
    di                                            ; $4182: $f3
    cp $e7                                        ; $4183: $fe $e7
    cp c                                          ; $4185: $b9
    ld [$fa94], a                                 ; $4186: $ea $94 $fa
    ld d, a                                       ; $4189: $57
    ld [hl], a                                    ; $418a: $77
    ld b, c                                       ; $418b: $41
    call $bdfc                                    ; $418c: $cd $fc $bd
    sbc $09                                       ; $418f: $de $09
    pop de                                        ; $4191: $d1
    xor a                                         ; $4192: $af

jr_03c_4193:
    ld [c], a                                     ; $4193: $e2
    xor b                                         ; $4194: $a8
    ld d, c                                       ; $4195: $51
    ld a, [hl]                                    ; $4196: $7e
    halt                                          ; $4197: $76
    ld l, b                                       ; $4198: $68
    sbc d                                         ; $4199: $9a
    add hl, hl                                    ; $419a: $29
    add hl, de                                    ; $419b: $19
    jp nc, $9fb7                                  ; $419c: $d2 $b7 $9f

    ld [hl], l                                    ; $419f: $75
    dec e                                         ; $41a0: $1d
    and a                                         ; $41a1: $a7
    and $fd                                       ; $41a2: $e6 $fd
    jp nz, $18f2                                  ; $41a4: $c2 $f2 $18

    ld e, a                                       ; $41a7: $5f
    ld b, a                                       ; $41a8: $47
    inc e                                         ; $41a9: $1c
    set 7, d                                      ; $41aa: $cb $fa
    cp l                                          ; $41ac: $bd
    ld a, b                                       ; $41ad: $78
    dec de                                        ; $41ae: $1b
    sbc h                                         ; $41af: $9c
    ld h, a                                       ; $41b0: $67
    sbc c                                         ; $41b1: $99
    ret                                           ; $41b2: $c9


    ld b, d                                       ; $41b3: $42
    xor b                                         ; $41b4: $a8
    push hl                                       ; $41b5: $e5
    cp l                                          ; $41b6: $bd
    cp [hl]                                       ; $41b7: $be
    add hl, sp                                    ; $41b8: $39
    ld h, d                                       ; $41b9: $62
    sub h                                         ; $41ba: $94
    xor d                                         ; $41bb: $aa
    ld c, l                                       ; $41bc: $4d
    ld b, a                                       ; $41bd: $47
    inc e                                         ; $41be: $1c
    set 1, [hl]                                   ; $41bf: $cb $ce
    ld c, [hl]                                    ; $41c1: $4e
    or l                                          ; $41c2: $b5
    jr c, jr_03c_41f3                             ; $41c3: $38 $2e

    ld b, b                                       ; $41c5: $40
    ld [hl-], a                                   ; $41c6: $32
    ret c                                         ; $41c7: $d8

    ld a, [hl-]                                   ; $41c8: $3a
    call $bde7                                    ; $41c9: $cd $e7 $bd
    xor e                                         ; $41cc: $ab
    add a                                         ; $41cd: $87
    cp c                                          ; $41ce: $b9
    ld c, d                                       ; $41cf: $4a
    sub [hl]                                      ; $41d0: $96
    ld c, d                                       ; $41d1: $4a
    ld d, a                                       ; $41d2: $57
    db $d3                                        ; $41d3: $d3
    dec b                                         ; $41d4: $05
    ld e, a                                       ; $41d5: $5f
    db $e3                                        ; $41d6: $e3
    rst $08                                       ; $41d7: $cf
    ld [c], a                                     ; $41d8: $e2
    cp b                                          ; $41d9: $b8
    ld c, b                                       ; $41da: $48
    add h                                         ; $41db: $84
    cp d                                          ; $41dc: $ba
    sbc d                                         ; $41dd: $9a
    xor [hl]                                      ; $41de: $ae
    cp h                                          ; $41df: $bc
    ld c, [hl]                                    ; $41e0: $4e
    reti                                          ; $41e1: $d9


    ld [hl], h                                    ; $41e2: $74
    ld h, c                                       ; $41e3: $61
    ld a, c                                       ; $41e4: $79
    adc h                                         ; $41e5: $8c
    xor a                                         ; $41e6: $af
    di                                            ; $41e7: $f3
    ld e, h                                       ; $41e8: $5c
    ld sp, hl                                     ; $41e9: $f9
    sub l                                         ; $41ea: $95
    and [hl]                                      ; $41eb: $a6
    pop af                                        ; $41ec: $f1
    ld h, a                                       ; $41ed: $67
    ld [hl], c                                    ; $41ee: $71
    ld e, h                                       ; $41ef: $5c
    ld [$9c82], a                                 ; $41f0: $ea $82 $9c

jr_03c_41f3:
    ld a, a                                       ; $41f3: $7f
    sbc a                                         ; $41f4: $9f
    scf                                           ; $41f5: $37
    nop                                           ; $41f6: $00
    ld bc, $9e8e                                  ; $41f7: $01 $8e $9e
    ld a, [hl-]                                   ; $41fa: $3a
    dec h                                         ; $41fb: $25
    db $e4                                        ; $41fc: $e4
    sbc d                                         ; $41fd: $9a
    call nc, Call_03c_4f84                        ; $41fe: $d4 $84 $4f
    db $db                                        ; $4201: $db
    inc l                                         ; $4202: $2c
    xor [hl]                                      ; $4203: $ae
    ld d, c                                       ; $4204: $51
    xor b                                         ; $4205: $a8
    rst $30                                       ; $4206: $f7
    xor [hl]                                      ; $4207: $ae
    cp $09                                        ; $4208: $fe $09
    ld c, l                                       ; $420a: $4d
    ld h, d                                       ; $420b: $62
    or $37                                        ; $420c: $f6 $37
    add hl, sp                                    ; $420e: $39

jr_03c_420f:
    di                                            ; $420f: $f3
    jp c, $d316                                   ; $4210: $da $16 $d3

    cp a                                          ; $4213: $bf
    xor [hl]                                      ; $4214: $ae
    cp h                                          ; $4215: $bc
    ld l, $2c                                     ; $4216: $2e $2c
    adc a                                         ; $4218: $8f
    pop af                                        ; $4219: $f1
    push af                                       ; $421a: $f5
    ld b, $7d                                     ; $421b: $06 $7d
    inc de                                        ; $421d: $13
    ld a, $ea                                     ; $421e: $3e $ea
    ld l, d                                       ; $4220: $6a
    or $4b                                        ; $4221: $f6 $4b
    sbc c                                         ; $4223: $99
    push bc                                       ; $4224: $c5
    ld [hl], c                                    ; $4225: $71
    dec h                                         ; $4226: $25
    rst $30                                       ; $4227: $f7
    and c                                         ; $4228: $a1
    db $10                                        ; $4229: $10
    db $fd                                        ; $422a: $fd
    rst $08                                       ; $422b: $cf
    sbc d                                         ; $422c: $9a
    db $d3                                        ; $422d: $d3
    inc l                                         ; $422e: $2c
    ld a, c                                       ; $422f: $79
    inc bc                                        ; $4230: $03
    db $dd                                        ; $4231: $dd
    ld a, [$22e6]                                 ; $4232: $fa $e6 $22
    ld h, a                                       ; $4235: $67
    jp z, $a857                                   ; $4236: $ca $57 $a8

    and e                                         ; $4239: $a3
    add [hl]                                      ; $423a: $86
    dec c                                         ; $423b: $0d
    ld e, a                                       ; $423c: $5f
    ld a, e                                       ; $423d: $7b
    nop                                           ; $423e: $00
    cp l                                          ; $423f: $bd
    or e                                          ; $4240: $b3
    adc $59                                       ; $4241: $ce $59
    ld e, h                                       ; $4243: $5c
    and e                                         ; $4244: $a3
    cp h                                          ; $4245: $bc
    sbc $00                                       ; $4246: $de $00
    or $af                                        ; $4248: $f6 $af
    pop af                                        ; $424a: $f1
    ld d, a                                       ; $424b: $57
    inc e                                         ; $424c: $1c
    and c                                         ; $424d: $a1
    add h                                         ; $424e: $84
    rst $08                                       ; $424f: $cf
    cp $45                                        ; $4250: $fe $45
    xor h                                         ; $4252: $ac
    scf                                           ; $4253: $37
    nop                                           ; $4254: $00
    rst $20                                       ; $4255: $e7
    or b                                          ; $4256: $b0
    ld b, e                                       ; $4257: $43
    or c                                          ; $4258: $b1
    ld a, c                                       ; $4259: $79
    ld e, l                                       ; $425a: $5d
    db $dd                                        ; $425b: $dd
    db $e4                                        ; $425c: $e4
    ld h, l                                       ; $425d: $65
    push de                                       ; $425e: $d5
    adc [hl]                                      ; $425f: $8e
    ld a, [c]                                     ; $4260: $f2
    ldh a, [$d9]                                  ; $4261: $f0 $d9
    cp a                                          ; $4263: $bf
    adc b                                         ; $4264: $88
    push af                                       ; $4265: $f5
    ld b, $bd                                     ; $4266: $06 $bd
    inc l                                         ; $4268: $2c
    adc $66                                       ; $4269: $ce $66
    sbc b                                         ; $426b: $98
    dec bc                                        ; $426c: $0b
    cp [hl]                                       ; $426d: $be
    ld [hl], l                                    ; $426e: $75
    ld h, c                                       ; $426f: $61
    ld a, c                                       ; $4270: $79
    adc h                                         ; $4271: $8c
    xor a                                         ; $4272: $af
    ldh a, [$d9]                                  ; $4273: $f0 $d9
    cp a                                          ; $4275: $bf
    adc b                                         ; $4276: $88
    push af                                       ; $4277: $f5
    ld b, $81                                     ; $4278: $06 $81
    sbc h                                         ; $427a: $9c
    cp d                                          ; $427b: $ba
    jr nc, jr_03c_420f                            ; $427c: $30 $91

    or e                                          ; $427e: $b3
    jr c, jr_03c_42cf                             ; $427f: $38 $4e

    cp c                                          ; $4281: $b9
    jr z, jr_03c_42a3                             ; $4282: $28 $1f

    ld a, a                                       ; $4284: $7f

Call_03c_4285:
    sbc [hl]                                      ; $4285: $9e
    ld [hl], e                                    ; $4286: $73
    ld hl, sp-$75                                 ; $4287: $f8 $8b
    cpl                                           ; $4289: $2f
    db $fc                                        ; $428a: $fc
    ld de, $a456                                  ; $428b: $11 $56 $a4
    or h                                          ; $428e: $b4
    inc d                                         ; $428f: $14
    ld hl, sp-$14                                 ; $4290: $f8 $ec
    ld e, a                                       ; $4292: $5f
    call nz, Call_000_037a                        ; $4293: $c4 $7a $03
    db $dd                                        ; $4296: $dd
    ld a, e                                       ; $4297: $7b
    daa                                           ; $4298: $27
    and [hl]                                      ; $4299: $a6
    and c                                         ; $429a: $a1
    adc $e1                                       ; $429b: $ce $e1
    ld a, [hl-]                                   ; $429d: $3a
    adc [hl]                                      ; $429e: $8e
    jr c, jr_03c_430e                             ; $429f: $38 $6d

    or c                                          ; $42a1: $b1
    push hl                                       ; $42a2: $e5

jr_03c_42a3:
    jp nz, Jump_03c_5f97                          ; $42a3: $c2 $97 $5f

    rst $00                                       ; $42a6: $c7
    xor c                                         ; $42a7: $a9
    ld a, c                                       ; $42a8: $79
    ld e, c                                       ; $42a9: $59
    ld e, b                                       ; $42aa: $58
    ld e, $e3                                     ; $42ab: $1e $e3
    db $eb                                        ; $42ad: $eb
    adc b                                         ; $42ae: $88
    ld h, e                                       ; $42af: $63
    ld e, c                                       ; $42b0: $59
    cp a                                          ; $42b1: $bf
    rla                                           ; $42b2: $17
    ld l, a                                       ; $42b3: $6f
    add e                                         ; $42b4: $83
    di                                            ; $42b5: $f3
    inc l                                         ; $42b6: $2c
    inc sp                                        ; $42b7: $33
    ld e, c                                       ; $42b8: $59
    ld [$ecb5], sp                                ; $42b9: $08 $b5 $ec
    add hl, bc                                    ; $42bc: $09
    nop                                           ; $42bd: $00
    ld h, a                                       ; $42be: $67
    dec sp                                        ; $42bf: $3b
    dec [hl]                                      ; $42c0: $35
    rst $28                                       ; $42c1: $ef
    rst $10                                       ; $42c2: $d7
    ld l, c                                       ; $42c3: $69
    call nz, $1fd5                                ; $42c4: $c4 $d5 $1f
    ld e, a                                       ; $42c7: $5f
    rst $20                                       ; $42c8: $e7
    cp c                                          ; $42c9: $b9
    ld h, b                                       ; $42ca: $60
    and e                                         ; $42cb: $a3
    ld [hl], h                                    ; $42cc: $74
    ld a, [hl]                                    ; $42cd: $7e
    ld h, c                                       ; $42ce: $61

jr_03c_42cf:
    sbc d                                         ; $42cf: $9a
    ld e, h                                       ; $42d0: $5c
    ldh a, [$3b]                                  ; $42d1: $f0 $3b
    dec l                                         ; $42d3: $2d
    cp d                                          ; $42d4: $ba
    cpl                                           ; $42d5: $2f
    call nc, $817b                                ; $42d6: $d4 $7b $81
    adc c                                         ; $42d9: $89
    inc sp                                        ; $42da: $33
    ld e, c                                       ; $42db: $59
    rst $20                                       ; $42dc: $e7
    ld e, d                                       ; $42dd: $5a
    db $fd                                        ; $42de: $fd
    ld c, b                                       ; $42df: $48
    ld e, l                                       ; $42e0: $5d
    ld hl, sp-$0e                                 ; $42e1: $f8 $f2
    dec hl                                        ; $42e3: $2b
    xor a                                         ; $42e4: $af
    dec bc                                        ; $42e5: $0b
    bit 4, e                                      ; $42e6: $cb $63
    ld a, h                                       ; $42e8: $7c
    sbc l                                         ; $42e9: $9d
    ld [hl], l                                    ; $42ea: $75
    add hl, de                                    ; $42eb: $19
    dec h                                         ; $42ec: $25
    ld [hl], l                                    ; $42ed: $75

jr_03c_42ee:
    dec c                                         ; $42ee: $0d
    ld hl, $6fa1                                  ; $42ef: $21 $a1 $6f
    call nz, $9d48                                ; $42f2: $c4 $48 $9d
    rst $20                                       ; $42f5: $e7
    jp nz, Jump_000_2d34                          ; $42f6: $c2 $34 $2d

    sub c                                         ; $42f9: $91
    ld a, d                                       ; $42fa: $7a
    inc bc                                        ; $42fb: $03
    ld bc, $1c94                                  ; $42fc: $01 $94 $1c
    and $b2                                       ; $42ff: $e6 $b2
    ld d, h                                       ; $4301: $54
    sbc d                                         ; $4302: $9a
    xor a                                         ; $4303: $af
    jp c, Jump_03c_6174                           ; $4304: $da $74 $61

    ld [hl+], a                                   ; $4307: $22
    dec h                                         ; $4308: $25
    ld [hl], l                                    ; $4309: $75
    dec h                                         ; $430a: $25
    ld [hl], l                                    ; $430b: $75
    sub b                                         ; $430c: $90
    ld a, e                                       ; $430d: $7b

jr_03c_430e:
    adc h                                         ; $430e: $8c
    call nc, Call_000_2e79                        ; $430f: $d4 $79 $2e
    ld l, h                                       ; $4312: $6c
    inc l                                         ; $4313: $2c
    di                                            ; $4314: $f3
    sbc h                                         ; $4315: $9c
    sub a                                         ; $4316: $97
    add a                                         ; $4317: $87
    ld l, h                                       ; $4318: $6c
    ld [hl], c                                    ; $4319: $71
    ld e, a                                       ; $431a: $5f
    ld h, [hl]                                    ; $431b: $66
    ld [de], a                                    ; $431c: $12
    and d                                         ; $431d: $a2
    sub h                                         ; $431e: $94
    rst $10                                       ; $431f: $d7
    ld a, e                                       ; $4320: $7b
    cp l                                          ; $4321: $bd
    ld a, [bc]                                    ; $4322: $0a
    db $e4                                        ; $4323: $e4
    ldh a, [$75]                                  ; $4324: $f0 $75
    ld h, c                                       ; $4326: $61
    ld a, c                                       ; $4327: $79
    adc h                                         ; $4328: $8c
    xor a                                         ; $4329: $af
    dec bc                                        ; $432a: $0b
    dec e                                         ; $432b: $1d
    dec a                                         ; $432c: $3d
    ld [hl], c                                    ; $432d: $71
    ld c, d                                       ; $432e: $4a
    ld e, c                                       ; $432f: $59
    ret z                                         ; $4330: $c8

    jp nc, Jump_03c_4920                          ; $4331: $d2 $20 $49

    ld a, l                                       ; $4334: $7d
    cp l                                          ; $4335: $bd
    ld bc, $0ff6                                  ; $4336: $01 $f6 $0f
    ld c, c                                       ; $4339: $49
    di                                            ; $433a: $f3
    ldh a, [$75]                                  ; $433b: $f0 $75
    rst $30                                       ; $433d: $f7
    or [hl]                                       ; $433e: $b6
    add sp, $39                                   ; $433f: $e8 $39
    ld [$ae1c], a                                 ; $4341: $ea $1c $ae
    db $e3                                        ; $4344: $e3
    adc b                                         ; $4345: $88
    db $d3                                        ; $4346: $d3
    ld d, $5b                                     ; $4347: $16 $5b
    ld l, $7c                                     ; $4349: $2e $7c
    ld sp, hl                                     ; $434b: $f9
    ld de, $624d                                  ; $434c: $11 $4d $62
    sub h                                         ; $434f: $94
    sub a                                         ; $4350: $97
    add l                                         ; $4351: $85
    push hl                                       ; $4352: $e5
    ld sp, $8ebe                                  ; $4353: $31 $be $8e
    jr c, jr_03c_42ee                             ; $4356: $38 $96

    push af                                       ; $4358: $f5
    ld a, e                                       ; $4359: $7b
    pop af                                        ; $435a: $f1
    ld [hl], $d8                                  ; $435b: $36 $d8
    inc de                                        ; $435d: $13
    nop                                           ; $435e: $00
    db $dd                                        ; $435f: $dd
    db $ed                                        ; $4360: $ed
    inc [hl]                                      ; $4361: $34
    halt                                          ; $4362: $76
    jp hl                                         ; $4363: $e9


    ld c, d                                       ; $4364: $4a
    ld hl, $fa3e                                  ; $4365: $21 $3e $fa
    ld e, h                                       ; $4368: $5c
    ld [hl], h                                    ; $4369: $74
    inc hl                                        ; $436a: $23

jr_03c_436b:
    sbc d                                         ; $436b: $9a
    ld h, [hl]                                    ; $436c: $66
    ld c, d                                       ; $436d: $4a
    add [hl]                                      ; $436e: $86
    db $f4                                        ; $436f: $f4
    db $ed                                        ; $4370: $ed
    pop hl                                        ; $4371: $e1
    xor e                                         ; $4372: $ab
    ld d, b                                       ; $4373: $50
    db $fc                                        ; $4374: $fc
    ei                                            ; $4375: $fb
    sbc [hl]                                      ; $4376: $9e
    db $eb                                        ; $4377: $eb
    db $d3                                        ; $4378: $d3
    db $e4                                        ; $4379: $e4
    ld b, a                                       ; $437a: $47
    ld e, h                                       ; $437b: $5c
    ld a, c                                       ; $437c: $79
    ld e, l                                       ; $437d: $5d
    db $fd                                        ; $437e: $fd
    pop af                                        ; $437f: $f1
    ld [hl], l                                    ; $4380: $75
    sbc [hl]                                      ; $4381: $9e
    dec bc                                        ; $4382: $0b
    ld [hl], $4a                                  ; $4383: $36 $4a
    rst $20                                       ; $4385: $e7
    ld h, a                                       ; $4386: $67
    ld [hl], c                                    ; $4387: $71
    ld e, h                                       ; $4388: $5c
    add l                                         ; $4389: $85
    jp nc, Jump_000_0ba5                          ; $438a: $d2 $a5 $0b

    ld d, e                                       ; $438d: $53
    ld d, $d3                                     ; $438e: $16 $d3
    cp a                                          ; $4390: $bf
    ld l, $7c                                     ; $4391: $2e $7c
    adc c                                         ; $4393: $89
    call nc, Call_03c_577b                        ; $4394: $d4 $7b $57
    or h                                          ; $4397: $b4
    ld a, c                                       ; $4398: $79
    dec de                                        ; $4399: $1b
    inc de                                        ; $439a: $13
    cp a                                          ; $439b: $bf
    adc $85                                       ; $439c: $ce $85
    add hl, hl                                    ; $439e: $29
    ei                                            ; $439f: $fb
    and b                                         ; $43a0: $a0
    dec c                                         ; $43a1: $0d
    ld a, h                                       ; $43a2: $7c
    ld hl, $1725                                  ; $43a3: $21 $25 $17
    ld a, h                                       ; $43a6: $7c
    jp Jump_03c_6351                              ; $43a7: $c3 $51 $63


    ld a, [bc]                                    ; $43aa: $0a
    ld a, [hl-]                                   ; $43ab: $3a
    rst $38                                       ; $43ac: $ff
    or d                                          ; $43ad: $b2
    ld e, a                                       ; $43ae: $5f
    ld c, c                                       ; $43af: $49
    sbc l                                         ; $43b0: $9d
    sub a                                         ; $43b1: $97
    add a                                         ; $43b2: $87
    ld [de], a                                    ; $43b3: $12
    xor c                                         ; $43b4: $a9
    ldh a, [$bd]                                  ; $43b5: $f0 $bd
    jp c, $e2cc                                   ; $43b7: $da $cc $e2

    cp b                                          ; $43ba: $b8
    sub d                                         ; $43bb: $92
    ld a, e                                       ; $43bc: $7b
    sub c                                         ; $43bd: $91
    ld b, a                                       ; $43be: $47
    adc e                                         ; $43bf: $8b
    xor e                                         ; $43c0: $ab
    ld a, d                                       ; $43c1: $7a
    inc bc                                        ; $43c2: $03
    db $dd                                        ; $43c3: $dd
    rst $08                                       ; $43c4: $cf
    sub c                                         ; $43c5: $91
    add a                                         ; $43c6: $87
    ld [de], a                                    ; $43c7: $12
    xor c                                         ; $43c8: $a9
    dec a                                         ; $43c9: $3d
    ld bc, $3cbb                                  ; $43ca: $01 $bb $3c
    ld a, b                                       ; $43cd: $78
    rst $18                                       ; $43ce: $df
    ld [hl], a                                    ; $43cf: $77
    ld [hl], a                                    ; $43d0: $77
    ld a, e                                       ; $43d1: $7b
    adc $37                                       ; $43d2: $ce $37
    inc de                                        ; $43d4: $13
    call z, Call_03c_7979                         ; $43d5: $cc $79 $79
    jr z, jr_03c_436b                             ; $43d8: $28 $91

    jp c, $7d73                                   ; $43da: $da $73 $7d

    inc de                                        ; $43dd: $13
    ld a, $8b                                     ; $43de: $3e $8b
    and e                                         ; $43e0: $a3
    ret c                                         ; $43e1: $d8

    db $fc                                        ; $43e2: $fc
    inc a                                         ; $43e3: $3c
    ld c, l                                       ; $43e4: $4d
    sub e                                         ; $43e5: $93
    push de                                       ; $43e6: $d5
    ld l, l                                       ; $43e7: $6d
    ld hl, $7245                                  ; $43e8: $21 $45 $72
    rst $20                                       ; $43eb: $e7
    ld a, $42                                     ; $43ec: $3e $42
    rst $30                                       ; $43ee: $f7
    ld a, l                                       ; $43ef: $7d
    rlca                                          ; $43f0: $07
    rst $18                                       ; $43f1: $df
    ld [hl], b                                    ; $43f2: $70
    call nc, $8298                                ; $43f3: $d4 $98 $82
    adc $bf                                       ; $43f6: $ce $bf
    db $ec                                        ; $43f8: $ec
    ld [hl], a                                    ; $43f9: $77
    xor $23                                       ; $43fa: $ee $23
    ld [hl], h                                    ; $43fc: $74
    rst $28                                       ; $43fd: $ef
    ld [hl+], a                                   ; $43fe: $22
    ld b, a                                       ; $43ff: $47
    jr z, jr_03c_4419                             ; $4400: $28 $17

    db $fc                                        ; $4402: $fc
    ld c, [hl]                                    ; $4403: $4e
    ld sp, hl                                     ; $4404: $f9
    ld a, [hl-]                                   ; $4405: $3a
    dec d                                         ; $4406: $15
    ld a, $fb                                     ; $4407: $3e $fb
    rla                                           ; $4409: $17
    or c                                          ; $440a: $b1
    sbc $00                                       ; $440b: $de $00
    or $59                                        ; $440d: $f6 $59
    ld e, $3e                                     ; $440f: $1e $3e
    ei                                            ; $4411: $fb
    rla                                           ; $4412: $17
    or c                                          ; $4413: $b1
    jp nz, $ddd7                                  ; $4414: $c2 $d7 $dd

    ld [c], a                                     ; $4417: $e2
    xor d                                         ; $4418: $aa

jr_03c_4419:
    xor [hl]                                      ; $4419: $ae
    inc d                                         ; $441a: $14
    ld d, [hl]                                    ; $441b: $56
    ld e, [hl]                                    ; $441c: $5e
    rst $30                                       ; $441d: $f7
    ld b, c                                       ; $441e: $41
    sbc e                                         ; $441f: $9b
    sbc [hl]                                      ; $4420: $9e
    nop                                           ; $4421: $00
    ld a, l                                       ; $4422: $7d
    jp c, $a688                                   ; $4423: $da $88 $a6

    sbc c                                         ; $4426: $99
    sub d                                         ; $4427: $92
    ld hl, $fb7d                                  ; $4428: $21 $7d $fb
    ld a, c                                       ; $442b: $79
    xor [hl]                                      ; $442c: $ae
    ld hl, $f424                                  ; $442d: $21 $24 $f4
    adc l                                         ; $4430: $8d
    jr @-$55                                      ; $4431: $18 $a9

    ldh a, [$85]                                  ; $4433: $f0 $85
    cpl                                           ; $4435: $2f
    cp a                                          ; $4436: $bf
    ld a, [c]                                     ; $4437: $f2
    inc sp                                        ; $4438: $33
    push hl                                       ; $4439: $e5
    sub l                                         ; $443a: $95
    di                                            ; $443b: $f3
    ld e, h                                       ; $443c: $5c
    sub b                                         ; $443d: $90
    jp nc, $92c9                                  ; $443e: $d2 $c9 $92

    sub b                                         ; $4441: $90
    call Call_000_00df                            ; $4442: $cd $df $00
    cp l                                          ; $4445: $bd
    add d                                         ; $4446: $82
    ldh a, [rHDMA1]                               ; $4447: $f0 $51
    ld h, e                                       ; $4449: $63
    sub a                                         ; $444a: $97
    xor [hl]                                      ; $444b: $ae
    db $e3                                        ; $444c: $e3
    call nc, $fa3c                                ; $444d: $d4 $3c $fa
    ld e, h                                       ; $4450: $5c
    ld e, b                                       ; $4451: $58
    ld e, $e3                                     ; $4452: $1e $e3
    db $eb                                        ; $4454: $eb
    cp l                                          ; $4455: $bd
    ld a, $ec                                     ; $4456: $3e $ec
    sub a                                         ; $4458: $97
    ld [hl-], a                                   ; $4459: $32
    adc e                                         ; $445a: $8b
    xor e                                         ; $445b: $ab
    ld [$723f], a                                 ; $445c: $ea $3f $72
    push de                                       ; $445f: $d5
    adc [hl]                                      ; $4460: $8e
    ld a, [c]                                     ; $4461: $f2
    ldh a, [rBCPD]                                ; $4462: $f0 $69
    sbc e                                         ; $4464: $9b
    push bc                                       ; $4465: $c5
    dec [hl]                                      ; $4466: $35
    ld a, [bc]                                    ; $4467: $0a
    ld [hl], l                                    ; $4468: $75
    pop bc                                        ; $4469: $c1
    scf                                           ; $446a: $37
    sub h                                         ; $446b: $94
    sub d                                         ; $446c: $92
    db $eb                                        ; $446d: $eb
    inc [hl]                                      ; $446e: $34
    ld [c], a                                     ; $446f: $e2
    dec c                                         ; $4470: $0d
    nop                                           ; $4471: $00
    add c                                         ; $4472: $81
    add h                                         ; $4473: $84
    sbc h                                         ; $4474: $9c
    db $e4                                        ; $4475: $e4
    inc l                                         ; $4476: $2c
    adc [hl]                                      ; $4477: $8e
    and e                                         ; $4478: $a3
    add $1f                                       ; $4479: $c6 $1f
    ld [hl], l                                    ; $447b: $75
    ld c, $7f                                     ; $447c: $0e $7f
    sbc [hl]                                      ; $447e: $9e
    dec hl                                        ; $447f: $2b
    xor a                                         ; $4480: $af
    dec bc                                        ; $4481: $0b
    bit 4, e                                      ; $4482: $cb $63
    ld a, h                                       ; $4484: $7c

Jump_03c_4485:
    cp l                                          ; $4485: $bd
    ld bc, $1197                                  ; $4486: $01 $97 $11
    ld l, l                                       ; $4489: $6d
    ld a, [hl]                                    ; $448a: $7e
    ld a, [c]                                     ; $448b: $f2
    db $fd                                        ; $448c: $fd
    ld l, l                                       ; $448d: $6d
    pop af                                        ; $448e: $f1
    cp [hl]                                       ; $448f: $be
    ld l, a                                       ; $4490: $6f
    ld [$d8de], a                                 ; $4491: $ea $de $d8
    ld h, d                                       ; $4494: $62
    adc e                                         ; $4495: $8b
    ld a, c                                       ; $4496: $79
    inc bc                                        ; $4497: $03
    cp l                                          ; $4498: $bd

Jump_03c_4499:
    ld d, [hl]                                    ; $4499: $56
    and c                                         ; $449a: $a1
    call z, $aae2                                 ; $449b: $cc $e2 $aa
    adc $37                                       ; $449e: $ce $37
    jp Jump_000_1f95                              ; $44a0: $c3 $95 $1f


    pop de                                        ; $44a3: $d1
    inc [hl]                                      ; $44a4: $34
    ld d, e                                       ; $44a5: $53
    ld [hl-], a                                   ; $44a6: $32
    and h                                         ; $44a7: $a4
    ld l, a                                       ; $44a8: $6f
    ccf                                           ; $44a9: $3f
    rst $08                                       ; $44aa: $cf
    ld d, l                                       ; $44ab: $55
    push de                                       ; $44ac: $d5
    ld hl, sp+$37                                 ; $44ad: $f8 $37
    nop                                           ; $44af: $00
    db $dd                                        ; $44b0: $dd
    ld a, d                                       ; $44b1: $7a
    cp c                                          ; $44b2: $b9
    ld e, $eb                                     ; $44b3: $1e $eb
    sub $87                                       ; $44b5: $d6 $87
    dec bc                                        ; $44b7: $0b
    cp $2c                                        ; $44b8: $fe $2c
    adc [hl]                                      ; $44ba: $8e
    push af                                       ; $44bb: $f5
    ei                                            ; $44bc: $fb
    db $ec                                        ; $44bd: $ec
    ld bc, $bd00                                  ; $44be: $01 $00 $bd
    call nc, $1666                                ; $44c1: $d4 $66 $16
    rst $00                                       ; $44c4: $c7
    ld d, c                                       ; $44c5: $51
    rst $20                                       ; $44c6: $e7
    ld l, l                                       ; $44c7: $6d
    ld c, h                                       ; $44c8: $4c
    db $fc                                        ; $44c9: $fc
    ld a, [hl-]                                   ; $44ca: $3a
    ld l, a                                       ; $44cb: $6f
    nop                                           ; $44cc: $00
    cp l                                          ; $44cd: $bd
    add l                                         ; $44ce: $85
    add hl, sp                                    ; $44cf: $39
    adc e                                         ; $44d0: $8b
    db $e3                                        ; $44d1: $e3
    add h                                         ; $44d2: $84
    ld h, $31                                     ; $44d3: $26 $31
    ei                                            ; $44d5: $fb
    sbc e                                         ; $44d6: $9b
    ld e, h                                       ; $44d7: $5c
    ld d, l                                       ; $44d8: $55
    adc l                                         ; $44d9: $8d
    ld a, a                                       ; $44da: $7f
    inc bc                                        ; $44db: $03
    cp l                                          ; $44dc: $bd
    xor h                                         ; $44dd: $ac
    ldh a, [$85]                                  ; $44de: $f0 $85
    call Call_000_0dfc                            ; $44e0: $cd $fc $0d
    nop                                           ; $44e3: $00
    rla                                           ; $44e4: $17
    push hl                                       ; $44e5: $e5
    db $f4                                        ; $44e6: $f4
    dec sp                                        ; $44e7: $3b
    ld [hl], $7f                                  ; $44e8: $36 $7f
    rst $18                                       ; $44ea: $df
    ld [hl], a                                    ; $44eb: $77
    ld c, d                                       ; $44ec: $4a
    ld l, h                                       ; $44ed: $6c
    ret nc                                        ; $44ee: $d0

    db $eb                                        ; $44ef: $eb
    dec a                                         ; $44f0: $3d
    cp e                                          ; $44f1: $bb
    or d                                          ; $44f2: $b2
    ld a, [hl]                                    ; $44f3: $7e
    cpl                                           ; $44f4: $2f
    sbc $06                                       ; $44f5: $de $06
    rst $20                                       ; $44f7: $e7
    cp c                                          ; $44f8: $b9

Call_03c_44f9:
    sub d                                         ; $44f9: $92
    cp d                                          ; $44fa: $ba
    ld [hl], e                                    ; $44fb: $73
    sbc h                                         ; $44fc: $9c
    ld l, b                                       ; $44fd: $68
    and c                                         ; $44fe: $a1
    ld [hl], l                                    ; $44ff: $75
    call nc, $9df8                                ; $4500: $d4 $f8 $9d
    ld e, a                                       ; $4503: $5f
    add hl, hl                                    ; $4504: $29
    call nz, $01bc                                ; $4505: $c4 $bc $01
    halt                                          ; $4508: $76
    ld a, [de]                                    ; $4509: $1a
    ld [hl], e                                    ; $450a: $73
    pop hl                                        ; $450b: $e1
    dec bc                                        ; $450c: $0b
    dec c                                         ; $450d: $0d
    daa                                           ; $450e: $27
    cpl                                           ; $450f: $2f
    ld a, c                                       ; $4510: $79
    xor a                                         ; $4511: $af
    rrca                                          ; $4512: $0f
    rla                                           ; $4513: $17
    ld a, [bc]                                    ; $4514: $0a
    ld hl, $3187                                  ; $4515: $21 $87 $31
    ld h, a                                       ; $4518: $67
    ld [hl], c                                    ; $4519: $71
    ld d, l                                       ; $451a: $55
    and a                                         ; $451b: $a7
    sub h                                         ; $451c: $94
    xor [hl]                                      ; $451d: $ae
    dec de                                        ; $451e: $1b
    nop                                           ; $451f: $00
    halt                                          ; $4520: $76
    ld h, l                                       ; $4521: $65
    and l                                         ; $4522: $a5
    ld [hl], l                                    ; $4523: $75
    inc h                                         ; $4524: $24
    rst $20                                       ; $4525: $e7
    sbc e                                         ; $4526: $9b
    pop hl                                        ; $4527: $e1
    inc l                                         ; $4528: $2c
    adc [hl]                                      ; $4529: $8e
    and e                                         ; $452a: $a3
    ld c, [hl]                                    ; $452b: $4e
    sbc $a6                                       ; $452c: $de $a6
    rst $38                                       ; $452e: $ff
    inc a                                         ; $452f: $3c
    ld d, a                                       ; $4530: $57
    ccf                                           ; $4531: $3f
    ld a, d                                       ; $4532: $7a
    jp hl                                         ; $4533: $e9


    add d                                         ; $4534: $82
    ld d, d                                       ; $4535: $52
    cp $06                                        ; $4536: $fe $06
    cp l                                          ; $4538: $bd
    ldh a, [rSCX]                                 ; $4539: $f0 $43
    sub [hl]                                      ; $453b: $96
    cp h                                          ; $453c: $bc
    ld [hl], a                                    ; $453d: $77
    ld [hl], c                                    ; $453e: $71
    sub h                                         ; $453f: $94
    ld e, a                                       ; $4540: $5f
    ld hl, sp-$0e                                 ; $4541: $f8 $f2
    ld h, e                                       ; $4543: $63
    sbc c                                         ; $4544: $99
    cp [hl]                                       ; $4545: $be
    ret                                           ; $4546: $c9


    dec de                                        ; $4547: $1b
    nop                                           ; $4548: $00
    cp l                                          ; $4549: $bd
    ld a, [$fb11]                                 ; $454a: $fa $11 $fb
    push hl                                       ; $454d: $e5
    cp l                                          ; $454e: $bd
    ld c, e                                       ; $454f: $4b
    ld e, h                                       ; $4550: $5c
    push de                                       ; $4551: $d5
    ld h, c                                       ; $4552: $61
    sub $1d                                       ; $4553: $d6 $1d
    pop hl                                        ; $4555: $e1
    ld [c], a                                     ; $4556: $e2
    db $e3                                        ; $4557: $e3
    jr nz, @+$7b                                  ; $4558: $20 $79

    db $d3                                        ; $455a: $d3
    ld d, d                                       ; $455b: $52
    di                                            ; $455c: $f3
    ld b, $76                                     ; $455d: $06 $76
    ld a, [de]                                    ; $455f: $1a

jr_03c_4560:
    ld a, a                                       ; $4560: $7f
    or c                                          ; $4561: $b1
    ld de, $8b39                                  ; $4562: $11 $39 $8b
    db $e3                                        ; $4565: $e3
    sub h                                         ; $4566: $94
    ld [hl-], a                                   ; $4567: $32
    add a                                         ; $4568: $87
    ccf                                           ; $4569: $3f
    rst $08                                       ; $456a: $cf
    or c                                          ; $456b: $b1
    sub h                                         ; $456c: $94
    rst $10                                       ; $456d: $d7
    dec de                                        ; $456e: $1b
    nop                                           ; $456f: $00
    cp l                                          ; $4570: $bd
    add d                                         ; $4571: $82
    add hl, hl                                    ; $4572: $29
    cp a                                          ; $4573: $bf
    ld c, b                                       ; $4574: $48
    add h                                         ; $4575: $84
    ld [hl], d                                    ; $4576: $72
    ld a, [c]                                     ; $4577: $f2
    ld [hl], $fd                                  ; $4578: $36 $fd
    rst $20                                       ; $457a: $e7
    cp c                                          ; $457b: $b9
    rst $10                                       ; $457c: $d7
    ld l, d                                       ; $457d: $6a
    ld e, e                                       ; $457e: $5b
    rst $08                                       ; $457f: $cf
    sub d                                         ; $4580: $92
    scf                                           ; $4581: $37
    nop                                           ; $4582: $00
    ld a, l                                       ; $4583: $7d
    db $db                                        ; $4584: $db
    jp nz, $bd94                                  ; $4585: $c2 $94 $bd

    ld h, [hl]                                    ; $4588: $66
    sbc l                                         ; $4589: $9d
    dec bc                                        ; $458a: $0b
    cp [hl]                                       ; $458b: $be
    ld l, $52                                     ; $458c: $2e $52
    ld [$ef86], a                                 ; $458e: $ea $86 $ef
    inc de                                        ; $4591: $13
    ld a, $fb                                     ; $4592: $3e $fb
    rla                                           ; $4594: $17
    or c                                          ; $4595: $b1

jr_03c_4596:
    sbc $bb                                       ; $4596: $de $bb
    jp nz, Jump_03c_54b1                          ; $4598: $c2 $b1 $54

    cp b                                          ; $459b: $b8
    sbc a                                         ; $459c: $9f
    ld a, [hl]                                    ; $459d: $7e
    ld l, c                                       ; $459e: $69
    ld [hl], d                                    ; $459f: $72
    inc bc                                        ; $45a0: $03
    sub a                                         ; $45a1: $97
    db $e3                                        ; $45a2: $e3
    and d                                         ; $45a3: $a2
    ld a, h                                       ; $45a4: $7c
    rst $20                                       ; $45a5: $e7
    ei                                            ; $45a6: $fb
    push hl                                       ; $45a7: $e5
    ld [$5d2e], a                                 ; $45a8: $ea $2e $5d
    and a                                         ; $45ab: $a7
    ld de, $3547                                  ; $45ac: $11 $47 $35
    xor a                                         ; $45af: $af
    add hl, bc                                    ; $45b0: $09
    ld e, a                                       ; $45b1: $5f
    ld b, b                                       ; $45b2: $40
    add $48                                       ; $45b3: $c6 $48
    cp c                                          ; $45b5: $b9
    ld [hl], a                                    ; $45b6: $77
    add l                                         ; $45b7: $85
    ld h, e                                       ; $45b8: $63
    xor c                                         ; $45b9: $a9
    ld [hl], b                                    ; $45ba: $70
    cp a                                          ; $45bb: $bf
    add [hl]                                      ; $45bc: $86
    sub c                                         ; $45bd: $91
    jr jr_03c_461f                                ; $45be: $18 $5f

    ld c, d                                       ; $45c0: $4a
    sbc $00                                       ; $45c1: $de $00
    halt                                          ; $45c3: $76
    ld a, [de]                                    ; $45c4: $1a
    ld a, a                                       ; $45c5: $7f
    call nc, Call_03c_5f95                        ; $45c6: $d4 $95 $5f
    and h                                         ; $45c9: $a4
    jr jr_03c_4596                                ; $45ca: $18 $ca

    xor a                                         ; $45cc: $af
    jp nz, $b3fe                                  ; $45cd: $c2 $fe $b3

    jr c, jr_03c_4560                             ; $45d0: $38 $8e

    jr @-$79                                      ; $45d2: $18 $85

    ret nc                                        ; $45d4: $d0

    db $eb                                        ; $45d5: $eb
    inc e                                         ; $45d6: $1c
    ld l, $ca                                     ; $45d7: $2e $ca
    ld [hl], a                                    ; $45d9: $77
    cp [hl]                                       ; $45da: $be
    ld e, a                                       ; $45db: $5f
    ld c, [hl]                                    ; $45dc: $4e
    dec de                                        ; $45dd: $1b
    ld l, $52                                     ; $45de: $2e $52
    ld [$2f86], a                                 ; $45e0: $ea $86 $2f
    rst $30                                       ; $45e3: $f7
    ld [bc], a                                    ; $45e4: $02
    add hl, bc                                    ; $45e5: $09
    cp c                                          ; $45e6: $b9
    ld h, $55                                     ; $45e7: $26 $55
    ld h, a                                       ; $45e9: $67
    ld [hl], c                                    ; $45ea: $71
    dec l                                         ; $45eb: $2d
    halt                                          ; $45ec: $76
    and c                                         ; $45ed: $a1
    rst $08                                       ; $45ee: $cf
    ret z                                         ; $45ef: $c8

    add hl, sp                                    ; $45f0: $39
    ld e, h                                       ; $45f1: $5c
    add sp, $30                                   ; $45f2: $e8 $30
    and $7e                                       ; $45f4: $e6 $7e
    pop de                                        ; $45f6: $d1
    call $febc                                    ; $45f7: $cd $bc $fe
    ld c, h                                       ; $45fa: $4c
    sub $39                                       ; $45fb: $d6 $39
    di                                            ; $45fd: $f3
    ld a, [de]                                    ; $45fe: $1a

jr_03c_45ff:
    dec de                                        ; $45ff: $1b
    sub h                                         ; $4600: $94
    inc sp                                        ; $4601: $33
    rst $28                                       ; $4602: $ef
    ld a, a                                       ; $4603: $7f
    dec d                                         ; $4604: $15
    or $9f                                        ; $4605: $f6 $9f
    push bc                                       ; $4607: $c5
    ld [hl], c                                    ; $4608: $71
    dec d                                         ; $4609: $15
    rst $00                                       ; $460a: $c7
    ld d, d                                       ; $460b: $52
    ld a, c                                       ; $460c: $79
    sbc l                                         ; $460d: $9d
    ld [hl], $9c                                  ; $460e: $36 $9c
    ld [hl], c                                    ; $4610: $71
    ld [hl], l                                    ; $4611: $75
    ld e, b                                       ; $4612: $58
    sbc d                                         ; $4613: $9a
    inc l                                         ; $4614: $2c
    cp d                                          ; $4615: $ba
    push de                                       ; $4616: $d5
    ld c, l                                       ; $4617: $4d
    sbc e                                         ; $4618: $9b
    dec l                                         ; $4619: $2d
    sbc $00                                       ; $461a: $de $00
    halt                                          ; $461c: $76
    or b                                          ; $461d: $b0
    inc c                                         ; $461e: $0c

jr_03c_461f:
    dec bc                                        ; $461f: $0b
    ld sp, $5172                                  ; $4620: $31 $72 $51
    cp [hl]                                       ; $4623: $be
    di                                            ; $4624: $f3
    db $fd                                        ; $4625: $fd
    ld [de], a                                    ; $4626: $12
    ld a, $fb                                     ; $4627: $3e $fb
    rla                                           ; $4629: $17
    or c                                          ; $462a: $b1
    sbc $b3                                       ; $462b: $de $b3
    inc de                                        ; $462d: $13
    ld [$1658], a                                 ; $462e: $ea $58 $16
    ld c, d                                       ; $4631: $4a
    xor e                                         ; $4632: $ab
    add hl, hl                                    ; $4633: $29
    add hl, sp                                    ; $4634: $39
    ld [c], a                                     ; $4635: $e2
    ld a, [hl+]                                   ; $4636: $2a
    ld e, c                                       ; $4637: $59
    ld a, [hl+]                                   ; $4638: $2a
    sub h                                         ; $4639: $94
    sbc c                                         ; $463a: $99
    call nz, Call_03c_5f95                        ; $463b: $c4 $95 $5f
    ld a, h                                       ; $463e: $7c
    pop hl                                        ; $463f: $e1
    cpl                                           ; $4640: $2f
    ld d, d                                       ; $4641: $52
    ld [$ef86], a                                 ; $4642: $ea $86 $ef
    rst $38                                       ; $4645: $ff
    sbc $65                                       ; $4646: $de $65
    ld l, [hl]                                    ; $4648: $6e
    and c                                         ; $4649: $a1
    or b                                          ; $464a: $b0
    ld l, [hl]                                    ; $464b: $6e
    add hl, sp                                    ; $464c: $39
    and l                                         ; $464d: $a5
    ld [hl], h                                    ; $464e: $74
    pop hl                                        ; $464f: $e1
    ld a, h                                       ; $4650: $7c
    ld [$6daa], a                                 ; $4651: $ea $aa $6d
    and l                                         ; $4654: $a5
    halt                                          ; $4655: $76
    push hl                                       ; $4656: $e5
    ld [hl], l                                    ; $4657: $75
    pop hl                                        ; $4658: $e1
    sra a                                         ; $4659: $cb $2f
    ld c, h                                       ; $465b: $4c
    db $d3                                        ; $465c: $d3
    ld [de], a                                    ; $465d: $12
    xor c                                         ; $465e: $a9
    rst $30                                       ; $465f: $f7
    xor [hl]                                      ; $4660: $ae
    ldh [$7c], a                                  ; $4661: $e0 $7c
    and d                                         ; $4663: $a2
    rst $20                                       ; $4664: $e7
    ld e, b                                       ; $4665: $58
    ld d, $4a                                     ; $4666: $16 $4a
    ld d, [hl]                                    ; $4668: $56
    ld d, e                                       ; $4669: $53
    ld d, e                                       ; $466a: $53
    ld d, $88                                     ; $466b: $16 $88
    rra                                           ; $466d: $1f
    ld [hl], d                                    ; $466e: $72
    sub $f9                                       ; $466f: $d6 $f9
    ld d, [hl]                                    ; $4671: $56
    jr c, jr_03c_45ff                             ; $4672: $38 $8b

    db $e3                                        ; $4674: $e3
    ld a, [hl+]                                   ; $4675: $2a
    xor a                                         ; $4676: $af
    di                                            ; $4677: $f3
    ld e, h                                       ; $4678: $5c
    db $dd                                        ; $4679: $dd
    ld d, $be                                     ; $467a: $16 $be
    ld b, h                                       ; $467c: $44
    sbc $00                                       ; $467d: $de $00
    db $dd                                        ; $467f: $dd
    cp d                                          ; $4680: $ba
    db $db                                        ; $4681: $db
    sub l                                         ; $4682: $95
    add l                                         ; $4683: $85
    sub d                                         ; $4684: $92
    push de                                       ; $4685: $d5
    call nc, Call_000_0594                        ; $4686: $d4 $94 $05
    ld [c], a                                     ; $4689: $e2
    add a                                         ; $468a: $87
    db $ec                                        ; $468b: $ec
    reti                                          ; $468c: $d9


    inc bc                                        ; $468d: $03
    nop                                           ; $468e: $00
    db $dd                                        ; $468f: $dd

jr_03c_4690:
    xor a                                         ; $4690: $af
    sbc [hl]                                      ; $4691: $9e
    push bc                                       ; $4692: $c5
    or l                                          ; $4693: $b5
    xor d                                         ; $4694: $aa
    jr c, jr_03c_4704                             ; $4695: $38 $6d

    jp $e45c                                      ; $4697: $c3 $5c $e4


    ld e, d                                       ; $469a: $5a
    rst $20                                       ; $469b: $e7
    rst $30                                       ; $469c: $f7
    inc hl                                        ; $469d: $23
    ld a, [hl+]                                   ; $469e: $2a
    rrca                                          ; $469f: $0f
    ld a, [hl]                                    ; $46a0: $7e
    reti                                          ; $46a1: $d9


    cpl                                           ; $46a2: $2f
    ld hl, sp-$7a                                 ; $46a3: $f8 $86
    or d                                          ; $46a5: $b2
    jr nc, jr_03c_46f5                            ; $46a6: $30 $4d

    ld c, e                                       ; $46a8: $4b
    and h                                         ; $46a9: $a4
    or $5c                                        ; $46aa: $f6 $5c
    xor a                                         ; $46ac: $af
    ld d, c                                       ; $46ad: $51
    db $e3                                        ; $46ae: $e3
    cpl                                           ; $46af: $2f
    sbc b                                         ; $46b0: $98
    ld a, [c]                                     ; $46b1: $f2
    dec hl                                        ; $46b2: $2b
    add hl, sp                                    ; $46b3: $39
    and d                                         ; $46b4: $a2
    ld c, c                                       ; $46b5: $49
    adc h                                         ; $46b6: $8c
    ld a, [c]                                     ; $46b7: $f2
    jp nc, Jump_000_23a5                          ; $46b8: $d2 $a5 $23

    ld c, [hl]                                    ; $46bb: $4e
    db $dd                                        ; $46bc: $dd
    inc a                                         ; $46bd: $3c
    dec [hl]                                      ; $46be: $35
    ld a, h                                       ; $46bf: $7c
    inc de                                        ; $46c0: $13
    call z, Call_03c_577b                         ; $46c1: $cc $7b $57
    db $10                                        ; $46c4: $10
    and c                                         ; $46c5: $a1
    add a                                         ; $46c6: $87
    xor a                                         ; $46c7: $af
    jp nz, Jump_000_1bc8                          ; $46c8: $c2 $c8 $1b

    nop                                           ; $46cb: $00
    db $dd                                        ; $46cc: $dd
    cpl                                           ; $46cd: $2f
    ld [hl], c                                    ; $46ce: $71
    ld d, l                                       ; $46cf: $55
    ld h, a                                       ; $46d0: $67
    ld [hl], c                                    ; $46d1: $71
    adc l                                         ; $46d2: $8d
    ld b, d                                       ; $46d3: $42
    add l                                         ; $46d4: $85
    cpl                                           ; $46d5: $2f
    jr nz, jr_03c_473b                            ; $46d6: $20 $63

    and h                                         ; $46d8: $a4
    db $f4                                        ; $46d9: $f4
    inc b                                         ; $46da: $04
    or $9c                                        ; $46db: $f6 $9c
    ld [hl], $9f                                  ; $46dd: $36 $9f
    ld h, e                                       ; $46df: $63
    ld e, c                                       ; $46e0: $59
    jr z, jr_03c_4690                             ; $46e1: $28 $ad

    and [hl]                                      ; $46e3: $a6
    db $e4                                        ; $46e4: $e4
    adc b                                         ; $46e5: $88
    adc e                                         ; $46e6: $8b
    sub h                                         ; $46e7: $94
    cp d                                          ; $46e8: $ba
    pop hl                                        ; $46e9: $e1
    set 1, d                                      ; $46ea: $cb $ca
    cpl                                           ; $46ec: $2f
    cp [hl]                                       ; $46ed: $be
    ldh a, [$e7]                                  ; $46ee: $f0 $e7
    cp c                                          ; $46f0: $b9
    ld a, [c]                                     ; $46f1: $f2
    inc sp                                        ; $46f2: $33
    push hl                                       ; $46f3: $e5
    sub l                                         ; $46f4: $95

jr_03c_46f5:
    di                                            ; $46f5: $f3
    sbc h                                         ; $46f6: $9c
    dec a                                         ; $46f7: $3d
    and l                                         ; $46f8: $a5
    sub e                                         ; $46f9: $93
    dec h                                         ; $46fa: $25
    ld hl, $9f9b                                  ; $46fb: $21 $9b $9f
    ld [hl], l                                    ; $46fe: $75
    push hl                                       ; $46ff: $e5
    rla                                           ; $4700: $17
    ld c, d                                       ; $4701: $4a
    ld d, [hl]                                    ; $4702: $56
    ld d, e                                       ; $4703: $53

jr_03c_4704:
    ld d, e                                       ; $4704: $53
    ld a, [hl]                                    ; $4705: $7e
    add c                                         ; $4706: $81
    and c                                         ; $4707: $a1
    and h                                         ; $4708: $a4
    adc e                                         ; $4709: $8b
    xor e                                         ; $470a: $ab
    cp c                                          ; $470b: $b9
    ld a, [$ffd1]                                 ; $470c: $fa $d1 $ff
    jp nz, $9f97                                  ; $470f: $c2 $97 $9f

    push bc                                       ; $4712: $c5
    ld [hl], c                                    ; $4713: $71
    dec [hl]                                      ; $4714: $35
    ld b, a                                       ; $4715: $47
    adc h                                         ; $4716: $8c
    ld b, d                                       ; $4717: $42
    ret z                                         ; $4718: $c8

    ld [hl], c                                    ; $4719: $71
    ld a, $75                                     ; $471a: $3e $75
    push de                                       ; $471c: $d5
    or [hl]                                       ; $471d: $b6
    ld d, d                                       ; $471e: $52
    cp e                                          ; $471f: $bb
    ld a, [c]                                     ; $4720: $f2
    cp d                                          ; $4721: $ba
    ldh a, [$e5]                                  ; $4722: $f0 $e5
    rla                                           ; $4724: $17
    and [hl]                                      ; $4725: $a6
    ld l, c                                       ; $4726: $69
    adc c                                         ; $4727: $89
    call nc, $ac99                                ; $4728: $d4 $99 $ac
    ld [hl], e                                    ; $472b: $73
    and c                                         ; $472c: $a1
    or b                                          ; $472d: $b0
    ld l, [hl]                                    ; $472e: $6e
    ld a, c                                       ; $472f: $79
    inc bc                                        ; $4730: $03
    add c                                         ; $4731: $81
    adc l                                         ; $4732: $8d
    ld [hl], l                                    ; $4733: $75
    jr z, jr_03c_4752                             ; $4734: $28 $1c

    ld [hl], l                                    ; $4736: $75
    sbc [hl]                                      ; $4737: $9e
    push af                                       ; $4738: $f5
    ld l, e                                       ; $4739: $6b
    ld a, e                                       ; $473a: $7b

jr_03c_473b:
    sbc a                                         ; $473b: $9f
    add e                                         ; $473c: $83
    adc b                                         ; $473d: $88
    sub h                                         ; $473e: $94
    call nc, Call_03c_77bf                        ; $473f: $d4 $bf $77
    adc $d7                                       ; $4742: $ce $d7
    ld e, h                                       ; $4744: $5c
    ld [hl], h                                    ; $4745: $74
    inc hl                                        ; $4746: $23
    sbc d                                         ; $4747: $9a
    ld h, [hl]                                    ; $4748: $66
    ld c, d                                       ; $4749: $4a
    add [hl]                                      ; $474a: $86
    db $f4                                        ; $474b: $f4
    db $ed                                        ; $474c: $ed
    pop hl                                        ; $474d: $e1
    dec bc                                        ; $474e: $0b
    ret z                                         ; $474f: $c8

    jr jr_03c_477b                                ; $4750: $18 $29

jr_03c_4752:
    scf                                           ; $4752: $37
    nop                                           ; $4753: $00
    sub a                                         ; $4754: $97
    ld h, l                                       ; $4755: $65
    db $fd                                        ; $4756: $fd
    adc e                                         ; $4757: $8b
    ld c, [hl]                                    ; $4758: $4e
    ld d, a                                       ; $4759: $57
    ld l, l                                       ; $475a: $6d
    dec hl                                        ; $475b: $2b
    or l                                          ; $475c: $b5
    dec hl                                        ; $475d: $2b
    xor a                                         ; $475e: $af
    ldh a, [rTIMA]                                ; $475f: $f0 $05
    ld h, h                                       ; $4761: $64
    adc h                                         ; $4762: $8c
    sub h                                         ; $4763: $94
    ld a, e                                       ; $4764: $7b
    cp l                                          ; $4765: $bd
    add d                                         ; $4766: $82
    add hl, hl                                    ; $4767: $29
    ccf                                           ; $4768: $3f
    db $fd                                        ; $4769: $fd
    ld [hl-], a                                   ; $476a: $32
    rst $08                                       ; $476b: $cf
    push de                                       ; $476c: $d5
    ld l, l                                       ; $476d: $6d
    sbc [hl]                                      ; $476e: $9e
    ld a, [de]                                    ; $476f: $1a
    cp [hl]                                       ; $4770: $be
    add hl, bc                                    ; $4771: $09
    and $0d                                       ; $4772: $e6 $0d
    nop                                           ; $4774: $00
    db $dd                                        ; $4775: $dd
    ld l, $7a                                     ; $4776: $2e $7a
    ld e, l                                       ; $4778: $5d
    inc h                                         ; $4779: $24
    ld b, d                                       ; $477a: $42

jr_03c_477b:
    cp c                                          ; $477b: $b9
    sbc b                                         ; $477c: $98
    cp $b5                                        ; $477d: $fe $b5
    rst $00                                       ; $477f: $c7
    ld [bc], a                                    ; $4780: $02
    db $d3                                        ; $4781: $d3
    ld a, d                                       ; $4782: $7a
    rst $18                                       ; $4783: $df
    ld [hl], a                                    ; $4784: $77
    ld b, $e1                                     ; $4785: $06 $e1
    or e                                          ; $4787: $b3
    ld a, a                                       ; $4788: $7f
    ld de, $bdeb                                  ; $4789: $11 $eb $bd
    nop                                           ; $478c: $00
    and d                                         ; $478d: $a2
    ld d, [hl]                                    ; $478e: $56
    sbc l                                         ; $478f: $9d
    push bc                                       ; $4790: $c5
    ld [hl], c                                    ; $4791: $71
    ld l, a                                       ; $4792: $6f
    cp [hl]                                       ; $4793: $be
    di                                            ; $4794: $f3
    ld h, d                                       ; $4795: $62
    di                                            ; $4796: $f3
    dec hl                                        ; $4797: $2b
    cp a                                          ; $4798: $bf
    ld d, b                                       ; $4799: $50
    ld e, d                                       ; $479a: $5a
    ld c, l                                       ; $479b: $4d
    ld sp, hl                                     ; $479c: $f9
    dec de                                        ; $479d: $1b
    nop                                           ; $479e: $00
    ld a, l                                       ; $479f: $7d
    inc de                                        ; $47a0: $13
    ld a, $fb                                     ; $47a1: $3e $fb
    rla                                           ; $47a3: $17
    or c                                          ; $47a4: $b1
    xor [hl]                                      ; $47a5: $ae
    jp c, Jump_000_2c71                           ; $47a6: $da $71 $2c

    dec bc                                        ; $47a9: $0b
    and l                                         ; $47aa: $a5
    push de                                       ; $47ab: $d5
    sub h                                         ; $47ac: $94
    sbc h                                         ; $47ad: $9c
    ld [hl], l                                    ; $47ae: $75
    ret nc                                        ; $47af: $d0

    and e                                         ; $47b0: $a3
    db $ed                                        ; $47b1: $ed
    inc e                                         ; $47b2: $1c
    ld l, $14                                     ; $47b3: $2e $14
    sub $2d                                       ; $47b5: $d6 $2d
    ld b, a                                       ; $47b7: $47
    dec c                                         ; $47b8: $0d
    ld l, c                                       ; $47b9: $69
    jp c, $1b97                                   ; $47ba: $da $97 $1b

    nop                                           ; $47bd: $00
    ld h, a                                       ; $47be: $67
    dec sp                                        ; $47bf: $3b
    ld h, d                                       ; $47c0: $62
    jp nz, $bdd7                                  ; $47c1: $c2 $d7 $bd

    and $fc                                       ; $47c4: $e6 $fc
    db $e3                                        ; $47c6: $e3
    cp [hl]                                       ; $47c7: $be
    ld b, b                                       ; $47c8: $40
    cp c                                          ; $47c9: $b9
    jr nc, jr_03c_4831                            ; $47ca: $30 $65

    ld c, d                                       ; $47cc: $4a
    sbc c                                         ; $47cd: $99
    ld [de], a                                    ; $47ce: $12
    ld [hl], d                                    ; $47cf: $72
    add sp, -$41                                  ; $47d0: $e8 $bf
    daa                                           ; $47d2: $27
    nop                                           ; $47d3: $00
    ld h, a                                       ; $47d4: $67
    scf                                           ; $47d5: $37
    ld [hl+], a                                   ; $47d6: $22
    ld a, h                                       ; $47d7: $7c
    ld h, $eb                                     ; $47d8: $26 $eb
    sbc h                                         ; $47da: $9c
    ld a, [hl]                                    ; $47db: $7e
    add a                                         ; $47dc: $87
    cp d                                          ; $47dd: $ba
    ld hl, sp+$18                                 ; $47de: $f8 $18
    ld [hl], e                                    ; $47e0: $73
    sbc [hl]                                      ; $47e1: $9e
    dec bc                                        ; $47e2: $0b
    ld d, d                                       ; $47e3: $52
    ld a, [hl-]                                   ; $47e4: $3a
    ld e, c                                       ; $47e5: $59
    ld [de], a                                    ; $47e6: $12
    or d                                          ; $47e7: $b2
    ld a, c                                       ; $47e8: $79
    ld hl, sp-$7e                                 ; $47e9: $f8 $82
    cpl                                           ; $47eb: $2f
    ld e, l                                       ; $47ec: $5d
    ld a, [hl-]                                   ; $47ed: $3a
    add a                                         ; $47ee: $87
    adc e                                         ; $47ef: $8b
    ld a, [c]                                     ; $47f0: $f2
    sbc l                                         ; $47f1: $9d
    rst $28                                       ; $47f2: $ef
    sub a                                         ; $47f3: $97
    inc hl                                        ; $47f4: $23
    inc l                                         ; $47f5: $2c
    jp $8c42                                      ; $47f6: $c3 $42 $8c


    sbc h                                         ; $47f9: $9c
    push bc                                       ; $47fa: $c5
    or l                                          ; $47fb: $b5
    ld hl, sp-$18                                 ; $47fc: $f8 $e8
    ld [hl], e                                    ; $47fe: $73
    push hl                                       ; $47ff: $e5
    ld [hl], l                                    ; $4800: $75
    push af                                       ; $4801: $f5
    sub a                                         ; $4802: $97
    rst $10                                       ; $4803: $d7
    dec b                                         ; $4804: $05
    dec de                                        ; $4805: $1b
    and l                                         ; $4806: $a5
    di                                            ; $4807: $f3
    ld a, [hl-]                                   ; $4808: $3a
    rst $08                                       ; $4809: $cf
    or d                                          ; $480a: $b2
    ld a, [hl]                                    ; $480b: $7e
    cpl                                           ; $480c: $2f
    sbc $06                                       ; $480d: $de $06
    rst $28                                       ; $480f: $ef
    ld [hl], l                                    ; $4810: $75
    rst $28                                       ; $4811: $ef
    sbc e                                         ; $4812: $9b
    adc e                                         ; $4813: $8b
    ld e, h                                       ; $4814: $5c
    ld hl, sp+$42                                 ; $4815: $f8 $42
    jp Jump_03c_56f9                              ; $4817: $c3 $f9 $56


    and c                                         ; $481a: $a1
    call nz, $b3e6                                ; $481b: $c4 $e6 $b3
    daa                                           ; $481e: $27
    nop                                           ; $481f: $00
    ld bc, $bc94                                  ; $4820: $01 $94 $bc
    rst $28                                       ; $4823: $ef
    dec de                                        ; $4824: $1b
    nop                                           ; $4825: $00
    halt                                          ; $4826: $76
    jr jr_03c_4875                                ; $4827: $18 $4c

    ld sp, hl                                     ; $4829: $f9
    adc [hl]                                      ; $482a: $8e
    inc hl                                        ; $482b: $23
    ld a, $7c                                     ; $482c: $3e $7c
    or $94                                        ; $482e: $f6 $94
    cp d                                          ; $4830: $ba

jr_03c_4831:
    dec h                                         ; $4831: $25
    ld a, [c]                                     ; $4832: $f2
    ld b, $76                                     ; $4833: $06 $76
    ld a, [de]                                    ; $4835: $1a
    ld d, d                                       ; $4836: $52
    ld [hl], d                                    ; $4837: $72
    sbc b                                         ; $4838: $98
    adc e                                         ; $4839: $8b
    ld b, h                                       ; $483a: $44
    jp z, Jump_03c_50be                           ; $483b: $ca $be $50

    and b                                         ; $483e: $a0
    or $fb                                        ; $483f: $f6 $fb
    ld h, c                                       ; $4841: $61
    ld b, e                                       ; $4842: $43
    ret z                                         ; $4843: $c8

    pop hl                                        ; $4844: $e1
    rst $08                                       ; $4845: $cf
    ld [hl], e                                    ; $4846: $73
    call nc, $baf8                                ; $4847: $d4 $f8 $ba
    or b                                          ; $484a: $b0
    inc a                                         ; $484b: $3c
    add $d7                                       ; $484c: $c6 $d7
    dec de                                        ; $484e: $1b
    nop                                           ; $484f: $00
    db $dd                                        ; $4850: $dd
    cpl                                           ; $4851: $2f
    ld [hl], c                                    ; $4852: $71
    ld d, l                                       ; $4853: $55
    ld d, a                                       ; $4854: $57
    ld a, a                                       ; $4855: $7f
    ld a, h                                       ; $4856: $7c
    sbc l                                         ; $4857: $9d
    rst $20                                       ; $4858: $e7
    add d                                         ; $4859: $82
    adc l                                         ; $485a: $8d
    jp nc, Jump_03c_69f9                          ; $485b: $d2 $f9 $69

    ld [c], a                                     ; $485e: $e2
    jp z, $e4eb                                   ; $485f: $ca $eb $e4

    push hl                                       ; $4862: $e5
    or l                                          ; $4863: $b5
    daa                                           ; $4864: $27
    nop                                           ; $4865: $00
    ld a, l                                       ; $4866: $7d
    jp c, $e3be                                   ; $4867: $da $be $e3

    ld e, b                                       ; $486a: $58
    ld a, [hl]                                    ; $486b: $7e
    pop bc                                        ; $486c: $c1
    scf                                           ; $486d: $37
    sbc h                                         ; $486e: $9c
    ld h, [hl]                                    ; $486f: $66
    ld hl, sp+$33                                 ; $4870: $f8 $33
    adc c                                         ; $4872: $89
    ei                                            ; $4873: $fb
    ld [bc], a                                    ; $4874: $02

jr_03c_4875:
    add hl, sp                                    ; $4875: $39
    ld a, h                                       ; $4876: $7c
    sbc l                                         ; $4877: $9d
    rst $20                                       ; $4878: $e7
    xor b                                         ; $4879: $a8
    pop af                                        ; $487a: $f1
    ld [hl], l                                    ; $487b: $75
    ld h, c                                       ; $487c: $61
    ld a, c                                       ; $487d: $79
    adc h                                         ; $487e: $8c
    xor a                                         ; $487f: $af
    scf                                           ; $4880: $37
    nop                                           ; $4881: $00
    cp l                                          ; $4882: $bd
    add l                                         ; $4883: $85
    add hl, sp                                    ; $4884: $39
    adc e                                         ; $4885: $8b
    db $e3                                        ; $4886: $e3
    add d                                         ; $4887: $82
    ld l, a                                       ; $4888: $6f
    sbc l                                         ; $4889: $9d
    ld [hl], c                                    ; $488a: $71
    rra                                           ; $488b: $1f
    dec h                                         ; $488c: $25
    ld d, a                                       ; $488d: $57
    ld a, a                                       ; $488e: $7f
    ld a, h                                       ; $488f: $7c
    sbc l                                         ; $4890: $9d
    rst $20                                       ; $4891: $e7
    add d                                         ; $4892: $82
    adc l                                         ; $4893: $8d
    jp nc, $59f9                                  ; $4894: $d2 $f9 $59

Jump_03c_4897:
    inc e                                         ; $4897: $1c
    rla                                           ; $4898: $17
    dec de                                        ; $4899: $1b
    sub c                                         ; $489a: $91
    cp b                                          ; $489b: $b8
    add [hl]                                      ; $489c: $86
    sub b                                         ; $489d: $90
    ret nc                                        ; $489e: $d0

    scf                                           ; $489f: $37
    ld h, d                                       ; $48a0: $62
    and h                                         ; $48a1: $a4
    jp nz, Jump_03c_5217                          ; $48a2: $c2 $17 $52

    ld [hl], d                                    ; $48a5: $72
    sbc b                                         ; $48a6: $98
    and e                                         ; $48a7: $a3
    add $b4                                       ; $48a8: $c6 $b4
    ld c, [hl]                                    ; $48aa: $4e
    add hl, bc                                    ; $48ab: $09
    add hl, sp                                    ; $48ac: $39
    ret                                           ; $48ad: $c9


    dec de                                        ; $48ae: $1b
    nop                                           ; $48af: $00
    add c                                         ; $48b0: $81
    add h                                         ; $48b1: $84
    sbc h                                         ; $48b2: $9c
    db $e4                                        ; $48b3: $e4
    inc l                                         ; $48b4: $2c
    adc [hl]                                      ; $48b5: $8e
    inc hl                                        ; $48b6: $23
    adc [hl]                                      ; $48b7: $8e
    ld h, l                                       ; $48b8: $65
    db $fd                                        ; $48b9: $fd
    ld e, [hl]                                    ; $48ba: $5e
    cp h                                          ; $48bb: $bc
    dec c                                         ; $48bc: $0d
    ld l, $f8                                     ; $48bd: $2e $f8
    sub $85                                       ; $48bf: $d6 $85
    push hl                                       ; $48c1: $e5
    ld sp, $debe                                  ; $48c2: $31 $be $de
    nop                                           ; $48c5: $00
    or $59                                        ; $48c6: $f6 $59
    ld e, $be                                     ; $48c8: $1e $be
    cp [hl]                                       ; $48ca: $be
    xor h                                         ; $48cb: $ac
    or h                                          ; $48cc: $b4
    ld d, d                                       ; $48cd: $52
    ld a, b                                       ; $48ce: $78
    inc bc                                        ; $48cf: $03
    db $dd                                        ; $48d0: $dd
    ld [bc], a                                    ; $48d1: $02
    add e                                         ; $48d2: $83
    pop bc                                        ; $48d3: $c1
    ld e, $b3                                     ; $48d4: $1e $b3
    db $d3                                        ; $48d6: $d3
    ret c                                         ; $48d7: $d8

    dec [hl]                                      ; $48d8: $35
    rst $28                                       ; $48d9: $ef
    and h                                         ; $48da: $a4
    ld l, [hl]                                    ; $48db: $6e
    ld b, h                                       ; $48dc: $44
    sbc a                                         ; $48dd: $9f
    scf                                           ; $48de: $37
    nop                                           ; $48df: $00
    ld a, l                                       ; $48e0: $7d
    inc de                                        ; $48e1: $13
    ld a, $6a                                     ; $48e2: $3e $6a
    db $ec                                        ; $48e4: $ec
    sbc d                                         ; $48e5: $9a
    rst $20                                       ; $48e6: $e7
    jp nz, $d5c6                                  ; $48e7: $c2 $c6 $d5

    ld c, l                                       ; $48ea: $4d
    cp d                                          ; $48eb: $ba
    ret nc                                        ; $48ec: $d0

    ld h, a                                       ; $48ed: $67
    call $001b                                    ; $48ee: $cd $1b $00
    ld a, l                                       ; $48f1: $7d
    ld e, c                                       ; $48f2: $59
    ld l, c                                       ; $48f3: $69
    and l                                         ; $48f4: $a5
    ld [hl], b                                    ; $48f5: $70
    sbc b                                         ; $48f6: $98
    ldh a, [$75]                                  ; $48f7: $f0 $75
    ld h, e                                       ; $48f9: $63
    ld e, c                                       ; $48fa: $59
    jr z, jr_03c_4956                             ; $48fb: $28 $59

    ld c, l                                       ; $48fd: $4d
    ld c, l                                       ; $48fe: $4d
    reti                                          ; $48ff: $d9


    reti                                          ; $4900: $d9


    dec c                                         ; $4901: $0d
    ld d, c                                       ; $4902: $51
    ld a, e                                       ; $4903: $7b
    nop                                           ; $4904: $00
    rst $10                                       ; $4905: $d7
    db $f4                                        ; $4906: $f4
    rst $28                                       ; $4907: $ef
    rst $18                                       ; $4908: $df
    cp a                                          ; $4909: $bf
    ld a, a                                       ; $490a: $7f
    rst $38                                       ; $490b: $ff
    cp $fd                                        ; $490c: $fe $fd
    rst $28                                       ; $490e: $ef
    ei                                            ; $490f: $fb
    ld b, $dd                                     ; $4910: $06 $dd
    ei                                            ; $4912: $fb
    and $a8                                       ; $4913: $e6 $a8
    xor e                                         ; $4915: $ab
    reti                                          ; $4916: $d9


    cpl                                           ; $4917: $2f
    ld h, l                                       ; $4918: $65
    ld d, $c7                                     ; $4919: $16 $c7
    sub l                                         ; $491b: $95
    sbc h                                         ; $491c: $9c
    and a                                         ; $491d: $a7
    add [hl]                                      ; $491e: $86
    sub h                                         ; $491f: $94

Jump_03c_4920:
    ret z                                         ; $4920: $c8

    ld a, [hl-]                                   ; $4921: $3a
    or l                                          ; $4922: $b5
    daa                                           ; $4923: $27
    nop                                           ; $4924: $00
    ld a, l                                       ; $4925: $7d
    ld [hl], e                                    ; $4926: $73
    ld e, d                                       ; $4927: $5a
    ld [hl], l                                    ; $4928: $75
    jp c, Jump_03c_5ca6                           ; $4929: $da $a6 $5c

    add sp, -$18                                  ; $492c: $e8 $e8
    add hl, sp                                    ; $492e: $39
    ld c, a                                       ; $492f: $4f
    dec c                                         ; $4930: $0d
    add hl, hl                                    ; $4931: $29
    pop af                                        ; $4932: $f1
    ld h, l                                       ; $4933: $65
    ccf                                           ; $4934: $3f
    add a                                         ; $4935: $87
    xor e                                         ; $4936: $ab
    ld a, [hl]                                    ; $4937: $7e
    adc h                                         ; $4938: $8c
    xor a                                         ; $4939: $af
    push af                                       ; $493a: $f5
    rst $18                                       ; $493b: $df
    dec bc                                        ; $493c: $0b
    ld l, h                                       ; $493d: $6c
    dec hl                                        ; $493e: $2b
    sbc h                                         ; $493f: $9c
    ld a, a                                       ; $4940: $7f
    dec e                                         ; $4941: $1d
    ld [hl], c                                    ; $4942: $71
    inc l                                         ; $4943: $2c
    dec bc                                        ; $4944: $0b
    ld h, [hl]                                    ; $4945: $66
    db $dd                                        ; $4946: $dd
    sub c                                         ; $4947: $91
    add h                                         ; $4948: $84
    cpl                                           ; $4949: $2f
    ld [hl], h                                    ; $494a: $74
    db $f4                                        ; $494b: $f4
    sbc h                                         ; $494c: $9c
    push bc                                       ; $494d: $c5
    ld [hl], c                                    ; $494e: $71
    pop de                                        ; $494f: $d1
    xor l                                         ; $4950: $ad
    ld a, [hl]                                    ; $4951: $7e
    call z, $dc95                                 ; $4952: $cc $95 $dc
    ld b, a                                       ; $4955: $47

jr_03c_4956:
    ld sp, hl                                     ; $4956: $f9
    ld c, d                                       ; $4957: $4a
    and e                                         ; $4958: $a3
    ld a, [c]                                     ; $4959: $f2
    ld b, $d7                                     ; $495a: $06 $d7
    db $f4                                        ; $495c: $f4
    rst $28                                       ; $495d: $ef
    rst $18                                       ; $495e: $df
    cp a                                          ; $495f: $bf
    ld a, a                                       ; $4960: $7f
    rst $38                                       ; $4961: $ff
    ei                                            ; $4962: $fb
    cp [hl]                                       ; $4963: $be
    xor l                                         ; $4964: $ad
    ei                                            ; $4965: $fb
    ld d, l                                       ; $4966: $55
    scf                                           ; $4967: $37
    db $fc                                        ; $4968: $fc
    ld b, d                                       ; $4969: $42
    sbc l                                         ; $496a: $9d
    ld h, a                                       ; $496b: $67
    sbc c                                         ; $496c: $99
    ld [hl], $a8                                  ; $496d: $36 $a8
    db $e4                                        ; $496f: $e4
    xor [hl]                                      ; $4970: $ae
    cp d                                          ; $4971: $ba
    ld [c], a                                     ; $4972: $e2
    db $fc                                        ; $4973: $fc
    di                                            ; $4974: $f3
    pop hl                                        ; $4975: $e1
    or e                                          ; $4976: $b3
    cp b                                          ; $4977: $b8
    xor d                                         ; $4978: $aa
    xor e                                         ; $4979: $ab
    cp e                                          ; $497a: $bb
    ld [hl], h                                    ; $497b: $74
    cp $ef                                        ; $497c: $fe $ef
    ei                                            ; $497e: $fb
    xor $66                                       ; $497f: $ee $66
    rst $38                                       ; $4981: $ff
    ld [hl+], a                                   ; $4982: $22
    sub $05                                       ; $4983: $d6 $05
    ld h, h                                       ; $4985: $64
    adc h                                         ; $4986: $8c
    sub h                                         ; $4987: $94
    ld e, $eb                                     ; $4988: $1e $eb
    jp $217d                                      ; $498a: $c3 $7d $21


    inc h                                         ; $498d: $24
    add hl, sp                                    ; $498e: $39
    rst $08                                       ; $498f: $cf
    ld b, l                                       ; $4990: $45
    ld [hl+], a                                   ; $4991: $22
    dec h                                         ; $4992: $25
    ld [hl], d                                    ; $4993: $72
    call nz, $6dd5                                ; $4994: $c4 $d5 $6d
    and [hl]                                      ; $4997: $a6
    cp h                                          ; $4998: $bc
    ld [hl], d                                    ; $4999: $72
    ld h, c                                       ; $499a: $61
    jp z, $1baa                                   ; $499b: $ca $aa $1b

    sbc $bb                                       ; $499e: $de $bb
    sub h                                         ; $49a0: $94
    add $51                                       ; $49a1: $c6 $51
    ld a, h                                       ; $49a3: $7c
    xor [hl]                                      ; $49a4: $ae
    halt                                          ; $49a5: $76
    sub $75                                       ; $49a6: $d6 $75
    ld a, [de]                                    ; $49a8: $1a
    ld [hl], c                                    ; $49a9: $71
    cp a                                          ; $49aa: $bf
    add sp, $16                                   ; $49ab: $e8 $16
    cp [hl]                                       ; $49ad: $be
    rla                                           ; $49ae: $17

jr_03c_49af:
    sbc $00                                       ; $49af: $de $00
    rst $20                                       ; $49b1: $e7
    ret                                           ; $49b2: $c9


    sbc e                                         ; $49b3: $9b
    or $0a                                        ; $49b4: $f6 $0a
    ld e, a                                       ; $49b6: $5f
    jr z, jr_03c_4a12                             ; $49b7: $28 $59

    ld c, l                                       ; $49b9: $4d
    ld c, l                                       ; $49ba: $4d
    reti                                          ; $49bb: $d9


    reti                                          ; $49bc: $d9


    dec c                                         ; $49bd: $0d
    ld d, c                                       ; $49be: $51
    ld l, a                                       ; $49bf: $6f
    nop                                           ; $49c0: $00
    db $dd                                        ; $49c1: $dd
    ld a, e                                       ; $49c2: $7b
    ld h, a                                       ; $49c3: $67
    and c                                         ; $49c4: $a1
    ld sp, $f12d                                  ; $49c5: $31 $2d $f1
    ld [hl], l                                    ; $49c8: $75

jr_03c_49c9:
    ld b, [hl]                                    ; $49c9: $46
    or d                                          ; $49ca: $b2
    ld c, [hl]                                    ; $49cb: $4e
    sbc l                                         ; $49cc: $9d
    rst $20                                       ; $49cd: $e7
    ld a, [hl-]                                   ; $49ce: $3a
    ld [c], a                                     ; $49cf: $e2
    ld a, [$cebd]                                 ; $49d0: $fa $bd $ce
    cp d                                          ; $49d3: $ba
    ld a, [$d4a1]                                 ; $49d4: $fa $a1 $d4
    ld d, l                                       ; $49d7: $55
    ld a, a                                       ; $49d8: $7f
    sbc l                                         ; $49d9: $9d
    sbc d                                         ; $49da: $9a
    ld a, [bc]                                    ; $49db: $0a
    sbc a                                         ; $49dc: $9f
    db $fd                                        ; $49dd: $fd
    adc e                                         ; $49de: $8b
    ld e, b                                       ; $49df: $58
    ld a, e                                       ; $49e0: $7b
    xor $32                                       ; $49e1: $ee $32
    or a                                          ; $49e3: $b7
    ldh a, [$bd]                                  ; $49e4: $f0 $bd
    ld [hl], b                                    ; $49e6: $70
    ld l, d                                       ; $49e7: $6a
    ld [hl], e                                    ; $49e8: $73
    rst $28                                       ; $49e9: $ef
    ld [hl], d                                    ; $49ea: $72
    db $fc                                        ; $49eb: $fc
    ld d, l                                       ; $49ec: $55
    ret c                                         ; $49ed: $d8

    ld a, a                                       ; $49ee: $7f
    add l                                         ; $49ef: $85
    di                                            ; $49f0: $f3
    ld l, l                                       ; $49f1: $6d
    ld c, $67                                     ; $49f2: $0e $67
    inc h                                         ; $49f4: $24
    db $eb                                        ; $49f5: $eb
    sbc h                                         ; $49f6: $9c
    rst $20                                       ; $49f7: $e7
    ld a, d                                       ; $49f8: $7a
    scf                                           ; $49f9: $37
    ld sp, $77bc                                  ; $49fa: $31 $bc $77

jr_03c_49fd:
    ld d, c                                       ; $49fd: $51
    ld l, $12                                     ; $49fe: $2e $12
    ld l, l                                       ; $4a00: $6d
    ld a, [hl]                                    ; $4a01: $7e
    call nz, $f241                                ; $4a02: $c4 $41 $f2
    jr c, jr_03c_4a71                             ; $4a05: $38 $6a

    ld l, h                                       ; $4a07: $6c
    push af                                       ; $4a08: $f5
    rst $18                                       ; $4a09: $df
    cp e                                          ; $4a0a: $bb
    add d                                         ; $4a0b: $82
    sub c                                         ; $4a0c: $91
    adc e                                         ; $4a0d: $8b
    rlca                                          ; $4a0e: $07
    db $ec                                        ; $4a0f: $ec
    and a                                         ; $4a10: $a7
    rst $18                                       ; $4a11: $df

jr_03c_4a12:
    and c                                         ; $4a12: $a1
    call z, $aae2                                 ; $4a13: $cc $e2 $aa
    xor [hl]                                      ; $4a16: $ae
    jp c, $9e71                                   ; $4a17: $da $71 $9e

    ld h, l                                       ; $4a1a: $65
    ld b, [hl]                                    ; $4a1b: $46
    or d                                          ; $4a1c: $b2
    adc $fb                                       ; $4a1d: $ce $fb
    cp [hl]                                       ; $4a1f: $be
    ld bc, $d297                                  ; $4a20: $01 $97 $d2
    jr c, jr_03c_49af                             ; $4a23: $38 $8a

    rst $08                                       ; $4a25: $cf
    ld e, c                                       ; $4a26: $59
    inc e                                         ; $4a27: $1c
    rst $30                                       ; $4a28: $f7
    dec b                                         ; $4a29: $05

jr_03c_4a2a:
    ld [hl], d                                    ; $4a2a: $72
    adc l                                         ; $4a2b: $8d
    jr c, jr_03c_49fd                             ; $4a2c: $38 $cf

    or d                                          ; $4a2e: $b2
    sbc $5f                                       ; $4a2f: $de $5f
    ld a, [bc]                                    ; $4a31: $0a
    ei                                            ; $4a32: $fb
    reti                                          ; $4a33: $d9


    ld [c], a                                     ; $4a34: $e2
    adc $69                                       ; $4a35: $ce $69
    rrca                                          ; $4a37: $0f
    dec h                                         ; $4a38: $25
    adc [hl]                                      ; $4a39: $8e
    ld a, [de]                                    ; $4a3a: $1a
    cp a                                          ; $4a3b: $bf
    di                                            ; $4a3c: $f3
    ld l, e                                       ; $4a3d: $6b
    jr jr_03c_49c9                                ; $4a3e: $18 $89

    pop af                                        ; $4a40: $f1
    pop de                                        ; $4a41: $d1
    rst $20                                       ; $4a42: $e7
    ld a, [hl+]                                   ; $4a43: $2a
    ld b, h                                       ; $4a44: $44
    ld c, a                                       ; $4a45: $4f
    add hl, de                                    ; $4a46: $19
    sub l                                         ; $4a47: $95
    inc sp                                        ; $4a48: $33
    sub d                                         ; $4a49: $92
    ld [hl], l                                    ; $4a4a: $75
    sbc $00                                       ; $4a4b: $de $00
    db $dd                                        ; $4a4d: $dd
    ld a, [$6ae6]                                 ; $4a4e: $fa $e6 $6a
    adc $37                                       ; $4a51: $ce $37
    add sp, -$4b                                  ; $4a53: $e8 $b5
    rst $00                                       ; $4a55: $c7

Jump_03c_4a56:
    ld l, $fb                                     ; $4a56: $2e $fb
    or d                                          ; $4a58: $b2
    ld a, [bc]                                    ; $4a59: $0a
    ei                                            ; $4a5a: $fb
    adc a                                         ; $4a5b: $8f
    ld a, [c]                                     ; $4a5c: $f2
    ld h, e                                       ; $4a5d: $63
    ld e, c                                       ; $4a5e: $59
    db $dd                                        ; $4a5f: $dd
    or h                                          ; $4a60: $b4
    adc $7b                                       ; $4a61: $ce $7b
    add c                                         ; $4a63: $81
    ld l, l                                       ; $4a64: $6d
    dec h                                         ; $4a65: $25
    rla                                           ; $4a66: $17
    ld a, [hl-]                                   ; $4a67: $3a
    rst $18                                       ; $4a68: $df
    jr z, jr_03c_4a2a                             ; $4a69: $28 $bf

    ld a, [bc]                                    ; $4a6b: $0a
    dec b                                         ; $4a6c: $05
    ld a, $6a                                     ; $4a6d: $3e $6a
    ld a, h                                       ; $4a6f: $7c
    or c                                          ; $4a70: $b1

jr_03c_4a71:
    ld sp, hl                                     ; $4a71: $f9
    add hl, hl                                    ; $4a72: $29
    ld hl, $7927                                  ; $4a73: $21 $27 $79
    inc bc                                        ; $4a76: $03
    db $dd                                        ; $4a77: $dd
    cpl                                           ; $4a78: $2f
    ld [hl], c                                    ; $4a79: $71
    adc l                                         ; $4a7a: $8d
    jp nz, Jump_000_1c59                          ; $4a7b: $c2 $59 $1c

    and a                                         ; $4a7e: $a7
    ld e, h                                       ; $4a7f: $5c
    ret                                           ; $4a80: $c9


    sbc c                                         ; $4a81: $99
    ld b, h                                       ; $4a82: $44
    ld l, l                                       ; $4a83: $6d
    ret nc                                        ; $4a84: $d0

    rst $30                                       ; $4a85: $f7
    inc b                                         ; $4a86: $04
    halt                                          ; $4a87: $76
    or b                                          ; $4a88: $b0
    inc c                                         ; $4a89: $0c
    dec bc                                        ; $4a8a: $0b
    ld sp, $cd72                                  ; $4a8b: $31 $72 $cd
    di                                            ; $4a8e: $f3
    rst $28                                       ; $4a8f: $ef
    reti                                          ; $4a90: $d9


    and a                                         ; $4a91: $a7
    ld [hl], l                                    ; $4a92: $75
    xor h                                         ; $4a93: $ac
    jp $fec6                                      ; $4a94: $c3 $c6 $fe


    ccf                                           ; $4a97: $3f
    sub [hl]                                      ; $4a98: $96
    add hl, hl                                    ; $4a99: $29
    ld hl, $3e87                                  ; $4a9a: $21 $87 $3e
    rla                                           ; $4a9d: $17
    and l                                         ; $4a9e: $a5
    push de                                       ; $4a9f: $d5
    call nc, $8428                                ; $4aa0: $d4 $28 $84
    rst $28                                       ; $4aa3: $ef
    push de                                       ; $4aa4: $d5
    ld h, [hl]                                    ; $4aa5: $66
    ld d, $c7                                     ; $4aa6: $16 $c7
    add l                                         ; $4aa8: $85
    adc [hl]                                      ; $4aa9: $8e
    sbc [hl]                                      ; $4aaa: $9e
    cp d                                          ; $4aab: $ba
    ld h, $fb                                     ; $4aac: $26 $fb
    or d                                          ; $4aae: $b2
    sbc $5f                                       ; $4aaf: $de $5f
    ld a, [bc]                                    ; $4ab1: $0a
    ei                                            ; $4ab2: $fb
    reti                                          ; $4ab3: $d9


    ld [c], a                                     ; $4ab4: $e2
    adc $69                                       ; $4ab5: $ce $69
    rrca                                          ; $4ab7: $0f
    dec h                                         ; $4ab8: $25
    sbc $3b                                       ; $4ab9: $de $3b
    rst $20                                       ; $4abb: $e7
    dec bc                                        ; $4abc: $0b
    ld b, a                                       ; $4abd: $47
    adc l                                         ; $4abe: $8d
    cp a                                          ; $4abf: $bf
    ld [hl], a                                    ; $4ac0: $77
    ld sp, $f5a5                                  ; $4ac1: $31 $a5 $f5
    ld a, a                                       ; $4ac4: $7f
    db $d3                                        ; $4ac5: $d3
    ld l, h                                       ; $4ac6: $6c
    ld [hl], c                                    ; $4ac7: $71
    ccf                                           ; $4ac8: $3f
    ei                                            ; $4ac9: $fb
    add a                                         ; $4aca: $87
    and h                                         ; $4acb: $a4
    ld sp, hl                                     ; $4acc: $f9
    ld e, c                                       ; $4acd: $59
    rla                                           ; $4ace: $17
    cp c                                          ; $4acf: $b9
    ld d, d                                       ; $4ad0: $52
    ld e, b                                       ; $4ad1: $58
    ld a, c                                       ; $4ad2: $79
    jp hl                                         ; $4ad3: $e9


    ld e, d                                       ; $4ad4: $5a
    ldh a, [$35]                                  ; $4ad5: $f0 $35
    cp $be                                        ; $4ad7: $fe $be
    inc d                                         ; $4ad9: $14
    sbc e                                         ; $4ada: $9b
    ld a, e                                       ; $4adb: $7b
    db $dd                                        ; $4adc: $dd
    ld a, e                                       ; $4add: $7b
    db $db                                        ; $4ade: $db
    sub $b9                                       ; $4adf: $d6 $b9
    ret z                                         ; $4ae1: $c8

    sub l                                         ; $4ae2: $95
    ld a, [c]                                     ; $4ae3: $f2
    push af                                       ; $4ae4: $f5
    ld [hl], a                                    ; $4ae5: $77
    ld e, [hl]                                    ; $4ae6: $5e
    ld a, e                                       ; $4ae7: $7b
    ld [bc], a                                    ; $4ae8: $02
    or $2f                                        ; $4ae9: $f6 $2f
    ld h, d                                       ; $4aeb: $62
    ld e, l                                       ; $4aec: $5d
    ld b, b                                       ; $4aed: $40
    add $48                                       ; $4aee: $c6 $48
    cp c                                          ; $4af0: $b9
    ld bc, $3681                                  ; $4af1: $01 $81 $36
    ldh a, [$d9]                                  ; $4af4: $f0 $d9
    cp a                                          ; $4af6: $bf
    adc b                                         ; $4af7: $88
    ld [hl], l                                    ; $4af8: $75
    ld bc, $2319                                  ; $4af9: $01 $19 $23
    push hl                                       ; $4afc: $e5
    sbc $25                                       ; $4afd: $de $25
    xor [hl]                                      ; $4aff: $ae
    ld [$b04c], a                                 ; $4b00: $ea $4c $b0
    sbc c                                         ; $4b03: $99
    ld e, h                                       ; $4b04: $5c
    ld a, h                                       ; $4b05: $7c
    inc e                                         ; $4b06: $1c
    pop de                                        ; $4b07: $d1
    inc a                                         ; $4b08: $3c
    add $f7                                       ; $4b09: $c6 $f7
    add hl, hl                                    ; $4b0b: $29
    ldh a, [$bd]                                  ; $4b0c: $f0 $bd
    ld sp, hl                                     ; $4b0e: $f9
    ld c, [hl]                                    ; $4b0f: $4e
    adc $73                                       ; $4b10: $ce $73
    pop bc                                        ; $4b12: $c1
    rst $28                                       ; $4b13: $ef
    sub h                                         ; $4b14: $94
    sub a                                         ; $4b15: $97
    sbc c                                         ; $4b16: $99
    call nz, Call_000_2d55                        ; $4b17: $c4 $55 $2d
    ei                                            ; $4b1a: $fb
    ld h, b                                       ; $4b1b: $60
    jp z, Jump_03c_6eaf                           ; $4b1c: $ca $af $6e

    ld e, d                                       ; $4b1f: $5a
    rst $20                                       ; $4b20: $e7
    dec c                                         ; $4b21: $0d
    nop                                           ; $4b22: $00
    db $dd                                        ; $4b23: $dd
    db $ec                                        ; $4b24: $ec
    rra                                           ; $4b25: $1f
    sub d                                         ; $4b26: $92
    and $7b                                       ; $4b27: $e6 $7b
    db $ec                                        ; $4b29: $ec
    ld [hl-], a                                   ; $4b2a: $32
    adc [hl]                                      ; $4b2b: $8e
    ld a, [de]                                    ; $4b2c: $1a
    cp a                                          ; $4b2d: $bf
    di                                            ; $4b2e: $f3
    db $eb                                        ; $4b2f: $eb
    jr c, jr_03c_4b67                             ; $4b30: $38 $35

    adc a                                         ; $4b32: $8f
    ld a, $6f                                     ; $4b33: $3e $6f
    nop                                           ; $4b35: $00
    or $59                                        ; $4b36: $f6 $59
    ld e, $3e                                     ; $4b38: $1e $3e
    ei                                            ; $4b3a: $fb
    rla                                           ; $4b3b: $17
    or c                                          ; $4b3c: $b1
    sbc $b3                                       ; $4b3d: $de $b3
    db $d3                                        ; $4b3f: $d3
    sbc b                                         ; $4b40: $98
    sub $75                                       ; $4b41: $d6 $75
    sbc h                                         ; $4b43: $9c
    sbc d                                         ; $4b44: $9a
    ld b, a                                       ; $4b45: $47
    sbc a                                         ; $4b46: $9f
    dec bc                                        ; $4b47: $0b
    ld h, h                                       ; $4b48: $64
    ld a, h                                       ; $4b49: $7c
    sbc l                                         ; $4b4a: $9d
    rst $20                                       ; $4b4b: $e7
    ld c, d                                       ; $4b4c: $4a
    ld [$71ce], a                                 ; $4b4d: $ea $ce $71
    ld b, h                                       ; $4b50: $44
    ld c, a                                       ; $4b51: $4f
    cp l                                          ; $4b52: $bd
    ld h, a                                       ; $4b53: $67
    rst $08                                       ; $4b54: $cf
    and l                                         ; $4b55: $a5
    adc l                                         ; $4b56: $8d
    rst $08                                       ; $4b57: $cf
    ld e, c                                       ; $4b58: $59
    inc e                                         ; $4b59: $1c
    rla                                           ; $4b5a: $17
    ld a, h                                       ; $4b5b: $7c
    db $eb                                        ; $4b5c: $eb
    ld [$98c4], a                                 ; $4b5d: $ea $c4 $98
    ld c, b                                       ; $4b60: $48
    ld e, l                                       ; $4b61: $5d
    sbc b                                         ; $4b62: $98
    ld [hl-], a                                   ; $4b63: $32
    sub [hl]                                      ; $4b64: $96
    pop de                                        ; $4b65: $d1
    or a                                          ; $4b66: $b7

jr_03c_4b67:
    ld [$5a66], a                                 ; $4b67: $ea $66 $5a
    sbc $00                                       ; $4b6a: $de $00
    halt                                          ; $4b6c: $76
    ld h, l                                       ; $4b6d: $65
    and c                                         ; $4b6e: $a1
    ld h, h                                       ; $4b6f: $64
    dec [hl]                                      ; $4b70: $35
    dec [hl]                                      ; $4b71: $35
    ld h, l                                       ; $4b72: $65
    ld h, a                                       ; $4b73: $67
    scf                                           ; $4b74: $37
    ld b, h                                       ; $4b75: $44
    ld e, l                                       ; $4b76: $5d
    call Call_03c_7f05                            ; $4b77: $cd $05 $7f
    cp $7d                                        ; $4b7a: $fe $7d
    adc $e1                                       ; $4b7c: $ce $e1
    rst $28                                       ; $4b7e: $ef
    ld e, l                                       ; $4b7f: $5d
    ld c, h                                       ; $4b80: $4c
    ld l, c                                       ; $4b81: $69
    db $fd                                        ; $4b82: $fd
    rst $18                                       ; $4b83: $df
    inc [hl]                                      ; $4b84: $34
    ld e, e                                       ; $4b85: $5b
    ld e, h                                       ; $4b86: $5c
    ld hl, sp-$0e                                 ; $4b87: $f8 $f2
    xor e                                         ; $4b89: $ab
    ld h, h                                       ; $4b8a: $64
    xor c                                         ; $4b8b: $a9
    ld d, b                                       ; $4b8c: $50
    or $65                                        ; $4b8d: $f6 $65
    cp l                                          ; $4b8f: $bd
    cp a                                          ; $4b90: $bf
    inc d                                         ; $4b91: $14
    or $b3                                        ; $4b92: $f6 $b3
    push bc                                       ; $4b94: $c5
    sbc l                                         ; $4b95: $9d
    db $d3                                        ; $4b96: $d3
    ld e, $4a                                     ; $4b97: $1e $4a
    sbc h                                         ; $4b99: $9c
    ld [hl], l                                    ; $4b9a: $75
    dec [hl]                                      ; $4b9b: $35
    rst $20                                       ; $4b9c: $e7
    ld e, e                                       ; $4b9d: $5b

Call_03c_4b9e:
    cp a                                          ; $4b9e: $bf
    sbc h                                         ; $4b9f: $9c
    push bc                                       ; $4ba0: $c5
    ld [hl], c                                    ; $4ba1: $71
    sub c                                         ; $4ba2: $91
    dec hl                                        ; $4ba3: $2b
    ccf                                           ; $4ba4: $3f
    ld h, d                                       ; $4ba5: $62
    inc d                                         ; $4ba6: $14
    ld b, d                                       ; $4ba7: $42
    xor a                                         ; $4ba8: $af
    cp h                                          ; $4ba9: $bc
    ld [hl], a                                    ; $4baa: $77
    ld b, l                                       ; $4bab: $45
    ld e, d                                       ; $4bac: $5a
    ld b, a                                       ; $4bad: $47
    ld e, h                                       ; $4bae: $5c
    rst $00                                       ; $4baf: $c7
    xor c                                         ; $4bb0: $a9
    ld sp, hl                                     ; $4bb1: $f9
    ld a, c                                       ; $4bb2: $79
    adc $e1                                       ; $4bb3: $ce $e1
    adc h                                         ; $4bb5: $8c
    ld h, h                                       ; $4bb6: $64
    sbc l                                         ; $4bb7: $9d
    di                                            ; $4bb8: $f3
    ld e, h                                       ; $4bb9: $5c
    ld b, a                                       ; $4bba: $47
    ld e, h                                       ; $4bbb: $5c
    cp a                                          ; $4bbc: $bf
    rst $10                                       ; $4bbd: $d7
    ld e, c                                       ; $4bbe: $59
    ld d, a                                       ; $4bbf: $57
    ccf                                           ; $4bc0: $3f
    sub h                                         ; $4bc1: $94
    cp d                                          ; $4bc2: $ba
    ld [$53af], a                                 ; $4bc3: $ea $af $53
    ld d, e                                       ; $4bc6: $53
    ld h, a                                       ; $4bc7: $67
    ld [hl], c                                    ; $4bc8: $71
    sbc h                                         ; $4bc9: $9c
    cp d                                          ; $4bca: $ba
    ret nc                                        ; $4bcb: $d0

    ld d, c                                       ; $4bcc: $51
    db $e3                                        ; $4bcd: $e3
    rst $10                                       ; $4bce: $d7
    call nz, $9dc8                                ; $4bcf: $c4 $c8 $9d
    db $dd                                        ; $4bd2: $dd
    db $10                                        ; $4bd3: $10
    ld [hl], l                                    ; $4bd4: $75
    add l                                         ; $4bd5: $85
    di                                            ; $4bd6: $f3
    dec l                                         ; $4bd7: $2d
    rst $30                                       ; $4bd8: $f7
    xor e                                         ; $4bd9: $ab
    db $db                                        ; $4bda: $db
    jp nz, $c2f7                                  ; $4bdb: $c2 $f7 $c2

    dec de                                        ; $4bde: $1b
    nop                                           ; $4bdf: $00
    ld d, a                                       ; $4be0: $57
    rst $38                                       ; $4be1: $ff
    adc b                                         ; $4be2: $88
    ld h, $31                                     ; $4be3: $26 $31
    jp z, $d54b                                   ; $4be5: $ca $4b $d5

    dec d                                         ; $4be8: $15
    ld b, a                                       ; $4be9: $47
    jr z, @+$59                                   ; $4bea: $28 $57

    ld e, [hl]                                    ; $4bec: $5e
    and a                                         ; $4bed: $a7
    adc h                                         ; $4bee: $8c
    xor a                                         ; $4bef: $af
    rst $30                                       ; $4bf0: $f7
    cp d                                          ; $4bf1: $ba
    push af                                       ; $4bf2: $f5
    ld a, [hl+]                                   ; $4bf3: $2a
    and l                                         ; $4bf4: $a5
    ld l, e                                       ; $4bf5: $6b
    sub l                                         ; $4bf6: $95
    xor a                                         ; $4bf7: $af
    ld d, e                                       ; $4bf8: $53
    pop hl                                        ; $4bf9: $e1
    or e                                          ; $4bfa: $b3
    ld a, a                                       ; $4bfb: $7f
    ld de, $0f6b                                  ; $4bfc: $11 $6b $0f
    nop                                           ; $4bff: $00
    sub a                                         ; $4c00: $97
    ld [hl], c                                    ; $4c01: $71
    call nc, $9290                                ; $4c02: $d4 $90 $92
    ld a, e                                       ; $4c05: $7b
    adc e                                         ; $4c06: $8b
    or e                                          ; $4c07: $b3
    add c                                         ; $4c08: $81
    rst $08                                       ; $4c09: $cf
    cp $45                                        ; $4c0a: $fe $45
    xor h                                         ; $4c0c: $ac
    rst $30                                       ; $4c0d: $f7
    ld a, [$6ae6]                                 ; $4c0e: $fa $e6 $6a
    ld c, $69                                     ; $4c11: $0e $69
    xor b                                         ; $4c13: $a8
    dec l                                         ; $4c14: $2d
    cp [hl]                                       ; $4c15: $be
    ld [hl], h                                    ; $4c16: $74
    jp hl                                         ; $4c17: $e9


    jp nz, Jump_03c_5f97                          ; $4c18: $c2 $97 $5f

    ldh a, [$0d]                                  ; $4c1b: $f0 $0d
    ld h, l                                       ; $4c1d: $65
    ld c, $17                                     ; $4c1e: $0e $17
    push hl                                       ; $4c20: $e5
    ld h, e                                       ; $4c21: $63
    ld l, $3e                                     ; $4c22: $2e $3e
    ld c, [hl]                                    ; $4c24: $4e
    adc c                                         ; $4c25: $89
    and [hl]                                      ; $4c26: $a6
    sub l                                         ; $4c27: $95
    sub d                                         ; $4c28: $92
    inc sp                                        ; $4c29: $33
    ld e, c                                       ; $4c2a: $59
    rst $20                                       ; $4c2b: $e7
    xor b                                         ; $4c2c: $a8
    cp h                                          ; $4c2d: $bc
    ld bc, $eddd                                  ; $4c2e: $01 $dd $ed
    ld a, a                                       ; $4c31: $7f
    sub l                                         ; $4c32: $95
    and [hl]                                      ; $4c33: $a6
    ld sp, $73f7                                  ; $4c34: $31 $f7 $73
    cp b                                          ; $4c37: $b8
    ld h, b                                       ; $4c38: $60
    sub $1d                                       ; $4c39: $d6 $1d
    pop hl                                        ; $4c3b: $e1
    inc l                                         ; $4c3c: $2c
    adc [hl]                                      ; $4c3d: $8e
    xor e                                         ; $4c3e: $ab
    db $10                                        ; $4c3f: $10
    cp l                                          ; $4c40: $bd
    call $e1cf                                    ; $4c41: $cd $cf $e1
    adc h                                         ; $4c44: $8c
    ld h, h                                       ; $4c45: $64
    sbc l                                         ; $4c46: $9d
    di                                            ; $4c47: $f3
    ld e, h                                       ; $4c48: $5c
    ld b, a                                       ; $4c49: $47
    ld e, h                                       ; $4c4a: $5c
    cp a                                          ; $4c4b: $bf
    rst $10                                       ; $4c4c: $d7
    ld e, c                                       ; $4c4d: $59
    ld d, a                                       ; $4c4e: $57
    ccf                                           ; $4c4f: $3f
    sub h                                         ; $4c50: $94
    cp d                                          ; $4c51: $ba
    ld [$53af], a                                 ; $4c52: $ea $af $53
    ld d, e                                       ; $4c55: $53
    ld a, e                                       ; $4c56: $7b
    ld [bc], a                                    ; $4c57: $02
    cp l                                          ; $4c58: $bd
    add l                                         ; $4c59: $85
    add hl, sp                                    ; $4c5a: $39
    adc e                                         ; $4c5b: $8b
    db $e3                                        ; $4c5c: $e3
    and d                                         ; $4c5d: $a2
    ld a, h                                       ; $4c5e: $7c
    rst $20                                       ; $4c5f: $e7
    ei                                            ; $4c60: $fb
    db $fd                                        ; $4c61: $fd
    inc c                                         ; $4c62: $0c
    push bc                                       ; $4c63: $c5
    db $fc                                        ; $4c64: $fc
    inc a                                         ; $4c65: $3c
    ld [hl], a                                    ; $4c66: $77
    sbc [hl]                                      ; $4c67: $9e
    inc [hl]                                      ; $4c68: $34
    add h                                         ; $4c69: $84
    ld [hl-], a                                   ; $4c6a: $32
    ld b, [hl]                                    ; $4c6b: $46
    cp l                                          ; $4c6c: $bd
    ld bc, $137d                                  ; $4c6d: $01 $7d $13
    ld a, $8b                                     ; $4c70: $3e $8b
    xor e                                         ; $4c72: $ab
    cp d                                          ; $4c73: $ba
    jp z, Jump_000_00df                           ; $4c74: $ca $df $00

    ld a, l                                       ; $4c77: $7d
    ld [hl], e                                    ; $4c78: $73
    ld e, d                                       ; $4c79: $5a
    ld [hl], l                                    ; $4c7a: $75
    ld hl, sp-$02                                 ; $4c7b: $f8 $fe
    rst $20                                       ; $4c7d: $e7
    add hl, sp                                    ; $4c7e: $39
    ld l, d                                       ; $4c7f: $6a
    sbc $00                                       ; $4c80: $de $00
    ld d, a                                       ; $4c82: $57
    jr nc, @+$59                                  ; $4c83: $30 $57

    dec sp                                        ; $4c85: $3b
    inc de                                        ; $4c86: $13
    db $fc                                        ; $4c87: $fc
    ld b, c                                       ; $4c88: $41
    call nz, Call_03c_55c8                        ; $4c89: $c4 $c8 $55
    adc b                                         ; $4c8c: $88
    cp [hl]                                       ; $4c8d: $be
    ld de, $ce7d                                  ; $4c8e: $11 $7d $ce
    ld c, b                                       ; $4c91: $48
    sub $a9                                       ; $4c92: $d6 $a9
    di                                            ; $4c94: $f3
    ld e, h                                       ; $4c95: $5c
    ld b, a                                       ; $4c96: $47
    ld e, h                                       ; $4c97: $5c
    cp a                                          ; $4c98: $bf
    rst $10                                       ; $4c99: $d7
    ld e, c                                       ; $4c9a: $59
    ld d, a                                       ; $4c9b: $57
    ccf                                           ; $4c9c: $3f
    sub h                                         ; $4c9d: $94
    cp d                                          ; $4c9e: $ba
    ld [$53af], a                                 ; $4c9f: $ea $af $53
    ld d, e                                       ; $4ca2: $53
    ld l, a                                       ; $4ca3: $6f
    nop                                           ; $4ca4: $00
    ld a, l                                       ; $4ca5: $7d
    ld [hl], e                                    ; $4ca6: $73
    add l                                         ; $4ca7: $85
    dec bc                                        ; $4ca8: $0b
    add l                                         ; $4ca9: $85
    ld a, [de]                                    ; $4caa: $1a
    ld [hl], e                                    ; $4cab: $73
    rra                                           ; $4cac: $1f
    adc c                                         ; $4cad: $89
    and [hl]                                      ; $4cae: $a6
    reti                                          ; $4caf: $d9


    ld [c], a                                     ; $4cb0: $e2
    ld a, [hl]                                    ; $4cb1: $7e
    call nc, $99d7                                ; $4cb2: $d4 $d7 $99
    call nc, $1bd7                                ; $4cb5: $d4 $d7 $1b
    nop                                           ; $4cb8: $00
    ld a, l                                       ; $4cb9: $7d
    inc de                                        ; $4cba: $13
    cp [hl]                                       ; $4cbb: $be
    sub b                                         ; $4cbc: $90
    sub d                                         ; $4cbd: $92
    adc e                                         ; $4cbe: $8b
    ld e, a                                       ; $4cbf: $5f
    ld d, [hl]                                    ; $4cc0: $56
    ld h, c                                       ; $4cc1: $61
    rst $38                                       ; $4cc2: $ff
    ld h, c                                       ; $4cc3: $61
    adc [hl]                                      ; $4cc4: $8e
    ld a, [de]                                    ; $4cc5: $1a
    cp a                                          ; $4cc6: $bf
    di                                            ; $4cc7: $f3
    dec bc                                        ; $4cc8: $0b
    add l                                         ; $4cc9: $85
    ld a, [de]                                    ; $4cca: $1a
    rra                                           ; $4ccb: $1f
    ld a, l                                       ; $4ccc: $7d
    xor $23                                       ; $4ccd: $ee $23
    pop de                                        ; $4ccf: $d1
    inc [hl]                                      ; $4cd0: $34
    ld e, e                                       ; $4cd1: $5b
    cp h                                          ; $4cd2: $bc
    ld bc, $85bd                                  ; $4cd3: $01 $bd $85
    add hl, sp                                    ; $4cd6: $39

jr_03c_4cd7:
    adc e                                         ; $4cd7: $8b
    db $e3                                        ; $4cd8: $e3
    ld c, d                                       ; $4cd9: $4a
    xor [hl]                                      ; $4cda: $ae
    jp nc, $1c46                                  ; $4cdb: $d2 $46 $1c

    srl d                                         ; $4cde: $cb $3a
    adc a                                         ; $4ce0: $8f
    ld h, $6f                                     ; $4ce1: $26 $6f
    nop                                           ; $4ce3: $00
    ld d, a                                       ; $4ce4: $57
    rst $20                                       ; $4ce5: $e7
    inc [hl]                                      ; $4ce6: $34
    xor l                                         ; $4ce7: $ad
    ld h, e                                       ; $4ce8: $63
    ld e, c                                       ; $4ce9: $59
    jr nc, jr_03c_4cd7                            ; $4cea: $30 $eb

    adc [hl]                                      ; $4cec: $8e
    ld [hl], b                                    ; $4ced: $70
    ld d, $c7                                     ; $4cee: $16 $c7
    ld d, l                                       ; $4cf0: $55
    adc b                                         ; $4cf1: $88
    sbc [hl]                                      ; $4cf2: $9e
    ld [hl], e                                    ; $4cf3: $73
    jr c, jr_03c_4d19                             ; $4cf4: $38 $23

    ld e, c                                       ; $4cf6: $59
    rst $20                                       ; $4cf7: $e7
    inc a                                         ; $4cf8: $3c
    rst $10                                       ; $4cf9: $d7
    ld de, $efd7                                  ; $4cfa: $11 $d7 $ef
    ld [hl], l                                    ; $4cfd: $75
    sub $d5                                       ; $4cfe: $d6 $d5
    rrca                                          ; $4d00: $0f
    and l                                         ; $4d01: $a5
    jp nz, Jump_03c_5217                          ; $4d02: $c2 $17 $52

    ld [hl], d                                    ; $4d05: $72
    call nc, Call_000_35d8                        ; $4d06: $d4 $d8 $35
    ld [c], a                                     ; $4d09: $e2
    ld [$d336], a                                 ; $4d0a: $ea $36 $d3
    ld d, l                                       ; $4d0d: $55
    cp a                                          ; $4d0e: $bf
    db $fc                                        ; $4d0f: $fc
    adc b                                         ; $4d10: $88
    dec sp                                        ; $4d11: $3b
    ld c, a                                       ; $4d12: $4f
    ld a, [de]                                    ; $4d13: $1a
    ld b, d                                       ; $4d14: $42
    add hl, de                                    ; $4d15: $19
    and e                                         ; $4d16: $a3
    sbc $0b                                       ; $4d17: $de $0b

jr_03c_4d19:
    ld l, h                                       ; $4d19: $6c
    xor e                                         ; $4d1a: $ab
    cp h                                          ; $4d1b: $bc
    adc $ba                                       ; $4d1c: $ce $ba
    sub d                                         ; $4d1e: $92
    inc sp                                        ; $4d1f: $33
    add hl, bc                                    ; $4d20: $09
    ld d, c                                       ; $4d21: $51
    rla                                           ; $4d22: $17
    rrca                                          ; $4d23: $0f
    add b                                         ; $4d24: $80
    cpl                                           ; $4d25: $2f
    ld [hl], d                                    ; $4d26: $72
    pop bc                                        ; $4d27: $c1
    sub a                                         ; $4d28: $97
    xor d                                         ; $4d29: $aa
    ld [hl], e                                    ; $4d2a: $73
    ld hl, sp+$13                                 ; $4d2b: $f8 $13
    halt                                          ; $4d2d: $76
    cp [hl]                                       ; $4d2e: $be
    rst $18                                       ; $4d2f: $df
    jp $b9e7                                      ; $4d30: $c3 $e7 $b9


    ld h, e                                       ; $4d33: $63
    ld d, $36                                     ; $4d34: $16 $36
    ld a, d                                       ; $4d36: $7a
    ld sp, hl                                     ; $4d37: $f9
    ld [hl], l                                    ; $4d38: $75
    ret c                                         ; $4d39: $d8

    ccf                                           ; $4d3a: $3f
    ld e, a                                       ; $4d3b: $5f
    or $3b                                        ; $4d3c: $f6 $3b
    and $e8                                       ; $4d3e: $e6 $e8
    dec b                                         ; $4d40: $05
    ld [hl], $03                                  ; $4d41: $36 $03
    and e                                         ; $4d43: $a3
    ld d, b                                       ; $4d44: $50
    ld l, a                                       ; $4d45: $6f
    nop                                           ; $4d46: $00
    ld a, l                                       ; $4d47: $7d
    sbc h                                         ; $4d48: $9c
    ld [hl], l                                    ; $4d49: $75
    sbc l                                         ; $4d4a: $9d
    ld b, [hl]                                    ; $4d4b: $46
    cp h                                          ; $4d4c: $bc
    ld bc, $b076                                  ; $4d4d: $01 $76 $b0
    inc c                                         ; $4d50: $0c

Call_03c_4d51:
    dec bc                                        ; $4d51: $0b
    ld sp, $def2                                  ; $4d52: $31 $f2 $de
    dec d                                         ; $4d55: $15
    ld e, a                                       ; $4d56: $5f
    and a                                         ; $4d57: $a7
    xor $77                                       ; $4d58: $ee $77
    sbc [hl]                                      ; $4d5a: $9e
    inc [hl]                                      ; $4d5b: $34
    add h                                         ; $4d5c: $84
    ld [hl-], a                                   ; $4d5d: $32
    ld b, [hl]                                    ; $4d5e: $46
    sbc l                                         ; $4d5f: $9d
    ld [hl], l                                    ; $4d60: $75
    sub c                                         ; $4d61: $91
    ld a, e                                       ; $4d62: $7b
    rla                                           ; $4d63: $17
    ld d, e                                       ; $4d64: $53
    ld e, d                                       ; $4d65: $5a
    rst $38                                       ; $4d66: $ff
    sub a                                         ; $4d67: $97
    xor d                                         ; $4d68: $aa
    ei                                            ; $4d69: $fb
    ld e, c                                       ; $4d6a: $59
    inc e                                         ; $4d6b: $1c
    ld b, a                                       ; $4d6c: $47
    adc h                                         ; $4d6d: $8c
    ld b, d                                       ; $4d6e: $42
    dec e                                         ; $4d6f: $1d
    ld [hl], c                                    ; $4d70: $71
    ld [hl], l                                    ; $4d71: $75
    sbc e                                         ; $4d72: $9b
    jp hl                                         ; $4d73: $e9


    xor d                                         ; $4d74: $aa
    ld e, a                                       ; $4d75: $5f
    cp $06                                        ; $4d76: $fe $06
    ld a, l                                       ; $4d78: $7d
    cp b                                          ; $4d79: $b8
    ret z                                         ; $4d7a: $c8

    ld a, [hl-]                                   ; $4d7b: $3a
    ld h, a                                       ; $4d7c: $67
    ld [hl], c                                    ; $4d7d: $71
    inc e                                         ; $4d7e: $1c
    and $22                                       ; $4d7f: $e6 $22
    ld de, $c5ca                                  ; $4d81: $11 $ca $c5
    rst $00                                       ; $4d84: $c7
    sbc b                                         ; $4d85: $98
    scf                                           ; $4d86: $37
    nop                                           ; $4d87: $00
    sub a                                         ; $4d88: $97
    cp b                                          ; $4d89: $b8
    xor d                                         ; $4d8a: $aa
    dec bc                                        ; $4d8b: $0b
    adc c                                         ; $4d8c: $89
    ld a, a                                       ; $4d8d: $7f
    rst $28                                       ; $4d8e: $ef
    ld a, [bc]                                    ; $4d8f: $0a
    rst $00                                       ; $4d90: $c7
    ld d, d                                       ; $4d91: $52
    pop hl                                        ; $4d92: $e1
    adc h                                         ; $4d93: $8c
    ld a, e                                       ; $4d94: $7b
    db $f4                                        ; $4d95: $f4
    cp c                                          ; $4d96: $b9
    sub d                                         ; $4d97: $92
    adc e                                         ; $4d98: $8b
    ld b, h                                       ; $4d99: $44
    add sp, -$0b                                  ; $4d9a: $e8 $f5
    sbc [hl]                                      ; $4d9c: $9e
    sbc l                                         ; $4d9d: $9d
    add $97                                       ; $4d9e: $c6 $97
    xor d                                         ; $4da0: $aa
    dec bc                                        ; $4da1: $0b
    ld d, e                                       ; $4da2: $53
    or $16                                        ; $4da3: $f6 $16
    ld h, a                                       ; $4da5: $67
    ld [hl], e                                    ; $4da6: $73
    inc bc                                        ; $4da7: $03
    halt                                          ; $4da8: $76
    ld h, l                                       ; $4da9: $65
    ld b, [hl]                                    ; $4daa: $46
    or d                                          ; $4dab: $b2
    adc $19                                       ; $4dac: $ce $19
    ld b, a                                       ; $4dae: $47
    adc l                                         ; $4daf: $8d
    cp a                                          ; $4db0: $bf
    ld h, e                                       ; $4db1: $63
    adc [hl]                                      ; $4db2: $8e
    sbc [hl]                                      ; $4db3: $9e

Jump_03c_4db4:
    ld [hl], $03                                  ; $4db4: $36 $03
    and e                                         ; $4db6: $a3
    ld d, b                                       ; $4db7: $50
    rla                                           ; $4db8: $17
    ld d, d                                       ; $4db9: $52
    ld [hl], d                                    ; $4dba: $72
    sbc b                                         ; $4dbb: $98
    adc e                                         ; $4dbc: $8b
    ld b, h                                       ; $4dbd: $44
    jr z, jr_03c_4dd7                             ; $4dbe: $28 $17

    rra                                           ; $4dc0: $1f
    ld h, e                                       ; $4dc1: $63
    adc $37                                       ; $4dc2: $ce $37
    and h                                         ; $4dc4: $a4
    db $e4                                        ; $4dc5: $e4
    cp l                                          ; $4dc6: $bd
    xor $7d                                       ; $4dc7: $ee $7d
    cp b                                          ; $4dc9: $b8
    ret nc                                        ; $4dca: $d0

    pop de                                        ; $4dcb: $d1
    ld d, e                                       ; $4dcc: $53
    rst $20                                       ; $4dcd: $e7
    ld e, a                                       ; $4dce: $5f
    halt                                          ; $4dcf: $76
    call z, $d3d1                                 ; $4dd0: $cc $d1 $d3
    ld h, [hl]                                    ; $4dd3: $66
    ld h, b                                       ; $4dd4: $60
    inc d                                         ; $4dd5: $14
    ld l, d                                       ; $4dd6: $6a

jr_03c_4dd7:
    ld c, a                                       ; $4dd7: $4f
    nop                                           ; $4dd8: $00
    add c                                         ; $4dd9: $81
    ld [hl], $37                                  ; $4dda: $36 $37
    nop                                           ; $4ddc: $00
    db $dd                                        ; $4ddd: $dd
    db $ed                                        ; $4dde: $ed
    ld [hl], b                                    ; $4ddf: $70
    ld d, $57                                     ; $4de0: $16 $57
    ld [hl], l                                    ; $4de2: $75
    and c                                         ; $4de3: $a1
    and e                                         ; $4de4: $a3
    rst $08                                       ; $4de5: $cf
    add hl, hl                                    ; $4de6: $29
    and l                                         ; $4de7: $a5
    jp nc, $b0a4                                  ; $4de8: $d2 $a4 $b0

    daa                                           ; $4deb: $27
    nop                                           ; $4dec: $00
    halt                                          ; $4ded: $76
    ld h, l                                       ; $4dee: $65
    add c                                         ; $4def: $81
    ld [hl], d                                    ; $4df0: $72
    cpl                                           ; $4df1: $2f
    jr nz, @+$65                                  ; $4df2: $20 $63

    and h                                         ; $4df4: $a4
    adc h                                         ; $4df5: $8c
    ld a, [de]                                    ; $4df6: $1a
    cp e                                          ; $4df7: $bb
    or $2e                                        ; $4df8: $f6 $2e
    and [hl]                                      ; $4dfa: $a6
    or h                                          ; $4dfb: $b4
    cp $ef                                        ; $4dfc: $fe $ef
    ld [hl], e                                    ; $4dfe: $73
    ccf                                           ; $4dff: $3f
    ld h, d                                       ; $4e00: $62
    sub h                                         ; $4e01: $94
    sub a                                         ; $4e02: $97
    ld de, $b757                                  ; $4e03: $11 $57 $b7
    sbc c                                         ; $4e06: $99
    xor [hl]                                      ; $4e07: $ae
    ld a, [$e1e5]                                 ; $4e08: $fa $e5 $e1
    dec sp                                        ; $4e0b: $3b
    push hl                                       ; $4e0c: $e5
    sub h                                         ; $4e0d: $94
    sub e                                         ; $4e0e: $93
    pop hl                                        ; $4e0f: $e1
    or e                                          ; $4e10: $b3
    ld c, [hl]                                    ; $4e11: $4e
    rst $18                                       ; $4e12: $df
    cp h                                          ; $4e13: $bc
    call z, $8ce1                                 ; $4e14: $cc $e1 $8c
    ld h, h                                       ; $4e17: $64
    sbc l                                         ; $4e18: $9d
    di                                            ; $4e19: $f3
    ld e, h                                       ; $4e1a: $5c
    ld b, a                                       ; $4e1b: $47
    ld e, h                                       ; $4e1c: $5c
    cp a                                          ; $4e1d: $bf
    rst $10                                       ; $4e1e: $d7
    ld e, c                                       ; $4e1f: $59
    ld d, a                                       ; $4e20: $57
    ccf                                           ; $4e21: $3f
    sub h                                         ; $4e22: $94
    cp d                                          ; $4e23: $ba
    ld [$53af], a                                 ; $4e24: $ea $af $53
    ld d, e                                       ; $4e27: $53
    ld l, a                                       ; $4e28: $6f
    nop                                           ; $4e29: $00
    db $dd                                        ; $4e2a: $dd
    ei                                            ; $4e2b: $fb
    ld [hl], b                                    ; $4e2c: $70
    ld b, h                                       ; $4e2d: $44
    push hl                                       ; $4e2e: $e5
    pop bc                                        ; $4e2f: $c1
    ccf                                           ; $4e30: $3f
    ld [hl], l                                    ; $4e31: $75
    dec hl                                        ; $4e32: $2b
    push hl                                       ; $4e33: $e5

Jump_03c_4e34:
    dec hl                                        ; $4e34: $2b
    add h                                         ; $4e35: $84
    ld c, a                                       ; $4e36: $4f
    ld a, c                                       ; $4e37: $79
    ld [hl], b                                    ; $4e38: $70
    ld c, d                                       ; $4e39: $4a
    ld c, a                                       ; $4e3a: $4f
    nop                                           ; $4e3b: $00
    sub a                                         ; $4e3c: $97
    ld h, l                                       ; $4e3d: $65
    call Call_03c_767b                            ; $4e3e: $cd $7b $76
    ld h, l                                       ; $4e41: $65
    add c                                         ; $4e42: $81
    ld [hl], d                                    ; $4e43: $72
    cpl                                           ; $4e44: $2f

Call_03c_4e45:
    jr nz, jr_03c_4eaa                            ; $4e45: $20 $63

    and h                                         ; $4e47: $a4
    xor h                                         ; $4e48: $ac
    ld c, c                                       ; $4e49: $49
    rst $10                                       ; $4e4a: $d7
    inc [hl]                                      ; $4e4b: $34
    ld c, e                                       ; $4e4c: $4b
    sbc $b3                                       ; $4e4d: $de $b3
    ld a, a                                       ; $4e4f: $7f
    adc l                                         ; $4e50: $8d
    cp a                                          ; $4e51: $bf
    ld [c], a                                     ; $4e52: $e2
    ld [$7c25], sp                                ; $4e53: $08 $25 $7c
    or $2f                                        ; $4e56: $f6 $2f
    ld h, d                                       ; $4e58: $62
    cp l                                          ; $4e59: $bd
    ld bc, $9c7d                                  ; $4e5a: $01 $7d $9c
    ld [hl], l                                    ; $4e5d: $75
    sbc l                                         ; $4e5e: $9d
    ld b, [hl]                                    ; $4e5f: $46
    cp h                                          ; $4e60: $bc
    ld [hl], a                                    ; $4e61: $77
    push bc                                       ; $4e62: $c5
    rst $10                                       ; $4e63: $d7
    xor c                                         ; $4e64: $a9
    ei                                            ; $4e65: $fb
    sub l                                         ; $4e66: $95
    rra                                           ; $4e67: $1f
    ld a, [hl-]                                   ; $4e68: $3a
    ld d, [hl]                                    ; $4e69: $56
    ld a, [hl]                                    ; $4e6a: $7e
    ld c, d                                       ; $4e6b: $4a
    ld h, e                                       ; $4e6c: $63
    sbc d                                         ; $4e6d: $9a
    dec l                                         ; $4e6e: $2d
    adc $73                                       ; $4e6f: $ce $73
    and [hl]                                      ; $4e71: $a6
    xor e                                         ; $4e72: $ab
    ld a, [hl]                                    ; $4e73: $7e

Jump_03c_4e74:
    ld a, c                                       ; $4e74: $79
    cp l                                          ; $4e75: $bd
    rla                                           ; $4e76: $17
    ld l, b                                       ; $4e77: $68
    inc bc                                        ; $4e78: $03

Call_03c_4e79:
    ld a, l                                       ; $4e79: $7d
    ld c, l                                       ; $4e7a: $4d
    ld hl, sp-$3e                                 ; $4e7b: $f8 $c2
    sub h                                         ; $4e7d: $94
    ld d, l                                       ; $4e7e: $55
    ld a, a                                       ; $4e7f: $7f
    dec h                                         ; $4e80: $25
    push hl                                       ; $4e81: $e5
    ld b, $17                                     ; $4e82: $06 $17
    db $fd                                        ; $4e84: $fd
    ld c, h                                       ; $4e85: $4c
    ld d, a                                       ; $4e86: $57
    db $fd                                        ; $4e87: $fd
    ld a, [c]                                     ; $4e88: $f2
    dec sp                                        ; $4e89: $3b
    push hl                                       ; $4e8a: $e5
    sub h                                         ; $4e8b: $94
    sub e                                         ; $4e8c: $93
    ld b, a                                       ; $4e8d: $47
    adc l                                         ; $4e8e: $8d
    ld e, l                                       ; $4e8f: $5d
    dec bc                                        ; $4e90: $0b
    ld d, e                                       ; $4e91: $53
    or $16                                        ; $4e92: $f6 $16
    ld h, a                                       ; $4e94: $67
    ld [hl], e                                    ; $4e95: $73
    rst $08                                       ; $4e96: $cf
    ld c, $a3                                     ; $4e97: $0e $a3
    ld [hl], b                                    ; $4e99: $70
    sbc d                                         ; $4e9a: $9a
    dec h                                         ; $4e9b: $25
    ld b, a                                       ; $4e9c: $47
    ld e, h                                       ; $4e9d: $5c
    ld sp, hl                                     ; $4e9e: $f9
    sbc c                                         ; $4e9f: $99
    xor [hl]                                      ; $4ea0: $ae
    ld a, [$f7e5]                                 ; $4ea1: $fa $e5 $f7
    ld l, $a6                                     ; $4ea4: $2e $a6
    or h                                          ; $4ea6: $b4
    cp $ef                                        ; $4ea7: $fe $ef
    rst $38                                       ; $4ea9: $ff

jr_03c_4eaa:
    sbc $79                                       ; $4eaa: $de $79
    jp nc, $ca10                                  ; $4eac: $d2 $10 $ca

    jr jr_03c_4f26                                ; $4eaf: $18 $75

    sbc b                                         ; $4eb1: $98
    ld d, e                                       ; $4eb2: $53
    ld c, [hl]                                    ; $4eb3: $4e
    xor b                                         ; $4eb4: $a8
    ld h, c                                       ; $4eb5: $61
    and d                                         ; $4eb6: $a2
    ld a, [hl]                                    ; $4eb7: $7e
    and a                                         ; $4eb8: $a7
    sub l                                         ; $4eb9: $95
    sub $ff                                       ; $4eba: $d6 $ff
    rst $20                                       ; $4ebc: $e7
    cp c                                          ; $4ebd: $b9
    sub d                                         ; $4ebe: $92
    cp d                                          ; $4ebf: $ba
    sub a                                         ; $4ec0: $97
    ld l, b                                       ; $4ec1: $68
    ld h, e                                       ; $4ec2: $63
    ld e, h                                       ; $4ec3: $5c
    ld c, c                                       ; $4ec4: $49
    ld e, l                                       ; $4ec5: $5d
    xor [hl]                                      ; $4ec6: $ae
    ld l, [hl]                                    ; $4ec7: $6e
    xor h                                         ; $4ec8: $ac
    dec sp                                        ; $4ec9: $3b
    sub d                                         ; $4eca: $92
    cp d                                          ; $4ecb: $ba
    sub b                                         ; $4ecc: $90
    ld [c], a                                     ; $4ecd: $e2
    sbc e                                         ; $4ece: $9b
    ld c, a                                       ; $4ecf: $4f
    cp l                                          ; $4ed0: $bd
    ld bc, $e517                                  ; $4ed1: $01 $17 $e5
    or h                                          ; $4ed4: $b4
    ld de, $ae63                                  ; $4ed5: $11 $63 $ae
    halt                                          ; $4ed8: $76
    ld h, $68                                     ; $4ed9: $26 $68
    and e                                         ; $4edb: $a3
    xor l                                         ; $4edc: $ad
    ld c, [hl]                                    ; $4edd: $4e
    ld hl, sp-$6c                                 ; $4ede: $f8 $94
    rlca                                          ; $4ee0: $07
    and a                                         ; $4ee1: $a7
    ret nz                                        ; $4ee2: $c0

    rla                                           ; $4ee3: $17
    ld d, d                                       ; $4ee4: $52
    ld [hl], d                                    ; $4ee5: $72
    sbc [hl]                                      ; $4ee6: $9e
    sbc l                                         ; $4ee7: $9d
    ld e, h                                       ; $4ee8: $5c
    dec h                                         ; $4ee9: $25
    ld c, e                                       ; $4eea: $4b
    add l                                         ; $4eeb: $85
    or d                                          ; $4eec: $b2
    ld e, a                                       ; $4eed: $5f
    ld sp, hl                                     ; $4eee: $f9
    ld de, $bca3                                  ; $4eef: $11 $a3 $bc
    rst $38                                       ; $4ef2: $ff
    dec de                                        ; $4ef3: $1b
    nop                                           ; $4ef4: $00
    rla                                           ; $4ef5: $17
    push hl                                       ; $4ef6: $e5
    or h                                          ; $4ef7: $b4
    ld de, $c263                                  ; $4ef8: $11 $63 $c2
    ld b, a                                       ; $4efb: $47
    adc l                                         ; $4efc: $8d
    cp a                                          ; $4efd: $bf
    ld a, [bc]                                    ; $4efe: $0a
    ld sp, $fe3e                                  ; $4eff: $31 $3e $fe
    xor b                                         ; $4f02: $a8
    or c                                          ; $4f03: $b1
    ld l, e                                       ; $4f04: $6b
    add [hl]                                      ; $4f05: $86
    ld [hl+], a                                   ; $4f06: $22
    rst $28                                       ; $4f07: $ef
    rst $38                                       ; $4f08: $ff
    ld b, $bd                                     ; $4f09: $06 $bd
    inc de                                        ; $4f0b: $13
    push af                                       ; $4f0c: $f5
    add b                                         ; $4f0d: $80
    ld [de], a                                    ; $4f0e: $12
    ld e, c                                       ; $4f0f: $59
    cp b                                          ; $4f10: $b8
    cpl                                           ; $4f11: $2f
    db $d3                                        ; $4f12: $d3
    ld b, $b9                                     ; $4f13: $06 $b9
    ld b, [hl]                                    ; $4f15: $46
    adc h                                         ; $4f16: $8c
    sbc h                                         ; $4f17: $9c
    ld sp, hl                                     ; $4f18: $f9
    ld a, [hl]                                    ; $4f19: $7e
    sub h                                         ; $4f1a: $94
    cp h                                          ; $4f1b: $bc
    ld bc, $13bd                                  ; $4f1c: $01 $bd $13
    push af                                       ; $4f1f: $f5
    add b                                         ; $4f20: $80
    ld [de], a                                    ; $4f21: $12
    ld e, c                                       ; $4f22: $59
    cp b                                          ; $4f23: $b8
    cpl                                           ; $4f24: $2f
    inc sp                                        ; $4f25: $33

jr_03c_4f26:
    rst $18                                       ; $4f26: $df
    adc a                                         ; $4f27: $8f
    sub d                                         ; $4f28: $92
    ld a, e                                       ; $4f29: $7b
    adc h                                         ; $4f2a: $8c
    sub h                                         ; $4f2b: $94
    sub [hl]                                      ; $4f2c: $96
    ld [hl], d                                    ; $4f2d: $72
    inc bc                                        ; $4f2e: $03
    rla                                           ; $4f2f: $17
    push hl                                       ; $4f30: $e5
    or h                                          ; $4f31: $b4
    ld de, $c263                                  ; $4f32: $11 $63 $c2
    and a                                         ; $4f35: $a7
    inc a                                         ; $4f36: $3c
    jr c, jr_03c_4f3e                             ; $4f37: $38 $05

    cp [hl]                                       ; $4f39: $be
    cp d                                          ; $4f3a: $ba
    call $bf7c                                    ; $4f3b: $cd $7c $bf

jr_03c_4f3e:
    rra                                           ; $4f3e: $1f
    dec [hl]                                      ; $4f3f: $35
    halt                                          ; $4f40: $76
    ld c, l                                       ; $4f41: $4d
    ld [hl-], a                                   ; $4f42: $32
    cp $0d                                        ; $4f43: $fe $0d
    nop                                           ; $4f45: $00
    cp l                                          ; $4f46: $bd
    ld e, l                                       ; $4f47: $5d
    di                                            ; $4f48: $f3
    rst $28                                       ; $4f49: $ef
    inc de                                        ; $4f4a: $13
    ld a, $e5                                     ; $4f4b: $3e $e5
    pop bc                                        ; $4f4d: $c1
    add hl, hl                                    ; $4f4e: $29
    ldh a, [$a1]                                  ; $4f4f: $f0 $a1
    and e                                         ; $4f51: $a3
    ld b, [hl]                                    ; $4f52: $46
    ld sp, hl                                     ; $4f53: $f9
    and c                                         ; $4f54: $a1
    ld h, e                                       ; $4f55: $63
    push hl                                       ; $4f56: $e5
    rla                                           ; $4f57: $17
    sub [hl]                                      ; $4f58: $96
    rst $00                                       ; $4f59: $c7
    ld hl, sp-$5d                                 ; $4f5a: $f8 $a3
    add $ae                                       ; $4f5c: $c6 $ae
    db $fd                                        ; $4f5e: $fd
    ld bc, $8738                                  ; $4f5f: $01 $38 $87
    dec bc                                        ; $4f62: $0b
    db $d3                                        ; $4f63: $d3
    db $e4                                        ; $4f64: $e4
    add h                                         ; $4f65: $84
    jp c, $f2f9                                   ; $4f66: $da $f9 $f2

    cp [hl]                                       ; $4f69: $be
    push af                                       ; $4f6a: $f5
    rst $38                                       ; $4f6b: $ff
    dec de                                        ; $4f6c: $1b
    nop                                           ; $4f6d: $00
    db $dd                                        ; $4f6e: $dd
    cpl                                           ; $4f6f: $2f
    ld l, e                                       ; $4f70: $6b
    ld b, h                                       ; $4f71: $44
    ld [$6658], a                                 ; $4f72: $ea $58 $66
    inc h                                         ; $4f75: $24
    db $eb                                        ; $4f76: $eb
    db $ec                                        ; $4f77: $ec
    add hl, bc                                    ; $4f78: $09
    nop                                           ; $4f79: $00
    ld a, l                                       ; $4f7a: $7d
    di                                            ; $4f7b: $f3

Jump_03c_4f7c:
    ld b, $01                                     ; $4f7c: $06 $01
    adc [hl]                                      ; $4f7e: $8e
    ld a, [bc]                                    ; $4f7f: $0a
    sbc a                                         ; $4f80: $9f
    ld c, c                                       ; $4f81: $49
    ld d, h                                       ; $4f82: $54
    dec de                                        ; $4f83: $1b

Call_03c_4f84:
    ret z                                         ; $4f84: $c8

    or c                                          ; $4f85: $b1
    db $e4                                        ; $4f86: $e4
    ld b, d                                       ; $4f87: $42
    ld c, c                                       ; $4f88: $49
    adc h                                         ; $4f89: $8c
    add hl, bc                                    ; $4f8a: $09
    ld e, a                                       ; $4f8b: $5f
    sbc b                                         ; $4f8c: $98
    or d                                          ; $4f8d: $b2
    ld [$a4af], a                                 ; $4f8e: $ea $af $a4
    call c, $9beb                                 ; $4f91: $dc $eb $9b
    dec bc                                        ; $4f94: $0b
    dec e                                         ; $4f95: $1d
    ld a, l                                       ; $4f96: $7d
    adc [hl]                                      ; $4f97: $8e
    ld a, [de]                                    ; $4f98: $1a
    ld d, d                                       ; $4f99: $52
    ld e, [hl]                                    ; $4f9a: $5e
    ld d, $d3                                     ; $4f9b: $16 $d3
    rst $20                                       ; $4f9d: $e7
    ld e, b                                       ; $4f9e: $58
    and $6d                                       ; $4f9f: $e6 $6d
    cp $06                                        ; $4fa1: $fe $06
    cp l                                          ; $4fa3: $bd
    db $dd                                        ; $4fa4: $dd
    and e                                         ; $4fa5: $a3
    rst $08                                       ; $4fa6: $cf
    dec b                                         ; $4fa7: $05
    rst $18                                       ; $4fa8: $df
    ld a, [$48ba]                                 ; $4fa9: $fa $ba $48
    xor c                                         ; $4fac: $a9
    dec de                                        ; $4fad: $1b
    cp [hl]                                       ; $4fae: $be
    ld c, a                                       ; $4faf: $4f
    ld hl, sp-$14                                 ; $4fb0: $f8 $ec
    ld e, a                                       ; $4fb2: $5f
    call nz, Call_03c_5f0a                        ; $4fb3: $c4 $0a $5f
    sbc b                                         ; $4fb6: $98
    sbc [hl]                                      ; $4fb7: $9e
    ld [hl], l                                    ; $4fb8: $75
    ld [$592a], a                                 ; $4fb9: $ea $2a $59
    ld a, [hl+]                                   ; $4fbc: $2a
    sub h                                         ; $4fbd: $94
    db $fd                                        ; $4fbe: $fd

Call_03c_4fbf:
    db $ec                                        ; $4fbf: $ec
    inc de                                        ; $4fc0: $13
    add d                                         ; $4fc1: $82
    ld sp, hl                                     ; $4fc2: $f9
    ld [de], a                                    ; $4fc3: $12
    push af                                       ; $4fc4: $f5
    ld b, $97                                     ; $4fc5: $06 $97
    ld de, $5e6d                                  ; $4fc7: $11 $6d $5e
    rla                                           ; $4fca: $17
    and h                                         ; $4fcb: $a4
    inc [hl]                                      ; $4fcc: $34
    rst $38                                       ; $4fcd: $ff
    ld a, [hl-]                                   ; $4fce: $3a
    ld c, b                                       ; $4fcf: $48
    cp [hl]                                       ; $4fd0: $be
    ld b, d                                       ; $4fd1: $42
    add l                                         ; $4fd2: $85
    cpl                                           ; $4fd3: $2f
    and h                                         ; $4fd4: $a4
    db $e4                                        ; $4fd5: $e4
    ld a, $98                                     ; $4fd6: $3e $98
    ld a, [c]                                     ; $4fd8: $f2
    and e                                         ; $4fd9: $a3
    add $2e                                       ; $4fda: $c6 $2e
    sbc l                                         ; $4fdc: $9d
    ld [hl], c                                    ; $4fdd: $71
    ld a, [c]                                     ; $4fde: $f2
    ld a, $6f                                     ; $4fdf: $3e $6f
    nop                                           ; $4fe1: $00
    ld d, a                                       ; $4fe2: $57
    jr nc, @-$1d                                  ; $4fe3: $30 $e1

    or e                                          ; $4fe5: $b3
    jr c, jr_03c_5016                             ; $4fe6: $38 $2e

    ld hl, sp-$5d                                 ; $4fe8: $f8 $a3
    add $f7                                       ; $4fea: $c6 $f7
    add hl, sp                                    ; $4fec: $39
    ld [c], a                                     ; $4fed: $e2
    ld e, b                                       ; $4fee: $58
    ld h, [hl]                                    ; $4fef: $66
    sbc h                                         ; $4ff0: $9c
    inc a                                         ; $4ff1: $3c
    ld a, d                                       ; $4ff2: $7a
    ld c, d                                       ; $4ff3: $4a
    sbc $00                                       ; $4ff4: $de $00
    halt                                          ; $4ff6: $76
    ld a, [de]                                    ; $4ff7: $1a
    cp e                                          ; $4ff8: $bb
    ld d, [hl]                                    ; $4ff9: $56
    dec sp                                        ; $4ffa: $3b
    inc de                                        ; $4ffb: $13
    call z, $ecd5                                 ; $4ffc: $cc $d5 $ec
    sub a                                         ; $4fff: $97
    ld [hl-], a                                   ; $5000: $32
    adc e                                         ; $5001: $8b
    db $e3                                        ; $5002: $e3
    jp z, $80ef                                   ; $5003: $ca $ef $80

    ld [de], a                                    ; $5006: $12
    ld e, e                                       ; $5007: $5b
    db $fd                                        ; $5008: $fd
    xor e                                         ; $5009: $ab
    or b                                          ; $500a: $b0
    rst $38                                       ; $500b: $ff
    inc l                                         ; $500c: $2c
    adc [hl]                                      ; $500d: $8e
    dec hl                                        ; $500e: $2b
    cp c                                          ; $500f: $b9
    ld c, d                                       ; $5010: $4a
    cp e                                          ; $5011: $bb
    ld bc, $1a76                                  ; $5012: $01 $76 $1a
    ld d, d                                       ; $5015: $52

jr_03c_5016:
    ld [hl], d                                    ; $5016: $72
    ld d, $c7                                     ; $5017: $16 $c7
    dec d                                         ; $5019: $15
    xor [hl]                                      ; $501a: $ae
    ld a, [c]                                     ; $501b: $f2
    sub $5f                                       ; $501c: $d6 $5f
    call Call_000_297e                            ; $501e: $cd $7e $29
    inc hl                                        ; $5021: $23
    xor [hl]                                      ; $5022: $ae
    db $fc                                        ; $5023: $fc
    adc d                                         ; $5024: $8a
    inc sp                                        ; $5025: $33
    pop bc                                        ; $5026: $c1
    rra                                           ; $5027: $1f
    dec [hl]                                      ; $5028: $35
    cp $2a                                        ; $5029: $fe $2a
    db $ec                                        ; $502b: $ec
    rrca                                          ; $502c: $0f
    sbc a                                         ; $502d: $9f
    ld a, [c]                                     ; $502e: $f2
    ldh [$94], a                                  ; $502f: $e0 $94
    dec de                                        ; $5031: $1b
    nop                                           ; $5032: $00
    halt                                          ; $5033: $76
    ld [hl], l                                    ; $5034: $75
    adc e                                         ; $5035: $8b
    ld c, l                                       ; $5036: $4d
    ld e, b                                       ; $5037: $58
    and a                                         ; $5038: $a7
    adc $e1                                       ; $5039: $ce $e1
    xor a                                         ; $503b: $af
    ld c, [hl]                                    ; $503c: $4e
    and h                                         ; $503d: $a4
    rst $38                                       ; $503e: $ff
    sbc c                                         ; $503f: $99
    call nz, Call_03c_759a                        ; $5040: $c4 $9a $75
    jp z, Jump_03c_56c7                           ; $5043: $ca $c7 $56

    ld sp, hl                                     ; $5046: $f9
    ld de, $6ea7                                  ; $5047: $11 $a7 $6e
    pop bc                                        ; $504a: $c1
    call nz, $f814                                ; $504b: $c4 $14 $f8
    or h                                          ; $504e: $b4
    ld c, l                                       ; $504f: $4d
    dec de                                        ; $5050: $1b
    db $e4                                        ; $5051: $e4
    cp b                                          ; $5052: $b8
    sub b                                         ; $5053: $90

jr_03c_5054:
    ld [c], a                                     ; $5054: $e2
    dec de                                        ; $5055: $1b
    pop de                                        ; $5056: $d1
    rst $20                                       ; $5057: $e7
    dec c                                         ; $5058: $0d
    nop                                           ; $5059: $00
    or $bf                                        ; $505a: $f6 $bf
    ld c, b                                       ; $505c: $48
    ld l, h                                       ; $505d: $6c
    ld a, $57                                     ; $505e: $3e $57
    ld [hl], a                                    ; $5060: $77
    jp hl                                         ; $5061: $e9


    call nc, $2251                                ; $5062: $d4 $51 $22
    ld b, a                                       ; $5065: $47
    adc l                                         ; $5066: $8d
    cp a                                          ; $5067: $bf
    ld a, [bc]                                    ; $5068: $0a
    ei                                            ; $5069: $fb
    jp Jump_000_3ca7                              ; $506a: $c3 $a7 $3c


    jr c, jr_03c_5054                             ; $506d: $38 $e5

    ld b, $76                                     ; $506f: $06 $76
    ld a, [de]                                    ; $5071: $1a
    ld d, d                                       ; $5072: $52
    ld [hl], d                                    ; $5073: $72
    ld d, $c7                                     ; $5074: $16 $c7
    ld h, c                                       ; $5076: $61
    ld l, $12                                     ; $5077: $2e $12
    and c                                         ; $5079: $a1
    ld e, a                                       ; $507a: $5f
    sub b                                         ; $507b: $90

jr_03c_507c:
    jp nc, $ebfc                                  ; $507c: $d2 $fc $eb

    ld [c], a                                     ; $507f: $e2
    db $e3                                        ; $5080: $e3
    jr nz, jr_03c_507c                            ; $5081: $20 $f9

    ld a, [bc]                                    ; $5083: $0a
    ld [hl], l                                    ; $5084: $75
    call nc, $abf8                                ; $5085: $d4 $f8 $ab
    or b                                          ; $5088: $b0
    ccf                                           ; $5089: $3f

jr_03c_508a:
    ld a, h                                       ; $508a: $7c
    jp z, $5383                                   ; $508b: $ca $83 $53

    ld l, [hl]                                    ; $508e: $6e
    nop                                           ; $508f: $00
    halt                                          ; $5090: $76
    cp d                                          ; $5091: $ba
    jp c, Jump_03c_5759                           ; $5092: $da $59 $57

    ld sp, hl                                     ; $5095: $f9
    jp nc, $9188                                  ; $5096: $d2 $88 $91

    ldh a, [$29]                                  ; $5099: $f0 $29
    rrca                                          ; $509b: $0f
    ld c, [hl]                                    ; $509c: $4e
    cp c                                          ; $509d: $b9
    ld bc, $cb67                                  ; $509e: $01 $67 $cb
    ld d, a                                       ; $50a1: $57
    ld [hl], d                                    ; $50a2: $72
    ld h, c                                       ; $50a3: $61
    jp z, Jump_03c_592a                           ; $50a4: $ca $2a $59

    ld a, [hl+]                                   ; $50a7: $2a
    sub h                                         ; $50a8: $94
    db $fd                                        ; $50a9: $fd
    adc d                                         ; $50aa: $8a
    inc sp                                        ; $50ab: $33
    pop bc                                        ; $50ac: $c1
    rla                                           ; $50ad: $17
    ld hl, sp-$6c                                 ; $50ae: $f8 $94
    rlca                                          ; $50b0: $07
    and a                                         ; $50b1: $a7
    call c, Call_03c_7600                         ; $50b2: $dc $00 $76
    ld a, [de]                                    ; $50b5: $1a
    cp e                                          ; $50b6: $bb
    ld h, [hl]                                    ; $50b7: $66
    jp z, $ce4b                                   ; $50b8: $ca $4b $ce

    ld [c], a                                     ; $50bb: $e2
    jr c, jr_03c_508a                             ; $50bc: $38 $cc

Jump_03c_50be:
    ld d, c                                       ; $50be: $51
    rst $20                                       ; $50bf: $e7
    ld [hl], b                                    ; $50c0: $70
    ld h, $3b                                     ; $50c1: $26 $3b
    cpl                                           ; $50c3: $2f
    sbc [hl]                                      ; $50c4: $9e
    ldh a, [$29]                                  ; $50c5: $f0 $29
    rrca                                          ; $50c7: $0f
    ld c, [hl]                                    ; $50c8: $4e
    cp c                                          ; $50c9: $b9
    ld bc, $6576                                  ; $50ca: $01 $76 $65
    add $c9                                       ; $50cd: $c6 $c9
    and e                                         ; $50cf: $a3
    and a                                         ; $50d0: $a7

jr_03c_50d1:
    db $e4                                        ; $50d1: $e4
    ld c, d                                       ; $50d2: $4a
    adc $b3                                       ; $50d3: $ce $b3
    jp $c499                                      ; $50d5: $c3 $99 $c4


    inc [hl]                                      ; $50d8: $34
    sub h                                         ; $50d9: $94
    push de                                       ; $50da: $d5
    adc $ba                                       ; $50db: $ce $ba
    ld c, [hl]                                    ; $50dd: $4e
    inc hl                                        ; $50de: $23
    xor $47                                       ; $50df: $ee $47
    adc l                                         ; $50e1: $8d
    xor a                                         ; $50e2: $af
    ei                                            ; $50e3: $fb
    ld [de], a                                    ; $50e4: $12
    sbc l                                         ; $50e5: $9d
    cp h                                          ; $50e6: $bc
    jp nz, Jump_000_3ca7                          ; $50e7: $c2 $a7 $3c

    jr c, jr_03c_50d1                             ; $50ea: $38 $e5

    ld b, $81                                     ; $50ec: $06 $81
    inc e                                         ; $50ee: $1c
    dec [hl]                                      ; $50ef: $35
    halt                                          ; $50f0: $76
    call $5624                                    ; $50f1: $cd $24 $56
    sbc d                                         ; $50f4: $9a
    call nz, $f446                                ; $50f5: $c4 $46 $f4
    add hl, sp                                    ; $50f8: $39
    ld [c], a                                     ; $50f9: $e2
    ret nc                                        ; $50fa: $d0

    ld d, c                                       ; $50fb: $51
    and e                                         ; $50fc: $a3
    db $e4                                        ; $50fd: $e4
    ld c, h                                       ; $50fe: $4c
    ld l, c                                       ; $50ff: $69
    call nz, Call_03c_55c8                        ; $5100: $c4 $c8 $55
    ld a, a                                       ; $5103: $7f
    dec h                                         ; $5104: $25
    and l                                         ; $5105: $a5
    push bc                                       ; $5106: $c5
    add h                                         ; $5107: $84
    ld c, a                                       ; $5108: $4f
    ld a, c                                       ; $5109: $79
    ld [hl], b                                    ; $510a: $70
    jp z, Jump_000_000d                           ; $510b: $ca $0d $00

    db $dd                                        ; $510e: $dd
    ld a, e                                       ; $510f: $7b
    daa                                           ; $5110: $27
    ld a, [hl+]                                   ; $5111: $2a
    ld hl, $34d7                                  ; $5112: $21 $d7 $34
    ld [hl], d                                    ; $5115: $72
    inc l                                         ; $5116: $2c
    inc sp                                        ; $5117: $33
    sub d                                         ; $5118: $92
    ld [hl], l                                    ; $5119: $75
    or $04                                        ; $511a: $f6 $04
    add c                                         ; $511c: $81
    ld [hl], $f0                                  ; $511d: $36 $f0
    push bc                                       ; $511f: $c5
    xor h                                         ; $5120: $ac
    add hl, sp                                    ; $5121: $39
    ld [hl], l                                    ; $5122: $75
    dec hl                                        ; $5123: $2b
    push hl                                       ; $5124: $e5
    dec hl                                        ; $5125: $2b
    cp h                                          ; $5126: $bc
    rst $10                                       ; $5127: $d7
    dec a                                         ; $5128: $3d
    ldh a, [$3b]                                  ; $5129: $f0 $3b
    ld [hl], $3f                                  ; $512b: $36 $3f
    adc e                                         ; $512d: $8b
    db $e3                                        ; $512e: $e3
    add d                                         ; $512f: $82
    ld l, a                                       ; $5130: $6f
    sbc l                                         ; $5131: $9d
    jp $89d5                                      ; $5132: $c3 $d5 $89


    ld a, [de]                                    ; $5135: $1a
    push bc                                       ; $5136: $c5
    push hl                                       ; $5137: $e5
    adc b                                         ; $5138: $88
    ld d, e                                       ; $5139: $53
    scf                                           ; $513a: $37
    db $d3                                        ; $513b: $d3
    ld d, l                                       ; $513c: $55
    cp a                                          ; $513d: $bf
    ld a, h                                       ; $513e: $7c
    ld c, a                                       ; $513f: $4f
    nop                                           ; $5140: $00
    db $dd                                        ; $5141: $dd
    inc bc                                        ; $5142: $03
    ld d, d                                       ; $5143: $52
    ld h, [hl]                                    ; $5144: $66
    ld [hl], c                                    ; $5145: $71
    ld d, l                                       ; $5146: $55
    ld a, e                                       ; $5147: $7b
    xor [hl]                                      ; $5148: $ae
    ld l, a                                       ; $5149: $6f
    sbc $b3                                       ; $514a: $de $b3
    db $d3                                        ; $514c: $d3
    sub b                                         ; $514d: $90
    ld a, [c]                                     ; $514e: $f2
    sbc l                                         ; $514f: $9d
    sbc a                                         ; $5150: $9f
    push bc                                       ; $5151: $c5
    ld [hl], c                                    ; $5152: $71
    ld h, $31                                     ; $5153: $26 $31
    ld c, d                                       ; $5155: $4a
    sub [hl]                                      ; $5156: $96
    sub a                                         ; $5157: $97
    rst $00                                       ; $5158: $c7
    push de                                       ; $5159: $d5
    db $ec                                        ; $515a: $ec
    sub a                                         ; $515b: $97
    or d                                          ; $515c: $b2
    ld a, [c]                                     ; $515d: $f2
    cp d                                          ; $515e: $ba
    or b                                          ; $515f: $b0
    inc a                                         ; $5160: $3c
    db $f4                                        ; $5161: $f4
    ld a, [hl-]                                   ; $5162: $3a
    ld [c], a                                     ; $5163: $e2
    adc $93                                       ; $5164: $ce $93
    add [hl]                                      ; $5166: $86
    ld d, b                                       ; $5167: $50
    add $a8                                       ; $5168: $c6 $a8
    rst $30                                       ; $516a: $f7
    ld a, [$6a3a]                                 ; $516b: $fa $3a $6a
    sub h                                         ; $516e: $94
    ld e, h                                       ; $516f: $5c
    sub h                                         ; $5170: $94
    adc a                                         ; $5171: $8f
    cp c                                          ; $5172: $b9
    ldh [$cf], a                                  ; $5173: $e0 $cf
    inc h                                         ; $5175: $24
    sbc d                                         ; $5176: $9a
    ld [c], a                                     ; $5177: $e2
    sbc d                                         ; $5178: $9a
    rst $08                                       ; $5179: $cf
    ld a, e                                       ; $517a: $7b
    sub a                                         ; $517b: $97
    jr c, jr_03c_51ac                             ; $517c: $38 $2e

    ld [de], a                                    ; $517e: $12
    and c                                         ; $517f: $a1
    rst $10                                       ; $5180: $d7
    add hl, sp                                    ; $5181: $39
    ld e, h                                       ; $5182: $5c
    rst $00                                       ; $5183: $c7
    ld de, $6957                                  ; $5184: $11 $57 $69
    rst $18                                       ; $5187: $df
    adc a                                         ; $5188: $8f
    di                                            ; $5189: $f3
    ld e, h                                       ; $518a: $5c
    push bc                                       ; $518b: $c5
    or c                                          ; $518c: $b1
    call nz, $cfdf                                ; $518d: $c4 $df $cf
    ld a, $21                                     ; $5190: $3e $21
    sbc b                                         ; $5192: $98
    cpl                                           ; $5193: $2f
    ld d, c                                       ; $5194: $51
    ld l, a                                       ; $5195: $6f
    nop                                           ; $5196: $00
    db $dd                                        ; $5197: $dd
    db $ed                                        ; $5198: $ed
    ld e, c                                       ; $5199: $59
    and a                                         ; $519a: $a7
    ld l, $52                                     ; $519b: $2e $52
    ld [$ef86], a                                 ; $519d: $ea $86 $ef
    inc de                                        ; $51a0: $13
    ld a, $fb                                     ; $51a1: $3e $fb
    rla                                           ; $51a3: $17
    or c                                          ; $51a4: $b1
    or $04                                        ; $51a5: $f6 $04
    cp l                                          ; $51a7: $bd
    add l                                         ; $51a8: $85
    add hl, sp                                    ; $51a9: $39
    adc e                                         ; $51aa: $8b
    db $e3                                        ; $51ab: $e3

jr_03c_51ac:
    call nc, Call_03c_5ee6                        ; $51ac: $d4 $e6 $5e
    nop                                           ; $51af: $00
    dec h                                         ; $51b0: $25
    rla                                           ; $51b1: $17
    ld a, h                                       ; $51b2: $7c
    db $eb                                        ; $51b3: $eb
    cp [hl]                                       ; $51b4: $be
    ld b, b                                       ; $51b5: $40
    add hl, sp                                    ; $51b6: $39
    jp nz, $f28a                                  ; $51b7: $c2 $8a $f2

    rlca                                          ; $51ba: $07
    rst $20                                       ; $51bb: $e7
    adc b                                         ; $51bc: $88
    adc e                                         ; $51bd: $8b
    jp hl                                         ; $51be: $e9


    ld [hl], e                                    ; $51bf: $73
    call nc, $f798                                ; $51c0: $d4 $98 $f7
    ld a, l                                       ; $51c3: $7d
    inc bc                                        ; $51c4: $03
    ld a, l                                       ; $51c5: $7d
    jp c, Jump_03c_7ca2                           ; $51c6: $da $a2 $7c

    dec e                                         ; $51c9: $1d
    cp $aa                                        ; $51ca: $fe $aa
    cp a                                          ; $51cc: $bf
    inc d                                         ; $51cd: $14
    db $db                                        ; $51ce: $db
    ld a, e                                       ; $51cf: $7b
    halt                                          ; $51d0: $76
    ld b, d                                       ; $51d1: $42
    ld e, l                                       ; $51d2: $5d
    db $dd                                        ; $51d3: $dd
    and l                                         ; $51d4: $a5
    xor e                                         ; $51d5: $ab
    halt                                          ; $51d6: $76
    sub h                                         ; $51d7: $94
    ret z                                         ; $51d8: $c8

    ld a, c                                       ; $51d9: $79
    xor [hl]                                      ; $51da: $ae
    db $e4                                        ; $51db: $e4
    inc l                                         ; $51dc: $2c
    adc [hl]                                      ; $51dd: $8e
    dec bc                                        ; $51de: $0b
    adc c                                         ; $51df: $89
    ld a, [$879d]                                 ; $51e0: $fa $9d $87
    rst $08                                       ; $51e3: $cf
    cp $45                                        ; $51e4: $fe $45
    xor h                                         ; $51e6: $ac
    dec bc                                        ; $51e7: $0b
    ret z                                         ; $51e8: $c8

    jr jr_03c_5214                                ; $51e9: $18 $29

    scf                                           ; $51eb: $37
    nop                                           ; $51ec: $00
    sub a                                         ; $51ed: $97
    cp b                                          ; $51ee: $b8
    xor d                                         ; $51ef: $aa
    db $eb                                        ; $51f0: $eb
    inc h                                         ; $51f1: $24
    or [hl]                                       ; $51f2: $b6
    sbc b                                         ; $51f3: $98
    di                                            ; $51f4: $f3
    ld [hl], $0f                                  ; $51f5: $36 $0f
    ld e, a                                       ; $51f7: $5f
    rst $30                                       ; $51f8: $f7
    ld a, [bc]                                    ; $51f9: $0a
    push bc                                       ; $51fa: $c5
    cp a                                          ; $51fb: $bf
    rst $28                                       ; $51fc: $ef
    add hl, bc                                    ; $51fd: $09
    nop                                           ; $51fe: $00
    ld a, l                                       ; $51ff: $7d
    cp b                                          ; $5200: $b8
    scf                                           ; $5201: $37
    adc [hl]                                      ; $5202: $8e
    ld [c], a                                     ; $5203: $e2
    ld [hl], e                                    ; $5204: $73
    sbc [hl]                                      ; $5205: $9e
    xor e                                         ; $5206: $ab
    sbc e                                         ; $5207: $9b
    xor $0f                                       ; $5208: $ee $0f
    ld c, [hl]                                    ; $520a: $4e
    sbc l                                         ; $520b: $9d
    rst $20                                       ; $520c: $e7
    xor b                                         ; $520d: $a8
    pop de                                        ; $520e: $d1
    ld sp, hl                                     ; $520f: $f9
    or $18                                        ; $5210: $f6 $18
    add hl, sp                                    ; $5212: $39
    ld [c], a                                     ; $5213: $e2

jr_03c_5214:
    db $ec                                        ; $5214: $ec
    inc de                                        ; $5215: $13
    add d                                         ; $5216: $82

Jump_03c_5217:
    ld sp, hl                                     ; $5217: $f9
    ld [de], a                                    ; $5218: $12
    push af                                       ; $5219: $f5
    ld e, [hl]                                    ; $521a: $5e
    ld b, b                                       ; $521b: $40
    jp z, $ea4a                                   ; $521c: $ca $4a $ea

    jp nz, $efd7                                  ; $521f: $c2 $d7 $ef

    ld b, a                                       ; $5222: $47
    sbc l                                         ; $5223: $9d
    jp nc, Jump_03c_6308                          ; $5224: $d2 $08 $63

    ld [$214a], a                                 ; $5227: $ea $4a $21
    db $f4                                        ; $522a: $f4
    sbc l                                         ; $522b: $9d
    rst $18                                       ; $522c: $df
    ld h, e                                       ; $522d: $63
    and h                                         ; $522e: $a4
    xor $67                                       ; $522f: $ee $67
    jp z, $6f2b                                   ; $5231: $ca $2b $6f

    nop                                           ; $5234: $00
    db $dd                                        ; $5235: $dd
    cpl                                           ; $5236: $2f

jr_03c_5237:
    ld l, e                                       ; $5237: $6b
    ld b, h                                       ; $5238: $44
    ld [$977e], a                                 ; $5239: $ea $7e $97
    cp b                                          ; $523c: $b8
    ld h, $c2                                     ; $523d: $26 $c2
    ld d, d                                       ; $523f: $52
    and $b9                                       ; $5240: $e6 $b9
    ld d, b                                       ; $5242: $50
    or d                                          ; $5243: $b2
    sbc d                                         ; $5244: $9a
    sbc d                                         ; $5245: $9a
    jp nc, $7d73                                  ; $5246: $d2 $73 $7d

    ld [hl], e                                    ; $5249: $73
    call nc, $9df8                                ; $524a: $d4 $f8 $9d
    ld e, a                                       ; $524d: $5f
    db $ed                                        ; $524e: $ed
    xor h                                         ; $524f: $ac
    ei                                            ; $5250: $fb
    ld d, d                                       ; $5251: $52
    cp d                                          ; $5252: $ba
    ld d, [hl]                                    ; $5253: $56
    ld a, [hl]                                    ; $5254: $7e
    rlca                                          ; $5255: $07

Call_03c_5256:
    sub h                                         ; $5256: $94
    ret c                                         ; $5257: $d8

    ld [$855f], a                                 ; $5258: $ea $5f $85
    db $fd                                        ; $525b: $fd
    ld h, a                                       ; $525c: $67
    ld [hl], c                                    ; $525d: $71
    ld e, h                                       ; $525e: $5c
    ret                                           ; $525f: $c9


    ld d, l                                       ; $5260: $55
    jp c, Jump_000_000d                           ; $5261: $da $0d $00

    ld d, a                                       ; $5264: $57
    or h                                          ; $5265: $b4
    add hl, sp                                    ; $5266: $39
    db $fc                                        ; $5267: $fc
    ld d, l                                       ; $5268: $55
    scf                                           ; $5269: $37
    ret z                                         ; $526a: $c8

    ret                                           ; $526b: $c9


    xor a                                         ; $526c: $af
    rst $38                                       ; $526d: $ff
    ld d, a                                       ; $526e: $57

jr_03c_526f:
    ld [hl], a                                    ; $526f: $77
    and c                                         ; $5270: $a1
    ld c, a                                       ; $5271: $4f
    push hl                                       ; $5272: $e5
    jp z, $a32f                                   ; $5273: $ca $2f $a3

    db $fc                                        ; $5276: $fc
    jr nc, jr_03c_52c6                            ; $5277: $30 $4d

    sub b                                         ; $5279: $90
    rst $30                                       ; $527a: $f7
    ld [bc], a                                    ; $527b: $02
    jr z, jr_03c_5237                             ; $527c: $28 $b9

    ld hl, sp+$65                                 ; $527e: $f8 $65
    dec d                                         ; $5280: $15
    or $5f                                        ; $5281: $f6 $5f
    or l                                          ; $5283: $b5
    db $e3                                        ; $5284: $e3
    ld b, d                                       ; $5285: $42
    ld c, c                                       ; $5286: $49
    rst $28                                       ; $5287: $ef
    ld c, h                                       ; $5288: $4c
    call z, $ae79                                 ; $5289: $cc $79 $ae
    ld l, [hl]                                    ; $528c: $6e
    ld l, e                                       ; $528d: $6b
    push af                                       ; $528e: $f5
    ld b, e                                       ; $528f: $43
    dec c                                         ; $5290: $0d
    rst $18                                       ; $5291: $df
    inc [hl]                                      ; $5292: $34
    ld e, e                                       ; $5293: $5b
    cp h                                          ; $5294: $bc
    ld bc, $1a76                                  ; $5295: $01 $76 $1a
    cp a                                          ; $5298: $bf
    di                                            ; $5299: $f3
    xor e                                         ; $529a: $ab
    sbc e                                         ; $529b: $9b
    inc a                                         ; $529c: $3c
    ld a, [$dd5c]                                 ; $529d: $fa $5c $dd
    ld d, [hl]                                    ; $52a0: $56
    ld l, c                                       ; $52a1: $69
    db $ec                                        ; $52a2: $ec
    sub a                                         ; $52a3: $97
    dec sp                                        ; $52a4: $3b
    scf                                           ; $52a5: $37
    ld c, e                                       ; $52a6: $4b
    set 6, l                                      ; $52a7: $cb $f5
    ld a, c                                       ; $52a9: $79
    db $eb                                        ; $52aa: $eb
    jp z, $a32f                                   ; $52ab: $ca $2f $a3

    db $fc                                        ; $52ae: $fc
    jr nc, jr_03c_52fe                            ; $52af: $30 $4d

    sub b                                         ; $52b1: $90
    rst $30                                       ; $52b2: $f7
    ld [bc], a                                    ; $52b3: $02
    jr z, jr_03c_526f                             ; $52b4: $28 $b9

    sbc d                                         ; $52b6: $9a
    dec bc                                        ; $52b7: $0b
    ld [hl], d                                    ; $52b8: $72
    ld e, c                                       ; $52b9: $59
    ld a, [hl+]                                   ; $52ba: $2a
    call $cfbf                                    ; $52bb: $cd $bf $cf
    ld a, c                                       ; $52be: $79
    ld l, $a6                                     ; $52bf: $2e $a6
    ld a, a                                       ; $52c1: $7f
    ld e, l                                       ; $52c2: $5d
    ld a, c                                       ; $52c3: $79
    sbc l                                         ; $52c4: $9d
    ret                                           ; $52c5: $c9


jr_03c_52c6:
    cp d                                          ; $52c6: $ba
    db $d3                                        ; $52c7: $d3
    ldh a, [rKEY1]                                ; $52c8: $f0 $4d
    ld c, e                                       ; $52ca: $4b
    and h                                         ; $52cb: $a4
    xor [hl]                                      ; $52cc: $ae
    xor $82                                       ; $52cd: $ee $82
    sbc d                                         ; $52cf: $9a
    ld a, c                                       ; $52d0: $79
    sbc l                                         ; $52d1: $9d
    rst $20                                       ; $52d2: $e7
    ld c, d                                       ; $52d3: $4a
    ld [$648c], a                                 ; $52d4: $ea $8c $64
    sbc l                                         ; $52d7: $9d
    ld a, d                                       ; $52d8: $7a
    inc bc                                        ; $52d9: $03
    db $dd                                        ; $52da: $dd
    rst $08                                       ; $52db: $cf
    pop hl                                        ; $52dc: $e1
    ret nc                                        ; $52dd: $d0

    or c                                          ; $52de: $b1
    sub d                                         ; $52df: $92
    ld a, e                                       ; $52e0: $7b
    adc e                                         ; $52e1: $8b
    or e                                          ; $52e2: $b3
    add c                                         ; $52e3: $81
    rst $08                                       ; $52e4: $cf
    cp $45                                        ; $52e5: $fe $45
    xor h                                         ; $52e7: $ac
    dec a                                         ; $52e8: $3d
    rst $10                                       ; $52e9: $d7
    scf                                           ; $52ea: $37
    ld [hl], l                                    ; $52eb: $75
    ld b, h                                       ; $52ec: $44
    di                                            ; $52ed: $f3
    jr jr_03c_536f                                ; $52ee: $18 $7f

    sub c                                         ; $52f0: $91
    ld c, b                                       ; $52f1: $48
    reti                                          ; $52f2: $d9


    rst $08                                       ; $52f3: $cf
    pop hl                                        ; $52f4: $e1
    ld [bc], a                                    ; $52f5: $02
    ld [hl-], a                                   ; $52f6: $32
    ld b, [hl]                                    ; $52f7: $46
    jp z, Jump_03c_6388                           ; $52f8: $ca $88 $63

    ld e, c                                       ; $52fb: $59
    rst $28                                       ; $52fc: $ef
    cpl                                           ; $52fd: $2f

jr_03c_52fe:
    add l                                         ; $52fe: $85
    db $fd                                        ; $52ff: $fd
    ld l, h                                       ; $5300: $6c
    ld [hl], c                                    ; $5301: $71
    rst $20                                       ; $5302: $e7
    or h                                          ; $5303: $b4
    add a                                         ; $5304: $87
    ld [de], a                                    ; $5305: $12
    ld l, a                                       ; $5306: $6f
    nop                                           ; $5307: $00
    add c                                         ; $5308: $81
    ld e, a                                       ; $5309: $5f
    sbc h                                         ; $530a: $9c
    rst $38                                       ; $530b: $ff
    db $fd                                        ; $530c: $fd

jr_03c_530d:
    adc $71                                       ; $530d: $ce $71
    ld [hl], l                                    ; $530f: $75
    and a                                         ; $5310: $a7
    ret nc                                        ; $5311: $d0

    and a                                         ; $5312: $a7
    ld [hl], b                                    ; $5313: $70
    sbc [hl]                                      ; $5314: $9e
    xor e                                         ; $5315: $ab
    db $db                                        ; $5316: $db
    jp nz, Jump_03c_4897                          ; $5317: $c2 $97 $48

    ld hl, sp-$14                                 ; $531a: $f8 $ec
    ld e, a                                       ; $531c: $5f
    call nz, Call_000_037a                        ; $531d: $c4 $7a $03
    sub a                                         ; $5320: $97
    and l                                         ; $5321: $a5
    rst $38                                       ; $5322: $ff
    adc d                                         ; $5323: $8a
    call Call_000_130f                            ; $5324: $cd $0f $13
    cp [hl]                                       ; $5327: $be
    ld c, b                                       ; $5328: $48
    add h                                         ; $5329: $84
    ld [hl], d                                    ; $532a: $72
    ld d, $c7                                     ; $532b: $16 $c7
    ld a, c                                       ; $532d: $79
    ld d, [hl]                                    ; $532e: $56
    or d                                          ; $532f: $b2
    ld d, h                                       ; $5330: $54
    jr z, @-$5b                                   ; $5331: $28 $a3

    add $5f                                       ; $5333: $c6 $5f
    add hl, hl                                    ; $5335: $29
    ld e, a                                       ; $5336: $5f
    pop hl                                        ; $5337: $e1
    dec c                                         ; $5338: $0d
    nop                                           ; $5339: $00
    db $dd                                        ; $533a: $dd
    inc bc                                        ; $533b: $03
    inc h                                         ; $533c: $24
    xor e                                         ; $533d: $ab
    xor c                                         ; $533e: $a9
    add hl, hl                                    ; $533f: $29
    dec sp                                        ; $5340: $3b
    cp e                                          ; $5341: $bb
    ld hl, $4f6a                                  ; $5342: $21 $6a $4f
    nop                                           ; $5345: $00
    rst $10                                       ; $5346: $d7
    db $f4                                        ; $5347: $f4
    rst $28                                       ; $5348: $ef
    rst $18                                       ; $5349: $df
    rst $38                                       ; $534a: $ff
    cp [hl]                                       ; $534b: $be
    ld l, a                                       ; $534c: $6f
    db $eb                                        ; $534d: $eb
    ret nc                                        ; $534e: $d0

    and c                                         ; $534f: $a1
    ld sp, hl                                     ; $5350: $f9
    add hl, hl                                    ; $5351: $29
    rla                                           ; $5352: $17
    ld a, h                                       ; $5353: $7c
    sbc h                                         ; $5354: $9c

jr_03c_5355:
    ld a, a                                       ; $5355: $7f
    sbc a                                         ; $5356: $9f
    inc sp                                        ; $5357: $33
    adc [hl]                                      ; $5358: $8e
    jr jr_03c_53da                                ; $5359: $18 $7f

    sbc [hl]                                      ; $535b: $9e
    or e                                          ; $535c: $b3
    jr c, jr_03c_530d                             ; $535d: $38 $ae

    and h                                         ; $535f: $a4
    adc $04                                       ; $5360: $ce $04
    sbc e                                         ; $5362: $9b
    add hl, hl                                    ; $5363: $29
    call nc, Call_000_1c59                        ; $5364: $d4 $59 $1c
    rla                                           ; $5367: $17
    ld a, h                                       ; $5368: $7c
    ld b, e                                       ; $5369: $43
    inc e                                         ; $536a: $1c
    ld d, h                                       ; $536b: $54
    or d                                          ; $536c: $b2
    sub e                                         ; $536d: $93
    ld a, [hl-]                                   ; $536e: $3a

jr_03c_536f:
    ld c, l                                       ; $536f: $4d
    add h                                         ; $5370: $84
    adc a                                         ; $5371: $8f
    jr c, jr_03c_5355                             ; $5372: $38 $e1

    sub a                                         ; $5374: $97
    and $df                                       ; $5375: $e6 $df
    jp $7757                                      ; $5377: $c3 $57 $77


    ld b, c                                       ; $537a: $41
    call $dea4                                    ; $537b: $cd $a4 $de
    rst $30                                       ; $537e: $f7
    cp l                                          ; $537f: $bd
    adc e                                         ; $5380: $8b
    add e                                         ; $5381: $83
    ldh a, [rTIMA]                                ; $5382: $f0 $05
    or e                                          ; $5384: $b3
    db $fc                                        ; $5385: $fc
    db $ec                                        ; $5386: $ec
    ld e, a                                       ; $5387: $5f
    call nz, Call_000_037a                        ; $5388: $c4 $7a $03
    sub a                                         ; $538b: $97
    ld de, $1ca1                                  ; $538c: $11 $a1 $1c
    res 1, h                                      ; $538f: $cb $8c
    ld h, h                                       ; $5391: $64
    sbc l                                         ; $5392: $9d
    di                                            ; $5393: $f3
    ld e, h                                       ; $5394: $5c
    ld b, a                                       ; $5395: $47
    ld e, h                                       ; $5396: $5c
    cp a                                          ; $5397: $bf
    rst $10                                       ; $5398: $d7
    ld e, c                                       ; $5399: $59
    ld d, a                                       ; $539a: $57
    ccf                                           ; $539b: $3f
    sub h                                         ; $539c: $94
    cp d                                          ; $539d: $ba
    ld [$53af], a                                 ; $539e: $ea $af $53

jr_03c_53a1:
    ld d, e                                       ; $53a1: $53
    rst $20                                       ; $53a2: $e7
    inc de                                        ; $53a3: $13
    dec a                                         ; $53a4: $3d
    ld d, a                                       ; $53a5: $57
    ld l, c                                       ; $53a6: $69
    ld b, h                                       ; $53a7: $44
    xor [hl]                                      ; $53a8: $ae
    ld [hl], a                                    ; $53a9: $77
    inc de                                        ; $53aa: $13
    jp $001b                                      ; $53ab: $c3 $1b $00


    add c                                         ; $53ae: $81
    ld [hl], $f0                                  ; $53af: $36 $f0
    add hl, de                                    ; $53b1: $19
    ld h, c                                       ; $53b2: $61
    adc $e2                                       ; $53b3: $ce $e2
    jr c, jr_03c_53a1                             ; $53b5: $38 $ea

    ld e, b                                       ; $53b7: $58
    ld d, [hl]                                    ; $53b8: $56
    scf                                           ; $53b9: $37
    xor l                                         ; $53ba: $ad
    ld [hl], e                                    ; $53bb: $73
    ld b, [hl]                                    ; $53bc: $46
    or d                                          ; $53bd: $b2
    adc $7b                                       ; $53be: $ce $7b
    ld bc, $9c94                                  ; $53c0: $01 $94 $9c
    ld de, $2ce6                                  ; $53c3: $11 $e6 $2c
    adc [hl]                                      ; $53c6: $8e
    adc e                                         ; $53c7: $8b
    ld l, [hl]                                    ; $53c8: $6e
    pop hl                                        ; $53c9: $e1
    ld a, e                                       ; $53ca: $7b
    pop hl                                        ; $53cb: $e1
    inc l                                         ; $53cc: $2c
    adc [hl]                                      ; $53cd: $8e
    ld [hl+], a                                   ; $53ce: $22
    ld [hl], $3f                                  ; $53cf: $36 $3f
    adc e                                         ; $53d1: $8b
    db $e3                                        ; $53d2: $e3
    ld [hl+], a                                   ; $53d3: $22
    ld d, a                                       ; $53d4: $57
    ld [hl], d                                    ; $53d5: $72
    ld d, $47                                     ; $53d6: $16 $47
    rst $38                                       ; $53d8: $ff
    ld a, [c]                                     ; $53d9: $f2

jr_03c_53da:
    ld a, d                                       ; $53da: $7a
    inc bc                                        ; $53db: $03
    db $dd                                        ; $53dc: $dd
    adc $93                                       ; $53dd: $ce $93
    scf                                           ; $53df: $37
    db $ed                                        ; $53e0: $ed
    dec d                                         ; $53e1: $15
    cp [hl]                                       ; $53e2: $be
    ld d, b                                       ; $53e3: $50
    or d                                          ; $53e4: $b2
    sbc d                                         ; $53e5: $9a
    sbc d                                         ; $53e6: $9a
    or d                                          ; $53e7: $b2
    or e                                          ; $53e8: $b3
    dec de                                        ; $53e9: $1b
    and d                                         ; $53ea: $a2
    or $00                                        ; $53eb: $f6 $00
    add c                                         ; $53ed: $81
    call c, $ef9b                                 ; $53ee: $dc $9b $ef
    ret c                                         ; $53f1: $d8

    xor [hl]                                      ; $53f2: $ae
    db $fc                                        ; $53f3: $fc
    ld c, h                                       ; $53f4: $4c
    ld a, c                                       ; $53f5: $79
    push hl                                       ; $53f6: $e5
    ld a, l                                       ; $53f7: $7d
    rst $18                                       ; $53f8: $df
    db $fd                                        ; $53f9: $fd
    ei                                            ; $53fa: $fb
    rst $30                                       ; $53fb: $f7
    rst $28                                       ; $53fc: $ef
    rst $18                                       ; $53fd: $df
    cp a                                          ; $53fe: $bf

jr_03c_53ff:
    rst $38                                       ; $53ff: $ff
    ld a, l                                       ; $5400: $7d
    rst $18                                       ; $5401: $df
    nop                                           ; $5402: $00
    rst $10                                       ; $5403: $d7
    db $f4                                        ; $5404: $f4
    rst $28                                       ; $5405: $ef
    rst $18                                       ; $5406: $df
    rst $38                                       ; $5407: $ff
    cp [hl]                                       ; $5408: $be
    ld l, a                                       ; $5409: $6f
    nop                                           ; $540a: $00
    db $dd                                        ; $540b: $dd
    db $ed                                        ; $540c: $ed
    inc [hl]                                      ; $540d: $34
    and $a8                                       ; $540e: $e6 $a8
    ld [hl], e                                    ; $5410: $73
    ld hl, sp+$33                                 ; $5411: $f8 $33
    push hl                                       ; $5413: $e5
    sub l                                         ; $5414: $95
    res 2, l                                      ; $5415: $cb $95
    ld e, a                                       ; $5417: $5f
    jr nc, jr_03c_53ff                            ; $5418: $30 $e5

    rst $20                                       ; $541a: $e7
    cp c                                          ; $541b: $b9
    ld a, [c]                                     ; $541c: $f2
    db $d3                                        ; $541d: $d3
    ld b, [hl]                                    ; $541e: $46
    adc l                                         ; $541f: $8d
    rst $18                                       ; $5420: $df
    inc de                                        ; $5421: $13
    nop                                           ; $5422: $00
    sub a                                         ; $5423: $97
    cp b                                          ; $5424: $b8
    xor d                                         ; $5425: $aa
    inc sp                                        ; $5426: $33

jr_03c_5427:
    push hl                                       ; $5427: $e5
    sub l                                         ; $5428: $95
    adc e                                         ; $5429: $8b
    adc a                                         ; $542a: $8f
    ld l, e                                       ; $542b: $6b
    xor b                                         ; $542c: $a8
    xor [hl]                                      ; $542d: $ae
    add sp, -$21                                  ; $542e: $e8 $df
    cp e                                          ; $5430: $bb
    adc h                                         ; $5431: $8c
    add sp, -$3b                                  ; $5432: $e8 $c5
    and $67                                       ; $5434: $e6 $67
    ld [hl], c                                    ; $5436: $71
    ld e, h                                       ; $5437: $5c
    ldh a, [$3b]                                  ; $5438: $f0 $3b
    sub h                                         ; $543a: $94
    sbc d                                         ; $543b: $9a
    adc e                                         ; $543c: $8b
    ld a, [c]                                     ; $543d: $f2
    ld [hl], $3e                                  ; $543e: $36 $3e
    rst $20                                       ; $5440: $e7
    ld [hl], b                                    ; $5441: $70
    and l                                         ; $5442: $a5
    ld [hl], l                                    ; $5443: $75
    inc h                                         ; $5444: $24
    ld l, a                                       ; $5445: $6f

Jump_03c_5446:
    nop                                           ; $5446: $00
    or $59                                        ; $5447: $f6 $59
    ld e, $be                                     ; $5449: $1e $be
    ld d, b                                       ; $544b: $50
    or d                                          ; $544c: $b2
    sbc d                                         ; $544d: $9a
    sbc d                                         ; $544e: $9a
    or d                                          ; $544f: $b2
    ld [hl], e                                    ; $5450: $73
    ld c, e                                       ; $5451: $4b
    adc e                                         ; $5452: $8b
    jr nc, @-$63                                  ; $5453: $30 $9b

    add c                                         ; $5455: $81
    ld [hl], c                                    ; $5456: $71
    inc bc                                        ; $5457: $03
    halt                                          ; $5458: $76
    ld h, l                                       ; $5459: $65
    db $ec                                        ; $545a: $ec
    ld b, a                                       ; $545b: $47
    ld sp, $b4cd                                  ; $545c: $31 $cd $b4
    sbc h                                         ; $545f: $9c
    rst $20                                       ; $5460: $e7
    add d                                         ; $5461: $82
    ld l, c                                       ; $5462: $69
    sbc l                                         ; $5463: $9d
    ld c, c                                       ; $5464: $49
    call nc, $91a6                                ; $5465: $d4 $a6 $91
    inc hl                                        ; $5468: $23
    adc [hl]                                      ; $5469: $8e
    ld l, b                                       ; $546a: $68
    ld e, $e3                                     ; $546b: $1e $e3
    rr h                                          ; $546d: $cb $1c
    cp $c2                                        ; $546f: $fe $c2
    ld [c], a                                     ; $5471: $e2
    ld [$f85f], a                                 ; $5472: $ea $5f $f8
    ld a, [c]                                     ; $5475: $f2
    or e                                          ; $5476: $b3
    jr c, jr_03c_5427                             ; $5477: $38 $ae

    cp d                                          ; $5479: $ba
    ld h, h                                       ; $547a: $64
    db $e4                                        ; $547b: $e4
    cp l                                          ; $547c: $bd
    ret nz                                        ; $547d: $c0

    or [hl]                                       ; $547e: $b6
    ret z                                         ; $547f: $c8

    ld e, c                                       ; $5480: $59
    inc e                                         ; $5481: $1c
    db $fd                                        ; $5482: $fd
    db $eb                                        ; $5483: $eb
    ld a, $68                                     ; $5484: $3e $68
    inc bc                                        ; $5486: $03
    sbc a                                         ; $5487: $9f
    db $fd                                        ; $5488: $fd
    adc e                                         ; $5489: $8b
    ld e, b                                       ; $548a: $58
    pop hl                                        ; $548b: $e1
    adc e                                         ; $548c: $8b
    sbc h                                         ; $548d: $9c
    ld c, c                                       ; $548e: $49
    adc b                                         ; $548f: $88
    ld d, d                                       ; $5490: $52
    ld [hl], l                                    ; $5491: $75
    pop hl                                        ; $5492: $e1
    sra a                                         ; $5493: $cb $2f
    ld hl, sp-$7a                                 ; $5495: $f8 $86
    or d                                          ; $5497: $b2
    ld a, [c]                                     ; $5498: $f2
    di                                            ; $5499: $f3
    xor h                                         ; $549a: $ac
    ld d, e                                       ; $549b: $53
    and e                                         ; $549c: $a3
    cp h                                          ; $549d: $bc
    ld l, c                                       ; $549e: $69
    or [hl]                                       ; $549f: $b6
    ld a, b                                       ; $54a0: $78
    inc bc                                        ; $54a1: $03
    rst $20                                       ; $54a2: $e7
    or b                                          ; $54a3: $b0
    ld b, e                                       ; $54a4: $43
    or c                                          ; $54a5: $b1
    ld sp, hl                                     ; $54a6: $f9
    dec b                                         ; $54a7: $05
    cp a                                          ; $54a8: $bf
    ld b, e                                       ; $54a9: $43
    xor c                                         ; $54aa: $a9
    add hl, sp                                    ; $54ab: $39
    ld d, $42                                     ; $54ac: $16 $42
    call Call_03c_7ee7                            ; $54ae: $cd $e7 $7e

Jump_03c_54b1:
    or l                                          ; $54b1: $b5
    call $abbd                                    ; $54b2: $cd $bd $ab
    ld a, a                                       ; $54b5: $7f
    and $b5                                       ; $54b6: $e6 $b5
    ld c, l                                       ; $54b8: $4d
    xor e                                         ; $54b9: $ab
    ld l, $f8                                     ; $54ba: $2e $f8
    add [hl]                                      ; $54bc: $86
    or d                                          ; $54bd: $b2
    ld [$f192], a                                 ; $54be: $ea $92 $f1
    ld h, l                                       ; $54c1: $65
    ld h, c                                       ; $54c2: $61
    ld [hl], c                                    ; $54c3: $71
    push af                                       ; $54c4: $f5

Call_03c_54c5:
    db $eb                                        ; $54c5: $eb
    dec c                                         ; $54c6: $0d
    nop                                           ; $54c7: $00
    db $dd                                        ; $54c8: $dd
    ld a, d                                       ; $54c9: $7a
    sub l                                         ; $54ca: $95
    rst $28                                       ; $54cb: $ef
    ld sp, $8d3b                                  ; $54cc: $31 $3b $8d
    ld e, l                                       ; $54cf: $5d
    db $eb                                        ; $54d0: $eb
    inc [hl]                                      ; $54d1: $34
    ld [hl+], a                                   ; $54d2: $22
    ld a, h                                       ; $54d3: $7c
    inc d                                         ; $54d4: $14
    ld [$ae1c], a                                 ; $54d5: $ea $1c $ae
    ld a, [hl]                                    ; $54d8: $7e
    jr z, jr_03c_54f2                             ; $54d9: $28 $17

    and [hl]                                      ; $54db: $a6
    and a                                         ; $54dc: $a7
    and h                                         ; $54dd: $a4
    and $bd                                       ; $54de: $e6 $bd
    ld a, $4d                                     ; $54e0: $3e $4d
    ld e, $be                                     ; $54e2: $1e $be
    ld l, [hl]                                    ; $54e4: $6e
    dec h                                         ; $54e5: $25
    ld [hl], l                                    ; $54e6: $75
    reti                                          ; $54e7: $d9


    cpl                                           ; $54e8: $2f
    ld [hl], l                                    ; $54e9: $75
    dec [hl]                                      ; $54ea: $35
    rst $20                                       ; $54eb: $e7
    rra                                           ; $54ec: $1f
    ld d, a                                       ; $54ed: $57
    ld [hl], c                                    ; $54ee: $71
    inc l                                         ; $54ef: $2c
    pop af                                        ; $54f0: $f1
    or l                                          ; $54f1: $b5

jr_03c_54f2:
    rlca                                          ; $54f2: $07
    nop                                           ; $54f3: $00
    ld a, l                                       ; $54f4: $7d
    sbc h                                         ; $54f5: $9c
    ld [hl], l                                    ; $54f6: $75
    sbc l                                         ; $54f7: $9d
    ld b, [hl]                                    ; $54f8: $46
    add h                                         ; $54f9: $84
    rst $08                                       ; $54fa: $cf
    cp $45                                        ; $54fb: $fe $45
    xor h                                         ; $54fd: $ac
    rst $30                                       ; $54fe: $f7
    ld a, d                                       ; $54ff: $7a
    scf                                           ; $5500: $37
    inc [hl]                                      ; $5501: $34
    cp c                                          ; $5502: $b9
    ret nc                                        ; $5503: $d0

    ld h, c                                       ; $5504: $61
    ld c, h                                       ; $5505: $4c
    ld e, l                                       ; $5506: $5d
    ld hl, sp-$0e                                 ; $5507: $f8 $f2
    adc e                                         ; $5509: $8b
    ld l, [hl]                                    ; $550a: $6e
    and $f5                                       ; $550b: $e6 $f5
    rla                                           ; $550d: $17
    and [hl]                                      ; $550e: $a6
    adc h                                         ; $550f: $8c
    ld a, [de]                                    ; $5510: $1a
    ld a, a                                       ; $5511: $7f
    sbc l                                         ; $5512: $9d
    call nz, $7f16                                ; $5513: $c4 $16 $7f
    ld l, a                                       ; $5516: $6f
    and d                                         ; $5517: $a2
    ld a, e                                       ; $5518: $7b
    db $d3                                        ; $5519: $d3
    ld l, h                                       ; $551a: $6c
    pop af                                        ; $551b: $f1
    ld b, $dd                                     ; $551c: $06 $dd
    db $ec                                        ; $551e: $ec
    inc [hl]                                      ; $551f: $34
    inc l                                         ; $5520: $2c
    ld d, l                                       ; $5521: $55
    pop de                                        ; $5522: $d1
    scf                                           ; $5523: $37
    sbc a                                         ; $5524: $9f
    dec a                                         ; $5525: $3d
    sub $dd                                       ; $5526: $d6 $dd
    ld c, [hl]                                    ; $5528: $4e
    ld h, e                                       ; $5529: $63
    sub a                                         ; $552a: $97
    ld c, [hl]                                    ; $552b: $4e
    add hl, bc                                    ; $552c: $09
    add hl, sp                                    ; $552d: $39
    ret                                           ; $552e: $c9


    ld a, c                                       ; $552f: $79
    adc $e2                                       ; $5530: $ce $e2
    jr c, jr_03c_55a8                             ; $5532: $38 $74

    ld l, b                                       ; $5534: $68
    ld a, [hl]                                    ; $5535: $7e
    pop bc                                        ; $5536: $c1
    rst $28                                       ; $5537: $ef
    ret c                                         ; $5538: $d8

    cp h                                          ; $5539: $bc
    ld l, $48                                     ; $553a: $2e $48
    inc de                                        ; $553c: $13

jr_03c_553d:
    call z, Call_03c_5615                         ; $553d: $cc $15 $56
    ld e, d                                       ; $5540: $5a
    ld a, h                                       ; $5541: $7c
    ld e, c                                       ; $5542: $59
    ld e, b                                       ; $5543: $58
    ld e, h                                       ; $5544: $5c
    db $fd                                        ; $5545: $fd
    jp c, $dd73                                   ; $5546: $da $73 $dd

    adc $69                                       ; $5549: $ce $69
    db $ec                                        ; $554b: $ec
    cp a                                          ; $554c: $bf
    ret nc                                        ; $554d: $d0

    ld h, c                                       ; $554e: $61
    ld c, h                                       ; $554f: $4c
    ld e, l                                       ; $5550: $5d
    ld hl, sp-$0e                                 ; $5551: $f8 $f2
    adc e                                         ; $5553: $8b
    ld l, [hl]                                    ; $5554: $6e
    and $f5                                       ; $5555: $e6 $f5
    rla                                           ; $5557: $17
    and [hl]                                      ; $5558: $a6
    adc h                                         ; $5559: $8c
    ld a, [de]                                    ; $555a: $1a
    cp c                                          ; $555b: $b9
    jr z, jr_03c_553d                             ; $555c: $28 $df

    ld sp, hl                                     ; $555e: $f9
    ld a, [hl]                                    ; $555f: $7e
    cp c                                          ; $5560: $b9
    ld hl, sp-$48                                 ; $5561: $f8 $b8
    ld c, [hl]                                    ; $5563: $4e
    inc hl                                        ; $5564: $23
    ld l, $48                                     ; $5565: $2e $48
    inc de                                        ; $5567: $13
    call z, $001e                                 ; $5568: $cc $1e $00
    db $dd                                        ; $556b: $dd
    db $ec                                        ; $556c: $ec
    ld e, a                                       ; $556d: $5f
    rla                                           ; $556e: $17
    add hl, hl                                    ; $556f: $29
    ld [hl], l                                    ; $5570: $75
    jp $39f7                                      ; $5571: $c3 $f7 $39


    sub [hl]                                      ; $5574: $96
    or c                                          ; $5575: $b1
    rra                                           ; $5576: $1f
    push bc                                       ; $5577: $c5
    inc [hl]                                      ; $5578: $34
    db $d3                                        ; $5579: $d3
    ld [hl], d                                    ; $557a: $72
    cp a                                          ; $557b: $bf
    ld a, [c]                                     ; $557c: $f2
    dec bc                                        ; $557d: $0b
    add hl, hl                                    ; $557e: $29
    push de                                       ; $557f: $d5
    inc [hl]                                      ; $5580: $34
    and [hl]                                      ; $5581: $a6
    reti                                          ; $5582: $d9


    ld [hl+], a                                   ; $5583: $22
    ld a, h                                       ; $5584: $7c
    or $2f                                        ; $5585: $f6 $2f
    ld h, d                                       ; $5587: $62
    db $ed                                        ; $5588: $ed
    or c                                          ; $5589: $b1
    ld l, [hl]                                    ; $558a: $6e
    rst $00                                       ; $558b: $c7
    sbc h                                         ; $558c: $9c
    or b                                          ; $558d: $b0
    ret nc                                        ; $558e: $d0

    ld h, c                                       ; $558f: $61
    ld c, h                                       ; $5590: $4c
    ld e, l                                       ; $5591: $5d
    ld hl, sp-$0e                                 ; $5592: $f8 $f2
    adc e                                         ; $5594: $8b
    ld l, [hl]                                    ; $5595: $6e
    and $f5                                       ; $5596: $e6 $f5
    rla                                           ; $5598: $17
    and [hl]                                      ; $5599: $a6
    inc l                                         ; $559a: $2c
    cp d                                          ; $559b: $ba
    sbc c                                         ; $559c: $99
    xor h                                         ; $559d: $ac
    ld b, e                                       ; $559e: $43
    ld b, [hl]                                    ; $559f: $46
    and d                                         ; $55a0: $a2
    ld l, c                                       ; $55a1: $69
    rst $18                                       ; $55a2: $df

jr_03c_55a3:
    inc bc                                        ; $55a3: $03
    nop                                           ; $55a4: $00
    ld a, l                                       ; $55a5: $7d
    cp b                                          ; $55a6: $b8
    ret z                                         ; $55a7: $c8

jr_03c_55a8:
    ld a, [hl-]                                   ; $55a8: $3a
    ld h, a                                       ; $55a9: $67
    ld [hl], c                                    ; $55aa: $71
    inc e                                         ; $55ab: $1c
    and $22                                       ; $55ac: $e6 $22
    rla                                           ; $55ae: $17
    ld a, h                                       ; $55af: $7c
    sbc l                                         ; $55b0: $9d
    ld c, c                                       ; $55b1: $49
    inc [hl]                                      ; $55b2: $34
    call nz, $ef28                                ; $55b3: $c4 $28 $ef
    ld [hl], e                                    ; $55b6: $73
    sbc [hl]                                      ; $55b7: $9e
    ld h, l                                       ; $55b8: $65
    ld sp, $8e7d                                  ; $55b9: $31 $7d $8e
    cp b                                          ; $55bc: $b8
    ld a, [c]                                     ; $55bd: $f2
    dec bc                                        ; $55be: $0b
    adc e                                         ; $55bf: $8b
    xor e                                         ; $55c0: $ab
    rst $38                                       ; $55c1: $ff
    sbc $15                                       ; $55c2: $de $15
    ld e, c                                       ; $55c4: $59
    ld a, [hl+]                                   ; $55c5: $2a
    ld e, a                                       ; $55c6: $5f
    and a                                         ; $55c7: $a7

Call_03c_55c8:
    xor $d7                                       ; $55c8: $ee $d7
    jr nc, jr_03c_55de                            ; $55ca: $30 $12

    db $e3                                        ; $55cc: $e3
    ld c, e                                       ; $55cd: $4b
    ret                                           ; $55ce: $c9


    dec de                                        ; $55cf: $1b
    nop                                           ; $55d0: $00
    cp l                                          ; $55d1: $bd
    add d                                         ; $55d2: $82
    add hl, hl                                    ; $55d3: $29
    rrca                                          ; $55d4: $0f
    sbc a                                         ; $55d5: $9f
    db $fd                                        ; $55d6: $fd
    adc e                                         ; $55d7: $8b
    ld e, b                                       ; $55d8: $58
    pop hl                                        ; $55d9: $e1
    ld l, e                                       ; $55da: $6b
    ld [hl], l                                    ; $55db: $75
    adc e                                         ; $55dc: $8b
    ccf                                           ; $55dd: $3f

jr_03c_55de:
    sub e                                         ; $55de: $93
    jr c, jr_03c_55a3                             ; $55df: $38 $c2

    ld a, d                                       ; $55e1: $7a
    inc de                                        ; $55e2: $13
    ld e, e                                       ; $55e3: $5b
    ld [hl], h                                    ; $55e4: $74
    ld a, [hl]                                    ; $55e5: $7e
    dec h                                         ; $55e6: $25
    ld [hl], l                                    ; $55e7: $75
    ld [hl], l                                    ; $55e8: $75
    ld d, [hl]                                    ; $55e9: $56
    ld e, d                                       ; $55ea: $5a
    db $dd                                        ; $55eb: $dd
    adc b                                         ; $55ec: $88
    ld sp, $9e75                                  ; $55ed: $31 $75 $9e
    xor e                                         ; $55f0: $ab
    db $db                                        ; $55f1: $db
    ld a, [hl+]                                   ; $55f2: $2a
    cpl                                           ; $55f3: $2f
    dec l                                         ; $55f4: $2d
    cp $bd                                        ; $55f5: $fe $bd
    xor e                                         ; $55f7: $ab
    rst $00                                       ; $55f8: $c7
    ld [hl-], a                                   ; $55f9: $32
    and c                                         ; $55fa: $a1
    add $84                                       ; $55fb: $c6 $84
    xor a                                         ; $55fd: $af
    ld l, [hl]                                    ; $55fe: $6e
    ld a, [c]                                     ; $55ff: $f2
    ld a, [hl]                                    ; $5600: $7e
    rra                                           ; $5601: $1f
    adc c                                         ; $5602: $89
    pop af                                        ; $5603: $f1
    ld l, e                                       ; $5604: $6b
    ld h, d                                       ; $5605: $62
    db $e4                                        ; $5606: $e4
    dec c                                         ; $5607: $0d
    nop                                           ; $5608: $00
    db $dd                                        ; $5609: $dd
    adc $76                                       ; $560a: $ce $76
    call nz, $f945                                ; $560c: $c4 $45 $f9
    adc $f7                                       ; $560f: $ce $f7
    ld c, e                                       ; $5611: $4b
    ld hl, sp-$14                                 ; $5612: $f8 $ec
    ld e, a                                       ; $5614: $5f

Call_03c_5615:
    call nz, $63da                                ; $5615: $c4 $da $63
    db $dd                                        ; $5618: $dd
    db $ec                                        ; $5619: $ec
    add h                                         ; $561a: $84
    ld a, [hl-]                                   ; $561b: $3a
    sub [hl]                                      ; $561c: $96
    and l                                         ; $561d: $a5
    ld b, b                                       ; $561e: $40
    xor [hl]                                      ; $561f: $ae
    sub h                                         ; $5620: $94
    sbc h                                         ; $5621: $9c
    rst $20                                       ; $5622: $e7
    adc $13                                       ; $5623: $ce $13
    ld l, e                                       ; $5625: $6b
    ld [hl], l                                    ; $5626: $75
    ld [hl], l                                    ; $5627: $75
    ld b, e                                       ; $5628: $43
    sbc a                                         ; $5629: $9f
    jp nc, $0003                                  ; $562a: $d2 $03 $00

    add c                                         ; $562d: $81
    ld [hl], $f0                                  ; $562e: $36 $f0
    reti                                          ; $5630: $d9


    cp a                                          ; $5631: $bf
    adc b                                         ; $5632: $88
    dec d                                         ; $5633: $15
    ld a, $6c                                     ; $5634: $3e $6c
    or e                                          ; $5636: $b3
    and $4a                                       ; $5637: $e6 $4a
    ld l, $e8                                     ; $5639: $2e $e8
    ld a, [hl-]                                   ; $563b: $3a
    adc l                                         ; $563c: $8d
    jp z, Jump_03c_6905                           ; $563d: $ca $05 $69

    add d                                         ; $5640: $82
    cp c                                          ; $5641: $b9

jr_03c_5642:
    ld hl, sp-$48                                 ; $5642: $f8 $b8
    ld c, [hl]                                    ; $5644: $4e
    inc hl                                        ; $5645: $23
    sbc $00                                       ; $5646: $de $00
    ld bc, $ab29                                  ; $5648: $01 $29 $ab
    cp $4a                                        ; $564b: $fe $4a
    ld a, [bc]                                    ; $564d: $0a
    ld a, h                                       ; $564e: $7c
    ld e, a                                       ; $564f: $5f

jr_03c_5650:
    ld e, h                                       ; $5650: $5c
    adc l                                         ; $5651: $8d
    xor c                                         ; $5652: $a9
    ldh a, [$85]                                  ; $5653: $f0 $85
    ld a, [c]                                     ; $5655: $f2
    ld h, $36                                     ; $5656: $26 $36
    di                                            ; $5658: $f3
    ld a, [hl]                                    ; $5659: $7e
    dec h                                         ; $565a: $25
    ld [hl], l                                    ; $565b: $75
    ld [hl], l                                    ; $565c: $75
    ld d, [hl]                                    ; $565d: $56
    ld e, d                                       ; $565e: $5a
    db $dd                                        ; $565f: $dd
    adc b                                         ; $5660: $88
    ld sp, $9e75                                  ; $5661: $31 $75 $9e
    dec hl                                        ; $5664: $2b
    cp a                                          ; $5665: $bf
    jp z, $8b4b                                   ; $5666: $ca $4b $8b

    ccf                                           ; $5669: $3f
    adc e                                         ; $566a: $8b
    db $e3                                        ; $566b: $e3
    ld d, d                                       ; $566c: $52
    rla                                           ; $566d: $17
    ld h, h                                       ; $566e: $64
    sbc l                                         ; $566f: $9d
    ld a, [hl-]                                   ; $5670: $3a
    and d                                         ; $5671: $a2
    ld a, [c]                                     ; $5672: $f2
    ldh [$f7], a                                  ; $5673: $e0 $f7
    add hl, sp                                    ; $5675: $39
    ei                                            ; $5676: $fb
    rla                                           ; $5677: $17
    or c                                          ; $5678: $b1
    adc $3a                                       ; $5679: $ce $3a
    ld l, e                                       ; $567b: $6b
    adc $3a                                       ; $567c: $ce $3a
    ld l, d                                       ; $567e: $6a
    ld a, h                                       ; $567f: $7c
    cp a                                          ; $5680: $bf
    ld d, b                                       ; $5681: $50
    jr jr_03c_5642                                ; $5682: $18 $be

    cp h                                          ; $5684: $bc
    ld c, a                                       ; $5685: $4f
    ld e, l                                       ; $5686: $5d
    ld hl, sp-$0e                                 ; $5687: $f8 $f2
    dec bc                                        ; $5689: $0b
    cp [hl]                                       ; $568a: $be
    and c                                         ; $568b: $a1
    xor h                                         ; $568c: $ac
    or b                                          ; $568d: $b0
    jp nc, $cbe2                                  ; $568e: $d2 $e2 $cb

    jp z, $2c2f                                   ; $5691: $ca $2f $2c

    xor [hl]                                      ; $5694: $ae
    cp $95                                        ; $5695: $fe $95
    ld e, a                                       ; $5697: $5f
    jr z, jr_03c_5650                             ; $5698: $28 $b6

    or b                                          ; $569a: $b0
    ld e, d                                       ; $569b: $5a
    db $fd                                        ; $569c: $fd
    xor e                                         ; $569d: $ab
    or b                                          ; $569e: $b0
    rst $38                                       ; $569f: $ff

Jump_03c_56a0:
    cp l                                          ; $56a0: $bd
    ld b, b                                       ; $56a1: $40
    xor $cd                                       ; $56a2: $ee $cd
    ld [hl], a                                    ; $56a4: $77
    ld l, h                                       ; $56a5: $6c
    ld d, a                                       ; $56a6: $57
    ld a, [hl]                                    ; $56a7: $7e
    and [hl]                                      ; $56a8: $a6
    cp h                                          ; $56a9: $bc
    ld a, [c]                                     ; $56aa: $f2
    ld b, $7d                                     ; $56ab: $06 $7d
    ld [hl], e                                    ; $56ad: $73
    sub c                                         ; $56ae: $91
    inc hl                                        ; $56af: $23
    ld b, [hl]                                    ; $56b0: $46
    ld h, c                                       ; $56b1: $61
    inc h                                         ; $56b2: $24
    ld b, d                                       ; $56b3: $42
    xor a                                         ; $56b4: $af
    ldh a, [$d9]                                  ; $56b5: $f0 $d9
    cp a                                          ; $56b7: $bf
    adc b                                         ; $56b8: $88
    push af                                       ; $56b9: $f5
    ld e, [hl]                                    ; $56ba: $5e
    ld h, b                                       ; $56bb: $60
    ld e, e                                       ; $56bc: $5b
    add hl, hl                                    ; $56bd: $29
    add h                                         ; $56be: $84
    ld e, [hl]                                    ; $56bf: $5e
    rla                                           ; $56c0: $17
    ld e, a                                       ; $56c1: $5f
    inc a                                         ; $56c2: $3c
    pop hl                                        ; $56c3: $e1
    dec bc                                        ; $56c4: $0b
    add hl, hl                                    ; $56c5: $29
    sbc [hl]                                      ; $56c6: $9e

Jump_03c_56c7:
    jp nc, $2ba5                                  ; $56c7: $d2 $a5 $2b

    xor c                                         ; $56ca: $a9
    dec bc                                        ; $56cb: $0b
    dec e                                         ; $56cc: $1d
    add $d4                                       ; $56cd: $c6 $d4
    ld e, c                                       ; $56cf: $59
    inc e                                         ; $56d0: $1c
    rst $30                                       ; $56d1: $f7
    and $3b                                       ; $56d2: $e6 $3b
    xor a                                         ; $56d4: $af
    di                                            ; $56d5: $f3
    inc e                                         ; $56d6: $1c
    db $f4                                        ; $56d7: $f4
    ld hl, sp+$12                                 ; $56d8: $f8 $12
    ld a, c                                       ; $56da: $79
    inc bc                                        ; $56db: $03
    cp l                                          ; $56dc: $bd
    ld d, $dd                                     ; $56dd: $16 $dd
    ld b, d                                       ; $56df: $42
    or c                                          ; $56e0: $b1
    add l                                         ; $56e1: $85
    push de                                       ; $56e2: $d5
    ld [$299f], a                                 ; $56e3: $ea $9f $29
    xor a                                         ; $56e6: $af
    add h                                         ; $56e7: $84
    rst $08                                       ; $56e8: $cf
    cp $45                                        ; $56e9: $fe $45
    xor h                                         ; $56eb: $ac
    scf                                           ; $56ec: $37
    nop                                           ; $56ed: $00
    ld a, l                                       ; $56ee: $7d
    ld [hl], e                                    ; $56ef: $73

jr_03c_56f0:
    pop bc                                        ; $56f0: $c1
    or a                                          ; $56f1: $b7
    ld c, [hl]                                    ; $56f2: $4e
    cp [hl]                                       ; $56f3: $be
    cp a                                          ; $56f4: $bf
    dec l                                         ; $56f5: $2d
    ld l, $7c                                     ; $56f6: $2e $7c
    ld sp, hl                                     ; $56f8: $f9

Jump_03c_56f9:
    ld e, c                                       ; $56f9: $59
    inc e                                         ; $56fa: $1c

Call_03c_56fb:
    db $fd                                        ; $56fb: $fd
    adc e                                         ; $56fc: $8b
    ld [hl], d                                    ; $56fd: $72
    add $3d                                       ; $56fe: $c6 $3d
    ld a, [$729c]                                 ; $5700: $fa $9c $72
    pop bc                                        ; $5703: $c1
    rst $18                                       ; $5704: $df
    sbc e                                         ; $5705: $9b
    rst $28                                       ; $5706: $ef
    cp h                                          ; $5707: $bc
    rst $08                                       ; $5708: $cf
    sub l                                         ; $5709: $95
    sbc a                                         ; $570a: $9f
    add hl, hl                                    ; $570b: $29
    xor a                                         ; $570c: $af
    cp h                                          ; $570d: $bc
    ld h, a                                       ; $570e: $67
    rst $38                                       ; $570f: $ff
    sub $d5                                       ; $5710: $d6 $d5
    ld e, l                                       ; $5712: $5d
    ld a, [hl-]                                   ; $5713: $3a
    sub e                                         ; $5714: $93
    ld a, [$8b3a]                                 ; $5715: $fa $3a $8b
    db $e3                                        ; $5718: $e3
    ld a, $14                                     ; $5719: $3e $14
    and d                                         ; $571b: $a2
    and a                                         ; $571c: $a7
    adc h                                         ; $571d: $8c
    cp b                                          ; $571e: $b8
    adc h                                         ; $571f: $8c
    sub d                                         ; $5720: $92
    ld a, [hl-]                                   ; $5721: $3a
    ld l, l                                       ; $5722: $6d
    or c                                          ; $5723: $b1
    and l                                         ; $5724: $a5
    sbc $00                                       ; $5725: $de $00
    db $dd                                        ; $5727: $dd
    inc bc                                        ; $5728: $03
    ld d, d                                       ; $5729: $52
    ld h, [hl]                                    ; $572a: $66
    ld [hl], c                                    ; $572b: $71
    ld d, l                                       ; $572c: $55
    rla                                           ; $572d: $17
    cp [hl]                                       ; $572e: $be
    ret nc                                        ; $572f: $d0

    ld [hl], b                                    ; $5730: $70
    jp c, $8758                                   ; $5731: $da $58 $87

    jp nz, $c7c5                                  ; $5734: $c2 $c5 $c7

    ld hl, $d2a5                                  ; $5737: $21 $a5 $d2
    ld d, d                                       ; $573a: $52
    ld [hl], e                                    ; $573b: $73
    inc l                                         ; $573c: $2c
    dec bc                                        ; $573d: $0b
    dec h                                         ; $573e: $25
    xor e                                         ; $573f: $ab
    xor c                                         ; $5740: $a9
    add hl, hl                                    ; $5741: $29
    cp e                                          ; $5742: $bb
    call nz, Call_000_1135                        ; $5743: $c4 $35 $11
    sub [hl]                                      ; $5746: $96
    jp nc, Jump_000_0013                          ; $5747: $d2 $13 $00

    sub a                                         ; $574a: $97
    cp b                                          ; $574b: $b8
    ld h, $c2                                     ; $574c: $26 $c2
    ld d, d                                       ; $574e: $52
    and [hl]                                      ; $574f: $a6
    adc l                                         ; $5750: $8d
    ld [hl], l                                    ; $5751: $75
    jr z, jr_03c_56f0                             ; $5752: $28 $9c

    ld a, [hl]                                    ; $5754: $7e
    add a                                         ; $5755: $87
    dec hl                                        ; $5756: $2b
    add hl, sp                                    ; $5757: $39
    adc e                                         ; $5758: $8b

Jump_03c_5759:
    db $e3                                        ; $5759: $e3
    xor b                                         ; $575a: $a8
    pop af                                        ; $575b: $f1
    db $eb                                        ; $575c: $eb
    call nc, $df05                                ; $575d: $d4 $05 $df
    inc [hl]                                      ; $5760: $34
    and d                                         ; $5761: $a2
    rst $08                                       ; $5762: $cf
    ld a, e                                       ; $5763: $7b
    halt                                          ; $5764: $76
    ld a, [hl-]                                   ; $5765: $3a
    sub e                                         ; $5766: $93
    ld [hl], l                                    ; $5767: $75
    ld c, [hl]                                    ; $5768: $4e
    db $db                                        ; $5769: $db
    and d                                         ; $576a: $a2
    xor e                                         ; $576b: $ab
    inc [hl]                                      ; $576c: $34
    jp z, $fb2f                                   ; $576d: $ca $2f $fb

    and l                                         ; $5770: $a5
    adc [hl]                                      ; $5771: $8e
    cp b                                          ; $5772: $b8
    ld a, [c]                                     ; $5773: $f2
    ld b, e                                       ; $5774: $43
    ld h, a                                       ; $5775: $67
    cp $06                                        ; $5776: $fe $06
    ld a, l                                       ; $5778: $7d
    cp b                                          ; $5779: $b8
    ld d, b                                       ; $577a: $50

Call_03c_577b:
    ld [$8c39], sp                                ; $577b: $08 $39 $8c
    add hl, sp                                    ; $577e: $39
    ld l, l                                       ; $577f: $6d
    xor e                                         ; $5780: $ab
    add hl, sp                                    ; $5781: $39
    adc e                                         ; $5782: $8b
    and e                                         ; $5783: $a3
    ld a, a                                       ; $5784: $7f
    or c                                          ; $5785: $b1
    ld sp, hl                                     ; $5786: $f9
    ld [hl], l                                    ; $5787: $75
    ld a, [de]                                    ; $5788: $1a
    ld [hl], c                                    ; $5789: $71
    ld c, $17                                     ; $578a: $0e $17
    sbc l                                         ; $578c: $9d
    ld [hl], h                                    ; $578d: $74
    ld e, $23                                     ; $578e: $1e $23
    ld l, a                                       ; $5790: $6f
    nop                                           ; $5791: $00
    halt                                          ; $5792: $76
    ld a, [de]                                    ; $5793: $1a
    ld a, a                                       ; $5794: $7f
    rst $28                                       ; $5795: $ef
    jp z, Jump_000_3a8f                           ; $5796: $ca $8f $3a

    add a                                         ; $5799: $87
    dec bc                                        ; $579a: $0b
    db $d3                                        ; $579b: $d3
    db $e4                                        ; $579c: $e4
    ld h, d                                       ; $579d: $62
    push de                                       ; $579e: $d5
    jr z, @-$31                                   ; $579f: $28 $cd

    db $fc                                        ; $57a1: $fc
    dec c                                         ; $57a2: $0d
    nop                                           ; $57a3: $00
    db $dd                                        ; $57a4: $dd
    db $ec                                        ; $57a5: $ec
    ld e, a                                       ; $57a6: $5f
    call nz, $80ba                                ; $57a7: $c4 $ba $80
    adc h                                         ; $57aa: $8c
    sub c                                         ; $57ab: $91
    jp nc, $dd63                                  ; $57ac: $d2 $63 $dd

    adc $93                                       ; $57af: $ce $93
    scf                                           ; $57b1: $37
    db $ed                                        ; $57b2: $ed
    ld [hl], l                                    ; $57b3: $75
    ccf                                           ; $57b4: $3f
    rst $18                                       ; $57b5: $df
    ld d, d                                       ; $57b6: $52
    ld h, a                                       ; $57b7: $67
    ld [hl], c                                    ; $57b8: $71
    inc e                                         ; $57b9: $1c
    dec [hl]                                      ; $57ba: $35
    halt                                          ; $57bb: $76
    jp hl                                         ; $57bc: $e9


    sbc $e2                                       ; $57bd: $de $e2
    ld l, h                                       ; $57bf: $6c
    ld a, d                                       ; $57c0: $7a
    nop                                           ; $57c1: $00
    or $bf                                        ; $57c2: $f6 $bf
    ldh [rPCM34], a                               ; $57c4: $e0 $77
    sbc d                                         ; $57c6: $9a
    rst $08                                       ; $57c7: $cf
    add hl, sp                                    ; $57c8: $39
    call c, $d31b                                 ; $57c9: $dc $1b $d3
    inc a                                         ; $57cc: $3c
    ld sp, $b4f2                                  ; $57cd: $31 $f2 $b4
    add hl, sp                                    ; $57d0: $39
    db $fc                                        ; $57d1: $fc
    ld d, l                                       ; $57d2: $55
    ld e, b                                       ; $57d3: $58
    ld a, [hl]                                    ; $57d4: $7e
    jp z, Jump_03c_7f05                           ; $57d5: $ca $05 $7f

    ld d, c                                       ; $57d8: $51
    ld e, $b5                                     ; $57d9: $1e $b5
    ld a, [hl-]                                   ; $57db: $3a
    and l                                         ; $57dc: $a5
    ld a, [hl]                                    ; $57dd: $7e
    sbc a                                         ; $57de: $9f
    inc hl                                        ; $57df: $23
    adc $24                                       ; $57e0: $ce $24
    or d                                          ; $57e2: $b2
    ld e, a                                       ; $57e3: $5f
    sbc $00                                       ; $57e4: $de $00
    add c                                         ; $57e6: $81
    ld [hl], $b3                                  ; $57e7: $36 $b3
    jr c, jr_03c_5839                             ; $57e9: $38 $4e

    dec e                                         ; $57eb: $1d
    pop af                                        ; $57ec: $f1
    rst $30                                       ; $57ed: $f7
    ld a, e                                       ; $57ee: $7b
    ld h, e                                       ; $57ef: $63
    sbc d                                         ; $57f0: $9a
    daa                                           ; $57f1: $27
    ld b, [hl]                                    ; $57f2: $46
    jp nz, $36a7                                  ; $57f3: $c2 $a7 $36

    scf                                           ; $57f6: $37
    nop                                           ; $57f7: $00
    or $df                                        ; $57f8: $f6 $df
    or c                                          ; $57fa: $b1
    ld sp, hl                                     ; $57fb: $f9
    add hl, sp                                    ; $57fc: $39
    db $fc                                        ; $57fd: $fc
    ld d, l                                       ; $57fe: $55
    ld e, b                                       ; $57ff: $58
    ld a, [hl]                                    ; $5800: $7e
    ld b, h                                       ; $5801: $44
    ld b, e                                       ; $5802: $43
    db $f4                                        ; $5803: $f4
    call $7dff                                    ; $5804: $cd $ff $7d
    rst $18                                       ; $5807: $df
    db $dd                                        ; $5808: $dd
    xor h                                         ; $5809: $ac
    ld d, e                                       ; $580a: $53
    adc [hl]                                      ; $580b: $8e
    ld l, d                                       ; $580c: $6a
    ld a, $b4                                     ; $580d: $3e $b4
    db $ed                                        ; $580f: $ed
    or c                                          ; $5810: $b1
    ld a, $5c                                     ; $5811: $3e $5c
    ld h, h                                       ; $5813: $64
    sbc l                                         ; $5814: $9d
    or e                                          ; $5815: $b3
    jr c, @+$30                                   ; $5816: $38 $2e

    ld [hl], h                                    ; $5818: $74
    db $f4                                        ; $5819: $f4
    cp a                                          ; $581a: $bf
    add [hl]                                      ; $581b: $86
    add [hl]                                      ; $581c: $86
    add sp, -$25                                  ; $581d: $e8 $db
    res 7, [hl]                                   ; $581f: $cb $be
    ld b, b                                       ; $5821: $40
    ld a, c                                       ; $5822: $79
    xor a                                         ; $5823: $af
    cpl                                           ; $5824: $2f
    dec c                                         ; $5825: $0d
    or l                                          ; $5826: $b5
    push bc                                       ; $5827: $c5
    sbc h                                         ; $5828: $9c
    push bc                                       ; $5829: $c5
    ld [hl], c                                    ; $582a: $71
    ld e, a                                       ; $582b: $5f
    jr nz, @-$27                                  ; $582c: $20 $d7

    adc b                                         ; $582e: $88
    dec hl                                        ; $582f: $2b
    add hl, sp                                    ; $5830: $39
    rst $08                                       ; $5831: $cf
    ld c, b                                       ; $5832: $48
    add h                                         ; $5833: $84
    cp $de                                        ; $5834: $fe $de
    push de                                       ; $5836: $d5
    adc e                                         ; $5837: $8b
    inc e                                         ; $5838: $1c

jr_03c_5839:
    pop de                                        ; $5839: $d1
    cp h                                          ; $583a: $bc
    ld b, b                                       ; $583b: $40
    cp c                                          ; $583c: $b9
    ld e, a                                       ; $583d: $5f
    ld l, h                                       ; $583e: $6c
    dec hl                                        ; $583f: $2b
    cp a                                          ; $5840: $bf
    ld hl, sp-$3e                                 ; $5841: $f8 $c2
    cp a                                          ; $5843: $bf
    ld bc, $7bdd                                  ; $5844: $01 $dd $7b
    db $db                                        ; $5847: $db
    sub $39                                       ; $5848: $d6 $39
    and c                                         ; $584a: $a1
    ld c, c                                       ; $584b: $49
    ld c, h                                       ; $584c: $4c
    ld b, e                                       ; $584d: $43
    xor c                                         ; $584e: $a9
    cp d                                          ; $584f: $ba
    cpl                                           ; $5850: $2f
    inc sp                                        ; $5851: $33
    adc c                                         ; $5852: $89
    db $ec                                        ; $5853: $ec
    sub a                                         ; $5854: $97
    db $d3                                        ; $5855: $d3
    or [hl]                                       ; $5856: $b6
    sub d                                         ; $5857: $92
    xor e                                         ; $5858: $ab
    jr nc, @+$7d                                  ; $5859: $30 $7b

    ld [bc], a                                    ; $585b: $02
    halt                                          ; $585c: $76
    ld a, [hl-]                                   ; $585d: $3a
    sub e                                         ; $585e: $93
    dec h                                         ; $585f: $25
    ld h, l                                       ; $5860: $65
    pop hl                                        ; $5861: $e1
    ld bc, $3a12                                  ; $5862: $01 $12 $3a
    ld sp, hl                                     ; $5865: $f9
    ld e, c                                       ; $5866: $59
    ld b, a                                       ; $5867: $47
    call $8e61                                    ; $5868: $cd $61 $8e
    ld a, [hl-]                                   ; $586b: $3a
    ld c, h                                       ; $586c: $4c
    xor c                                         ; $586d: $a9
    cp a                                          ; $586e: $bf
    ret nz                                        ; $586f: $c0

    rst $10                                       ; $5870: $d7
    ret nc                                        ; $5871: $d0

    inc d                                         ; $5872: $14
    and a                                         ; $5873: $a7
    add hl, sp                                    ; $5874: $39
    ld [c], a                                     ; $5875: $e2
    db $ec                                        ; $5876: $ec
    inc de                                        ; $5877: $13
    add d                                         ; $5878: $82
    ld sp, hl                                     ; $5879: $f9
    ld [de], a                                    ; $587a: $12
    push af                                       ; $587b: $f5
    ld e, [hl]                                    ; $587c: $5e
    ld h, b                                       ; $587d: $60
    ld e, e                                       ; $587e: $5b
    ret                                           ; $587f: $c9


    sbc c                                         ; $5880: $99
    add h                                         ; $5881: $84
    xor b                                         ; $5882: $a8
    or e                                          ; $5883: $b3
    xor [hl]                                      ; $5884: $ae
    and $4a                                       ; $5885: $e6 $4a
    ld l, $ca                                     ; $5887: $2e $ca
    ld d, e                                       ; $5889: $53
    rst $20                                       ; $588a: $e7
    cp c                                          ; $588b: $b9
    adc d                                         ; $588c: $8a
    ld h, e                                       ; $588d: $63
    adc c                                         ; $588e: $89
    rrca                                          ; $588f: $0f
    ld e, a                                       ; $5890: $5f
    db $e4                                        ; $5891: $e4
    adc b                                         ; $5892: $88
    jp z, Jump_03c_5f83                           ; $5893: $ca $83 $5f

    xor d                                         ; $5896: $aa
    adc $e1                                       ; $5897: $ce $e1
    ret nc                                        ; $5899: $d0

    or c                                          ; $589a: $b1
    sub d                                         ; $589b: $92
    dec bc                                        ; $589c: $0b
    jp nc, $5b04                                  ; $589d: $d2 $04 $5b

    rst $38                                       ; $58a0: $ff
    cp h                                          ; $58a1: $bc
    ld bc, $b87d                                  ; $58a2: $01 $7d $b8
    rrca                                          ; $58a5: $0f
    dec e                                         ; $58a6: $1d
    dec [hl]                                      ; $58a7: $35
    and $7e                                       ; $58a8: $e6 $7e

jr_03c_58aa:
    ld d, $c7                                     ; $58aa: $16 $c7
    dec [hl]                                      ; $58ac: $35

jr_03c_58ad:
    adc h                                         ; $58ad: $8c
    call nz, $d2f8                                ; $58ae: $c4 $f8 $d2
    dec [hl]                                      ; $58b1: $35
    db $fd                                        ; $58b2: $fd
    jp nc, $d564                                  ; $58b3: $d2 $64 $d5

    adc [hl]                                      ; $58b6: $8e
    ld a, [c]                                     ; $58b7: $f2
    scf                                           ; $58b8: $37
    nop                                           ; $58b9: $00
    ld h, a                                       ; $58ba: $67
    dec sp                                        ; $58bb: $3b
    ld [c], a                                     ; $58bc: $e2
    ld c, a                                       ; $58bd: $4f
    dec e                                         ; $58be: $1d
    dec h                                         ; $58bf: $25
    ld [de], a                                    ; $58c0: $12
    ld a, $fb                                     ; $58c1: $3e $fb
    rla                                           ; $58c3: $17
    or c                                          ; $58c4: $b1
    sbc $bb                                       ; $58c5: $de $bb
    adc h                                         ; $58c7: $8c
    jr c, jr_03c_58ad                             ; $58c8: $38 $e3

    sbc d                                         ; $58ca: $9a
    ld a, a                                       ; $58cb: $7f
    sbc a                                         ; $58cc: $9f
    or e                                          ; $58cd: $b3
    ld c, $73                                     ; $58ce: $0e $73
    sub c                                         ; $58d0: $91
    or e                                          ; $58d1: $b3
    jr c, jr_03c_58aa                             ; $58d2: $38 $d6

    call nc, $001b                                ; $58d4: $d4 $1b $00
    db $dd                                        ; $58d7: $dd
    db $ec                                        ; $58d8: $ec
    jp z, $224c                                   ; $58d9: $ca $4c $22

    ei                                            ; $58dc: $fb
    push hl                                       ; $58dd: $e5
    jr nc, jr_03c_5927                            ; $58de: $30 $47

    adc l                                         ; $58e0: $8d
    ld e, l                                       ; $58e1: $5d
    ld a, e                                       ; $58e2: $7b
    adc e                                         ; $58e3: $8b
    or e                                          ; $58e4: $b3
    add c                                         ; $58e5: $81
    rst $08                                       ; $58e6: $cf
    cp $45                                        ; $58e7: $fe $45
    xor h                                         ; $58e9: $ac
    dec a                                         ; $58ea: $3d
    sub $ed                                       ; $58eb: $d6 $ed
    sbc h                                         ; $58ed: $9c
    adc a                                         ; $58ee: $8f
    ld e, h                                       ; $58ef: $5c
    jr z, @+$4f                                   ; $58f0: $28 $4d

    ld a, a                                       ; $58f2: $7f
    sub $11                                       ; $58f3: $d6 $11
    adc l                                         ; $58f5: $8d
    xor e                                         ; $58f6: $ab
    adc d                                         ; $58f7: $8a
    ld d, c                                       ; $58f8: $51
    cp [hl]                                       ; $58f9: $be
    ld h, h                                       ; $58fa: $64
    rrca                                          ; $58fb: $0f
    nop                                           ; $58fc: $00
    db $dd                                        ; $58fd: $dd
    db $ed                                        ; $58fe: $ed
    ld e, a                                       ; $58ff: $5f
    ld d, a                                       ; $5900: $57
    ld l, c                                       ; $5901: $69
    ld a, [de]                                    ; $5902: $1a
    ld [hl], e                                    ; $5903: $73
    ld c, $67                                     ; $5904: $0e $67
    ld [de], a                                    ; $5906: $12
    reti                                          ; $5907: $d9


    cpl                                           ; $5908: $2f
    rla                                           ; $5909: $17
    ld e, $20                                     ; $590a: $1e $20
    and c                                         ; $590c: $a1
    sub e                                         ; $590d: $93
    rst $28                                       ; $590e: $ef
    add hl, bc                                    ; $590f: $09
    nop                                           ; $5910: $00
    add c                                         ; $5911: $81
    ld [hl], $f0                                  ; $5912: $36 $f0
    sbc c                                         ; $5914: $99
    inc d                                         ; $5915: $14
    ld l, c                                       ; $5916: $69
    ld b, h                                       ; $5917: $44
    sbc a                                         ; $5918: $9f
    dec bc                                        ; $5919: $0b
    cp [hl]                                       ; $591a: $be
    ld l, c                                       ; $591b: $69
    cp a                                          ; $591c: $bf
    ld a, [c]                                     ; $591d: $f2
    ld a, [hl-]                                   ; $591e: $3a
    xor d                                         ; $591f: $aa
    ld sp, hl                                     ; $5920: $f9
    ld b, d                                       ; $5921: $42
    ld a, c                                       ; $5922: $79
    cp l                                          ; $5923: $bd
    ld bc, $b457                                  ; $5924: $01 $57 $b4

jr_03c_5927:
    add hl, sp                                    ; $5927: $39
    sbc h                                         ; $5928: $9c
    ld c, c                                       ; $5929: $49

Jump_03c_592a:
    ld h, h                                       ; $592a: $64
    cp a                                          ; $592b: $bf
    inc e                                         ; $592c: $1c
    ld [hl], c                                    ; $592d: $71
    push hl                                       ; $592e: $e5
    ld [hl], l                                    ; $592f: $75
    ld d, h                                       ; $5930: $54
    di                                            ; $5931: $f3
    add l                                         ; $5932: $85
    ld a, [c]                                     ; $5933: $f2
    ld a, [hl-]                                   ; $5934: $3a
    adc e                                         ; $5935: $8b
    db $e3                                        ; $5936: $e3
    ld c, h                                       ; $5937: $4c
    adc d                                         ; $5938: $8a
    ret c                                         ; $5939: $d8

    db $fc                                        ; $593a: $fc
    add d                                         ; $593b: $82
    ld l, a                                       ; $593c: $6f
    jp c, $fcaf                                   ; $593d: $da $af $fc

    jp nz, $18f2                                  ; $5940: $c2 $f2 $18

    ld a, a                                       ; $5943: $7f
    sbc l                                         ; $5944: $9d
    rst $28                                       ; $5945: $ef
    rst $30                                       ; $5946: $f7
    rst $30                                       ; $5947: $f7
    ld a, [$6ae6]                                 ; $5948: $fa $e6 $6a
    xor $8d                                       ; $594b: $ee $8d
    and e                                         ; $594d: $a3
    ld hl, sp-$64                                 ; $594e: $f8 $9c
    rst $20                                       ; $5950: $e7
    inc l                                         ; $5951: $2c
    xor [hl]                                      ; $5952: $ae
    ld [$964c], a                                 ; $5953: $ea $4c $96
    sub h                                         ; $5956: $94
    ld d, c                                       ; $5957: $51
    cp $06                                        ; $5958: $fe $06
    ld bc, $342f                                  ; $595a: $01 $2f $34
    sbc h                                         ; $595d: $9c
    push bc                                       ; $595e: $c5
    ld [hl], c                                    ; $595f: $71
    sbc b                                         ; $5960: $98
    dec bc                                        ; $5961: $0b
    ld e, a                                       ; $5962: $5f
    ld e, a                                       ; $5963: $5f
    ld d, a                                       ; $5964: $57
    dec sp                                        ; $5965: $3b
    inc de                                        ; $5966: $13
    call z, $2985                                 ; $5967: $cc $85 $29
    inc sp                                        ; $596a: $33
    push hl                                       ; $596b: $e5
    sub l                                         ; $596c: $95
    ldh a, [$d9]                                  ; $596d: $f0 $d9
    cp a                                          ; $596f: $bf
    adc b                                         ; $5970: $88
    push af                                       ; $5971: $f5
    ld b, $01                                     ; $5972: $06 $01
    inc d                                         ; $5974: $14
    ld h, e                                       ; $5975: $63
    add l                                         ; $5976: $85
    xor a                                         ; $5977: $af
    ld a, e                                       ; $5978: $7b
    ldh a, [$75]                                  ; $5979: $f0 $75
    sub l                                         ; $597b: $95
    and [hl]                                      ; $597c: $a6
    ld sp, $70e7                                  ; $597d: $31 $e7 $70
    ld h, $91                                     ; $5980: $26 $91
    db $fd                                        ; $5982: $fd
    ld [hl], d                                    ; $5983: $72
    pop hl                                        ; $5984: $e1
    ld bc, $3a12                                  ; $5985: $01 $12 $3a
    ld sp, hl                                     ; $5988: $f9
    add l                                         ; $5989: $85
    add hl, hl                                    ; $598a: $29
    ld a, e                                       ; $598b: $7b
    adc e                                         ; $598c: $8b
    or e                                          ; $598d: $b3
    jp hl                                         ; $598e: $e9


    add hl, bc                                    ; $598f: $09
    nop                                           ; $5990: $00
    add c                                         ; $5991: $81
    ld [hl], $f0                                  ; $5992: $36 $f0
    jp hl                                         ; $5994: $e9


    sub a                                         ; $5995: $97
    ld l, b                                       ; $5996: $68
    cp e                                          ; $5997: $bb
    jr nc, jr_03c_59ff                            ; $5998: $30 $65

    push hl                                       ; $599a: $e5
    rla                                           ; $599b: $17
    ld a, [hl-]                                   ; $599c: $3a
    ld c, d                                       ; $599d: $4a
    db $fc                                        ; $599e: $fc
    ld e, c                                       ; $599f: $59
    and a                                         ; $59a0: $a7
    sbc h                                         ; $59a1: $9c
    ld l, a                                       ; $59a2: $6f
    jp nc, Jump_03c_66a0                          ; $59a3: $d2 $a0 $66

    cp e                                          ; $59a6: $bb
    ld e, a                                       ; $59a7: $5f
    ld c, c                                       ; $59a8: $49
    ld e, l                                       ; $59a9: $5d
    cp a                                          ; $59aa: $bf
    rla                                           ; $59ab: $17
    rst $18                                       ; $59ac: $df
    sub b                                         ; $59ad: $90
    ld a, d                                       ; $59ae: $7a
    xor a                                         ; $59af: $af
    ld a, e                                       ; $59b0: $7b
    ld b, b                                       ; $59b1: $40
    jp z, $ae2c                                   ; $59b2: $ca $2c $ae

    ld [$0ba8], a                                 ; $59b5: $ea $a8 $0b
    rrca                                          ; $59b8: $0f
    sub b                                         ; $59b9: $90
    ret nc                                        ; $59ba: $d0

    ret                                           ; $59bb: $c9


    rst $30                                       ; $59bc: $f7
    inc b                                         ; $59bd: $04
    halt                                          ; $59be: $76
    ld a, [hl-]                                   ; $59bf: $3a
    add a                                         ; $59c0: $87
    cp a                                          ; $59c1: $bf
    ld a, [bc]                                    ; $59c2: $0a
    res 1, a                                      ; $59c3: $cb $8f
    ld l, b                                       ; $59c5: $68
    adc b                                         ; $59c6: $88
    cp [hl]                                       ; $59c7: $be
    ld sp, hl                                     ; $59c8: $f9
    sbc a                                         ; $59c9: $9f
    push bc                                       ; $59ca: $c5
    ld [hl], c                                    ; $59cb: $71
    jp z, $c499                                   ; $59cc: $ca $99 $c4

    ld c, d                                       ; $59cf: $4a
    sub e                                         ; $59d0: $93
    ret c                                         ; $59d1: $d8

    ld l, h                                       ; $59d2: $6c
    ld b, a                                       ; $59d3: $47
    sbc h                                         ; $59d4: $9c
    jp Jump_03c_4499                              ; $59d5: $c3 $99 $44


    or $cb                                        ; $59d8: $f6 $cb
    add l                                         ; $59da: $85
    add hl, hl                                    ; $59db: $29
    ld a, e                                       ; $59dc: $7b
    ld h, e                                       ; $59dd: $63
    sbc d                                         ; $59de: $9a
    daa                                           ; $59df: $27
    ld b, [hl]                                    ; $59e0: $46
    sbc $00                                       ; $59e1: $de $00
    halt                                          ; $59e3: $76
    sbc d                                         ; $59e4: $9a
    inc hl                                        ; $59e5: $23
    xor h                                         ; $59e6: $ac
    or b                                          ; $59e7: $b0
    inc [hl]                                      ; $59e8: $34
    di                                            ; $59e9: $f3
    dec hl                                        ; $59ea: $2b
    add hl, sp                                    ; $59eb: $39
    rst $08                                       ; $59ec: $cf
    sub l                                         ; $59ed: $95
    sbc a                                         ; $59ee: $9f
    and c                                         ; $59ef: $a1
    db $fc                                        ; $59f0: $fc
    adc b                                         ; $59f1: $88
    ld h, e                                       ; $59f2: $63
    sbc c                                         ; $59f3: $99
    ld a, [hl-]                                   ; $59f4: $3a
    sub [hl]                                      ; $59f5: $96
    cp h                                          ; $59f6: $bc
    ld bc, $cc7d                                  ; $59f7: $01 $7d $cc
    ld a, c                                       ; $59fa: $79
    adc c                                         ; $59fb: $89
    rrca                                          ; $59fc: $0f
    ld a, l                                       ; $59fd: $7d
    add hl, hl                                    ; $59fe: $29

jr_03c_59ff:
    or e                                          ; $59ff: $b3
    cp b                                          ; $5a00: $b8
    ld b, [hl]                                    ; $5a01: $46
    pop hl                                        ; $5a02: $e1
    inc l                                         ; $5a03: $2c
    adc [hl]                                      ; $5a04: $8e
    dec hl                                        ; $5a05: $2b
    cp c                                          ; $5a06: $b9
    adc a                                         ; $5a07: $8f
    ld a, [c]                                     ; $5a08: $f2
    ld hl, $006f                                  ; $5a09: $21 $6f $00
    cp l                                          ; $5a0c: $bd
    call z, Call_03c_7277                         ; $5a0d: $cc $77 $72
    sbc [hl]                                      ; $5a10: $9e
    xor e                                         ; $5a11: $ab
    ld d, b                                       ; $5a12: $50
    and $30                                       ; $5a13: $e6 $30
    ld b, a                                       ; $5a15: $47
    ld e, h                                       ; $5a16: $5c
    ld sp, hl                                     ; $5a17: $f9
    add l                                         ; $5a18: $85
    push hl                                       ; $5a19: $e5
    ld sp, $3afe                                  ; $5a1a: $31 $fe $3a
    rst $18                                       ; $5a1d: $df
    rst $28                                       ; $5a1e: $ef
    ld l, a                                       ; $5a1f: $6f
    nop                                           ; $5a20: $00
    ld a, l                                       ; $5a21: $7d
    di                                            ; $5a22: $f3
    ld e, [hl]                                    ; $5a23: $5e
    rst $30                                       ; $5a24: $f7
    ld [hl], e                                    ; $5a25: $73
    cp b                                          ; $5a26: $b8
    ld a, [bc]                                    ; $5a27: $0a
    push bc                                       ; $5a28: $c5
    cp a                                          ; $5a29: $bf
    rst $28                                       ; $5a2a: $ef
    add hl, bc                                    ; $5a2b: $09
    nop                                           ; $5a2c: $00
    ld a, l                                       ; $5a2d: $7d
    ld [hl], e                                    ; $5a2e: $73
    ld e, d                                       ; $5a2f: $5a
    ld [hl], l                                    ; $5a30: $75
    ld hl, sp-$02                                 ; $5a31: $f8 $fe
    rst $20                                       ; $5a33: $e7
    add hl, sp                                    ; $5a34: $39
    ld l, d                                       ; $5a35: $6a
    sbc $00                                       ; $5a36: $de $00
    ld a, l                                       ; $5a38: $7d
    di                                            ; $5a39: $f3
    ld e, [hl]                                    ; $5a3a: $5e
    rst $30                                       ; $5a3b: $f7
    ld [hl], e                                    ; $5a3c: $73
    ret c                                         ; $5a3d: $d8

    and c                                         ; $5a3e: $a1
    ret c                                         ; $5a3f: $d8

    db $fc                                        ; $5a40: $fc
    add d                                         ; $5a41: $82
    rst $18                                       ; $5a42: $df
    and c                                         ; $5a43: $a1
    sub h                                         ; $5a44: $94
    ld e, h                                       ; $5a45: $5c
    and l                                         ; $5a46: $a5
    ld l, c                                       ; $5a47: $69
    call z, Call_000_009e                         ; $5a48: $cc $9e $00
    ld a, l                                       ; $5a4b: $7d
    ld [hl], e                                    ; $5a4c: $73
    ld b, c                                       ; $5a4d: $41
    xor [hl]                                      ; $5a4e: $ae
    jp nc, $e634                                  ; $5a4f: $d2 $34 $e6

    or b                                          ; $5a52: $b0
    ld hl, $0074                                  ; $5a53: $21 $74 $00
    adc $24                                       ; $5a56: $ce $24
    or d                                          ; $5a58: $b2
    ld e, a                                       ; $5a59: $5f
    sbc $00                                       ; $5a5a: $de $00
    db $dd                                        ; $5a5c: $dd
    db $ed                                        ; $5a5d: $ed
    inc [hl]                                      ; $5a5e: $34
    halt                                          ; $5a5f: $76
    jp hl                                         ; $5a60: $e9


    ld a, [hl-]                                   ; $5a61: $3a
    adc l                                         ; $5a62: $8d
    ld [$fd9f], sp                                ; $5a63: $08 $9f $fd
    adc e                                         ; $5a66: $8b
    ld e, b                                       ; $5a67: $58
    ld a, e                                       ; $5a68: $7b
    ld [bc], a                                    ; $5a69: $02
    db $dd                                        ; $5a6a: $dd
    db $ec                                        ; $5a6b: $ec
    cp a                                          ; $5a6c: $bf
    rst $38                                       ; $5a6d: $ff
    and d                                         ; $5a6e: $a2
    db $d3                                        ; $5a6f: $d3

jr_03c_5a70:
    ld d, c                                       ; $5a70: $51
    db $e3                                        ; $5a71: $e3
    ld bc, $f361                                  ; $5a72: $01 $61 $f3
    xor a                                         ; $5a75: $af
    dec bc                                        ; $5a76: $0b
    add l                                         ; $5a77: $85
    sub b                                         ; $5a78: $90
    jp $baf8                                      ; $5a79: $c3 $f8 $ba


    ld e, a                                       ; $5a7c: $5f
    ld b, [hl]                                    ; $5a7d: $46
    ld sp, hl                                     ; $5a7e: $f9
    add l                                         ; $5a7f: $85
    inc d                                         ; $5a80: $14
    ld c, l                                       ; $5a81: $4d
    db $fc                                        ; $5a82: $fc
    ld e, $00                                     ; $5a83: $1e $00
    ld a, l                                       ; $5a85: $7d
    jp c, Jump_000_1bbb                           ; $5a86: $da $bb $1b

    nop                                           ; $5a89: $00
    ld a, l                                       ; $5a8a: $7d
    inc de                                        ; $5a8b: $13
    cp [hl]                                       ; $5a8c: $be
    sub b                                         ; $5a8d: $90
    sub d                                         ; $5a8e: $92
    xor e                                         ; $5a8f: $ab
    add hl, sp                                    ; $5a90: $39
    ret z                                         ; $5a91: $c8

    ld l, c                                       ; $5a92: $69
    ld a, h                                       ; $5a93: $7c
    or c                                          ; $5a94: $b1
    ld sp, hl                                     ; $5a95: $f9
    push de                                       ; $5a96: $d5
    adc $04                                       ; $5a97: $ce $04
    di                                            ; $5a99: $f3
    ld b, $7d                                     ; $5a9a: $06 $7d
    ld [hl], e                                    ; $5a9c: $73
    sub c                                         ; $5a9d: $91
    ld [$62e5], sp                                ; $5a9e: $08 $e5 $62

jr_03c_5aa1:
    ld h, e                                       ; $5aa1: $63
    dec e                                         ; $5aa2: $1d
    and $c2                                       ; $5aa3: $e6 $c2
    sub a                                         ; $5aa5: $97
    rst $18                                       ; $5aa6: $df
    ei                                            ; $5aa7: $fb
    ld d, [hl]                                    ; $5aa8: $56
    ld l, c                                       ; $5aa9: $69
    ld hl, sp-$28                                 ; $5aaa: $f8 $d8
    rst $38                                       ; $5aac: $ff
    dec d                                         ; $5aad: $15
    cp [hl]                                       ; $5aae: $be
    add b                                         ; $5aaf: $80
    adc h                                         ; $5ab0: $8c
    sub c                                         ; $5ab1: $91
    ld [hl], d                                    ; $5ab2: $72
    inc bc                                        ; $5ab3: $03
    ld bc, $e842                                  ; $5ab4: $01 $42 $e8
    nop                                           ; $5ab7: $00
    adc h                                         ; $5ab8: $8c
    ld e, a                                       ; $5ab9: $5f
    cp b                                          ; $5aba: $b8
    sbc a                                         ; $5abb: $9f
    db $fd                                        ; $5abc: $fd
    ld b, e                                       ; $5abd: $43
    jp nc, $bdfc                                  ; $5abe: $d2 $fc $bd

    ld b, b                                       ; $5ac1: $40
    ld c, [hl]                                    ; $5ac2: $4e
    cp a                                          ; $5ac3: $bf
    jp $d795                                      ; $5ac4: $c3 $95 $d7


    dec [hl]                                      ; $5ac7: $35
    rst $38                                       ; $5ac8: $ff
    ld a, [hl-]                                   ; $5ac9: $3a
    db $eb                                        ; $5aca: $eb
    ld a, [hl+]                                   ; $5acb: $2a
    call nz, Call_03c_5fe6                        ; $5acc: $c4 $e6 $5f
    rst $20                                       ; $5acf: $e7
    cp c                                          ; $5ad0: $b9
    sub d                                         ; $5ad1: $92
    cp d                                          ; $5ad2: $ba
    rst $00                                       ; $5ad3: $c7
    ld d, [hl]                                    ; $5ad4: $56
    ld a, a                                       ; $5ad5: $7f
    and c                                         ; $5ad6: $a1
    adc [hl]                                      ; $5ad7: $8e
    jr c, jr_03c_5a70                             ; $5ad8: $38 $96

    push af                                       ; $5ada: $f5
    ld a, e                                       ; $5adb: $7b
    pop af                                        ; $5adc: $f1
    ld [hl], $38                                  ; $5add: $36 $38
    rst $08                                       ; $5adf: $cf
    ld [hl-], a                                   ; $5ae0: $32
    sub e                                         ; $5ae1: $93
    add l                                         ; $5ae2: $85
    ld d, b                                       ; $5ae3: $50
    rr e                                          ; $5ae4: $cb $1b
    nop                                           ; $5ae6: $00
    sub a                                         ; $5ae7: $97
    cp b                                          ; $5ae8: $b8
    xor d                                         ; $5ae9: $aa
    add e                                         ; $5aea: $83
    db $e4                                        ; $5aeb: $e4
    ld c, l                                       ; $5aec: $4d
    ld c, e                                       ; $5aed: $4b
    call Call_000_1c59                            ; $5aee: $cd $59 $1c
    ld d, a                                       ; $5af1: $57
    ld [hl], d                                    ; $5af2: $72
    and c                                         ; $5af3: $a1
    db $10                                        ; $5af4: $10
    ld [hl], d                                    ; $5af5: $72
    jr jr_03c_5aa1                                ; $5af6: $18 $a9

    rst $30                                       ; $5af8: $f7
    ld a, d                                       ; $5af9: $7a
    sbc c                                         ; $5afa: $99
    rst $28                                       ; $5afb: $ef
    db $fc                                        ; $5afc: $fc
    inc a                                         ; $5afd: $3c
    and a                                         ; $5afe: $a7
    ld e, a                                       ; $5aff: $5f
    ld [c], a                                     ; $5b00: $e2
    rr h                                          ; $5b01: $cb $1c
    and $c2                                       ; $5b03: $e6 $c2
    sub h                                         ; $5b05: $94
    cp l                                          ; $5b06: $bd
    push bc                                       ; $5b07: $c5
    reti                                          ; $5b08: $d9


    call c, $b5eb                                 ; $5b09: $dc $eb $b5
    ld [hl], e                                    ; $5b0c: $73
    rra                                           ; $5b0d: $1f
    and c                                         ; $5b0e: $a1
    dec d                                         ; $5b0f: $15
    ld c, $72                                     ; $5b10: $0e $72
    ld a, [de]                                    ; $5b12: $1a
    ld a, a                                       ; $5b13: $7f

Jump_03c_5b14:
    and $fb                                       ; $5b14: $e6 $fb
    cp a                                          ; $5b16: $bf
    call z, $b224                                 ; $5b17: $cc $24 $b2
    ld e, a                                       ; $5b1a: $5f
    adc e                                         ; $5b1b: $8b
    xor c                                         ; $5b1c: $a9
    ldh a, [$85]                                  ; $5b1d: $f0 $85
    sub h                                         ; $5b1f: $94
    inc e                                         ; $5b20: $1c
    dec [hl]                                      ; $5b21: $35
    cp $2a                                        ; $5b22: $fe $2a
    db $ec                                        ; $5b24: $ec
    cp a                                          ; $5b25: $bf
    sub d                                         ; $5b26: $92
    di                                            ; $5b27: $f3
    db $ec                                        ; $5b28: $ec
    ld h, a                                       ; $5b29: $67
    cp e                                          ; $5b2a: $bb
    ldh a, [$f5]                                  ; $5b2b: $f0 $f5
    push hl                                       ; $5b2d: $e5
    ld b, $76                                     ; $5b2e: $06 $76
    ld a, [hl-]                                   ; $5b30: $3a
    adc e                                         ; $5b31: $8b
    db $e3                                        ; $5b32: $e3
    jr nc, jr_03c_5b7c                            ; $5b33: $30 $47

    ld sp, hl                                     ; $5b35: $f9
    add hl, sp                                    ; $5b36: $39

jr_03c_5b37:
    sbc h                                         ; $5b37: $9c
    ld c, c                                       ; $5b38: $49
    ld h, h                                       ; $5b39: $64
    cp a                                          ; $5b3a: $bf
    sbc h                                         ; $5b3b: $9c
    rst $20                                       ; $5b3c: $e7
    ld a, [hl+]                                   ; $5b3d: $2a
    inc d                                         ; $5b3e: $14
    rst $38                                       ; $5b3f: $ff
    ld e, $be                                     ; $5b40: $1e $be
    ld l, [hl]                                    ; $5b42: $6e
    sub h                                         ; $5b43: $94
    sbc a                                         ; $5b44: $9f
    jp $855f                                      ; $5b45: $c3 $5f $85


    push hl                                       ; $5b48: $e5
    ld b, a                                       ; $5b49: $47
    inc [hl]                                      ; $5b4a: $34
    ld b, h                                       ; $5b4b: $44
    rst $18                                       ; $5b4c: $df
    db $fc                                        ; $5b4d: $fc
    rst $08                                       ; $5b4e: $cf
    ld [c], a                                     ; $5b4f: $e2
    jr c, jr_03c_5b37                             ; $5b50: $38 $e5

    add d                                         ; $5b52: $82
    cp a                                          ; $5b53: $bf
    jr z, @-$6f                                   ; $5b54: $28 $8f

    ld e, d                                       ; $5b56: $5a
    sbc l                                         ; $5b57: $9d
    ld d, d                                       ; $5b58: $52
    cp a                                          ; $5b59: $bf
    rst $08                                       ; $5b5a: $cf
    ld e, $00                                     ; $5b5b: $1e $00
    halt                                          ; $5b5d: $76
    sbc d                                         ; $5b5e: $9a
    inc hl                                        ; $5b5f: $23
    xor h                                         ; $5b60: $ac
    or b                                          ; $5b61: $b0
    inc [hl]                                      ; $5b62: $34
    di                                            ; $5b63: $f3
    ld h, e                                       ; $5b64: $63
    ld e, c                                       ; $5b65: $59
    sub [hl]                                      ; $5b66: $96
    sub h                                         ; $5b67: $94
    db $fd                                        ; $5b68: $fd
    db $c2, $c6, $32                              ; $5b69: $c2 $c6 $32

    adc e                                         ; $5b6c: $8b
    ld h, e                                       ; $5b6d: $63
    db $fd                                        ; $5b6e: $fd
    cp $6f                                        ; $5b6f: $fe $6f
    nop                                           ; $5b71: $00
    db $dd                                        ; $5b72: $dd
    rst $08                                       ; $5b73: $cf
    or c                                          ; $5b74: $b1
    ld b, l                                       ; $5b75: $45
    rst $08                                       ; $5b76: $cf
    dec b                                         ; $5b77: $05
    ld a, a                                       ; $5b78: $7f
    call $4f67                                    ; $5b79: $cd $67 $4f

jr_03c_5b7c:
    nop                                           ; $5b7c: $00
    or $6f                                        ; $5b7d: $f6 $6f
    jp c, $a4af                                   ; $5b7f: $da $af $a4

    xor [hl]                                      ; $5b82: $ae
    ld h, c                                       ; $5b83: $61
    add l                                         ; $5b84: $85
    add d                                         ; $5b85: $82
    rst $28                                       ; $5b86: $ef
    add hl, hl                                    ; $5b87: $29
    xor c                                         ; $5b88: $a9
    rst $30                                       ; $5b89: $f7
    ld [bc], a                                    ; $5b8a: $02
    inc h                                         ; $5b8b: $24
    dec sp                                        ; $5b8c: $3b
    rst $18                                       ; $5b8d: $df
    add hl, hl                                    ; $5b8e: $29
    xor h                                         ; $5b8f: $ac
    adc c                                         ; $5b90: $89
    sub c                                         ; $5b91: $91
    inc hl                                        ; $5b92: $23
    xor [hl]                                      ; $5b93: $ae
    db $e3                                        ; $5b94: $e3
    call nc, $3cfc                                ; $5b95: $d4 $fc $3c
    ld d, a                                       ; $5b98: $57
    and c                                         ; $5b99: $a1
    ld a, b                                       ; $5b9a: $78
    daa                                           ; $5b9b: $27
    xor a                                         ; $5b9c: $af
    di                                            ; $5b9d: $f3
    sbc h                                         ; $5b9e: $9c
    and c                                         ; $5b9f: $a1
    db $fc                                        ; $5ba0: $fc
    dec c                                         ; $5ba1: $0d
    nop                                           ; $5ba2: $00
    add c                                         ; $5ba3: $81
    sub h                                         ; $5ba4: $94
    xor [hl]                                      ; $5ba5: $ae
    push de                                       ; $5ba6: $d5
    db $ec                                        ; $5ba7: $ec
    sub a                                         ; $5ba8: $97
    ld [hl-], a                                   ; $5ba9: $32
    adc e                                         ; $5baa: $8b
    db $e3                                        ; $5bab: $e3
    ld [hl+], a                                   ; $5bac: $22
    rst $20                                       ; $5bad: $e7
    xor c                                         ; $5bae: $a9
    dec bc                                        ; $5baf: $0b
    and l                                         ; $5bb0: $a5
    jp hl                                         ; $5bb1: $e9


    rst $08                                       ; $5bb2: $cf
    cp d                                          ; $5bb3: $ba
    sub d                                         ; $5bb4: $92
    inc hl                                        ; $5bb5: $23
    ld a, [de]                                    ; $5bb6: $1a
    ld b, a                                       ; $5bb7: $47
    adc h                                         ; $5bb8: $8c
    ld b, d                                       ; $5bb9: $42
    add l                                         ; $5bba: $85
    rst $08                                       ; $5bbb: $cf
    cp $45                                        ; $5bbc: $fe $45
    xor h                                         ; $5bbe: $ac
    rst $30                                       ; $5bbf: $f7
    ld a, [$6ae6]                                 ; $5bc0: $fa $e6 $6a
    ld c, $72                                     ; $5bc3: $0e $72
    ld a, [de]                                    ; $5bc5: $1a
    ld e, a                                       ; $5bc6: $5f
    ld l, h                                       ; $5bc7: $6c
    ld a, [hl]                                    ; $5bc8: $7e
    ld d, $c7                                     ; $5bc9: $16 $c7
    add l                                         ; $5bcb: $85
    sub d                                         ; $5bcc: $92
    sub l                                         ; $5bcd: $95
    inc [hl]                                      ; $5bce: $34
    cpl                                           ; $5bcf: $2f
    ccf                                           ; $5bd0: $3f
    add a                                         ; $5bd1: $87
    ld l, e                                       ; $5bd2: $6b
    ld l, b                                       ; $5bd3: $68
    adc b                                         ; $5bd4: $88
    cp [hl]                                       ; $5bd5: $be
    push hl                                       ; $5bd6: $e5
    adc b                                         ; $5bd7: $88
    ld h, e                                       ; $5bd8: $63
    ld e, c                                       ; $5bd9: $59
    daa                                           ; $5bda: $27
    push de                                       ; $5bdb: $d5
    ld [c], a                                     ; $5bdc: $e2
    ld a, b                                       ; $5bdd: $78
    inc bc                                        ; $5bde: $03
    ld a, l                                       ; $5bdf: $7d
    ld [$3e1a], a                                 ; $5be0: $ea $1a $3e
    adc e                                         ; $5be3: $8b
    ld l, e                                       ; $5be4: $6b
    db $fd                                        ; $5be5: $fd
    cp e                                          ; $5be6: $bb
    ld [hl], h                                    ; $5be7: $74
    sub h                                         ; $5be8: $94
    ld e, a                                       ; $5be9: $5f
    ld sp, hl                                     ; $5bea: $f9
    sbc c                                         ; $5beb: $99
    call nc, Call_03c_785f                        ; $5bec: $d4 $5f $78
    add b                                         ; $5bef: $80
    add h                                         ; $5bf0: $84
    ld c, [hl]                                    ; $5bf1: $4e
    ld a, [hl]                                    ; $5bf2: $7e
    ld d, $c7                                     ; $5bf3: $16 $c7
    ld d, l                                       ; $5bf5: $55
    jp c, $8a4c                                   ; $5bf6: $da $4c $8a

    inc [hl]                                      ; $5bf9: $34
    and d                                         ; $5bfa: $a2
    rst $08                                       ; $5bfb: $cf
    add l                                         ; $5bfc: $85
    add hl, hl                                    ; $5bfd: $29
    ld a, e                                       ; $5bfe: $7b
    adc e                                         ; $5bff: $8b
    or e                                          ; $5c00: $b3
    cp c                                          ; $5c01: $b9
    rst $10                                       ; $5c02: $d7
    db $dd                                        ; $5c03: $dd
    ld c, [hl]                                    ; $5c04: $4e
    rla                                           ; $5c05: $17
    sbc l                                         ; $5c06: $9d
    push af                                       ; $5c07: $f5
    ld a, e                                       ; $5c08: $7b
    ld [bc], a                                    ; $5c09: $02
    ld a, l                                       ; $5c0a: $7d
    inc de                                        ; $5c0b: $13
    ld a, $ea                                     ; $5c0c: $3e $ea
    inc e                                         ; $5c0e: $1c
    adc [hl]                                      ; $5c0f: $8e
    ld [hl+], a                                   ; $5c10: $22
    add hl, hl                                    ; $5c11: $29
    xor e                                         ; $5c12: $ab
    cp e                                          ; $5c13: $bb
    and b                                         ; $5c14: $a0
    ld h, [hl]                                    ; $5c15: $66
    ld [hl], d                                    ; $5c16: $72
    ld d, $c7                                     ; $5c17: $16 $c7
    sub l                                         ; $5c19: $95
    ld e, a                                       ; $5c1a: $5f
    jr z, jr_03c_5c76                             ; $5c1b: $28 $59

    ld c, l                                       ; $5c1d: $4d
    ld c, l                                       ; $5c1e: $4d
    ld sp, hl                                     ; $5c1f: $f9
    push af                                       ; $5c20: $f5
    ld sp, $25e7                                  ; $5c21: $31 $e7 $25
    ld a, $f4                                     ; $5c24: $3e $f4
    and l                                         ; $5c26: $a5
    xor h                                         ; $5c27: $ac
    and $82                                       ; $5c28: $e6 $82
    cp a                                          ; $5c2a: $bf
    ld a, [$bfd1]                                 ; $5c2b: $fa $d1 $bf
    rst $08                                       ; $5c2e: $cf
    ld a, l                                       ; $5c2f: $7d
    sub h                                         ; $5c30: $94
    rrca                                          ; $5c31: $0f
    ld e, a                                       ; $5c32: $5f
    ld l, [hl]                                    ; $5c33: $6e
    nop                                           ; $5c34: $00
    ld h, a                                       ; $5c35: $67
    scf                                           ; $5c36: $37
    ld [hl+], a                                   ; $5c37: $22
    ld a, h                                       ; $5c38: $7c

Call_03c_5c39:
    and c                                         ; $5c39: $a1
    and e                                         ; $5c3a: $a3
    xor [hl]                                      ; $5c3b: $ae
    db $e3                                        ; $5c3c: $e3
    adc b                                         ; $5c3d: $88
    ccf                                           ; $5c3e: $3f
    ld [hl], l                                    ; $5c3f: $75
    sub h                                         ; $5c40: $94
    ret z                                         ; $5c41: $c8

    ld a, e                                       ; $5c42: $7b
    sub a                                         ; $5c43: $97
    ld [hl], c                                    ; $5c44: $71
    ld l, a                                       ; $5c45: $6f
    ld [hl], l                                    ; $5c46: $75
    cp $c5                                        ; $5c47: $fe $c5
    and $e1                                       ; $5c49: $e6 $e1
    dec bc                                        ; $5c4b: $0b
    add hl, hl                                    ; $5c4c: $29
    add hl, sp                                    ; $5c4d: $39
    ld l, d                                       ; $5c4e: $6a
    ld c, h                                       ; $5c4f: $4c
    db $eb                                        ; $5c50: $eb
    jp nc, $f0b8                                  ; $5c51: $d2 $b8 $f0

    ld a, l                                       ; $5c54: $7d
    adc $67                                       ; $5c55: $ce $67
    db $fd                                        ; $5c57: $fd
    add sp, $73                                   ; $5c58: $e8 $73
    cpl                                           ; $5c5a: $2f
    sub d                                         ; $5c5b: $92
    db $fd                                        ; $5c5c: $fd
    and a                                         ; $5c5d: $a7
    ld e, a                                       ; $5c5e: $5f
    ld a, [hl+]                                   ; $5c5f: $2a
    rst $18                                       ; $5c60: $df
    adc a                                         ; $5c61: $8f
    scf                                           ; $5c62: $37
    nop                                           ; $5c63: $00
    db $dd                                        ; $5c64: $dd
    adc $61                                       ; $5c65: $ce $61
    add a                                         ; $5c67: $87
    ld d, e                                       ; $5c68: $53
    jp z, $d9a8                                   ; $5c69: $ca $a8 $d9

    inc bc                                        ; $5c6c: $03
    nop                                           ; $5c6d: $00
    ld d, a                                       ; $5c6e: $57
    rst $38                                       ; $5c6f: $ff
    xor b                                         ; $5c70: $a8
    or c                                          ; $5c71: $b1
    dec bc                                        ; $5c72: $0b
    ld a, $fb                                     ; $5c73: $3e $fb
    rla                                           ; $5c75: $17

jr_03c_5c76:
    or c                                          ; $5c76: $b1
    jp nz, Jump_03c_6957                          ; $5c77: $c2 $57 $69

    sub l                                         ; $5c7a: $95
    ld d, $73                                     ; $5c7b: $16 $73
    sub $99                                       ; $5c7d: $d6 $99
    inc l                                         ; $5c7f: $2c
    ld a, h                                       ; $5c80: $7c
    db $f4                                        ; $5c81: $f4
    ld a, c                                       ; $5c82: $79
    inc bc                                        ; $5c83: $03
    halt                                          ; $5c84: $76
    ld a, [de]                                    ; $5c85: $1a
    add hl, sp                                    ; $5c86: $39
    ld [$7658], a                                 ; $5c87: $ea $58 $76
    nop                                           ; $5c8a: $00
    ld [hl], $93                                  ; $5c8b: $36 $93
    inc sp                                        ; $5c8d: $33
    adc c                                         ; $5c8e: $89
    db $ec                                        ; $5c8f: $ec
    sub a                                         ; $5c90: $97
    dec bc                                        ; $5c91: $0b
    rrca                                          ; $5c92: $0f
    sub b                                         ; $5c93: $90
    ret nc                                        ; $5c94: $d0

    ret                                           ; $5c95: $c9


    rst $08                                       ; $5c96: $cf
    ld [c], a                                     ; $5c97: $e2
    cp b                                          ; $5c98: $b8
    jr nz, @+$19                                  ; $5c99: $20 $17

    and [hl]                                      ; $5c9b: $a6
    ld l, a                                       ; $5c9c: $6f
    ld a, $47                                     ; $5c9d: $3e $47
    inc [hl]                                      ; $5c9f: $34
    adc c                                         ; $5ca0: $89
    ld d, c                                       ; $5ca1: $51
    ld e, [hl]                                    ; $5ca2: $5e
    ld l, [hl]                                    ; $5ca3: $6e
    nop                                           ; $5ca4: $00
    db $dd                                        ; $5ca5: $dd

Jump_03c_5ca6:
    adc $76                                       ; $5ca6: $ce $76
    call nz, $f945                                ; $5ca8: $c4 $45 $f9
    adc $f7                                       ; $5cab: $ce $f7
    ld c, e                                       ; $5cad: $4b
    ld hl, sp-$14                                 ; $5cae: $f8 $ec
    ld e, a                                       ; $5cb0: $5f
    call nz, $63da                                ; $5cb1: $c4 $da $63
    rla                                           ; $5cb4: $17
    ld [hl], c                                    ; $5cb5: $71
    ld h, $d1                                     ; $5cb6: $26 $d1
    ret nc                                        ; $5cb8: $d0

    rst $20                                       ; $5cb9: $e7
    adc [hl]                                      ; $5cba: $8e
    dec a                                         ; $5cbb: $3d
    ld h, c                                       ; $5cbc: $61
    and c                                         ; $5cbd: $a1
    jp $ba98                                      ; $5cbe: $c3 $98 $ba


    rst $18                                       ; $5cc1: $df
    ld a, c                                       ; $5cc2: $79
    ld h, d                                       ; $5cc3: $62
    xor l                                         ; $5cc4: $ad
    xor [hl]                                      ; $5cc5: $ae
    ld l, [hl]                                    ; $5cc6: $6e
    add sp, $53                                   ; $5cc7: $e8 $53
    ld h, [hl]                                    ; $5cc9: $66
    dec e                                         ; $5cca: $1d
    pop de                                        ; $5ccb: $d1
    inc h                                         ; $5ccc: $24
    ld b, [hl]                                    ; $5ccd: $46
    ld a, c                                       ; $5cce: $79
    jp hl                                         ; $5ccf: $e9


    jp nc, Jump_000_1c39                          ; $5cd0: $d2 $39 $1c

    ld a, [hl-]                                   ; $5cd3: $3a
    ld d, [hl]                                    ; $5cd4: $56

Call_03c_5cd5:
    ld [hl], d                                    ; $5cd5: $72
    ld b, c                                       ; $5cd6: $41
    sbc d                                         ; $5cd7: $9a
    ld h, b                                       ; $5cd8: $60
    db $eb                                        ; $5cd9: $eb
    sbc a                                         ; $5cda: $9f
    adc e                                         ; $5cdb: $8b
    ld a, [c]                                     ; $5cdc: $f2
    xor b                                         ; $5cdd: $a8
    ld b, [hl]                                    ; $5cde: $46
    ld e, d                                       ; $5cdf: $5a
    call z, $1711                                 ; $5ce0: $cc $11 $17
    db $dd                                        ; $5ce3: $dd
    ld c, d                                       ; $5ce4: $4a
    db $eb                                        ; $5ce5: $eb
    ld c, b                                       ; $5ce6: $48
    adc $73                                       ; $5ce7: $ce $73
    ld b, h                                       ; $5ce9: $44
    di                                            ; $5cea: $f3
    jr @-$3f                                      ; $5ceb: $18 $bf

    ld l, [hl]                                    ; $5ced: $6e
    call nz, Call_03c_7a98                        ; $5cee: $c4 $98 $7a
    inc bc                                        ; $5cf1: $03
    db $dd                                        ; $5cf2: $dd
    cpl                                           ; $5cf3: $2f
    ld l, e                                       ; $5cf4: $6b
    ld b, h                                       ; $5cf5: $44
    ld [$6658], a                                 ; $5cf6: $ea $58 $66
    ld [de], a                                    ; $5cf9: $12
    reti                                          ; $5cfa: $d9


Jump_03c_5cfb:
    cpl                                           ; $5cfb: $2f
    pop hl                                        ; $5cfc: $e1
    or e                                          ; $5cfd: $b3
    ld a, a                                       ; $5cfe: $7f
    ld de, $4f6b                                  ; $5cff: $11 $6b $4f
    nop                                           ; $5d02: $00
    ld a, l                                       ; $5d03: $7d
    inc de                                        ; $5d04: $13
    ld a, $cc                                     ; $5d05: $3e $cc
    dec b                                         ; $5d07: $05
    cp c                                          ; $5d08: $b9
    jr nc, jr_03c_5d88                            ; $5d09: $30 $7d

    di                                            ; $5d0b: $f3
    add hl, sp                                    ; $5d0c: $39
    and d                                         ; $5d0d: $a2
    ld c, c                                       ; $5d0e: $49
    adc h                                         ; $5d0f: $8c
    ld a, [c]                                     ; $5d10: $f2
    ld d, d                                       ; $5d11: $52
    ld a, [c]                                     ; $5d12: $f2
    ld b, $67                                     ; $5d13: $06 $67
    dec sp                                        ; $5d15: $3b
    ld h, d                                       ; $5d16: $62
    jp nz, $0da7                                  ; $5d17: $c2 $a7 $0d

    ld [hl], d                                    ; $5d1a: $72
    ld e, h                                       ; $5d1b: $5c
    jp $8c48                                      ; $5d1c: $c3 $48 $8c


    ld e, l                                       ; $5d1f: $5d
    add sp, -$4d                                  ; $5d20: $e8 $b3
    db $e4                                        ; $5d22: $e4
    cp l                                          ; $5d23: $bd
    ld l, [hl]                                    ; $5d24: $6e

jr_03c_5d25:
    ld a, l                                       ; $5d25: $7d
    ld [hl], e                                    ; $5d26: $73
    ld d, $d7                                     ; $5d27: $16 $d7
    jr z, jr_03c_5d64                             ; $5d29: $28 $39

    adc e                                         ; $5d2b: $8b
    db $e3                                        ; $5d2c: $e3
    ld b, d                                       ; $5d2d: $42
    ld hl, $5ffa                                  ; $5d2e: $21 $fa $5f
    or l                                          ; $5d31: $b5
    inc hl                                        ; $5d32: $23
    sub h                                         ; $5d33: $94
    ei                                            ; $5d34: $fb
    pop hl                                        ; $5d35: $e1
    ei                                            ; $5d36: $fb
    sbc a                                         ; $5d37: $9f
    push bc                                       ; $5d38: $c5
    ld [hl], c                                    ; $5d39: $71
    sbc [hl]                                      ; $5d3a: $9e
    sbc l                                         ; $5d3b: $9d
    xor a                                         ; $5d3c: $af
    ld d, e                                       ; $5d3d: $53
    ld d, a                                       ; $5d3e: $57
    cp [hl]                                       ; $5d3f: $be
    ld h, $c6                                     ; $5d40: $26 $c6
    sub a                                         ; $5d42: $97
    ld e, $00                                     ; $5d43: $1e $00
    db $dd                                        ; $5d45: $dd
    db $ed                                        ; $5d46: $ed
    ld e, a                                       ; $5d47: $5f
    ld b, a                                       ; $5d48: $47
    inc [hl]                                      ; $5d49: $34
    adc c                                         ; $5d4a: $89
    ld d, c                                       ; $5d4b: $51
    sbc $e7                                       ; $5d4c: $de $e7
    cp [hl]                                       ; $5d4e: $be
    call z, $b224                                 ; $5d4f: $cc $24 $b2
    ld e, a                                       ; $5d52: $5f
    adc [hl]                                      ; $5d53: $8e
    ld a, [de]                                    ; $5d54: $1a
    ld a, a                                       ; $5d55: $7f
    dec d                                         ; $5d56: $15
    or $87                                        ; $5d57: $f6 $87
    rst $08                                       ; $5d59: $cf

Call_03c_5d5a:
    cp $45                                        ; $5d5a: $fe $45
    xor h                                         ; $5d5c: $ac
    dec a                                         ; $5d5d: $3d
    ld bc, $137d                                  ; $5d5e: $01 $7d $13
    ld a, $6d                                     ; $5d61: $3e $6d
    sub b                                         ; $5d63: $90

jr_03c_5d64:
    db $e3                                        ; $5d64: $e3
    ld b, d                                       ; $5d65: $42
    adc d                                         ; $5d66: $8a
    ld l, a                                       ; $5d67: $6f
    ld a, $47                                     ; $5d68: $3e $47
    call c, $e817                                 ; $5d6a: $dc $17 $e8
    nop                                           ; $5d6d: $00
    sbc h                                         ; $5d6e: $9c
    or [hl]                                       ; $5d6f: $b6
    ret c                                         ; $5d70: $d8

    ld a, [c]                                     ; $5d71: $f2
    ld b, $e7                                     ; $5d72: $06 $e7
    or b                                          ; $5d74: $b0
    ld b, e                                       ; $5d75: $43
    dec e                                         ; $5d76: $1d

jr_03c_5d77:
    pop de                                        ; $5d77: $d1
    inc h                                         ; $5d78: $24
    ld b, [hl]                                    ; $5d79: $46
    ld a, c                                       ; $5d7a: $79
    add hl, hl                                    ; $5d7b: $29
    ld a, c                                       ; $5d7c: $79
    cpl                                           ; $5d7d: $2f
    jr nz, jr_03c_5de5                            ; $5d7e: $20 $65

    push de                                       ; $5d80: $d5
    ld e, a                                       ; $5d81: $5f
    ld c, c                                       ; $5d82: $49
    add c                                         ; $5d83: $81
    rrca                                          ; $5d84: $0f
    ld [hl], e                                    ; $5d85: $73
    dec [hl]                                      ; $5d86: $35
    rst $20                                       ; $5d87: $e7

jr_03c_5d88:
    ld l, c                                       ; $5d88: $69
    jr jr_03c_5d25                                ; $5d89: $18 $9a

    sub [hl]                                      ; $5d8b: $96
    ld c, b                                       ; $5d8c: $48
    ld e, l                                       ; $5d8d: $5d
    db $dd                                        ; $5d8e: $dd
    and l                                         ; $5d8f: $a5
    scf                                           ; $5d90: $37
    nop                                           ; $5d91: $00
    ld a, l                                       ; $5d92: $7d
    ld [hl], e                                    ; $5d93: $73
    pop bc                                        ; $5d94: $c1
    rst $10                                       ; $5d95: $d7
    ld b, l                                       ; $5d96: $45
    ld c, d                                       ; $5d97: $4a
    db $dd                                        ; $5d98: $dd
    ldh a, [$7d]                                  ; $5d99: $f0 $7d
    ld l, $ba                                     ; $5d9b: $2e $ba
    push bc                                       ; $5d9d: $c5
    rla                                           ; $5d9e: $17
    cp $bd                                        ; $5d9f: $fe $bd
    adc e                                         ; $5da1: $8b
    cp b                                          ; $5da2: $b8
    ld c, d                                       ; $5da3: $4a
    ld e, d                                       ; $5da4: $5a
    rst $30                                       ; $5da5: $f7
    or e                                          ; $5da6: $b3
    cp b                                          ; $5da7: $b8
    ld d, $5f                                     ; $5da8: $16 $5f
    and $70                                       ; $5daa: $e6 $70
    and c                                         ; $5dac: $a1
    jp $fb98                                      ; $5dad: $c3 $98 $fb


    sbc l                                         ; $5db0: $9d
    daa                                           ; $5db1: $27
    sub $ea                                       ; $5db2: $d6 $ea
    ld [$3e86], a                                 ; $5db4: $ea $86 $3e
    push hl                                       ; $5db7: $e5
    ld b, $f7                                     ; $5db8: $06 $f7
    ld a, l                                       ; $5dba: $7d
    sub a                                         ; $5dbb: $97
    ld e, a                                       ; $5dbc: $5f
    sbc b                                         ; $5dbd: $98
    ld [hl], l                                    ; $5dbe: $75
    ld hl, sp-$5d                                 ; $5dbf: $f8 $a3
    ld c, c                                       ; $5dc1: $49
    or h                                          ; $5dc2: $b4
    xor l                                         ; $5dc3: $ad
    sbc e                                         ; $5dc4: $9b
    ld sp, hl                                     ; $5dc5: $f9
    ld a, c                                       ; $5dc6: $79
    sub [hl]                                      ; $5dc7: $96
    ld l, c                                       ; $5dc8: $69
    add e                                         ; $5dc9: $83
    ld c, d                                       ; $5dca: $4a
    xor $aa                                       ; $5dcb: $ee $aa
    di                                            ; $5dcd: $f3
    xor a                                         ; $5dce: $af
    jr jr_03c_5e06                                ; $5dcf: $18 $35

    ld a, [hl]                                    ; $5dd1: $7e
    add hl, hl                                    ; $5dd2: $29
    or [hl]                                       ; $5dd3: $b6
    adc e                                         ; $5dd4: $8b

Jump_03c_5dd5:
    ld a, [c]                                     ; $5dd5: $f2
    cp d                                          ; $5dd6: $ba
    ld a, [c]                                     ; $5dd7: $f2
    cp e                                          ; $5dd8: $bb
    add d                                         ; $5dd9: $82
    jr jr_03c_5d77                                ; $5dda: $18 $9b

    sbc d                                         ; $5ddc: $9a
    sbc a                                         ; $5ddd: $9f
    rst $20                                       ; $5dde: $e7
    ld l, $f8                                     ; $5ddf: $2e $f8
    adc [hl]                                      ; $5de1: $8e
    dec l                                         ; $5de2: $2d
    adc $73                                       ; $5de3: $ce $73

jr_03c_5de5:
    rst $00                                       ; $5de5: $c7
    inc e                                         ; $5de6: $1c
    ld [hl], a                                    ; $5de7: $77
    jp nc, $f7c9                                  ; $5de8: $d2 $c9 $f7

    ld a, l                                       ; $5deb: $7d
    inc bc                                        ; $5dec: $03
    db $dd                                        ; $5ded: $dd
    db $ec                                        ; $5dee: $ec
    ld e, a                                       ; $5def: $5f
    call nz, Call_03c_5f0a                        ; $5df0: $c4 $0a $5f
    call Call_03c_5f05                            ; $5df3: $cd $05 $5f
    rst $30                                       ; $5df6: $f7
    ld [$be34], a                                 ; $5df7: $ea $34 $be
    rst $08                                       ; $5dfa: $cf
    ld e, $0b                                     ; $5dfb: $1e $0b
    and b                                         ; $5dfd: $a0
    db $e4                                        ; $5dfe: $e4
    jr nc, jr_03c_5e18                            ; $5dff: $30 $17

    add hl, sp                                    ; $5e01: $39
    adc e                                         ; $5e02: $8b
    ld l, e                                       ; $5e03: $6b
    pop af                                        ; $5e04: $f1
    and l                                         ; $5e05: $a5

jr_03c_5e06:
    ld [$2eea], a                                 ; $5e06: $ea $ea $2e
    ld e, l                                       ; $5e09: $5d
    add sp, $30                                   ; $5e0a: $e8 $30
    and [hl]                                      ; $5e0c: $a6
    adc [hl]                                      ; $5e0d: $8e
    or b                                          ; $5e0e: $b0
    and d                                         ; $5e0f: $a2

jr_03c_5e10:
    inc a                                         ; $5e10: $3c
    ld a, h                                       ; $5e11: $7c
    ld l, d                                       ; $5e12: $6a
    ld e, e                                       ; $5e13: $5b
    ld [hl], d                                    ; $5e14: $72
    dec h                                         ; $5e15: $25
    ld [hl], l                                    ; $5e16: $75
    daa                                           ; $5e17: $27

jr_03c_5e18:
    call z, $da73                                 ; $5e18: $cc $73 $da
    ld e, b                                       ; $5e1b: $58
    add a                                         ; $5e1c: $87
    jp nz, $2985                                  ; $5e1d: $c2 $85 $29

    ld l, e                                       ; $5e20: $6b
    jr @+$2b                                      ; $5e21: $18 $29

    ld [c], a                                     ; $5e23: $e2
    ld [$c9b0], a                                 ; $5e24: $ea $b0 $c9
    dec c                                         ; $5e27: $0d
    nop                                           ; $5e28: $00
    halt                                          ; $5e29: $76
    ld a, [hl-]                                   ; $5e2a: $3a
    add a                                         ; $5e2b: $87
    dec bc                                        ; $5e2c: $0b
    ld h, $a6                                     ; $5e2d: $26 $a6
    call z, $b8e2                                 ; $5e2f: $cc $e2 $b8
    ret z                                         ; $5e32: $c8

    ld a, c                                       ; $5e33: $79
    or $a3                                        ; $5e34: $f6 $a3
    adc $3c                                       ; $5e36: $ce $3c
    ld h, l                                       ; $5e38: $65
    ld h, c                                       ; $5e39: $61
    jp z, $36ea                                   ; $5e3a: $ca $ea $36

    ld d, e                                       ; $5e3d: $53
    ld e, [hl]                                    ; $5e3e: $5e
    ld a, c                                       ; $5e3f: $79
    cpl                                           ; $5e40: $2f
    or b                                          ; $5e41: $b0
    ld de, $ae63                                  ; $5e42: $11 $63 $ae
    db $e4                                        ; $5e45: $e4
    inc a                                         ; $5e46: $3c
    ld d, a                                       ; $5e47: $57
    ld d, d                                       ; $5e48: $52
    ld [hl], a                                    ; $5e49: $77
    jp nz, $8742                                  ; $5e4a: $c2 $42 $87

jr_03c_5e4d:
    ld sp, $9e75                                  ; $5e4d: $31 $75 $9e
    inc sp                                        ; $5e50: $33
    xor a                                         ; $5e51: $af
    or c                                          ; $5e52: $b1
    ld b, c                                       ; $5e53: $41
    cp c                                          ; $5e54: $b9
    jr nc, @+$67                                  ; $5e55: $30 $65

    dec c                                         ; $5e57: $0d
    inc hl                                        ; $5e58: $23
    ld b, l                                       ; $5e59: $45
    ld e, h                                       ; $5e5a: $5c
    dec e                                         ; $5e5b: $1d
    ld [hl], $29                                  ; $5e5c: $36 $29
    ld a, a                                       ; $5e5e: $7f
    inc bc                                        ; $5e5f: $03
    ld d, a                                       ; $5e60: $57
    or h                                          ; $5e61: $b4
    add hl, sp                                    ; $5e62: $39
    sbc h                                         ; $5e63: $9c
    ld c, c                                       ; $5e64: $49
    ld h, h                                       ; $5e65: $64
    cp a                                          ; $5e66: $bf
    sbc h                                         ; $5e67: $9c
    ld a, [hl]                                    ; $5e68: $7e
    ld l, c                                       ; $5e69: $69
    or d                                          ; $5e6a: $b2
    jr nc, jr_03c_5ed2                            ; $5e6b: $30 $65

    push hl                                       ; $5e6d: $e5
    ld b, a                                       ; $5e6e: $47
    adc h                                         ; $5e6f: $8c
    ld a, [c]                                     ; $5e70: $f2
    cp $17                                        ; $5e71: $fe $17
    ld c, d                                       ; $5e73: $4a
    ld b, e                                       ; $5e74: $43
    db $d3                                        ; $5e75: $d3
    jp nz, $f02f                                  ; $5e76: $c2 $2f $f0

    add l                                         ; $5e79: $85
    sub h                                         ; $5e7a: $94
    ld e, h                                       ; $5e7b: $5c
    ld c, b                                       ; $5e7c: $48
    call nc, $b3aa                                ; $5e7d: $d4 $aa $b3
    jr c, jr_03c_5e10                             ; $5e80: $38 $8e

    ld a, [c]                                     ; $5e82: $f2
    xor e                                         ; $5e83: $ab
    cp e                                          ; $5e84: $bb
    ld [hl], h                                    ; $5e85: $74
    sbc l                                         ; $5e86: $9d
    ld b, [hl]                                    ; $5e87: $46
    sbc h                                         ; $5e88: $9c
    jp $f95f                                      ; $5e89: $c3 $5f $f9


    jp z, $ffa3                                   ; $5e8c: $ca $a3 $ff

    dec de                                        ; $5e8f: $1b
    nop                                           ; $5e90: $00
    ld a, l                                       ; $5e91: $7d
    inc de                                        ; $5e92: $13
    cp [hl]                                       ; $5e93: $be
    sub b                                         ; $5e94: $90
    sub d                                         ; $5e95: $92
    jp $905c                                      ; $5e96: $c3 $5c $90


    and e                                         ; $5e99: $a3
    add $f7                                       ; $5e9a: $c6 $f7
    cp c                                          ; $5e9c: $b9
    ld d, b                                       ; $5e9d: $50
    xor b                                         ; $5e9e: $a8
    pop af                                        ; $5e9f: $f1
    pop de                                        ; $5ea0: $d1
    rst $20                                       ; $5ea1: $e7
    ld a, $12                                     ; $5ea2: $3e $12
    ld c, l                                       ; $5ea4: $4d
    or e                                          ; $5ea5: $b3
    push bc                                       ; $5ea6: $c5
    dec de                                        ; $5ea7: $1b
    nop                                           ; $5ea8: $00
    ld a, l                                       ; $5ea9: $7d
    di                                            ; $5eaa: $f3
    ld e, [hl]                                    ; $5eab: $5e
    nop                                           ; $5eac: $00
    dec h                                         ; $5ead: $25
    and a                                         ; $5eae: $a7
    ld l, l                                       ; $5eaf: $6d
    pop bc                                        ; $5eb0: $c1
    or a                                          ; $5eb1: $b7
    adc $61                                       ; $5eb2: $ce $61
    adc [hl]                                      ; $5eb4: $8e
    jr c, jr_03c_5e4d                             ; $5eb5: $38 $96

    sbc c                                         ; $5eb7: $99
    inc l                                         ; $5eb8: $2c
    add h                                         ; $5eb9: $84
    ld e, d                                       ; $5eba: $5a
    jp nz, $84a7                                  ; $5ebb: $c2 $a7 $84

    sbc h                                         ; $5ebe: $9c
    db $e4                                        ; $5ebf: $e4
    inc l                                         ; $5ec0: $2c
    adc [hl]                                      ; $5ec1: $8e
    and e                                         ; $5ec2: $a3
    add $ae                                       ; $5ec3: $c6 $ae
    dec [hl]                                      ; $5ec5: $35
    adc h                                         ; $5ec6: $8c
    call nz, Call_000_3ef8                        ; $5ec7: $c4 $f8 $3e
    ld b, a                                       ; $5eca: $47
    inc [hl]                                      ; $5ecb: $34
    adc c                                         ; $5ecc: $89
    ld d, c                                       ; $5ecd: $51
    ld e, [hl]                                    ; $5ece: $5e
    ld d, [hl]                                    ; $5ecf: $56
    ld a, [hl]                                    ; $5ed0: $7e
    push de                                       ; $5ed1: $d5

jr_03c_5ed2:
    add hl, hl                                    ; $5ed2: $29
    push af                                       ; $5ed3: $f5
    rst $08                                       ; $5ed4: $cf
    ld [hl], e                                    ; $5ed5: $73
    ld a, [$c9a5]                                 ; $5ed6: $fa $a5 $c9
    dec c                                         ; $5ed9: $0d
    nop                                           ; $5eda: $00
    ld a, l                                       ; $5edb: $7d
    dec e                                         ; $5edc: $1d
    sbc d                                         ; $5edd: $9a
    ld e, a                                       ; $5ede: $5f
    sub b                                         ; $5edf: $90
    xor e                                         ; $5ee0: $ab
    inc [hl]                                      ; $5ee1: $34
    adc l                                         ; $5ee2: $8d
    add hl, sp                                    ; $5ee3: $39
    add a                                         ; $5ee4: $87
    inc sp                                        ; $5ee5: $33

Call_03c_5ee6:
    adc c                                         ; $5ee6: $89
    db $ec                                        ; $5ee7: $ec
    sub a                                         ; $5ee8: $97
    dec bc                                        ; $5ee9: $0b
    rrca                                          ; $5eea: $0f
    sub b                                         ; $5eeb: $90
    ret nc                                        ; $5eec: $d0

    ret                                           ; $5eed: $c9


    rst $18                                       ; $5eee: $df
    cp e                                          ; $5eef: $bb
    ld a, d                                       ; $5ef0: $7a
    call nc, $9290                                ; $5ef1: $d4 $90 $92
    jp $855c                                      ; $5ef4: $c3 $5c $85


    ld d, d                                       ; $5ef7: $52
    ld [hl], d                                    ; $5ef8: $72
    add sp, -$30                                  ; $5ef9: $e8 $d0
    db $fc                                        ; $5efb: $fc
    dec c                                         ; $5efc: $0d
    nop                                           ; $5efd: $00
    ld d, a                                       ; $5efe: $57
    or h                                          ; $5eff: $b4
    add hl, sp                                    ; $5f00: $39
    call z, $e711                                 ; $5f01: $cc $11 $e7
    ld [hl], b                                    ; $5f04: $70

Call_03c_5f05:
Jump_03c_5f05:
    ld [$7078], a                                 ; $5f05: $ea $78 $70
    adc $e2                                       ; $5f08: $ce $e2

Call_03c_5f0a:
    cp b                                          ; $5f0a: $b8
    add sp, $2a                                   ; $5f0b: $e8 $2a
    sbc h                                         ; $5f0d: $9c
    and a                                         ; $5f0e: $a7
    add [hl]                                      ; $5f0f: $86
    xor [hl]                                      ; $5f10: $ae
    xor d                                         ; $5f11: $aa
    adc $73                                       ; $5f12: $ce $73
    ld h, $6b                                     ; $5f14: $26 $6b
    ld c, d                                       ; $5f16: $4a
    call $d679                                    ; $5f17: $cd $79 $d6
    xor a                                         ; $5f1a: $af
    db $ed                                        ; $5f1b: $ed
    db $fd                                        ; $5f1c: $fd
    adc a                                         ; $5f1d: $8f
    ld [hl], l                                    ; $5f1e: $75
    ld hl, sp-$08                                 ; $5f1f: $f8 $f8
    cp $e7                                        ; $5f21: $fe $e7
    add hl, sp                                    ; $5f23: $39
    di                                            ; $5f24: $f3
    push hl                                       ; $5f25: $e5
    dec sp                                        ; $5f26: $3b
    rst $18                                       ; $5f27: $df
    rst $38                                       ; $5f28: $ff
    ld l, a                                       ; $5f29: $6f
    nop                                           ; $5f2a: $00
    ld a, l                                       ; $5f2b: $7d
    inc de                                        ; $5f2c: $13
    ld a, $b5                                     ; $5f2d: $3e $b5
    dec l                                         ; $5f2f: $2d
    add hl, sp                                    ; $5f30: $39
    db $fd                                        ; $5f31: $fd
    jr nc, jr_03c_5fa9                            ; $5f32: $30 $75

    pop hl                                        ; $5f34: $e1
    ld bc, $3a12                                  ; $5f35: $01 $12 $3a
    ld sp, hl                                     ; $5f38: $f9
    dec de                                        ; $5f39: $1b
    nop                                           ; $5f3a: $00
    ld a, l                                       ; $5f3b: $7d
    di                                            ; $5f3c: $f3
    ld e, [hl]                                    ; $5f3d: $5e
    nop                                           ; $5f3e: $00
    dec h                                         ; $5f3f: $25
    rst $20                                       ; $5f40: $e7
    ldh a, [$57]                                  ; $5f41: $f0 $57
    ld h, c                                       ; $5f43: $61
    rst $38                                       ; $5f44: $ff
    ld d, l                                       ; $5f45: $55
    jp c, $fe1c                                   ; $5f46: $da $1c $fe

    ld a, [hl-]                                   ; $5f49: $3a
    inc d                                         ; $5f4a: $14
    ld h, d                                       ; $5f4b: $62
    ccf                                           ; $5f4c: $3f
    ld [c], a                                     ; $5f4d: $e2
    rst $08                                       ; $5f4e: $cf
    inc h                                         ; $5f4f: $24
    xor [hl]                                      ; $5f50: $ae
    ld a, [hl-]                                   ; $5f51: $3a
    and l                                         ; $5f52: $a5
    cp $79                                        ; $5f53: $fe $79
    adc $24                                       ; $5f55: $ce $24
    or d                                          ; $5f57: $b2
    ld e, a                                       ; $5f58: $5f
    sbc $00                                       ; $5f59: $de $00
    ld a, l                                       ; $5f5b: $7d
    ld [hl], e                                    ; $5f5c: $73
    ld e, d                                       ; $5f5d: $5a
    ld [hl], l                                    ; $5f5e: $75
    sbc [hl]                                      ; $5f5f: $9e
    or e                                          ; $5f60: $b3
    cp b                                          ; $5f61: $b8
    xor d                                         ; $5f62: $aa
    xor e                                         ; $5f63: $ab
    add hl, sp                                    ; $5f64: $39
    ld l, d                                       ; $5f65: $6a
    db $ec                                        ; $5f66: $ec
    jp nc, $bf05                                  ; $5f67: $d2 $05 $bf

    ld d, e                                       ; $5f6a: $53
    ld e, $7d                                     ; $5f6b: $1e $7d
    sbc $00                                       ; $5f6d: $de $00
    db $dd                                        ; $5f6f: $dd
    db $ed                                        ; $5f70: $ed
    ld e, a                                       ; $5f71: $5f
    ld d, a                                       ; $5f72: $57
    ld l, c                                       ; $5f73: $69
    ld a, [de]                                    ; $5f74: $1a
    ld [hl], e                                    ; $5f75: $73
    ld c, $67                                     ; $5f76: $0e $67
    ld [de], a                                    ; $5f78: $12

jr_03c_5f79:
    reti                                          ; $5f79: $d9


    cpl                                           ; $5f7a: $2f
    rla                                           ; $5f7b: $17
    ld e, $20                                     ; $5f7c: $1e $20
    and c                                         ; $5f7e: $a1
    sub e                                         ; $5f7f: $93
    rst $28                                       ; $5f80: $ef
    add hl, bc                                    ; $5f81: $09
    nop                                           ; $5f82: $00

Jump_03c_5f83:
    ld a, l                                       ; $5f83: $7d
    di                                            ; $5f84: $f3
    sbc $65                                       ; $5f85: $de $65
    ld e, a                                       ; $5f87: $5f
    ld d, [hl]                                    ; $5f88: $56
    ld h, c                                       ; $5f89: $61
    rst $38                                       ; $5f8a: $ff
    add l                                         ; $5f8b: $85
    jp hl                                         ; $5f8c: $e9


    push bc                                       ; $5f8d: $c5
    and $75                                       ; $5f8e: $e6 $75
    ld b, h                                       ; $5f90: $44
    sub e                                         ; $5f91: $93
    jr jr_03c_5f79                                ; $5f92: $18 $e5

    and l                                         ; $5f94: $a5

Call_03c_5f95:
    db $e4                                        ; $5f95: $e4
    or h                                          ; $5f96: $b4

Jump_03c_5f97:
    dec l                                         ; $5f97: $2d
    cp d                                          ; $5f98: $ba
    ld c, d                                       ; $5f99: $4a
    and e                                         ; $5f9a: $a3
    cp h                                          ; $5f9b: $bc
    adc $e1                                       ; $5f9c: $ce $e1
    xor a                                         ; $5f9e: $af
    rst $38                                       ; $5f9f: $ff
    db $e3                                        ; $5fa0: $e3
    rlca                                          ; $5fa1: $07
    ld d, e                                       ; $5fa2: $53
    jp c, Jump_000_3c2f                           ; $5fa3: $da $2f $3c

    ld b, b                                       ; $5fa6: $40
    ld b, d                                       ; $5fa7: $42
    daa                                           ; $5fa8: $27

jr_03c_5fa9:
    ld a, a                                       ; $5fa9: $7f
    inc bc                                        ; $5faa: $03
    sub a                                         ; $5fab: $97
    db $e3                                        ; $5fac: $e3
    xor a                                         ; $5fad: $af
    jp nz, $abfe                                  ; $5fae: $c2 $fe $ab

    or h                                          ; $5fb1: $b4
    add hl, sp                                    ; $5fb2: $39
    call z, Call_000_1c59                         ; $5fb3: $cc $59 $1c

jr_03c_5fb6:
    ld b, a                                       ; $5fb6: $47
    adc l                                         ; $5fb7: $8d
    rst $18                                       ; $5fb8: $df
    ld sp, hl                                     ; $5fb9: $f9
    push bc                                       ; $5fba: $c5
    db $f4                                        ; $5fbb: $f4
    add hl, sp                                    ; $5fbc: $39
    sub e                                         ; $5fbd: $93
    dec h                                         ; $5fbe: $25
    push hl                                       ; $5fbf: $e5
    ld a, l                                       ; $5fc0: $7d
    adc $b3                                       ; $5fc1: $ce $b3
    adc h                                         ; $5fc3: $8c
    ld e, b                                       ; $5fc4: $58
    db $fd                                        ; $5fc5: $fd
    ld a, $e1                                     ; $5fc6: $3e $e1
    dec bc                                        ; $5fc8: $0b
    add hl, hl                                    ; $5fc9: $29
    add hl, bc                                    ; $5fca: $09
    sbc a                                         ; $5fcb: $9f
    add hl, hl                                    ; $5fcc: $29
    cpl                                           ; $5fcd: $2f
    add hl, bc                                    ; $5fce: $09
    rra                                           ; $5fcf: $1f
    and $28                                       ; $5fd0: $e6 $28
    cp a                                          ; $5fd2: $bf
    ldh a, [rP1]                                  ; $5fd3: $f0 $00
    add hl, bc                                    ; $5fd5: $09
    sbc l                                         ; $5fd6: $9d
    db $fc                                        ; $5fd7: $fc
    ld b, d                                       ; $5fd8: $42
    and c                                         ; $5fd9: $a1
    ld l, c                                       ; $5fda: $69
    ld a, [$3135]                                 ; $5fdb: $fa $35 $31
    ld a, [c]                                     ; $5fde: $f2
    ld b, $7d                                     ; $5fdf: $06 $7d
    di                                            ; $5fe1: $f3
    sbc $65                                       ; $5fe2: $de $65
    ld e, a                                       ; $5fe4: $5f
    ld d, [hl]                                    ; $5fe5: $56

Call_03c_5fe6:
    ld h, c                                       ; $5fe6: $61
    rst $38                                       ; $5fe7: $ff
    ld a, c                                       ; $5fe8: $79
    halt                                          ; $5fe9: $76
    jr z, jr_03c_6022                             ; $5fea: $28 $36

    xor a                                         ; $5fec: $af
    xor e                                         ; $5fed: $ab
    sbc e                                         ; $5fee: $9b
    cp h                                          ; $5fef: $bc
    xor h                                         ; $5ff0: $ac
    jp c, $fe51                                   ; $5ff1: $da $51 $fe

    sbc $45                                       ; $5ff4: $de $45
    xor c                                         ; $5ff6: $a9
    inc sp                                        ; $5ff7: $33
    adc c                                         ; $5ff8: $89
    db $ec                                        ; $5ff9: $ec
    sub a                                         ; $5ffa: $97
    cp d                                          ; $5ffb: $ba
    db $f4                                        ; $5ffc: $f4
    db $ed                                        ; $5ffd: $ed
    ld [hl], c                                    ; $5ffe: $71
    ld [$4d3a], a                                 ; $5fff: $ea $3a $4d
    ld b, [hl]                                    ; $6002: $46
    dec [hl]                                      ; $6003: $35
    ld e, a                                       ; $6004: $5f
    jr z, jr_03c_5fb6                             ; $6005: $28 $af

    scf                                           ; $6007: $37

jr_03c_6008:
    nop                                           ; $6008: $00
    ld a, l                                       ; $6009: $7d
    di                                            ; $600a: $f3
    ld e, [hl]                                    ; $600b: $5e
    rst $30                                       ; $600c: $f7
    ld [hl], e                                    ; $600d: $73
    ret c                                         ; $600e: $d8

    and c                                         ; $600f: $a1
    ret c                                         ; $6010: $d8

    db $fc                                        ; $6011: $fc
    add d                                         ; $6012: $82
    rst $18                                       ; $6013: $df
    and c                                         ; $6014: $a1
    sub h                                         ; $6015: $94
    ld e, h                                       ; $6016: $5c
    and l                                         ; $6017: $a5
    ld l, c                                       ; $6018: $69
    call z, Call_000_009e                         ; $6019: $cc $9e $00
    ld a, l                                       ; $601c: $7d
    inc de                                        ; $601d: $13
    cp [hl]                                       ; $601e: $be
    sub b                                         ; $601f: $90
    sub d                                         ; $6020: $92
    db $d3                                        ; $6021: $d3

jr_03c_6022:
    or [hl]                                       ; $6022: $b6
    sub d                                         ; $6023: $92
    xor e                                         ; $6024: $ab
    jr nc, jr_03c_6008                            ; $6025: $30 $e1

    dec hl                                        ; $6027: $2b
    sbc h                                         ; $6028: $9c
    ld l, a                                       ; $6029: $6f
    ld d, d                                       ; $602a: $52
    ld [hl], l                                    ; $602b: $75
    ld d, $c7                                     ; $602c: $16 $c7
    sub l                                         ; $602e: $95
    inc e                                         ; $602f: $1c
    dec [hl]                                      ; $6030: $35
    halt                                          ; $6031: $76
    jp hl                                         ; $6032: $e9


    ld a, [hl-]                                   ; $6033: $3a
    ld c, [hl]                                    ; $6034: $4e
    call $cfa3                                    ; $6035: $cd $a3 $cf
    dec de                                        ; $6038: $1b
    nop                                           ; $6039: $00
    db $dd                                        ; $603a: $dd
    adc $69                                       ; $603b: $ce $69
    ld h, d                                       ; $603d: $62
    di                                            ; $603e: $f3
    or e                                          ; $603f: $b3
    jr c, @+$10                                   ; $6040: $38 $0e

    or e                                          ; $6042: $b3
    rlca                                          ; $6043: $07
    nop                                           ; $6044: $00
    db $dd                                        ; $6045: $dd
    xor a                                         ; $6046: $af
    sbc [hl]                                      ; $6047: $9e
    push bc                                       ; $6048: $c5
    ld [hl], c                                    ; $6049: $71
    pop bc                                        ; $604a: $c1
    rla                                           ; $604b: $17
    sbc e                                         ; $604c: $9b
    sbc a                                         ; $604d: $9f
    jp Jump_03c_4499                              ; $604e: $c3 $99 $44


    or $cb                                        ; $6051: $f6 $cb
    cp l                                          ; $6053: $bd
    push bc                                       ; $6054: $c5
    reti                                          ; $6055: $d9


    ret nz                                        ; $6056: $c0

    rla                                           ; $6057: $17
    rra                                           ; $6058: $1f
    rst $30                                       ; $6059: $f7
    ld [hl+], a                                   ; $605a: $22
    xor l                                         ; $605b: $ad
    di                                            ; $605c: $f3
    dec a                                         ; $605d: $3d
    ld bc, $737d                                  ; $605e: $01 $7d $73
    ld b, c                                       ; $6061: $41
    xor [hl]                                      ; $6062: $ae
    jp nc, $e634                                  ; $6063: $d2 $34 $e6

    or b                                          ; $6066: $b0
    ld hl, $0074                                  ; $6067: $21 $74 $00
    adc $24                                       ; $606a: $ce $24
    or d                                          ; $606c: $b2
    ld e, a                                       ; $606d: $5f
    ld l, $7c                                     ; $606e: $2e $7c
    ld sp, hl                                     ; $6070: $f9
    pop hl                                        ; $6071: $e1
    ei                                            ; $6072: $fb
    cp a                                          ; $6073: $bf
    ld bc, $f37d                                  ; $6074: $01 $7d $f3
    sbc $a5                                       ; $6077: $de $a5
    adc c                                         ; $6079: $89
    cp e                                          ; $607a: $bb
    sub d                                         ; $607b: $92
    xor a                                         ; $607c: $af
    add l                                         ; $607d: $85
    sub $c5                                       ; $607e: $d6 $c5
    ld b, [hl]                                    ; $6080: $46
    db $e4                                        ; $6081: $e4
    inc e                                         ; $6082: $1c
    cp $a8                                        ; $6083: $fe $a8
    ld hl, $e34d                                  ; $6085: $21 $4d $e3
    inc a                                         ; $6088: $3c
    daa                                           ; $6089: $27
    rra                                           ; $608a: $1f
    ld a, a                                       ; $608b: $7f
    ld e, a                                       ; $608c: $5f
    cp a                                          ; $608d: $bf
    or h                                          ; $608e: $b4
    ld d, d                                       ; $608f: $52
    adc b                                         ; $6090: $88
    pop af                                        ; $6091: $f1
    rst $28                                       ; $6092: $ef
    ld [hl], l                                    ; $6093: $75
    cp a                                          ; $6094: $bf
    adc h                                         ; $6095: $8c
    xor e                                         ; $6096: $ab
    ld a, h                                       ; $6097: $7c
    pop hl                                        ; $6098: $e1
    xor b                                         ; $6099: $a8
    reti                                          ; $609a: $d9


    inc de                                        ; $609b: $13
    nop                                           ; $609c: $00
    rst $20                                       ; $609d: $e7
    or b                                          ; $609e: $b0
    ld b, e                                       ; $609f: $43
    or c                                          ; $60a0: $b1
    ld a, c                                       ; $60a1: $79
    sbc l                                         ; $60a2: $9d
    ld a, [hl]                                    ; $60a3: $7e
    ld l, c                                       ; $60a4: $69
    or d                                          ; $60a5: $b2
    ld l, d                                       ; $60a6: $6a
    ld b, a                                       ; $60a7: $47
    ld sp, hl                                     ; $60a8: $f9
    ld a, e                                       ; $60a9: $7b
    ld bc, $342f                                  ; $60aa: $01 $2f $34
    sbc h                                         ; $60ad: $9c
    push bc                                       ; $60ae: $c5
    ld [hl], c                                    ; $60af: $71
    ld c, b                                       ; $60b0: $48
    ld b, e                                       ; $60b1: $43
    ld l, l                                       ; $60b2: $6d
    pop af                                        ; $60b3: $f1
    ld [hl], l                                    ; $60b4: $75
    rst $18                                       ; $60b5: $df
    add h                                         ; $60b6: $84
    xor e                                         ; $60b7: $ab
    ld d, $aa                                     ; $60b8: $16 $aa
    ret                                           ; $60ba: $c9


    dec de                                        ; $60bb: $1b
    nop                                           ; $60bc: $00
    db $dd                                        ; $60bd: $dd
    db $ed                                        ; $60be: $ed
    inc [hl]                                      ; $60bf: $34
    halt                                          ; $60c0: $76
    jp hl                                         ; $60c1: $e9


    ld a, [hl-]                                   ; $60c2: $3a
    adc l                                         ; $60c3: $8d
    ld [$fd9f], sp                                ; $60c4: $08 $9f $fd
    adc e                                         ; $60c7: $8b
    ld e, b                                       ; $60c8: $58
    ld a, e                                       ; $60c9: $7b
    ld [bc], a                                    ; $60ca: $02
    cp l                                          ; $60cb: $bd
    call z, Call_03c_7277                         ; $60cc: $cc $77 $72
    sbc [hl]                                      ; $60cf: $9e
    xor e                                         ; $60d0: $ab
    sbc e                                         ; $60d1: $9b
    cp h                                          ; $60d2: $bc
    inc l                                         ; $60d3: $2c
    ld c, h                                       ; $60d4: $4c
    sbc c                                         ; $60d5: $99
    jp $855f                                      ; $60d6: $c3 $5f $85


    jr jr_03c_60fa                                ; $60d9: $18 $1f

    ld a, a                                       ; $60db: $7f
    sub $05                                       ; $60dc: $d6 $05
    cp c                                          ; $60de: $b9
    ld c, d                                       ; $60df: $4a
    db $d3                                        ; $60e0: $d3
    sbc b                                         ; $60e1: $98
    ld [hl], e                                    ; $60e2: $73
    ld hl, sp+$33                                 ; $60e3: $f8 $33
    xor c                                         ; $60e5: $a9
    cp a                                          ; $60e6: $bf
    ldh a, [rP1]                                  ; $60e7: $f0 $00
    add hl, bc                                    ; $60e9: $09
    sbc l                                         ; $60ea: $9d
    db $fc                                        ; $60eb: $fc
    ld c, h                                       ; $60ec: $4c
    adc d                                         ; $60ed: $8a
    inc [hl]                                      ; $60ee: $34
    and d                                         ; $60ef: $a2
    rst $08                                       ; $60f0: $cf
    ld d, l                                       ; $60f1: $55
    dec sp                                        ; $60f2: $3b
    jp z, Jump_000_00df                           ; $60f3: $ca $df $00

    db $dd                                        ; $60f6: $dd
    ld [bc], a                                    ; $60f7: $02
    inc e                                         ; $60f8: $1c
    ld [hl], l                                    ; $60f9: $75

jr_03c_60fa:
    and [hl]                                      ; $60fa: $a6
    cp h                                          ; $60fb: $bc
    db $e4                                        ; $60fc: $e4
    inc l                                         ; $60fd: $2c
    adc [hl]                                      ; $60fe: $8e
    jp $01ec                                      ; $60ff: $c3 $ec $01


    nop                                           ; $6102: $00
    db $dd                                        ; $6103: $dd
    ld [bc], a                                    ; $6104: $02
    add e                                         ; $6105: $83
    pop bc                                        ; $6106: $c1
    ld e, $eb                                     ; $6107: $1e $eb
    halt                                          ; $6109: $76
    ld a, $46                                     ; $610a: $3e $46
    ld h, d                                       ; $610c: $62
    call z, Call_03c_4285                         ; $610d: $cc $85 $42
    adc l                                         ; $6110: $8d
    cpl                                           ; $6111: $2f
    add l                                         ; $6112: $85
    ei                                            ; $6113: $fb
    ld c, b                                       ; $6114: $48
    inc [hl]                                      ; $6115: $34
    call $f716                                    ; $6116: $cd $16 $f7
    ld h, l                                       ; $6119: $65

jr_03c_611a:
    and c                                         ; $611a: $a1
    ld h, h                                       ; $611b: $64
    dec [hl]                                      ; $611c: $35
    dec [hl]                                      ; $611d: $35
    and l                                         ; $611e: $a5
    rlca                                          ; $611f: $07
    nop                                           ; $6120: $00
    add c                                         ; $6121: $81
    ld l, l                                       ; $6122: $6d
    ld d, $d7                                     ; $6123: $16 $d7
    jr z, jr_03c_617b                             ; $6125: $28 $54

    ld hl, sp+$62                                 ; $6127: $f8 $62
    sub $b9                                       ; $6129: $d6 $b9
    rrca                                          ; $612b: $0f
    dec e                                         ; $612c: $1d
    ld b, [hl]                                    ; $612d: $46
    ld [$8bac], a                                 ; $612e: $ea $ac $8b
    ld e, h                                       ; $6131: $5c
    ld c, c                                       ; $6132: $49
    dec e                                         ; $6133: $1d
    ld h, c                                       ; $6134: $61
    add l                                         ; $6135: $85
    and l                                         ; $6136: $a5
    sbc c                                         ; $6137: $99
    ld e, h                                       ; $6138: $5c
    db $dd                                        ; $6139: $dd
    and l                                         ; $613a: $a5
    adc e                                         ; $613b: $8b
    cpl                                           ; $613c: $2f
    sbc [hl]                                      ; $613d: $9e

jr_03c_613e:
    scf                                           ; $613e: $37
    nop                                           ; $613f: $00
    add c                                         ; $6140: $81
    ld l, l                                       ; $6141: $6d
    ld d, $d7                                     ; $6142: $16 $d7
    jr z, jr_03c_611a                             ; $6144: $28 $d4

    ld e, c                                       ; $6146: $59
    inc e                                         ; $6147: $1c
    rla                                           ; $6148: $17
    add hl, sp                                    ; $6149: $39
    jp nz, $4b0a                                  ; $614a: $c2 $0a $4b

    or e                                          ; $614d: $b3
    jr c, jr_03c_613e                             ; $614e: $38 $ee

    dec bc                                        ; $6150: $0b
    sub h                                         ; $6151: $94
    ldh a, [$75]                                  ; $6152: $f0 $75
    and e                                         ; $6154: $a3
    add [hl]                                      ; $6155: $86
    sub h                                         ; $6156: $94
    rst $18                                       ; $6157: $df
    rst $08                                       ; $6158: $cf
    ld [c], a                                     ; $6159: $e2
    cp b                                          ; $615a: $b8
    ld c, b                                       ; $615b: $48
    xor c                                         ; $615c: $a9
    dec de                                        ; $615d: $1b
    ld [hl], d                                    ; $615e: $72
    push hl                                       ; $615f: $e5
    ld h, a                                       ; $6160: $67
    jp z, Jump_03c_7b2b                           ; $6161: $ca $2b $7b

    nop                                           ; $6164: $00
    db $dd                                        ; $6165: $dd
    ld [bc], a                                    ; $6166: $02
    add e                                         ; $6167: $83
    pop bc                                        ; $6168: $c1
    ld e, $0b                                     ; $6169: $1e $0b
    ld l, h                                       ; $616b: $6c
    ld h, e                                       ; $616c: $63
    ld e, c                                       ; $616d: $59
    jr z, @+$5b                                   ; $616e: $28 $59

    ld c, l                                       ; $6170: $4d
    ld c, l                                       ; $6171: $4d
    sbc c                                         ; $6172: $99
    ld l, a                                       ; $6173: $6f

Jump_03c_6174:
    add [hl]                                      ; $6174: $86
    ei                                            ; $6175: $fb
    ld [bc], a                                    ; $6176: $02
    push hl                                       ; $6177: $e5
    ld e, d                                       ; $6178: $5a
    dec e                                         ; $6179: $1d
    and [hl]                                      ; $617a: $a6

jr_03c_617b:
    call nz, $48c7                                ; $617b: $c4 $c7 $48
    ld hl, sp+$30                                 ; $617e: $f8 $30
    ld d, a                                       ; $6180: $57
    ld [hl], e                                    ; $6181: $73
    dec h                                         ; $6182: $25
    ld h, a                                       ; $6183: $67
    ld [hl], c                                    ; $6184: $71
    adc l                                         ; $6185: $8d
    sub d                                         ; $6186: $92
    dec bc                                        ; $6187: $0b
    add hl, hl                                    ; $6188: $29
    sbc [hl]                                      ; $6189: $9e
    ld [hl], d                                    ; $618a: $72
    inc bc                                        ; $618b: $03
    db $dd                                        ; $618c: $dd
    ld [bc], a                                    ; $618d: $02
    add e                                         ; $618e: $83
    pop bc                                        ; $618f: $c1
    ld e, $eb                                     ; $6190: $1e $eb
    sub $b7                                       ; $6192: $d6 $b7
    ld c, l                                       ; $6194: $4d
    cp c                                          ; $6195: $b9
    ret z                                         ; $6196: $c8

    and l                                         ; $6197: $a5
    ld [hl], c                                    ; $6198: $71
    ld [hl+], a                                   ; $6199: $22
    cp a                                          ; $619a: $bf
    sbc d                                         ; $619b: $9a
    sub c                                         ; $619c: $91
    ld d, d                                       ; $619d: $52
    ld [hl], e                                    ; $619e: $73
    call nz, Call_03c_5c39                        ; $619f: $c4 $39 $5c
    or c                                          ; $61a2: $b1
    ret                                           ; $61a3: $c9


    ld e, $00                                     ; $61a4: $1e $00
    cp l                                          ; $61a6: $bd
    add l                                         ; $61a7: $85
    add hl, sp                                    ; $61a8: $39
    adc e                                         ; $61a9: $8b
    db $e3                                        ; $61aa: $e3
    jr nc, @+$19                                  ; $61ab: $30 $17

    ld a, [hl-]                                   ; $61ad: $3a
    ld a, [$f05c]                                 ; $61ae: $fa $5c $f0
    dec sp                                        ; $61b1: $3b
    push hl                                       ; $61b2: $e5
    ld h, l                                       ; $61b3: $65
    call nz, $f299                                ; $61b4: $c4 $99 $f2
    jp z, $001b                                   ; $61b7: $ca $1b $00

    halt                                          ; $61ba: $76
    cp d                                          ; $61bb: $ba
    sbc d                                         ; $61bc: $9a
    db $fd                                        ; $61bd: $fd
    ld d, d                                       ; $61be: $52
    ld h, [hl]                                    ; $61bf: $66
    ld [hl], c                                    ; $61c0: $71
    ld e, h                                       ; $61c1: $5c
    db $e4                                        ; $61c2: $e4
    ld [$1317], a                                 ; $61c3: $ea $17 $13
    and h                                         ; $61c6: $a4
    jp nz, $b987                                  ; $61c7: $c2 $87 $b9

    jp z, Jump_03c_7f5b                           ; $61ca: $ca $5b $7f

    ccf                                           ; $61cd: $3f
    and l                                         ; $61ce: $a5
    call z, $b8e2                                 ; $61cf: $cc $e2 $b8
    ld c, b                                       ; $61d2: $48
    add h                                         ; $61d3: $84
    ld e, [hl]                                    ; $61d4: $5e
    rla                                           ; $61d5: $17
    ld c, d                                       ; $61d6: $4a
    halt                                          ; $61d7: $76
    ld a, [bc]                                    ; $61d8: $0a
    db $eb                                        ; $61d9: $eb
    rst $10                                       ; $61da: $d7
    dec de                                        ; $61db: $1b
    nop                                           ; $61dc: $00
    db $dd                                        ; $61dd: $dd
    ld [bc], a                                    ; $61de: $02
    add e                                         ; $61df: $83
    pop bc                                        ; $61e0: $c1
    ld e, $eb                                     ; $61e1: $1e $eb
    dec l                                         ; $61e3: $2d
    call z, Call_000_1c59                         ; $61e4: $cc $59 $1c
    rst $00                                       ; $61e7: $c7
    or d                                          ; $61e8: $b2
    ld d, b                                       ; $61e9: $50
    or d                                          ; $61ea: $b2
    sbc d                                         ; $61eb: $9a
    sbc d                                         ; $61ec: $9a
    ld [hl-], a                                   ; $61ed: $32
    ld c, h                                       ; $61ee: $4c
    dec e                                         ; $61ef: $1d
    dec [hl]                                      ; $61f0: $35
    halt                                          ; $61f1: $76
    xor l                                         ; $61f2: $ad
    ld l, [hl]                                    ; $61f3: $6e
    ld a, [c]                                     ; $61f4: $f2
    add sp, -$0d                                  ; $61f5: $e8 $f3
    ld b, $81                                     ; $61f7: $06 $81
    sub h                                         ; $61f9: $94
    xor [hl]                                      ; $61fa: $ae
    push de                                       ; $61fb: $d5
    db $ec                                        ; $61fc: $ec

jr_03c_61fd:
    sub a                                         ; $61fd: $97
    ld [hl-], a                                   ; $61fe: $32
    adc e                                         ; $61ff: $8b
    db $e3                                        ; $6200: $e3
    jr nc, @+$19                                  ; $6201: $30 $17

    db $fc                                        ; $6203: $fc
    ld c, [hl]                                    ; $6204: $4e
    ld h, c                                       ; $6205: $61
    sbc l                                         ; $6206: $9d
    ld a, [hl-]                                   ; $6207: $3a
    ld [c], a                                     ; $6208: $e2
    ld c, h                                       ; $6209: $4c
    ld a, c                                       ; $620a: $79
    push hl                                       ; $620b: $e5
    ld [hl], d                                    ; $620c: $72
    and l                                         ; $620d: $a5
    ld a, h                                       ; $620e: $7c
    db $fd                                        ; $620f: $fd
    jp nz, Jump_03c_753a                          ; $6210: $c2 $3a $75

    push hl                                       ; $6213: $e5
    rst $30                                       ; $6214: $f7
    sub c                                         ; $6215: $91
    ld l, b                                       ; $6216: $68
    sbc d                                         ; $6217: $9a
    dec l                                         ; $6218: $2d
    sbc $00                                       ; $6219: $de $00
    ld bc, $ab29                                  ; $621b: $01 $29 $ab
    cp $4a                                        ; $621e: $fe $4a
    ld a, [bc]                                    ; $6220: $0a
    ld a, h                                       ; $6221: $7c
    db $dd                                        ; $6222: $dd
    ld a, [hl+]                                   ; $6223: $2a
    adc h                                         ; $6224: $8c
    db $ec                                        ; $6225: $ec
    or c                                          ; $6226: $b1
    cp [hl]                                       ; $6227: $be

jr_03c_6228:
    add hl, sp                                    ; $6228: $39
    adc e                                         ; $6229: $8b
    ld l, e                                       ; $622a: $6b
    sub h                                         ; $622b: $94
    inc e                                         ; $622c: $1c
    or c                                          ; $622d: $b1
    ld a, [$cbfd]                                 ; $622e: $fa $fd $cb
    cp [hl]                                       ; $6231: $be
    inc l                                         ; $6232: $2c
    sub h                                         ; $6233: $94
    xor h                                         ; $6234: $ac
    and [hl]                                      ; $6235: $a6
    and [hl]                                      ; $6236: $a6
    call c, $1700                                 ; $6237: $dc $00 $17
    rst $30                                       ; $623a: $f7
    ei                                            ; $623b: $fb
    jp nc, $d0b5                                  ; $623c: $d2 $b5 $d0

    ld sp, hl                                     ; $623f: $f9
    ld b, [hl]                                    ; $6240: $46
    ld sp, hl                                     ; $6241: $f9
    cp l                                          ; $6242: $bd
    ret                                           ; $6243: $c9


    ld a, [hl-]                                   ; $6244: $3a
    db $fc                                        ; $6245: $fc
    add e                                         ; $6246: $83
    ld e, a                                       ; $6247: $5f
    ld [hl+], a                                   ; $6248: $22
    rla                                           ; $6249: $17
    cp [hl]                                       ; $624a: $be
    db $fc                                        ; $624b: $fc
    sbc $ea                                       ; $624c: $de $ea
    db $fc                                        ; $624e: $fc
    ld c, e                                       ; $624f: $4b
    inc h                                         ; $6250: $24
    ld a, h                                       ; $6251: $7c
    ld hl, $1725                                  ; $6252: $21 $25 $17
    adc c                                         ; $6255: $89
    ld d, b                                       ; $6256: $50
    adc $e2                                       ; $6257: $ce $e2
    jr c, @-$73                                   ; $6259: $38 $8b

    and e                                         ; $625b: $a3
    ld a, a                                       ; $625c: $7f
    xor c                                         ; $625d: $a9
    cp c                                          ; $625e: $b9
    or a                                          ; $625f: $b7
    jr c, jr_03c_61fd                             ; $6260: $38 $9b

    dec de                                        ; $6262: $1b
    nop                                           ; $6263: $00
    ld h, a                                       ; $6264: $67
    dec sp                                        ; $6265: $3b
    ld [c], a                                     ; $6266: $e2
    ld c, a                                       ; $6267: $4f
    dec e                                         ; $6268: $1d
    dec h                                         ; $6269: $25

Jump_03c_626a:
    ld [de], a                                    ; $626a: $12
    ld a, $fb                                     ; $626b: $3e $fb
    rla                                           ; $626d: $17
    or c                                          ; $626e: $b1
    sbc $bb                                       ; $626f: $de $bb
    ret z                                         ; $6271: $c8

    ld de, $d5ca                                  ; $6272: $11 $ca $d5
    sbc h                                         ; $6275: $9c
    ld [hl], c                                    ; $6276: $71
    call nz, $baf8                                ; $6277: $c4 $f8 $ba
    sub d                                         ; $627a: $92
    or e                                          ; $627b: $b3
    jr c, jr_03c_62ac                             ; $627c: $38 $2e

    ld hl, sp+$0b                                 ; $627e: $f8 $0b
    ld e, a                                       ; $6280: $5f
    rst $18                                       ; $6281: $df
    rst $20                                       ; $6282: $e7
    dec c                                         ; $6283: $0d
    nop                                           ; $6284: $00
    add c                                         ; $6285: $81
    sub h                                         ; $6286: $94
    xor [hl]                                      ; $6287: $ae
    push de                                       ; $6288: $d5
    db $ec                                        ; $6289: $ec
    sub a                                         ; $628a: $97
    ld [hl-], a                                   ; $628b: $32
    adc e                                         ; $628c: $8b
    db $e3                                        ; $628d: $e3
    ld [hl+], a                                   ; $628e: $22
    ld d, a                                       ; $628f: $57
    ld a, c                                       ; $6290: $79
    db $eb                                        ; $6291: $eb
    db $eb                                        ; $6292: $eb
    ld e, $23                                     ; $6293: $1e $23
    ld [hl], l                                    ; $6295: $75
    sbc [hl]                                      ; $6296: $9e
    or e                                          ; $6297: $b3
    jr c, jr_03c_6228                             ; $6298: $38 $8e

    ld h, l                                       ; $629a: $65
    and c                                         ; $629b: $a1
    ld h, h                                       ; $629c: $64
    dec [hl]                                      ; $629d: $35
    and a                                         ; $629e: $a7
    inc e                                         ; $629f: $1c
    or c                                          ; $62a0: $b1
    ld a, [$6f3d]                                 ; $62a1: $fa $3d $6f
    nop                                           ; $62a4: $00
    ld h, a                                       ; $62a5: $67
    dec sp                                        ; $62a6: $3b
    ld [c], a                                     ; $62a7: $e2
    ld c, a                                       ; $62a8: $4f
    dec e                                         ; $62a9: $1d
    dec h                                         ; $62aa: $25
    ld [de], a                                    ; $62ab: $12

jr_03c_62ac:
    ld a, $fb                                     ; $62ac: $3e $fb
    rla                                           ; $62ae: $17
    or c                                          ; $62af: $b1
    sbc $0b                                       ; $62b0: $de $0b
    xor h                                         ; $62b2: $ac
    ld a, [hl-]                                   ; $62b3: $3a
    adc e                                         ; $62b4: $8b
    db $e3                                        ; $62b5: $e3
    ld c, d                                       ; $62b6: $4a
    ld l, $f8                                     ; $62b7: $2e $f8
    jp nc, $eba5                                  ; $62b9: $d2 $a5 $eb

    inc [hl]                                      ; $62bc: $34
    ld [c], a                                     ; $62bd: $e2
    dec c                                         ; $62be: $0d
    nop                                           ; $62bf: $00
    ld a, l                                       ; $62c0: $7d
    ret c                                         ; $62c1: $d8

    cpl                                           ; $62c2: $2f
    ld h, l                                       ; $62c3: $65
    dec d                                         ; $62c4: $15
    ld b, [hl]                                    ; $62c5: $46
    jp nz, $b2c7                                  ; $62c6: $c2 $c7 $b2

    ld d, b                                       ; $62c9: $50
    or d                                          ; $62ca: $b2
    sbc d                                         ; $62cb: $9a
    sbc d                                         ; $62cc: $9a
    or d                                          ; $62cd: $b2
    ret z                                         ; $62ce: $c8

    ld d, c                                       ; $62cf: $51
    ld h, e                                       ; $62d0: $63
    rst $10                                       ; $62d1: $d7
    ld [$8f26], a                                 ; $62d2: $ea $26 $8f
    ld a, $6f                                     ; $62d5: $3e $6f
    nop                                           ; $62d7: $00
    rst $20                                       ; $62d8: $e7
    ld h, e                                       ; $62d9: $63
    add l                                         ; $62da: $85
    add d                                         ; $62db: $82
    rst $28                                       ; $62dc: $ef
    add hl, hl                                    ; $62dd: $29
    xor c                                         ; $62de: $a9
    and a                                         ; $62df: $a7
    xor [hl]                                      ; $62e0: $ae
    ld l, a                                       ; $62e1: $6f
    ld c, d                                       ; $62e2: $4a
    ld d, d                                       ; $62e3: $52
    inc hl                                        ; $62e4: $23
    rst $28                                       ; $62e5: $ef
    push af                                       ; $62e6: $f5
    cp $ce                                        ; $62e7: $fe $ce
    rra                                           ; $62e9: $1f
    db $fc                                        ; $62ea: $fc
    di                                            ; $62eb: $f3
    sbc h                                         ; $62ec: $9c
    db $fd                                        ; $62ed: $fd
    ld b, e                                       ; $62ee: $43
    jp nc, $a9fc                                  ; $62ef: $d2 $fc $a9

    dec bc                                        ; $62f2: $0b
    ld [hl], h                                    ; $62f3: $74
    sub d                                         ; $62f4: $92
    call nc, Call_000_1bc8                        ; $62f5: $d4 $c8 $1b
    nop                                           ; $62f8: $00
    rla                                           ; $62f9: $17
    cp l                                          ; $62fa: $bd
    adc $94                                       ; $62fb: $ce $94
    ld d, a                                       ; $62fd: $57
    ld [$8f82], a                                 ; $62fe: $ea $82 $8f
    adc e                                         ; $6301: $8b
    sub h                                         ; $6302: $94
    cp d                                          ; $6303: $ba
    pop hl                                        ; $6304: $e1
    ei                                            ; $6305: $fb
    ld e, h                                       ; $6306: $5c
    sbc b                                         ; $6307: $98

Jump_03c_6308:
    or d                                          ; $6308: $b2
    ld h, b                                       ; $6309: $60
    ld e, d                                       ; $630a: $5a
    rst $28                                       ; $630b: $ef
    ld [hl], l                                    ; $630c: $75
    cp e                                          ; $630d: $bb
    inc l                                         ; $630e: $2c
    ld a, l                                       ; $630f: $7d
    ld [$ecbe], a                                 ; $6310: $ea $be $ec
    inc a                                         ; $6313: $3c
    ld a, c                                       ; $6314: $79
    ld e, h                                       ; $6315: $5c
    rst $28                                       ; $6316: $ef
    xor h                                         ; $6317: $ac
    jp hl                                         ; $6318: $e9


    ld d, e                                       ; $6319: $53
    ld a, d                                       ; $631a: $7a
    db $ec                                        ; $631b: $ec
    and d                                         ; $631c: $a2
    sbc a                                         ; $631d: $9f
    ld hl, $a8fe                                  ; $631e: $21 $fe $a8
    or c                                          ; $6321: $b1
    ld l, e                                       ; $6322: $6b
    cp a                                          ; $6323: $bf
    ret nc                                        ; $6324: $d0

    ld h, c                                       ; $6325: $61
    call z, Call_03c_4e79                         ; $6326: $cc $79 $4e
    add hl, hl                                    ; $6329: $29
    sub l                                         ; $632a: $95
    ld h, $ca                                     ; $632b: $26 $ca
    dec de                                        ; $632d: $1b
    nop                                           ; $632e: $00
    ld a, l                                       ; $632f: $7d
    ld [hl], e                                    ; $6330: $73
    sub c                                         ; $6331: $91
    xor e                                         ; $6332: $ab
    cp h                                          ; $6333: $bc
    xor $57                                       ; $6334: $ee $57
    ld e, d                                       ; $6336: $5a
    ld b, a                                       ; $6337: $47
    ld e, [hl]                                    ; $6338: $5e
    and $a9                                       ; $6339: $e6 $a9
    and c                                         ; $633b: $a1
    xor e                                         ; $633c: $ab
    xor d                                         ; $633d: $aa
    di                                            ; $633e: $f3
    ld e, h                                       ; $633f: $5c
    ret                                           ; $6340: $c9


    ld e, c                                       ; $6341: $59
    inc e                                         ; $6342: $1c
    rla                                           ; $6343: $17
    db $fc                                        ; $6344: $fc
    add l                                         ; $6345: $85
    xor a                                         ; $6346: $af
    rst $28                                       ; $6347: $ef
    ld [hl], e                                    ; $6348: $73
    call nz, $9f95                                ; $6349: $c4 $95 $9f
    add hl, hl                                    ; $634c: $29
    xor a                                         ; $634d: $af
    sbc h                                         ; $634e: $9c
    rst $20                                       ; $634f: $e7
    ld a, [hl+]                                   ; $6350: $2a

Jump_03c_6351:
    adc [hl]                                      ; $6351: $8e
    dec h                                         ; $6352: $25
    pop hl                                        ; $6353: $e1
    dec bc                                        ; $6354: $0b
    ret z                                         ; $6355: $c8

    jr jr_03c_6381                                ; $6356: $18 $29

    scf                                           ; $6358: $37
    nop                                           ; $6359: $00
    halt                                          ; $635a: $76
    ld b, d                                       ; $635b: $42
    ld e, l                                       ; $635c: $5d
    db $ed                                        ; $635d: $ed
    ld c, h                                       ; $635e: $4c
    jr nc, @+$59                                  ; $635f: $30 $57

    ld [hl], a                                    ; $6361: $77
    jp hl                                         ; $6362: $e9


    ld a, [hl+]                                   ; $6363: $2a
    ld e, a                                       ; $6364: $5f
    ld a, [de]                                    ; $6365: $1a
    ld sp, $1f72                                  ; $6366: $31 $72 $1f
    ld c, h                                       ; $6369: $4c
    ld sp, hl                                     ; $636a: $f9
    ld e, c                                       ; $636b: $59
    inc e                                         ; $636c: $1c
    rla                                           ; $636d: $17
    ld a, h                                       ; $636e: $7c
    ld e, l                                       ; $636f: $5d
    push bc                                       ; $6370: $c5
    or c                                          ; $6371: $b1
    call nz, Call_000_2fdc                        ; $6372: $c4 $dc $2f
    ld [hl], $8a                                  ; $6375: $36 $8a
    db $fc                                        ; $6377: $fc
    xor d                                         ; $6378: $aa
    sbc e                                         ; $6379: $9b
    call nc, $759c                                ; $637a: $d4 $9c $75
    call nc, $a5d8                                ; $637d: $d4 $d8 $a5
    inc sp                                        ; $6380: $33

jr_03c_6381:
    adc c                                         ; $6381: $89
    adc e                                         ; $6382: $8b
    ld c, [hl]                                    ; $6383: $4e
    rst $30                                       ; $6384: $f7
    ld [hl], l                                    ; $6385: $75
    add e                                         ; $6386: $83
    ld e, h                                       ; $6387: $5c

Jump_03c_6388:
    adc e                                         ; $6388: $8b
    xor c                                         ; $6389: $a9
    scf                                           ; $638a: $37
    nop                                           ; $638b: $00
    halt                                          ; $638c: $76
    ld a, [de]                                    ; $638d: $1a
    ld e, a                                       ; $638e: $5f
    xor d                                         ; $638f: $aa

jr_03c_6390:
    adc [hl]                                      ; $6390: $8e
    ld l, b                                       ; $6391: $68
    ld e, $e3                                     ; $6392: $1e $e3
    and e                                         ; $6394: $a3
    rst $08                                       ; $6395: $cf
    ld a, c                                       ; $6396: $79
    xor [hl]                                      ; $6397: $ae
    jr c, jr_03c_63ad                             ; $6398: $38 $13

    ld a, h                                       ; $639a: $7c
    sbc c                                         ; $639b: $99
    ld c, c                                       ; $639c: $49
    adc h                                         ; $639d: $8c
    dec c                                         ; $639e: $0d
    jp z, Jump_000_34fd                           ; $639f: $ca $fd $34

    set 5, e                                      ; $63a2: $cb $eb
    cp l                                          ; $63a4: $bd
    xor $97                                       ; $63a5: $ee $97
    cp b                                          ; $63a7: $b8
    xor d                                         ; $63a8: $aa
    adc e                                         ; $63a9: $8b
    ld e, h                                       ; $63aa: $5c
    ld hl, sp+$42                                 ; $63ab: $f8 $42

jr_03c_63ad:
    jp $9c39                                      ; $63ad: $c3 $39 $9c


    ld [hl], a                                    ; $63b0: $77
    inc l                                         ; $63b1: $2c
    add hl, sp                                    ; $63b2: $39
    rst $08                                       ; $63b3: $cf
    push de                                       ; $63b4: $d5
    rrca                                          ; $63b5: $0f
    and l                                         ; $63b6: $a5
    jp nz, $abf7                                  ; $63b7: $c2 $f7 $ab

    jp hl                                         ; $63ba: $e9


    db $db                                        ; $63bb: $db
    ld h, e                                       ; $63bc: $63
    sbc d                                         ; $63bd: $9a
    jr nz, jr_03c_643b                            ; $63be: $20 $7b

    ld l, $d0                                     ; $63c0: $2e $d0
    or [hl]                                       ; $63c2: $b6
    db $e4                                        ; $63c3: $e4
    ld c, h                                       ; $63c4: $4c
    ld [c], a                                     ; $63c5: $e2
    ld a, [hl+]                                   ; $63c6: $2a
    cpl                                           ; $63c7: $2f
    dec l                                         ; $63c8: $2d
    cp [hl]                                       ; $63c9: $be
    sbc $00                                       ; $63ca: $de $00
    db $dd                                        ; $63cc: $dd
    cpl                                           ; $63cd: $2f
    rst $00                                       ; $63ce: $c7
    ld e, c                                       ; $63cf: $59
    ld e, h                                       ; $63d0: $5c
    push de                                       ; $63d1: $d5
    sbc [hl]                                      ; $63d2: $9e
    nop                                           ; $63d3: $00
    cp l                                          ; $63d4: $bd
    bit 1, e                                      ; $63d5: $cb $4b
    adc $e2                                       ; $63d7: $ce $e2
    jr c, jr_03c_6390                             ; $63d9: $38 $b5

    cp c                                          ; $63db: $b9
    ld [hl], a                                    ; $63dc: $77
    ld [hl], l                                    ; $63dd: $75
    ld c, [hl]                                    ; $63de: $4e
    add hl, hl                                    ; $63df: $29
    ld d, l                                       ; $63e0: $55
    and a                                         ; $63e1: $a7
    ld l, [hl]                                    ; $63e2: $6e
    ld c, d                                       ; $63e3: $4a
    ret z                                         ; $63e4: $c8

    and c                                         ; $63e5: $a1
    rst $08                                       ; $63e6: $cf
    dec de                                        ; $63e7: $1b
    nop                                           ; $63e8: $00
    cp l                                          ; $63e9: $bd
    push hl                                       ; $63ea: $e5
    dec sp                                        ; $63eb: $3b
    dec e                                         ; $63ec: $1d
    adc [hl]                                      ; $63ed: $8e
    cp d                                          ; $63ee: $ba
    cp d                                          ; $63ef: $ba
    ld c, l                                       ; $63f0: $4d
    add hl, bc                                    ; $63f1: $09
    add hl, sp                                    ; $63f2: $39
    db $f4                                        ; $63f3: $f4
    ld a, c                                       ; $63f4: $79
    xor a                                         ; $63f5: $af
    ld l, a                                       ; $63f6: $6f
    ld [$ac2a], a                                 ; $63f7: $ea $2a $ac
    ld d, e                                       ; $63fa: $53
    ld b, a                                       ; $63fb: $47
    adc l                                         ; $63fc: $8d
    ccf                                           ; $63fd: $3f
    ld c, h                                       ; $63fe: $4c
    inc de                                        ; $63ff: $13
    db $e4                                        ; $6400: $e4
    adc b                                         ; $6401: $88
    ld h, e                                       ; $6402: $63
    sbc c                                         ; $6403: $99
    ld a, [hl]                                    ; $6404: $7e
    or c                                          ; $6405: $b1
    push bc                                       ; $6406: $c5
    ld a, c                                       ; $6407: $79
    xor [hl]                                      ; $6408: $ae
    and h                                         ; $6409: $a4

jr_03c_640a:
    ld l, $4a                                     ; $640a: $2e $4a
    ld d, [hl]                                    ; $640c: $56
    inc sp                                        ; $640d: $33
    push af                                       ; $640e: $f5
    ld b, $dd                                     ; $640f: $06 $dd
    cpl                                           ; $6411: $2f
    ld [hl], c                                    ; $6412: $71
    ld d, l                                       ; $6413: $55
    rst $20                                       ; $6414: $e7
    db $db                                        ; $6415: $db
    ld [hl], a                                    ; $6416: $77
    ld c, d                                       ; $6417: $4a
    ld [$73a8], a                                 ; $6418: $ea $a8 $73
    cp b                                          ; $641b: $b8
    ld [hl], e                                    ; $641c: $73
    inc e                                         ; $641d: $1c
    ld c, e                                       ; $641e: $4b
    adc $73                                       ; $641f: $ce $73
    ld a, l                                       ; $6421: $7d
    ld e, $4a                                     ; $6422: $1e $4a
    db $ed                                        ; $6424: $ed
    add hl, bc                                    ; $6425: $09
    nop                                           ; $6426: $00
    sub a                                         ; $6427: $97
    db $e3                                        ; $6428: $e3
    xor a                                         ; $6429: $af
    jr c, jr_03c_643f                             ; $642a: $38 $13

    db $fc                                        ; $642c: $fc
    ld sp, hl                                     ; $642d: $f9
    ld b, h                                       ; $642e: $44
    rst $08                                       ; $642f: $cf
    xor c                                         ; $6430: $a9
    ld l, l                                       ; $6431: $6d
    ret                                           ; $6432: $c9


    add hl, hl                                    ; $6433: $29
    rst $20                                       ; $6434: $e7
    db $f4                                        ; $6435: $f4
    ld [hl], c                                    ; $6436: $71
    ld b, c                                       ; $6437: $41
    sbc d                                         ; $6438: $9a
    ld h, b                                       ; $6439: $60
    db $eb                                        ; $643a: $eb

jr_03c_643b:
    sbc a                                         ; $643b: $9f
    ld a, d                                       ; $643c: $7a
    xor a                                         ; $643d: $af
    ld l, a                                       ; $643e: $6f

jr_03c_643f:
    ld b, e                                       ; $643f: $43
    ret z                                         ; $6440: $c8

    ld h, c                                       ; $6441: $61
    adc $73                                       ; $6442: $ce $73
    dec h                                         ; $6444: $25
    ld [hl], l                                    ; $6445: $75

jr_03c_6446:
    ld a, $75                                     ; $6446: $3e $75
    ld a, [$4e1d]                                 ; $6448: $fa $1d $4e
    ld e, l                                       ; $644b: $5d
    ld [hl], l                                    ; $644c: $75
    inc sp                                        ; $644d: $33
    adc l                                         ; $644e: $8d
    jr jr_03c_640a                                ; $644f: $18 $b9

    ld a, [$f6a1]                                 ; $6451: $fa $a1 $f6
    dec bc                                        ; $6454: $0b
    ld e, a                                       ; $6455: $5f
    ld a, [hl]                                    ; $6456: $7e
    pop bc                                        ; $6457: $c1
    scf                                           ; $6458: $37
    sub h                                         ; $6459: $94
    call nc, Call_000_3ff9                        ; $645a: $d4 $f9 $3f
    jr c, jr_03c_6446                             ; $645d: $38 $e7

    cp c                                          ; $645f: $b9
    ld a, [bc]                                    ; $6460: $0a
    push bc                                       ; $6461: $c5
    cp a                                          ; $6462: $bf
    cp a                                          ; $6463: $bf
    rst $10                                       ; $6464: $d7
    dec sp                                        ; $6465: $3b
    db $eb                                        ; $6466: $eb
    sbc h                                         ; $6467: $9c
    ld [de], a                                    ; $6468: $12
    ld [hl], d                                    ; $6469: $72
    add sp, $13                                   ; $646a: $e8 $13
    cp [hl]                                       ; $646c: $be
    ret z                                         ; $646d: $c8

    ld a, l                                       ; $646e: $7d
    sbc b                                         ; $646f: $98
    sub $97                                       ; $6470: $d6 $97
    xor d                                         ; $6472: $aa
    scf                                           ; $6473: $37
    nop                                           ; $6474: $00
    rla                                           ; $6475: $17
    db $eb                                        ; $6476: $eb
    add d                                         ; $6477: $82
    ld e, h                                       ; $6478: $5c
    jp c, $bcf8                                   ; $6479: $da $f8 $bc

    ld [hl], a                                    ; $647c: $77
    push bc                                       ; $647d: $c5
    scf                                           ; $647e: $37
    db $dd                                        ; $647f: $dd
    xor a                                         ; $6480: $af
    ld h, [hl]                                    ; $6481: $66
    and h                                         ; $6482: $a4
    db $ec                                        ; $6483: $ec
    ld d, a                                       ; $6484: $57
    ld a, [hl]                                    ; $6485: $7e
    and $f5                                       ; $6486: $e6 $f5
    ld b, a                                       ; $6488: $47
    sbc h                                         ; $6489: $9c
    jp $9b15                                      ; $648a: $c3 $15 $9b


    cp h                                          ; $648d: $bc
    ld bc, $737d                                  ; $648e: $01 $7d $73
    call nc, Call_000_3abd                        ; $6491: $d4 $bd $3a
    adc h                                         ; $6494: $8c
    cp c                                          ; $6495: $b9
    add sp, -$54                                  ; $6496: $e8 $ac
    ld a, c                                       ; $6498: $79
    cpl                                           ; $6499: $2f
    sub b                                         ; $649a: $90
    jp nc, $9ab5                                  ; $649b: $d2 $b5 $9a

    db $fd                                        ; $649e: $fd
    ld d, d                                       ; $649f: $52
    ld h, [hl]                                    ; $64a0: $66
    ld [hl], c                                    ; $64a1: $71
    sbc h                                         ; $64a2: $9c
    cp d                                          ; $64a3: $ba
    adc $d7                                       ; $64a4: $ce $d7
    xor c                                         ; $64a6: $a9
    or e                                          ; $64a7: $b3
    ld c, $53                                     ; $64a8: $0e $53
    rla                                           ; $64aa: $17
    ld a, [bc]                                    ; $64ab: $0a
    jp $d617                                      ; $64ac: $c3 $17 $d6


    xor c                                         ; $64af: $a9
    scf                                           ; $64b0: $37
    nop                                           ; $64b1: $00
    rla                                           ; $64b2: $17
    cp l                                          ; $64b3: $bd
    ld l, $d1                                     ; $64b4: $2e $d1
    ld [hl], b                                    ; $64b6: $70
    sub $d5                                       ; $64b7: $d6 $d5
    db $f4                                        ; $64b9: $f4
    db $ed                                        ; $64ba: $ed
    rst $28                                       ; $64bb: $ef
    reti                                          ; $64bc: $d9


    cp a                                          ; $64bd: $bf
    ld [hl], l                                    ; $64be: $75
    ld d, $c7                                     ; $64bf: $16 $c7
    ld sp, hl                                     ; $64c1: $f9
    rla                                           ; $64c2: $17
    push hl                                       ; $64c3: $e5
    ld b, d                                       ; $64c4: $42
    ld l, c                                       ; $64c5: $69
    ld a, [$0037]                                 ; $64c6: $fa $37 $00
    ld a, l                                       ; $64c9: $7d
    ld [hl], e                                    ; $64ca: $73
    dec [hl]                                      ; $64cb: $35
    rla                                           ; $64cc: $17
    ld a, [hl-]                                   ; $64cd: $3a
    ld a, [$119c]                                 ; $64ce: $fa $9c $11
    ld d, d                                       ; $64d1: $52
    ld h, [hl]                                    ; $64d2: $66
    ld [hl], c                                    ; $64d3: $71
    ld e, h                                       ; $64d4: $5c
    push hl                                       ; $64d5: $e5
    xor l                                         ; $64d6: $ad
    xor a                                         ; $64d7: $af
    ei                                            ; $64d8: $fb
    dec b                                         ; $64d9: $05
    rst $18                                       ; $64da: $df
    ld d, b                                       ; $64db: $50
    ld b, [hl]                                    ; $64dc: $46
    adc l                                         ; $64dd: $8d
    add hl, bc                                    ; $64de: $09
    sbc a                                         ; $64df: $9f
    db $fd                                        ; $64e0: $fd
    adc e                                         ; $64e1: $8b
    ld e, b                                       ; $64e2: $58
    ld l, a                                       ; $64e3: $6f
    nop                                           ; $64e4: $00
    db $dd                                        ; $64e5: $dd
    ld l, $3b                                     ; $64e6: $2e $3b
    and b                                         ; $64e8: $a0
    rst $00                                       ; $64e9: $c7
    cp d                                          ; $64ea: $ba
    ld e, l                                       ; $64eb: $5d
    pop hl                                        ; $64ec: $e1
    ld e, b                                       ; $64ed: $58
    ld a, [hl+]                                   ; $64ee: $2a
    call c, $fcaf                                 ; $64ef: $dc $af $fc
    call z, $dfd7                                 ; $64f2: $cc $d7 $df
    inc bc                                        ; $64f5: $03
    nop                                           ; $64f6: $00
    ld bc, $4f14                                  ; $64f7: $01 $14 $4f
    ld h, c                                       ; $64fa: $61
    sbc l                                         ; $64fb: $9d
    cp d                                          ; $64fc: $ba
    sbc b                                         ; $64fd: $98
    ld a, $75                                     ; $64fe: $3e $75
    dec h                                         ; $6500: $25
    ld [hl], l                                    ; $6501: $75
    and c                                         ; $6502: $a1
    jp Jump_000_3a98                              ; $6503: $c3 $98 $3a


    adc e                                         ; $6506: $8b
    db $e3                                        ; $6507: $e3
    ld [hl+], a                                   ; $6508: $22
    sub c                                         ; $6509: $91
    ld [hl], l                                    ; $650a: $75
    ld [$7b8c], a                                 ; $650b: $ea $8c $7b
    db $f4                                        ; $650e: $f4
    cp c                                          ; $650f: $b9
    ret z                                         ; $6510: $c8

    add l                                         ; $6511: $85
    xor l                                         ; $6512: $ad
    inc d                                         ; $6513: $14
    ld [c], a                                     ; $6514: $e2
    dec c                                         ; $6515: $0d
    nop                                           ; $6516: $00
    db $dd                                        ; $6517: $dd
    adc $75                                       ; $6518: $ce $75
    sub h                                         ; $651a: $94
    rst $28                                       ; $651b: $ef
    ld bc, $7600                                  ; $651c: $01 $00 $76
    ld a, [de]                                    ; $651f: $1a
    cp e                                          ; $6520: $bb
    sub $69                                       ; $6521: $d6 $69
    ld b, h                                       ; $6523: $44
    ld hl, sp+$42                                 ; $6524: $f8 $42
    ld c, d                                       ; $6526: $4a
    ld l, $72                                     ; $6527: $2e $72
    and c                                         ; $6529: $a1
    or b                                          ; $652a: $b0
    ld b, d                                       ; $652b: $42
    add h                                         ; $652c: $84
    ld a, [c]                                     ; $652d: $f2
    ld b, $17                                     ; $652e: $06 $17
    db $fd                                        ; $6530: $fd
    adc $f9                                       ; $6531: $ce $f9
    ld a, [$5e77]                                 ; $6533: $fa $77 $5e

jr_03c_6536:
    adc d                                         ; $6536: $8a
    rst $38                                       ; $6537: $ff
    ei                                            ; $6538: $fb
    cp [hl]                                       ; $6539: $be
    cp e                                          ; $653a: $bb
    ld h, c                                       ; $653b: $61
    adc [hl]                                      ; $653c: $8e
    ld a, [de]                                    ; $653d: $1a
    cp e                                          ; $653e: $bb
    ld a, d                                       ; $653f: $7a
    call z, Call_03c_4b9e                         ; $6540: $cc $9e $4b
    dec de                                        ; $6543: $1b
    sbc a                                         ; $6544: $9f
    or e                                          ; $6545: $b3
    jr c, jr_03c_6536                             ; $6546: $38 $ee

    ld d, a                                       ; $6548: $57
    and c                                         ; $6549: $a1
    and c                                         ; $654a: $a1
    ld c, [hl]                                    ; $654b: $4e
    cp a                                          ; $654c: $bf
    ld [hl], b                                    ; $654d: $70
    cp a                                          ; $654e: $bf
    ldh a, [$95]                                  ; $654f: $f0 $95
    cpl                                           ; $6551: $2f
    dec bc                                        ; $6552: $0b
    ld d, e                                       ; $6553: $53
    ld d, [hl]                                    ; $6554: $56

jr_03c_6555:
    ld a, [hl]                                    ; $6555: $7e
    sbc b                                         ; $6556: $98
    ld h, $c8                                     ; $6557: $26 $c8
    ld a, e                                       ; $6559: $7b
    db $dd                                        ; $655a: $dd
    ld a, [$42e6]                                 ; $655b: $fa $e6 $42
    ld b, a                                       ; $655e: $47
    sbc a                                         ; $655f: $9f
    xor e                                         ; $6560: $ab
    ld h, h                                       ; $6561: $64
    xor c                                         ; $6562: $a9
    ld d, b                                       ; $6563: $50
    or $23                                        ; $6564: $f6 $23
    ld b, [hl]                                    ; $6566: $46
    ld a, c                                       ; $6567: $79
    jp hl                                         ; $6568: $e9


    ld bc, $7600                                  ; $6569: $01 $00 $76
    jp z, Jump_03c_7751                           ; $656c: $ca $51 $77

    reti                                          ; $656f: $d9


    push hl                                       ; $6570: $e5
    dec bc                                        ; $6571: $0b
    dec h                                         ; $6572: $25
    dec sp                                        ; $6573: $3b
    add l                                         ; $6574: $85
    push af                                       ; $6575: $f5
    rst $18                                       ; $6576: $df
    nop                                           ; $6577: $00
    db $dd                                        ; $6578: $dd
    ld [bc], a                                    ; $6579: $02
    ld e, e                                       ; $657a: $5b
    ld hl, $969a                                  ; $657b: $21 $9a $96
    dec a                                         ; $657e: $3d
    ld h, [hl]                                    ; $657f: $66
    rst $08                                       ; $6580: $cf
    and l                                         ; $6581: $a5
    adc l                                         ; $6582: $8d
    rst $08                                       ; $6583: $cf
    ld a, l                                       ; $6584: $7d
    add c                                         ; $6585: $81
    ld a, [c]                                     ; $6586: $f2
    ld b, $17                                     ; $6587: $06 $17
    dec d                                         ; $6589: $15
    ld d, [hl]                                    ; $658a: $56
    ld [hl], d                                    ; $658b: $72
    pop bc                                        ; $658c: $c1
    sub h                                         ; $658d: $94
    rst $10                                       ; $658e: $d7
    cp l                                          ; $658f: $bd
    push bc                                       ; $6590: $c5
    reti                                          ; $6591: $d9


    call c, $9beb                                 ; $6592: $dc $eb $9b
    xor e                                         ; $6595: $ab
    cp c                                          ; $6596: $b9
    scf                                           ; $6597: $37
    adc [hl]                                      ; $6598: $8e
    ld [c], a                                     ; $6599: $e2
    ld [hl], e                                    ; $659a: $73
    sbc [hl]                                      ; $659b: $9e
    ld h, l                                       ; $659c: $65
    ld a, [$7318]                                 ; $659d: $fa $18 $73
    sub $29                                       ; $65a0: $d6 $29
    rrca                                          ; $65a2: $0f
    cp $1b                                        ; $65a3: $fe $1b
    nop                                           ; $65a5: $00
    halt                                          ; $65a6: $76
    cp d                                          ; $65a7: $ba
    ld b, e                                       ; $65a8: $43
    add e                                         ; $65a9: $83
    ld l, c                                       ; $65aa: $69
    sbc d                                         ; $65ab: $9a
    ret                                           ; $65ac: $c9


    ld a, c                                       ; $65ad: $79
    adc $50                                       ; $65ae: $ce $50
    ld a, h                                       ; $65b0: $7c
    ld e, $7a                                     ; $65b1: $1e $7a
    xor a                                         ; $65b3: $af
    ld l, a                                       ; $65b4: $6f
    ld [$9122], a                                 ; $65b5: $ea $22 $91
    ld [hl], l                                    ; $65b8: $75
    ld [$8e2c], a                                 ; $65b9: $ea $2c $8e
    ld l, e                                       ; $65bc: $6b
    or d                                          ; $65bd: $b2
    sbc a                                         ; $65be: $9f
    jp $8b69                                      ; $65bf: $c3 $69 $8b


    dec l                                         ; $65c2: $2d
    pop hl                                        ; $65c3: $e1
    db $eb                                        ; $65c4: $eb
    bit 1, d                                      ; $65c5: $cb $4a
    dec hl                                        ; $65c7: $2b
    add l                                         ; $65c8: $85
    ldh a, [$15]                                  ; $65c9: $f0 $15
    ld b, a                                       ; $65cb: $47
    jr z, jr_03c_6555                             ; $65cc: $28 $87

    xor c                                         ; $65ce: $a9
    xor e                                         ; $65cf: $ab
    or b                                          ; $65d0: $b0
    ld c, [hl]                                    ; $65d1: $4e
    cp l                                          ; $65d2: $bd
    ld bc, $fadd                                  ; $65d3: $01 $dd $fa
    and $6a                                       ; $65d6: $e6 $6a
    adc $b3                                       ; $65d8: $ce $b3
    ld e, a                                       ; $65da: $5f
    push de                                       ; $65db: $d5
    and [hl]                                      ; $65dc: $a6
    ld a, e                                       ; $65dd: $7b
    adc e                                         ; $65de: $8b
    or e                                          ; $65df: $b3
    jp hl                                         ; $65e0: $e9


    ld bc, $dd00                                  ; $65e1: $01 $00 $dd
    ld a, [$fdb6]                                 ; $65e4: $fa $b6 $fd
    ld l, d                                       ; $65e7: $6a
    sbc e                                         ; $65e8: $9b
    ld e, $00                                     ; $65e9: $1e $00
    halt                                          ; $65eb: $76
    ld a, [de]                                    ; $65ec: $1a
    cp e                                          ; $65ed: $bb
    sub $69                                       ; $65ee: $d6 $69
    ld b, h                                       ; $65f0: $44
    ld hl, sp+$2a                                 ; $65f1: $f8 $2a
    call nz, $17e6                                ; $65f3: $c4 $e6 $17
    ld d, d                                       ; $65f6: $52
    ld [hl], d                                    ; $65f7: $72
    call nc, Call_03c_7ef8                        ; $65f8: $d4 $f8 $7e
    and $4b                                       ; $65fb: $e6 $4b
    ld a, c                                       ; $65fd: $79
    sbc a                                         ; $65fe: $9f
    ld a, d                                       ; $65ff: $7a
    inc bc                                        ; $6600: $03
    halt                                          ; $6601: $76
    sbc d                                         ; $6602: $9a
    and e                                         ; $6603: $a3
    sbc $eb                                       ; $6604: $de $eb
    db $d3                                        ; $6606: $d3
    db $e4                                        ; $6607: $e4
    db $fd                                        ; $6608: $fd
    jp nz, Jump_03c_6994                          ; $6609: $c2 $94 $69

    ld e, e                                       ; $660c: $5b
    and l                                         ; $660d: $a5
    ld de, $eb89                                  ; $660e: $11 $89 $eb
    di                                            ; $6611: $f3
    and l                                         ; $6612: $a5
    ld a, [hl-]                                   ; $6613: $3a
    xor l                                         ; $6614: $ad
    or e                                          ; $6615: $b3
    xor [hl]                                      ; $6616: $ae
    or a                                          ; $6617: $b7
    ld a, h                                       ; $6618: $7c
    and a                                         ; $6619: $a7
    jp $001b                                      ; $661a: $c3 $1b $00


    rla                                           ; $661d: $17
    sub a                                         ; $661e: $97

Jump_03c_661f:
    ld [$fc8f], a                                 ; $661f: $ea $8f $fc
    add l                                         ; $6622: $85
    add hl, hl                                    ; $6623: $29
    ld a, e                                       ; $6624: $7b
    adc e                                         ; $6625: $8b
    or e                                          ; $6626: $b3
    add c                                         ; $6627: $81
    rst $08                                       ; $6628: $cf
    ld [c], a                                     ; $6629: $e2
    jr z, @-$31                                   ; $662a: $28 $cd

    ccf                                           ; $662c: $3f
    ld a, h                                       ; $662d: $7c
    call nc, Call_03c_44f9                        ; $662e: $d4 $f9 $44
    rst $08                                       ; $6631: $cf
    or c                                          ; $6632: $b1
    xor h                                         ; $6633: $ac
    ld e, a                                       ; $6634: $5f
    ld d, [hl]                                    ; $6635: $56
    adc b                                         ; $6636: $88
    db $eb                                        ; $6637: $eb
    di                                            ; $6638: $f3
    and l                                         ; $6639: $a5
    ld a, [hl-]                                   ; $663a: $3a
    xor l                                         ; $663b: $ad
    di                                            ; $663c: $f3
    xor l                                         ; $663d: $ad
    ld e, a                                       ; $663e: $5f
    adc $e2                                       ; $663f: $ce $e2
    jr c, @+$6c                                   ; $6641: $38 $6a

    ld a, h                                       ; $6643: $7c
    or c                                          ; $6644: $b1
    ld a, c                                       ; $6645: $79
    cp h                                          ; $6646: $bc
    ld bc, $da7d                                  ; $6647: $01 $7d $da
    dec sp                                        ; $664a: $3b
    ld [hl], a                                    ; $664b: $77
    rst $18                                       ; $664c: $df
    scf                                           ; $664d: $37
    nop                                           ; $664e: $00
    db $dd                                        ; $664f: $dd
    ld a, d                                       ; $6650: $7a
    ld e, c                                       ; $6651: $59
    sbc h                                         ; $6652: $9c
    call $b1a8                                    ; $6653: $cd $a8 $b1
    xor e                                         ; $6656: $ab
    add hl, hl                                    ; $6657: $29
    ld a, h                                       ; $6658: $7c
    xor c                                         ; $6659: $a9
    dec bc                                        ; $665a: $0b
    ld [hl], d                                    ; $665b: $72
    ld h, c                                       ; $665c: $61
    dec hl                                        ; $665d: $2b
    push hl                                       ; $665e: $e5
    ld a, l                                       ; $665f: $7d
    or $00                                        ; $6660: $f6 $00
    db $dd                                        ; $6662: $dd
    cpl                                           ; $6663: $2f
    ld [hl], c                                    ; $6664: $71
    ld d, l                                       ; $6665: $55
    ld b, a                                       ; $6666: $47
    adc l                                         ; $6667: $8d
    rst $18                                       ; $6668: $df
    ld sp, hl                                     ; $6669: $f9

jr_03c_666a:
    and [hl]                                      ; $666a: $a6
    dec bc                                        ; $666b: $0b
    cp [hl]                                       ; $666c: $be
    ld l, c                                       ; $666d: $69
    ld b, h                                       ; $666e: $44
    sbc a                                         ; $666f: $9f
    adc e                                         ; $6670: $8b
    jp hl                                         ; $6671: $e9


    ld d, e                                       ; $6672: $53
    ld d, a                                       ; $6673: $57
    db $ed                                        ; $6674: $ed
    jr z, jr_03c_66b6                             ; $6675: $28 $3f

    rst $08                                       ; $6677: $cf
    ld [hl-], a                                   ; $6678: $32
    sbc a                                         ; $6679: $9f
    ld d, d                                       ; $667a: $52
    or a                                          ; $667b: $b7
    sbc b                                         ; $667c: $98
    jp nc, Jump_000_3f72                          ; $667d: $d2 $72 $3f

    ld l, d                                       ; $6680: $6a
    ld a, h                                       ; $6681: $7c
    ld e, l                                       ; $6682: $5d
    jr nc, jr_03c_666a                            ; $6683: $30 $e5

    or l                                          ; $6685: $b5
    daa                                           ; $6686: $27
    nop                                           ; $6687: $00
    ld h, a                                       ; $6688: $67
    dec sp                                        ; $6689: $3b
    ld h, d                                       ; $668a: $62
    jp nz, Jump_03c_7357                          ; $668b: $c2 $57 $73

    ld e, c                                       ; $668e: $59
    ld a, [hl+]                                   ; $668f: $2a
    call $9d57                                    ; $6690: $cd $57 $9d
    ld h, a                                       ; $6693: $67
    sbc c                                         ; $6694: $99
    ld a, $c6                                     ; $6695: $3e $c6
    sbc h                                         ; $6697: $9c
    ld [hl], l                                    ; $6698: $75
    jp z, $ff83                                   ; $6699: $ca $83 $ff

    cp [hl]                                       ; $669c: $be
    ld l, a                                       ; $669d: $6f
    nop                                           ; $669e: $00
    db $dd                                        ; $669f: $dd

Jump_03c_66a0:
    ld [bc], a                                    ; $66a0: $02
    ld e, e                                       ; $66a1: $5b
    ld hl, $969a                                  ; $66a2: $21 $9a $96
    dec a                                         ; $66a5: $3d
    ld h, [hl]                                    ; $66a6: $66
    and a                                         ; $66a7: $a7
    pop af                                        ; $66a8: $f1
    ld b, a                                       ; $66a9: $47
    sbc l                                         ; $66aa: $9d
    jp $c35f                                      ; $66ab: $c3 $5f $c3


    ld l, d                                       ; $66ae: $6a
    ld a, c                                       ; $66af: $79
    ld h, e                                       ; $66b0: $63
    sbc d                                         ; $66b1: $9a
    dec l                                         ; $66b2: $2d
    ld c, $92                                     ; $66b3: $0e $92
    xor a                                         ; $66b5: $af

jr_03c_66b6:
    ldh a, [$de]                                  ; $66b6: $f0 $de
    ld sp, $2f47                                  ; $66b8: $31 $47 $2f
    ld [hl], h                                    ; $66bb: $74
    jr jr_03c_6711                                ; $66bc: $18 $53

    ld d, a                                       ; $66be: $57
    inc de                                        ; $66bf: $13
    ld d, e                                       ; $66c0: $53
    rla                                           ; $66c1: $17
    cp [hl]                                       ; $66c2: $be
    db $fc                                        ; $66c3: $fc
    adc $13                                       ; $66c4: $ce $13
    ld l, e                                       ; $66c6: $6b
    ld [hl], l                                    ; $66c7: $75
    ld [hl], l                                    ; $66c8: $75
    ld b, e                                       ; $66c9: $43
    sbc a                                         ; $66ca: $9f
    ld [hl-], a                                   ; $66cb: $32
    db $eb                                        ; $66cc: $eb
    xor b                                         ; $66cd: $a8
    or c                                          ; $66ce: $b1
    xor e                                         ; $66cf: $ab
    jp hl                                         ; $66d0: $e9


    call z, Call_03c_6c6b                         ; $66d1: $cc $6b $6c
    ret nc                                        ; $66d4: $d0

    ei                                            ; $66d5: $fb
    call nc, $817b                                ; $66d6: $d4 $7b $81
    add h                                         ; $66d9: $84
    sbc h                                         ; $66da: $9c
    db $e4                                        ; $66db: $e4
    inc l                                         ; $66dc: $2c
    adc [hl]                                      ; $66dd: $8e
    dec hl                                        ; $66de: $2b
    ccf                                           ; $66df: $3f
    push hl                                       ; $66e0: $e5
    pop bc                                        ; $66e1: $c1
    add hl, hl                                    ; $66e2: $29
    cp a                                          ; $66e3: $bf
    add b                                         ; $66e4: $80
    xor h                                         ; $66e5: $ac
    xor e                                         ; $66e6: $ab
    add l                                         ; $66e7: $85
    sub $51                                       ; $66e8: $d6 $51
    db $e3                                        ; $66ea: $e3
    ld c, e                                       ; $66eb: $4b
    rst $10                                       ; $66ec: $d7
    adc b                                         ; $66ed: $88
    and $31                                       ; $66ee: $e6 $31
    cp [hl]                                       ; $66f0: $be
    rst $38                                       ; $66f1: $ff
    sbc c                                         ; $66f2: $99
    call nz, Call_000_1c55                        ; $66f3: $c4 $55 $1c
    dec [hl]                                      ; $66f6: $35
    jp z, $adef                                   ; $66f7: $ca $ef $ad

    adc $ff                                       ; $66fa: $ce $ff
    ld [$f83f], a                                 ; $66fc: $ea $3f $f8
    pop af                                        ; $66ff: $f1
    rst $28                                       ; $6700: $ef
    ei                                            ; $6701: $fb
    ld [hl], $ee                                  ; $6702: $36 $ee
    pop de                                        ; $6704: $d1
    rst $20                                       ; $6705: $e7
    ld c, d                                       ; $6706: $4a
    xor e                                         ; $6707: $ab
    jp $b556                                      ; $6708: $c3 $56 $b5


    jp hl                                         ; $670b: $e9


    jp z, $bf4f                                   ; $670c: $ca $4f $bf

    db $fc                                        ; $670f: $fc
    inc a                                         ; $6710: $3c

jr_03c_6711:
    sub a                                         ; $6711: $97
    jp nc, $0bf0                                  ; $6712: $d2 $f0 $0b

    push af                                       ; $6715: $f5
    ld b, $dd                                     ; $6716: $06 $dd
    ld l, $fa                                     ; $6718: $2e $fa
    jp hl                                         ; $671a: $e9


    sub a                                         ; $671b: $97
    sbc a                                         ; $671c: $9f
    rst $20                                       ; $671d: $e7
    ld d, d                                       ; $671e: $52
    ld a, [de]                                    ; $671f: $1a
    ld a, [hl]                                    ; $6720: $7e
    and c                                         ; $6721: $a1
    or $00                                        ; $6722: $f6 $00
    db $dd                                        ; $6724: $dd
    ld [bc], a                                    ; $6725: $02
    call c, $ebf7                                 ; $6726: $dc $f7 $eb
    rst $10                                       ; $6729: $d7
    inc bc                                        ; $672a: $03
    nop                                           ; $672b: $00
    cp l                                          ; $672c: $bd
    add d                                         ; $672d: $82
    add hl, hl                                    ; $672e: $29
    cp a                                          ; $672f: $bf
    ld c, d                                       ; $6730: $4a
    sub [hl]                                      ; $6731: $96
    ld a, [bc]                                    ; $6732: $0a
    db $fd                                        ; $6733: $fd
    ld a, [hl]                                    ; $6734: $7e
    dec d                                         ; $6735: $15
    ld b, a                                       ; $6736: $47
    adc l                                         ; $6737: $8d
    sub d                                         ; $6738: $92
    ld a, [hl-]                                   ; $6739: $3a
    sbc a                                         ; $673a: $9f
    ld d, d                                       ; $673b: $52
    or a                                          ; $673c: $b7
    sbc b                                         ; $673d: $98
    jp nc, $6f52                                  ; $673e: $d2 $52 $6f

    nop                                           ; $6741: $00
    db $dd                                        ; $6742: $dd
    ld a, [$42e6]                                 ; $6743: $fa $e6 $42
    ld c, d                                       ; $6746: $4a
    db $dd                                        ; $6747: $dd
    ld h, d                                       ; $6748: $62
    sub e                                         ; $6749: $93
    xor d                                         ; $674a: $aa
    and e                                         ; $674b: $a3
    add $1c                                       ; $674c: $c6 $1c
    ld a, [hl-]                                   ; $674e: $3a
    inc [hl]                                      ; $674f: $34
    cp a                                          ; $6750: $bf
    cp d                                          ; $6751: $ba
    ld c, e                                       ; $6752: $4b
    ld a, e                                       ; $6753: $7b
    db $ec                                        ; $6754: $ec
    sbc b                                         ; $6755: $98
    and e                                         ; $6756: $a3
    rla                                           ; $6757: $17
    ld a, [hl-]                                   ; $6758: $3a
    adc h                                         ; $6759: $8c
    xor c                                         ; $675a: $a9
    xor e                                         ; $675b: $ab
    adc c                                         ; $675c: $89
    xor c                                         ; $675d: $a9
    dec bc                                        ; $675e: $0b
    ld e, a                                       ; $675f: $5f
    ld a, [hl]                                    ; $6760: $7e
    rst $20                                       ; $6761: $e7
    adc c                                         ; $6762: $89
    or l                                          ; $6763: $b5
    cp d                                          ; $6764: $ba
    cp d                                          ; $6765: $ba
    and c                                         ; $6766: $a1
    ld c, a                                       ; $6767: $4f
    cp c                                          ; $6768: $b9
    ld [hl], a                                    ; $6769: $77
    push af                                       ; $676a: $f5
    ld a, $98                                     ; $676b: $3e $98
    ld a, [c]                                     ; $676d: $f2
    xor e                                         ; $676e: $ab
    ld h, h                                       ; $676f: $64
    xor c                                         ; $6770: $a9
    ret nc                                        ; $6771: $d0

    rst $28                                       ; $6772: $ef
    ld d, a                                       ; $6773: $57
    ld [hl], c                                    ; $6774: $71
    call nc, $a928                                ; $6775: $d4 $28 $a9
    di                                            ; $6778: $f3
    add hl, hl                                    ; $6779: $29
    ld [hl], l                                    ; $677a: $75
    adc e                                         ; $677b: $8b
    add hl, hl                                    ; $677c: $29
    dec l                                         ; $677d: $2d
    push af                                       ; $677e: $f5
    ld b, $dd                                     ; $677f: $06 $dd
    db $ed                                        ; $6781: $ed
    ld e, a                                       ; $6782: $5f
    ld b, a                                       ; $6783: $47
    inc [hl]                                      ; $6784: $34
    adc c                                         ; $6785: $89
    ld d, c                                       ; $6786: $51
    sbc $e7                                       ; $6787: $de $e7
    jp z, Jump_000_3aaf                           ; $6789: $ca $af $3a

    and l                                         ; $678c: $a5
    cp $79                                        ; $678d: $fe $79
    xor [hl]                                      ; $678f: $ae
    inc d                                         ; $6790: $14
    ld b, d                                       ; $6791: $42
    cpl                                           ; $6792: $2f
    dec bc                                        ; $6793: $0b
    cp [hl]                                       ; $6794: $be
    add $5f                                       ; $6795: $c6 $5f
    ld sp, hl                                     ; $6797: $f9
    dec b                                         ; $6798: $05
    inc [hl]                                      ; $6799: $34
    ld a, d                                       ; $679a: $7a
    ld sp, hl                                     ; $679b: $f9
    sbc l                                         ; $679c: $9d
    db $db                                        ; $679d: $db
    ld c, d                                       ; $679e: $4a
    ld l, d                                       ; $679f: $6a
    ld d, [hl]                                    ; $67a0: $56
    ld a, a                                       ; $67a1: $7f
    jp hl                                         ; $67a2: $e9


    add hl, bc                                    ; $67a3: $09
    nop                                           ; $67a4: $00
    ld a, l                                       ; $67a5: $7d
    adc a                                         ; $67a6: $8f
    call nz, $3123                                ; $67a7: $c4 $23 $31
    rst $28                                       ; $67aa: $ef
    ei                                            ; $67ab: $fb
    xor $9b                                       ; $67ac: $ee $9b
    dec bc                                        ; $67ae: $0b
    adc a                                         ; $67af: $8f
    inc c                                         ; $67b0: $0c
    adc a                                         ; $67b1: $8f
    inc c                                         ; $67b2: $0c
    dec e                                         ; $67b3: $1d
    ld a, l                                       ; $67b4: $7d
    sbc $f7                                       ; $67b5: $de $f7
    dec c                                         ; $67b7: $0d
    nop                                           ; $67b8: $00
    cp l                                          ; $67b9: $bd
    jp z, Jump_03c_626a                           ; $67ba: $ca $6a $62

    ld [$ab7c], a                                 ; $67bd: $ea $7c $ab
    add hl, sp                                    ; $67c0: $39
    ld h, e                                       ; $67c1: $63
    ld e, e                                       ; $67c2: $5b
    rst $20                                       ; $67c3: $e7
    adc h                                         ; $67c4: $8c
    cp b                                          ; $67c5: $b8
    cp $2f                                        ; $67c6: $fe $2f
    adc e                                         ; $67c8: $8b
    ld l, [hl]                                    ; $67c9: $6e
    ld hl, $8e2d                                  ; $67ca: $21 $2d $8e
    rlca                                          ; $67cd: $07
    rst $20                                       ; $67ce: $e7
    jp nz, Jump_000_0fd7                          ; $67cf: $c2 $d7 $0f

    ld e, a                                       ; $67d2: $5f
    rst $38                                       ; $67d3: $ff
    ld b, $01                                     ; $67d4: $06 $01
    ld b, a                                       ; $67d6: $47
    add [hl]                                      ; $67d7: $86
    ld b, a                                       ; $67d8: $47
    add [hl]                                      ; $67d9: $86
    sub h                                         ; $67da: $94
    inc e                                         ; $67db: $1c
    dec [hl]                                      ; $67dc: $35
    and a                                         ; $67dd: $a7
    inc d                                         ; $67de: $14
    sbc e                                         ; $67df: $9b
    ld e, a                                       ; $67e0: $5f
    inc a                                         ; $67e1: $3c
    ld [hl-], a                                   ; $67e2: $32
    ld e, $19                                     ; $67e3: $1e $19
    push hl                                       ; $67e5: $e5
    sbc e                                         ; $67e6: $9b
    ld l, c                                       ; $67e7: $69
    or [hl]                                       ; $67e8: $b6
    ld a, b                                       ; $67e9: $78
    rst $18                                       ; $67ea: $df
    scf                                           ; $67eb: $37
    nop                                           ; $67ec: $00
    or $df                                        ; $67ed: $f6 $df
    add hl, hl                                    ; $67ef: $29
    cpl                                           ; $67f0: $2f
    xor h                                         ; $67f1: $ac
    ld d, e                                       ; $67f2: $53
    rst $20                                       ; $67f3: $e7
    add hl, sp                                    ; $67f4: $39
    ld [hl], h                                    ; $67f5: $74
    xor h                                         ; $67f6: $ac
    db $e4                                        ; $67f7: $e4
    adc h                                         ; $67f8: $8c
    ld a, e                                       ; $67f9: $7b
    db $f4                                        ; $67fa: $f4
    add hl, sp                                    ; $67fb: $39
    ld c, a                                       ; $67fc: $4f
    db $d3                                        ; $67fd: $d3
    db $fc                                        ; $67fe: $fc
    db $eb                                        ; $67ff: $eb
    ld a, [hl]                                    ; $6800: $7e
    ld d, $d7                                     ; $6801: $16 $d7
    xor d                                         ; $6803: $aa
    ld [c], a                                     ; $6804: $e2
    ld a, [bc]                                    ; $6805: $0a
    ld b, a                                       ; $6806: $47
    and c                                         ; $6807: $a1
    xor [hl]                                      ; $6808: $ae
    ldh a, [$cb]                                  ; $6809: $f0 $cb
    dec c                                         ; $680b: $0d
    nop                                           ; $680c: $00
    rst $20                                       ; $680d: $e7
    ret                                           ; $680e: $c9


    sbc e                                         ; $680f: $9b
    or $ba                                        ; $6810: $f6 $ba
    sbc a                                         ; $6812: $9f
    ld l, a                                       ; $6813: $6f
    xor c                                         ; $6814: $a9
    or e                                          ; $6815: $b3
    jr c, jr_03c_6826                             ; $6816: $38 $0e

    ld [hl], e                                    ; $6818: $73
    sbc b                                         ; $6819: $98
    cp d                                          ; $681a: $ba
    ldh [$e3], a                                  ; $681b: $e0 $e3
    ld a, [hl+]                                   ; $681d: $2a
    ld c, l                                       ; $681e: $4d
    ld h, e                                       ; $681f: $63
    sbc $00                                       ; $6820: $de $00
    db $dd                                        ; $6822: $dd
    cpl                                           ; $6823: $2f
    ld [hl], c                                    ; $6824: $71
    ld d, l                                       ; $6825: $55

jr_03c_6826:
    ld b, a                                       ; $6826: $47
    ld e, l                                       ; $6827: $5d
    ld sp, hl                                     ; $6828: $f9
    dec b                                         ; $6829: $05
    inc [hl]                                      ; $682a: $34
    ld a, d                                       ; $682b: $7a
    ld sp, hl                                     ; $682c: $f9
    sbc l                                         ; $682d: $9d
    db $db                                        ; $682e: $db
    ld c, d                                       ; $682f: $4a
    ld l, d                                       ; $6830: $6a
    ld d, [hl]                                    ; $6831: $56
    ld a, a                                       ; $6832: $7f
    jp hl                                         ; $6833: $e9


    add hl, bc                                    ; $6834: $09
    nop                                           ; $6835: $00
    ld a, l                                       ; $6836: $7d
    ld [hl], e                                    ; $6837: $73
    dec h                                         ; $6838: $25
    and a                                         ; $6839: $a7
    ld d, l                                       ; $683a: $55
    pop hl                                        ; $683b: $e1
    db $eb                                        ; $683c: $eb
    ld d, $52                                     ; $683d: $16 $52
    ld [hl], d                                    ; $683f: $72
    add c                                         ; $6840: $81
    ld hl, sp+$21                                 ; $6841: $f8 $21
    ld h, a                                       ; $6843: $67
    ld [hl], c                                    ; $6844: $71
    adc l                                         ; $6845: $8d
    jp nz, Jump_03c_7649                          ; $6846: $c2 $49 $76

    ld e, [hl]                                    ; $6849: $5e
    jp z, Jump_000_00f7                           ; $684a: $ca $f7 $00

    db $dd                                        ; $684d: $dd
    adc $6d                                       ; $684e: $ce $6d
    push bc                                       ; $6850: $c5
    inc b                                         ; $6851: $04
    ld a, e                                       ; $6852: $7b
    xor h                                         ; $6853: $ac
    ld l, a                                       ; $6854: $6f
    ld [$ac82], a                                 ; $6855: $ea $82 $ac
    ld d, e                                       ; $6858: $53
    sub a                                         ; $6859: $97
    and l                                         ; $685a: $a5
    jp nc, $fbfc                                  ; $685b: $d2 $fc $fb

    sbc h                                         ; $685e: $9c
    rst $20                                       ; $685f: $e7
    xor d                                         ; $6860: $aa
    sub [hl]                                      ; $6861: $96
    dec de                                        ; $6862: $1b
    nop                                           ; $6863: $00
    sub a                                         ; $6864: $97
    halt                                          ; $6865: $76
    add l                                         ; $6866: $85
    call Call_03c_7de7                            ; $6867: $cd $e7 $7d
    rst $18                                       ; $686a: $df
    ld d, h                                       ; $686b: $54
    sub e                                         ; $686c: $93
    add sp, -$67                                  ; $686d: $e8 $99
    ld a, d                                       ; $686f: $7a
    inc bc                                        ; $6870: $03
    or $47                                        ; $6871: $f6 $47
    jp c, Jump_03c_691f                           ; $6873: $da $1f $69

jr_03c_6876:
    rst $38                                       ; $6876: $ff
    ld [hl+], a                                   ; $6877: $22
    sub $fb                                       ; $6878: $d6 $fb
    cp [hl]                                       ; $687a: $be
    cp e                                          ; $687b: $bb
    push de                                       ; $687c: $d5
    ld b, a                                       ; $687d: $47
    sub $47                                       ; $687e: $d6 $47
    sub $4d                                       ; $6880: $d6 $4d
    cp [hl]                                       ; $6882: $be
    rlca                                          ; $6883: $07
    nop                                           ; $6884: $00

jr_03c_6885:
    rst $20                                       ; $6885: $e7
    ld [hl], b                                    ; $6886: $70
    dec d                                         ; $6887: $15
    adc d                                         ; $6888: $8a
    ld a, a                                       ; $6889: $7f
    ccf                                           ; $688a: $3f
    adc e                                         ; $688b: $8b
    db $e3                                        ; $688c: $e3
    jr nc, jr_03c_6876                            ; $688d: $30 $e7

    reti                                          ; $688f: $d9


    and c                                         ; $6890: $a1
    ret c                                         ; $6891: $d8

    cp h                                          ; $6892: $bc
    ld c, [hl]                                    ; $6893: $4e
    ld l, b                                       ; $6894: $68
    inc hl                                        ; $6895: $23
    sub c                                         ; $6896: $91
    di                                            ; $6897: $f3
    ld e, h                                       ; $6898: $5c
    ld sp, hl                                     ; $6899: $f9
    ld d, l                                       ; $689a: $55
    and a                                         ; $689b: $a7
    call nc, $cf3f                                ; $689c: $d4 $3f $cf
    dec b                                         ; $689f: $05
    cp a                                          ; $68a0: $bf
    ld d, e                                       ; $68a1: $53
    ld e, [hl]                                    ; $68a2: $5e
    and $b9                                       ; $68a3: $e6 $b9
    ld c, e                                       ; $68a5: $4b
    ld e, h                                       ; $68a6: $5c
    inc de                                        ; $68a7: $13
    ld h, c                                       ; $68a8: $61
    add hl, hl                                    ; $68a9: $29
    scf                                           ; $68aa: $37
    nop                                           ; $68ab: $00
    db $dd                                        ; $68ac: $dd
    ld a, [$8f66]                                 ; $68ad: $fa $66 $8f
    ld [hl], l                                    ; $68b0: $75
    db $eb                                        ; $68b1: $eb
    db $d3                                        ; $68b2: $d3
    db $e4                                        ; $68b3: $e4
    ld a, l                                       ; $68b4: $7d
    rrca                                          ; $68b5: $0f
    nop                                           ; $68b6: $00
    db $dd                                        ; $68b7: $dd
    adc $75                                       ; $68b8: $ce $75
    sub h                                         ; $68ba: $94
    rst $28                                       ; $68bb: $ef
    or c                                          ; $68bc: $b1
    ld l, [hl]                                    ; $68bd: $6e
    ld bc, $eac2                                  ; $68be: $01 $c2 $ea
    ld b, [hl]                                    ; $68c1: $46
    ret                                           ; $68c2: $c9


    ld de, $85ab                                  ; $68c3: $11 $ab $85
    jr jr_03c_6927                                ; $68c6: $18 $5f

    ld l, d                                       ; $68c8: $6a
    xor $77                                       ; $68c9: $ee $77
    ld l, [hl]                                    ; $68cb: $6e
    dec hl                                        ; $68cc: $2b
    ld h, $38                                     ; $68cd: $26 $38
    adc e                                         ; $68cf: $8b
    db $e3                                        ; $68d0: $e3
    ld a, [hl]                                    ; $68d1: $7e
    call nc, $499f                                ; $68d2: $d4 $9f $49
    db $fd                                        ; $68d5: $fd
    ld e, $00                                     ; $68d6: $1e $00
    db $dd                                        ; $68d8: $dd
    inc bc                                        ; $68d9: $03
    ld d, d                                       ; $68da: $52
    ld h, [hl]                                    ; $68db: $66
    ld [hl], c                                    ; $68dc: $71
    ld d, l                                       ; $68dd: $55
    rla                                           ; $68de: $17
    dec de                                        ; $68df: $1b
    sub c                                         ; $68e0: $91
    jr c, jr_03c_6885                             ; $68e1: $38 $a2

    and c                                         ; $68e3: $a1
    ret z                                         ; $68e4: $c8

    ei                                            ; $68e5: $fb
    rra                                           ; $68e6: $1f
    push af                                       ; $68e7: $f5
    ld h, a                                       ; $68e8: $67
    ld d, d                                       ; $68e9: $52
    ld a, a                                       ; $68ea: $7f
    call nz, $ccb1                                ; $68eb: $c4 $b1 $cc
    ld h, h                                       ; $68ee: $64
    ld hl, $b2d4                                  ; $68ef: $21 $d4 $b2
    daa                                           ; $68f2: $27
    nop                                           ; $68f3: $00
    db $dd                                        ; $68f4: $dd
    ei                                            ; $68f5: $fb
    and $2a                                       ; $68f6: $e6 $2a
    ld c, l                                       ; $68f8: $4d
    inc hl                                        ; $68f9: $23
    sbc e                                         ; $68fa: $9b
    xor [hl]                                      ; $68fb: $ae
    db $fc                                        ; $68fc: $fc
    and d                                         ; $68fd: $a2
    ld a, h                                       ; $68fe: $7c
    dec e                                         ; $68ff: $1d
    or [hl]                                       ; $6900: $b6
    ld d, d                                       ; $6901: $52
    ld a, [hl]                                    ; $6902: $7e
    sbc d                                         ; $6903: $9a
    dec e                                         ; $6904: $1d

Jump_03c_6905:
    pop hl                                        ; $6905: $e1

jr_03c_6906:
    jp z, $e2cf                                   ; $6906: $ca $cf $e2

    jr c, jr_03c_6975                             ; $6909: $38 $6a

    db $fc                                        ; $690b: $fc
    adc $f7                                       ; $690c: $ce $f7
    sbc h                                         ; $690e: $9c
    sbc l                                         ; $690f: $9d
    add $ef                                       ; $6910: $c6 $ef
    db $fc                                        ; $6912: $fc
    ld a, [hl+]                                   ; $6913: $2a
    dec c                                         ; $6914: $0d
    ld l, d                                       ; $6915: $6a
    push hl                                       ; $6916: $e5
    pop de                                        ; $6917: $d1
    rst $20                                       ; $6918: $e7
    cp [hl]                                       ; $6919: $be
    ld b, b                                       ; $691a: $40
    ld a, c                                       ; $691b: $79
    inc bc                                        ; $691c: $03
    db $dd                                        ; $691d: $dd
    ld [bc], a                                    ; $691e: $02

Jump_03c_691f:
    add hl, bc                                    ; $691f: $09
    add hl, sp                                    ; $6920: $39
    ret                                           ; $6921: $c9


    ld e, c                                       ; $6922: $59
    inc e                                         ; $6923: $1c
    ld b, a                                       ; $6924: $47
    adc l                                         ; $6925: $8d
    rst $18                                       ; $6926: $df

jr_03c_6927:
    ld sp, hl                                     ; $6927: $f9
    ld b, c                                       ; $6928: $41
    xor $c5                                       ; $6929: $ee $c5
    ccf                                           ; $692b: $3f
    ld a, [$f95c]                                 ; $692c: $fa $5c $f9
    dec b                                         ; $692f: $05
    inc [hl]                                      ; $6930: $34
    ld a, d                                       ; $6931: $7a
    ld sp, hl                                     ; $6932: $f9
    sbc l                                         ; $6933: $9d
    db $db                                        ; $6934: $db
    ld c, d                                       ; $6935: $4a
    ld l, d                                       ; $6936: $6a
    ld d, [hl]                                    ; $6937: $56
    ld a, a                                       ; $6938: $7f
    jp hl                                         ; $6939: $e9


    ld bc, $7600                                  ; $693a: $01 $00 $76
    ld a, [de]                                    ; $693d: $1a
    ld [hl], e                                    ; $693e: $73
    call nc, Call_000_2c85                        ; $693f: $d4 $85 $2c
    dec c                                         ; $6942: $0d
    sub d                                         ; $6943: $92
    call nc, $759c                                ; $6944: $d4 $9c $75
    jp z, $ea61                                   ; $6947: $ca $61 $ea

    add d                                         ; $694a: $82
    ld l, a                                       ; $694b: $6f
    cp b                                          ; $694c: $b8
    ld hl, sp-$1e                                 ; $694d: $f8 $e2
    ld a, c                                       ; $694f: $79
    rst $28                                       ; $6950: $ef
    adc d                                         ; $6951: $8a
    xor a                                         ; $6952: $af
    ld d, e                                       ; $6953: $53
    rst $30                                       ; $6954: $f7
    xor e                                         ; $6955: $ab
    ld d, b                                       ; $6956: $50

Jump_03c_6957:
    and [hl]                                      ; $6957: $a6
    ld l, l                                       ; $6958: $6d
    push hl                                       ; $6959: $e5
    ld [hl], a                                    ; $695a: $77
    adc $d7                                       ; $695b: $ce $d7
    cp a                                          ; $695d: $bf
    di                                            ; $695e: $f3
    ld d, d                                       ; $695f: $52
    db $fc                                        ; $6960: $fc
    rst $08                                       ; $6961: $cf
    or e                                          ; $6962: $b3
    db $ec                                        ; $6963: $ec
    ld a, [bc]                                    ; $6964: $0a
    ld l, d                                       ; $6965: $6a
    ld l, h                                       ; $6966: $6c
    ld a, $77                                     ; $6967: $3e $77
    ld l, c                                       ; $6969: $69
    ld [$f82f], a                                 ; $696a: $ea $2f $f8
    xor e                                         ; $696d: $ab
    jr c, jr_03c_6906                             ; $696e: $38 $96

    sbc b                                         ; $6970: $98
    or e                                          ; $6971: $b3
    cp $0d                                        ; $6972: $fe $0d
    nop                                           ; $6974: $00

jr_03c_6975:
    db $dd                                        ; $6975: $dd
    rst $08                                       ; $6976: $cf
    or c                                          ; $6977: $b1
    ld b, l                                       ; $6978: $45
    rst $08                                       ; $6979: $cf
    ld a, c                                       ; $697a: $79
    sub $89                                       ; $697b: $d6 $89
    dec l                                         ; $697d: $2d
    ld [hl], l                                    ; $697e: $75
    pop bc                                        ; $697f: $c1
    rst $28                                       ; $6980: $ef
    ld d, h                                       ; $6981: $54
    ld l, l                                       ; $6982: $6d
    ld a, [hl-]                                   ; $6983: $3a
    ld l, d                                       ; $6984: $6a
    ld a, h                                       ; $6985: $7c
    sbc a                                         ; $6986: $9f
    adc e                                         ; $6987: $8b
    jp hl                                         ; $6988: $e9


    ld d, e                                       ; $6989: $53
    ld d, a                                       ; $698a: $57
    ld c, c                                       ; $698b: $49
    call $a928                                    ; $698c: $cd $28 $a9
    dec a                                         ; $698f: $3d
    ld bc, $2edd                                  ; $6990: $01 $dd $2e
    ld [hl], c                                    ; $6993: $71

Jump_03c_6994:
    ld d, l                                       ; $6994: $55
    rst $10                                       ; $6995: $d7
    ld [$2530], a                                 ; $6996: $ea $30 $25
    cp $a8                                        ; $6999: $fe $a8
    reti                                          ; $699b: $d9


    ld h, e                                       ; $699c: $63
    db $dd                                        ; $699d: $dd
    db $ec                                        ; $699e: $ec
    db $d3                                        ; $699f: $d3
    inc [hl]                                      ; $69a0: $34
    sub e                                         ; $69a1: $93
    di                                            ; $69a2: $f3
    sbc h                                         ; $69a3: $9c
    and c                                         ; $69a4: $a1
    ld hl, sp-$14                                 ; $69a5: $f8 $ec
    ld bc, $9700                                  ; $69a7: $01 $00 $97
    ld de, $74bd                                  ; $69aa: $11 $bd $74
    jp hl                                         ; $69ad: $e9


    inc l                                         ; $69ae: $2c
    adc [hl]                                      ; $69af: $8e
    di                                            ; $69b0: $f3
    db $ec                                        ; $69b1: $ec
    rst $30                                       ; $69b2: $f7
    ld [hl-], a                                   ; $69b3: $32
    rst $08                                       ; $69b4: $cf
    cp l                                          ; $69b5: $bd
    ld c, b                                       ; $69b6: $48
    and e                                         ; $69b7: $a3
    ld b, d                                       ; $69b8: $42
    cpl                                           ; $69b9: $2f
    sub c                                         ; $69ba: $91
    adc e                                         ; $69bb: $8b
    adc a                                         ; $69bc: $8f
    ld sp, $f5ef                                  ; $69bd: $31 $ef $f5
    ld a, [bc]                                    ; $69c0: $0a
    and [hl]                                      ; $69c1: $a6
    inc a                                         ; $69c2: $3c
    ld a, h                                       ; $69c3: $7c
    jp c, $b986                                   ; $69c4: $da $86 $b9

    call nc, Call_000_3ab5                        ; $69c7: $d4 $b5 $3a
    ld c, h                                       ; $69ca: $4c
    adc c                                         ; $69cb: $89
    rrca                                          ; $69cc: $0f
    ld e, a                                       ; $69cd: $5f
    call $d255                                    ; $69ce: $cd $55 $d2
    cp d                                          ; $69d1: $ba
    ld e, a                                       ; $69d2: $5f
    ld sp, hl                                     ; $69d3: $f9
    sbc c                                         ; $69d4: $99
    xor a                                         ; $69d5: $af
    rst $38                                       ; $69d6: $ff

Call_03c_69d7:
    ld b, $57                                     ; $69d7: $06 $57
    rst $20                                       ; $69d9: $e7
    ld [c], a                                     ; $69da: $e2
    rst $10                                       ; $69db: $d7
    sbc l                                         ; $69dc: $9d
    ld d, [hl]                                    ; $69dd: $56
    dec d                                         ; $69de: $15
    rst $28                                       ; $69df: $ef
    ld e, l                                       ; $69e0: $5d
    ld h, $ac                                     ; $69e1: $26 $ac
    and h                                         ; $69e3: $a4
    inc c                                         ; $69e4: $0c
    ld [hl], e                                    ; $69e5: $73
    and c                                         ; $69e6: $a1
    and e                                         ; $69e7: $a3
    rst $20                                       ; $69e8: $e7
    ld a, h                                       ; $69e9: $7c
    ld c, d                                       ; $69ea: $4a
    db $dd                                        ; $69eb: $dd
    ld h, h                                       ; $69ec: $64
    jp c, $3986                                   ; $69ed: $da $86 $39

    ld l, d                                       ; $69f0: $6a
    ld c, h                                       ; $69f1: $4c
    db $eb                                        ; $69f2: $eb
    ld c, h                                       ; $69f3: $4c
    ld [c], a                                     ; $69f4: $e2
    xor d                                         ; $69f5: $aa
    sub [hl]                                      ; $69f6: $96
    dec de                                        ; $69f7: $1b
    nop                                           ; $69f8: $00

Jump_03c_69f9:
    rst $20                                       ; $69f9: $e7
    or b                                          ; $69fa: $b0
    ld b, e                                       ; $69fb: $43
    or c                                          ; $69fc: $b1
    ld sp, hl                                     ; $69fd: $f9
    ld a, [hl-]                                   ; $69fe: $3a
    ld [hl], l                                    ; $69ff: $75
    ld h, $31                                     ; $6a00: $26 $31
    cp [hl]                                       ; $6a02: $be
    inc d                                         ; $6a03: $14
    xor $d7                                       ; $6a04: $ee $d7
    rst $00                                       ; $6a06: $c7
    sbc h                                         ; $6a07: $9c
    sub a                                         ; $6a08: $97
    ld hl, sp-$30                                 ; $6a09: $f8 $d0
    sub a                                         ; $6a0b: $97
    or d                                          ; $6a0c: $b2
    sub d                                         ; $6a0d: $92
    di                                            ; $6a0e: $f3
    ld e, h                                       ; $6a0f: $5c
    jr nz, jr_03c_6a90                            ; $6a10: $20 $7e

    ret z                                         ; $6a12: $c8

    dec de                                        ; $6a13: $1b
    nop                                           ; $6a14: $00
    ld a, l                                       ; $6a15: $7d
    ld [hl], e                                    ; $6a16: $73
    sbc b                                         ; $6a17: $98
    ld a, [hl-]                                   ; $6a18: $3a
    inc hl                                        ; $6a19: $23
    and h                                         ; $6a1a: $a4
    ret c                                         ; $6a1b: $d8

    db $fc                                        ; $6a1c: $fc
    cp l                                          ; $6a1d: $bd
    xor e                                         ; $6a1e: $ab
    and a                                         ; $6a1f: $a7
    ld l, l                                       ; $6a20: $6d
    dec h                                         ; $6a21: $25

jr_03c_6a22:
    rla                                           ; $6a22: $17
    ld l, h                                       ; $6a23: $6c
    and [hl]                                      ; $6a24: $a6
    ld d, c                                       ; $6a25: $51
    ld e, $be                                     ; $6a26: $1e $be
    jp nz, $c499                                  ; $6a28: $c2 $99 $c4

    ld l, d                                       ; $6a2b: $6a
    ld [$cd8b], a                                 ; $6a2c: $ea $8b $cd
    rst $10                                       ; $6a2f: $d7
    xor c                                         ; $6a30: $a9
    or e                                          ; $6a31: $b3
    jr c, jr_03c_6a22                             ; $6a32: $38 $ee

    ld sp, $904d                                  ; $6a34: $31 $4d $90
    and e                                         ; $6a37: $a3
    ld b, [hl]                                    ; $6a38: $46
    ld d, a                                       ; $6a39: $57
    ld l, c                                       ; $6a3a: $69
    ld [hl], l                                    ; $6a3b: $75
    ld [$4a6a], a                                 ; $6a3c: $ea $6a $4a
    ld a, d                                       ; $6a3f: $7a
    ld a, $fa                                     ; $6a40: $3e $fa
    ld e, h                                       ; $6a42: $5c
    sbc b                                         ; $6a43: $98
    or d                                          ; $6a44: $b2
    sub d                                         ; $6a45: $92
    cp d                                          ; $6a46: $ba
    ldh a, [$b5]                                  ; $6a47: $f0 $b5
    sub l                                         ; $6a49: $95
    sub d                                         ; $6a4a: $92
    ld a, d                                       ; $6a4b: $7a
    inc bc                                        ; $6a4c: $03
    sub a                                         ; $6a4d: $97
    ld a, l                                       ; $6a4e: $7d
    ld e, c                                       ; $6a4f: $59
    add l                                         ; $6a50: $85
    db $fd                                        ; $6a51: $fd
    rst $28                                       ; $6a52: $ef
    ld [hl], l                                    ; $6a53: $75
    dec bc                                        ; $6a54: $0b
    and b                                         ; $6a55: $a0
    db $e4                                        ; $6a56: $e4
    ld [hl+], a                                   ; $6a57: $22
    sub c                                         ; $6a58: $91
    ld [hl], l                                    ; $6a59: $75
    ld [$8e2c], a                                 ; $6a5a: $ea $2c $8e
    dec bc                                        ; $6a5d: $0b
    cp [hl]                                       ; $6a5e: $be
    and c                                         ; $6a5f: $a1
    db $ec                                        ; $6a60: $ec
    dec bc                                        ; $6a61: $0b
    sub h                                         ; $6a62: $94
    dec a                                         ; $6a63: $3d
    nop                                           ; $6a64: $00
    ld a, l                                       ; $6a65: $7d
    ld l, c                                       ; $6a66: $69
    xor b                                         ; $6a67: $a8
    dec l                                         ; $6a68: $2d
    ld a, [hl]                                    ; $6a69: $7e
    sbc l                                         ; $6a6a: $9d
    cp d                                          ; $6a6b: $ba
    cp d                                          ; $6a6c: $ba
    ld c, e                                       ; $6a6d: $4b
    rla                                           ; $6a6e: $17
    adc d                                         ; $6a6f: $8a
    ld h, e                                       ; $6a70: $63
    rst $20                                       ; $6a71: $e7
    ld [hl], l                                    ; $6a72: $75
    pop hl                                        ; $6a73: $e1
    set 1, a                                      ; $6a74: $cb $cf
    inc h                                         ; $6a76: $24
    ld d, [hl]                                    ; $6a77: $56
    adc b                                         ; $6a78: $88
    add [hl]                                      ; $6a79: $86
    or d                                          ; $6a7a: $b2
    ld e, a                                       ; $6a7b: $5f
    rra                                           ; $6a7c: $1f
    ld [hl], e                                    ; $6a7d: $73
    ld e, [hl]                                    ; $6a7e: $5e
    ld [c], a                                     ; $6a7f: $e2
    ld b, e                                       ; $6a80: $43
    ld e, a                                       ; $6a81: $5f
    jp z, $cbbd                                   ; $6a82: $ca $bd $cb

    adc b                                         ; $6a85: $88
    xor h                                         ; $6a86: $ac
    ld d, e                                       ; $6a87: $53
    ld h, a                                       ; $6a88: $67
    ld [hl], c                                    ; $6a89: $71
    call c, Call_03c_56fb                         ; $6a8a: $dc $fb $56
    ld l, c                                       ; $6a8d: $69
    ld hl, sp+$32                                 ; $6a8e: $f8 $32

jr_03c_6a90:
    adc e                                         ; $6a90: $8b
    xor e                                         ; $6a91: $ab
    ld a, [hl-]                                   ; $6a92: $3a
    ld [$2fca], a                                 ; $6a93: $ea $ca $2f
    and b                                         ; $6a96: $a0
    pop de                                        ; $6a97: $d1
    set 5, a                                      ; $6a98: $cb $ef
    call c, Call_03c_5256                         ; $6a9a: $dc $56 $52
    or e                                          ; $6a9d: $b3
    ld a, [$0dcb]                                 ; $6a9e: $fa $cb $0d
    nop                                           ; $6aa1: $00
    ld h, a                                       ; $6aa2: $67
    dec sp                                        ; $6aa3: $3b
    ld [c], a                                     ; $6aa4: $e2
    xor a                                         ; $6aa5: $af
    ld a, c                                       ; $6aa6: $79
    cp $bd                                        ; $6aa7: $fe $bd
    nop                                           ; $6aa9: $00

jr_03c_6aaa:
    ld c, d                                       ; $6aaa: $4a
    adc [hl]                                      ; $6aab: $8e
    ld [hl], l                                    ; $6aac: $75
    ret z                                         ; $6aad: $c8

    cp $5f                                        ; $6aae: $fe $5f
    and a                                         ; $6ab0: $a7
    xor [hl]                                      ; $6ab1: $ae
    cp $83                                        ; $6ab2: $fe $83
    rra                                           ; $6ab4: $1f
    rst $38                                       ; $6ab5: $ff
    sbc $d5                                       ; $6ab6: $de $d5
    ccf                                           ; $6ab8: $3f
    ld l, d                                       ; $6ab9: $6a
    db $ec                                        ; $6aba: $ec
    ld e, d                                       ; $6abb: $5a
    and a                                         ; $6abc: $a7
    ld de, $b9e7                                  ; $6abd: $11 $e7 $b9
    xor a                                         ; $6ac0: $af
    db $10                                        ; $6ac1: $10
    and e                                         ; $6ac2: $a3
    sub e                                         ; $6ac3: $93
    rst $10                                       ; $6ac4: $d7
    ld de, $f0e7                                  ; $6ac5: $11 $e7 $f0
    add a                                         ; $6ac8: $87
    ld l, c                                       ; $6ac9: $69
    add d                                         ; $6aca: $82
    cp h                                          ; $6acb: $bc
    ld [hl], a                                    ; $6acc: $77
    or [hl]                                       ; $6acd: $b6
    inc hl                                        ; $6ace: $23
    cp [hl]                                       ; $6acf: $be
    ld c, $d3                                     ; $6ad0: $0e $d3
    inc b                                         ; $6ad2: $04
    xor c                                         ; $6ad3: $a9
    ldh a, [$d9]                                  ; $6ad4: $f0 $d9
    cp a                                          ; $6ad6: $bf
    adc b                                         ; $6ad7: $88
    push af                                       ; $6ad8: $f5
    ld b, $67                                     ; $6ad9: $06 $67
    dec sp                                        ; $6adb: $3b
    ld [c], a                                     ; $6adc: $e2
    db $eb                                        ; $6add: $eb
    jr nc, jr_03c_6b2d                            ; $6ade: $30 $4d

    sub b                                         ; $6ae0: $90
    ld a, [bc]                                    ; $6ae1: $0a
    rst $18                                       ; $6ae2: $df
    and l                                         ; $6ae3: $a5
    adc c                                         ; $6ae4: $89

jr_03c_6ae5:
    scf                                           ; $6ae5: $37
    nop                                           ; $6ae6: $00
    ld d, a                                       ; $6ae7: $57
    db $10                                        ; $6ae8: $10
    and c                                         ; $6ae9: $a1
    cp a                                          ; $6aea: $bf
    ld [hl], a                                    ; $6aeb: $77
    add hl, de                                    ; $6aec: $19
    sub c                                         ; $6aed: $91
    ld [hl], l                                    ; $6aee: $75
    ld [$8e2c], a                                 ; $6aef: $ea $2c $8e
    xor e                                         ; $6af2: $ab
    ld h, h                                       ; $6af3: $64
    xor c                                         ; $6af4: $a9
    ld d, b                                       ; $6af5: $50
    or $6b                                        ; $6af6: $f6 $6b
    jr @-$75                                      ; $6af8: $18 $89

    pop af                                        ; $6afa: $f1
    ld h, l                                       ; $6afb: $65
    ld b, h                                       ; $6afc: $44
    sub e                                         ; $6afd: $93
    jr jr_03c_6ae5                                ; $6afe: $18 $e5

    ld h, l                                       ; $6b00: $65
    cp a                                          ; $6b01: $bf
    ld a, $5f                                     ; $6b02: $3e $5f
    xor d                                         ; $6b04: $aa
    db $d3                                        ; $6b05: $d3
    ld a, [hl-]                                   ; $6b06: $3a
    ld [c], a                                     ; $6b07: $e2
    ld e, b                                       ; $6b08: $58
    ld d, $f8                                     ; $6b09: $16 $f8
    push bc                                       ; $6b0b: $c5
    ld d, $e7                                     ; $6b0c: $16 $e7
    cp c                                          ; $6b0e: $b9
    sub d                                         ; $6b0f: $92
    cp d                                          ; $6b10: $ba
    sla h                                         ; $6b11: $cb $24
    xor e                                         ; $6b13: $ab
    sbc c                                         ; $6b14: $99
    ld a, d                                       ; $6b15: $7a
    inc bc                                        ; $6b16: $03
    sub a                                         ; $6b17: $97
    ld de, $a759                                  ; $6b18: $11 $59 $a7
    adc $e2                                       ; $6b1b: $ce $e2
    jr c, jr_03c_6aaa                             ; $6b1d: $38 $8b

    and e                                         ; $6b1f: $a3
    ld a, a                                       ; $6b20: $7f
    pop bc                                        ; $6b21: $c1
    call nc, $c5bd                                ; $6b22: $d4 $bd $c5
    reti                                          ; $6b25: $d9


    ret nz                                        ; $6b26: $c0

    ld h, a                                       ; $6b27: $67
    rst $38                                       ; $6b28: $ff
    ld [hl+], a                                   ; $6b29: $22
    sub $7b                                       ; $6b2a: $d6 $7b
    halt                                          ; $6b2c: $76

jr_03c_6b2d:
    ld h, l                                       ; $6b2d: $65
    add c                                         ; $6b2e: $81
    ld e, a                                       ; $6b2f: $5f
    ld l, h                                       ; $6b30: $6c
    ld [hl], c                                    ; $6b31: $71
    sbc [hl]                                      ; $6b32: $9e
    dec hl                                        ; $6b33: $2b
    xor c                                         ; $6b34: $a9
    cp e                                          ; $6b35: $bb
    ld c, h                                       ; $6b36: $4c
    or d                                          ; $6b37: $b2
    sbc d                                         ; $6b38: $9a
    xor c                                         ; $6b39: $a9
    and e                                         ; $6b3a: $a3
    add $ae                                       ; $6b3b: $c6 $ae
    ld de, $b2c7                                  ; $6b3d: $11 $c7 $b2
    ld c, b                                       ; $6b40: $48
    ld sp, $8594                                  ; $6b41: $31 $94 $85
    ld c, l                                       ; $6b44: $4d
    di                                            ; $6b45: $f3
    ld b, $57                                     ; $6b46: $06 $57
    rst $38                                       ; $6b48: $ff
    xor b                                         ; $6b49: $a8
    pop af                                        ; $6b4a: $f1
    db $eb                                        ; $6b4b: $eb
    ld d, h                                       ; $6b4c: $54
    ld hl, sp-$14                                 ; $6b4d: $f8 $ec
    ld e, a                                       ; $6b4f: $5f
    call nz, $ef7a                                ; $6b50: $c4 $7a $ef
    adc d                                         ; $6b53: $8a
    xor a                                         ; $6b54: $af
    ld d, e                                       ; $6b55: $53
    rst $30                                       ; $6b56: $f7
    ld b, e                                       ; $6b57: $43
    ld b, a                                       ; $6b58: $47
    adc l                                         ; $6b59: $8d
    ld a, [c]                                     ; $6b5a: $f2
    xor e                                         ; $6b5b: $ab
    xor c                                         ; $6b5c: $a9
    ld a, a                                       ; $6b5d: $7f
    inc bc                                        ; $6b5e: $03
    or $69                                        ; $6b5f: $f6 $69
    sbc d                                         ; $6b61: $9a
    ret                                           ; $6b62: $c9


    ld a, c                                       ; $6b63: $79
    adc $50                                       ; $6b64: $ce $50
    ld a, h                                       ; $6b66: $7c
    sbc $00                                       ; $6b67: $de $00
    add c                                         ; $6b69: $81
    sub h                                         ; $6b6a: $94
    xor [hl]                                      ; $6b6b: $ae
    push de                                       ; $6b6c: $d5
    db $ec                                        ; $6b6d: $ec
    sub a                                         ; $6b6e: $97
    ld [hl-], a                                   ; $6b6f: $32
    adc e                                         ; $6b70: $8b
    db $e3                                        ; $6b71: $e3
    jr nc, jr_03c_6bbb                            ; $6b72: $30 $47

    adc h                                         ; $6b74: $8c
    ld b, d                                       ; $6b75: $42
    db $dd                                        ; $6b76: $dd
    rlca                                          ; $6b77: $07
    ld l, l                                       ; $6b78: $6d
    xor $d9                                       ; $6b79: $ee $d9
    ld l, c                                       ; $6b7b: $69
    db $ec                                        ; $6b7c: $ec
    ld e, d                                       ; $6b7d: $5a
    jr z, jr_03c_6b99                             ; $6b7e: $28 $19

    ld l, h                                       ; $6b80: $6c
    sbc l                                         ; $6b81: $9d
    and $f3                                       ; $6b82: $e6 $f3
    ld b, $dd                                     ; $6b84: $06 $dd
    adc $65                                       ; $6b86: $ce $65
    ld l, c                                       ; $6b88: $69
    db $fd                                        ; $6b89: $fd
    rst $10                                       ; $6b8a: $d7
    rst $30                                       ; $6b8b: $f7
    dec hl                                        ; $6b8c: $2b
    call $87bf                                    ; $6b8d: $cd $bf $87
    rst $08                                       ; $6b90: $cf
    cp $45                                        ; $6b91: $fe $45
    xor h                                         ; $6b93: $ac
    dec a                                         ; $6b94: $3d
    nop                                           ; $6b95: $00
    db $dd                                        ; $6b96: $dd

jr_03c_6b97:
    adc $65                                       ; $6b97: $ce $65

jr_03c_6b99:
    ld l, c                                       ; $6b99: $69
    db $fd                                        ; $6b9a: $fd
    rst $10                                       ; $6b9b: $d7
    rst $30                                       ; $6b9c: $f7
    dec hl                                        ; $6b9d: $2b
    call $87bf                                    ; $6b9e: $cd $bf $87
    rst $28                                       ; $6ba1: $ef
    jp nc, $1ec4                                  ; $6ba2: $d2 $c4 $1e

    db $eb                                        ; $6ba5: $eb
    db $d3                                        ; $6ba6: $d3
    db $e4                                        ; $6ba7: $e4
    rla                                           ; $6ba8: $17
    adc c                                         ; $6ba9: $89
    xor h                                         ; $6baa: $ac
    ld d, e                                       ; $6bab: $53
    daa                                           ; $6bac: $27
    add h                                         ; $6bad: $84
    cp [hl]                                       ; $6bae: $be
    and h                                         ; $6baf: $a4
    adc $73                                       ; $6bb0: $ce $73
    ld a, l                                       ; $6bb2: $7d
    cp a                                          ; $6bb3: $bf
    jp nc, $fbfc                                  ; $6bb4: $d2 $fc $fb

    dec de                                        ; $6bb7: $1b
    nop                                           ; $6bb8: $00
    cp l                                          ; $6bb9: $bd
    inc e                                         ; $6bba: $1c

jr_03c_6bbb:
    ld e, d                                       ; $6bbb: $5a
    inc e                                         ; $6bbc: $1c
    ld d, a                                       ; $6bbd: $57
    ld a, [hl]                                    ; $6bbe: $7e
    push af                                       ; $6bbf: $f5
    ld e, e                                       ; $6bc0: $5b
    ld d, e                                       ; $6bc1: $53
    ld l, h                                       ; $6bc2: $6c
    ld a, [hl]                                    ; $6bc3: $7e
    sbc [hl]                                      ; $6bc4: $9e
    dec hl                                        ; $6bc5: $2b
    xor c                                         ; $6bc6: $a9
    ei                                            ; $6bc7: $fb
    ld [c], a                                     ; $6bc8: $e2
    ld l, d                                       ; $6bc9: $6a
    ld c, h                                       ; $6bca: $4c
    sbc l                                         ; $6bcb: $9d
    ld [hl], d                                    ; $6bcc: $72
    pop bc                                        ; $6bcd: $c1
    or a                                          ; $6bce: $b7
    ld a, $ae                                     ; $6bcf: $3e $ae
    ld a, [hl]                                    ; $6bd1: $7e
    ld sp, $f7c1                                  ; $6bd2: $31 $c1 $f7
    add hl, bc                                    ; $6bd5: $09
    ld e, a                                       ; $6bd6: $5f
    or a                                          ; $6bd7: $b7
    jr nc, jr_03c_6b97                            ; $6bd8: $30 $bd

    or b                                          ; $6bda: $b0
    ld c, [hl]                                    ; $6bdb: $4e
    ld e, l                                       ; $6bdc: $5d
    ld hl, sp-$06                                 ; $6bdd: $f8 $fa
    ld d, d                                       ; $6bdf: $52
    ld [hl], d                                    ; $6be0: $72
    sbc l                                         ; $6be1: $9d
    ld b, [hl]                                    ; $6be2: $46
    db $ec                                        ; $6be3: $ec
    ld bc, $e700                                  ; $6be4: $01 $00 $e7
    or d                                          ; $6be7: $b2
    inc [hl]                                      ; $6be8: $34
    ld b, e                                       ; $6be9: $43
    ld e, l                                       ; $6bea: $5d
    push hl                                       ; $6beb: $e5
    call $969b                                    ; $6bec: $cd $9b $96
    ld c, b                                       ; $6bef: $48
    add l                                         ; $6bf0: $85
    xor a                                         ; $6bf1: $af
    ld l, [hl]                                    ; $6bf2: $6e
    ld a, [hl-]                                   ; $6bf3: $3a
    call $e2d2                                    ; $6bf4: $cd $d2 $e2
    ld c, e                                       ; $6bf7: $4b
    ld c, e                                       ; $6bf8: $4b
    dec e                                         ; $6bf9: $1d
    ld h, [hl]                                    ; $6bfa: $66
    push hl                                       ; $6bfb: $e5
    ld h, e                                       ; $6bfc: $63
    dec hl                                        ; $6bfd: $2b
    dec h                                         ; $6bfe: $25
    push af                                       ; $6bff: $f5
    ld b, $dd                                     ; $6c00: $06 $dd
    cpl                                           ; $6c02: $2f
    ld [hl], c                                    ; $6c03: $71
    ld d, l                                       ; $6c04: $55
    ld h, a                                       ; $6c05: $67
    ld [hl], c                                    ; $6c06: $71
    adc l                                         ; $6c07: $8d
    ld b, d                                       ; $6c08: $42
    add l                                         ; $6c09: $85
    cpl                                           ; $6c0a: $2f

jr_03c_6c0b:
    add b                                         ; $6c0b: $80

jr_03c_6c0c:
    xor h                                         ; $6c0c: $ac
    ld d, b                                       ; $6c0d: $50
    ld a, e                                       ; $6c0e: $7b
    ld [bc], a                                    ; $6c0f: $02
    db $dd                                        ; $6c10: $dd
    ld l, $25                                     ; $6c11: $2e $25
    db $f4                                        ; $6c13: $f4
    dec h                                         ; $6c14: $25
    dec d                                         ; $6c15: $15
    ld a, $21                                     ; $6c16: $3e $21
    db $f4                                        ; $6c18: $f4
    dec h                                         ; $6c19: $25
    dec d                                         ; $6c1a: $15
    ld a, $21                                     ; $6c1b: $3e $21
    db $f4                                        ; $6c1d: $f4
    dec h                                         ; $6c1e: $25
    or l                                          ; $6c1f: $b5
    rst $00                                       ; $6c20: $c7
    db $ec                                        ; $6c21: $ec
    inc [hl]                                      ; $6c22: $34
    ld [hl], l                                    ; $6c23: $75
    or c                                          ; $6c24: $b1
    ld de, $eb89                                  ; $6c25: $11 $89 $eb
    jr c, jr_03c_6c0c                             ; $6c28: $38 $e2

    cpl                                           ; $6c2a: $2f
    ld l, h                                       ; $6c2b: $6c
    jr @+$01                                      ; $6c2c: $18 $ff

    ld b, $dd                                     ; $6c2e: $06 $dd
    adc $61                                       ; $6c30: $ce $61
    push bc                                       ; $6c32: $c5
    ld d, l                                       ; $6c33: $55
    dec l                                         ; $6c34: $2d
    dec d                                         ; $6c35: $15
    sub [hl]                                      ; $6c36: $96
    ld d, h                                       ; $6c37: $54
    ld hl, sp+$02                                 ; $6c38: $f8 $02
    ret z                                         ; $6c3a: $c8

    ld a, [bc]                                    ; $6c3b: $0a
    or l                                          ; $6c3c: $b5
    rlca                                          ; $6c3d: $07
    nop                                           ; $6c3e: $00
    halt                                          ; $6c3f: $76
    cp d                                          ; $6c40: $ba
    sbc d                                         ; $6c41: $9a
    db $fd                                        ; $6c42: $fd
    ld d, d                                       ; $6c43: $52
    and $5f                                       ; $6c44: $e6 $5f
    ld h, [hl]                                    ; $6c46: $66
    ld [hl], c                                    ; $6c47: $71
    sbc h                                         ; $6c48: $9c
    ret nc                                        ; $6c49: $d0

    or h                                          ; $6c4a: $b4
    ld c, [hl]                                    ; $6c4b: $4e
    sub e                                         ; $6c4c: $93
    ld a, e                                       ; $6c4d: $7b
    db $dd                                        ; $6c4e: $dd
    ld [bc], a                                    ; $6c4f: $02
    jr z, jr_03c_6c0b                             ; $6c50: $28 $b9

    sub d                                         ; $6c52: $92
    xor e                                         ; $6c53: $ab
    reti                                          ; $6c54: $d9


    cpl                                           ; $6c55: $2f
    ld h, l                                       ; $6c56: $65
    call nc, Call_03c_4d51                        ; $6c57: $d4 $51 $4d
    and d                                         ; $6c5a: $a2
    and a                                         ; $6c5b: $a7
    call z, $bea4                                 ; $6c5c: $cc $a4 $be
    or $58                                        ; $6c5f: $f6 $58
    ld b, b                                       ; $6c61: $40
    ld a, d                                       ; $6c62: $7a
    jp hl                                         ; $6c63: $e9


    jp nc, $8d09                                  ; $6c64: $d2 $09 $8d

    dec bc                                        ; $6c67: $0b
    add hl, hl                                    ; $6c68: $29
    cpl                                           ; $6c69: $2f
    dec h                                         ; $6c6a: $25

Call_03c_6c6b:
    push af                                       ; $6c6b: $f5
    cp [hl]                                       ; $6c6c: $be
    ld l, a                                       ; $6c6d: $6f
    ld l, l                                       ; $6c6e: $6d
    dec hl                                        ; $6c6f: $2b
    xor c                                         ; $6c70: $a9
    inc hl                                        ; $6c71: $23
    ld a, [de]                                    ; $6c72: $1a
    ld b, a                                       ; $6c73: $47
    adc h                                         ; $6c74: $8c
    ld a, [c]                                     ; $6c75: $f2
    ld a, d                                       ; $6c76: $7a
    inc bc                                        ; $6c77: $03
    ld bc, $8564                                  ; $6c78: $01 $64 $85
    ld a, [hl-]                                   ; $6c7b: $3a
    call z, Call_03c_5cd5                         ; $6c7c: $cc $d5 $5c
    push hl                                       ; $6c7f: $e5
    rst $30                                       ; $6c80: $f7
    xor e                                         ; $6c81: $ab
    ld a, [hl]                                    ; $6c82: $7e
    adc l                                         ; $6c83: $8d
    call $97b7                                    ; $6c84: $cd $b7 $97
    sub l                                         ; $6c87: $95
    rst $10                                       ; $6c88: $d7
    push af                                       ; $6c89: $f5
    db $fd                                        ; $6c8a: $fd
    ld c, d                                       ; $6c8b: $4a
    di                                            ; $6c8c: $f3
    rst $28                                       ; $6c8d: $ef
    xor c                                         ; $6c8e: $a9
    rst $30                                       ; $6c8f: $f7
    cp d                                          ; $6c90: $ba
    ld e, l                                       ; $6c91: $5d
    sub c                                         ; $6c92: $91
    sub $fd                                       ; $6c93: $d6 $fd
    ld a, [hl-]                                   ; $6c95: $3a
    ld c, [hl]                                    ; $6c96: $4e
    call $eacb                                    ; $6c97: $cd $cb $ea
    and [hl]                                      ; $6c9a: $a6
    inc de                                        ; $6c9b: $13
    ld b, d                                       ; $6c9c: $42
    ld e, a                                       ; $6c9d: $5f
    ld d, d                                       ; $6c9e: $52
    ld a, e                                       ; $6c9f: $7b
    nop                                           ; $6ca0: $00
    sub a                                         ; $6ca1: $97
    dec [hl]                                      ; $6ca2: $35
    ld [hl+], a                                   ; $6ca3: $22
    ld [hl], l                                    ; $6ca4: $75
    ld sp, $ce7d                                  ; $6ca5: $31 $7d $ce
    pop hl                                        ; $6ca8: $e1
    ld c, h                                       ; $6ca9: $4c
    ld d, $42                                     ; $6caa: $16 $42
    dec l                                         ; $6cac: $2d
    ld b, a                                       ; $6cad: $47
    adc h                                         ; $6cae: $8c
    sub h                                         ; $6caf: $94
    ld e, h                                       ; $6cb0: $5c
    ld hl, sp-$0e                                 ; $6cb1: $f8 $f2
    db $eb                                        ; $6cb3: $eb
    jr c, jr_03c_6ceb                             ; $6cb4: $38 $35

    cpl                                           ; $6cb6: $2f
    dec h                                         ; $6cb7: $25
    push af                                       ; $6cb8: $f5
    ld e, [hl]                                    ; $6cb9: $5e
    rra                                           ; $6cba: $1f
    adc $e2                                       ; $6cbb: $ce $e2
    add sp, $5f                                   ; $6cbd: $e8 $5f
    xor d                                         ; $6cbf: $aa
    xor $2d                                       ; $6cc0: $ee $2d
    adc $66                                       ; $6cc2: $ce $66
    ld h, c                                       ; $6cc4: $61
    jp z, Jump_03c_4db4                           ; $6cc5: $ca $b4 $4d

    cp c                                          ; $6cc8: $b9
    ld d, d                                       ; $6cc9: $52
    ld e, b                                       ; $6cca: $58
    ld sp, hl                                     ; $6ccb: $f9
    ld a, l                                       ; $6ccc: $7d
    add c                                         ; $6ccd: $81
    inc e                                         ; $6cce: $1c
    and $ea                                       ; $6ccf: $e6 $ea
    ld l, $bd                                     ; $6cd1: $2e $bd
    ld bc, $75f6                                  ; $6cd3: $01 $f6 $75
    dec c                                         ; $6cd6: $0d
    rst $18                                       ; $6cd7: $df
    ld e, e                                       ; $6cd8: $5b
    sbc h                                         ; $6cd9: $9c
    call Call_03c_6f82                            ; $6cda: $cd $82 $6f
    sbc l                                         ; $6cdd: $9d
    jp Jump_03c_661f                              ; $6cde: $c3 $1f $66


    db $fc                                        ; $6ce1: $fc
    dec de                                        ; $6ce2: $1b
    nop                                           ; $6ce3: $00
    ld bc, $9189                                  ; $6ce4: $01 $89 $91
    ei                                            ; $6ce7: $fb
    ld [hl-], a                                   ; $6ce8: $32
    ld l, a                                       ; $6ce9: $6f
    di                                            ; $6cea: $f3

jr_03c_6ceb:
    inc sp                                        ; $6ceb: $33
    adc c                                         ; $6cec: $89
    dec hl                                        ; $6ced: $2b
    cp a                                          ; $6cee: $bf
    ld b, d                                       ; $6cef: $42
    inc de                                        ; $6cf0: $13
    sbc l                                         ; $6cf1: $9d
    db $fc                                        ; $6cf2: $fc
    ld e, $23                                     ; $6cf3: $1e $23
    ld [hl], l                                    ; $6cf5: $75
    sbc [hl]                                      ; $6cf6: $9e
    db $d3                                        ; $6cf7: $d3
    cpl                                           ; $6cf8: $2f
    ld c, l                                       ; $6cf9: $4d
    ld l, [hl]                                    ; $6cfa: $6e
    nop                                           ; $6cfb: $00
    halt                                          ; $6cfc: $76
    ld h, l                                       ; $6cfd: $65
    inc l                                         ; $6cfe: $2c
    add h                                         ; $6cff: $84
    ld e, $23                                     ; $6d00: $1e $23
    rla                                           ; $6d02: $17
    sub b                                         ; $6d03: $90
    dec h                                         ; $6d04: $25
    ld d, d                                       ; $6d05: $52
    jr nz, jr_03c_6d3e                            ; $6d06: $20 $36

    adc l                                         ; $6d08: $8d
    di                                            ; $6d09: $f3
    call $1670                                    ; $6d0a: $cd $70 $16
    rst $00                                       ; $6d0d: $c7
    or c                                          ; $6d0e: $b1
    db $ec                                        ; $6d0f: $ec
    call nz, $e751                                ; $6d10: $c4 $51 $e7
    ld [hl], b                                    ; $6d13: $70
    ld a, b                                       ; $6d14: $78
    ld b, b                                       ; $6d15: $40
    ld c, l                                       ; $6d16: $4d
    ret                                           ; $6d17: $c9


    ld a, c                                       ; $6d18: $79
    xor [hl]                                      ; $6d19: $ae
    db $fc                                        ; $6d1a: $fc
    call nc, $2251                                ; $6d1b: $d4 $51 $22
    ld l, a                                       ; $6d1e: $6f
    nop                                           ; $6d1f: $00
    sub a                                         ; $6d20: $97
    ld [de], a                                    ; $6d21: $12
    ld a, [$62d2]                                 ; $6d22: $fa $d2 $62
    ld [$d73c], a                                 ; $6d25: $ea $3c $d7
    rst $30                                       ; $6d28: $f7
    dec hl                                        ; $6d29: $2b
    call $dfbf                                    ; $6d2a: $cd $bf $df
    ld a, c                                       ; $6d2d: $79
    ld a, [c]                                     ; $6d2e: $f2
    or c                                          ; $6d2f: $b1
    jp hl                                         ; $6d30: $e9


    cp l                                          ; $6d31: $bd
    ld e, [hl]                                    ; $6d32: $5e
    rlca                                          ; $6d33: $07
    ldh [$a8], a                                  ; $6d34: $e0 $a8
    or c                                          ; $6d36: $b1
    dec bc                                        ; $6d37: $0b
    rst $00                                       ; $6d38: $c7
    ld a, [hl-]                                   ; $6d39: $3a
    ld a, h                                       ; $6d3a: $7c
    adc e                                         ; $6d3b: $8b
    ld h, e                                       ; $6d3c: $63
    ld a, h                                       ; $6d3d: $7c

jr_03c_6d3e:
    sbc a                                         ; $6d3e: $9f
    ld a, d                                       ; $6d3f: $7a
    rst $08                                       ; $6d40: $cf
    cp $3b                                        ; $6d41: $fe $3b
    push hl                                       ; $6d43: $e5
    ld h, l                                       ; $6d44: $65
    ld h, $71                                     ; $6d45: $26 $71
    ld bc, $8564                                  ; $6d47: $01 $64 $85
    cp d                                          ; $6d4a: $ba
    ldh a, [$e5]                                  ; $6d4b: $f0 $e5
    ld d, a                                       ; $6d4d: $57
    ld [hl], a                                    ; $6d4e: $77
    jp hl                                         ; $6d4f: $e9


    ld a, [de]                                    ; $6d50: $1a
    ld d, [hl]                                    ; $6d51: $56
    and a                                         ; $6d52: $a7
    call nc, $9a6f                                ; $6d53: $d4 $6f $9a
    dec l                                         ; $6d56: $2d
    sbc $00                                       ; $6d57: $de $00
    db $dd                                        ; $6d59: $dd
    db $ed                                        ; $6d5a: $ed
    ld a, a                                       ; $6d5b: $7f
    sub l                                         ; $6d5c: $95
    and [hl]                                      ; $6d5d: $a6
    ld sp, $0bf7                                  ; $6d5e: $31 $f7 $0b
    jr nz, jr_03c_6d8e                            ; $6d61: $20 $2b

    call nc, $eb9e                                ; $6d63: $d4 $9e $eb
    jp Jump_03c_7f05                              ; $6d66: $c3 $05 $7f


    sub d                                         ; $6d69: $92
    sbc l                                         ; $6d6a: $9d
    rst $30                                       ; $6d6b: $f7
    cp c                                          ; $6d6c: $b9
    cp d                                          ; $6d6d: $ba
    jp hl                                         ; $6d6e: $e9


    add h                                         ; $6d6f: $84
    ret nc                                        ; $6d70: $d0

    sub a                                         ; $6d71: $97
    call nc, $ae79                                ; $6d72: $d4 $79 $ae
    rst $28                                       ; $6d75: $ef
    ld d, a                                       ; $6d76: $57
    sbc d                                         ; $6d77: $9a
    ld a, a                                       ; $6d78: $7f
    ld a, a                                       ; $6d79: $7f
    inc bc                                        ; $6d7a: $03
    ld a, l                                       ; $6d7b: $7d
    ld [hl], e                                    ; $6d7c: $73
    dec h                                         ; $6d7d: $25
    rla                                           ; $6d7e: $17
    db $e4                                        ; $6d7f: $e4
    ld a, [hl+]                                   ; $6d80: $2a
    ld c, l                                       ; $6d81: $4d
    ld h, e                                       ; $6d82: $63
    sbc $0b                                       ; $6d83: $de $0b
    and b                                         ; $6d85: $a0
    db $e4                                        ; $6d86: $e4
    or h                                          ; $6d87: $b4
    ld [$8e2c], a                                 ; $6d88: $ea $2c $8e
    dec hl                                        ; $6d8b: $2b
    inc e                                         ; $6d8c: $1c
    db $e4                                        ; $6d8d: $e4

jr_03c_6d8e:
    inc [hl]                                      ; $6d8e: $34
    cp $a8                                        ; $6d8f: $fe $a8
    ld h, $d1                                     ; $6d91: $26 $d1
    ld d, e                                       ; $6d93: $53
    ld h, [hl]                                    ; $6d94: $66
    ld d, d                                       ; $6d95: $52
    ld e, a                                       ; $6d96: $5f
    rst $20                                       ; $6d97: $e7
    add hl, de                                    ; $6d98: $19
    and l                                         ; $6d99: $a5
    ld c, e                                       ; $6d9a: $4b
    rst $20                                       ; $6d9b: $e7
    cp c                                          ; $6d9c: $b9
    ret nc                                        ; $6d9d: $d0

    ld d, c                                       ; $6d9e: $51
    ld [c], a                                     ; $6d9f: $e2
    db $eb                                        ; $6da0: $eb
    inc c                                         ; $6da1: $0c
    ld b, l                                       ; $6da2: $45
    sbc $bf                                       ; $6da3: $de $bf
    sbc $00                                       ; $6da5: $de $00
    ld a, l                                       ; $6da7: $7d
    ld [hl], e                                    ; $6da8: $73
    dec h                                         ; $6da9: $25
    rla                                           ; $6daa: $17
    db $e4                                        ; $6dab: $e4
    ld a, [hl+]                                   ; $6dac: $2a
    ld c, l                                       ; $6dad: $4d
    ld h, e                                       ; $6dae: $63
    sbc $00                                       ; $6daf: $de $00
    db $dd                                        ; $6db1: $dd
    ld [bc], a                                    ; $6db2: $02
    ret z                                         ; $6db3: $c8

    ld a, [bc]                                    ; $6db4: $0a
    or l                                          ; $6db5: $b5
    rst $00                                       ; $6db6: $c7
    ld l, $4a                                     ; $6db7: $2e $4a
    sbc l                                         ; $6db9: $9d
    rst $20                                       ; $6dba: $e7
    call nc, $1a8d                                ; $6dbb: $d4 $8d $1a
    jp nc, Jump_03c_4e34                          ; $6dbe: $d2 $34 $4e

    inc de                                        ; $6dc1: $13
    rst $20                                       ; $6dc2: $e7
    ldh a, [$e7]                                  ; $6dc3: $f0 $e7
    xor c                                         ; $6dc5: $a9
    pop bc                                        ; $6dc6: $c1
    ld b, h                                       ; $6dc7: $44
    ld sp, hl                                     ; $6dc8: $f9
    add l                                         ; $6dc9: $85
    cpl                                           ; $6dca: $2f
    cp a                                          ; $6dcb: $bf
    ld a, [c]                                     ; $6dcc: $f2
    cp d                                          ; $6dcd: $ba
    rrca                                          ; $6dce: $0f
    ld e, a                                       ; $6dcf: $5f
    sbc d                                         ; $6dd0: $9a
    ld l, c                                       ; $6dd1: $69

jr_03c_6dd2:
    adc c                                         ; $6dd2: $89
    db $d4, $7b, $01                              ; $6dd3: $d4 $7b $01
    sub h                                         ; $6dd6: $94
    call c, Call_000_2501                         ; $6dd7: $dc $01 $25
    or [hl]                                       ; $6dda: $b6
    ld a, [$626b]                                 ; $6ddb: $fa $6b $62
    db $e4                                        ; $6dde: $e4
    jr nc, @+$59                                  ; $6ddf: $30 $57

    ld [hl], d                                    ; $6de1: $72
    ld b, c                                       ; $6de2: $41
    xor [hl]                                      ; $6de3: $ae
    jp nc, $e634                                  ; $6de4: $d2 $34 $e6

    dec c                                         ; $6de7: $0d
    nop                                           ; $6de8: $00
    ld a, l                                       ; $6de9: $7d
    ld [hl], e                                    ; $6dea: $73
    dec h                                         ; $6deb: $25
    rla                                           ; $6dec: $17
    db $e4                                        ; $6ded: $e4
    ld a, [hl+]                                   ; $6dee: $2a
    ld c, l                                       ; $6def: $4d
    ld h, e                                       ; $6df0: $63
    ld c, $db                                     ; $6df1: $0e $db
    ld a, [hl]                                    ; $6df3: $7e
    ld d, l                                       ; $6df4: $55
    res 6, b                                      ; $6df5: $cb $b0
    dec l                                         ; $6df7: $2d
    ld a, [hl-]                                   ; $6df8: $3a
    sbc l                                         ; $6df9: $9d
    db $10                                        ; $6dfa: $10
    ld a, [$7a92]                                 ; $6dfb: $fa $92 $7a
    rst $08                                       ; $6dfe: $cf
    ld c, [hl]                                    ; $6dff: $4e
    ld b, e                                       ; $6e00: $43
    ld c, d                                       ; $6e01: $4a
    adc $e2                                       ; $6e02: $ce $e2
    jr c, jr_03c_6dd2                             ; $6e04: $38 $cc

    dec b                                         ; $6e06: $05
    ld e, l                                       ; $6e07: $5d
    and a                                         ; $6e08: $a7
    ld d, c                                       ; $6e09: $51
    add hl, sp                                    ; $6e0a: $39
    ld a, h                                       ; $6e0b: $7c
    rst $38                                       ; $6e0c: $ff
    sub e                                         ; $6e0d: $93
    ld h, [hl]                                    ; $6e0e: $66
    ld [hl], d                                    ; $6e0f: $72
    sbc [hl]                                      ; $6e10: $9e
    inc sp                                        ; $6e11: $33
    ld e, c                                       ; $6e12: $59
    ld d, e                                       ; $6e13: $53
    and $89                                       ; $6e14: $e6 $89
    ld d, c                                       ; $6e16: $51
    ld a, [c]                                     ; $6e17: $f2
    ld b, $7d                                     ; $6e18: $06 $7d
    cp b                                          ; $6e1a: $b8
    ld d, b                                       ; $6e1b: $50
    ld [$8c39], sp                                ; $6e1c: $08 $39 $8c
    add hl, sp                                    ; $6e1f: $39
    adc e                                         ; $6e20: $8b
    xor e                                         ; $6e21: $ab
    ld a, [hl-]                                   ; $6e22: $3a
    and l                                         ; $6e23: $a5
    ret c                                         ; $6e24: $d8

    db $fc                                        ; $6e25: $fc
    xor b                                         ; $6e26: $a8
    sbc h                                         ; $6e27: $9c
    db $10                                        ; $6e28: $10
    ld a, [$b392]                                 ; $6e29: $fa $92 $b3
    jr c, @-$50                                   ; $6e2c: $38 $ae

    inc d                                         ; $6e2e: $14
    ld d, [hl]                                    ; $6e2f: $56
    cp [hl]                                       ; $6e30: $be
    di                                            ; $6e31: $f3
    scf                                           ; $6e32: $37
    nop                                           ; $6e33: $00
    rla                                           ; $6e34: $17
    and l                                         ; $6e35: $a5
    xor [hl]                                      ; $6e36: $ae
    jp nc, $d4ea                                  ; $6e37: $d2 $ea $d4

    ld a, l                                       ; $6e3a: $7d
    sub h                                         ; $6e3b: $94
    xor a                                         ; $6e3c: $af
    ld d, b                                       ; $6e3d: $50
    ld e, a                                       ; $6e3e: $5f
    ld d, [hl]                                    ; $6e3f: $56
    ld a, [hl]                                    ; $6e40: $7e
    and c                                         ; $6e41: $a1
    and e                                         ; $6e42: $a3
    call nz, $a19f                                ; $6e43: $c4 $9f $a1
    ret z                                         ; $6e46: $c8

    ei                                            ; $6e47: $fb
    sbc a                                         ; $6e48: $9f
    rst $20                                       ; $6e49: $e7
    jp z, $94cf                                   ; $6e4a: $ca $cf $94

    ld d, a                                       ; $6e4d: $57
    adc $73                                       ; $6e4e: $ce $73
    sub a                                         ; $6e50: $97
    ld a, [hl-]                                   ; $6e51: $3a
    ld a, h                                       ; $6e52: $7c
    ld e, l                                       ; $6e53: $5d
    cpl                                           ; $6e54: $2f
    adc h                                         ; $6e55: $8c
    dec c                                         ; $6e56: $0d
    ld [hl], d                                    ; $6e57: $72
    xor a                                         ; $6e58: $af
    scf                                           ; $6e59: $37
    nop                                           ; $6e5a: $00
    rla                                           ; $6e5b: $17
    push hl                                       ; $6e5c: $e5
    ld a, [hl+]                                   ; $6e5d: $2a
    ld l, l                                       ; $6e5e: $6d
    sbc l                                         ; $6e5f: $9d
    rst $28                                       ; $6e60: $ef
    rst $30                                       ; $6e61: $f7
    ld [hl-], a                                   ; $6e62: $32
    rst $08                                       ; $6e63: $cf
    ld [hl-], a                                   ; $6e64: $32
    dec h                                         ; $6e65: $25
    xor h                                         ; $6e66: $ac
    sbc b                                         ; $6e67: $98
    dec bc                                        ; $6e68: $0b
    sbc e                                         ; $6e69: $9b
    ld h, $7c                                     ; $6e6a: $26 $7c
    ld hl, $8725                                  ; $6e6c: $21 $25 $87
    cp c                                          ; $6e6f: $b9
    ld d, d                                       ; $6e70: $52
    ld e, b                                       ; $6e71: $58
    ld sp, hl                                     ; $6e72: $f9
    adc $0f                                       ; $6e73: $ce $0f
    rst $18                                       ; $6e75: $df
    rst $38                                       ; $6e76: $ff
    dec c                                         ; $6e77: $0d
    nop                                           ; $6e78: $00
    db $dd                                        ; $6e79: $dd
    ld l, $e3                                     ; $6e7a: $2e $e3
    jp nz, Jump_03c_4a56                          ; $6e7c: $c2 $56 $4a

    push de                                       ; $6e7f: $d5
    ld e, $b3                                     ; $6e80: $1e $b3
    inc de                                        ; $6e82: $13
    ld [$ee1c], a                                 ; $6e83: $ea $1c $ee
    inc a                                         ; $6e86: $3c
    or c                                          ; $6e87: $b1
    ld d, [hl]                                    ; $6e88: $56
    ld d, a                                       ; $6e89: $57
    scf                                           ; $6e8a: $37
    db $f4                                        ; $6e8b: $f4
    add hl, hl                                    ; $6e8c: $29
    rst $30                                       ; $6e8d: $f7
    ld a, l                                       ; $6e8e: $7d
    cp a                                          ; $6e8f: $bf
    jp c, $e2cc                                   ; $6e90: $da $cc $e2

jr_03c_6e93:
    cp b                                          ; $6e93: $b8
    jp z, $a9d7                                   ; $6e94: $ca $d7 $a9

    ei                                            ; $6e97: $fb
    ld d, l                                       ; $6e98: $55
    jr z, @-$03                                   ; $6e99: $28 $fb

    sub l                                         ; $6e9b: $95
    ld e, a                                       ; $6e9c: $5f
    jr z, jr_03c_6ef8                             ; $6e9d: $28 $59

    ld c, l                                       ; $6e9f: $4d
    ld c, l                                       ; $6ea0: $4d
    ld sp, hl                                     ; $6ea1: $f9
    push af                                       ; $6ea2: $f5
    ld sp, $25e7                                  ; $6ea3: $31 $e7 $25
    ld a, $f4                                     ; $6ea6: $3e $f4
    and l                                         ; $6ea8: $a5
    call c, Call_03c_7600                         ; $6ea9: $dc $00 $76
    jr jr_03c_6e93                                ; $6eac: $18 $e5

    ld h, l                                       ; $6eae: $65

Jump_03c_6eaf:
    call nz, $ecb1                                ; $6eaf: $c4 $b1 $ec
    ld c, e                                       ; $6eb2: $4b
    db $fd                                        ; $6eb3: $fd
    and [hl]                                      ; $6eb4: $a6
    ld a, [hl+]                                   ; $6eb5: $2a
    adc $b3                                       ; $6eb6: $ce $b3
    inc l                                         ; $6eb8: $2c
    ld d, b                                       ; $6eb9: $50
    xor $9d                                       ; $6eba: $ee $9d
    db $db                                        ; $6ebc: $db
    adc d                                         ; $6ebd: $8a
    add hl, bc                                    ; $6ebe: $09
    adc [hl]                                      ; $6ebf: $8e
    cp d                                          ; $6ec0: $ba
    cpl                                           ; $6ec1: $2f
    ld d, b                                       ; $6ec2: $50
    xor [hl]                                      ; $6ec3: $ae
    halt                                          ; $6ec4: $76
    sub $41                                       ; $6ec5: $d6 $41
    ld a, [c]                                     ; $6ec7: $f2
    dec d                                         ; $6ec8: $15
    jp nz, $ff67                                  ; $6ec9: $c2 $67 $ff

    ld [hl+], a                                   ; $6ecc: $22
    sub $1b                                       ; $6ecd: $d6 $1b
    nop                                           ; $6ecf: $00
    ld bc, $5c94                                  ; $6ed0: $01 $94 $5c
    jr z, jr_03c_6f2e                             ; $6ed3: $28 $59

    ld c, l                                       ; $6ed5: $4d
    ld c, l                                       ; $6ed6: $4d
    ld sp, hl                                     ; $6ed7: $f9
    push af                                       ; $6ed8: $f5
    ld sp, $25e7                                  ; $6ed9: $31 $e7 $25
    ld a, $f4                                     ; $6edc: $3e $f4
    and l                                         ; $6ede: $a5
    call c, $0df7                                 ; $6edf: $dc $f7 $0d
    nop                                           ; $6ee2: $00
    db $dd                                        ; $6ee3: $dd
    ld a, [$ffbe]                                 ; $6ee4: $fa $be $ff
    ld a, c                                       ; $6ee7: $79
    ld l, $a4                                     ; $6ee8: $2e $a4
    and h                                         ; $6eea: $a4
    or $58                                        ; $6eeb: $f6 $58
    rst $28                                       ; $6eed: $ef
    xor h                                         ; $6eee: $ac
    ld [hl], e                                    ; $6eef: $73
    call nc, $fdf5                                ; $6ef0: $d4 $f5 $fd
    ld c, d                                       ; $6ef3: $4a
    di                                            ; $6ef4: $f3
    rst $28                                       ; $6ef5: $ef
    pop hl                                        ; $6ef6: $e1
    ld d, e                                       ; $6ef7: $53

jr_03c_6ef8:
    db $db                                        ; $6ef8: $db
    sub d                                         ; $6ef9: $92
    dec hl                                        ; $6efa: $2b
    sbc h                                         ; $6efb: $9c
    push bc                                       ; $6efc: $c5
    or l                                          ; $6efd: $b5
    ld hl, sp+$52                                 ; $6efe: $f8 $52
    ld [hl], l                                    ; $6f00: $75
    rst $00                                       ; $6f01: $c7
    inc l                                         ; $6f02: $2c
    ld [hl], h                                    ; $6f03: $74
    jr jr_03c_6f79                                ; $6f04: $18 $73

    cp a                                          ; $6f06: $bf
    di                                            ; $6f07: $f3
    call nz, Call_03c_5d5a                        ; $6f08: $c4 $5a $5d
    db $dd                                        ; $6f0b: $dd
    ret nc                                        ; $6f0c: $d0

    and a                                         ; $6f0d: $a7
    call c, $d6eb                                 ; $6f0e: $dc $eb $d6
    dec hl                                        ; $6f11: $2b
    sbc b                                         ; $6f12: $98
    ld a, [c]                                     ; $6f13: $f2
    dec bc                                        ; $6f14: $0b
    dec e                                         ; $6f15: $1d
    dec a                                         ; $6f16: $3d
    ld [hl], l                                    ; $6f17: $75
    ld c, l                                       ; $6f18: $4d
    ld [hl+], a                                   ; $6f19: $22
    ld a, e                                       ; $6f1a: $7b
    nop                                           ; $6f1b: $00
    db $dd                                        ; $6f1c: $dd
    xor [hl]                                      ; $6f1d: $ae
    sbc [hl]                                      ; $6f1e: $9e
    ld h, a                                       ; $6f1f: $67
    cp a                                          ; $6f20: $bf
    sbc a                                         ; $6f21: $9f
    rst $20                                       ; $6f22: $e7
    ld c, h                                       ; $6f23: $4c
    add $56                                       ; $6f24: $c6 $56
    ld a, [bc]                                    ; $6f26: $0a
    ld e, a                                       ; $6f27: $5f
    ld d, [hl]                                    ; $6f28: $56
    ld [hl], d                                    ; $6f29: $72
    ld d, $c7                                     ; $6f2a: $16 $c7
    ld h, c                                       ; $6f2c: $61
    adc [hl]                                      ; $6f2d: $8e

jr_03c_6f2e:
    cp d                                          ; $6f2e: $ba
    add sp, -$54                                  ; $6f2f: $e8 $ac
    reti                                          ; $6f31: $d9


    inc bc                                        ; $6f32: $03
    nop                                           ; $6f33: $00
    db $dd                                        ; $6f34: $dd
    db $ed                                        ; $6f35: $ed
    ld e, a                                       ; $6f36: $5f
    ld b, a                                       ; $6f37: $47
    inc [hl]                                      ; $6f38: $34
    adc c                                         ; $6f39: $89
    ld d, c                                       ; $6f3a: $51
    sbc $e7                                       ; $6f3b: $de $e7
    and d                                         ; $6f3d: $a2
    db $d3                                        ; $6f3e: $d3
    add hl, bc                                    ; $6f3f: $09
    and c                                         ; $6f40: $a1
    cpl                                           ; $6f41: $2f
    xor c                                         ; $6f42: $a9
    ldh a, [$d9]                                  ; $6f43: $f0 $d9
    cp a                                          ; $6f45: $bf
    adc b                                         ; $6f46: $88
    or l                                          ; $6f47: $b5
    daa                                           ; $6f48: $27
    nop                                           ; $6f49: $00
    ld a, l                                       ; $6f4a: $7d
    di                                            ; $6f4b: $f3
    ld b, $67                                     ; $6f4c: $06 $67
    dec sp                                        ; $6f4e: $3b
    ld h, d                                       ; $6f4f: $62
    jp nz, Jump_03c_7157                          ; $6f50: $c2 $57 $71

jr_03c_6f53:
    inc l                                         ; $6f53: $2c
    dec d                                         ; $6f54: $15
    xor $d7                                       ; $6f55: $ee $d7
    jr nc, jr_03c_6f6b                            ; $6f57: $30 $12

    db $e3                                        ; $6f59: $e3
    ld c, e                                       ; $6f5a: $4b
    ret                                           ; $6f5b: $c9


    ld a, e                                       ; $6f5c: $7b
    ld a, l                                       ; $6f5d: $7d
    ld [hl], e                                    ; $6f5e: $73
    rst $18                                       ; $6f5f: $df
    sub c                                         ; $6f60: $91
    ld h, $55                                     ; $6f61: $26 $55
    ld d, a                                       ; $6f63: $57
    ld d, d                                       ; $6f64: $52
    ld d, a                                       ; $6f65: $57
    db $db                                        ; $6f66: $db
    and h                                         ; $6f67: $a4
    ld l, $f8                                     ; $6f68: $2e $f8
    ld a, [de]                                    ; $6f6a: $1a

jr_03c_6f6b:
    ld a, a                                       ; $6f6b: $7f
    ld d, $c7                                     ; $6f6c: $16 $c7
    ld h, c                                       ; $6f6e: $61
    ld l, $74                                     ; $6f6f: $2e $74
    db $f4                                        ; $6f71: $f4
    xor a                                         ; $6f72: $af
    ei                                            ; $6f73: $fb
    adc [hl]                                      ; $6f74: $8e
    inc [hl]                                      ; $6f75: $34
    ld e, c                                       ; $6f76: $59
    ld c, c                                       ; $6f77: $49
    ld e, l                                       ; $6f78: $5d

jr_03c_6f79:
    ld [hl], h                                    ; $6f79: $74
    sub $d4                                       ; $6f7a: $d6 $d4
    dec de                                        ; $6f7c: $1b
    nop                                           ; $6f7d: $00
    db $dd                                        ; $6f7e: $dd
    ld l, $4d                                     ; $6f7f: $2e $4d
    db $ec                                        ; $6f81: $ec

Call_03c_6f82:
    or c                                          ; $6f82: $b1
    ld l, [hl]                                    ; $6f83: $6e
    or $9c                                        ; $6f84: $f6 $9c
    ret nc                                        ; $6f86: $d0

    cp b                                          ; $6f87: $b8
    sub b                                         ; $6f88: $90
    ld a, [c]                                     ; $6f89: $f2
    ld a, $57                                     ; $6f8a: $3e $57
    scf                                           ; $6f8c: $37
    sbc l                                         ; $6f8d: $9d
    db $10                                        ; $6f8e: $10
    ld a, [$da92]                                 ; $6f8f: $fa $92 $da
    inc bc                                        ; $6f92: $03
    nop                                           ; $6f93: $00
    db $dd                                        ; $6f94: $dd
    adc $23                                       ; $6f95: $ce $23
    or [hl]                                       ; $6f97: $b6
    cpl                                           ; $6f98: $2f
    dec a                                         ; $6f99: $3d
    halt                                          ; $6f9a: $76
    push bc                                       ; $6f9b: $c5
    rst $10                                       ; $6f9c: $d7
    xor c                                         ; $6f9d: $a9
    ei                                            ; $6f9e: $fb
    ld a, l                                       ; $6f9f: $7d
    ld b, a                                       ; $6fa0: $47
    sbc d                                         ; $6fa1: $9a
    sub h                                         ; $6fa2: $94
    call nc, $001b                                ; $6fa3: $d4 $1b $00
    ld bc, $3f2f                                  ; $6fa6: $01 $2f $3f
    ei                                            ; $6fa9: $fb
    rla                                           ; $6faa: $17
    or c                                          ; $6fab: $b1
    jp nz, $39e7                                  ; $6fac: $c2 $e7 $39

    ei                                            ; $6faf: $fb
    add a                                         ; $6fb0: $87
    and h                                         ; $6fb1: $a4
    ld sp, hl                                     ; $6fb2: $f9
    dec de                                        ; $6fb3: $1b
    nop                                           ; $6fb4: $00
    db $dd                                        ; $6fb5: $dd
    ld l, $c7                                     ; $6fb6: $2e $c7
    ld e, a                                       ; $6fb8: $5f
    ld [hl], l                                    ; $6fb9: $75
    ld a, c                                       ; $6fba: $79
    rla                                           ; $6fbb: $17
    ld a, a                                       ; $6fbc: $7f
    sbc [hl]                                      ; $6fbd: $9e
    xor e                                         ; $6fbe: $ab
    rst $18                                       ; $6fbf: $df
    ld d, e                                       ; $6fc0: $53
    cp [hl]                                       ; $6fc1: $be
    rst $00                                       ; $6fc2: $c7
    ld [bc], a                                    ; $6fc3: $02
    ld e, [hl]                                    ; $6fc4: $5e
    ld l, b                                       ; $6fc5: $68
    jr c, jr_03c_6f53                             ; $6fc6: $38 $8b

    db $e3                                        ; $6fc8: $e3
    jp z, $f82f                                   ; $6fc9: $ca $2f $f8

    adc e                                         ; $6fcc: $8b
    ld e, a                                       ; $6fcd: $5f
    jp z, Jump_03c_5cfb                           ; $6fce: $ca $fb $5c

    push de                                       ; $6fd1: $d5
    or d                                          ; $6fd2: $b2
    cp d                                          ; $6fd3: $ba
    ld l, c                                       ; $6fd4: $69
    sbc l                                         ; $6fd5: $9d
    scf                                           ; $6fd6: $37
    nop                                           ; $6fd7: $00
    add c                                         ; $6fd8: $81
    adc [hl]                                      ; $6fd9: $8e
    ld hl, sp+$73                                 ; $6fda: $f8 $73
    cp b                                          ; $6fdc: $b8
    jr nc, jr_03c_702c                            ; $6fdd: $30 $4d

    adc $64                                       ; $6fdf: $ce $64
    sbc l                                         ; $6fe1: $9d
    ei                                            ; $6fe2: $fb
    add hl, sp                                    ; $6fe3: $39
    db $fc                                        ; $6fe4: $fc
    dec d                                         ; $6fe5: $15
    sbc d                                         ; $6fe6: $9a
    and b                                         ; $6fe7: $a0
    db $eb                                        ; $6fe8: $eb
    rst $38                                       ; $6fe9: $ff
    scf                                           ; $6fea: $37
    nop                                           ; $6feb: $00
    rla                                           ; $6fec: $17
    rlca                                          ; $6fed: $07
    pop hl                                        ; $6fee: $e1
    jp $2f84                                      ; $6fef: $c3 $84 $2f


    and e                                         ; $6ff2: $a3
    db $e4                                        ; $6ff3: $e4
    ld a, [$9451]                                 ; $6ff4: $fa $51 $94
    sub $49                                       ; $6ff7: $d6 $49
    or $cb                                        ; $6ff9: $f6 $cb
    and l                                         ; $6ffb: $a5
    ld a, [de]                                    ; $6ffc: $1a
    daa                                           ; $6ffd: $27
    ld a, c                                       ; $6ffe: $79
    rst $28                                       ; $6fff: $ef
    ld h, d                                       ; $7000: $62
    rst $18                                       ; $7001: $df
    ld [hl], d                                    ; $7002: $72
    ld d, h                                       ; $7003: $54
    adc $64                                       ; $7004: $ce $64
    ld c, c                                       ; $7006: $49
    cp c                                          ; $7007: $b9
    ld bc, $2cbd                                  ; $7008: $01 $bd $2c
    adc $66                                       ; $700b: $ce $66
    pop bc                                        ; $700d: $c1
    or a                                          ; $700e: $b7
    adc $e1                                       ; $700f: $ce $e1
    cpl                                           ; $7011: $2f
    cp [hl]                                       ; $7012: $be
    db $f4                                        ; $7013: $f4
    ld h, e                                       ; $7014: $63
    db $fc                                        ; $7015: $fc
    dec de                                        ; $7016: $1b
    nop                                           ; $7017: $00
    rst $20                                       ; $7018: $e7
    ld [hl], b                                    ; $7019: $70
    pop de                                        ; $701a: $d1
    ld h, $77                                     ; $701b: $26 $77
    dec b                                         ; $701d: $05
    dec b                                         ; $701e: $05
    inc de                                        ; $701f: $13
    ld h, a                                       ; $7020: $67
    ld e, l                                       ; $7021: $5d
    or h                                          ; $7022: $b4
    ld sp, hl                                     ; $7023: $f9
    dec b                                         ; $7024: $05
    jr nc, jr_03c_7061                            ; $7025: $30 $3a

    ld l, h                                       ; $7027: $6c
    ld a, a                                       ; $7028: $7f

jr_03c_7029:
    inc bc                                        ; $7029: $03
    sub a                                         ; $702a: $97
    db $e3                                        ; $702b: $e3

jr_03c_702c:
    xor a                                         ; $702c: $af
    ld c, [hl]                                    ; $702d: $4e
    and h                                         ; $702e: $a4
    rst $38                                       ; $702f: $ff
    ld a, c                                       ; $7030: $79
    xor $84                                       ; $7031: $ee $84
    and e                                         ; $7033: $a3
    rla                                           ; $7034: $17
    ld [de], a                                    ; $7035: $12
    sbc e                                         ; $7036: $9b
    push bc                                       ; $7037: $c5
    ld d, c                                       ; $7038: $51
    rst $28                                       ; $7039: $ef
    ld e, l                                       ; $703a: $5d
    ld [c], a                                     ; $703b: $e2
    xor d                                         ; $703c: $aa
    adc $33                                       ; $703d: $ce $33
    ld a, [hl]                                    ; $703f: $7e
    add hl, hl                                    ; $7040: $29
    cp h                                          ; $7041: $bc
    ld bc, $9a7d                                  ; $7042: $01 $7d $9a
    inc a                                         ; $7045: $3c
    ld a, h                                       ; $7046: $7c
    ld c, $17                                     ; $7047: $0e $17
    cp [hl]                                       ; $7049: $be
    push bc                                       ; $704a: $c5
    ld sp, $9072                                  ; $704b: $31 $72 $90
    inc a                                         ; $704e: $3c
    ld a, d                                       ; $704f: $7a
    adc $73                                       ; $7050: $ce $73
    sub a                                         ; $7052: $97
    ld a, $be                                     ; $7053: $3e $be
    adc $73                                       ; $7055: $ce $73
    cp l                                          ; $7057: $bd
    add e                                         ; $7058: $83
    ld l, c                                       ; $7059: $69
    or d                                          ; $705a: $b2
    ld a, h                                       ; $705b: $7c
    db $e4                                        ; $705c: $e4
    dec a                                         ; $705d: $3d
    dec sp                                        ; $705e: $3b
    ld e, h                                       ; $705f: $5c
    ld sp, hl                                     ; $7060: $f9

jr_03c_7061:
    ld sp, $8b36                                  ; $7061: $31 $36 $8b
    ld h, e                                       ; $7064: $63
    db $fc                                        ; $7065: $fc
    add l                                         ; $7066: $85
    adc c                                         ; $7067: $89
    sbc h                                         ; $7068: $9c
    push bc                                       ; $7069: $c5
    ld [hl], c                                    ; $706a: $71
    call nc, $ce79                                ; $706b: $d4 $79 $ce
    sbc [hl]                                      ; $706e: $9e
    ld d, d                                       ; $706f: $52
    or a                                          ; $7070: $b7
    ld b, h                                       ; $7071: $44
    sbc $eb                                       ; $7072: $de $eb
    halt                                          ; $7074: $76
    push af                                       ; $7075: $f5
    ld c, d                                       ; $7076: $4a
    ld h, c                                       ; $7077: $61
    push hl                                       ; $7078: $e5
    rst $20                                       ; $7079: $e7
    adc c                                         ; $707a: $89
    ld d, c                                       ; $707b: $51
    ld [hl], d                                    ; $707c: $72
    inc l                                         ; $707d: $2c
    inc sp                                        ; $707e: $33
    sub d                                         ; $707f: $92
    ld [hl], l                                    ; $7080: $75
    adc $73                                       ; $7081: $ce $73
    push af                                       ; $7083: $f5
    ld b, e                                       ; $7084: $43
    xor c                                         ; $7085: $a9
    or e                                          ; $7086: $b3
    xor [hl]                                      ; $7087: $ae
    inc hl                                        ; $7088: $23
    xor [hl]                                      ; $7089: $ae
    rst $18                                       ; $708a: $df
    db $eb                                        ; $708b: $eb
    xor d                                         ; $708c: $aa
    cp a                                          ; $708d: $bf
    ld c, [hl]                                    ; $708e: $4e
    ld c, l                                       ; $708f: $4d
    db $ed                                        ; $7090: $ed
    ld bc, $8100                                  ; $7091: $01 $00 $81
    sbc h                                         ; $7094: $9c
    cp d                                          ; $7095: $ba
    jr nc, jr_03c_7029                            ; $7096: $30 $91

    or e                                          ; $7098: $b3
    jr c, jr_03c_7029                             ; $7099: $38 $8e

    jp z, $e751                                   ; $709b: $ca $51 $e7

    ld [hl], b                                    ; $709e: $70
    ld b, [hl]                                    ; $709f: $46
    or d                                          ; $70a0: $b2
    adc $d5                                       ; $70a1: $ce $d5
    adc $ba                                       ; $70a3: $ce $ba
    adc [hl]                                      ; $70a5: $8e
    inc hl                                        ; $70a6: $23
    and $0d                                       ; $70a7: $e6 $0d
    nop                                           ; $70a9: $00
    sub a                                         ; $70aa: $97
    ld h, $c2                                     ; $70ab: $26 $c2
    ld b, a                                       ; $70ad: $47
    dec [hl]                                      ; $70ae: $35
    adc $04                                       ; $70af: $ce $04
    ld a, a                                       ; $70b1: $7f
    call nc, $a798                                ; $70b2: $d4 $98 $a7
    xor $d0                                       ; $70b5: $ee $d0
    ld [hl], e                                    ; $70b7: $73
    sbc d                                         ; $70b8: $9a
    ret nc                                        ; $70b9: $d0

    call nz, Call_03c_7994                        ; $70ba: $c4 $94 $79
    adc $3e                                       ; $70bd: $ce $3e
    ld hl, $2f98                                  ; $70bf: $21 $98 $2f
    ld d, c                                       ; $70c2: $51
    rst $28                                       ; $70c3: $ef
    push af                                       ; $70c4: $f5
    xor d                                         ; $70c5: $aa
    dec de                                        ; $70c6: $1b
    sub h                                         ; $70c7: $94
    di                                            ; $70c8: $f3
    ld e, h                                       ; $70c9: $5c
    rst $18                                       ; $70ca: $df
    ld h, [hl]                                    ; $70cb: $66
    or d                                          ; $70cc: $b2
    ld [hl], h                                    ; $70cd: $74
    jp hl                                         ; $70ce: $e9


    adc $2d                                       ; $70cf: $ce $2d
    ld e, a                                       ; $70d1: $5f
    or e                                          ; $70d2: $b3
    db $ec                                        ; $70d3: $ec
    ret z                                         ; $70d4: $c8

    push af                                       ; $70d5: $f5
    ld d, $be                                     ; $70d6: $16 $be
    ld c, a                                       ; $70d8: $4f
    sbc c                                         ; $70d9: $99
    rst $20                                       ; $70da: $e7
    jp z, $a02f                                   ; $70db: $ca $2f $a0

    pop de                                        ; $70de: $d1
    set 5, a                                      ; $70df: $cb $ef
    call c, Call_03c_5256                         ; $70e1: $dc $56 $52
    or e                                          ; $70e4: $b3
    ld a, [$7dcb]                                 ; $70e5: $fa $cb $7d
    add sp, -$46                                  ; $70e8: $e8 $ba
    push af                                       ; $70ea: $f5
    ld d, d                                       ; $70eb: $52
    sbc e                                         ; $70ec: $9b
    ld e, c                                       ; $70ed: $59
    inc e                                         ; $70ee: $1c
    ld b, a                                       ; $70ef: $47
    adc l                                         ; $70f0: $8d
    inc e                                         ; $70f1: $1c
    ld [hl], l                                    ; $70f2: $75
    ld a, l                                       ; $70f3: $7d
    sbc e                                         ; $70f4: $9b
    ret                                           ; $70f5: $c9


    jp nc, $3ba5                                  ; $70f6: $d2 $a5 $3b

    or a                                          ; $70f9: $b7
    ld a, h                                       ; $70fa: $7c
    call $03d2                                    ; $70fb: $cd $d2 $03
    nop                                           ; $70fe: $00
    ld d, a                                       ; $70ff: $57
    xor a                                         ; $7100: $af
    db $fc                                        ; $7101: $fc
    ld [bc], a                                    ; $7102: $02
    ld a, [de]                                    ; $7103: $1a
    cp l                                          ; $7104: $bd
    db $fc                                        ; $7105: $fc
    adc $6d                                       ; $7106: $ce $6d
    dec h                                         ; $7108: $25
    dec [hl]                                      ; $7109: $35
    xor e                                         ; $710a: $ab
    cp a                                          ; $710b: $bf
    call c, Call_000_1df7                         ; $710c: $dc $f7 $1d
    cp a                                          ; $710f: $bf
    xor h                                         ; $7110: $ac
    jp nz, $a3fe                                  ; $7111: $c2 $fe $a3

    xor [hl]                                      ; $7114: $ae
    db $e4                                        ; $7115: $e4
    inc l                                         ; $7116: $2c
    adc [hl]                                      ; $7117: $8e
    ld h, e                                       ; $7118: $63
    ld e, c                                       ; $7119: $59
    ld c, b                                       ; $711a: $48
    sub c                                         ; $711b: $91
    inc e                                         ; $711c: $1c
    dec [hl]                                      ; $711d: $35
    halt                                          ; $711e: $76
    xor l                                         ; $711f: $ad
    jp nc, Jump_03c_56a0                          ; $7120: $d2 $a0 $56

    ld e, $7d                                     ; $7123: $1e $7d
    sbc $00                                       ; $7125: $de $00
    rst $20                                       ; $7127: $e7
    or b                                          ; $7128: $b0
    ld b, e                                       ; $7129: $43
    or c                                          ; $712a: $b1
    ld sp, hl                                     ; $712b: $f9
    ld a, [hl-]                                   ; $712c: $3a
    ld [hl], l                                    ; $712d: $75
    ld e, a                                       ; $712e: $5f
    and c                                         ; $712f: $a1
    inc [hl]                                      ; $7130: $34
    ret z                                         ; $7131: $c8

    cp l                                          ; $7132: $bd
    xor h                                         ; $7133: $ac
    xor $d2                                       ; $7134: $ee $d2
    sbc c                                         ; $7136: $99
    call nc, $fbd7                                ; $7137: $d4 $d7 $fb
    cp [hl]                                       ; $713a: $be
    dec a                                         ; $713b: $3d
    dec [hl]                                      ; $713c: $35
    ld [hl], h                                    ; $713d: $74
    ld d, l                                       ; $713e: $55
    ld [hl], l                                    ; $713f: $75
    sbc [hl]                                      ; $7140: $9e
    ei                                            ; $7141: $fb
    adc [hl]                                      ; $7142: $8e
    inc [hl]                                      ; $7143: $34
    ld e, c                                       ; $7144: $59
    ld c, c                                       ; $7145: $49
    sbc l                                         ; $7146: $9d
    db $10                                        ; $7147: $10
    ld a, [$7a92]                                 ; $7148: $fa $92 $7a
    inc bc                                        ; $714b: $03
    cp l                                          ; $714c: $bd
    add d                                         ; $714d: $82
    add hl, hl                                    ; $714e: $29
    cp a                                          ; $714f: $bf
    rst $28                                       ; $7150: $ef
    ld [$5557], sp                                ; $7151: $08 $57 $55
    ld a, c                                       ; $7154: $79
    inc bc                                        ; $7155: $03
    add c                                         ; $7156: $81

Jump_03c_7157:
    ld l, l                                       ; $7157: $6d
    call nc, $9c95                                ; $7158: $d4 $95 $9c
    push bc                                       ; $715b: $c5
    ld [hl], c                                    ; $715c: $71
    ld h, c                                       ; $715d: $61
    inc hl                                        ; $715e: $23
    ld l, d                                       ; $715f: $6a
    adc $e2                                       ; $7160: $ce $e2
    jr c, jr_03c_718e                             ; $7162: $38 $2a

    ld a, h                                       ; $7164: $7c
    call nc, $ced5                                ; $7165: $d4 $d5 $ce
    ld a, [hl-]                                   ; $7168: $3a
    ld a, c                                       ; $7169: $79
    ret                                           ; $716a: $c9


    ld e, c                                       ; $716b: $59
    ld d, a                                       ; $716c: $57
    dec sp                                        ; $716d: $3b
    db $eb                                        ; $716e: $eb
    ld a, [hl+]                                   ; $716f: $2a
    ld e, a                                       ; $7170: $5f
    ld e, d                                       ; $7171: $5a
    ld l, d                                       ; $7172: $6a
    sbc $00                                       ; $7173: $de $00
    db $dd                                        ; $7175: $dd
    cpl                                           ; $7176: $2f
    ld [hl], c                                    ; $7177: $71
    ld d, l                                       ; $7178: $55
    ld b, a                                       ; $7179: $47
    db $ed                                        ; $717a: $ed
    add hl, bc                                    ; $717b: $09
    nop                                           ; $717c: $00
    halt                                          ; $717d: $76
    ld a, [hl-]                                   ; $717e: $3a
    add a                                         ; $717f: $87
    cp a                                          ; $7180: $bf
    sbc $1f                                       ; $7181: $de $1f
    cp $3c                                        ; $7183: $fe $3c
    rst $10                                       ; $7185: $d7
    or b                                          ; $7186: $b0
    jp nc, $75b4                                  ; $7187: $d2 $b4 $75

    ld e, d                                       ; $718a: $5a
    ld l, c                                       ; $718b: $69
    cp $fd                                        ; $718c: $fe $fd

jr_03c_718e:
    cp l                                          ; $718e: $bd
    ld b, b                                       ; $718f: $40
    ld b, d                                       ; $7190: $42
    ld c, [hl]                                    ; $7191: $4e
    ld [hl], d                                    ; $7192: $72
    ld d, $c7                                     ; $7193: $16 $c7
    ld d, c                                       ; $7195: $51
    ld b, a                                       ; $7196: $47
    call $1753                                    ; $7197: $cd $53 $17
    adc d                                         ; $719a: $8a
    xor e                                         ; $719b: $ab
    jp c, $c8f9                                   ; $719c: $da $f9 $c8

    ld a, [c]                                     ; $719f: $f2
    scf                                           ; $71a0: $37
    nop                                           ; $71a1: $00
    db $dd                                        ; $71a2: $dd
    db $ec                                        ; $71a3: $ec
    ld [hl], h                                    ; $71a4: $74
    call nc, $b1ec                                ; $71a5: $d4 $ec $b1
    ld l, [hl]                                    ; $71a8: $6e
    ld a, l                                       ; $71a9: $7d
    sbc d                                         ; $71aa: $9a
    db $fc                                        ; $71ab: $fc
    add d                                         ; $71ac: $82
    ld l, a                                       ; $71ad: $6f
    jp c, Jump_000_3bef                           ; $71ae: $da $ef $3b

    rst $18                                       ; $71b1: $df
    cpl                                           ; $71b2: $2f
    ld a, e                                       ; $71b3: $7b
    nop                                           ; $71b4: $00
    db $dd                                        ; $71b5: $dd
    ld [bc], a                                    ; $71b6: $02
    db $d3                                        ; $71b7: $d3
    cp d                                          ; $71b8: $ba
    add [hl]                                      ; $71b9: $86
    sub l                                         ; $71ba: $95
    and [hl]                                      ; $71bb: $a6
    xor l                                         ; $71bc: $ad
    ld d, e                                       ; $71bd: $53
    ret c                                         ; $71be: $d8

    ld h, e                                       ; $71bf: $63
    ld a, l                                       ; $71c0: $7d
    sbc d                                         ; $71c1: $9a
    inc a                                         ; $71c2: $3c
    ld a, h                                       ; $71c3: $7c
    pop bc                                        ; $71c4: $c1
    or a                                          ; $71c5: $b7
    adc $e1                                       ; $71c6: $ce $e1
    rrca                                          ; $71c8: $0f
    inc sp                                        ; $71c9: $33
    cp $0d                                        ; $71ca: $fe $0d
    nop                                           ; $71cc: $00
    sub a                                         ; $71cd: $97
    cp c                                          ; $71ce: $b9
    add l                                         ; $71cf: $85
    rst $28                                       ; $71d0: $ef
    add l                                         ; $71d1: $85
    di                                            ; $71d2: $f3
    db $ec                                        ; $71d3: $ec
    ld h, a                                       ; $71d4: $67
    dec sp                                        ; $71d5: $3b
    ld l, d                                       ; $71d6: $6a
    call z, $5711                                 ; $71d7: $cc $11 $57
    or a                                          ; $71da: $b7
    add l                                         ; $71db: $85
    jp hl                                         ; $71dc: $e9


    add hl, hl                                    ; $71dd: $29
    ld a, e                                       ; $71de: $7b
    adc h                                         ; $71df: $8c
    call nc, $ae79                                ; $71e0: $d4 $79 $ae
    ld c, [hl]                                    ; $71e3: $4e
    ld l, c                                       ; $71e4: $69
    ld [hl], d                                    ; $71e5: $72
    rst $28                                       ; $71e6: $ef
    ld [$751f], a                                 ; $71e7: $ea $1f $75
    pop bc                                        ; $71ea: $c1
    sub h                                         ; $71eb: $94
    sbc a                                         ; $71ec: $9f
    rst $20                                       ; $71ed: $e7
    inc l                                         ; $71ee: $2c
    adc [hl]                                      ; $71ef: $8e
    adc e                                         ; $71f0: $8b
    sbc h                                         ; $71f1: $9c
    ld a, [c]                                     ; $71f2: $f2
    rst $20                                       ; $71f3: $e7
    ld e, c                                       ; $71f4: $59
    ld [hl], c                                    ; $71f5: $71
    inc l                                         ; $71f6: $2c
    ld sp, $5def                                  ; $71f7: $31 $ef $5d
    ld e, $5b                                     ; $71fa: $1e $5b
    or c                                          ; $71fc: $b1
    jp hl                                         ; $71fd: $e9


    rst $38                                       ; $71fe: $ff
    dec h                                         ; $71ff: $25
    rst $10                                       ; $7200: $d7
    ld l, c                                       ; $7201: $69
    call nz, $977b                                ; $7202: $c4 $7b $97
    db $e3                                        ; $7205: $e3
    xor a                                         ; $7206: $af
    halt                                          ; $7207: $76
    sub $9d                                       ; $7208: $d6 $9d
    set 2, d                                      ; $720a: $cb $d2
    ld a, [$efaf]                                 ; $720c: $fa $af $ef
    ld d, a                                       ; $720f: $57
    sbc d                                         ; $7210: $9a
    ld a, a                                       ; $7211: $7f
    cp a                                          ; $7212: $bf
    ldh a, [$e5]                                  ; $7213: $f0 $e5
    rla                                           ; $7215: $17
    db $db                                        ; $7216: $db
    dec c                                         ; $7217: $0d
    nop                                           ; $7218: $00
    db $dd                                        ; $7219: $dd
    xor [hl]                                      ; $721a: $ae
    adc $f9                                       ; $721b: $ce $f9
    rla                                           ; $721d: $17
    sbc e                                         ; $721e: $9b
    sbc a                                         ; $721f: $9f
    ld [hl], c                                    ; $7220: $71
    ld e, a                                       ; $7221: $5f
    inc l                                         ; $7222: $2c
    xor [hl]                                      ; $7223: $ae
    ld d, c                                       ; $7224: $51
    ld h, [hl]                                    ; $7225: $66
    ld d, d                                       ; $7226: $52
    ld a, a                                       ; $7227: $7f
    ld h, c                                       ; $7228: $61
    jp z, $9122                                   ; $7229: $ca $22 $91

    ld [hl-], a                                   ; $722c: $32
    add a                                         ; $722d: $87
    rst $18                                       ; $722e: $df
    inc bc                                        ; $722f: $03
    nop                                           ; $7230: $00
    ld bc, $bc94                                  ; $7231: $01 $94 $bc
    rst $28                                       ; $7234: $ef
    cp e                                          ; $7235: $bb
    cp e                                          ; $7236: $bb
    push bc                                       ; $7237: $c5
    or l                                          ; $7238: $b5
    xor d                                         ; $7239: $aa
    cp b                                          ; $723a: $b8
    sbc d                                         ; $723b: $9a
    dec hl                                        ; $723c: $2b
    cp a                                          ; $723d: $bf
    ldh [rPCM34], a                               ; $723e: $e0 $77
    and h                                         ; $7240: $a4
    ld l, e                                       ; $7241: $6b
    push af                                       ; $7242: $f5
    and e                                         ; $7243: $a3
    ld a, a                                       ; $7244: $7f
    sbc a                                         ; $7245: $9f
    dec a                                         ; $7246: $3d
    ld bc, $7add                                  ; $7247: $01 $dd $7a
    dec bc                                        ; $724a: $0b
    ld [hl], e                                    ; $724b: $73
    ld d, $c7                                     ; $724c: $16 $c7
    push de                                       ; $724e: $d5
    ld e, h                                       ; $724f: $5c
    dec h                                         ; $7250: $25
    xor l                                         ; $7251: $ad
    ei                                            ; $7252: $fb
    add l                                         ; $7253: $85
    sub d                                         ; $7254: $92
    sbc l                                         ; $7255: $9d
    sub a                                         ; $7256: $97
    sub l                                         ; $7257: $95
    sbc a                                         ; $7258: $9f
    ld sp, hl                                     ; $7259: $f9
    ldh a, [$7b]                                  ; $725a: $f0 $7b
    nop                                           ; $725c: $00
    db $dd                                        ; $725d: $dd
    ld [bc], a                                    ; $725e: $02
    inc e                                         ; $725f: $1c
    ld a, l                                       ; $7260: $7d
    xor [hl]                                      ; $7261: $ae
    ret                                           ; $7262: $c9


    ld a, [hl]                                    ; $7263: $7e
    push hl                                       ; $7264: $e5
    rla                                           ; $7265: $17
    ld c, b                                       ; $7266: $48
    ld h, e                                       ; $7267: $63
    sbc d                                         ; $7268: $9a
    dec l                                         ; $7269: $2d
    ld l, $40                                     ; $726a: $2e $40
    ld [hl-], a                                   ; $726c: $32
    ret c                                         ; $726d: $d8

    ld a, [hl-]                                   ; $726e: $3a
    call $b4ff                                    ; $726f: $cd $ff $b4
    pop hl                                        ; $7272: $e1
    inc l                                         ; $7273: $2c
    adc [hl]                                      ; $7274: $8e
    xor e                                         ; $7275: $ab
    cp c                                          ; $7276: $b9

Call_03c_7277:
    ld a, [bc]                                    ; $7277: $0a
    rra                                           ; $7278: $1f
    ld a, e                                       ; $7279: $7b
    nop                                           ; $727a: $00
    db $dd                                        ; $727b: $dd
    cpl                                           ; $727c: $2f
    ld [hl], c                                    ; $727d: $71
    xor l                                         ; $727e: $ad
    ld a, [hl+]                                   ; $727f: $2a
    xor $d1                                       ; $7280: $ee $d1
    rst $38                                       ; $7282: $ff
    ld a, $68                                     ; $7283: $3e $68
    db $d3                                        ; $7285: $d3
    inc de                                        ; $7286: $13
    nop                                           ; $7287: $00
    db $dd                                        ; $7288: $dd
    ld l, $e3                                     ; $7289: $2e $e3
    jp nz, Jump_03c_4a56                          ; $728b: $c2 $56 $4a

    push de                                       ; $728e: $d5
    ld e, $00                                     ; $728f: $1e $00
    db $dd                                        ; $7291: $dd
    db $ec                                        ; $7292: $ec
    ld e, a                                       ; $7293: $5f
    call nz, $80ba                                ; $7294: $c4 $ba $80
    adc h                                         ; $7297: $8c
    sub c                                         ; $7298: $91
    jp nc, $dd63                                  ; $7299: $d2 $63 $dd

    adc $75                                       ; $729c: $ce $75
    sub h                                         ; $729e: $94
    sbc a                                         ; $729f: $9f
    rst $20                                       ; $72a0: $e7
    jp z, $7ccf                                   ; $72a1: $ca $cf $7c

    db $fd                                        ; $72a4: $fd
    dec bc                                        ; $72a5: $0b
    ld d, e                                       ; $72a6: $53
    ld d, [hl]                                    ; $72a7: $56
    ld a, [hl]                                    ; $72a8: $7e
    sbc b                                         ; $72a9: $98
    ld h, $c8                                     ; $72aa: $26 $c8
    ld e, l                                       ; $72ac: $5d
    dec a                                         ; $72ad: $3d
    ld [c], a                                     ; $72ae: $e2
    jp z, $902f                                   ; $72af: $ca $2f $90

    add $34                                       ; $72b2: $c6 $34
    ld e, e                                       ; $72b4: $5b
    ld e, h                                       ; $72b5: $5c
    add b                                         ; $72b6: $80

jr_03c_72b7:
    ld h, h                                       ; $72b7: $64
    or b                                          ; $72b8: $b0
    ld [hl], l                                    ; $72b9: $75
    sbc d                                         ; $72ba: $9a
    rst $38                                       ; $72bb: $ff
    ld e, $3b                                     ; $72bc: $1e $3b
    and a                                         ; $72be: $a7
    or c                                          ; $72bf: $b1
    rst $38                                       ; $72c0: $ff
    ld b, d                                       ; $72c1: $42
    add a                                         ; $72c2: $87
    ld sp, $3575                                  ; $72c3: $31 $75 $35
    ld sp, $9e75                                  ; $72c6: $31 $75 $9e
    inc sp                                        ; $72c9: $33
    xor a                                         ; $72ca: $af
    or c                                          ; $72cb: $b1
    ld b, c                                       ; $72cc: $41
    ld a, c                                       ; $72cd: $79
    xor a                                         ; $72ce: $af
    ld d, a                                       ; $72cf: $57
    jr nc, jr_03c_72b7                            ; $72d0: $30 $e5

    ld d, a                                       ; $72d2: $57
    ld [hl], c                                    ; $72d3: $71
    inc l                                         ; $72d4: $2c
    dec d                                         ; $72d5: $15
    xor $17                                       ; $72d6: $ee $17
    db $dd                                        ; $72d8: $dd
    ld a, h                                       ; $72d9: $7c
    ld c, d                                       ; $72da: $4a
    db $dd                                        ; $72db: $dd
    ld h, d                                       ; $72dc: $62
    ld c, d                                       ; $72dd: $4a
    rr e                                          ; $72de: $cb $1b
    nop                                           ; $72e0: $00
    halt                                          ; $72e1: $76
    ld a, [de]                                    ; $72e2: $1a
    ld a, a                                       ; $72e3: $7f
    dec d                                         ; $72e4: $15
    or $5f                                        ; $72e5: $f6 $5f
    inc h                                         ; $72e7: $24
    ld a, d                                       ; $72e8: $7a
    xor c                                         ; $72e9: $a9
    cp d                                          ; $72ea: $ba
    cp d                                          ; $72eb: $ba
    ld c, e                                       ; $72ec: $4b
    ld h, a                                       ; $72ed: $67
    ld e, h                                       ; $72ee: $5c
    di                                            ; $72ef: $f3
    rst $28                                       ; $72f0: $ef
    di                                            ; $72f1: $f3
    ld b, $dd                                     ; $72f2: $06 $dd
    cpl                                           ; $72f4: $2f
    ld [hl], c                                    ; $72f5: $71
    xor l                                         ; $72f6: $ad
    ld a, [hl+]                                   ; $72f7: $2a
    xor $d1                                       ; $72f8: $ee $d1
    rst $38                                       ; $72fa: $ff
    ld a, $68                                     ; $72fb: $3e $68
    db $d3                                        ; $72fd: $d3
    inc de                                        ; $72fe: $13

jr_03c_72ff:
    nop                                           ; $72ff: $00
    db $dd                                        ; $7300: $dd
    ld l, $e3                                     ; $7301: $2e $e3
    jp nz, Jump_03c_4a56                          ; $7303: $c2 $56 $4a

    push de                                       ; $7306: $d5
    ld e, $00                                     ; $7307: $1e $00
    ld h, a                                       ; $7309: $67
    scf                                           ; $730a: $37
    ld [hl+], a                                   ; $730b: $22
    ld a, h                                       ; $730c: $7c
    sbc l                                         ; $730d: $9d
    ld b, [hl]                                    ; $730e: $46
    sbc h                                         ; $730f: $9c
    db $fd                                        ; $7310: $fd
    adc e                                         ; $7311: $8b
    ld e, b                                       ; $7312: $58
    rla                                           ; $7313: $17
    sub b                                         ; $7314: $90
    ld sp, $ee52                                  ; $7315: $31 $52 $ee
    ld e, l                                       ; $7318: $5d
    sub h                                         ; $7319: $94
    adc e                                         ; $731a: $8b
    ld b, h                                       ; $731b: $44
    jr z, jr_03c_72ff                             ; $731c: $28 $e1

    ld d, e                                       ; $731e: $53
    ld e, $9c                                     ; $731f: $1e $9c
    ld a, [c]                                     ; $7321: $f2

jr_03c_7322:
    dec bc                                        ; $7322: $0b
    ld l, b                                       ; $7323: $68
    ld l, b                                       ; $7324: $68
    ld a, b                                       ; $7325: $78
    inc bc                                        ; $7326: $03
    rst $20                                       ; $7327: $e7
    ld a, [hl-]                                   ; $7328: $3a
    jp z, Jump_03c_73cf                           ; $7329: $ca $cf $73

    push hl                                       ; $732c: $e5
    ld h, a                                       ; $732d: $67
    cp [hl]                                       ; $732e: $be
    cp $85                                        ; $732f: $fe $85
    add hl, hl                                    ; $7331: $29
    dec hl                                        ; $7332: $2b
    ccf                                           ; $7333: $3f
    ld c, h                                       ; $7334: $4c
    inc de                                        ; $7335: $13
    db $e4                                        ; $7336: $e4
    xor [hl]                                      ; $7337: $ae
    ld e, $71                                     ; $7338: $1e $71
    push hl                                       ; $733a: $e5
    rla                                           ; $733b: $17
    ld c, b                                       ; $733c: $48
    ld h, e                                       ; $733d: $63
    sbc d                                         ; $733e: $9a
    dec l                                         ; $733f: $2d
    ld l, $40                                     ; $7340: $2e $40
    ld [hl-], a                                   ; $7342: $32
    ret c                                         ; $7343: $d8

    ld a, [hl-]                                   ; $7344: $3a
    call Call_03c_7c3f                            ; $7345: $cd $3f $7c
    jp c, $b986                                   ; $7348: $da $86 $b9

    sbc d                                         ; $734b: $9a
    and e                                         ; $734c: $a3
    push bc                                       ; $734d: $c5
    or l                                          ; $734e: $b5
    ld c, d                                       ; $734f: $4a
    sbc d                                         ; $7350: $9a
    cp h                                          ; $7351: $bc
    ld [hl], a                                    ; $7352: $77
    ld c, [hl]                                    ; $7353: $4e
    ld h, e                                       ; $7354: $63
    rst $38                                       ; $7355: $ff
    add l                                         ; $7356: $85

Jump_03c_7357:
    ld c, $63                                     ; $7357: $0e $63
    ld [$626a], a                                 ; $7359: $ea $6a $62
    ld [$673c], a                                 ; $735c: $ea $3c $67
    ld e, [hl]                                    ; $735f: $5e
    ld h, e                                       ; $7360: $63
    add e                                         ; $7361: $83
    ld a, [c]                                     ; $7362: $f2
    ld e, [hl]                                    ; $7363: $5e
    xor a                                         ; $7364: $af
    ld h, b                                       ; $7365: $60
    jp z, $e2af                                   ; $7366: $ca $af $e2

    ld e, b                                       ; $7369: $58
    ld a, [hl+]                                   ; $736a: $2a
    call c, $ba2f                                 ; $736b: $dc $2f $ba
    ld sp, hl                                     ; $736e: $f9
    sub h                                         ; $736f: $94
    cp d                                          ; $7370: $ba
    push bc                                       ; $7371: $c5
    sub h                                         ; $7372: $94
    sub [hl]                                      ; $7373: $96
    scf                                           ; $7374: $37
    nop                                           ; $7375: $00
    add c                                         ; $7376: $81
    ld d, l                                       ; $7377: $55
    ld h, a                                       ; $7378: $67
    ld [hl], c                                    ; $7379: $71
    ld e, h                                       ; $737a: $5c
    ldh a, [$ad]                                  ; $737b: $f0 $ad
    ei                                            ; $737d: $fb
    ld [bc], a                                    ; $737e: $02
    cp c                                          ; $737f: $b9
    ld b, [hl]                                    ; $7380: $46
    ld e, h                                       ; $7381: $5c
    sbc b                                         ; $7382: $98
    or d                                          ; $7383: $b2
    or a                                          ; $7384: $b7
    jr c, jr_03c_7322                             ; $7385: $38 $9b

    ei                                            ; $7387: $fb
    cp [hl]                                       ; $7388: $be
    inc bc                                        ; $7389: $03
    inc e                                         ; $738a: $1c
    ld a, l                                       ; $738b: $7d
    ld l, $6d                                     ; $738c: $2e $6d
    and h                                         ; $738e: $a4
    db $e4                                        ; $738f: $e4
    dec c                                         ; $7390: $0d
    nop                                           ; $7391: $00
    add c                                         ; $7392: $81
    ld e, a                                       ; $7393: $5f
    ldh [$d3], a                                  ; $7394: $e0 $d3
    cpl                                           ; $7396: $2f
    di                                            ; $7397: $f3
    sbc h                                         ; $7398: $9c
    or a                                          ; $7399: $b7
    ld b, l                                       ; $739a: $45
    rst $08                                       ; $739b: $cf
    ld b, l                                       ; $739c: $45
    adc [hl]                                      ; $739d: $8e
    ld l, d                                       ; $739e: $6a
    ld [de], a                                    ; $739f: $12
    db $fd                                        ; $73a0: $fd
    db $eb                                        ; $73a1: $eb
    dec c                                         ; $73a2: $0d
    nop                                           ; $73a3: $00
    db $dd                                        ; $73a4: $dd
    ld a, d                                       ; $73a5: $7a
    ld e, c                                       ; $73a6: $59
    sbc h                                         ; $73a7: $9c
    call $b1a8                                    ; $73a8: $cd $a8 $b1
    ld c, e                                       ; $73ab: $4b
    ld a, e                                       ; $73ac: $7b
    nop                                           ; $73ad: $00
    rst $20                                       ; $73ae: $e7
    inc a                                         ; $73af: $3c
    ld a, [$c39c]                                 ; $73b0: $fa $9c $c3
    ld e, a                                       ; $73b3: $5f
    push bc                                       ; $73b4: $c5
    or c                                          ; $73b5: $b1
    ld b, h                                       ; $73b6: $44
    sbc d                                         ; $73b7: $9a
    ld d, $1f                                     ; $73b8: $16 $1f
    cp [hl]                                       ; $73ba: $be
    xor $0c                                       ; $73bb: $ee $0c
    jp nz, $9017                                  ; $73bd: $c2 $17 $90

    ld sp, $7a52                                  ; $73c0: $31 $52 $7a
    xor $32                                       ; $73c3: $ee $32
    xor [hl]                                      ; $73c5: $ae
    ld a, [c]                                     ; $73c6: $f2
    ei                                            ; $73c7: $fb
    sbc c                                         ; $73c8: $99
    call nc, $b2f8                                ; $73c9: $d4 $f8 $b2
    inc de                                        ; $73cc: $13
    ld d, $3a                                     ; $73cd: $16 $3a

Jump_03c_73cf:
    adc h                                         ; $73cf: $8c
    xor c                                         ; $73d0: $a9
    rst $30                                       ; $73d1: $f7
    cp d                                          ; $73d2: $ba
    ld e, l                                       ; $73d3: $5d
    pop hl                                        ; $73d4: $e1
    ld e, b                                       ; $73d5: $58
    ld a, [hl+]                                   ; $73d6: $2a
    call c, $fcaf                                 ; $73d7: $dc $af $fc
    call z, $bfd7                                 ; $73da: $cc $d7 $bf
    rrca                                          ; $73dd: $0f
    and [hl]                                      ; $73de: $a6
    db $fc                                        ; $73df: $fc
    ld [$75a6], a                                 ; $73e0: $ea $a6 $75
    or $00                                        ; $73e3: $f6 $00
    db $dd                                        ; $73e5: $dd
    inc bc                                        ; $73e6: $03
    dec de                                        ; $73e7: $1b
    db $e4                                        ; $73e8: $e4
    adc b                                         ; $73e9: $88
    inc hl                                        ; $73ea: $23
    adc [hl]                                      ; $73eb: $8e
    ld a, [de]                                    ; $73ec: $1a
    cp c                                          ; $73ed: $b9
    or b                                          ; $73ee: $b0
    ld l, c                                       ; $73ef: $69
    or $5c                                        ; $73f0: $f6 $5c
    rst $18                                       ; $73f2: $df
    ld e, h                                       ; $73f3: $5c
    ld c, c                                       ; $73f4: $49
    ld e, l                                       ; $73f5: $5d
    add l                                         ; $73f6: $85
    ld a, c                                       ; $73f7: $79
    inc bc                                        ; $73f8: $03
    ld a, l                                       ; $73f9: $7d
    ld [hl], e                                    ; $73fa: $73
    ld h, c                                       ; $73fb: $61
    ld a, d                                       ; $73fc: $7a
    jp hl                                         ; $73fd: $e9


    jp nc, $d2b1                                  ; $73fe: $d2 $b1 $d2

    ld [c], a                                     ; $7401: $e2
    ld c, e                                       ; $7402: $4b
    call $ced5                                    ; $7403: $cd $d5 $ce
    inc b                                         ; $7406: $04
    ld [hl], e                                    ; $7407: $73
    or c                                          ; $7408: $b1
    or c                                          ; $7409: $b1
    ld c, $73                                     ; $740a: $0e $73
    ld [hl], l                                    ; $740c: $75
    sub a                                         ; $740d: $97
    sbc $00                                       ; $740e: $de $00
    db $dd                                        ; $7410: $dd
    ld a, d                                       ; $7411: $7a
    sub l                                         ; $7412: $95
    ld d, l                                       ; $7413: $55
    scf                                           ; $7414: $37
    db $fc                                        ; $7415: $fc
    or d                                          ; $7416: $b2
    ret z                                         ; $7417: $c8

    ld de, $624d                                  ; $7418: $11 $4d $62
    sub h                                         ; $741b: $94
    sub a                                         ; $741c: $97
    xor d                                         ; $741d: $aa
    dec a                                         ; $741e: $3d
    nop                                           ; $741f: $00
    add c                                         ; $7420: $81
    sub h                                         ; $7421: $94
    xor [hl]                                      ; $7422: $ae
    push de                                       ; $7423: $d5
    db $ec                                        ; $7424: $ec
    sub a                                         ; $7425: $97
    ld [hl-], a                                   ; $7426: $32
    adc e                                         ; $7427: $8b
    db $e3                                        ; $7428: $e3
    ld [hl+], a                                   ; $7429: $22
    daa                                           ; $742a: $27
    dec c                                         ; $742b: $0d
    db $fd                                        ; $742c: $fd
    dec hl                                        ; $742d: $2b
    ld a, h                                       ; $742e: $7c
    ld d, $d7                                     ; $742f: $16 $d7
    adc b                                         ; $7431: $88
    ld d, $d7                                     ; $7432: $16 $d7
    jr z, @+$41                                   ; $7434: $28 $3f

    adc e                                         ; $7436: $8b
    db $e3                                        ; $7437: $e3
    sub h                                         ; $7438: $94

jr_03c_7439:
    xor a                                         ; $7439: $af
    scf                                           ; $743a: $37
    nop                                           ; $743b: $00
    ld a, l                                       ; $743c: $7d
    ld [hl], e                                    ; $743d: $73
    ld b, c                                       ; $743e: $41
    xor [hl]                                      ; $743f: $ae
    jp nc, $e634                                  ; $7440: $d2 $34 $e6

    ld a, [hl]                                    ; $7443: $7e
    ld hl, sp-$42                                 ; $7444: $f8 $be
    ld de, $50be                                  ; $7446: $11 $be $50
    or d                                          ; $7449: $b2
    sbc d                                         ; $744a: $9a
    sbc d                                         ; $744b: $9a
    ld [hl], d                                    ; $744c: $72
    inc bc                                        ; $744d: $03
    ld d, a                                       ; $744e: $57
    rst $20                                       ; $744f: $e7
    ld [c], a                                     ; $7450: $e2
    rst $10                                       ; $7451: $d7
    ld h, c                                       ; $7452: $61
    sbc d                                         ; $7453: $9a
    cp h                                          ; $7454: $bc
    rla                                           ; $7455: $17
    ld b, b                                       ; $7456: $40
    ret                                           ; $7457: $c9


    dec b                                         ; $7458: $05
    rst $18                                       ; $7459: $df
    cp d                                          ; $745a: $ba
    cpl                                           ; $745b: $2f
    sub b                                         ; $745c: $90
    ld l, e                                       ; $745d: $6b
    call nz, $94d5                                ; $745e: $c4 $d5 $94
    db $f4                                        ; $7461: $f4
    ld a, h                                       ; $7462: $7c
    db $f4                                        ; $7463: $f4
    add hl, sp                                    ; $7464: $39
    db $eb                                        ; $7465: $eb
    inc l                                         ; $7466: $2c
    xor [hl]                                      ; $7467: $ae
    ld d, c                                       ; $7468: $51
    ld [hl], d                                    ; $7469: $72
    ld a, [$ca1d]                                 ; $746a: $fa $1d $ca
    inc l                                         ; $746d: $2c
    xor [hl]                                      ; $746e: $ae
    ld d, l                                       ; $746f: $55
    push bc                                       ; $7470: $c5
    ld d, c                                       ; $7471: $51
    ld l, a                                       ; $7472: $6f
    nop                                           ; $7473: $00
    or $8f                                        ; $7474: $f6 $8f
    db $eb                                        ; $7476: $eb
    sub h                                         ; $7477: $94
    or h                                          ; $7478: $b4
    jr c, jr_03c_7439                             ; $7479: $38 $be

    rst $08                                       ; $747b: $cf
    ld d, c                                       ; $747c: $51
    inc hl                                        ; $747d: $23
    rla                                           ; $747e: $17
    cp [hl]                                       ; $747f: $be
    or [hl]                                       ; $7480: $b6
    ld d, d                                       ; $7481: $52
    ld a, [c]                                     ; $7482: $f2
    cp [hl]                                       ; $7483: $be
    rst $28                                       ; $7484: $ef
    cp [hl]                                       ; $7485: $be
    add hl, sp                                    ; $7486: $39
    inc hl                                        ; $7487: $23
    call z, Call_000_1c59                         ; $7488: $cc $59 $1c
    rla                                           ; $748b: $17
    ld a, [hl-]                                   ; $748c: $3a
    ld a, [$119f]                                 ; $748d: $fa $9f $11
    rst $10                                       ; $7490: $d7
    rst $38                                       ; $7491: $ff
    and l                                         ; $7492: $a5
    db $e4                                        ; $7493: $e4
    dec c                                         ; $7494: $0d
    nop                                           ; $7495: $00
    db $dd                                        ; $7496: $dd
    db $ed                                        ; $7497: $ed
    add d                                         ; $7498: $82
    dec a                                         ; $7499: $3d
    rst $10                                       ; $749a: $d7
    add a                                         ; $749b: $87
    dec bc                                        ; $749c: $0b
    ld [hl], d                                    ; $749d: $72
    ld h, $98                                     ; $749e: $26 $98
    and $7d                                       ; $74a0: $e6 $7d
    adc $24                                       ; $74a2: $ce $24
    ld b, [hl]                                    ; $74a4: $46
    ld sp, hl                                     ; $74a5: $f9
    ld a, l                                       ; $74a6: $7d
    add c                                         ; $74a7: $81
    ld a, [c]                                     ; $74a8: $f2
    ld b, $57                                     ; $74a9: $06 $57
    cp h                                          ; $74ab: $bc
    push af                                       ; $74ac: $f5
    pop hl                                        ; $74ad: $e1
    or e                                          ; $74ae: $b3
    ld a, a                                       ; $74af: $7f
    ld de, $02eb                                  ; $74b0: $11 $eb $02
    ld [hl-], a                                   ; $74b3: $32
    ld b, [hl]                                    ; $74b4: $46
    jp z, $cbbd                                   ; $74b5: $ca $bd $cb

    ld a, [de]                                    ; $74b8: $1a
    sub c                                         ; $74b9: $91
    cp d                                          ; $74ba: $ba
    ld a, [c]                                     ; $74bb: $f2
    inc sp                                        ; $74bc: $33
    rra                                           ; $74bd: $1f
    cp $3c                                        ; $74be: $fe $3c
    rla                                           ; $74c0: $17
    db $dd                                        ; $74c1: $dd
    jp nz, $c2f7                                  ; $74c2: $c2 $f7 $c2

    ld e, c                                       ; $74c5: $59
    ld d, a                                       ; $74c6: $57
    ld e, [hl]                                    ; $74c7: $5e
    ld b, a                                       ; $74c8: $47
    adc l                                         ; $74c9: $8d
    ld e, l                                       ; $74ca: $5d
    ld a, [hl-]                                   ; $74cb: $3a
    and a                                         ; $74cc: $a7
    adc a                                         ; $74cd: $8f
    ld a, $67                                     ; $74ce: $3e $67
    or d                                          ; $74d0: $b2
    adc $05                                       ; $74d1: $ce $05
    rst $18                                       ; $74d3: $df
    ret c                                         ; $74d4: $d8

    db $fc                                        ; $74d5: $fc
    xor d                                         ; $74d6: $aa
    sub [hl]                                      ; $74d7: $96
    ld a, e                                       ; $74d8: $7b
    daa                                           ; $74d9: $27
    inc l                                         ; $74da: $2c
    ld [hl], h                                    ; $74db: $74
    jr jr_03c_7531                                ; $74dc: $18 $53

    ld d, a                                       ; $74de: $57
    inc de                                        ; $74df: $13
    ld d, e                                       ; $74e0: $53
    rla                                           ; $74e1: $17
    and [hl]                                      ; $74e2: $a6
    db $ec                                        ; $74e3: $ec
    pop de                                        ; $74e4: $d1
    cp a                                          ; $74e5: $bf
    xor h                                         ; $74e6: $ac
    and [hl]                                      ; $74e7: $a6
    and h                                         ; $74e8: $a4
    rst $20                                       ; $74e9: $e7
    and e                                         ; $74ea: $a3
    rst $08                                       ; $74eb: $cf
    add l                                         ; $74ec: $85
    add hl, hl                                    ; $74ed: $29
    dec hl                                        ; $74ee: $2b
    ccf                                           ; $74ef: $3f
    ld c, h                                       ; $74f0: $4c
    inc de                                        ; $74f1: $13
    db $e4                                        ; $74f2: $e4
    dec c                                         ; $74f3: $0d
    nop                                           ; $74f4: $00
    sub a                                         ; $74f5: $97
    db $e3                                        ; $74f6: $e3
    xor b                                         ; $74f7: $a8
    ld hl, $e5fb                                  ; $74f8: $21 $fb $e5
    ld e, $63                                     ; $74fb: $1e $63
    add e                                         ; $74fd: $83
    ld e, h                                       ; $74fe: $5c
    sbc $eb                                       ; $74ff: $de $eb
    ld e, $90                                     ; $7501: $1e $90
    ld [hl-], a                                   ; $7503: $32
    adc e                                         ; $7504: $8b
    xor e                                         ; $7505: $ab
    ld a, [hl-]                                   ; $7506: $3a
    ld l, d                                       ; $7507: $6a
    db $ec                                        ; $7508: $ec
    ld a, [de]                                    ; $7509: $1a
    ld [hl], c                                    ; $750a: $71
    call nc, $33f8                                ; $750b: $d4 $f8 $33
    push hl                                       ; $750e: $e5
    sub l                                         ; $750f: $95
    xor e                                         ; $7510: $ab
    cp h                                          ; $7511: $bc
    or c                                          ; $7512: $b1
    ld sp, hl                                     ; $7513: $f9
    sbc [hl]                                      ; $7514: $9e
    nop                                           ; $7515: $00
    rla                                           ; $7516: $17
    and l                                         ; $7517: $a5
    ld l, $fb                                     ; $7518: $2e $fb
    and l                                         ; $751a: $a5
    adc $73                                       ; $751b: $ce $73
    inc l                                         ; $751d: $2c
    push hl                                       ; $751e: $e5
    and a                                         ; $751f: $a7
    adc c                                         ; $7520: $89
    inc sp                                        ; $7521: $33
    ld e, c                                       ; $7522: $59
    rst $20                                       ; $7523: $e7
    ld c, d                                       ; $7524: $4a
    ld [$9b6a], a                                 ; $7525: $ea $6a $9b
    call nc, $befb                                ; $7528: $d4 $fb $be
    xor l                                         ; $752b: $ad
    xor e                                         ; $752c: $ab
    ld e, d                                       ; $752d: $5a
    ld d, $1b                                     ; $752e: $16 $1b
    sub c                                         ; $7530: $91

jr_03c_7531:
    xor e                                         ; $7531: $ab
    db $db                                        ; $7532: $db
    ld b, d                                       ; $7533: $42
    sub [hl]                                      ; $7534: $96
    cp h                                          ; $7535: $bc
    rst $10                                       ; $7536: $d7
    cp l                                          ; $7537: $bd
    rst $08                                       ; $7538: $cf
    rst $10                                       ; $7539: $d7

Jump_03c_753a:
    ld e, l                                       ; $753a: $5d
    dec a                                         ; $753b: $3d
    rst $10                                       ; $753c: $d7
    dec a                                         ; $753d: $3d
    db $fc                                        ; $753e: $fc
    or b                                          ; $753f: $b0
    xor e                                         ; $7540: $ab
    daa                                           ; $7541: $27
    nop                                           ; $7542: $00
    cp l                                          ; $7543: $bd
    call nc, $1666                                ; $7544: $d4 $66 $16
    rst $00                                       ; $7547: $c7
    dec b                                         ; $7548: $05
    ld e, a                                       ; $7549: $5f
    rst $20                                       ; $754a: $e7
    xor c                                         ; $754b: $a9
    add $75                                       ; $754c: $c6 $75
    ld a, [de]                                    ; $754e: $1a
    dec h                                         ; $754f: $25
    and $4a                                       ; $7550: $e6 $4a
    ld [$f4c2], a                                 ; $7552: $ea $c2 $f4
    inc d                                         ; $7555: $14
    ld [$cb3c], a                                 ; $7556: $ea $3c $cb
    db $ec                                        ; $7559: $ec
    inc [hl]                                      ; $755a: $34
    ld h, h                                       ; $755b: $64
    cp a                                          ; $755c: $bf
    sbc h                                         ; $755d: $9c
    rst $20                                       ; $755e: $e7
    ld l, $a6                                     ; $755f: $2e $a6
    jp nc, Jump_000_00df                          ; $7561: $d2 $df $00

    db $dd                                        ; $7564: $dd
    ld [bc], a                                    ; $7565: $02
    inc h                                         ; $7566: $24
    xor e                                         ; $7567: $ab
    xor c                                         ; $7568: $a9
    add hl, hl                                    ; $7569: $29

Jump_03c_756a:
    dec sp                                        ; $756a: $3b
    rst $00                                       ; $756b: $c7
    push de                                       ; $756c: $d5
    sbc l                                         ; $756d: $9d
    ld b, d                                       ; $756e: $42
    sbc a                                         ; $756f: $9f
    jp nz, $eb1e                                  ; $7570: $c2 $1e $eb

    ld a, [hl]                                    ; $7573: $7e
    ld c, $e7                                     ; $7574: $0e $e7
    ld l, l                                       ; $7576: $6d
    pop de                                        ; $7577: $d1
    ld [hl], e                                    ; $7578: $73
    pop bc                                        ; $7579: $c1
    sbc a                                         ; $757a: $9f
    ld a, [hl]                                    ; $757b: $7e
    ld l, c                                       ; $757c: $69
    ld a, $7b                                     ; $757d: $3e $7b
    ld [bc], a                                    ; $757f: $02
    ld a, l                                       ; $7580: $7d
    ld [hl], e                                    ; $7581: $73
    ld c, b                                       ; $7582: $48
    ld b, e                                       ; $7583: $43
    ld l, l                                       ; $7584: $6d
    ld sp, $f0e7                                  ; $7585: $31 $e7 $f0
    ld h, a                                       ; $7588: $67
    ld a, $fc                                     ; $7589: $3e $fc
    add l                                         ; $758b: $85
    cpl                                           ; $758c: $2f
    cp a                                          ; $758d: $bf
    ldh [rNR31], a                                ; $758e: $e0 $1b
    ld c, d                                       ; $7590: $4a
    call $ac35                                    ; $7591: $cd $35 $ac
    inc [hl]                                      ; $7594: $34
    ld l, l                                       ; $7595: $6d
    sbc l                                         ; $7596: $9d
    jp nz, $dd7b                                  ; $7597: $c2 $7b $dd

Call_03c_759a:
    db $ed                                        ; $759a: $ed
    jr nc, jr_03c_75d3                            ; $759b: $30 $36

    and d                                         ; $759d: $a2
    and a                                         ; $759e: $a7
    xor [hl]                                      ; $759f: $ae
    db $e4                                        ; $75a0: $e4
    inc l                                         ; $75a1: $2c
    adc [hl]                                      ; $75a2: $8e
    adc e                                         ; $75a3: $8b
    ld e, h                                       ; $75a4: $5c
    ldh a, [$57]                                  ; $75a5: $f0 $57
    and a                                         ; $75a7: $a7
    ld b, [hl]                                    ; $75a8: $46
    ld a, c                                       ; $75a9: $79
    sbc a                                         ; $75aa: $9f
    ld h, e                                       ; $75ab: $63
    sbc c                                         ; $75ac: $99
    sbc l                                         ; $75ad: $9d
    add [hl]                                      ; $75ae: $86
    db $ec                                        ; $75af: $ec
    sub a                                         ; $75b0: $97
    di                                            ; $75b1: $f3
    call c, Call_03c_54c5                         ; $75b2: $dc $c5 $54
    ld a, [$009e]                                 ; $75b5: $fa $9e $00
    db $dd                                        ; $75b8: $dd
    ei                                            ; $75b9: $fb
    inc [hl]                                      ; $75ba: $34
    ld e, l                                       ; $75bb: $5d
    ld hl, sp+$5e                                 ; $75bc: $f8 $5e
    xor b                                         ; $75be: $a8
    dec a                                         ; $75bf: $3d
    ld bc, $537d                                  ; $75c0: $01 $7d $53
    ld d, a                                       ; $75c3: $57
    dec sp                                        ; $75c4: $3b
    ld l, d                                       ; $75c5: $6a
    sub h                                         ; $75c6: $94
    rra                                           ; $75c7: $1f
    srl h                                         ; $75c8: $cb $3c
    sub l                                         ; $75ca: $95
    cp c                                          ; $75cb: $b9
    cp d                                          ; $75cc: $ba
    ld c, e                                       ; $75cd: $4b
    rla                                           ; $75ce: $17
    ld c, d                                       ; $75cf: $4a
    ld d, [hl]                                    ; $75d0: $56
    dec sp                                        ; $75d1: $3b
    db $f4                                        ; $75d2: $f4

jr_03c_75d3:
    add hl, sp                                    ; $75d3: $39
    rst $08                                       ; $75d4: $cf
    and c                                         ; $75d5: $a1
    and e                                         ; $75d6: $a3
    ld b, [hl]                                    ; $75d7: $46

Call_03c_75d8:
    ret                                           ; $75d8: $c9


    sbc c                                         ; $75d9: $99
    sub h                                         ; $75da: $94
    rst $28                                       ; $75db: $ef
    ld l, a                                       ; $75dc: $6f
    adc e                                         ; $75dd: $8b
    ldh a, [$85]                                  ; $75de: $f0 $85
    sub h                                         ; $75e0: $94
    inc e                                         ; $75e1: $1c
    and $ca                                       ; $75e2: $e6 $ca
    xor a                                         ; $75e4: $af
    ld b, d                                       ; $75e5: $42
    pop af                                        ; $75e6: $f1
    rst $28                                       ; $75e7: $ef
    rst $28                                       ; $75e8: $ef
    push af                                       ; $75e9: $f5
    ld sp, hl                                     ; $75ea: $f9
    add e                                         ; $75eb: $83
    rra                                           ; $75ec: $1f
    ld a, a                                       ; $75ed: $7f
    dec h                                         ; $75ee: $25
    ld h, a                                       ; $75ef: $67
    cp [hl]                                       ; $75f0: $be
    xor $b4                                       ; $75f1: $ee $b4
    sub a                                         ; $75f3: $97
    ld l, $9c                                     ; $75f4: $2e $9c
    rst $20                                       ; $75f6: $e7
    or h                                          ; $75f7: $b4
    push bc                                       ; $75f8: $c5

jr_03c_75f9:
    sub [hl]                                      ; $75f9: $96
    ldh a, [$85]                                  ; $75fa: $f0 $85
    add hl, hl                                    ; $75fc: $29
    sub e                                         ; $75fd: $93
    rst $28                                       ; $75fe: $ef
    sbc a                                         ; $75ff: $9f

Call_03c_7600:
    ld c, b                                       ; $7600: $48
    sbc l                                         ; $7601: $9d
    push bc                                       ; $7602: $c5
    ld [hl], c                                    ; $7603: $71
    sbc b                                         ; $7604: $98
    dec bc                                        ; $7605: $0b
    dec e                                         ; $7606: $1d
    ld a, l                                       ; $7607: $7d
    ld c, [hl]                                    ; $7608: $4e
    ld e, b                                       ; $7609: $58
    ld h, c                                       ; $760a: $61
    ld a, c                                       ; $760b: $79
    adc c                                         ; $760c: $89
    cp h                                          ; $760d: $bc
    rla                                           ; $760e: $17
    ld b, b                                       ; $760f: $40
    ret                                           ; $7610: $c9


    ld a, l                                       ; $7611: $7d
    jr nc, jr_03c_75f9                            ; $7612: $30 $e5

    ld d, a                                       ; $7614: $57
    ld [hl], c                                    ; $7615: $71
    inc l                                         ; $7616: $2c
    dec d                                         ; $7617: $15
    xor $57                                       ; $7618: $ee $57
    ld a, [hl]                                    ; $761a: $7e
    and $eb                                       ; $761b: $e6 $eb
    cp a                                          ; $761d: $bf
    ld [hl], a                                    ; $761e: $77
    push af                                       ; $761f: $f5
    sbc h                                         ; $7620: $9c
    cp $ca                                        ; $7621: $fe $ca
    rst $08                                       ; $7623: $cf
    ld a, h                                       ; $7624: $7c
    ld hl, sp-$09                                 ; $7625: $f8 $f7
    ld l, $e3                                     ; $7627: $2e $e3
    ld l, d                                       ; $7629: $6a
    ld b, [hl]                                    ; $762a: $46
    ld c, d                                       ; $762b: $4a
    sub a                                         ; $762c: $97
    adc [hl]                                      ; $762d: $8e
    jr c, @-$77                                   ; $762e: $38 $87

    dec hl                                        ; $7630: $2b
    ld [hl], $39                                  ; $7631: $36 $39
    ld l, l                                       ; $7633: $6d
    adc e                                         ; $7634: $8b
    ld e, h                                       ; $7635: $5c
    ret c                                         ; $7636: $d8

    ld c, d                                       ; $7637: $4a
    ld a, c                                       ; $7638: $79
    ld e, h                                       ; $7639: $5c
    or l                                          ; $763a: $b5
    and e                                         ; $763b: $a3
    db $fc                                        ; $763c: $fc
    inc a                                         ; $763d: $3c
    bit 7, h                                      ; $763e: $cb $7c
    ld c, d                                       ; $7640: $4a
    db $dd                                        ; $7641: $dd
    ld h, d                                       ; $7642: $62
    ld c, d                                       ; $7643: $4a
    res 0, l                                      ; $7644: $cb $85
    add hl, hl                                    ; $7646: $29
    dec hl                                        ; $7647: $2b
    ccf                                           ; $7648: $3f

Jump_03c_7649:
    ld c, h                                       ; $7649: $4c

jr_03c_764a:
    inc de                                        ; $764a: $13
    db $e4                                        ; $764b: $e4
    dec c                                         ; $764c: $0d
    nop                                           ; $764d: $00
    ld bc, $5c94                                  ; $764e: $01 $94 $5c
    jr nz, @+$80                                  ; $7651: $20 $7e

    ret z                                         ; $7653: $c8

    ei                                            ; $7654: $fb
    cp [hl]                                       ; $7655: $be
    ld bc, $7d97                                  ; $7656: $01 $97 $7d
    db $dd                                        ; $7659: $dd
    ld l, c                                       ; $765a: $69
    ld d, l                                       ; $765b: $55
    ld [hl], c                                    ; $765c: $71
    dec h                                         ; $765d: $25
    rla                                           ; $765e: $17
    db $e4                                        ; $765f: $e4
    ld [$ff47], a                                 ; $7660: $ea $47 $ff
    ld a, $f7                                     ; $7663: $3e $f7
    dec hl                                        ; $7665: $2b
    ccf                                           ; $7666: $3f
    di                                            ; $7667: $f3
    push af                                       ; $7668: $f5

Call_03c_7669:
    rst $18                                       ; $7669: $df
    nop                                           ; $766a: $00
    ld a, l                                       ; $766b: $7d
    cp b                                          ; $766c: $b8
    ld d, b                                       ; $766d: $50
    ld [$8c39], sp                                ; $766e: $08 $39 $8c
    add hl, sp                                    ; $7671: $39

jr_03c_7672:
    rst $08                                       ; $7672: $cf
    ld e, c                                       ; $7673: $59
    ld e, h                                       ; $7674: $5c
    push de                                       ; $7675: $d5
    dec [hl]                                      ; $7676: $35
    jp hl                                         ; $7677: $e9


    ld a, [de]                                    ; $7678: $1a
    dec [hl]                                      ; $7679: $35
    ld [hl], d                                    ; $767a: $72

Call_03c_767b:
    and l                                         ; $767b: $a5
    ld [hl], l                                    ; $767c: $75
    inc h                                         ; $767d: $24
    ld l, a                                       ; $767e: $6f
    nop                                           ; $767f: $00
    ld h, a                                       ; $7680: $67
    dec sp                                        ; $7681: $3b
    ld [c], a                                     ; $7682: $e2
    and d                                         ; $7683: $a2
    ld a, h                                       ; $7684: $7c
    rst $20                                       ; $7685: $e7
    ei                                            ; $7686: $fb
    dec h                                         ; $7687: $25
    ld a, h                                       ; $7688: $7c
    add c                                         ; $7689: $81
    inc a                                         ; $768a: $3c
    jr c, jr_03c_7672                             ; $768b: $38 $e5

    rst $10                                       ; $768d: $d7
    scf                                           ; $768e: $37
    ld b, l                                       ; $768f: $45
    sbc d                                         ; $7690: $9a
    sbc $00                                       ; $7691: $de $00
    rla                                           ; $7693: $17
    cp l                                          ; $7694: $bd
    xor [hl]                                      ; $7695: $ae
    ld a, [c]                                     ; $7696: $f2
    and $4d                                       ; $7697: $e6 $4d
    ld c, e                                       ; $7699: $4b
    and h                                         ; $769a: $a4
    adc $73                                       ; $769b: $ce $73
    ld bc, $c6af                                  ; $769d: $01 $af $c6
    db $fd                                        ; $76a0: $fd
    jr nc, jr_03c_764a                            ; $76a1: $30 $a7

    adc c                                         ; $76a3: $89
    adc e                                         ; $76a4: $8b
    adc a                                         ; $76a5: $8f
    di                                            ; $76a6: $f3
    xor l                                         ; $76a7: $ad
    ld b, d                                       ; $76a8: $42
    adc c                                         ; $76a9: $89
    call $cebf                                    ; $76aa: $cd $bf $ce
    ld h, h                                       ; $76ad: $64
    sbc l                                         ; $76ae: $9d
    dec hl                                        ; $76af: $2b
    xor a                                         ; $76b0: $af
    di                                            ; $76b1: $f3
    ld e, h                                       ; $76b2: $5c
    rst $18                                       ; $76b3: $df
    xor a                                         ; $76b4: $af
    inc [hl]                                      ; $76b5: $34
    rst $38                                       ; $76b6: $ff
    cp $5e                                        ; $76b7: $fe $5e
    or a                                          ; $76b9: $b7
    adc e                                         ; $76ba: $8b
    ld [hl], d                                    ; $76bb: $72
    rlca                                          ; $76bc: $07
    ld h, b                                       ; $76bd: $60
    inc sp                                        ; $76be: $33
    add hl, sp                                    ; $76bf: $39
    adc e                                         ; $76c0: $8b
    db $e3                                        ; $76c1: $e3
    add d                                         ; $76c2: $82
    ld l, a                                       ; $76c3: $6f
    ld e, b                                       ; $76c4: $58
    and a                                         ; $76c5: $a7
    adc [hl]                                      ; $76c6: $8e
    ld a, [hl-]                                   ; $76c7: $3a
    ld l, d                                       ; $76c8: $6a
    ld [hl], h                                    ; $76c9: $74
    cp [hl]                                       ; $76ca: $be
    cp l                                          ; $76cb: $bd
    db $f4                                        ; $76cc: $f4
    nop                                           ; $76cd: $00
    add c                                         ; $76ce: $81
    call c, $8a1b                                 ; $76cf: $dc $1b $8a
    ld a, c                                       ; $76d2: $79
    ld e, h                                       ; $76d3: $5c
    ld c, c                                       ; $76d4: $49
    dec e                                         ; $76d5: $1d
    ld h, c                                       ; $76d6: $61
    ld [hl], l                                    ; $76d7: $75
    push de                                       ; $76d8: $d5
    ld b, h                                       ; $76d9: $44
    ld a, [hl+]                                   ; $76da: $2a
    ld a, h                                       ; $76db: $7c
    db $dd                                        ; $76dc: $dd
    ld e, [hl]                                    ; $76dd: $5e
    ld l, l                                       ; $76de: $6d
    ld h, [hl]                                    ; $76df: $66
    ld [hl], c                                    ; $76e0: $71
    ld e, h                                       ; $76e1: $5c
    inc h                                         ; $76e2: $24
    or d                                          ; $76e3: $b2
    ld c, [hl]                                    ; $76e4: $4e
    sbc l                                         ; $76e5: $9d
    push bc                                       ; $76e6: $c5
    ld [hl], c                                    ; $76e7: $71
    call nc, Call_03c_7ce8                        ; $76e8: $d4 $e8 $7c
    ld a, e                                       ; $76eb: $7b
    jp hl                                         ; $76ec: $e9


    or c                                          ; $76ed: $b1
    res 1, b                                      ; $76ee: $cb $88
    xor h                                         ; $76f0: $ac
    ld d, e                                       ; $76f1: $53
    ld h, a                                       ; $76f2: $67
    ld [hl], c                                    ; $76f3: $71
    call c, $9287                                 ; $76f4: $dc $87 $92
    sbc l                                         ; $76f7: $9d
    sub a                                         ; $76f8: $97
    add l                                         ; $76f9: $85
    cpl                                           ; $76fa: $2f
    cp a                                          ; $76fb: $bf
    ldh a, [$f5]                                  ; $76fc: $f0 $f5
    ld h, l                                       ; $76fe: $65
    ccf                                           ; $76ff: $3f
    dec h                                         ; $7700: $25
    db $e4                                        ; $7701: $e4
    ret nc                                        ; $7702: $d0

    rst $20                                       ; $7703: $e7
    cp $e0                                        ; $7704: $fe $e0
    cp h                                          ; $7706: $bc
    ld bc, $ecdd                                  ; $7707: $01 $dd $ec
    rra                                           ; $770a: $1f
    sub d                                         ; $770b: $92
    and $7b                                       ; $770c: $e6 $7b
    xor h                                         ; $770e: $ac
    ei                                            ; $770f: $fb
    dec h                                         ; $7710: $25
    xor [hl]                                      ; $7711: $ae
    ld [$b1a8], a                                 ; $7712: $ea $a8 $b1
    ld c, e                                       ; $7715: $4b
    rla                                           ; $7716: $17
    ld a, h                                       ; $7717: $7c
    db $d3                                        ; $7718: $d3
    adc b                                         ; $7719: $88
    ld a, $f7                                     ; $771a: $3e $f7
    ld d, $67                                     ; $771c: $16 $67
    db $d3                                        ; $771e: $d3
    inc de                                        ; $771f: $13
    nop                                           ; $7720: $00
    halt                                          ; $7721: $76
    pop bc                                        ; $7722: $c1
    ei                                            ; $7723: $fb
    cp [hl]                                       ; $7724: $be
    ld e, l                                       ; $7725: $5d
    ld a, l                                       ; $7726: $7d
    rst $18                                       ; $7727: $df
    or a                                          ; $7728: $b7
    jp c, $1c96                                   ; $7729: $da $96 $1c

    dec [hl]                                      ; $772c: $35
    ld a, [hl]                                    ; $772d: $7e
    rst $20                                       ; $772e: $e7
    ld d, a                                       ; $772f: $57
    scf                                           ; $7730: $37
    ld a, c                                       ; $7731: $79
    db $f4                                        ; $7732: $f4
    ld a, c                                       ; $7733: $79
    rst $28                                       ; $7734: $ef
    ld [$e61f], a                                 ; $7735: $ea $1f $e6
    ld a, [hl-]                                   ; $7738: $3a
    ld c, [hl]                                    ; $7739: $4e
    ld c, l                                       ; $773a: $4d
    ld d, a                                       ; $773b: $57
    db $d3                                        ; $773c: $d3
    sbc c                                         ; $773d: $99
    call nc, Call_03c_69d7                        ; $773e: $d4 $d7 $69
    halt                                          ; $7741: $76
    add h                                         ; $7742: $84
    db $eb                                        ; $7743: $eb
    db $db                                        ; $7744: $db
    ld c, h                                       ; $7745: $4c
    sub [hl]                                      ; $7746: $96
    ld l, $dd                                     ; $7747: $2e $dd
    cp c                                          ; $7749: $b9
    push hl                                       ; $774a: $e5
    ld l, e                                       ; $774b: $6b
    ld d, $f8                                     ; $774c: $16 $f8
    cp d                                          ; $774e: $ba

jr_03c_774f:
    ld e, a                                       ; $774f: $5f
    ld b, c                                       ; $7750: $41

Jump_03c_7751:
    pop af                                        ; $7751: $f1
    rst $28                                       ; $7752: $ef
    ld a, e                                       ; $7753: $7b
    or $04                                        ; $7754: $f6 $04
    or $ac                                        ; $7756: $f6 $ac
    ld d, e                                       ; $7758: $53
    rst $30                                       ; $7759: $f7
    dec d                                         ; $775a: $15
    ld c, d                                       ; $775b: $4a
    add e                                         ; $775c: $83
    call c, $9cfb                                 ; $775d: $dc $fb $9c
    push bc                                       ; $7760: $c5
    or l                                          ; $7761: $b5
    xor d                                         ; $7762: $aa
    jr c, jr_03c_774f                             ; $7763: $38 $ea

    xor h                                         ; $7765: $ac
    db $d3                                        ; $7766: $d3
    rst $28                                       ; $7767: $ef
    or b                                          ; $7768: $b0
    ld c, [hl]                                    ; $7769: $4e
    sbc l                                         ; $776a: $9d
    push bc                                       ; $776b: $c5
    ld [hl], c                                    ; $776c: $71
    rst $20                                       ; $776d: $e7
    ld d, $57                                     ; $776e: $16 $57
    ld e, l                                       ; $7770: $5d
    ld l, l                                       ; $7771: $6d
    ld e, l                                       ; $7772: $5d
    and l                                         ; $7773: $a5
    ld b, c                                       ; $7774: $41
    xor l                                         ; $7775: $ad
    db $fc                                        ; $7776: $fc
    jp z, $a02f                                   ; $7777: $ca $2f $a0

    pop de                                        ; $777a: $d1
    set 5, a                                      ; $777b: $cb $ef
    call c, Call_03c_5256                         ; $777d: $dc $56 $52
    or e                                          ; $7780: $b3
    ld a, [$7dcb]                                 ; $7781: $fa $cb $7d
    rst $18                                       ; $7784: $df
    nop                                           ; $7785: $00
    add c                                         ; $7786: $81
    pop bc                                        ; $7787: $c1
    jr nz, jr_03c_7806                            ; $7788: $20 $7c

    db $dd                                        ; $778a: $dd
    jr nc, @+$59                                  ; $778b: $30 $57

    ld [hl], d                                    ; $778d: $72
    cp [hl]                                       ; $778e: $be
    ld b, c                                       ; $778f: $41
    xor a                                         ; $7790: $af
    inc hl                                        ; $7791: $23
    xor [hl]                                      ; $7792: $ae
    sub d                                         ; $7793: $92
    db $fd                                        ; $7794: $fd
    rst $30                                       ; $7795: $f7
    dec h                                         ; $7796: $25
    ld a, [hl]                                    ; $7797: $7e
    rrca                                          ; $7798: $0f
    nop                                           ; $7799: $00
    db $dd                                        ; $779a: $dd
    cpl                                           ; $779b: $2f
    ld [hl], c                                    ; $779c: $71
    xor l                                         ; $779d: $ad
    ld a, [hl+]                                   ; $779e: $2a
    ld c, $72                                     ; $779f: $0e $72
    cpl                                           ; $77a1: $2f
    cp $57                                        ; $77a2: $fe $57
    ld a, [hl]                                    ; $77a4: $7e
    ld bc, $5e8d                                  ; $77a5: $01 $8d $5e
    ld a, [hl]                                    ; $77a8: $7e
    rra                                           ; $77a9: $1f
    cp [hl]                                       ; $77aa: $be
    ld b, h                                       ; $77ab: $44
    adc $73                                       ; $77ac: $ce $73
    rst $20                                       ; $77ae: $e7
    ld d, $57                                     ; $77af: $16 $57
    ld e, l                                       ; $77b1: $5d
    ld l, l                                       ; $77b2: $6d
    db $ed                                        ; $77b3: $ed
    add hl, bc                                    ; $77b4: $09
    nop                                           ; $77b5: $00
    db $dd                                        ; $77b6: $dd
    ld [bc], a                                    ; $77b7: $02
    add e                                         ; $77b8: $83
    pop bc                                        ; $77b9: $c1
    ld e, $eb                                     ; $77ba: $1e $eb
    db $eb                                        ; $77bc: $eb
    ret nc                                        ; $77bd: $d0

    db $fc                                        ; $77be: $fc

Call_03c_77bf:
    sub h                                         ; $77bf: $94
    db $d3                                        ; $77c0: $d3
    rst $28                                       ; $77c1: $ef
    ld [hl], b                                    ; $77c2: $70
    ld d, $d7                                     ; $77c3: $16 $d7
    xor d                                         ; $77c5: $aa
    ld [c], a                                     ; $77c6: $e2
    ld b, d                                       ; $77c7: $42
    ld b, a                                       ; $77c8: $47
    rst $08                                       ; $77c9: $cf
    ld d, c                                       ; $77ca: $51
    db $e3                                        ; $77cb: $e3
    res 5, b                                      ; $77cc: $cb $a8
    add $99                                       ; $77ce: $c6 $99
    ldh [$a3], a                                  ; $77d0: $e0 $a3
    rst $08                                       ; $77d2: $cf
    add l                                         ; $77d3: $85
    add hl, hl                                    ; $77d4: $29
    ld a, e                                       ; $77d5: $7b
    adc e                                         ; $77d6: $8b
    or e                                          ; $77d7: $b3
    cp c                                          ; $77d8: $b9
    ld [hl], a                                    ; $77d9: $77
    add l                                         ; $77da: $85
    ld h, e                                       ; $77db: $63
    xor c                                         ; $77dc: $a9
    ld [hl], b                                    ; $77dd: $70
    ld [hl], l                                    ; $77de: $75
    sub a                                         ; $77df: $97
    ld l, $be                                     ; $77e0: $2e $be
    ld a, b                                       ; $77e2: $78
    adc $ba                                       ; $77e3: $ce $ba
    ldh [rPCM34], a                               ; $77e5: $e0 $77
    jp z, $a9d7                                   ; $77e7: $ca $d7 $a9

    scf                                           ; $77ea: $37
    nop                                           ; $77eb: $00
    db $dd                                        ; $77ec: $dd
    inc bc                                        ; $77ed: $03
    ld d, d                                       ; $77ee: $52
    ld h, [hl]                                    ; $77ef: $66
    ld [hl], c                                    ; $77f0: $71
    ld d, l                                       ; $77f1: $55
    ld h, a                                       ; $77f2: $67
    add h                                         ; $77f3: $84
    call nc, Call_000_1c59                        ; $77f4: $d4 $59 $1c
    ld h, a                                       ; $77f7: $67
    rst $38                                       ; $77f8: $ff
    sub b                                         ; $77f9: $90
    inc [hl]                                      ; $77fa: $34
    ccf                                           ; $77fb: $3f
    ld l, d                                       ; $77fc: $6a
    db $fc                                        ; $77fd: $fc
    adc $8f                                       ; $77fe: $ce $8f
    cp b                                          ; $7800: $b8
    ld a, [c]                                     ; $7801: $f2
    ld d, e                                       ; $7802: $53
    ld a, [de]                                    ; $7803: $1a
    db $d3                                        ; $7804: $d3
    ld l, h                                       ; $7805: $6c

jr_03c_7806:
    ld [hl], c                                    ; $7806: $71
    sbc [hl]                                      ; $7807: $9e
    di                                            ; $7808: $f3
    ld a, [c]                                     ; $7809: $f2
    ld d, b                                       ; $780a: $50
    ld [hl+], a                                   ; $780b: $22
    ld [hl], l                                    ; $780c: $75
    sbc [hl]                                      ; $780d: $9e
    dec hl                                        ; $780e: $2b
    cp a                                          ; $780f: $bf
    ld c, [hl]                                    ; $7810: $4e
    db $eb                                        ; $7811: $eb
    sub h                                         ; $7812: $94
    sub [hl]                                      ; $7813: $96
    sub c                                         ; $7814: $91
    and $7b                                       ; $7815: $e6 $7b
    ld [bc], a                                    ; $7817: $02
    cp l                                          ; $7818: $bd
    jr nc, jr_03c_786d                            ; $7819: $30 $52

    ld d, a                                       ; $781b: $57
    ld [hl], e                                    ; $781c: $73
    cp [hl]                                       ; $781d: $be
    push af                                       ; $781e: $f5
    bit 3, c                                      ; $781f: $cb $59
    inc e                                         ; $7821: $1c
    and a                                         ; $7822: $a7
    adc l                                         ; $7823: $8d
    ld [hl], l                                    ; $7824: $75
    jr z, jr_03c_7883                             ; $7825: $28 $5c

    ldh a, [$67]                                  ; $7827: $f0 $67
    ld [hl], c                                    ; $7829: $71
    sub h                                         ; $782a: $94
    and $73                                       ; $782b: $e6 $73
    sub c                                         ; $782d: $91
    ld c, b                                       ; $782e: $48
    sbc c                                         ; $782f: $99
    jp Jump_03c_7979                              ; $7830: $c3 $79 $79


    ret z                                         ; $7833: $c8

    ld d, $6f                                     ; $7834: $16 $6f
    nop                                           ; $7836: $00
    db $dd                                        ; $7837: $dd
    ld [bc], a                                    ; $7838: $02
    add e                                         ; $7839: $83
    pop bc                                        ; $783a: $c1
    ld e, $eb                                     ; $783b: $1e $eb
    sub $e7                                       ; $783d: $d6 $e7
    ld c, e                                       ; $783f: $4b
    ld [hl], l                                    ; $7840: $75
    ld e, d                                       ; $7841: $5a
    add a                                         ; $7842: $87
    xor c                                         ; $7843: $a9
    and e                                         ; $7844: $a3
    add $ae                                       ; $7845: $c6 $ae
    ld d, c                                       ; $7847: $51
    adc l                                         ; $7848: $8d
    inc sp                                        ; $7849: $33
    pop bc                                        ; $784a: $c1
    ld b, a                                       ; $784b: $47

jr_03c_784c:
    sbc a                                         ; $784c: $9f
    dec a                                         ; $784d: $3d
    halt                                          ; $784e: $76
    push bc                                       ; $784f: $c5
    rst $10                                       ; $7850: $d7

jr_03c_7851:
    xor c                                         ; $7851: $a9
    ei                                            ; $7852: $fb
    ld d, l                                       ; $7853: $55
    jr z, jr_03c_7851                             ; $7854: $28 $fb

    reti                                          ; $7856: $d9


    ccf                                           ; $7857: $3f
    inc h                                         ; $7858: $24
    call Call_000_00df                            ; $7859: $cd $df $00
    or $75                                        ; $785c: $f6 $75
    ld a, l                                       ; $785e: $7d

Call_03c_785f:
    rst $18                                       ; $785f: $df
    scf                                           ; $7860: $37
    nop                                           ; $7861: $00
    halt                                          ; $7862: $76
    ld a, [de]                                    ; $7863: $1a
    cp e                                          ; $7864: $bb
    sub $69                                       ; $7865: $d6 $69
    ld b, h                                       ; $7867: $44
    ld hl, sp-$3e                                 ; $7868: $f8 $c2
    sub a                                         ; $786a: $97
    sbc a                                         ; $786b: $9f
    ld c, c                                       ; $786c: $49

jr_03c_786d:
    adc h                                         ; $786d: $8c
    call nc, $b2f8                                ; $786e: $d4 $f8 $b2
    ld e, a                                       ; $7871: $5f
    ld [hl], h                                    ; $7872: $74
    dec bc                                        ; $7873: $0b
    add l                                         ; $7874: $85
    sub b                                         ; $7875: $90
    jp $f0f8                                      ; $7876: $c3 $f8 $f0


    ld a, l                                       ; $7879: $7d
    add c                                         ; $787a: $81
    inc e                                         ; $787b: $1c
    and [hl]                                      ; $787c: $a6
    adc $73                                       ; $787d: $ce $73
    dec h                                         ; $787f: $25
    ld [hl], l                                    ; $7880: $75
    and c                                         ; $7881: $a1
    ld h, h                                       ; $7882: $64

jr_03c_7883:
    dec [hl]                                      ; $7883: $35
    dec [hl]                                      ; $7884: $35
    add l                                         ; $7885: $85
    cp d                                          ; $7886: $ba
    ldh [$e3], a                                  ; $7887: $e0 $e3
    jp z, $ff63                                   ; $7889: $ca $63 $ff

    rst $30                                       ; $788c: $f7
    add hl, sp                                    ; $788d: $39
    and d                                         ; $788e: $a2
    ld a, c                                       ; $788f: $79
    adc h                                         ; $7890: $8c
    ld e, a                                       ; $7891: $5f
    scf                                           ; $7892: $37
    ld h, d                                       ; $7893: $62
    ld c, h                                       ; $7894: $4c
    ld e, l                                       ; $7895: $5d
    ld hl, sp-$0e                                 ; $7896: $f8 $f2
    dec bc                                        ; $7898: $0b
    dec h                                         ; $7899: $25
    inc hl                                        ; $789a: $23
    ld hl, $caca                                  ; $789b: $21 $ca $ca
    cpl                                           ; $789e: $2f
    ld l, h                                       ; $789f: $6c

jr_03c_78a0:
    db $f4                                        ; $78a0: $f4
    ld a, [c]                                     ; $78a1: $f2
    and a                                         ; $78a2: $a7
    xor [hl]                                      ; $78a3: $ae
    adc a                                         ; $78a4: $8f
    add hl, sp                                    ; $78a5: $39
    cpl                                           ; $78a6: $2f
    pop af                                        ; $78a7: $f1
    and c                                         ; $78a8: $a1
    cpl                                           ; $78a9: $2f
    dec b                                         ; $78aa: $05
    cp [hl]                                       ; $78ab: $be
    ld [hl], e                                    ; $78ac: $73
    ld c, e                                       ; $78ad: $4b
    adc e                                         ; $78ae: $8b
    jr nc, jr_03c_784c                            ; $78af: $30 $9b

    add c                                         ; $78b1: $81
    ld bc, $605f                                  ; $78b2: $01 $5f $60
    jr z, jr_03c_78a0                             ; $78b5: $28 $e9

    ld [hl+], a                                   ; $78b7: $22
    ld a, h                                       ; $78b8: $7c
    sub a                                         ; $78b9: $97
    cp b                                          ; $78ba: $b8
    ld h, $c2                                     ; $78bb: $26 $c2
    ld d, d                                       ; $78bd: $52
    ld h, [hl]                                    ; $78be: $66
    ld e, l                                       ; $78bf: $5d
    jr nz, jr_03c_7940                            ; $78c0: $20 $7e

    ret z                                         ; $78c2: $c8

    dec de                                        ; $78c3: $1b
    nop                                           ; $78c4: $00
    db $dd                                        ; $78c5: $dd
    ld [bc], a                                    ; $78c6: $02
    pop af                                        ; $78c7: $f1
    ld b, e                                       ; $78c8: $43
    or $00                                        ; $78c9: $f6 $00
    add c                                         ; $78cb: $81
    ld hl, sp+$21                                 ; $78cc: $f8 $21
    rst $30                                       ; $78ce: $f7
    ld d, [hl]                                    ; $78cf: $56
    rst $20                                       ; $78d0: $e7
    ld l, l                                       ; $78d1: $6d
    rst $30                                       ; $78d2: $f7
    dec bc                                        ; $78d3: $0b
    dec h                                         ; $78d4: $25
    inc hl                                        ; $78d5: $23
    ld hl, $caca                                  ; $78d6: $21 $ca $ca
    cpl                                           ; $78d9: $2f
    ld l, h                                       ; $78da: $6c
    db $f4                                        ; $78db: $f4
    ld a, [c]                                     ; $78dc: $f2
    ldh a, [$bd]                                  ; $78dd: $f0 $bd
    ld b, e                                       ; $78df: $43
    adc e                                         ; $78e0: $8b
    db $e3                                        ; $78e1: $e3
    jp nz, Jump_03c_5446                          ; $78e2: $c2 $46 $54

    ld [$8e2c], a                                 ; $78e5: $ea $2c $8e
    and e                                         ; $78e8: $a3
    add $ae                                       ; $78e9: $c6 $ae
    dec [hl]                                      ; $78eb: $35
    adc h                                         ; $78ec: $8c
    call nz, Call_000_3ef8                        ; $78ed: $c4 $f8 $3e
    daa                                           ; $78f0: $27
    reti                                          ; $78f1: $d9


    ld a, c                                       ; $78f2: $79
    add hl, hl                                    ; $78f3: $29
    ld a, a                                       ; $78f4: $7f
    inc bc                                        ; $78f5: $03

jr_03c_78f6:
    add c                                         ; $78f6: $81
    ld hl, sp+$21                                 ; $78f7: $f8 $21
    add a                                         ; $78f9: $87
    cp c                                          ; $78fa: $b9
    sub d                                         ; $78fb: $92
    ld l, e                                       ; $78fc: $6b
    jr @-$75                                      ; $78fd: $18 $89

    pop af                                        ; $78ff: $f1
    and l                                         ; $7900: $a5
    ld l, e                                       ; $7901: $6b
    pop bc                                        ; $7902: $c1
    rst $10                                       ; $7903: $d7
    ld hl, sp-$4d                                 ; $7904: $f8 $b3
    jr c, jr_03c_78f6                             ; $7906: $38 $ee

    dec hl                                        ; $7908: $2b
    sub h                                         ; $7909: $94
    ld b, $1d                                     ; $790a: $06 $1d
    ret z                                         ; $790c: $c8

    add hl, de                                    ; $790d: $19
    db $db                                        ; $790e: $db
    ld a, [hl-]                                   ; $790f: $3a
    rla                                           ; $7910: $17
    cp [hl]                                       ; $7911: $be
    cp [hl]                                       ; $7912: $be
    call z, Call_000_3cb3                         ; $7913: $cc $b3 $3c
    ld b, [hl]                                    ; $7916: $46
    adc $73                                       ; $7917: $ce $73
    rst $20                                       ; $7919: $e7
    ld d, $57                                     ; $791a: $16 $57
    ld e, l                                       ; $791c: $5d
    ld l, l                                       ; $791d: $6d
    cp l                                          ; $791e: $bd
    ld bc, $03dd                                  ; $791f: $01 $dd $03
    ld d, d                                       ; $7922: $52
    ld h, [hl]                                    ; $7923: $66
    ld [hl], c                                    ; $7924: $71
    ld d, l                                       ; $7925: $55
    rla                                           ; $7926: $17
    ld a, h                                       ; $7927: $7c
    jp $c7c5                                      ; $7928: $c3 $c5 $c7


    sbc b                                         ; $792b: $98
    inc sp                                        ; $792c: $33
    ld e, a                                       ; $792d: $5f
    ld d, d                                       ; $792e: $52
    or $16                                        ; $792f: $f6 $16
    ld h, a                                       ; $7931: $67
    inc sp                                        ; $7932: $33
    ld c, a                                       ; $7933: $4f
    adc h                                         ; $7934: $8c
    sub d                                         ; $7935: $92
    dec a                                         ; $7936: $3d
    ld bc, $0ff6                                  ; $7937: $01 $f6 $0f
    ld c, c                                       ; $793a: $49
    di                                            ; $793b: $f3
    rst $30                                       ; $793c: $f7
    ld a, l                                       ; $793d: $7d
    ld [hl], a                                    ; $793e: $77
    or a                                          ; $793f: $b7

jr_03c_7940:
    cp b                                          ; $7940: $b8
    xor d                                         ; $7941: $aa
    and e                                         ; $7942: $a3
    adc [hl]                                      ; $7943: $8e
    sbc d                                         ; $7944: $9a
    dec a                                         ; $7945: $3d
    ld bc, $eddd                                  ; $7946: $01 $dd $ed
    inc [hl]                                      ; $7949: $34
    ld a, e                                       ; $794a: $7b
    adc $2e                                       ; $794b: $ce $2e
    ld [$ab9f], sp                                ; $794d: $08 $9f $ab
    rst $28                                       ; $7950: $ef
    ei                                            ; $7951: $fb
    ld b, $dd                                     ; $7952: $06 $dd
    db $ec                                        ; $7954: $ec
    ld [hl], h                                    ; $7955: $74
    ld c, $17                                     ; $7956: $0e $17
    ld [hl], h                                    ; $7958: $74
    xor h                                         ; $7959: $ac
    db $e4                                        ; $795a: $e4
    inc a                                         ; $795b: $3c
    rst $20                                       ; $795c: $e7
    push hl                                       ; $795d: $e5
    ld hl, $ec5b                                  ; $795e: $21 $5b $ec
    or c                                          ; $7961: $b1
    xor $e7                                       ; $7962: $ee $e7
    ld [hl], b                                    ; $7964: $70
    sbc $16                                       ; $7965: $de $16
    dec a                                         ; $7967: $3d
    ld d, a                                       ; $7968: $57
    ld [hl], d                                    ; $7969: $72
    pop bc                                        ; $796a: $c1
    rst $10                                       ; $796b: $d7
    jp hl                                         ; $796c: $e9


    sbc e                                         ; $796d: $9b
    rst $30                                       ; $796e: $f7
    reti                                          ; $796f: $d9


    inc de                                        ; $7970: $13
    nop                                           ; $7971: $00
    add c                                         ; $7972: $81
    ld e, h                                       ; $7973: $5c
    ret                                           ; $7974: $c9


    ld b, c                                       ; $7975: $41
    adc a                                         ; $7976: $8f
    ld d, l                                       ; $7977: $55
    rst $30                                       ; $7978: $f7

Call_03c_7979:
Jump_03c_7979:
    ld [hl], e                                    ; $7979: $73
    jr c, jr_03c_79cb                             ; $797a: $38 $4f

    dec [hl]                                      ; $797c: $35
    adc c                                         ; $797d: $89
    ld l, c                                       ; $797e: $69
    sbc d                                         ; $797f: $9a
    rst $08                                       ; $7980: $cf

jr_03c_7981:
    ld e, c                                       ; $7981: $59
    inc e                                         ; $7982: $1c
    rla                                           ; $7983: $17
    cp [hl]                                       ; $7984: $be
    ret nc                                        ; $7985: $d0

    inc [hl]                                      ; $7986: $34
    db $db                                        ; $7987: $db
    ld de, $63cd                                  ; $7988: $11 $cd $63
    ld a, h                                       ; $798b: $7c
    sbc a                                         ; $798c: $9f
    di                                            ; $798d: $f3
    sbc h                                         ; $798e: $9c
    and a                                         ; $798f: $a7
    add [hl]                                      ; $7990: $86
    ld b, d                                       ; $7991: $42
    db $f4                                        ; $7992: $f4
    inc d                                         ; $7993: $14

Call_03c_7994:
    push hl                                       ; $7994: $e5
    inc a                                         ; $7995: $3c
    ld d, a                                       ; $7996: $57
    or l                                          ; $7997: $b5
    call c, $e7b3                                 ; $7998: $dc $b3 $e7
    xor b                                         ; $799b: $a8
    pop af                                        ; $799c: $f1
    ld a, l                                       ; $799d: $7d
    xor [hl]                                      ; $799e: $ae
    ret nc                                        ; $799f: $d0

    ld c, d                                       ; $79a0: $4a
    db $f4                                        ; $79a1: $f4
    cp c                                          ; $79a2: $b9
    ldh a, [$e5]                                  ; $79a3: $f0 $e5
    and a                                         ; $79a5: $a7
    rst $18                                       ; $79a6: $df
    and c                                         ; $79a7: $a1
    call z, $d6d8                                 ; $79a8: $cc $d8 $d6
    add hl, sp                                    ; $79ab: $39
    db $e3                                        ; $79ac: $e3
    sbc d                                         ; $79ad: $9a
    ld a, a                                       ; $79ae: $7f
    add hl, hl                                    ; $79af: $29
    ld a, c                                       ; $79b0: $79
    rst $28                                       ; $79b1: $ef
    ld [hl], d                                    ; $79b2: $72
    sbc h                                         ; $79b3: $9c
    inc [hl]                                      ; $79b4: $34
    rrca                                          ; $79b5: $0f
    or c                                          ; $79b6: $b1
    di                                            ; $79b7: $f3
    ld b, $c6                                     ; $79b8: $06 $c6
    jr nc, jr_03c_7981                            ; $79ba: $30 $c5

    ld de, $d5ca                                  ; $79bc: $11 $ca $d5
    adc $3a                                       ; $79bf: $ce $3a
    ld a, c                                       ; $79c1: $79
    ret                                           ; $79c2: $c9


    dec de                                        ; $79c3: $1b
    nop                                           ; $79c4: $00
    db $dd                                        ; $79c5: $dd
    db $ec                                        ; $79c6: $ec
    jp z, $abcc                                   ; $79c7: $ca $cc $ab

    ld a, c                                       ; $79ca: $79

jr_03c_79cb:
    or c                                          ; $79cb: $b1
    push bc                                       ; $79cc: $c5
    add hl, hl                                    ; $79cd: $29
    ld b, a                                       ; $79ce: $47
    adc l                                         ; $79cf: $8d
    ld e, l                                       ; $79d0: $5d
    sub e                                         ; $79d1: $93
    xor h                                         ; $79d2: $ac
    jp $f446                                      ; $79d3: $c3 $46 $f4


    reti                                          ; $79d6: $d9


    inc bc                                        ; $79d7: $03
    nop                                           ; $79d8: $00
    cp l                                          ; $79d9: $bd
    add l                                         ; $79da: $85
    add hl, sp                                    ; $79db: $39
    adc e                                         ; $79dc: $8b
    db $e3                                        ; $79dd: $e3
    ld c, d                                       ; $79de: $4a

jr_03c_79df:
    xor [hl]                                      ; $79df: $ae
    sub h                                         ; $79e0: $94
    xor a                                         ; $79e1: $af
    ld e, a                                       ; $79e2: $5f
    xor d                                         ; $79e3: $aa
    xor [hl]                                      ; $79e4: $ae
    ld l, a                                       ; $79e5: $6f
    ld c, d                                       ; $79e6: $4a
    add a                                         ; $79e7: $87
    ld [de], a                                    ; $79e8: $12
    di                                            ; $79e9: $f3
    ld b, $dd                                     ; $79ea: $06 $dd
    ei                                            ; $79ec: $fb
    and [hl]                                      ; $79ed: $a6
    ld [hl], h                                    ; $79ee: $74
    jr z, jr_03c_7a22                             ; $79ef: $28 $31

    ld a, e                                       ; $79f1: $7b
    ld [bc], a                                    ; $79f2: $02
    or $6f                                        ; $79f3: $f6 $6f
    sbc l                                         ; $79f5: $9d
    push bc                                       ; $79f6: $c5
    ld [hl], c                                    ; $79f7: $71
    sub c                                         ; $79f8: $91
    ld c, b                                       ; $79f9: $48
    sbc c                                         ; $79fa: $99
    ld [hl], c                                    ; $79fb: $71
    call Call_03c_4fbf                            ; $79fc: $cd $bf $4f
    ld hl, sp-$14                                 ; $79ff: $f8 $ec
    rra                                           ; $7a01: $1f
    sub d                                         ; $7a02: $92
    and $ef                                       ; $7a03: $e6 $ef
    push af                                       ; $7a05: $f5
    ld d, $e6                                     ; $7a06: $16 $e6
    inc l                                         ; $7a08: $2c
    adc [hl]                                      ; $7a09: $8e
    db $eb                                        ; $7a0a: $eb
    di                                            ; $7a0b: $f3
    and l                                         ; $7a0c: $a5
    ld a, [hl-]                                   ; $7a0d: $3a
    xor l                                         ; $7a0e: $ad
    db $d3                                        ; $7a0f: $d3
    rst $28                                       ; $7a10: $ef
    ld [hl], b                                    ; $7a11: $70
    dec h                                         ; $7a12: $25
    ld h, a                                       ; $7a13: $67
    ld [hl], c                                    ; $7a14: $71
    inc e                                         ; $7a15: $1c
    dec [hl]                                      ; $7a16: $35
    halt                                          ; $7a17: $76
    jp hl                                         ; $7a18: $e9


    add d                                         ; $7a19: $82
    ld l, a                                       ; $7a1a: $6f
    ld a, [de]                                    ; $7a1b: $1a
    pop de                                        ; $7a1c: $d1
    rst $20                                       ; $7a1d: $e7
    dec c                                         ; $7a1e: $0d

jr_03c_7a1f:
    nop                                           ; $7a1f: $00
    cp l                                          ; $7a20: $bd
    ld e, a                                       ; $7a21: $5f

jr_03c_7a22:
    db $db                                        ; $7a22: $db
    ld l, d                                       ; $7a23: $6a
    xor $a3                                       ; $7a24: $ee $a3
    ld a, h                                       ; $7a26: $7c
    and l                                         ; $7a27: $a5
    ld d, c                                       ; $7a28: $51
    ld a, a                                       ; $7a29: $7f
    push hl                                       ; $7a2a: $e5
    rst $10                                       ; $7a2b: $d7
    ret                                           ; $7a2c: $c9


    ld hl, sp+$33                                 ; $7a2d: $f8 $33
    adc c                                         ; $7a2f: $89
    dec hl                                        ; $7a30: $2b
    xor c                                         ; $7a31: $a9
    di                                            ; $7a32: $f3
    adc l                                         ; $7a33: $8d
    jr jr_03c_79df                                ; $7a34: $18 $a9

    rst $30                                       ; $7a36: $f7
    db $ec                                        ; $7a37: $ec
    jp z, $ecc2                                   ; $7a38: $ca $c2 $ec

    ld [$d8f7], sp                                ; $7a3b: $08 $f7 $d8
    ld [$2d2f], a                                 ; $7a3e: $ea $2f $2d
    and $3c                                       ; $7a41: $e6 $3c
    dec sp                                        ; $7a43: $3b
    inc e                                         ; $7a44: $1c
    dec [hl]                                      ; $7a45: $35
    cp [hl]                                       ; $7a46: $be
    inc l                                         ; $7a47: $2c
    ld hl, sp+$75                                 ; $7a48: $f8 $75
    ld b, a                                       ; $7a4a: $47
    ld a, [de]                                    ; $7a4b: $1a
    ld sp, $0de6                                  ; $7a4c: $31 $e6 $0d
    nop                                           ; $7a4f: $00
    db $dd                                        ; $7a50: $dd
    cpl                                           ; $7a51: $2f
    ld [hl], c                                    ; $7a52: $71
    ld d, l                                       ; $7a53: $55
    ld d, a                                       ; $7a54: $57
    jr c, jr_03c_7a1f                             ; $7a55: $38 $c8

    ld l, c                                       ; $7a57: $69

jr_03c_7a58:
    db $fc                                        ; $7a58: $fc
    sbc c                                         ; $7a59: $99
    xor h                                         ; $7a5a: $ac
    add hl, hl                                    ; $7a5b: $29
    dec a                                         ; $7a5c: $3d
    rla                                           ; $7a5d: $17
    ld e, b                                       ; $7a5e: $58
    xor h                                         ; $7a5f: $ac
    ld sp, $6948                                  ; $7a60: $31 $48 $69
    xor b                                         ; $7a63: $a8
    ldh a, [rHDMA1]                               ; $7a64: $f0 $51
    ld b, e                                       ; $7a66: $43
    ld c, d                                       ; $7a67: $4a
    sbc $00                                       ; $7a68: $de $00
    sub a                                         ; $7a6a: $97
    cp b                                          ; $7a6b: $b8
    xor d                                         ; $7a6c: $aa
    xor e                                         ; $7a6d: $ab
    inc a                                         ; $7a6e: $3c
    ld a, h                                       ; $7a6f: $7c
    add l                                         ; $7a70: $85
    dec bc                                        ; $7a71: $0b
    inc de                                        ; $7a72: $13
    adc c                                         ; $7a73: $89
    inc hl                                        ; $7a74: $23
    ld d, [hl]                                    ; $7a75: $56
    ld d, e                                       ; $7a76: $53
    ld [$67bc], a                                 ; $7a77: $ea $bc $67
    add a                                         ; $7a7a: $87
    dec hl                                        ; $7a7b: $2b
    xor c                                         ; $7a7c: $a9
    dec hl                                        ; $7a7d: $2b
    xor l                                         ; $7a7e: $ad
    inc hl                                        ; $7a7f: $23
    xor c                                         ; $7a80: $a9
    or e                                          ; $7a81: $b3
    jr c, @+$30                                   ; $7a82: $38 $2e

    ret z                                         ; $7a84: $c8

    dec d                                         ; $7a85: $15
    jp c, $5cf8                                   ; $7a86: $da $f8 $5c

    sbc b                                         ; $7a89: $98
    ret z                                         ; $7a8a: $c8

    ld e, c                                       ; $7a8b: $59
    inc e                                         ; $7a8c: $1c
    ld d, a                                       ; $7a8d: $57
    jr c, jr_03c_7a58                             ; $7a8e: $38 $c8

    ld l, c                                       ; $7a90: $69
    db $fc                                        ; $7a91: $fc
    sub l                                         ; $7a92: $95
    rra                                           ; $7a93: $1f
    db $f4                                        ; $7a94: $f4
    and l                                         ; $7a95: $a5
    inc [hl]                                      ; $7a96: $34
    db $fc                                        ; $7a97: $fc

Call_03c_7a98:
    ld a, e                                       ; $7a98: $7b
    db $dd                                        ; $7a99: $dd
    inc bc                                        ; $7a9a: $03
    jp nc, $cd8b                                  ; $7a9b: $d2 $8b $cd

    db $eb                                        ; $7a9e: $eb
    sbc d                                         ; $7a9f: $9a
    db $ec                                        ; $7aa0: $ec
    rst $10                                       ; $7aa1: $d7
    ld [hl], c                                    ; $7aa2: $71
    ld l, d                                       ; $7aa3: $6a
    ld e, [hl]                                    ; $7aa4: $5e
    ld l, d                                       ; $7aa5: $6a
    xor $84                                       ; $7aa6: $ee $84
    push hl                                       ; $7aa8: $e5
    ld e, [hl]                                    ; $7aa9: $5e
    ld l, l                                       ; $7aaa: $6d
    ld a, d                                       ; $7aab: $7a
    xor [hl]                                      ; $7aac: $ae
    rst $10                                       ; $7aad: $d7
    ld a, [hl+]                                   ; $7aae: $2a
    inc [hl]                                      ; $7aaf: $34
    call nc, Call_000_1499                        ; $7ab0: $d4 $99 $14
    ld h, c                                       ; $7ab3: $61
    db $e4                                        ; $7ab4: $e4
    db $e3                                        ; $7ab5: $e3
    ld c, d                                       ; $7ab6: $4a
    db $eb                                        ; $7ab7: $eb
    ld [$626b], sp                                ; $7ab8: $08 $6b $62
    db $e4                                        ; $7abb: $e4
    jp nz, $9594                                  ; $7abc: $c2 $94 $95

    call nc, Call_03c_7bf5                        ; $7abf: $d4 $f5 $7b

jr_03c_7ac2:
    pop af                                        ; $7ac2: $f1
    dec c                                         ; $7ac3: $0d
    xor c                                         ; $7ac4: $a9
    scf                                           ; $7ac5: $37
    nop                                           ; $7ac6: $00
    cp l                                          ; $7ac7: $bd
    bit 1, e                                      ; $7ac8: $cb $4b
    sbc $eb                                       ; $7aca: $de $eb
    ld l, [hl]                                    ; $7acc: $6e
    and a                                         ; $7acd: $a7
    xor e                                         ; $7ace: $ab
    sbc l                                         ; $7acf: $9d
    ld [hl], l                                    ; $7ad0: $75
    cp [hl]                                       ; $7ad1: $be
    ld d, l                                       ; $7ad2: $55
    db $db                                        ; $7ad3: $db
    sbc b                                         ; $7ad4: $98
    ld d, [hl]                                    ; $7ad5: $56
    ld h, [hl]                                    ; $7ad6: $66
    cp [hl]                                       ; $7ad7: $be
    rst $38                                       ; $7ad8: $ff
    res 4, b                                      ; $7ad9: $cb $a0
    cpl                                           ; $7adb: $2f
    and l                                         ; $7adc: $a5
    pop hl                                        ; $7add: $e1
    ld l, e                                       ; $7ade: $6b
    ld c, a                                       ; $7adf: $4f
    nop                                           ; $7ae0: $00
    cp l                                          ; $7ae1: $bd
    inc l                                         ; $7ae2: $2c
    adc $66                                       ; $7ae3: $ce $66
    sub c                                         ; $7ae5: $91
    adc e                                         ; $7ae6: $8b
    ld a, [c]                                     ; $7ae7: $f2
    dec c                                         ; $7ae8: $0d
    jp z, $d795                                   ; $7ae9: $ca $95 $d7

    ld b, c                                       ; $7aec: $41
    ld e, a                                       ; $7aed: $5f
    ld c, d                                       ; $7aee: $4a
    jp $f857                                      ; $7aef: $c3 $57 $f8


    db $ec                                        ; $7af2: $ec
    rra                                           ; $7af3: $1f
    sub d                                         ; $7af4: $92
    and $6f                                       ; $7af5: $e6 $6f
    nop                                           ; $7af7: $00
    rst $20                                       ; $7af8: $e7
    ret                                           ; $7af9: $c9


    sbc e                                         ; $7afa: $9b
    or $0a                                        ; $7afb: $f6 $0a
    sbc a                                         ; $7afd: $9f
    db $fd                                        ; $7afe: $fd
    adc e                                         ; $7aff: $8b
    ld e, b                                       ; $7b00: $58
    rst $28                                       ; $7b01: $ef
    reti                                          ; $7b02: $d9


    sub l                                         ; $7b03: $95
    add l                                         ; $7b04: $85
    or h                                          ; $7b05: $b4
    jr c, jr_03c_7b26                             ; $7b06: $38 $1e

    sbc h                                         ; $7b08: $9c
    db $eb                                        ; $7b09: $eb
    sbc e                                         ; $7b0a: $9b
    jp nc, $c4a1                                  ; $7b0b: $d2 $a1 $c4

    sbc h                                         ; $7b0e: $9c
    ld [hl], d                                    ; $7b0f: $72
    call nc, $9df8                                ; $7b10: $d4 $f8 $9d
    sbc a                                         ; $7b13: $9f
    push bc                                       ; $7b14: $c5
    pop de                                        ; $7b15: $d1
    ccf                                           ; $7b16: $3f

jr_03c_7b17:
    ld a, [$711c]                                 ; $7b17: $fa $1c $71
    ld hl, sp-$02                                 ; $7b1a: $f8 $fe
    ld l, a                                       ; $7b1c: $6f
    nop                                           ; $7b1d: $00
    or $0f                                        ; $7b1e: $f6 $0f
    ld c, c                                       ; $7b20: $49
    di                                            ; $7b21: $f3
    ldh a, [$75]                                  ; $7b22: $f0 $75
    inc sp                                        ; $7b24: $33
    or [hl]                                       ; $7b25: $b6

jr_03c_7b26:
    ld [hl], l                                    ; $7b26: $75
    ld l, $f8                                     ; $7b27: $2e $f8
    inc sp                                        ; $7b29: $33
    ld b, d                                       ; $7b2a: $42

Jump_03c_7b2b:
    db $d3                                        ; $7b2b: $d3
    ld a, h                                       ; $7b2c: $7c
    adc $53                                       ; $7b2d: $ce $53
    dec a                                         ; $7b2f: $3d
    ld h, a                                       ; $7b30: $67
    ld [hl], c                                    ; $7b31: $71
    ld e, h                                       ; $7b32: $5c
    call $bb55                                    ; $7b33: $cd $55 $bb
    sub $63                                       ; $7b36: $d6 $63
    halt                                          ; $7b38: $76
    jr c, jr_03c_7ac2                             ; $7b39: $38 $87

    ccf                                           ; $7b3b: $3f
    ld h, l                                       ; $7b3c: $65
    db $fd                                        ; $7b3d: $fd
    ld hl, sp+$53                                 ; $7b3e: $f8 $53
    ld c, d                                       ; $7b40: $4a
    rst $10                                       ; $7b41: $d7
    ld [c], a                                     ; $7b42: $e2
    db $e3                                        ; $7b43: $e3
    jr nz, @+$7b                                  ; $7b44: $20 $79

    db $f4                                        ; $7b46: $f4
    sbc h                                         ; $7b47: $9c
    ret                                           ; $7b48: $c9


    ld a, [hl-]                                   ; $7b49: $3a
    rla                                           ; $7b4a: $17
    db $dd                                        ; $7b4b: $dd
    call z, $fe77                                 ; $7b4c: $cc $77 $fe
    ldh [$bf], a                                  ; $7b4f: $e0 $bf
    rst $10                                       ; $7b51: $d7
    rst $20                                       ; $7b52: $e7
    ld c, e                                       ; $7b53: $4b
    ld [hl], l                                    ; $7b54: $75
    ld e, d                                       ; $7b55: $5a
    rla                                           ; $7b56: $17
    cp c                                          ; $7b57: $b9
    jr nc, jr_03c_7b17                            ; $7b58: $30 $bd

    ret c                                         ; $7b5a: $d8

    db $fc                                        ; $7b5b: $fc
    inc a                                         ; $7b5c: $3c
    set 0, a                                      ; $7b5d: $cb $c7
    sub a                                         ; $7b5f: $97
    ld de, $dc67                                  ; $7b60: $11 $67 $dc
    rla                                           ; $7b63: $17
    adc e                                         ; $7b64: $8b
    ld l, e                                       ; $7b65: $6b
    sub h                                         ; $7b66: $94
    push de                                       ; $7b67: $d5
    ld e, c                                       ; $7b68: $59
    inc de                                        ; $7b69: $13
    ld h, e                                       ; $7b6a: $63
    sbc $00                                       ; $7b6b: $de $00
    add c                                         ; $7b6d: $81
    ld d, l                                       ; $7b6e: $55
    ld h, a                                       ; $7b6f: $67
    ld [hl], c                                    ; $7b70: $71
    inc e                                         ; $7b71: $1c
    and $6a                                       ; $7b72: $e6 $6a
    xor [hl]                                      ; $7b74: $ae
    db $e4                                        ; $7b75: $e4

jr_03c_7b76:
    ld b, d                                       ; $7b76: $42
    ld b, a                                       ; $7b77: $47
    sbc a                                         ; $7b78: $9f
    or e                                          ; $7b79: $b3
    jr c, jr_03c_7b76                             ; $7b7a: $38 $fa

    sub a                                         ; $7b7c: $97
    add l                                         ; $7b7d: $85
    cpl                                           ; $7b7e: $2f
    ccf                                           ; $7b7f: $3f
    ld l, l                                       ; $7b80: $6d
    xor h                                         ; $7b81: $ac
    ld b, e                                       ; $7b82: $43
    ld hl, $217c                                  ; $7b83: $21 $7c $21
    dec h                                         ; $7b86: $25
    rla                                           ; $7b87: $17
    cp a                                          ; $7b88: $bf
    ld c, $d3                                     ; $7b89: $0e $d3
    db $e4                                        ; $7b8b: $e4
    ld b, d                                       ; $7b8c: $42
    ld b, a                                       ; $7b8d: $47
    sbc a                                         ; $7b8e: $9f
    di                                            ; $7b8f: $f3
    db $ec                                        ; $7b90: $ec
    rst $30                                       ; $7b91: $f7
    ld d, d                                       ; $7b92: $52
    ld [hl], d                                    ; $7b93: $72
    ld [$6258], a                                 ; $7b94: $ea $58 $62
    ld l, $4c                                     ; $7b97: $2e $4c
    reti                                          ; $7b99: $d9


    rlca                                          ; $7b9a: $07
    ld l, l                                       ; $7b9b: $6d
    ld l, [hl]                                    ; $7b9c: $6e
    nop                                           ; $7b9d: $00
    ld a, l                                       ; $7b9e: $7d
    jp c, $9482                                   ; $7b9f: $da $82 $94

    ld a, [$d731]                                 ; $7ba2: $fa $31 $d7
    dec sp                                        ; $7ba5: $3b
    ld hl, sp+$52                                 ; $7ba6: $f8 $52
    ld a, [de]                                    ; $7ba8: $1a
    ld b, a                                       ; $7ba9: $47
    adc l                                         ; $7baa: $8d
    adc $b7                                       ; $7bab: $ce $b7
    sbc a                                         ; $7bad: $9f
    sub a                                         ; $7bae: $97
    add a                                         ; $7baf: $87
    ld [de], a                                    ; $7bb0: $12
    xor c                                         ; $7bb1: $a9
    inc hl                                        ; $7bb2: $23
    xor $52                                       ; $7bb3: $ee $52
    ld d, a                                       ; $7bb5: $57
    ccf                                           ; $7bb6: $3f
    jp c, $bdfc                                   ; $7bb7: $da $fc $bd

    res 7, [hl]                                   ; $7bba: $cb $be
    xor h                                         ; $7bbc: $ac
    jp nz, Jump_000_2bfe                          ; $7bbd: $c2 $fe $2b

    inc e                                         ; $7bc0: $1c
    pop de                                        ; $7bc1: $d1
    jr c, @+$64                                   ; $7bc2: $38 $62

    inc d                                         ; $7bc4: $14
    adc $e1                                       ; $7bc5: $ce $e1
    or h                                          ; $7bc7: $b4
    push bc                                       ; $7bc8: $c5
    sub [hl]                                      ; $7bc9: $96
    scf                                           ; $7bca: $37
    nop                                           ; $7bcb: $00
    ld d, a                                       ; $7bcc: $57
    ld a, h                                       ; $7bcd: $7c
    sbc l                                         ; $7bce: $9d
    cp d                                          ; $7bcf: $ba
    rra                                           ; $7bd0: $1f
    or c                                          ; $7bd1: $b1
    jp nc, Jump_000_0a5e                          ; $7bd2: $d2 $5e $0a

    rst $30                                       ; $7bd5: $f7
    or e                                          ; $7bd6: $b3
    and a                                         ; $7bd7: $a7
    add a                                         ; $7bd8: $87
    reti                                          ; $7bd9: $d9


    and b                                         ; $7bda: $a0
    sbc c                                         ; $7bdb: $99
    call nz, $fc39                                ; $7bdc: $c4 $39 $fc
    ld h, c                                       ; $7bdf: $61
    add $bf                                       ; $7be0: $c6 $bf
    rst $10                                       ; $7be2: $d7
    db $fd                                        ; $7be3: $fd
    ld [de], a                                    ; $7be4: $12
    ld d, a                                       ; $7be5: $57
    ld [hl], l                                    ; $7be6: $75
    sub c                                         ; $7be7: $91
    dec bc                                        ; $7be8: $0b
    ld e, a                                       ; $7be9: $5f
    ld l, b                                       ; $7bea: $68
    ld [$fd9f], sp                                ; $7beb: $08 $9f $fd
    ld b, e                                       ; $7bee: $43
    jp nc, Jump_03c_4f7c                          ; $7bef: $d2 $7c $4f

    nop                                           ; $7bf2: $00
    halt                                          ; $7bf3: $76
    cp b                                          ; $7bf4: $b8

Call_03c_7bf5:
    ld [$f086], a                                 ; $7bf5: $ea $86 $f0
    xor c                                         ; $7bf8: $a9
    dec bc                                        ; $7bf9: $0b
    inc de                                        ; $7bfa: $13
    and c                                         ; $7bfb: $a1
    sbc h                                         ; $7bfc: $9c
    push bc                                       ; $7bfd: $c5
    ld [hl], c                                    ; $7bfe: $71
    xor a                                         ; $7bff: $af
    ld [hl], $f3                                  ; $7c00: $36 $f3
    db $ec                                        ; $7c02: $ec
    ld [hl], b                                    ; $7c03: $70
    ld c, d                                       ; $7c04: $4a
    cp c                                          ; $7c05: $b9
    ld bc, $fbdd                                  ; $7c06: $01 $dd $fb
    ld [hl], b                                    ; $7c09: $70
    pop bc                                        ; $7c0a: $c1
    rst $10                                       ; $7c0b: $d7
    ld de, $624d                                  ; $7c0c: $11 $4d $62
    sub h                                         ; $7c0f: $94
    rst $30                                       ; $7c10: $f7
    cp c                                          ; $7c11: $b9
    ld a, [c]                                     ; $7c12: $f2
    cp d                                          ; $7c13: $ba
    inc de                                        ; $7c14: $13
    ld b, $7d                                     ; $7c15: $06 $7d
    add hl, hl                                    ; $7c17: $29
    dec c                                         ; $7c18: $0d
    ld e, a                                       ; $7c19: $5f
    pop hl                                        ; $7c1a: $e1
    or e                                          ; $7c1b: $b3
    ld a, a                                       ; $7c1c: $7f
    ld de, $4f6b                                  ; $7c1d: $11 $6b $4f
    nop                                           ; $7c20: $00
    cp l                                          ; $7c21: $bd
    ld c, $c0                                     ; $7c22: $0e $c0
    ld h, c                                       ; $7c24: $61
    sbc $00                                       ; $7c25: $de $00
    db $dd                                        ; $7c27: $dd
    ld [bc], a                                    ; $7c28: $02
    inc e                                         ; $7c29: $1c
    ld [hl], l                                    ; $7c2a: $75
    cp $23                                        ; $7c2b: $fe $23
    rla                                           ; $7c2d: $17
    ld c, d                                       ; $7c2e: $4a
    db $d3                                        ; $7c2f: $d3
    rst $28                                       ; $7c30: $ef
    or c                                          ; $7c31: $b1
    ld b, b                                       ; $7c32: $40
    xor [hl]                                      ; $7c33: $ae
    ld h, c                                       ; $7c34: $61
    inc h                                         ; $7c35: $24
    add $97                                       ; $7c36: $c6 $97
    xor [hl]                                      ; $7c38: $ae
    sbc c                                         ; $7c39: $99
    xor h                                         ; $7c3a: $ac
    add hl, hl                                    ; $7c3b: $29
    ei                                            ; $7c3c: $fb
    ld e, l                                       ; $7c3d: $5d
    sbc d                                         ; $7c3e: $9a

Call_03c_7c3f:
    ld [$b69f], sp                                ; $7c3f: $08 $9f $b6
    ld h, c                                       ; $7c42: $61
    xor [hl]                                      ; $7c43: $ae
    ld [hl], b                                    ; $7c44: $70
    ld d, c                                       ; $7c45: $51
    sbc [hl]                                      ; $7c46: $9e
    ld a, [hl-]                                   ; $7c47: $3a
    sub e                                         ; $7c48: $93
    ld [hl], l                                    ; $7c49: $75
    di                                            ; $7c4a: $f3
    ccf                                           ; $7c4b: $3f
    jp hl                                         ; $7c4c: $e9


    ld a, [bc]                                    ; $7c4d: $0a
    sbc e                                         ; $7c4e: $9b
    rst $08                                       ; $7c4f: $cf
    dec de                                        ; $7c50: $1b
    nop                                           ; $7c51: $00
    or $af                                        ; $7c52: $f6 $af
    dec hl                                        ; $7c54: $2b
    add l                                         ; $7c55: $85
    ret nc                                        ; $7c56: $d0

    ei                                            ; $7c57: $fb
    add h                                         ; $7c58: $84
    rst $08                                       ; $7c59: $cf
    cp $45                                        ; $7c5a: $fe $45
    xor h                                         ; $7c5c: $ac
    rst $30                                       ; $7c5d: $f7
    ld l, $e3                                     ; $7c5e: $2e $e3
    xor b                                         ; $7c60: $a8
    or c                                          ; $7c61: $b1
    xor e                                         ; $7c62: $ab
    di                                            ; $7c63: $f3
    ld [hl], l                                    ; $7c64: $75
    ld [$21a8], a                                 ; $7c65: $ea $a8 $21
    push hl                                       ; $7c68: $e5

Jump_03c_7c69:
    pop de                                        ; $7c69: $d1
    rst $20                                       ; $7c6a: $e7
    dec c                                         ; $7c6b: $0d
    nop                                           ; $7c6c: $00
    ld a, l                                       ; $7c6d: $7d
    cp b                                          ; $7c6e: $b8
    rrca                                          ; $7c6f: $0f
    dec e                                         ; $7c70: $1d
    dec [hl]                                      ; $7c71: $35
    and $7e                                       ; $7c72: $e6 $7e
    ld d, $c7                                     ; $7c74: $16 $c7
    reti                                          ; $7c76: $d9


    ccf                                           ; $7c77: $3f
    inc h                                         ; $7c78: $24
    call Call_000_362f                            ; $7c79: $cd $2f $36
    ld [hl+], a                                   ; $7c7c: $22
    ld h, a                                       ; $7c7d: $67
    ld d, d                                       ; $7c7e: $52
    ld e, a                                       ; $7c7f: $5f
    rst $10                                       ; $7c80: $d7
    jr nc, jr_03c_7cd5                            ; $7c81: $30 $52

    xor b                                         ; $7c83: $a8
    adc a                                         ; $7c84: $8f
    sub c                                         ; $7c85: $91
    ld a, [hl-]                                   ; $7c86: $3a
    adc e                                         ; $7c87: $8b
    db $e3                                        ; $7c88: $e3
    ld c, h                                       ; $7c89: $4c
    ld h, d                                       ; $7c8a: $62
    ld a, h                                       ; $7c8b: $7c
    pop bc                                        ; $7c8c: $c1
    call nc, Call_03c_7669                        ; $7c8d: $d4 $69 $76
    add h                                         ; $7c90: $84
    dec hl                                        ; $7c91: $2b
    cp a                                          ; $7c92: $bf
    add b                                         ; $7c93: $80
    ld b, [hl]                                    ; $7c94: $46
    cpl                                           ; $7c95: $2f
    ld a, a                                       ; $7c96: $7f
    inc bc                                        ; $7c97: $03
    db $dd                                        ; $7c98: $dd
    cpl                                           ; $7c99: $2f
    ld [hl], c                                    ; $7c9a: $71
    ld d, l                                       ; $7c9b: $55
    ld b, a                                       ; $7c9c: $47
    adc l                                         ; $7c9d: $8d
    ld e, l                                       ; $7c9e: $5d
    cp d                                          ; $7c9f: $ba
    ldh [$9b], a                                  ; $7ca0: $e0 $9b

Jump_03c_7ca2:
    ld b, [hl]                                    ; $7ca2: $46
    db $f4                                        ; $7ca3: $f4
    cp c                                          ; $7ca4: $b9
    or a                                          ; $7ca5: $b7
    jr c, jr_03c_7cc3                             ; $7ca6: $38 $1b

    ld hl, sp-$06                                 ; $7ca8: $f8 $fa
    ld a, h                                       ; $7caa: $7c
    xor c                                         ; $7cab: $a9
    ld c, [hl]                                    ; $7cac: $4e
    ld l, e                                       ; $7cad: $6b
    ld c, a                                       ; $7cae: $4f
    nop                                           ; $7caf: $00
    halt                                          ; $7cb0: $76
    ld a, [de]                                    ; $7cb1: $1a
    db $d3                                        ; $7cb2: $d3
    cp d                                          ; $7cb3: $ba
    ldh [$9b], a                                  ; $7cb4: $e0 $9b
    ld b, [hl]                                    ; $7cb6: $46
    db $f4                                        ; $7cb7: $f4
    add hl, sp                                    ; $7cb8: $39
    add a                                         ; $7cb9: $87
    sub e                                         ; $7cba: $93
    xor a                                         ; $7cbb: $af
    ld [hl], e                                    ; $7cbc: $73
    pop hl                                        ; $7cbd: $e1
    set 1, a                                      ; $7cbe: $cb $cf
    pop hl                                        ; $7cc0: $e1

jr_03c_7cc1:
    xor b                                         ; $7cc1: $a8
    pop de                                        ; $7cc2: $d1

jr_03c_7cc3:
    ld sp, hl                                     ; $7cc3: $f9
    or $18                                        ; $7cc4: $f6 $18
    add hl, sp                                    ; $7cc6: $39
    db $eb                                        ; $7cc7: $eb
    call nc, $bee9                                ; $7cc8: $d4 $e9 $be
    ld l, [hl]                                    ; $7ccb: $6e
    ld d, b                                       ; $7ccc: $50
    ld [$8e2c], a                                 ; $7ccd: $ea $2c $8e
    dec bc                                        ; $7cd0: $0b
    dec h                                         ; $7cd1: $25
    ld sp, $30e6                                  ; $7cd2: $31 $e6 $30

jr_03c_7cd5:
    ld [hl], l                                    ; $7cd5: $75
    rst $18                                       ; $7cd6: $df
    ld a, c                                       ; $7cd7: $79
    db $f4                                        ; $7cd8: $f4
    adc c                                         ; $7cd9: $89
    cpl                                           ; $7cda: $2f
    ld e, l                                       ; $7cdb: $5d

jr_03c_7cdc:
    ld a, b                                       ; $7cdc: $78
    inc bc                                        ; $7cdd: $03
    db $dd                                        ; $7cde: $dd
    ld a, [$7934]                                 ; $7cdf: $fa $34 $79
    ld hl, sp-$14                                 ; $7ce2: $f8 $ec
    jp hl                                         ; $7ce4: $e9


    ld h, c                                       ; $7ce5: $61
    ld [hl], $68                                  ; $7ce6: $36 $68

Call_03c_7ce8:
    pop bc                                        ; $7ce8: $c1
    ld e, a                                       ; $7ce9: $5f
    push bc                                       ; $7cea: $c5
    or c                                          ; $7ceb: $b1
    call nz, $01ec                                ; $7cec: $c4 $ec $01
    nop                                           ; $7cef: $00
    rla                                           ; $7cf0: $17
    dec d                                         ; $7cf1: $15
    ld d, [hl]                                    ; $7cf2: $56
    ld a, [hl]                                    ; $7cf3: $7e
    ld c, $57                                     ; $7cf4: $0e $57
    inc de                                        ; $7cf6: $13
    push af                                       ; $7cf7: $f5
    ei                                            ; $7cf8: $fb
    ld [hl], c                                    ; $7cf9: $71
    sbc [hl]                                      ; $7cfa: $9e
    db $eb                                        ; $7cfb: $eb
    dec e                                         ; $7cfc: $1d
    ld a, h                                       ; $7cfd: $7c
    add hl, hl                                    ; $7cfe: $29
    adc l                                         ; $7cff: $8d
    rst $30                                       ; $7d00: $f7
    ld l, $aa                                     ; $7d01: $2e $aa
    jp z, $f092                                   ; $7d03: $ca $92 $f0

    ld e, l                                       ; $7d06: $5d
    sbc d                                         ; $7d07: $9a
    ld a, b                                       ; $7d08: $78
    inc bc                                        ; $7d09: $03
    add a                                         ; $7d0a: $87
    ld e, [hl]                                    ; $7d0b: $5e
    ld [c], a                                     ; $7d0c: $e2
    jr z, jr_03c_7cdc                             ; $7d0d: $28 $cd

    rst $20                                       ; $7d0f: $e7
    ld l, $4d                                     ; $7d10: $2e $4d
    add h                                         ; $7d12: $84
    rra                                           ; $7d13: $1f

jr_03c_7d14:
    ld a, [bc]                                    ; $7d14: $0a
    nop                                           ; $7d15: $00
    add a                                         ; $7d16: $87
    jp c, Jump_03c_7c69                           ; $7d17: $da $69 $7c

    xor c                                         ; $7d1a: $a9
    ld a, [hl-]                                   ; $7d1b: $3a
    and d                                         ; $7d1c: $a2
    ld a, c                                       ; $7d1d: $79
    adc h                                         ; $7d1e: $8c
    adc a                                         ; $7d1f: $8f
    ld a, $e7                                     ; $7d20: $3e $e7
    add hl, sp                                    ; $7d22: $39
    adc e                                         ; $7d23: $8b
    and e                                         ; $7d24: $a3
    ld a, a                                       ; $7d25: $7f
    xor c                                         ; $7d26: $a9
    add hl, sp                                    ; $7d27: $39
    sub e                                         ; $7d28: $93
    jr c, jr_03c_7cc1                             ; $7d29: $38 $96

    ld a, c                                       ; $7d2b: $79
    ld a, c                                       ; $7d2c: $79
    ret z                                         ; $7d2d: $c8

    ld d, $e1                                     ; $7d2e: $16 $e1
    dec bc                                        ; $7d30: $0b
    add hl, hl                                    ; $7d31: $29
    add hl, sp                                    ; $7d32: $39
    call z, $a529                                 ; $7d33: $cc $29 $a5

jr_03c_7d36:
    ld l, e                                       ; $7d36: $6b
    push de                                       ; $7d37: $d5
    ld e, l                                       ; $7d38: $5d
    and [hl]                                      ; $7d39: $a6
    sub l                                         ; $7d3a: $95
    ld a, e                                       ; $7d3b: $7b
    rla                                           ; $7d3c: $17
    push hl                                       ; $7d3d: $e5
    ld l, d                                       ; $7d3e: $6a
    or $4b                                        ; $7d3f: $f6 $4b
    sbc c                                         ; $7d41: $99
    ld d, d                                       ; $7d42: $52
    cp d                                          ; $7d43: $ba
    ld d, [hl]                                    ; $7d44: $56
    ccf                                           ; $7d45: $3f
    ld a, [$9297]                                 ; $7d46: $fa $97 $92
    inc sp                                        ; $7d49: $33
    adc c                                         ; $7d4a: $89
    ld [hl], e                                    ; $7d4b: $73
    sbc b                                         ; $7d4c: $98
    cp d                                          ; $7d4d: $ba
    xor a                                         ; $7d4e: $af
    dec de                                        ; $7d4f: $1b
    sub h                                         ; $7d50: $94
    ld a, [hl-]                                   ; $7d51: $3a
    adc e                                         ; $7d52: $8b
    db $e3                                        ; $7d53: $e3
    ld a, [hl+]                                   ; $7d54: $2a
    adc l                                         ; $7d55: $8d
    ld c, b                                       ; $7d56: $48
    call c, $d2af                                 ; $7d57: $dc $af $d2
    or h                                          ; $7d5a: $b4
    push bc                                       ; $7d5b: $c5
    sub a                                         ; $7d5c: $97
    sbc d                                         ; $7d5d: $9a
    dec hl                                        ; $7d5e: $2b
    ccf                                           ; $7d5f: $3f
    ld h, l                                       ; $7d60: $65
    db $fd                                        ; $7d61: $fd
    ld hl, sp-$4d                                 ; $7d62: $f8 $b3
    jr c, jr_03c_7d14                             ; $7d64: $38 $ae

    jp nc, $bc88                                  ; $7d66: $d2 $88 $bc

    rst $10                                       ; $7d69: $d7
    dec a                                         ; $7d6a: $3d
    jr nz, @-$41                                  ; $7d6b: $20 $bd

    ret c                                         ; $7d6d: $d8

    ld a, h                                       ; $7d6e: $7c
    db $d3                                        ; $7d6f: $d3
    sub l                                         ; $7d70: $95
    jp nz, $cbca                                  ; $7d71: $c2 $ca $cb

    cp [hl]                                       ; $7d74: $be
    ld c, h                                       ; $7d75: $4c
    sbc d                                         ; $7d76: $9a
    add a                                         ; $7d77: $87
    ret c                                         ; $7d78: $d8

    ld a, c                                       ; $7d79: $79
    inc bc                                        ; $7d7a: $03

Call_03c_7d7b:
    ld h, e                                       ; $7d7b: $63
    cp a                                          ; $7d7c: $bf
    ld a, [c]                                     ; $7d7d: $f2
    adc e                                         ; $7d7e: $8b
    add hl, hl                                    ; $7d7f: $29
    jp nz, Jump_03c_5dd5                          ; $7d80: $c2 $d5 $5d

    cp d                                          ; $7d83: $ba
    cpl                                           ; $7d84: $2f
    pop af                                        ; $7d85: $f1
    pop hl                                        ; $7d86: $e1
    dec hl                                        ; $7d87: $2b
    cp a                                          ; $7d88: $bf
    sbc d                                         ; $7d89: $9a
    cp [hl]                                       ; $7d8a: $be
    dec a                                         ; $7d8b: $3d
    and [hl]                                      ; $7d8c: $a6
    add hl, bc                                    ; $7d8d: $09
    ld [hl], d                                    ; $7d8e: $72
    sbc [hl]                                      ; $7d8f: $9e
    ld h, l                                       ; $7d90: $65
    jp c, $79d5                                   ; $7d91: $da $d5 $79

    sbc a                                         ; $7d94: $9f
    dec a                                         ; $7d95: $3d
    ld h, a                                       ; $7d96: $67
    ld d, a                                       ; $7d97: $57
    ld c, d                                       ; $7d98: $4a
    ld [$2394], a                                 ; $7d99: $ea $94 $23
    sbc d                                         ; $7d9c: $9a
    call nz, $2f28                                ; $7d9d: $c4 $28 $2f
    ld e, l                                       ; $7da0: $5d
    jr c, jr_03c_7d36                             ; $7da1: $38 $93

    jr @+$1d                                      ; $7da3: $18 $1b

    sub h                                         ; $7da5: $94
    ei                                            ; $7da6: $fb
    ld d, d                                       ; $7da7: $52
    ld l, h                                       ; $7da8: $6c
    ld h, [hl]                                    ; $7da9: $66
    sbc l                                         ; $7daa: $9d
    ld [hl], d                                    ; $7dab: $72
    dec h                                         ; $7dac: $25
    ld d, a                                       ; $7dad: $57
    ld a, [bc]                                    ; $7dae: $0a
    dec hl                                        ; $7daf: $2b
    cpl                                           ; $7db0: $2f
    ld e, l                                       ; $7db1: $5d
    cp b                                          ; $7db2: $b8
    cp d                                          ; $7db3: $ba
    ld de, $bca3                                  ; $7db4: $11 $a3 $bc
    adc $3b                                       ; $7db7: $ce $3b
    pop hl                                        ; $7db9: $e1
    jp z, $d52f                                   ; $7dba: $ca $2f $d5

    jr c, jr_03c_7e28                             ; $7dbd: $38 $69

    cp $fd                                        ; $7dbf: $fe $fd
    dec a                                         ; $7dc1: $3d
    dec sp                                        ; $7dc2: $3b
    xor h                                         ; $7dc3: $ac
    ret c                                         ; $7dc4: $d8

    ld a, h                                       ; $7dc5: $7c
    call $9f95                                    ; $7dc6: $cd $95 $9f
    ld d, b                                       ; $7dc9: $50
    ld b, e                                       ; $7dca: $43
    ld b, a                                       ; $7dcb: $47
    adc l                                         ; $7dcc: $8d
    cp a                                          ; $7dcd: $bf
    sub d                                         ; $7dce: $92
    ld a, e                                       ; $7dcf: $7b
    adc h                                         ; $7dd0: $8c
    call nc, $a985                                ; $7dd1: $d4 $85 $a9
    xor l                                         ; $7dd4: $ad
    ld d, e                                       ; $7dd5: $53
    ld a, b                                       ; $7dd6: $78
    rra                                           ; $7dd7: $1f
    ld a, [bc]                                    ; $7dd8: $0a
    nop                                           ; $7dd9: $00
    add a                                         ; $7dda: $87
    sbc [hl]                                      ; $7ddb: $9e
    ld c, l                                       ; $7ddc: $4d
    ld c, l                                       ; $7ddd: $4d
    add l                                         ; $7dde: $85
    xor a                                         ; $7ddf: $af
    ld [hl], a                                    ; $7de0: $77
    ldh a, [$a5]                                  ; $7de1: $f0 $a5
    inc [hl]                                      ; $7de3: $34
    ld e, $7a                                     ; $7de4: $1e $7a
    inc bc                                        ; $7de6: $03

Call_03c_7de7:
    sub a                                         ; $7de7: $97
    ld de, $a759                                  ; $7de8: $11 $59 $a7
    xor [hl]                                      ; $7deb: $ae
    db $fc                                        ; $7dec: $fc
    ld a, d                                       ; $7ded: $7a
    ld a, a                                       ; $7dee: $7f
    ld hl, sp-$0d                                 ; $7def: $f8 $f3
    ld e, h                                       ; $7df1: $5c
    jp $d34a                                      ; $7df2: $c3 $4a $d3


    sub $69                                       ; $7df5: $d6 $69
    and l                                         ; $7df7: $a5
    ld sp, hl                                     ; $7df8: $f9
    rst $30                                       ; $7df9: $f7
    dec bc                                        ; $7dfa: $0b
    ld e, a                                       ; $7dfb: $5f
    ld a, [hl]                                    ; $7dfc: $7e
    ld [$4d3a], a                                 ; $7dfd: $ea $3a $4d
    ld c, d                                       ; $7e00: $4a
    xor $57                                       ; $7e01: $ee $57
    ld a, [hl]                                    ; $7e03: $7e
    ld sp, $7845                                  ; $7e04: $31 $45 $78
    xor a                                         ; $7e07: $af
    or a                                          ; $7e08: $b7
    jr nc, @+$69                                  ; $7e09: $30 $67

    ld [hl], c                                    ; $7e0b: $71
    inc e                                         ; $7e0c: $1c
    ld [hl], l                                    ; $7e0d: $75
    ld [$9baa], a                                 ; $7e0e: $ea $aa $9b
    ld l, c                                       ; $7e11: $69
    call nz, $9ac8                                ; $7e12: $c4 $c8 $9a
    jr jr_03c_7e50                                ; $7e15: $18 $39

    ld c, b                                       ; $7e17: $48
    ld e, $3d                                     ; $7e18: $1e $3d
    rla                                           ; $7e1a: $17
    cp [hl]                                       ; $7e1b: $be
    db $fc                                        ; $7e1c: $fc
    adc h                                         ; $7e1d: $8c
    db $eb                                        ; $7e1e: $eb
    ld c, b                                       ; $7e1f: $48
    sub e                                         ; $7e20: $93
    db $fd                                        ; $7e21: $fd
    ld a, [$74a6]                                 ; $7e22: $fa $a6 $74
    jr z, @+$33                                   ; $7e25: $28 $31

    ld h, a                                       ; $7e27: $67

jr_03c_7e28:
    db $dd                                        ; $7e28: $dd
    rst $08                                       ; $7e29: $cf
    and a                                         ; $7e2a: $a7
    adc $73                                       ; $7e2b: $ce $73
    sbc b                                         ; $7e2d: $98
    sbc d                                         ; $7e2e: $9a
    ld d, c                                       ; $7e2f: $51
    ld d, d                                       ; $7e30: $52
    rst $28                                       ; $7e31: $ef
    ld e, l                                       ; $7e32: $5d
    sub c                                         ; $7e33: $91
    sub $fd                                       ; $7e34: $d6 $fd
    adc b                                         ; $7e36: $88
    sub l                                         ; $7e37: $95
    or $b2                                        ; $7e38: $f6 $b2
    sbc a                                         ; $7e3a: $9f
    dec a                                         ; $7e3b: $3d
    dec a                                         ; $7e3c: $3d
    call z, $cd06                                 ; $7e3d: $cc $06 $cd
    inc h                                         ; $7e40: $24
    xor [hl]                                      ; $7e41: $ae
    db $fc                                        ; $7e42: $fc
    add h                                         ; $7e43: $84
    ld a, [de]                                    ; $7e44: $1a
    ld a, [hl-]                                   ; $7e45: $3a
    ld l, d                                       ; $7e46: $6a
    db $fc                                        ; $7e47: $fc
    ld a, e                                       ; $7e48: $7b
    ld d, a                                       ; $7e49: $57
    ld a, h                                       ; $7e4a: $7c
    sbc l                                         ; $7e4b: $9d
    cp d                                          ; $7e4c: $ba
    sbc a                                         ; $7e4d: $9f
    and a                                         ; $7e4e: $a7
    or c                                          ; $7e4f: $b1

jr_03c_7e50:
    ld de, $c965                                  ; $7e50: $11 $65 $c9
    db $fd                                        ; $7e53: $fd
    db $ec                                        ; $7e54: $ec
    rra                                           ; $7e55: $1f
    sub d                                         ; $7e56: $92
    and $6f                                       ; $7e57: $e6 $6f
    nop                                           ; $7e59: $00
    db $dd                                        ; $7e5a: $dd
    ld a, [$74a6]                                 ; $7e5b: $fa $a6 $74
    jr z, jr_03c_7e91                             ; $7e5e: $28 $31

    ld a, e                                       ; $7e60: $7b
    xor h                                         ; $7e61: $ac
    ld e, e                                       ; $7e62: $5b
    jr nz, jr_03c_7e7c                            ; $7e63: $20 $17

    db $fc                                        ; $7e65: $fc
    ld d, c                                       ; $7e66: $51
    call $ef87                                    ; $7e67: $cd $87 $ef
    or e                                          ; $7e6a: $b3
    rst $00                                       ; $7e6b: $c7
    cp d                                          ; $7e6c: $ba
    sbc l                                         ; $7e6d: $9d
    jp $9a50                                      ; $7e6e: $c3 $50 $9a


    ld a, $7c                                     ; $7e71: $3e $7c
    jp nc, $3615                                  ; $7e73: $d2 $15 $36

    sbc a                                         ; $7e76: $9f
    ldh a, [rNR24]                                ; $7e77: $f0 $19
    ld e, e                                       ; $7e79: $5b
    adc b                                         ; $7e7a: $88
    dec h                                         ; $7e7b: $25

jr_03c_7e7c:
    ld a, e                                       ; $7e7c: $7b
    nop                                           ; $7e7d: $00
    cp l                                          ; $7e7e: $bd
    inc l                                         ; $7e7f: $2c
    adc $66                                       ; $7e80: $ce $66
    call nc, Call_03c_75d8                        ; $7e82: $d4 $d8 $75
    cpl                                           ; $7e85: $2f
    ldh a, [$3b]                                  ; $7e86: $f0 $3b
    call nc, Call_000_1c59                        ; $7e88: $d4 $59 $1c
    ld b, a                                       ; $7e8b: $47
    adc l                                         ; $7e8c: $8d
    cp c                                          ; $7e8d: $b9
    ret z                                         ; $7e8e: $c8

    add l                                         ; $7e8f: $85
    xor a                                         ; $7e90: $af

jr_03c_7e91:
    cpl                                           ; $7e91: $2f
    ld e, l                                       ; $7e92: $5d
    inc sp                                        ; $7e93: $33
    adc c                                         ; $7e94: $89
    or c                                          ; $7e95: $b1
    and c                                         ; $7e96: $a1
    ei                                            ; $7e97: $fb
    sbc d                                         ; $7e98: $9a
    jr jr_03c_7ea4                                ; $7e99: $18 $09

    ld e, a                                       ; $7e9b: $5f
    rst $30                                       ; $7e9c: $f7
    ld a, [bc]                                    ; $7e9d: $0a
    push bc                                       ; $7e9e: $c5
    cp a                                          ; $7e9f: $bf
    rst $28                                       ; $7ea0: $ef
    add hl, bc                                    ; $7ea1: $09
    nop                                           ; $7ea2: $00
    rla                                           ; $7ea3: $17

jr_03c_7ea4:
    push hl                                       ; $7ea4: $e5
    or h                                          ; $7ea5: $b4
    ld [$cbbd], a                                 ; $7ea6: $ea $bd $cb
    adc b                                         ; $7ea9: $88
    ld e, [hl]                                    ; $7eaa: $5e
    xor d                                         ; $7eab: $aa
    adc $e2                                       ; $7eac: $ce $e2
    cp b                                          ; $7eae: $b8
    jp Jump_03c_5b14                              ; $7eaf: $c3 $14 $5b


    push af                                       ; $7eb2: $f5
    pop hl                                        ; $7eb3: $e1
    di                                            ; $7eb4: $f3
    call nc, $be90                                ; $7eb5: $d4 $90 $be
    ld c, c                                       ; $7eb8: $49
    call $9679                                    ; $7eb9: $cd $79 $96
    add l                                         ; $7ebc: $85
    or h                                          ; $7ebd: $b4
    jr c, jr_03c_7ede                             ; $7ebe: $38 $1e

    sbc h                                         ; $7ec0: $9c
    db $eb                                        ; $7ec1: $eb
    sbc e                                         ; $7ec2: $9b
    jp nc, $c4a1                                  ; $7ec3: $d2 $a1 $c4

    cp h                                          ; $7ec6: $bc
    ld bc, $acf6                                  ; $7ec7: $01 $f6 $ac
    ld d, e                                       ; $7eca: $53
    daa                                           ; $7ecb: $27
    inc [hl]                                      ; $7ecc: $34
    xor l                                         ; $7ecd: $ad
    db $d3                                        ; $7ece: $d3
    ld a, h                                       ; $7ecf: $7c
    adc $e1                                       ; $7ed0: $ce $e1
    rst $08                                       ; $7ed2: $cf
    cp h                                          ; $7ed3: $bc
    call nz, $e79f                                ; $7ed4: $c4 $9f $e7
    ld a, d                                       ; $7ed7: $7a
    rlca                                          ; $7ed8: $07
    ld e, a                                       ; $7ed9: $5f
    ld c, d                                       ; $7eda: $4a
    db $e3                                        ; $7edb: $e3
    xor [hl]                                      ; $7edc: $ae
    db $e4                                        ; $7edd: $e4

jr_03c_7ede:
    ld l, e                                       ; $7ede: $6b
    and c                                         ; $7edf: $a1
    push af                                       ; $7ee0: $f5
    sbc $65                                       ; $7ee1: $de $65
    adc l                                         ; $7ee3: $8d
    ret z                                         ; $7ee4: $c8

    add hl, sp                                    ; $7ee5: $39
    ld c, h                                       ; $7ee6: $4c

Call_03c_7ee7:
    db $dd                                        ; $7ee7: $dd
    rst $10                                       ; $7ee8: $d7
    dec c                                         ; $7ee9: $0d
    ld c, d                                       ; $7eea: $4a
    sbc l                                         ; $7eeb: $9d
    push bc                                       ; $7eec: $c5
    ld [hl], c                                    ; $7eed: $71
    and c                                         ; $7eee: $a1
    and e                                         ; $7eef: $a3
    daa                                           ; $7ef0: $27
    xor [hl]                                      ; $7ef1: $ae
    inc d                                         ; $7ef2: $14
    ld d, [hl]                                    ; $7ef3: $56
    ld e, [hl]                                    ; $7ef4: $5e
    sub h                                         ; $7ef5: $94
    ei                                            ; $7ef6: $fb
    push af                                       ; $7ef7: $f5

Call_03c_7ef8:
    ld c, l                                       ; $7ef8: $4d
    jp hl                                         ; $7ef9: $e9


    ld d, b                                       ; $7efa: $50
    ld h, d                                       ; $7efb: $62
    adc [hl]                                      ; $7efc: $8e
    ld h, l                                       ; $7efd: $65
    and c                                         ; $7efe: $a1
    ret c                                         ; $7eff: $d8

    jp nz, Jump_03c_756a                          ; $7f00: $c2 $6a $75

    ld c, [hl]                                    ; $7f03: $4e
    cp e                                          ; $7f04: $bb

Call_03c_7f05:
Jump_03c_7f05:
    ld a, [hl-]                                   ; $7f05: $3a
    rst $28                                       ; $7f06: $ef
    ld [hl], e                                    ; $7f07: $73
    cp a                                          ; $7f08: $bf
    sbc d                                         ; $7f09: $9a
    cp [hl]                                       ; $7f0a: $be
    dec a                                         ; $7f0b: $3d
    and [hl]                                      ; $7f0c: $a6
    add hl, bc                                    ; $7f0d: $09
    ld a, [c]                                     ; $7f0e: $f2
    ld b, $76                                     ; $7f0f: $06 $76
    ld a, [de]                                    ; $7f11: $1a
    cp e                                          ; $7f12: $bb
    sub $69                                       ; $7f13: $d6 $69
    call nz, Call_03c_7d7b                        ; $7f15: $c4 $7b $7d
    ld d, e                                       ; $7f18: $53
    ld d, a                                       ; $7f19: $57
    ld h, c                                       ; $7f1a: $61
    sbc l                                         ; $7f1b: $9d
    ld a, [hl-]                                   ; $7f1c: $3a
    ld h, d                                       ; $7f1d: $62
    ld c, h                                       ; $7f1e: $4c
    inc [hl]                                      ; $7f1f: $34
    call nc, $001b                                ; $7f20: $d4 $1b $00
    db $dd                                        ; $7f23: $dd
    cpl                                           ; $7f24: $2f
    jp z, Jump_03c_5f05                           ; $7f25: $ca $05 $5f

    ld h, a                                       ; $7f28: $67
    ld [de], a                                    ; $7f29: $12
    ld l, d                                       ; $7f2a: $6a
    ld a, $7b                                     ; $7f2b: $3e $7b
    ld [bc], a                                    ; $7f2d: $02
    cp l                                          ; $7f2e: $bd
    ld c, $c0                                     ; $7f2f: $0e $c0
    ld h, c                                       ; $7f31: $61
    sbc $00                                       ; $7f32: $de $00
    db $dd                                        ; $7f34: $dd
    xor [hl]                                      ; $7f35: $ae
    ld [hl], b                                    ; $7f36: $70
    inc l                                         ; $7f37: $2c
    dec d                                         ; $7f38: $15
    xor $d7                                       ; $7f39: $ee $d7
    jr nc, jr_03c_7f4f                            ; $7f3b: $30 $12

    db $e3                                        ; $7f3d: $e3
    ld c, e                                       ; $7f3e: $4b
    ld c, c                                       ; $7f3f: $49
    ld hl, sp-$14                                 ; $7f40: $f8 $ec
    ld e, a                                       ; $7f42: $5f
    call nz, $63da                                ; $7f43: $c4 $da $63
    db $dd                                        ; $7f46: $dd
    ld l, $23                                     ; $7f47: $2e $23
    or d                                          ; $7f49: $b2
    ld c, [hl]                                    ; $7f4a: $4e
    sbc l                                         ; $7f4b: $9d
    push bc                                       ; $7f4c: $c5
    ld [hl], c                                    ; $7f4d: $71
    ld b, d                                       ; $7f4e: $42

jr_03c_7f4f:
    db $e3                                        ; $7f4f: $e3
    ld b, d                                       ; $7f50: $42
    jp z, $c94b                                   ; $7f51: $ca $4b $c9

    ld e, $00                                     ; $7f54: $1e $00
    add c                                         ; $7f56: $81
    sub h                                         ; $7f57: $94
    xor [hl]                                      ; $7f58: $ae
    push de                                       ; $7f59: $d5
    db $ec                                        ; $7f5a: $ec

Jump_03c_7f5b:
    sub a                                         ; $7f5b: $97
    ld [hl-], a                                   ; $7f5c: $32
    adc e                                         ; $7f5d: $8b
    db $e3                                        ; $7f5e: $e3
    jr nc, jr_03c_7fd6                            ; $7f5f: $30 $75

    sub l                                         ; $7f61: $95
    or a                                          ; $7f62: $b7
    ld a, [hl]                                    ; $7f63: $7e
    sbc l                                         ; $7f64: $9d
    ld a, [hl-]                                   ; $7f65: $3a
    db $eb                                        ; $7f66: $eb
    rst $18                                       ; $7f67: $df
    nop                                           ; $7f68: $00
    add c                                         ; $7f69: $81
    dec c                                         ; $7f6a: $0d
    jp z, Jump_03c_4485                           ; $7f6b: $ca $85 $44

    ld a, l                                       ; $7f6e: $7d
    db $f4                                        ; $7f6f: $f4
    add hl, sp                                    ; $7f70: $39
    adc e                                         ; $7f71: $8b
    db $e3                                        ; $7f72: $e3
    inc a                                         ; $7f73: $3c
    dec sp                                        ; $7f74: $3b
    inc d                                         ; $7f75: $14
    sbc e                                         ; $7f76: $9b
    ld e, a                                       ; $7f77: $5f
    sub e                                         ; $7f78: $93
    ld e, c                                       ; $7f79: $59
    ld [hl], e                                    ; $7f7a: $73
    call nz, $b745                                ; $7f7b: $c4 $45 $b7
    ld [c], a                                     ; $7f7e: $e2
    and b                                         ; $7f7f: $a0
    rla                                           ; $7f80: $17
    ld hl, sp-$14                                 ; $7f81: $f8 $ec
    add hl, hl                                    ; $7f83: $29
    ld [hl], l                                    ; $7f84: $75
    ld c, e                                       ; $7f85: $4b
    db $e4                                        ; $7f86: $e4
    dec c                                         ; $7f87: $0d
    nop                                           ; $7f88: $00
    or $af                                        ; $7f89: $f6 $af
    and e                                         ; $7f8b: $a3
    add $f7                                       ; $7f8c: $c6 $f7
    add hl, sp                                    ; $7f8e: $39
    ld h, d                                       ; $7f8f: $62
    dec [hl]                                      ; $7f90: $35
    and l                                         ; $7f91: $a5
    adc $7b                                       ; $7f92: $ce $7b
    ld d, a                                       ; $7f94: $57
    rst $08                                       ; $7f95: $cf
    sbc d                                         ; $7f96: $9a
    dec bc                                        ; $7f97: $0b
    dec e                                         ; $7f98: $1d
    ld a, l                                       ; $7f99: $7d
    ld l, $f8                                     ; $7f9a: $2e $f8
    add [hl]                                      ; $7f9c: $86
    ld d, d                                       ; $7f9d: $52
    ld [hl], d                                    ; $7f9e: $72
    pop af                                        ; $7f9f: $f1
    ld [hl], c                                    ; $7fa0: $71
    sbc l                                         ; $7fa1: $9d
    ld b, [hl]                                    ; $7fa2: $46
    sbc h                                         ; $7fa3: $9c
    ret                                           ; $7fa4: $c9


    ld a, [hl-]                                   ; $7fa5: $3a
    rla                                           ; $7fa6: $17
    rrca                                          ; $7fa7: $0f
    cp b                                          ; $7fa8: $b8
    ld bc, $ecdd                                  ; $7fa9: $01 $dd $ec
    inc [hl]                                      ; $7fac: $34
    and [hl]                                      ; $7fad: $a6
    ld [hl], l                                    ; $7fae: $75
    and l                                         ; $7faf: $a5
    ld l, c                                       ; $7fb0: $69
    call z, $bb1e                                 ; $7fb1: $cc $1e $bb
    add d                                         ; $7fb4: $82
    ld [$7c3d], sp                                ; $7fb5: $08 $3d $7c
    or $94                                        ; $7fb8: $f6 $94
    cp d                                          ; $7fba: $ba
    dec h                                         ; $7fbb: $25
    ld a, [c]                                     ; $7fbc: $f2
    ld b, $76                                     ; $7fbd: $06 $76
    cp d                                          ; $7fbf: $ba
    ld a, [c]                                     ; $7fc0: $f2
    dec bc                                        ; $7fc1: $0b
    and [hl]                                      ; $7fc2: $a6
    inc a                                         ; $7fc3: $3c
    ld a, h                                       ; $7fc4: $7c
    or $0f                                        ; $7fc5: $f6 $0f
    ld c, c                                       ; $7fc7: $49
    di                                            ; $7fc8: $f3
    scf                                           ; $7fc9: $37
    nop                                           ; $7fca: $00
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

jr_03c_7fd6:
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff
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
