; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

    ld d, l                                       ; $4000: $55
    rst $30                                       ; $4001: $f7
    ld d, b                                       ; $4002: $50
    dec [hl]                                      ; $4003: $35
    and l                                         ; $4004: $a5
    adc a                                         ; $4005: $8f
    cp $22                                        ; $4006: $fe $22
    xor [hl]                                      ; $4008: $ae
    ld e, c                                       ; $4009: $59
    and [hl]                                      ; $400a: $a6
    rla                                           ; $400b: $17
    rst $08                                       ; $400c: $cf
    xor l                                         ; $400d: $ad
    cp c                                          ; $400e: $b9
    or $43                                        ; $400f: $f6 $43
    ld e, c                                       ; $4011: $59
    ld a, l                                       ; $4012: $7d
    set 3, c                                      ; $4013: $cb $d9
    ret                                           ; $4015: $c9


    ld a, b                                       ; $4016: $78
    ld c, d                                       ; $4017: $4a
    rst $18                                       ; $4018: $df
    adc a                                         ; $4019: $8f
    pop de                                        ; $401a: $d1
    adc e                                         ; $401b: $8b
    dec e                                         ; $401c: $1d
    adc e                                         ; $401d: $8b
    cp b                                          ; $401e: $b8
    or $43                                        ; $401f: $f6 $43
    rst $00                                       ; $4021: $c7
    and d                                         ; $4022: $a2
    ld e, l                                       ; $4023: $5d
    ld a, h                                       ; $4024: $7c
    ld [hl-], a                                   ; $4025: $32
    and l                                         ; $4026: $a5
    xor a                                         ; $4027: $af
    add hl, sp                                    ; $4028: $39
    inc b                                         ; $4029: $04
    ld c, a                                       ; $402a: $4f
    ld e, c                                       ; $402b: $59
    or $45                                        ; $402c: $f6 $45
    or $d7                                        ; $402e: $f6 $d7
    inc e                                         ; $4030: $1c
    rst $08                                       ; $4031: $cf
    adc a                                         ; $4032: $8f
    ld e, c                                       ; $4033: $59
    call z, $9f53                                 ; $4034: $cc $53 $9f
    add hl, de                                    ; $4037: $19
    xor [hl]                                      ; $4038: $ae
    db $db                                        ; $4039: $db
    or d                                          ; $403a: $b2
    db $e4                                        ; $403b: $e4
    or a                                          ; $403c: $b7
    xor c                                         ; $403d: $a9
    or a                                          ; $403e: $b7
    ld [hl], h                                    ; $403f: $74
    ei                                            ; $4040: $fb
    ei                                            ; $4041: $fb
    jp z, $9fc2                                   ; $4042: $ca $c2 $9f

    cp $c7                                        ; $4045: $fe $c7
    push bc                                       ; $4047: $c5
    ld c, e                                       ; $4048: $4b
    xor h                                         ; $4049: $ac
    add [hl]                                      ; $404a: $86
    ld e, a                                       ; $404b: $5f
    ld hl, sp-$26                                 ; $404c: $f8 $da
    push hl                                       ; $404e: $e5
    or b                                          ; $404f: $b0
    inc e                                         ; $4050: $1c
    ld c, $b5                                     ; $4051: $0e $b5
    sub e                                         ; $4053: $93
    adc e                                         ; $4054: $8b
    ld e, l                                       ; $4055: $5d
    inc c                                         ; $4056: $0c
    rlca                                          ; $4057: $07
    ldh a, [$0d]                                  ; $4058: $f0 $0d
    ld e, e                                       ; $405a: $5b
    ld c, l                                       ; $405b: $4d
    add hl, sp                                    ; $405c: $39
    xor h                                         ; $405d: $ac
    add hl, sp                                    ; $405e: $39
    sbc [hl]                                      ; $405f: $9e
    rra                                           ; $4060: $1f
    or e                                          ; $4061: $b3
    sbc b                                         ; $4062: $98
    sub a                                         ; $4063: $97
    jp Jump_055_799a                              ; $4064: $c3 $9a $79


    and c                                         ; $4067: $a1
    ld h, e                                       ; $4068: $63
    sub c                                         ; $4069: $91
    adc h                                         ; $406a: $8c
    ld [hl], a                                    ; $406b: $77
    ld h, d                                       ; $406c: $62
    ld l, [hl]                                    ; $406d: $6e
    sub [hl]                                      ; $406e: $96
    sbc c                                         ; $406f: $99
    reti                                          ; $4070: $d9


    dec [hl]                                      ; $4071: $35
    cp l                                          ; $4072: $bd
    ret c                                         ; $4073: $d8

    dec b                                         ; $4074: $05
    rst $10                                       ; $4075: $d7
    sbc e                                         ; $4076: $9b
    jp c, $d18f                                   ; $4077: $da $8f $d1

    ei                                            ; $407a: $fb
    ld [hl+], a                                   ; $407b: $22
    ei                                            ; $407c: $fb
    ld d, e                                       ; $407d: $53
    sub [hl]                                      ; $407e: $96
    pop de                                        ; $407f: $d1
    cp c                                          ; $4080: $b9
    jp nc, Jump_055_62ba                          ; $4081: $d2 $ba $62

    rst $28                                       ; $4084: $ef
    call nz, Call_000_2c1c                        ; $4085: $c4 $1c $2c
    ld [hl], b                                    ; $4088: $70
    ld [hl], a                                    ; $4089: $77
    ld h, [hl]                                    ; $408a: $66
    cp h                                          ; $408b: $bc
    rra                                           ; $408c: $1f
    and e                                         ; $408d: $a3
    rst $00                                       ; $408e: $c7
    cp a                                          ; $408f: $bf
    and l                                         ; $4090: $a5
    ld e, a                                       ; $4091: $5f
    db $f4                                        ; $4092: $f4
    add sp, -$52                                  ; $4093: $e8 $ae
    sbc d                                         ; $4095: $9a
    jp nc, $bc47                                  ; $4096: $d2 $47 $bc

    jp c, $b879                                   ; $4099: $da $79 $b8

    sbc c                                         ; $409c: $99
    rst $30                                       ; $409d: $f7
    ld e, d                                       ; $409e: $5a
    di                                            ; $409f: $f3
    sub h                                         ; $40a0: $94
    ld [hl], a                                    ; $40a1: $77
    inc e                                         ; $40a2: $1c
    rst $08                                       ; $40a3: $cf
    db $f4                                        ; $40a4: $f4
    ld h, d                                       ; $40a5: $62
    adc e                                         ; $40a6: $8b
    ld [hl], a                                    ; $40a7: $77
    ld [hl-], a                                   ; $40a8: $32
    sbc [hl]                                      ; $40a9: $9e
    ld l, e                                       ; $40aa: $6b
    inc h                                         ; $40ab: $24
    dec [hl]                                      ; $40ac: $35
    cp l                                          ; $40ad: $bd
    ret c                                         ; $40ae: $d8

    db $ed                                        ; $40af: $ed
    rra                                           ; $40b0: $1f
    or [hl]                                       ; $40b1: $b6
    ld c, h                                       ; $40b2: $4c
    jp hl                                         ; $40b3: $e9


    and e                                         ; $40b4: $a3
    ld a, a                                       ; $40b5: $7f
    adc h                                         ; $40b6: $8c
    ld a, e                                       ; $40b7: $7b
    ret                                           ; $40b8: $c9


    or b                                          ; $40b9: $b0
    inc bc                                        ; $40ba: $03
    ld b, h                                       ; $40bb: $44
    db $dd                                        ; $40bc: $dd
    ld a, [$93e2]                                 ; $40bd: $fa $e2 $93
    and l                                         ; $40c0: $a5
    db $db                                        ; $40c1: $db
    rra                                           ; $40c2: $1f
    or [hl]                                       ; $40c3: $b6
    ld a, [de]                                    ; $40c4: $1a
    halt                                          ; $40c5: $76
    jr @-$6d                                      ; $40c6: $18 $91

    db $fc                                        ; $40c8: $fc
    inc sp                                        ; $40c9: $33
    and l                                         ; $40ca: $a5
    cpl                                           ; $40cb: $2f
    ld sp, hl                                     ; $40cc: $f9
    dec c                                         ; $40cd: $0d
    xor [hl]                                      ; $40ce: $ae
    adc a                                         ; $40cf: $8f
    jp $93e2                                      ; $40d0: $c3 $e2 $93


    add hl, hl                                    ; $40d3: $29
    adc a                                         ; $40d4: $8f
    ld l, [hl]                                    ; $40d5: $6e
    ld a, $ec                                     ; $40d6: $3e $ec
    jp hl                                         ; $40d8: $e9


    push bc                                       ; $40d9: $c5
    ld d, $ef                                     ; $40da: $16 $ef
    dec [hl]                                      ; $40dc: $35
    add [hl]                                      ; $40dd: $86
    ld [$f8f7], sp                                ; $40de: $08 $f7 $f8
    ld l, e                                       ; $40e1: $6b
    and a                                         ; $40e2: $a7
    call z, Call_055_4d73                         ; $40e3: $cc $73 $4d
    ld [hl], d                                    ; $40e6: $72
    ld e, h                                       ; $40e7: $5c
    jp c, $d787                                   ; $40e8: $da $87 $d7

    ld [hl], c                                    ; $40eb: $71
    ld e, b                                       ; $40ec: $58
    db $eb                                        ; $40ed: $eb
    xor e                                         ; $40ee: $ab
    ld e, h                                       ; $40ef: $5c
    ld d, e                                       ; $40f0: $53
    and $1d                                       ; $40f1: $e6 $1d
    or a                                          ; $40f3: $b7
    inc b                                         ; $40f4: $04
    ld [hl+], a                                   ; $40f5: $22
    ld [hl], a                                    ; $40f6: $77
    call nz, $f1e8                                ; $40f7: $c4 $e8 $f1
    sbc e                                         ; $40fa: $9b
    ld h, h                                       ; $40fb: $64
    srl b                                         ; $40fc: $cb $38
    sub a                                         ; $40fe: $97
    cp b                                          ; $40ff: $b8
    ld h, $54                                     ; $4100: $26 $54
    ld l, d                                       ; $4102: $6a
    inc b                                         ; $4103: $04
    add hl, hl                                    ; $4104: $29
    add hl, de                                    ; $4105: $19
    ld c, a                                       ; $4106: $4f
    jp hl                                         ; $4107: $e9


    ld c, e                                       ; $4108: $4b
    ld a, [hl]                                    ; $4109: $7e
    add e                                         ; $410a: $83
    ld [$ae29], sp                                ; $410b: $08 $29 $ae
    add hl, hl                                    ; $410e: $29
    add a                                         ; $410f: $87
    dec e                                         ; $4110: $1d
    adc e                                         ; $4111: $8b
    set 3, d                                      ; $4112: $cb $da
    push af                                       ; $4114: $f5
    cp h                                          ; $4115: $bc
    ld a, [hl+]                                   ; $4116: $2a
    dec c                                         ; $4117: $0d
    ld b, h                                       ; $4118: $44
    db $dd                                        ; $4119: $dd
    ld a, [$b530]                                 ; $411a: $fa $30 $b5
    ld b, b                                       ; $411d: $40
    ld c, l                                       ; $411e: $4d
    ld h, a                                       ; $411f: $67
    dec bc                                        ; $4120: $0b
    sbc l                                         ; $4121: $9d
    ld l, e                                       ; $4122: $6b
    add hl, sp                                    ; $4123: $39
    xor h                                         ; $4124: $ac
    sbc c                                         ; $4125: $99
    xor l                                         ; $4126: $ad
    ld e, l                                       ; $4127: $5d
    rst $08                                       ; $4128: $cf
    xor e                                         ; $4129: $ab
    jp nc, Jump_000_0440                          ; $412a: $d2 $40 $04

    db $dd                                        ; $412d: $dd
    and $b9                                       ; $412e: $e6 $b9
    or $25                                        ; $4130: $f6 $25
    ld e, b                                       ; $4132: $58
    and [hl]                                      ; $4133: $a6
    rla                                           ; $4134: $17
    cp e                                          ; $4135: $bb
    ld b, [hl]                                    ; $4136: $46
    cp b                                          ; $4137: $b8
    or $45                                        ; $4138: $f6 $45
    xor h                                         ; $413a: $ac
    ld e, l                                       ; $413b: $5d
    rst $08                                       ; $413c: $cf
    xor e                                         ; $413d: $ab
    jp nc, Jump_000_0440                          ; $413e: $d2 $40 $04

    db $dd                                        ; $4141: $dd
    ld h, [hl]                                    ; $4142: $66
    or $4e                                        ; $4143: $f6 $4e
    ld a, h                                       ; $4145: $7c
    ld l, l                                       ; $4146: $6d
    db $ed                                        ; $4147: $ed
    rst $00                                       ; $4148: $c7
    sub e                                         ; $4149: $93
    pop af                                        ; $414a: $f1
    sub d                                         ; $414b: $92
    cp [hl]                                       ; $414c: $be
    jp z, $4cb3                                   ; $414d: $ca $b3 $4c

    ld h, a                                       ; $4150: $67
    adc e                                         ; $4151: $8b
    ld [$93aa], a                                 ; $4152: $ea $aa $93
    ld c, c                                       ; $4155: $49
    ld [hl-], a                                   ; $4156: $32
    cp h                                          ; $4157: $bc
    call nz, $f5da                                ; $4158: $c4 $da $f5
    cp h                                          ; $415b: $bc
    ld a, [hl+]                                   ; $415c: $2a

jr_055_415d:
    dec c                                         ; $415d: $0d
    ld b, h                                       ; $415e: $44
    add b                                         ; $415f: $80
    call $fa53                                    ; $4160: $cd $53 $fa
    ld [hl-], a                                   ; $4163: $32
    sbc [hl]                                      ; $4164: $9e
    ld h, h                                       ; $4165: $64
    cpl                                           ; $4166: $2f
    ld h, h                                       ; $4167: $64
    push bc                                       ; $4168: $c5
    dec sp                                        ; $4169: $3b
    ld l, h                                       ; $416a: $6c
    dec [hl]                                      ; $416b: $35
    ld l, d                                       ; $416c: $6a
    db $f4                                        ; $416d: $f4
    rla                                           ; $416e: $17
    pop af                                        ; $416f: $f1
    db $f4                                        ; $4170: $f4
    ld h, d                                       ; $4171: $62
    rst $10                                       ; $4172: $d7
    cp $4e                                        ; $4173: $fe $4e
    call z, $e4cd                                 ; $4175: $cc $cd $e4
    xor e                                         ; $4178: $ab
    ld l, b                                       ; $4179: $68
    jp hl                                         ; $417a: $e9


    add l                                         ; $417b: $85
    nop                                           ; $417c: $00
    add hl, hl                                    ; $417d: $29
    ld e, [hl]                                    ; $417e: $5e
    ret z                                         ; $417f: $c8

    adc d                                         ; $4180: $8a
    ld h, a                                       ; $4181: $67
    ld h, [hl]                                    ; $4182: $66
    rst $10                                       ; $4183: $d7
    db $f4                                        ; $4184: $f4
    db $e4                                        ; $4185: $e4
    ld c, c                                       ; $4186: $49
    ei                                            ; $4187: $fb
    pop bc                                        ; $4188: $c1
    dec bc                                        ; $4189: $0b
    push hl                                       ; $418a: $e5
    ld [hl], e                                    ; $418b: $73
    ld e, b                                       ; $418c: $58
    ccf                                           ; $418d: $3f
    db $ec                                        ; $418e: $ec
    add d                                         ; $418f: $82
    db $eb                                        ; $4190: $eb
    or $92                                        ; $4191: $f6 $92
    ld e, a                                       ; $4193: $5f
    pop de                                        ; $4194: $d1
    dec [hl]                                      ; $4195: $35
    pop af                                        ; $4196: $f1
    ld h, c                                       ; $4197: $61
    bit 1, [hl]                                   ; $4198: $cb $4e
    add $c3                                       ; $419a: $c6 $c3
    cpl                                           ; $419c: $2f
    adc b                                         ; $419d: $88
    reti                                          ; $419e: $d9


    dec [hl]                                      ; $419f: $35
    sub d                                         ; $41a0: $92
    sbc d                                         ; $41a1: $9a
    ld e, [hl]                                    ; $41a2: $5e
    db $ec                                        ; $41a3: $ec
    ld e, d                                       ; $41a4: $5a
    ld c, $7b                                     ; $41a5: $0e $7b
    and d                                         ; $41a7: $a2
    jp z, $fb73                                   ; $41a8: $ca $73 $fb

    pop af                                        ; $41ab: $f1
    db $fc                                        ; $41ac: $fc
    cp d                                          ; $41ad: $ba
    db $e4                                        ; $41ae: $e4
    ld c, e                                       ; $41af: $4b
    jr z, jr_055_415d                             ; $41b0: $28 $ab

    ld l, a                                       ; $41b2: $6f
    add hl, sp                                    ; $41b3: $39
    ld l, $88                                     ; $41b4: $2e $88
    nop                                           ; $41b6: $00
    rst $30                                       ; $41b7: $f7
    cp l                                          ; $41b8: $bd
    ld [hl], e                                    ; $41b9: $73
    ld b, [hl]                                    ; $41ba: $46
    ld d, d                                       ; $41bb: $52
    and e                                         ; $41bc: $a3
    ld b, [hl]                                    ; $41bd: $46
    cp h                                          ; $41be: $bc
    sub c                                         ; $41bf: $91
    call nc, $cb94                                ; $41c0: $d4 $94 $cb
    ld d, e                                       ; $41c3: $53
    push af                                       ; $41c4: $f5
    add d                                         ; $41c5: $82
    ld c, a                                       ; $41c6: $4f
    db $fc                                        ; $41c7: $fc
    ld [hl+], a                                   ; $41c8: $22
    add a                                         ; $41c9: $87
    ld a, b                                       ; $41ca: $78
    ld [hl], d                                    ; $41cb: $72
    and d                                         ; $41cc: $a2
    push bc                                       ; $41cd: $c5
    inc de                                        ; $41ce: $13
    xor d                                         ; $41cf: $aa
    and [hl]                                      ; $41d0: $a6
    ld e, h                                       ; $41d1: $5c
    ld e, $d9                                     ; $41d2: $1e $d9
    db $f4                                        ; $41d4: $f4
    jr jr_055_4234                                ; $41d5: $18 $5d

    ld d, e                                       ; $41d7: $53
    add $70                                       ; $41d8: $c6 $70
    rst $30                                       ; $41da: $f7
    ld h, h                                       ; $41db: $64
    set 6, h                                      ; $41dc: $cb $f4
    ld h, d                                       ; $41de: $62
    rst $10                                       ; $41df: $d7
    ld [c], a                                     ; $41e0: $e2
    sub e                                         ; $41e1: $93
    add l                                         ; $41e2: $85
    ld c, [hl]                                    ; $41e3: $4e
    ld d, a                                       ; $41e4: $57
    ld a, c                                       ; $41e5: $79
    db $ed                                        ; $41e6: $ed
    inc sp                                        ; $41e7: $33
    cpl                                           ; $41e8: $2f
    ret                                           ; $41e9: $c9


    and d                                         ; $41ea: $a2
    jr jr_055_420f                                ; $41eb: $18 $22

    cp l                                          ; $41ed: $bd
    dec [hl]                                      ; $41ee: $35
    and c                                         ; $41ef: $a1
    cp [hl]                                       ; $41f0: $be
    jp nc, $488e                                  ; $41f1: $d2 $8e $48

    ld [hl], d                                    ; $41f4: $72
    call Call_055_6535                            ; $41f5: $cd $35 $65
    ld e, [hl]                                    ; $41f8: $5e
    jp c, $bd87                                   ; $41f9: $da $87 $bd

    jp $e656                                      ; $41fc: $c3 $56 $e6


    db $fd                                        ; $41ff: $fd
    sub c                                         ; $4200: $91
    xor a                                         ; $4201: $af
    and d                                         ; $4202: $a2
    ld h, l                                       ; $4203: $65
    call nc, Call_000_2fe8                        ; $4204: $d4 $e8 $2f
    ld [c], a                                     ; $4207: $e2
    jp hl                                         ; $4208: $e9


    push bc                                       ; $4209: $c5
    xor [hl]                                      ; $420a: $ae
    ld e, [hl]                                    ; $420b: $5e
    ld [$de7d], sp                                ; $420c: $08 $7d $de

jr_055_420f:
    and c                                         ; $420f: $a1

Call_055_4210:
    or h                                          ; $4210: $b4
    db $d3                                        ; $4211: $d3
    reti                                          ; $4212: $d9


    bit 4, c                                      ; $4213: $cb $61
    or h                                          ; $4215: $b4
    and [hl]                                      ; $4216: $a6
    dec [hl]                                      ; $4217: $35
    rst $10                                       ; $4218: $d7
    ld [hl-], a                                   ; $4219: $32
    ld c, c                                       ; $421a: $49
    ld l, $93                                     ; $421b: $2e $93
    db $e4                                        ; $421d: $e4
    ld l, c                                       ; $421e: $69
    cpl                                           ; $421f: $2f
    sbc h                                         ; $4220: $9c
    ld [hl], h                                    ; $4221: $74
    adc [hl]                                      ; $4222: $8e
    xor a                                         ; $4223: $af
    rst $10                                       ; $4224: $d7
    xor $fc                                       ; $4225: $ee $fc
    ld sp, $ccce                                  ; $4227: $31 $ce $cc
    xor [hl]                                      ; $422a: $ae
    db $fd                                        ; $422b: $fd
    push de                                       ; $422c: $d5
    dec hl                                        ; $422d: $2b
    cpl                                           ; $422e: $2f
    call nc, $ac3b                                ; $422f: $d4 $3b $ac
    rra                                           ; $4232: $1f
    halt                                          ; $4233: $76

jr_055_4234:
    ld c, l                                       ; $4234: $4d
    cp c                                          ; $4235: $b9
    cp h                                          ; $4236: $bc
    db $e3                                        ; $4237: $e3
    ld a, [de]                                    ; $4238: $1a
    pop hl                                        ; $4239: $e1
    ld e, d                                       ; $423a: $5a
    ld c, $53                                     ; $423b: $0e $53
    ld l, $b8                                     ; $423d: $2e $b8
    ld a, $0e                                     ; $423f: $3e $0e
    dec sp                                        ; $4241: $3b
    call nc, Call_055_67da                        ; $4242: $d4 $da $67
    sbc $3b                                       ; $4245: $de $3b
    or c                                          ; $4247: $b1
    ld [hl-], a                                   ; $4248: $32
    rst $08                                       ; $4249: $cf
    cp h                                          ; $424a: $bc
    jp $da56                                      ; $424b: $c3 $56 $da


    ld h, c                                       ; $424e: $61
    res 2, h                                      ; $424f: $cb $94
    ld a, c                                       ; $4251: $79
    inc [hl]                                      ; $4252: $34
    ld d, l                                       ; $4253: $55
    ld d, e                                       ; $4254: $53
    push af                                       ; $4255: $f5
    add d                                         ; $4256: $82
    ld l, e                                       ; $4257: $6b
    db $fc                                        ; $4258: $fc
    db $db                                        ; $4259: $db
    xor b                                         ; $425a: $a8
    adc c                                         ; $425b: $89
    and $58                                       ; $425c: $e6 $58
    cp e                                          ; $425e: $bb
    ld b, e                                       ; $425f: $43
    xor l                                         ; $4260: $ad
    db $e3                                        ; $4261: $e3
    or b                                          ; $4262: $b0
    ld b, e                                       ; $4263: $43
    ld a, $a5                                     ; $4264: $3e $a5
    call c, $2cbf                                 ; $4266: $dc $bf $2c
    sub e                                         ; $4269: $93
    inc h                                         ; $426a: $24
    ld b, h                                       ; $426b: $44
    db $dd                                        ; $426c: $dd
    push af                                       ; $426d: $f5
    add d                                         ; $426e: $82
    push bc                                       ; $426f: $c5
    cp l                                          ; $4270: $bd
    db $10                                        ; $4271: $10
    rla                                           ; $4272: $17
    ld de, $c210                                  ; $4273: $11 $10 $c2
    sbc l                                         ; $4276: $9d
    or a                                          ; $4277: $b7
    adc [hl]                                      ; $4278: $8e
    jp $bd54                                      ; $4279: $c3 $54 $bd


    ldh [$ea], a                                  ; $427c: $e0 $ea
    or l                                          ; $427e: $b5
    ld a, $0e                                     ; $427f: $3e $0e
    jp $f616                                      ; $4281: $c3 $16 $f6


    jp nc, $c63f                                  ; $4284: $d2 $3f $c6

    adc $1b                                       ; $4287: $ce $1b
    cp $da                                        ; $4289: $fe $da
    push af                                       ; $428b: $f5

jr_055_428c:
    db $e4                                        ; $428c: $e4
    db $10                                        ; $428d: $10
    jr nz, @-$7a                                  ; $428e: $20 $84

    ld d, e                                       ; $4290: $53
    and $d1                                       ; $4291: $e6 $d1
    ld d, h                                       ; $4293: $54
    xor l                                         ; $4294: $ad
    daa                                           ; $4295: $27
    add a                                         ; $4296: $87

jr_055_4297:
    jr nc, jr_055_4297                            ; $4297: $30 $fe

    ld l, l                                       ; $4299: $6d
    call nc, Call_055_7344                        ; $429a: $d4 $44 $73
    inc c                                         ; $429d: $0c
    sub a                                         ; $429e: $97
    ld [c], a                                     ; $429f: $e2
    sbc d                                         ; $42a0: $9a
    ld [hl], d                                    ; $42a1: $72
    ret c                                         ; $42a2: $d8

    ld sp, hl                                     ; $42a3: $f9
    ld c, a                                       ; $42a4: $4f
    cp e                                          ; $42a5: $bb
    sbc [hl]                                      ; $42a6: $9e
    ld d, a                                       ; $42a7: $57
    and l                                         ; $42a8: $a5
    add c                                         ; $42a9: $81
    ld [$af3d], sp                                ; $42aa: $08 $3d $af
    or l                                          ; $42ad: $b5
    xor h                                         ; $42ae: $ac
    ld e, l                                       ; $42af: $5d
    rst $08                                       ; $42b0: $cf
    xor e                                         ; $42b1: $ab
    jp nc, $4768                                  ; $42b2: $d2 $68 $47

    inc h                                         ; $42b5: $24
    ld l, a                                       ; $42b6: $6f
    call nz, Call_000_29ab                        ; $42b7: $c4 $ab $29
    ld a, l                                       ; $42ba: $7d
    jp z, Jump_000_0bd5                           ; $42bb: $ca $d5 $0b

    ld bc, $c9b7                                  ; $42be: $01 $b7 $c9
    ld [hl-], a                                   ; $42c1: $32
    ld c, c                                       ; $42c2: $49
    sbc [hl]                                      ; $42c3: $9e
    or $c2                                        ; $42c4: $f6 $c2
    ld c, c                                       ; $42c6: $49
    rst $20                                       ; $42c7: $e7
    cp b                                          ; $42c8: $b8
    sbc h                                         ; $42c9: $9c
    cp b                                          ; $42ca: $b8
    and [hl]                                      ; $42cb: $a6
    rla                                           ; $42cc: $17
    cp e                                          ; $42cd: $bb
    or h                                          ; $42ce: $b4
    db $e3                                        ; $42cf: $e3
    rst $18                                       ; $42d0: $df
    ld b, $a8                                     ; $42d1: $06 $a8
    jr c, jr_055_428c                             ; $42d3: $38 $b7

    inc e                                         ; $42d5: $1c
    cp [hl]                                       ; $42d6: $be
    dec b                                         ; $42d7: $05
    ld [hl+], a                                   ; $42d8: $22
    scf                                           ; $42d9: $37
    inc de                                        ; $42da: $13
    jp c, $6a1d                                   ; $42db: $da $1d $6a

    ld c, d                                       ; $42de: $4a
    sbc a                                         ; $42df: $9f
    ld l, e                                       ; $42e0: $6b
    inc h                                         ; $42e1: $24
    or l                                          ; $42e2: $b5
    ld h, [hl]                                    ; $42e3: $66
    cp $12                                        ; $42e4: $fe $12
    ld h, [hl]                                    ; $42e6: $66
    ld h, [hl]                                    ; $42e7: $66
    rst $10                                       ; $42e8: $d7
    db $f4                                        ; $42e9: $f4
    ld h, d                                       ; $42ea: $62
    rla                                           ; $42eb: $17
    call c, Call_000_3e2d                         ; $42ec: $dc $2d $3e
    inc a                                         ; $42ef: $3c
    and l                                         ; $42f0: $a5
    adc a                                         ; $42f1: $8f
    ret z                                         ; $42f2: $c8

    ld c, l                                       ; $42f3: $4d

Jump_055_42f4:
    cp c                                          ; $42f4: $b9
    and [hl]                                      ; $42f5: $a6
    inc e                                         ; $42f6: $1c
    and [hl]                                      ; $42f7: $a6
    or e                                          ; $42f8: $b3
    ld b, l                                       ; $42f9: $45
    ld [hl], l                                    ; $42fa: $75
    push de                                       ; $42fb: $d5
    sbc c                                         ; $42fc: $99
    ld a, d                                       ; $42fd: $7a
    jp c, $c911                                   ; $42fe: $da $11 $c9

    ccf                                           ; $4301: $3f
    ld a, e                                       ; $4302: $7b
    adc l                                         ; $4303: $8d
    ld [hl], a                                    ; $4304: $77
    ld [c], a                                     ; $4305: $e2
    ld l, e                                       ; $4306: $6b
    dec bc                                        ; $4307: $0b
    call nc, Call_055_47ea                        ; $4308: $d4 $ea $47
    cp $61                                        ; $430b: $fe $61
    ld [hl], h                                    ; $430d: $74
    xor [hl]                                      ; $430e: $ae
    dec e                                         ; $430f: $1d
    rlca                                          ; $4310: $07
    adc b                                         ; $4311: $88
    nop                                           ; $4312: $00
    ld a, l                                       ; $4313: $7d
    inc e                                         ; $4314: $1c
    sub [hl]                                      ; $4315: $96
    ld e, b                                       ; $4316: $58
    add hl, hl                                    ; $4317: $29
    rst $10                                       ; $4318: $d7
    ld c, b                                       ; $4319: $48
    ld l, d                                       ; $431a: $6a
    adc a                                         ; $431b: $8f
    and a                                         ; $431c: $a7
    call z, $b9ec                                 ; $431d: $cc $ec $b9
    ld h, [hl]                                    ; $4320: $66
    sbc c                                         ; $4321: $99
    ld e, [hl]                                    ; $4322: $5e
    inc c                                         ; $4323: $0c
    ld de, $1c7d                                  ; $4324: $11 $7d $1c
    ld b, [hl]                                    ; $4327: $46
    inc a                                         ; $4328: $3c
    and l                                         ; $4329: $a5
    cp h                                          ; $432a: $bc
    ld [hl-], a                                   ; $432b: $32
    inc sp                                        ; $432c: $33
    add h                                         ; $432d: $84
    ld d, b                                       ; $432e: $50
    sbc c                                         ; $432f: $99
    rst $20                                       ; $4330: $e7
    jp c, Jump_055_5ce1                           ; $4331: $da $e1 $5c

    ld b, h                                       ; $4334: $44
    rst $00                                       ; $4335: $c7
    dec c                                         ; $4336: $0d
    ld b, e                                       ; $4337: $43
    inc b                                         ; $4338: $04
    ld a, l                                       ; $4339: $7d
    inc e                                         ; $433a: $1c
    sub $f4                                       ; $433b: $d6 $f4
    ld [hl], d                                    ; $433d: $72
    adc l                                         ; $433e: $8d
    and h                                         ; $433f: $a4
    ld b, [hl]                                    ; $4340: $46
    inc h                                         ; $4341: $24
    ld l, a                                       ; $4342: $6f
    sbc c                                         ; $4343: $99
    inc h                                         ; $4344: $24
    ld c, a                                       ; $4345: $4f
    ld a, e                                       ; $4346: $7b
    pop hl                                        ; $4347: $e1
    and h                                         ; $4348: $a4
    ld [hl], e                                    ; $4349: $73
    ld a, h                                       ; $434a: $7c
    inc hl                                        ; $434b: $23
    ld e, [hl]                                    ; $434c: $5e
    adc l                                         ; $434d: $8d
    ld a, [de]                                    ; $434e: $1a
    sbc l                                         ; $434f: $9d
    adc e                                         ; $4350: $8b
    db $dd                                        ; $4351: $dd
    sbc d                                         ; $4352: $9a
    sub a                                         ; $4353: $97
    pop af                                        ; $4354: $f1
    sub h                                         ; $4355: $94
    ld b, l                                       ; $4356: $45
    inc c                                         ; $4357: $0c
    ld de, $eb37                                  ; $4358: $11 $37 $eb
    xor c                                         ; $435b: $a9
    rst $10                                       ; $435c: $d7
    ld l, l                                       ; $435d: $6d
    ld e, c                                       ; $435e: $59
    cp d                                          ; $435f: $ba
    inc l                                         ; $4360: $2c
    db $ec                                        ; $4361: $ec
    ld h, c                                       ; $4362: $61
    add a                                         ; $4363: $87
    call nc, $2908                                ; $4364: $d4 $08 $29
    call nc, $9994                                ; $4367: $d4 $94 $99
    dec a                                         ; $436a: $3d
    rst $10                                       ; $436b: $d7
    call nc, Call_055_7e67                        ; $436c: $d4 $67 $7e
    and d                                         ; $436f: $a2
    cp c                                          ; $4370: $b9
    add sp, $22                                   ; $4371: $e8 $22
    adc b                                         ; $4373: $88
    nop                                           ; $4374: $00
    ld a, l                                       ; $4375: $7d
    inc e                                         ; $4376: $1c
    add $95                                       ; $4377: $c6 $95
    ld l, e                                       ; $4379: $6b
    dec e                                         ; $437a: $1d
    add a                                         ; $437b: $87
    xor c                                         ; $437c: $a9
    ld a, d                                       ; $437d: $7a
    or l                                          ; $437e: $b5
    ret c                                         ; $437f: $d8

    or c                                          ; $4380: $b1
    inc e                                         ; $4381: $1c
    or a                                          ; $4382: $b7
    sub c                                         ; $4383: $91
    call nc, Call_055_4594                        ; $4384: $d4 $94 $45
    inc c                                         ; $4387: $0c
    ld de, $eb37                                  ; $4388: $11 $37 $eb
    inc [hl]                                      ; $438b: $34
    xor l                                         ; $438c: $ad
    sbc l                                         ; $438d: $9d
    ld [hl-], a                                   ; $438e: $32
    rst $28                                       ; $438f: $ef
    inc h                                         ; $4390: $24
    ld d, [hl]                                    ; $4391: $56
    xor c                                         ; $4392: $a9
    ld de, $e6dd                                  ; $4393: $11 $dd $e6
    dec h                                         ; $4396: $25
    xor a                                         ; $4397: $af
    and [hl]                                      ; $4398: $a6
    call z, Call_000_38eb                         ; $4399: $cc $eb $38
    adc h                                         ; $439c: $8c
    dec hl                                        ; $439d: $2b
    dec hl                                        ; $439e: $2b
    ld h, l                                       ; $439f: $65
    ld [$c4e1], sp                                ; $43a0: $08 $e1 $c4
    and a                                         ; $43a3: $a7
    cp c                                          ; $43a4: $b9
    ldh [$7a], a                                  ; $43a5: $e0 $7a
    ld e, [hl]                                    ; $43a7: $5e
    or b                                          ; $43a8: $b0
    adc h                                         ; $43a9: $8c
    ld a, a                                       ; $43aa: $7f
    ld e, e                                       ; $43ab: $5b
    or a                                          ; $43ac: $b7
    adc [hl]                                      ; $43ad: $8e
    db $db                                        ; $43ae: $db
    sub a                                         ; $43af: $97
    ld h, b                                       ; $43b0: $60
    pop af                                        ; $43b1: $f1
    sub d                                         ; $43b2: $92
    ld d, a                                       ; $43b3: $57
    and e                                         ; $43b4: $a3
    push af                                       ; $43b5: $f5
    sub $f6                                       ; $43b6: $d6 $f6
    sub d                                         ; $43b8: $92
    dec e                                         ; $43b9: $1d
    ld c, d                                       ; $43ba: $4a
    call nz, $0110                                ; $43bb: $c4 $10 $01
    db $dd                                        ; $43be: $dd
    ld d, $f1                                     ; $43bf: $16 $f1
    adc [hl]                                      ; $43c1: $8e
    ld l, e                                       ; $43c2: $6b
    ret c                                         ; $43c3: $d8

    dec d                                         ; $43c4: $15
    db $dd                                        ; $43c5: $dd
    ld a, [hl]                                    ; $43c6: $7e
    sbc b                                         ; $43c7: $98
    adc $70                                       ; $43c8: $ce $70
    ld [hl], a                                    ; $43ca: $77
    jp hl                                         ; $43cb: $e9


    push hl                                       ; $43cc: $e5
    ld a, [de]                                    ; $43cd: $1a
    ld c, c                                       ; $43ce: $49
    adc l                                         ; $43cf: $8d
    ld c, b                                       ; $43d0: $48
    sbc $94                                       ; $43d1: $de $94
    ld a, c                                       ; $43d3: $79
    xor [hl]                                      ; $43d4: $ae
    pop de                                        ; $43d5: $d1
    cp c                                          ; $43d6: $b9
    ld h, [hl]                                    ; $43d7: $66
    add c                                         ; $43d8: $81
    ld [$d077], sp                                ; $43d9: $08 $77 $d0
    ld e, l                                       ; $43dc: $5d
    dec l                                         ; $43dd: $2d
    ld a, b                                       ; $43de: $78
    jp hl                                         ; $43df: $e9


    inc e                                         ; $43e0: $1c
    rst $18                                       ; $43e1: $df
    ld e, h                                       ; $43e2: $5c
    ld d, e                                       ; $43e3: $53
    and $bd                                       ; $43e4: $e6 $bd
    ld d, [hl]                                    ; $43e6: $56
    cp d                                          ; $43e7: $ba
    cp b                                          ; $43e8: $b8
    ld [hl-], a                                   ; $43e9: $32
    ld b, e                                       ; $43ea: $43
    inc b                                         ; $43eb: $04
    ld [hl], a                                    ; $43ec: $77
    jp hl                                         ; $43ed: $e9


    add a                                         ; $43ee: $87
    ld a, b                                       ; $43ef: $78
    call z, $f770                                 ; $43f0: $cc $70 $f7
    ld d, b                                       ; $43f3: $50
    inc hl                                        ; $43f4: $23
    ld e, [hl]                                    ; $43f5: $5e
    xor l                                         ; $43f6: $ad
    db $e3                                        ; $43f7: $e3
    or b                                          ; $43f8: $b0
    cp [hl]                                       ; $43f9: $be
    ld h, l                                       ; $43fa: $65
    db $fc                                        ; $43fb: $fc
    dec de                                        ; $43fc: $1b
    ld b, h                                       ; $43fd: $44
    ld [hl], a                                    ; $43fe: $77
    cp a                                          ; $43ff: $bf
    and [hl]                                      ; $4400: $a6
    rla                                           ; $4401: $17
    jp $fddd                                      ; $4402: $c3 $dd $fd


    jp c, Jump_055_592e                           ; $4405: $da $2e $59

    ld d, $b5                                     ; $4408: $16 $b5
    ld c, e                                       ; $440a: $4b
    and [hl]                                      ; $440b: $a6
    call z, $5e4b                                 ; $440c: $cc $4b $5e

Call_055_440f:
    call $13bc                                    ; $440f: $cd $bc $13
    ld [hl], l                                    ; $4412: $75
    adc h                                         ; $4413: $8c
    db $dd                                        ; $4414: $dd
    ld a, b                                       ; $4415: $78
    ld a, [c]                                     ; $4416: $f2
    ld [de], a                                    ; $4417: $12
    add c                                         ; $4418: $81
    ld [$66dd], sp                                ; $4419: $08 $dd $66
    or $30                                        ; $441c: $f6 $30
    or l                                          ; $441e: $b5
    inc e                                         ; $441f: $1c
    ld c, $b5                                     ; $4420: $0e $b5
    and h                                         ; $4422: $a4
    xor a                                         ; $4423: $af
    ld a, [c]                                     ; $4424: $f2
    inc l                                         ; $4425: $2c
    db $d3                                        ; $4426: $d3
    adc e                                         ; $4427: $8b
    ld hl, $2902                                  ; $4428: $21 $02 $29
    call nc, $1a84                                ; $442b: $d4 $84 $1a
    pop af                                        ; $442e: $f1
    ld l, d                                       ; $442f: $6a
    dec e                                         ; $4430: $1d
    add a                                         ; $4431: $87
    cp l                                          ; $4432: $bd
    ld b, e                                       ; $4433: $43
    ld h, a                                       ; $4434: $67
    push hl                                       ; $4435: $e5
    and [hl]                                      ; $4436: $a6
    sbc a                                         ; $4437: $9f
    jp z, Jump_000_1cbc                           ; $4438: $ca $bc $1c

    ld c, $05                                     ; $443b: $0e $05
    ld de, $fadd                                  ; $443d: $11 $dd $fa
    ld e, h                                       ; $4440: $5c
    dec sp                                        ; $4441: $3b
    call $fbcc                                    ; $4442: $cd $cc $fb
    ld sp, $b47a                                  ; $4445: $31 $7a $b4
    ld c, e                                       ; $4448: $4b
    db $fd                                        ; $4449: $fd
    and b                                         ; $444a: $a0
    ld e, l                                       ; $444b: $5d
    rst $08                                       ; $444c: $cf
    xor e                                         ; $444d: $ab
    jp nc, $01c0                                  ; $444e: $d2 $c0 $01

    ld [c], a                                     ; $4451: $e2
    db $fd                                        ; $4452: $fd
    ret nc                                        ; $4453: $d0

    or c                                          ; $4454: $b1
    inc c                                         ; $4455: $0c
    ld e, e                                       ; $4456: $5b
    ld c, l                                       ; $4457: $4d
    add hl, sp                                    ; $4458: $39
    ld b, b                                       ; $4459: $40
    inc b                                         ; $445a: $04
    db $dd                                        ; $445b: $dd
    ld d, h                                       ; $445c: $54
    or l                                          ; $445d: $b5
    rra                                           ; $445e: $1f
    or $2a                                        ; $445f: $f6 $2a
    db $ed                                        ; $4461: $ed
    xor a                                         ; $4462: $af
    or h                                          ; $4463: $b4
    cp e                                          ; $4464: $bb
    cpl                                           ; $4465: $2f
    inc sp                                        ; $4466: $33
    cp e                                          ; $4467: $bb
    ld d, d                                       ; $4468: $52
    rst $28                                       ; $4469: $ef
    cp [hl]                                       ; $446a: $be
    ld [$f64a], a                                 ; $446b: $ea $4a $f6
    ld b, e                                       ; $446e: $43
    rst $00                                       ; $446f: $c7
    ld [bc], a                                    ; $4470: $02
    ld de, $66dd                                  ; $4471: $11 $dd $66
    or $5c                                        ; $4474: $f6 $5c
    ld d, e                                       ; $4476: $53
    sub [hl]                                      ; $4477: $96
    ld [hl], c                                    ; $4478: $71
    ld e, c                                       ; $4479: $59
    ld [hl], l                                    ; $447a: $75
    cp h                                          ; $447b: $bc

Call_055_447c:
    ldh a, [rNR50]                                ; $447c: $f0 $24
    ld e, b                                       ; $447e: $58
    and [hl]                                      ; $447f: $a6
    db $f4                                        ; $4480: $f4
    ld de, $d6af                                  ; $4481: $11 $af $d6
    sbc h                                         ; $4484: $9c
    cp b                                          ; $4485: $b8
    ld a, b                                       ; $4486: $78
    ld e, a                                       ; $4487: $5f
    ld h, h                                       ; $4488: $64
    ld a, [hl-]                                   ; $4489: $3a
    db $ed                                        ; $448a: $ed
    ld d, d                                       ; $448b: $52
    ccf                                           ; $448c: $3f
    db $ec                                        ; $448d: $ec
    ld d, l                                       ; $448e: $55
    jp c, $c15f                                   ; $448f: $da $5f $c1

    push af                                       ; $4492: $f5
    ld [hl], c                                    ; $4493: $71
    ld e, b                                       ; $4494: $58
    ld a, [c]                                     ; $4495: $f2
    db $db                                        ; $4496: $db
    add sp, $5c                                   ; $4497: $e8 $5c
    ld a, h                                       ; $4499: $7c
    call z, Call_055_51ec                         ; $449a: $cc $ec $51
    db $e3                                        ; $449d: $e3
    or a                                          ; $449e: $b7
    sbc $f5                                       ; $449f: $de $f5
    ld l, c                                       ; $44a1: $69
    ld a, [$d84b]                                 ; $44a2: $fa $4b $d8
    push hl                                       ; $44a5: $e5
    inc hl                                        ; $44a6: $23
    or e                                          ; $44a7: $b3
    dec h                                         ; $44a8: $25
    db $ec                                        ; $44a9: $ec
    ld h, h                                       ; $44aa: $64
    cp h                                          ; $44ab: $bc
    jp $68f5                                      ; $44ac: $c3 $f5 $68


    ld a, d                                       ; $44af: $7a
    ld b, h                                       ; $44b0: $44
    ld [c], a                                     ; $44b1: $e2
    ld e, d                                       ; $44b2: $5a
    ld a, b                                       ; $44b3: $78
    ld [de], a                                    ; $44b4: $12
    and [hl]                                      ; $44b5: $a6
    db $f4                                        ; $44b6: $f4
    push bc                                       ; $44b7: $c5
    adc h                                         ; $44b8: $8c
    or c                                          ; $44b9: $b1
    ld l, e                                       ; $44ba: $6b
    db $fc                                        ; $44bb: $fc
    ld e, e                                       ; $44bc: $5b
    ld a, [$4f45]                                 ; $44bd: $fa $45 $4f
    ld h, a                                       ; $44c0: $67
    res 5, b                                      ; $44c1: $cb $a8
    ld de, $b46f                                  ; $44c3: $11 $6f $b4
    sbc $1a                                       ; $44c6: $de $1a
    db $dd                                        ; $44c8: $dd
    ld d, l                                       ; $44c9: $55
    cp h                                          ; $44ca: $bc
    ld c, h                                       ; $44cb: $4c
    sub d                                         ; $44cc: $92
    pop hl                                        ; $44cd: $e1
    dec h                                         ; $44ce: $25
    ld d, $88                                     ; $44cf: $16 $88
    nop                                           ; $44d1: $00
    cp l                                          ; $44d2: $bd
    db $db                                        ; $44d3: $db
    rst $00                                       ; $44d4: $c7
    ld h, l                                       ; $44d5: $65
    ld d, c                                       ; $44d6: $51
    sub $ae                                       ; $44d7: $d6 $ae
    rst $20                                       ; $44d9: $e7
    ld d, l                                       ; $44da: $55
    ld l, c                                       ; $44db: $69
    ldh [$ba], a                                  ; $44dc: $e0 $ba
    push af                                       ; $44de: $f5
    cp c                                          ; $44df: $b9
    and [hl]                                      ; $44e0: $a6
    inc l                                         ; $44e1: $2c
    and e                                         ; $44e2: $a3
    cp e                                          ; $44e3: $bb
    ld [$77b0], a                                 ; $44e4: $ea $b0 $77
    ld [hl-], a                                   ; $44e7: $32
    ld e, [hl]                                    ; $44e8: $5e
    call z, $bb18                                 ; $44e9: $cc $18 $bb
    add $bf                                       ; $44ec: $c6 $bf
    and l                                         ; $44ee: $a5
    ld e, a                                       ; $44ef: $5f
    db $f4                                        ; $44f0: $f4
    or b                                          ; $44f1: $b0
    push de                                       ; $44f2: $d5
    ld e, [hl]                                    ; $44f3: $5e
    ld l, e                                       ; $44f4: $6b
    sbc [hl]                                      ; $44f5: $9e
    ld e, [hl]                                    ; $44f6: $5e
    ld l, h                                       ; $44f7: $6c
    ld sp, $1ddc                                  ; $44f8: $31 $dc $1d
    inc hl                                        ; $44fb: $23
    set 7, b                                      ; $44fc: $cb $f8
    ld a, e                                       ; $44fe: $7b
    inc [hl]                                      ; $44ff: $34
    ld d, l                                       ; $4500: $55
    ld d, e                                       ; $4501: $53
    ld a, [$cf38]                                 ; $4502: $fa $38 $cf
    db $ed                                        ; $4505: $ed

jr_055_4506:
    rst $00                                       ; $4506: $c7
    di                                            ; $4507: $f3
    db $eb                                        ; $4508: $eb
    sub d                                         ; $4509: $92
    ld c, h                                       ; $450a: $4c
    sub d                                         ; $450b: $92
    daa                                           ; $450c: $27
    sub $a7                                       ; $450d: $d6 $a7
    reti                                          ; $450f: $d9


    dec b                                         ; $4510: $05
    rst $10                                       ; $4511: $d7
    sbc e                                         ; $4512: $9b
    ld a, [de]                                    ; $4513: $1a
    rst $38                                       ; $4514: $ff
    ld [hl], $b2                                  ; $4515: $36 $b2
    ld [hl-], a                                   ; $4517: $32
    db $ed                                        ; $4518: $ed
    ld [hl], e                                    ; $4519: $73
    ld [hl], d                                    ; $451a: $72
    dec l                                         ; $451b: $2d
    and l                                         ; $451c: $a5
    jp hl                                         ; $451d: $e9


    or l                                          ; $451e: $b5
    inc e                                         ; $451f: $1c
    halt                                          ; $4520: $76
    cp $1e                                        ; $4521: $fe $1e
    ld c, a                                       ; $4523: $4f
    jp hl                                         ; $4524: $e9


    adc e                                         ; $4525: $8b
    add hl, de                                    ; $4526: $19
    ld h, e                                       ; $4527: $63
    rst $10                                       ; $4528: $d7
    add sp, $7a                                   ; $4529: $e8 $7a
    jp Jump_000_100e                              ; $452b: $c3 $0e $10


    ld bc, $55f7                                  ; $452e: $01 $f7 $55
    and [hl]                                      ; $4531: $a6
    ld a, l                                       ; $4532: $7d
    ld c, [hl]                                    ; $4533: $4e
    xor [hl]                                      ; $4534: $ae
    and l                                         ; $4535: $a5
    inc [hl]                                      ; $4536: $34
    cp l                                          ; $4537: $bd
    ld a, d                                       ; $4538: $7a
    and l                                         ; $4539: $a5
    ld b, [hl]                                    ; $453a: $46
    dec a                                         ; $453b: $3d
    adc c                                         ; $453c: $89
    pop af                                        ; $453d: $f1
    call c, $eb9a                                 ; $453e: $dc $9a $eb
    db $ec                                        ; $4541: $ec
    ld b, h                                       ; $4542: $44
    cp l                                          ; $4543: $bd
    dec [hl]                                      ; $4544: $35
    xor a                                         ; $4545: $af
    push af                                       ; $4546: $f5
    ld d, l                                       ; $4547: $55
    sbc [hl]                                      ; $4548: $9e
    ld [hl], d                                    ; $4549: $72
    sbc b                                         ; $454a: $98
    db $db                                        ; $454b: $db
    adc a                                         ; $454c: $8f
    rst $20                                       ; $454d: $e7
    rst $10                                       ; $454e: $d7
    dec h                                         ; $454f: $25
    sbc c                                         ; $4550: $99
    inc h                                         ; $4551: $24
    ld c, a                                       ; $4552: $4f
    xor h                                         ; $4553: $ac
    ld c, a                                       ; $4554: $4f
    or e                                          ; $4555: $b3
    xor e                                         ; $4556: $ab
    rst $10                                       ; $4557: $d7
    xor $a3                                       ; $4558: $ee $a3
    and [hl]                                      ; $455a: $a6
    inc l                                         ; $455b: $2c
    ld [c], a                                     ; $455c: $e2
    pop af                                        ; $455d: $f1
    ld d, a                                       ; $455e: $57
    ld l, a                                       ; $455f: $6f
    daa                                           ; $4560: $27
    ld [$79ad], a                                 ; $4561: $ea $ad $79
    call nz, $2593                                ; $4564: $c4 $93 $25
    ld a, l                                       ; $4567: $7d
    sub l                                         ; $4568: $95
    ld b, a                                       ; $4569: $47
    ld d, d                                       ; $456a: $52
    adc e                                         ; $456b: $8b
    ld e, c                                       ; $456c: $59
    jr c, jr_055_4506                             ; $456d: $38 $97

    ld a, c                                       ; $456f: $79
    rst $20                                       ; $4570: $e7
    inc sp                                        ; $4571: $33
    jp $9cdd                                      ; $4572: $c3 $dd $9c


    db $ec                                        ; $4575: $ec
    or b                                          ; $4576: $b0
    push de                                       ; $4577: $d5
    or b                                          ; $4578: $b0
    push de                                       ; $4579: $d5
    sub h                                         ; $457a: $94
    inc bc                                        ; $457b: $03
    ld b, h                                       ; $457c: $44
    dec a                                         ; $457d: $3d
    ret                                           ; $457e: $c9


    ld e, e                                       ; $457f: $5b
    ld a, [c]                                     ; $4580: $f2
    db $db                                        ; $4581: $db
    sub h                                         ; $4582: $94
    xor [hl]                                      ; $4583: $ae
    db $dd                                        ; $4584: $dd
    ld a, l                                       ; $4585: $7d
    sbc c                                         ; $4586: $99
    reti                                          ; $4587: $d9


    push de                                       ; $4588: $d5
    dec bc                                        ; $4589: $0b
    ld bc, $1c7d                                  ; $458a: $01 $7d $1c
    sub [hl]                                      ; $458d: $96

Jump_055_458e:
    ld l, [hl]                                    ; $458e: $6e
    ld e, $dd                                     ; $458f: $1e $dd
    ld d, l                                       ; $4591: $55
    add a                                         ; $4592: $87
    ld b, a                                       ; $4593: $47

Call_055_4594:
    cp e                                          ; $4594: $bb
    call nc, $c30f                                ; $4595: $d4 $0f $c3
    ld d, [hl]                                    ; $4598: $56
    inc bc                                        ; $4599: $03
    ld d, h                                       ; $459a: $54
    sbc h                                         ; $459b: $9c
    ld e, e                                       ; $459c: $5b
    ld c, $ff                                     ; $459d: $0e $ff
    sub d                                         ; $459f: $92
    ld c, h                                       ; $45a0: $4c
    sub d                                         ; $45a1: $92
    pop hl                                        ; $45a2: $e1
    dec h                                         ; $45a3: $25
    ld d, $ed                                     ; $45a4: $16 $ed
    ld c, $35                                     ; $45a6: $0e $35
    or d                                          ; $45a8: $b2
    ld [hl-], a                                   ; $45a9: $32
    db $ed                                        ; $45aa: $ed
    ld [hl], e                                    ; $45ab: $73
    ld [hl], d                                    ; $45ac: $72
    dec l                                         ; $45ad: $2d
    add l                                         ; $45ae: $85
    ld a, a                                       ; $45af: $7f
    ld l, h                                       ; $45b0: $6c
    ld e, a                                       ; $45b1: $5f
    jp nz, Jump_055_458e                          ; $45b2: $c2 $8e $45

    or c                                          ; $45b5: $b1
    add a                                         ; $45b6: $87
    dec e                                         ; $45b7: $1d
    ld b, [hl]                                    ; $45b8: $46
    ld a, h                                       ; $45b9: $7c
    ld e, $9d                                     ; $45ba: $1e $9d
    ld l, e                                       ; $45bc: $6b
    call nc, Call_055_6a68                        ; $45bd: $d4 $68 $6a
    ld h, h                                       ; $45c0: $64
    add hl, de                                    ; $45c1: $19
    ld a, a                                       ; $45c2: $7f
    adc e                                         ; $45c3: $8b
    halt                                          ; $45c4: $76
    daa                                           ; $45c5: $27

jr_055_45c6:
    db $e3                                        ; $45c6: $e3
    sbc l                                         ; $45c7: $9d
    xor b                                         ; $45c8: $a8
    or a                                          ; $45c9: $b7
    and $25                                       ; $45ca: $e6 $25
    ld a, l                                       ; $45cc: $7d
    sub l                                         ; $45cd: $95
    rst $00                                       ; $45ce: $c7
    ld a, c                                       ; $45cf: $79
    ld l, [hl]                                    ; $45d0: $6e
    ccf                                           ; $45d1: $3f
    sbc [hl]                                      ; $45d2: $9e
    ld e, a                                       ; $45d3: $5f
    sub a                                         ; $45d4: $97
    ld h, h                                       ; $45d5: $64
    sub d                                         ; $45d6: $92
    inc a                                         ; $45d7: $3c
    or c                                          ; $45d8: $b1
    ld a, $cd                                     ; $45d9: $3e $cd
    ld l, $88                                     ; $45db: $2e $88
    nop                                           ; $45dd: $00
    dec a                                         ; $45de: $3d
    cp d                                          ; $45df: $ba
    adc h                                         ; $45e0: $8c
    ld a, b                                       ; $45e1: $78
    or l                                          ; $45e2: $b5
    rst $10                                       ; $45e3: $d7
    ld a, [de]                                    ; $45e4: $1a
    ld a, a                                       ; $45e5: $7f
    or l                                          ; $45e6: $b5
    and h                                         ; $45e7: $a4
    xor a                                         ; $45e8: $af
    ld [c], a                                     ; $45e9: $e2
    cp l                                          ; $45ea: $bd
    add $74                                       ; $45eb: $c6 $74
    xor [hl]                                      ; $45ed: $ae
    dec e                                         ; $45ee: $1d
    ld a, [c]                                     ; $45ef: $f2
    adc c                                         ; $45f0: $89
    ld a, d                                       ; $45f1: $7a
    ld l, c                                       ; $45f2: $69
    scf                                           ; $45f3: $37
    cp b                                          ; $45f4: $b8
    sbc [hl]                                      ; $45f5: $9e
    call c, $e8d4                                 ; $45f6: $dc $d4 $e8
    ld a, d                                       ; $45f9: $7a
    ld a, b                                       ; $45fa: $78
    sbc c                                         ; $45fb: $99
    inc h                                         ; $45fc: $24
    ld c, a                                       ; $45fd: $4f
    ld a, e                                       ; $45fe: $7b
    pop hl                                        ; $45ff: $e1
    and h                                         ; $4600: $a4
    ld [hl], e                                    ; $4601: $73
    ld a, h                                       ; $4602: $7c
    jp c, $97dd                                   ; $4603: $da $dd $97

    sbc c                                         ; $4606: $99
    ld e, l                                       ; $4607: $5d
    db $10                                        ; $4608: $10
    ld bc, $aedd                                  ; $4609: $01 $dd $ae
    ld de, $a6af                                  ; $460c: $11 $af $a6
    db $f4                                        ; $460f: $f4
    ld h, l                                       ; $4610: $65
    sub d                                         ; $4611: $92
    inc a                                         ; $4612: $3c
    or c                                          ; $4613: $b1
    ld a, $cd                                     ; $4614: $3e $cd
    ld d, $4f                                     ; $4616: $16 $4f
    ld a, l                                       ; $4618: $7d
    or c                                          ; $4619: $b1
    halt                                          ; $461a: $76
    rst $30                                       ; $461b: $f7

Jump_055_461c:
    ld h, l                                       ; $461c: $65
    ld h, [hl]                                    ; $461d: $66
    rla                                           ; $461e: $17
    call c, Call_055_61bd                         ; $461f: $dc $bd $61
    ld sp, $29e3                                  ; $4622: $31 $e3 $29
    add a                                         ; $4625: $87
    dec e                                         ; $4626: $1d
    ld l, d                                       ; $4627: $6a
    ld a, [hl-]                                   ; $4628: $3a
    rst $28                                       ; $4629: $ef
    dec h                                         ; $462a: $25
    adc e                                         ; $462b: $8b
    ld e, c                                       ; $462c: $59
    jr c, jr_055_45c6                             ; $462d: $38 $97

    ld a, c                                       ; $462f: $79
    ld hl, sp+$33                                 ; $4630: $f8 $33
    ld b, e                                       ; $4632: $43
    inc b                                         ; $4633: $04
    ld a, l                                       ; $4634: $7d
    inc e                                         ; $4635: $1c
    ld b, [hl]                                    ; $4636: $46
    cp h                                          ; $4637: $bc
    ld a, [de]                                    ; $4638: $1a
    xor l                                         ; $4639: $ad
    adc e                                         ; $463a: $8b
    sbc b                                         ; $463b: $98
    rst $30                                       ; $463c: $f7
    ld e, d                                       ; $463d: $5a
    ld [hl], e                                    ; $463e: $73

Jump_055_463f:
    ld [$71f5], a                                 ; $463f: $ea $f5 $71
    sbc b                                         ; $4642: $98
    dec bc                                        ; $4643: $0b
    ld b, d                                       ; $4644: $42
    ld c, b                                       ; $4645: $48
    ld l, c                                       ; $4646: $69
    ld b, a                                       ; $4647: $47
    ld hl, sp+$6b                                 ; $4648: $f8 $6b
    rst $10                                       ; $464a: $d7
    di                                            ; $464b: $f3
    xor d                                         ; $464c: $aa
    inc [hl]                                      ; $464d: $34
    ld [hl], b                                    ; $464e: $70
    ld a, l                                       ; $464f: $7d
    inc e                                         ; $4650: $1c
    add $95                                       ; $4651: $c6 $95
    sub l                                         ; $4653: $95
    ld a, [c]                                     ; $4654: $f2
    ld a, [hl-]                                   ; $4655: $3a
    ld c, $4b                                     ; $4656: $0e $4b
    scf                                           ; $4658: $37
    ld c, a                                       ; $4659: $4f
    ld e, c                                       ; $465a: $59
    ld b, [hl]                                    ; $465b: $46
    ld [hl], a                                    ; $465c: $77
    push de                                       ; $465d: $d5
    ld h, c                                       ; $465e: $61
    rst $28                                       ; $465f: $ef
    ld h, h                                       ; $4660: $64
    cp h                                          ; $4661: $bc
    ld [hl], h                                    ; $4662: $74
    di                                            ; $4663: $f3
    ld l, b                                       ; $4664: $68
    sub a                                         ; $4665: $97
    ld a, [$2201]                                 ; $4666: $fa $01 $22
    rst $30                                       ; $4669: $f7
    ld hl, sp+$6b                                 ; $466a: $f8 $6b
    rst $10                                       ; $466c: $d7
    di                                            ; $466d: $f3
    xor d                                         ; $466e: $aa
    inc [hl]                                      ; $466f: $34
    ld c, e                                       ; $4670: $4b
    scf                                           ; $4671: $37
    adc a                                         ; $4672: $8f
    xor $aa                                       ; $4673: $ee $aa
    jp $61cb                                      ; $4675: $c3 $cb $61


    db $f4                                        ; $4678: $f4
    adc a                                         ; $4679: $8f
    ld [hl], c                                    ; $467a: $71
    sub [hl]                                      ; $467b: $96
    dec e                                         ; $467c: $1d
    jp nc, $bbe7                                  ; $467d: $d2 $e7 $bb

    or l                                          ; $4680: $b5
    sub c                                         ; $4681: $91
    ld h, l                                       ; $4682: $65
    db $fc                                        ; $4683: $fc
    dec c                                         ; $4684: $0d
    ld de, $53b7                                  ; $4685: $11 $b7 $53
    or l                                          ; $4688: $b5
    adc [hl]                                      ; $4689: $8e
    jp Jump_055_7b24                              ; $468a: $c3 $24 $7b


    ld [hl], h                                    ; $468d: $74
    xor [hl]                                      ; $468e: $ae
    dec a                                         ; $468f: $3d
    ld e, [hl]                                    ; $4690: $5e
    rst $00                                       ; $4691: $c7
    ld h, c                                       ; $4692: $61
    jp hl                                         ; $4693: $e9


    and $89                                       ; $4694: $e6 $89
    adc [hl]                                      ; $4696: $8e
    or c                                          ; $4697: $b1
    ld l, e                                       ; $4698: $6b
    sbc h                                         ; $4699: $9c
    ld a, e                                       ; $469a: $7b
    ld hl, $dd80                                  ; $469b: $21 $80 $dd
    or h                                          ; $469e: $b4
    dec sp                                        ; $469f: $3b
    ld e, a                                       ; $46a0: $5f

Jump_055_46a1:
    ld e, c                                       ; $46a1: $59
    and [hl]                                      ; $46a2: $a6
    db $f4                                        ; $46a3: $f4
    dec h                                         ; $46a4: $25
    and $1d                                       ; $46a5: $e6 $1d
    ld l, d                                       ; $46a7: $6a
    ld e, b                                       ; $46a8: $58
    db $e3                                        ; $46a9: $e3
    ld h, l                                       ; $46aa: $65
    inc a                                         ; $46ab: $3c
    ld b, b                                       ; $46ac: $40
    push bc                                       ; $46ad: $c5
    cp c                                          ; $46ae: $b9
    push hl                                       ; $46af: $e5
    ldh a, [$b5]                                  ; $46b0: $f0 $b5
    adc e                                         ; $46b2: $8b
    ld c, a                                       ; $46b3: $4f
    and [hl]                                      ; $46b4: $a6
    db $f4                                        ; $46b5: $f4
    sbc l                                         ; $46b6: $9d
    rra                                           ; $46b7: $1f
    and e                                         ; $46b8: $a3
    adc e                                         ; $46b9: $8b
    rla                                           ; $46ba: $17
    ld a, [hl-]                                   ; $46bb: $3a
    ld e, l                                       ; $46bc: $5d
    push hl                                       ; $46bd: $e5
    ld e, c                                       ; $46be: $59
    ld d, $da                                     ; $46bf: $16 $da
    rst $00                                       ; $46c1: $c7
    ld h, l                                       ; $46c2: $65
    ld d, c                                       ; $46c3: $51
    ld e, [hl]                                    ; $46c4: $5e
    daa                                           ; $46c5: $27
    and a                                         ; $46c6: $a7
    db $d3                                        ; $46c7: $d3
    jp $a356                                      ; $46c8: $c3 $56 $a3


    sub $f4                                       ; $46cb: $d6 $f4
    add sp, -$03                                  ; $46cd: $e8 $fd
    ld de, $582f                                  ; $46cf: $11 $2f $58
    ldh [$6e], a                                  ; $46d2: $e0 $6e
    ld l, c                                       ; $46d4: $69
    cp a                                          ; $46d5: $bf
    or $63                                        ; $46d6: $f6 $63
    db $f4                                        ; $46d8: $f4
    sub h                                         ; $46d9: $94
    ld a, c                                       ; $46da: $79
    and c                                         ; $46db: $a1
    ld c, e                                       ; $46dc: $4b
    db $d3                                        ; $46dd: $d3
    dec bc                                        ; $46de: $0b
    ld bc, $5b77                                  ; $46df: $01 $77 $5b
    jr nz, @-$7a                                  ; $46e2: $20 $84

    ld [$ebbd], sp                                ; $46e4: $08 $bd $eb
    or c                                          ; $46e7: $b1
    sbc $5c                                       ; $46e8: $de $5c
    ld l, $ed                                     ; $46ea: $2e $ed
    ld a, d                                       ; $46ec: $7a
    ld e, h                                       ; $46ed: $5c
    ld hl, sp-$75                                 ; $46ee: $f8 $8b
    ld hl, $7d02                                  ; $46f0: $21 $02 $7d
    inc e                                         ; $46f3: $1c
    ld b, [hl]                                    ; $46f4: $46
    ld d, b                                       ; $46f5: $50
    and h                                         ; $46f6: $a4
    ld l, e                                       ; $46f7: $6b
    dec e                                         ; $46f8: $1d
    add a                                         ; $46f9: $87
    db $fd                                        ; $46fa: $fd
    jr @+$3f                                      ; $46fb: $18 $3d

    rst $10                                       ; $46fd: $d7
    ld e, [hl]                                    ; $46fe: $5e
    ld l, e                                       ; $46ff: $6b
    xor [hl]                                      ; $4700: $ae
    ldh a, [rVBK]                                 ; $4701: $f0 $4f
    inc e                                         ; $4703: $1c
    adc $3c                                       ; $4704: $ce $3c
    ret                                           ; $4706: $c9


    sub [hl]                                      ; $4707: $96
    cp l                                          ; $4708: $bd
    ld h, h                                       ; $4709: $64
    ld [$e39f], a                                 ; $470a: $ea $9f $e3
    jp hl                                         ; $470d: $e9


    push bc                                       ; $470e: $c5
    ld d, $43                                     ; $470f: $16 $43
    inc b                                         ; $4711: $04
    dec a                                         ; $4712: $3d
    ret                                           ; $4713: $c9


    ld l, a                                       ; $4714: $6f
    pop de                                        ; $4715: $d1
    dec bc                                        ; $4716: $0b
    push hl                                       ; $4717: $e5
    ld [hl], e                                    ; $4718: $73
    ld e, b                                       ; $4719: $58
    ccf                                           ; $471a: $3f
    db $ec                                        ; $471b: $ec
    sbc d                                         ; $471c: $9a
    ld l, e                                       ; $471d: $6b
    jp z, $93bc                                   ; $471e: $ca $bc $93

    pop af                                        ; $4721: $f1
    ld e, h                                       ; $4722: $5c
    ld d, e                                       ; $4723: $53
    ld e, [hl]                                    ; $4724: $5e
    cp l                                          ; $4725: $bd
    ld [hl], d                                    ; $4726: $72
    cpl                                           ; $4727: $2f
    inc b                                         ; $4728: $04
    or a                                          ; $4729: $b7
    ld hl, sp-$50                                 ; $472a: $f8 $b0
    ld [hl], c                                    ; $472c: $71
    xor [hl]                                      ; $472d: $ae
    sub c                                         ; $472e: $91
    call Call_055_795f                            ; $472f: $cd $5f $79
    call nc, $3788                                ; $4732: $d4 $88 $37
    ret                                           ; $4735: $c9


    sub [hl]                                      ; $4736: $96
    dec e                                         ; $4737: $1d
    ld c, d                                       ; $4738: $4a
    call nz, $8bd3                                ; $4739: $c4 $d3 $8b
    ld e, l                                       ; $473c: $5d
    ei                                            ; $473d: $fb
    dec sp                                        ; $473e: $3b
    ld a, [hl-]                                   ; $473f: $3a

jr_055_4740:
    ld c, c                                       ; $4740: $49
    ld a, $88                                     ; $4741: $3e $88
    nop                                           ; $4743: $00
    ld a, l                                       ; $4744: $7d
    inc e                                         ; $4745: $1c
    add $95                                       ; $4746: $c6 $95
    ld l, e                                       ; $4748: $6b
    jp z, $d73c                                   ; $4749: $ca $3c $d7

    xor [hl]                                      ; $474c: $ae
    ld e, d                                       ; $474d: $5a
    jr z, @-$5f                                   ; $474e: $28 $9f

    jp Jump_055_61fa                              ; $4750: $c3 $fa $61


    rst $10                                       ; $4753: $d7
    ld c, [hl]                                    ; $4754: $4e
    add $fb                                       ; $4755: $c6 $fb
    ld [hl+], a                                   ; $4757: $22
    ld h, $72                                     ; $4758: $26 $72
    ld d, e                                       ; $475a: $53
    xor [hl]                                      ; $475b: $ae
    ld a, l                                       ; $475c: $7d
    add hl, bc                                    ; $475d: $09
    ld h, l                                       ; $475e: $65
    push af                                       ; $475f: $f5
    dec l                                         ; $4760: $2d
    rst $00                                       ; $4761: $c7
    and l                                         ; $4762: $a5
    dec e                                         ; $4763: $1d
    or [hl]                                       ; $4764: $b6
    xor h                                         ; $4765: $ac
    db $e3                                        ; $4766: $e3
    jr nc, jr_055_4740                            ; $4767: $30 $d7

    ld a, [hl]                                    ; $4769: $7e
    adc h                                         ; $476a: $8c
    sbc $f9                                       ; $476b: $de $f9
    ld sp, $20ba                                  ; $476d: $31 $ba $20
    ld [bc], a                                    ; $4770: $02
    ld a, l                                       ; $4771: $7d
    inc e                                         ; $4772: $1c
    sub [hl]                                      ; $4773: $96
    ld e, b                                       ; $4774: $58
    add hl, hl                                    ; $4775: $29
    rst $10                                       ; $4776: $d7
    ld c, b                                       ; $4777: $48
    ld l, d                                       ; $4778: $6a
    adc a                                         ; $4779: $8f
    and a                                         ; $477a: $a7
    call z, $724b                                 ; $477b: $cc $4b $72
    inc a                                         ; $477e: $3c
    xor [hl]                                      ; $477f: $ae
    jp hl                                         ; $4780: $e9


    push bc                                       ; $4781: $c5
    xor [hl]                                      ; $4782: $ae
    db $fd                                        ; $4783: $fd
    ld de, $582f                                  ; $4784: $11 $2f $58
    jr nz, @+$04                                  ; $4787: $20 $02

    dec a                                         ; $4789: $3d
    cp $da                                        ; $478a: $fe $da
    db $dd                                        ; $478c: $dd

Jump_055_478d:
    di                                            ; $478d: $f3
    sbc e                                         ; $478e: $9b
    ld a, [hl]                                    ; $478f: $7e
    jr nz, jr_055_4794                            ; $4790: $20 $02

    add hl, hl                                    ; $4792: $29
    sbc l                                         ; $4793: $9d

jr_055_4794:
    ld c, [hl]                                    ; $4794: $4e
    ld [$3cf5], a                                 ; $4795: $ea $f5 $3c
    reti                                          ; $4798: $d9


    ret                                           ; $4799: $c9


    adc c                                         ; $479a: $89
    dec bc                                        ; $479b: $0b
    ld [hl+], a                                   ; $479c: $22
    rst $30                                       ; $479d: $f7
    ld hl, sp+$6b                                 ; $479e: $f8 $6b
    and a                                         ; $47a0: $a7
    call z, $8d73                                 ; $47a1: $cc $73 $8d
    ld a, b                                       ; $47a4: $78

Jump_055_47a5:
    or d                                          ; $47a5: $b2
    rra                                           ; $47a6: $1f
    and e                                         ; $47a7: $a3
    pop hl                                        ; $47a8: $e1
    ld a, d                                       ; $47a9: $7a
    sbc [hl]                                      ; $47aa: $9e
    db $ec                                        ; $47ab: $ec
    jr nc, jr_055_4803                            ; $47ac: $30 $55

    ld d, e                                       ; $47ae: $53
    xor [hl]                                      ; $47af: $ae
    push hl                                       ; $47b0: $e5
    or b                                          ; $47b1: $b0
    db $e3                                        ; $47b2: $e3
    ld a, [de]                                    ; $47b3: $1a
    ld c, c                                       ; $47b4: $49
    dec c                                         ; $47b5: $0d
    dec sp                                        ; $47b6: $3b
    ld b, b                                       ; $47b7: $40
    inc b                                         ; $47b8: $04
    ld [hl], a                                    ; $47b9: $77
    call nz, $dde8                                ; $47ba: $c4 $e8 $dd
    di                                            ; $47bd: $f3
    sbc e                                         ; $47be: $9b
    ld a, [hl]                                    ; $47bf: $7e
    or h                                          ; $47c0: $b4
    inc hl                                        ; $47c1: $23
    dec hl                                        ; $47c2: $2b
    db $d3                                        ; $47c3: $d3
    ld a, $27                                     ; $47c4: $3e $27
    rst $10                                       ; $47c6: $d7
    xor $fc                                       ; $47c7: $ee $fc
    add a                                         ; $47c9: $87
    sbc l                                         ; $47ca: $9d
    ld a, [de]                                    ; $47cb: $1a
    ld bc, $c1c0                                  ; $47cc: $01 $c0 $c1
    add c                                         ; $47cf: $81
    inc bc                                        ; $47d0: $03
    rlca                                          ; $47d1: $07
    ld c, $1c                                     ; $47d2: $0e $1c
    jr c, jr_055_4846                             ; $47d4: $38 $70

    db $10                                        ; $47d6: $10
    ld b, d                                       ; $47d7: $42
    ld [$b711], sp                                ; $47d8: $08 $11 $b7
    add sp, -$5b                                  ; $47db: $e8 $a5
    cp h                                          ; $47dd: $bc
    db $e4                                        ; $47de: $e4
    rst $28                                       ; $47df: $ef
    rst $00                                       ; $47e0: $c7
    add sp, $25                                   ; $47e1: $e8 $25
    adc [hl]                                      ; $47e3: $8e
    pop de                                        ; $47e4: $d1
    inc hl                                        ; $47e5: $23
    ld e, $ee                                     ; $47e6: $1e $ee
    add l                                         ; $47e8: $85
    nop                                           ; $47e9: $00

Call_055_47ea:
    ld a, l                                       ; $47ea: $7d
    inc e                                         ; $47eb: $1c
    sub [hl]                                      ; $47ec: $96
    sbc b                                         ; $47ed: $98
    rst $30                                       ; $47ee: $f7
    ld h, e                                       ; $47ef: $63
    db $f4                                        ; $47f0: $f4
    ld [hl-], a                                   ; $47f1: $32
    sbc [hl]                                      ; $47f2: $9e
    jp nc, $e777                                  ; $47f3: $d2 $77 $e7

    call Call_000_2cf7                            ; $47f6: $cd $f7 $2c
    ld [hl], c                                    ; $47f9: $71
    adc h                                         ; $47fa: $8c
    sbc [hl]                                      ; $47fb: $9e
    ld a, c                                       ; $47fc: $79
    add a                                         ; $47fd: $87
    db $ec                                        ; $47fe: $ec
    adc d                                         ; $47ff: $8a
    ld l, [hl]                                    ; $4800: $6e
    rst $00                                       ; $4801: $c7
    ld [hl], b                                    ; $4802: $70

jr_055_4803:
    dec a                                         ; $4803: $3d
    ret                                           ; $4804: $c9


    ccf                                           ; $4805: $3f
    ld d, e                                       ; $4806: $53
    ld a, [$eac8]                                 ; $4807: $fa $c8 $ea
    ld c, d                                       ; $480a: $4a
    ld e, h                                       ; $480b: $5c
    and e                                         ; $480c: $a3
    ld d, [hl]                                    ; $480d: $56
    rst $38                                       ; $480e: $ff
    or b                                          ; $480f: $b0
    rst $30                                       ; $4810: $f7
    ld b, a                                       ; $4811: $47
    inc a                                         ; $4812: $3c
    xor h                                         ; $4813: $ac
    ld e, l                                       ; $4814: $5d
    and b                                         ; $4815: $a0
    ld l, d                                       ; $4816: $6a
    adc c                                         ; $4817: $89
    db $db                                        ; $4818: $db
    ld [$944a], sp                                ; $4819: $08 $4a $94
    ld h, l                                       ; $481c: $65
    ld h, l                                       ; $481d: $65
    and $fd                                       ; $481e: $e6 $fd
    ret nc                                        ; $4820: $d0

    or c                                          ; $4821: $b1
    ld c, b                                       ; $4822: $48
    add $10                                       ; $4823: $c6 $10
    ld bc, $c1c0                                  ; $4825: $01 $c0 $c1
    add c                                         ; $4828: $81
    inc bc                                        ; $4829: $03
    rlca                                          ; $482a: $07
    ld c, $1c                                     ; $482b: $0e $1c
    add h                                         ; $482d: $84
    db $10                                        ; $482e: $10
    ld b, d                                       ; $482f: $42
    sbc b                                         ; $4830: $98
    jp $9bd4                                      ; $4831: $c3 $d4 $9b


    ld [hl-], a                                   ; $4834: $32
    rst $28                                       ; $4835: $ef
    ld a, [c]                                     ; $4836: $f2
    ld l, e                                       ; $4837: $6b
    pop hl                                        ; $4838: $e1
    xor b                                         ; $4839: $a8
    ld [hl+], a                                   ; $483a: $22
    ld [hl], h                                    ; $483b: $74
    ld d, c                                       ; $483c: $51
    push hl                                       ; $483d: $e5
    add l                                         ; $483e: $85
    rra                                           ; $483f: $1f
    db $e3                                        ; $4840: $e3
    ld [hl], b                                    ; $4841: $70
    and $9d                                       ; $4842: $e6 $9d
    and [hl]                                      ; $4844: $a6
    inc sp                                        ; $4845: $33

jr_055_4846:
    ld e, e                                       ; $4846: $5b
    or h                                          ; $4847: $b4
    ld c, e                                       ; $4848: $4b
    ld e, [hl]                                    ; $4849: $5e
    ld c, l                                       ; $484a: $4d
    sbc c                                         ; $484b: $99
    rst $20                                       ; $484c: $e7
    ld h, b                                       ; $484d: $60
    pop hl                                        ; $484e: $e1
    or $c3                                        ; $484f: $f6 $c3
    ld [$5e37], sp                                ; $4851: $08 $37 $5e
    jr z, jr_055_48d5                             ; $4854: $28 $7f

    ld e, $9d                                     ; $4856: $1e $9d
    ld l, e                                       ; $4858: $6b
    ld sp, hl                                     ; $4859: $f9
    inc e                                         ; $485a: $1c
    ld [$cf61], sp                                ; $485b: $08 $61 $cf
    xor e                                         ; $485e: $ab
    jp nc, $beec                                  ; $485f: $d2 $ec $be

    call z, Call_055_4aec                         ; $4862: $cc $ec $4a
    cp l                                          ; $4865: $bd
    inc d                                         ; $4866: $14
    ld l, d                                       ; $4867: $6a
    add h                                         ; $4868: $84
    ld h, $04                                     ; $4869: $26 $04
    or a                                          ; $486b: $b7
    rra                                           ; $486c: $1f
    ld b, [hl]                                    ; $486d: $46
    adc l                                         ; $486e: $8d
    ld a, b                                       ; $486f: $78
    and e                                         ; $4870: $a3
    add hl, hl                                    ; $4871: $29
    and $29                                       ; $4872: $e6 $29
    add a                                         ; $4874: $87
    db $fd                                        ; $4875: $fd
    push bc                                       ; $4876: $c5
    or $ce                                        ; $4877: $f6 $ce
    or c                                          ; $4879: $b1
    inc l                                         ; $487a: $2c
    db $e3                                        ; $487b: $e3
    di                                            ; $487c: $f3
    sub l                                         ; $487d: $95

Jump_055_487e:
    dec bc                                        ; $487e: $0b
    xor [hl]                                      ; $487f: $ae
    adc a                                         ; $4880: $8f
    jp $fd08                                      ; $4881: $c3 $08 $fd


    ld b, h                                       ; $4884: $44
    rst $10                                       ; $4885: $d7
    ld b, d                                       ; $4886: $42
    ld d, [hl]                                    ; $4887: $56
    inc a                                         ; $4888: $3c
    ld a, [$6595]                                 ; $4889: $fa $95 $65
    ld [$440b], a                                 ; $488c: $ea $0b $44
    nop                                           ; $488f: $00
    ld e, a                                       ; $4890: $5f
    adc h                                         ; $4891: $8c
    jp c, $9591                                   ; $4892: $da $91 $95

    ld l, c                                       ; $4895: $69
    sbc a                                         ; $4896: $9f
    sub e                                         ; $4897: $93
    ld l, e                                       ; $4898: $6b
    ld [hl], a                                    ; $4899: $77
    cp $c3                                        ; $489a: $fe $c3
    add [hl]                                      ; $489c: $86
    ld [$0f29], sp                                ; $489d: $08 $29 $0f
    scf                                           ; $48a0: $37
    rst $10                                       ; $48a1: $d7
    sub h                                         ; $48a2: $94
    ld a, $92                                     ; $48a3: $3e $92
    jp c, $ae2d                                   ; $48a5: $da $2d $ae

    ld l, $cc                                     ; $48a8: $2e $cc
    ld e, $e1                                     ; $48aa: $1e $e1
    ld a, b                                       ; $48ac: $78
    ld e, h                                       ; $48ad: $5c
    bit 4, c                                      ; $48ae: $cb $61
    ld e, h                                       ; $48b0: $5c
    cp c                                          ; $48b1: $b9
    dec [hl]                                      ; $48b2: $35
    ld l, h                                       ; $48b3: $6c
    sub c                                         ; $48b4: $91
    ld c, e                                       ; $48b5: $4b
    ld h, d                                       ; $48b6: $62
    ld l, $d6                                     ; $48b7: $2e $d6
    xor [hl]                                      ; $48b9: $ae
    rst $20                                       ; $48ba: $e7
    ld d, l                                       ; $48bb: $55
    ld l, c                                       ; $48bc: $69
    ld a, d                                       ; $48bd: $7a
    xor l                                         ; $48be: $ad
    db $db                                        ; $48bf: $db
    cp h                                          ; $48c0: $bc
    ret nc                                        ; $48c1: $d0

    ret                                           ; $48c2: $c9


    and l                                         ; $48c3: $a5
    inc a                                         ; $48c4: $3c
    ld a, [$6595]                                 ; $48c5: $fa $95 $65
    ld [$5c0b], a                                 ; $48c8: $ea $0b $5c
    rra                                           ; $48cb: $1f
    add a                                         ; $48cc: $87
    add l                                         ; $48cd: $85
    scf                                           ; $48ce: $37
    ld [c], a                                     ; $48cf: $e2
    pop hl                                        ; $48d0: $e1
    sbc c                                         ; $48d1: $99
    rla                                           ; $48d2: $17
    ld [hl], e                                    ; $48d3: $73
    pop af                                        ; $48d4: $f1

jr_055_48d5:
    ld e, [hl]                                    ; $48d5: $5e
    or d                                          ; $48d6: $b2
    dec sp                                        ; $48d7: $3b
    ld a, a                                       ; $48d8: $7f

jr_055_48d9:
    ld b, l                                       ; $48d9: $45
    rst $08                                       ; $48da: $cf
    or d                                          ; $48db: $b2
    ldh a, [rNR50]                                ; $48dc: $f0 $24
    ret nz                                        ; $48de: $c0

    ld [hl], l                                    ; $48df: $75
    sbc e                                         ; $48e0: $9b
    ld [hl], a                                    ; $48e1: $77
    ld e, $b3                                     ; $48e2: $1e $b3
    ld b, a                                       ; $48e4: $47
    inc a                                         ; $48e5: $3c
    add hl, de                                    ; $48e6: $19
    halt                                          ; $48e7: $76
    jr nc, jr_055_48d9                            ; $48e8: $30 $ef

    ld [hl], b                                    ; $48ea: $70
    xor [hl]                                      ; $48eb: $ae
    sub c                                         ; $48ec: $91
    push af                                       ; $48ed: $f5
    rst $08                                       ; $48ee: $cf
    ld c, b                                       ; $48ef: $48
    ld a, [bc]                                    ; $48f0: $0a
    xor $2e                                       ; $48f1: $ee $2e
    cp l                                          ; $48f3: $bd
    ld e, h                                       ; $48f4: $5c
    inc hl                                        ; $48f5: $23
    xor c                                         ; $48f6: $a9
    ld de, $ae49                                  ; $48f7: $11 $49 $ae

jr_055_48fa:
    add hl, hl                                    ; $48fa: $29
    di                                            ; $48fb: $f3
    jp nc, Jump_055_7bcd                          ; $48fc: $d2 $cd $7b

    ret                                           ; $48ff: $c9


    sub h                                         ; $4900: $94
    add hl, de                                    ; $4901: $19
    ld b, d                                       ; $4902: $42
    adc b                                         ; $4903: $88
    nop                                           ; $4904: $00
    rst $30                                       ; $4905: $f7
    ld d, b                                       ; $4906: $50
    inc hl                                        ; $4907: $23
    db $f4                                        ; $4908: $f4
    inc de                                        ; $4909: $13
    ld e, l                                       ; $490a: $5d
    db $eb                                        ; $490b: $eb
    jr c, jr_055_48fa                             ; $490c: $38 $ec

    pop af                                        ; $490e: $f1
    inc h                                         ; $490f: $24
    ld e, e                                       ; $4910: $5b
    or $d7                                        ; $4911: $f6 $d7
    db $fd                                        ; $4913: $fd
    ld e, a                                       ; $4914: $5f
    ret z                                         ; $4915: $c8

    ld a, [c]                                     ; $4916: $f2
    ld e, d                                       ; $4917: $5a
    jp $f916                                      ; $4918: $c3 $16 $f9


    ld [de], a                                    ; $491b: $12
    inc l                                         ; $491c: $2c
    inc hl                                        ; $491d: $23
    xor e                                         ; $491e: $ab
    dec hl                                        ; $491f: $2b
    ld d, c                                       ; $4920: $51
    ld e, $b5                                     ; $4921: $1e $b5
    db $e3                                        ; $4923: $e3
    ld d, $3c                                     ; $4924: $16 $3c
    db $ec                                        ; $4926: $ec
    jr nc, jr_055_498e                            ; $4927: $30 $65

    ld e, [hl]                                    ; $4929: $5e
    call z, $66c5                                 ; $492a: $cc $c5 $66
    adc b                                         ; $492d: $88
    nop                                           ; $492e: $00
    rst $30                                       ; $492f: $f7
    ld hl, sp+$6b                                 ; $4930: $f8 $6b
    rst $10                                       ; $4932: $d7
    ld a, c                                       ; $4933: $79
    add a                                         ; $4934: $87
    ld [$6eb5], a                                 ; $4935: $ea $b5 $6e
    ld a, l                                       ; $4938: $7d
    daa                                           ; $4939: $27
    cp [hl]                                       ; $493a: $be
    or [hl]                                       ; $493b: $b6
    db $e3                                        ; $493c: $e3
    add hl, hl                                    ; $493d: $29
    di                                            ; $493e: $f3

jr_055_493f:
    sub d                                         ; $493f: $92
    ld d, a                                       ; $4940: $57
    ld d, e                                       ; $4941: $53
    and $9d                                       ; $4942: $e6 $9d
    add a                                         ; $4944: $87
    or c                                          ; $4945: $b1
    pop hl                                        ; $4946: $e1
    ld a, d                                       ; $4947: $7a
    sub d                                         ; $4948: $92
    ld a, a                                       ; $4949: $7f
    sub $71                                       ; $494a: $d6 $71
    jr jr_055_493f                                ; $494c: $18 $f1

    sub h                                         ; $494e: $94
    ld a, [c]                                     ; $494f: $f2
    adc [hl]                                      ; $4950: $8e
    sbc c                                         ; $4951: $99
    and a                                         ; $4952: $a7
    call z, $45da                                 ; $4953: $cc $da $45
    ld e, l                                       ; $4956: $5d
    call nz, Call_000_38eb                        ; $4957: $c4 $eb $38
    inc l                                         ; $495a: $2c
    jp hl                                         ; $495b: $e9


    xor e                                         ; $495c: $ab
    ld a, b                                       ; $495d: $78
    add h                                         ; $495e: $84
    dec de                                        ; $495f: $1b
    rst $28                                       ; $4960: $ef
    db $fc                                        ; $4961: $fc
    jr jr_055_49c1                                ; $4962: $18 $5d

    db $10                                        ; $4964: $10
    ld bc, $f129                                  ; $4965: $01 $29 $f1
    or l                                          ; $4968: $b5
    ld [hl], l                                    ; $4969: $75
    inc e                                         ; $496a: $1c
    ld b, [hl]                                    ; $496b: $46
    ld d, e                                       ; $496c: $53
    db $e3                                        ; $496d: $e3
    rla                                           ; $496e: $17
    rst $30                                       ; $496f: $f7
    and a                                         ; $4970: $a7
    call z, $10bd                                 ; $4971: $cc $bd $10
    cp l                                          ; $4974: $bd
    or e                                          ; $4975: $b3
    jp c, Jump_055_7d57                           ; $4976: $da $57 $7d

    jp $fe01                                      ; $4979: $c3 $01 $fe


    inc hl                                        ; $497c: $23
    ld e, [hl]                                    ; $497d: $5e
    xor l                                         ; $497e: $ad
    sub e                                         ; $497f: $93
    daa                                           ; $4980: $27
    reti                                          ; $4981: $d9


    ld [hl-], a                                   ; $4982: $32
    cp d                                          ; $4983: $ba
    cp [hl]                                       ; $4984: $be
    ld a, d                                       ; $4985: $7a
    pop bc                                        ; $4986: $c1
    dec [hl]                                      ; $4987: $35
    ld a, [hl-]                                   ; $4988: $3a
    rst $10                                       ; $4989: $d7
    sub e                                         ; $498a: $93
    push hl                                       ; $498b: $e5
    ld [hl], e                                    ; $498c: $73
    or h                                          ; $498d: $b4

jr_055_498e:
    dec sp                                        ; $498e: $3b
    call nc, $be94                                ; $498f: $d4 $94 $be
    ld hl, sp+$64                                 ; $4992: $f8 $64
    xor d                                         ; $4994: $aa
    sbc $f8                                       ; $4995: $de $f8
    or a                                          ; $4997: $b7
    ld [hl], l                                    ; $4998: $75
    rst $38                                       ; $4999: $ff
    rla                                           ; $499a: $17
    or d                                          ; $499b: $b2
    cp h                                          ; $499c: $bc
    sub $b0                                       ; $499d: $d6 $b0
    ld b, l                                       ; $499f: $45
    cp [hl]                                       ; $49a0: $be
    inc b                                         ; $49a1: $04
    dec bc                                        ; $49a2: $0b
    inc e                                         ; $49a3: $1c
    ldh [$7f], a                                  ; $49a4: $e0 $7f
    and [hl]                                      ; $49a6: $a6
    call z, $91ec                                 ; $49a7: $cc $ec $91
    rst $28                                       ; $49aa: $ef
    inc e                                         ; $49ab: $1c
    di                                            ; $49ac: $f3
    ld hl, sp-$49                                 ; $49ad: $f8 $b7
    push af                                       ; $49af: $f5
    sub $84                                       ; $49b0: $d6 $84
    ld a, [$bb4a]                                 ; $49b2: $fa $4a $bb
    ld b, e                                       ; $49b5: $43
    adc l                                         ; $49b6: $8d
    xor $6a                                       ; $49b7: $ee $6a
    pop bc                                        ; $49b9: $c1
    dec [hl]                                      ; $49ba: $35
    ld [c], a                                     ; $49bb: $e2
    ret                                           ; $49bc: $c9


    sub h                                         ; $49bd: $94
    jp $67d4                                      ; $49be: $c3 $d4 $67


jr_055_49c1:
    cp b                                          ; $49c1: $b8
    sbc [hl]                                      ; $49c2: $9e
    db $e4                                        ; $49c3: $e4
    dec l                                         ; $49c4: $2d
    ld a, c                                       ; $49c5: $79
    dec [hl]                                      ; $49c6: $35
    ld h, l                                       ; $49c7: $65
    sbc [hl]                                      ; $49c8: $9e
    jp nc, $9847                                  ; $49c9: $d2 $47 $98

    rst $30                                       ; $49cc: $f7
    ld b, e                                       ; $49cd: $43
    rst $00                                       ; $49ce: $c7
    jp nc, $010b                                  ; $49cf: $d2 $0b $01

    dec a                                         ; $49d2: $3d
    xor a                                         ; $49d3: $af
    ld c, d                                       ; $49d4: $4a
    or e                                          ; $49d5: $b3
    ei                                            ; $49d6: $fb
    ld [hl-], a                                   ; $49d7: $32
    or e                                          ; $49d8: $b3
    dec bc                                        ; $49d9: $0b
    ld [hl+], a                                   ; $49da: $22
    dec a                                         ; $49db: $3d
    xor a                                         ; $49dc: $af
    ld c, d                                       ; $49dd: $4a
    or e                                          ; $49de: $b3
    ei                                            ; $49df: $fb
    ld [hl-], a                                   ; $49e0: $32
    or e                                          ; $49e1: $b3
    ld c, e                                       ; $49e2: $4b
    cp e                                          ; $49e3: $bb
    adc $83                                       ; $49e4: $ce $83
    inc bc                                        ; $49e6: $03
    ldh a, [rNR44]                                ; $49e7: $f0 $23
    rst $38                                       ; $49e9: $ff
    or b                                          ; $49ea: $b0
    ret c                                         ; $49eb: $d8

    ld [hl], c                                    ; $49ec: $71
    adc h                                         ; $49ed: $8c
    dec bc                                        ; $49ee: $0b
    ld a, [hl-]                                   ; $49ef: $3a
    or e                                          ; $49f0: $b3
    halt                                          ; $49f1: $76
    dec e                                         ; $49f2: $1d
    add a                                         ; $49f3: $87
    dec e                                         ; $49f4: $1d
    ld a, c                                       ; $49f5: $79
    ld sp, $879a                                  ; $49f6: $31 $9a $87
    xor l                                         ; $49f9: $ad
    ld b, [hl]                                    ; $49fa: $46
    inc a                                         ; $49fb: $3c
    inc a                                         ; $49fc: $3c
    and c                                         ; $49fd: $a1
    ld h, $66                                     ; $49fe: $26 $66
    adc $24                                       ; $4a00: $ce $24
    add hl, bc                                    ; $4a02: $09
    ld de, $35bd                                  ; $4a03: $11 $bd $35
    and c                                         ; $4a06: $a1
    cp [hl]                                       ; $4a07: $be
    ld c, d                                       ; $4a08: $4a
    cp l                                          ; $4a09: $bd
    ld a, $0e                                     ; $4a0a: $3e $0e
    dec sp                                        ; $4a0c: $3b
    ld d, c                                       ; $4a0d: $51
    ld l, a                                       ; $4a0e: $6f
    call Call_000_317b                            ; $4a0f: $cd $7b $31
    ld [$78f5], a                                 ; $4a12: $ea $f5 $78
    ld h, d                                       ; $4a15: $62
    or l                                          ; $4a16: $b5
    inc e                                         ; $4a17: $1c
    halt                                          ; $4a18: $76
    inc a                                         ; $4a19: $3c
    inc sp                                        ; $4a1a: $33
    cp e                                          ; $4a1b: $bb
    and [hl]                                      ; $4a1c: $a6
    inc e                                         ; $4a1d: $1c
    jr nz, @+$04                                  ; $4a1e: $20 $02

    dec a                                         ; $4a20: $3d
    cp $da                                        ; $4a21: $fe $da
    push af                                       ; $4a23: $f5
    cp h                                          ; $4a24: $bc
    ld a, [hl+]                                   ; $4a25: $2a
    dec c                                         ; $4a26: $0d
    ld e, h                                       ; $4a27: $5c
    rra                                           ; $4a28: $1f
    add a                                         ; $4a29: $87
    dec [hl]                                      ; $4a2a: $35
    or e                                          ; $4a2b: $b3
    ld l, e                                       ; $4a2c: $6b
    ld h, [hl]                                    ; $4a2d: $66
    halt                                          ; $4a2e: $76
    dec c                                         ; $4a2f: $0d
    ld [hl], a                                    ; $4a30: $77
    or l                                          ; $4a31: $b5
    ret c                                         ; $4a32: $d8

    sbc [hl]                                      ; $4a33: $9e
    ld d, d                                       ; $4a34: $52
    ld l, $b8                                     ; $4a35: $2e $b8
    ld a, e                                       ; $4a37: $7b
    or d                                          ; $4a38: $b2
    ld h, l                                       ; $4a39: $65
    rst $20                                       ; $4a3a: $e7
    cp e                                          ; $4a3b: $bb
    and [hl]                                      ; $4a3c: $a6
    call z, $cd73                                 ; $4a3d: $cc $73 $cd
    inc a                                         ; $4a40: $3c
    call c, Call_055_62d5                         ; $4a41: $dc $d5 $62
    ld a, e                                       ; $4a44: $7b
    ld c, d                                       ; $4a45: $4a
    ld e, l                                       ; $4a46: $5d
    ld d, d                                       ; $4a47: $52
    cp $35                                        ; $4a48: $fe $35
    di                                            ; $4a4a: $f3
    ld h, c                                       ; $4a4b: $61
    xor e                                         ; $4a4c: $ab
    inc sp                                        ; $4a4d: $33
    jp nz, $bfb5                                  ; $4a4e: $c2 $b5 $bf

    ld [hl], h                                    ; $4a51: $74
    xor [hl]                                      ; $4a52: $ae
    ld h, b                                       ; $4a53: $60
    add c                                         ; $4a54: $81
    ld [$55f7], sp                                ; $4a55: $08 $f7 $55
    and [hl]                                      ; $4a58: $a6
    ld a, l                                       ; $4a59: $7d
    ld c, [hl]                                    ; $4a5a: $4e
    xor [hl]                                      ; $4a5b: $ae
    db $dd                                        ; $4a5c: $dd
    ld sp, hl                                     ; $4a5d: $f9
    rrca                                          ; $4a5e: $0f
    ld a, e                                       ; $4a5f: $7b
    pop hl                                        ; $4a60: $e1
    dec c                                         ; $4a61: $0d
    dec sp                                        ; $4a62: $3b
    call z, $f23c                                 ; $4a63: $cc $3c $f2
    sbc l                                         ; $4a66: $9d
    inc sp                                        ; $4a67: $33
    cp $6d                                        ; $4a68: $fe $6d
    db $dd                                        ; $4a6a: $dd
    rst $38                                       ; $4a6b: $ff
    add l                                         ; $4a6c: $85
    inc l                                         ; $4a6d: $2c
    xor a                                         ; $4a6e: $af
    dec [hl]                                      ; $4a6f: $35
    ld l, h                                       ; $4a70: $6c
    sub c                                         ; $4a71: $91
    cpl                                           ; $4a72: $2f
    pop bc                                        ; $4a73: $c1
    or d                                          ; $4a74: $b2
    inc e                                         ; $4a75: $1c
    halt                                          ; $4a76: $76
    sbc $3a                                       ; $4a77: $de $3a
    ld c, $3b                                     ; $4a79: $0e $3b
    ld d, c                                       ; $4a7b: $51
    ld l, a                                       ; $4a7c: $6f
    call $7f0b                                    ; $4a7d: $cd $0b $7f
    jp z, $fe3c                                   ; $4a80: $ca $3c $fe

    ld l, l                                       ; $4a83: $6d
    jp z, $ae01                                   ; $4a84: $ca $01 $ae

    adc a                                         ; $4a87: $8f
    jp Jump_055_7c4e                              ; $4a88: $c3 $4e $7c


    ld l, l                                       ; $4a8b: $6d
    db $f4                                        ; $4a8c: $f4
    rla                                           ; $4a8d: $17
    pop af                                        ; $4a8e: $f1
    call z, $c5bb                                 ; $4a8f: $cc $bb $c5
    push de                                       ; $4a92: $d5
    add l                                         ; $4a93: $85
    reti                                          ; $4a94: $d9


    inc hl                                        ; $4a95: $23
    inc e                                         ; $4a96: $1c
    adc a                                         ; $4a97: $8f
    ld l, e                                       ; $4a98: $6b
    add hl, sp                                    ; $4a99: $39
    adc h                                         ; $4a9a: $8c
    dec hl                                        ; $4a9b: $2b
    or a                                          ; $4a9c: $b7
    add [hl]                                      ; $4a9d: $86

Jump_055_4a9e:
    dec l                                         ; $4a9e: $2d
    ld [hl], d                                    ; $4a9f: $72
    ld c, c                                       ; $4aa0: $49
    call z, $3bc5                                 ; $4aa1: $cc $c5 $3b
    add hl, de                                    ; $4aa4: $19
    rst $28                                       ; $4aa5: $ef
    adc $7f                                       ; $4aa6: $ce $7f
    ret c                                         ; $4aa8: $d8

    adc e                                         ; $4aa9: $8b
    ld c, a                                       ; $4aaa: $4f
    ld c, [hl]                                    ; $4aab: $4e
    db $ec                                        ; $4aac: $ec
    ld a, b                                       ; $4aad: $78
    pop hl                                        ; $4aae: $e1
    adc l                                         ; $4aaf: $8d
    ld a, a                                       ; $4ab0: $7f
    dec de                                        ; $4ab1: $1b
    db $fd                                        ; $4ab2: $fd
    jp z, $fc32                                   ; $4ab3: $ca $32 $fc

    dec b                                         ; $4ab6: $05
    ld [hl+], a                                   ; $4ab7: $22
    db $dd                                        ; $4ab8: $dd
    ld e, $ee                                     ; $4ab9: $1e $ee
    ld l, d                                       ; $4abb: $6a
    or c                                          ; $4abc: $b1
    dec a                                         ; $4abd: $3d
    and l                                         ; $4abe: $a5
    inc l                                         ; $4abf: $2c
    ld e, [hl]                                    ; $4ac0: $5e
    ld a, h                                       ; $4ac1: $7c
    or d                                          ; $4ac2: $b2
    adc [hl]                                      ; $4ac3: $8e
    jp Jump_000_2fe8                              ; $4ac4: $c3 $e8 $2f


    ld [c], a                                     ; $4ac7: $e2
    dec e                                         ; $4ac8: $1d
    adc e                                         ; $4ac9: $8b
    bit 6, b                                      ; $4aca: $cb $70
    db $dd                                        ; $4acc: $dd
    ld l, a                                       ; $4acd: $6f
    xor d                                         ; $4ace: $aa
    ld e, [hl]                                    ; $4acf: $5e
    dec l                                         ; $4ad0: $2d
    ld sp, hl                                     ; $4ad1: $f9
    jp c, $bcf5                                   ; $4ad2: $da $f5 $bc

    ld a, [hl+]                                   ; $4ad5: $2a
    ld c, l                                       ; $4ad6: $4d
    ld l, d                                       ; $4ad7: $6a
    inc b                                         ; $4ad8: $04
    ld a, l                                       ; $4ad9: $7d
    inc e                                         ; $4ada: $1c
    sub [hl]                                      ; $4adb: $96
    ld e, b                                       ; $4adc: $58
    ret c                                         ; $4add: $d8

    dec [hl]                                      ; $4ade: $35
    jp nz, Jump_055_5da5                          ; $4adf: $c2 $a5 $5d

    rst $08                                       ; $4ae2: $cf
    xor e                                         ; $4ae3: $ab
    jp nc, $75c0                                  ; $4ae4: $d2 $c0 $75

    db $eb                                        ; $4ae7: $eb
    db $e3                                        ; $4ae8: $e3
    or d                                          ; $4ae9: $b2
    inc b                                         ; $4aea: $04
    ld d, a                                       ; $4aeb: $57

Call_055_4aec:
    rst $38                                       ; $4aec: $ff
    pop de                                        ; $4aed: $d1
    jp $e30e                                      ; $4aee: $c3 $0e $e3


    rst $18                                       ; $4af1: $df
    ld b, [hl]                                    ; $4af2: $46
    dec l                                         ; $4af3: $2d
    sub h                                         ; $4af4: $94
    cp a                                          ; $4af5: $bf
    ld h, a                                       ; $4af6: $67
    sbc c                                         ; $4af7: $99
    dec h                                         ; $4af8: $25
    cp d                                          ; $4af9: $ba
    xor l                                         ; $4afa: $ad
    ld a, l                                       ; $4afb: $7d
    or [hl]                                       ; $4afc: $b6
    adc h                                         ; $4afd: $8c
    ld a, b                                       ; $4afe: $78
    and d                                         ; $4aff: $a2
    call c, $0220                                 ; $4b00: $dc $20 $02
    dec a                                         ; $4b03: $3d
    xor a                                         ; $4b04: $af
    and [hl]                                      ; $4b05: $a6
    db $f4                                        ; $4b06: $f4
    dec e                                         ; $4b07: $1d
    inc sp                                        ; $4b08: $33
    rst $08                                       ; $4b09: $cf
    ld [hl-], a                                   ; $4b0a: $32
    db $fc                                        ; $4b0b: $fc
    ld b, h                                       ; $4b0c: $44
    ld b, [hl]                                    ; $4b0d: $46
    cp b                                          ; $4b0e: $b8
    sub [hl]                                      ; $4b0f: $96
    ld [hl], c                                    ; $4b10: $71
    xor h                                         ; $4b11: $ac
    cpl                                           ; $4b12: $2f
    ld h, c                                       ; $4b13: $61
    daa                                           ; $4b14: $27
    db $e3                                        ; $4b15: $e3
    dec h                                         ; $4b16: $25
    cp a                                          ; $4b17: $bf
    db $ed                                        ; $4b18: $ed
    cp b                                          ; $4b19: $b8
    dec b                                         ; $4b1a: $05
    rst $08                                       ; $4b1b: $cf
    cp h                                          ; $4b1c: $bc
    ld e, e                                       ; $4b1d: $5b
    ld e, h                                       ; $4b1e: $5c
    ld e, l                                       ; $4b1f: $5d
    sbc b                                         ; $4b20: $98
    dec a                                         ; $4b21: $3d
    jp nz, $b8f1                                  ; $4b22: $c2 $f1 $b8

    sub [hl]                                      ; $4b25: $96
    jp $72b8                                      ; $4b26: $c3 $b8 $72


    ld l, e                                       ; $4b29: $6b
    ret c                                         ; $4b2a: $d8

    ld [hl+], a                                   ; $4b2b: $22
    sub a                                         ; $4b2c: $97
    call nz, $dc5c                                ; $4b2d: $c4 $5c $dc
    dec bc                                        ; $4b30: $0b
    ld bc, $1c7d                                  ; $4b31: $01 $7d $1c
    add $95                                       ; $4b34: $c6 $95
    ld l, e                                       ; $4b36: $6b
    call nz, Call_000_1193                        ; $4b37: $c4 $93 $11
    ld l, [hl]                                    ; $4b3a: $6e
    add a                                         ; $4b3b: $87
    ld b, a                                       ; $4b3c: $47
    db $e4                                        ; $4b3d: $e4
    and [hl]                                      ; $4b3e: $a6
    ld e, h                                       ; $4b3f: $5c
    dec sp                                        ; $4b40: $3b
    ld c, $2b                                     ; $4b41: $0e $2b
    ld e, l                                       ; $4b43: $5d
    inc d                                         ; $4b44: $14
    rst $28                                       ; $4b45: $ef
    or $f6                                        ; $4b46: $f6 $f6
    dec hl                                        ; $4b48: $2b
    ld h, h                                       ; $4b49: $64
    ld h, [hl]                                    ; $4b4a: $66
    adc b                                         ; $4b4b: $88
    nop                                           ; $4b4c: $00
    rst $30                                       ; $4b4d: $f7
    ld hl, sp+$6b                                 ; $4b4e: $f8 $6b
    ld b, a                                       ; $4b50: $47
    inc a                                         ; $4b51: $3c
    inc a                                         ; $4b52: $3c
    ld [c], a                                     ; $4b53: $e2

jr_055_4b54:
    push de                                       ; $4b54: $d5
    ld a, [hl-]                                   ; $4b55: $3a
    ld c, $fb                                     ; $4b56: $0e $fb
    ld sp, $c77a                                  ; $4b58: $31 $7a $c7
    call z, $0110                                 ; $4b5b: $cc $10 $01
    rst $30                                       ; $4b5e: $f7
    ld hl, sp+$6b                                 ; $4b5f: $f8 $6b
    and a                                         ; $4b61: $a7
    call z, $cc4b                                 ; $4b62: $cc $4b $cc
    db $eb                                        ; $4b65: $eb
    jr c, jr_055_4b54                             ; $4b66: $38 $ec

    rst $00                                       ; $4b68: $c7
    add sp, $49                                   ; $4b69: $e8 $49
    or $32                                        ; $4b6b: $f6 $32
    add [hl]                                      ; $4b6d: $86
    ld [$e6dd], sp                                ; $4b6e: $08 $dd $e6
    push bc                                       ; $4b71: $c5
    jp nc, Jump_055_5ed4                          ; $4b72: $d2 $d4 $5e

    ld [hl-], a                                   ; $4b75: $32
    ld a, [hl-]                                   ; $4b76: $3a
    or a                                          ; $4b77: $b7
    cp b                                          ; $4b78: $b8
    sub e                                         ; $4b79: $93
    pop af                                        ; $4b7a: $f1
    sub d                                         ; $4b7b: $92
    rst $18                                       ; $4b7c: $df
    halt                                          ; $4b7d: $76
    call c, $7782                                 ; $4b7e: $dc $82 $77
    adc e                                         ; $4b81: $8b
    xor e                                         ; $4b82: $ab

jr_055_4b83:
    dec bc                                        ; $4b83: $0b
    or e                                          ; $4b84: $b3
    ld b, a                                       ; $4b85: $47
    jr c, jr_055_4ba6                             ; $4b86: $38 $1e

    rst $10                                       ; $4b88: $d7
    ld [hl], d                                    ; $4b89: $72
    jr jr_055_4be3                                ; $4b8a: $18 $57

    ld l, [hl]                                    ; $4b8c: $6e
    dec c                                         ; $4b8d: $0d
    ld e, e                                       ; $4b8e: $5b
    db $e4                                        ; $4b8f: $e4
    sub d                                         ; $4b90: $92
    sbc b                                         ; $4b91: $98

Call_055_4b92:
    adc e                                         ; $4b92: $8b
    ld hl, $dd02                                  ; $4b93: $21 $02 $dd
    and $b9                                       ; $4b96: $e6 $b9
    or $63                                        ; $4b98: $f6 $63
    db $f4                                        ; $4b9a: $f4
    ld e, [hl]                                    ; $4b9b: $5e
    adc h                                         ; $4b9c: $8c
    ld a, d                                       ; $4b9d: $7a
    dec a                                         ; $4b9e: $3d
    sbc $a1                                       ; $4b9f: $de $a1

jr_055_4ba1:
    add h                                         ; $4ba1: $84
    rst $10                                       ; $4ba2: $d7
    ld [hl], c                                    ; $4ba3: $71
    jr jr_055_4b83                                ; $4ba4: $18 $dd

jr_055_4ba6:
    push de                                       ; $4ba6: $d5
    add d                                         ; $4ba7: $82
    ld l, e                                       ; $4ba8: $6b
    ret c                                         ; $4ba9: $d8

    ld l, d                                       ; $4baa: $6a
    rra                                           ; $4bab: $1f
    ld [hl+], a                                   ; $4bac: $22
    rst $30                                       ; $4bad: $f7
    ld hl, sp+$6b                                 ; $4bae: $f8 $6b
    add a                                         ; $4bb0: $87
    dec l                                         ; $4bb1: $2d
    db $eb                                        ; $4bb2: $eb
    jr c, jr_055_4ba1                             ; $4bb3: $38 $ec

    ld d, b                                       ; $4bb5: $50
    ei                                            ; $4bb6: $fb
    ld sp, $667a                                  ; $4bb7: $31 $7a $66
    halt                                          ; $4bba: $76
    adc l                                         ; $4bbb: $8d
    ld [hl], b                                    ; $4bbc: $70
    ld l, e                                       ; $4bbd: $6b
    ld l, $88                                     ; $4bbe: $2e $88
    nop                                           ; $4bc0: $00
    ld a, l                                       ; $4bc1: $7d
    or d                                          ; $4bc2: $b2
    halt                                          ; $4bc3: $76
    dec e                                         ; $4bc4: $1d
    add a                                         ; $4bc5: $87
    ld [hl], c                                    ; $4bc6: $71
    push hl                                       ; $4bc7: $e5
    ld e, d                                       ; $4bc8: $5a
    rst $00                                       ; $4bc9: $c7
    ld h, c                                       ; $4bca: $61
    add a                                         ; $4bcb: $87
    sbc d                                         ; $4bcc: $9a
    ld h, l                                       ; $4bcd: $65
    add a                                         ; $4bce: $87
    ld [de], a                                    ; $4bcf: $12
    sbc c                                         ; $4bd0: $99
    ld h, l                                       ; $4bd1: $65
    jp hl                                         ; $4bd2: $e9


    ld e, h                                       ; $4bd3: $5c
    db $ec                                        ; $4bd4: $ec
    dec h                                         ; $4bd5: $25
    ld d, [hl]                                    ; $4bd6: $56
    ld c, e                                       ; $4bd7: $4b
    ccf                                           ; $4bd8: $3f
    adc c                                         ; $4bd9: $89
    ld d, $88                                     ; $4bda: $16 $88
    nop                                           ; $4bdc: $00
    ld a, l                                       ; $4bdd: $7d
    or d                                          ; $4bde: $b2
    halt                                          ; $4bdf: $76
    ld a, l                                       ; $4be0: $7d
    ld l, [hl]                                    ; $4be1: $6e
    db $eb                                        ; $4be2: $eb

jr_055_4be3:
    dec a                                         ; $4be3: $3d
    rst $10                                       ; $4be4: $d7
    inc l                                         ; $4be5: $2c
    jp Jump_055_644f                              ; $4be6: $c3 $4f $64


    daa                                           ; $4be9: $27
    db $e3                                        ; $4bea: $e3
    dec h                                         ; $4beb: $25
    cp a                                          ; $4bec: $bf
    db $ed                                        ; $4bed: $ed
    cp b                                          ; $4bee: $b8
    dec b                                         ; $4bef: $05
    rst $08                                       ; $4bf0: $cf
    cp h                                          ; $4bf1: $bc
    ld e, e                                       ; $4bf2: $5b
    ld e, h                                       ; $4bf3: $5c
    ld e, l                                       ; $4bf4: $5d
    sbc b                                         ; $4bf5: $98
    dec a                                         ; $4bf6: $3d
    jp nz, $b8f1                                  ; $4bf7: $c2 $f1 $b8

    sub [hl]                                      ; $4bfa: $96
    jp $72b8                                      ; $4bfb: $c3 $b8 $72


    ld l, e                                       ; $4bfe: $6b
    ret c                                         ; $4bff: $d8

    ld [hl+], a                                   ; $4c00: $22
    sub a                                         ; $4c01: $97
    call nz, Call_000_0c5c                        ; $4c02: $c4 $5c $0c
    ld [hl], a                                    ; $4c05: $77
    or a                                          ; $4c06: $b7
    ld h, l                                       ; $4c07: $65
    jp z, $f6bc                                   ; $4c08: $ca $bc $f6

    ld b, e                                       ; $4c0b: $43
    ld [hl], b                                    ; $4c0c: $70
    db $ed                                        ; $4c0d: $ed
    adc a                                         ; $4c0e: $8f
    ld c, b                                       ; $4c0f: $48
    call c, $f312                                 ; $4c10: $dc $12 $f3
    ldh a, [$67]                                  ; $4c13: $f0 $67
    sbc $df                                       ; $4c15: $de $df

jr_055_4c17:
    db $ed                                        ; $4c17: $ed
    db $ed                                        ; $4c18: $ed
    ld d, a                                       ; $4c19: $57
    ret z                                         ; $4c1a: $c8

    call z, Call_000_3d70                         ; $4c1b: $cc $70 $3d
    ret                                           ; $4c1e: $c9


    ccf                                           ; $4c1f: $3f
    ld d, e                                       ; $4c20: $53
    ld a, [$5502]                                 ; $4c21: $fa $02 $55
    bit 4, c                                      ; $4c24: $cb $61
    add h                                         ; $4c26: $84
    add l                                         ; $4c27: $85
    ld e, l                                       ; $4c28: $5d
    ld d, e                                       ; $4c29: $53
    and $1d                                       ; $4c2a: $e6 $1d
    or a                                          ; $4c2c: $b7
    ld b, h                                       ; $4c2d: $44
    cp e                                          ; $4c2e: $bb
    inc de                                        ; $4c2f: $13
    ld e, a                                       ; $4c30: $5f
    ld e, e                                       ; $4c31: $5b
    rst $00                                       ; $4c32: $c7
    ld h, c                                       ; $4c33: $61
    rst $00                                       ; $4c34: $c7
    ld [de], a                                    ; $4c35: $12
    dec a                                         ; $4c36: $3d
    or d                                          ; $4c37: $b2
    cp $b1                                        ; $4c38: $fe $b1
    adc h                                         ; $4c3a: $8c
    xor [hl]                                      ; $4c3b: $ae
    scf                                           ; $4c3c: $37
    set 2, d                                      ; $4c3d: $cb $d2
    ld b, $97                                     ; $4c3f: $06 $97
    ld e, a                                       ; $4c41: $5f
    ld e, l                                       ; $4c42: $5d
    ld [hl], d                                    ; $4c43: $72
    ret c                                         ; $4c44: $d8

    ld e, a                                       ; $4c45: $5f
    add $bf                                       ; $4c46: $c6 $bf
    db $ed                                        ; $4c48: $ed
    ld a, [c]                                     ; $4c49: $f2
    bit 6, [hl]                                   ; $4c4a: $cb $76
    ld a, [hl]                                    ; $4c4c: $7e
    ld d, b                                       ; $4c4d: $50
    ld l, $88                                     ; $4c4e: $2e $88
    nop                                           ; $4c50: $00
    add b                                         ; $4c51: $80
    ei                                            ; $4c52: $fb
    xor d                                         ; $4c53: $aa
    ld b, e                                       ; $4c54: $43
    add l                                         ; $4c55: $85
    xor h                                         ; $4c56: $ac
    jr nz, @+$04                                  ; $4c57: $20 $02

    add b                                         ; $4c59: $80
    jr jr_055_4c17                                ; $4c5a: $18 $bb

    and d                                         ; $4c5c: $a2
    add hl, de                                    ; $4c5d: $19
    xor $ae                                       ; $4c5e: $ee $ae
    or a                                          ; $4c60: $b7
    ld a, h                                       ; $4c61: $7c
    adc $02                                       ; $4c62: $ce $02
    or l                                          ; $4c64: $b5
    cpl                                           ; $4c65: $2f
    or d                                          ; $4c66: $b2
    cp a                                          ; $4c67: $bf
    sbc $f5                                       ; $4c68: $de $f5
    dec h                                         ; $4c6a: $25
    ld h, h                                       ; $4c6b: $64
    and $a3                                       ; $4c6c: $e6 $a3
    db $dd                                        ; $4c6e: $dd
    and c                                         ; $4c6f: $a1
    halt                                          ; $4c70: $76
    ld [c], a                                     ; $4c71: $e2
    ld l, e                                       ; $4c72: $6b
    db $eb                                        ; $4c73: $eb
    jr c, jr_055_4ca2                             ; $4c74: $38 $2c

    db $fc                                        ; $4c76: $fc
    add hl, hl                                    ; $4c77: $29
    add a                                         ; $4c78: $87
    pop af                                        ; $4c79: $f1
    ld l, a                                       ; $4c7a: $6f
    db $ed                                        ; $4c7b: $ed
    or c                                          ; $4c7c: $b1
    db $db                                        ; $4c7d: $db
    pop af                                        ; $4c7e: $f1
    ld hl, sp-$49                                 ; $4c7f: $f8 $b7
    ld d, c                                       ; $4c81: $51
    dec bc                                        ; $4c82: $0b
    call nc, $c8be                                ; $4c83: $d4 $be $c8
    cp $88                                        ; $4c86: $fe $88
    call nz, Call_000_312d                        ; $4c88: $c4 $2d $31
    rrca                                          ; $4c8b: $0f
    ld a, a                                       ; $4c8c: $7f
    ld h, [hl]                                    ; $4c8d: $66
    adc b                                         ; $4c8e: $88
    nop                                           ; $4c8f: $00
    add hl, hl                                    ; $4c90: $29
    call nc, $c6b0                                ; $4c91: $d4 $b0 $c6
    inc hl                                        ; $4c94: $23
    ld e, [hl]                                    ; $4c95: $5e
    xor l                                         ; $4c96: $ad
    db $e3                                        ; $4c97: $e3
    jr nc, @-$35                                  ; $4c98: $30 $c9

    ld [hl], c                                    ; $4c9a: $71
    ccf                                           ; $4c9b: $3f
    ld b, [hl]                                    ; $4c9c: $46
    ld b, e                                       ; $4c9d: $43
    inc b                                         ; $4c9e: $04
    db $dd                                        ; $4c9f: $dd

jr_055_4ca0:
    and $25                                       ; $4ca0: $e6 $25

jr_055_4ca2:
    xor a                                         ; $4ca2: $af
    halt                                          ; $4ca3: $76
    inc [hl]                                      ; $4ca4: $34
    and d                                         ; $4ca5: $a2
    ldh [$ee], a                                  ; $4ca6: $e0 $ee
    call z, Call_000_3f78                         ; $4ca8: $cc $78 $3f
    ld [hl], h                                    ; $4cab: $74
    inc l                                         ; $4cac: $2c
    inc de                                        ; $4cad: $13
    xor d                                         ; $4cae: $aa
    and [hl]                                      ; $4caf: $a6
    db $f4                                        ; $4cb0: $f4
    ld de, $a6af                                  ; $4cb1: $11 $af $a6
    call z, $dd70                                 ; $4cb4: $cc $70 $dd
    ld a, [$2fe8]                                 ; $4cb7: $fa $e8 $2f
    ld [c], a                                     ; $4cba: $e2
    ld a, [de]                                    ; $4cbb: $1a
    halt                                          ; $4cbc: $76
    jr jr_055_4ca0                                ; $4cbd: $18 $e1

    add d                                         ; $4cbf: $82
    ld [$e677], sp                                ; $4cc0: $08 $77 $e6
    ld h, d                                       ; $4cc3: $62
    di                                            ; $4cc4: $f3
    ld h, d                                       ; $4cc5: $62
    ld a, $ec                                     ; $4cc6: $3e $ec
    jp c, $97e5                                   ; $4cc8: $da $e5 $97

    db $ed                                        ; $4ccb: $ed
    db $fc                                        ; $4ccc: $fc
    and b                                         ; $4ccd: $a0
    ld e, h                                       ; $4cce: $5c
    jp c, $cb61                                   ; $4ccf: $da $61 $cb

    ld a, [hl-]                                   ; $4cd2: $3a
    ld c, $23                                     ; $4cd3: $0e $23
    ld e, [hl]                                    ; $4cd5: $5e
    db $ed                                        ; $4cd6: $ed
    rst $00                                       ; $4cd7: $c7
    add sp, $1d                                   ; $4cd8: $e8 $1d
    ld l, d                                       ; $4cda: $6a
    ld e, b                                       ; $4cdb: $58
    ld h, e                                       ; $4cdc: $63
    cp b                                          ; $4cdd: $b8
    dec sp                                        ; $4cde: $3b
    sbc a                                         ; $4cdf: $9f
    ld c, h                                       ; $4ce0: $4c
    jp hl                                         ; $4ce1: $e9


    ld l, e                                       ; $4ce2: $6b
    sub h                                         ; $4ce3: $94
    ld a, b                                       ; $4ce4: $78
    ret c                                         ; $4ce5: $d8

    ld h, c                                       ; $4ce6: $61
    sub a                                         ; $4ce7: $97
    ld e, a                                       ; $4ce8: $5f
    or [hl]                                       ; $4ce9: $b6
    di                                            ; $4cea: $f3
    add e                                         ; $4ceb: $83
    ld [hl], d                                    ; $4cec: $72
    push af                                       ; $4ced: $f5
    ld b, d                                       ; $4cee: $42
    ld a, l                                       ; $4cef: $7d
    ld e, $44                                     ; $4cf0: $1e $44
    ld [hl], a                                    ; $4cf2: $77
    ld a, $59                                     ; $4cf3: $3e $59
    rst $00                                       ; $4cf5: $c7
    ld h, c                                       ; $4cf6: $61
    add a                                         ; $4cf7: $87
    xor c                                         ; $4cf8: $a9
    pop af                                        ; $4cf9: $f1
    ld l, a                                       ; $4cfa: $6f
    db $e3                                        ; $4cfb: $e3
    adc [hl]                                      ; $4cfc: $8e
    push bc                                       ; $4cfd: $c5
    add a                                         ; $4cfe: $87
    db $dd                                        ; $4cff: $dd
    dec bc                                        ; $4d00: $0b
    ld bc, $1777                                  ; $4d01: $01 $77 $17
    call c, $997d                                 ; $4d04: $dc $7d $99
    reti                                          ; $4d07: $d9


    dec [hl]                                      ; $4d08: $35
    ld [c], a                                     ; $4d09: $e2
    push de                                       ; $4d0a: $d5
    ld hl, sp-$49                                 ; $4d0b: $f8 $b7
    or $d8                                        ; $4d0d: $f6 $d8
    db $ed                                        ; $4d0f: $ed
    ld a, b                                       ; $4d10: $78
    db $fc                                        ; $4d11: $fc
    db $db                                        ; $4d12: $db
    xor b                                         ; $4d13: $a8
    dec b                                         ; $4d14: $05
    ld l, d                                       ; $4d15: $6a
    ld e, a                                       ; $4d16: $5f
    ld h, h                                       ; $4d17: $64
    ld a, a                                       ; $4d18: $7f
    ld b, h                                       ; $4d19: $44
    ld [c], a                                     ; $4d1a: $e2
    sub [hl]                                      ; $4d1b: $96
    sbc b                                         ; $4d1c: $98
    add a                                         ; $4d1d: $87
    ccf                                           ; $4d1e: $3f
    or e                                          ; $4d1f: $b3
    halt                                          ; $4d20: $76
    rst $10                                       ; $4d21: $d7
    ld e, a                                       ; $4d22: $5f
    ld a, a                                       ; $4d23: $7f
    sbc l                                         ; $4d24: $9d
    halt                                          ; $4d25: $76
    add hl, sp                                    ; $4d26: $39
    adc h                                         ; $4d27: $8c
    rst $18                                       ; $4d28: $df
    ld [hl], h                                    ; $4d29: $74
    sbc [hl]                                      ; $4d2a: $9e
    ld a, c                                       ; $4d2b: $79
    or a                                          ; $4d2c: $b7
    cp b                                          ; $4d2d: $b8
    cp d                                          ; $4d2e: $ba
    jr nc, jr_055_4dac                            ; $4d2f: $30 $7b

    add h                                         ; $4d31: $84
    db $e3                                        ; $4d32: $e3
    ld [hl], c                                    ; $4d33: $71
    dec l                                         ; $4d34: $2d
    add a                                         ; $4d35: $87
    ld [hl], c                                    ; $4d36: $71
    push hl                                       ; $4d37: $e5
    sub $b0                                       ; $4d38: $d6 $b0
    ld b, l                                       ; $4d3a: $45
    ld l, $89                                     ; $4d3b: $2e $89
    cp c                                          ; $4d3d: $b9
    jr jr_055_4d62                                ; $4d3e: $18 $22

    ld [hl], a                                    ; $4d40: $77
    ld a, $59                                     ; $4d41: $3e $59
    rst $00                                       ; $4d43: $c7
    ld h, c                                       ; $4d44: $61
    inc [hl]                                      ; $4d45: $34
    or l                                          ; $4d46: $b5
    db $e3                                        ; $4d47: $e3
    ld c, c                                       ; $4d48: $49
    ld d, a                                       ; $4d49: $57
    adc h                                         ; $4d4a: $8c
    ld l, [hl]                                    ; $4d4b: $6e
    sub [hl]                                      ; $4d4c: $96
    ld e, [hl]                                    ; $4d4d: $5e
    ld [$ae3d], sp                                ; $4d4e: $08 $3d $ae
    cp c                                          ; $4d51: $b9
    and [hl]                                      ; $4d52: $a6
    inc l                                         ; $4d53: $2c

Jump_055_4d54:
    ld [hl], b                                    ; $4d54: $70
    dec a                                         ; $4d55: $3d
    xor [hl]                                      ; $4d56: $ae
    jp c, $997d                                   ; $4d57: $da $7d $99

    reti                                          ; $4d5a: $d9


    or l                                          ; $4d5b: $b5
    ld b, b                                       ; $4d5c: $40
    push de                                       ; $4d5d: $d5
    call nz, $af6a                                ; $4d5e: $c4 $6a $af
    ld e, c                                       ; $4d61: $59

jr_055_4d62:
    inc c                                         ; $4d62: $0c
    sub a                                         ; $4d63: $97
    ld [c], a                                     ; $4d64: $e2
    sbc d                                         ; $4d65: $9a
    ld [hl], d                                    ; $4d66: $72
    sbc b                                         ; $4d67: $98
    sbc c                                         ; $4d68: $99
    ld e, l                                       ; $4d69: $5d
    inc h                                         ; $4d6a: $24
    and l                                         ; $4d6b: $a5
    ld e, l                                       ; $4d6c: $5d
    rst $08                                       ; $4d6d: $cf
    xor e                                         ; $4d6e: $ab
    jp nc, Jump_000_0440                          ; $4d6f: $d2 $40 $04

    add b                                         ; $4d72: $80

Call_055_4d73:
    jr @-$43                                      ; $4d73: $18 $bb

    and d                                         ; $4d75: $a2
    add hl, de                                    ; $4d76: $19
    ld c, $f0                                     ; $4d77: $0e $f0
    rst $18                                       ; $4d79: $df
    adc c                                         ; $4d7a: $89
    xor a                                         ; $4d7b: $af
    ld c, l                                       ; $4d7c: $4d
    xor h                                         ; $4d7d: $ac
    add $bf                                       ; $4d7e: $c6 $bf
    ld c, l                                       ; $4d80: $4d
    ld e, c                                       ; $4d81: $59
    ld h, $1a                                     ; $4d82: $26 $1a
    adc a                                         ; $4d84: $8f
    ld c, b                                       ; $4d85: $48
    call c, Call_055_4b92                         ; $4d86: $dc $92 $4b
    ld e, [hl]                                    ; $4d89: $5e
    and d                                         ; $4d8a: $a2
    call c, $04be                                 ; $4d8b: $dc $be $04
    dec bc                                        ; $4d8e: $0b
    call c, $af2d                                 ; $4d8f: $dc $2d $af
    inc a                                         ; $4d92: $3c
    cp d                                          ; $4d93: $ba
    xor e                                         ; $4d94: $ab
    add l                                         ; $4d95: $85
    ld h, c                                       ; $4d96: $61
    rlca                                          ; $4d97: $07
    adc b                                         ; $4d98: $88
    nop                                           ; $4d99: $00
    dec a                                         ; $4d9a: $3d
    adc c                                         ; $4d9b: $89
    ld e, e                                       ; $4d9c: $5b
    or d                                          ; $4d9d: $b2
    db $eb                                        ; $4d9e: $eb
    xor a                                         ; $4d9f: $af
    cp a                                          ; $4da0: $bf
    ld l, [hl]                                    ; $4da1: $6e
    xor [hl]                                      ; $4da2: $ae
    and l                                         ; $4da3: $a5
    ld [hl], e                                    ; $4da4: $73
    pop af                                        ; $4da5: $f1

jr_055_4da6:
    sub h                                         ; $4da6: $94
    dec bc                                        ; $4da7: $0b
    ld c, $70                                     ; $4da8: $0e $70
    ld e, a                                       ; $4daa: $5f
    or l                                          ; $4dab: $b5

jr_055_4dac:
    call nz, $ed22                                ; $4dac: $c4 $22 $ed
    add a                                         ; $4daf: $87
    ld d, c                                       ; $4db0: $51
    ld c, e                                       ; $4db1: $4b
    cp a                                          ; $4db2: $bf
    ld a, [c]                                     ; $4db3: $f2
    ld [bc], a                                    ; $4db4: $02
    or l                                          ; $4db5: $b5
    cpl                                           ; $4db6: $2f
    or d                                          ; $4db7: $b2
    ccf                                           ; $4db8: $3f
    ld [hl+], a                                   ; $4db9: $22
    ld [hl], c                                    ; $4dba: $71
    ld c, e                                       ; $4dbb: $4b
    call z, $fa53                                 ; $4dbc: $cc $53 $fa
    adc b                                         ; $4dbf: $88
    ld d, a                                       ; $4dc0: $57

jr_055_4dc1:
    db $e3                                        ; $4dc1: $e3
    rst $18                                       ; $4dc2: $df
    jp c, $b763                                   ; $4dc3: $da $63 $b7

    db $e3                                        ; $4dc6: $e3
    pop af                                        ; $4dc7: $f1
    ld l, a                                       ; $4dc8: $6f
    ld [hl], b                                    ; $4dc9: $70
    cp l                                          ; $4dca: $bd
    db $eb                                        ; $4dcb: $eb
    ld c, e                                       ; $4dcc: $4b
    ret z                                         ; $4dcd: $c8

    call z, $f167                                 ; $4dce: $cc $67 $f1
    ret                                           ; $4dd1: $c9


    ld a, [hl]                                    ; $4dd2: $7e
    adc h                                         ; $4dd3: $8c
    ld e, $bf                                     ; $4dd4: $1e $bf
    dec a                                         ; $4dd6: $3d
    add hl, sp                                    ; $4dd7: $39
    ret                                           ; $4dd8: $c9


    xor e                                         ; $4dd9: $ab
    pop de                                        ; $4dda: $d1
    cp c                                          ; $4ddb: $b9
    add $5f                                       ; $4ddc: $c6 $5f
    jp nz, $9adc                                  ; $4dde: $c2 $dc $9a

    ld l, e                                       ; $4de1: $6b
    call $bb18                                    ; $4de2: $cd $18 $bb
    halt                                          ; $4de5: $76
    ld [hl-], a                                   ; $4de6: $32
    ld e, $fe                                     ; $4de7: $1e $fe
    add a                                         ; $4de9: $87
    ld a, l                                       ; $4dea: $7d
    jr nz, @+$04                                  ; $4deb: $20 $02

    or a                                          ; $4ded: $b7
    jr c, jr_055_4da6                             ; $4dee: $38 $b6

    rla                                           ; $4df0: $17
    ld e, h                                       ; $4df1: $5c
    jp c, $cb61                                   ; $4df2: $da $61 $cb

    ld a, [hl-]                                   ; $4df5: $3a
    ld c, $c3                                     ; $4df6: $0e $c3
    call nc, $c724                                ; $4df8: $d4 $24 $c7
    pop af                                        ; $4dfb: $f1
    ld l, a                                       ; $4dfc: $6f
    jp hl                                         ; $4dfd: $e9


    rla                                           ; $4dfe: $17
    dec a                                         ; $4dff: $3d
    cp $6d                                        ; $4e00: $fe $6d
    ld [hl], h                                    ; $4e02: $74
    ld a, [hl]                                    ; $4e03: $7e
    dec e                                         ; $4e04: $1d
    ld e, e                                       ; $4e05: $5b
    jr nz, @+$04                                  ; $4e06: $20 $02

    or a                                          ; $4e08: $b7
    jr c, jr_055_4dc1                             ; $4e09: $38 $b6

    rla                                           ; $4e0b: $17
    ld e, h                                       ; $4e0c: $5c
    jp c, $8b29                                   ; $4e0d: $da $29 $8b

    ld a, b                                       ; $4e10: $78
    ld c, l                                       ; $4e11: $4d
    adc a                                         ; $4e12: $8f
    ld l, a                                       ; $4e13: $6f
    xor [hl]                                      ; $4e14: $ae
    dec e                                         ; $4e15: $1d
    or [hl]                                       ; $4e16: $b6
    inc b                                         ; $4e17: $04
    add [hl]                                      ; $4e18: $86
    ld [$55f7], sp                                ; $4e19: $08 $f7 $55
    ld d, a                                       ; $4e1c: $57
    or d                                          ; $4e1d: $b2
    ccf                                           ; $4e1e: $3f
    pop af                                        ; $4e1f: $f1
    ld h, c                                       ; $4e20: $61
    xor a                                         ; $4e21: $af
    jp hl                                         ; $4e22: $e9


    pop de                                        ; $4e23: $d1
    db $10                                        ; $4e24: $10
    ld bc, $55f7                                  ; $4e25: $01 $f7 $55
    ld d, a                                       ; $4e28: $57
    or d                                          ; $4e29: $b2
    ccf                                           ; $4e2a: $3f
    ld a, [hl-]                                   ; $4e2b: $3a
    ld d, a                                       ; $4e2c: $57
    db $fd                                        ; $4e2d: $fd
    ldh [$35], a                                  ; $4e2e: $e0 $35
    dec a                                         ; $4e30: $3d
    ld a, [de]                                    ; $4e31: $1a
    ld [hl+], a                                   ; $4e32: $22
    or a                                          ; $4e33: $b7
    jr c, @-$48                                   ; $4e34: $38 $b6

    rla                                           ; $4e36: $17
    ld e, h                                       ; $4e37: $5c
    jp c, $cb61                                   ; $4e38: $da $61 $cb

    sub h                                         ; $4e3b: $94
    ld b, l                                       ; $4e3c: $45
    cp h                                          ; $4e3d: $bc
    ld hl, sp-$32                                 ; $4e3e: $f8 $ce
    ld a, c                                       ; $4e40: $79
    ld [hl], e                                    ; $4e41: $73
    ld c, l                                       ; $4e42: $4d
    ld h, a                                       ; $4e43: $67
    rst $28                                       ; $4e44: $ef
    dec h                                         ; $4e45: $25
    ld d, e                                       ; $4e46: $53
    push af                                       ; $4e47: $f5
    ld l, c                                       ; $4e48: $69
    add [hl]                                      ; $4e49: $86
    ld [$bdf7], sp                                ; $4e4a: $08 $f7 $bd
    ld [hl], e                                    ; $4e4d: $73
    ld b, [hl]                                    ; $4e4e: $46
    ld d, d                                       ; $4e4f: $52
    jp c, $f329                                   ; $4e50: $da $29 $f3

    ld b, h                                       ; $4e53: $44
    db $e3                                        ; $4e54: $e3
    add l                                         ; $4e55: $85
    call c, $f312                                 ; $4e56: $dc $12 $f3
    ld e, h                                       ; $4e59: $5c
    dec bc                                        ; $4e5a: $0b
    db $ed                                        ; $4e5b: $ed
    ld sp, $22cf                                  ; $4e5c: $31 $cf $22
    inc d                                         ; $4e5f: $14
    ld b, h                                       ; $4e60: $44
    dec a                                         ; $4e61: $3d
    xor a                                         ; $4e62: $af
    and [hl]                                      ; $4e63: $a6
    db $f4                                        ; $4e64: $f4
    push bc                                       ; $4e65: $c5
    ld e, h                                       ; $4e66: $5c
    ld l, h                                       ; $4e67: $6c
    xor $85                                       ; $4e68: $ee $85
    nop                                           ; $4e6a: $00
    rst $30                                       ; $4e6b: $f7
    ld hl, sp+$43                                 ; $4e6c: $f8 $43
    inc b                                         ; $4e6e: $04
    dec a                                         ; $4e6f: $3d
    ld d, $9e                                     ; $4e70: $16 $9e
    ld [hl-], a                                   ; $4e72: $32
    rst $28                                       ; $4e73: $ef
    ret z                                         ; $4e74: $c8

    dec hl                                        ; $4e75: $2b
    sub $4e                                       ; $4e76: $d6 $4e

jr_055_4e78:
    dec a                                         ; $4e78: $3d
    cp b                                          ; $4e79: $b8
    ld a, $0e                                     ; $4e7a: $3e $0e
    adc e                                         ; $4e7c: $8b
    ld c, a                                       ; $4e7d: $4f
    or $63                                        ; $4e7e: $f6 $63
    db $f4                                        ; $4e80: $f4
    jp nc, $efed                                  ; $4e81: $d2 $ed $ef

    jr nc, jr_055_4eeb                            ; $4e84: $30 $65

    ld d, c                                       ; $4e86: $51
    ld e, $e1                                     ; $4e87: $1e $e1
    jp c, $e11f                                   ; $4e89: $da $1f $e1

    and $a9                                       ; $4e8c: $e6 $a9
    rla                                           ; $4e8e: $17
    jr nz, jr_055_4e93                            ; $4e8f: $20 $02

    dec a                                         ; $4e91: $3d
    xor a                                         ; $4e92: $af

jr_055_4e93:
    ld c, d                                       ; $4e93: $4a
    and e                                         ; $4e94: $a3
    sbc l                                         ; $4e95: $9d
    ld d, b                                       ; $4e96: $50
    dec [hl]                                      ; $4e97: $35
    and l                                         ; $4e98: $a5
    rst $08                                       ; $4e99: $cf
    dec [hl]                                      ; $4e9a: $35
    jp c, Jump_055_7ea5                           ; $4e9b: $da $a5 $7e

    ret nc                                        ; $4e9e: $d0

    ld c, [hl]                                    ; $4e9f: $4e
    push de                                       ; $4ea0: $d5
    xor e                                         ; $4ea1: $ab
    dec h                                         ; $4ea2: $25
    ld a, a                                       ; $4ea3: $7f
    db $fc                                        ; $4ea4: $fc
    ld e, e                                       ; $4ea5: $5b
    ld a, [$8f45]                                 ; $4ea6: $fa $45 $8f
    ld a, a                                       ; $4ea9: $7f
    ld e, e                                       ; $4eaa: $5b
    rst $28                                       ; $4eab: $ef
    rst $10                                       ; $4eac: $d7
    jr c, jr_055_4e78                             ; $4ead: $38 $c9

    push bc                                       ; $4eaf: $c5
    db $10                                        ; $4eb0: $10
    ld bc, $fadd                                  ; $4eb1: $01 $dd $fa
    jp nc, $3bcd                                  ; $4eb4: $d2 $cd $3b

    xor h                                         ; $4eb7: $ac
    add hl, bc                                    ; $4eb8: $09
    cp h                                          ; $4eb9: $bc
    inc de                                        ; $4eba: $13
    sbc a                                         ; $4ebb: $9f
    ld d, d                                       ; $4ebc: $52
    jp c, $cb61                                   ; $4ebd: $da $61 $cb

    ld c, $55                                     ; $4ec0: $0e $55
    ld d, $cf                                     ; $4ec2: $16 $cf
    or l                                          ; $4ec4: $b5
    and $60                                       ; $4ec5: $e6 $60
    sbc [hl]                                      ; $4ec7: $9e
    ld d, b                                       ; $4ec8: $50
    db $10                                        ; $4ec9: $10
    ld bc, $fadd                                  ; $4eca: $01 $dd $fa
    adc b                                         ; $4ecd: $88
    ld d, a                                       ; $4ece: $57
    ld c, e                                       ; $4ecf: $4b
    ld a, [$1e2a]                                 ; $4ed0: $fa $2a $1e
    sub c                                         ; $4ed3: $91
    rst $08                                       ; $4ed4: $cf
    sbc d                                         ; $4ed5: $9a
    add e                                         ; $4ed6: $83
    ld b, l                                       ; $4ed7: $45
    cp e                                          ; $4ed8: $bb
    db $e3                                        ; $4ed9: $e3
    ld e, d                                       ; $4eda: $5a
    rst $00                                       ; $4edb: $c7
    ld bc, $dd22                                  ; $4edc: $01 $22 $dd
    ld a, [$6b8e]                                 ; $4edf: $fa $8e $6b
    ld e, b                                       ; $4ee2: $58
    db $e3                                        ; $4ee3: $e3
    and l                                         ; $4ee4: $a5
    xor l                                         ; $4ee5: $ad
    jp z, Jump_055_79d3                           ; $4ee6: $ca $d3 $79

    ld d, $d9                                     ; $4ee9: $16 $d9

jr_055_4eeb:
    ld sp, hl                                     ; $4eeb: $f9
    add a                                         ; $4eec: $87
    rst $10                                       ; $4eed: $d7
    ld [hl], c                                    ; $4eee: $71
    ret c                                         ; $4eef: $d8

    and c                                         ; $4ef0: $a1
    and [hl]                                      ; $4ef1: $a6
    inc e                                         ; $4ef2: $1c
    jr nz, jr_055_4ef7                            ; $4ef3: $20 $02

    ld a, l                                       ; $4ef5: $7d
    inc e                                         ; $4ef6: $1c

jr_055_4ef7:
    ld b, [hl]                                    ; $4ef7: $46
    ld d, b                                       ; $4ef8: $50
    and h                                         ; $4ef9: $a4
    ld l, e                                       ; $4efa: $6b
    ld c, d                                       ; $4efb: $4a
    rra                                           ; $4efc: $1f
    ld c, l                                       ; $4efd: $4d
    push de                                       ; $4efe: $d5
    inc l                                         ; $4eff: $2c
    ld c, e                                       ; $4f00: $4b
    ld e, e                                       ; $4f01: $5b
    sub l                                         ; $4f02: $95
    ld b, a                                       ; $4f03: $47
    scf                                           ; $4f04: $37
    dec c                                         ; $4f05: $0d
    db $eb                                        ; $4f06: $eb
    dec [hl]                                      ; $4f07: $35
    ld h, l                                       ; $4f08: $65
    ld de, $3c2f                                  ; $4f09: $11 $2f $3c
    add hl, bc                                    ; $4f0c: $09
    ld d, $88                                     ; $4f0d: $16 $88
    nop                                           ; $4f0f: $00
    dec a                                         ; $4f10: $3d

Jump_055_4f11:
    ret                                           ; $4f11: $c9


    ccf                                           ; $4f12: $3f
    ld d, e                                       ; $4f13: $53
    ld a, [$5ce8]                                 ; $4f14: $fa $e8 $5c
    ld a, h                                       ; $4f17: $7c
    call z, $1aec                                 ; $4f18: $cc $ec $1a
    dec [hl]                                      ; $4f1b: $35
    ld a, [hl]                                    ; $4f1c: $7e
    and h                                         ; $4f1d: $a4
    or l                                          ; $4f1e: $b5
    dec sp                                        ; $4f1f: $3b
    pop af                                        ; $4f20: $f1
    or l                                          ; $4f21: $b5

jr_055_4f22:
    dec h                                         ; $4f22: $25
    ld a, a                                       ; $4f23: $7f
    ld a, [hl-]                                   ; $4f24: $3a
    rra                                           ; $4f25: $1f
    or [hl]                                       ; $4f26: $b6
    ld a, [c]                                     ; $4f27: $f2
    inc l                                         ; $4f28: $2c
    ld [hl], e                                    ; $4f29: $73
    or b                                          ; $4f2a: $b0
    inc c                                         ; $4f2b: $0c
    ld a, a                                       ; $4f2c: $7f
    ld de, $8d63                                  ; $4f2d: $11 $63 $8d
    ldh a, [$f8]                                  ; $4f30: $f0 $f8
    or a                                          ; $4f32: $b7
    push af                                       ; $4f33: $f5
    ld d, l                                       ; $4f34: $55
    ld e, $9d                                     ; $4f35: $1e $9d
    ld l, e                                       ; $4f37: $6b
    jp z, $2201                                   ; $4f38: $ca $01 $22

    or a                                          ; $4f3b: $b7
    ld e, b                                       ; $4f3c: $58
    sub l                                         ; $4f3d: $95
    rst $10                                       ; $4f3e: $d7
    inc [hl]                                      ; $4f3f: $34
    ld sp, $ca7a                                  ; $4f40: $31 $7a $ca
    ld [hl+], a                                   ; $4f43: $22
    ld e, [hl]                                    ; $4f44: $5e
    ld a, b                                       ; $4f45: $78
    ld [de], a                                    ; $4f46: $12
    inc l                                         ; $4f47: $2c
    jp c, $54d1                                   ; $4f48: $da $d1 $54

    dec l                                         ; $4f4b: $2d
    ld sp, hl                                     ; $4f4c: $f9
    inc hl                                        ; $4f4d: $23
    jr z, jr_055_4f22                             ; $4f4e: $28 $d2

    db $10                                        ; $4f50: $10
    ld bc, $1c7d                                  ; $4f51: $01 $7d $1c
    ld b, [hl]                                    ; $4f54: $46
    ld d, b                                       ; $4f55: $50
    and h                                         ; $4f56: $a4
    ld l, e                                       ; $4f57: $6b
    ld c, d                                       ; $4f58: $4a
    rst $18                                       ; $4f59: $df
    adc a                                         ; $4f5a: $8f
    pop de                                        ; $4f5b: $d1
    ld [hl], e                                    ; $4f5c: $73
    xor l                                         ; $4f5d: $ad
    db $fd                                        ; $4f5e: $fd
    add sp, $1d                                   ; $4f5f: $e8 $1d
    sub $04                                       ; $4f61: $d6 $04
    sbc $89                                       ; $4f63: $de $89
    ld c, a                                       ; $4f65: $4f
    xor c                                         ; $4f66: $a9
    add hl, hl                                    ; $4f67: $29
    adc e                                         ; $4f68: $8b
    ld a, b                                       ; $4f69: $78
    pop hl                                        ; $4f6a: $e1
    ld c, c                                       ; $4f6b: $49
    or b                                          ; $4f6c: $b0
    ld b, b                                       ; $4f6d: $40
    inc b                                         ; $4f6e: $04
    db $dd                                        ; $4f6f: $dd
    ld a, [$b35c]                                 ; $4f70: $fa $5c $b3
    inc c                                         ; $4f73: $0c
    ld h, a                                       ; $4f74: $67
    push af                                       ; $4f75: $f5
    jp $d3f0                                      ; $4f76: $c3 $f0 $d3


    ld c, e                                       ; $4f79: $4b
    dec sp                                        ; $4f7a: $3b
    ld c, h                                       ; $4f7b: $4c
    xor l                                         ; $4f7c: $ad
    db $e3                                        ; $4f7d: $e3
    or b                                          ; $4f7e: $b0
    di                                            ; $4f7f: $f3
    ld hl, $b702                                  ; $4f80: $21 $02 $b7
    call nc, $f24b                                ; $4f83: $d4 $4b $f2
    add sp, $5c                                   ; $4f86: $e8 $5c
    ld a, e                                       ; $4f88: $7b
    inc a                                         ; $4f89: $3c
    and l                                         ; $4f8a: $a5
    cpl                                           ; $4f8b: $2f
    ld h, [hl]                                    ; $4f8c: $66
    adc h                                         ; $4f8d: $8c
    ld e, l                                       ; $4f8e: $5d
    db $e3                                        ; $4f8f: $e3
    rst $18                                       ; $4f90: $df
    jp nc, Jump_055_7a2f                          ; $4f91: $d2 $2f $7a

jr_055_4f94:
    ld h, [hl]                                    ; $4f94: $66
    halt                                          ; $4f95: $76
    call $8cb2                                    ; $4f96: $cd $b2 $8c
    jp $3093                                      ; $4f99: $c3 $93 $30


    cp $0d                                        ; $4f9c: $fe $0d
    ld [hl+], a                                   ; $4f9e: $22
    db $dd                                        ; $4f9f: $dd
    ld a, [$afc2]                                 ; $4fa0: $fa $c2 $af
    add hl, hl                                    ; $4fa3: $29
    add a                                         ; $4fa4: $87
    sbc l                                         ; $4fa5: $9d
    daa                                           ; $4fa6: $27
    ld [c], a                                     ; $4fa7: $e2
    or $c3                                        ; $4fa8: $f6 $c3
    ld a, [hl]                                    ; $4faa: $7e
    adc h                                         ; $4fab: $8c
    ld e, [hl]                                    ; $4fac: $5e
    inc sp                                        ; $4fad: $33
    or e                                          ; $4fae: $b3
    halt                                          ; $4faf: $76
    sbc b                                         ; $4fb0: $98
    ld e, d                                       ; $4fb1: $5a
    rst $00                                       ; $4fb2: $c7
    ld h, c                                       ; $4fb3: $61
    rst $20                                       ; $4fb4: $e7
    ld b, e                                       ; $4fb5: $43
    inc b                                         ; $4fb6: $04
    ld [hl], a                                    ; $4fb7: $77
    add hl, sp                                    ; $4fb8: $39
    ld e, b                                       ; $4fb9: $58
    add [hl]                                      ; $4fba: $86
    xor c                                         ; $4fbb: $a9
    push bc                                       ; $4fbc: $c5
    adc [hl]                                      ; $4fbd: $8e
    ld b, l                                       ; $4fbe: $45
    inc a                                         ; $4fbf: $3c
    push hl                                       ; $4fc0: $e5
    or b                                          ; $4fc1: $b0
    ldh a, [$e4]                                  ; $4fc2: $f0 $e4
    ld b, h                                       ; $4fc4: $44
    cpl                                           ; $4fc5: $2f
    ld h, h                                       ; $4fc6: $64
    push bc                                       ; $4fc7: $c5
    inc sp                                        ; $4fc8: $33
    or e                                          ; $4fc9: $b3
    ld l, e                                       ; $4fca: $6b
    ld b, h                                       ; $4fcb: $44
    ld [c], a                                     ; $4fcc: $e2
    ld h, d                                       ; $4fcd: $62
    adc b                                         ; $4fce: $88
    nop                                           ; $4fcf: $00
    db $dd                                        ; $4fd0: $dd
    ld a, [$fb5c]                                 ; $4fd1: $fa $5c $fb
    and e                                         ; $4fd4: $a3
    ld e, l                                       ; $4fd5: $5d
    ld l, d                                       ; $4fd6: $6a
    ret c                                         ; $4fd7: $d8

    ld l, d                                       ; $4fd8: $6a
    call nc, $edd2                                ; $4fd9: $d4 $d2 $ed
    ld c, a                                       ; $4fdc: $4f
    inc hl                                        ; $4fdd: $23
    xor d                                         ; $4fde: $aa
    ld a, l                                       ; $4fdf: $7d
    add hl, bc                                    ; $4fe0: $09
    daa                                           ; $4fe1: $27
    ld [$2ca2], a                                 ; $4fe2: $ea $a2 $2c
    ld c, e                                       ; $4fe5: $4b
    xor b                                         ; $4fe6: $a8
    add d                                         ; $4fe7: $82
    ld [$ffb7], sp                                ; $4fe8: $08 $b7 $ff
    jr jr_055_4f94                                ; $4feb: $18 $a7

    db $f4                                        ; $4fed: $f4
    pop af                                        ; $4fee: $f1
    adc e                                         ; $4fef: $8b
    ei                                            ; $4ff0: $fb
    adc e                                         ; $4ff1: $8b
    cp c                                          ; $4ff2: $b9
    ret c                                         ; $4ff3: $d8

    call c, $010b                                 ; $4ff4: $dc $0b $01
    ld a, l                                       ; $4ff7: $7d
    ld e, $5c                                     ; $4ff8: $1e $5c
    adc a                                         ; $4ffa: $8f
    ld l, e                                       ; $4ffb: $6b
    call nz, Call_000_29ab                        ; $4ffc: $c4 $ab $29
    ld a, l                                       ; $4fff: $7d
    ld b, h                                       ; $5000: $44
    ld [c], a                                     ; $5001: $e2
    sub [hl]                                      ; $5002: $96
    ld c, b                                       ; $5003: $48
    ld d, a                                       ; $5004: $57
    adc h                                         ; $5005: $8c
    ld l, [hl]                                    ; $5006: $6e
    sub [hl]                                      ; $5007: $96
    xor c                                         ; $5008: $a9
    cpl                                           ; $5009: $2f
    ld [hl], b                                    ; $500a: $70
    add b                                         ; $500b: $80
    rst $38                                       ; $500c: $ff
    add hl, sp                                    ; $500d: $39
    db $ec                                        ; $500e: $ec
    add hl, hl                                    ; $500f: $29
    ld a, l                                       ; $5010: $7d
    adc a                                         ; $5011: $8f
    and a                                         ; $5012: $a7
    call z, $5e4b                                 ; $5013: $cc $4b $5e
    call $9c3c                                    ; $5016: $cd $3c $9c
    push hl                                       ; $5019: $e5
    or b                                          ; $501a: $b0
    ld l, e                                       ; $501b: $6b
    ld a, a                                       ; $501c: $7f
    ld b, h                                       ; $501d: $44
    ld [c], a                                     ; $501e: $e2
    sub [hl]                                      ; $501f: $96
    sbc b                                         ; $5020: $98
    and a                                         ; $5021: $a7
    ld a, $73                                     ; $5022: $3e $73
    cpl                                           ; $5024: $2f
    inc b                                         ; $5025: $04
    rst $30                                       ; $5026: $f7
    ld hl, sp-$3d                                 ; $5027: $f8 $c3
    push af                                       ; $5029: $f5
    ld [hl], c                                    ; $502a: $71
    jr @-$58                                      ; $502b: $18 $a6

    halt                                          ; $502d: $76
    cp $3a                                        ; $502e: $fe $3a
    ld c, $4b                                     ; $5030: $0e $4b
    inc l                                         ; $5032: $2c
    ld l, h                                       ; $5033: $6c
    sbc $e3                                       ; $5034: $de $e3
    db $dd                                        ; $5036: $dd
    sbc $7e                                       ; $5037: $de $7e
    add l                                         ; $5039: $85
    call z, $13bc                                 ; $503a: $cc $bc $13
    push af                                       ; $503d: $f5
    sub $3c                                       ; $503e: $d6 $3c
    ld [c], a                                     ; $5040: $e2
    dec l                                         ; $5041: $2d
    ld l, l                                       ; $5042: $6d
    ld d, l                                       ; $5043: $55
    sbc $89                                       ; $5044: $de $89
    ld c, a                                       ; $5046: $4f
    ld e, c                                       ; $5047: $59
    ld l, c                                       ; $5048: $69
    ld a, [hl+]                                   ; $5049: $2a
    ld h, [hl]                                    ; $504a: $66
    pop hl                                        ; $504b: $e1
    jp z, $c1ad                                   ; $504c: $ca $ad $c1

    ld [hl], l                                    ; $504f: $75
    cp a                                          ; $5050: $bf
    cp c                                          ; $5051: $b9
    ld b, [hl]                                    ; $5052: $46
    inc a                                         ; $5053: $3c
    ld d, c                                       ; $5054: $51
    ld l, [hl]                                    ; $5055: $6e
    sub [hl]                                      ; $5056: $96
    dec h                                         ; $5057: $25
    ld d, h                                       ; $5058: $54
    dec l                                         ; $5059: $2d
    sub e                                         ; $505a: $93
    db $e4                                        ; $505b: $e4
    dec h                                         ; $505c: $25
    bit 4, c                                      ; $505d: $cb $61
    cpl                                           ; $505f: $2f
    add hl, bc                                    ; $5060: $09
    sbc l                                         ; $5061: $9d
    ld e, h                                       ; $5062: $5c
    inc c                                         ; $5063: $0c
    rst $10                                       ; $5064: $d7
    dec sp                                        ; $5065: $3b
    xor e                                         ; $5066: $ab
    or c                                          ; $5067: $b1
    ld e, [hl]                                    ; $5068: $5e
    db $e3                                        ; $5069: $e3
    rst $18                                       ; $506a: $df
    jp nc, Jump_055_7a2f                          ; $506b: $d2 $2f $7a

    db $fc                                        ; $506e: $fc
    db $db                                        ; $506f: $db
    ld a, d                                       ; $5070: $7a
    cp a                                          ; $5071: $bf
    add $49                                       ; $5072: $c6 $49
    ld l, $86                                     ; $5074: $2e $86
    ld [$d5b7], sp                                ; $5076: $08 $b7 $d5
    sub d                                         ; $5079: $92
    ccf                                           ; $507a: $3f
    jp nz, Jump_055_478d                          ; $507b: $c2 $8d $47

    cp e                                          ; $507e: $bb
    call nc, Call_000_130f                        ; $507f: $d4 $0f $13
    ld c, d                                       ; $5082: $4a
    cp e                                          ; $5083: $bb
    sbc [hl]                                      ; $5084: $9e
    ld d, a                                       ; $5085: $57
    and l                                         ; $5086: $a5
    jp hl                                         ; $5087: $e9


    add l                                         ; $5088: $85
    nop                                           ; $5089: $00
    ld a, l                                       ; $508a: $7d
    inc e                                         ; $508b: $1c
    add $95                                       ; $508c: $c6 $95
    ld l, e                                       ; $508e: $6b
    jp z, Jump_055_770c                           ; $508f: $ca $0c $77

    or a                                          ; $5092: $b7
    ld h, l                                       ; $5093: $65
    jp z, $e4bc                                   ; $5094: $ca $bc $e4

    ld d, a                                       ; $5097: $57
    ld [hl], h                                    ; $5098: $74
    xor l                                         ; $5099: $ad
    ld a, l                                       ; $509a: $7d
    and $61                                       ; $509b: $e6 $61
    call Call_055_7fe1                            ; $509d: $cd $e1 $7f
    and d                                         ; $50a0: $a2
    halt                                          ; $50a1: $76
    xor a                                         ; $50a2: $af
    pop af                                        ; $50a3: $f1
    adc $c3                                       ; $50a4: $ce $c3
    ret c                                         ; $50a6: $d8

    ld [bc], a                                    ; $50a7: $02
    ld hl, $b744                                  ; $50a8: $21 $44 $b7
    cp e                                          ; $50ab: $bb
    or l                                          ; $50ac: $b5
    or a                                          ; $50ad: $b7
    db $d3                                        ; $50ae: $d3
    ld a, [c]                                     ; $50af: $f2
    ld l, b                                       ; $50b0: $68
    rst $38                                       ; $50b1: $ff
    ld b, $d7                                     ; $50b2: $06 $d7
    xor l                                         ; $50b4: $ad
    rst $08                                       ; $50b5: $cf
    or l                                          ; $50b6: $b5
    jp $e8ae                                      ; $50b7: $c3 $ae $e8


jr_055_50ba:
    ld a, [c]                                     ; $50ba: $f2
    inc l                                         ; $50bb: $2c
    or d                                          ; $50bc: $b2
    adc [hl]                                      ; $50bd: $8e
    jp $b2b8                                      ; $50be: $c3 $b8 $b2


    ld d, d                                       ; $50c1: $52
    sub $ae                                       ; $50c2: $d6 $ae
    rst $20                                       ; $50c4: $e7
    ld d, l                                       ; $50c5: $55
    ld l, c                                       ; $50c6: $69
    halt                                          ; $50c7: $76
    ld e, a                                       ; $50c8: $5f
    ld h, [hl]                                    ; $50c9: $66
    halt                                          ; $50ca: $76
    ld b, c                                       ; $50cb: $41
    inc b                                         ; $50cc: $04
    db $dd                                        ; $50cd: $dd
    cp $ed                                        ; $50ce: $fe $ed
    add a                                         ; $50d0: $87
    xor c                                         ; $50d1: $a9
    rla                                           ; $50d2: $17
    or h                                          ; $50d3: $b4
    ei                                            ; $50d4: $fb
    ld sp, $e77a                                  ; $50d5: $31 $7a $e7
    add hl, bc                                    ; $50d8: $09
    rst $30                                       ; $50d9: $f7
    ld b, d                                       ; $50da: $42
    ld a, l                                       ; $50db: $7d
    inc e                                         ; $50dc: $1c
    ld b, [hl]                                    ; $50dd: $46
    add sp, $27                                   ; $50de: $e8 $27
    cp d                                          ; $50e0: $ba
    add [hl]                                      ; $50e1: $86
    cp a                                          ; $50e2: $bf
    call z, $b2c1                                 ; $50e3: $cc $c1 $b2
    inc de                                        ; $50e6: $13
    ld [hl], e                                    ; $50e7: $73
    inc sp                                        ; $50e8: $33
    ld a, a                                       ; $50e9: $7f
    dec [hl]                                      ; $50ea: $35
    sub d                                         ; $50eb: $92
    ld e, d                                       ; $50ec: $5a
    rst $28                                       ; $50ed: $ef
    rst $10                                       ; $50ee: $d7
    jr c, jr_055_50ba                             ; $50ef: $38 $c9

    push bc                                       ; $50f1: $c5
    ld [hl], b                                    ; $50f2: $70
    scf                                           ; $50f3: $37
    or a                                          ; $50f4: $b7
    and $29                                       ; $50f5: $e6 $29
    adc a                                         ; $50f7: $8f
    jr nc, @-$38                                  ; $50f8: $30 $c6

    ld l, [hl]                                    ; $50fa: $6e
    ccf                                           ; $50fb: $3f
    ld a, b                                       ; $50fc: $78
    pop hl                                        ; $50fd: $e1
    ld c, c                                       ; $50fe: $49
    or b                                          ; $50ff: $b0
    ld a, b                                       ; $5100: $78
    daa                                           ; $5101: $27
    db $e3                                        ; $5102: $e3
    add l                                         ; $5103: $85
    ld c, [hl]                                    ; $5104: $4e
    ld l, $e5                                     ; $5105: $2e $e5
    add hl, hl                                    ; $5107: $29
    di                                            ; $5108: $f3
    sbc d                                         ; $5109: $9a
    sbc c                                         ; $510a: $99
    ld b, a                                       ; $510b: $47
    dec l                                         ; $510c: $2d
    ld h, [hl]                                    ; $510d: $66
    adc h                                         ; $510e: $8c
    dec a                                         ; $510f: $3d
    cp $ea                                        ; $5110: $fe $ea
    ld c, b                                       ; $5112: $48
    adc [hl]                                      ; $5113: $8e
    db $e3                                        ; $5114: $e3
    rst $18                                       ; $5115: $df
    add $1f                                       ; $5116: $c6 $1f
    ld e, e                                       ; $5118: $5b
    inc c                                         ; $5119: $0c
    ld de, $af3d                                  ; $511a: $11 $3d $af
    and [hl]                                      ; $511d: $a6
    db $f4                                        ; $511e: $f4
    db $dd                                        ; $511f: $dd
    ld e, c                                       ; $5120: $59
    sub [hl]                                      ; $5121: $96
    ret nc                                        ; $5122: $d0

    cp h                                          ; $5123: $bc

jr_055_5124:
    sub e                                         ; $5124: $93
    pop af                                        ; $5125: $f1
    ld e, d                                       ; $5126: $5a
    ld e, a                                       ; $5127: $5f
    push hl                                       ; $5128: $e5
    ld [$9eb5], a                                 ; $5129: $ea $b5 $9e
    daa                                           ; $512c: $27
    ld c, e                                       ; $512d: $4b
    ld a, [hl]                                    ; $512e: $7e
    ld b, l                                       ; $512f: $45
    di                                            ; $5130: $f3
    jp c, Jump_000_278f                           ; $5131: $da $8f $27

    db $e3                                        ; $5134: $e3
    db $fd                                        ; $5135: $fd
    jr jr_055_5175                                ; $5136: $18 $3d

    jp nz, Jump_055_778d                          ; $5138: $c2 $8d $77

    inc e                                         ; $513b: $1c
    halt                                          ; $513c: $76
    call c, $ed12                                 ; $513d: $dc $12 $ed
    adc $3f                                       ; $5140: $ce $3f
    cp h                                          ; $5142: $bc
    adc [hl]                                      ; $5143: $8e
    jp $350e                                      ; $5144: $c3 $0e $35


    ld [c], a                                     ; $5147: $e2
    ld h, c                                       ; $5148: $61
    adc b                                         ; $5149: $88
    nop                                           ; $514a: $00
    or a                                          ; $514b: $b7
    rst $20                                       ; $514c: $e7
    ld l, d                                       ; $514d: $6a
    ld d, [hl]                                    ; $514e: $56
    sub [hl]                                      ; $514f: $96
    push bc                                       ; $5150: $c5
    call nz, $ed4d                                ; $5151: $c4 $4d $ed
    ld d, b                                       ; $5154: $50
    db $eb                                        ; $5155: $eb
    jr c, jr_055_5124                             ; $5156: $38 $cc

    ld [hl-], a                                   ; $5158: $32
    call c, Call_055_7155                         ; $5159: $dc $55 $71
    daa                                           ; $515c: $27
    cp $18                                        ; $515d: $fe $18
    db $dd                                        ; $515f: $dd
    adc [hl]                                      ; $5160: $8e
    ld [hl], a                                    ; $5161: $77
    ld [hl-], a                                   ; $5162: $32
    sbc $11                                       ; $5163: $de $11
    rst $00                                       ; $5165: $c7
    dec e                                         ; $5166: $1d
    add a                                         ; $5167: $87
    sub l                                         ; $5168: $95
    ld l, $8a                                     ; $5169: $2e $8a
    ld b, a                                       ; $516b: $47
    cp b                                          ; $516c: $b8
    ldh [$ee], a                                  ; $516d: $e0 $ee
    or [hl]                                       ; $516f: $b6
    inc l                                         ; $5170: $2c
    ld a, $39                                     ; $5171: $3e $39
    or c                                          ; $5173: $b1
    db $e3                                        ; $5174: $e3

jr_055_5175:
    add hl, hl                                    ; $5175: $29
    di                                            ; $5176: $f3
    jp nc, $bcaf                                  ; $5177: $d2 $af $bc

    db $e4                                        ; $517a: $e4
    push de                                       ; $517b: $d5
    inc h                                         ; $517c: $24
    ld a, e                                       ; $517d: $7b
    dec e                                         ; $517e: $1d
    add a                                         ; $517f: $87
    ld a, l                                       ; $5180: $7d
    sub c                                         ; $5181: $91
    db $f4                                        ; $5182: $f4
    ld l, a                                       ; $5183: $6f
    db $ec                                        ; $5184: $ec
    ld h, c                                       ; $5185: $61
    rlca                                          ; $5186: $07
    adc b                                         ; $5187: $88
    nop                                           ; $5188: $00
    or a                                          ; $5189: $b7
    rst $20                                       ; $518a: $e7

Jump_055_518b:
    ld l, d                                       ; $518b: $6a
    ld d, [hl]                                    ; $518c: $56
    sub [hl]                                      ; $518d: $96
    push bc                                       ; $518e: $c5
    call nz, Call_000_2d4d                        ; $518f: $c4 $4d $2d

jr_055_5192:
    db $dd                                        ; $5192: $dd
    sbc [hl]                                      ; $5193: $9e
    ld d, d                                       ; $5194: $52
    ld e, [hl]                                    ; $5195: $5e
    rst $00                                       ; $5196: $c7
    ld h, c                                       ; $5197: $61
    and c                                         ; $5198: $a1
    ld h, e                                       ; $5199: $63
    sub c                                         ; $519a: $91
    adc h                                         ; $519b: $8c
    add a                                         ; $519c: $87
    cp a                                          ; $519d: $bf
    inc l                                         ; $519e: $2c
    inc a                                         ; $519f: $3c
    call c, $dbbc                                 ; $51a0: $dc $bc $db
    ld [hl], e                                    ; $51a3: $73
    ei                                            ; $51a4: $fb
    ld a, c                                       ; $51a5: $79
    ld [hl], a                                    ; $51a6: $77
    cp a                                          ; $51a7: $bf
    ldh a, [$e1]                                  ; $51a8: $f0 $e1
    xor $b6                                       ; $51aa: $ee $b6
    xor h                                         ; $51ac: $ac
    db $e3                                        ; $51ad: $e3
    jr nc, jr_055_5192                            ; $51ae: $30 $e2

    push de                                       ; $51b0: $d5
    sub d                                         ; $51b1: $92
    ld a, a                                       ; $51b2: $7f
    ld c, $2f                                     ; $51b3: $0e $2f
    inc [hl]                                      ; $51b5: $34
    ld h, e                                       ; $51b6: $63
    sbc $6b                                       ; $51b7: $de $6b
    call Call_000_1e53                            ; $51b9: $cd $53 $1e
    ld a, [hl]                                    ; $51bc: $7e
    pop hl                                        ; $51bd: $e1
    sbc a                                         ; $51be: $9f
    add sp, -$3b                                  ; $51bf: $e8 $c5
    ld e, h                                       ; $51c1: $5c
    ld a, h                                       ; $51c2: $7c
    ld c, c                                       ; $51c3: $49
    call z, $fd38                                 ; $51c4: $cc $38 $fd
    push hl                                       ; $51c7: $e5
    sbc l                                         ; $51c8: $9d
    ld c, [hl]                                    ; $51c9: $4e
    ld d, $8b                                     ; $51ca: $16 $8b
    ld hl, $b702                                  ; $51cc: $21 $02 $b7
    push de                                       ; $51cf: $d5
    sub h                                         ; $51d0: $94
    ld a, $c2                                     ; $51d1: $3e $c2
    or l                                          ; $51d3: $b5
    rra                                           ; $51d4: $1f
    ld a, [hl-]                                   ; $51d5: $3a
    ld d, $ed                                     ; $51d6: $16 $ed
    ld a, d                                       ; $51d8: $7a
    ld e, [hl]                                    ; $51d9: $5e
    sub l                                         ; $51da: $95
    and [hl]                                      ; $51db: $a6
    rst $10                                       ; $51dc: $d7
    ld l, [hl]                                    ; $51dd: $6e
    ld l, [hl]                                    ; $51de: $6e
    adc l                                         ; $51df: $8d
    cp a                                          ; $51e0: $bf
    ld a, [de]                                    ; $51e1: $1a
    and c                                         ; $51e2: $a1
    add hl, bc                                    ; $51e3: $09
    pop bc                                        ; $51e4: $c1
    db $ed                                        ; $51e5: $ed
    add a                                         ; $51e6: $87
    ld d, c                                       ; $51e7: $51
    dec sp                                        ; $51e8: $3b
    sbc [hl]                                      ; $51e9: $9e
    ld h, l                                       ; $51ea: $65
    rst $30                                       ; $51eb: $f7

Call_055_51ec:
    ld h, l                                       ; $51ec: $65
    ld h, [hl]                                    ; $51ed: $66
    rst $10                                       ; $51ee: $d7
    cp $ba                                        ; $51ef: $fe $ba
    rst $38                                       ; $51f1: $ff
    dec bc                                        ; $51f2: $0b
    ld e, c                                       ; $51f3: $59
    ld e, [hl]                                    ; $51f4: $5e
    ld l, e                                       ; $51f5: $6b
    ret c                                         ; $51f6: $d8

    ld [hl+], a                                   ; $51f7: $22
    ld e, a                                       ; $51f8: $5f
    add d                                         ; $51f9: $82
    dec b                                         ; $51fa: $05
    ld [hl+], a                                   ; $51fb: $22
    dec a                                         ; $51fc: $3d
    cp a                                          ; $51fd: $bf
    sbc l                                         ; $51fe: $9d
    push af                                       ; $51ff: $f5
    add sp, -$48                                  ; $5200: $e8 $b8
    ld sp, hl                                     ; $5202: $f9
    adc b                                         ; $5203: $88
    ld e, [hl]                                    ; $5204: $5e
    dec [hl]                                      ; $5205: $35
    cp d                                          ; $5206: $ba
    sbc $b0                                       ; $5207: $de $b0
    add e                                         ; $5209: $83
    halt                                          ; $520a: $76
    dec a                                         ; $520b: $3d
    xor a                                         ; $520c: $af
    ld c, d                                       ; $520d: $4a
    inc bc                                        ; $520e: $03
    ld de, $c477                                  ; $520f: $11 $77 $c4
    add sp, $59                                   ; $5212: $e8 $59
    add h                                         ; $5214: $84
    jp nc, $ee8e                                  ; $5215: $d2 $8e $ee

jr_055_5218:
    xor d                                         ; $5218: $aa
    jp $d4c3                                      ; $5219: $c3 $c3 $d4


    ld a, [hl-]                                   ; $521c: $3a
    ld c, $a3                                     ; $521d: $0e $a3
    xor c                                         ; $521f: $a9
    dec [hl]                                      ; $5220: $35
    daa                                           ; $5221: $27
    ld l, $1e                                     ; $5222: $2e $1e
    rst $38                                       ; $5224: $ff
    sub [hl]                                      ; $5225: $96
    ld a, [hl]                                    ; $5226: $7e
    pop de                                        ; $5227: $d1

Jump_055_5228:
    ld d, e                                       ; $5228: $53
    ld d, $f1                                     ; $5229: $16 $f1
    and h                                         ; $522b: $a4
    dec hl                                        ; $522c: $2b
    ld b, [hl]                                    ; $522d: $46
    scf                                           ; $522e: $37
    dec bc                                        ; $522f: $0b
    ld b, h                                       ; $5230: $44
    rst $30                                       ; $5231: $f7
    ld d, l                                       ; $5232: $55
    and [hl]                                      ; $5233: $a6
    ld a, l                                       ; $5234: $7d
    ld c, [hl]                                    ; $5235: $4e
    xor [hl]                                      ; $5236: $ae
    db $dd                                        ; $5237: $dd
    ld sp, hl                                     ; $5238: $f9
    rrca                                          ; $5239: $0f
    cp e                                          ; $523a: $bb
    rla                                           ; $523b: $17
    ld [bc], a                                    ; $523c: $02
    ret nz                                        ; $523d: $c0

    pop bc                                        ; $523e: $c1
    add c                                         ; $523f: $81
    inc bc                                        ; $5240: $03
    rlca                                          ; $5241: $07
    ld hl, $61cc                                  ; $5242: $21 $cc $61
    jp z, $f0bc                                   ; $5245: $ca $bc $f0

    ld h, e                                       ; $5248: $63
    call c, $aa6b                                 ; $5249: $dc $6b $aa
    cp $32                                        ; $524c: $fe $32
    ld c, c                                       ; $524e: $49
    adc [hl]                                      ; $524f: $8e
    adc $35                                       ; $5250: $ce $35
    ld h, l                                       ; $5252: $65
    cp h                                          ; $5253: $bc
    rst $00                                       ; $5254: $c7
    ld h, e                                       ; $5255: $63
    ld c, l                                       ; $5256: $4d
    ld [$3a0e], sp                                ; $5257: $08 $0e $3a
    add $7f                                       ; $525a: $c6 $7f
    db $f4                                        ; $525c: $f4
    adc e                                         ; $525d: $8b
    db $fc                                        ; $525e: $fc
    ld c, a                                       ; $525f: $4f
    sbc h                                         ; $5260: $9c
    ld l, e                                       ; $5261: $6b
    sub d                                         ; $5262: $92
    dec a                                         ; $5263: $3d
    db $fc                                        ; $5264: $fc
    jp nz, Jump_000_113f                          ; $5265: $c2 $3f $11

    ld b, d                                       ; $5268: $42
    cp b                                          ; $5269: $b8
    ld a, [hl]                                    ; $526a: $7e
    or l                                          ; $526b: $b5
    inc hl                                        ; $526c: $23
    ld e, [hl]                                    ; $526d: $5e
    ld l, e                                       ; $526e: $6b
    ld e, c                                       ; $526f: $59
    cp e                                          ; $5270: $bb
    sbc [hl]                                      ; $5271: $9e
    ld d, a                                       ; $5272: $57
    and l                                         ; $5273: $a5
    add c                                         ; $5274: $81
    ld [$50f7], sp                                ; $5275: $08 $f7 $50
    inc hl                                        ; $5278: $23
    ld e, [hl]                                    ; $5279: $5e
    xor l                                         ; $527a: $ad
    db $e3                                        ; $527b: $e3
    jr nc, jr_055_5218                            ; $527c: $30 $9a

    ld h, d                                       ; $527e: $62
    ld e, $bf                                     ; $527f: $1e $bf
    cp b                                          ; $5281: $b8
    ccf                                           ; $5282: $3f
    ld h, l                                       ; $5283: $65
    sbc $2d                                       ; $5284: $de $2d
    xor [hl]                                      ; $5286: $ae
    ld l, $cc                                     ; $5287: $2e $cc
    ld e, $e1                                     ; $5289: $1e $e1
    ld a, b                                       ; $528b: $78
    ld e, h                                       ; $528c: $5c
    bit 4, c                                      ; $528d: $cb $61
    ld e, h                                       ; $528f: $5c
    cp c                                          ; $5290: $b9
    dec [hl]                                      ; $5291: $35
    ld l, h                                       ; $5292: $6c
    sub c                                         ; $5293: $91
    ld c, e                                       ; $5294: $4b
    ld h, d                                       ; $5295: $62
    ld l, $36                                     ; $5296: $2e $36
    rrca                                          ; $5298: $0f
    ld e, e                                       ; $5299: $5b
    db $ed                                        ; $529a: $ed
    adc $5f                                       ; $529b: $ce $5f
    pop de                                        ; $529d: $d1
    inc hl                                        ; $529e: $23
    add hl, hl                                    ; $529f: $29
    adc b                                         ; $52a0: $88
    nop                                           ; $52a1: $00
    ld a, l                                       ; $52a2: $7d
    sbc [hl]                                      ; $52a3: $9e
    halt                                          ; $52a4: $76
    dec e                                         ; $52a5: $1d
    add a                                         ; $52a6: $87
    ld [hl], c                                    ; $52a7: $71
    push hl                                       ; $52a8: $e5
    sbc d                                         ; $52a9: $9a
    ld [hl-], a                                   ; $52aa: $32
    rst $08                                       ; $52ab: $cf
    dec [hl]                                      ; $52ac: $35
    ld h, l                                       ; $52ad: $65
    sbc $79                                       ; $52ae: $de $79
    jr jr_055_532d                                ; $52b0: $18 $7b

    ld sp, $9b17                                  ; $52b2: $31 $17 $9b
    pop hl                                        ; $52b5: $e1
    xor $b6                                       ; $52b6: $ee $b6
    adc h                                         ; $52b8: $8c
    ld a, [hl]                                    ; $52b9: $7e
    ld h, l                                       ; $52ba: $65
    sbc c                                         ; $52bb: $99
    ld a, [$e4b2]                                 ; $52bc: $fa $b2 $e4
    or a                                          ; $52bf: $b7
    and $49                                       ; $52c0: $e6 $49
    adc [hl]                                      ; $52c2: $8e
    db $eb                                        ; $52c3: $eb
    sub d                                         ; $52c4: $92
    inc de                                        ; $52c5: $13
    call $3c7b                                    ; $52c6: $cd $7b $3c
    and l                                         ; $52c9: $a5
    rst $28                                       ; $52ca: $ef
    ld b, h                                       ; $52cb: $44
    cp l                                          ; $52cc: $bd
    dec [hl]                                      ; $52cd: $35
    adc a                                         ; $52ce: $8f
    ld a, b                                       ; $52cf: $78
    ld d, e                                       ; $52d0: $53
    ld h, [hl]                                    ; $52d1: $66
    adc b                                         ; $52d2: $88
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    ld e, a                                       ; $52d5: $5f
    adc h                                         ; $52d6: $8c
    jp c, $9591                                   ; $52d7: $da $91 $95

    ld l, c                                       ; $52da: $69
    sbc a                                         ; $52db: $9f
    sub e                                         ; $52dc: $93
    ld l, e                                       ; $52dd: $6b
    ld [hl], a                                    ; $52de: $77
    cp $c3                                        ; $52df: $fe $c3
    ld c, [hl]                                    ; $52e1: $4e
    adc l                                         ; $52e2: $8d
    nop                                           ; $52e3: $00
    add hl, hl                                    ; $52e4: $29
    ld c, l                                       ; $52e5: $4d
    ld h, a                                       ; $52e6: $67
    ld e, $49                                     ; $52e7: $1e $49
    adc l                                         ; $52e9: $8d
    ccf                                           ; $52ea: $3f
    or [hl]                                       ; $52eb: $b6
    ld b, b                                       ; $52ec: $40
    ld [$3821], sp                                ; $52ed: $08 $21 $38
    ld [hl], b                                    ; $52f0: $70
    ldh [$c0], a                                  ; $52f1: $e0 $c0
    add c                                         ; $52f3: $81
    inc bc                                        ; $52f4: $03
    rlca                                          ; $52f5: $07
    ld hl, $1084                                  ; $52f6: $21 $84 $10
    ld bc, $c1c0                                  ; $52f9: $01 $c0 $c1
    add c                                         ; $52fc: $81
    inc bc                                        ; $52fd: $03
    rlca                                          ; $52fe: $07
    ld hl, $0884                                  ; $52ff: $21 $84 $08
    or a                                          ; $5302: $b7
    push de                                       ; $5303: $d5
    sub h                                         ; $5304: $94
    sbc c                                         ; $5305: $99
    dec a                                         ; $5306: $3d
    bit 1, [hl]                                   ; $5307: $cb $4e
    call z, $fccd                                 ; $5309: $cc $cd $fc
    or c                                          ; $530c: $b1
    rst $20                                       ; $530d: $e7
    sub $5c                                       ; $530e: $d6 $5c
    or e                                          ; $5310: $b3
    inc c                                         ; $5311: $0c
    ld a, a                                       ; $5312: $7f
    and l                                         ; $5313: $a5
    ld e, [hl]                                    ; $5314: $5e
    jr c, jr_055_5364                             ; $5315: $38 $4d

    xor a                                         ; $5317: $af
    ld e, [hl]                                    ; $5318: $5e
    ld [$bf77], sp                                ; $5319: $08 $77 $bf
    ld l, b                                       ; $531c: $68
    add hl, de                                    ; $531d: $19
    rst $38                                       ; $531e: $ff
    or [hl]                                       ; $531f: $b6
    ret c                                         ; $5320: $d8

    or c                                          ; $5321: $b1
    ld [hl], d                                    ; $5322: $72
    ei                                            ; $5323: $fb
    ld h, c                                       ; $5324: $61
    db $fc                                        ; $5325: $fc
    or c                                          ; $5326: $b1
    pop hl                                        ; $5327: $e1
    ld a, [$2c38]                                 ; $5328: $fa $38 $2c
    xor l                                         ; $532b: $ad
    sub a                                         ; $532c: $97

jr_055_532d:
    ld a, [c]                                     ; $532d: $f2
    ld hl, sp+$31                                 ; $532e: $f8 $31
    rrca                                          ; $5330: $0f
    ld e, e                                       ; $5331: $5b
    ld c, l                                       ; $5332: $4d
    or d                                          ; $5333: $b2
    ld b, a                                       ; $5334: $47
    xor l                                         ; $5335: $ad
    ld sp, hl                                     ; $5336: $f9
    ld a, b                                       ; $5337: $78
    inc h                                         ; $5338: $24
    dec b                                         ; $5339: $05
    ld de, $e777                                  ; $533a: $11 $77 $e7
    ld [de], a                                    ; $533d: $12
    db $ed                                        ; $533e: $ed
    ret z                                         ; $533f: $c8

    jp z, $cfb4                                   ; $5340: $ca $b4 $cf

    ret                                           ; $5343: $c9


    or l                                          ; $5344: $b5
    ei                                            ; $5345: $fb
    ld a, [hl]                                    ; $5346: $7e
    sub l                                         ; $5347: $95
    sub e                                         ; $5348: $93
    adc a                                         ; $5349: $8f
    ld c, c                                       ; $534a: $49
    adc b                                         ; $534b: $88
    nop                                           ; $534c: $00
    db $dd                                        ; $534d: $dd
    cpl                                           ; $534e: $2f
    ld e, b                                       ; $534f: $58
    adc $32                                       ; $5350: $ce $32
    ld c, c                                       ; $5352: $49
    add [hl]                                      ; $5353: $86
    sub a                                         ; $5354: $97
    ld a, b                                       ; $5355: $78

Jump_055_5356:
    xor [hl]                                      ; $5356: $ae
    dec [hl]                                      ; $5357: $35
    daa                                           ; $5358: $27
    sbc a                                         ; $5359: $9f
    rst $18                                       ; $535a: $df
    jp hl                                         ; $535b: $e9


    ld h, h                                       ; $535c: $64
    cp c                                          ; $535d: $b9
    ld h, c                                       ; $535e: $61
    call nc, Call_055_5ce8                        ; $535f: $d4 $e8 $5c
    add h                                         ; $5362: $84
    db $e3                                        ; $5363: $e3

jr_055_5364:
    pop af                                        ; $5364: $f1
    inc l                                         ; $5365: $2c
    and e                                         ; $5366: $a3
    dec sp                                        ; $5367: $3b
    ld a, l                                       ; $5368: $7d
    push de                                       ; $5369: $d5
    ld [hl], d                                    ; $536a: $72
    jr jr_055_53ba                                ; $536b: $18 $4d

    ld c, l                                       ; $536d: $4d
    ld e, c                                       ; $536e: $59
    add $bf                                       ; $536f: $c6 $bf
    adc l                                         ; $5371: $8d
    jp c, $9c49                                   ; $5372: $da $49 $9c

    jr @+$30                                      ; $5375: $18 $2e

    push hl                                       ; $5377: $e5
    dec hl                                        ; $5378: $2b
    res 2, h                                      ; $5379: $cb $94
    cp [hl]                                       ; $537b: $be
    jp Jump_055_4d54                              ; $537c: $c3 $54 $4d


    cp c                                          ; $537f: $b9
    or h                                          ; $5380: $b4
    db $eb                                        ; $5381: $eb
    ld a, c                                       ; $5382: $79
    ld d, l                                       ; $5383: $55
    ld a, [de]                                    ; $5384: $1a
    db $ed                                        ; $5385: $ed
    ld [c], a                                     ; $5386: $e2
    sub e                                         ; $5387: $93
    add hl, hl                                    ; $5388: $29
    ld a, l                                       ; $5389: $7d
    inc [hl]                                      ; $538a: $34
    dec [hl]                                      ; $538b: $35
    ld h, l                                       ; $538c: $65
    sbc h                                         ; $538d: $9c
    push hl                                       ; $538e: $e5
    ld [hl], b                                    ; $538f: $70
    cp c                                          ; $5390: $b9
    inc c                                         ; $5391: $0c
    ld de, $4f3d                                  ; $5392: $11 $3d $4f
    sub [hl]                                      ; $5395: $96
    sub $4b                                       ; $5396: $d6 $4b
    ld a, c                                       ; $5398: $79
    ret                                           ; $5399: $c9


    ld l, e                                       ; $539a: $6b
    add c                                         ; $539b: $81
    add a                                         ; $539c: $87
    dec e                                         ; $539d: $1d
    ldh [$fa], a                                  ; $539e: $e0 $fa
    jr c, jr_055_53ce                             ; $53a0: $38 $2c

    ld a, $99                                     ; $53a2: $3e $99

jr_055_53a4:
    ld hl, sp-$50                                 ; $53a4: $f8 $b0
    ld h, l                                       ; $53a6: $65
    inc [hl]                                      ; $53a7: $34
    dec [hl]                                      ; $53a8: $35
    cp d                                          ; $53a9: $ba
    db $d3                                        ; $53aa: $d3
    ld d, a                                       ; $53ab: $57
    adc l                                         ; $53ac: $8d
    ld a, a                                       ; $53ad: $7f
    dec de                                        ; $53ae: $1b
    or l                                          ; $53af: $b5
    sub e                                         ; $53b0: $93
    jr c, jr_055_53a4                             ; $53b1: $38 $f1

    ld e, [hl]                                    ; $53b3: $5e
    ld l, e                                       ; $53b4: $6b
    ld l, $2b                                     ; $53b5: $2e $2b
    ld b, e                                       ; $53b7: $43
    inc b                                         ; $53b8: $04
    db $fd                                        ; $53b9: $fd

jr_055_53ba:
    ld d, d                                       ; $53ba: $52
    sub h                                         ; $53bb: $94
    halt                                          ; $53bc: $76
    ld c, d                                       ; $53bd: $4a
    sbc a                                         ; $53be: $9f
    ld l, e                                       ; $53bf: $6b
    sbc l                                         ; $53c0: $9d
    add a                                         ; $53c1: $87
    dec l                                         ; $53c2: $2d
    or e                                          ; $53c3: $b3
    inc c                                         ; $53c4: $0c
    dec sp                                        ; $53c5: $3b
    ld a, [c]                                     ; $53c6: $f2
    rrca                                          ; $53c7: $0f
    db $e3                                        ; $53c8: $e3
    jp z, $e1ad                                   ; $53c9: $ca $ad $e1

    daa                                           ; $53cc: $27
    sub d                                         ; $53cd: $92

jr_055_53ce:
    ld a, d                                       ; $53ce: $7a
    add hl, hl                                    ; $53cf: $29
    sub $4e                                       ; $53d0: $d6 $4e
    jp hl                                         ; $53d2: $e9


    and e                                         ; $53d3: $a3
    xor c                                         ; $53d4: $a9
    ld a, [de]                                    ; $53d5: $1a
    halt                                          ; $53d6: $76
    jr @+$01                                      ; $53d7: $18 $ff

    ld [hl], $6a                                  ; $53d9: $36 $6a
    and l                                         ; $53db: $a5
    or a                                          ; $53dc: $b7
    and $61                                       ; $53dd: $e6 $61
    xor e                                         ; $53df: $ab
    ld [hl], l                                    ; $53e0: $75
    ld l, c                                       ; $53e1: $69
    sbc $72                                       ; $53e2: $de $72
    ret c                                         ; $53e4: $d8

    ld l, e                                       ; $53e5: $6b
    sbc h                                         ; $53e6: $9c

jr_055_53e7:
    ld a, [de]                                    ; $53e7: $1a
    ld bc, $d4b7                                  ; $53e8: $01 $b7 $d4
    db $d3                                        ; $53eb: $d3
    xor [hl]                                      ; $53ec: $ae
    rst $20                                       ; $53ed: $e7
    ld d, l                                       ; $53ee: $55
    ld l, c                                       ; $53ef: $69
    ldh [$ae], a                                  ; $53f0: $e0 $ae
    ld e, $99                                     ; $53f2: $1e $99
    dec l                                         ; $53f4: $2d
    ld h, c                                       ; $53f5: $61
    ld [hl], h                                    ; $53f6: $74
    xor [hl]                                      ; $53f7: $ae
    ld e, c                                       ; $53f8: $59
    ld b, [hl]                                    ; $53f9: $46
    ld a, a                                       ; $53fa: $7f
    add hl, de                                    ; $53fb: $19
    sbc l                                         ; $53fc: $9d
    res 0, a                                      ; $53fd: $cb $87
    ld a, a                                       ; $53ff: $7f
    ld l, e                                       ; $5400: $6b
    ld e, a                                       ; $5401: $5f
    ld [bc], a                                    ; $5402: $02
    ld b, h                                       ; $5403: $44
    ret nz                                        ; $5404: $c0

    ld c, b                                       ; $5405: $48
    jp nc, Jump_055_7ed5                          ; $5406: $d2 $d5 $7e

    ld c, b                                       ; $5409: $48
    cp l                                          ; $540a: $bd
    db $db                                        ; $540b: $db
    ld l, d                                       ; $540c: $6a
    jp z, $f3bc                                   ; $540d: $ca $bc $f3

    ld h, e                                       ; $5410: $63
    ld [hl], h                                    ; $5411: $74
    pop af                                        ; $5412: $f1
    ld e, $4f                                     ; $5413: $1e $4f
    jp hl                                         ; $5415: $e9


    ei                                            ; $5416: $fb
    ld sp, $c47a                                  ; $5417: $31 $7a $c4
    xor e                                         ; $541a: $ab
    dec [hl]                                      ; $541b: $35
    daa                                           ; $541c: $27
    sbc a                                         ; $541d: $9f
    ld e, l                                       ; $541e: $5d
    inc a                                         ; $541f: $3c
    cp d                                          ; $5420: $ba
    db $d3                                        ; $5421: $d3
    ld d, a                                       ; $5422: $57
    adc l                                         ; $5423: $8d
    xor $aa                                       ; $5424: $ee $aa
    ld e, [hl]                                    ; $5426: $5e
    cp e                                          ; $5427: $bb
    db $fc                                        ; $5428: $fc
    or d                                          ; $5429: $b2
    sub c                                         ; $542a: $91

jr_055_542b:
    reti                                          ; $542b: $d9


    ld [de], a                                    ; $542c: $12
    ld b, [hl]                                    ; $542d: $46
    rst $20                                       ; $542e: $e7
    ld e, d                                       ; $542f: $5a
    ret z                                         ; $5430: $c8

    adc d                                         ; $5431: $8a
    rst $30                                       ; $5432: $f7
    ld a, [hl+]                                   ; $5433: $2a
    db $ed                                        ; $5434: $ed
    xor a                                         ; $5435: $af
    ld d, d                                       ; $5436: $52
    inc hl                                        ; $5437: $23

jr_055_5438:
    rst $30                                       ; $5438: $f7
    cp c                                          ; $5439: $b9
    ld l, b                                       ; $543a: $68
    ld b, a                                       ; $543b: $47
    sub $ae                                       ; $543c: $d6 $ae
    rst $20                                       ; $543e: $e7
    ld d, l                                       ; $543f: $55
    ld l, c                                       ; $5440: $69
    ld d, d                                       ; $5441: $52
    rst $28                                       ; $5442: $ef
    ld a, [c]                                     ; $5443: $f2
    xor e                                         ; $5444: $ab
    ld b, a                                       ; $5445: $47
    ld h, [hl]                                    ; $5446: $66
    ld c, e                                       ; $5447: $4b
    jr jr_055_53e7                                ; $5448: $18 $9d

    ld l, e                                       ; $544a: $6b
    ld h, h                                       ; $544b: $64
    db $fd                                        ; $544c: $fd
    jr jr_055_5438                                ; $544d: $18 $e9

    ld a, [$6bcc]                                 ; $544f: $fa $cc $6b
    ld e, l                                       ; $5452: $5d
    add a                                         ; $5453: $87
    sub a                                         ; $5454: $97
    ld c, c                                       ; $5455: $49
    ld [hl-], a                                   ; $5456: $32
    cp h                                          ; $5457: $bc
    call nz, Call_000_11a9                        ; $5458: $c4 $a9 $11
    db $dd                                        ; $545b: $dd
    ld a, [$5788]                                 ; $545c: $fa $88 $57
    sub e                                         ; $545f: $93
    inc e                                         ; $5460: $1c
    rst $30                                       ; $5461: $f7
    ld h, e                                       ; $5462: $63
    db $f4                                        ; $5463: $f4
    ld [$1e37], sp                                ; $5464: $08 $37 $1e
    ld c, l                                       ; $5467: $4d
    ld sp, $ee8f                                  ; $5468: $31 $8f $ee
    db $f4                                        ; $546b: $f4
    ld d, l                                       ; $546c: $55
    rst $28                                       ; $546d: $ef
    adc h                                         ; $546e: $8c
    sub $5b                                       ; $546f: $d6 $5b
    di                                            ; $5471: $f3
    ld [hl-], a                                   ; $5472: $32
    ld c, c                                       ; $5473: $49
    ld h, d                                       ; $5474: $62
    ld d, a                                       ; $5475: $57
    inc a                                         ; $5476: $3c
    add hl, de                                    ; $5477: $19
    inc de                                        ; $5478: $13
    ld h, [hl]                                    ; $5479: $66
    db $ed                                        ; $547a: $ed
    ld e, h                                       ; $547b: $5c
    db $eb                                        ; $547c: $eb
    jr c, jr_055_542b                             ; $547d: $38 $ac

    xor h                                         ; $547f: $ac
    inc d                                         ; $5480: $14
    call c, $d57d                                 ; $5481: $dc $7d $d5
    sub l                                         ; $5484: $95
    db $ec                                        ; $5485: $ec
    add a                                         ; $5486: $87
    adc [hl]                                      ; $5487: $8e
    dec b                                         ; $5488: $05
    ld [hl+], a                                   ; $5489: $22
    dec a                                         ; $548a: $3d
    xor a                                         ; $548b: $af
    ld c, d                                       ; $548c: $4a
    and e                                         ; $548d: $a3
    ld e, l                                       ; $548e: $5d
    add sp, $74                                   ; $548f: $e8 $74
    push de                                       ; $5491: $d5
    and h                                         ; $5492: $a4
    ld c, e                                       ; $5493: $4b
    di                                            ; $5494: $f3
    ld [hl+], a                                   ; $5495: $22
    rst $38                                       ; $5496: $ff
    jr nc, @-$19                                  ; $5497: $30 $e5

    sbc l                                         ; $5499: $9d
    add a                                         ; $549a: $87
    or c                                          ; $549b: $b1
    rst $00                                       ; $549c: $c7
    and l                                         ; $549d: $a5
    ld l, c                                       ; $549e: $69
    call Call_055_5f87                            ; $549f: $cd $87 $5f
    sub d                                         ; $54a2: $92
    halt                                          ; $54a3: $76
    ld [c], a                                     ; $54a4: $e2
    ldh [rPCM12], a                               ; $54a5: $e0 $76
    inc l                                         ; $54a7: $2c
    sbc $c9                                       ; $54a8: $de $c9
    ld a, b                                       ; $54aa: $78
    dec e                                         ; $54ab: $1d
    rlca                                          ; $54ac: $07
    jr c, jr_055_54af                             ; $54ad: $38 $00

jr_055_54af:
    ld a, $6c                                     ; $54af: $3e $6c
    reti                                          ; $54b1: $d9


    ld c, e                                       ; $54b2: $4b
    and [hl]                                      ; $54b3: $a6
    ld e, h                                       ; $54b4: $5c
    sub $8e                                       ; $54b5: $d6 $8e
    xor $6a                                       ; $54b7: $ee $6a
    ld h, c                                       ; $54b9: $61
    ld hl, $1e2b                                  ; $54ba: $21 $2b $1e
    or [hl]                                       ; $54bd: $b6
    add d                                         ; $54be: $82
    ld [$b3bd], sp                                ; $54bf: $08 $bd $b3
    ld [c], a                                     ; $54c2: $e2
    dec [hl]                                      ; $54c3: $35
    daa                                           ; $54c4: $27
    ld l, $d6                                     ; $54c5: $2e $d6
    xor [hl]                                      ; $54c7: $ae
    rst $20                                       ; $54c8: $e7
    ld d, l                                       ; $54c9: $55
    ld l, c                                       ; $54ca: $69
    ld d, d                                       ; $54cb: $52
    xor a                                         ; $54cc: $af
    ld [hl], a                                    ; $54cd: $77
    ld a, l                                       ; $54ce: $7d
    sbc d                                         ; $54cf: $9a
    cp $12                                        ; $54d0: $fe $12
    ld d, $9f                                     ; $54d2: $16 $9f
    inc l                                         ; $54d4: $2c
    jp hl                                         ; $54d5: $e9


    xor e                                         ; $54d6: $ab
    cp h                                          ; $54d7: $bc
    jp $f1b9                                      ; $54d8: $c3 $b9 $f1


    ld e, [hl]                                    ; $54db: $5e
    ld [hl-], a                                   ; $54dc: $32
    push hl                                       ; $54dd: $e5
    sub b                                         ; $54de: $90
    ld a, [de]                                    ; $54df: $1a
    ld bc, $9e7d                                  ; $54e0: $01 $7d $9e
    halt                                          ; $54e3: $76
    dec a                                         ; $54e4: $3d
    xor a                                         ; $54e5: $af
    ld c, d                                       ; $54e6: $4a
    and e                                         ; $54e7: $a3
    db $dd                                        ; $54e8: $dd
    ld [hl], c                                    ; $54e9: $71
    ld c, e                                       ; $54ea: $4b
    sub $71                                       ; $54eb: $d6 $71
    ld e, b                                       ; $54ed: $58
    call nc, $bc45                                ; $54ee: $d4 $45 $bc
    rra                                           ; $54f1: $1f
    and e                                         ; $54f2: $a3
    rla                                           ; $54f3: $17
    jp z, $4d5f                                   ; $54f4: $ca $5f $4d

    sbc c                                         ; $54f7: $99
    ld [hl], a                                    ; $54f8: $77
    xor b                                         ; $54f9: $a8
    add l                                         ; $54fa: $85
    xor h                                         ; $54fb: $ac
    jr jr_055_5520                                ; $54fc: $18 $22

    scf                                           ; $54fe: $37
    or a                                          ; $54ff: $b7
    and $b9                                       ; $5500: $e6 $b9

Call_055_5502:
Jump_055_5502:
    add hl, sp                                    ; $5502: $39
    or c                                          ; $5503: $b1
    ld a, b                                       ; $5504: $78
    sbc b                                         ; $5505: $98
    ld e, d                                       ; $5506: $5a
    ld d, a                                       ; $5507: $57
    ld [c], a                                     ; $5508: $e2
    dec e                                         ; $5509: $1d
    add a                                         ; $550a: $87
    sub c                                         ; $550b: $91
    call nc, $c794                                ; $550c: $d4 $94 $c7
    and l                                         ; $550f: $a5
    ld l, c                                       ; $5510: $69
    call Call_055_5f87                            ; $5511: $cd $87 $5f
    sub d                                         ; $5514: $92
    halt                                          ; $5515: $76
    ld [c], a                                     ; $5516: $e2

jr_055_5517:
    ldh [rPCM12], a                               ; $5517: $e0 $76
    inc l                                         ; $5519: $2c
    sbc $c9                                       ; $551a: $de $c9
    ld a, b                                       ; $551c: $78
    dec a                                         ; $551d: $3d
    xor a                                         ; $551e: $af
    ld c, d                                       ; $551f: $4a

jr_055_5520:
    or e                                          ; $5520: $b3
    inc e                                         ; $5521: $1c
    sub $71                                       ; $5522: $d6 $71
    jr jr_055_5517                                ; $5524: $18 $f1

    ld l, d                                       ; $5526: $6a
    ret                                           ; $5527: $c9


    ccf                                           ; $5528: $3f
    inc a                                         ; $5529: $3c
    push hl                                       ; $552a: $e5
    or d                                          ; $552b: $b2
    halt                                          ; $552c: $76
    and a                                         ; $552d: $a7
    db $fd                                        ; $552e: $fd
    cp b                                          ; $552f: $b8
    rst $00                                       ; $5530: $c7
    ld a, e                                       ; $5531: $7b
    xor l                                         ; $5532: $ad
    ld a, c                                       ; $5533: $79
    pop af                                        ; $5534: $f1
    ret                                           ; $5535: $c9


    sbc d                                         ; $5536: $9a
    sub e                                         ; $5537: $93
    rst $08                                       ; $5538: $cf
    ld l, $cf                                     ; $5539: $2e $cf
    ld [hl-], a                                   ; $553b: $32
    cp d                                          ; $553c: $ba
    db $d3                                        ; $553d: $d3
    ld d, a                                       ; $553e: $57
    db $ed                                        ; $553f: $ed
    ld c, a                                       ; $5540: $4f
    ld a, h                                       ; $5541: $7c
    ret c                                         ; $5542: $d8

    db $e3                                        ; $5543: $e3
    adc a                                         ; $5544: $8f
    dec c                                         ; $5545: $0d
    sub a                                         ; $5546: $97
    jp nc, $e674                                  ; $5547: $d2 $74 $e6

    sub c                                         ; $554a: $91
    call nc, Call_055_63f8                        ; $554b: $d4 $f8 $63
    dec bc                                        ; $554e: $0b
    ld b, h                                       ; $554f: $44
    add hl, hl                                    ; $5550: $29
    ld d, c                                       ; $5551: $51
    inc hl                                        ; $5552: $23
    ld l, d                                       ; $5553: $6a
    jp z, $bb41                                   ; $5554: $ca $41 $bb

    sbc [hl]                                      ; $5557: $9e
    ld d, a                                       ; $5558: $57
    and l                                         ; $5559: $a5
    add c                                         ; $555a: $81
    db $eb                                        ; $555b: $eb
    ld c, c                                       ; $555c: $49
    cp $99                                        ; $555d: $fe $99
    jp nc, Jump_000_3317                          ; $555f: $d2 $17 $33

    add $ae                                       ; $5562: $c6 $ae
    pop de                                        ; $5564: $d1
    cp c                                          ; $5565: $b9
    halt                                          ; $5566: $76
    inc l                                         ; $5567: $2c
    xor h                                         ; $5568: $ac
    ld e, l                                       ; $5569: $5d
    ld a, h                                       ; $556a: $7c
    ld [hl-], a                                   ; $556b: $32
    and l                                         ; $556c: $a5
    rrca                                          ; $556d: $0f
    rst $38                                       ; $556e: $ff
    jp $f29e                                      ; $556f: $c3 $9e $f2


    ret z                                         ; $5572: $c8

    ld l, h                                       ; $5573: $6c
    add hl, bc                                    ; $5574: $09
    ld d, $4f                                     ; $5575: $16 $4f
    jp hl                                         ; $5577: $e9


    inc de                                        ; $5578: $13
    inc sp                                        ; $5579: $33
    ld h, a                                       ; $557a: $67
    sub d                                         ; $557b: $92
    ld e, h                                       ; $557c: $5c
    ld a, [c]                                     ; $557d: $f2
    add h                                         ; $557e: $84
    ld hl, $b702                                  ; $557f: $21 $02 $b7
    rst $20                                       ; $5582: $e7
    ld [c], a                                     ; $5583: $e2
    ld h, e                                       ; $5584: $63
    and $f1                                       ; $5585: $e6 $f1
    ld l, a                                       ; $5587: $6f
    inc de                                        ; $5588: $13
    rra                                           ; $5589: $1f
    or $f8                                        ; $558a: $f6 $f8
    ld h, e                                       ; $558c: $63
    ld l, e                                       ; $558d: $6b
    rst $10                                       ; $558e: $d7
    di                                            ; $558f: $f3
    xor d                                         ; $5590: $aa
    inc [hl]                                      ; $5591: $34
    db $10                                        ; $5592: $10
    ld bc, $4877                                  ; $5593: $01 $77 $48
    or b                                          ; $5596: $b0
    inc l                                         ; $5597: $2c
    ld sp, hl                                     ; $5598: $f9
    ld a, h                                       ; $5599: $7c
    or $47                                        ; $559a: $f6 $47
    dec l                                         ; $559c: $2d
    db $dd                                        ; $559d: $dd
    cp $92                                        ; $559e: $fe $92
    cp [hl]                                       ; $55a0: $be
    jp z, $3ca2                                   ; $55a1: $ca $a2 $3c

    and c                                         ; $55a4: $a1
    ld l, d                                       ; $55a5: $6a

jr_055_55a6:
    db $fc                                        ; $55a6: $fc
    or c                                          ; $55a7: $b1
    ld h, l                                       ; $55a8: $65
    xor [hl]                                      ; $55a9: $ae
    push hl                                       ; $55aa: $e5
    call nz, $d705                                ; $55ab: $c4 $05 $d7
    ld l, l                                       ; $55ae: $6d
    sbc [hl]                                      ; $55af: $9e
    ld l, e                                       ; $55b0: $6b
    ret c                                         ; $55b1: $d8

    dec [hl]                                      ; $55b2: $35
    ld l, d                                       ; $55b3: $6a
    xor l                                         ; $55b4: $ad
    xor a                                         ; $55b5: $af
    ld a, [c]                                     ; $55b6: $f2
    sbc [hl]                                      ; $55b7: $9e
    xor b                                         ; $55b8: $a8
    ld a, [c]                                     ; $55b9: $f2
    ld c, $5b                                     ; $55ba: $0e $5b
    cp c                                          ; $55bc: $b9
    jr nz, jr_055_55c1                            ; $55bd: $20 $02

    dec a                                         ; $55bf: $3d
    ld c, c                                       ; $55c0: $49

jr_055_55c1:
    ld l, $3a                                     ; $55c1: $2e $3a
    rst $10                                       ; $55c3: $d7
    adc [hl]                                      ; $55c4: $8e
    ld l, e                                       ; $55c5: $6b
    ld h, h                                       ; $55c6: $64
    ld h, l                                       ; $55c7: $65
    jp c, $e4e7                                   ; $55c8: $da $e7 $e4

    jp c, Jump_055_659d                           ; $55cb: $da $9d $65

    add hl, bc                                    ; $55ce: $09
    call $ad7b                                    ; $55cf: $cd $7b $ad
    pop af                                        ; $55d2: $f1
    ld d, a                                       ; $55d3: $57
    dec sp                                        ; $55d4: $3b
    call nc, $95c4                                ; $55d5: $d4 $c4 $95
    ld [hl], h                                    ; $55d8: $74
    sbc l                                         ; $55d9: $9d
    jp hl                                         ; $55da: $e9


    call c, $010b                                 ; $55db: $dc $0b $01
    ld [hl], a                                    ; $55de: $77
    sub [hl]                                      ; $55df: $96
    dec h                                         ; $55e0: $25
    inc [hl]                                      ; $55e1: $34
    cpl                                           ; $55e2: $2f
    ld sp, $b5ef                                  ; $55e3: $31 $ef $b5
    add $5f                                       ; $55e6: $c6 $5f
    adc l                                         ; $55e8: $8d
    ld c, b                                       ; $55e9: $48
    sbc $e8                                       ; $55ea: $de $e8
    call c, $54e2                                 ; $55ec: $dc $e2 $54
    db $fd                                        ; $55ef: $fd
    call nz, $6c35                                ; $55f0: $c4 $35 $6c
    dec b                                         ; $55f3: $05
    rst $10                                       ; $55f4: $d7
    ld l, l                                       ; $55f5: $6d
    sbc [hl]                                      ; $55f6: $9e
    ld l, e                                       ; $55f7: $6b
    ld [c], a                                     ; $55f8: $e2
    jp $9d96                                      ; $55f9: $c3 $96 $9d


    adc h                                         ; $55fc: $8c
    sub a                                         ; $55fd: $97
    pop af                                        ; $55fe: $f1
    adc b                                         ; $55ff: $88
    daa                                           ; $5600: $27
    inc hl                                        ; $5601: $23
    ld e, [hl]                                    ; $5602: $5e
    xor l                                         ; $5603: $ad
    ld c, e                                       ; $5604: $4b
    inc hl                                        ; $5605: $23
    sbc $9f                                       ; $5606: $de $9f
    cp h                                          ; $5608: $bc
    jr jr_055_5638                                ; $5609: $18 $2d

    db $10                                        ; $560b: $10
    ld bc, $e977                                  ; $560c: $01 $77 $e9
    push hl                                       ; $560f: $e5
    ld a, [de]                                    ; $5610: $1a
    ld c, c                                       ; $5611: $49
    adc l                                         ; $5612: $8d
    ld c, b                                       ; $5613: $48
    ld [hl], d                                    ; $5614: $72
    xor c                                         ; $5615: $a9
    daa                                           ; $5616: $27
    db $eb                                        ; $5617: $eb
    jr c, jr_055_55a6                             ; $5618: $38 $8c

    ld a, b                                       ; $561a: $78
    ld c, d                                       ; $561b: $4a
    ld a, c                                       ; $561c: $79
    db $fc                                        ; $561d: $fc
    sbc b                                         ; $561e: $98
    add a                                         ; $561f: $87
    dec e                                         ; $5620: $1d
    and [hl]                                      ; $5621: $a6
    di                                            ; $5622: $f3
    cp $2c                                        ; $5623: $fe $2c
    ld h, e                                       ; $5625: $63
    cp l                                          ; $5626: $bd
    jp nc, $7a4f                                  ; $5627: $d2 $4f $7a

    ld hl, $66dd                                  ; $562a: $21 $dd $66
    or $62                                        ; $562d: $f6 $62
    ld a, e                                       ; $562f: $7b
    rst $20                                       ; $5630: $e7
    cp b                                          ; $5631: $b8
    ld [hl-], a                                   ; $5632: $32
    add $e6                                       ; $5633: $c6 $e6
    cp c                                          ; $5635: $b9
    sub $3e                                       ; $5636: $d6 $3e

jr_055_5638:
    di                                            ; $5638: $f3
    db $e4                                        ; $5639: $e4
    db $d3                                        ; $563a: $d3
    add a                                         ; $563b: $87
    ld hl, $3d02                                  ; $563c: $21 $02 $3d
    xor a                                         ; $563f: $af
    ld c, d                                       ; $5640: $4a
    or e                                          ; $5641: $b3
    ei                                            ; $5642: $fb
    ld [hl-], a                                   ; $5643: $32
    or e                                          ; $5644: $b3
    dec hl                                        ; $5645: $2b
    push af                                       ; $5646: $f5
    ld a, d                                       ; $5647: $7a
    db $eb                                        ; $5648: $eb
    ld [$8ec4], a                                 ; $5649: $ea $c4 $8e
    ld e, e                                       ; $564c: $5b
    ld c, [hl]                                    ; $564d: $4e
    or $78                                        ; $564e: $f6 $78
    ld c, d                                       ; $5650: $4a
    sbc a                                         ; $5651: $9f
    ld l, e                                       ; $5652: $6b
    add h                                         ; $5653: $84
    dec hl                                        ; $5654: $2b
    dec [hl]                                      ; $5655: $35
    ld [bc], a                                    ; $5656: $02
    db $dd                                        ; $5657: $dd
    and $11                                       ; $5658: $e6 $11
    xor a                                         ; $565a: $af
    halt                                          ; $565b: $76
    ld h, d                                       ; $565c: $62
    rst $00                                       ; $565d: $c7
    ld c, d                                       ; $565e: $4a
    call $9d3c                                    ; $565f: $cd $3c $9d
    ld [hl], b                                    ; $5662: $70
    ld l, e                                       ; $5663: $6b
    ld [hl], b                                    ; $5664: $70
    or a                                          ; $5665: $b7
    pop af                                        ; $5666: $f1
    sub d                                         ; $5667: $92
    inc e                                         ; $5668: $1c
    ld c, a                                       ; $5669: $4f
    db $d3                                        ; $566a: $d3
    sbc h                                         ; $566b: $9c
    cp c                                          ; $566c: $b9
    sub [hl]                                      ; $566d: $96
    ld l, [hl]                                    ; $566e: $6e
    sbc a                                         ; $566f: $9f
    ld a, c                                       ; $5670: $79
    ld [hl], h                                    ; $5671: $74
    xor [hl]                                      ; $5672: $ae
    db $e4                                        ; $5673: $e4
    adc c                                         ; $5674: $89
    ld l, d                                       ; $5675: $6a
    and $f1                                       ; $5676: $e6 $f1
    ld l, a                                       ; $5678: $6f
    or e                                          ; $5679: $b3

jr_055_567a:
    inc l                                         ; $567a: $2c
    ld a, $f9                                     ; $567b: $3e $f9
    ld [bc], a                                    ; $567d: $02
    ld de, $e6dd                                  ; $567e: $11 $dd $e6
    dec [hl]                                      ; $5681: $35
    adc l                                         ; $5682: $8d
    ld [hl], d                                    ; $5683: $72
    db $ed                                        ; $5684: $ed
    ld h, h                                       ; $5685: $64
    cp h                                          ; $5686: $bc
    or $99                                        ; $5687: $f6 $99
    rst $30                                       ; $5689: $f7
    sub d                                         ; $568a: $92
    sbc c                                         ; $568b: $99
    and a                                         ; $568c: $a7
    inc de                                        ; $568d: $13
    ld l, [hl]                                    ; $568e: $6e
    ld c, l                                       ; $568f: $4d
    cp e                                          ; $5690: $bb
    adc $83                                       ; $5691: $ce $83
    ld [$6977], sp                                ; $5693: $08 $77 $69
    adc [hl]                                      ; $5696: $8e
    ld a, c                                       ; $5697: $79
    ret                                           ; $5698: $c9


    xor e                                         ; $5699: $ab
    or c                                          ; $569a: $b1
    add l                                         ; $569b: $85
    ld hl, $3984                                  ; $569c: $21 $84 $39
    ld c, h                                       ; $569f: $4c
    sbc c                                         ; $56a0: $99
    rla                                           ; $56a1: $17
    jp z, Jump_055_795f                           ; $56a2: $ca $5f $79

    call nc, $0baa                                ; $56a5: $d4 $aa $0b
    ld h, e                                       ; $56a8: $63
    and a                                         ; $56a9: $a7
    sbc $fa                                       ; $56aa: $de $fa
    jr c, jr_055_567a                             ; $56ac: $38 $cc

    or l                                          ; $56ae: $b5
    or d                                          ; $56af: $b2
    ld d, d                                       ; $56b0: $52
    and e                                         ; $56b1: $a3
    ld [hl], e                                    ; $56b2: $73
    db $ed                                        ; $56b3: $ed
    pop af                                        ; $56b4: $f1
    sub h                                         ; $56b5: $94
    ld a, c                                       ; $56b6: $79
    daa                                           ; $56b7: $27
    cp [hl]                                       ; $56b8: $be
    or [hl]                                       ; $56b9: $b6
    ld [hl], h                                    ; $56ba: $74
    ei                                            ; $56bb: $fb
    ld c, e                                       ; $56bc: $4b
    rst $10                                       ; $56bd: $d7
    inc de                                        ; $56be: $13
    add c                                         ; $56bf: $81
    cp e                                          ; $56c0: $bb
    daa                                           ; $56c1: $27
    ld e, e                                       ; $56c2: $5b
    add [hl]                                      ; $56c3: $86

jr_055_56c4:
    xor c                                         ; $56c4: $a9
    pop de                                        ; $56c5: $d1
    ld c, a                                       ; $56c6: $4f
    add d                                         ; $56c7: $82
    rla                                           ; $56c8: $17
    sbc a                                         ; $56c9: $9f
    ld a, h                                       ; $56ca: $7c
    or c                                          ; $56cb: $b1
    ret nz                                        ; $56cc: $c0

    ld [hl], l                                    ; $56cd: $75
    sbc e                                         ; $56ce: $9b
    sub a                                         ; $56cf: $97
    ld l, [hl]                                    ; $56d0: $6e
    cp a                                          ; $56d1: $bf
    and [hl]                                      ; $56d2: $a6
    cp [hl]                                       ; $56d3: $be
    inc l                                         ; $56d4: $2c
    sub e                                         ; $56d5: $93
    ld h, h                                       ; $56d6: $64
    ld a, b                                       ; $56d7: $78
    adc c                                         ; $56d8: $89
    ld hl, $3d02                                  ; $56d9: $21 $02 $3d
    ld c, c                                       ; $56dc: $49
    ld l, $f5                                     ; $56dd: $2e $f5
    ld h, h                                       ; $56df: $64
    adc c                                         ; $56e0: $89
    ld a, c                                       ; $56e1: $79
    dec e                                         ; $56e2: $1d
    add a                                         ; $56e3: $87
    dec a                                         ; $56e4: $3d
    sbc [hl]                                      ; $56e5: $9e
    ld [hl-], a                                   ; $56e6: $32
    rst $08                                       ; $56e7: $cf
    or l                                          ; $56e8: $b5
    ld hl, sp-$1c                                 ; $56e9: $f8 $e4
    adc e                                         ; $56eb: $8b
    ld h, l                                       ; $56ec: $65
    ld b, d                                       ; $56ed: $42
    push de                                       ; $56ee: $d5
    ld a, [hl-]                                   ; $56ef: $3a
    ld c, $3b                                     ; $56f0: $0e $3b
    xor [hl]                                      ; $56f2: $ae
    add hl, hl                                    ; $56f3: $29
    ld c, e                                       ; $56f4: $4b
    cpl                                           ; $56f5: $2f
    inc b                                         ; $56f6: $04
    db $dd                                        ; $56f7: $dd
    sub [hl]                                      ; $56f8: $96
    cp c                                          ; $56f9: $b9
    ld b, [hl]                                    ; $56fa: $46
    rst $38                                       ; $56fb: $ff
    call c, $0ccc                                 ; $56fc: $dc $cc $0c
    rst $10                                       ; $56ff: $d7
    ld l, l                                       ; $5700: $6d
    sbc [hl]                                      ; $5701: $9e
    ld l, e                                       ; $5702: $6b
    ld a, d                                       ; $5703: $7a
    ld a, [c]                                     ; $5704: $f2
    and h                                         ; $5705: $a4
    db $fd                                        ; $5706: $fd
    and b                                         ; $5707: $a0
    db $dd                                        ; $5708: $dd
    ld [hl], c                                    ; $5709: $71
    ld c, e                                       ; $570a: $4b
    ld b, [hl]                                    ; $570b: $46
    cp b                                          ; $570c: $b8
    ld b, [hl]                                    ; $570d: $46
    ld d, d                                       ; $570e: $52
    db $eb                                        ; $570f: $eb
    db $fd                                        ; $5710: $fd
    ld a, [de]                                    ; $5711: $1a
    daa                                           ; $5712: $27
    cp c                                          ; $5713: $b9
    jr jr_055_56c4                                ; $5714: $18 $ae

    daa                                           ; $5716: $27
    ld sp, hl                                     ; $5717: $f9
    ld h, a                                       ; $5718: $67
    ld c, d                                       ; $5719: $4a
    rra                                           ; $571a: $1f
    db $fd                                        ; $571b: $fd
    inc h                                         ; $571c: $24
    cp b                                          ; $571d: $b8
    and [hl]                                      ; $571e: $a6
    inc l                                         ; $571f: $2c
    bit 4, c                                      ; $5720: $cb $61
    db $fc                                        ; $5722: $fc
    ld l, d                                       ; $5723: $6a
    jp z, $6c32                                   ; $5724: $ca $32 $6c

    dec [hl]                                      ; $5727: $35
    cp $2d                                        ; $5728: $fe $2d
    db $fd                                        ; $572a: $fd
    and d                                         ; $572b: $a2
    or l                                          ; $572c: $b5
    dec sp                                        ; $572d: $3b
    pop af                                        ; $572e: $f1
    or l                                          ; $572f: $b5
    ld [hl], l                                    ; $5730: $75
    inc e                                         ; $5731: $1c
    sub $fa                                       ; $5732: $d6 $fa
    ld a, [hl+]                                   ; $5734: $2a
    ld c, a                                       ; $5735: $4f
    add hl, sp                                    ; $5736: $39
    call z, $d132                                 ; $5737: $cc $32 $d1
    adc h                                         ; $573a: $8c
    ld c, e                                       ; $573b: $4b
    db $d3                                        ; $573c: $d3
    sbc d                                         ; $573d: $9a
    jp hl                                         ; $573e: $e9


    ld e, h                                       ; $573f: $5c
    ret c                                         ; $5740: $d8

    dec c                                         ; $5741: $0d
    ld [hl+], a                                   ; $5742: $22
    ld a, l                                       ; $5743: $7d
    inc e                                         ; $5744: $1c
    sub [hl]                                      ; $5745: $96
    ld e, b                                       ; $5746: $58
    add hl, hl                                    ; $5747: $29
    rst $10                                       ; $5748: $d7
    ld c, b                                       ; $5749: $48
    ld l, d                                       ; $574a: $6a
    adc a                                         ; $574b: $8f
    and a                                         ; $574c: $a7
    inc l                                         ; $574d: $2c
    inc hl                                        ; $574e: $23
    xor e                                         ; $574f: $ab
    dec hl                                        ; $5750: $2b
    ld [hl], c                                    ; $5751: $71
    adc l                                         ; $5752: $8d
    ld e, d                                       ; $5753: $5a
    call z, Call_055_7b18                         ; $5754: $cc $18 $7b
    rst $00                                       ; $5757: $c7
    ld h, c                                       ; $5758: $61
    ld a, [hl-]                                   ; $5759: $3a
    rst $28                                       ; $575a: $ef
    adc a                                         ; $575b: $8f
    xor [hl]                                      ; $575c: $ae
    rst $18                                       ; $575d: $df
    ld [hl], h                                    ; $575e: $74
    sbc d                                         ; $575f: $9a
    ld hl, $7702                                  ; $5760: $21 $02 $77
    ld l, c                                       ; $5763: $69
    ld h, d                                       ; $5764: $62
    db $f4                                        ; $5765: $f4
    ld hl, sp+$37                                 ; $5766: $f8 $37
    db $ed                                        ; $5768: $ed
    ld a, d                                       ; $5769: $7a
    ld e, [hl]                                    ; $576a: $5e
    sub l                                         ; $576b: $95
    ld b, $ee                                     ; $576c: $06 $ee
    cp [hl]                                       ; $576e: $be
    ld [hl], a                                    ; $576f: $77
    adc $94                                       ; $5770: $ce $94
    jp $350e                                      ; $5772: $c3 $0e $35


    and l                                         ; $5775: $a5
    rst $28                                       ; $5776: $ef
    rst $00                                       ; $5777: $c7
    add sp, -$5b                                  ; $5778: $e8 $a5
    sla d                                         ; $577a: $cb $22
    xor [hl]                                      ; $577c: $ae
    add hl, hl                                    ; $577d: $29
    rlca                                          ; $577e: $07
    adc b                                         ; $577f: $88
    nop                                           ; $5780: $00
    ld [hl], a                                    ; $5781: $77
    ld a, $f9                                     ; $5782: $3e $f9
    ld h, d                                       ; $5784: $62
    sbc c                                         ; $5785: $99
    ld l, e                                       ; $5786: $6b
    ccf                                           ; $5787: $3f

Call_055_5788:
Jump_055_5788:
    ld b, [hl]                                    ; $5788: $46
    adc a                                         ; $5789: $8f
    ld [hl], b                                    ; $578a: $70
    db $ed                                        ; $578b: $ed
    adc e                                         ; $578c: $8b
    ld e, b                                       ; $578d: $58
    cp e                                          ; $578e: $bb
    sbc [hl]                                      ; $578f: $9e
    ld d, a                                       ; $5790: $57
    and l                                         ; $5791: $a5
    ld c, c                                       ; $5792: $49
    cp l                                          ; $5793: $bd
    sub h                                         ; $5794: $94
    xor b                                         ; $5795: $a8
    ld de, $e535                                  ; $5796: $11 $35 $e5
    or b                                          ; $5799: $b0
    inc e                                         ; $579a: $1c
    ld b, [hl]                                    ; $579b: $46
    ld a, a                                       ; $579c: $7f
    sub c                                         ; $579d: $91
    add hl, hl                                    ; $579e: $29
    ld c, e                                       ; $579f: $4b
    ld l, d                                       ; $57a0: $6a
    inc b                                         ; $57a1: $04
    dec a                                         ; $57a2: $3d
    xor a                                         ; $57a3: $af
    and [hl]                                      ; $57a4: $a6
    db $f4                                        ; $57a5: $f4
    dec e                                         ; $57a6: $1d
    inc sp                                        ; $57a7: $33
    rst $08                                       ; $57a8: $cf
    ld [hl-], a                                   ; $57a9: $32
    ld a, [$66e7]                                 ; $57aa: $fa $e7 $66
    and $c5                                       ; $57ad: $e6 $c5
    daa                                           ; $57af: $27
    ld e, a                                       ; $57b0: $5f
    ld a, d                                       ; $57b1: $7a
    ld hl, $9e7d                                  ; $57b2: $21 $7d $9e
    halt                                          ; $57b5: $76
    jp z, $d6b2                                   ; $57b6: $ca $b2 $d6

    ld b, l                                       ; $57b9: $45
    ld l, $9d                                     ; $57ba: $2e $9d
    adc e                                         ; $57bc: $8b
    ld [hl], e                                    ; $57bd: $73
    ld [c], a                                     ; $57be: $e2
    ld a, [de]                                    ; $57bf: $1a
    adc $3c                                       ; $57c0: $ce $3c
    xor [hl]                                      ; $57c2: $ae
    ld b, a                                       ; $57c3: $47
    sub d                                         ; $57c4: $92
    rrca                                          ; $57c5: $0f
    ld [hl+], a                                   ; $57c6: $22
    ld a, l                                       ; $57c7: $7d
    inc e                                         ; $57c8: $1c
    halt                                          ; $57c9: $76
    xor b                                         ; $57ca: $a8
    ld e, c                                       ; $57cb: $59
    ld d, $9f                                     ; $57cc: $16 $9f

Jump_055_57ce:
    ld a, h                                       ; $57ce: $7c
    reti                                          ; $57cf: $d9


    rra                                           ; $57d0: $1f
    rst $10                                       ; $57d1: $d7
    inc hl                                        ; $57d2: $23
    ret                                           ; $57d3: $c9


    scf                                           ; $57d4: $37
    or c                                          ; $57d5: $b1
    ld a, [de]                                    ; $57d6: $1a
    rst $38                                       ; $57d7: $ff
    ld [hl], $ba                                  ; $57d8: $36 $ba
    xor e                                         ; $57da: $ab
    ld c, $7b                                     ; $57db: $0e $7b
    and $77                                       ; $57dd: $e6 $77
    ld a, [hl-]                                   ; $57df: $3a
    add [hl]                                      ; $57e0: $86
    db $eb                                        ; $57e1: $eb
    db $e3                                        ; $57e2: $e3
    jr nc, jr_055_5827                            ; $57e3: $30 $42

    ccf                                           ; $57e5: $3f
    pop de                                        ; $57e6: $d1
    or l                                          ; $57e7: $b5
    rra                                           ; $57e8: $1f
    and e                                         ; $57e9: $a3
    ld b, a                                       ; $57ea: $47
    inc h                                         ; $57eb: $24
    cp a                                          ; $57ec: $bf
    ld b, l                                       ; $57ed: $45
    set 5, b                                      ; $57ee: $cb $e8
    ld d, a                                       ; $57f0: $57
    pop bc                                        ; $57f1: $c1
    ld d, e                                       ; $57f2: $53
    and $25                                       ; $57f3: $e6 $25
    xor a                                         ; $57f5: $af
    ld b, [hl]                                    ; $57f6: $46
    ld d, d                                       ; $57f7: $52
    ld d, e                                       ; $57f8: $53
    ld d, $88                                     ; $57f9: $16 $88
    nop                                           ; $57fb: $00
    db $dd                                        ; $57fc: $dd
    ld a, [$4b5c]                                 ; $57fd: $fa $5c $4b
    or a                                          ; $5800: $b7
    rst $08                                       ; $5801: $cf
    inc a                                         ; $5802: $3c
    cp d                                          ; $5803: $ba
    xor a                                         ; $5804: $af
    ld [hl], $fe                                  ; $5805: $36 $fe
    ld l, l                                       ; $5807: $6d
    call nc, $d44e                                ; $5808: $d4 $4e $d4
    ld e, e                                       ; $580b: $5b
    db $f4                                        ; $580c: $f4
    ld hl, sp+$63                                 ; $580d: $f8 $63
    adc e                                         ; $580f: $8b
    or l                                          ; $5810: $b5
    db $eb                                        ; $5811: $eb
    ld a, c                                       ; $5812: $79
    ld d, l                                       ; $5813: $55
    ld a, [de]                                    ; $5814: $1a
    adc b                                         ; $5815: $88
    nop                                           ; $5816: $00
    rst $30                                       ; $5817: $f7
    cp c                                          ; $5818: $b9
    ld c, d                                       ; $5819: $4a
    and e                                         ; $581a: $a3
    dec e                                         ; $581b: $1d
    pop af                                        ; $581c: $f1
    ld l, d                                       ; $581d: $6a
    ld c, d                                       ; $581e: $4a
    rst $18                                       ; $581f: $df
    ld sp, $2cf3                                  ; $5820: $31 $f3 $2c
    and e                                         ; $5823: $a3
    ld a, a                                       ; $5824: $7f
    ld l, [hl]                                    ; $5825: $6e
    ld h, [hl]                                    ; $5826: $66

jr_055_5827:
    ld e, [hl]                                    ; $5827: $5e
    ld a, h                                       ; $5828: $7c
    ld a, [c]                                     ; $5829: $f2
    and l                                         ; $582a: $a5
    rla                                           ; $582b: $17
    ld [bc], a                                    ; $582c: $02
    ld a, l                                       ; $582d: $7d
    sbc [hl]                                      ; $582e: $9e
    halt                                          ; $582f: $76
    jp z, $223c                                   ; $5830: $ca $3c $22

    sub e                                         ; $5833: $93
    and h                                         ; $5834: $a4
    ld a, c                                       ; $5835: $79
    ld a, l                                       ; $5836: $7d
    bit 6, h                                      ; $5837: $cb $74
    sbc $4b                                       ; $5839: $de $4b
    and [hl]                                      ; $583b: $a6
    cp d                                          ; $583c: $ba
    ld [$7f8d], a                                 ; $583d: $ea $8d $7f
    dec de                                        ; $5840: $1b
    ld sp, hl                                     ; $5841: $f9
    ld a, [hl+]                                   ; $5842: $2a
    ld e, d                                       ; $5843: $5a
    ldh [$7a], a                                  ; $5844: $e0 $7a
    sub d                                         ; $5846: $92
    ld e, h                                       ; $5847: $5c
    ld [hl], h                                    ; $5848: $74
    xor [hl]                                      ; $5849: $ae
    cp c                                          ; $584a: $b9
    and [hl]                                      ; $584b: $a6
    inc l                                         ; $584c: $2c
    and e                                         ; $584d: $a3
    ld a, a                                       ; $584e: $7f
    ld l, [hl]                                    ; $584f: $6e
    ld h, [hl]                                    ; $5850: $66
    xor $85                                       ; $5851: $ee $85
    nop                                           ; $5853: $00
    db $dd                                        ; $5854: $dd
    sub [hl]                                      ; $5855: $96
    cp c                                          ; $5856: $b9
    and $60                                       ; $5857: $e6 $60
    pop hl                                        ; $5859: $e1
    or $c3                                        ; $585a: $f6 $c3
    call z, $0b63                                 ; $585c: $cc $63 $0b
    xor a                                         ; $585f: $af
    ld l, c                                       ; $5860: $69
    adc $4e                                       ; $5861: $ce $4e
    add $4b                                       ; $5863: $c6 $4b
    scf                                           ; $5865: $37
    adc a                                         ; $5866: $8f
    adc $95                                       ; $5867: $ce $95
    inc a                                         ; $5869: $3c
    ld d, c                                       ; $586a: $51
    call $fe3c                                    ; $586b: $cd $3c $fe
    ld l, l                                       ; $586e: $6d
    sub [hl]                                      ; $586f: $96
    push bc                                       ; $5870: $c5
    daa                                           ; $5871: $27
    ld e, a                                       ; $5872: $5f
    sub [hl]                                      ; $5873: $96
    ld e, b                                       ; $5874: $58
    call $9d3c                                    ; $5875: $cd $3c $9d
    ld [hl], b                                    ; $5878: $70
    ld l, e                                       ; $5879: $6b
    db $10                                        ; $587a: $10
    ld bc, $e6dd                                  ; $587b: $01 $dd $e6

Call_055_587e:
    pop de                                        ; $587e: $d1
    cp c                                          ; $587f: $b9
    ld h, d                                       ; $5880: $62
    ld a, e                                       ; $5881: $7b
    push hl                                       ; $5882: $e5
    jp c, Jump_055_6d6b                           ; $5883: $da $6b $6d

    ld c, c                                       ; $5886: $49
    adc [hl]                                      ; $5887: $8e
    rst $00                                       ; $5888: $c7
    ld [hl-], a                                   ; $5889: $32
    sub d                                         ; $588a: $92
    ld e, d                                       ; $588b: $5a
    ret z                                         ; $588c: $c8

    dec l                                         ; $588d: $2d
    ld sp, $0443                                  ; $588e: $31 $43 $04
    ld [hl], a                                    ; $5891: $77
    add e                                         ; $5892: $83
    ld c, [hl]                                    ; $5893: $4e
    ld de, $c8bd                                  ; $5894: $11 $bd $c8
    dec h                                         ; $5897: $25
    cp a                                          ; $5898: $bf
    db $ed                                        ; $5899: $ed
    pop af                                        ; $589a: $f1
    ld a, [hl-]                                   ; $589b: $3a
    ld c, $3b                                     ; $589c: $0e $3b
    pop af                                        ; $589e: $f1
    or l                                          ; $589f: $b5
    pop de                                        ; $58a0: $d1
    ld c, a                                       ; $58a1: $4f
    add d                                         ; $58a2: $82
    and a                                         ; $58a3: $a7
    inc l                                         ; $58a4: $2c
    db $10                                        ; $58a5: $10
    ld bc, $1c7d                                  ; $58a6: $01 $7d $1c
    halt                                          ; $58a9: $76
    xor b                                         ; $58aa: $a8
    ld e, c                                       ; $58ab: $59
    ld h, $56                                     ; $58ac: $26 $56
    sbc $1f                                       ; $58ae: $de $1f
    db $dd                                        ; $58b0: $dd
    ld d, l                                       ; $58b1: $55
    add a                                         ; $58b2: $87
    dec a                                         ; $58b3: $3d
    and c                                         ; $58b4: $a1
    ld h, $66                                     ; $58b5: $26 $66
    adc $24                                       ; $58b7: $ce $24
    add hl, bc                                    ; $58b9: $09
    ld de, $f8f7                                  ; $58ba: $11 $f7 $f8
    jp $bcf5                                      ; $58bd: $c3 $f5 $bc


    sbc d                                         ; $58c0: $9a
    jp nc, Jump_000_217b                          ; $58c1: $d2 $7b $21

    db $dd                                        ; $58c4: $dd
    and $25                                       ; $58c5: $e6 $25
    and $75                                       ; $58c7: $e6 $75
    inc e                                         ; $58c9: $1c
    or $25                                        ; $58ca: $f6 $25
    ld e, b                                       ; $58cc: $58
    ld hl, sp+$4b                                 ; $58cd: $f8 $4b
    ld e, b                                       ; $58cf: $58
    add $10                                       ; $58d0: $c6 $10
    ld bc, $f8f7                                  ; $58d2: $01 $f7 $f8
    jp $a2dd                                      ; $58d5: $c3 $dd $a2


    sub a                                         ; $58d8: $97
    ld a, [c]                                     ; $58d9: $f2
    ld a, [hl-]                                   ; $58da: $3a
    ld c, $53                                     ; $58db: $0e $53
    and $5e                                       ; $58dd: $e6 $5e
    ld [$1c7d], sp                                ; $58df: $08 $7d $1c
    ld b, [hl]                                    ; $58e2: $46
    cp h                                          ; $58e3: $bc
    jp c, $aa6b                                   ; $58e4: $da $6b $aa

    cp $8e                                        ; $58e7: $fe $8e
    sbc c                                         ; $58e9: $99
    ld h, a                                       ; $58ea: $67
    ld e, c                                       ; $58eb: $59
    ld a, h                                       ; $58ec: $7c
    ld a, [c]                                     ; $58ed: $f2
    dec b                                         ; $58ee: $05
    ld [hl+], a                                   ; $58ef: $22
    or a                                          ; $58f0: $b7
    ld [hl], a                                    ; $58f1: $77
    dec [hl]                                      ; $58f2: $35
    rst $10                                       ; $58f3: $d7
    sub h                                         ; $58f4: $94
    ld a, $e5                                     ; $58f5: $3e $e5
    jr nc, @-$3c                                  ; $58f7: $30 $c2

    adc l                                         ; $58f9: $8d
    sub a                                         ; $58fa: $97
    xor [hl]                                      ; $58fb: $ae
    and a                                         ; $58fc: $a7
    ld e, l                                       ; $58fd: $5d
    rst $08                                       ; $58fe: $cf
    xor e                                         ; $58ff: $ab
    jp nc, Jump_055_42f4                          ; $5900: $d2 $f4 $42

    db $dd                                        ; $5903: $dd
    push af                                       ; $5904: $f5
    and [hl]                                      ; $5905: $a6
    ld a, $8f                                     ; $5906: $3e $8f
    inc [hl]                                      ; $5908: $34
    ld c, c                                       ; $5909: $49
    cp d                                          ; $590a: $ba
    inc l                                         ; $590b: $2c
    dec bc                                        ; $590c: $0b
    sub l                                         ; $590d: $95
    ld l, e                                       ; $590e: $6b
    ret c                                         ; $590f: $d8

    ld l, d                                       ; $5910: $6a
    jp z, Jump_000_3a53                           ; $5911: $ca $53 $3a

    add $de                                       ; $5914: $c6 $de
    ld hl, $eabb                                  ; $5916: $21 $bb $ea

jr_055_5919:
    ld h, b                                       ; $5919: $60
    xor d                                         ; $591a: $aa
    ld e, c                                       ; $591b: $59
    inc a                                         ; $591c: $3c
    push af                                       ; $591d: $f5
    push bc                                       ; $591e: $c5
    xor c                                         ; $591f: $a9
    ld de, $97b7                                  ; $5920: $11 $b7 $97
    rrca                                          ; $5923: $0f
    ld b, h                                       ; $5924: $44
    rst $30                                       ; $5925: $f7
    ld hl, sp+$6b                                 ; $5926: $f8 $6b
    add a                                         ; $5928: $87
    dec l                                         ; $5929: $2d
    db $eb                                        ; $592a: $eb
    jr c, jr_055_5919                             ; $592b: $38 $ec

    ld b, h                                       ; $592d: $44

Jump_055_592e:
    cp l                                          ; $592e: $bd
    dec [hl]                                      ; $592f: $35
    cpl                                           ; $5930: $2f
    ld [hl], h                                    ; $5931: $74
    ld e, h                                       ; $5932: $5c
    ld [c], a                                     ; $5933: $e2
    add l                                         ; $5934: $85
    ld c, [hl]                                    ; $5935: $4e
    ld l, $9e                                     ; $5936: $2e $9e
    ld [hl-], a                                   ; $5938: $32
    ld b, e                                       ; $5939: $43
    inc b                                         ; $593a: $04
    ld a, l                                       ; $593b: $7d
    inc e                                         ; $593c: $1c
    ld b, [hl]                                    ; $593d: $46
    cp h                                          ; $593e: $bc
    jp c, $d18f                                   ; $593f: $da $8f $d1

    db $e3                                        ; $5942: $e3
    xor a                                         ; $5943: $af
    add $bf                                       ; $5944: $c6 $bf
    adc l                                         ; $5946: $8d
    ld e, d                                       ; $5947: $5a
    add sp, -$68                                  ; $5948: $e8 $98
    reti                                          ; $594a: $d9


    dec bc                                        ; $594b: $0b
    inc d                                         ; $594c: $14
    cp e                                          ; $594d: $bb
    or h                                          ; $594e: $b4
    cp e                                          ; $594f: $bb
    cpl                                           ; $5950: $2f
    inc sp                                        ; $5951: $33
    cp e                                          ; $5952: $bb
    jr nz, jr_055_5957                            ; $5953: $20 $02

    add hl, hl                                    ; $5955: $29
    ld h, h                                       ; $5956: $64

jr_055_5957:
    ld d, a                                       ; $5957: $57
    xor l                                         ; $5958: $ad
    or a                                          ; $5959: $b7
    ld h, $d4                                     ; $595a: $26 $d4
    ld d, a                                       ; $595c: $57
    ld [hl], b                                    ; $595d: $70
    dec a                                         ; $595e: $3d
    ld c, a                                       ; $595f: $4f
    sub [hl]                                      ; $5960: $96
    sbc b                                         ; $5961: $98
    sub a                                         ; $5962: $97
    pop af                                        ; $5963: $f1
    ld e, [hl]                                    ; $5964: $5e
    db $e3                                        ; $5965: $e3
    sbc l                                         ; $5966: $9d
    adc h                                         ; $5967: $8c
    rla                                           ; $5968: $17
    ld c, e                                       ; $5969: $4b
    ld b, e                                       ; $596a: $43
    cp d                                          ; $596b: $ba
    sub [hl]                                      ; $596c: $96
    jp Jump_055_5502                              ; $596d: $c3 $02 $55


    ld a, e                                       ; $5970: $7b
    ret                                           ; $5971: $c9


    sub h                                         ; $5972: $94
    and [hl]                                      ; $5973: $a6
    ld b, [hl]                                    ; $5974: $46
    cp b                                          ; $5975: $b8
    ld b, [hl]                                    ; $5976: $46
    ld d, d                                       ; $5977: $52
    dec sp                                        ; $5978: $3b
    ld sp, $0b37                                  ; $5979: $31 $37 $0b
    ld b, h                                       ; $597c: $44
    nop                                           ; $597d: $00
    ld e, [hl]                                    ; $597e: $5e
    pop af                                        ; $597f: $f1
    sub h                                         ; $5980: $94
    cp [hl]                                       ; $5981: $be
    inc de                                        ; $5982: $13
    push af                                       ; $5983: $f5
    cp $77                                        ; $5984: $fe $77
    ret z                                         ; $5986: $c8

    xor [hl]                                      ; $5987: $ae
    ld a, [hl+]                                   ; $5988: $2a
    jp $9b75                                      ; $5989: $c3 $75 $9b


    sub a                                         ; $598c: $97
    cp h                                          ; $598d: $bc
    jp c, Jump_055_518b                           ; $598e: $da $8b $51

    xor a                                         ; $5991: $af
    rst $00                                       ; $5992: $c7
    db $eb                                        ; $5993: $eb
    ld e, e                                       ; $5994: $5b
    halt                                          ; $5995: $76
    ld [hl-], a                                   ; $5996: $32
    ld e, $91                                     ; $5997: $1e $91
    ld c, c                                       ; $5999: $49
    ld a, [c]                                     ; $599a: $f2
    adc l                                         ; $599b: $8d
    adc $95                                       ; $599c: $ce $95
    cp $70                                        ; $599e: $fe $70
    dec a                                         ; $59a0: $3d
    add hl, sp                                    ; $59a1: $39
    add h                                         ; $59a2: $84
    sub c                                         ; $59a3: $91
    call $35df                                    ; $59a4: $cd $df $35
    ld l, d                                       ; $59a7: $6a
    sbc l                                         ; $59a8: $9d
    rla                                           ; $59a9: $17
    cp h                                          ; $59aa: $bc

Call_055_59ab:
    ld hl, sp-$1c                                 ; $59ab: $f8 $e4
    adc e                                         ; $59ad: $8b
    ld c, e                                       ; $59ae: $4b
    dec sp                                        ; $59af: $3b
    ld l, h                                       ; $59b0: $6c
    sbc c                                         ; $59b1: $99
    or d                                          ; $59b2: $b2
    ret z                                         ; $59b3: $c8

    dec de                                        ; $59b4: $1b
    sub c                                         ; $59b5: $91
    sbc e                                         ; $59b6: $9b
    ld [c], a                                     ; $59b7: $e2
    cp $65                                        ; $59b8: $fe $65
    rst $00                                       ; $59ba: $c7
    ld h, c                                       ; $59bb: $61
    db $ed                                        ; $59bc: $ed
    ld c, c                                       ; $59bd: $49
    ldh [rNR51], a                                ; $59be: $e0 $25
    adc [hl]                                      ; $59c0: $8e
    pop de                                        ; $59c1: $d1
    and e                                         ; $59c2: $a3
    db $eb                                        ; $59c3: $eb
    ld b, c                                       ; $59c4: $41
    inc b                                         ; $59c5: $04
    db $dd                                        ; $59c6: $dd
    and $25                                       ; $59c7: $e6 $25
    xor a                                         ; $59c9: $af
    or $63                                        ; $59ca: $f6 $63
    db $f4                                        ; $59cc: $f4
    inc e                                         ; $59cd: $1c
    inc l                                         ; $59ce: $2c
    call c, $987e                                 ; $59cf: $dc $7e $98
    ld h, h                                       ; $59d2: $64
    set 4, d                                      ; $59d3: $cb $e2
    sub e                                         ; $59d5: $93
    cpl                                           ; $59d6: $2f
    jp c, $f329                                   ; $59d7: $da $29 $f3

    sub d                                         ; $59da: $92
    ld d, a                                       ; $59db: $57
    inc sp                                        ; $59dc: $33
    adc a                                         ; $59dd: $8f
    dec l                                         ; $59de: $2d
    cp h                                          ; $59df: $bc
    inc h                                         ; $59e0: $24
    rst $00                                       ; $59e1: $c7
    db $d3                                        ; $59e2: $d3
    inc [hl]                                      ; $59e3: $34
    ld h, a                                       ; $59e4: $67
    daa                                           ; $59e5: $27
    db $e3                                        ; $59e6: $e3
    and l                                         ; $59e7: $a5
    sbc e                                         ; $59e8: $9b
    rst $00                                       ; $59e9: $c7
    push af                                       ; $59ea: $f5
    db $e4                                        ; $59eb: $e4
    ret nc                                        ; $59ec: $d0

    ccf                                           ; $59ed: $3f
    add sp, -$1b                                  ; $59ee: $e8 $e5
    ld [c], a                                     ; $59f0: $e2
    call nc, $dd08                                ; $59f1: $d4 $08 $dd
    and $d1                                       ; $59f4: $e6 $d1
    cp c                                          ; $59f6: $b9
    ld h, d                                       ; $59f7: $62
    ld a, e                                       ; $59f8: $7b
    push hl                                       ; $59f9: $e5
    ld e, d                                       ; $59fa: $5a
    db $d3                                        ; $59fb: $d3
    inc hl                                        ; $59fc: $23
    cp a                                          ; $59fd: $bf
    cp l                                          ; $59fe: $bd
    ld h, h                                       ; $59ff: $64
    daa                                           ; $5a00: $27
    ld sp, hl                                     ; $5a01: $f9
    ld c, d                                       ; $5a02: $4a
    adc l                                         ; $5a03: $8d
    and b                                         ; $5a04: $a0
    ld a, [bc]                                    ; $5a05: $0a
    ld [hl+], a                                   ; $5a06: $22
    dec a                                         ; $5a07: $3d
    ld c, c                                       ; $5a08: $49
    xor [hl]                                      ; $5a09: $ae
    pop de                                        ; $5a0a: $d1
    cp c                                          ; $5a0b: $b9
    ld c, [hl]                                    ; $5a0c: $4e
    ld a, [c]                                     ; $5a0d: $f2
    add h                                         ; $5a0e: $84
    and a                                         ; $5a0f: $a7
    inc l                                         ; $5a10: $2c
    inc hl                                        ; $5a11: $23
    inc l                                         ; $5a12: $2c
    cp l                                          ; $5a13: $bd
    db $10                                        ; $5a14: $10
    or a                                          ; $5a15: $b7
    db $e4                                        ; $5a16: $e4
    ld [c], a                                     ; $5a17: $e2
    pop hl                                        ; $5a18: $e1
    call z, $f553                                 ; $5a19: $cc $53 $f5
    inc de                                        ; $5a1c: $13
    ld b, d                                       ; $5a1d: $42
    ccf                                           ; $5a1e: $3f
    rrca                                          ; $5a1f: $0f
    ld l, $e5                                     ; $5a20: $2e $e5
    rst $00                                       ; $5a22: $c7
    add sp, -$1e                                  ; $5a23: $e8 $e2
    sub c                                         ; $5a25: $91
    call nc, $2f3a                                ; $5a26: $d4 $3a $2f
    ld a, [c]                                     ; $5a29: $f2
    call z, Call_055_5aec                         ; $5a2a: $cc $ec $5a
    sub d                                         ; $5a2d: $92
    db $e3                                        ; $5a2e: $e3
    cp c                                          ; $5a2f: $b9
    inc h                                         ; $5a30: $24
    ld d, h                                       ; $5a31: $54
    sub a                                         ; $5a32: $97
    ret z                                         ; $5a33: $c8

    ld a, c                                       ; $5a34: $79
    pop de                                        ; $5a35: $d1
    dec b                                         ; $5a36: $05
    ld de, $f8b7                                  ; $5a37: $11 $b7 $f8
    ldh a, [$94]                                  ; $5a3a: $f0 $94
    cp [hl]                                       ; $5a3c: $be
    inc de                                        ; $5a3d: $13
    dec [hl]                                      ; $5a3e: $35
    and d                                         ; $5a3f: $a2
    ld e, h                                       ; $5a40: $5c
    ld d, e                                       ; $5a41: $53
    ld c, $cb                                     ; $5a42: $0e $cb
    ld h, c                                       ; $5a44: $61
    db $f4                                        ; $5a45: $f4
    rla                                           ; $5a46: $17
    ld [hl], c                                    ; $5a47: $71
    push af                                       ; $5a48: $f5
    cpl                                           ; $5a49: $2f
    jp c, $bcf5                                   ; $5a4a: $da $f5 $bc

    ld a, [hl+]                                   ; $5a4d: $2a
    dec c                                         ; $5a4e: $0d
    inc e                                         ; $5a4f: $1c
    ldh [$bf], a                                  ; $5a50: $e0 $bf
    inc de                                        ; $5a52: $13
    push af                                       ; $5a53: $f5
    cp $27                                        ; $5a54: $fe $27
    ld e, l                                       ; $5a56: $5d
    ld [$d187], a                                 ; $5a57: $ea $87 $d1
    call nc, $cc4e                                ; $5a5a: $d4 $4e $cc
    ld hl, $4f5d                                  ; $5a5d: $21 $5d $4f
    ld h, h                                       ; $5a60: $64
    add h                                         ; $5a61: $84
    dec bc                                        ; $5a62: $0b
    ld [hl+], a                                   ; $5a63: $22
    dec a                                         ; $5a64: $3d
    jr jr_055_5ad2                                ; $5a65: $18 $6b

    rst $10                                       ; $5a67: $d7
    ld a, c                                       ; $5a68: $79
    jp c, $1c75                                   ; $5a69: $da $75 $1c

    halt                                          ; $5a6c: $76
    xor b                                         ; $5a6d: $a8
    ld c, c                                       ; $5a6e: $49
    or $e8                                        ; $5a6f: $f6 $e8
    sbc a                                         ; $5a71: $9f
    sbc e                                         ; $5a72: $9b
    sbc c                                         ; $5a73: $99
    ld [hl], a                                    ; $5a74: $77
    ld [hl-], a                                   ; $5a75: $32
    sbc $21                                       ; $5a76: $de $21
    db $eb                                        ; $5a78: $eb
    ld sp, $ce8f                                  ; $5a79: $31 $8f $ce
    sub l                                         ; $5a7c: $95
    cp $da                                        ; $5a7d: $fe $da
    push bc                                       ; $5a7f: $c5
    daa                                           ; $5a80: $27
    daa                                           ; $5a81: $27
    halt                                          ; $5a82: $76
    inc a                                         ; $5a83: $3c
    ld h, l                                       ; $5a84: $65
    ld e, [hl]                                    ; $5a85: $5e
    ld a, [c]                                     ; $5a86: $f2
    ld l, d                                       ; $5a87: $6a
    jp z, Jump_055_7702                           ; $5a88: $ca $02 $77

    ld e, e                                       ; $5a8b: $5b
    ld c, l                                       ; $5a8c: $4d
    ld e, c                                       ; $5a8d: $59
    and [hl]                                      ; $5a8e: $a6
    cp [hl]                                       ; $5a8f: $be
    db $f4                                        ; $5a90: $f4
    ld b, d                                       ; $5a91: $42
    rst $30                                       ; $5a92: $f7
    ld hl, sp+$6b                                 ; $5a93: $f8 $6b
    and a                                         ; $5a95: $a7
    inc l                                         ; $5a96: $2c
    ld [hl], e                                    ; $5a97: $73
    call $fc32                                    ; $5a98: $cd $32 $fc
    jp nz, Jump_055_713f                          ; $5a9b: $c2 $3f $71

    or h                                          ; $5a9e: $b4
    ld a, a                                       ; $5a9f: $7f
    db $db                                        ; $5aa0: $db
    ret                                           ; $5aa1: $c9


    ld a, b                                       ; $5aa2: $78
    ld h, h                                       ; $5aa3: $64
    ld h, l                                       ; $5aa4: $65
    jp c, $e4e7                                   ; $5aa5: $da $e7 $e4

    jp c, $a0dd                                   ; $5aa8: $da $dd $a0

    ld d, e                                       ; $5aab: $53
    ld b, h                                       ; $5aac: $44
    cpl                                           ; $5aad: $2f
    ld [hl], d                                    ; $5aae: $72
    rst $00                                       ; $5aaf: $c7
    and d                                         ; $5ab0: $a2
    ret c                                         ; $5ab1: $d8

    jp $d30e                                      ; $5ab2: $c3 $0e $d3


    ld a, c                                       ; $5ab5: $79
    ld [hl], h                                    ; $5ab6: $74
    xor [hl]                                      ; $5ab7: $ae
    ld d, c                                       ; $5ab8: $51
    and e                                         ; $5ab9: $a3
    cp a                                          ; $5aba: $bf
    adc b                                         ; $5abb: $88
    sub a                                         ; $5abc: $97
    jp Jump_000_27e8                              ; $5abd: $c3 $e8 $27


    pop bc                                        ; $5ac0: $c1
    db $10                                        ; $5ac1: $10
    ld bc, $dd80                                  ; $5ac2: $01 $80 $dd
    or h                                          ; $5ac5: $b4
    ld l, e                                       ; $5ac6: $6b
    sbc d                                         ; $5ac7: $9a
    jr jr_055_5b07                                ; $5ac8: $18 $3d

    cp $0d                                        ; $5aca: $fe $0d
    xor [hl]                                      ; $5acc: $ae
    adc a                                         ; $5acd: $8f
    jp $d44e                                      ; $5ace: $c3 $4e $d4


    ld e, e                                       ; $5ad1: $5b

jr_055_5ad2:
    di                                            ; $5ad2: $f3
    ld b, d                                       ; $5ad3: $42
    rst $00                                       ; $5ad4: $c7
    dec h                                         ; $5ad5: $25
    ld e, $d1                                     ; $5ad6: $1e $d1
    pop de                                        ; $5ad8: $d1
    dec de                                        ; $5ad9: $1b
    ld l, c                                       ; $5ada: $69
    sbc [hl]                                      ; $5adb: $9e
    ld [hl], d                                    ; $5adc: $72
    ret nc                                        ; $5add: $d0

    ld c, $5b                                     ; $5ade: $0e $5b
    sub $71                                       ; $5ae0: $d6 $71
    sbc b                                         ; $5ae2: $98
    ld l, e                                       ; $5ae3: $6b
    sbc c                                         ; $5ae4: $99
    inc h                                         ; $5ae5: $24
    ld sp, hl                                     ; $5ae6: $f9
    ld sp, $5b0f                                  ; $5ae7: $31 $0f $5b
    adc l                                         ; $5aea: $8d
    ld a, [de]                                    ; $5aeb: $1a

Call_055_5aec:
    dec de                                        ; $5aec: $1b
    ld h, e                                       ; $5aed: $63
    ld c, a                                       ; $5aee: $4f
    or d                                          ; $5aef: $b2
    sub a                                         ; $5af0: $97
    db $fc                                        ; $5af1: $fc
    sub $ea                                       ; $5af2: $d6 $ea
    rra                                           ; $5af4: $1f
    adc b                                         ; $5af5: $88
    nop                                           ; $5af6: $00
    db $dd                                        ; $5af7: $dd
    and $61                                       ; $5af8: $e6 $61
    ld l, d                                       ; $5afa: $6a
    ld c, c                                       ; $5afb: $49

Jump_055_5afc:
    ld e, a                                       ; $5afc: $5f
    push hl                                       ; $5afd: $e5
    add hl, hl                                    ; $5afe: $29
    ld c, e                                       ; $5aff: $4b
    ld l, d                                       ; $5b00: $6a
    inc b                                         ; $5b01: $04
    add b                                         ; $5b02: $80
    ei                                            ; $5b03: $fb
    xor d                                         ; $5b04: $aa
    inc de                                        ; $5b05: $13
    or d                                          ; $5b06: $b2

jr_055_5b07:
    jp nc, $e7ae                                  ; $5b07: $d2 $ae $e7

    ld d, l                                       ; $5b0a: $55
    ld l, c                                       ; $5b0b: $69
    or h                                          ; $5b0c: $b4
    ld d, e                                       ; $5b0d: $53
    ld l, a                                       ; $5b0e: $6f
    daa                                           ; $5b0f: $27
    ld [$79ad], a                                 ; $5b10: $ea $ad $79
    xor a                                         ; $5b13: $af
    pop af                                        ; $5b14: $f1
    sub d                                         ; $5b15: $92
    cp [hl]                                       ; $5b16: $be
    jp z, $d74b                                   ; $5b17: $ca $4b $d7

    db $db                                        ; $5b1a: $db
    rrca                                          ; $5b1b: $0f
    dec e                                         ; $5b1c: $1d
    dec bc                                        ; $5b1d: $0b
    ld b, h                                       ; $5b1e: $44
    db $dd                                        ; $5b1f: $dd
    ld h, [hl]                                    ; $5b20: $66
    or $5c                                        ; $5b21: $f6 $5c
    ld d, e                                       ; $5b23: $53
    sub [hl]                                      ; $5b24: $96
    ld e, c                                       ; $5b25: $59
    ld a, h                                       ; $5b26: $7c
    ret c                                         ; $5b27: $d8

    and e                                         ; $5b28: $a3
    ld a, a                                       ; $5b29: $7f
    ld l, [hl]                                    ; $5b2a: $6e
    ld h, [hl]                                    ; $5b2b: $66
    or $e2                                        ; $5b2c: $f6 $e2
    sub e                                         ; $5b2e: $93
    cpl                                           ; $5b2f: $2f
    sub [hl]                                      ; $5b30: $96
    ld [hl], l                                    ; $5b31: $75
    inc e                                         ; $5b32: $1c
    ld b, [hl]                                    ; $5b33: $46
    ccf                                           ; $5b34: $3f
    ld h, c                                       ; $5b35: $61
    adc b                                         ; $5b36: $88
    nop                                           ; $5b37: $00
    or a                                          ; $5b38: $b7
    or a                                          ; $5b39: $b7
    call z, Call_055_5dac                         ; $5b3a: $cc $ac $5d
    rst $08                                       ; $5b3d: $cf
    xor e                                         ; $5b3e: $ab
    jp nc, $dea4                                  ; $5b3f: $d2 $a4 $de

    dec d                                         ; $5b42: $15
    ld d, a                                       ; $5b43: $57
    adc a                                         ; $5b44: $8f
    call z, $3096                                 ; $5b45: $cc $96 $30
    cp $6d                                        ; $5b48: $fe $6d
    cp l                                          ; $5b4a: $bd
    db $eb                                        ; $5b4b: $eb
    db $d3                                        ; $5b4c: $d3
    db $f4                                        ; $5b4d: $f4
    sub a                                         ; $5b4e: $97
    and b                                         ; $5b4f: $a0
    ld e, l                                       ; $5b50: $5d
    ld c, $53                                     ; $5b51: $0e $53
    sub [hl]                                      ; $5b53: $96
    adc c                                         ; $5b54: $89
    add $a3                                       ; $5b55: $c6 $a3
    ld [hl], e                                    ; $5b57: $73
    ld h, c                                       ; $5b58: $61
    scf                                           ; $5b59: $37
    set 5, b                                      ; $5b5a: $cb $e8
    cpl                                           ; $5b5c: $2f
    ld [c], a                                     ; $5b5d: $e2
    sbc d                                         ; $5b5e: $9a
    jp nc, $bb47                                  ; $5b5f: $d2 $47 $bb

    call nc, $930f                                ; $5b62: $d4 $0f $93
    call z, $de2e                                 ; $5b65: $cc $2e $de
    rra                                           ; $5b68: $1f
    sbc l                                         ; $5b69: $9d
    dec bc                                        ; $5b6a: $0b
    cp e                                          ; $5b6b: $bb
    and l                                         ; $5b6c: $a5
    ld [hl], e                                    ; $5b6d: $73
    ld a, h                                       ; $5b6e: $7c
    ld d, e                                       ; $5b6f: $53
    rra                                           ; $5b70: $1f
    ld [hl+], a                                   ; $5b71: $22
    dec a                                         ; $5b72: $3d
    xor a                                         ; $5b73: $af
    and [hl]                                      ; $5b74: $a6
    db $f4                                        ; $5b75: $f4
    push bc                                       ; $5b76: $c5
    daa                                           ; $5b77: $27
    ld e, a                                       ; $5b78: $5f
    inc l                                         ; $5b79: $2c
    jp c, $bcf5                                   ; $5b7a: $da $f5 $bc

    ld a, [hl+]                                   ; $5b7d: $2a
    ld c, l                                       ; $5b7e: $4d
    cpl                                           ; $5b7f: $2f
    inc b                                         ; $5b80: $04
    rst $30                                       ; $5b81: $f7
    ld hl, sp+$6b                                 ; $5b82: $f8 $6b
    rst $10                                       ; $5b84: $d7

jr_055_5b85:
    ld [hl], c                                    ; $5b85: $71
    jr jr_055_5b85                                ; $5b86: $18 $fd

    add h                                         ; $5b88: $84
    and a                                         ; $5b89: $a7
    inc l                                         ; $5b8a: $2c
    ei                                            ; $5b8b: $fb
    ld sp, $221a                                  ; $5b8c: $31 $1a $22
    add b                                         ; $5b8f: $80
    db $dd                                        ; $5b90: $dd
    or h                                          ; $5b91: $b4
    ld d, e                                       ; $5b92: $53
    ld a, [$aa68]                                 ; $5b93: $fa $68 $aa
    ld b, [hl]                                    ; $5b96: $46
    rst $20                                       ; $5b97: $e7
    ld [c], a                                     ; $5b98: $e2
    ld h, e                                       ; $5b99: $63
    ld h, [hl]                                    ; $5b9a: $66
    adc a                                         ; $5b9b: $8f
    ld e, d                                       ; $5b9c: $5a
    inc sp                                        ; $5b9d: $33
    dec de                                        ; $5b9e: $1b
    xor [hl]                                      ; $5b9f: $ae
    adc a                                         ; $5ba0: $8f
    jp $df92                                      ; $5ba1: $c3 $92 $df


    or $63                                        ; $5ba4: $f6 $63
    db $f4                                        ; $5ba6: $f4
    adc b                                         ; $5ba7: $88
    scf                                           ; $5ba8: $37
    ret                                           ; $5ba9: $c9


    sub [hl]                                      ; $5baa: $96
    cp l                                          ; $5bab: $bd
    sub [hl]                                      ; $5bac: $96
    db $e4                                        ; $5bad: $e4
    ld l, d                                       ; $5bae: $6a
    ccf                                           ; $5baf: $3f
    ld a, b                                       ; $5bb0: $78
    jp hl                                         ; $5bb1: $e9


    ld a, d                                       ; $5bb2: $7a
    ld [hl+], a                                   ; $5bb3: $22
    db $fc                                        ; $5bb4: $fc
    dec de                                        ; $5bb5: $1b
    db $ed                                        ; $5bb6: $ed
    sub $5c                                       ; $5bb7: $d6 $5c
    inc hl                                        ; $5bb9: $23
    ld e, h                                       ; $5bba: $5c
    xor c                                         ; $5bbb: $a9
    ld de, $3fb7                                  ; $5bbc: $11 $b7 $3f
    pop hl                                        ; $5bbf: $e1
    add hl, hl                                    ; $5bc0: $29
    ld a, l                                       ; $5bc1: $7d
    pop af                                        ; $5bc2: $f1
    ret                                           ; $5bc3: $c9


    rla                                           ; $5bc4: $17
    res 2, h                                      ; $5bc5: $cb $94
    ld b, l                                       ; $5bc7: $45
    cp h                                          ; $5bc8: $bc
    ldh a, [rNR50]                                ; $5bc9: $f0 $24
    ld e, b                                       ; $5bcb: $58
    or h                                          ; $5bcc: $b4
    db $eb                                        ; $5bcd: $eb
    ld a, c                                       ; $5bce: $79
    ld d, l                                       ; $5bcf: $55
    sbc d                                         ; $5bd0: $9a
    ld e, [hl]                                    ; $5bd1: $5e
    ld [$f8f7], sp                                ; $5bd2: $08 $f7 $f8
    ld l, e                                       ; $5bd5: $6b
    and a                                         ; $5bd6: $a7
    inc l                                         ; $5bd7: $2c
    ld [hl], e                                    ; $5bd8: $73
    adc l                                         ; $5bd9: $8d
    ld l, $63                                     ; $5bda: $2e $63
    push hl                                       ; $5bdc: $e5
    and $33                                       ; $5bdd: $e6 $33
    sub d                                         ; $5bdf: $92
    ld a, [de]                                    ; $5be0: $1a
    ld e, l                                       ; $5be1: $5d
    sbc a                                         ; $5be2: $9f
    adc $0c                                       ; $5be3: $ce $0c
    ld de, $fadd                                  ; $5be5: $11 $dd $fa
    jr nc, @+$37                                  ; $5be8: $30 $35

    ld a, [$788b]                                 ; $5bea: $fa $8b $78
    jp z, Jump_055_7702                           ; $5bed: $ca $02 $77

    ld b, a                                       ; $5bf0: $47
    adc h                                         ; $5bf1: $8c
    sbc $89                                       ; $5bf2: $de $89
    ld a, [hl-]                                   ; $5bf4: $3a
    ld c, l                                       ; $5bf5: $4d
    rrca                                          ; $5bf6: $0f
    dec sp                                        ; $5bf7: $3b
    call z, $f0b2                                 ; $5bf8: $cc $b2 $f0
    inc h                                         ; $5bfb: $24
    adc h                                         ; $5bfc: $8c
    ld a, a                                       ; $5bfd: $7f
    ld c, e                                       ; $5bfe: $4b
    adc l                                         ; $5bff: $8d

jr_055_5c00:
    nop                                           ; $5c00: $00
    db $dd                                        ; $5c01: $dd
    ld a, [$5788]                                 ; $5c02: $fa $88 $57
    ei                                            ; $5c05: $fb
    ld sp, $ad7a                                  ; $5c06: $31 $7a $ad
    db $eb                                        ; $5c09: $eb
    ldh a, [$32]                                  ; $5c0a: $f0 $32
    ld c, c                                       ; $5c0c: $49
    add [hl]                                      ; $5c0d: $86
    sub a                                         ; $5c0e: $97
    ld e, b                                       ; $5c0f: $58
    ldh [$fa], a                                  ; $5c10: $e0 $fa
    jr c, jr_055_5c00                             ; $5c12: $38 $ec

    scf                                           ; $5c14: $37
    add a                                         ; $5c15: $87
    ldh [$5a], a                                  ; $5c16: $e0 $5a
    rst $28                                       ; $5c18: $ef
    ld a, [$fd34]                                 ; $5c19: $fa $34 $fd
    dec h                                         ; $5c1c: $25
    call z, $c3cc                                 ; $5c1d: $cc $cc $c3
    ld e, a                                       ; $5c20: $5f
    db $f4                                        ; $5c21: $f4
    ld b, e                                       ; $5c22: $43

Call_055_5c23:
    ld h, [hl]                                    ; $5c23: $66
    ld c, e                                       ; $5c24: $4b
    add b                                         ; $5c25: $80
    ld [$4210], sp                                ; $5c26: $08 $10 $42
    inc sp                                        ; $5c29: $33

jr_055_5c2a:
    cp e                                          ; $5c2a: $bb
    sub [hl]                                      ; $5c2b: $96
    ld b, d                                       ; $5c2c: $42
    sub c                                         ; $5c2d: $91
    ld a, $9c                                     ; $5c2e: $3e $9c
    dec bc                                        ; $5c30: $0b
    ld e, e                                       ; $5c31: $5b
    or $77                                        ; $5c32: $f6 $77
    ld sp, hl                                     ; $5c34: $f9
    sub l                                         ; $5c35: $95
    rst $10                                       ; $5c36: $d7
    ld e, [hl]                                    ; $5c37: $5e
    or a                                          ; $5c38: $b7
    ld [hl], h                                    ; $5c39: $74
    cp l                                          ; $5c3a: $bd
    jp $9653                                      ; $5c3b: $c3 $53 $96


    ld [hl], l                                    ; $5c3e: $75
    push bc                                       ; $5c3f: $c5
    inc l                                         ; $5c40: $2c
    add hl, de                                    ; $5c41: $19
    rst $38                                       ; $5c42: $ff
    inc de                                        ; $5c43: $13
    cp l                                          ; $5c44: $bd
    ld [hl], h                                    ; $5c45: $74
    ld c, [hl]                                    ; $5c46: $4e
    scf                                           ; $5c47: $37
    bit 1, [hl]                                   ; $5c48: $cb $4e
    add $23                                       ; $5c4a: $c6 $23
    sbc [hl]                                      ; $5c4c: $9e
    ld d, d                                       ; $5c4d: $52
    ld e, [hl]                                    ; $5c4e: $5e
    db $ec                                        ; $5c4f: $ec
    ld e, b                                       ; $5c50: $58
    call nz, Call_000_20ec                        ; $5c51: $c4 $ec $20
    and $29                                       ; $5c54: $e6 $29
    di                                            ; $5c56: $f3
    ld l, $bf                                     ; $5c57: $2e $bf
    ld a, [bc]                                    ; $5c59: $0a
    adc [hl]                                      ; $5c5a: $8e
    ld a, [hl+]                                   ; $5c5b: $2a
    ld b, d                                       ; $5c5c: $42
    rla                                           ; $5c5d: $17
    ld d, l                                       ; $5c5e: $55
    add [hl]                                      ; $5c5f: $86
    db $10                                        ; $5c60: $10
    ld [hl+], a                                   ; $5c61: $22
    add b                                         ; $5c62: $80
    ld l, b                                       ; $5c63: $68
    ld a, d                                       ; $5c64: $7a
    ld [$d769], a                                 ; $5c65: $ea $69 $d7
    di                                            ; $5c68: $f3
    xor d                                         ; $5c69: $aa
    inc [hl]                                      ; $5c6a: $34
    jp c, $8c9d                                   ; $5c6b: $da $9d $8c

    rst $10                                       ; $5c6e: $d7
    ld [hl], c                                    ; $5c6f: $71
    ret c                                         ; $5c70: $d8

    adc c                                         ; $5c71: $89
    ret                                           ; $5c72: $c9


    ld h, e                                       ; $5c73: $63
    ld c, [hl]                                    ; $5c74: $4e

jr_055_5c75:
    cp l                                          ; $5c75: $bd
    cp e                                          ; $5c76: $bb
    dec l                                         ; $5c77: $2d
    db $eb                                        ; $5c78: $eb
    jr c, @-$12                                   ; $5c79: $38 $ec

    call nz, $f6d7                                ; $5c7b: $c4 $d7 $f6
    ld h, e                                       ; $5c7e: $63
    db $f4                                        ; $5c7f: $f4
    jp nz, $e39f                                  ; $5c80: $c2 $9f $e3

    pop hl                                        ; $5c83: $e1
    ld a, d                                       ; $5c84: $7a
    jp $f45f                                      ; $5c85: $c3 $5f $f4


    ld b, e                                       ; $5c88: $43
    ld h, [hl]                                    ; $5c89: $66
    ld c, e                                       ; $5c8a: $4b
    jr jr_055_5c2a                                ; $5c8b: $18 $9d

    ld l, e                                       ; $5c8d: $6b
    jp z, Jump_055_5dac                           ; $5c8e: $ca $ac $5d

    ld a, [$a795]                                 ; $5c91: $fa $95 $a7
    cp h                                          ; $5c94: $bc
    db $e4                                        ; $5c95: $e4
    ld c, c                                       ; $5c96: $49
    ei                                            ; $5c97: $fb
    pop bc                                        ; $5c98: $c1
    cp e                                          ; $5c99: $bb
    ld a, d                                       ; $5c9a: $7a
    ld [hl], h                                    ; $5c9b: $74
    xor [hl]                                      ; $5c9c: $ae
    ld d, c                                       ; $5c9d: $51
    ld a, e                                       ; $5c9e: $7b
    ld c, c                                       ; $5c9f: $49
    cp d                                          ; $5ca0: $ba
    inc [hl]                                      ; $5ca1: $34

Jump_055_5ca2:
    db $ec                                        ; $5ca2: $ec
    pop af                                        ; $5ca3: $f1
    rst $00                                       ; $5ca4: $c7
    ld d, $88                                     ; $5ca5: $16 $88
    nop                                           ; $5ca7: $00
    scf                                           ; $5ca8: $37
    or a                                          ; $5ca9: $b7
    add $5f                                       ; $5caa: $c6 $5f
    call $beb2                                    ; $5cac: $cd $b2 $be
    jp z, Jump_055_76a3                           ; $5caf: $ca $a3 $76

    inc a                                         ; $5cb2: $3c
    push hl                                       ; $5cb3: $e5
    or b                                          ; $5cb4: $b0
    ccf                                           ; $5cb5: $3f
    db $fc                                        ; $5cb6: $fc
    push bc                                       ; $5cb7: $c5
    db $e3                                        ; $5cb8: $e3
    adc a                                         ; $5cb9: $8f
    ld e, l                                       ; $5cba: $5d
    ld [hl], b                                    ; $5cbb: $70
    or a                                          ; $5cbc: $b7
    jr c, jr_055_5c75                             ; $5cbd: $38 $b6

    rla                                           ; $5cbf: $17
    ld e, h                                       ; $5cc0: $5c
    ld d, e                                       ; $5cc1: $53
    sbc $d5                                       ; $5cc2: $de $d5
    jp $f45f                                      ; $5cc4: $c3 $5f $f4


    ld b, e                                       ; $5cc7: $43
    ld h, [hl]                                    ; $5cc8: $66
    ld c, e                                       ; $5cc9: $4b
    or b                                          ; $5cca: $b0
    ld a, b                                       ; $5ccb: $78
    ld [hl], h                                    ; $5ccc: $74
    xor [hl]                                      ; $5ccd: $ae
    cp l                                          ; $5cce: $bd
    inc h                                         ; $5ccf: $24
    ld e, l                                       ; $5cd0: $5d
    ld a, [de]                                    ; $5cd1: $1a
    halt                                          ; $5cd2: $76
    dec sp                                        ; $5cd3: $3b
    ld d, $88                                     ; $5cd4: $16 $88
    nop                                           ; $5cd6: $00
    ld a, l                                       ; $5cd7: $7d
    inc e                                         ; $5cd8: $1c
    halt                                          ; $5cd9: $76
    xor b                                         ; $5cda: $a8
    ld e, c                                       ; $5cdb: $59
    ld d, $9f                                     ; $5cdc: $16 $9f
    ld a, h                                       ; $5cde: $7c
    reti                                          ; $5cdf: $d9


    ret                                           ; $5ce0: $c9


Jump_055_5ce1:
    ld a, b                                       ; $5ce1: $78
    ld [hl], h                                    ; $5ce2: $74
    xor [hl]                                      ; $5ce3: $ae
    sub e                                         ; $5ce4: $93
    inc a                                         ; $5ce5: $3c
    pop hl                                        ; $5ce6: $e1
    jp hl                                         ; $5ce7: $e9


Call_055_5ce8:
    inc a                                         ; $5ce8: $3c
    dec c                                         ; $5ce9: $0d
    or e                                          ; $5cea: $b3
    ld c, e                                       ; $5ceb: $4b
    ld [hl], l                                    ; $5cec: $75
    push de                                       ; $5ced: $d5
    db $d3                                        ; $5cee: $d3
    ld c, $5b                                     ; $5cef: $0e $5b
    sub $71                                       ; $5cf1: $d6 $71
    ret c                                         ; $5cf3: $d8

    pop de                                        ; $5cf4: $d1
    ld [$4cfb], sp                                ; $5cf5: $08 $fb $4c
    ld e, c                                       ; $5cf8: $59
    sub [hl]                                      ; $5cf9: $96
    cp h                                          ; $5cfa: $bc
    ld a, [de]                                    ; $5cfb: $1a
    halt                                          ; $5cfc: $76
    xor l                                         ; $5cfd: $ad
    db $fd                                        ; $5cfe: $fd

jr_055_5cff:
    sub $9e                                       ; $5cff: $d6 $9e
    halt                                          ; $5d01: $76
    db $ed                                        ; $5d02: $ed
    rst $00                                       ; $5d03: $c7
    sub e                                         ; $5d04: $93
    ld sp, $f744                                  ; $5d05: $31 $44 $f7
    ld hl, sp+$6b                                 ; $5d08: $f8 $6b
    add a                                         ; $5d0a: $87
    dec l                                         ; $5d0b: $2d
    dec sp                                        ; $5d0c: $3b
    call nc, Call_055_5788                        ; $5d0d: $d4 $88 $57
    db $eb                                        ; $5d10: $eb
    jr c, jr_055_5cff                             ; $5d11: $38 $ec

    rst $00                                       ; $5d13: $c7
    add sp, $1d                                   ; $5d14: $e8 $1d
    inc sp                                        ; $5d16: $33
    rst $08                                       ; $5d17: $cf
    call z, $11ae                                 ; $5d18: $cc $ae $11
    ld l, [hl]                                    ; $5d1b: $6e
    call $1105                                    ; $5d1c: $cd $05 $11
    rst $30                                       ; $5d1f: $f7
    ld hl, sp-$3d                                 ; $5d20: $f8 $c3
    db $dd                                        ; $5d22: $dd
    ld l, l                                       ; $5d23: $6d
    add hl, de                                    ; $5d24: $19
    sub c                                         ; $5d25: $91
    db $fc                                        ; $5d26: $fc
    inc sp                                        ; $5d27: $33
    ld h, l                                       ; $5d28: $65
    sbc [hl]                                      ; $5d29: $9e
    ld l, e                                       ; $5d2a: $6b

Jump_055_5d2b:
    sub [hl]                                      ; $5d2b: $96
    sub c                                         ; $5d2c: $91
    call nc, $cc4e                                ; $5d2d: $d4 $4e $cc
    call Call_055_5da2                            ; $5d30: $cd $a2 $5d
    ld h, d                                       ; $5d33: $62
    and l                                         ; $5d34: $a5
    ld e, h                                       ; $5d35: $5c
    db $eb                                        ; $5d36: $eb
    jr c, @-$72                                   ; $5d37: $38 $8c

    and h                                         ; $5d39: $a4
    or $78                                        ; $5d3a: $f6 $78
    jp z, $b232                                   ; $5d3c: $ca $32 $b2

    cp d                                          ; $5d3f: $ba
    ld [de], a                                    ; $5d40: $12
    rst $10                                       ; $5d41: $d7
    xor b                                         ; $5d42: $a8
    push bc                                       ; $5d43: $c5
    adc h                                         ; $5d44: $8c
    or c                                          ; $5d45: $b1
    ld [hl], a                                    ; $5d46: $77
    inc e                                         ; $5d47: $1c
    and [hl]                                      ; $5d48: $a6
    di                                            ; $5d49: $f3
    cp $e8                                        ; $5d4a: $fe $e8
    ld a, [$a74d]                                 ; $5d4c: $fa $4d $a7
    add hl, de                                    ; $5d4f: $19
    ld [hl+], a                                   ; $5d50: $22
    ld a, l                                       ; $5d51: $7d
    inc e                                         ; $5d52: $1c
    ld b, [hl]                                    ; $5d53: $46
    cp h                                          ; $5d54: $bc
    jp c, $aa6b                                   ; $5d55: $da $6b $aa

    cp $8e                                        ; $5d58: $fe $8e
    sbc c                                         ; $5d5a: $99
    ld h, a                                       ; $5d5b: $67
    add hl, de                                    ; $5d5c: $19
    db $fd                                        ; $5d5d: $fd
    ld [hl], e                                    ; $5d5e: $73
    inc sp                                        ; $5d5f: $33
    di                                            ; $5d60: $f3
    ld [c], a                                     ; $5d61: $e2
    sub e                                         ; $5d62: $93
    cpl                                           ; $5d63: $2f
    ld [hl], b                                    ; $5d64: $70
    ld a, l                                       ; $5d65: $7d
    inc e                                         ; $5d66: $1c
    ld b, [hl]                                    ; $5d67: $46
    ld d, b                                       ; $5d68: $50
    and h                                         ; $5d69: $a4
    ld l, e                                       ; $5d6a: $6b
    dec e                                         ; $5d6b: $1d
    add a                                         ; $5d6c: $87
    cp l                                          ; $5d6d: $bd
    and [hl]                                      ; $5d6e: $a6
    ld [$a68f], a                                 ; $5d6f: $ea $8f $a6
    ld l, d                                       ; $5d72: $6a
    rst $00                                       ; $5d73: $c7
    or e                                          ; $5d74: $b3
    adc h                                         ; $5d75: $8c
    ld [hl], b                                    ; $5d76: $70
    ld l, e                                       ; $5d77: $6b
    ld l, $88                                     ; $5d78: $2e $88
    nop                                           ; $5d7a: $00
    ld a, l                                       ; $5d7b: $7d
    inc e                                         ; $5d7c: $1c
    halt                                          ; $5d7d: $76
    xor b                                         ; $5d7e: $a8
    ld e, c                                       ; $5d7f: $59
    or $67                                        ; $5d80: $f6 $67
    sbc c                                         ; $5d82: $99
    xor d                                         ; $5d83: $aa
    ld l, $3c                                     ; $5d84: $2e $3c
    set 0, d                                      ; $5d86: $cb $c2
    sub e                                         ; $5d88: $93
    and b                                         ; $5d89: $a0
    dec e                                         ; $5d8a: $1d
    or [hl]                                       ; $5d8b: $b6
    ld c, h                                       ; $5d8c: $4c

Call_055_5d8d:
    cp l                                          ; $5d8d: $bd
    ld de, $294f                                  ; $5d8e: $11 $4f $29
    xor a                                         ; $5d91: $af
    db $e3                                        ; $5d92: $e3
    or b                                          ; $5d93: $b0
    ld b, e                                       ; $5d94: $43
    cp $c3                                        ; $5d95: $fe $c3
    and e                                         ; $5d97: $a3
    ld [hl], e                                    ; $5d98: $73
    dec c                                         ; $5d99: $0d
    ccf                                           ; $5d9a: $3f
    add hl, bc                                    ; $5d9b: $09
    ld e, [hl]                                    ; $5d9c: $5e
    xor h                                         ; $5d9d: $ac
    daa                                           ; $5d9e: $27
    rst $18                                       ; $5d9f: $df
    pop af                                        ; $5da0: $f1
    ld b, l                                       ; $5da1: $45

Call_055_5da2:
    rla                                           ; $5da2: $17
    ld b, h                                       ; $5da3: $44
    rst $30                                       ; $5da4: $f7

Call_055_5da5:
Jump_055_5da5:
    ld hl, sp+$6b                                 ; $5da5: $f8 $6b
    sub a                                         ; $5da7: $97
    ld a, [hl]                                    ; $5da8: $7e
    push hl                                       ; $5da9: $e5
    pop de                                        ; $5daa: $d1
    ccf                                           ; $5dab: $3f

Call_055_5dac:
Jump_055_5dac:
    scf                                           ; $5dac: $37
    inc sp                                        ; $5dad: $33
    ld a, e                                       ; $5dae: $7b
    db $e4                                        ; $5daf: $e4
    ld d, e                                       ; $5db0: $53
    jp z, $1105                                   ; $5db1: $ca $05 $11

    rst $30                                       ; $5db4: $f7
    ld hl, sp-$3d                                 ; $5db5: $f8 $c3
    db $dd                                        ; $5db7: $dd
    ld l, l                                       ; $5db8: $6d
    ld e, c                                       ; $5db9: $59
    rst $00                                       ; $5dba: $c7
    ld h, c                                       ; $5dbb: $61
    call nz, Call_000_1dab                        ; $5dbc: $c4 $ab $1d
    inc sp                                        ; $5dbf: $33
    rst $08                                       ; $5dc0: $cf
    or d                                          ; $5dc1: $b2
    and a                                         ; $5dc2: $a7

Jump_055_5dc3:
    and a                                         ; $5dc3: $a7
    ld e, l                                       ; $5dc4: $5d
    pop hl                                        ; $5dc5: $e1
    sra h                                         ; $5dc6: $cb $2c
    dec bc                                        ; $5dc8: $0b
    ld c, a                                       ; $5dc9: $4f
    jp nz, Jump_000_325e                          ; $5dca: $c2 $5e $32

    ld a, [hl-]                                   ; $5dcd: $3a
    rla                                           ; $5dce: $17
    sbc $c9                                       ; $5dcf: $de $c9
    ld a, b                                       ; $5dd1: $78
    sub [hl]                                      ; $5dd2: $96
    push bc                                       ; $5dd3: $c5
    daa                                           ; $5dd4: $27
    ld e, a                                       ; $5dd5: $5f
    jr nz, jr_055_5dda                            ; $5dd6: $20 $02

    scf                                           ; $5dd8: $37
    adc e                                         ; $5dd9: $8b

jr_055_5dda:
    ld l, e                                       ; $5dda: $6b
    ccf                                           ; $5ddb: $3f
    ld b, [hl]                                    ; $5ddc: $46
    adc a                                         ; $5ddd: $8f
    ld c, b                                       ; $5dde: $48
    sbc $94                                       ; $5ddf: $de $94
    cp [hl]                                       ; $5de1: $be
    and h                                         ; $5de2: $a4
    cp d                                          ; $5de3: $ba
    sub d                                         ; $5de4: $92
    and $5a                                       ; $5de5: $e6 $5a
    add $10                                       ; $5de7: $c6 $10
    ld bc, $af3d                                  ; $5de9: $01 $3d $af
    and [hl]                                      ; $5dec: $a6
    db $f4                                        ; $5ded: $f4
    dec e                                         ; $5dee: $1d
    inc sp                                        ; $5def: $33
    rst $08                                       ; $5df0: $cf
    ld [hl-], a                                   ; $5df1: $32
    ld a, [$66e7]                                 ; $5df2: $fa $e7 $66
    and $c5                                       ; $5df5: $e6 $c5
    daa                                           ; $5df7: $27
    ld e, a                                       ; $5df8: $5f
    ld a, d                                       ; $5df9: $7a
    ld hl, $f8f7                                  ; $5dfa: $21 $f7 $f8
    jp Jump_055_6ddd                              ; $5dfd: $c3 $dd $6d


    ld e, c                                       ; $5e00: $59
    ld a, h                                       ; $5e01: $7c
    ld [hl], d                                    ; $5e02: $72
    ld h, d                                       ; $5e03: $62
    rst $00                                       ; $5e04: $c7
    ld d, e                                       ; $5e05: $53
    ld a, [$2ea2]                                 ; $5e06: $fa $a2 $2e
    ld [c], a                                     ; $5e09: $e2
    or l                                          ; $5e0a: $b5
    inc e                                         ; $5e0b: $1c
    and e                                         ; $5e0c: $a3
    and a                                         ; $5e0d: $a7
    inc l                                         ; $5e0e: $2c
    db $e3                                        ; $5e0f: $e3
    rst $18                                       ; $5e10: $df
    and [hl]                                      ; $5e11: $a6
    inc e                                         ; $5e12: $1c
    add [hl]                                      ; $5e13: $86
    xor l                                         ; $5e14: $ad
    ld h, [hl]                                    ; $5e15: $66
    add hl, de                                    ; $5e16: $19
    db $fd                                        ; $5e17: $fd
    ld [hl], e                                    ; $5e18: $73
    inc sp                                        ; $5e19: $33
    di                                            ; $5e1a: $f3
    add d                                         ; $5e1b: $82
    sbc $2a                                       ; $5e1c: $de $2a
    ld [hl], e                                    ; $5e1e: $73
    cpl                                           ; $5e1f: $2f
    inc b                                         ; $5e20: $04
    ld a, l                                       ; $5e21: $7d

Jump_055_5e22:
    inc e                                         ; $5e22: $1c
    halt                                          ; $5e23: $76
    xor b                                         ; $5e24: $a8
    ld e, c                                       ; $5e25: $59
    halt                                          ; $5e26: $76
    ld [hl-], a                                   ; $5e27: $32
    ld e, [hl]                                    ; $5e28: $5e
    ld a, [c]                                     ; $5e29: $f2
    ld l, d                                       ; $5e2a: $6a
    add a                                         ; $5e2b: $87
    inc l                                         ; $5e2c: $2c
    rst $00                                       ; $5e2d: $c7
    ld l, b                                       ; $5e2e: $68
    jp c, Jump_055_7ea5                           ; $5e2f: $da $a5 $7e

    ret c                                         ; $5e32: $d8

    ld c, e                                       ; $5e33: $4b
    halt                                          ; $5e34: $76
    cp [hl]                                       ; $5e35: $be
    adc b                                         ; $5e36: $88
    ld h, a                                       ; $5e37: $67
    ld e, c                                       ; $5e38: $59
    ld a, b                                       ; $5e39: $78
    ld [de], a                                    ; $5e3a: $12
    or h                                          ; $5e3b: $b4
    jp Jump_000_1196                              ; $5e3c: $c3 $96 $11


    ld l, [hl]                                    ; $5e3f: $6e
    inc a                                         ; $5e40: $3c
    ld a, [$66e7]                                 ; $5e41: $fa $e7 $66
    and $25                                       ; $5e44: $e6 $25
    xor a                                         ; $5e46: $af
    and [hl]                                      ; $5e47: $a6
    inc l                                         ; $5e48: $2c
    ei                                            ; $5e49: $fb
    ld sp, $221a                                  ; $5e4a: $31 $1a $22
    rst $30                                       ; $5e4d: $f7
    ld hl, sp-$3d                                 ; $5e4e: $f8 $c3
    db $dd                                        ; $5e50: $dd
    ld l, l                                       ; $5e51: $6d
    ld e, c                                       ; $5e52: $59
    inc sp                                        ; $5e53: $33
    adc a                                         ; $5e54: $8f
    ld [hl], b                                    ; $5e55: $70
    ld l, e                                       ; $5e56: $6b
    xor [hl]                                      ; $5e57: $ae
    jp hl                                         ; $5e58: $e9


    ld l, h                                       ; $5e59: $6c
    cp b                                          ; $5e5a: $b8
    dec sp                                        ; $5e5b: $3b
    sbc a                                         ; $5e5c: $9f
    ld a, h                                       ; $5e5d: $7c
    ld [hl], c                                    ; $5e5e: $71
    dec l                                         ; $5e5f: $2d
    ld a, $d9                                     ; $5e60: $3e $d9
    adc a                                         ; $5e62: $8f
    pop de                                        ; $5e63: $d1
    and e                                         ; $5e64: $a3
    ld [hl], e                                    ; $5e65: $73
    xor c                                         ; $5e66: $a9
    ld a, d                                       ; $5e67: $7a
    and e                                         ; $5e68: $a3
    ld d, $a8                                     ; $5e69: $16 $a8
    db $fd                                        ; $5e6b: $fd
    ld [hl], c                                    ; $5e6c: $71
    dec a                                         ; $5e6d: $3d
    sub d                                         ; $5e6e: $92
    ld [hl], h                                    ; $5e6f: $74
    ld b, c                                       ; $5e70: $41
    inc b                                         ; $5e71: $04
    rst $30                                       ; $5e72: $f7
    ld hl, sp-$3d                                 ; $5e73: $f8 $c3
    db $dd                                        ; $5e75: $dd
    and d                                         ; $5e76: $a2
    sub a                                         ; $5e77: $97
    ld a, [c]                                     ; $5e78: $f2
    ld a, [hl-]                                   ; $5e79: $3a
    ld c, $53                                     ; $5e7a: $0e $53
    and $5e                                       ; $5e7c: $e6 $5e
    ld [$f8f7], sp                                ; $5e7e: $08 $f7 $f8
    ld l, e                                       ; $5e81: $6b
    add a                                         ; $5e82: $87
    dec l                                         ; $5e83: $2d
    inc hl                                        ; $5e84: $23
    sub d                                         ; $5e85: $92
    ld a, a                                       ; $5e86: $7f
    sub $71                                       ; $5e87: $d6 $71
    ret c                                         ; $5e89: $d8

    ld [hl], c                                    ; $5e8a: $71
    call $dda2                                    ; $5e8b: $cd $a2 $dd
    adc c                                         ; $5e8e: $89
    xor a                                         ; $5e8f: $af
    xor l                                         ; $5e90: $ad
    db $e3                                        ; $5e91: $e3
    or b                                          ; $5e92: $b0
    di                                            ; $5e93: $f3
    rst $30                                       ; $5e94: $f7
    ld a, b                                       ; $5e95: $78
    ld c, d                                       ; $5e96: $4a
    rst $18                                       ; $5e97: $df
    ld [hl], c                                    ; $5e98: $71
    call $aecc                                    ; $5e99: $cd $cc $ae
    add hl, hl                                    ; $5e9c: $29
    dec bc                                        ; $5e9d: $0b
    ld b, h                                       ; $5e9e: $44
    scf                                           ; $5e9f: $37
    scf                                           ; $5ea0: $37
    push hl                                       ; $5ea1: $e5
    and $b3                                       ; $5ea2: $e6 $b3
    rra                                           ; $5ea4: $1f
    and e                                         ; $5ea5: $a3
    ld d, e                                       ; $5ea6: $53
    inc hl                                        ; $5ea7: $23
    dec a                                         ; $5ea8: $3d
    ret                                           ; $5ea9: $c9


    db $db                                        ; $5eaa: $db
    adc c                                         ; $5eab: $89
    ld a, d                                       ; $5eac: $7a
    ld l, e                                       ; $5ead: $6b
    sbc [hl]                                      ; $5eae: $9e
    ld h, l                                       ; $5eaf: $65
    pop af                                        ; $5eb0: $f1
    ret                                           ; $5eb1: $c9


    sub a                                         ; $5eb2: $97
    ld de, $846f                                  ; $5eb3: $11 $6f $84
    dec de                                        ; $5eb6: $1b
    adc a                                         ; $5eb7: $8f
    ld [hl], b                                    ; $5eb8: $70
    dec l                                         ; $5eb9: $2d
    sub e                                         ; $5eba: $93
    and h                                         ; $5ebb: $a4
    ld b, a                                       ; $5ebc: $47
    dec l                                         ; $5ebd: $2d
    ld [hl], h                                    ; $5ebe: $74
    cp d                                          ; $5ebf: $ba
    jp z, $10bd                                   ; $5ec0: $ca $bd $10

    ld a, l                                       ; $5ec3: $7d
    inc e                                         ; $5ec4: $1c
    ld b, [hl]                                    ; $5ec5: $46
    cp h                                          ; $5ec6: $bc
    jp c, $aa6b                                   ; $5ec7: $da $6b $aa

    cp $8e                                        ; $5eca: $fe $8e
    sbc c                                         ; $5ecc: $99
    ld h, a                                       ; $5ecd: $67
    ld e, c                                       ; $5ece: $59
    ld a, h                                       ; $5ecf: $7c
    ld a, [c]                                     ; $5ed0: $f2
    dec b                                         ; $5ed1: $05
    ld [hl+], a                                   ; $5ed2: $22
    rst $30                                       ; $5ed3: $f7

Jump_055_5ed4:
    ld hl, sp+$6b                                 ; $5ed4: $f8 $6b
    add a                                         ; $5ed6: $87
    dec l                                         ; $5ed7: $2d
    inc bc                                        ; $5ed8: $03
    sub b                                         ; $5ed9: $90
    ld b, l                                       ; $5eda: $45
    inc [hl]                                      ; $5edb: $34
    inc bc                                        ; $5edc: $03
    ld a, [c]                                     ; $5edd: $f2
    dec de                                        ; $5ede: $1b
    cp e                                          ; $5edf: $bb
    adc [hl]                                      ; $5ee0: $8e
    ld h, l                                       ; $5ee1: $65
    call nz, Call_055_59ab                        ; $5ee2: $c4 $ab $59

jr_055_5ee5:
    sub $3e                                       ; $5ee5: $d6 $3e
    di                                            ; $5ee7: $f3
    add d                                         ; $5ee8: $82
    ld a, [hl]                                    ; $5ee9: $7e
    ld a, [hl-]                                   ; $5eea: $3a
    ld c, $7a                                     ; $5eeb: $0e $7a
    ld e, e                                       ; $5eed: $5b
    ld h, l                                       ; $5eee: $65
    ld h, [hl]                                    ; $5eef: $66
    jp $e4f5                                      ; $5ef0: $c3 $f5 $e4


    and [hl]                                      ; $5ef3: $a6
    ld e, h                                       ; $5ef4: $5c
    ld d, e                                       ; $5ef5: $53
    and $5e                                       ; $5ef6: $e6 $5e
    ld [$fadd], sp                                ; $5ef8: $08 $dd $fa
    jp nc, Jump_000_297a                          ; $5efb: $d2 $7a $29

    cpl                                           ; $5efe: $2f
    ld d, b                                       ; $5eff: $50
    db $d3                                        ; $5f00: $d3
    add hl, de                                    ; $5f01: $19
    xor [hl]                                      ; $5f02: $ae
    db $db                                        ; $5f03: $db
    cp h                                          ; $5f04: $bc
    and [hl]                                      ; $5f05: $a6
    ld d, c                                       ; $5f06: $51
    xor [hl]                                      ; $5f07: $ae
    sbc l                                         ; $5f08: $9d
    adc h                                         ; $5f09: $8c
    and a                                         ; $5f0a: $a7
    db $f4                                        ; $5f0b: $f4
    ld [hl], c                                    ; $5f0c: $71
    ld e, c                                       ; $5f0d: $59
    add d                                         ; $5f0e: $82
    ld l, e                                       ; $5f0f: $6b
    db $ed                                        ; $5f10: $ed
    inc sp                                        ; $5f11: $33

jr_055_5f12:
    adc a                                         ; $5f12: $8f
    xor [hl]                                      ; $5f13: $ae
    ld a, a                                       ; $5f14: $7f
    ld [c], a                                     ; $5f15: $e2
    sbc d                                         ; $5f16: $9a
    ld c, [hl]                                    ; $5f17: $4e
    inc sp                                        ; $5f18: $33
    ld b, h                                       ; $5f19: $44
    or a                                          ; $5f1a: $b7
    ld [hl], a                                    ; $5f1b: $77
    dec [hl]                                      ; $5f1c: $35
    rst $10                                       ; $5f1d: $d7
    sub h                                         ; $5f1e: $94
    ld a, $e5                                     ; $5f1f: $3e $e5
    jr nc, jr_055_5ee5                            ; $5f21: $30 $c2

    adc l                                         ; $5f23: $8d
    sub a                                         ; $5f24: $97
    xor [hl]                                      ; $5f25: $ae
    and a                                         ; $5f26: $a7
    ld e, l                                       ; $5f27: $5d
    rst $08                                       ; $5f28: $cf
    xor e                                         ; $5f29: $ab
    jp nc, Jump_055_42f4                          ; $5f2a: $d2 $f4 $42

    ld a, l                                       ; $5f2d: $7d
    inc e                                         ; $5f2e: $1c
    ld d, $7f                                     ; $5f2f: $16 $7f
    adc h                                         ; $5f31: $8c
    and $bd                                       ; $5f32: $e6 $bd
    jr @-$09                                      ; $5f34: $18 $f5

    ld a, d                                       ; $5f36: $7a
    inc a                                         ; $5f37: $3c
    sbc l                                         ; $5f38: $9d
    rst $30                                       ; $5f39: $f7
    sub d                                         ; $5f3a: $92
    dec h                                         ; $5f3b: $25
    ld e, a                                       ; $5f3c: $5f
    sub h                                         ; $5f3d: $94
    ld l, [hl]                                    ; $5f3e: $6e
    sub $2e                                       ; $5f3f: $d6 $2e
    add a                                         ; $5f41: $87
    xor c                                         ; $5f42: $a9
    or a                                          ; $5f43: $b7
    ld b, e                                       ; $5f44: $43
    xor l                                         ; $5f45: $ad
    db $e3                                        ; $5f46: $e3
    jr nc, jr_055_5f12                            ; $5f47: $30 $c9

    ld e, $fd                                     ; $5f49: $1e $fd
    ld [hl], e                                    ; $5f4b: $73
    inc sp                                        ; $5f4c: $33
    di                                            ; $5f4d: $f3
    ld c, [hl]                                    ; $5f4e: $4e
    add $6b                                       ; $5f4f: $c6 $6b

jr_055_5f51:
    ld e, l                                       ; $5f51: $5d
    db $e4                                        ; $5f52: $e4
    add sp, $5c                                   ; $5f53: $e8 $5c
    jp hl                                         ; $5f55: $e9


    ccf                                           ; $5f56: $3f
    sbc l                                         ; $5f57: $9d
    dec l                                         ; $5f58: $2d
    ld [hl], h                                    ; $5f59: $74
    ld l, $88                                     ; $5f5a: $2e $88
    nop                                           ; $5f5c: $00
    rst $30                                       ; $5f5d: $f7
    ld hl, sp+$6b                                 ; $5f5e: $f8 $6b
    rst $30                                       ; $5f60: $f7
    ld e, d                                       ; $5f61: $5a
    sub d                                         ; $5f62: $92
    xor e                                         ; $5f63: $ab
    db $fd                                        ; $5f64: $fd
    jr nc, jr_055_5fe5                            ; $5f65: $30 $7e

    adc l                                         ; $5f67: $8d
    ld d, e                                       ; $5f68: $53
    inc hl                                        ; $5f69: $23
    add hl, hl                                    ; $5f6a: $29
    sbc l                                         ; $5f6b: $9d
    ld c, [hl]                                    ; $5f6c: $4e
    ld [$71f5], a                                 ; $5f6d: $ea $f5 $71
    jr jr_055_5fcb                                ; $5f70: $18 $59

    ld e, l                                       ; $5f72: $5d
    adc c                                         ; $5f73: $89
    ld l, e                                       ; $5f74: $6b
    call nc, $ae88                                ; $5f75: $d4 $88 $ae
    ld a, [c]                                     ; $5f78: $f2
    adc b                                         ; $5f79: $88
    db $e4                                        ; $5f7a: $e4
    xor l                                         ; $5f7b: $ad
    push af                                       ; $5f7c: $f5
    ld d, l                                       ; $5f7d: $55
    ld l, $cb                                     ; $5f7e: $2e $cb
    adc $77                                       ; $5f80: $ce $77
    and l                                         ; $5f82: $a5
    ld b, [hl]                                    ; $5f83: $46
    dec a                                         ; $5f84: $3d
    ret                                           ; $5f85: $c9


    ccf                                           ; $5f86: $3f

Call_055_5f87:
    ld d, e                                       ; $5f87: $53
    ld a, [$df92]                                 ; $5f88: $fa $92 $df
    or h                                          ; $5f8b: $b4
    adc e                                         ; $5f8c: $8b
    ld c, a                                       ; $5f8d: $4f
    sub $71                                       ; $5f8e: $d6 $71
    jr jr_055_5f51                                ; $5f90: $18 $bf

    ld c, c                                       ; $5f92: $49
    and $c7                                       ; $5f93: $e6 $c7
    xor [hl]                                      ; $5f95: $ae
    push hl                                       ; $5f96: $e5
    jr nc, jr_055_5fd3                            ; $5f97: $30 $3a

    ld d, a                                       ; $5f99: $57
    ld l, h                                       ; $5f9a: $6c
    xor a                                         ; $5f9b: $af
    inc a                                         ; $5f9c: $3c
    ld h, l                                       ; $5f9d: $65
    inc a                                         ; $5f9e: $3c
    ld a, [hl-]                                   ; $5f9f: $3a
    rst $10                                       ; $5fa0: $d7
    sub h                                         ; $5fa1: $94
    jp Jump_055_57ce                              ; $5fa2: $c3 $ce $57


    ld d, $88                                     ; $5fa5: $16 $88
    nop                                           ; $5fa7: $00
    dec a                                         ; $5fa8: $3d
    ret                                           ; $5fa9: $c9


    ccf                                           ; $5faa: $3f
    ld d, e                                       ; $5fab: $53
    ld a, [$df92]                                 ; $5fac: $fa $92 $df
    or $78                                        ; $5faf: $f6 $78
    dec e                                         ; $5fb1: $1d
    add a                                         ; $5fb2: $87
    sbc l                                         ; $5fb3: $9d
    ld hl, sp-$26                                 ; $5fb4: $f8 $da
    add sp, $5c                                   ; $5fb6: $e8 $5c
    or c                                          ; $5fb8: $b1
    cp l                                          ; $5fb9: $bd
    ld a, [c]                                     ; $5fba: $f2
    inc h                                         ; $5fbb: $24
    ld a, e                                       ; $5fbc: $7b
    ld [hl], h                                    ; $5fbd: $74
    xor [hl]                                      ; $5fbe: $ae
    add hl, hl                                    ; $5fbf: $29
    rlca                                          ; $5fc0: $07
    db $ed                                        ; $5fc1: $ed
    ld c, $b5                                     ; $5fc2: $0e $b5
    call nz, $e3c2                                ; $5fc4: $c4 $c2 $e3
    rst $18                                       ; $5fc7: $df
    ld h, [hl]                                    ; $5fc8: $66
    ld h, [hl]                                    ; $5fc9: $66
    rst $10                                       ; $5fca: $d7

jr_055_5fcb:
    ld hl, sp+$63                                 ; $5fcb: $f8 $63
    ld c, e                                       ; $5fcd: $4b
    ld l, d                                       ; $5fce: $6a
    inc b                                         ; $5fcf: $04
    add hl, hl                                    ; $5fd0: $29
    sbc l                                         ; $5fd1: $9d
    ld c, [hl]                                    ; $5fd2: $4e

jr_055_5fd3:
    ld [$b401], a                                 ; $5fd3: $ea $01 $b4
    call nz, $bc65                                ; $5fd6: $c4 $65 $bc
    sub $57                                       ; $5fd9: $d6 $57
    cp c                                          ; $5fdb: $b9
    inc l                                         ; $5fdc: $2c
    dec sp                                        ; $5fdd: $3b
    ld l, a                                       ; $5fde: $6f

jr_055_5fdf:
    sub d                                         ; $5fdf: $92
    cp l                                          ; $5fe0: $bd
    db $e4                                        ; $5fe1: $e4
    ld b, a                                       ; $5fe2: $47
    cp $41                                        ; $5fe3: $fe $41

jr_055_5fe5:
    cp e                                          ; $5fe5: $bb
    inc e                                         ; $5fe6: $1c
    sub $71                                       ; $5fe7: $d6 $71
    ld e, b                                       ; $5fe9: $58
    ld hl, sp+$31                                 ; $5fea: $f8 $31
    ld l, $b4                                     ; $5fec: $2e $b4
    ld c, a                                       ; $5fee: $4f

Call_055_5fef:
    sub d                                         ; $5fef: $92
    ld a, e                                       ; $5ff0: $7b
    ret                                           ; $5ff1: $c9


    sub h                                         ; $5ff2: $94
    add hl, sp                                    ; $5ff3: $39
    dec [hl]                                      ; $5ff4: $35
    ld [bc], a                                    ; $5ff5: $02
    add hl, hl                                    ; $5ff6: $29
    sbc l                                         ; $5ff7: $9d
    ld c, [hl]                                    ; $5ff8: $4e
    ld [$eb75], a                                 ; $5ff9: $ea $75 $eb
    ld c, e                                       ; $5ffc: $4b
    xor b                                         ; $5ffd: $a8
    ldh [$da], a                                  ; $5ffe: $e0 $da
    adc a                                         ; $6000: $8f
    pop de                                        ; $6001: $d1
    and e                                         ; $6002: $a3
    sub $5e                                       ; $6003: $d6 $5e
    ldh a, [$b8]                                  ; $6005: $f0 $b8
    cp d                                          ; $6007: $ba
    jp nc, $b769                                  ; $6008: $d2 $69 $b7

    pop de                                        ; $600b: $d1
    cp c                                          ; $600c: $b9
    add [hl]                                      ; $600d: $86
    dec e                                         ; $600e: $1d
    ld d, d                                       ; $600f: $52
    inc hl                                        ; $6010: $23
    db $dd                                        ; $6011: $dd
    and $b9                                       ; $6012: $e6 $b9
    sub [hl]                                      ; $6014: $96
    db $fc                                        ; $6015: $fc
    ld [hl], e                                    ; $6016: $73
    ld a, b                                       ; $6017: $78
    ccf                                           ; $6018: $3f
    ld b, [hl]                                    ; $6019: $46
    xor a                                         ; $601a: $af
    push hl                                       ; $601b: $e5
    ld h, h                                       ; $601c: $64
    call nc, $bc8e                                ; $601d: $d4 $8e $bc
    jr jr_055_5fdf                                ; $6020: $18 $bd

    ccf                                           ; $6022: $3f
    cp $d8                                        ; $6023: $fe $d8
    ld [bc], a                                    ; $6025: $02
    ld de, $f8b7                                  ; $6026: $11 $b7 $f8
    ldh a, [$94]                                  ; $6029: $f0 $94
    cp [hl]                                       ; $602b: $be
    ld b, b                                       ; $602c: $40
    sub l                                         ; $602d: $95
    halt                                          ; $602e: $76
    add a                                         ; $602f: $87
    sbc d                                         ; $6030: $9a
    jp nc, Jump_055_63f7                          ; $6031: $d2 $f7 $63

    db $f4                                        ; $6034: $f4
    adc b                                         ; $6035: $88
    sub a                                         ; $6036: $97
    adc b                                         ; $6037: $88
    ld l, e                                       ; $6038: $6b
    ld a, a                                       ; $6039: $7f
    ld e, h                                       ; $603a: $5c
    ld e, l                                       ; $603b: $5d
    jp hl                                         ; $603c: $e9


    or h                                          ; $603d: $b4
    dec de                                        ; $603e: $1b
    ld b, h                                       ; $603f: $44
    add hl, hl                                    ; $6040: $29
    sbc l                                         ; $6041: $9d
    ld c, [hl]                                    ; $6042: $4e
    ld [$71f5], a                                 ; $6043: $ea $f5 $71
    jr jr_055_609f                                ; $6046: $18 $57

    xor [hl]                                      ; $6048: $ae
    or l                                          ; $6049: $b5
    cp [hl]                                       ; $604a: $be
    jp z, $d965                                   ; $604b: $ca $65 $d9

    ld [hl], c                                    ; $604e: $71
    adc l                                         ; $604f: $8d
    and h                                         ; $6050: $a4
    sub [hl]                                      ; $6051: $96
    rst $08                                       ; $6052: $cf
    add c                                         ; $6053: $81
    ld [$f8b7], sp                                ; $6054: $08 $b7 $f8
    ldh a, [$92]                                  ; $6057: $f0 $92
    cp a                                          ; $6059: $bf
    rra                                           ; $605a: $1f
    and e                                         ; $605b: $a3
    ld [hl], a                                    ; $605c: $77
    db $e4                                        ; $605d: $e4
    push bc                                       ; $605e: $c5
    add sp, -$26                                  ; $605f: $e8 $da
    rra                                           ; $6061: $1f
    ld a, a                                       ; $6062: $7f
    ld l, h                                       ; $6063: $6c
    pop de                                        ; $6064: $d1
    xor $50                                       ; $6065: $ee $50
    ld c, e                                       ; $6067: $4b
    cp $7e                                        ; $6068: $fe $7e
    adc h                                         ; $606a: $8c
    ld e, $4d                                     ; $606b: $1e $4d
    push de                                       ; $606d: $d5
    ld e, [hl]                                    ; $606e: $5e
    sub l                                         ; $606f: $95
    rrca                                          ; $6070: $0f
    ld b, e                                       ; $6071: $43
    inc b                                         ; $6072: $04
    cp l                                          ; $6073: $bd
    xor c                                         ; $6074: $a9
    dec h                                         ; $6075: $25
    adc [hl]                                      ; $6076: $8e
    ld d, c                                       ; $6077: $51
    dec sp                                        ; $6078: $3b
    rst $10                                       ; $6079: $d7
    sub h                                         ; $607a: $94
    cp [hl]                                       ; $607b: $be
    inc hl                                        ; $607c: $23
    cp a                                          ; $607d: $bf
    or l                                          ; $607e: $b5
    call nc, $e3eb                                ; $607f: $d4 $eb $e3
    or b                                          ; $6082: $b0
    db $e4                                        ; $6083: $e4
    or a                                          ; $6084: $b7
    db $fd                                        ; $6085: $fd
    jr @-$41                                      ; $6086: $18 $bd

    rst $00                                       ; $6088: $c7
    ld l, e                                       ; $6089: $6b
    ld a, l                                       ; $608a: $7d
    sub l                                         ; $608b: $95
    res 6, d                                      ; $608c: $cb $b2
    inc de                                        ; $608e: $13
    ld e, a                                       ; $608f: $5f
    ld e, e                                       ; $6090: $5b
    cp d                                          ; $6091: $ba
    db $fd                                        ; $6092: $fd

Jump_055_6093:
    sbc l                                         ; $6093: $9d
    cpl                                           ; $6094: $2f
    inc c                                         ; $6095: $0c
    ld de, $1c7d                                  ; $6096: $11 $7d $1c
    halt                                          ; $6099: $76
    and d                                         ; $609a: $a2
    sbc $ff                                       ; $609b: $de $ff
    ld b, d                                       ; $609d: $42
    rst $00                                       ; $609e: $c7

jr_055_609f:
    dec h                                         ; $609f: $25
    ld e, [hl]                                    ; $60a0: $5e
    jp nc, $f157                                  ; $60a1: $d2 $57 $f1

    or b                                          ; $60a4: $b0
    sub l                                         ; $60a5: $95
    halt                                          ; $60a6: $76
    ret c                                         ; $60a7: $d8

    or d                                          ; $60a8: $b2
    adc [hl]                                      ; $60a9: $8e
    jp $935c                                      ; $60aa: $c3 $5c $93


    ld l, $c5                                     ; $60ad: $2e $c5
    db $e3                                        ; $60af: $e3
    rst $18                                       ; $60b0: $df
    ld b, [hl]                                    ; $60b1: $46
    dec l                                         ; $60b2: $2d
    db $dd                                        ; $60b3: $dd
    cp $08                                        ; $60b4: $fe $08
    rla                                           ; $60b6: $17
    ld b, h                                       ; $60b7: $44
    nop                                           ; $60b8: $00
    sub e                                         ; $60b9: $93
    ccf                                           ; $60ba: $3f
    ld c, [hl]                                    ; $60bb: $4e
    cp [hl]                                       ; $60bc: $be
    halt                                          ; $60bd: $76
    dec a                                         ; $60be: $3d
    xor a                                         ; $60bf: $af
    ld c, d                                       ; $60c0: $4a
    inc bc                                        ; $60c1: $03
    ld [hl], a                                    ; $60c2: $77
    ld a, e                                       ; $60c3: $7b
    ld l, $76                                     ; $60c4: $2e $76
    ld l, e                                       ; $60c6: $6b
    jp $a30e                                      ; $60c7: $c3 $0e $a3


    adc $b1                                       ; $60ca: $ce $b1
    ld c, h                                       ; $60cc: $4c
    sbc c                                         ; $60cd: $99
    rla                                           ; $60ce: $17
    ld a, [hl]                                    ; $60cf: $7e
    adc h                                         ; $60d0: $8c
    db $10                                        ; $60d1: $10
    ld bc, $f8b7                                  ; $60d2: $01 $b7 $f8
    ldh a, [$94]                                  ; $60d5: $f0 $94
    cp [hl]                                       ; $60d7: $be
    jp Jump_055_463f                              ; $60d8: $c3 $3f $46


    rst $10                                       ; $60db: $d7
    add sp, -$52                                  ; $60dc: $e8 $ae
    ld e, d                                       ; $60de: $5a
    db $eb                                        ; $60df: $eb
    xor e                                         ; $60e0: $ab
    ld e, h                                       ; $60e1: $5c
    sub [hl]                                      ; $60e2: $96
    and l                                         ; $60e3: $a5
    db $db                                        ; $60e4: $db
    xor a                                         ; $60e5: $af
    sbc l                                         ; $60e6: $9d
    ld hl, sp+$63                                 ; $60e7: $f8 $63
    ld [hl], h                                    ; $60e9: $74
    ei                                            ; $60ea: $fb
    ld h, c                                       ; $60eb: $61
    rst $20                                       ; $60ec: $e7
    adc e                                         ; $60ed: $8b
    inc a                                         ; $60ee: $3c
    adc b                                         ; $60ef: $88
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    sub e                                         ; $60f2: $93
    ccf                                           ; $60f3: $3f
    ld c, [hl]                                    ; $60f4: $4e
    cp [hl]                                       ; $60f5: $be
    halt                                          ; $60f6: $76
    dec a                                         ; $60f7: $3d
    xor a                                         ; $60f8: $af
    ld c, d                                       ; $60f9: $4a
    and e                                         ; $60fa: $a3
    sbc l                                         ; $60fb: $9d
    ld [hl-], a                                   ; $60fc: $32
    cpl                                           ; $60fd: $2f
    ld d, b                                       ; $60fe: $50
    dec [hl]                                      ; $60ff: $35
    jp nz, Jump_055_778d                          ; $6100: $c2 $8d $77

    ld a, [hl]                                    ; $6103: $7e
    adc h                                         ; $6104: $8c
    ld l, $5e                                     ; $6105: $2e $5e
    cp d                                          ; $6107: $ba
    ld e, $44                                     ; $6108: $1e $44
    or a                                          ; $610a: $b7
    ld hl, sp-$10                                 ; $610b: $f8 $f0
    sub h                                         ; $610d: $94
    cp [hl]                                       ; $610e: $be
    jp Jump_055_463f                              ; $610f: $c3 $3f $46


    sub a                                         ; $6112: $97
    halt                                          ; $6113: $76
    xor l                                         ; $6114: $ad
    xor a                                         ; $6115: $af
    ld [hl], d                                    ; $6116: $72
    ld e, c                                       ; $6117: $59
    ld d, $da                                     ; $6118: $16 $da
    inc de                                        ; $611a: $13
    rst $10                                       ; $611b: $d7
    ld c, b                                       ; $611c: $48
    ld l, d                                       ; $611d: $6a
    jp z, $2201                                   ; $611e: $ca $01 $22

    db $dd                                        ; $6121: $dd
    push af                                       ; $6122: $f5
    inc de                                        ; $6123: $13
    ld b, d                                       ; $6124: $42
    ccf                                           ; $6125: $3f
    scf                                           ; $6126: $37
    db $ec                                        ; $6127: $ec
    sbc [hl]                                      ; $6128: $9e
    ld e, h                                       ; $6129: $5c
    ld a, [hl+]                                   ; $612a: $2a
    pop af                                        ; $612b: $f1
    ld h, c                                       ; $612c: $61
    cp b                                          ; $612d: $b8
    sbc $9a                                       ; $612e: $de $9a
    ld d, b                                       ; $6130: $50
    ld e, a                                       ; $6131: $5f
    sbc l                                         ; $6132: $9d
    ld de, $661a                                  ; $6133: $11 $1a $66
    rst $18                                       ; $6136: $df
    or b                                          ; $6137: $b0
    sub h                                         ; $6138: $94
    xor [hl]                                      ; $6139: $ae
    ld c, d                                       ; $613a: $4a
    ld a, h                                       ; $613b: $7c
    jr jr_055_6160                                ; $613c: $18 $22

    db $dd                                        ; $613e: $dd
    and $25                                       ; $613f: $e6 $25
    xor a                                         ; $6141: $af
    halt                                          ; $6142: $76
    cp $61                                        ; $6143: $fe $61
    adc a                                         ; $6145: $8f
    ccf                                           ; $6146: $3f
    or $e8                                        ; $6147: $f6 $e8
    ld e, h                                       ; $6149: $5c
    ei                                            ; $614a: $fb
    ld d, e                                       ; $614b: $53
    cpl                                           ; $614c: $2f
    ret nz                                        ; $614d: $c0

    db $dd                                        ; $614e: $dd
    ld b, e                                       ; $614f: $43
    dec c                                         ; $6150: $0d
    ld d, e                                       ; $6151: $53
    ld a, e                                       ; $6152: $7b
    xor l                                         ; $6153: $ad
    ld a, c                                       ; $6154: $79
    add c                                         ; $6155: $81
    ld a, [de]                                    ; $6156: $1a
    rst $38                                       ; $6157: $ff
    or [hl]                                       ; $6158: $b6
    inc d                                         ; $6159: $14
    adc $75                                       ; $615a: $ce $75
    ld e, [hl]                                    ; $615c: $5e
    or e                                          ; $615d: $b3
    ld l, b                                       ; $615e: $68
    and a                                         ; $615f: $a7

jr_055_6160:
    call z, $ad73                                 ; $6160: $cc $73 $ad
    db $fd                                        ; $6163: $fd
    add sp, -$2f                                  ; $6164: $e8 $d1
    ld e, l                                       ; $6166: $5d
    dec [hl]                                      ; $6167: $35
    db $fc                                        ; $6168: $fc
    sub l                                         ; $6169: $95
    ld a, d                                       ; $616a: $7a
    pop bc                                        ; $616b: $c1
    or d                                          ; $616c: $b2
    ld [hl], h                                    ; $616d: $74
    ei                                            ; $616e: $fb
    or l                                          ; $616f: $b5
    db $e3                                        ; $6170: $e3
    ld c, d                                       ; $6171: $4a
    ld e, h                                       ; $6172: $5c
    inc c                                         ; $6173: $0c
    ld de, $c477                                  ; $6174: $11 $77 $c4
    add sp, $71                                   ; $6177: $e8 $71
    push hl                                       ; $6179: $e5
    add hl, hl                                    ; $617a: $29
    ld a, l                                       ; $617b: $7d
    and a                                         ; $617c: $a7
    ld a, l                                       ; $617d: $7d
    sub d                                         ; $617e: $92
    ld [hl], h                                    ; $617f: $74
    ld c, l                                       ; $6180: $4d
    rla                                           ; $6181: $17
    ld a, c                                       ; $6182: $79
    jp Jump_055_5356                              ; $6183: $c3 $56 $53


    and $9d                                       ; $6186: $e6 $9d
    adc h                                         ; $6188: $8c
    ld [hl], a                                    ; $6189: $77
    ld h, d                                       ; $618a: $62
    rst $00                                       ; $618b: $c7
    ld c, d                                       ; $618c: $4a
    ld a, c                                       ; $618d: $79
    ld a, a                                       ; $618e: $7f
    ld [hl], h                                    ; $618f: $74
    db $d3                                        ; $6190: $d3
    ldh a, [$c7]                                  ; $6191: $f0 $c7
    sub [hl]                                      ; $6193: $96
    db $fd                                        ; $6194: $fd
    xor c                                         ; $6195: $a9
    rla                                           ; $6196: $17
    or h                                          ; $6197: $b4
    cp e                                          ; $6198: $bb
    cpl                                           ; $6199: $2f
    inc sp                                        ; $619a: $33
    cp e                                          ; $619b: $bb
    jr nz, @+$04                                  ; $619c: $20 $02

    db $dd                                        ; $619e: $dd
    ld a, [$7b5c]                                 ; $619f: $fa $5c $7b
    ld [$dfc4], a                                 ; $61a2: $ea $c4 $df
    jp c, $c30f                                   ; $61a5: $da $0f $c3

    ld e, c                                       ; $61a8: $59
    db $fd                                        ; $61a9: $fd
    ldh [$f2], a                                  ; $61aa: $e0 $f2
    ld [$c4d7], sp                                ; $61ac: $08 $d7 $c4
    jp z, $a923                                   ; $61af: $ca $23 $a9

    and l                                         ; $61b2: $a5
    ld e, a                                       ; $61b3: $5f
    adc h                                         ; $61b4: $8c
    ld d, $ed                                     ; $61b5: $16 $ed
    ld [hl-], a                                   ; $61b7: $32
    ld c, $9f                                     ; $61b8: $0e $9f
    ld a, c                                       ; $61ba: $79
    cpl                                           ; $61bb: $2f
    sbc c                                         ; $61bc: $99

Call_055_61bd:
    ld a, [c]                                     ; $61bd: $f2
    ld c, $a6                                     ; $61be: $0e $a6
    sub [hl]                                      ; $61c0: $96
    ld e, b                                       ; $61c1: $58
    call nz, $a9e2                                ; $61c2: $c4 $e2 $a9
    cpl                                           ; $61c5: $2f
    add [hl]                                      ; $61c6: $86
    ld [$1c7d], sp                                ; $61c7: $08 $7d $1c
    ld d, $9f                                     ; $61ca: $16 $9f
    adc h                                         ; $61cc: $8c
    ld e, a                                       ; $61cd: $5f
    ld l, h                                       ; $61ce: $6c
    sbc [hl]                                      ; $61cf: $9e
    ld [hl], d                                    ; $61d0: $72
    ret c                                         ; $61d1: $d8

    ld l, e                                       ; $61d2: $6b
    ld d, $4f                                     ; $61d3: $16 $4f
    xor b                                         ; $61d5: $a8
    jp c, Jump_055_78c9                           ; $61d6: $da $c9 $78

    add h                                         ; $61d9: $84
    db $db                                        ; $61da: $db
    ld h, c                                       ; $61db: $61
    cp b                                          ; $61dc: $b8
    sbc [hl]                                      ; $61dd: $9e
    db $e4                                        ; $61de: $e4
    dec c                                         ; $61df: $0d
    ld e, e                                       ; $61e0: $5b
    call $8032                                    ; $61e1: $cd $32 $80
    sub l                                         ; $61e4: $95
    ld e, e                                       ; $61e5: $5b
    jp $e44f                                      ; $61e6: $c3 $4f $e4


    jr z, @-$21                                   ; $61e9: $28 $dd

    xor l                                         ; $61eb: $ad
    dec l                                         ; $61ec: $2d
    or c                                          ; $61ed: $b1
    ld a, [de]                                    ; $61ee: $1a
    cp $4a                                        ; $61ef: $fe $4a
    ld e, $73                                     ; $61f1: $1e $73
    xor a                                         ; $61f3: $af
    db $dd                                        ; $61f4: $dd
    ld b, a                                       ; $61f5: $47
    adc l                                         ; $61f6: $8d
    ld c, e                                       ; $61f7: $4b
    db $d3                                        ; $61f8: $d3
    sbc d                                         ; $61f9: $9a

Jump_055_61fa:
    rrca                                          ; $61fa: $0f
    cp a                                          ; $61fb: $bf
    call nz, $1105                                ; $61fc: $c4 $05 $11
    or a                                          ; $61ff: $b7
    ret                                           ; $6200: $c9


    adc b                                         ; $6201: $88
    db $e4                                        ; $6202: $e4
    pop de                                        ; $6203: $d1
    ld [hl], h                                    ; $6204: $74
    ld l, $c9                                     ; $6205: $2e $c9
    xor $85                                       ; $6207: $ee $85
    nop                                           ; $6209: $00
    rst $30                                       ; $620a: $f7
    sbc $09                                       ; $620b: $de $09
    rst $10                                       ; $620d: $d7
    rst $00                                       ; $620e: $c7
    ld h, c                                       ; $620f: $61
    daa                                           ; $6210: $27
    cp [hl]                                       ; $6211: $be
    or [hl]                                       ; $6212: $b6
    and h                                         ; $6213: $a4
    xor a                                         ; $6214: $af
    ld a, [c]                                     ; $6215: $f2
    adc [hl]                                      ; $6216: $8e
    and e                                         ; $6217: $a3
    ld l, $ea                                     ; $6218: $2e $ea
    add hl, bc                                    ; $621a: $09
    ld e, e                                       ; $621b: $5b
    ld b, [hl]                                    ; $621c: $46
    inc a                                         ; $621d: $3c
    add hl, sp                                    ; $621e: $39
    db $10                                        ; $621f: $10
    ld bc, $d677                                  ; $6220: $01 $77 $d6
    ld c, e                                       ; $6223: $4b
    and a                                         ; $6224: $a7
    dec a                                         ; $6225: $3d
    rst $10                                       ; $6226: $d7
    ldh a, [$97]                                  ; $6227: $f0 $97
    dec e                                         ; $6229: $1d
    ld b, a                                       ; $622a: $47
    ld e, l                                       ; $622b: $5d
    call nc, $8613                                ; $622c: $d4 $13 $86
    ld c, e                                       ; $622f: $4b
    ld [hl], c                                    ; $6230: $71
    ld c, l                                       ; $6231: $4d
    add hl, sp                                    ; $6232: $39
    db $ec                                        ; $6233: $ec
    rrca                                          ; $6234: $0f
    ld h, b                                       ; $6235: $60
    ld h, l                                       ; $6236: $65
    cp d                                          ; $6237: $ba
    rst $28                                       ; $6238: $ef
    jp z, $9b18                                   ; $6239: $ca $18 $9b

    rst $30                                       ; $623c: $f7
    daa                                           ; $623d: $27
    adc a                                         ; $623e: $8f
    add hl, de                                    ; $623f: $19
    ld [hl+], a                                   ; $6240: $22
    dec a                                         ; $6241: $3d
    ret                                           ; $6242: $c9


    db $db                                        ; $6243: $db
    rst $18                                       ; $6244: $df
    ld l, e                                       ; $6245: $6b
    ld l, l                                       ; $6246: $6d
    adc c                                         ; $6247: $89
    ld c, e                                       ; $6248: $4b
    ld e, c                                       ; $6249: $59
    and $9a                                       ; $624a: $e6 $9a
    ld h, l                                       ; $624c: $65
    nop                                           ; $624d: $00
    dec hl                                        ; $624e: $2b
    or a                                          ; $624f: $b7
    add [hl]                                      ; $6250: $86
    sbc a                                         ; $6251: $9f
    ret z                                         ; $6252: $c8

    ld d, c                                       ; $6253: $51
    cp d                                          ; $6254: $ba
    ld e, e                                       ; $6255: $5b
    db $eb                                        ; $6256: $eb
    add l                                         ; $6257: $85
    nop                                           ; $6258: $00
    or a                                          ; $6259: $b7
    ret                                           ; $625a: $c9


    ld [c], a                                     ; $625b: $e2
    jp $88e4                                      ; $625c: $c3 $e4 $88


    inc h                                         ; $625f: $24
    rst $10                                       ; $6260: $d7
    inc l                                         ; $6261: $2c
    ld c, e                                       ; $6262: $4b
    cp a                                          ; $6263: $bf
    ld a, [c]                                     ; $6264: $f2
    jp nc, Jump_055_47a5                          ; $6265: $d2 $a5 $47

    rst $10                                       ; $6268: $d7
    cp b                                          ; $6269: $b8
    ld [hl], d                                    ; $626a: $72
    ld l, e                                       ; $626b: $6b
    ld a, [hl+]                                   ; $626c: $2a
    ld h, e                                       ; $626d: $63
    cp b                                          ; $626e: $b8
    dec sp                                        ; $626f: $3b
    inc h                                         ; $6270: $24
    ld e, b                                       ; $6271: $58
    or $92                                        ; $6272: $f6 $92
    add hl, hl                                    ; $6274: $29
    sub a                                         ; $6275: $97
    rla                                           ; $6276: $17
    sbc a                                         ; $6277: $9f
    inc c                                         ; $6278: $0c
    cp a                                          ; $6279: $bf
    ldh a, [$27]                                  ; $627a: $f0 $27
    add hl, sp                                    ; $627c: $39
    adc $22                                       ; $627d: $ce $22
    call nc, $b7f8                                ; $627f: $d4 $f8 $b7
    ld d, c                                       ; $6282: $51
    dec bc                                        ; $6283: $0b
    sbc l                                         ; $6284: $9d
    xor [hl]                                      ; $6285: $ae
    ld a, [c]                                     ; $6286: $f2
    inc h                                         ; $6287: $24
    ld e, e                                       ; $6288: $5b
    halt                                          ; $6289: $76
    cp b                                          ; $628a: $b8
    xor e                                         ; $628b: $ab
    jp z, $f13b                                   ; $628c: $ca $3b $f1

    add hl, hl                                    ; $628f: $29
    jp Jump_055_71f5                              ; $6290: $c3 $f5 $71


    ret c                                         ; $6293: $d8

    adc c                                         ; $6294: $89
    xor a                                         ; $6295: $af
    dec l                                         ; $6296: $2d
    jp hl                                         ; $6297: $e9


    xor e                                         ; $6298: $ab
    cp h                                          ; $6299: $bc
    db $e3                                        ; $629a: $e3
    xor b                                         ; $629b: $a8
    adc e                                         ; $629c: $8b
    ld a, d                                       ; $629d: $7a
    jp nz, $a996                                  ; $629e: $c2 $96 $a9

    cpl                                           ; $62a1: $2f
    bit 4, c                                      ; $62a2: $cb $61
    jp hl                                         ; $62a4: $e9


    rla                                           ; $62a5: $17
    and e                                         ; $62a6: $a3
    and a                                         ; $62a7: $a7
    inc e                                         ; $62a8: $1c
    sub [hl]                                      ; $62a9: $96
    ld c, c                                       ; $62aa: $49
    ld [de], a                                    ; $62ab: $12
    ld [hl+], a                                   ; $62ac: $22
    db $dd                                        ; $62ad: $dd
    and $11                                       ; $62ae: $e6 $11
    ld e, l                                       ; $62b0: $5d
    push bc                                       ; $62b1: $c5
    ld e, [hl]                                    ; $62b2: $5e
    rst $00                                       ; $62b3: $c7
    ld bc, $dbae                                  ; $62b4: $01 $ae $db
    push hl                                       ; $62b7: $e5
    pop de                                        ; $62b8: $d1
    ld d, h                                       ; $62b9: $54

Jump_055_62ba:
    adc l                                         ; $62ba: $8d
    ld [hl], b                                    ; $62bb: $70
    di                                            ; $62bc: $f3
    ld [$98fd], sp                                ; $62bd: $08 $fd $98
    rst $30                                       ; $62c0: $f7
    rst $00                                       ; $62c1: $c7
    push de                                       ; $62c2: $d5
    sub l                                         ; $62c3: $95
    ld c, [hl]                                    ; $62c4: $4e
    cp e                                          ; $62c5: $bb
    ld b, c                                       ; $62c6: $41
    inc b                                         ; $62c7: $04
    ld [hl], a                                    ; $62c8: $77
    call nz, Call_000_1de8                        ; $62c9: $c4 $e8 $1d
    cp $31                                        ; $62cc: $fe $31
    ld c, [hl]                                    ; $62ce: $4e
    ld a, h                                       ; $62cf: $7c
    sbc $d4                                       ; $62d0: $de $d4
    rst $18                                       ; $62d2: $df
    sbc a                                         ; $62d3: $9f
    ld [hl-], a                                   ; $62d4: $32

Call_055_62d5:
    or e                                          ; $62d5: $b3
    pop hl                                        ; $62d6: $e1
    cp d                                          ; $62d7: $ba
    call Call_000_2d73                            ; $62d8: $cd $73 $2d
    db $ed                                        ; $62db: $ed
    jp $fe4b                                      ; $62dc: $c3 $4b $fe


    ld [bc], a                                    ; $62df: $02
    ld d, l                                       ; $62e0: $55
    sla h                                         ; $62e1: $cb $24
    cp c                                          ; $62e3: $b9
    inc e                                         ; $62e4: $1c
    ld b, [hl]                                    ; $62e5: $46
    rst $20                                       ; $62e6: $e7
    ld c, d                                       ; $62e7: $4a
    cp e                                          ; $62e8: $bb
    xor h                                         ; $62e9: $ac
    ld e, h                                       ; $62ea: $5c
    set 4, a                                      ; $62eb: $cb $e7
    ld b, b                                       ; $62ed: $40
    inc b                                         ; $62ee: $04
    dec a                                         ; $62ef: $3d
    xor a                                         ; $62f0: $af
    dec h                                         ; $62f1: $25
    db $e3                                        ; $62f2: $e3
    call c, $3812                                 ; $62f3: $dc $12 $38
    ret nz                                        ; $62f6: $c0

    ld a, a                                       ; $62f7: $7f
    sbc b                                         ; $62f8: $98
    jp c, $1a89                                   ; $62f9: $da $89 $1a

    ld d, c                                       ; $62fc: $51
    ld e, [hl]                                    ; $62fd: $5e
    ld a, $07                                     ; $62fe: $3e $07
    ld [hl+], a                                   ; $6300: $22
    ld a, l                                       ; $6301: $7d
    inc e                                         ; $6302: $1c
    ld h, $8e                                     ; $6303: $26 $8e
    db $ec                                        ; $6305: $ec
    ld a, [de]                                    ; $6306: $1a
    dec [hl]                                      ; $6307: $35
    xor [hl]                                      ; $6308: $ae
    cp h                                          ; $6309: $bc
    rst $00                                       ; $630a: $c7
    ld d, e                                       ; $630b: $53
    ld a, [$645e]                                 ; $630c: $fa $5e $64
    rst $10                                       ; $630f: $d7
    xor b                                         ; $6310: $a8
    add l                                         ; $6311: $85
    adc [hl]                                      ; $6312: $8e
    ld b, l                                       ; $6313: $45
    ld [hl-], a                                   ; $6314: $32
    and [hl]                                      ; $6315: $a6
    cp e                                          ; $6316: $bb
    jp z, $6653                                   ; $6317: $ca $53 $66

    or [hl]                                       ; $631a: $b6
    halt                                          ; $631b: $76
    dec a                                         ; $631c: $3d
    xor a                                         ; $631d: $af
    ld c, d                                       ; $631e: $4a
    inc bc                                        ; $631f: $03
    ld de, $a9bd                                  ; $6320: $11 $bd $a9
    push hl                                       ; $6323: $e5
    or b                                          ; $6324: $b0
    and $10                                       ; $6325: $e6 $10
    and [hl]                                      ; $6327: $a6
    inc e                                         ; $6328: $1c
    ld d, d                                       ; $6329: $52
    inc hl                                        ; $632a: $23
    db $dd                                        ; $632b: $dd
    ld a, [$edd2]                                 ; $632c: $fa $d2 $ed
    rst $10                                       ; $632f: $d7
    jp nc, Jump_000_3caf                          ; $6330: $d2 $af $3c

    ld a, [hl]                                    ; $6333: $7e
    call z, $e5da                                 ; $6334: $cc $da $e5
    jr nc, @+$3c                                  ; $6337: $30 $3a

    rst $10                                       ; $6339: $d7
    ld hl, $6b7f                                  ; $633a: $21 $7f $6b
    xor [hl]                                      ; $633d: $ae
    cp l                                          ; $633e: $bd
    sub $3c                                       ; $633f: $d6 $3c
    ld [hl-], a                                   ; $6341: $32
    ld e, e                                       ; $6342: $5b
    add d                                         ; $6343: $82
    push bc                                       ; $6344: $c5
    ld c, e                                       ; $6345: $4b
    cp $88                                        ; $6346: $fe $88
    ld d, a                                       ; $6348: $57
    xor c                                         ; $6349: $a9
    ld de, $a9bd                                  ; $634a: $11 $bd $a9
    dec h                                         ; $634d: $25
    adc [hl]                                      ; $634e: $8e
    ld sp, $0235                                  ; $634f: $31 $35 $02
    ld a, l                                       ; $6352: $7d
    sbc $12                                       ; $6353: $de $12
    scf                                           ; $6355: $37
    db $ed                                        ; $6356: $ed
    or b                                          ; $6357: $b0
    ld h, l                                       ; $6358: $65
    ld b, d                                       ; $6359: $42
    adc l                                         ; $635a: $8d
    ld a, b                                       ; $635b: $78
    or l                                          ; $635c: $b5
    adc [hl]                                      ; $635d: $8e
    jp Jump_055_4a9e                              ; $635e: $c3 $9e $4a


    ld e, [hl]                                    ; $6361: $5e
    pop af                                        ; $6362: $f1
    sub h                                         ; $6363: $94
    inc bc                                        ; $6364: $03
    ld b, h                                       ; $6365: $44
    db $dd                                        ; $6366: $dd
    sub [hl]                                      ; $6367: $96
    ld [hl], c                                    ; $6368: $71
    ld a, l                                       ; $6369: $7d
    ld de, $3d4f                                  ; $636a: $11 $4f $3d
    ld l, h                                       ; $636d: $6c
    add c                                         ; $636e: $81
    db $10                                        ; $636f: $10
    ld [de], a                                    ; $6370: $12
    cp d                                          ; $6371: $ba
    call z, Call_000_1fb5                         ; $6372: $cc $b5 $1f
    and e                                         ; $6375: $a3
    and a                                         ; $6376: $a7
    ld e, h                                       ; $6377: $5c
    xor c                                         ; $6378: $a9
    rst $10                                       ; $6379: $d7
    rst $00                                       ; $637a: $c7
    ld h, c                                       ; $637b: $61
    call nz, $11ab                                ; $637c: $c4 $ab $11
    ld e, l                                       ; $637f: $5d
    push bc                                       ; $6380: $c5
    ld a, e                                       ; $6381: $7b
    inc a                                         ; $6382: $3c
    ld b, d                                       ; $6383: $42
    sub a                                         ; $6384: $97
    dec h                                         ; $6385: $25
    ld c, a                                       ; $6386: $4f
    ld d, h                                       ; $6387: $54
    cp c                                          ; $6388: $b9
    ld d, [hl]                                    ; $6389: $56
    cp d                                          ; $638a: $ba
    jr z, @+$60                                   ; $638b: $28 $5e

    add $93                                       ; $638d: $c6 $93

jr_055_638f:
    rst $00                                       ; $638f: $c7
    db $fc                                        ; $6390: $fc
    ld h, $d9                                     ; $6391: $26 $d9
    or d                                          ; $6393: $b2
    ldh a, [rNR50]                                ; $6394: $f0 $24
    cp b                                          ; $6396: $b8
    ldh [$fa], a                                  ; $6397: $e0 $fa
    jr c, jr_055_63c7                             ; $6399: $38 $2c

    ld h, [hl]                                    ; $639b: $66
    adc h                                         ; $639c: $8c
    ld e, l                                       ; $639d: $5d
    ei                                            ; $639e: $fb
    ld sp, $5f7a                                  ; $639f: $31 $7a $5f
    ld h, h                                       ; $63a2: $64
    ccf                                           ; $63a3: $3f
    ld [hl], h                                    ; $63a4: $74
    inc l                                         ; $63a5: $2c
    xor c                                         ; $63a6: $a9
    ld de, $e6dd                                  ; $63a7: $11 $dd $e6
    cp c                                          ; $63aa: $b9
    sub $7d                                       ; $63ab: $d6 $7d
    rlca                                          ; $63ad: $07
    ld b, b                                       ; $63ae: $40

jr_055_63af:
    add b                                         ; $63af: $80
    inc hl                                        ; $63b0: $23
    dec hl                                        ; $63b1: $2b
    and a                                         ; $63b2: $a7
    sbc e                                         ; $63b3: $9b
    ld sp, $2944                                  ; $63b4: $31 $44 $29
    sbc l                                         ; $63b7: $9d
    ld c, [hl]                                    ; $63b8: $4e
    ld [$71f5], a                                 ; $63b9: $ea $f5 $71
    jr jr_055_638f                                ; $63bc: $18 $d1

    ld d, l                                       ; $63be: $55
    db $ec                                        ; $63bf: $ec
    ld c, c                                       ; $63c0: $49
    ld [hl], $44                                  ; $63c1: $36 $44
    ld a, l                                       ; $63c3: $7d
    inc e                                         ; $63c4: $1c
    ld b, [hl]                                    ; $63c5: $46
    cp h                                          ; $63c6: $bc

jr_055_63c7:
    ld e, d                                       ; $63c7: $5a
    jp nc, $f157                                  ; $63c8: $d2 $57 $f1

    ld [$74d7], sp                                ; $63cb: $08 $d7 $74
    or $fe                                        ; $63ce: $f6 $fe
    ld hl, sp+$63                                 ; $63d0: $f8 $63
    daa                                           ; $63d2: $27
    rst $38                                       ; $63d3: $ff
    ret nz                                        ; $63d4: $c0

    push af                                       ; $63d5: $f5
    ld [hl], c                                    ; $63d6: $71
    ld e, b                                       ; $63d7: $58
    call z, Call_000_3f78                         ; $63d8: $cc $78 $3f
    ld b, [hl]                                    ; $63db: $46
    adc a                                         ; $63dc: $8f
    and h                                         ; $63dd: $a4
    and [hl]                                      ; $63de: $a6
    call z, $8d13                                 ; $63df: $cc $13 $8d
    ld b, a                                       ; $63e2: $47
    cp [hl]                                       ; $63e3: $be
    ld [hl], e                                    ; $63e4: $73
    ld [hl], d                                    ; $63e5: $72
    add hl, hl                                    ; $63e6: $29
    inc sp                                        ; $63e7: $33
    ld b, h                                       ; $63e8: $44
    db $dd                                        ; $63e9: $dd
    and $b9                                       ; $63ea: $e6 $b9
    sub $7f                                       ; $63ec: $d6 $7f
    rst $28                                       ; $63ee: $ef
    ld a, [$5cc7]                                 ; $63ef: $fa $c7 $5c
    ld a, [de]                                    ; $63f2: $1a
    ld [hl], c                                    ; $63f3: $71
    rst $38                                       ; $63f4: $ff
    ld [hl], b                                    ; $63f5: $70
    add b                                         ; $63f6: $80

Jump_055_63f7:
    rst $38                                       ; $63f7: $ff

Call_055_63f8:
    jr nc, jr_055_63af                            ; $63f8: $30 $b5

    ld b, b                                       ; $63fa: $40
    call $c3bc                                    ; $63fb: $cd $bc $c3
    ld d, [hl]                                    ; $63fe: $56
    jp c, $f3dd                                   ; $63ff: $da $dd $f3

    sbc e                                         ; $6402: $9b
    ld a, [hl]                                    ; $6403: $7e
    or h                                          ; $6404: $b4
    dec sp                                        ; $6405: $3b
    xor [hl]                                      ; $6406: $ae
    add hl, hl                                    ; $6407: $29
    add a                                         ; $6408: $87
    sbc l                                         ; $6409: $9d
    xor a                                         ; $640a: $af
    inc l                                         ; $640b: $2c
    db $10                                        ; $640c: $10
    ld bc, $c477                                  ; $640d: $01 $77 $c4
    add sp, $05                                   ; $6410: $e8 $05
    ld l, d                                       ; $6412: $6a
    ld [hl], h                                    ; $6413: $74
    cp l                                          ; $6414: $bd
    ld h, c                                       ; $6415: $61
    add a                                         ; $6416: $87
    ld de, $d4ae                                  ; $6417: $11 $ae $d4
    ld [$b5b7], sp                                ; $641a: $08 $b7 $b5
    and $1a                                       ; $641d: $e6 $1a
    halt                                          ; $641f: $76
    ld c, b                                       ; $6420: $48
    adc l                                         ; $6421: $8d
    nop                                           ; $6422: $00
    rst $30                                       ; $6423: $f7
    sbc $39                                       ; $6424: $de $39
    push af                                       ; $6426: $f5
    or h                                          ; $6427: $b4
    dec sp                                        ; $6428: $3b
    call nc, $c662                                ; $6429: $d4 $62 $c6
    ei                                            ; $642c: $fb
    and c                                         ; $642d: $a1
    ld h, e                                       ; $642e: $63
    pop de                                        ; $642f: $d1
    ld c, $5b                                     ; $6430: $0e $5b
    sub [hl]                                      ; $6432: $96
    db $f4                                        ; $6433: $f4
    ld d, l                                       ; $6434: $55
    dec sp                                        ; $6435: $3b
    db $fc                                        ; $6436: $fc
    ld e, e                                       ; $6437: $5b
    inc sp                                        ; $6438: $33
    ld b, h                                       ; $6439: $44
    dec a                                         ; $643a: $3d
    xor [hl]                                      ; $643b: $ae
    cp c                                          ; $643c: $b9
    and [hl]                                      ; $643d: $a6
    call z, Call_000_3d70                         ; $643e: $cc $70 $3d
    cp c                                          ; $6441: $b9
    xor c                                         ; $6442: $a9
    jp hl                                         ; $6443: $e9


    inc e                                         ; $6444: $1c
    ld a, a                                       ; $6445: $7f
    adc h                                         ; $6446: $8c
    inc sp                                        ; $6447: $33
    or e                                          ; $6448: $b3
    ld l, e                                       ; $6449: $6b
    ld [hl], a                                    ; $644a: $77
    cp a                                          ; $644b: $bf
    ld b, [hl]                                    ; $644c: $46
    ccf                                           ; $644d: $3f
    add hl, bc                                    ; $644e: $09

Jump_055_644f:
    bit 4, c                                      ; $644f: $cb $61
    ld [hl], a                                    ; $6451: $77
    sub $4b                                       ; $6452: $d6 $4b
    and a                                         ; $6454: $a7
    dec c                                         ; $6455: $0d
    ld de, $a229                                  ; $6456: $11 $29 $a2

Call_055_6459:
    sbc a                                         ; $6459: $9f
    sub l                                         ; $645a: $95
    ld l, $8a                                     ; $645b: $2e $8a
    or l                                          ; $645d: $b5
    inc de                                        ; $645e: $13
    cp l                                          ; $645f: $bd
    and d                                         ; $6460: $a2
    ld c, c                                       ; $6461: $49
    db $fd                                        ; $6462: $fd
    ld l, b                                       ; $6463: $68
    and a                                         ; $6464: $a7
    call z, $5e4b                                 ; $6465: $cc $4b $5e
    adc l                                         ; $6468: $8d
    ld [hl], b                                    ; $6469: $70
    ld c, l                                       ; $646a: $4d
    sub a                                         ; $646b: $97
    ldh [$dd], a                                  ; $646c: $e0 $dd
    db $fd                                        ; $646e: $fd
    ld a, [de]                                    ; $646f: $1a
    db $fd                                        ; $6470: $fd
    inc h                                         ; $6471: $24
    db $ec                                        ; $6472: $ec
    cp h                                          ; $6473: $bc
    add hl, hl                                    ; $6474: $29
    rst $28                                       ; $6475: $ef
    ld b, h                                       ; $6476: $44
    cp l                                          ; $6477: $bd
    dec [hl]                                      ; $6478: $35
    cpl                                           ; $6479: $2f
    jp hl                                         ; $647a: $e9


    xor e                                         ; $647b: $ab
    inc c                                         ; $647c: $0c
    ld de, $ff77                                  ; $647d: $11 $77 $ff
    and a                                         ; $6480: $a7
    db $eb                                        ; $6481: $eb
    ld a, [hl-]                                   ; $6482: $3a
    add h                                         ; $6483: $84
    db $10                                        ; $6484: $10
    ld [hl+], a                                   ; $6485: $22
    db $dd                                        ; $6486: $dd
    xor [hl]                                      ; $6487: $ae
    ld de, $96af                                  ; $6488: $11 $af $96
    db $fc                                        ; $648b: $fc
    add hl, hl                                    ; $648c: $29
    sub a                                         ; $648d: $97
    or l                                          ; $648e: $b5
    inc de                                        ; $648f: $13
    ld l, d                                       ; $6490: $6a
    ld l, h                                       ; $6491: $6c
    adc c                                         ; $6492: $89
    xor [hl]                                      ; $6493: $ae
    ld [hl], l                                    ; $6494: $75
    inc e                                         ; $6495: $1c
    and [hl]                                      ; $6496: $a6
    ld e, h                                       ; $6497: $5c
    sbc $89                                       ; $6498: $de $89
    xor a                                         ; $649a: $af
    adc l                                         ; $649b: $8d
    and [hl]                                      ; $649c: $a6
    ld d, d                                       ; $649d: $52
    inc hl                                        ; $649e: $23
    dec a                                         ; $649f: $3d
    ret                                           ; $64a0: $c9


    ld e, e                                       ; $64a1: $5b
    add sp, -$1c                                  ; $64a2: $e8 $e4
    ld d, d                                       ; $64a4: $52
    sbc [hl]                                      ; $64a5: $9e
    ld [hl], d                                    ; $64a6: $72
    ld a, c                                       ; $64a7: $79
    ld a, [hl-]                                   ; $64a8: $3a
    ld e, e                                       ; $64a9: $5b
    add sp, $5c                                   ; $64aa: $e8 $5c
    dec sp                                        ; $64ac: $3b
    add hl, sp                                    ; $64ad: $39
    pop af                                        ; $64ae: $f1
    ld a, c                                       ; $64af: $79
    call $9232                                    ; $64b0: $cd $32 $92
    sbc d                                         ; $64b3: $9a
    or d                                          ; $64b4: $b2
    adc b                                         ; $64b5: $88
    rst $00                                       ; $64b6: $c7
    ld e, a                                       ; $64b7: $5f
    cp l                                          ; $64b8: $bd
    cp l                                          ; $64b9: $bd
    ld h, h                                       ; $64ba: $64
    xor d                                         ; $64bb: $aa
    dec hl                                        ; $64bc: $2b
    adc b                                         ; $64bd: $88
    cp c                                          ; $64be: $b9
    rla                                           ; $64bf: $17
    ld [bc], a                                    ; $64c0: $02
    ld a, l                                       ; $64c1: $7d
    or d                                          ; $64c2: $b2
    halt                                          ; $64c3: $76
    dec e                                         ; $64c4: $1d
    add a                                         ; $64c5: $87
    ld de, $294f                                  ; $64c6: $11 $4f $29
    cpl                                           ; $64c9: $2f
    inc [hl]                                      ; $64ca: $34
    ld h, e                                       ; $64cb: $63
    ld e, $f9                                     ; $64cc: $1e $f9
    adc $c9                                       ; $64ce: $ce $c9
    and l                                         ; $64d0: $a5
    call z, Call_055_4210                         ; $64d1: $cc $10 $42
    inc b                                         ; $64d4: $04
    add hl, hl                                    ; $64d5: $29
    db $fc                                        ; $64d6: $fc
    ld e, e                                       ; $64d7: $5b
    ld [hl], e                                    ; $64d8: $73
    ld [$9b75], a                                 ; $64d9: $ea $75 $9b
    reti                                          ; $64dc: $d9


    ld [hl], e                                    ; $64dd: $73
    call $d7bc                                    ; $64de: $cd $bc $d7
    sub d                                         ; $64e1: $92
    ld e, h                                       ; $64e2: $5c
    db $ed                                        ; $64e3: $ed
    add a                                         ; $64e4: $87

Jump_055_64e5:
    sub l                                         ; $64e5: $95
    add e                                         ; $64e6: $83
    ld e, e                                       ; $64e7: $5b
    cp d                                          ; $64e8: $ba
    ld [hl], h                                    ; $64e9: $74
    and l                                         ; $64ea: $a5
    ldh [$2e], a                                  ; $64eb: $e0 $2e
    cp a                                          ; $64ed: $bf
    ld l, h                                       ; $64ee: $6c
    ld hl, sp-$75                                 ; $64ef: $f8 $8b
    ld a, [hl]                                    ; $64f1: $7e
    ret z                                         ; $64f2: $c8

    ld l, h                                       ; $64f3: $6c
    add hl, bc                                    ; $64f4: $09
    db $e3                                        ; $64f5: $e3
    rst $18                                       ; $64f6: $df
    sub $bb                                       ; $64f7: $d6 $bb
    ld a, $4d                                     ; $64f9: $3e $4d
    ld a, a                                       ; $64fb: $7f
    add hl, bc                                    ; $64fc: $09
    jp c, $4d91                                   ; $64fd: $da $91 $4d

    ccf                                           ; $6500: $3f
    ld h, a                                       ; $6501: $67
    xor a                                         ; $6502: $af
    jp z, $e187                                   ; $6503: $ca $87 $e1

    xor $7e                                       ; $6506: $ee $7e
    ld [$dde1], a                                 ; $6508: $ea $e1 $dd
    sub a                                         ; $650b: $97
    ld sp, $9f5d                                  ; $650c: $31 $5d $9f
    sub a                                         ; $650f: $97
    db $fc                                        ; $6510: $fc
    or [hl]                                       ; $6511: $b6
    di                                            ; $6512: $f3
    ld h, e                                       ; $6513: $63
    ld [hl], h                                    ; $6514: $74
    pop af                                        ; $6515: $f1
    adc [hl]                                      ; $6516: $8e
    sbc c                                         ; $6517: $99
    dec a                                         ; $6518: $3d
    or d                                          ; $6519: $b2
    cp $19                                        ; $651a: $fe $19
    ld c, c                                       ; $651c: $49
    xor l                                         ; $651d: $ad
    ld a, l                                       ; $651e: $7d
    and $11                                       ; $651f: $e6 $11
    dec e                                         ; $6521: $1d
    scf                                           ; $6522: $37
    ld [hl], d                                    ; $6523: $72
    ld a, a                                       ; $6524: $7f
    jr c, jr_055_657e                             ; $6525: $38 $57

    or b                                          ; $6527: $b0
    ld b, b                                       ; $6528: $40
    ld [$d5b1], sp                                ; $6529: $08 $b1 $d5
    xor b                                         ; $652c: $a8
    sub l                                         ; $652d: $95
    dec h                                         ; $652e: $25
    ld [hl], h                                    ; $652f: $74
    cp d                                          ; $6530: $ba
    jp z, $ad7b                                   ; $6531: $ca $7b $ad

    ld a, c                                       ; $6534: $79

Call_055_6535:
    ld h, h                                       ; $6535: $64
    ld h, [hl]                                    ; $6536: $66
    or [hl]                                       ; $6537: $b6
    ld a, b                                       ; $6538: $78
    inc h                                         ; $6539: $24
    dec [hl]                                      ; $653a: $35
    ld [hl-], a                                   ; $653b: $32
    inc sp                                        ; $653c: $33
    cp e                                          ; $653d: $bb
    ld [hl-], a                                   ; $653e: $32
    add $66                                       ; $653f: $c6 $66
    adc b                                         ; $6541: $88
    nop                                           ; $6542: $00
    rst $30                                       ; $6543: $f7
    ld h, l                                       ; $6544: $65
    ld h, [hl]                                    ; $6545: $66
    ld d, a                                       ; $6546: $57
    add $d8                                       ; $6547: $c6 $d8
    sbc h                                         ; $6549: $9c
    ld a, [de]                                    ; $654a: $1a
    ld bc, $9d17                                  ; $654b: $01 $17 $9d
    ld c, [hl]                                    ; $654e: $4e
    ld l, d                                       ; $654f: $6a
    inc b                                         ; $6550: $04
    rst $30                                       ; $6551: $f7
    add [hl]                                      ; $6552: $86
    add hl, bc                                    ; $6553: $09
    or l                                          ; $6554: $b5
    ld c, e                                       ; $6555: $4b
    add $bf                                       ; $6556: $c6 $bf
    and l                                         ; $6558: $a5
    ld e, a                                       ; $6559: $5f
    db $f4                                        ; $655a: $f4
    ld hl, sp-$49                                 ; $655b: $f8 $b7
    sbc l                                         ; $655d: $9d
    sbc h                                         ; $655e: $9c
    ld hl, sp-$44                                 ; $655f: $f8 $bc
    ld h, [hl]                                    ; $6561: $66
    add hl, de                                    ; $6562: $19
    or [hl]                                       ; $6563: $b6
    sbc d                                         ; $6564: $9a
    ld [hl], d                                    ; $6565: $72
    add hl, de                                    ; $6566: $19
    ld [hl+], a                                   ; $6567: $22
    ld a, l                                       ; $6568: $7d
    inc e                                         ; $6569: $1c
    sub [hl]                                      ; $656a: $96
    db $fc                                        ; $656b: $fc
    or [hl]                                       ; $656c: $b6
    rra                                           ; $656d: $1f
    and e                                         ; $656e: $a3
    sub a                                         ; $656f: $97
    ld a, h                                       ; $6570: $7c
    or $5e                                        ; $6571: $f6 $5e
    ld [hl-], a                                   ; $6573: $32
    ld h, l                                       ; $6574: $65
    reti                                          ; $6575: $d9


    ld l, c                                       ; $6576: $69
    cpl                                           ; $6577: $2f
    sbc h                                         ; $6578: $9c
    call nc, $fcbb                                ; $6579: $d4 $bb $fc
    or d                                          ; $657c: $b2
    pop hl                                        ; $657d: $e1

jr_055_657e:
    cpl                                           ; $657e: $2f
    ld a, [$b321]                                 ; $657f: $fa $21 $b3
    dec h                                         ; $6582: $25
    adc h                                         ; $6583: $8c
    ld a, a                                       ; $6584: $7f
    ld e, e                                       ; $6585: $5b
    rst $28                                       ; $6586: $ef
    ld a, [$fd34]                                 ; $6587: $fa $34 $fd
    dec h                                         ; $658a: $25
    ret nz                                        ; $658b: $c0

    db $dd                                        ; $658c: $dd
    dec de                                        ; $658d: $1b
    ld h, $d4                                     ; $658e: $26 $d4
    ld l, $19                                     ; $6590: $2e $19
    rst $38                                       ; $6592: $ff
    sub [hl]                                      ; $6593: $96
    ld a, [hl]                                    ; $6594: $7e
    pop de                                        ; $6595: $d1
    db $e3                                        ; $6596: $e3
    rst $18                                       ; $6597: $df
    halt                                          ; $6598: $76
    ld [hl], d                                    ; $6599: $72
    ld [c], a                                     ; $659a: $e2
    di                                            ; $659b: $f3
    sbc d                                         ; $659c: $9a

Jump_055_659d:
    ld h, l                                       ; $659d: $65
    ret c                                         ; $659e: $d8

    ld l, d                                       ; $659f: $6a
    jp z, $8865                                   ; $65a0: $ca $65 $88

    nop                                           ; $65a3: $00
    dec a                                         ; $65a4: $3d
    xor a                                         ; $65a5: $af
    and [hl]                                      ; $65a6: $a6
    db $f4                                        ; $65a7: $f4
    pop de                                        ; $65a8: $d1
    cp d                                          ; $65a9: $ba
    adc b                                         ; $65aa: $88
    ld a, c                                       ; $65ab: $79
    ld a, [hl-]                                   ; $65ac: $3a
    rst $08                                       ; $65ad: $cf

Jump_055_65ae:
    ld [hl+], a                                   ; $65ae: $22
    call nc, $2488                                ; $65af: $d4 $88 $24
    sub a                                         ; $65b2: $97
    ld a, d                                       ; $65b3: $7a
    ld [hl-], a                                   ; $65b4: $32
    bit 5, b                                      ; $65b5: $cb $68
    xor d                                         ; $65b7: $aa
    ld d, $5b                                     ; $65b8: $16 $5b
    ld a, [hl]                                    ; $65ba: $7e
    ei                                            ; $65bb: $fb
    db $eb                                        ; $65bc: $eb
    or $92                                        ; $65bd: $f6 $92
    ld a, a                                       ; $65bf: $7f
    ld a, h                                       ; $65c0: $7c
    halt                                          ; $65c1: $76
    ret c                                         ; $65c2: $d8

    ld e, a                                       ; $65c3: $5f
    ld a, d                                       ; $65c4: $7a
    ld hl, $1c7d                                  ; $65c5: $21 $7d $1c
    ld b, [hl]                                    ; $65c8: $46
    cp h                                          ; $65c9: $bc
    ld c, e                                       ; $65ca: $4b
    adc b                                         ; $65cb: $88
    ld [hl], a                                    ; $65cc: $77
    add hl, bc                                    ; $65cd: $09
    pop af                                        ; $65ce: $f1
    ld l, d                                       ; $65cf: $6a
    ccf                                           ; $65d0: $3f
    ld b, [hl]                                    ; $65d1: $46
    ld b, e                                       ; $65d2: $43
    ld [$0e3b], sp                                ; $65d3: $08 $3b $0e
    adc e                                         ; $65d6: $8b
    rst $28                                       ; $65d7: $ef
    sub d                                         ; $65d8: $92
    ld hl, sp+$2e                                 ; $65d9: $f8 $2e
    adc c                                         ; $65db: $89
    ld c, a                                       ; $65dc: $4f
    or $63                                        ; $65dd: $f6 $63
    inc [hl]                                      ; $65df: $34
    add h                                         ; $65e0: $84
    db $10                                        ; $65e1: $10
    ld bc, $d429                                  ; $65e2: $01 $29 $d4
    add sp, $5c                                   ; $65e5: $e8 $5c
    db $ec                                        ; $65e7: $ec
    sub $86                                       ; $65e8: $d6 $86
    dec e                                         ; $65ea: $1d
    or $5f                                        ; $65eb: $f6 $5f
    ld l, e                                       ; $65ed: $6b
    db $f4                                        ; $65ee: $f4
    ld l, e                                       ; $65ef: $6b
    ld l, l                                       ; $65f0: $6d
    ld b, h                                       ; $65f1: $44
    sub d                                         ; $65f2: $92
    ld c, e                                       ; $65f3: $4b
    dec a                                         ; $65f4: $3d
    ld e, c                                       ; $65f5: $59
    rst $00                                       ; $65f6: $c7
    ld h, c                                       ; $65f7: $61
    ld sp, $ec63                                  ; $65f8: $31 $63 $ec
    ld a, [de]                                    ; $65fb: $1a
    sbc l                                         ; $65fc: $9d
    dec hl                                        ; $65fd: $2b
    db $fd                                        ; $65fe: $fd
    and a                                         ; $65ff: $a7
    ld a, $f3                                     ; $6600: $3e $f3
    inc e                                         ; $6602: $1c
    call z, $bf6b                                 ; $6603: $cc $6b $bf
    dec [hl]                                      ; $6606: $35
    adc a                                         ; $6607: $8f
    ret z                                         ; $6608: $c8

    ld d, c                                       ; $6609: $51
    ccf                                           ; $660a: $3f
    inc hl                                        ; $660b: $23
    ld [hl], e                                    ; $660c: $73
    call nc, Call_055_440f                        ; $660d: $d4 $0f $44
    ld [hl], a                                    ; $6610: $77
    ei                                            ; $6611: $fb
    ld [de], a                                    ; $6612: $12
    db $ec                                        ; $6613: $ec
    ld c, e                                       ; $6614: $4b
    or b                                          ; $6615: $b0
    ld h, l                                       ; $6616: $65
    jp z, $e4bc                                   ; $6617: $ca $bc $e4

    or a                                          ; $661a: $b7
    and $25                                       ; $661b: $e6 $25
    ld a, l                                       ; $661d: $7d
    sub l                                         ; $661e: $95
    ld h, a                                       ; $661f: $67
    ld e, $9d                                     ; $6620: $1e $9d
    xor e                                         ; $6622: $ab
    ld a, [$a4ba]                                 ; $6623: $fa $ba $a4
    ld a, [$a4ba]                                 ; $6626: $fa $ba $a4

jr_055_6629:
    ld a, [$ae52]                                 ; $6629: $fa $52 $ae
    rrca                                          ; $662c: $0f
    ld hl, $8044                                  ; $662d: $21 $44 $80
    rst $38                                       ; $6630: $ff
    adc [hl]                                      ; $6631: $8e
    cp h                                          ; $6632: $bc
    jr jr_055_6692                                ; $6633: $18 $5d

    jp Jump_055_65ae                              ; $6635: $c3 $ae $65


    inc a                                         ; $6638: $3c
    ld h, l                                       ; $6639: $65
    ld h, [hl]                                    ; $663a: $66
    ld c, a                                       ; $663b: $4f
    xor b                                         ; $663c: $a8
    sbc d                                         ; $663d: $9a
    jp nc, $bc47                                  ; $663e: $d2 $47 $bc

    ld e, d                                       ; $6641: $5a
    jp c, $8d87                                   ; $6642: $da $87 $8d

    ld a, c                                       ; $6645: $79
    jp z, Jump_055_7461                           ; $6646: $ca $61 $74

    xor [hl]                                      ; $6649: $ae
    ld de, $ae49                                  ; $664a: $11 $49 $ae
    xor c                                         ; $664d: $a9
    cpl                                           ; $664e: $2f
    ld l, e                                       ; $664f: $6b
    cp c                                          ; $6650: $b9
    di                                            ; $6651: $f3
    jp c, $f367                                   ; $6652: $da $67 $f3

    inc e                                         ; $6655: $1c
    inc l                                         ; $6656: $2c
    call c, Call_055_587e                         ; $6657: $dc $7e $58
    ei                                            ; $665a: $fb
    ld hl, $20b8                                  ; $665b: $21 $b8 $20
    ld [bc], a                                    ; $665e: $02
    cp l                                          ; $665f: $bd
    ld [hl], l                                    ; $6660: $75
    ld [hl], l                                    ; $6661: $75
    ld h, d                                       ; $6662: $62
    rst $00                                       ; $6663: $c7
    dec l                                         ; $6664: $2d
    daa                                           ; $6665: $27
    ld a, e                                       ; $6666: $7b
    inc a                                         ; $6667: $3c
    push hl                                       ; $6668: $e5
    db $fd                                        ; $6669: $fd
    jr jr_055_6629                                ; $666a: $18 $bd

    ld b, e                                       ; $666c: $43
    dec l                                         ; $666d: $2d
    sbc a                                         ; $666e: $9f
    inc bc                                        ; $666f: $03
    ld de, $c93d                                  ; $6670: $11 $3d $c9
    sbc e                                         ; $6673: $9b
    ld l, e                                       ; $6674: $6b
    db $dd                                        ; $6675: $dd
    ld e, [hl]                                    ; $6676: $5e
    ld a, [c]                                     ; $6677: $f2
    adc a                                         ; $6678: $8f
    rst $08                                       ; $6679: $cf
    ld c, $fb                                     ; $667a: $0e $fb
    ld c, e                                       ; $667c: $4b
    cpl                                           ; $667d: $2f
    inc b                                         ; $667e: $04
    ld [hl], a                                    ; $667f: $77
    call nz, $25e8                                ; $6680: $c4 $e8 $25
    and $75                                       ; $6683: $e6 $75
    inc e                                         ; $6685: $1c
    or h                                          ; $6686: $b4
    jp $a596                                      ; $6687: $c3 $96 $a5


    inc [hl]                                      ; $668a: $34
    cp l                                          ; $668b: $bd
    sub [hl]                                      ; $668c: $96
    db $fc                                        ; $668d: $fc
    or [hl]                                       ; $668e: $b6
    rst $38                                       ; $668f: $ff
    ld e, d                                       ; $6690: $5a
    and e                                         ; $6691: $a3

jr_055_6692:
    ld e, a                                       ; $6692: $5f
    ld l, e                                       ; $6693: $6b
    inc hl                                        ; $6694: $23
    sbc $f8                                       ; $6695: $de $f8
    push bc                                       ; $6697: $c5
    db $fd                                        ; $6698: $fd
    add hl, hl                                    ; $6699: $29
    ld c, e                                       ; $669a: $4b
    ld l, d                                       ; $669b: $6a
    inc b                                         ; $669c: $04
    rst $30                                       ; $669d: $f7
    cp h                                          ; $669e: $bc
    inc de                                        ; $669f: $13
    ld d, e                                       ; $66a0: $53
    xor a                                         ; $66a1: $af
    rst $20                                       ; $66a2: $e7
    pop hl                                        ; $66a3: $e1
    ld de, $294f                                  ; $66a4: $11 $4f $29
    cpl                                           ; $66a7: $2f
    ld sp, hl                                     ; $66a8: $f9
    dec bc                                        ; $66a9: $0b
    call $2198                                    ; $66aa: $cd $98 $21
    ld [bc], a                                    ; $66ad: $02
    or a                                          ; $66ae: $b7
    rst $20                                       ; $66af: $e7
    ld h, d                                       ; $66b0: $62
    ld [$e861], sp                                ; $66b1: $08 $61 $e8
    jr jr_055_6705                                ; $66b4: $18 $4f

    cp c                                          ; $66b6: $b9
    inc c                                         ; $66b7: $0c
    ld de, $973d                                  ; $66b8: $11 $3d $97
    db $f4                                        ; $66bb: $f4
    ld e, h                                       ; $66bc: $5c
    jp nc, $aaf3                                  ; $66bd: $d2 $f3 $aa

    inc [hl]                                      ; $66c0: $34
    db $10                                        ; $66c1: $10
    ld b, d                                       ; $66c2: $42
    ld a, b                                       ; $66c3: $78
    ld l, $39                                     ; $66c4: $2e $39
    ld c, [hl]                                    ; $66c6: $4e
    adc l                                         ; $66c7: $8d
    nop                                           ; $66c8: $00
    db $dd                                        ; $66c9: $dd
    and $b9                                       ; $66ca: $e6 $b9
    or $63                                        ; $66cc: $f6 $63
    db $f4                                        ; $66ce: $f4
    ld c, b                                       ; $66cf: $48
    dec bc                                        ; $66d0: $0b
    rst $28                                       ; $66d1: $ef
    dec h                                         ; $66d2: $25
    ld d, e                                       ; $66d3: $53
    ld c, $a3                                     ; $66d4: $0e $a3
    or $48                                        ; $66d6: $f6 $48
    rst $08                                       ; $66d8: $cf
    call z, $ddae                                 ; $66d9: $cc $ae $dd
    ld e, c                                       ; $66dc: $59
    sub [hl]                                      ; $66dd: $96
    ret nc                                        ; $66de: $d0

    inc a                                         ; $66df: $3c
    sub d                                         ; $66e0: $92
    sbc d                                         ; $66e1: $9a
    or d                                          ; $66e2: $b2
    inc c                                         ; $66e3: $0c
    ld d, e                                       ; $66e4: $53
    ld l, h                                       ; $66e5: $6c
    add c                                         ; $66e6: $81
    ld [$f8f7], sp                                ; $66e7: $08 $f7 $f8
    and a                                         ; $66ea: $a7
    ld e, [hl]                                    ; $66eb: $5e
    adc d                                         ; $66ec: $8a
    ld d, e                                       ; $66ed: $53
    inc hl                                        ; $66ee: $23
    add b                                         ; $66ef: $80
    ld a, b                                       ; $66f0: $78
    add h                                         ; $66f1: $84
    adc e                                         ; $66f2: $8b
    xor [hl]                                      ; $66f3: $ae
    sub a                                         ; $66f4: $97
    ld a, d                                       ; $66f5: $7a
    dec a                                         ; $66f6: $3d
    ld l, [hl]                                    ; $66f7: $6e
    call $dc35                                    ; $66f8: $cd $35 $dc
    push bc                                       ; $66fb: $c5
    sbc $3d                                       ; $66fc: $de $3d
    rst $28                                       ; $66fe: $ef
    call nz, Call_055_6459                        ; $66ff: $c4 $59 $64
    jp z, $b4bc                                   ; $6702: $ca $bc $b4

jr_055_6705:
    rst $38                                       ; $6705: $ff
    ld h, c                                       ; $6706: $61
    di                                            ; $6707: $f3
    sub h                                         ; $6708: $94
    dec hl                                        ; $6709: $2b
    dec [hl]                                      ; $670a: $35
    ld [bc], a                                    ; $670b: $02
    dec a                                         ; $670c: $3d
    ld c, c                                       ; $670d: $49
    ld l, $3a                                     ; $670e: $2e $3a
    rst $10                                       ; $6710: $d7
    adc b                                         ; $6711: $88
    call c, Call_055_6b94                         ; $6712: $dc $94 $6b
    jp z, $ef33                                   ; $6715: $ca $33 $ef

    ld d, b                                       ; $6718: $50
    jp nz, Jump_055_7c4b                          ; $6719: $c2 $4b $7c

    inc l                                         ; $671c: $2c
    ei                                            ; $671d: $fb
    ld [hl+], a                                   ; $671e: $22
    ld l, [hl]                                    ; $671f: $6e
    call nc, $11e1                                ; $6720: $d4 $e1 $11
    xor [hl]                                      ; $6723: $ae
    sub c                                         ; $6724: $91
    call nc, $cc4e                                ; $6725: $d4 $4e $cc
    call Call_000_0bd2                            ; $6728: $cd $d2 $0b
    ld bc, $d429                                  ; $672b: $01 $29 $d4
    sub h                                         ; $672e: $94
    cp [hl]                                       ; $672f: $be
    rra                                           ; $6730: $1f
    and e                                         ; $6731: $a3
    ld b, a                                       ; $6732: $47
    cp a                                          ; $6733: $bf
    sub $8c                                       ; $6734: $d6 $8c
    or c                                          ; $6736: $b1
    ld h, l                                       ; $6737: $65
    jp z, $c3b2                                   ; $6738: $ca $b2 $c3

    ld a, c                                       ; $673b: $79
    inc h                                         ; $673c: $24
    push de                                       ; $673d: $d5
    ld l, e                                       ; $673e: $6b
    db $dd                                        ; $673f: $dd
    sub [hl]                                      ; $6740: $96
    dec h                                         ; $6741: $25
    add hl, sp                                    ; $6742: $39
    or d                                          ; $6743: $b2
    ld a, c                                       ; $6744: $79
    sub d                                         ; $6745: $92
    dec c                                         ; $6746: $0d
    ld de, $1c7d                                  ; $6747: $11 $7d $1c
    sub [hl]                                      ; $674a: $96
    ld e, b                                       ; $674b: $58
    add hl, hl                                    ; $674c: $29
    rst $10                                       ; $674d: $d7
    ld c, b                                       ; $674e: $48
    ld l, d                                       ; $674f: $6a
    adc a                                         ; $6750: $8f
    and a                                         ; $6751: $a7
    inc l                                         ; $6752: $2c
    ld c, e                                       ; $6753: $4b
    ld [hl], d                                    ; $6754: $72
    ld h, h                                       ; $6755: $64
    rst $10                                       ; $6756: $d7
    cp d                                          ; $6757: $ba
    cp l                                          ; $6758: $bd
    db $e4                                        ; $6759: $e4
    rra                                           ; $675a: $1f
    sbc a                                         ; $675b: $9f
    dec e                                         ; $675c: $1d
    or $97                                        ; $675d: $f6 $97
    call nc, $dd08                                ; $675f: $d4 $08 $dd
    ld h, [hl]                                    ; $6762: $66
    or $5c                                        ; $6763: $f6 $5c
    and e                                         ; $6765: $a3
    ld e, a                                       ; $6766: $5f
    or l                                          ; $6767: $b5
    rra                                           ; $6768: $1f
    or h                                          ; $6769: $b4
    bit 4, c                                      ; $676a: $cb $61
    jp z, $d73c                                   ; $676c: $ca $3c $d7

    adc [hl]                                      ; $676f: $8e
    add l                                         ; $6770: $85
    pop hl                                        ; $6771: $e1
    xor $cc                                       ; $6772: $ee $cc
    ld e, b                                       ; $6774: $58
    cp e                                          ; $6775: $bb
    ld b, e                                       ; $6776: $43
    dec l                                         ; $6777: $2d
    ld d, b                                       ; $6778: $50
    or l                                          ; $6779: $b5
    db $e4                                        ; $677a: $e4
    cpl                                           ; $677b: $2f
    add a                                         ; $677c: $87
    dec e                                         ; $677d: $1d
    rst $10                                       ; $677e: $d7
    ld [hl-], a                                   ; $677f: $32
    sbc [hl]                                      ; $6780: $9e
    or d                                          ; $6781: $b2
    adc h                                         ; $6782: $8c
    db $eb                                        ; $6783: $eb
    adc e                                         ; $6784: $8b
    ld a, b                                       ; $6785: $78
    ld [$cb61], a                                 ; $6786: $ea $61 $cb
    cp $94                                        ; $6789: $fe $94
    ld h, l                                       ; $678b: $65
    sub l                                         ; $678c: $95
    rst $08                                       ; $678d: $cf
    ld e, e                                       ; $678e: $5b
    db $ec                                        ; $678f: $ec
    db $e4                                        ; $6790: $e4
    ld h, [hl]                                    ; $6791: $66
    sbc c                                         ; $6792: $99
    ld l, e                                       ; $6793: $6b
    db $fc                                        ; $6794: $fc
    ld e, e                                       ; $6795: $5b
    ld a, [$cf45]                                 ; $6796: $fa $45 $cf
    ld [hl+], a                                   ; $6799: $22
    inc d                                         ; $679a: $14
    ld b, h                                       ; $679b: $44
    dec a                                         ; $679c: $3d
    ld c, c                                       ; $679d: $49
    xor [hl]                                      ; $679e: $ae
    db $fd                                        ; $679f: $fd
    cp l                                          ; $67a0: $bd
    sub $96                                       ; $67a1: $d6 $96
    cp b                                          ; $67a3: $b8
    sub h                                         ; $67a4: $94
    ld h, l                                       ; $67a5: $65
    call nz, Call_000_29ab                        ; $67a6: $c4 $ab $29
    sub a                                         ; $67a9: $97
    sub a                                         ; $67aa: $97
    db $f4                                        ; $67ab: $f4
    ld d, l                                       ; $67ac: $55
    call c, $010b                                 ; $67ad: $dc $0b $01
    cp l                                          ; $67b0: $bd
    sbc e                                         ; $67b1: $9b
    pop af                                        ; $67b2: $f1
    sub h                                         ; $67b3: $94
    add hl, sp                                    ; $67b4: $39
    push af                                       ; $67b5: $f5
    ld a, d                                       ; $67b6: $7a
    rst $10                                       ; $67b7: $d7
    ccf                                           ; $67b8: $3f
    and $d2                                       ; $67b9: $e6 $d2
    adc b                                         ; $67bb: $88
    ld d, e                                       ; $67bc: $53
    inc hl                                        ; $67bd: $23
    db $dd                                        ; $67be: $dd
    ld l, $0f                                     ; $67bf: $2e $0f
    ld d, e                                       ; $67c1: $53
    dec sp                                        ; $67c2: $3b
    ld c, l                                       ; $67c3: $4d
    ld h, a                                       ; $67c4: $67
    or $a8                                        ; $67c5: $f6 $a8
    pop af                                        ; $67c7: $f1
    db $db                                        ; $67c8: $db
    ld l, c                                       ; $67c9: $69
    ccf                                           ; $67ca: $3f
    ld a, d                                       ; $67cb: $7a
    rst $20                                       ; $67cc: $e7
    adc e                                         ; $67cd: $8b
    sbc h                                         ; $67ce: $9c
    sub e                                         ; $67cf: $93
    cp h                                          ; $67d0: $bc
    add sp, -$63                                  ; $67d1: $e8 $9d
    adc $93                                       ; $67d3: $ce $93
    db $e3                                        ; $67d5: $e3
    add d                                         ; $67d6: $82
    cp e                                          ; $67d7: $bb
    scf                                           ; $67d8: $37
    ld c, h                                       ; $67d9: $4c

Call_055_67da:
    xor b                                         ; $67da: $a8
    dec b                                         ; $67db: $05
    xor d                                         ; $67dc: $aa
    or $5f                                        ; $67dd: $f6 $5f
    ld l, e                                       ; $67df: $6b
    db $f4                                        ; $67e0: $f4
    ld l, e                                       ; $67e1: $6b
    ld l, l                                       ; $67e2: $6d
    dec e                                         ; $67e3: $1d
    add a                                         ; $67e4: $87
    push hl                                       ; $67e5: $e5
    or b                                          ; $67e6: $b0
    and $10                                       ; $67e7: $e6 $10
    ld e, h                                       ; $67e9: $5c
    jp $da0e                                      ; $67ea: $c3 $0e $da


    ld de, $3fc9                                  ; $67ed: $11 $c9 $3f
    ei                                            ; $67f0: $fb
    ld [de], a                                    ; $67f1: $12
    inc l                                         ; $67f2: $2c
    inc hl                                        ; $67f3: $23
    ld e, [hl]                                    ; $67f4: $5e
    ld c, l                                       ; $67f5: $4d
    or d                                          ; $67f6: $b2
    rst $30                                       ; $67f7: $f7
    ld [hl], c                                    ; $67f8: $71
    and $29                                       ; $67f9: $e6 $29
    inc sp                                        ; $67fb: $33
    ld b, h                                       ; $67fc: $44
    ld a, l                                       ; $67fd: $7d
    inc e                                         ; $67fe: $1c
    sub $4f                                       ; $67ff: $d6 $4f
    add b                                         ; $6801: $80
    inc bc                                        ; $6802: $03
    ld e, b                                       ; $6803: $58
    rst $38                                       ; $6804: $ff
    ldh a, [$93]                                  ; $6805: $f0 $93
    pop de                                        ; $6807: $d1
    ld d, h                                       ; $6808: $54
    db $ed                                        ; $6809: $ed
    rst $00                                       ; $680a: $c7
    add sp, -$63                                  ; $680b: $e8 $9d
    sbc h                                         ; $680d: $9c
    ld a, b                                       ; $680e: $78
    ld b, h                                       ; $680f: $44
    ld a, [c]                                     ; $6810: $f2
    rst $08                                       ; $6811: $cf
    ld a, [hl]                                    ; $6812: $7e
    adc h                                         ; $6813: $8c
    ld e, [hl]                                    ; $6814: $5e
    rst $00                                       ; $6815: $c7
    ld h, c                                       ; $6816: $61
    xor [hl]                                      ; $6817: $ae
    add hl, hl                                    ; $6818: $29
    rla                                           ; $6819: $17
    ld b, h                                       ; $681a: $44
    add b                                         ; $681b: $80
    rst $38                                       ; $681c: $ff
    jp nc, Jump_000_297a                          ; $681d: $d2 $7a $29

    adc a                                         ; $6820: $8f
    adc $c5                                       ; $6821: $ce $c5
    ld l, [hl]                                    ; $6823: $6e
    call Call_000_1bbb                            ; $6824: $cd $bb $1b
    ld [hl], h                                    ; $6827: $74
    adc d                                         ; $6828: $8a
    add sp, $45                                   ; $6829: $e8 $45
    ld l, $e3                                     ; $682b: $2e $e3
    and l                                         ; $682d: $a5
    inc [hl]                                      ; $682e: $34
    cp l                                          ; $682f: $bd
    jr nz, jr_055_6834                            ; $6830: $20 $02

    ld a, l                                       ; $6832: $7d
    inc e                                         ; $6833: $1c

jr_055_6834:
    add $95                                       ; $6834: $c6 $95
    ld l, e                                       ; $6836: $6b
    ccf                                           ; $6837: $3f
    ld b, [hl]                                    ; $6838: $46
    adc a                                         ; $6839: $8f
    ret nc                                        ; $683a: $d0

    ld h, l                                       ; $683b: $65
    ret                                           ; $683c: $c9


    ld l, a                                       ; $683d: $6f
    call $cae3                                    ; $683e: $cd $e3 $ca
    set 4, a                                      ; $6841: $cb $e7
    ret nz                                        ; $6843: $c0

    db $dd                                        ; $6844: $dd
    dec de                                        ; $6845: $1b
    ld b, [hl]                                    ; $6846: $46
    inc h                                         ; $6847: $24
    rst $38                                       ; $6848: $ff
    adc h                                         ; $6849: $8c
    ret nc                                        ; $684a: $d0

    ld h, l                                       ; $684b: $65
    and c                                         ; $684c: $a1
    sub e                                         ; $684d: $93
    ld c, e                                       ; $684e: $4b
    ld a, c                                       ; $684f: $79
    jp z, Jump_055_5dac                           ; $6850: $ca $ac $5d

    ld a, [c]                                     ; $6853: $f2
    ld e, e                                       ; $6854: $5b
    di                                            ; $6855: $f3
    sub h                                         ; $6856: $94
    ld a, c                                       ; $6857: $79
    ld l, c                                       ; $6858: $69
    daa                                           ; $6859: $27
    rst $38                                       ; $685a: $ff
    ldh a, [rNR34]                                ; $685b: $f0 $1e
    cpl                                           ; $685d: $2f
    ld sp, hl                                     ; $685e: $f9
    ld c, e                                       ; $685f: $4b
    ld e, [hl]                                    ; $6860: $5e
    ld c, l                                       ; $6861: $4d
    ld h, a                                       ; $6862: $67
    cpl                                           ; $6863: $2f
    add a                                         ; $6864: $87
    add l                                         ; $6865: $85
    rra                                           ; $6866: $1f
    db $e3                                        ; $6867: $e3
    cp $c2                                        ; $6868: $fe $c2
    sub e                                         ; $686a: $93
    ld h, b                                       ; $686b: $60
    pop af                                        ; $686c: $f1
    cp $e4                                        ; $686d: $fe $e4
    ld sp, $0443                                  ; $686f: $31 $43 $04
    ld a, l                                       ; $6872: $7d
    or d                                          ; $6873: $b2
    halt                                          ; $6874: $76
    pop af                                        ; $6875: $f1
    ret                                           ; $6876: $c9


    adc c                                         ; $6877: $89
    dec e                                         ; $6878: $1d
    jp Jump_055_6ddd                              ; $6879: $c3 $dd $6d


    ld e, c                                       ; $687c: $59
    ld a, [c]                                     ; $687d: $f2
    add a                                         ; $687e: $87
    xor c                                         ; $687f: $a9
    add l                                         ; $6880: $85
    ld c, [hl]                                    ; $6881: $4e
    ld d, a                                       ; $6882: $57
    ld a, c                                       ; $6883: $79
    sub d                                         ; $6884: $92
    sbc l                                         ; $6885: $9d
    ld a, [de]                                    ; $6886: $1a
    ld bc, $c93d                                  ; $6887: $01 $3d $c9
    ccf                                           ; $688a: $3f
    ld c, e                                       ; $688b: $4b
    cp $4e                                        ; $688c: $fe $4e
    ld a, h                                       ; $688e: $7c
    ld l, l                                       ; $688f: $6d
    add hl, sp                                    ; $6890: $39
    ld [hl], c                                    ; $6891: $71
    and l                                         ; $6892: $a5
    sbc l                                         ; $6893: $9d
    db $fc                                        ; $6894: $fc
    db $e3                                        ; $6895: $e3
    db $dd                                        ; $6896: $dd
    dec c                                         ; $6897: $0d
    ld a, [hl-]                                   ; $6898: $3a
    ld b, l                                       ; $6899: $45
    db $f4                                        ; $689a: $f4
    ld [hl+], a                                   ; $689b: $22
    or l                                          ; $689c: $b5
    db $e3                                        ; $689d: $e3
    or d                                          ; $689e: $b2
    inc b                                         ; $689f: $04
    rst $10                                       ; $68a0: $d7
    sub d                                         ; $68a1: $92
    ccf                                           ; $68a2: $3f
    db $ec                                        ; $68a3: $ec
    ld e, d                                       ; $68a4: $5a
    jp c, $3fc9                                   ; $68a5: $da $c9 $3f

    ld [hl], b                                    ; $68a8: $70
    add b                                         ; $68a9: $80
    rst $38                                       ; $68aa: $ff
    jr nc, jr_055_68e2                            ; $68ab: $30 $35

    ld a, [$788b]                                 ; $68ad: $fa $8b $78
    ld a, [hl-]                                   ; $68b0: $3a
    adc a                                         ; $68b1: $8f
    ld c, b                                       ; $68b2: $48
    sbc $94                                       ; $68b3: $de $94
    ld b, l                                       ; $68b5: $45
    cp h                                          ; $68b6: $bc
    ld l, [hl]                                    ; $68b7: $6e
    cpl                                           ; $68b8: $2f
    ld sp, hl                                     ; $68b9: $f9
    rst $00                                       ; $68ba: $c7
    ld h, a                                       ; $68bb: $67
    add a                                         ; $68bc: $87
    db $fd                                        ; $68bd: $fd
    ld h, l                                       ; $68be: $65
    xor [hl]                                      ; $68bf: $ae
    pop de                                        ; $68c0: $d1
    cp c                                          ; $68c1: $b9
    ld h, $d9                                     ; $68c2: $26 $d9
    db $10                                        ; $68c4: $10
    ld bc, $b3bd                                  ; $68c5: $01 $bd $b3
    jp c, Jump_055_7d57                           ; $68c8: $da $57 $7d

    jp Jump_055_6ddd                              ; $68cb: $c3 $dd $6d


    ld e, c                                       ; $68ce: $59
    ld a, e                                       ; $68cf: $7b
    set 4, a                                      ; $68d0: $cb $e7
    inc l                                         ; $68d2: $2c
    or c                                          ; $68d3: $b1
    or b                                          ; $68d4: $b0
    rst $00                                       ; $68d5: $c7
    cp a                                          ; $68d6: $bf
    db $ed                                        ; $68d7: $ed
    rrca                                          ; $68d8: $0f
    rst $20                                       ; $68d9: $e7
    xor d                                         ; $68da: $aa
    and a                                         ; $68db: $a7
    db $dd                                        ; $68dc: $dd
    ld a, a                                       ; $68dd: $7f
    xor l                                         ; $68de: $ad
    pop de                                        ; $68df: $d1
    xor a                                         ; $68e0: $af
    dec [hl]                                      ; $68e1: $35

jr_055_68e2:
    cp b                                          ; $68e2: $b8
    ld a, $0e                                     ; $68e3: $3e $0e
    inc hl                                        ; $68e5: $23
    ld e, [hl]                                    ; $68e6: $5e
    adc l                                         ; $68e7: $8d
    ld a, b                                       ; $68e8: $78
    call z, $6273                                 ; $68e9: $cc $73 $62
    ld h, c                                       ; $68ec: $61
    ld c, l                                       ; $68ed: $4d
    ld c, l                                       ; $68ee: $4d
    ld [hl], d                                    ; $68ef: $72
    inc e                                         ; $68f0: $1c
    sbc l                                         ; $68f1: $9d
    ld l, e                                       ; $68f2: $6b
    ld a, l                                       ; $68f3: $7d
    set 4, h                                      ; $68f4: $cb $e4
    ld sp, $f5c3                                  ; $68f6: $31 $c3 $f5
    adc $6a                                       ; $68f9: $ce $6a
    ld a, [c]                                     ; $68fb: $f2
    sbc b                                         ; $68fc: $98
    or l                                          ; $68fd: $b5
    db $eb                                        ; $68fe: $eb
    ld a, c                                       ; $68ff: $79
    ld d, l                                       ; $6900: $55
    ld a, [de]                                    ; $6901: $1a
    adc b                                         ; $6902: $88
    nop                                           ; $6903: $00
    cp l                                          ; $6904: $bd
    or e                                          ; $6905: $b3
    sbc d                                         ; $6906: $9a
    inc a                                         ; $6907: $3c
    ld h, [hl]                                    ; $6908: $66
    db $ed                                        ; $6909: $ed
    nop                                           ; $690a: $00
    ld h, h                                       ; $690b: $64
    ld de, $440d                                  ; $690c: $11 $0d $44
    ld [hl], a                                    ; $690f: $77
    ld h, [hl]                                    ; $6910: $66
    cp h                                          ; $6911: $bc
    rra                                           ; $6912: $1f
    ld a, [hl-]                                   ; $6913: $3a
    ld d, $38                                     ; $6914: $16 $38
    ret nz                                        ; $6916: $c0

    ld a, a                                       ; $6917: $7f
    sbc b                                         ; $6918: $98
    ld a, [de]                                    ; $6919: $1a
    ld e, c                                       ; $691a: $59
    ld e, l                                       ; $691b: $5d
    adc c                                         ; $691c: $89
    ld b, a                                       ; $691d: $47
    adc l                                         ; $691e: $8d
    cp $22                                        ; $691f: $fe $22
    sbc $dd                                       ; $6921: $de $dd
    xor a                                         ; $6923: $af
    pop de                                        ; $6924: $d1
    ld c, a                                       ; $6925: $4f
    jp nz, Jump_055_6a48                          ; $6926: $c2 $48 $6a

    nop                                           ; $6929: $00
    dec hl                                        ; $692a: $2b
    db $d3                                        ; $692b: $d3
    ld a, l                                       ; $692c: $7d
    ld d, a                                       ; $692d: $57
    add $d8                                       ; $692e: $c6 $d8
    cp h                                          ; $6930: $bc
    rra                                           ; $6931: $1f
    ld a, [hl-]                                   ; $6932: $3a
    ld d, $88                                     ; $6933: $16 $88
    nop                                           ; $6935: $00
    add b                                         ; $6936: $80
    rst $38                                       ; $6937: $ff
    jp nc, Jump_000_297a                          ; $6938: $d2 $7a $29

    cpl                                           ; $693b: $2f
    db $dd                                        ; $693c: $dd
    cp $08                                        ; $693d: $fe $08
    rst $10                                       ; $693f: $d7
    ld [hl-], a                                   ; $6940: $32
    ld c, c                                       ; $6941: $49
    ld e, d                                       ; $6942: $5a
    cp e                                          ; $6943: $bb
    sbc [hl]                                      ; $6944: $9e
    ld d, a                                       ; $6945: $57
    and l                                         ; $6946: $a5
    add c                                         ; $6947: $81
    inc bc                                        ; $6948: $03
    ld e, b                                       ; $6949: $58
    sbc c                                         ; $694a: $99
    xor $bb                                       ; $694b: $ee $bb
    ld [hl-], a                                   ; $694d: $32
    add $e6                                       ; $694e: $c6 $e6
    cp c                                          ; $6950: $b9
    or $47                                        ; $6951: $f6 $47
    ld [hl], a                                    ; $6953: $77
    ld e, h                                       ; $6954: $5c
    jp z, $0110                                   ; $6955: $ca $10 $01

    db $fd                                        ; $6958: $fd
    ld l, d                                       ; $6959: $6a
    and a                                         ; $695a: $a7
    ld e, h                                       ; $695b: $5c
    ld [hl], e                                    ; $695c: $73
    ld c, l                                       ; $695d: $4d
    jp hl                                         ; $695e: $e9


    db $eb                                        ; $695f: $eb
    ld h, h                                       ; $6960: $64
    db $ed                                        ; $6961: $ed
    ld a, d                                       ; $6962: $7a
    ld e, [hl]                                    ; $6963: $5e
    sub l                                         ; $6964: $95
    ld b, $ee                                     ; $6965: $06 $ee
    adc $8c                                       ; $6967: $ce $8c
    or l                                          ; $6969: $b5
    dec sp                                        ; $696a: $3b
    call nc, Call_055_5502                        ; $696b: $d4 $02 $55
    ld c, e                                       ; $696e: $4b
    cp $72                                        ; $696f: $fe $72
    ret c                                         ; $6971: $d8

    ld hl, $71ff                                  ; $6972: $21 $ff $71
    ld b, c                                       ; $6975: $41
    inc b                                         ; $6976: $04
    cp l                                          ; $6977: $bd
    db $eb                                        ; $6978: $eb
    rra                                           ; $6979: $1f
    ld [hl], e                                    ; $697a: $73
    ld l, c                                       ; $697b: $69
    call nz, $0110                                ; $697c: $c4 $10 $01
    or a                                          ; $697f: $b7
    ld hl, sp-$10                                 ; $6980: $f8 $f0
    ld a, [hl-]                                   ; $6982: $3a
    ld c, $fb                                     ; $6983: $0e $fb
    ld sp, $817a                                  ; $6985: $31 $7a $81
    xor d                                         ; $6988: $aa
    xor c                                         ; $6989: $a9
    rst $08                                       ; $698a: $cf
    ei                                            ; $698b: $fb
    ld [hl+], a                                   ; $698c: $22
    ld [hl], b                                    ; $698d: $70
    db $dd                                        ; $698e: $dd
    and $b9                                       ; $698f: $e6 $b9
    ld b, [hl]                                    ; $6991: $46
    rst $20                                       ; $6992: $e7
    ld c, d                                       ; $6993: $4a
    db $eb                                        ; $6994: $eb
    adc d                                         ; $6995: $8a
    ld hl, $bd02                                  ; $6996: $21 $02 $bd
    or e                                          ; $6999: $b3
    ld e, d                                       ; $699a: $5a
    ld b, a                                       ; $699b: $47
    ld l, a                                       ; $699c: $6f
    jp c, $bcf5                                   ; $699d: $da $f5 $bc

    ld a, [hl+]                                   ; $69a0: $2a
    ld c, l                                       ; $69a1: $4d
    ld l, d                                       ; $69a2: $6a
    inc b                                         ; $69a3: $04
    cp l                                          ; $69a4: $bd
    or e                                          ; $69a5: $b3
    ld e, d                                       ; $69a6: $5a
    ld b, a                                       ; $69a7: $47
    ld l, a                                       ; $69a8: $6f
    jp c, $c801                                   ; $69a9: $da $01 $c8

    ld [hl+], a                                   ; $69ac: $22
    sbc d                                         ; $69ad: $9a
    call nc, $b14b                                ; $69ae: $d4 $4b $b1
    halt                                          ; $69b1: $76
    ret                                           ; $69b2: $c9


    rra                                           ; $69b3: $1f
    pop af                                        ; $69b4: $f1
    ld l, d                                       ; $69b5: $6a
    inc [hl]                                      ; $69b6: $34
    push bc                                       ; $69b7: $c5
    cp h                                          ; $69b8: $bc
    adc [hl]                                      ; $69b9: $8e
    sbc $4c                                       ; $69ba: $de $4c
    cp [hl]                                       ; $69bc: $be
    jr jr_055_6a1c                                ; $69bd: $18 $5d

    db $10                                        ; $69bf: $10
    ld bc, $6e29                                  ; $69c0: $01 $29 $6e
    ret                                           ; $69c3: $c9


    ld [hl-], a                                   ; $69c4: $32
    sbc [hl]                                      ; $69c5: $9e
    ld a, [c]                                     ; $69c6: $f2
    add sp, -$1a                                  ; $69c7: $e8 $e6
    jp $f11e                                      ; $69c9: $c3 $1e $f1


    ld l, d                                       ; $69cc: $6a
    push hl                                       ; $69cd: $e5
    ld a, a                                       ; $69ce: $7f
    ld a, b                                       ; $69cf: $78
    ld b, h                                       ; $69d0: $44
    rst $00                                       ; $69d1: $c7
    ld e, b                                       ; $69d2: $58
    cp e                                          ; $69d3: $bb
    ld hl, sp+$64                                 ; $69d4: $f8 $64
    adc c                                         ; $69d6: $89
    db $db                                        ; $69d7: $db
    sub d                                         ; $69d8: $92
    ccf                                           ; $69d9: $3f
    ld [c], a                                     ; $69da: $e2
    ld c, l                                       ; $69db: $4d
    sbc c                                         ; $69dc: $99
    ld b, a                                       ; $69dd: $47
    ld l, b                                       ; $69de: $68
    ld b, d                                       ; $69df: $42
    ld [hl], b                                    ; $69e0: $70
    ei                                            ; $69e1: $fb
    ld h, c                                       ; $69e2: $61
    add h                                         ; $69e3: $84
    dec hl                                        ; $69e4: $2b
    dec [hl]                                      ; $69e5: $35
    ld [bc], a                                    ; $69e6: $02
    cp l                                          ; $69e7: $bd
    sbc e                                         ; $69e8: $9b
    sub l                                         ; $69e9: $95
    db $db                                        ; $69ea: $db
    rrca                                          ; $69eb: $0f
    db $eb                                        ; $69ec: $eb
    add sp, $4d                                   ; $69ed: $e8 $4d
    cp e                                          ; $69ef: $bb
    jp $c62f                                      ; $69f0: $c3 $2f $c6


    ld d, a                                       ; $69f3: $57
    ld h, a                                       ; $69f4: $67
    db $ed                                        ; $69f5: $ed
    or a                                          ; $69f6: $b7
    and $f4                                       ; $69f7: $e6 $f4
    ld h, a                                       ; $69f9: $67
    or $e8                                        ; $69fa: $f6 $e8

jr_055_69fc:
    xor [hl]                                      ; $69fc: $ae
    ld a, [hl-]                                   ; $69fd: $3a
    db $ec                                        ; $69fe: $ec
    ret c                                         ; $69ff: $d8

    sbc $39                                       ; $6a00: $de $39
    cp a                                          ; $6a02: $bf
    jp hl                                         ; $6a03: $e9


    daa                                           ; $6a04: $27
    cp d                                          ; $6a05: $ba
    jr nz, jr_055_6a0a                            ; $6a06: $20 $02

    dec a                                         ; $6a08: $3d
    ret                                           ; $6a09: $c9


jr_055_6a0a:
    sbc e                                         ; $6a0a: $9b
    ld l, e                                       ; $6a0b: $6b
    ld c, d                                       ; $6a0c: $4a
    sbc a                                         ; $6a0d: $9f
    adc $9e                                       ; $6a0e: $ce $9e
    sbc c                                         ; $6a10: $99
    ld e, l                                       ; $6a11: $5d
    jp c, $96f5                                   ; $6a12: $da $f5 $96

    sub a                                         ; $6a15: $97
    db $f4                                        ; $6a16: $f4
    ld b, d                                       ; $6a17: $42
    rst $30                                       ; $6a18: $f7
    sub l                                         ; $6a19: $95
    rst $08                                       ; $6a1a: $cf
    sub e                                         ; $6a1b: $93

jr_055_6a1c:
    ldh [$d2], a                                  ; $6a1c: $e0 $d2
    adc [hl]                                      ; $6a1e: $8e
    inc l                                         ; $6a1f: $2c
    sbc a                                         ; $6a20: $9f
    daa                                           ; $6a21: $27
    pop bc                                        ; $6a22: $c1
    and l                                         ; $6a23: $a5
    dec e                                         ; $6a24: $1d
    ld e, c                                       ; $6a25: $59
    ld a, $4f                                     ; $6a26: $3e $4f
    add d                                         ; $6a28: $82
    dec hl                                        ; $6a29: $2b
    push af                                       ; $6a2a: $f5
    cp d                                          ; $6a2b: $ba
    rst $38                                       ; $6a2c: $ff
    add hl, sp                                    ; $6a2d: $39
    sbc $71                                       ; $6a2e: $de $71
    dec l                                         ; $6a30: $2d
    ld e, l                                       ; $6a31: $5d
    ld l, a                                       ; $6a32: $6f
    ld a, [hl-]                                   ; $6a33: $3a
    ld b, e                                       ; $6a34: $43
    inc b                                         ; $6a35: $04
    or a                                          ; $6a36: $b7
    ld d, e                                       ; $6a37: $53
    ld d, e                                       ; $6a38: $53
    add $fb                                       ; $6a39: $c6 $fb
    and c                                         ; $6a3b: $a1
    ld h, e                                       ; $6a3c: $63
    pop de                                        ; $6a3d: $d1
    xor [hl]                                      ; $6a3e: $ae
    or a                                          ; $6a3f: $b7
    cp h                                          ; $6a40: $bc
    inc h                                         ; $6a41: $24
    dec [hl]                                      ; $6a42: $35
    ld [bc], a                                    ; $6a43: $02
    db $dd                                        ; $6a44: $dd
    and $b9                                       ; $6a45: $e6 $b9
    sub [hl]                                      ; $6a47: $96

Jump_055_6a48:
    or [hl]                                       ; $6a48: $b6
    ld a, [hl+]                                   ; $6a49: $2a
    adc a                                         ; $6a4a: $8f
    ld e, d                                       ; $6a4b: $5a
    ld hl, sp-$4d                                 ; $6a4c: $f8 $b3
    ret z                                         ; $6a4e: $c8

    xor b                                         ; $6a4f: $a8
    pop af                                        ; $6a50: $f1
    db $db                                        ; $6a51: $db
    rst $00                                       ; $6a52: $c7
    sbc c                                         ; $6a53: $99
    pop hl                                        ; $6a54: $e1
    xor $b6                                       ; $6a55: $ee $b6
    ld c, h                                       ; $6a57: $4c
    sbc c                                         ; $6a58: $99
    sub a                                         ; $6a59: $97
    or $61                                        ; $6a5a: $f6 $61
    rst $28                                       ; $6a5c: $ef
    dec h                                         ; $6a5d: $25
    ld a, e                                       ; $6a5e: $7b
    adc l                                         ; $6a5f: $8d
    rst $20                                       ; $6a60: $e7
    ld a, [de]                                    ; $6a61: $1a
    or l                                          ; $6a62: $b5
    ret nc                                        ; $6a63: $d0

    ld sp, $1ec6                                  ; $6a64: $31 $c6 $1e
    ld a, a                                       ; $6a67: $7f

Call_055_6a68:
    add hl, bc                                    ; $6a68: $09
    xor c                                         ; $6a69: $a9
    rst $10                                       ; $6a6a: $d7
    db $ed                                        ; $6a6b: $ed
    ld a, [c]                                     ; $6a6c: $f2
    ld [c], a                                     ; $6a6d: $e2
    sub e                                         ; $6a6e: $93
    pop de                                        ; $6a6f: $d1
    call nc, $f194                                ; $6a70: $d4 $94 $f1
    ld a, [hl]                                    ; $6a73: $7e
    add sp, $58                                   ; $6a74: $e8 $58
    jr nz, jr_055_69fc                            ; $6a76: $20 $84

    ld b, h                                       ; $6a78: $44
    ld a, [c]                                     ; $6a79: $f2
    rst $08                                       ; $6a7a: $cf
    sub h                                         ; $6a7b: $94
    res 1, e                                      ; $6a7c: $cb $8b
    ld c, a                                       ; $6a7e: $4f
    ld b, [hl]                                    ; $6a7f: $46
    ld a, a                                       ; $6a80: $7f
    ld de, $194f                                  ; $6a81: $11 $4f $19
    ld b, e                                       ; $6a84: $43
    inc b                                         ; $6a85: $04
    ld [hl], a                                    ; $6a86: $77
    call nz, Call_000_1de8                        ; $6a87: $c4 $e8 $1d
    ld a, c                                       ; $6a8a: $79
    ld sp, $e32e                                  ; $6a8b: $31 $2e $e3
    dec a                                         ; $6a8e: $3d
    ld e, [hl]                                    ; $6a8f: $5e
    ld l, a                                       ; $6a90: $6f
    ld a, c                                       ; $6a91: $79
    ret                                           ; $6a92: $c9


    ld c, [hl]                                    ; $6a93: $4e
    ld a, h                                       ; $6a94: $7c
    ld l, l                                       ; $6a95: $6d
    inc [hl]                                      ; $6a96: $34
    or l                                          ; $6a97: $b5
    ld l, $e5                                     ; $6a98: $2e $e5
    and $10                                       ; $6a9a: $e6 $10
    cp h                                          ; $6a9c: $bc
    adc [hl]                                      ; $6a9d: $8e
    sbc $de                                       ; $6a9e: $de $de
    add sp, $5c                                   ; $6aa0: $e8 $5c
    jp Jump_055_700e                              ; $6aa2: $c3 $0e $70


    ld a, l                                       ; $6aa5: $7d
    inc e                                         ; $6aa6: $1c
    halt                                          ; $6aa7: $76
    ld [c], a                                     ; $6aa8: $e2
    ld l, e                                       ; $6aa9: $6b
    and e                                         ; $6aaa: $a3
    cp a                                          ; $6aab: $bf
    adc b                                         ; $6aac: $88
    rla                                           ; $6aad: $17
    ld e, [hl]                                    ; $6aae: $5e
    ld h, d                                       ; $6aaf: $62
    pop af                                        ; $6ab0: $f1
    ldh a, [rNR22]                                ; $6ab1: $f0 $17
    and a                                         ; $6ab3: $a7
    ld b, [hl]                                    ; $6ab4: $46
    db $dd                                        ; $6ab5: $dd
    ld a, [$5788]                                 ; $6ab6: $fa $88 $57
    or e                                          ; $6ab9: $b3
    adc h                                         ; $6aba: $8c
    ld [hl], b                                    ; $6abb: $70
    db $d3                                        ; $6abc: $d3
    xor $24                                       ; $6abd: $ee $24
    ld a, l                                       ; $6abf: $7d
    sub l                                         ; $6ac0: $95
    halt                                          ; $6ac1: $76
    sbc h                                         ; $6ac2: $9c
    pop af                                        ; $6ac3: $f1
    ld c, [hl]                                    ; $6ac4: $4e
    call z, $a3cd                                 ; $6ac5: $cc $cd $a3
    sub $cc                                       ; $6ac8: $d6 $cc
    sbc $87                                       ; $6aca: $de $87
    db $eb                                        ; $6acc: $eb
    db $e3                                        ; $6acd: $e3
    or b                                          ; $6ace: $b0
    ld [hl], h                                    ; $6acf: $74
    ei                                            ; $6ad0: $fb
    dec [hl]                                      ; $6ad1: $35
    jp nz, $1cb5                                  ; $6ad2: $c2 $b5 $1c

    ld b, [hl]                                    ; $6ad5: $46
    cp [hl]                                       ; $6ad6: $be
    ld [hl], e                                    ; $6ad7: $73
    ld e, h                                       ; $6ad8: $5c
    inc hl                                        ; $6ad9: $23
    xor c                                         ; $6ada: $a9
    dec a                                         ; $6adb: $3d
    ld e, $f1                                     ; $6adc: $1e $f1
    ld h, h                                       ; $6ade: $64
    ccf                                           ; $6adf: $3f
    ld b, [hl]                                    ; $6ae0: $46
    rst $28                                       ; $6ae1: $ef
    ldh a, [$8f]                                  ; $6ae2: $f0 $8f
    pop de                                        ; $6ae4: $d1
    or l                                          ; $6ae5: $b5
    sub a                                         ; $6ae6: $97
    inc c                                         ; $6ae7: $0c
    ld e, e                                       ; $6ae8: $5b
    dec c                                         ; $6ae9: $0d
    cp e                                          ; $6aea: $bb
    jr nz, @+$04                                  ; $6aeb: $20 $02

    dec a                                         ; $6aed: $3d
    jr jr_055_6b5b                                ; $6aee: $18 $6b

    and a                                         ; $6af0: $a7
    call z, $cd73                                 ; $6af1: $cc $73 $cd
    or d                                          ; $6af4: $b2
    or $48                                        ; $6af5: $f6 $48
    ld [hl], d                                    ; $6af7: $72
    add h                                         ; $6af8: $84
    dec bc                                        ; $6af9: $0b
    ld [hl+], a                                   ; $6afa: $22
    db $dd                                        ; $6afb: $dd
    ld a, [$5788]                                 ; $6afc: $fa $88 $57
    dec sp                                        ; $6aff: $3b
    ccf                                           ; $6b00: $3f
    ld b, [hl]                                    ; $6b01: $46
    rla                                           ; $6b02: $17
    rrca                                          ; $6b03: $0f
    ld l, e                                       ; $6b04: $6b
    cp h                                          ; $6b05: $bc
    and $f3                                       ; $6b06: $e6 $f3
    dec h                                         ; $6b08: $25
    adc h                                         ; $6b09: $8c
    ld a, [de]                                    ; $6b0a: $1a
    cp a                                          ; $6b0b: $bf
    db $fd                                        ; $6b0c: $fd
    ret nc                                        ; $6b0d: $d0

    or c                                          ; $6b0e: $b1
    adc h                                         ; $6b0f: $8c
    xor $aa                                       ; $6b10: $ee $aa
    add hl, hl                                    ; $6b12: $29
    ld a, l                                       ; $6b13: $7d
    xor d                                         ; $6b14: $aa
    ld e, [hl]                                    ; $6b15: $5e
    ld b, c                                       ; $6b16: $41
    inc b                                         ; $6b17: $04
    add b                                         ; $6b18: $80
    db $dd                                        ; $6b19: $dd
    ld c, [hl]                                    ; $6b1a: $4e
    ld a, h                                       ; $6b1b: $7c
    inc h                                         ; $6b1c: $24
    adc a                                         ; $6b1d: $8f
    call z, Call_055_5d8d                         ; $6b1e: $cc $8d $5d
    pop bc                                        ; $6b21: $c1
    rst $38                                       ; $6b22: $ff
    ldh a, [$74]                                  ; $6b23: $f0 $74
    and $d7                                       ; $6b25: $e6 $d7
    ld e, h                                       ; $6b27: $5c
    ld a, e                                       ; $6b28: $7b
    cp h                                          ; $6b29: $bc
    ld l, e                                       ; $6b2a: $6b
    rst $20                                       ; $6b2b: $e7
    sbc d                                         ; $6b2c: $9a
    ld a, c                                       ; $6b2d: $79
    ld c, l                                       ; $6b2e: $4d
    inc de                                        ; $6b2f: $13
    and e                                         ; $6b30: $a3
    ld sp, hl                                     ; $6b31: $f9
    or l                                          ; $6b32: $b5
    ld b, $11                                     ; $6b33: $06 $11
    cp l                                          ; $6b35: $bd
    db $eb                                        ; $6b36: $eb
    pop af                                        ; $6b37: $f1
    ccf                                           ; $6b38: $3f
    db $eb                                        ; $6b39: $eb
    add sp, -$33                                  ; $6b3a: $e8 $cd
    pop hl                                        ; $6b3c: $e1
    dec h                                         ; $6b3d: $25
    ld l, $b8                                     ; $6b3e: $2e $b8
    db $db                                        ; $6b40: $db
    bit 3, b                                      ; $6b41: $cb $58
    cp c                                          ; $6b43: $b9
    ld sp, hl                                     ; $6b44: $f9
    db $ec                                        ; $6b45: $ec
    cpl                                           ; $6b46: $2f
    rst $10                                       ; $6b47: $d7
    rrca                                          ; $6b48: $0f
    ld e, a                                       ; $6b49: $5f
    ld e, [hl]                                    ; $6b4a: $5e
    ei                                            ; $6b4b: $fb
    ld [hl+], a                                   ; $6b4c: $22
    db $e4                                        ; $6b4d: $e4
    adc e                                         ; $6b4e: $8b
    ld a, [c]                                     ; $6b4f: $f2
    dec h                                         ; $6b50: $25
    ret nz                                        ; $6b51: $c0

    db $dd                                        ; $6b52: $dd
    sbc [hl]                                      ; $6b53: $9e
    ld l, e                                       ; $6b54: $6b
    ld [hl], h                                    ; $6b55: $74
    ld [hl], e                                    ; $6b56: $73
    ld a, c                                       ; $6b57: $79
    jp z, Jump_055_5afc                           ; $6b58: $ca $fc $5a

jr_055_6b5b:
    rst $00                                       ; $6b5b: $c7
    and l                                         ; $6b5c: $a5
    db $dd                                        ; $6b5d: $dd
    ld hl, $6abb                                  ; $6b5e: $21 $bb $6a
    cp l                                          ; $6b61: $bd
    push hl                                       ; $6b62: $e5
    dec h                                         ; $6b63: $25
    db $10                                        ; $6b64: $10
    ld bc, $af3d                                  ; $6b65: $01 $3d $af
    and [hl]                                      ; $6b68: $a6
    db $f4                                        ; $6b69: $f4
    dec e                                         ; $6b6a: $1d
    inc sp                                        ; $6b6b: $33

jr_055_6b6c:
    xor a                                         ; $6b6c: $af
    or a                                          ; $6b6d: $b7
    cp h                                          ; $6b6e: $bc
    and h                                         ; $6b6f: $a4
    rst $10                                       ; $6b70: $d7
    ld a, d                                       ; $6b71: $7a
    sbc [hl]                                      ; $6b72: $9e
    db $ec                                        ; $6b73: $ec
    ld [hl], b                                    ; $6b74: $70
    rst $20                                       ; $6b75: $e7
    or l                                          ; $6b76: $b5
    ld [hl], l                                    ; $6b77: $75
    db $f4                                        ; $6b78: $f4
    ld h, [hl]                                    ; $6b79: $66
    or d                                          ; $6b7a: $b2
    ld a, h                                       ; $6b7b: $7c
    sbc [hl]                                      ; $6b7c: $9e
    inc b                                         ; $6b7d: $04
    adc e                                         ; $6b7e: $8b
    add a                                         ; $6b7f: $87
    cp a                                          ; $6b80: $bf
    jr jr_055_6ba5                                ; $6b81: $18 $22

    ld a, l                                       ; $6b83: $7d
    inc e                                         ; $6b84: $1c
    ld b, [hl]                                    ; $6b85: $46
    cp h                                          ; $6b86: $bc
    jp c, $d18f                                   ; $6b87: $da $8f $d1

    dec sp                                        ; $6b8a: $3b
    ld h, [hl]                                    ; $6b8b: $66
    ld e, $f1                                     ; $6b8c: $1e $f1
    jr nc, jr_055_6b6c                            ; $6b8e: $30 $dc

    db $dd                                        ; $6b90: $dd
    sub [hl]                                      ; $6b91: $96
    ld [hl], l                                    ; $6b92: $75
    inc e                                         ; $6b93: $1c

Call_055_6b94:
    sub [hl]                                      ; $6b94: $96
    sbc b                                         ; $6b95: $98
    rst $30                                       ; $6b96: $f7
    ld a, b                                       ; $6b97: $78
    call nz, $b593                                ; $6b98: $c4 $93 $b5
    rra                                           ; $6b9b: $1f
    ld e, l                                       ; $6b9c: $5d
    and e                                         ; $6b9d: $a3
    ld d, $3a                                     ; $6b9e: $16 $3a
    add $d8                                       ; $6ba0: $c6 $d8
    db $e3                                        ; $6ba2: $e3
    cpl                                           ; $6ba3: $2f
    ld h, c                                       ; $6ba4: $61

jr_055_6ba5:
    jp hl                                         ; $6ba5: $e9


    rla                                           ; $6ba6: $17
    rst $10                                       ; $6ba7: $d7
    xor b                                         ; $6ba8: $a8
    jp $ea9e                                      ; $6ba9: $c3 $9e $ea


    ld a, [hl+]                                   ; $6bac: $2a
    rla                                           ; $6bad: $17
    ld b, h                                       ; $6bae: $44
    ld a, l                                       ; $6baf: $7d
    inc e                                         ; $6bb0: $1c
    ld b, [hl]                                    ; $6bb1: $46
    cp h                                          ; $6bb2: $bc
    jp c, $d18f                                   ; $6bb3: $da $8f $d1

    dec sp                                        ; $6bb6: $3b
    ld h, [hl]                                    ; $6bb7: $66
    ld e, $f1                                     ; $6bb8: $1e $f1
    jr nc, jr_055_6c00                            ; $6bba: $30 $44

    cp l                                          ; $6bbc: $bd

jr_055_6bbd:
    push hl                                       ; $6bbd: $e5
    dec h                                         ; $6bbe: $25
    xor c                                         ; $6bbf: $a9
    rst $10                                       ; $6bc0: $d7
    ld l, l                                       ; $6bc1: $6d
    add hl, de                                    ; $6bc2: $19
    ld l, e                                       ; $6bc3: $6b
    ld c, b                                       ; $6bc4: $48
    set 0, d                                      ; $6bc5: $cb $c2
    xor a                                         ; $6bc7: $af
    dec e                                         ; $6bc8: $1d
    or d                                          ; $6bc9: $b2
    dec hl                                        ; $6bca: $2b
    cp d                                          ; $6bcb: $ba
    cp $14                                        ; $6bcc: $fe $14
    ld d, l                                       ; $6bce: $55
    db $ed                                        ; $6bcf: $ed
    add a                                         ; $6bd0: $87
    sub l                                         ; $6bd1: $95
    ld h, $b2                                     ; $6bd2: $26 $b2
    pop hl                                        ; $6bd4: $e1
    xor $b6                                       ; $6bd5: $ee $b6
    xor h                                         ; $6bd7: $ac
    db $e3                                        ; $6bd8: $e3
    jr nc, jr_055_6bbd                            ; $6bd9: $30 $e2

    push de                                       ; $6bdb: $d5
    ld a, [hl]                                    ; $6bdc: $7e
    adc h                                         ; $6bdd: $8c
    sbc $31                                       ; $6bde: $de $31
    di                                            ; $6be0: $f3
    adc b                                         ; $6be1: $88
    add a                                         ; $6be2: $87
    rst $30                                       ; $6be3: $f7
    and a                                         ; $6be4: $a7
    call z, $ff3b                                 ; $6be5: $cc $3b $ff
    or b                                          ; $6be8: $b0
    ld hl, $7d02                                  ; $6be9: $21 $02 $7d
    inc e                                         ; $6bec: $1c
    ld b, [hl]                                    ; $6bed: $46
    cp h                                          ; $6bee: $bc
    ld a, [de]                                    ; $6bef: $1a
    sub c                                         ; $6bf0: $91
    cp b                                          ; $6bf1: $b8
    and d                                         ; $6bf2: $a2
    ld h, l                                       ; $6bf3: $65
    rst $00                                       ; $6bf4: $c7
    call z, Call_000_1e23                         ; $6bf5: $cc $23 $1e
    sbc [hl]                                      ; $6bf8: $9e
    ld e, e                                       ; $6bf9: $5b
    ld [hl], e                                    ; $6bfa: $73
    adc l                                         ; $6bfb: $8d
    ld a, h                                       ; $6bfc: $7c
    ld sp, $465a                                  ; $6bfd: $31 $5a $46

jr_055_6c00:
    inc a                                         ; $6c00: $3c
    add hl, sp                                    ; $6c01: $39
    ld [hl], b                                    ; $6c02: $70
    ld a, l                                       ; $6c03: $7d
    inc e                                         ; $6c04: $1c
    ld b, [hl]                                    ; $6c05: $46
    ld d, b                                       ; $6c06: $50
    and h                                         ; $6c07: $a4
    ld l, e                                       ; $6c08: $6b
    jp z, Jump_000_1fbc                           ; $6c09: $ca $bc $1f

    and e                                         ; $6c0c: $a3
    sub a                                         ; $6c0d: $97
    cp h                                          ; $6c0e: $bc
    sbc d                                         ; $6c0f: $9a
    ld h, h                                       ; $6c10: $64
    cpl                                           ; $6c11: $2f
    ld h, h                                       ; $6c12: $64
    push bc                                       ; $6c13: $c5
    and e                                         ; $6c14: $a3
    halt                                          ; $6c15: $76
    ret z                                         ; $6c16: $c8

    ld a, a                                       ; $6c17: $7f
    cp h                                          ; $6c18: $bc
    ccf                                           ; $6c19: $3f
    ld h, l                                       ; $6c1a: $65
    add c                                         ; $6c1b: $81
    ld [$1c7d], sp                                ; $6c1c: $08 $7d $1c
    sub $f4                                       ; $6c1f: $d6 $f4
    ld h, d                                       ; $6c21: $62
    adc a                                         ; $6c22: $8f
    and h                                         ; $6c23: $a4
    ld b, [hl]                                    ; $6c24: $46
    inc h                                         ; $6c25: $24
    ld l, a                                       ; $6c26: $6f
    jp z, $e4bc                                   ; $6c27: $ca $bc $e4

    push de                                       ; $6c2a: $d5
    add sp, $5c                                   ; $6c2b: $e8 $5c
    or e                                          ; $6c2d: $b3
    adc h                                         ; $6c2e: $8c
    ld a, h                                       ; $6c2f: $7c
    ld sp, $c47a                                  ; $6c30: $31 $7a $c4
    sub e                                         ; $6c33: $93
    ld de, $294f                                  ; $6c34: $11 $4f $29
    ld b, e                                       ; $6c37: $43
    inc b                                         ; $6c38: $04
    add b                                         ; $6c39: $80
    rst $38                                       ; $6c3a: $ff
    ld c, $b5                                     ; $6c3b: $0e $b5
    rst $00                                       ; $6c3d: $c7
    inc hl                                        ; $6c3e: $23
    sbc [hl]                                      ; $6c3f: $9e
    inc l                                         ; $6c40: $2c
    inc [hl]                                      ; $6c41: $34
    xor e                                         ; $6c42: $ab
    add l                                         ; $6c43: $85
    adc [hl]                                      ; $6c44: $8e
    ld b, l                                       ; $6c45: $45
    ld [hl-], a                                   ; $6c46: $32
    sbc [hl]                                      ; $6c47: $9e
    or d                                          ; $6c48: $b2
    xor h                                         ; $6c49: $ac
    ld d, c                                       ; $6c4a: $51
    add a                                         ; $6c4b: $87
    dec a                                         ; $6c4c: $3d
    push de                                       ; $6c4d: $d5
    ld d, l                                       ; $6c4e: $55
    ld l, a                                       ; $6c4f: $6f
    ld hl, sp+$2b                                 ; $6c50: $f8 $2b
    sbc $c7                                       ; $6c52: $de $c7
    sbc c                                         ; $6c54: $99
    ld [hl], a                                    ; $6c55: $77
    ld l, a                                       ; $6c56: $6f
    ld d, e                                       ; $6c57: $53
    and l                                         ; $6c58: $a5
    adc e                                         ; $6c59: $8b
    rst $08                                       ; $6c5a: $cf
    ld l, e                                       ; $6c5b: $6b
    ld d, $88                                     ; $6c5c: $16 $88

Jump_055_6c5e:
    nop                                           ; $6c5e: $00
    ld a, l                                       ; $6c5f: $7d
    inc e                                         ; $6c60: $1c
    halt                                          ; $6c61: $76
    xor b                                         ; $6c62: $a8
    dec a                                         ; $6c63: $3d
    ld e, $f1                                     ; $6c64: $1e $f1
    ld h, h                                       ; $6c66: $64
    ld sp, $89e3                                  ; $6c67: $31 $e3 $89
    push de                                       ; $6c6a: $d5
    add sp, $7a                                   ; $6c6b: $e8 $7a
    dec sp                                        ; $6c6d: $3b
    dec e                                         ; $6c6e: $1d
    db $dd                                        ; $6c6f: $dd
    and d                                         ; $6c70: $a2
    xor h                                         ; $6c71: $ac
    dec e                                         ; $6c72: $1d
    or [hl]                                       ; $6c73: $b6
    ld c, h                                       ; $6c74: $4c
    cp l                                          ; $6c75: $bd
    and l                                         ; $6c76: $a5
    ld e, a                                       ; $6c77: $5f
    adc l                                         ; $6c78: $8d
    ld a, b                                       ; $6c79: $78
    or d                                          ; $6c7a: $b2
    rra                                           ; $6c7b: $1f
    and e                                         ; $6c7c: $a3
    ld b, a                                       ; $6c7d: $47
    ld d, d                                       ; $6c7e: $52
    sub e                                         ; $6c7f: $93
    ld l, h                                       ; $6c80: $6c
    adc b                                         ; $6c81: $88
    nop                                           ; $6c82: $00
    db $dd                                        ; $6c83: $dd
    xor [hl]                                      ; $6c84: $ae
    pop de                                        ; $6c85: $d1
    ccf                                           ; $6c86: $3f
    add $75                                       ; $6c87: $c6 $75
    inc e                                         ; $6c89: $1c
    and [hl]                                      ; $6c8a: $a6
    inc e                                         ; $6c8b: $1c
    ld d, d                                       ; $6c8c: $52
    xor a                                         ; $6c8d: $af
    ld e, e                                       ; $6c8e: $5b
    sbc a                                         ; $6c8f: $9f
    ld l, e                                       ; $6c90: $6b
    sub [hl]                                      ; $6c91: $96
    push af                                       ; $6c92: $f5
    xor [hl]                                      ; $6c93: $ae
    ld c, a                                       ; $6c94: $4f
    db $d3                                        ; $6c95: $d3
    ld e, a                                       ; $6c96: $5f
    ld [bc], a                                    ; $6c97: $02
    add h                                         ; $6c98: $84
    ldh a, [$50]                                  ; $6c99: $f0 $50
    ld d, e                                       ; $6c9b: $53
    and $a5                                       ; $6c9c: $e6 $a5
    db $db                                        ; $6c9e: $db
    xor a                                         ; $6c9f: $af
    sbc c                                         ; $6ca0: $99
    sub a                                         ; $6ca1: $97
    or $e9                                        ; $6ca2: $f6 $e9
    adc d                                         ; $6ca4: $8a
    inc hl                                        ; $6ca5: $23
    ld a, [c]                                     ; $6ca6: $f2
    add hl, de                                    ; $6ca7: $19
    ld e, c                                       ; $6ca8: $59
    sbc c                                         ; $6ca9: $99
    or $39                                        ; $6caa: $f6 $39
    cp c                                          ; $6cac: $b9
    halt                                          ; $6cad: $76
    scf                                           ; $6cae: $37
    add sp, $14                                   ; $6caf: $e8 $14
    pop de                                        ; $6cb1: $d1
    adc e                                         ; $6cb2: $8b
    add h                                         ; $6cb3: $84
    ld [$eefd], sp                                ; $6cb4: $08 $fd $ee
    ret z                                         ; $6cb7: $c8

    adc a                                         ; $6cb8: $8f
    sbc $71                                       ; $6cb9: $de $71
    ret c                                         ; $6cbb: $d8

    rla                                           ; $6cbc: $17
    add hl, de                                    ; $6cbd: $19
    ld c, c                                       ; $6cbe: $49
    adc l                                         ; $6cbf: $8d
    ld [hl], b                                    ; $6cc0: $70
    push de                                       ; $6cc1: $d5
    xor $79                                       ; $6cc2: $ee $79
    daa                                           ; $6cc4: $27
    sbc [hl]                                      ; $6cc5: $9e

jr_055_6cc6:
    or l                                          ; $6cc6: $b5
    rla                                           ; $6cc7: $17
    ld e, h                                       ; $6cc8: $5c
    ld [hl], e                                    ; $6cc9: $73
    call $d7b2                                    ; $6cca: $cd $b2 $d7
    sub d                                         ; $6ccd: $92
    ld e, h                                       ; $6cce: $5c
    db $ed                                        ; $6ccf: $ed
    add a                                         ; $6cd0: $87
    dec a                                         ; $6cd1: $3d
    sbc d                                         ; $6cd2: $9a
    xor $ab                                       ; $6cd3: $ee $ab
    xor h                                         ; $6cd5: $ac
    ld e, l                                       ; $6cd6: $5d
    rst $08                                       ; $6cd7: $cf
    xor e                                         ; $6cd8: $ab
    jp nc, Jump_000_0440                          ; $6cd9: $d2 $40 $04

    ld [hl], a                                    ; $6cdc: $77
    ld e, e                                       ; $6cdd: $5b
    ld b, [hl]                                    ; $6cde: $46
    ld d, [hl]                                    ; $6cdf: $56
    and [hl]                                      ; $6ce0: $a6
    ld a, l                                       ; $6ce1: $7d
    ld c, [hl]                                    ; $6ce2: $4e
    xor [hl]                                      ; $6ce3: $ae
    db $dd                                        ; $6ce4: $dd
    dec c                                         ; $6ce5: $0d
    ld a, [hl-]                                   ; $6ce6: $3a
    ld b, l                                       ; $6ce7: $45
    db $f4                                        ; $6ce8: $f4
    ld [hl+], a                                   ; $6ce9: $22
    ld hl, $0884                                  ; $6cea: $21 $84 $08
    ld [hl], a                                    ; $6ced: $77
    ld c, b                                       ; $6cee: $48
    or b                                          ; $6cef: $b0
    ld c, h                                       ; $6cf0: $4c
    rla                                           ; $6cf1: $17
    add hl, sp                                    ; $6cf2: $39
    ld d, c                                       ; $6cf3: $51
    db $d3                                        ; $6cf4: $d3
    sub h                                         ; $6cf5: $94
    ld a, h                                       ; $6cf6: $7c
    add hl, bc                                    ; $6cf7: $09
    xor [hl]                                      ; $6cf8: $ae
    call nc, $f94b                                ; $6cf9: $d4 $4b $f9
    jp z, $6532                                   ; $6cfc: $ca $32 $65

    sbc [hl]                                      ; $6cff: $9e
    ld l, e                                       ; $6d00: $6b
    dec e                                         ; $6d01: $1d
    cp l                                          ; $6d02: $bd
    ld l, c                                       ; $6d03: $69
    ld [hl], a                                    ; $6d04: $77
    ld [c], a                                     ; $6d05: $e2
    ld l, e                                       ; $6d06: $6b
    db $eb                                        ; $6d07: $eb
    jr c, jr_055_6d56                             ; $6d08: $38 $4c

    cp d                                          ; $6d0a: $ba
    inc [hl]                                      ; $6d0b: $34
    ld e, $76                                     ; $6d0c: $1e $76
    jr jr_055_6cc6                                ; $6d0e: $18 $b6

    ld a, [de]                                    ; $6d10: $1a
    or l                                          ; $6d11: $b5
    ldh a, [$d7]                                  ; $6d12: $f0 $d7
    cp e                                          ; $6d14: $bb
    ld a, $4d                                     ; $6d15: $3e $4d
    ld a, a                                       ; $6d17: $7f
    add hl, bc                                    ; $6d18: $09
    cp e                                          ; $6d19: $bb
    ld a, h                                       ; $6d1a: $7c
    ld hl, sp-$75                                 ; $6d1b: $f8 $8b
    ld a, [hl]                                    ; $6d1d: $7e
    ret z                                         ; $6d1e: $c8

    ld l, h                                       ; $6d1f: $6c
    add hl, bc                                    ; $6d20: $09
    ld [hl], b                                    ; $6d21: $70
    add hl, hl                                    ; $6d22: $29
    sub h                                         ; $6d23: $94
    halt                                          ; $6d24: $76
    cpl                                           ; $6d25: $2f
    reti                                          ; $6d26: $d9


    ld h, c                                       ; $6d27: $61
    xor e                                         ; $6d28: $ab
    ld h, c                                       ; $6d29: $61
    xor e                                         ; $6d2a: $ab
    add hl, hl                                    ; $6d2b: $29
    add a                                         ; $6d2c: $87
    call nc, $f708                                ; $6d2d: $d4 $08 $f7
    add [hl]                                      ; $6d30: $86
    ld de, $a9b9                                  ; $6d31: $11 $b9 $a9
    adc c                                         ; $6d34: $89
    rst $08                                       ; $6d35: $cf
    sbc e                                         ; $6d36: $9b
    ld a, [$45d3]                                 ; $6d37: $fa $d3 $45
    sbc $0e                                       ; $6d3a: $de $0e
    ld e, e                                       ; $6d3c: $5b
    cp c                                          ; $6d3d: $b9
    ld b, [hl]                                    ; $6d3e: $46
    inc h                                         ; $6d3f: $24
    cp c                                          ; $6d40: $b9
    and [hl]                                      ; $6d41: $a6
    inc l                                         ; $6d42: $2c
    ei                                            ; $6d43: $fb
    ld sp, $c47a                                  ; $6d44: $31 $7a $c4
    xor e                                         ; $6d47: $ab
    ld c, c                                       ; $6d48: $49
    or $a8                                        ; $6d49: $f6 $a8
    add l                                         ; $6d4b: $85
    ld c, [hl]                                    ; $6d4c: $4e
    ld d, a                                       ; $6d4d: $57
    add hl, sp                                    ; $6d4e: $39
    dec [hl]                                      ; $6d4f: $35
    ld [bc], a                                    ; $6d50: $02
    or a                                          ; $6d51: $b7
    ccf                                           ; $6d52: $3f
    pop hl                                        ; $6d53: $e1
    add hl, hl                                    ; $6d54: $29
    ld a, l                                       ; $6d55: $7d

jr_055_6d56:
    pop hl                                        ; $6d56: $e1
    dec h                                         ; $6d57: $25
    ld d, $4f                                     ; $6d58: $16 $4f
    ld a, l                                       ; $6d5a: $7d
    or c                                          ; $6d5b: $b1
    halt                                          ; $6d5c: $76
    dec a                                         ; $6d5d: $3d
    xor a                                         ; $6d5e: $af
    ld c, d                                       ; $6d5f: $4a
    db $d3                                        ; $6d60: $d3
    dec bc                                        ; $6d61: $0b
    ld bc, $f8f7                                  ; $6d62: $01 $f7 $f8
    ld b, e                                       ; $6d65: $43
    inc b                                         ; $6d66: $04
    add b                                         ; $6d67: $80
    db $dd                                        ; $6d68: $dd
    or h                                          ; $6d69: $b4
    ld d, e                                       ; $6d6a: $53

Jump_055_6d6b:
    ld l, a                                       ; $6d6b: $6f
    inc [hl]                                      ; $6d6c: $34
    ld d, l                                       ; $6d6d: $55
    ld d, e                                       ; $6d6e: $53
    ld a, [$afd2]                                 ; $6d6f: $fa $d2 $af
    inc a                                         ; $6d72: $3c
    or d                                          ; $6d73: $b2
    cp d                                          ; $6d74: $ba
    ld [de], a                                    ; $6d75: $12
    rst $28                                       ; $6d76: $ef
    add a                                         ; $6d77: $87
    adc [hl]                                      ; $6d78: $8e
    dec b                                         ; $6d79: $05
    xor [hl]                                      ; $6d7a: $ae
    adc a                                         ; $6d7b: $8f
    jp Jump_055_5228                              ; $6d7c: $c3 $28 $52


    ld e, h                                       ; $6d7f: $5c
    ei                                            ; $6d80: $fb
    ld sp, $f87a                                  ; $6d81: $31 $7a $f8
    adc e                                         ; $6d84: $8b
    ld b, a                                       ; $6d85: $47
    ld [hl], a                                    ; $6d86: $77
    push de                                       ; $6d87: $d5
    sub h                                         ; $6d88: $94
    cp [hl]                                       ; $6d89: $be
    ld hl, sp+$64                                 ; $6d8a: $f8 $64
    inc d                                         ; $6d8c: $14
    add hl, hl                                    ; $6d8d: $29
    sbc [hl]                                      ; $6d8e: $9e
    ld a, [$8862]                                 ; $6d8f: $fa $62 $88
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    or d                                          ; $6d94: $b2
    adc b                                         ; $6d95: $88
    ld h, $f5                                     ; $6d96: $26 $f5
    ld a, [$8c38]                                 ; $6d98: $fa $38 $8c
    ld a, b                                       ; $6d9b: $78
    dec [hl]                                      ; $6d9c: $35
    sbc d                                         ; $6d9d: $9a
    ld h, d                                       ; $6d9e: $62
    sbc $0f                                       ; $6d9f: $de $0f

jr_055_6da1:
    dec e                                         ; $6da1: $1d
    set 0, d                                      ; $6da2: $cb $c2
    ld c, e                                       ; $6da4: $4b
    inc l                                         ; $6da5: $2c
    ld e, $fe                                     ; $6da6: $1e $fe
    ld [c], a                                     ; $6da8: $e2
    call nc, $b708                                ; $6da9: $d4 $08 $b7
    or a                                          ; $6dac: $b7
    call z, $7a9c                                 ; $6dad: $cc $9c $7a
    db $dd                                        ; $6db0: $dd
    ld l, a                                       ; $6db1: $6f
    inc d                                         ; $6db2: $14
    add hl, hl                                    ; $6db3: $29
    xor [hl]                                      ; $6db4: $ae
    dec h                                         ; $6db5: $25
    ld a, a                                       ; $6db6: $7f
    jp z, $2218                                   ; $6db7: $ca $18 $22

    nop                                           ; $6dba: $00
    ld a, a                                       ; $6dbb: $7f
    ld e, e                                       ; $6dbc: $5b
    rst $08                                       ; $6dbd: $cf
    xor e                                         ; $6dbe: $ab
    jp nc, $ae8c                                  ; $6dbf: $d2 $8c $ae

    or a                                          ; $6dc2: $b7
    sbc $9a                                       ; $6dc3: $de $9a
    ld d, b                                       ; $6dc5: $50
    ld e, a                                       ; $6dc6: $5f
    ld b, c                                       ; $6dc7: $41
    inc b                                         ; $6dc8: $04
    or a                                          ; $6dc9: $b7
    ret                                           ; $6dca: $c9


    cp b                                          ; $6dcb: $b8
    ld c, h                                       ; $6dcc: $4c
    or a                                          ; $6dcd: $b7
    ld l, $0d                                     ; $6dce: $2e $0d
    dec sp                                        ; $6dd0: $3b
    push af                                       ; $6dd1: $f5
    cp d                                          ; $6dd2: $ba
    call $ae3b                                    ; $6dd3: $cd $3b $ae
    jp hl                                         ; $6dd6: $e9


    cp h                                          ; $6dd7: $bc
    sub e                                         ; $6dd8: $93
    pop af                                        ; $6dd9: $f1
    adc b                                         ; $6dda: $88
    daa                                           ; $6ddb: $27
    inc hl                                        ; $6ddc: $23

Jump_055_6ddd:
    ld e, [hl]                                    ; $6ddd: $5e
    db $ed                                        ; $6dde: $ed
    sub b                                         ; $6ddf: $90
    ccf                                           ; $6de0: $3f
    ld b, [hl]                                    ; $6de1: $46
    di                                            ; $6de2: $f3
    sub h                                         ; $6de3: $94
    ld h, l                                       ; $6de4: $65
    rst $00                                       ; $6de5: $c7
    dec l                                         ; $6de6: $2d
    add c                                         ; $6de7: $81
    ld [$5177], sp                                ; $6de8: $08 $77 $51
    db $ec                                        ; $6deb: $ec
    ld e, d                                       ; $6dec: $5a
    ei                                            ; $6ded: $fb
    call z, Call_000_193b                         ; $6dee: $cc $3b $19
    rst $08                                       ; $6df1: $cf
    ld [hl-], a                                   ; $6df2: $32
    dec a                                         ; $6df3: $3d
    inc [hl]                                      ; $6df4: $34
    ld l, e                                       ; $6df5: $6b
    ld [hl], a                                    ; $6df6: $77
    inc [hl]                                      ; $6df7: $34
    ld [c], a                                     ; $6df8: $e2
    or e                                          ; $6df9: $b3
    adc [hl]                                      ; $6dfa: $8e
    inc bc                                        ; $6dfb: $03
    ld b, h                                       ; $6dfc: $44
    rla                                           ; $6dfd: $17
    sbc l                                         ; $6dfe: $9d
    adc $72                                       ; $6dff: $ce $72
    sbc b                                         ; $6e01: $98
    ld c, [hl]                                    ; $6e02: $4e
    db $d3                                        ; $6e03: $d3
    jp c, $d459                                   ; $6e04: $da $59 $d4

    sbc e                                         ; $6e07: $9b
    ld h, l                                       ; $6e08: $65
    push de                                       ; $6e09: $d5
    and l                                         ; $6e0a: $a5
    jp nc, $cba5                                  ; $6e0b: $d2 $a5 $cb

    add d                                         ; $6e0e: $82
    push hl                                       ; $6e0f: $e5
    cp b                                          ; $6e10: $b8
    ldh [$fa], a                                  ; $6e11: $e0 $fa
    jr c, jr_055_6da1                             ; $6e13: $38 $8c

    ld a, b                                       ; $6e15: $78
    db $ec                                        ; $6e16: $ec
    ld e, d                                       ; $6e17: $5a
    ld [hl], l                                    ; $6e18: $75
    xor c                                         ; $6e19: $a9
    ld [hl], h                                    ; $6e1a: $74
    jp hl                                         ; $6e1b: $e9


    jp nz, $0110                                  ; $6e1c: $c2 $10 $01

    dec a                                         ; $6e1f: $3d
    xor [hl]                                      ; $6e20: $ae
    cp c                                          ; $6e21: $b9
    ld h, [hl]                                    ; $6e22: $66
    ld e, [hl]                                    ; $6e23: $5e
    call z, $10c5                                 ; $6e24: $cc $c5 $10
    ld bc, $d7b7                                  ; $6e27: $01 $b7 $d7
    ld e, e                                       ; $6e2a: $5b
    sub [hl]                                      ; $6e2b: $96
    add sp, $36                                   ; $6e2c: $e8 $36
    jr nz, jr_055_6e6f                            ; $6e2e: $20 $3f

    ld [hl], d                                    ; $6e30: $72
    xor [hl]                                      ; $6e31: $ae
    push hl                                       ; $6e32: $e5
    jr nc, jr_055_6eb3                            ; $6e33: $30 $7e

    jp nz, Jump_055_7dde                          ; $6e35: $c2 $de $7d

    ld h, [hl]                                    ; $6e38: $66
    ld e, l                                       ; $6e39: $5d
    cp $83                                        ; $6e3a: $fe $83
    ld [$c9b7], sp                                ; $6e3c: $08 $b7 $c9
    or b                                          ; $6e3f: $b0
    ld b, [hl]                                    ; $6e40: $46
    ld a, b                                       ; $6e41: $78
    sub a                                         ; $6e42: $97
    call z, $e23c                                 ; $6e43: $cc $3c $e2
    or l                                          ; $6e46: $b5
    add h                                         ; $6e47: $84
    ld b, a                                       ; $6e48: $47
    ld [$52a2], a                                 ; $6e49: $ea $a2 $52
    xor a                                         ; $6e4c: $af
    db $db                                        ; $6e4d: $db
    cp h                                          ; $6e4e: $bc
    db $e4                                        ; $6e4f: $e4
    push de                                       ; $6e50: $d5
    ld c, $f9                                     ; $6e51: $0e $f9
    ld b, h                                       ; $6e53: $44
    cp l                                          ; $6e54: $bd
    or h                                          ; $6e55: $b4
    dec de                                        ; $6e56: $1b
    ld l, e                                       ; $6e57: $6b
    rst $00                                       ; $6e58: $c7
    cp a                                          ; $6e59: $bf
    ld c, l                                       ; $6e5a: $4d
    add hl, de                                    ; $6e5b: $19
    adc a                                         ; $6e5c: $8f
    ld e, d                                       ; $6e5d: $5a
    jp nc, $1957                                  ; $6e5e: $d2 $57 $19

    ld [hl+], a                                   ; $6e61: $22
    add hl, hl                                    ; $6e62: $29
    sub $ce                                       ; $6e63: $d6 $ce
    or d                                          ; $6e65: $b2
    sub e                                         ; $6e66: $93
    db $f4                                        ; $6e67: $f4
    ld d, l                                       ; $6e68: $55
    inc hl                                        ; $6e69: $23
    ld e, a                                       ; $6e6a: $5f
    adc h                                         ; $6e6b: $8c
    sbc $e9                                       ; $6e6c: $de $e9
    db $e4                                        ; $6e6e: $e4

jr_055_6e6f:
    sbc b                                         ; $6e6f: $98
    db $db                                        ; $6e70: $db
    ld d, e                                       ; $6e71: $53
    and [hl]                                      ; $6e72: $a6
    dec hl                                        ; $6e73: $2b
    sbc a                                         ; $6e74: $9f
    add sp, -$7e                                  ; $6e75: $e8 $82
    cp e                                          ; $6e77: $bb
    cp l                                          ; $6e78: $bd
    sbc $7a                                       ; $6e79: $de $7a
    ld e, h                                       ; $6e7b: $5c
    ld hl, sp-$75                                 ; $6e7c: $f8 $8b
    or l                                          ; $6e7e: $b5
    dec sp                                        ; $6e7f: $3b
    ld c, h                                       ; $6e80: $4c
    push de                                       ; $6e81: $d5
    sub h                                         ; $6e82: $94
    ld a, c                                       ; $6e83: $79
    inc h                                         ; $6e84: $24
    or l                                          ; $6e85: $b5
    or $48                                        ; $6e86: $f6 $48
    jp nc, Jump_055_7702                          ; $6e88: $d2 $02 $77

    ld l, a                                       ; $6e8b: $6f
    sbc b                                         ; $6e8c: $98
    ld [hl-], a                                   ; $6e8d: $32
    rst $08                                       ; $6e8e: $cf
    or l                                          ; $6e8f: $b5
    ld e, e                                       ; $6e90: $5b
    ld e, h                                       ; $6e91: $5c
    ld e, l                                       ; $6e92: $5d
    sbc b                                         ; $6e93: $98
    dec a                                         ; $6e94: $3d
    jp nz, $b8f1                                  ; $6e95: $c2 $f1 $b8

    sub [hl]                                      ; $6e98: $96
    jp $72b8                                      ; $6e99: $c3 $b8 $72


    ld l, e                                       ; $6e9c: $6b
    ret c                                         ; $6e9d: $d8

    ld [hl+], a                                   ; $6e9e: $22
    sub a                                         ; $6e9f: $97
    call nz, $bc5c                                ; $6ea0: $c4 $5c $bc
    ccf                                           ; $6ea3: $3f
    ld h, l                                       ; $6ea4: $65
    pop de                                        ; $6ea5: $d1
    ld l, $87                                     ; $6ea6: $2e $87
    sbc c                                         ; $6ea8: $99
    ld a, c                                       ; $6ea9: $79
    cpl                                           ; $6eaa: $2f
    sbc c                                         ; $6eab: $99
    ld [hl-], a                                   ; $6eac: $32

jr_055_6ead:
    sbc [hl]                                      ; $6ead: $9e
    ld l, e                                       ; $6eae: $6b
    cpl                                           ; $6eaf: $2f
    ld e, c                                       ; $6eb0: $59
    adc a                                         ; $6eb1: $8f
    adc [hl]                                      ; $6eb2: $8e

jr_055_6eb3:
    sbc e                                         ; $6eb3: $9b
    adc a                                         ; $6eb4: $8f
    add sp, $55                                   ; $6eb5: $e8 $55
    xor c                                         ; $6eb7: $a9
    ld de, $e6dd                                  ; $6eb8: $11 $dd $e6
    sbc l                                         ; $6ebb: $9d
    ld hl, sp-$26                                 ; $6ebc: $f8 $da
    sub d                                         ; $6ebe: $92
    ld a, a                                       ; $6ebf: $7f
    ld c, $2f                                     ; $6ec0: $0e $2f
    jp hl                                         ; $6ec2: $e9


    xor e                                         ; $6ec3: $ab
    inc a                                         ; $6ec4: $3c
    di                                            ; $6ec5: $f3
    sub d                                         ; $6ec6: $92
    rra                                           ; $6ec7: $1f
    ld sp, hl                                     ; $6ec8: $f9
    add a                                         ; $6ec9: $87
    push bc                                       ; $6eca: $c5
    ld e, h                                       ; $6ecb: $5c
    xor h                                         ; $6ecc: $ac
    sbc l                                         ; $6ecd: $9d
    ld [hl-], a                                   ; $6ece: $32
    ld b, e                                       ; $6ecf: $43
    inc b                                         ; $6ed0: $04
    nop                                           ; $6ed1: $00
    or d                                          ; $6ed2: $b2
    adc b                                         ; $6ed3: $88
    ld b, [hl]                                    ; $6ed4: $46
    dec sp                                        ; $6ed5: $3b
    and d                                         ; $6ed6: $a2
    xor e                                         ; $6ed7: $ab
    ld b, [hl]                                    ; $6ed8: $46
    ld d, d                                       ; $6ed9: $52
    ld d, e                                       ; $6eda: $53
    ld h, [hl]                                    ; $6edb: $66
    or $0d                                        ; $6edc: $f6 $0d
    db $eb                                        ; $6ede: $eb
    rra                                           ; $6edf: $1f
    add b                                         ; $6ee0: $80
    inc hl                                        ; $6ee1: $23
    rst $20                                       ; $6ee2: $e7
    ld a, [de]                                    ; $6ee3: $1a
    ld c, c                                       ; $6ee4: $49
    xor l                                         ; $6ee5: $ad
    rst $30                                       ; $6ee6: $f7
    ld l, e                                       ; $6ee7: $6b
    sbc h                                         ; $6ee8: $9c
    db $e4                                        ; $6ee9: $e4
    ld h, d                                       ; $6eea: $62
    jr c, jr_055_6ead                             ; $6eeb: $38 $c0

    ld d, $d9                                     ; $6eed: $16 $d9
    ld c, e                                       ; $6eef: $4b
    halt                                          ; $6ef0: $76
    rst $08                                       ; $6ef1: $cf
    adc a                                         ; $6ef2: $8f
    cp c                                          ; $6ef3: $b9
    cp l                                          ; $6ef4: $bd
    or e                                          ; $6ef5: $b3
    db $db                                        ; $6ef6: $db
    db $db                                        ; $6ef7: $db
    jp $da6e                                      ; $6ef8: $c3 $6e $da


    sbc l                                         ; $6efb: $9d
    ld hl, sp+$48                                 ; $6efc: $f8 $48
    sub a                                         ; $6efe: $97
    ld h, l                                       ; $6eff: $65
    cpl                                           ; $6f00: $2f
    ld e, c                                       ; $6f01: $59
    or a                                          ; $6f02: $b7
    sub a                                         ; $6f03: $97
    db $fc                                        ; $6f04: $fc
    db $e3                                        ; $6f05: $e3
    or e                                          ; $6f06: $b3
    jp $02fe                                      ; $6f07: $c3 $fe $02


    ei                                            ; $6f0a: $fb
    ld e, a                                       ; $6f0b: $5f
    ld a, [bc]                                    ; $6f0c: $0a
    dec [hl]                                      ; $6f0d: $35
    ld h, l                                       ; $6f0e: $65
    sbc [hl]                                      ; $6f0f: $9e
    ld l, e                                       ; $6f10: $6b
    xor a                                         ; $6f11: $af
    pop af                                        ; $6f12: $f1
    and c                                         ; $6f13: $a1
    halt                                          ; $6f14: $76
    rst $08                                       ; $6f15: $cf
    adc a                                         ; $6f16: $8f
    cp c                                          ; $6f17: $b9
    cp l                                          ; $6f18: $bd
    or e                                          ; $6f19: $b3
    db $db                                        ; $6f1a: $db
    db $db                                        ; $6f1b: $db
    jp $a96e                                      ; $6f1c: $c3 $6e $a9


    ld de, $86f7                                  ; $6f1f: $11 $f7 $86
    ld [hl], l                                    ; $6f22: $75
    ld a, e                                       ; $6f23: $7b
    ret                                           ; $6f24: $c9


    ccf                                           ; $6f25: $3f
    ld a, $3b                                     ; $6f26: $3e $3b
    db $ec                                        ; $6f28: $ec
    cpl                                           ; $6f29: $2f
    db $10                                        ; $6f2a: $10
    jp nz, $e4f8                                  ; $6f2b: $c2 $f8 $e4

    call nz, $a78e                                ; $6f2e: $c4 $8e $a7
    call z, Call_055_4d73                         ; $6f31: $cc $73 $4d
    sbc c                                         ; $6f34: $99
    and a                                         ; $6f35: $a7
    inc l                                         ; $6f36: $2c
    inc hl                                        ; $6f37: $23
    ld [hl], h                                    ; $6f38: $74
    ld d, c                                       ; $6f39: $51
    sub [hl]                                      ; $6f3a: $96
    dec h                                         ; $6f3b: $25
    add hl, sp                                    ; $6f3c: $39
    or d                                          ; $6f3d: $b2
    dec bc                                        ; $6f3e: $0b
    ld [hl+], a                                   ; $6f3f: $22
    add b                                         ; $6f40: $80
    rst $38                                       ; $6f41: $ff
    jr nc, jr_055_6f79                            ; $6f42: $30 $35

    or d                                          ; $6f44: $b2
    cp d                                          ; $6f45: $ba
    ld [de], a                                    ; $6f46: $12
    adc a                                         ; $6f47: $8f
    ld a, [de]                                    ; $6f48: $1a
    db $fd                                        ; $6f49: $fd
    ld b, l                                       ; $6f4a: $45
    inc a                                         ; $6f4b: $3c
    sbc l                                         ; $6f4c: $9d
    add a                                         ; $6f4d: $87
    ld e, l                                       ; $6f4e: $5d
    db $10                                        ; $6f4f: $10
    ld b, d                                       ; $6f50: $42
    ld l, h                                       ; $6f51: $6c
    add hl, de                                    ; $6f52: $19
    db $dd                                        ; $6f53: $dd
    ld d, l                                       ; $6f54: $55
    add a                                         ; $6f55: $87
    ld b, a                                       ; $6f56: $47
    sub c                                         ; $6f57: $91
    ld [c], a                                     ; $6f58: $e2
    ld e, d                                       ; $6f59: $5a
    ld a, [c]                                     ; $6f5a: $f2
    rla                                           ; $6f5b: $17
    ld e, [hl]                                    ; $6f5c: $5e
    ld h, d                                       ; $6f5d: $62
    ld sp, $0044                                  ; $6f5e: $31 $44 $00
    rst $18                                       ; $6f61: $df
    sub h                                         ; $6f62: $94
    ld h, l                                       ; $6f63: $65
    jp z, $ba35                                   ; $6f64: $ca $35 $ba

    xor e                                         ; $6f67: $ab
    ld c, $43                                     ; $6f68: $0e $43
    inc b                                         ; $6f6a: $04
    dec a                                         ; $6f6b: $3d
    ret                                           ; $6f6c: $c9


    ccf                                           ; $6f6d: $3f
    ld d, e                                       ; $6f6e: $53
    and $b9                                       ; $6f6f: $e6 $b9
    and [hl]                                      ; $6f71: $a6
    call z, Call_000_38eb                         ; $6f72: $cc $eb $38
    adc h                                         ; $6f75: $8c
    dec hl                                        ; $6f76: $2b
    rst $10                                       ; $6f77: $d7
    sub h                                         ; $6f78: $94

jr_055_6f79:
    ld a, c                                       ; $6f79: $79
    ld l, $ed                                     ; $6f7a: $2e $ed
    ld e, h                                       ; $6f7c: $5c
    ld d, e                                       ; $6f7d: $53
    and $49                                       ; $6f7e: $e6 $49
    or $12                                        ; $6f80: $f6 $12
    scf                                           ; $6f82: $37
    push af                                       ; $6f83: $f5
    jp $c74e                                      ; $6f84: $c3 $4e $c7


    ld c, l                                       ; $6f87: $4d
    ld e, c                                       ; $6f88: $59
    ld a, b                                       ; $6f89: $78
    add hl, sp                                    ; $6f8a: $39
    inc l                                         ; $6f8b: $2c
    ld [hl], c                                    ; $6f8c: $71
    ld d, e                                       ; $6f8d: $53
    ccf                                           ; $6f8e: $3f
    inc l                                         ; $6f8f: $2c
    ld [hl], c                                    ; $6f90: $71
    xor c                                         ; $6f91: $a9
    ld c, a                                       ; $6f92: $4f
    db $eb                                        ; $6f93: $eb
    xor l                                         ; $6f94: $ad
    ld sp, $3d44                                  ; $6f95: $31 $44 $3d
    ret                                           ; $6f98: $c9


    sbc e                                         ; $6f99: $9b
    ld l, e                                       ; $6f9a: $6b
    jp z, $f53c                                   ; $6f9b: $ca $3c $f5

    ld a, d                                       ; $6f9e: $7a
    ld hl, $c9b7                                  ; $6f9f: $21 $b7 $c9
    db $f4                                        ; $6fa2: $f4
    and e                                         ; $6fa3: $a3
    sub c                                         ; $6fa4: $91
    or $03                                        ; $6fa5: $f6 $03
    ld h, c                                       ; $6fa7: $61
    ld a, $f1                                     ; $6fa8: $3e $f1
    sub c                                         ; $6faa: $91
    and h                                         ; $6fab: $a4
    pop hl                                        ; $6fac: $e1
    ld a, [$cc38]                                 ; $6fad: $fa $38 $cc
    or l                                          ; $6fb0: $b5
    di                                            ; $6fb1: $f3
    ld h, e                                       ; $6fb2: $63
    ld [hl], h                                    ; $6fb3: $74
    adc l                                         ; $6fb4: $8d
    and h                                         ; $6fb5: $a4
    or $78                                        ; $6fb6: $f6 $78
    jp z, $d73c                                   ; $6fb8: $ca $3c $d7

    sub h                                         ; $6fbb: $94
    ld a, c                                       ; $6fbc: $79
    sub a                                         ; $6fbd: $97
    adc h                                         ; $6fbe: $8c
    xor h                                         ; $6fbf: $ac
    xor [hl]                                      ; $6fc0: $ae
    ld h, h                                       ; $6fc1: $64
    jp z, $9232                                   ; $6fc2: $ca $32 $92

    sbc d                                         ; $6fc5: $9a
    ld [hl], d                                    ; $6fc6: $72
    add b                                         ; $6fc7: $80
    ld [$e6dd], sp                                ; $6fc8: $08 $dd $e6
    cp c                                          ; $6fcb: $b9
    and [hl]                                      ; $6fcc: $a6
    call z, Call_055_77a9                         ; $6fcd: $cc $a9 $77
    rst $20                                       ; $6fd0: $e7
    adc a                                         ; $6fd1: $8f
    ld [hl], c                                    ; $6fd2: $71
    ld h, d                                       ; $6fd3: $62
    sub l                                         ; $6fd4: $95
    ld a, [de]                                    ; $6fd5: $1a
    ld bc, $1c7d                                  ; $6fd6: $01 $7d $1c
    and $9a                                       ; $6fd9: $e6 $9a
    ld a, [hl]                                    ; $6fdb: $7e
    inc [hl]                                      ; $6fdc: $34
    jp nc, Jump_055_487e                          ; $6fdd: $d2 $7e $48

    cp l                                          ; $6fe0: $bd
    inc d                                         ; $6fe1: $14
    ld l, e                                       ; $6fe2: $6b

jr_055_6fe3:
    ld b, a                                       ; $6fe3: $47
    cp b                                          ; $6fe4: $b8
    and $9a                                       ; $6fe5: $e6 $9a
    ld h, l                                       ; $6fe7: $65
    db $ed                                        ; $6fe8: $ed
    sub c                                         ; $6fe9: $91
    db $e4                                        ; $6fea: $e4
    ld [hl], d                                    ; $6feb: $72
    jr c, jr_055_7002                             ; $6fec: $38 $14

    ld b, h                                       ; $6fee: $44
    db $dd                                        ; $6fef: $dd
    ld e, a                                       ; $6ff0: $5f
    ld b, [hl]                                    ; $6ff1: $46
    cp a                                          ; $6ff2: $bf
    sbc d                                         ; $6ff3: $9a
    sbc c                                         ; $6ff4: $99
    ld e, l                                       ; $6ff5: $5d
    dec l                                         ; $6ff6: $2d
    di                                            ; $6ff7: $f3
    sub h                                         ; $6ff8: $94
    ld b, l                                       ; $6ff9: $45
    cp h                                          ; $6ffa: $bc
    ccf                                           ; $6ffb: $3f
    db $fc                                        ; $6ffc: $fc
    ld h, l                                       ; $6ffd: $65
    ret                                           ; $6ffe: $c9


    dec hl                                        ; $6fff: $2b
    or e                                          ; $7000: $b3
    inc hl                                        ; $7001: $23

jr_055_7002:
    adc a                                         ; $7002: $8f
    xor $aa                                       ; $7003: $ee $aa
    ld de, $a64f                                  ; $7005: $11 $4f $a6
    cp d                                          ; $7008: $ba
    sub h                                         ; $7009: $94
    pop hl                                        ; $700a: $e1
    nop                                           ; $700b: $00
    ld a, [hl]                                    ; $700c: $7e
    push af                                       ; $700d: $f5

Jump_055_700e:
    and $da                                       ; $700e: $e6 $da
    rla                                           ; $7010: $17
    pop af                                        ; $7011: $f1
    ld hl, sp-$49                                 ; $7012: $f8 $b7
    ld d, c                                       ; $7014: $51
    dec bc                                        ; $7015: $0b
    ld a, a                                       ; $7016: $7f
    jp z, $fe32                                   ; $7017: $ca $32 $fe

    dec l                                         ; $701a: $2d
    db $fd                                        ; $701b: $fd
    and d                                         ; $701c: $a2
    rst $00                                       ; $701d: $c7
    cp a                                          ; $701e: $bf
    ld c, l                                       ; $701f: $4d
    add hl, sp                                    ; $7020: $39
    ret nz                                        ; $7021: $c0

    db $dd                                        ; $7022: $dd
    ld d, d                                       ; $7023: $52
    ld a, d                                       ; $7024: $7a
    sbc h                                         ; $7025: $9c
    or d                                          ; $7026: $b2
    inc c                                         ; $7027: $0c
    ld e, e                                       ; $7028: $5b
    dec l                                         ; $7029: $2d
    ld h, e                                       ; $702a: $63
    ld b, d                                       ; $702b: $42
    add a                                         ; $702c: $87
    cp e                                          ; $702d: $bb
    db $db                                        ; $702e: $db
    ld l, d                                       ; $702f: $6a
    ld e, l                                       ; $7030: $5d
    ld [hl], d                                    ; $7031: $72
    and d                                         ; $7032: $a2
    sub a                                         ; $7033: $97
    pop af                                        ; $7034: $f1
    inc l                                         ; $7035: $2c
    xor e                                         ; $7036: $ab
    rra                                           ; $7037: $1f
    ld sp, hl                                     ; $7038: $f9
    add a                                         ; $7039: $87
    add l                                         ; $703a: $85
    xor h                                         ; $703b: $ac
    sub $d1                                       ; $703c: $d6 $d1
    dec de                                        ; $703e: $1b
    ld b, h                                       ; $703f: $44
    or a                                          ; $7040: $b7
    ret                                           ; $7041: $c9


    ld c, $25                                     ; $7042: $0e $25
    ld [hl-], a                                   ; $7044: $32
    bit 1, [hl]                                   ; $7045: $cb $4e
    call nc, $5ffb                                ; $7047: $d4 $fb $5f
    rst $00                                       ; $704a: $c7
    ld h, c                                       ; $704b: $61
    pop hl                                        ; $704c: $e1
    inc sp                                        ; $704d: $33
    adc a                                         ; $704e: $8f
    ld c, b                                       ; $704f: $48
    sbc $4e                                       ; $7050: $de $4e
    add $23                                       ; $7052: $c6 $23
    call c, $8f0e                                 ; $7054: $dc $0e $8f
    adc $95                                       ; $7057: $ce $95
    ld a, [de]                                    ; $7059: $1a
    ld bc, $5b77                                  ; $705a: $01 $77 $5b
    jr nz, jr_055_6fe3                            ; $705d: $20 $84

    ld b, h                                       ; $705f: $44
    ld h, d                                       ; $7060: $62
    cp h                                          ; $7061: $bc
    db $e4                                        ; $7062: $e4
    push de                                       ; $7063: $d5
    sub h                                         ; $7064: $94
    ld a, c                                       ; $7065: $79
    daa                                           ; $7066: $27
    db $e3                                        ; $7067: $e3
    dec e                                         ; $7068: $1d
    adc e                                         ; $7069: $8b
    ld h, d                                       ; $706a: $62
    rrca                                          ; $706b: $0f
    dec sp                                        ; $706c: $3b
    ld c, h                                       ; $706d: $4c
    ld e, c                                       ; $706e: $59
    ld a, d                                       ; $706f: $7a
    ld hl, $1c7d                                  ; $7070: $21 $7d $1c
    add $95                                       ; $7073: $c6 $95
    ld l, e                                       ; $7075: $6b
    dec e                                         ; $7076: $1d
    add a                                         ; $7077: $87
    sub c                                         ; $7078: $91
    push de                                       ; $7079: $d5
    sub l                                         ; $707a: $95
    cp b                                          ; $707b: $b8
    ld d, $1f                                     ; $707c: $16 $1f
    ld c, c                                       ; $707e: $49
    ld e, d                                       ; $707f: $5a
    ld d, d                                       ; $7080: $52
    inc hl                                        ; $7081: $23
    rst $30                                       ; $7082: $f7
    ld d, b                                       ; $7083: $50
    adc e                                         ; $7084: $8b
    ld c, a                                       ; $7085: $4f
    sub $71                                       ; $7086: $d6 $71
    ld e, b                                       ; $7088: $58
    and b                                         ; $7089: $a0
    or $77                                        ; $708a: $f6 $77
    inc e                                         ; $708c: $1c
    ld c, a                                       ; $708d: $4f
    daa                                           ; $708e: $27
    adc e                                         ; $708f: $8b
    ld h, l                                       ; $7090: $65
    ld [hl], h                                    ; $7091: $74
    xor [hl]                                      ; $7092: $ae
    db $dd                                        ; $7093: $dd
    ld [c], a                                     ; $7094: $e2
    ld d, b                                       ; $7095: $50
    sub [hl]                                      ; $7096: $96
    ld h, e                                       ; $7097: $63
    sbc $53                                       ; $7098: $de $53
    pop hl                                        ; $709a: $e1
    ld c, c                                       ; $709b: $49
    sbc b                                         ; $709c: $98
    adc $96                                       ; $709d: $ce $96
    dec a                                         ; $709f: $3d
    sbc [hl]                                      ; $70a0: $9e
    ld h, h                                       ; $70a1: $64
    res 1, [hl]                                   ; $70a2: $cb $8e
    ld l, e                                       ; $70a4: $6b
    jp z, Jump_000_1a9c                           ; $70a5: $ca $9c $1a

    ld bc, $893d                                  ; $70a8: $01 $3d $89
    pop af                                        ; $70ab: $f1
    ld e, h                                       ; $70ac: $5c
    ld d, e                                       ; $70ad: $53
    and $9d                                       ; $70ae: $e6 $9d
    adc h                                         ; $70b0: $8c
    rst $20                                       ; $70b1: $e7
    sbc d                                         ; $70b2: $9a
    ld [hl], d                                    ; $70b3: $72
    db $ed                                        ; $70b4: $ed
    adc e                                         ; $70b5: $8b
    cp b                                          ; $70b6: $b8
    rla                                           ; $70b7: $17
    ld [bc], a                                    ; $70b8: $02
    rst $30                                       ; $70b9: $f7
    ld d, b                                       ; $70ba: $50
    inc hl                                        ; $70bb: $23
    ld e, [hl]                                    ; $70bc: $5e
    xor l                                         ; $70bd: $ad
    db $e3                                        ; $70be: $e3
    jr nc, @-$19                                  ; $70bf: $30 $e5

    sub b                                         ; $70c1: $90
    ld a, [de]                                    ; $70c2: $1a
    ld bc, $af3d                                  ; $70c3: $01 $3d $af
    ld c, d                                       ; $70c6: $4a
    or e                                          ; $70c7: $b3
    ei                                            ; $70c8: $fb
    ld [hl-], a                                   ; $70c9: $32
    or e                                          ; $70ca: $b3
    dec hl                                        ; $70cb: $2b
    push af                                       ; $70cc: $f5
    nop                                           ; $70cd: $00
    or c                                          ; $70ce: $b1
    sub a                                         ; $70cf: $97
    pop af                                        ; $70d0: $f1
    db $e4                                        ; $70d1: $e4
    ld sp, $ddbf                                  ; $70d2: $31 $bf $dd
    db $db                                        ; $70d5: $db
    ld a, e                                       ; $70d6: $7b
    ld a, a                                       ; $70d7: $7f
    rst $00                                       ; $70d8: $c7
    pop af                                        ; $70d9: $f1
    ld [hl], h                                    ; $70da: $74
    or d                                          ; $70db: $b2
    ld e, b                                       ; $70dc: $58
    ld b, [hl]                                    ; $70dd: $46
    rst $20                                       ; $70de: $e7
    jp c, Jump_000_0e2d                           ; $70df: $da $2d $0e

    ld h, l                                       ; $70e2: $65
    add hl, sp                                    ; $70e3: $39
    and $3d                                       ; $70e4: $e6 $3d
    dec d                                         ; $70e6: $15
    sbc [hl]                                      ; $70e7: $9e
    add h                                         ; $70e8: $84
    call nc, $fcbb                                ; $70e9: $d4 $bb $fc
    or d                                          ; $70ec: $b2
    pop hl                                        ; $70ed: $e1
    cpl                                           ; $70ee: $2f
    ld a, [$b321]                                 ; $70ef: $fa $21 $b3
    dec h                                         ; $70f2: $25
    db $ec                                        ; $70f3: $ec
    cpl                                           ; $70f4: $2f
    sbc l                                         ; $70f5: $9d
    add hl, de                                    ; $70f6: $19
    ld c, $e0                                     ; $70f7: $0e $e0
    ld l, a                                       ; $70f9: $6f
    jp hl                                         ; $70fa: $e9


    rla                                           ; $70fb: $17
    dec a                                         ; $70fc: $3d
    cp $6d                                        ; $70fd: $fe $6d
    daa                                           ; $70ff: $27
    daa                                           ; $7100: $27
    ld a, $af                                     ; $7101: $3e $af
    ld e, c                                       ; $7103: $59
    add [hl]                                      ; $7104: $86
    xor l                                         ; $7105: $ad
    and [hl]                                      ; $7106: $a6
    inc e                                         ; $7107: $1c
    jr nz, @+$04                                  ; $7108: $20 $02

    db $dd                                        ; $710a: $dd
    ld d, $f1                                     ; $710b: $16 $f1
    jp nz, Jump_055_6093                          ; $710d: $c2 $93 $60

    reti                                          ; $7110: $d9


    adc c                                         ; $7111: $89
    xor a                                         ; $7112: $af
    xor l                                         ; $7113: $ad
    db $e3                                        ; $7114: $e3
    or b                                          ; $7115: $b0
    and h                                         ; $7116: $a4
    xor a                                         ; $7117: $af
    ld a, [c]                                     ; $7118: $f2
    add sp, $5c                                   ; $7119: $e8 $5c
    rst $20                                       ; $711b: $e7
    ld b, a                                       ; $711c: $47
    cp $c1                                        ; $711d: $fe $c1
    ld h, l                                       ; $711f: $65
    adc b                                         ; $7120: $88
    nop                                           ; $7121: $00
    dec a                                         ; $7122: $3d
    ret                                           ; $7123: $c9


    sbc e                                         ; $7124: $9b
    ld l, e                                       ; $7125: $6b
    jp z, $93bc                                   ; $7126: $ca $bc $93

    pop af                                        ; $7129: $f1
    add sp, $5c                                   ; $712a: $e8 $5c
    ld c, $54                                     ; $712c: $0e $54
    push af                                       ; $712e: $f5
    ld b, d                                       ; $712f: $42
    db $dd                                        ; $7130: $dd
    xor [hl]                                      ; $7131: $ae
    pop de                                        ; $7132: $d1
    ccf                                           ; $7133: $3f
    add $75                                       ; $7134: $c6 $75
    inc e                                         ; $7136: $1c
    and [hl]                                      ; $7137: $a6
    inc e                                         ; $7138: $1c
    ld d, d                                       ; $7139: $52
    inc hl                                        ; $713a: $23
    add hl, hl                                    ; $713b: $29
    xor [hl]                                      ; $713c: $ae
    pop hl                                        ; $713d: $e1
    daa                                           ; $713e: $27

Jump_055_713f:
    ld d, e                                       ; $713f: $53

jr_055_7140:
    ld h, [hl]                                    ; $7140: $66
    db $ed                                        ; $7141: $ed
    ld a, d                                       ; $7142: $7a
    ld e, [hl]                                    ; $7143: $5e
    sub l                                         ; $7144: $95
    ld h, [hl]                                    ; $7145: $66
    rst $30                                       ; $7146: $f7
    ld h, l                                       ; $7147: $65
    ld h, [hl]                                    ; $7148: $66
    ld d, a                                       ; $7149: $57
    ld [$71f5], a                                 ; $714a: $ea $f5 $71
    jr jr_055_7140                                ; $714d: $18 $f1

    ld l, d                                       ; $714f: $6a
    call nz, $dac3                                ; $7150: $c4 $c3 $da
    pop hl                                        ; $7153: $e1
    and a                                         ; $7154: $a7

Call_055_7155:
    ld e, $de                                     ; $7155: $1e $de
    sbc l                                         ; $7157: $9d
    ld a, [c]                                     ; $7158: $f2
    ld c, c                                       ; $7159: $49
    ld b, e                                       ; $715a: $43
    inc b                                         ; $715b: $04
    add b                                         ; $715c: $80
    ret c                                         ; $715d: $d8

    bit 7, b                                      ; $715e: $cb $78
    ld a, [c]                                     ; $7160: $f2
    sbc b                                         ; $7161: $98
    rst $18                                       ; $7162: $df
    xor $ed                                       ; $7163: $ee $ed
    cp l                                          ; $7165: $bd
    cp a                                          ; $7166: $bf
    db $e3                                        ; $7167: $e3
    ld a, b                                       ; $7168: $78
    ld a, [hl-]                                   ; $7169: $3a
    ld e, c                                       ; $716a: $59
    inc l                                         ; $716b: $2c
    and e                                         ; $716c: $a3
    ld [hl], e                                    ; $716d: $73
    db $ed                                        ; $716e: $ed
    ld d, $87                                     ; $716f: $16 $87
    or d                                          ; $7171: $b2
    inc e                                         ; $7172: $1c
    di                                            ; $7173: $f3
    sbc [hl]                                      ; $7174: $9e
    ld a, [bc]                                    ; $7175: $0a
    ld c, a                                       ; $7176: $4f
    add d                                         ; $7177: $82
    halt                                          ; $7178: $76
    add hl, de                                    ; $7179: $19
    xor a                                         ; $717a: $af
    db $e3                                        ; $717b: $e3
    or b                                          ; $717c: $b0
    rra                                           ; $717d: $1f
    and e                                         ; $717e: $a3
    rst $00                                       ; $717f: $c7
    xor a                                         ; $7180: $af
    ld b, [hl]                                    ; $7181: $46
    ei                                            ; $7182: $fb
    scf                                           ; $7183: $37
    cp b                                          ; $7184: $b8
    sra a                                         ; $7185: $cb $2f
    dec de                                        ; $7187: $1b
    cp $a2                                        ; $7188: $fe $a2
    rra                                           ; $718a: $1f
    ld [hl-], a                                   ; $718b: $32
    ld e, e                                       ; $718c: $5b
    jp nz, $d2fe                                  ; $718d: $c2 $fe $d2

    sbc c                                         ; $7190: $99
    pop hl                                        ; $7191: $e1
    nop                                           ; $7192: $00
    cp $96                                        ; $7193: $fe $96
    ld a, [hl]                                    ; $7195: $7e
    pop de                                        ; $7196: $d1
    db $e3                                        ; $7197: $e3
    rst $18                                       ; $7198: $df
    halt                                          ; $7199: $76
    ld [hl], d                                    ; $719a: $72
    ld [c], a                                     ; $719b: $e2
    di                                            ; $719c: $f3
    sbc d                                         ; $719d: $9a
    ld h, l                                       ; $719e: $65
    ret c                                         ; $719f: $d8

    ld l, d                                       ; $71a0: $6a
    jp z, $2201                                   ; $71a1: $ca $01 $22

    ld a, l                                       ; $71a4: $7d
    inc e                                         ; $71a5: $1c
    sub [hl]                                      ; $71a6: $96
    sbc b                                         ; $71a7: $98
    and a                                         ; $71a8: $a7
    call z, Call_055_4d73                         ; $71a9: $cc $73 $4d
    or d                                          ; $71ac: $b2
    ld h, l                                       ; $71ad: $65
    add h                                         ; $71ae: $84
    dec bc                                        ; $71af: $0b
    ld b, d                                       ; $71b0: $42
    ret c                                         ; $71b1: $d8

    ld [hl], c                                    ; $71b2: $71
    ld e, b                                       ; $71b3: $58
    ld a, h                                       ; $71b4: $7c
    ld [hl-], a                                   ; $71b5: $32
    and d                                         ; $71b6: $a2
    xor e                                         ; $71b7: $ab
    inc a                                         ; $71b8: $3c
    ld h, l                                       ; $71b9: $65
    inc c                                         ; $71ba: $0c
    ld de, $6677                                  ; $71bb: $11 $77 $66
    inc a                                         ; $71be: $3c
    cp d                                          ; $71bf: $ba
    ld e, $d6                                     ; $71c0: $1e $d6
    ld l, $66                                     ; $71c2: $2e $66
    inc a                                         ; $71c4: $3c
    cp d                                          ; $71c5: $ba
    ld e, $d6                                     ; $71c6: $1e $d6
    adc [hl]                                      ; $71c8: $8e
    ld c, b                                       ; $71c9: $48
    ld [hl], d                                    ; $71ca: $72
    ld c, l                                       ; $71cb: $4d
    jp hl                                         ; $71cc: $e9


    or e                                          ; $71cd: $b3
    ret z                                         ; $71ce: $c8

    ld e, h                                       ; $71cf: $5c
    db $10                                        ; $71d0: $10
    ld bc, $aedd                                  ; $71d1: $01 $dd $ae
    ld de, $96af                                  ; $71d4: $11 $af $96
    db $fc                                        ; $71d7: $fc
    add hl, hl                                    ; $71d8: $29
    add a                                         ; $71d9: $87
    call nc, $8008                                ; $71da: $d4 $08 $80
    ret c                                         ; $71dd: $d8

    bit 4, c                                      ; $71de: $cb $61
    add c                                         ; $71e0: $81
    xor d                                         ; $71e1: $aa
    ret                                           ; $71e2: $c9


    ld h, e                                       ; $71e3: $63
    ld [hl], $eb                                  ; $71e4: $36 $eb
    and l                                         ; $71e6: $a5
    dec e                                         ; $71e7: $1d
    add c                                         ; $71e8: $81
    or l                                          ; $71e9: $b5
    cp e                                          ; $71ea: $bb
    cpl                                           ; $71eb: $2f
    inc sp                                        ; $71ec: $33
    cp e                                          ; $71ed: $bb
    ld a, d                                       ; $71ee: $7a
    xor l                                         ; $71ef: $ad
    db $db                                        ; $71f0: $db
    cp h                                          ; $71f1: $bc
    sbc b                                         ; $71f2: $98
    rrca                                          ; $71f3: $0f
    cp e                                          ; $71f4: $bb

Jump_055_71f5:
    and [hl]                                      ; $71f5: $a6
    inc e                                         ; $71f6: $1c
    halt                                          ; $71f7: $76
    push af                                       ; $71f8: $f5
    ldh a, [rNR22]                                ; $71f9: $f0 $17
    db $fd                                        ; $71fb: $fd
    sub b                                         ; $71fc: $90
    reti                                          ; $71fd: $d9


    ld [de], a                                    ; $71fe: $12
    ldh [$ee], a                                  ; $71ff: $e0 $ee
    dec c                                         ; $7201: $0d
    inc de                                        ; $7202: $13
    ld c, d                                       ; $7203: $4a
    dec sp                                        ; $7204: $3b
    db $fc                                        ; $7205: $fc
    ld [$f674], a                                 ; $7206: $ea $74 $f6
    ld [hl], a                                    ; $7209: $77
    inc l                                         ; $720a: $2c
    ld hl, $0235                                  ; $720b: $21 $35 $02
    or a                                          ; $720e: $b7
    push de                                       ; $720f: $d5
    adc b                                         ; $7210: $88
    daa                                           ; $7211: $27
    and e                                         ; $7212: $a3
    bit 3, b                                      ; $7213: $cb $58
    cp c                                          ; $7215: $b9
    ld sp, hl                                     ; $7216: $f9
    db $ec                                        ; $7217: $ec
    ld c, a                                       ; $7218: $4f
    ld e, c                                       ; $7219: $59
    call nz, $bf33                                ; $721a: $c4 $33 $bf
    db $d3                                        ; $721d: $d3
    or c                                          ; $721e: $b1
    db $f4                                        ; $721f: $f4
    ld e, d                                       ; $7220: $5a
    rra                                           ; $7221: $1f
    add a                                         ; $7222: $87
    push bc                                       ; $7223: $c5
    daa                                           ; $7224: $27
    ei                                            ; $7225: $fb
    ld sp, $c77a                                  ; $7226: $31 $7a $c7
    sub e                                         ; $7229: $93
    ld l, h                                       ; $722a: $6c
    add c                                         ; $722b: $81
    ld [$fadd], sp                                ; $722c: $08 $dd $fa
    ld [c], a                                     ; $722f: $e2
    sub e                                         ; $7230: $93
    db $fd                                        ; $7231: $fd
    jr jr_055_7271                                ; $7232: $18 $3d

    ld e, l                                       ; $7234: $5d
    inc h                                         ; $7235: $24
    ld d, b                                       ; $7236: $50
    jp $a30e                                      ; $7237: $c3 $0e $a3


    ld [hl], e                                    ; $723a: $73
    db $ed                                        ; $723b: $ed
    or l                                          ; $723c: $b5
    add $5f                                       ; $723d: $c6 $5f
    ld b, c                                       ; $723f: $41
    inc b                                         ; $7240: $04
    ld a, l                                       ; $7241: $7d
    inc e                                         ; $7242: $1c
    halt                                          ; $7243: $76
    ld [c], a                                     ; $7244: $e2
    ld l, e                                       ; $7245: $6b
    sub e                                         ; $7246: $93
    inc e                                         ; $7247: $1c
    ld b, a                                       ; $7248: $47
    ld a, a                                       ; $7249: $7f
    ld de, $394f                                  ; $724a: $11 $4f $39
    and h                                         ; $724d: $a4
    ld b, [hl]                                    ; $724e: $46
    db $dd                                        ; $724f: $dd
    and $05                                       ; $7250: $e6 $05
    xor d                                         ; $7252: $aa
    sub [hl]                                      ; $7253: $96
    or $e1                                        ; $7254: $f6 $e1
    pop de                                        ; $7256: $d1
    cp c                                          ; $7257: $b9
    and [hl]                                      ; $7258: $a6
    inc e                                         ; $7259: $1c
    ld b, [hl]                                    ; $725a: $46
    inc h                                         ; $725b: $24
    rst $38                                       ; $725c: $ff
    ld c, h                                       ; $725d: $4c
    jp hl                                         ; $725e: $e9


    res 1, c                                      ; $725f: $cb $89
    dec hl                                        ; $7261: $2b
    db $fc                                        ; $7262: $fc
    sbc d                                         ; $7263: $9a
    ld [hl], d                                    ; $7264: $72
    ret nc                                        ; $7265: $d0

    adc [hl]                                      ; $7266: $8e
    ld c, b                                       ; $7267: $48
    adc h                                         ; $7268: $8c
    and a                                         ; $7269: $a7
    db $f4                                        ; $726a: $f4
    ld e, c                                       ; $726b: $59
    ld h, h                                       ; $726c: $64
    ld l, $88                                     ; $726d: $2e $88
    nop                                           ; $726f: $00
    ld a, l                                       ; $7270: $7d

jr_055_7271:
    inc e                                         ; $7271: $1c
    halt                                          ; $7272: $76
    xor b                                         ; $7273: $a8
    ld a, l                                       ; $7274: $7d
    add hl, bc                                    ; $7275: $09
    ld d, $ed                                     ; $7276: $16 $ed
    ret z                                         ; $7278: $c8

    jp z, $cfb4                                   ; $7279: $ca $b4 $cf

    ret                                           ; $727c: $c9


    dec b                                         ; $727d: $05
    ld de, $c477                                  ; $727e: $11 $77 $c4
    add sp, $75                                   ; $7281: $e8 $75
    inc e                                         ; $7283: $1c
    ld b, [hl]                                    ; $7284: $46
    cp b                                          ; $7285: $b8
    dec [hl]                                      ; $7286: $35
    rla                                           ; $7287: $17
    call c, $96dd                                 ; $7288: $dc $dd $96
    ld c, c                                       ; $728b: $49
    or [hl]                                       ; $728c: $b6
    db $ec                                        ; $728d: $ec
    ret z                                         ; $728e: $c8

    adc a                                         ; $728f: $8f
    xor [hl]                                      ; $7290: $ae
    dec e                                         ; $7291: $1d
    add a                                         ; $7292: $87
    sub l                                         ; $7293: $95
    ld l, $8a                                     ; $7294: $2e $8a
    ld b, a                                       ; $7296: $47
    cp b                                          ; $7297: $b8
    or h                                          ; $7298: $b4
    bit 4, c                                      ; $7299: $cb $61
    dec e                                         ; $729b: $1d
    add a                                         ; $729c: $87
    dec h                                         ; $729d: $25
    cp a                                          ; $729e: $bf
    dec l                                         ; $729f: $2d
    ld sp, hl                                     ; $72a0: $f9
    db $ec                                        ; $72a1: $ec
    ld de, $3189                                  ; $72a2: $11 $89 $31
    ld b, h                                       ; $72a5: $44
    db $dd                                        ; $72a6: $dd
    ld e, $f1                                     ; $72a7: $1e $f1
    ld l, d                                       ; $72a9: $6a
    add a                                         ; $72aa: $87
    dec l                                         ; $72ab: $2d
    add c                                         ; $72ac: $81
    rst $30                                       ; $72ad: $f7
    sub d                                         ; $72ae: $92
    add hl, hl                                    ; $72af: $29
    adc e                                         ; $72b0: $8b
    ld a, b                                       ; $72b1: $78
    pop hl                                        ; $72b2: $e1
    ld c, c                                       ; $72b3: $49
    or b                                          ; $72b4: $b0
    ld b, b                                       ; $72b5: $40
    ld [$0e3b], sp                                ; $72b6: $08 $3b $0e
    db $e3                                        ; $72b9: $e3
    jp z, Jump_000_1fb5                           ; $72ba: $ca $b5 $1f

    and e                                         ; $72bd: $a3
    rst $10                                       ; $72be: $d7
    ld [hl], c                                    ; $72bf: $71
    ld e, b                                       ; $72c0: $58
    call z, $bb18                                 ; $72c1: $cc $18 $bb
    ld b, [hl]                                    ; $72c4: $46
    rst $20                                       ; $72c5: $e7
    ld c, d                                       ; $72c6: $4a
    rst $38                                       ; $72c7: $ff
    add hl, hl                                    ; $72c8: $29
    ld h, e                                       ; $72c9: $63
    adc b                                         ; $72ca: $88
    nop                                           ; $72cb: $00
    dec a                                         ; $72cc: $3d
    ld a, l                                       ; $72cd: $7d
    push af                                       ; $72ce: $f5
    ld e, d                                       ; $72cf: $5a
    or a                                          ; $72d0: $b7
    ld a, c                                       ; $72d1: $79
    ret                                           ; $72d2: $c9


    xor e                                         ; $72d3: $ab
    ld c, c                                       ; $72d4: $49
    or $4e                                        ; $72d5: $f6 $4e
    add $3b                                       ; $72d7: $c6 $3b
    ld d, c                                       ; $72d9: $51
    rst $00                                       ; $72da: $c7
    and h                                         ; $72db: $a4
    ld a, c                                       ; $72dc: $79
    jp hl                                         ; $72dd: $e9


    ld e, h                                       ; $72de: $5c
    db $fc                                        ; $72df: $fc
    add a                                         ; $72e0: $87
    dec e                                         ; $72e1: $1d
    jr nz, @+$04                                  ; $72e2: $20 $02

    ld a, l                                       ; $72e4: $7d
    sbc $a1                                       ; $72e5: $de $a1
    or h                                          ; $72e7: $b4
    db $eb                                        ; $72e8: $eb
    ld a, c                                       ; $72e9: $79
    ld d, l                                       ; $72ea: $55
    sbc d                                         ; $72eb: $9a
    db $dd                                        ; $72ec: $dd
    sub a                                         ; $72ed: $97
    sbc c                                         ; $72ee: $99
    ld e, l                                       ; $72ef: $5d
    ld [hl], b                                    ; $72f0: $70
    db $dd                                        ; $72f1: $dd
    ld a, [$5788]                                 ; $72f2: $fa $88 $57
    and e                                         ; $72f5: $a3
    add hl, hl                                    ; $72f6: $29
    and $a9                                       ; $72f7: $e6 $a9
    cpl                                           ; $72f9: $2f
    and e                                         ; $72fa: $a3
    ld e, a                                       ; $72fb: $5f
    sbc l                                         ; $72fc: $9d
    push bc                                       ; $72fd: $c5
    ld b, a                                       ; $72fe: $47
    sub d                                         ; $72ff: $92
    sub $2e                                       ; $7300: $d6 $2e
    add a                                         ; $7302: $87
    add hl, bc                                    ; $7303: $09
    or l                                          ; $7304: $b5
    ld [hl], h                                    ; $7305: $74
    jp hl                                         ; $7306: $e9


    pop de                                        ; $7307: $d1
    dec [hl]                                      ; $7308: $35
    and l                                         ; $7309: $a5
    ld c, a                                       ; $730a: $4f
    ld e, c                                       ; $730b: $59
    or $62                                        ; $730c: $f6 $62
    call nc, $f1eb                                ; $730e: $d4 $eb $f1
    ld c, [hl]                                    ; $7311: $4e

jr_055_7312:
    ei                                            ; $7312: $fb
    ld [hl], c                                    ; $7313: $71
    call nz, $8593                                ; $7314: $c4 $93 $85
    ld c, [hl]                                    ; $7317: $4e
    ld l, $65                                     ; $7318: $2e $65
    cp b                                          ; $731a: $b8
    xor e                                         ; $731b: $ab
    add a                                         ; $731c: $87
    cp a                                          ; $731d: $bf
    add sp, -$79                                  ; $731e: $e8 $87
    call z, $b096                                 ; $7320: $cc $96 $b0
    cp a                                          ; $7323: $bf
    ld [hl], h                                    ; $7324: $74
    and $d1                                       ; $7325: $e6 $d1
    cp c                                          ; $7327: $b9
    ld b, [hl]                                    ; $7328: $46
    dec l                                         ; $7329: $2d
    jp hl                                         ; $732a: $e9


    xor e                                         ; $732b: $ab
    inc a                                         ; $732c: $3c
    sbc l                                         ; $732d: $9d
    cp l                                          ; $732e: $bd
    adc h                                         ; $732f: $8c
    daa                                           ; $7330: $27
    adc a                                         ; $7331: $8f
    ld sp, hl                                     ; $7332: $f9
    ld b, c                                       ; $7333: $41
    inc b                                         ; $7334: $04
    or a                                          ; $7335: $b7
    pop af                                        ; $7336: $f1
    jp nz, $d8c3                                  ; $7337: $c2 $c3 $d8

    adc l                                         ; $733a: $8d
    ld [hl], a                                    ; $733b: $77
    ld c, b                                       ; $733c: $48
    rst $38                                       ; $733d: $ff
    ld b, $d7                                     ; $733e: $06 $d7
    sub e                                         ; $7340: $93
    db $e4                                        ; $7341: $e4
    and d                                         ; $7342: $a2
    ld [hl], e                                    ; $7343: $73

Call_055_7344:
    db $ed                                        ; $7344: $ed
    jr nc, @+$57                                  ; $7345: $30 $55

    ld d, e                                       ; $7347: $53
    and $fd                                       ; $7348: $e6 $fd
    add hl, hl                                    ; $734a: $29
    inc sp                                        ; $734b: $33
    ld a, e                                       ; $734c: $7b
    sbc h                                         ; $734d: $9c
    ld sp, $62f6                                  ; $734e: $31 $f6 $62
    ld a, e                                       ; $7351: $7b
    rst $20                                       ; $7352: $e7
    cp b                                          ; $7353: $b8
    ld [hl-], a                                   ; $7354: $32
    add $e6                                       ; $7355: $c6 $e6
    ld e, [hl]                                    ; $7357: $5e
    ld [$3420], sp                                ; $7358: $08 $20 $34
    ld h, d                                       ; $735b: $62
    pop af                                        ; $735c: $f1
    ld [$f88b], sp                                ; $735d: $08 $8b $f8
    xor h                                         ; $7360: $ac
    db $fd                                        ; $7361: $fd
    jr z, jr_055_7312                             ; $7362: $28 $ae

    pop hl                                        ; $7364: $e1
    cpl                                           ; $7365: $2f
    add [hl]                                      ; $7366: $86
    db $10                                        ; $7367: $10
    jp nz, Jump_055_461c                          ; $7368: $c2 $1c $46

    ld d, b                                       ; $736b: $50
    ld h, l                                       ; $736c: $65
    ld e, $f1                                     ; $736d: $1e $f1
    db $e4                                        ; $736f: $e4
    call z, $93b5                                 ; $7370: $cc $b5 $93
    pop af                                        ; $7373: $f1
    ldh a, [$67]                                  ; $7374: $f0 $67
    add [hl]                                      ; $7376: $86
    cp e                                          ; $7377: $bb
    dec sp                                        ; $7378: $3b
    ld d, a                                       ; $7379: $57
    xor a                                         ; $737a: $af
    db $dd                                        ; $737b: $dd
    cp $aa                                        ; $737c: $fe $aa
    rla                                           ; $737e: $17
    ld [bc], a                                    ; $737f: $02
    add hl, hl                                    ; $7380: $29
    call nc, $3e94                                ; $7381: $d4 $94 $3e
    ld [c], a                                     ; $7384: $e2
    push de                                       ; $7385: $d5
    ld [hl-], a                                   ; $7386: $32
    ld c, c                                       ; $7387: $49
    xor d                                         ; $7388: $aa
    rla                                           ; $7389: $17
    call z, $f58b                                 ; $738a: $cc $8b $f5
    ld l, b                                       ; $738d: $68
    or [hl]                                       ; $738e: $b6
    adc h                                         ; $738f: $8c
    ld a, a                                       ; $7390: $7f
    db $db                                        ; $7391: $db
    ld hl, $9bfd                                  ; $7392: $21 $fd $9b
    ld a, c                                       ; $7395: $79
    ld [hl], a                                    ; $7396: $77
    ld [hl], a                                    ; $7397: $77
    sub l                                         ; $7398: $95
    add d                                         ; $7399: $82
    ld [$1c00], sp                                ; $739a: $08 $00 $1c
    add hl, sp                                    ; $739d: $39
    rst $10                                       ; $739e: $d7
    ld a, d                                       ; $739f: $7a
    ld [hl], h                                    ; $73a0: $74
    call c, Call_055_447c                         ; $73a1: $dc $7c $44
    xor a                                         ; $73a4: $af
    ld c, d                                       ; $73a5: $4a
    cp l                                          ; $73a6: $bd
    sbc [hl]                                      ; $73a7: $9e
    inc h                                         ; $73a8: $24
    rst $10                                       ; $73a9: $d7
    ld h, d                                       ; $73aa: $62
    add $53                                       ; $73ab: $c6 $53
    ld a, [$7ae8]                                 ; $73ad: $fa $e8 $7a
    cp l                                          ; $73b0: $bd
    db $10                                        ; $73b1: $10
    ld a, l                                       ; $73b2: $7d
    inc e                                         ; $73b3: $1c
    sub [hl]                                      ; $73b4: $96
    ld [hl], $d1                                  ; $73b5: $36 $d1
    sub l                                         ; $73b7: $95
    cp b                                          ; $73b8: $b8
    or $25                                        ; $73b9: $f6 $25
    ld e, b                                       ; $73bb: $58
    ld d, $1f                                     ; $73bc: $16 $1f
    ld c, c                                       ; $73be: $49
    ld a, d                                       ; $73bf: $7a
    ld [hl], h                                    ; $73c0: $74
    xor [hl]                                      ; $73c1: $ae
    ld d, c                                       ; $73c2: $51
    dec bc                                        ; $73c3: $0b
    sbc l                                         ; $73c4: $9d
    xor [hl]                                      ; $73c5: $ae
    ld a, [c]                                     ; $73c6: $f2
    or b                                          ; $73c7: $b0
    jp $a3f4                                      ; $73c8: $c3 $f4 $a3


    sub c                                         ; $73cb: $91
    or $03                                        ; $73cc: $f6 $03
    call c, $b9ed                                 ; $73ce: $dc $ed $b9
    ld c, $53                                     ; $73d1: $0e $53
    dec [hl]                                      ; $73d3: $35
    and l                                         ; $73d4: $a5
    adc a                                         ; $73d5: $8f
    ld c, b                                       ; $73d6: $48
    sbc $94                                       ; $73d7: $de $94
    ld a, c                                       ; $73d9: $79
    ret                                           ; $73da: $c9


    xor e                                         ; $73db: $ab
    dec e                                         ; $73dc: $1d
    jp nc, $99bf                                  ; $73dd: $d2 $bf $99

    ld [hl], a                                    ; $73e0: $77
    ld [hl], a                                    ; $73e1: $77
    ld d, a                                       ; $73e2: $57
    xor c                                         ; $73e3: $a9
    dec h                                         ; $73e4: $25
    rst $38                                       ; $73e5: $ff
    or b                                          ; $73e6: $b0
    and a                                         ; $73e7: $a7
    inc e                                         ; $73e8: $1c
    ld a, d                                       ; $73e9: $7a
    ld hl, $e7b7                                  ; $73ea: $21 $b7 $e7
    ld [hl], d                                    ; $73ed: $72
    ld d, e                                       ; $73ee: $53
    ld h, l                                       ; $73ef: $65
    pop af                                        ; $73f0: $f1
    ldh a, [rNR22]                                ; $73f1: $f0 $17
    rst $30                                       ; $73f3: $f7
    ld b, d                                       ; $73f4: $42
    db $dd                                        ; $73f5: $dd
    and $25                                       ; $73f6: $e6 $25
    rst $38                                       ; $73f8: $ff
    cp b                                          ; $73f9: $b8
    and [hl]                                      ; $73fa: $a6
    inc e                                         ; $73fb: $1c
    and [hl]                                      ; $73fc: $a6
    ld a, $f3                                     ; $73fd: $3e $f3
    adc b                                         ; $73ff: $88
    adc [hl]                                      ; $7400: $8e
    adc e                                         ; $7401: $8b
    ld a, l                                       ; $7402: $7d
    and [hl]                                      ; $7403: $a6
    inc [hl]                                      ; $7404: $34
    and h                                         ; $7405: $a4
    rrca                                          ; $7406: $0f
    ld a, e                                       ; $7407: $7b
    ld e, h                                       ; $7408: $5c
    ld c, a                                       ; $7409: $4f
    add d                                         ; $740a: $82
    halt                                          ; $740b: $76
    ret c                                         ; $740c: $d8

    or d                                          ; $740d: $b2
    rra                                           ; $740e: $1f
    and e                                         ; $740f: $a3
    ld [hl], a                                    ; $7410: $77
    sbc [hl]                                      ; $7411: $9e
    ld [$b661], sp                                ; $7412: $08 $61 $b6
    ret nz                                        ; $7415: $c0

    db $dd                                        ; $7416: $dd
    ld sp, $2b9c                                  ; $7417: $31 $9c $2b
    ld e, b                                       ; $741a: $58
    sub [hl]                                      ; $741b: $96
    ld l, [hl]                                    ; $741c: $6e
    cp a                                          ; $741d: $bf
    and [hl]                                      ; $741e: $a6
    call z, $9ba3                                 ; $741f: $cc $a3 $9b
    add [hl]                                      ; $7422: $86
    reti                                          ; $7423: $d9


    xor h                                         ; $7424: $ac
    db $dd                                        ; $7425: $dd
    ld c, e                                       ; $7426: $4b
    ld d, $4a                                     ; $7427: $16 $4a
    rla                                           ; $7429: $17
    ld [hl], c                                    ; $742a: $71
    xor l                                         ; $742b: $ad
    db $e3                                        ; $742c: $e3
    or b                                          ; $742d: $b0
    rra                                           ; $742e: $1f
    and e                                         ; $742f: $a3
    rla                                           ; $7430: $17
    sbc a                                         ; $7431: $9f
    adc h                                         ; $7432: $8c
    adc $c5                                       ; $7433: $ce $c5
    ld l, [hl]                                    ; $7435: $6e
    call $0e53                                    ; $7436: $cd $53 $0e
    ld [hl], b                                    ; $7439: $70
    rst $30                                       ; $743a: $f7
    add [hl]                                      ; $743b: $86
    add hl, hl                                    ; $743c: $29
    ld a, l                                       ; $743d: $7d
    jp hl                                         ; $743e: $e9


    xor [hl]                                      ; $743f: $ae
    sbc d                                         ; $7440: $9a
    db $e4                                        ; $7441: $e4
    cp b                                          ; $7442: $b8
    sbc b                                         ; $7443: $98
    ld sp, $94f6                                  ; $7444: $31 $f6 $94
    jp $8efe                                      ; $7447: $c3 $fe $8e


    dec h                                         ; $744a: $25
    ret nz                                        ; $744b: $c0

    db $dd                                        ; $744c: $dd
    ld d, d                                       ; $744d: $52
    ld a, d                                       ; $744e: $7a
    ld e, h                                       ; $744f: $5c
    ld a, h                                       ; $7450: $7c
    inc h                                         ; $7451: $24
    ld l, c                                       ; $7452: $69
    add c                                         ; $7453: $81
    db $eb                                        ; $7454: $eb
    ld [hl], $2f                                  ; $7455: $36 $2f
    ld a, $59                                     ; $7457: $3e $59
    cp d                                          ; $7459: $ba

jr_055_745a:
    db $fd                                        ; $745a: $fd
    and l                                         ; $745b: $a5
    adc e                                         ; $745c: $8b
    adc d                                         ; $745d: $8a
    ld a, e                                       ; $745e: $7b
    ret                                           ; $745f: $c9


    xor b                                         ; $7460: $a8

Jump_055_7461:
    and l                                         ; $7461: $a5
    sbc l                                         ; $7462: $9d
    jr c, jr_055_74dd                             ; $7463: $38 $78

    rst $00                                       ; $7465: $c7
    ld h, c                                       ; $7466: $61
    and l                                         ; $7467: $a5
    adc e                                         ; $7468: $8b
    ld [c], a                                     ; $7469: $e2
    ret                                           ; $746a: $c9


    ld h, e                                       ; $746b: $63
    or $e1                                        ; $746c: $f6 $e1
    xor a                                         ; $746e: $af
    jr nz, jr_055_7473                            ; $746f: $20 $02

    ld [hl], a                                    ; $7471: $77
    ld e, e                                       ; $7472: $5b

jr_055_7473:
    sub [hl]                                      ; $7473: $96
    jp nc, $82f4                                  ; $7474: $d2 $f4 $82

    db $10                                        ; $7477: $10
    ld [hl+], a                                   ; $7478: $22
    ld a, l                                       ; $7479: $7d
    inc e                                         ; $747a: $1c
    ld b, [hl]                                    ; $747b: $46
    cp h                                          ; $747c: $bc
    jp c, Jump_000_28b1                           ; $747d: $da $b1 $28

    ld e, $f1                                     ; $7480: $1e $f1
    ldh a, [$72]                                  ; $7482: $f0 $72
    jr c, jr_055_745a                             ; $7484: $38 $d4

    cp $8e                                        ; $7486: $fe $8e
    dec h                                         ; $7488: $25
    ld b, b                                       ; $7489: $40
    inc b                                         ; $748a: $04
    ld a, l                                       ; $748b: $7d
    inc e                                         ; $748c: $1c
    sub $f4                                       ; $748d: $d6 $f4
    ld [hl], d                                    ; $748f: $72
    adc l                                         ; $7490: $8d
    and h                                         ; $7491: $a4
    ld b, [hl]                                    ; $7492: $46
    inc h                                         ; $7493: $24
    ld l, a                                       ; $7494: $6f
    jp z, Jump_055_5e22                           ; $7495: $ca $22 $5e

    ld a, [hl-]                                   ; $7498: $3a
    rst $00                                       ; $7499: $c7
    scf                                           ; $749a: $37
    ld [c], a                                     ; $749b: $e2
    adc c                                         ; $749c: $89
    ld l, d                                       ; $749d: $6a
    xor [hl]                                      ; $749e: $ae
    ld h, l                                       ; $749f: $65
    inc c                                         ; $74a0: $0c
    ld de, $b7b7                                  ; $74a1: $11 $b7 $b7
    cpl                                           ; $74a4: $2f
    ld [hl], c                                    ; $74a5: $71
    and h                                         ; $74a6: $a4
    ld a, [hl]                                    ; $74a7: $7e
    or h                                          ; $74a8: $b4
    cp e                                          ; $74a9: $bb
    cp l                                          ; $74aa: $bd
    db $f4                                        ; $74ab: $f4
    push af                                       ; $74ac: $f5
    inc a                                         ; $74ad: $3c
    add hl, sp                                    ; $74ae: $39
    ld d, $88                                     ; $74af: $16 $88
    nop                                           ; $74b1: $00
    rst $30                                       ; $74b2: $f7
    ld d, c                                       ; $74b3: $51
    daa                                           ; $74b4: $27
    sbc d                                         ; $74b5: $9a
    halt                                          ; $74b6: $76
    ld a, l                                       ; $74b7: $7d
    bit 3, h                                      ; $74b8: $cb $5c
    ei                                            ; $74ba: $fb
    ld sp, $ed7a                                  ; $74bb: $31 $7a $ed
    ld b, a                                       ; $74be: $47
    adc a                                         ; $74bf: $8f
    ret nc                                        ; $74c0: $d0

    add h                                         ; $74c1: $84
    ldh [$f6], a                                  ; $74c2: $e0 $f6
    jp $c64e                                      ; $74c4: $c3 $4e $c6


    db $eb                                        ; $74c7: $eb
    add sp, -$33                                  ; $74c8: $e8 $cd
    or h                                          ; $74ca: $b4
    db $eb                                        ; $74cb: $eb
    ld e, e                                       ; $74cc: $5b
    ldh [rP1], a                                  ; $74cd: $e0 $00
    rst $38                                       ; $74cf: $ff
    add l                                         ; $74d0: $85
    ld c, [hl]                                    ; $74d1: $4e
    ld d, a                                       ; $74d2: $57
    xor l                                         ; $74d3: $ad
    sub e                                         ; $74d4: $93
    rst $30                                       ; $74d5: $f7
    ld h, e                                       ; $74d6: $63
    db $f4                                        ; $74d7: $f4
    sbc [hl]                                      ; $74d8: $9e
    adc b                                         ; $74d9: $88
    ld a, c                                       ; $74da: $79
    ld d, $19                                     ; $74db: $16 $19

jr_055_74dd:
    dec [hl]                                      ; $74dd: $35
    ld d, d                                       ; $74de: $52
    rrca                                          ; $74df: $0f
    pop bc                                        ; $74e0: $c1
    xor c                                         ; $74e1: $a9
    ld de, $e6dd                                  ; $74e2: $11 $dd $e6
    ld c, c                                       ; $74e5: $49
    ld e, a                                       ; $74e6: $5f
    add l                                         ; $74e7: $85
    ld e, l                                       ; $74e8: $5d
    dec sp                                        ; $74e9: $3b
    ld c, $73                                     ; $74ea: $0e $73
    inc a                                         ; $74ec: $3c
    rrca                                          ; $74ed: $0f
    ld e, e                                       ; $74ee: $5b
    or h                                          ; $74ef: $b4
    dec sp                                        ; $74f0: $3b
    call nc, $3f92                                ; $74f1: $d4 $92 $3f
    rst $10                                       ; $74f4: $d7
    and h                                         ; $74f5: $a4
    ld c, e                                       ; $74f6: $4b
    pop af                                        ; $74f7: $f1
    ld hl, sp-$49                                 ; $74f8: $f8 $b7
    ld d, c                                       ; $74fa: $51
    ld l, e                                       ; $74fb: $6b
    ld a, $4e                                     ; $74fc: $3e $4e
    cp l                                          ; $74fe: $bd
    sbc [hl]                                      ; $74ff: $9e
    db $e4                                        ; $7500: $e4
    sbc a                                         ; $7501: $9f
    dec h                                         ; $7502: $25
    ld a, a                                       ; $7503: $7f
    ccf                                           ; $7504: $3f
    ld b, [hl]                                    ; $7505: $46
    rst $28                                       ; $7506: $ef
    jr nc, jr_055_755e                            ; $7507: $30 $55

    db $e3                                        ; $7509: $e3
    rst $18                                       ; $750a: $df
    and $78                                       ; $750b: $e6 $78
    ld e, $b6                                     ; $750d: $1e $b6
    ld l, b                                       ; $750f: $68
    sub a                                         ; $7510: $97
    ld l, [hl]                                    ; $7511: $6e
    cp a                                          ; $7512: $bf
    sub [hl]                                      ; $7513: $96
    db $fc                                        ; $7514: $fc
    db $fd                                        ; $7515: $fd
    jr @+$3f                                      ; $7516: $18 $3d

    cp d                                          ; $7518: $ba
    ld l, c                                       ; $7519: $69
    sbc b                                         ; $751a: $98
    call Call_000_24cb                            ; $751b: $cd $cb $24
    add hl, sp                                    ; $751e: $39
    cp $6d                                        ; $751f: $fe $6d
    ld [c], a                                     ; $7521: $e2
    jp Jump_055_6c5e                              ; $7522: $c3 $5e $6c


    rst $28                                       ; $7525: $ef
    inc e                                         ; $7526: $1c
    ld b, e                                       ; $7527: $43
    inc b                                         ; $7528: $04
    cp l                                          ; $7529: $bd
    dec [hl]                                      ; $752a: $35
    and c                                         ; $752b: $a1
    cp [hl]                                       ; $752c: $be
    ld c, d                                       ; $752d: $4a
    cp l                                          ; $752e: $bd
    sbc [hl]                                      ; $752f: $9e
    db $e4                                        ; $7530: $e4
    dec l                                         ; $7531: $2d
    ld [hl], h                                    ; $7532: $74
    cp d                                          ; $7533: $ba
    ld l, d                                       ; $7534: $6a
    ld c, d                                       ; $7535: $4a
    rra                                           ; $7536: $1f
    pop hl                                        ; $7537: $e1
    ld [$0085], a                                 ; $7538: $ea $85 $00
    jr nz, jr_055_7545                            ; $753b: $20 $08

    ld [$5f61], sp                                ; $753d: $08 $61 $5f
    inc b                                         ; $7540: $04
    add [hl]                                      ; $7541: $86
    db $10                                        ; $7542: $10
    and [hl]                                      ; $7543: $a6
    ld e, a                                       ; $7544: $5f

jr_055_7545:
    ld a, c                                       ; $7545: $79
    pop af                                        ; $7546: $f1
    rst $00                                       ; $7547: $c7
    add sp, $5a                                   ; $7548: $e8 $5a
    ei                                            ; $754a: $fb
    call z, $dd70                                 ; $754b: $cc $70 $dd
    ld l, $4f                                     ; $754e: $2e $4f
    push de                                       ; $7550: $d5
    ld c, a                                       ; $7551: $4f
    ld e, h                                       ; $7552: $5c
    ei                                            ; $7553: $fb
    ld sp, $167a                                  ; $7554: $31 $7a $16
    and c                                         ; $7557: $a1
    sub [hl]                                      ; $7558: $96
    jp $8f9a                                      ; $7559: $c3 $9a $8f


    ld l, e                                       ; $755c: $6b
    add hl, de                                    ; $755d: $19

jr_055_755e:
    rst $28                                       ; $755e: $ef
    sbc [hl]                                      ; $755f: $9e
    rra                                           ; $7560: $1f
    ld [hl], e                                    ; $7561: $73
    ld a, e                                       ; $7562: $7b
    ld h, a                                       ; $7563: $67
    or a                                          ; $7564: $b7
    or a                                          ; $7565: $b7
    add a                                         ; $7566: $87
    db $dd                                        ; $7567: $dd
    or h                                          ; $7568: $b4
    ld c, e                                       ; $7569: $4b
    call c, $217a                                 ; $756a: $dc $7a $21
    add b                                         ; $756d: $80
    rst $38                                       ; $756e: $ff
    add sp, $27                                   ; $756f: $e8 $27
    inc a                                         ; $7571: $3c
    sbc l                                         ; $7572: $9d
    ld b, a                                       ; $7573: $47
    inc h                                         ; $7574: $24
    add $23                                       ; $7575: $c6 $23
    sbc [hl]                                      ; $7577: $9e
    call z, Call_055_5da5                         ; $7578: $cc $a5 $5d
    ld c, $4b                                     ; $757b: $0e $4b
    cp $12                                        ; $757d: $fe $12
    di                                            ; $757f: $f3
    ld e, $ef                                     ; $7580: $1e $ef
    ld e, $fd                                     ; $7582: $1e $fd
    sbc h                                         ; $7584: $9c
    cp a                                          ; $7585: $bf
    inc h                                         ; $7586: $24
    ld b, a                                       ; $7587: $47
    halt                                          ; $7588: $76
    xor l                                         ; $7589: $ad
    db $db                                        ; $758a: $db
    ld c, e                                       ; $758b: $4b
    cp $f1                                        ; $758c: $fe $f1
    reti                                          ; $758e: $d9


    ld h, c                                       ; $758f: $61
    ld a, a                                       ; $7590: $7f
    ld [$0221], sp                                ; $7591: $08 $21 $02
    add hl, hl                                    ; $7594: $29
    sbc l                                         ; $7595: $9d
    adc [hl]                                      ; $7596: $8e
    halt                                          ; $7597: $76
    ccf                                           ; $7598: $3f
    ld b, [hl]                                    ; $7599: $46
    rst $28                                       ; $759a: $ef
    db $fc                                        ; $759b: $fc
    dec e                                         ; $759c: $1d
    ld c, d                                       ; $759d: $4a
    ld a, b                                       ; $759e: $78
    ld b, h                                       ; $759f: $44
    sub a                                         ; $75a0: $97
    add [hl]                                      ; $75a1: $86
    ld d, e                                       ; $75a2: $53
    inc hl                                        ; $75a3: $23
    dec a                                         ; $75a4: $3d
    adc c                                         ; $75a5: $89
    pop af                                        ; $75a6: $f1
    sbc [hl]                                      ; $75a7: $9e
    xor b                                         ; $75a8: $a8
    ld a, [c]                                     ; $75a9: $f2
    inc l                                         ; $75aa: $2c
    or d                                          ; $75ab: $b2
    ld a, e                                       ; $75ac: $7b
    db $f4                                        ; $75ad: $f4
    ld [hl], e                                    ; $75ae: $73
    cp $92                                        ; $75af: $fe $92
    inc e                                         ; $75b1: $1c
    reti                                          ; $75b2: $d9


    dec [hl]                                      ; $75b3: $35
    ld h, l                                       ; $75b4: $65
    reti                                          ; $75b5: $d9


    ld h, c                                       ; $75b6: $61
    ld a, a                                       ; $75b7: $7f
    or c                                          ; $75b8: $b1
    db $f4                                        ; $75b9: $f4
    ld b, d                                       ; $75ba: $42
    add hl, hl                                    ; $75bb: $29
    sbc l                                         ; $75bc: $9d
    ld c, [hl]                                    ; $75bd: $4e
    ld [$26dd], a                                 ; $75be: $ea $dd $26
    ld c, e                                       ; $75c1: $4b
    db $fc                                        ; $75c2: $fc
    ld a, c                                       ; $75c3: $79
    xor a                                         ; $75c4: $af
    xor c                                         ; $75c5: $a9
    ld a, [$1223]                                 ; $75c6: $fa $23 $12
    db $e3                                        ; $75c9: $e3
    sbc l                                         ; $75ca: $9d
    adc h                                         ; $75cb: $8c
    rst $10                                       ; $75cc: $d7
    inc [hl]                                      ; $75cd: $34
    call z, $11ae                                 ; $75ce: $cc $ae $11
    xor [hl]                                      ; $75d1: $ae
    ld h, l                                       ; $75d2: $65
    inc e                                         ; $75d3: $1c
    db $eb                                        ; $75d4: $eb
    ld c, e                                       ; $75d5: $4b
    add b                                         ; $75d6: $80
    cp e                                          ; $75d7: $bb
    inc sp                                        ; $75d8: $33
    db $e3                                        ; $75d9: $e3
    adc c                                         ; $75da: $89
    ld l, e                                       ; $75db: $6b
    add hl, sp                                    ; $75dc: $39
    db $ec                                        ; $75dd: $ec
    ret z                                         ; $75de: $c8

    adc e                                         ; $75df: $8b
    ld [hl], c                                    ; $75e0: $71
    ret c                                         ; $75e1: $d8

    ld l, d                                       ; $75e2: $6a
    ret c                                         ; $75e3: $d8

    ld h, c                                       ; $75e4: $61
    rst $00                                       ; $75e5: $c7
    ld e, a                                       ; $75e6: $5f
    ld e, h                                       ; $75e7: $5c
    add [hl]                                      ; $75e8: $86
    ld [$493d], sp                                ; $75e9: $08 $3d $49
    ld l, $3a                                     ; $75ec: $2e $3a
    rst $10                                       ; $75ee: $d7
    cp b                                          ; $75ef: $b8
    ld [hl], d                                    ; $75f0: $72
    ld c, l                                       ; $75f1: $4d
    cp c                                          ; $75f2: $b9
    cp h                                          ; $75f3: $bc
    sbc $9a                                       ; $75f4: $de $9a
    ld d, b                                       ; $75f6: $50
    ld e, a                                       ; $75f7: $5f
    dec l                                         ; $75f8: $2d
    ld a, c                                       ; $75f9: $79
    or l                                          ; $75fa: $b5
    cp a                                          ; $75fb: $bf
    rla                                           ; $75fc: $17

jr_055_75fd:
    and e                                         ; $75fd: $a3
    ld e, [hl]                                    ; $75fe: $5e
    adc a                                         ; $75ff: $8f
    and a                                         ; $7600: $a7
    ld [$1f05], a                                 ; $7601: $ea $05 $1f
    rst $00                                       ; $7604: $c7
    db $d3                                        ; $7605: $d3
    ret                                           ; $7606: $c9


    ld h, d                                       ; $7607: $62
    add hl, de                                    ; $7608: $19
    ld c, c                                       ; $7609: $49
    dec l                                         ; $760a: $2d
    db $fd                                        ; $760b: $fd
    db $d3                                        ; $760c: $d3
    db $ed                                        ; $760d: $ed
    ld h, a                                       ; $760e: $67
    halt                                          ; $760f: $76
    inc [hl]                                      ; $7610: $34
    rst $30                                       ; $7611: $f7
    ld b, d                                       ; $7612: $42
    dec a                                         ; $7613: $3d
    ld c, a                                       ; $7614: $4f
    ld b, [hl]                                    ; $7615: $46
    cp h                                          ; $7616: $bc
    ld a, [de]                                    ; $7617: $1a
    sbc l                                         ; $7618: $9d
    adc e                                         ; $7619: $8b
    ld e, a                                       ; $761a: $5f
    db $e3                                        ; $761b: $e3
    ld h, c                                       ; $761c: $61
    add a                                         ; $761d: $87
    pop de                                        ; $761e: $d1
    ld e, l                                       ; $761f: $5d
    or l                                          ; $7620: $b5
    rst $00                                       ; $7621: $c7
    inc hl                                        ; $7622: $23
    sbc [hl]                                      ; $7623: $9e
    db $ec                                        ; $7624: $ec
    or l                                          ; $7625: $b5
    add $5f                                       ; $7626: $c6 $5f
    adc l                                         ; $7628: $8d
    ld a, b                                       ; $7629: $78
    or l                                          ; $762a: $b5
    ld l, $39                                     ; $762b: $2e $39
    pop de                                        ; $762d: $d1
    cp h                                          ; $762e: $bc
    db $e3                                        ; $762f: $e3
    jr nc, jr_055_75fd                            ; $7630: $30 $cb

    ld d, h                                       ; $7632: $54
    cp l                                          ; $7633: $bd
    ld h, b                                       ; $7634: $60
    adc b                                         ; $7635: $88
    nop                                           ; $7636: $00
    add hl, hl                                    ; $7637: $29
    sbc l                                         ; $7638: $9d
    ld c, [hl]                                    ; $7639: $4e
    ld [$fddd], a                                 ; $763a: $ea $dd $fd
    ld a, [de]                                    ; $763d: $1a
    db $fd                                        ; $763e: $fd
    inc h                                         ; $763f: $24
    xor h                                         ; $7640: $ac
    ld l, c                                       ; $7641: $69
    sbc b                                         ; $7642: $98
    ld e, l                                       ; $7643: $5d
    xor c                                         ; $7644: $a9
    ld [hl], a                                    ; $7645: $77
    ld h, a                                       ; $7646: $67
    add $da                                       ; $7647: $c6 $da
    dec e                                         ; $7649: $1d
    ld l, d                                       ; $764a: $6a
    add c                                         ; $764b: $81
    xor d                                         ; $764c: $aa
    dec h                                         ; $764d: $25
    ld a, a                                       ; $764e: $7f
    ld h, d                                       ; $764f: $62
    dec [hl]                                      ; $7650: $35
    cp $6d                                        ; $7651: $fe $6d
    cp l                                          ; $7653: $bd
    dec [hl]                                      ; $7654: $35
    and c                                         ; $7655: $a1
    cp [hl]                                       ; $7656: $be
    add d                                         ; $7657: $82

Jump_055_7658:
    ld [$183d], sp                                ; $7658: $08 $3d $18
    ld b, e                                       ; $765b: $43
    ld [$f711], sp                                ; $765c: $08 $11 $f7
    sbc $a9                                       ; $765f: $de $a9
    dec e                                         ; $7661: $1d
    sbc l                                         ; $7662: $9d
    ld l, e                                       ; $7663: $6b
    call nc, $f24e                                ; $7664: $d4 $4e $f2
    jp z, $a923                                   ; $7667: $ca $23 $a9

    dec e                                         ; $766a: $1d
    or d                                          ; $766b: $b2
    xor e                                         ; $766c: $ab
    ld c, $a6                                     ; $766d: $0e $a6
    sbc d                                         ; $766f: $9a
    ld a, c                                       ; $7670: $79
    jp z, $a3e5                                   ; $7671: $ca $e5 $a3

    db $dd                                        ; $7674: $dd
    and c                                         ; $7675: $a1
    ld b, [hl]                                    ; $7676: $46
    cp h                                          ; $7677: $bc
    sbc d                                         ; $7678: $9a
    ld h, h                                       ; $7679: $64
    bit 3, [hl]                                   ; $767a: $cb $5e
    or d                                          ; $767c: $b2
    sub $57                                       ; $767d: $d6 $57
    cp c                                          ; $767f: $b9
    sbc $da                                       ; $7680: $de $da
    dec bc                                        ; $7682: $0b
    inc a                                         ; $7683: $3c
    ld a, [hl-]                                   ; $7684: $3a
    rla                                           ; $7685: $17
    pop hl                                        ; $7686: $e1
    ld a, b                                       ; $7687: $78
    cp [hl]                                       ; $7688: $be
    inc b                                         ; $7689: $04
    rst $10                                       ; $768a: $d7
    add sp, $5c                                   ; $768b: $e8 $5c
    and e                                         ; $768d: $a3
    sub [hl]                                      ; $768e: $96
    db $e4                                        ; $768f: $e4
    ret z                                         ; $7690: $c8

    sbc $61                                       ; $7691: $de $61
    ld a, a                                       ; $7693: $7f
    or c                                          ; $7694: $b1
    db $ec                                        ; $7695: $ec
    sub d                                         ; $7696: $92
    db $dd                                        ; $7697: $dd
    dec c                                         ; $7698: $0d
    ld a, [hl-]                                   ; $7699: $3a
    ld b, l                                       ; $769a: $45
    db $f4                                        ; $769b: $f4
    ld [hl+], a                                   ; $769c: $22
    or l                                          ; $769d: $b5
    cp e                                          ; $769e: $bb
    rst $28                                       ; $769f: $ef
    ld d, a                                       ; $76a0: $57
    add hl, sp                                    ; $76a1: $39
    ld sp, hl                                     ; $76a2: $f9

Jump_055_76a3:
    sbc b                                         ; $76a3: $98
    call nc, $852e                                ; $76a4: $d4 $2e $85
    ld a, a                                       ; $76a7: $7f
    ld l, h                                       ; $76a8: $6c
    ld e, a                                       ; $76a9: $5f
    add d                                         ; $76aa: $82
    halt                                          ; $76ab: $76
    ld [hl], a                                    ; $76ac: $77
    sub [hl]                                      ; $76ad: $96
    dec h                                         ; $76ae: $25
    inc [hl]                                      ; $76af: $34
    cpl                                           ; $76b0: $2f
    add a                                         ; $76b1: $87
    and l                                         ; $76b2: $a5
    inc [hl]                                      ; $76b3: $34
    cp l                                          ; $76b4: $bd
    jr nz, jr_055_76b9                            ; $76b5: $20 $02

    add hl, hl                                    ; $76b7: $29
    ld c, l                                       ; $76b8: $4d

jr_055_76b9:
    xor a                                         ; $76b9: $af
    call nc, $2908                                ; $76ba: $d4 $08 $29
    ld c, l                                       ; $76bd: $4d
    xor a                                         ; $76be: $af
    ld de, $d79d                                  ; $76bf: $11 $9d $d7
    ret z                                         ; $76c2: $c8

    pop af                                        ; $76c3: $f1
    ld l, a                                       ; $76c4: $6f
    and e                                         ; $76c5: $a3
    sub [hl]                                      ; $76c6: $96
    or $89                                        ; $76c7: $f6 $89
    ld a, [de]                                    ; $76c9: $1a
    ld h, [hl]                                    ; $76ca: $66
    rst $28                                       ; $76cb: $ef
    or b                                          ; $76cc: $b0
    cp a                                          ; $76cd: $bf
    ld e, b                                       ; $76ce: $58
    or h                                          ; $76cf: $b4
    dec sp                                        ; $76d0: $3b
    rrca                                          ; $76d1: $0f
    db $e3                                        ; $76d2: $e3
    or a                                          ; $76d3: $b7
    adc h                                         ; $76d4: $8c
    and a                                         ; $76d5: $a7
    ld e, h                                       ; $76d6: $5c
    ld e, $97                                     ; $76d7: $1e $97
    ld e, [hl]                                    ; $76d9: $5e
    ld a, e                                       ; $76da: $7b
    call c, $2cbf                                 ; $76db: $dc $bf $2c
    ld a, c                                       ; $76de: $79
    dec [hl]                                      ; $76df: $35
    sbc l                                         ; $76e0: $9d
    dec a                                         ; $76e1: $3d
    inc sp                                        ; $76e2: $33
    cp e                                          ; $76e3: $bb
    ld b, [hl]                                    ; $76e4: $46
    db $ed                                        ; $76e5: $ed
    ld [hl], b                                    ; $76e6: $70
    and a                                         ; $76e7: $a7
    xor a                                         ; $76e8: $af
    and $fe                                       ; $76e9: $e6 $fe
    dec b                                         ; $76eb: $05
    ld [hl+], a                                   ; $76ec: $22
    add hl, hl                                    ; $76ed: $29
    ld c, l                                       ; $76ee: $4d
    xor a                                         ; $76ef: $af
    push bc                                       ; $76f0: $c5
    adc h                                         ; $76f1: $8c
    or c                                          ; $76f2: $b1
    ld l, e                                       ; $76f3: $6b
    ccf                                           ; $76f4: $3f
    ld b, [hl]                                    ; $76f5: $46
    adc a                                         ; $76f6: $8f
    ld a, a                                       ; $76f7: $7f
    dec de                                        ; $76f8: $1b
    dec [hl]                                      ; $76f9: $35
    or d                                          ; $76fa: $b2
    cp d                                          ; $76fb: $ba
    ld [de], a                                    ; $76fc: $12
    rst $28                                       ; $76fd: $ef
    jr c, @-$72                                   ; $76fe: $38 $8c

    xor $aa                                       ; $7700: $ee $aa

Jump_055_7702:
    ld de, $464f                                  ; $7702: $11 $4f $46
    ld d, e                                       ; $7705: $53
    or l                                          ; $7706: $b5
    db $e4                                        ; $7707: $e4
    or e                                          ; $7708: $b3
    ld b, a                                       ; $7709: $47
    inc h                                         ; $770a: $24
    cp c                                          ; $770b: $b9

Jump_055_770c:
    call nc, Call_000_1193                        ; $770c: $d4 $93 $11
    ld c, a                                       ; $770f: $4f
    ld d, $33                                     ; $7710: $16 $33
    add $ae                                       ; $7712: $c6 $ae
    dec e                                         ; $7714: $1d
    add a                                         ; $7715: $87
    pop de                                        ; $7716: $d1
    cp c                                          ; $7717: $b9
    jp nc, $f77f                                  ; $7718: $d2 $7f $f7

    add sp, -$19                                  ; $771b: $e8 $e7
    ld a, h                                       ; $771d: $7c
    adc b                                         ; $771e: $88
    nop                                           ; $771f: $00
    dec a                                         ; $7720: $3d
    ld c, c                                       ; $7721: $49
    ld l, $3a                                     ; $7722: $2e $3a
    rst $10                                       ; $7724: $d7
    ld e, h                                       ; $7725: $5c
    ld d, e                                       ; $7726: $53
    and $1d                                       ; $7727: $e6 $1d
    ld l, d                                       ; $7729: $6a
    ret                                           ; $772a: $c9


    dec hl                                        ; $772b: $2b
    call z, Call_055_5c23                         ; $772c: $cc $23 $5c
    ei                                            ; $772f: $fb
    ld [hl+], a                                   ; $7730: $22
    xor $85                                       ; $7731: $ee $85
    nop                                           ; $7733: $00
    cp l                                          ; $7734: $bd
    dec [hl]                                      ; $7735: $35
    and c                                         ; $7736: $a1
    cp [hl]                                       ; $7737: $be
    add d                                         ; $7738: $82
    db $10                                        ; $7739: $10
    ld [de], a                                    ; $773a: $12
    ret                                           ; $773b: $c9


    sbc e                                         ; $773c: $9b
    ld l, e                                       ; $773d: $6b
    jp z, $eecc                                   ; $773e: $ca $cc $ee

    add l                                         ; $7741: $85
    nop                                           ; $7742: $00
    db $dd                                        ; $7743: $dd
    and $29                                       ; $7744: $e6 $29
    ld d, a                                       ; $7746: $57
    xor a                                         ; $7747: $af
    add c                                         ; $7748: $81
    jr nz, @-$4a                                  ; $7749: $20 $b4

    db $eb                                        ; $774b: $eb
    adc e                                         ; $774c: $8b
    ret nz                                        ; $774d: $c0

    db $10                                        ; $774e: $10
    ld b, d                                       ; $774f: $42
    inc b                                         ; $7750: $04
    db $dd                                        ; $7751: $dd
    and $b9                                       ; $7752: $e6 $b9
    ld h, [hl]                                    ; $7754: $66
    sbc [hl]                                      ; $7755: $9e
    xor d                                         ; $7756: $aa
    rla                                           ; $7757: $17
    db $ec                                        ; $7758: $ec
    db $10                                        ; $7759: $10
    ld d, d                                       ; $775a: $52
    xor a                                         ; $775b: $af
    daa                                           ; $775c: $27
    ret                                           ; $775d: $c9


    dec [hl]                                      ; $775e: $35
    ld [c], a                                     ; $775f: $e2
    push de                                       ; $7760: $d5
    sub h                                         ; $7761: $94
    ld a, $9a                                     ; $7762: $3e $9a
    ld h, d                                       ; $7764: $62
    sbc [hl]                                      ; $7765: $9e
    ld [hl-], a                                   ; $7766: $32
    rst $30                                       ; $7767: $f7
    ld b, d                                       ; $7768: $42
    ld a, l                                       ; $7769: $7d
    inc e                                         ; $776a: $1c
    sub [hl]                                      ; $776b: $96
    inc a                                         ; $776c: $3c
    pop hl                                        ; $776d: $e1
    add hl, hl                                    ; $776e: $29
    di                                            ; $776f: $f3
    add sp, $7a                                   ; $7770: $e8 $7a
    or e                                          ; $7772: $b3
    adc h                                         ; $7773: $8c
    ld l, $63                                     ; $7774: $2e $63
    ld l, h                                       ; $7776: $6c
    adc c                                         ; $7777: $89
    xor a                                         ; $7778: $af
    or h                                          ; $7779: $b4
    inc hl                                        ; $777a: $23
    sbc [hl]                                      ; $777b: $9e
    inc l                                         ; $777c: $2c
    ld sp, hl                                     ; $777d: $f9
    dec d                                         ; $777e: $15
    rst $18                                       ; $777f: $df
    jp z, Jump_055_785f                           ; $7780: $ca $5f $78

    and c                                         ; $7783: $a1
    dec a                                         ; $7784: $3d
    dec [hl]                                      ; $7785: $35
    ld a, [hl-]                                   ; $7786: $3a
    rst $10                                       ; $7787: $d7
    xor b                                         ; $7788: $a8
    and l                                         ; $7789: $a5
    db $db                                        ; $778a: $db
    ld e, a                                       ; $778b: $5f
    ld c, h                                       ; $778c: $4c

Jump_055_778d:
    ld a, $f3                                     ; $778d: $3e $f3
    sub h                                         ; $778f: $94
    add hl, de                                    ; $7790: $19
    xor [hl]                                      ; $7791: $ae
    adc a                                         ; $7792: $8f
    jp Jump_055_5788                              ; $7793: $c3 $88 $57


    ld d, e                                       ; $7796: $53
    push af                                       ; $7797: $f5
    sub e                                         ; $7798: $93
    cp a                                          ; $7799: $bf
    inc e                                         ; $779a: $1c
    sub $7c                                       ; $779b: $d6 $7c
    ld a, b                                       ; $779d: $78
    add hl, de                                    ; $779e: $19
    adc a                                         ; $779f: $8f
    ld a, [hl-]                                   ; $77a0: $3a
    rst $00                                       ; $77a1: $c7
    ld [hl-], a                                   ; $77a2: $32

jr_055_77a3:
    rrc [hl]                                      ; $77a3: $cb $0e
    cp e                                          ; $77a5: $bb
    dec [hl]                                      ; $77a6: $35
    rst $10                                       ; $77a7: $d7
    sub h                                         ; $77a8: $94

Call_055_77a9:
    ld sp, $3ddc                                  ; $77a9: $31 $dc $3d
    cp c                                          ; $77ac: $b9
    ld c, [hl]                                    ; $77ad: $4e
    ld e, h                                       ; $77ae: $5c
    ld a, h                                       ; $77af: $7c
    cp b                                          ; $77b0: $b8
    inc [hl]                                      ; $77b1: $34
    ld hl, $a768                                  ; $77b2: $21 $68 $a7
    adc h                                         ; $77b5: $8c
    rst $20                                       ; $77b6: $e7
    ld a, [de]                                    ; $77b7: $1a
    ld e, l                                       ; $77b8: $5d
    ld e, l                                       ; $77b9: $5d
    sub c                                         ; $77ba: $91
    db $dd                                        ; $77bb: $dd
    ld a, [hl]                                    ; $77bc: $7e
    ret c                                         ; $77bd: $d8

    jp hl                                         ; $77be: $e9


    cp b                                          ; $77bf: $b8
    add hl, hl                                    ; $77c0: $29
    ld sp, $b744                                  ; $77c1: $31 $44 $b7
    add l                                         ; $77c4: $85
    ld h, b                                       ; $77c5: $60
    sbc $21                                       ; $77c6: $de $21
    swap c                                        ; $77c8: $cb $31
    cp d                                          ; $77ca: $ba
    ld d, d                                       ; $77cb: $52
    inc hl                                        ; $77cc: $23
    ld a, l                                       ; $77cd: $7d
    inc e                                         ; $77ce: $1c
    ld b, [hl]                                    ; $77cf: $46
    cp h                                          ; $77d0: $bc
    ld a, [de]                                    ; $77d1: $1a
    ld e, e                                       ; $77d2: $5b
    ld [hl+], a                                   ; $77d3: $22
    adc a                                         ; $77d4: $8f
    ld e, d                                       ; $77d5: $5a
    ld a, h                                       ; $77d6: $7c
    xor l                                         ; $77d7: $ad
    cp c                                          ; $77d8: $b9
    ld a, a                                       ; $77d9: $7f
    add hl, de                                    ; $77da: $19
    sbc l                                         ; $77db: $9d
    ld l, e                                       ; $77dc: $6b
    rst $30                                       ; $77dd: $f7
    db $e4                                        ; $77de: $e4
    ld c, d                                       ; $77df: $4a
    cp e                                          ; $77e0: $bb
    jr jr_055_7805                                ; $77e1: $18 $22

    rst $30                                       ; $77e3: $f7
    db $e4                                        ; $77e4: $e4
    ld c, d                                       ; $77e5: $4a
    cp e                                          ; $77e6: $bb
    cp b                                          ; $77e7: $b8
    rla                                           ; $77e8: $17
    ld [bc], a                                    ; $77e9: $02
    add b                                         ; $77ea: $80
    rst $38                                       ; $77eb: $ff
    jr nc, jr_055_77a3                            ; $77ec: $30 $b5

    and h                                         ; $77ee: $a4
    xor a                                         ; $77ef: $af
    ld a, [c]                                     ; $77f0: $f2
    add sp, $5c                                   ; $77f1: $e8 $5c
    rst $20                                       ; $77f3: $e7
    ld b, a                                       ; $77f4: $47
    cp $c1                                        ; $77f5: $fe $c1
    jp c, $d6f5                                   ; $77f7: $da $f5 $d6

    add h                                         ; $77fa: $84
    ld a, [$ae0a]                                 ; $77fb: $fa $0a $ae
    db $db                                        ; $77fe: $db
    cp h                                          ; $77ff: $bc
    ld hl, sp+$64                                 ; $7800: $f8 $64
    ld c, c                                       ; $7802: $49
    ld e, a                                       ; $7803: $5f
    push hl                                       ; $7804: $e5

jr_055_7805:
    db $dd                                        ; $7805: $dd
    db $fd                                        ; $7806: $fd
    ld a, [de]                                    ; $7807: $1a
    db $fd                                        ; $7808: $fd
    inc h                                         ; $7809: $24
    inc l                                         ; $780a: $2c
    ld sp, $488f                                  ; $780b: $31 $8f $48
    sbc $94                                       ; $780e: $de $94
    ld a, $22                                     ; $7810: $3e $22
    scf                                           ; $7812: $37
    push hl                                       ; $7813: $e5
    ld a, [de]                                    ; $7814: $1a
    ld c, c                                       ; $7815: $49
    dec c                                         ; $7816: $0d
    ld e, e                                       ; $7817: $5b
    ld b, c                                       ; $7818: $41
    inc b                                         ; $7819: $04
    dec a                                         ; $781a: $3d
    ld c, a                                       ; $781b: $4f
    sub [hl]                                      ; $781c: $96
    or $e7                                        ; $781d: $f6 $e7
    adc c                                         ; $781f: $89
    rrca                                          ; $7820: $0f
    ld e, e                                       ; $7821: $5b
    ld d, $3a                                     ; $7822: $16 $3a
    ld d, $c9                                     ; $7824: $16 $c9
    ld a, b                                       ; $7826: $78
    add a                                         ; $7827: $87
    cp e                                          ; $7828: $bb
    ld [de], a                                    ; $7829: $12
    scf                                           ; $782a: $37
    set 6, b                                      ; $782b: $cb $f0
    sub a                                         ; $782d: $97
    add hl, bc                                    ; $782e: $09
    dec [hl]                                      ; $782f: $35
    pop de                                        ; $7830: $d1
    sbc h                                         ; $7831: $9c
    inc bc                                        ; $7832: $03
    rst $10                                       ; $7833: $d7
    ld l, l                                       ; $7834: $6d
    reti                                          ; $7835: $d9


    pop hl                                        ; $7836: $e1
    rla                                           ; $7837: $17
    db $e3                                        ; $7838: $e3
    xor e                                         ; $7839: $ab
    or e                                          ; $783a: $b3
    or $5b                                        ; $783b: $f6 $5b
    di                                            ; $783d: $f3
    ld hl, sp-$63                                 ; $783e: $f8 $9d
    ld h, e                                       ; $7840: $63
    sbc c                                         ; $7841: $99
    ld l, e                                       ; $7842: $6b
    rst $20                                       ; $7843: $e7
    rst $00                                       ; $7844: $c7
    add sp, -$1e                                  ; $7845: $e8 $e2
    dec e                                         ; $7847: $1d
    cp l                                          ; $7848: $bd
    or c                                          ; $7849: $b1
    dec b                                         ; $784a: $05
    ld [hl+], a                                   ; $784b: $22
    dec a                                         ; $784c: $3d
    ret                                           ; $784d: $c9


    db $db                                        ; $784e: $db
    ld hl, $71ff                                  ; $784f: $21 $ff $71
    adc l                                         ; $7852: $8d
    ld a, b                                       ; $7853: $78
    jp nc, Jump_000_296b                          ; $7854: $d2 $6b $29

    ld e, b                                       ; $7857: $58
    inc de                                        ; $7858: $13
    ld e, [hl]                                    ; $7859: $5e
    xor c                                         ; $785a: $a9
    cpl                                           ; $785b: $2f
    pop bc                                        ; $785c: $c1
    and l                                         ; $785d: $a5
    dec e                                         ; $785e: $1d

Jump_055_785f:
    ld b, c                                       ; $785f: $41
    sub c                                         ; $7860: $91
    xor [hl]                                      ; $7861: $ae
    ld [hl], l                                    ; $7862: $75
    inc e                                         ; $7863: $1c
    jr nz, jr_055_7868                            ; $7864: $20 $02

    rst $30                                       ; $7866: $f7
    db $f4                                        ; $7867: $f4

jr_055_7868:
    ld b, l                                       ; $7868: $45
    ld l, b                                       ; $7869: $68
    and a                                         ; $786a: $a7
    adc h                                         ; $786b: $8c
    sub a                                         ; $786c: $97
    ld l, [hl]                                    ; $786d: $6e
    cp a                                          ; $786e: $bf
    ld a, [$a597]                                 ; $786f: $fa $97 $a5
    ld e, a                                       ; $7872: $5f
    ld a, c                                       ; $7873: $79
    ld sp, $0d79                                  ; $7874: $31 $79 $0d
    rst $28                                       ; $7877: $ef
    dec h                                         ; $7878: $25
    ld [hl], b                                    ; $7879: $70
    ld [hl], a                                    ; $787a: $77
    ld c, h                                       ; $787b: $4c
    ld a, c                                       ; $787c: $79
    jp hl                                         ; $787d: $e9


    xor [hl]                                      ; $787e: $ae
    ld l, b                                       ; $787f: $68
    pop af                                        ; $7880: $f1
    ld a, [hl-]                                   ; $7881: $3a
    ld c, $6b                                     ; $7882: $0e $6b
    ld a, $6c                                     ; $7884: $3e $6c
    db $ed                                        ; $7886: $ed
    ld c, $53                                     ; $7887: $0e $53
    dec [hl]                                      ; $7889: $35
    ld h, l                                       ; $788a: $65
    sbc $e3                                       ; $788b: $de $e3
    cp $65                                        ; $788d: $fe $65
    db $ed                                        ; $788f: $ed
    ld b, a                                       ; $7890: $47
    rst $10                                       ; $7891: $d7
    and d                                         ; $7892: $a2
    and [hl]                                      ; $7893: $a6
    or l                                          ; $7894: $b5
    cpl                                           ; $7895: $2f
    pop bc                                        ; $7896: $c1
    dec b                                         ; $7897: $05
    sub a                                         ; $7898: $97
    ld b, d                                       ; $7899: $42
    dec l                                         ; $789a: $2d
    ld [$9e22], a                                 ; $789b: $ea $22 $9e
    ld [hl], d                                    ; $789e: $72
    ld a, c                                       ; $789f: $79
    add a                                         ; $78a0: $87
    ld a, a                                       ; $78a1: $7f
    adc h                                         ; $78a2: $8c
    sbc [hl]                                      ; $78a3: $9e
    adc $cb                                       ; $78a4: $ce $cb
    ld h, c                                       ; $78a6: $61
    db $f4                                        ; $78a7: $f4
    rla                                           ; $78a8: $17
    pop af                                        ; $78a9: $f1
    xor [hl]                                      ; $78aa: $ae
    sbc $e1                                       ; $78ab: $de $e1
    xor [hl]                                      ; $78ad: $ae
    jr @+$5f                                      ; $78ae: $18 $5d

    db $e3                                        ; $78b0: $e3
    rst $18                                       ; $78b1: $df
    add [hl]                                      ; $78b2: $86
    dec e                                         ; $78b3: $1d
    ld a, d                                       ; $78b4: $7a
    xor l                                         ; $78b5: $ad
    db $db                                        ; $78b6: $db
    inc a                                         ; $78b7: $3c
    jp nz, Jump_055_5ca2                          ; $78b8: $c2 $a2 $5c

    ld d, e                                       ; $78bb: $53
    and $d1                                       ; $78bc: $e6 $d1
    ld c, l                                       ; $78be: $4d
    ld d, e                                       ; $78bf: $53
    sub e                                         ; $78c0: $93
    ld l, h                                       ; $78c1: $6c
    ld e, c                                       ; $78c2: $59
    ld a, [c]                                     ; $78c3: $f2
    ld e, e                                       ; $78c4: $5b
    inc hl                                        ; $78c5: $23
    cp d                                          ; $78c6: $ba
    db $e4                                        ; $78c7: $e4
    xor h                                         ; $78c8: $ac

Jump_055_78c9:
    ld [hl], h                                    ; $78c9: $74
    ld d, c                                       ; $78ca: $51

Jump_055_78cb:
    cp h                                          ; $78cb: $bc
    ccf                                           ; $78cc: $3f
    ld a, [c]                                     ; $78cd: $f2
    ld d, l                                       ; $78ce: $55
    or h                                          ; $78cf: $b4
    ld b, b                                       ; $78d0: $40
    inc b                                         ; $78d1: $04
    ld a, l                                       ; $78d2: $7d
    sbc $92                                       ; $78d3: $de $92
    ld a, a                                       ; $78d5: $7f
    ld c, $c3                                     ; $78d6: $0e $c3
    push af                                       ; $78d8: $f5
    inc h                                         ; $78d9: $24
    cp c                                          ; $78da: $b9
    sub [hl]                                      ; $78db: $96
    inc a                                         ; $78dc: $3c
    add hl, sp                                    ; $78dd: $39
    pop de                                        ; $78de: $d1
    db $ed                                        ; $78df: $ed
    add a                                         ; $78e0: $87
    push bc                                       ; $78e1: $c5
    daa                                           ; $78e2: $27
    ld d, e                                       ; $78e3: $53
    and $25                                       ; $78e4: $e6 $25
    ld a, l                                       ; $78e6: $7d
    sub l                                         ; $78e7: $95
    ld b, a                                       ; $78e8: $47
    adc l                                         ; $78e9: $8d
    ld a, [hl]                                    ; $78ea: $7e
    ld [de], a                                    ; $78eb: $12
    inc a                                         ; $78ec: $3c
    res 4, d                                      ; $78ed: $cb $a2
    and [hl]                                      ; $78ef: $a6
    or l                                          ; $78f0: $b5
    cpl                                           ; $78f1: $2f
    and c                                         ; $78f2: $a1
    rla                                           ; $78f3: $17
    ld [bc], a                                    ; $78f4: $02
    dec a                                         ; $78f5: $3d
    xor [hl]                                      ; $78f6: $ae
    ld de, $a6af                                  ; $78f7: $11 $af $a6
    db $f4                                        ; $78fa: $f4
    ld b, l                                       ; $78fb: $45
    ld c, l                                       ; $78fc: $4d
    ld l, e                                       ; $78fd: $6b
    ld e, a                                       ; $78fe: $5f
    add d                                         ; $78ff: $82
    push bc                                       ; $7900: $c5
    jp c, $d6f5                                   ; $7901: $da $f5 $d6

    add h                                         ; $7904: $84
    ld a, [$220a]                                 ; $7905: $fa $0a $22
    nop                                           ; $7908: $00
    ld e, a                                       ; $7909: $5f
    adc h                                         ; $790a: $8c
    jp c, $bcf5                                   ; $790b: $da $f5 $bc

    ld a, [hl+]                                   ; $790e: $2a
    dec c                                         ; $790f: $0d
    call c, $bf5d                                 ; $7910: $dc $5d $bf
    dec [hl]                                      ; $7913: $35
    rst $28                                       ; $7914: $ef
    sbc [hl]                                      ; $7915: $9e
    ld e, h                                       ; $7916: $5c
    ld l, c                                       ; $7917: $69
    rla                                           ; $7918: $17
    adc a                                         ; $7919: $8f
    ret z                                         ; $791a: $c8

    ld c, l                                       ; $791b: $4d
    pop af                                        ; $791c: $f1
    ld c, b                                       ; $791d: $48
    ld l, d                                       ; $791e: $6a
    call nc, $edd2                                ; $791f: $d4 $d2 $ed
    adc a                                         ; $7922: $8f
    dec [hl]                                      ; $7923: $35
    ld [hl+], a                                   ; $7924: $22
    dec sp                                        ; $7925: $3b
    add hl, de                                    ; $7926: $19
    rst $08                                       ; $7927: $cf
    or d                                          ; $7928: $b2
    jp Jump_000_08e5                              ; $7929: $c3 $e5 $08


    ld de, $35bd                                  ; $792c: $11 $bd $35
    and c                                         ; $792f: $a1
    cp [hl]                                       ; $7930: $be
    sbc d                                         ; $7931: $9a
    ld a, d                                       ; $7932: $7a
    jp c, Jump_055_4f11                           ; $7933: $da $11 $4f

    ld b, [hl]                                    ; $7936: $46
    cp h                                          ; $7937: $bc
    ld e, d                                       ; $7938: $5a
    daa                                           ; $7939: $27
    cpl                                           ; $793a: $2f
    ret                                           ; $793b: $c9


    pop af                                        ; $793c: $f1
    or b                                          ; $793d: $b0
    halt                                          ; $793e: $76
    jp hl                                         ; $793f: $e9


    ld d, a                                       ; $7940: $57
    ld e, $49                                     ; $7941: $1e $49
    ld c, l                                       ; $7943: $4d
    ld e, c                                       ; $7944: $59
    sub $7e                                       ; $7945: $d6 $7e
    ld l, e                                       ; $7947: $6b
    sbc $61                                       ; $7948: $de $61
    ld e, l                                       ; $794a: $5d
    sub h                                         ; $794b: $94
    ld h, l                                       ; $794c: $65
    dec e                                         ; $794d: $1d
    add a                                         ; $794e: $87
    ld de, $96af                                  ; $794f: $11 $af $96
    db $f4                                        ; $7952: $f4
    ld d, l                                       ; $7953: $55
    cp h                                          ; $7954: $bc
    ld [hl], h                                    ; $7955: $74
    ld l, $76                                     ; $7956: $2e $76
    ld [$8bdd], a                                 ; $7958: $ea $dd $8b
    ld h, a                                       ; $795b: $67
    sbc c                                         ; $795c: $99
    ld e, $3d                                     ; $795d: $1e $3d

Call_055_795f:
Jump_055_795f:
    rst $10                                       ; $795f: $d7
    adc b                                         ; $7960: $88
    daa                                           ; $7961: $27
    dec sp                                        ; $7962: $3b
    call nc, $e70e                                ; $7963: $d4 $0e $e7
    jp c, Jump_055_78c9                           ; $7966: $da $c9 $78

    add h                                         ; $7969: $84
    add [hl]                                      ; $796a: $86
    ld sp, hl                                     ; $796b: $f9
    ld c, l                                       ; $796c: $4d
    ld a, l                                       ; $796d: $7d
    cp b                                          ; $796e: $b8
    cp e                                          ; $796f: $bb
    ld e, a                                       ; $7970: $5f
    and e                                         ; $7971: $a3
    sbc a                                         ; $7972: $9f
    add h                                         ; $7973: $84
    push bc                                       ; $7974: $c5
    daa                                           ; $7975: $27
    ld a, e                                       ; $7976: $7b
    ret                                           ; $7977: $c9


    ld l, c                                       ; $7978: $69
    ld e, l                                       ; $7979: $5d
    push hl                                       ; $797a: $e5
    add hl, hl                                    ; $797b: $29
    add a                                         ; $797c: $87
    add hl, bc                                    ; $797d: $09
    ld d, l                                       ; $797e: $55
    dec sp                                        ; $797f: $3b
    add hl, de                                    ; $7980: $19
    adc a                                         ; $7981: $8f
    ld [hl], b                                    ; $7982: $70
    dec sp                                        ; $7983: $3b
    inc c                                         ; $7984: $0c
    ld de, $1c7d                                  ; $7985: $11 $7d $1c
    sub [hl]                                      ; $7988: $96
    ld hl, sp-$0d                                 ; $7989: $f8 $f3
    ld e, $af                                     ; $798b: $1e $af
    db $e3                                        ; $798d: $e3
    or b                                          ; $798e: $b0
    rra                                           ; $798f: $1f
    and e                                         ; $7990: $a3
    rla                                           ; $7991: $17
    sbc a                                         ; $7992: $9f
    inc l                                         ; $7993: $2c
    ld l, l                                       ; $7994: $6d
    ld [hl+], a                                   ; $7995: $22
    scf                                           ; $7996: $37
    push hl                                       ; $7997: $e5
    cp $65                                        ; $7998: $fe $65

Jump_055_799a:
    ld [hl], h                                    ; $799a: $74
    xor [hl]                                      ; $799b: $ae
    cp l                                          ; $799c: $bd
    sub $f8                                       ; $799d: $d6 $f8
    dec hl                                        ; $799f: $2b
    db $ed                                        ; $79a0: $ed
    or b                                          ; $79a1: $b0
    ld h, l                                       ; $79a2: $65
    dec e                                         ; $79a3: $1d
    add a                                         ; $79a4: $87
    push bc                                       ; $79a5: $c5
    daa                                           ; $79a6: $27
    db $fd                                        ; $79a7: $fd
    ld b, a                                       ; $79a8: $47
    rst $28                                       ; $79a9: $ef
    inc [hl]                                      ; $79aa: $34
    sub e                                         ; $79ab: $93
    and h                                         ; $79ac: $a4

Jump_055_79ad:
    ei                                            ; $79ad: $fb
    sub a                                         ; $79ae: $97
    or l                                          ; $79af: $b5
    xor [hl]                                      ; $79b0: $ae
    inc sp                                        ; $79b1: $33
    sub d                                         ; $79b2: $92
    sbc d                                         ; $79b3: $9a
    add e                                         ; $79b4: $83
    add l                                         ; $79b5: $85
    and b                                         ; $79b6: $a0
    ld b, h                                       ; $79b7: $44
    adc l                                         ; $79b8: $8d
    ld [hl], b                                    ; $79b9: $70
    ld l, e                                       ; $79ba: $6b
    ld l, $88                                     ; $79bb: $2e $88
    nop                                           ; $79bd: $00
    or a                                          ; $79be: $b7
    ld d, h                                       ; $79bf: $54
    ld l, $cb                                     ; $79c0: $2e $cb
    ldh a, [rNR22]                                ; $79c2: $f0 $17
    db $ed                                        ; $79c4: $ed
    xor $7c                                       ; $79c5: $ee $7c
    xor l                                         ; $79c7: $ad
    ld e, c                                       ; $79c8: $59
    dec sp                                        ; $79c9: $3b
    ld d, l                                       ; $79ca: $55
    ccf                                           ; $79cb: $3f
    ld [hl], c                                    ; $79cc: $71
    dec c                                         ; $79cd: $0d
    ld e, e                                       ; $79ce: $5b
    ld c, l                                       ; $79cf: $4d
    push de                                       ; $79d0: $d5
    dec bc                                        ; $79d1: $0b
    and [hl]                                      ; $79d2: $a6

Jump_055_79d3:
    ld [hl], e                                    ; $79d3: $73
    sbc l                                         ; $79d4: $9d
    jr z, jr_055_7a36                             ; $79d5: $28 $5f

    jp nz, Jump_000_00fe                          ; $79d7: $c2 $fe $00

    ld h, h                                       ; $79da: $64
    db $fc                                        ; $79db: $fc
    db $e4                                        ; $79dc: $e4
    ccf                                           ; $79dd: $3f
    cp b                                          ; $79de: $b8
    dec sp                                        ; $79df: $3b
    sbc a                                         ; $79e0: $9f
    sbc h                                         ; $79e1: $9c
    ret c                                         ; $79e2: $d8

    pop af                                        ; $79e3: $f1
    adc b                                         ; $79e4: $88
    daa                                           ; $79e5: $27
    adc e                                         ; $79e6: $8b
    ld c, a                                       ; $79e7: $4f
    ld b, [hl]                                    ; $79e8: $46
    ld a, a                                       ; $79e9: $7f
    ld de, $32cf                                  ; $79ea: $11 $cf $32
    or d                                          ; $79ed: $b2
    cp l                                          ; $79ee: $bd
    ld [hl], e                                    ; $79ef: $73
    add $bf                                       ; $79f0: $c6 $bf
    db $ed                                        ; $79f2: $ed
    sbc [hl]                                      ; $79f3: $9e
    ld e, h                                       ; $79f4: $5c
    ld l, c                                       ; $79f5: $69
    rla                                           ; $79f6: $17
    ld b, e                                       ; $79f7: $43
    inc b                                         ; $79f8: $04
    add b                                         ; $79f9: $80
    rst $38                                       ; $79fa: $ff
    adc [hl]                                      ; $79fb: $8e
    ld b, l                                       ; $79fc: $45
    cp c                                          ; $79fd: $b9
    sub $63                                       ; $79fe: $d6 $63
    sub l                                         ; $7a00: $95
    db $fc                                        ; $7a01: $fc
    jr nc, jr_055_7a70                            ; $7a02: $30 $6c

    dec [hl]                                      ; $7a04: $35
    set 3, d                                      ; $7a05: $cb $da
    inc hl                                        ; $7a07: $23
    ret                                           ; $7a08: $c9


    pop af                                        ; $7a09: $f1
    ld l, a                                       ; $7a0a: $6f
    inc hl                                        ; $7a0b: $23
    ld e, $86                                     ; $7a0c: $1e $86
    db $eb                                        ; $7a0e: $eb
    ld c, c                                       ; $7a0f: $49
    sbc $ce                                       ; $7a10: $de $ce
    ld [hl], a                                    ; $7a12: $77
    ld c, l                                       ; $7a13: $4d
    jp hl                                         ; $7a14: $e9


    jp c, $d6f5                                   ; $7a15: $da $f5 $d6

    add h                                         ; $7a18: $84
    ld a, [$17aa]                                 ; $7a19: $fa $aa $17
    ld [bc], a                                    ; $7a1c: $02
    add b                                         ; $7a1d: $80
    db $dd                                        ; $7a1e: $dd
    or h                                          ; $7a1f: $b4
    jp $94d4                                      ; $7a20: $c3 $d4 $94


    ld a, c                                       ; $7a23: $79
    ld c, c                                       ; $7a24: $49
    ld e, a                                       ; $7a25: $5f
    push af                                       ; $7a26: $f5
    or h                                          ; $7a27: $b4
    dec sp                                        ; $7a28: $3b
    call nc, Call_000_3530                        ; $7a29: $d4 $30 $35
    ld h, l                                       ; $7a2c: $65
    ld e, [hl]                                    ; $7a2d: $5e
    ld [c], a                                     ; $7a2e: $e2

Jump_055_7a2f:
    or [hl]                                       ; $7a2f: $b6
    and h                                         ; $7a30: $a4

Jump_055_7a31:
    xor a                                         ; $7a31: $af
    ld a, d                                       ; $7a32: $7a
    jp c, Jump_000_07a9                           ; $7a33: $da $a9 $07

jr_055_7a36:
    ld de, $af3d                                  ; $7a36: $11 $3d $af
    and [hl]                                      ; $7a39: $a6
    db $f4                                        ; $7a3a: $f4
    pop de                                        ; $7a3b: $d1
    ld e, a                                       ; $7a3c: $5f
    db $e4                                        ; $7a3d: $e4
    rst $28                                       ; $7a3e: $ef
    ld [$4d45], a                                 ; $7a3f: $ea $45 $4d
    ld l, e                                       ; $7a42: $6b
    ld e, a                                       ; $7a43: $5f
    add d                                         ; $7a44: $82
    ld l, e                                       ; $7a45: $6b
    ld d, $a1                                     ; $7a46: $16 $a1
    or h                                          ; $7a48: $b4
    db $eb                                        ; $7a49: $eb
    ld a, c                                       ; $7a4a: $79
    ld d, l                                       ; $7a4b: $55
    sbc d                                         ; $7a4c: $9a
    ld e, [hl]                                    ; $7a4d: $5e
    ld [$c477], sp                                ; $7a4e: $08 $77 $c4
    add sp, $59                                   ; $7a51: $e8 $59
    add h                                         ; $7a53: $84
    add d                                         ; $7a54: $82
    ld [$5129], sp                                ; $7a55: $08 $29 $51
    inc hl                                        ; $7a58: $23
    ld l, d                                       ; $7a59: $6a
    jp z, $ed61                                   ; $7a5a: $ca $61 $ed

    inc sp                                        ; $7a5d: $33
    ld l, e                                       ; $7a5e: $6b
    and a                                         ; $7a5f: $a7
    ld e, [hl]                                    ; $7a60: $5e
    ld [$3cf5], a                                 ; $7a61: $ea $f5 $3c
    sbc c                                         ; $7a64: $99
    reti                                          ; $7a65: $d9


    or l                                          ; $7a66: $b5
    inc hl                                        ; $7a67: $23
    xor a                                         ; $7a68: $af
    ld a, b                                       ; $7a69: $78
    nop                                           ; $7a6a: $00
    or d                                          ; $7a6b: $b2
    adc b                                         ; $7a6c: $88
    ld h, [hl]                                    ; $7a6d: $66
    ld b, h                                       ; $7a6e: $44
    ld a, [c]                                     ; $7a6f: $f2

jr_055_7a70:
    rst $08                                       ; $7a70: $cf
    sub h                                         ; $7a71: $94
    cp [hl]                                       ; $7a72: $be
    rra                                           ; $7a73: $1f
    and e                                         ; $7a74: $a3
    ld [hl], a                                    ; $7a75: $77
    ld [c], a                                     ; $7a76: $e2
    and e                                         ; $7a77: $a3
    ld l, c                                       ; $7a78: $69
    ld d, a                                       ; $7a79: $57
    rst $38                                       ; $7a7a: $ff
    ld [hl-], a                                   ; $7a7b: $32
    db $fc                                        ; $7a7c: $fc
    ld a, b                                       ; $7a7d: $78
    db $ed                                        ; $7a7e: $ed
    inc sp                                        ; $7a7f: $33
    cpl                                           ; $7a80: $2f
    ld h, $3f                                     ; $7a81: $26 $3f
    ld [hl], d                                    ; $7a83: $72
    ld l, d                                       ; $7a84: $6a
    inc b                                         ; $7a85: $04
    db $fd                                        ; $7a86: $fd
    ld l, d                                       ; $7a87: $6a
    and a                                         ; $7a88: $a7
    ld e, h                                       ; $7a89: $5c
    ld [hl], e                                    ; $7a8a: $73
    ld c, l                                       ; $7a8b: $4d
    jp hl                                         ; $7a8c: $e9


    db $eb                                        ; $7a8d: $eb
    ld h, h                                       ; $7a8e: $64
    db $ed                                        ; $7a8f: $ed
    ld a, d                                       ; $7a90: $7a
    ld e, [hl]                                    ; $7a91: $5e
    sub l                                         ; $7a92: $95
    ld b, $0e                                     ; $7a93: $06 $0e
    ldh a, [$1f]                                  ; $7a95: $f0 $1f
    pop af                                        ; $7a97: $f1
    ld l, d                                       ; $7a98: $6a
    adc c                                         ; $7a99: $89
    add l                                         ; $7a9a: $85
    call $a923                                    ; $7a9b: $cd $23 $a9
    add hl, hl                                    ; $7a9e: $29
    rlca                                          ; $7a9f: $07
    adc b                                         ; $7aa0: $88
    nop                                           ; $7aa1: $00
    ld a, l                                       ; $7aa2: $7d
    inc e                                         ; $7aa3: $1c
    sub [hl]                                      ; $7aa4: $96
    ld e, b                                       ; $7aa5: $58
    add hl, hl                                    ; $7aa6: $29
    rst $10                                       ; $7aa7: $d7
    ld c, b                                       ; $7aa8: $48
    ld l, d                                       ; $7aa9: $6a
    adc a                                         ; $7aaa: $8f
    rst $10                                       ; $7aab: $d7
    ld e, e                                       ; $7aac: $5b
    inc de                                        ; $7aad: $13
    ld [$11ab], a                                 ; $7aae: $ea $ab $11
    xor a                                         ; $7ab1: $af
    sub $3e                                       ; $7ab2: $d6 $3e
    di                                            ; $7ab4: $f3
    ld e, [hl]                                    ; $7ab5: $5e
    ld [hl-], a                                   ; $7ab6: $32
    ld [hl+], a                                   ; $7ab7: $22
    ld [hl], c                                    ; $7ab8: $71
    pop af                                        ; $7ab9: $f1
    cp [hl]                                       ; $7aba: $be
    or b                                          ; $7abb: $b0
    set 4, a                                      ; $7abc: $cb $e7
    inc a                                         ; $7abe: $3c
    pop hl                                        ; $7abf: $e1
    ld d, c                                       ; $7ac0: $51
    and e                                         ; $7ac1: $a3
    ld [hl], e                                    ; $7ac2: $73
    or c                                          ; $7ac3: $b1
    ld e, e                                       ; $7ac4: $5b
    di                                            ; $7ac5: $f3
    ld a, [c]                                     ; $7ac6: $f2
    add hl, sp                                    ; $7ac7: $39
    bit 7, b                                      ; $7ac8: $cb $78
    add hl, hl                                    ; $7aca: $29
    db $ec                                        ; $7acb: $ec
    cpl                                           ; $7acc: $2f
    ld d, $88                                     ; $7acd: $16 $88
    nop                                           ; $7acf: $00
    dec a                                         ; $7ad0: $3d
    ret                                           ; $7ad1: $c9


    ld e, e                                       ; $7ad2: $5b
    add sp, $74                                   ; $7ad3: $e8 $74
    push de                                       ; $7ad5: $d5
    sub h                                         ; $7ad6: $94
    ld a, $c2                                     ; $7ad7: $3e $c2
    and l                                         ; $7ad9: $a5
    db $dd                                        ; $7ada: $dd
    db $dd                                        ; $7adb: $dd
    xor a                                         ; $7adc: $af
    pop de                                        ; $7add: $d1
    ld c, a                                       ; $7ade: $4f
    ld b, d                                       ; $7adf: $42
    cpl                                           ; $7ae0: $2f
    inc b                                         ; $7ae1: $04
    ld a, l                                       ; $7ae2: $7d
    inc e                                         ; $7ae3: $1c
    ld b, [hl]                                    ; $7ae4: $46
    ld [hl], $3d                                  ; $7ae5: $36 $3d
    ld b, [hl]                                    ; $7ae7: $46
    rst $10                                       ; $7ae8: $d7
    jp nc, $e32d                                  ; $7ae9: $d2 $2d $e3

    jp $f1ae                                      ; $7aec: $c3 $ae $f1


    ld l, a                                       ; $7aef: $6f
    or e                                          ; $7af0: $b3
    db $ec                                        ; $7af1: $ec
    dec h                                         ; $7af2: $25
    daa                                           ; $7af3: $27
    halt                                          ; $7af4: $76
    xor h                                         ; $7af5: $ac
    ld c, [hl]                                    ; $7af6: $4e
    ld e, d                                       ; $7af7: $5a
    adc a                                         ; $7af8: $8f
    ld h, [hl]                                    ; $7af9: $66
    ld e, $ff                                     ; $7afa: $1e $ff
    ld [hl], $cb                                  ; $7afc: $36 $cb
    call c, $ec9c                                 ; $7afe: $dc $9c $ec
    ld h, h                                       ; $7b01: $64
    cp h                                          ; $7b02: $bc
    inc hl                                        ; $7b03: $23
    xor a                                         ; $7b04: $af
    ld a, b                                       ; $7b05: $78
    daa                                           ; $7b06: $27
    cp [hl]                                       ; $7b07: $be
    ld [hl], $3a                                  ; $7b08: $36 $3a
    ld d, a                                       ; $7b0a: $57
    ld a, e                                       ; $7b0b: $7b
    db $ec                                        ; $7b0c: $ec
    push hl                                       ; $7b0d: $e5
    ld [hl], e                                    ; $7b0e: $73
    or h                                          ; $7b0f: $b4
    bit 4, c                                      ; $7b10: $cb $61
    adc c                                         ; $7b12: $89
    ld b, l                                       ; $7b13: $45
    inc l                                         ; $7b14: $2c
    ld e, $f1                                     ; $7b15: $1e $f1
    db $e4                                        ; $7b17: $e4

Call_055_7b18:
    ld b, b                                       ; $7b18: $40
    inc b                                         ; $7b19: $04
    add hl, hl                                    ; $7b1a: $29
    sub $ae                                       ; $7b1b: $d6 $ae
    rst $00                                       ; $7b1d: $c7
    ld a, [hl+]                                   ; $7b1e: $2a
    ld sp, hl                                     ; $7b1f: $f9
    ld h, c                                       ; $7b20: $61
    xor [hl]                                      ; $7b21: $ae
    push bc                                       ; $7b22: $c5
    adc h                                         ; $7b23: $8c

Jump_055_7b24:
    or c                                          ; $7b24: $b1
    ld a, c                                       ; $7b25: $79
    ccf                                           ; $7b26: $3f
    ld [hl], h                                    ; $7b27: $74
    inc l                                         ; $7b28: $2c
    xor c                                         ; $7b29: $a9
    ld de, $ba3d                                  ; $7b2a: $11 $3d $ba
    adc h                                         ; $7b2d: $8c
    ld a, b                                       ; $7b2e: $78
    dec [hl]                                      ; $7b2f: $35
    ld l, h                                       ; $7b30: $6c
    or l                                          ; $7b31: $b5
    db $e3                                        ; $7b32: $e3
    jr nc, @-$33                                  ; $7b33: $30 $cb

    jp nc, $b13e                                  ; $7b35: $d2 $3e $b1

    ld h, e                                       ; $7b38: $63
    dec [hl]                                      ; $7b39: $35
    cp d                                          ; $7b3a: $ba
    sbc $ee                                       ; $7b3b: $de $ee
    ld a, h                                       ; $7b3d: $7c
    xor l                                         ; $7b3e: $ad
    add hl, de                                    ; $7b3f: $19
    xor $2e                                       ; $7b40: $ee $2e
    sbc a                                         ; $7b42: $9f
    add hl, hl                                    ; $7b43: $29
    adc e                                         ; $7b44: $8b
    halt                                          ; $7b45: $76
    nop                                           ; $7b46: $00
    or d                                          ; $7b47: $b2
    adc b                                         ; $7b48: $88
    ld b, $22                                     ; $7b49: $06 $22
    db $fd                                        ; $7b4b: $fd
    rst $18                                       ; $7b4c: $df
    reti                                          ; $7b4d: $d9


    jp hl                                         ; $7b4e: $e9


    xor e                                         ; $7b4f: $ab
    inc a                                         ; $7b50: $3c
    nop                                           ; $7b51: $00
    ld e, c                                       ; $7b52: $59
    ld b, h                                       ; $7b53: $44
    and e                                         ; $7b54: $a3
    db $ed                                        ; $7b55: $ed
    rra                                           ; $7b56: $1f
    ld bc, $f7fd                                  ; $7b57: $01 $fd $f7
    ld [hl], c                                    ; $7b5a: $71
    ld e, b                                       ; $7b5b: $58
    ld a, h                                       ; $7b5c: $7c
    or d                                          ; $7b5d: $b2
    sub b                                         ; $7b5e: $90
    dec d                                         ; $7b5f: $15
    cpl                                           ; $7b60: $2f
    daa                                           ; $7b61: $27
    ld l, $7e                                     ; $7b62: $2e $7e
    ld d, e                                       ; $7b64: $53
    push af                                       ; $7b65: $f5
    add d                                         ; $7b66: $82
    ld b, l                                       ; $7b67: $45
    dec sp                                        ; $7b68: $3b
    ld l, h                                       ; $7b69: $6c
    sbc c                                         ; $7b6a: $99
    ld [hl-], a                                   ; $7b6b: $32
    cpl                                           ; $7b6c: $2f
    db $dd                                        ; $7b6d: $dd
    ld a, [hl]                                    ; $7b6e: $7e
    db $ed                                        ; $7b6f: $ed
    rst $00                                       ; $7b70: $c7
    add sp, $35                                   ; $7b71: $e8 $35
    inc sp                                        ; $7b73: $33
    jp $9b75                                      ; $7b74: $c3 $75 $9b


    sub a                                         ; $7b77: $97
    or $61                                        ; $7b78: $f6 $61
    cpl                                           ; $7b7a: $2f
    ld sp, hl                                     ; $7b7b: $f9
    xor l                                         ; $7b7c: $ad
    ld a, c                                       ; $7b7d: $79
    ld c, c                                       ; $7b7e: $49
    ld e, a                                       ; $7b7f: $5f
    push hl                                       ; $7b80: $e5
    ld d, c                                       ; $7b81: $51
    dec sp                                        ; $7b82: $3b
    ld d, $e5                                     ; $7b83: $16 $e5
    ld de, $2f0f                                  ; $7b85: $11 $0f $2f
    daa                                           ; $7b88: $27
    xor [hl]                                      ; $7b89: $ae
    ld h, c                                       ; $7b8a: $61
    xor e                                         ; $7b8b: $ab
    ld c, c                                       ; $7b8c: $49
    or [hl]                                       ; $7b8d: $b6
    inc l                                         ; $7b8e: $2c
    or c                                          ; $7b8f: $b1
    adc b                                         ; $7b90: $88
    ld l, e                                       ; $7b91: $6b
    cpl                                           ; $7b92: $2f
    add hl, de                                    ; $7b93: $19
    halt                                          ; $7b94: $76
    ret c                                         ; $7b95: $d8

    ret                                           ; $7b96: $c9


    ld a, b                                       ; $7b97: $78
    ld sp, $ec63                                  ; $7b98: $31 $63 $ec
    jp c, $f89f                                   ; $7b9b: $da $9f $f8

    or b                                          ; $7b9e: $b0
    and a                                         ; $7b9f: $a7
    ld b, a                                       ; $7ba0: $47
    jp $2ef5                                      ; $7ba1: $c3 $f5 $2e


    ld a, a                                       ; $7ba4: $7f
    rst $10                                       ; $7ba5: $d7
    sub h                                         ; $7ba6: $94
    res 4, e                                      ; $7ba7: $cb $a3
    ld b, [hl]                                    ; $7ba9: $46
    ld d, e                                       ; $7baa: $53
    adc e                                         ; $7bab: $8b
    rrca                                          ; $7bac: $0f
    sub a                                         ; $7bad: $97
    ld h, $04                                     ; $7bae: $26 $04
    swap d                                        ; $7bb0: $cb $32
    ld c, c                                       ; $7bb2: $49
    adc [hl]                                      ; $7bb3: $8e
    and h                                         ; $7bb4: $a4
    and [hl]                                      ; $7bb5: $a6
    call z, $ba23                                 ; $7bb6: $cc $23 $ba
    inc [hl]                                      ; $7bb9: $34
    ld a, $ec                                     ; $7bba: $3e $ec
    ld sp, $6255                                  ; $7bbc: $31 $55 $62
    ld e, [hl]                                    ; $7bbf: $5e
    ld h, d                                       ; $7bc0: $62
    dec [hl]                                      ; $7bc1: $35
    db $fc                                        ; $7bc2: $fc
    sub l                                         ; $7bc3: $95
    inc a                                         ; $7bc4: $3c
    and $b5                                       ; $7bc5: $e6 $b5
    xor [hl]                                      ; $7bc7: $ae
    ld d, d                                       ; $7bc8: $52
    cpl                                           ; $7bc9: $2f
    db $f4                                        ; $7bca: $f4
    ld e, d                                       ; $7bcb: $5a
    ld a, [bc]                                    ; $7bcc: $0a

Jump_055_7bcd:
    or l                                          ; $7bcd: $b5
    ld hl, sp+$64                                 ; $7bce: $f8 $64
    jp z, Jump_055_5dc3                           ; $7bd0: $ca $c3 $5d

    db $ec                                        ; $7bd3: $ec
    add hl, hl                                    ; $7bd4: $29
    sub a                                         ; $7bd5: $97
    and a                                         ; $7bd6: $a7
    ld e, h                                       ; $7bd7: $5c
    bit 4, c                                      ; $7bd8: $cb $61
    add h                                         ; $7bda: $84
    add l                                         ; $7bdb: $85
    dec a                                         ; $7bdc: $3d
    ld [c], a                                     ; $7bdd: $e2
    pop hl                                        ; $7bde: $e1
    ld h, c                                       ; $7bdf: $61
    res 3, c                                      ; $7be0: $cb $99
    ld [hl-], a                                   ; $7be2: $32
    adc a                                         ; $7be3: $8f
    ld l, $63                                     ; $7be4: $2e $63
    push hl                                       ; $7be6: $e5
    and $33                                       ; $7be7: $e6 $33
    rst $10                                       ; $7be9: $d7
    ld [hl], b                                    ; $7bea: $70
    ld d, a                                       ; $7beb: $57
    ld b, l                                       ; $7bec: $45
    add [hl]                                      ; $7bed: $86
    ld c, e                                       ; $7bee: $4b
    adc c                                         ; $7bef: $89
    push af                                       ; $7bf0: $f5
    sub e                                         ; $7bf1: $93
    push hl                                       ; $7bf2: $e5
    or b                                          ; $7bf3: $b0
    sub e                                         ; $7bf4: $93
    cp h                                          ; $7bf5: $bc
    jp c, Jump_055_46a1                           ; $7bf6: $da $a1 $46

    rst $20                                       ; $7bf9: $e7
    ld [c], a                                     ; $7bfa: $e2
    add hl, hl                                    ; $7bfb: $29
    sub a                                         ; $7bfc: $97
    rla                                           ; $7bfd: $17
    sbc a                                         ; $7bfe: $9f
    ret nz                                        ; $7bff: $c0

    cp $11                                        ; $7c00: $fe $11
    db $fd                                        ; $7c02: $fd
    rst $30                                       ; $7c03: $f7
    db $fc                                        ; $7c04: $fc
    halt                                          ; $7c05: $76
    inc l                                         ; $7c06: $2c
    cp e                                          ; $7c07: $bb
    di                                            ; $7c08: $f3
    or l                                          ; $7c09: $b5
    ld h, [hl]                                    ; $7c0a: $66
    ret c                                         ; $7c0b: $d8

    ccf                                           ; $7c0c: $3f
    ld [bc], a                                    ; $7c0d: $02
    add b                                         ; $7c0e: $80
    rst $38                                       ; $7c0f: $ff
    ld [c], a                                     ; $7c10: $e2
    sub e                                         ; $7c11: $93
    and l                                         ; $7c12: $a5
    ld c, e                                       ; $7c13: $4b
    adc a                                         ; $7c14: $8f
    sbc [hl]                                      ; $7c15: $9e
    ld a, [hl]                                    ; $7c16: $7e
    inc [hl]                                      ; $7c17: $34
    jp nc, Jump_000_207e                          ; $7c18: $d2 $7e $20

    call z, Call_000_3e27                         ; $7c1b: $cc $27 $3e
    sub d                                         ; $7c1e: $92
    or h                                          ; $7c1f: $b4
    ld c, h                                       ; $7c20: $4c
    xor b                                         ; $7c21: $a8
    ld e, d                                       ; $7c22: $5a
    ld a, [c]                                     ; $7c23: $f2
    ld [hl], a                                    ; $7c24: $77
    ld [c], a                                     ; $7c25: $e2
    ld l, e                                       ; $7c26: $6b
    inc hl                                        ; $7c27: $23
    sbc $88                                       ; $7c28: $de $88
    add a                                         ; $7c2a: $87
    sub a                                         ; $7c2b: $97
    ld c, c                                       ; $7c2c: $49
    ld [hl], d                                    ; $7c2d: $72
    ld a, a                                       ; $7c2e: $7f
    ld c, h                                       ; $7c2f: $4c
    sub l                                         ; $7c30: $95
    sbc b                                         ; $7c31: $98
    pop hl                                        ; $7c32: $e1
    ld a, [$8c38]                                 ; $7c33: $fa $38 $8c
    dec hl                                        ; $7c36: $2b
    rst $10                                       ; $7c37: $d7
    sub h                                         ; $7c38: $94
    ld h, l                                       ; $7c39: $65
    xor [hl]                                      ; $7c3a: $ae
    dec h                                         ; $7c3b: $25
    ld e, a                                       ; $7c3c: $5f
    ld c, l                                       ; $7c3d: $4d
    ld [hl], d                                    ; $7c3e: $72
    inc e                                         ; $7c3f: $1c
    rst $38                                       ; $7c40: $ff
    ld [hl], $6a                                  ; $7c41: $36 $6a
    jp z, Jump_055_7a31                           ; $7c43: $ca $31 $7a

    sbc h                                         ; $7c46: $9c
    ld [hl], a                                    ; $7c47: $77
    ld e, b                                       ; $7c48: $58
    inc de                                        ; $7c49: $13
    and e                                         ; $7c4a: $a3

Jump_055_7c4b:
    ld l, e                                       ; $7c4b: $6b
    cpl                                           ; $7c4c: $2f
    ld e, c                                       ; $7c4d: $59

Jump_055_7c4e:
    ld a, $67                                     ; $7c4e: $3e $67
    ld h, h                                       ; $7c50: $64
    db $d3                                        ; $7c51: $d3
    rst $08                                       ; $7c52: $cf
    reti                                          ; $7c53: $d9


    dec a                                         ; $7c54: $3d
    cp c                                          ; $7c55: $b9
    jp nc, $862e                                  ; $7c56: $d2 $2e $86

    db $eb                                        ; $7c59: $eb
    db $e3                                        ; $7c5a: $e3
    or b                                          ; $7c5b: $b0
    ld h, e                                       ; $7c5c: $63
    ld d, c                                       ; $7c5d: $51
    xor [hl]                                      ; $7c5e: $ae
    push af                                       ; $7c5f: $f5
    ld e, b                                       ; $7c60: $58
    dec h                                         ; $7c61: $25
    ccf                                           ; $7c62: $3f
    adc h                                         ; $7c63: $8c
    ld a, a                                       ; $7c64: $7f
    ld c, e                                       ; $7c65: $4b
    cp a                                          ; $7c66: $bf
    add sp, $61                                   ; $7c67: $e8 $61
    xor e                                         ; $7c69: $ab
    sbc l                                         ; $7c6a: $9d
    db $e4                                        ; $7c6b: $e4
    sub l                                         ; $7c6c: $95
    ld e, c                                       ; $7c6d: $59
    cp e                                          ; $7c6e: $bb
    inc e                                         ; $7c6f: $1c
    halt                                          ; $7c70: $76
    xor b                                         ; $7c71: $a8
    pop de                                        ; $7c72: $d1
    ld d, h                                       ; $7c73: $54
    dec l                                         ; $7c74: $2d
    ld sp, hl                                     ; $7c75: $f9
    dec bc                                        ; $7c76: $0b
    call nc, $d872                                ; $7c77: $d4 $72 $d8
    ld sp, hl                                     ; $7c7a: $f9
    ld d, e                                       ; $7c7b: $53
    and $f1                                       ; $7c7c: $e6 $f1
    ld l, a                                       ; $7c7e: $6f
    db $eb                                        ; $7c7f: $eb

jr_055_7c80:
    xor l                                         ; $7c80: $ad
    add hl, bc                                    ; $7c81: $09
    push af                                       ; $7c82: $f5
    dec d                                         ; $7c83: $15
    ld b, h                                       ; $7c84: $44
    rst $30                                       ; $7c85: $f7
    db $e4                                        ; $7c86: $e4
    ld c, d                                       ; $7c87: $4a
    cp e                                          ; $7c88: $bb
    jr c, jr_055_7c80                             ; $7c89: $38 $f5

    ld a, d                                       ; $7c8b: $7a
    sbc [hl]                                      ; $7c8c: $9e
    inc l                                         ; $7c8d: $2c
    ld h, [hl]                                    ; $7c8e: $66
    cp h                                          ; $7c8f: $bc
    db $e3                                        ; $7c90: $e3
    or b                                          ; $7c91: $b0
    sub $75                                       ; $7c92: $d6 $75
    ld d, d                                       ; $7c94: $52
    cpl                                           ; $7c95: $2f
    dec h                                         ; $7c96: $25
    ld l, d                                       ; $7c97: $6a
    ld b, h                                       ; $7c98: $44
    ld c, l                                       ; $7c99: $4d
    add hl, sp                                    ; $7c9a: $39
    ld l, b                                       ; $7c9b: $68
    rst $10                                       ; $7c9c: $d7
    di                                            ; $7c9d: $f3
    xor d                                         ; $7c9e: $aa
    inc [hl]                                      ; $7c9f: $34
    jp c, $7d29                                   ; $7ca0: $da $29 $7d

    sbc b                                         ; $7ca3: $98
    ld a, [de]                                    ; $7ca4: $1a
    db $fd                                        ; $7ca5: $fd
    inc h                                         ; $7ca6: $24
    cp b                                          ; $7ca7: $b8
    ld a, a                                       ; $7ca8: $7f
    ld c, c                                       ; $7ca9: $49
    adc l                                         ; $7caa: $8d
    nop                                           ; $7cab: $00
    dec a                                         ; $7cac: $3d
    xor [hl]                                      ; $7cad: $ae
    cp c                                          ; $7cae: $b9
    ld b, [hl]                                    ; $7caf: $46
    inc a                                         ; $7cb0: $3c
    add c                                         ; $7cb1: $81
    db $eb                                        ; $7cb2: $eb
    sub $97                                       ; $7cb3: $d6 $97
    sbc b                                         ; $7cb5: $98
    rst $10                                       ; $7cb6: $d7
    ret                                           ; $7cb7: $c9


    ld a, e                                       ; $7cb8: $7b
    cp h                                          ; $7cb9: $bc
    ld b, e                                       ; $7cba: $43
    adc c                                         ; $7cbb: $89
    inc l                                         ; $7cbc: $2c
    ld h, [hl]                                    ; $7cbd: $66
    adc h                                         ; $7cbe: $8c
    ld e, l                                       ; $7cbf: $5d
    ld d, e                                       ; $7cc0: $53
    and $a5                                       ; $7cc1: $e6 $a5
    ld e, a                                       ; $7cc3: $5f
    ld a, c                                       ; $7cc4: $79
    db $fc                                        ; $7cc5: $fc
    db $db                                        ; $7cc6: $db
    xor b                                         ; $7cc7: $a8
    pop de                                        ; $7cc8: $d1
    cp c                                          ; $7cc9: $b9
    ld hl, sp-$68                                 ; $7cca: $f8 $98
    reti                                          ; $7ccc: $d9


    jp c, Jump_000_18fd                           ; $7ccd: $da $fd $18

    cp l                                          ; $7cd0: $bd
    di                                            ; $7cd1: $f3
    add h                                         ; $7cd2: $84
    ld a, e                                       ; $7cd3: $7b
    ld hl, $b27d                                  ; $7cd4: $21 $7d $b2
    halt                                          ; $7cd7: $76
    dec e                                         ; $7cd8: $1d
    add a                                         ; $7cd9: $87
    dec h                                         ; $7cda: $25
    cp $3c                                        ; $7cdb: $fe $3c
    ld h, l                                       ; $7cdd: $65
    add [hl]                                      ; $7cde: $86
    db $eb                                        ; $7cdf: $eb
    db $e3                                        ; $7ce0: $e3
    jr nc, @+$4e                                  ; $7ce1: $30 $4c

    ld c, l                                       ; $7ce3: $4d
    ld [hl], d                                    ; $7ce4: $72
    call c, $4705                                 ; $7ce5: $dc $05 $47
    ld [hl], h                                    ; $7ce8: $74
    ld a, [$b85c]                                 ; $7ce9: $fa $5c $b8
    ld h, e                                       ; $7cec: $63
    ld d, c                                       ; $7ced: $51
    ld e, [hl]                                    ; $7cee: $5e
    ei                                            ; $7cef: $fb
    xor l                                         ; $7cf0: $ad

jr_055_7cf1:
    ld a, c                                       ; $7cf1: $79
    rst $30                                       ; $7cf2: $f7
    db $e4                                        ; $7cf3: $e4
    ld c, d                                       ; $7cf4: $4a
    cp e                                          ; $7cf5: $bb
    ld a, b                                       ; $7cf6: $78
    ld [hl], h                                    ; $7cf7: $74
    cp l                                          ; $7cf8: $bd
    ld h, c                                       ; $7cf9: $61
    rlca                                          ; $7cfa: $07
    adc b                                         ; $7cfb: $88
    nop                                           ; $7cfc: $00
    add b                                         ; $7cfd: $80
    rst $38                                       ; $7cfe: $ff
    add sp, $1f                                   ; $7cff: $e8 $1f
    db $e3                                        ; $7d01: $e3
    jp nc, Jump_055_64e5                          ; $7d02: $d2 $e5 $64

    ld [hl], h                                    ; $7d05: $74
    cp l                                          ; $7d06: $bd
    db $dd                                        ; $7d07: $dd
    ld sp, hl                                     ; $7d08: $f9
    ld e, d                                       ; $7d09: $5a
    di                                            ; $7d0a: $f3
    add b                                         ; $7d0b: $80
    db $fc                                        ; $7d0c: $fc
    add $ae                                       ; $7d0d: $c6 $ae
    ld h, e                                       ; $7d0f: $63
    add c                                         ; $7d10: $81
    db $eb                                        ; $7d11: $eb
    ld a, c                                       ; $7d12: $79
    ld [hl-], a                                   ; $7d13: $32
    ld [c], a                                     ; $7d14: $e2
    push de                                       ; $7d15: $d5
    inc h                                         ; $7d16: $24
    ld e, e                                       ; $7d17: $5b
    sub [hl]                                      ; $7d18: $96
    ld e, b                                       ; $7d19: $58
    call nz, $93b5                                ; $7d1a: $c4 $b5 $93
    pop af                                        ; $7d1d: $f1
    ld [c], a                                     ; $7d1e: $e2
    sub e                                         ; $7d1f: $93
    ld de, $f616                                  ; $7d20: $11 $16 $f6
    xor $c9                                       ; $7d23: $ee $c9
    sub l                                         ; $7d25: $95
    halt                                          ; $7d26: $76
    pop af                                        ; $7d27: $f1
    call nz, $bd87                                ; $7d28: $c4 $87 $bd
    sub $55                                       ; $7d2b: $d6 $55
    ld [$2585], a                                 ; $7d2d: $ea $85 $25
    ld d, [hl]                                    ; $7d30: $56
    jp $c95f                                      ; $7d31: $c3 $5f $c9


    ld h, e                                       ; $7d34: $63
    add [hl]                                      ; $7d35: $86
    ld [$def7], sp                                ; $7d36: $08 $f7 $de
    add hl, bc                                    ; $7d39: $09
    sub a                                         ; $7d3a: $97
    ld b, d                                       ; $7d3b: $42
    db $ed                                        ; $7d3c: $ed
    ret z                                         ; $7d3d: $c8

    adc e                                         ; $7d3e: $8b
    pop de                                        ; $7d3f: $d1
    ld h, a                                       ; $7d40: $67
    ret                                           ; $7d41: $c9


    sbc a                                         ; $7d42: $9f
    ld a, d                                       ; $7d43: $7a
    db $10                                        ; $7d44: $10
    ld bc, $ffb7                                  ; $7d45: $01 $b7 $ff
    jr jr_055_7cf1                                ; $7d48: $18 $a7

    db $f4                                        ; $7d4a: $f4
    pop de                                        ; $7d4b: $d1
    ld c, a                                       ; $7d4c: $4f
    jp nz, $5feb                                  ; $7d4d: $c2 $eb $5f

    ld a, d                                       ; $7d50: $7a
    ld hl, $c477                                  ; $7d51: $21 $77 $c4
    add sp, $59                                   ; $7d54: $e8 $59
    add h                                         ; $7d56: $84

Jump_055_7d57:
    add d                                         ; $7d57: $82
    ld [$55f7], sp                                ; $7d58: $08 $f7 $55
    ld d, a                                       ; $7d5b: $57
    or d                                          ; $7d5c: $b2
    rra                                           ; $7d5d: $1f
    ld a, [hl-]                                   ; $7d5e: $3a
    ld d, $ed                                     ; $7d5f: $16 $ed
    ld a, d                                       ; $7d61: $7a
    ld e, [hl]                                    ; $7d62: $5e
    sub l                                         ; $7d63: $95
    ld h, $f5                                     ; $7d64: $26 $f5
    nop                                           ; $7d66: $00
    rst $38                                       ; $7d67: $ff
    cp c                                          ; $7d68: $b9
    ld h, $5d                                     ; $7d69: $26 $5d
    adc d                                         ; $7d6b: $8a
    rst $00                                       ; $7d6c: $c7
    cp a                                          ; $7d6d: $bf
    adc l                                         ; $7d6e: $8d
    ld a, [de]                                    ; $7d6f: $1a
    ld c, l                                       ; $7d70: $4d
    adc l                                         ; $7d71: $8d
    ld e, a                                       ; $7d72: $5f
    call c, Call_055_5fef                         ; $7d73: $dc $ef $5f
    ld d, d                                       ; $7d76: $52
    inc hl                                        ; $7d77: $23
    or a                                          ; $7d78: $b7
    ld hl, sp-$10                                 ; $7d79: $f8 $f0
    sub d                                         ; $7d7b: $92
    cp a                                          ; $7d7c: $bf
    sbc b                                         ; $7d7d: $98
    ld sp, $2d76                                  ; $7d7e: $31 $76 $2d
    sbc a                                         ; $7d81: $9f
    or e                                          ; $7d82: $b3
    cp a                                          ; $7d83: $bf
    ldh a, [rNR50]                                ; $7d84: $f0 $24
    ld b, b                                       ; $7d86: $40
    inc b                                         ; $7d87: $04
    ld a, l                                       ; $7d88: $7d
    inc e                                         ; $7d89: $1c
    halt                                          ; $7d8a: $76
    inc [hl]                                      ; $7d8b: $34
    ld [c], a                                     ; $7d8c: $e2
    inc sp                                        ; $7d8d: $33
    and c                                         ; $7d8e: $a1
    ld b, [hl]                                    ; $7d8f: $46
    sub a                                         ; $7d90: $97
    or c                                          ; $7d91: $b1
    ld [hl], d                                    ; $7d92: $72
    di                                            ; $7d93: $f3
    reti                                          ; $7d94: $d9


    db $e3                                        ; $7d95: $e3
    add hl, hl                                    ; $7d96: $29
    di                                            ; $7d97: $f3
    jp nc, Jump_000_297a                          ; $7d98: $d2 $7a $29

    cpl                                           ; $7d9b: $2f
    jp hl                                         ; $7d9c: $e9


    xor e                                         ; $7d9d: $ab
    ld a, b                                       ; $7d9e: $78
    ret c                                         ; $7d9f: $d8

    ld h, c                                       ; $7da0: $61
    daa                                           ; $7da1: $27
    db $e3                                        ; $7da2: $e3
    add l                                         ; $7da3: $85
    rra                                           ; $7da4: $1f
    and e                                         ; $7da5: $a3
    halt                                          ; $7da6: $76
    add hl, sp                                    ; $7da7: $39
    db $ec                                        ; $7da8: $ec
    rst $00                                       ; $7da9: $c7
    add sp, $29                                   ; $7daa: $e8 $29
    rlca                                          ; $7dac: $07
    db $ed                                        ; $7dad: $ed
    ld a, d                                       ; $7dae: $7a
    ld e, h                                       ; $7daf: $5c
    ld hl, sp-$75                                 ; $7db0: $f8 $8b
    ld hl, $dd02                                  ; $7db2: $21 $02 $dd
    ld a, [$5788]                                 ; $7db5: $fa $88 $57
    ld c, e                                       ; $7db8: $4b
    ld a, [$de2a]                                 ; $7db9: $fa $2a $de
    pop de                                        ; $7dbc: $d1
    ld b, h                                       ; $7dbd: $44
    cp b                                          ; $7dbe: $b8
    ld a, e                                       ; $7dbf: $7b
    jp Jump_000_0e3a                              ; $7dc0: $c3 $3a $0e


    dec bc                                        ; $7dc3: $0b
    push hl                                       ; $7dc4: $e5
    rst $28                                       ; $7dc5: $ef
    sbc d                                         ; $7dc6: $9a
    ld [hl-], a                                   ; $7dc7: $32
    rrca                                          ; $7dc8: $0f
    ld a, a                                       ; $7dc9: $7f
    add hl, sp                                    ; $7dca: $39
    cp h                                          ; $7dcb: $bc
    or $a3                                        ; $7dcc: $f6 $a3
    rla                                           ; $7dce: $17
    or d                                          ; $7dcf: $b2
    ld [c], a                                     ; $7dd0: $e2
    sbc l                                         ; $7dd1: $9d
    adc h                                         ; $7dd2: $8c
    and a                                         ; $7dd3: $a7
    inc e                                         ; $7dd4: $1c
    jr nz, @+$04                                  ; $7dd5: $20 $02

    db $dd                                        ; $7dd7: $dd
    and $b9                                       ; $7dd8: $e6 $b9
    or $92                                        ; $7dda: $f6 $92
    ret nc                                        ; $7ddc: $d0

    ret                                           ; $7ddd: $c9


Jump_055_7dde:
    push bc                                       ; $7dde: $c5
    xor c                                         ; $7ddf: $a9
    ld [hl], a                                    ; $7de0: $77
    ld h, a                                       ; $7de1: $67
    add $fb                                       ; $7de2: $c6 $fb
    and c                                         ; $7de4: $a1
    ld h, e                                       ; $7de5: $63
    pop de                                        ; $7de6: $d1
    xor [hl]                                      ; $7de7: $ae
    rst $00                                       ; $7de8: $c7
    add l                                         ; $7de9: $85
    cp a                                          ; $7dea: $bf
    jr jr_055_7e0f                                ; $7deb: $18 $22

    nop                                           ; $7ded: $00
    cp a                                          ; $7dee: $bf
    ld a, d                                       ; $7def: $7a
    ld [hl], e                                    ; $7df0: $73
    db $ed                                        ; $7df1: $ed
    adc e                                         ; $7df2: $8b
    ld e, b                                       ; $7df3: $58
    cp e                                          ; $7df4: $bb
    sbc $9a                                       ; $7df5: $de $9a
    ld d, b                                       ; $7df7: $50

jr_055_7df8:
    ld e, a                                       ; $7df8: $5f
    ld b, c                                       ; $7df9: $41
    inc b                                         ; $7dfa: $04
    dec a                                         ; $7dfb: $3d
    ld c, a                                       ; $7dfc: $4f

jr_055_7dfd:
    ld b, [hl]                                    ; $7dfd: $46
    cp h                                          ; $7dfe: $bc
    ld a, [de]                                    ; $7dff: $1a
    ld a, [hl]                                    ; $7e00: $7e
    rst $20                                       ; $7e01: $e7

jr_055_7e02:
    jr c, jr_055_7dfd                             ; $7e02: $38 $f9

    ld h, a                                       ; $7e04: $67
    cpl                                           ; $7e05: $2f
    add hl, de                                    ; $7e06: $19
    ld a, [hl]                                    ; $7e07: $7e
    inc a                                         ; $7e08: $3c
    cp $6d                                        ; $7e09: $fe $6d
    push hl                                       ; $7e0b: $e5
    ld a, a                                       ; $7e0c: $7f
    ld e, $dc                                     ; $7e0d: $1e $dc

jr_055_7e0f:
    cp l                                          ; $7e0f: $bd
    ld h, c                                       ; $7e10: $61
    dec e                                         ; $7e11: $1d
    add a                                         ; $7e12: $87
    ld de, $46af                                  ; $7e13: $11 $af $46
    cp [hl]                                       ; $7e16: $be
    jr jr_055_7df8                                ; $7e17: $18 $df

    ret c                                         ; $7e19: $d8

    ld c, d                                       ; $7e1a: $4a
    ld l, c                                       ; $7e1b: $69
    jp nc, $ae9d                                  ; $7e1c: $d2 $9d $ae

    ld [de], a                                    ; $7e1f: $12
    res 1, b                                      ; $7e20: $cb $88
    daa                                           ; $7e22: $27
    rst $00                                       ; $7e23: $c7
    ld h, a                                       ; $7e24: $67
    db $fd                                        ; $7e25: $fd
    inc b                                         ; $7e26: $04
    db $ed                                        ; $7e27: $ed
    cp $f8                                        ; $7e28: $fe $f8
    scf                                           ; $7e2a: $37
    jp c, Jump_055_79ad                           ; $7e2b: $da $ad $79

    call nz, $d193                                ; $7e2e: $c4 $93 $d1
    ld e, l                                       ; $7e31: $5d
    call $e3b5                                    ; $7e32: $cd $b5 $e3
    jr nc, jr_055_7e02                            ; $7e35: $30 $cb

    ret                                           ; $7e37: $c9


    jr jr_055_7e5c                                ; $7e38: $18 $22

    db $dd                                        ; $7e3a: $dd
    sub [hl]                                      ; $7e3b: $96
    or c                                          ; $7e3c: $b1
    sub l                                         ; $7e3d: $95
    jp nc, Jump_055_7658                          ; $7e3e: $d2 $58 $76

    ret z                                         ; $7e41: $c8

    ld a, a                                       ; $7e42: $7f
    ld e, h                                       ; $7e43: $5c
    inc hl                                        ; $7e44: $23
    sbc [hl]                                      ; $7e45: $9e
    inc l                                         ; $7e46: $2c
    ld [hl], c                                    ; $7e47: $71
    dec de                                        ; $7e48: $1b
    pop hl                                        ; $7e49: $e1
    sub $5c                                       ; $7e4a: $d6 $5c
    sla h                                         ; $7e4c: $cb $24
    xor c                                         ; $7e4e: $a9
    dec e                                         ; $7e4f: $1d
    ld e, e                                       ; $7e50: $5b
    and d                                         ; $7e51: $a2
    ld l, e                                       ; $7e52: $6b
    dec e                                         ; $7e53: $1d
    rlca                                          ; $7e54: $07
    adc b                                         ; $7e55: $88
    nop                                           ; $7e56: $00
    or a                                          ; $7e57: $b7
    ld hl, sp-$10                                 ; $7e58: $f8 $f0
    sub d                                         ; $7e5a: $92
    cp a                                          ; $7e5b: $bf

jr_055_7e5c:
    inc de                                        ; $7e5c: $13
    dec [hl]                                      ; $7e5d: $35
    and d                                         ; $7e5e: $a2
    ld e, h                                       ; $7e5f: $5c
    set 4, a                                      ; $7e60: $cb $e7
    ld l, b                                       ; $7e62: $68
    ld b, a                                       ; $7e63: $47
    inc h                                         ; $7e64: $24
    rst $38                                       ; $7e65: $ff
    inc l                                         ; $7e66: $2c

Call_055_7e67:
    ld sp, hl                                     ; $7e67: $f9
    dec sp                                        ; $7e68: $3b
    pop af                                        ; $7e69: $f1
    or l                                          ; $7e6a: $b5
    add hl, bc                                    ; $7e6b: $09
    dec [hl]                                      ; $7e6c: $35
    cp $6d                                        ; $7e6d: $fe $6d
    sbc h                                         ; $7e6f: $9c
    ld c, c                                       ; $7e70: $49
    ld a, [c]                                     ; $7e71: $f2
    db $ec                                        ; $7e72: $ec
    adc a                                         ; $7e73: $8f
    xor c                                         ; $7e74: $a9
    ld [de], a                                    ; $7e75: $12
    di                                            ; $7e76: $f3
    cp $f8                                        ; $7e77: $fe $f8
    dec hl                                        ; $7e79: $2b
    ld b, e                                       ; $7e7a: $43
    inc b                                         ; $7e7b: $04
    db $fd                                        ; $7e7c: $fd
    ld [hl], a                                    ; $7e7d: $77

jr_055_7e7e:
    ld [hl], a                                    ; $7e7e: $77
    cp d                                          ; $7e7f: $ba
    and [hl]                                      ; $7e80: $a6
    sbc [hl]                                      ; $7e81: $9e
    halt                                          ; $7e82: $76
    rst $30                                       ; $7e83: $f7
    db $e4                                        ; $7e84: $e4
    ld c, d                                       ; $7e85: $4a
    cp e                                          ; $7e86: $bb
    jr c, jr_055_7e7e                             ; $7e87: $38 $f5

    ld a, [$ec38]                                 ; $7e89: $fa $38 $ec

jr_055_7e8c:
    call nz, $f6d7                                ; $7e8c: $c4 $d7 $f6
    sbc d                                         ; $7e8f: $9a
    xor d                                         ; $7e90: $aa
    cp a                                          ; $7e91: $bf
    ret nc                                        ; $7e92: $d0

    cp d                                          ; $7e93: $ba
    jr nc, jr_055_7e8c                            ; $7e94: $30 $f6

    sub h                                         ; $7e96: $94
    ld b, e                                       ; $7e97: $43
    ld l, d                                       ; $7e98: $6a
    inc b                                         ; $7e99: $04
    scf                                           ; $7e9a: $37
    ld d, a                                       ; $7e9b: $57
    ld sp, hl                                     ; $7e9c: $f9
    ldh a, [$72]                                  ; $7e9d: $f0 $72
    ret c                                         ; $7e9f: $d8

    dec d                                         ; $7ea0: $15
    sub a                                         ; $7ea1: $97
    dec c                                         ; $7ea2: $0d
    ld a, a                                       ; $7ea3: $7f
    pop de                                        ; $7ea4: $d1

Jump_055_7ea5:
    rrca                                          ; $7ea5: $0f
    sbc c                                         ; $7ea6: $99
    dec l                                         ; $7ea7: $2d
    ld h, c                                       ; $7ea8: $61
    db $fc                                        ; $7ea9: $fc
    db $db                                        ; $7eaa: $db
    ld d, d                                       ; $7eab: $52
    or b                                          ; $7eac: $b0
    ld h, $bc                                     ; $7ead: $26 $bc
    ld d, d                                       ; $7eaf: $52
    jp c, $b9d1                                   ; $7eb0: $da $d1 $b9

    ld b, [hl]                                    ; $7eb3: $46
    dec l                                         ; $7eb4: $2d
    ld a, c                                       ; $7eb5: $79
    and d                                         ; $7eb6: $a2
    jp z, Jump_055_5d2b                           ; $7eb7: $ca $2b $5d

    inc d                                         ; $7eba: $14
    rrca                                          ; $7ebb: $0f
    ld a, a                                       ; $7ebc: $7f
    push bc                                       ; $7ebd: $c5
    inc hl                                        ; $7ebe: $23
    xor c                                         ; $7ebf: $a9
    ret                                           ; $7ec0: $c9


    ld h, e                                       ; $7ec1: $63
    ld a, [hl]                                    ; $7ec2: $7e
    xor c                                         ; $7ec3: $a9
    ld de, $fadd                                  ; $7ec4: $11 $dd $fa
    add sp, $5c                                   ; $7ec7: $e8 $5c
    add a                                         ; $7ec9: $87
    xor c                                         ; $7eca: $a9
    jp c, $d18f                                   ; $7ecb: $da $8f $d1

    jp c, $9591                                   ; $7ece: $da $91 $95

    ld l, c                                       ; $7ed1: $69
    sbc a                                         ; $7ed2: $9f
    sub e                                         ; $7ed3: $93
    dec bc                                        ; $7ed4: $0b

Jump_055_7ed5:
    xor [hl]                                      ; $7ed5: $ae
    rst $20                                       ; $7ed6: $e7
    ld d, l                                       ; $7ed7: $55
    ld l, c                                       ; $7ed8: $69
    halt                                          ; $7ed9: $76
    ld e, a                                       ; $7eda: $5f
    ld h, [hl]                                    ; $7edb: $66
    halt                                          ; $7edc: $76
    call $9235                                    ; $7edd: $cd $35 $92
    ld e, d                                       ; $7ee0: $5a
    ld [c], a                                     ; $7ee1: $e2
    ccf                                           ; $7ee2: $3f
    ld [c], a                                     ; $7ee3: $e2
    or e                                          ; $7ee4: $b3
    halt                                          ; $7ee5: $76
    add hl, sp                                    ; $7ee6: $39
    adc h                                         ; $7ee7: $8c
    ld a, b                                       ; $7ee8: $78
    ld [hl-], a                                   ; $7ee9: $32
    ld [c], a                                     ; $7eea: $e2
    push de                                       ; $7eeb: $d5
    inc l                                         ; $7eec: $2c
    ld d, e                                       ; $7eed: $53
    push af                                       ; $7eee: $f5
    add d                                         ; $7eef: $82
    ld d, e                                       ; $7ef0: $53
    inc hl                                        ; $7ef1: $23
    ld [hl], a                                    ; $7ef2: $77
    dec a                                         ; $7ef3: $3d
    ld h, [hl]                                    ; $7ef4: $66
    ld d, a                                       ; $7ef5: $57
    ei                                            ; $7ef6: $fb
    ld hl, $eef5                                  ; $7ef7: $21 $f5 $ee
    xor e                                         ; $7efa: $ab
    ld c, h                                       ; $7efb: $4c
    ei                                            ; $7efc: $fb
    sbc h                                         ; $7efd: $9c
    ld e, h                                       ; $7efe: $5c
    ld c, e                                       ; $7eff: $4b
    ld l, c                                       ; $7f00: $69
    ld a, d                                       ; $7f01: $7a
    db $ed                                        ; $7f02: $ed
    call nz, $46d7                                ; $7f03: $c4 $d7 $46
    ld d, e                                       ; $7f06: $53
    inc hl                                        ; $7f07: $23
    cp d                                          ; $7f08: $ba
    jp z, Jump_055_78cb                           ; $7f09: $ca $cb $78

    jp z, $4ecc                                   ; $7f0c: $ca $cc $4e

    adc l                                         ; $7f0f: $8d
    nop                                           ; $7f10: $00
    add hl, hl                                    ; $7f11: $29
    sub $4e                                       ; $7f12: $d6 $4e
    cp c                                          ; $7f14: $b9
    and $9a                                       ; $7f15: $e6 $9a
    ld [hl], d                                    ; $7f17: $72
    ld l, d                                       ; $7f18: $6a
    inc b                                         ; $7f19: $04
    add b                                         ; $7f1a: $80
    rst $38                                       ; $7f1b: $ff
    ld e, h                                       ; $7f1c: $5c

jr_055_7f1d:
    inc hl                                        ; $7f1d: $23
    ld e, h                                       ; $7f1e: $5c
    inc de                                        ; $7f1f: $13
    dec hl                                        ; $7f20: $2b
    and a                                         ; $7f21: $a7
    ld b, [hl]                                    ; $7f22: $46
    cp l                                          ; $7f23: $bd
    ld [hl], l                                    ; $7f24: $75
    ld [hl], l                                    ; $7f25: $75
    ld h, d                                       ; $7f26: $62
    rst $00                                       ; $7f27: $c7
    dec l                                         ; $7f28: $2d
    daa                                           ; $7f29: $27
    jp c, $b7a9                                   ; $7f2a: $da $a9 $b7

    db $e4                                        ; $7f2d: $e4
    push de                                       ; $7f2e: $d5
    sub h                                         ; $7f2f: $94
    ld a, c                                       ; $7f30: $79
    add hl, sp                                    ; $7f31: $39
    ld [hl], c                                    ; $7f32: $71
    dec e                                         ; $7f33: $1d
    and [hl]                                      ; $7f34: $a6
    sbc b                                         ; $7f35: $98
    ld hl, $dd02                                  ; $7f36: $21 $02 $dd
    and $b9                                       ; $7f39: $e6 $b9
    or $63                                        ; $7f3b: $f6 $63
    db $f4                                        ; $7f3d: $f4
    ld [hl], d                                    ; $7f3e: $72
    ld [c], a                                     ; $7f3f: $e2
    ld a, [hl-]                                   ; $7f40: $3a
    ld c, h                                       ; $7f41: $4c
    ld sp, $22cf                                  ; $7f42: $31 $cf $22
    inc d                                         ; $7f45: $14
    inc e                                         ; $7f46: $1c
    ldh [$3f], a                                  ; $7f47: $e0 $3f
    ld [c], a                                     ; $7f49: $e2
    push de                                       ; $7f4a: $d5
    add sp, $32                                   ; $7f4b: $e8 $32
    ld d, [hl]                                    ; $7f4d: $56
    ld l, [hl]                                    ; $7f4e: $6e
    ld a, $fb                                     ; $7f4f: $3e $fb
    and c                                         ; $7f51: $a1
    ld h, e                                       ; $7f52: $63
    add hl, de                                    ; $7f53: $19
    or l                                          ; $7f54: $b5
    sbc b                                         ; $7f55: $98
    ld sp, $f2f6                                  ; $7f56: $31 $f6 $f2
    add hl, sp                                    ; $7f59: $39
    db $e3                                        ; $7f5a: $e3
    rst $18                                       ; $7f5b: $df
    jp nc, Jump_055_7a2f                          ; $7f5c: $d2 $2f $7a

    db $fc                                        ; $7f5f: $fc
    db $db                                        ; $7f60: $db
    ld a, d                                       ; $7f61: $7a
    rst $10                                       ; $7f62: $d7
    and a                                         ; $7f63: $a7
    jp hl                                         ; $7f64: $e9


    cpl                                           ; $7f65: $2f
    ld bc, $3d22                                  ; $7f66: $01 $22 $3d
    ld l, $fc                                     ; $7f69: $2e $fc
    push bc                                       ; $7f6b: $c5
    db $10                                        ; $7f6c: $10
    jp nz, $c38e                                  ; $7f6d: $c2 $8e $c3

    ld b, d                                       ; $7f70: $42
    inc sp                                        ; $7f71: $33
    ld h, [hl]                                    ; $7f72: $66
    rst $28                                       ; $7f73: $ef
    add a                                         ; $7f74: $87
    adc [hl]                                      ; $7f75: $8e
    ld h, l                                       ; $7f76: $65
    ld a, [$48d1]                                 ; $7f77: $fa $d1 $48
    ei                                            ; $7f7a: $fb
    add c                                         ; $7f7b: $81
    jr nc, jr_055_7f1d                            ; $7f7c: $30 $9f

    ld hl, sp+$48                                 ; $7f7e: $f8 $48
    jp nc, $4cb2                                  ; $7f80: $d2 $b2 $4c

    sub d                                         ; $7f83: $92
    sbc $1f                                       ; $7f84: $de $1f
    ld d, e                                       ; $7f86: $53
    dec h                                         ; $7f87: $25
    and $d4                                       ; $7f88: $e6 $d4
    ld [$aedd], sp                                ; $7f8a: $08 $dd $ae
    pop de                                        ; $7f8d: $d1
    ccf                                           ; $7f8e: $3f
    add $75                                       ; $7f8f: $c6 $75
    inc e                                         ; $7f91: $1c
    and [hl]                                      ; $7f92: $a6
    ld e, h                                       ; $7f93: $5c
    ld c, [hl]                                    ; $7f94: $4e
    adc l                                         ; $7f95: $8d
    nop                                           ; $7f96: $00
    or a                                          ; $7f97: $b7
    adc c                                         ; $7f98: $89
    ld [hl], d                                    ; $7f99: $72
    ei                                            ; $7f9a: $fb
    ld h, c                                       ; $7f9b: $61
    and a                                         ; $7f9c: $a7
    jp hl                                         ; $7f9d: $e9


    call z, $a923                                 ; $7f9e: $cc $23 $a9
    add hl, sp                                    ; $7fa1: $39
    sbc [hl]                                      ; $7fa2: $9e
    add a                                         ; $7fa3: $87
    dec l                                         ; $7fa4: $2d
    xor c                                         ; $7fa5: $a9
    sub a                                         ; $7fa6: $97
    ld [hl+], a                                   ; $7fa7: $22
    xor a                                         ; $7fa8: $af
    ld a, b                                       ; $7fa9: $78
    call nz, Call_000_25ab                        ; $7faa: $c4 $ab $25
    ld a, a                                       ; $7fad: $7f
    add h                                         ; $7fae: $84
    sbc e                                         ; $7faf: $9b
    ld [hl], a                                    ; $7fb0: $77
    ld [hl-], a                                   ; $7fb1: $32
    add $2e                                       ; $7fb2: $c6 $2e
    set 5, b                                      ; $7fb4: $cb $e8
    ld a, [$11a9]                                 ; $7fb6: $fa $a9 $11
    ld a, l                                       ; $7fb9: $7d
    sbc [hl]                                      ; $7fba: $9e
    halt                                          ; $7fbb: $76
    add hl, sp                                    ; $7fbc: $39
    ld c, h                                       ; $7fbd: $4c
    cp l                                          ; $7fbe: $bd
    and l                                         ; $7fbf: $a5
    db $db                                        ; $7fc0: $db
    xor a                                         ; $7fc1: $af
    add hl, hl                                    ; $7fc2: $29
    di                                            ; $7fc3: $f3
    call nz, Call_000_2d87                        ; $7fc4: $c4 $87 $2d
    ei                                            ; $7fc7: $fb
    ld [de], a                                    ; $7fc8: $12
    inc l                                         ; $7fc9: $2c
    inc hl                                        ; $7fca: $23
    ld e, h                                       ; $7fcb: $5c
    ld [hl], b                                    ; $7fcc: $70
    scf                                           ; $7fcd: $37
    rst $00                                       ; $7fce: $c7
    xor b                                         ; $7fcf: $a8
    rst $10                                       ; $7fd0: $d7
    db $e3                                        ; $7fd1: $e3
    add hl, hl                                    ; $7fd2: $29
    di                                            ; $7fd3: $f3
    ld d, d                                       ; $7fd4: $52
    sbc d                                         ; $7fd5: $9a
    ld e, [hl]                                    ; $7fd6: $5e
    ld c, e                                       ; $7fd7: $4b
    inc l                                         ; $7fd8: $2c
    db $ec                                        ; $7fd9: $ec
    ld a, [de]                                    ; $7fda: $1a
    ld c, c                                       ; $7fdb: $49
    ld b, c                                       ; $7fdc: $41
    inc b                                         ; $7fdd: $04
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff

Call_055_7fe1:
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
